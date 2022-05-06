; ModuleID = '/llk/IR/drivers/crypto/stm32/stm32-cryp.c_pt.bc'
source_filename = "../drivers/crypto/stm32/stm32-cryp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.stm32_cryp_caps = type { i8, i8 }
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.stm32_cryp_list = type { %struct.list_head, %struct.spinlock }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.skcipher_alg = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [24 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.65, ptr, ptr, ptr, ptr, [48 x i8] }
%union.anon.65 = type { %struct.cipher_alg }
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
%struct.stm32_cryp = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, %struct.scatter_walk, %struct.scatter_walk, [4 x i32], i32 }
%struct.scatter_walk = type { ptr, i32 }
%struct.aead_request = type { %struct.crypto_async_request, i32, i32, ptr, ptr, ptr, [20 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [24 x i8], [0 x ptr] }
%struct.crypto_skcipher = type { i32, [60 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.des_ctx = type { [32 x i32] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.stm32_cryp_ctx = type { %struct.crypto_engine_ctx, ptr, i32, [8 x i32], i32 }
%struct.crypto_engine_ctx = type { %struct.crypto_engine_op }
%struct.crypto_engine_op = type { ptr, ptr, ptr }
%struct.crypto_aead = type { i32, i32, [56 x i8], %struct.crypto_tfm }

@stm32_dt_ids = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32f756-cryp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @f7_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32mp1-cryp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mp1_data }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author258 = internal constant [48 x i8] c"author=Fabien Dessenne <fabien.dessenne@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description259 = internal constant [57 x i8] c"description=STMicrolectronics STM32 CRYP hardware driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license260 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@f7_data = internal constant %struct.stm32_cryp_caps { i8 1, i8 1 }, align 1
@mp1_data = internal constant %struct.stm32_cryp_caps zeroinitializer, align 1
@stm32_cryp_driver = internal global %struct.platform_driver { ptr @stm32_cryp_probe, ptr @stm32_cryp_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_cryp_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [11 x i8] c"stm32-cryp\00", align 1
@stm32_cryp_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_cryp_runtime_suspend, ptr @stm32_cryp_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Cannot grab IRQ\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Could not get clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Failed to enable clock\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@cryp_list = internal global %struct.stm32_cryp_list { %struct.list_head { ptr @cryp_list, ptr @cryp_list }, %struct.spinlock zeroinitializer }, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"Could not init crypto engine\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Could not start crypto engine\0A\00", align 1
@crypto_algs = internal global [7 x %struct.skcipher_alg] [%struct.skcipher_alg { ptr @stm32_cryp_aes_setkey, ptr @stm32_cryp_aes_ecb_encrypt, ptr @stm32_cryp_aes_ecb_decrypt, ptr @stm32_cryp_init_tfm, ptr null, i32 16, i32 32, i32 0, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 128, i32 16, i32 56, i32 0, i32 200, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"stm32-ecb-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.65 zeroinitializer, ptr null, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } }, %struct.skcipher_alg { ptr @stm32_cryp_aes_setkey, ptr @stm32_cryp_aes_cbc_encrypt, ptr @stm32_cryp_aes_cbc_decrypt, ptr @stm32_cryp_init_tfm, ptr null, i32 16, i32 32, i32 16, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 128, i32 16, i32 56, i32 0, i32 200, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"stm32-cbc-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.65 zeroinitializer, ptr null, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } }, %struct.skcipher_alg { ptr @stm32_cryp_aes_setkey, ptr @stm32_cryp_aes_ctr_encrypt, ptr @stm32_cryp_aes_ctr_decrypt, ptr @stm32_cryp_init_tfm, ptr null, i32 16, i32 32, i32 16, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 128, i32 1, i32 56, i32 0, i32 200, %struct.refcount_struct zeroinitializer, [128 x i8] c"ctr(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"stm32-ctr-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.65 zeroinitializer, ptr null, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } }, %struct.skcipher_alg { ptr @stm32_cryp_des_setkey, ptr @stm32_cryp_des_ecb_encrypt, ptr @stm32_cryp_des_ecb_decrypt, ptr @stm32_cryp_init_tfm, ptr null, i32 8, i32 8, i32 0, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 128, i32 8, i32 56, i32 0, i32 200, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(des)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"stm32-ecb-des\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.65 zeroinitializer, ptr null, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } }, %struct.skcipher_alg { ptr @stm32_cryp_des_setkey, ptr @stm32_cryp_des_cbc_encrypt, ptr @stm32_cryp_des_cbc_decrypt, ptr @stm32_cryp_init_tfm, ptr null, i32 8, i32 8, i32 8, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 128, i32 8, i32 56, i32 0, i32 200, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(des)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"stm32-cbc-des\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.65 zeroinitializer, ptr null, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } }, %struct.skcipher_alg { ptr @stm32_cryp_tdes_setkey, ptr @stm32_cryp_tdes_ecb_encrypt, ptr @stm32_cryp_tdes_ecb_decrypt, ptr @stm32_cryp_init_tfm, ptr null, i32 24, i32 24, i32 0, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 128, i32 8, i32 56, i32 0, i32 200, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(des3_ede)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"stm32-ecb-des3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.65 zeroinitializer, ptr null, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } }, %struct.skcipher_alg { ptr @stm32_cryp_tdes_setkey, ptr @stm32_cryp_tdes_cbc_encrypt, ptr @stm32_cryp_tdes_cbc_decrypt, ptr @stm32_cryp_init_tfm, ptr null, i32 24, i32 24, i32 8, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 128, i32 8, i32 56, i32 0, i32 200, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(des3_ede)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"stm32-cbc-des3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.65 zeroinitializer, ptr null, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } }], align 64
@.str.6 = private unnamed_addr constant [25 x i8] c"Could not register algs\0A\00", align 1
@aead_algs = internal global [2 x %struct.aead_alg] [%struct.aead_alg { ptr @stm32_cryp_aes_aead_setkey, ptr @stm32_cryp_aes_gcm_setauthsize, ptr @stm32_cryp_aes_gcm_encrypt, ptr @stm32_cryp_aes_gcm_decrypt, ptr @stm32_cryp_aes_aead_init, ptr null, i32 12, i32 16, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 128, i32 1, i32 56, i32 0, i32 200, %struct.refcount_struct zeroinitializer, [128 x i8] c"gcm(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"stm32-gcm-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.65 zeroinitializer, ptr null, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } }, %struct.aead_alg { ptr @stm32_cryp_aes_aead_setkey, ptr @stm32_cryp_aes_ccm_setauthsize, ptr @stm32_cryp_aes_ccm_encrypt, ptr @stm32_cryp_aes_ccm_decrypt, ptr @stm32_cryp_aes_aead_init, ptr null, i32 16, i32 16, i32 0, [28 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 128, i32 1, i32 56, i32 0, i32 200, %struct.refcount_struct zeroinitializer, [128 x i8] c"ccm(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"stm32-ccm-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.65 zeroinitializer, ptr null, ptr null, ptr null, ptr @__this_module, [48 x i8] undef } }], align 64
@.str.7 = private unnamed_addr constant [13 x i8] c"Initialized\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Timeout (gcm/ccm header)\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"No more data to process\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"Unknown mode\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"Timeout (write gcm last data)\0A\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"Timeout (write gcm padded data)\0A\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"Timeout (wite ccm padded data)\0A\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"Timeout (read tag)\0A\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"Timeout (key preparation)\0A\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"Timeout (ccm init)\0A\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"Timeout (gcm init)\0A\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"Failed to prepare_enable clock\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author258, ptr @__UNIQUE_ID_description259, ptr @__UNIQUE_ID_license260], section "llvm.metadata"
@switch.table.stm32_cryp_aes_gcm_setauthsize = private unnamed_addr constant [13 x i32] [i32 0, i32 -22, i32 -22, i32 -22, i32 0, i32 -22, i32 -22, i32 -22, i32 0, i32 0, i32 0, i32 0, i32 0], align 4
@switch.table.stm32_cryp_aes_ccm_setauthsize = private unnamed_addr constant [13 x i32] [i32 0, i32 -22, i32 0, i32 -22, i32 0, i32 -22, i32 0, i32 -22, i32 0, i32 -22, i32 0, i32 -22, i32 0], align 4

@__mod_of__stm32_dt_ids_device_table = dso_local alias [3 x %struct.of_device_id], ptr @stm32_dt_ids

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_cryp_driver, ptr noundef nonnull @__this_module) #11
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_cryp_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_cryp_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 108, i32 noundef 3520) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %105, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @of_device_get_match_data(ptr noundef %2) #11
  %7 = getelementptr inbounds %struct.stm32_cryp, ptr %3, i32 0, i32 6
  store ptr %6, ptr %7, align 4
  %8 = icmp eq ptr %6, null
  br i1 %8, label %105, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.stm32_cryp, ptr %3, i32 0, i32 1
  store ptr %2, ptr %10, align 4
  %11 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #11
  %12 = getelementptr inbounds %struct.stm32_cryp, ptr %3, i32 0, i32 2
  store ptr %11, ptr %12, align 4
  %13 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = ptrtoint ptr %11 to i32
  br label %105

16:                                               ; preds = %9
  %17 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #11
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %105, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load ptr, ptr %2, align 4
  br label %25

25:                                               ; preds = %23, %19
  %26 = phi ptr [ %24, %23 ], [ %21, %19 ]
  %27 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %17, ptr noundef nonnull @stm32_cryp_irq, ptr noundef nonnull @stm32_cryp_irq_thread, i32 noundef 8192, ptr noundef %26, ptr noundef nonnull %3) #11
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #12
  br label %105

30:                                               ; preds = %25
  %31 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #11
  %32 = getelementptr inbounds %struct.stm32_cryp, ptr %3, i32 0, i32 3
  store ptr %31, ptr %32, align 4
  %33 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = ptrtoint ptr %31 to i32
  %36 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %2, i32 noundef %35, ptr noundef nonnull @.str.2) #11
  %37 = load ptr, ptr %32, align 4
  %38 = ptrtoint ptr %37 to i32
  br label %105

39:                                               ; preds = %30
  %40 = tail call i32 @clk_prepare(ptr noundef %31) #11
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = tail call i32 @clk_enable(ptr noundef %31) #11
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  tail call void @clk_unprepare(ptr noundef %31) #11
  br label %46

46:                                               ; preds = %45, %39
  %47 = phi i32 [ %43, %45 ], [ %40, %39 ]
  %48 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.3) #12
  br label %105

49:                                               ; preds = %42
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %2, i32 noundef 50) #11
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %2, i1 noundef zeroext true) #11
  %50 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %50) #11, !srcloc !8
  %51 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %50, ptr %50, i32 1, ptr elementtype(i32) %50) #11, !srcloc !9
  %52 = tail call i32 @__pm_runtime_set_status(ptr noundef %2, i32 noundef 0) #11
  tail call void @pm_runtime_enable(ptr noundef %2) #11
  %53 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #11
  %54 = icmp ugt ptr %53, inttoptr (i32 -4096 to ptr)
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = icmp eq ptr %53, inttoptr (i32 -517 to ptr)
  br i1 %56, label %97, label %61

57:                                               ; preds = %49
  %58 = tail call i32 @reset_control_assert(ptr noundef %53) #11
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 429496) #11
  %60 = tail call i32 @reset_control_deassert(ptr noundef %53) #11
  br label %61

61:                                               ; preds = %57, %55
  %62 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %62, align 8
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #11
  %63 = load ptr, ptr @cryp_list, align 4
  %64 = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  store ptr %3, ptr %64, align 4
  store ptr %63, ptr %3, align 4
  %65 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr @cryp_list, ptr %65, align 4
  store volatile ptr %3, ptr @cryp_list, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !10
  %66 = load i16, ptr getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1), align 4
  %67 = add i16 %66, 1
  store i16 %67, ptr getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1), align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !13
  %68 = tail call ptr @crypto_engine_alloc_init(ptr noundef %2, i1 noundef zeroext true) #11
  %69 = getelementptr inbounds %struct.stm32_cryp, ptr %3, i32 0, i32 8
  store ptr %68, ptr %69, align 4
  %70 = icmp eq ptr %68, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %61
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4) #12
  br label %90

72:                                               ; preds = %61
  %73 = tail call i32 @crypto_engine_start(ptr noundef nonnull %68) #11
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5) #12
  br label %86

76:                                               ; preds = %72
  %77 = tail call i32 @crypto_register_skciphers(ptr noundef nonnull @crypto_algs, i32 noundef 7) #11
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %76
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6) #12
  br label %86

80:                                               ; preds = %76
  %81 = tail call i32 @crypto_register_aeads(ptr noundef nonnull @aead_algs, i32 noundef 2) #11
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.7) #12
  %84 = tail call i32 @__pm_runtime_idle(ptr noundef %2, i32 noundef 4) #11
  br label %105

85:                                               ; preds = %80
  tail call void @crypto_unregister_skciphers(ptr noundef nonnull @crypto_algs, i32 noundef 7) #11
  br label %86

86:                                               ; preds = %85, %79, %75
  %87 = phi i32 [ %73, %75 ], [ %77, %79 ], [ %81, %85 ]
  %88 = load ptr, ptr %69, align 4
  %89 = tail call i32 @crypto_engine_exit(ptr noundef %88) #11
  br label %90

90:                                               ; preds = %86, %71
  %91 = phi i32 [ %87, %86 ], [ -12, %71 ]
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #11
  %92 = load ptr, ptr %65, align 4
  %93 = load ptr, ptr %3, align 4
  %94 = getelementptr inbounds %struct.list_head, ptr %93, i32 0, i32 1
  store ptr %92, ptr %94, align 4
  store volatile ptr %93, ptr %92, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %65, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !10
  %95 = load i16, ptr getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1), align 4
  %96 = add i16 %95, 1
  store i16 %96, ptr getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1), align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !13
  br label %97

97:                                               ; preds = %90, %55
  %98 = phi i32 [ -517, %55 ], [ %91, %90 ]
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %50) #11, !srcloc !8
  %99 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %50, ptr %50, i32 0, i32 -1, ptr elementtype(i32) %50) #11, !srcloc !15
  %100 = extractvalue { i32, i32, i32 } %99, 0
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %97
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  br label %103

103:                                              ; preds = %102, %97
  %104 = load ptr, ptr %32, align 4
  tail call void @clk_disable(ptr noundef %104) #11
  tail call void @clk_unprepare(ptr noundef %104) #11
  br label %105

105:                                              ; preds = %103, %83, %46, %34, %29, %16, %14, %5, %1
  %106 = phi i32 [ %15, %14 ], [ %27, %29 ], [ %38, %34 ], [ %47, %46 ], [ %98, %103 ], [ 0, %83 ], [ -12, %1 ], [ -19, %5 ], [ %17, %16 ]
  ret i32 %106
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_cryp_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %36, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.stm32_cryp, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #11
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #11, !srcloc !8
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 0, i32 -1, ptr elementtype(i32) %11) #11, !srcloc !15
  %13 = extractvalue { i32, i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %36, label %15

15:                                               ; preds = %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  br label %36

16:                                               ; preds = %5
  tail call void @crypto_unregister_aeads(ptr noundef nonnull @aead_algs, i32 noundef 2) #11
  tail call void @crypto_unregister_skciphers(ptr noundef nonnull @crypto_algs, i32 noundef 7) #11
  %17 = getelementptr inbounds %struct.stm32_cryp, ptr %3, i32 0, i32 8
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @crypto_engine_exit(ptr noundef %18) #11
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #11
  %20 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %3, align 4
  %23 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  store ptr %21, ptr %23, align 4
  store volatile ptr %22, ptr %21, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %20, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !10
  %24 = load i16, ptr getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1), align 4
  %25 = add i16 %24, 1
  store i16 %25, ptr getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1), align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !13
  %26 = load ptr, ptr %6, align 4
  tail call void @__pm_runtime_disable(ptr noundef %26, i1 noundef zeroext true) #11
  %27 = load ptr, ptr %6, align 4
  %28 = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %28) #11, !srcloc !8
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %28, ptr %28, i32 0, i32 -1, ptr elementtype(i32) %28) #11, !srcloc !15
  %30 = extractvalue { i32, i32, i32 } %29, 0
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  br label %33

33:                                               ; preds = %32, %16
  %34 = getelementptr inbounds %struct.stm32_cryp, ptr %3, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  tail call void @clk_disable(ptr noundef %35) #11
  tail call void @clk_unprepare(ptr noundef %35) #11
  br label %36

36:                                               ; preds = %33, %15, %10, %1
  %37 = phi i32 [ 0, %33 ], [ -19, %1 ], [ %8, %10 ], [ %8, %15 ]
  ret i32 %37
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_cryp_irq(i32 noundef %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr inbounds %struct.stm32_cryp, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 28
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !17
  %7 = getelementptr inbounds %struct.stm32_cryp, ptr %1, i32 0, i32 5
  store i32 %6, ptr %7, align 4
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_cryp_irq_thread(i32 noundef %0, ptr noundef %1) #2 {
  %3 = alloca [4 x i32], align 4
  %4 = getelementptr inbounds %struct.stm32_cryp, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 20
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #11, !srcloc !17
  %8 = getelementptr inbounds %struct.stm32_cryp, ptr %1, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %36, label %12

12:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false) #11, !annotation !18
  %13 = getelementptr inbounds %struct.stm32_cryp, ptr %1, i32 0, i32 12
  %14 = load i32, ptr %13, align 4
  %15 = icmp ult i32 %14, 4
  br i1 %15, label %26, label %16

16:                                               ; preds = %16, %12
  %17 = phi i32 [ %22, %16 ], [ 0, %12 ]
  %18 = load ptr, ptr %4, align 4
  %19 = getelementptr i8, ptr %18, i32 12
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #11, !srcloc !17
  %21 = getelementptr [4 x i32], ptr %3, i32 0, i32 %17
  store i32 %20, ptr %21, align 4
  %22 = add nuw nsw i32 %17, 1
  %23 = load i32, ptr %13, align 4
  %24 = lshr i32 %23, 2
  %25 = icmp ult i32 %22, %24
  br i1 %25, label %16, label %26

26:                                               ; preds = %16, %12
  %27 = phi i32 [ %14, %12 ], [ %23, %16 ]
  %28 = getelementptr inbounds %struct.stm32_cryp, ptr %1, i32 0, i32 18
  %29 = getelementptr inbounds %struct.stm32_cryp, ptr %1, i32 0, i32 15
  %30 = load i32, ptr %29, align 4
  %31 = tail call i32 @llvm.umin.i32(i32 %27, i32 %30) #11
  call void @scatterwalk_copychunks(ptr noundef nonnull %3, ptr noundef %28, i32 noundef %31, i32 noundef 1) #11
  %32 = load i32, ptr %13, align 4
  %33 = load i32, ptr %29, align 4
  %34 = call i32 @llvm.usub.sat.i32(i32 %33, i32 %32) #11
  store i32 %34, ptr %29, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  %35 = load i32, ptr %8, align 4
  br label %36

36:                                               ; preds = %26, %2
  %37 = phi i32 [ %35, %26 ], [ %9, %2 ]
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %61, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.stm32_cryp, ptr %1, i32 0, i32 4
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, 384
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %60, label %45

45:                                               ; preds = %40
  %46 = load ptr, ptr %4, align 4
  %47 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #11, !srcloc !17
  %48 = and i32 %47, 196608
  %49 = icmp eq i32 %48, 65536
  br i1 %49, label %50, label %51, !prof !19

50:                                               ; preds = %45
  call fastcc void @stm32_cryp_irq_write_gcmccm_header(ptr noundef %1)
  br label %52

51:                                               ; preds = %45
  call fastcc void @stm32_cryp_irq_write_data(ptr noundef %1)
  br label %52

52:                                               ; preds = %51, %50
  %53 = load i32, ptr %41, align 4
  %54 = and i32 %53, 128
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.stm32_cryp, ptr %1, i32 0, i32 20
  %58 = load i32, ptr %57, align 4
  %59 = add i32 %58, 1
  store i32 %59, ptr %57, align 4
  br label %61

60:                                               ; preds = %40
  call fastcc void @stm32_cryp_irq_write_data(ptr noundef %1)
  br label %61

61:                                               ; preds = %60, %56, %52, %36
  %62 = getelementptr inbounds %struct.stm32_cryp, ptr %1, i32 0, i32 13
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.stm32_cryp, ptr %1, i32 0, i32 14
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 0
  %69 = and i32 %7, -2
  %70 = select i1 %68, i32 %69, i32 %7
  br label %71

71:                                               ; preds = %65, %61
  %72 = phi i32 [ %7, %61 ], [ %70, %65 ]
  %73 = getelementptr inbounds %struct.stm32_cryp, ptr %1, i32 0, i32 15
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 0
  %76 = and i32 %72, -3
  %77 = select i1 %75, i32 %76, i32 %72
  %78 = load ptr, ptr %4, align 4
  %79 = getelementptr i8, ptr %78, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %77) #11, !srcloc !20
  %80 = load i32, ptr %62, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %71
  %83 = getelementptr inbounds %struct.stm32_cryp, ptr %1, i32 0, i32 14
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = load i32, ptr %73, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  call fastcc void @stm32_cryp_finish_req(ptr noundef %1, i32 noundef 0)
  br label %90

90:                                               ; preds = %89, %86, %82, %71
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_engine_alloc_init(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_engine_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_skciphers(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_aeads(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_skciphers(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_engine_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stm32_cryp_irq_write_gcmccm_header(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca [4 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false)
  %3 = getelementptr inbounds %struct.stm32_cryp, ptr %0, i32 0, i32 14
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 @llvm.umin.i32(i32 %4, i32 16)
  %6 = getelementptr inbounds %struct.stm32_cryp, ptr %0, i32 0, i32 17
  call void @scatterwalk_copychunks(ptr noundef nonnull %2, ptr noundef %6, i32 noundef %5, i32 noundef 0) #11
  %7 = getelementptr inbounds %struct.stm32_cryp, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %2, align 4
  %9 = load ptr, ptr %7, align 4
  %10 = getelementptr i8, ptr %9, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #11, !srcloc !20
  %11 = getelementptr inbounds [4 x i32], ptr %2, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = load ptr, ptr %7, align 4
  %14 = getelementptr i8, ptr %13, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #11, !srcloc !20
  %15 = getelementptr inbounds [4 x i32], ptr %2, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = load ptr, ptr %7, align 4
  %18 = getelementptr i8, ptr %17, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #11, !srcloc !20
  %19 = getelementptr inbounds [4 x i32], ptr %2, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = load ptr, ptr %7, align 4
  %22 = getelementptr i8, ptr %21, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #11, !srcloc !20
  %23 = load i32, ptr %3, align 4
  %24 = sub i32 %23, %5
  store i32 %24, ptr %3, align 4
  call fastcc void @stm32_crypt_gcmccm_end_header(ptr noundef %0)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stm32_cryp_irq_write_data(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca [4 x i32], align 4
  %3 = getelementptr inbounds %struct.stm32_cryp, ptr %0, i32 0, i32 13
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9, !prof !19

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.stm32_cryp, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.9) #12
  br label %147

9:                                                ; preds = %1
  %10 = icmp ult i32 %4, 16
  br i1 %10, label %11, label %86

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.stm32_cryp, ptr %0, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %11
  %17 = and i32 %13, 112
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %49

19:                                               ; preds = %16
  %20 = and i32 %13, 128
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %19
  %23 = and i32 %13, 256
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %49

25:                                               ; preds = %22, %11
  %26 = and i32 %13, 4
  %27 = icmp eq i32 %26, 0
  %28 = and i32 %13, 48
  %29 = icmp eq i32 %28, 0
  %30 = or i1 %27, %29
  br i1 %30, label %31, label %49

31:                                               ; preds = %25
  %32 = and i32 %13, 8
  %33 = icmp eq i32 %32, 0
  %34 = or i1 %33, %29
  br i1 %34, label %35, label %49

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.stm32_cryp, ptr %0, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.10) #12
  br label %49

38:                                               ; preds = %19
  %39 = and i32 %13, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %49, label %41, !prof !21

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.stm32_cryp, ptr %0, i32 0, i32 6
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.stm32_cryp_caps, ptr %43, i32 0, i32 1
  %45 = load i8, ptr %44, align 1, !range !22
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %41
  tail call fastcc void @stm32_cryp_irq_write_gcm_padded_data(ptr noundef %0)
  br label %147

48:                                               ; preds = %41
  tail call fastcc void @stm32_cryp_irq_set_npblb(ptr noundef %0)
  br label %49

49:                                               ; preds = %48, %38, %35, %31, %25, %22, %16
  %50 = load i32, ptr %3, align 4
  %51 = icmp ult i32 %50, 16
  br i1 %51, label %52, label %86

52:                                               ; preds = %49
  %53 = load i32, ptr %12, align 4
  %54 = and i32 %53, 2
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %52
  %57 = and i32 %53, 240
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %86

59:                                               ; preds = %56
  %60 = and i32 %53, 256
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %59, %52
  %63 = and i32 %53, 4
  %64 = icmp eq i32 %63, 0
  %65 = and i32 %53, 48
  %66 = icmp eq i32 %65, 0
  %67 = or i1 %64, %66
  br i1 %67, label %68, label %86

68:                                               ; preds = %62
  %69 = and i32 %53, 8
  %70 = icmp eq i32 %69, 0
  %71 = or i1 %70, %66
  br i1 %71, label %72, label %86

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.stm32_cryp, ptr %0, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.10) #12
  br label %86

75:                                               ; preds = %59
  %76 = and i32 %53, 1
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %86, !prof !19

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.stm32_cryp, ptr %0, i32 0, i32 6
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.stm32_cryp_caps, ptr %80, i32 0, i32 1
  %82 = load i8, ptr %81, align 1, !range !22
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %78
  tail call fastcc void @stm32_cryp_irq_write_ccm_padded_data(ptr noundef %0)
  br label %147

85:                                               ; preds = %78
  tail call fastcc void @stm32_cryp_irq_set_npblb(ptr noundef %0)
  br label %86

86:                                               ; preds = %85, %75, %72, %68, %62, %56, %49, %9
  %87 = getelementptr inbounds %struct.stm32_cryp, ptr %0, i32 0, i32 4
  %88 = load i32, ptr %87, align 4
  %89 = and i32 %88, 66
  %90 = icmp eq i32 %89, 66
  br i1 %90, label %91, label %123

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.stm32_cryp, ptr %0, i32 0, i32 19
  %93 = getelementptr %struct.stm32_cryp, ptr %0, i32 0, i32 19, i32 3
  %94 = load i32, ptr %93, align 4
  %95 = icmp eq i32 %94, -1
  br i1 %95, label %96, label %103, !prof !19

96:                                               ; preds = %91
  tail call void @crypto_inc(ptr noundef %92, i32 noundef 16) #11
  %97 = getelementptr inbounds %struct.stm32_cryp, ptr %0, i32 0, i32 2
  %98 = load ptr, ptr %97, align 4
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %98) #11, !srcloc !17
  %100 = and i32 %99, -32769
  %101 = load ptr, ptr %97, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 %100) #11, !srcloc !20
  tail call fastcc void @stm32_cryp_hw_write_iv(ptr noundef %0, ptr noundef %92) #11
  %102 = load ptr, ptr %97, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 %99) #11, !srcloc !20
  br label %103

103:                                              ; preds = %96, %91
  %104 = getelementptr inbounds %struct.stm32_cryp, ptr %0, i32 0, i32 2
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr i8, ptr %105, i32 64
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %106) #11, !srcloc !17
  %108 = tail call i32 @llvm.bswap.i32(i32 %107) #11
  store i32 %108, ptr %92, align 4
  %109 = load ptr, ptr %104, align 4
  %110 = getelementptr i8, ptr %109, i32 68
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %110) #11, !srcloc !17
  %112 = tail call i32 @llvm.bswap.i32(i32 %111) #11
  %113 = getelementptr %struct.stm32_cryp, ptr %0, i32 0, i32 19, i32 1
  store i32 %112, ptr %113, align 4
  %114 = load ptr, ptr %104, align 4
  %115 = getelementptr i8, ptr %114, i32 72
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %115) #11, !srcloc !17
  %117 = tail call i32 @llvm.bswap.i32(i32 %116) #11
  %118 = getelementptr %struct.stm32_cryp, ptr %0, i32 0, i32 19, i32 2
  store i32 %117, ptr %118, align 4
  %119 = load ptr, ptr %104, align 4
  %120 = getelementptr i8, ptr %119, i32 76
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %120) #11, !srcloc !17
  %122 = tail call i32 @llvm.bswap.i32(i32 %121) #11
  store i32 %122, ptr %93, align 4
  br label %123

123:                                              ; preds = %103, %86
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false) #11
  %124 = getelementptr inbounds %struct.stm32_cryp, ptr %0, i32 0, i32 17
  %125 = getelementptr inbounds %struct.stm32_cryp, ptr %0, i32 0, i32 12
  %126 = load i32, ptr %125, align 4
  %127 = load i32, ptr %3, align 4
  %128 = tail call i32 @llvm.umin.i32(i32 %126, i32 %127) #11
  call void @scatterwalk_copychunks(ptr noundef nonnull %2, ptr noundef %124, i32 noundef %128, i32 noundef 0) #11
  %129 = load i32, ptr %125, align 4
  %130 = icmp ult i32 %129, 4
  br i1 %130, label %143, label %131

131:                                              ; preds = %123
  %132 = getelementptr inbounds %struct.stm32_cryp, ptr %0, i32 0, i32 2
  br label %133

133:                                              ; preds = %133, %131
  %134 = phi i32 [ 0, %131 ], [ %139, %133 ]
  %135 = getelementptr [4 x i32], ptr %2, i32 0, i32 %134
  %136 = load i32, ptr %135, align 4
  %137 = load ptr, ptr %132, align 4
  %138 = getelementptr i8, ptr %137, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %138, i32 %136) #11, !srcloc !20
  %139 = add nuw nsw i32 %134, 1
  %140 = load i32, ptr %125, align 4
  %141 = lshr i32 %140, 2
  %142 = icmp ult i32 %139, %141
  br i1 %142, label %133, label %143

143:                                              ; preds = %133, %123
  %144 = phi i32 [ %129, %123 ], [ %140, %133 ]
  %145 = load i32, ptr %3, align 4
  %146 = call i32 @llvm.usub.sat.i32(i32 %145, i32 %144) #11
  store i32 %146, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  br label %147

147:                                              ; preds = %143, %84, %47, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stm32_cryp_finish_req(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca [4 x i32], align 4
  %4 = alloca [4 x i32], align 4
  %5 = alloca [4 x i32], align 4
  %6 = alloca [4 x i32], align 4
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %8, label %226

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.stm32_cryp, ptr %0, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 384
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %191, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.stm32_cryp, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #11, !srcloc !17
  %17 = and i32 %16, -229381
  %18 = or i32 %17, 229376
  %19 = load ptr, ptr %14, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %18) #11, !srcloc !20
  %20 = load i32, ptr %9, align 4
  %21 = and i32 %20, 128
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %61, label %23

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.stm32_cryp, ptr %0, i32 0, i32 10
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.aead_request, ptr %25, i32 0, i32 1
  %27 = load i32, ptr %26, align 8
  %28 = shl i32 %27, 3
  %29 = getelementptr inbounds %struct.stm32_cryp, ptr %0, i32 0, i32 6
  %30 = load ptr, ptr %29, align 4
  %31 = load i8, ptr %30, align 1, !range !22
  %32 = icmp eq i8 %31, 0
  %33 = tail call i32 @llvm.bswap.i32(i32 %28) #11
  %34 = select i1 %32, i32 %28, i32 %33
  %35 = load ptr, ptr %14, align 4
  %36 = getelementptr i8, ptr %35, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 0) #11, !srcloc !20
  %37 = load ptr, ptr %14, align 4
  %38 = getelementptr i8, ptr %37, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %34) #11, !srcloc !20
  %39 = load i32, ptr %9, align 4
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  %42 = load ptr, ptr %24, align 4
  %43 = getelementptr inbounds %struct.aead_request, ptr %42, i32 0, i32 2
  %44 = load i32, ptr %43, align 4
  br i1 %41, label %45, label %49

45:                                               ; preds = %23
  %46 = getelementptr inbounds %struct.stm32_cryp, ptr %0, i32 0, i32 11
  %47 = load i32, ptr %46, align 4
  %48 = sub i32 %44, %47
  br label %49

49:                                               ; preds = %45, %23
  %50 = phi i32 [ %48, %45 ], [ %44, %23 ]
  %51 = shl i32 %50, 3
  %52 = load ptr, ptr %29, align 4
  %53 = load i8, ptr %52, align 1, !range !22
  %54 = icmp eq i8 %53, 0
  %55 = tail call i32 @llvm.bswap.i32(i32 %51) #11
  %56 = select i1 %54, i32 %51, i32 %55
  %57 = load ptr, ptr %14, align 4
  %58 = getelementptr i8, ptr %57, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 0) #11, !srcloc !20
  %59 = load ptr, ptr %14, align 4
  %60 = getelementptr i8, ptr %59, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %56) #11, !srcloc !20
  br label %112

61:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  %62 = getelementptr inbounds %struct.stm32_cryp, ptr %0, i32 0, i32 10
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.aead_request, ptr %63, i32 0, i32 3
  %65 = load ptr, ptr %64, align 32
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef align 1 dereferenceable(16) %65, i32 16, i1 false) #11
  %66 = getelementptr inbounds i8, ptr %3, i32 15
  %67 = load i8, ptr %3, align 4
  %68 = zext i8 %67 to i32
  %69 = sub nsw i32 0, %68
  %70 = getelementptr i8, ptr %66, i32 %69
  %71 = add nuw nsw i32 %68, 1
  call void @llvm.memset.p0.i32(ptr noundef align 1 %70, i8 0, i32 %71, i1 false) #11
  %72 = getelementptr inbounds %struct.stm32_cryp, ptr %0, i32 0, i32 6
  %73 = load i32, ptr %3, align 4
  %74 = load ptr, ptr %72, align 4
  %75 = getelementptr inbounds %struct.stm32_cryp_caps, ptr %74, i32 0, i32 1
  %76 = load i8, ptr %75, align 1, !range !22
  %77 = icmp eq i8 %76, 0
  %78 = tail call i32 @llvm.bswap.i32(i32 %73) #11
  %79 = select i1 %77, i32 %78, i32 %73
  %80 = load ptr, ptr %14, align 4
  %81 = getelementptr i8, ptr %80, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %79) #11, !srcloc !20
  %82 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 1
  %83 = load i32, ptr %82, align 4
  %84 = load ptr, ptr %72, align 4
  %85 = getelementptr inbounds %struct.stm32_cryp_caps, ptr %84, i32 0, i32 1
  %86 = load i8, ptr %85, align 1, !range !22
  %87 = icmp eq i8 %86, 0
  %88 = tail call i32 @llvm.bswap.i32(i32 %83) #11
  %89 = select i1 %87, i32 %88, i32 %83
  %90 = load ptr, ptr %14, align 4
  %91 = getelementptr i8, ptr %90, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %89) #11, !srcloc !20
  %92 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 2
  %93 = load i32, ptr %92, align 4
  %94 = load ptr, ptr %72, align 4
  %95 = getelementptr inbounds %struct.stm32_cryp_caps, ptr %94, i32 0, i32 1
  %96 = load i8, ptr %95, align 1, !range !22
  %97 = icmp eq i8 %96, 0
  %98 = tail call i32 @llvm.bswap.i32(i32 %93) #11
  %99 = select i1 %97, i32 %98, i32 %93
  %100 = load ptr, ptr %14, align 4
  %101 = getelementptr i8, ptr %100, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 %99) #11, !srcloc !20
  %102 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 3
  %103 = load i32, ptr %102, align 4
  %104 = load ptr, ptr %72, align 4
  %105 = getelementptr inbounds %struct.stm32_cryp_caps, ptr %104, i32 0, i32 1
  %106 = load i8, ptr %105, align 1, !range !22
  %107 = icmp eq i8 %106, 0
  %108 = tail call i32 @llvm.bswap.i32(i32 %103) #11
  %109 = select i1 %107, i32 %108, i32 %103
  %110 = load ptr, ptr %14, align 4
  %111 = getelementptr i8, ptr %110, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 %109) #11, !srcloc !20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  br label %112

112:                                              ; preds = %61, %49
  %113 = tail call i64 @ktime_get() #11
  %114 = add i64 %113, 100000000
  %115 = load ptr, ptr %14, align 4
  %116 = getelementptr i8, ptr %115, i32 4
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %116) #11, !srcloc !17
  %118 = and i32 %117, 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %138

120:                                              ; preds = %123, %112
  %121 = tail call i64 @ktime_get() #11
  %122 = icmp sgt i64 %121, %114
  br i1 %122, label %129, label %123

123:                                              ; preds = %120
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #11
  %124 = load ptr, ptr %14, align 4
  %125 = getelementptr i8, ptr %124, i32 4
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %125) #11, !srcloc !17
  %127 = and i32 %126, 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %120, label %138

129:                                              ; preds = %120
  %130 = load ptr, ptr %14, align 4
  %131 = getelementptr i8, ptr %130, i32 4
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %131) #11, !srcloc !17
  %133 = and i32 %132, 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %129
  %136 = getelementptr inbounds %struct.stm32_cryp, ptr %0, i32 0, i32 1
  %137 = load ptr, ptr %136, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %137, ptr noundef nonnull @.str.14) #12
  br label %226

138:                                              ; preds = %129, %123, %112
  %139 = load i32, ptr %9, align 4
  %140 = and i32 %139, 1
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %161, label %142

142:                                              ; preds = %138
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  %143 = load ptr, ptr %14, align 4
  %144 = getelementptr i8, ptr %143, i32 12
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %144) #11, !srcloc !17
  store i32 %145, ptr %4, align 4
  %146 = load ptr, ptr %14, align 4
  %147 = getelementptr i8, ptr %146, i32 12
  %148 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %147) #11, !srcloc !17
  %149 = getelementptr inbounds [4 x i32], ptr %4, i32 0, i32 1
  store i32 %148, ptr %149, align 4
  %150 = load ptr, ptr %14, align 4
  %151 = getelementptr i8, ptr %150, i32 12
  %152 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %151) #11, !srcloc !17
  %153 = getelementptr inbounds [4 x i32], ptr %4, i32 0, i32 2
  store i32 %152, ptr %153, align 4
  %154 = load ptr, ptr %14, align 4
  %155 = getelementptr i8, ptr %154, i32 12
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %155) #11, !srcloc !17
  %157 = getelementptr inbounds [4 x i32], ptr %4, i32 0, i32 3
  store i32 %156, ptr %157, align 4
  %158 = getelementptr inbounds %struct.stm32_cryp, ptr %0, i32 0, i32 18
  %159 = getelementptr inbounds %struct.stm32_cryp, ptr %0, i32 0, i32 11
  %160 = load i32, ptr %159, align 4
  call void @scatterwalk_copychunks(ptr noundef nonnull %4, ptr noundef %158, i32 noundef %160, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  br label %184

161:                                              ; preds = %138
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false) #11, !annotation !18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  %162 = getelementptr inbounds %struct.stm32_cryp, ptr %0, i32 0, i32 17
  %163 = getelementptr inbounds %struct.stm32_cryp, ptr %0, i32 0, i32 11
  %164 = load i32, ptr %163, align 4
  call void @scatterwalk_copychunks(ptr noundef nonnull %5, ptr noundef %162, i32 noundef %164, i32 noundef 0) #11
  %165 = load ptr, ptr %14, align 4
  %166 = getelementptr i8, ptr %165, i32 12
  %167 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %166) #11, !srcloc !17
  store i32 %167, ptr %6, align 4
  %168 = load ptr, ptr %14, align 4
  %169 = getelementptr i8, ptr %168, i32 12
  %170 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %169) #11, !srcloc !17
  %171 = getelementptr inbounds [4 x i32], ptr %6, i32 0, i32 1
  store i32 %170, ptr %171, align 4
  %172 = load ptr, ptr %14, align 4
  %173 = getelementptr i8, ptr %172, i32 12
  %174 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %173) #11, !srcloc !17
  %175 = getelementptr inbounds [4 x i32], ptr %6, i32 0, i32 2
  store i32 %174, ptr %175, align 4
  %176 = load ptr, ptr %14, align 4
  %177 = getelementptr i8, ptr %176, i32 12
  %178 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %177) #11, !srcloc !17
  %179 = getelementptr inbounds [4 x i32], ptr %6, i32 0, i32 3
  store i32 %178, ptr %179, align 4
  %180 = load i32, ptr %163, align 4
  %181 = call i32 @__crypto_memneq(ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef %180) #11
  %182 = icmp eq i32 %181, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  %183 = select i1 %182, i32 0, i32 -74
  br label %184

184:                                              ; preds = %161, %142
  %185 = phi i32 [ 0, %142 ], [ %183, %161 ]
  %186 = or i32 %17, 196608
  %187 = load ptr, ptr %14, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %187, i32 %186) #11, !srcloc !20
  %188 = icmp eq i32 %185, 0
  br i1 %188, label %189, label %226

189:                                              ; preds = %184
  %190 = load i32, ptr %9, align 4
  br label %191

191:                                              ; preds = %189, %8
  %192 = phi i32 [ %190, %189 ], [ %10, %8 ]
  %193 = and i32 %192, 400
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %226

195:                                              ; preds = %191
  %196 = getelementptr inbounds %struct.stm32_cryp, ptr %0, i32 0, i32 9
  %197 = load ptr, ptr %196, align 4
  %198 = getelementptr inbounds %struct.skcipher_request, ptr %197, i32 0, i32 1
  %199 = load ptr, ptr %198, align 4
  %200 = icmp eq ptr %199, null
  br i1 %200, label %226, label %201

201:                                              ; preds = %195
  %202 = getelementptr inbounds %struct.stm32_cryp, ptr %0, i32 0, i32 2
  %203 = load ptr, ptr %202, align 4
  %204 = getelementptr i8, ptr %203, i32 64
  %205 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %204) #11, !srcloc !17
  %206 = call i32 @llvm.bswap.i32(i32 %205) #11
  %207 = getelementptr i32, ptr %199, i32 1
  store i32 %206, ptr %199, align 4
  %208 = load ptr, ptr %202, align 4
  %209 = getelementptr i8, ptr %208, i32 68
  %210 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %209) #11, !srcloc !17
  %211 = call i32 @llvm.bswap.i32(i32 %210) #11
  store i32 %211, ptr %207, align 4
  %212 = load i32, ptr %9, align 4
  %213 = and i32 %212, 2
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %226, label %215

215:                                              ; preds = %201
  %216 = getelementptr i32, ptr %199, i32 2
  %217 = load ptr, ptr %202, align 4
  %218 = getelementptr i8, ptr %217, i32 72
  %219 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %218) #11, !srcloc !17
  %220 = call i32 @llvm.bswap.i32(i32 %219) #11
  %221 = getelementptr i32, ptr %199, i32 3
  store i32 %220, ptr %216, align 4
  %222 = load ptr, ptr %202, align 4
  %223 = getelementptr i8, ptr %222, i32 76
  %224 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %223) #11, !srcloc !17
  %225 = call i32 @llvm.bswap.i32(i32 %224) #11
  store i32 %225, ptr %221, align 4
  br label %226

226:                                              ; preds = %215, %201, %195, %191, %184, %135, %2
  %227 = phi i32 [ 0, %191 ], [ %185, %184 ], [ 0, %195 ], [ 0, %201 ], [ 0, %215 ], [ -110, %135 ], [ %1, %2 ]
  %228 = getelementptr inbounds %struct.stm32_cryp, ptr %0, i32 0, i32 1
  %229 = load ptr, ptr %228, align 4
  %230 = call i64 @ktime_get_mono_fast_ns() #11
  %231 = getelementptr inbounds %struct.device, ptr %229, i32 0, i32 11, i32 22
  store volatile i64 %230, ptr %231, align 8
  %232 = load ptr, ptr %228, align 4
  %233 = call i32 @__pm_runtime_suspend(ptr noundef %232, i32 noundef 13) #11
  %234 = getelementptr inbounds %struct.stm32_cryp, ptr %0, i32 0, i32 4
  %235 = load i32, ptr %234, align 4
  %236 = and i32 %235, 384
  %237 = icmp eq i32 %236, 0
  %238 = getelementptr inbounds %struct.stm32_cryp, ptr %0, i32 0, i32 8
  %239 = load ptr, ptr %238, align 4
  br i1 %237, label %243, label %240

240:                                              ; preds = %226
  %241 = getelementptr inbounds %struct.stm32_cryp, ptr %0, i32 0, i32 10
  %242 = load ptr, ptr %241, align 4
  call void @crypto_finalize_aead_request(ptr noundef %239, ptr noundef %242, i32 noundef %227) #11
  br label %246

243:                                              ; preds = %226
  %244 = getelementptr inbounds %struct.stm32_cryp, ptr %0, i32 0, i32 9
  %245 = load ptr, ptr %244, align 4
  call void @crypto_finalize_skcipher_request(ptr noundef %239, ptr noundef %245, i32 noundef %227) #11
  br label %246

246:                                              ; preds = %243, %240
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @scatterwalk_copychunks(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stm32_crypt_gcmccm_end_header(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.stm32_cryp, ptr %0, i32 0, i32 14
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %58

5:                                                ; preds = %1
  %6 = tail call i64 @ktime_get() #11
  %7 = add i64 %6, 100000000
  %8 = getelementptr inbounds %struct.stm32_cryp, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #11, !srcloc !17
  %12 = and i32 %11, 16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %34, label %14

14:                                               ; preds = %17, %5
  %15 = tail call i64 @ktime_get() #11
  %16 = icmp sgt i64 %15, %7
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #11
  %18 = load ptr, ptr %8, align 4
  %19 = getelementptr i8, ptr %18, i32 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #11, !srcloc !17
  %21 = and i32 %20, 16
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %34, label %14

23:                                               ; preds = %14
  %24 = load ptr, ptr %8, align 4
  %25 = getelementptr i8, ptr %24, i32 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #11, !srcloc !17
  %27 = and i32 %26, 16
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.stm32_cryp, ptr %0, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.8) #12
  %32 = load ptr, ptr %8, align 4
  %33 = getelementptr i8, ptr %32, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 0) #11, !srcloc !20
  tail call fastcc void @stm32_cryp_finish_req(ptr noundef %0, i32 noundef -110)
  br label %58

34:                                               ; preds = %23, %17, %5
  %35 = getelementptr inbounds %struct.stm32_cryp, ptr %0, i32 0, i32 4
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  %39 = getelementptr inbounds %struct.stm32_cryp, ptr %0, i32 0, i32 10
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.aead_request, ptr %40, i32 0, i32 2
  %42 = load i32, ptr %41, align 4
  br i1 %38, label %43, label %47

43:                                               ; preds = %34
  %44 = getelementptr inbounds %struct.stm32_cryp, ptr %0, i32 0, i32 11
  %45 = load i32, ptr %44, align 4
  %46 = sub i32 %42, %45
  br label %47

47:                                               ; preds = %43, %34
  %48 = phi i32 [ %46, %43 ], [ %42, %34 ]
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %47
  %51 = load ptr, ptr %8, align 4
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #11, !srcloc !17
  %53 = and i32 %52, -32769
  %54 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %53) #11, !srcloc !20
  %55 = and i32 %52, -229377
  %56 = or i32 %55, 163840
  %57 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %56) #11, !srcloc !20
  br label %58

58:                                               ; preds = %50, %47, %29, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stm32_cryp_irq_write_gcm_padded_data(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca [4 x i32], align 4
  %3 = alloca [4 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false)
  %4 = getelementptr inbounds %struct.stm32_cryp, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 0) #11, !srcloc !20
  %7 = load ptr, ptr %4, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #11, !srcloc !17
  %9 = and i32 %8, -32769
  %10 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %9) #11, !srcloc !20
  %11 = getelementptr inbounds %struct.stm32_cryp, ptr %0, i32 0, i32 20
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, -2
  %14 = load ptr, ptr %4, align 4
  %15 = getelementptr i8, ptr %14, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #11, !srcloc !20
  %16 = and i32 %8, -557113
  %17 = or i32 %16, 48
  %18 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %17) #11, !srcloc !20
  %19 = or i32 %16, 32816
  %20 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %19) #11, !srcloc !20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false) #11
  %21 = getelementptr inbounds %struct.stm32_cryp, ptr %0, i32 0, i32 17
  %22 = getelementptr inbounds %struct.stm32_cryp, ptr %0, i32 0, i32 12
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.stm32_cryp, ptr %0, i32 0, i32 13
  %25 = load i32, ptr %24, align 4
  %26 = tail call i32 @llvm.umin.i32(i32 %23, i32 %25) #11
  call void @scatterwalk_copychunks(ptr noundef nonnull %2, ptr noundef %21, i32 noundef %26, i32 noundef 0) #11
  %27 = load i32, ptr %22, align 4
  %28 = icmp ult i32 %27, 4
  br i1 %28, label %39, label %29

29:                                               ; preds = %29, %1
  %30 = phi i32 [ %35, %29 ], [ 0, %1 ]
  %31 = getelementptr [4 x i32], ptr %2, i32 0, i32 %30
  %32 = load i32, ptr %31, align 4
  %33 = load ptr, ptr %4, align 4
  %34 = getelementptr i8, ptr %33, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #11, !srcloc !20
  %35 = add nuw nsw i32 %30, 1
  %36 = load i32, ptr %22, align 4
  %37 = lshr i32 %36, 2
  %38 = icmp ult i32 %35, %37
  br i1 %38, label %29, label %39

39:                                               ; preds = %29, %1
  %40 = phi i32 [ %27, %1 ], [ %36, %29 ]
  %41 = load i32, ptr %24, align 4
  %42 = call i32 @llvm.usub.sat.i32(i32 %41, i32 %40) #11
  store i32 %42, ptr %24, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  %43 = call i64 @ktime_get() #11
  %44 = add i64 %43, 100000000
  %45 = load ptr, ptr %4, align 4
  %46 = getelementptr i8, ptr %45, i32 4
  %47 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #11, !srcloc !17
  %48 = and i32 %47, 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %53, %39
  %51 = call i64 @ktime_get() #11
  %52 = icmp sgt i64 %51, %44
  br i1 %52, label %59, label %53

53:                                               ; preds = %50
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #11
  %54 = load ptr, ptr %4, align 4
  %55 = getelementptr i8, ptr %54, i32 4
  %56 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #11, !srcloc !17
  %57 = and i32 %56, 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %50, label %65

59:                                               ; preds = %50
  %60 = load ptr, ptr %4, align 4
  %61 = getelementptr i8, ptr %60, i32 4
  %62 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #11, !srcloc !17
  %63 = and i32 %62, 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %59, %53, %39
  %66 = load i32, ptr %22, align 4
  %67 = icmp ult i32 %66, 4
  br i1 %67, label %81, label %71

68:                                               ; preds = %59
  %69 = getelementptr inbounds %struct.stm32_cryp, ptr %0, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.11) #12
  br label %147

71:                                               ; preds = %71, %65
  %72 = phi i32 [ %77, %71 ], [ 0, %65 ]
  %73 = load ptr, ptr %4, align 4
  %74 = getelementptr i8, ptr %73, i32 12
  %75 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #11, !srcloc !17
  %76 = getelementptr [4 x i32], ptr %3, i32 0, i32 %72
  store i32 %75, ptr %76, align 4
  %77 = add nuw nsw i32 %72, 1
  %78 = load i32, ptr %22, align 4
  %79 = lshr i32 %78, 2
  %80 = icmp ult i32 %77, %79
  br i1 %80, label %71, label %81

81:                                               ; preds = %71, %65
  %82 = phi i32 [ %66, %65 ], [ %78, %71 ]
  %83 = getelementptr inbounds %struct.stm32_cryp, ptr %0, i32 0, i32 18
  %84 = getelementptr inbounds %struct.stm32_cryp, ptr %0, i32 0, i32 15
  %85 = load i32, ptr %84, align 4
  %86 = call i32 @llvm.umin.i32(i32 %82, i32 %85)
  call void @scatterwalk_copychunks(ptr noundef nonnull %3, ptr noundef %83, i32 noundef %86, i32 noundef 1) #11
  %87 = load i32, ptr %22, align 4
  %88 = load i32, ptr %84, align 4
  %89 = call i32 @llvm.usub.sat.i32(i32 %88, i32 %87)
  store i32 %89, ptr %84, align 4
  %90 = or i32 %16, 557056
  %91 = load ptr, ptr %4, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %90) #11, !srcloc !20
  %92 = or i32 %16, 753664
  %93 = load ptr, ptr %4, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 %92) #11, !srcloc !20
  %94 = load i32, ptr %3, align 4
  %95 = load ptr, ptr %4, align 4
  %96 = getelementptr i8, ptr %95, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 %94) #11, !srcloc !20
  %97 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 1
  %98 = load i32, ptr %97, align 4
  %99 = load ptr, ptr %4, align 4
  %100 = getelementptr i8, ptr %99, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 %98) #11, !srcloc !20
  %101 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 2
  %102 = load i32, ptr %101, align 4
  %103 = load ptr, ptr %4, align 4
  %104 = getelementptr i8, ptr %103, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 %102) #11, !srcloc !20
  %105 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 3
  %106 = load i32, ptr %105, align 4
  %107 = load ptr, ptr %4, align 4
  %108 = getelementptr i8, ptr %107, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %108, i32 %106) #11, !srcloc !20
  %109 = call i64 @ktime_get() #11
  %110 = add i64 %109, 100000000
  %111 = load ptr, ptr %4, align 4
  %112 = getelementptr i8, ptr %111, i32 4
  %113 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %112) #11, !srcloc !17
  %114 = and i32 %113, 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %131

116:                                              ; preds = %119, %81
  %117 = call i64 @ktime_get() #11
  %118 = icmp sgt i64 %117, %110
  br i1 %118, label %125, label %119

119:                                              ; preds = %116
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #11
  %120 = load ptr, ptr %4, align 4
  %121 = getelementptr i8, ptr %120, i32 4
  %122 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %121) #11, !srcloc !17
  %123 = and i32 %122, 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %116, label %131

125:                                              ; preds = %116
  %126 = load ptr, ptr %4, align 4
  %127 = getelementptr i8, ptr %126, i32 4
  %128 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %127) #11, !srcloc !17
  %129 = and i32 %128, 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %144, label %131

131:                                              ; preds = %125, %119, %81
  %132 = load ptr, ptr %4, align 4
  %133 = getelementptr i8, ptr %132, i32 12
  %134 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %133) #11, !srcloc !17
  %135 = load ptr, ptr %4, align 4
  %136 = getelementptr i8, ptr %135, i32 12
  %137 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %136) #11, !srcloc !17
  %138 = load ptr, ptr %4, align 4
  %139 = getelementptr i8, ptr %138, i32 12
  %140 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %139) #11, !srcloc !17
  %141 = load ptr, ptr %4, align 4
  %142 = getelementptr i8, ptr %141, i32 12
  %143 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %142) #11, !srcloc !17
  br label %147

144:                                              ; preds = %125
  %145 = getelementptr inbounds %struct.stm32_cryp, ptr %0, i32 0, i32 1
  %146 = load ptr, ptr %145, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %146, ptr noundef nonnull @.str.12) #12
  br label %147

147:                                              ; preds = %144, %131, %68
  %148 = phi i32 [ 0, %131 ], [ -110, %144 ], [ -110, %68 ]
  call fastcc void @stm32_cryp_finish_req(ptr noundef %0, i32 noundef %148)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stm32_cryp_irq_set_npblb(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.stm32_cryp, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #11, !srcloc !17
  %5 = and i32 %4, -32769
  %6 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %5) #11, !srcloc !20
  %7 = getelementptr inbounds %struct.stm32_cryp, ptr %0, i32 0, i32 12
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.stm32_cryp, ptr %0, i32 0, i32 13
  %10 = load i32, ptr %9, align 4
  %11 = sub i32 %8, %10
  %12 = shl i32 %11, 20
  %13 = or i32 %4, %12
  %14 = or i32 %13, 32768
  %15 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %14) #11, !srcloc !20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stm32_cryp_irq_write_ccm_padded_data(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca [4 x i32], align 4
  %3 = alloca [4 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false)
  %4 = getelementptr inbounds %struct.stm32_cryp, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 0) #11, !srcloc !20
  %7 = load ptr, ptr %4, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #11, !srcloc !17
  %9 = and i32 %8, -32769
  %10 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %9) #11, !srcloc !20
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr i8, ptr %11, i32 108
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #11, !srcloc !17
  %14 = load ptr, ptr %4, align 4
  %15 = getelementptr i8, ptr %14, i32 80
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #11, !srcloc !17
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr i8, ptr %17, i32 84
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #11, !srcloc !17
  %20 = load ptr, ptr %4, align 4
  %21 = getelementptr i8, ptr %20, i32 88
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #11, !srcloc !17
  %23 = load ptr, ptr %4, align 4
  %24 = getelementptr i8, ptr %23, i32 92
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #11, !srcloc !17
  %26 = load ptr, ptr %4, align 4
  %27 = getelementptr i8, ptr %26, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %13) #11, !srcloc !20
  %28 = and i32 %8, -557113
  %29 = or i32 %28, 48
  %30 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %29) #11, !srcloc !20
  %31 = or i32 %28, 32816
  %32 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %31) #11, !srcloc !20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false) #11
  %33 = getelementptr inbounds %struct.stm32_cryp, ptr %0, i32 0, i32 17
  %34 = getelementptr inbounds %struct.stm32_cryp, ptr %0, i32 0, i32 12
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.stm32_cryp, ptr %0, i32 0, i32 13
  %37 = load i32, ptr %36, align 4
  %38 = tail call i32 @llvm.umin.i32(i32 %35, i32 %37) #11
  call void @scatterwalk_copychunks(ptr noundef nonnull %2, ptr noundef %33, i32 noundef %38, i32 noundef 0) #11
  %39 = load i32, ptr %34, align 4
  %40 = icmp ult i32 %39, 4
  br i1 %40, label %51, label %41

41:                                               ; preds = %41, %1
  %42 = phi i32 [ %47, %41 ], [ 0, %1 ]
  %43 = getelementptr [4 x i32], ptr %2, i32 0, i32 %42
  %44 = load i32, ptr %43, align 4
  %45 = load ptr, ptr %4, align 4
  %46 = getelementptr i8, ptr %45, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %44) #11, !srcloc !20
  %47 = add nuw nsw i32 %42, 1
  %48 = load i32, ptr %34, align 4
  %49 = lshr i32 %48, 2
  %50 = icmp ult i32 %47, %49
  br i1 %50, label %41, label %51

51:                                               ; preds = %41, %1
  %52 = phi i32 [ %39, %1 ], [ %48, %41 ]
  %53 = load i32, ptr %36, align 4
  %54 = call i32 @llvm.usub.sat.i32(i32 %53, i32 %52) #11
  store i32 %54, ptr %36, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  %55 = call i64 @ktime_get() #11
  %56 = add i64 %55, 100000000
  %57 = load ptr, ptr %4, align 4
  %58 = getelementptr i8, ptr %57, i32 4
  %59 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #11, !srcloc !17
  %60 = and i32 %59, 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %65, %51
  %63 = call i64 @ktime_get() #11
  %64 = icmp sgt i64 %63, %56
  br i1 %64, label %71, label %65

65:                                               ; preds = %62
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #11
  %66 = load ptr, ptr %4, align 4
  %67 = getelementptr i8, ptr %66, i32 4
  %68 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #11, !srcloc !17
  %69 = and i32 %68, 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %62, label %77

71:                                               ; preds = %62
  %72 = load ptr, ptr %4, align 4
  %73 = getelementptr i8, ptr %72, i32 4
  %74 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #11, !srcloc !17
  %75 = and i32 %74, 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %161, label %77

77:                                               ; preds = %71, %65, %51
  %78 = load i32, ptr %34, align 4
  %79 = icmp ult i32 %78, 4
  br i1 %79, label %90, label %80

80:                                               ; preds = %80, %77
  %81 = phi i32 [ %86, %80 ], [ 0, %77 ]
  %82 = load ptr, ptr %4, align 4
  %83 = getelementptr i8, ptr %82, i32 12
  %84 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #11, !srcloc !17
  %85 = getelementptr [4 x i32], ptr %3, i32 0, i32 %81
  store i32 %84, ptr %85, align 4
  %86 = add nuw nsw i32 %81, 1
  %87 = load i32, ptr %34, align 4
  %88 = lshr i32 %87, 2
  %89 = icmp ult i32 %86, %88
  br i1 %89, label %80, label %90

90:                                               ; preds = %80, %77
  %91 = phi i32 [ %78, %77 ], [ %87, %80 ]
  %92 = getelementptr inbounds %struct.stm32_cryp, ptr %0, i32 0, i32 18
  %93 = getelementptr inbounds %struct.stm32_cryp, ptr %0, i32 0, i32 15
  %94 = load i32, ptr %93, align 4
  %95 = call i32 @llvm.umin.i32(i32 %91, i32 %94)
  call void @scatterwalk_copychunks(ptr noundef nonnull %3, ptr noundef %92, i32 noundef %95, i32 noundef 1) #11
  %96 = load i32, ptr %34, align 4
  %97 = load i32, ptr %93, align 4
  %98 = call i32 @llvm.usub.sat.i32(i32 %97, i32 %96)
  store i32 %98, ptr %93, align 4
  %99 = load ptr, ptr %4, align 4
  %100 = getelementptr i8, ptr %99, i32 80
  %101 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %100) #11, !srcloc !17
  %102 = load ptr, ptr %4, align 4
  %103 = getelementptr i8, ptr %102, i32 84
  %104 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %103) #11, !srcloc !17
  %105 = load ptr, ptr %4, align 4
  %106 = getelementptr i8, ptr %105, i32 88
  %107 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %106) #11, !srcloc !17
  %108 = load ptr, ptr %4, align 4
  %109 = getelementptr i8, ptr %108, i32 92
  %110 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %109) #11, !srcloc !17
  %111 = or i32 %28, 557064
  %112 = load ptr, ptr %4, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %112, i32 %111) #11, !srcloc !20
  %113 = and i32 %111, -196657
  %114 = or i32 %113, 65536
  %115 = load ptr, ptr %4, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 %114) #11, !srcloc !20
  %116 = load i32, ptr %3, align 4
  %117 = xor i32 %116, %16
  %118 = xor i32 %101, %117
  store i32 %118, ptr %3, align 4
  %119 = load ptr, ptr %4, align 4
  %120 = getelementptr i8, ptr %119, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 %118) #11, !srcloc !20
  %121 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 1
  %122 = load i32, ptr %121, align 4
  %123 = xor i32 %122, %19
  %124 = xor i32 %104, %123
  store i32 %124, ptr %121, align 4
  %125 = load ptr, ptr %4, align 4
  %126 = getelementptr i8, ptr %125, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %126, i32 %124) #11, !srcloc !20
  %127 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 2
  %128 = load i32, ptr %127, align 4
  %129 = xor i32 %128, %22
  %130 = xor i32 %107, %129
  store i32 %130, ptr %127, align 4
  %131 = load ptr, ptr %4, align 4
  %132 = getelementptr i8, ptr %131, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %132, i32 %130) #11, !srcloc !20
  %133 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 3
  %134 = load i32, ptr %133, align 4
  %135 = xor i32 %134, %25
  %136 = xor i32 %110, %135
  store i32 %136, ptr %133, align 4
  %137 = load ptr, ptr %4, align 4
  %138 = getelementptr i8, ptr %137, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %138, i32 %136) #11, !srcloc !20
  %139 = call i64 @ktime_get() #11
  %140 = add i64 %139, 100000000
  %141 = load ptr, ptr %4, align 4
  %142 = getelementptr i8, ptr %141, i32 4
  %143 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %142) #11, !srcloc !17
  %144 = and i32 %143, 16
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %164, label %146

146:                                              ; preds = %149, %90
  %147 = call i64 @ktime_get() #11
  %148 = icmp sgt i64 %147, %140
  br i1 %148, label %155, label %149

149:                                              ; preds = %146
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #11
  %150 = load ptr, ptr %4, align 4
  %151 = getelementptr i8, ptr %150, i32 4
  %152 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %151) #11, !srcloc !17
  %153 = and i32 %152, 16
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %164, label %146

155:                                              ; preds = %146
  %156 = load ptr, ptr %4, align 4
  %157 = getelementptr i8, ptr %156, i32 4
  %158 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %157) #11, !srcloc !17
  %159 = and i32 %158, 16
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %155, %71
  %162 = getelementptr inbounds %struct.stm32_cryp, ptr %0, i32 0, i32 1
  %163 = load ptr, ptr %162, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %163, ptr noundef nonnull @.str.13) #12
  br label %164

164:                                              ; preds = %161, %155, %149, %90
  %165 = phi i32 [ 0, %90 ], [ 0, %155 ], [ -110, %161 ], [ 0, %149 ]
  call fastcc void @stm32_cryp_finish_req(ptr noundef %0, i32 noundef %165)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_inc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stm32_cryp_hw_write_iv(ptr nocapture noundef readonly %0, ptr noundef readonly %1) unnamed_addr #2 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %2
  %5 = getelementptr i32, ptr %1, i32 1
  %6 = load i32, ptr %1, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = getelementptr inbounds %struct.stm32_cryp, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %7) #11, !srcloc !20
  %11 = load i32, ptr %5, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %13 = load ptr, ptr %8, align 4
  %14 = getelementptr i8, ptr %13, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #11, !srcloc !20
  %15 = getelementptr inbounds %struct.stm32_cryp, ptr %0, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %4
  %20 = getelementptr i32, ptr %1, i32 2
  %21 = getelementptr i32, ptr %1, i32 3
  %22 = load i32, ptr %20, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %24 = load ptr, ptr %8, align 4
  %25 = getelementptr i8, ptr %24, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #11, !srcloc !20
  %26 = load i32, ptr %21, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %28 = load ptr, ptr %8, align 4
  %29 = getelementptr i8, ptr %28, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #11, !srcloc !20
  br label %30

30:                                               ; preds = %19, %4, %2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_finalize_aead_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_finalize_skcipher_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__crypto_memneq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @stm32_cryp_aes_setkey(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #8 {
  switch i32 %2, label %7 [
    i32 32, label %4
    i32 24, label %4
    i32 16, label %4
  ]

4:                                                ; preds = %3, %3, %3
  %5 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1, i32 1, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %5, ptr align 1 %1, i32 %2, i1 false) #11
  %6 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1, i32 1, i32 12
  store i32 %2, ptr %6, align 4
  br label %7

7:                                                ; preds = %4, %3
  %8 = phi i32 [ 0, %4 ], [ -22, %3 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_cryp_aes_ecb_encrypt(ptr noundef %0) #2 {
  %2 = load i32, ptr %0, align 64
  %3 = and i32 %2, 15
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %25

5:                                                ; preds = %1
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %25, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %9 = load ptr, ptr %8, align 16
  %10 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #11
  %11 = getelementptr i8, ptr %9, i32 76
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #11
  br label %20

15:                                               ; preds = %7
  %16 = load ptr, ptr @cryp_list, align 4
  %17 = icmp eq ptr %16, @cryp_list
  %18 = select i1 %17, ptr null, ptr %16
  store ptr %18, ptr %11, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %15, %14
  %21 = phi ptr [ %12, %14 ], [ %16, %15 ]
  store i32 19, ptr %10, align 4
  %22 = getelementptr inbounds %struct.stm32_cryp, ptr %21, i32 0, i32 8
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @crypto_transfer_skcipher_request_to_engine(ptr noundef %23, ptr noundef %0) #11
  br label %25

25:                                               ; preds = %20, %15, %5, %1
  %26 = phi i32 [ -22, %1 ], [ 0, %5 ], [ %24, %20 ], [ -19, %15 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_cryp_aes_ecb_decrypt(ptr noundef %0) #2 {
  %2 = load i32, ptr %0, align 64
  %3 = and i32 %2, 15
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %25

5:                                                ; preds = %1
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %25, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %9 = load ptr, ptr %8, align 16
  %10 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #11
  %11 = getelementptr i8, ptr %9, i32 76
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #11
  br label %20

15:                                               ; preds = %7
  %16 = load ptr, ptr @cryp_list, align 4
  %17 = icmp eq ptr %16, @cryp_list
  %18 = select i1 %17, ptr null, ptr %16
  store ptr %18, ptr %11, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %15, %14
  %21 = phi ptr [ %12, %14 ], [ %16, %15 ]
  store i32 18, ptr %10, align 4
  %22 = getelementptr inbounds %struct.stm32_cryp, ptr %21, i32 0, i32 8
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @crypto_transfer_skcipher_request_to_engine(ptr noundef %23, ptr noundef %0) #11
  br label %25

25:                                               ; preds = %20, %15, %5, %1
  %26 = phi i32 [ -22, %1 ], [ 0, %5 ], [ %24, %20 ], [ -19, %15 ]
  ret i32 %26
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @stm32_cryp_init_tfm(ptr nocapture noundef writeonly %0) #9 {
  %2 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1
  store i32 4, ptr %0, align 64
  %3 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1, i32 1, i32 4
  store ptr @stm32_cryp_cipher_one_req, ptr %3, align 4
  store ptr @stm32_cryp_prepare_cipher_req, ptr %2, align 4
  %4 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1, i32 1
  store ptr null, ptr %4, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_cryp_aes_cbc_encrypt(ptr noundef %0) #2 {
  %2 = load i32, ptr %0, align 64
  %3 = and i32 %2, 15
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %25

5:                                                ; preds = %1
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %25, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %9 = load ptr, ptr %8, align 16
  %10 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #11
  %11 = getelementptr i8, ptr %9, i32 76
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #11
  br label %20

15:                                               ; preds = %7
  %16 = load ptr, ptr @cryp_list, align 4
  %17 = icmp eq ptr %16, @cryp_list
  %18 = select i1 %17, ptr null, ptr %16
  store ptr %18, ptr %11, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %15, %14
  %21 = phi ptr [ %12, %14 ], [ %16, %15 ]
  store i32 35, ptr %10, align 4
  %22 = getelementptr inbounds %struct.stm32_cryp, ptr %21, i32 0, i32 8
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @crypto_transfer_skcipher_request_to_engine(ptr noundef %23, ptr noundef %0) #11
  br label %25

25:                                               ; preds = %20, %15, %5, %1
  %26 = phi i32 [ -22, %1 ], [ 0, %5 ], [ %24, %20 ], [ -19, %15 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_cryp_aes_cbc_decrypt(ptr noundef %0) #2 {
  %2 = load i32, ptr %0, align 64
  %3 = and i32 %2, 15
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %25

5:                                                ; preds = %1
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %25, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %9 = load ptr, ptr %8, align 16
  %10 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #11
  %11 = getelementptr i8, ptr %9, i32 76
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #11
  br label %20

15:                                               ; preds = %7
  %16 = load ptr, ptr @cryp_list, align 4
  %17 = icmp eq ptr %16, @cryp_list
  %18 = select i1 %17, ptr null, ptr %16
  store ptr %18, ptr %11, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %15, %14
  %21 = phi ptr [ %12, %14 ], [ %16, %15 ]
  store i32 34, ptr %10, align 4
  %22 = getelementptr inbounds %struct.stm32_cryp, ptr %21, i32 0, i32 8
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @crypto_transfer_skcipher_request_to_engine(ptr noundef %23, ptr noundef %0) #11
  br label %25

25:                                               ; preds = %20, %15, %5, %1
  %26 = phi i32 [ -22, %1 ], [ 0, %5 ], [ %24, %20 ], [ -19, %15 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_cryp_aes_ctr_encrypt(ptr noundef %0) #2 {
  %2 = load i32, ptr %0, align 64
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %22, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %6 = load ptr, ptr %5, align 16
  %7 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #11
  %8 = getelementptr i8, ptr %6, i32 76
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %4
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #11
  br label %17

12:                                               ; preds = %4
  %13 = load ptr, ptr @cryp_list, align 4
  %14 = icmp eq ptr %13, @cryp_list
  %15 = select i1 %14, ptr null, ptr %13
  store ptr %15, ptr %8, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %12, %11
  %18 = phi ptr [ %9, %11 ], [ %13, %12 ]
  store i32 67, ptr %7, align 4
  %19 = getelementptr inbounds %struct.stm32_cryp, ptr %18, i32 0, i32 8
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @crypto_transfer_skcipher_request_to_engine(ptr noundef %20, ptr noundef %0) #11
  br label %22

22:                                               ; preds = %17, %12, %1
  %23 = phi i32 [ 0, %1 ], [ %21, %17 ], [ -19, %12 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_cryp_aes_ctr_decrypt(ptr noundef %0) #2 {
  %2 = load i32, ptr %0, align 64
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %22, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %6 = load ptr, ptr %5, align 16
  %7 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #11
  %8 = getelementptr i8, ptr %6, i32 76
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %4
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #11
  br label %17

12:                                               ; preds = %4
  %13 = load ptr, ptr @cryp_list, align 4
  %14 = icmp eq ptr %13, @cryp_list
  %15 = select i1 %14, ptr null, ptr %13
  store ptr %15, ptr %8, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %12, %11
  %18 = phi ptr [ %9, %11 ], [ %13, %12 ]
  store i32 66, ptr %7, align 4
  %19 = getelementptr inbounds %struct.stm32_cryp, ptr %18, i32 0, i32 8
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @crypto_transfer_skcipher_request_to_engine(ptr noundef %20, ptr noundef %0) #11
  br label %22

22:                                               ; preds = %17, %12, %1
  %23 = phi i32 [ 0, %1 ], [ %21, %17 ], [ -19, %12 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_cryp_des_setkey(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca %struct.des_ctx, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %4, i8 0, i32 128, i1 false) #11, !annotation !18
  %5 = call i32 @des_expand_key(ptr noundef nonnull %4, ptr noundef %1, i32 noundef 8) #11
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
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %4, i8 0, i32 128, i1 false) #11
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %4) #11, !srcloc !23
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1, i32 1, i32 16
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %17, ptr align 1 %1, i32 %2, i1 false) #11
  %18 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1, i32 1, i32 12
  store i32 %2, ptr %18, align 4
  br label %19

19:                                               ; preds = %16, %13
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_cryp_des_ecb_encrypt(ptr noundef %0) #2 {
  %2 = load i32, ptr %0, align 64
  %3 = and i32 %2, 7
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %25

5:                                                ; preds = %1
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %25, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %9 = load ptr, ptr %8, align 16
  %10 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #11
  %11 = getelementptr i8, ptr %9, i32 76
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #11
  br label %20

15:                                               ; preds = %7
  %16 = load ptr, ptr @cryp_list, align 4
  %17 = icmp eq ptr %16, @cryp_list
  %18 = select i1 %17, ptr null, ptr %16
  store ptr %18, ptr %11, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %15, %14
  %21 = phi ptr [ %12, %14 ], [ %16, %15 ]
  store i32 21, ptr %10, align 4
  %22 = getelementptr inbounds %struct.stm32_cryp, ptr %21, i32 0, i32 8
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @crypto_transfer_skcipher_request_to_engine(ptr noundef %23, ptr noundef %0) #11
  br label %25

25:                                               ; preds = %20, %15, %5, %1
  %26 = phi i32 [ -22, %1 ], [ 0, %5 ], [ %24, %20 ], [ -19, %15 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_cryp_des_ecb_decrypt(ptr noundef %0) #2 {
  %2 = load i32, ptr %0, align 64
  %3 = and i32 %2, 7
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %25

5:                                                ; preds = %1
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %25, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %9 = load ptr, ptr %8, align 16
  %10 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #11
  %11 = getelementptr i8, ptr %9, i32 76
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #11
  br label %20

15:                                               ; preds = %7
  %16 = load ptr, ptr @cryp_list, align 4
  %17 = icmp eq ptr %16, @cryp_list
  %18 = select i1 %17, ptr null, ptr %16
  store ptr %18, ptr %11, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %15, %14
  %21 = phi ptr [ %12, %14 ], [ %16, %15 ]
  store i32 20, ptr %10, align 4
  %22 = getelementptr inbounds %struct.stm32_cryp, ptr %21, i32 0, i32 8
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @crypto_transfer_skcipher_request_to_engine(ptr noundef %23, ptr noundef %0) #11
  br label %25

25:                                               ; preds = %20, %15, %5, %1
  %26 = phi i32 [ -22, %1 ], [ 0, %5 ], [ %24, %20 ], [ -19, %15 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_cryp_des_cbc_encrypt(ptr noundef %0) #2 {
  %2 = load i32, ptr %0, align 64
  %3 = and i32 %2, 7
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %25

5:                                                ; preds = %1
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %25, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %9 = load ptr, ptr %8, align 16
  %10 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #11
  %11 = getelementptr i8, ptr %9, i32 76
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #11
  br label %20

15:                                               ; preds = %7
  %16 = load ptr, ptr @cryp_list, align 4
  %17 = icmp eq ptr %16, @cryp_list
  %18 = select i1 %17, ptr null, ptr %16
  store ptr %18, ptr %11, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %15, %14
  %21 = phi ptr [ %12, %14 ], [ %16, %15 ]
  store i32 37, ptr %10, align 4
  %22 = getelementptr inbounds %struct.stm32_cryp, ptr %21, i32 0, i32 8
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @crypto_transfer_skcipher_request_to_engine(ptr noundef %23, ptr noundef %0) #11
  br label %25

25:                                               ; preds = %20, %15, %5, %1
  %26 = phi i32 [ -22, %1 ], [ 0, %5 ], [ %24, %20 ], [ -19, %15 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_cryp_des_cbc_decrypt(ptr noundef %0) #2 {
  %2 = load i32, ptr %0, align 64
  %3 = and i32 %2, 7
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %25

5:                                                ; preds = %1
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %25, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %9 = load ptr, ptr %8, align 16
  %10 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #11
  %11 = getelementptr i8, ptr %9, i32 76
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #11
  br label %20

15:                                               ; preds = %7
  %16 = load ptr, ptr @cryp_list, align 4
  %17 = icmp eq ptr %16, @cryp_list
  %18 = select i1 %17, ptr null, ptr %16
  store ptr %18, ptr %11, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %15, %14
  %21 = phi ptr [ %12, %14 ], [ %16, %15 ]
  store i32 36, ptr %10, align 4
  %22 = getelementptr inbounds %struct.stm32_cryp, ptr %21, i32 0, i32 8
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @crypto_transfer_skcipher_request_to_engine(ptr noundef %23, ptr noundef %0) #11
  br label %25

25:                                               ; preds = %20, %15, %5, %1
  %26 = phi i32 [ -22, %1 ], [ 0, %5 ], [ %24, %20 ], [ -19, %15 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_cryp_tdes_setkey(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #2 {
  %4 = alloca [6 x i32], align 4
  %5 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 64
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, ptr noundef align 1 dereferenceable(24) %1, i32 24, i1 false) #11
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
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false) #11
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %4) #11, !srcloc !23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  br label %33

30:                                               ; preds = %28, %19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false) #11
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %4) #11, !srcloc !23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  %31 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1, i32 1, i32 16
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %31, ptr align 1 %1, i32 %2, i1 false) #11
  %32 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1, i32 1, i32 12
  store i32 %2, ptr %32, align 4
  br label %33

33:                                               ; preds = %30, %29
  %34 = phi i32 [ -126, %29 ], [ 0, %30 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_cryp_tdes_ecb_encrypt(ptr noundef %0) #2 {
  %2 = load i32, ptr %0, align 64
  %3 = and i32 %2, 7
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %25

5:                                                ; preds = %1
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %25, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %9 = load ptr, ptr %8, align 16
  %10 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #11
  %11 = getelementptr i8, ptr %9, i32 76
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #11
  br label %20

15:                                               ; preds = %7
  %16 = load ptr, ptr @cryp_list, align 4
  %17 = icmp eq ptr %16, @cryp_list
  %18 = select i1 %17, ptr null, ptr %16
  store ptr %18, ptr %11, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %15, %14
  %21 = phi ptr [ %12, %14 ], [ %16, %15 ]
  store i32 25, ptr %10, align 4
  %22 = getelementptr inbounds %struct.stm32_cryp, ptr %21, i32 0, i32 8
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @crypto_transfer_skcipher_request_to_engine(ptr noundef %23, ptr noundef %0) #11
  br label %25

25:                                               ; preds = %20, %15, %5, %1
  %26 = phi i32 [ -22, %1 ], [ 0, %5 ], [ %24, %20 ], [ -19, %15 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_cryp_tdes_ecb_decrypt(ptr noundef %0) #2 {
  %2 = load i32, ptr %0, align 64
  %3 = and i32 %2, 7
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %25

5:                                                ; preds = %1
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %25, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %9 = load ptr, ptr %8, align 16
  %10 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #11
  %11 = getelementptr i8, ptr %9, i32 76
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #11
  br label %20

15:                                               ; preds = %7
  %16 = load ptr, ptr @cryp_list, align 4
  %17 = icmp eq ptr %16, @cryp_list
  %18 = select i1 %17, ptr null, ptr %16
  store ptr %18, ptr %11, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %15, %14
  %21 = phi ptr [ %12, %14 ], [ %16, %15 ]
  store i32 24, ptr %10, align 4
  %22 = getelementptr inbounds %struct.stm32_cryp, ptr %21, i32 0, i32 8
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @crypto_transfer_skcipher_request_to_engine(ptr noundef %23, ptr noundef %0) #11
  br label %25

25:                                               ; preds = %20, %15, %5, %1
  %26 = phi i32 [ -22, %1 ], [ 0, %5 ], [ %24, %20 ], [ -19, %15 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_cryp_tdes_cbc_encrypt(ptr noundef %0) #2 {
  %2 = load i32, ptr %0, align 64
  %3 = and i32 %2, 7
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %25

5:                                                ; preds = %1
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %25, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %9 = load ptr, ptr %8, align 16
  %10 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #11
  %11 = getelementptr i8, ptr %9, i32 76
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #11
  br label %20

15:                                               ; preds = %7
  %16 = load ptr, ptr @cryp_list, align 4
  %17 = icmp eq ptr %16, @cryp_list
  %18 = select i1 %17, ptr null, ptr %16
  store ptr %18, ptr %11, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %15, %14
  %21 = phi ptr [ %12, %14 ], [ %16, %15 ]
  store i32 41, ptr %10, align 4
  %22 = getelementptr inbounds %struct.stm32_cryp, ptr %21, i32 0, i32 8
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @crypto_transfer_skcipher_request_to_engine(ptr noundef %23, ptr noundef %0) #11
  br label %25

25:                                               ; preds = %20, %15, %5, %1
  %26 = phi i32 [ -22, %1 ], [ 0, %5 ], [ %24, %20 ], [ -19, %15 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_cryp_tdes_cbc_decrypt(ptr noundef %0) #2 {
  %2 = load i32, ptr %0, align 64
  %3 = and i32 %2, 7
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %25

5:                                                ; preds = %1
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %25, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %9 = load ptr, ptr %8, align 16
  %10 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #11
  %11 = getelementptr i8, ptr %9, i32 76
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #11
  br label %20

15:                                               ; preds = %7
  %16 = load ptr, ptr @cryp_list, align 4
  %17 = icmp eq ptr %16, @cryp_list
  %18 = select i1 %17, ptr null, ptr %16
  store ptr %18, ptr %11, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %15, %14
  %21 = phi ptr [ %12, %14 ], [ %16, %15 ]
  store i32 40, ptr %10, align 4
  %22 = getelementptr inbounds %struct.stm32_cryp, ptr %21, i32 0, i32 8
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @crypto_transfer_skcipher_request_to_engine(ptr noundef %23, ptr noundef %0) #11
  br label %25

25:                                               ; preds = %20, %15, %5, %1
  %26 = phi i32 [ -22, %1 ], [ 0, %5 ], [ %24, %20 ], [ -19, %15 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_transfer_skcipher_request_to_engine(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_cryp_cipher_one_req(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr i8, ptr %1, i32 16
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr i8, ptr %4, i32 76
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.stm32_cryp, ptr %6, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 3) #11, !srcloc !20
  br label %12

12:                                               ; preds = %8, %2
  %13 = phi i32 [ 0, %8 ], [ -19, %2 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_cryp_prepare_cipher_req(ptr nocapture noundef readnone %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %1, i32 -16
  %4 = tail call fastcc i32 @stm32_cryp_prepare_req(ptr noundef %3, ptr noundef null)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stm32_cryp_prepare_req(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = alloca [4 x i32], align 4
  %4 = alloca [4 x i32], align 4
  %5 = icmp ne ptr %0, null
  %6 = icmp ne ptr %1, null
  %7 = or i1 %5, %6
  br i1 %7, label %8, label %612

8:                                                ; preds = %2
  br i1 %5, label %9, label %15

9:                                                ; preds = %8
  %10 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %11 = load ptr, ptr %10, align 16
  %12 = getelementptr i8, ptr %11, i32 76
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %612, label %21

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 3
  %17 = load ptr, ptr %16, align 16
  %18 = getelementptr i8, ptr %17, i32 76
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %612, label %23

21:                                               ; preds = %9
  %22 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  br label %25

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.aead_request, ptr %1, i32 0, i32 7
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi ptr [ %11, %21 ], [ %17, %23 ]
  %27 = phi ptr [ %12, %21 ], [ %18, %23 ]
  %28 = phi ptr [ %13, %21 ], [ %19, %23 ]
  %29 = phi ptr [ %22, %21 ], [ %24, %23 ]
  %30 = getelementptr i8, ptr %26, i32 64
  %31 = load i32, ptr %29, align 4
  %32 = and i32 %31, 65535
  store i32 %32, ptr %29, align 4
  store ptr %28, ptr %27, align 4
  %33 = getelementptr inbounds %struct.stm32_cryp, ptr %28, i32 0, i32 4
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, -65536
  %36 = load i32, ptr %29, align 4
  %37 = or i32 %35, %36
  store i32 %37, ptr %33, align 4
  %38 = and i32 %36, 2
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i32 8, i32 16
  %41 = getelementptr inbounds %struct.stm32_cryp, ptr %28, i32 0, i32 12
  store i32 %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.stm32_cryp, ptr %28, i32 0, i32 7
  store ptr %30, ptr %42, align 4
  br i1 %5, label %43, label %59

43:                                               ; preds = %25
  %44 = getelementptr inbounds %struct.stm32_cryp, ptr %28, i32 0, i32 9
  store ptr %0, ptr %44, align 4
  %45 = getelementptr inbounds %struct.stm32_cryp, ptr %28, i32 0, i32 10
  store ptr null, ptr %45, align 4
  %46 = getelementptr inbounds %struct.stm32_cryp, ptr %28, i32 0, i32 14
  store i32 0, ptr %46, align 4
  %47 = load i32, ptr %0, align 64
  %48 = getelementptr inbounds %struct.stm32_cryp, ptr %28, i32 0, i32 13
  store i32 %47, ptr %48, align 4
  %49 = load i32, ptr %0, align 64
  %50 = getelementptr inbounds %struct.stm32_cryp, ptr %28, i32 0, i32 15
  store i32 %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.stm32_cryp, ptr %28, i32 0, i32 11
  store i32 0, ptr %51, align 4
  %52 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.stm32_cryp, ptr %28, i32 0, i32 17
  store ptr %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.scatterlist, ptr %53, i32 0, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.stm32_cryp, ptr %28, i32 0, i32 17, i32 1
  store i32 %56, ptr %57, align 4
  %58 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 3
  br label %93

59:                                               ; preds = %25
  %60 = getelementptr inbounds %struct.stm32_cryp, ptr %28, i32 0, i32 10
  store ptr %1, ptr %60, align 4
  %61 = getelementptr inbounds %struct.stm32_cryp, ptr %28, i32 0, i32 9
  store ptr null, ptr %61, align 4
  %62 = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 3
  %63 = load ptr, ptr %62, align 16
  %64 = getelementptr i8, ptr %63, i32 -64
  %65 = load i32, ptr %64, align 64
  %66 = getelementptr inbounds %struct.stm32_cryp, ptr %28, i32 0, i32 11
  store i32 %65, ptr %66, align 4
  %67 = and i32 %36, 1
  %68 = icmp eq i32 %67, 0
  %69 = getelementptr inbounds %struct.aead_request, ptr %1, i32 0, i32 2
  %70 = load i32, ptr %69, align 4
  br i1 %68, label %77, label %71

71:                                               ; preds = %59
  %72 = getelementptr inbounds %struct.stm32_cryp, ptr %28, i32 0, i32 13
  store i32 %70, ptr %72, align 4
  %73 = getelementptr inbounds %struct.aead_request, ptr %1, i32 0, i32 1
  %74 = load i32, ptr %73, align 8
  %75 = getelementptr inbounds %struct.stm32_cryp, ptr %28, i32 0, i32 14
  store i32 %74, ptr %75, align 4
  %76 = load i32, ptr %69, align 4
  br label %83

77:                                               ; preds = %59
  %78 = sub i32 %70, %65
  %79 = getelementptr inbounds %struct.stm32_cryp, ptr %28, i32 0, i32 13
  store i32 %78, ptr %79, align 4
  %80 = getelementptr inbounds %struct.aead_request, ptr %1, i32 0, i32 1
  %81 = load i32, ptr %80, align 8
  %82 = getelementptr inbounds %struct.stm32_cryp, ptr %28, i32 0, i32 14
  store i32 %81, ptr %82, align 4
  br label %83

83:                                               ; preds = %77, %71
  %84 = phi i32 [ %78, %77 ], [ %76, %71 ]
  %85 = getelementptr inbounds %struct.stm32_cryp, ptr %28, i32 0, i32 15
  store i32 %84, ptr %85, align 4
  %86 = getelementptr inbounds %struct.aead_request, ptr %1, i32 0, i32 4
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.stm32_cryp, ptr %28, i32 0, i32 17
  store ptr %87, ptr %88, align 4
  %89 = getelementptr inbounds %struct.scatterlist, ptr %87, i32 0, i32 1
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr inbounds %struct.stm32_cryp, ptr %28, i32 0, i32 17, i32 1
  store i32 %90, ptr %91, align 4
  %92 = getelementptr inbounds %struct.aead_request, ptr %1, i32 0, i32 5
  br label %93

93:                                               ; preds = %83, %43
  %94 = phi ptr [ null, %43 ], [ %1, %83 ]
  %95 = phi ptr [ %58, %43 ], [ %92, %83 ]
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.stm32_cryp, ptr %28, i32 0, i32 16
  store ptr %96, ptr %97, align 4
  %98 = getelementptr inbounds %struct.stm32_cryp, ptr %28, i32 0, i32 18
  store ptr %96, ptr %98, align 4
  %99 = getelementptr inbounds %struct.scatterlist, ptr %96, i32 0, i32 1
  %100 = load i32, ptr %99, align 4
  %101 = getelementptr inbounds %struct.stm32_cryp, ptr %28, i32 0, i32 18, i32 1
  store i32 %100, ptr %101, align 4
  %102 = and i32 %36, 384
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %93
  %105 = getelementptr inbounds %struct.aead_request, ptr %94, i32 0, i32 1
  %106 = load i32, ptr %105, align 8
  tail call void @scatterwalk_copychunks(ptr noundef null, ptr noundef %98, i32 noundef %106, i32 noundef 2) #11
  %107 = load i32, ptr %33, align 4
  br label %108

108:                                              ; preds = %104, %93
  %109 = phi i32 [ %37, %93 ], [ %107, %104 ]
  %110 = and i32 %109, 64
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.stm32_cryp, ptr %28, i32 0, i32 19
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %113, i8 0, i32 16, i1 false)
  br label %114

114:                                              ; preds = %112, %108
  %115 = getelementptr inbounds %struct.stm32_cryp, ptr %28, i32 0, i32 1
  %116 = load ptr, ptr %115, align 4
  %117 = tail call i32 @__pm_runtime_resume(ptr noundef %116, i32 noundef 4) #11
  %118 = getelementptr inbounds %struct.stm32_cryp, ptr %28, i32 0, i32 2
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr i8, ptr %119, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 0) #11, !srcloc !20
  %121 = load ptr, ptr %42, align 4
  %122 = getelementptr inbounds %struct.stm32_cryp_ctx, ptr %121, i32 0, i32 2
  %123 = load i32, ptr %122, align 4
  %124 = icmp eq i32 %123, 24
  %125 = select i1 %124, i32 16768, i32 17024
  %126 = icmp eq i32 %123, 16
  %127 = select i1 %126, i32 16512, i32 %125
  %128 = load i32, ptr %33, align 4
  %129 = and i32 %128, 2
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %146, label %131

131:                                              ; preds = %114
  %132 = and i32 %128, 16
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %166

134:                                              ; preds = %131
  %135 = and i32 %128, 32
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %166

137:                                              ; preds = %134
  %138 = and i32 %128, 64
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %249

140:                                              ; preds = %137
  %141 = and i32 %128, 128
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %249

143:                                              ; preds = %140
  %144 = and i32 %128, 256
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %249

146:                                              ; preds = %143, %114
  %147 = and i32 %128, 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %155, label %149

149:                                              ; preds = %146
  %150 = and i32 %128, 16
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %249

152:                                              ; preds = %149
  %153 = and i32 %128, 32
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %249

155:                                              ; preds = %152, %146
  %156 = and i32 %128, 8
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %164, label %158

158:                                              ; preds = %155
  %159 = and i32 %128, 16
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %249

161:                                              ; preds = %158
  %162 = and i32 %128, 32
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %249

164:                                              ; preds = %161, %155
  %165 = load ptr, ptr %115, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %165, ptr noundef nonnull @.str.10) #12
  br label %612

166:                                              ; preds = %134, %131
  %167 = phi i32 [ 40, %134 ], [ 32, %131 ]
  %168 = and i32 %128, 1
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %172, label %170

170:                                              ; preds = %166
  %171 = or i32 %167, %127
  br label %256

172:                                              ; preds = %166
  %173 = or i32 %127, 56
  %174 = load ptr, ptr %118, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %174, i32 %173) #11, !srcloc !20
  %175 = load i32, ptr %33, align 4
  %176 = and i32 %175, 4
  %177 = icmp eq i32 %176, 0
  %178 = load ptr, ptr %42, align 4
  br i1 %177, label %191, label %179

179:                                              ; preds = %172
  %180 = getelementptr inbounds %struct.stm32_cryp_ctx, ptr %178, i32 0, i32 3
  %181 = load i32, ptr %180, align 4
  %182 = tail call i32 @llvm.bswap.i32(i32 %181) #11
  %183 = load ptr, ptr %118, align 4
  %184 = getelementptr i8, ptr %183, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %184, i32 %182) #11, !srcloc !20
  %185 = load ptr, ptr %42, align 4
  %186 = getelementptr %struct.stm32_cryp_ctx, ptr %185, i32 0, i32 3, i32 1
  %187 = load i32, ptr %186, align 4
  %188 = tail call i32 @llvm.bswap.i32(i32 %187) #11
  %189 = load ptr, ptr %118, align 4
  %190 = getelementptr i8, ptr %189, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %190, i32 %188) #11, !srcloc !20
  br label %216

191:                                              ; preds = %172
  %192 = getelementptr inbounds %struct.stm32_cryp_ctx, ptr %178, i32 0, i32 2
  %193 = load i32, ptr %192, align 4
  %194 = icmp ult i32 %193, 4
  br i1 %194, label %216, label %195

195:                                              ; preds = %191
  %196 = lshr i32 %193, 2
  %197 = add nsw i32 %196, -1
  %198 = getelementptr %struct.stm32_cryp_ctx, ptr %178, i32 0, i32 3, i32 %197
  %199 = load i32, ptr %198, align 4
  %200 = tail call i32 @llvm.bswap.i32(i32 %199) #11
  %201 = load ptr, ptr %118, align 4
  %202 = getelementptr i8, ptr %201, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %202, i32 %200) #11, !srcloc !20
  %203 = icmp eq i32 %197, 0
  br i1 %203, label %216, label %204

204:                                              ; preds = %204, %195
  %205 = phi i32 [ %209, %204 ], [ %197, %195 ]
  %206 = phi i32 [ %207, %204 ], [ 60, %195 ]
  %207 = add i32 %206, -4
  %208 = load ptr, ptr %42, align 4
  %209 = add nsw i32 %205, -1
  %210 = getelementptr %struct.stm32_cryp_ctx, ptr %208, i32 0, i32 3, i32 %209
  %211 = load i32, ptr %210, align 4
  %212 = tail call i32 @llvm.bswap.i32(i32 %211) #11
  %213 = load ptr, ptr %118, align 4
  %214 = getelementptr i8, ptr %213, i32 %207
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %214, i32 %212) #11, !srcloc !20
  %215 = icmp eq i32 %209, 0
  br i1 %215, label %216, label %204

216:                                              ; preds = %204, %195, %191, %179
  %217 = load ptr, ptr %118, align 4
  %218 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %217) #11, !srcloc !17
  %219 = or i32 %218, 32768
  %220 = load ptr, ptr %118, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %220, i32 %219) #11, !srcloc !20
  %221 = tail call i64 @ktime_get() #11
  %222 = add i64 %221, 100000000
  %223 = load ptr, ptr %118, align 4
  %224 = getelementptr i8, ptr %223, i32 4
  %225 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %224) #11, !srcloc !17
  %226 = and i32 %225, 16
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %245, label %228

228:                                              ; preds = %231, %216
  %229 = tail call i64 @ktime_get() #11
  %230 = icmp sgt i64 %229, %222
  br i1 %230, label %237, label %231

231:                                              ; preds = %228
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #11
  %232 = load ptr, ptr %118, align 4
  %233 = getelementptr i8, ptr %232, i32 4
  %234 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %233) #11, !srcloc !17
  %235 = and i32 %234, 16
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %245, label %228

237:                                              ; preds = %228
  %238 = load ptr, ptr %118, align 4
  %239 = getelementptr i8, ptr %238, i32 4
  %240 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %239) #11, !srcloc !17
  %241 = and i32 %240, 16
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %245, label %243

243:                                              ; preds = %237
  %244 = load ptr, ptr %115, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %244, ptr noundef nonnull @.str.15) #12
  br label %612

245:                                              ; preds = %237, %231, %216
  %246 = or i32 %167, %127
  %247 = or i32 %246, 4
  %248 = load ptr, ptr %118, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %248, i32 %247) #11, !srcloc !20
  br label %301

249:                                              ; preds = %161, %158, %152, %149, %143, %140, %137
  %250 = phi i32 [ 48, %137 ], [ 524288, %140 ], [ 524296, %143 ], [ 16, %149 ], [ 24, %152 ], [ 0, %158 ], [ 8, %161 ]
  %251 = shl i32 %128, 2
  %252 = and i32 %251, 4
  %253 = or i32 %252, %127
  %254 = or i32 %253, %250
  %255 = xor i32 %254, 4
  br label %256

256:                                              ; preds = %249, %170
  %257 = phi i32 [ %167, %170 ], [ %250, %249 ]
  %258 = phi i32 [ %171, %170 ], [ %255, %249 ]
  %259 = load ptr, ptr %118, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %259, i32 %258) #11, !srcloc !20
  %260 = load i32, ptr %33, align 4
  %261 = and i32 %260, 4
  %262 = icmp eq i32 %261, 0
  %263 = load ptr, ptr %42, align 4
  br i1 %262, label %276, label %264

264:                                              ; preds = %256
  %265 = getelementptr inbounds %struct.stm32_cryp_ctx, ptr %263, i32 0, i32 3
  %266 = load i32, ptr %265, align 4
  %267 = tail call i32 @llvm.bswap.i32(i32 %266) #11
  %268 = load ptr, ptr %118, align 4
  %269 = getelementptr i8, ptr %268, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %269, i32 %267) #11, !srcloc !20
  %270 = load ptr, ptr %42, align 4
  %271 = getelementptr %struct.stm32_cryp_ctx, ptr %270, i32 0, i32 3, i32 1
  %272 = load i32, ptr %271, align 4
  %273 = tail call i32 @llvm.bswap.i32(i32 %272) #11
  %274 = load ptr, ptr %118, align 4
  %275 = getelementptr i8, ptr %274, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %275, i32 %273) #11, !srcloc !20
  br label %301

276:                                              ; preds = %256
  %277 = getelementptr inbounds %struct.stm32_cryp_ctx, ptr %263, i32 0, i32 2
  %278 = load i32, ptr %277, align 4
  %279 = icmp ult i32 %278, 4
  br i1 %279, label %301, label %280

280:                                              ; preds = %276
  %281 = lshr i32 %278, 2
  %282 = add nsw i32 %281, -1
  %283 = getelementptr %struct.stm32_cryp_ctx, ptr %263, i32 0, i32 3, i32 %282
  %284 = load i32, ptr %283, align 4
  %285 = tail call i32 @llvm.bswap.i32(i32 %284) #11
  %286 = load ptr, ptr %118, align 4
  %287 = getelementptr i8, ptr %286, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %287, i32 %285) #11, !srcloc !20
  %288 = icmp eq i32 %282, 0
  br i1 %288, label %301, label %289

289:                                              ; preds = %289, %280
  %290 = phi i32 [ %294, %289 ], [ %282, %280 ]
  %291 = phi i32 [ %292, %289 ], [ 60, %280 ]
  %292 = add i32 %291, -4
  %293 = load ptr, ptr %42, align 4
  %294 = add nsw i32 %290, -1
  %295 = getelementptr %struct.stm32_cryp_ctx, ptr %293, i32 0, i32 3, i32 %294
  %296 = load i32, ptr %295, align 4
  %297 = tail call i32 @llvm.bswap.i32(i32 %296) #11
  %298 = load ptr, ptr %118, align 4
  %299 = getelementptr i8, ptr %298, i32 %292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %299, i32 %297) #11, !srcloc !20
  %300 = icmp eq i32 %294, 0
  br i1 %300, label %301, label %289

301:                                              ; preds = %289, %280, %276, %264, %245
  %302 = phi i32 [ %167, %245 ], [ %257, %264 ], [ %257, %276 ], [ %257, %280 ], [ %257, %289 ]
  %303 = phi i32 [ %247, %245 ], [ %258, %264 ], [ %258, %276 ], [ %258, %280 ], [ %258, %289 ]
  switch i32 %302, label %607 [
    i32 48, label %577
    i32 40, label %577
    i32 24, label %577
    i32 8, label %577
    i32 524296, label %304
    i32 524288, label %500
  ]

304:                                              ; preds = %301
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  %305 = getelementptr inbounds %struct.stm32_cryp, ptr %28, i32 0, i32 10
  %306 = load ptr, ptr %305, align 4
  %307 = getelementptr inbounds %struct.aead_request, ptr %306, i32 0, i32 3
  %308 = load ptr, ptr %307, align 32
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef align 1 dereferenceable(16) %308, i32 16, i1 false) #11
  %309 = getelementptr inbounds i8, ptr %4, i32 15
  %310 = load i8, ptr %4, align 4
  %311 = zext i8 %310 to i32
  %312 = sub nsw i32 0, %311
  %313 = getelementptr i8, ptr %309, i32 %312
  %314 = add nuw nsw i32 %311, 1
  call void @llvm.memset.p0.i32(ptr noundef align 1 %313, i8 0, i32 %314, i1 false) #11
  store i8 1, ptr %309, align 1
  %315 = getelementptr inbounds i32, ptr %4, i32 1
  %316 = load i32, ptr %4, align 4
  %317 = tail call i32 @llvm.bswap.i32(i32 %316) #11
  %318 = load ptr, ptr %118, align 4
  %319 = getelementptr i8, ptr %318, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %319, i32 %317) #11, !srcloc !20
  %320 = load i32, ptr %315, align 4
  %321 = tail call i32 @llvm.bswap.i32(i32 %320) #11
  %322 = load ptr, ptr %118, align 4
  %323 = getelementptr i8, ptr %322, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %323, i32 %321) #11, !srcloc !20
  %324 = load i32, ptr %33, align 4
  %325 = and i32 %324, 2
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %327, label %333

327:                                              ; preds = %304
  %328 = getelementptr inbounds i8, ptr %4, i32 8
  %329 = load i32, ptr %328, align 4
  %330 = getelementptr inbounds i8, ptr %4, i32 12
  %331 = load i32, ptr %330, align 4
  %332 = tail call i32 @llvm.bswap.i32(i32 %329) #11
  br label %345

333:                                              ; preds = %304
  %334 = getelementptr inbounds i32, ptr %4, i32 2
  %335 = getelementptr inbounds i32, ptr %4, i32 3
  %336 = load i32, ptr %334, align 4
  %337 = tail call i32 @llvm.bswap.i32(i32 %336) #11
  %338 = load ptr, ptr %118, align 4
  %339 = getelementptr i8, ptr %338, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %339, i32 %337) #11, !srcloc !20
  %340 = load i32, ptr %335, align 4
  %341 = tail call i32 @llvm.bswap.i32(i32 %340) #11
  %342 = load ptr, ptr %118, align 4
  %343 = getelementptr i8, ptr %342, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %343, i32 %341) #11, !srcloc !20
  %344 = load i32, ptr %33, align 4
  br label %345

345:                                              ; preds = %333, %327
  %346 = phi i32 [ %337, %333 ], [ %332, %327 ]
  %347 = phi i32 [ %344, %333 ], [ %324, %327 ]
  %348 = phi i32 [ %340, %333 ], [ %331, %327 ]
  %349 = phi i32 [ %336, %333 ], [ %329, %327 ]
  %350 = trunc i32 %316 to i8
  %351 = and i32 %316, -256
  %352 = getelementptr inbounds %struct.stm32_cryp, ptr %28, i32 0, i32 11
  %353 = load i32, ptr %352, align 4
  %354 = trunc i32 %353 to i8
  %355 = shl i8 %354, 2
  %356 = add i8 %355, -8
  %357 = and i8 %356, -8
  %358 = or i8 %357, %350
  %359 = load ptr, ptr %305, align 4
  %360 = getelementptr inbounds %struct.aead_request, ptr %359, i32 0, i32 1
  %361 = load i32, ptr %360, align 8
  %362 = icmp eq i32 %361, 0
  %363 = or i8 %358, 64
  %364 = select i1 %362, i8 %358, i8 %363
  %365 = and i32 %347, 1
  %366 = icmp eq i32 %365, 0
  %367 = getelementptr inbounds %struct.aead_request, ptr %359, i32 0, i32 2
  %368 = load i32, ptr %367, align 4
  %369 = select i1 %366, i32 %353, i32 0
  %370 = sub i32 %368, %369
  %371 = shl i32 %370, 8
  %372 = and i32 %371, 16711680
  %373 = and i32 %348, 65535
  %374 = or i32 %373, %372
  %375 = shl i32 %370, 24
  %376 = or i32 %374, %375
  %377 = or i32 %303, 32768
  %378 = load ptr, ptr %118, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %378, i32 %377) #11, !srcloc !20
  %379 = getelementptr inbounds %struct.stm32_cryp, ptr %28, i32 0, i32 6
  %380 = zext i8 %364 to i32
  %381 = or i32 %351, %380
  %382 = load ptr, ptr %379, align 4
  %383 = getelementptr inbounds %struct.stm32_cryp_caps, ptr %382, i32 0, i32 1
  %384 = load i8, ptr %383, align 1, !range !22
  %385 = icmp eq i8 %384, 0
  %386 = tail call i32 @llvm.bswap.i32(i32 %381) #11
  %387 = select i1 %385, i32 %386, i32 %381
  %388 = load ptr, ptr %118, align 4
  %389 = getelementptr i8, ptr %388, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %389, i32 %387) #11, !srcloc !20
  %390 = load ptr, ptr %379, align 4
  %391 = getelementptr inbounds %struct.stm32_cryp_caps, ptr %390, i32 0, i32 1
  %392 = load i8, ptr %391, align 1, !range !22
  %393 = icmp eq i8 %392, 0
  %394 = select i1 %393, i32 %321, i32 %320
  %395 = load ptr, ptr %118, align 4
  %396 = getelementptr i8, ptr %395, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %396, i32 %394) #11, !srcloc !20
  %397 = load ptr, ptr %379, align 4
  %398 = getelementptr inbounds %struct.stm32_cryp_caps, ptr %397, i32 0, i32 1
  %399 = load i8, ptr %398, align 1, !range !22
  %400 = icmp eq i8 %399, 0
  %401 = select i1 %400, i32 %346, i32 %349
  %402 = load ptr, ptr %118, align 4
  %403 = getelementptr i8, ptr %402, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %403, i32 %401) #11, !srcloc !20
  %404 = load ptr, ptr %379, align 4
  %405 = getelementptr inbounds %struct.stm32_cryp_caps, ptr %404, i32 0, i32 1
  %406 = load i8, ptr %405, align 1, !range !22
  %407 = icmp eq i8 %406, 0
  %408 = tail call i32 @llvm.bswap.i32(i32 %376) #11
  %409 = select i1 %407, i32 %408, i32 %376
  %410 = load ptr, ptr %118, align 4
  %411 = getelementptr i8, ptr %410, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %411, i32 %409) #11, !srcloc !20
  %412 = tail call i64 @ktime_get() #11
  %413 = add i64 %412, 100000000
  %414 = load ptr, ptr %118, align 4
  %415 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %414) #11, !srcloc !17
  %416 = and i32 %415, 32768
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %431, label %418

418:                                              ; preds = %421, %345
  %419 = tail call i64 @ktime_get() #11
  %420 = icmp sgt i64 %419, %413
  br i1 %420, label %426, label %421

421:                                              ; preds = %418
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #11
  %422 = load ptr, ptr %118, align 4
  %423 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %422) #11, !srcloc !17
  %424 = and i32 %423, 32768
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %431, label %418

426:                                              ; preds = %418
  %427 = load ptr, ptr %118, align 4
  %428 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %427) #11, !srcloc !17
  %429 = and i32 %428, 32768
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %431, label %575

431:                                              ; preds = %426, %421, %345
  %432 = load ptr, ptr %305, align 4
  %433 = getelementptr inbounds %struct.aead_request, ptr %432, i32 0, i32 1
  %434 = load i32, ptr %433, align 8
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %485, label %436

436:                                              ; preds = %431
  %437 = or i32 %303, 98304
  %438 = load ptr, ptr %118, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %438, i32 %437) #11, !srcloc !20
  %439 = load ptr, ptr %305, align 4
  %440 = getelementptr inbounds %struct.aead_request, ptr %439, i32 0, i32 1
  %441 = load i32, ptr %440, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false) #11
  %442 = icmp ult i32 %441, 65281
  br i1 %442, label %443, label %447

443:                                              ; preds = %436
  %444 = lshr i32 %441, 8
  %445 = trunc i32 %444 to i8
  store i8 %445, ptr %3, align 4
  %446 = trunc i32 %441 to i8
  br label %459

447:                                              ; preds = %436
  store i8 -1, ptr %3, align 4
  %448 = lshr i32 %441, 24
  %449 = trunc i32 %448 to i8
  %450 = getelementptr inbounds i8, ptr %3, i32 2
  store i8 %449, ptr %450, align 2
  %451 = lshr i32 %441, 16
  %452 = trunc i32 %451 to i8
  %453 = getelementptr inbounds i8, ptr %3, i32 3
  store i8 %452, ptr %453, align 1
  %454 = lshr i32 %441, 8
  %455 = trunc i32 %454 to i8
  %456 = getelementptr inbounds i8, ptr %3, i32 4
  store i8 %455, ptr %456, align 4
  %457 = trunc i32 %441 to i8
  %458 = getelementptr inbounds i8, ptr %3, i32 5
  store i8 %457, ptr %458, align 1
  br label %459

459:                                              ; preds = %447, %443
  %460 = phi i8 [ %446, %443 ], [ -2, %447 ]
  %461 = phi i32 [ 2, %443 ], [ 6, %447 ]
  %462 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %460, ptr %462, align 1
  %463 = sub nuw nsw i32 16, %461
  %464 = tail call i32 @llvm.umin.i32(i32 %463, i32 %441) #11
  %465 = getelementptr i8, ptr %3, i32 %461
  %466 = getelementptr inbounds %struct.stm32_cryp, ptr %28, i32 0, i32 17
  call void @scatterwalk_copychunks(ptr noundef %465, ptr noundef %466, i32 noundef %464, i32 noundef 0) #11
  %467 = load i32, ptr %3, align 4
  %468 = load ptr, ptr %118, align 4
  %469 = getelementptr i8, ptr %468, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %469, i32 %467) #11, !srcloc !20
  %470 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 1
  %471 = load i32, ptr %470, align 4
  %472 = load ptr, ptr %118, align 4
  %473 = getelementptr i8, ptr %472, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %473, i32 %471) #11, !srcloc !20
  %474 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 2
  %475 = load i32, ptr %474, align 4
  %476 = load ptr, ptr %118, align 4
  %477 = getelementptr i8, ptr %476, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %477, i32 %475) #11, !srcloc !20
  %478 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 3
  %479 = load i32, ptr %478, align 4
  %480 = load ptr, ptr %118, align 4
  %481 = getelementptr i8, ptr %480, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %481, i32 %479) #11, !srcloc !20
  %482 = getelementptr inbounds %struct.stm32_cryp, ptr %28, i32 0, i32 14
  %483 = load i32, ptr %482, align 4
  %484 = sub i32 %483, %464
  store i32 %484, ptr %482, align 4
  call fastcc void @stm32_crypt_gcmccm_end_header(ptr noundef nonnull %28) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  br label %574

485:                                              ; preds = %431
  %486 = load i32, ptr %33, align 4
  %487 = and i32 %486, 1
  %488 = icmp eq i32 %487, 0
  %489 = getelementptr inbounds %struct.aead_request, ptr %432, i32 0, i32 2
  %490 = load i32, ptr %489, align 4
  br i1 %488, label %491, label %494

491:                                              ; preds = %485
  %492 = load i32, ptr %352, align 4
  %493 = sub i32 %490, %492
  br label %494

494:                                              ; preds = %491, %485
  %495 = phi i32 [ %493, %491 ], [ %490, %485 ]
  %496 = icmp eq i32 %495, 0
  br i1 %496, label %574, label %497

497:                                              ; preds = %494
  %498 = or i32 %303, 131072
  %499 = load ptr, ptr %118, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %499, i32 %498) #11, !srcloc !20
  br label %574

500:                                              ; preds = %301
  %501 = getelementptr inbounds %struct.stm32_cryp, ptr %28, i32 0, i32 10
  %502 = load ptr, ptr %501, align 4
  %503 = getelementptr inbounds %struct.aead_request, ptr %502, i32 0, i32 3
  %504 = load ptr, ptr %503, align 32
  %505 = load i32, ptr %504, align 1
  %506 = getelementptr inbounds i8, ptr %504, i32 4
  %507 = load i32, ptr %506, align 1
  %508 = getelementptr inbounds i8, ptr %504, i32 8
  %509 = load i32, ptr %508, align 1
  %510 = getelementptr inbounds %struct.stm32_cryp, ptr %28, i32 0, i32 20
  store i32 2, ptr %510, align 4
  %511 = tail call i32 @llvm.bswap.i32(i32 %505) #11
  %512 = load ptr, ptr %118, align 4
  %513 = getelementptr i8, ptr %512, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %513, i32 %511) #11, !srcloc !20
  %514 = tail call i32 @llvm.bswap.i32(i32 %507) #11
  %515 = load ptr, ptr %118, align 4
  %516 = getelementptr i8, ptr %515, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %516, i32 %514) #11, !srcloc !20
  %517 = load i32, ptr %33, align 4
  %518 = and i32 %517, 2
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %526, label %520

520:                                              ; preds = %500
  %521 = tail call i32 @llvm.bswap.i32(i32 %509) #11
  %522 = load ptr, ptr %118, align 4
  %523 = getelementptr i8, ptr %522, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %523, i32 %521) #11, !srcloc !20
  %524 = load ptr, ptr %118, align 4
  %525 = getelementptr i8, ptr %524, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %525, i32 2) #11, !srcloc !20
  br label %526

526:                                              ; preds = %520, %500
  %527 = or i32 %303, 32768
  %528 = load ptr, ptr %118, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %528, i32 %527) #11, !srcloc !20
  %529 = tail call i64 @ktime_get() #11
  %530 = add i64 %529, 100000000
  %531 = load ptr, ptr %118, align 4
  %532 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %531) #11, !srcloc !17
  %533 = and i32 %532, 32768
  %534 = icmp eq i32 %533, 0
  br i1 %534, label %550, label %535

535:                                              ; preds = %538, %526
  %536 = tail call i64 @ktime_get() #11
  %537 = icmp sgt i64 %536, %530
  br i1 %537, label %543, label %538

538:                                              ; preds = %535
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #11
  %539 = load ptr, ptr %118, align 4
  %540 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %539) #11, !srcloc !17
  %541 = and i32 %540, 32768
  %542 = icmp eq i32 %541, 0
  br i1 %542, label %550, label %535

543:                                              ; preds = %535
  %544 = load ptr, ptr %118, align 4
  %545 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %544) #11, !srcloc !17
  %546 = and i32 %545, 32768
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %550, label %548

548:                                              ; preds = %543
  %549 = load ptr, ptr %115, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %549, ptr noundef nonnull @.str.17) #12
  br label %612

550:                                              ; preds = %543, %538, %526
  %551 = load ptr, ptr %501, align 4
  %552 = getelementptr inbounds %struct.aead_request, ptr %551, i32 0, i32 1
  %553 = load i32, ptr %552, align 8
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %558, label %555

555:                                              ; preds = %550
  %556 = or i32 %303, 65536
  %557 = load ptr, ptr %118, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %557, i32 %556) #11, !srcloc !20
  br label %607

558:                                              ; preds = %550
  %559 = load i32, ptr %33, align 4
  %560 = and i32 %559, 1
  %561 = icmp eq i32 %560, 0
  %562 = getelementptr inbounds %struct.aead_request, ptr %551, i32 0, i32 2
  %563 = load i32, ptr %562, align 4
  br i1 %561, label %564, label %568

564:                                              ; preds = %558
  %565 = getelementptr inbounds %struct.stm32_cryp, ptr %28, i32 0, i32 11
  %566 = load i32, ptr %565, align 4
  %567 = sub i32 %563, %566
  br label %568

568:                                              ; preds = %564, %558
  %569 = phi i32 [ %567, %564 ], [ %563, %558 ]
  %570 = icmp eq i32 %569, 0
  br i1 %570, label %607, label %571

571:                                              ; preds = %568
  %572 = or i32 %303, 131072
  %573 = load ptr, ptr %118, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %573, i32 %572) #11, !srcloc !20
  br label %607

574:                                              ; preds = %497, %494, %459
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  br label %607

575:                                              ; preds = %426
  %576 = load ptr, ptr %115, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %576, ptr noundef nonnull @.str.16) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  br label %612

577:                                              ; preds = %301, %301, %301, %301
  %578 = getelementptr inbounds %struct.stm32_cryp, ptr %28, i32 0, i32 9
  %579 = load ptr, ptr %578, align 4
  %580 = getelementptr inbounds %struct.skcipher_request, ptr %579, i32 0, i32 1
  %581 = load ptr, ptr %580, align 4
  %582 = icmp eq ptr %581, null
  br i1 %582, label %607, label %583

583:                                              ; preds = %577
  %584 = getelementptr i32, ptr %581, i32 1
  %585 = load i32, ptr %581, align 4
  %586 = tail call i32 @llvm.bswap.i32(i32 %585) #11
  %587 = load ptr, ptr %118, align 4
  %588 = getelementptr i8, ptr %587, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %588, i32 %586) #11, !srcloc !20
  %589 = load i32, ptr %584, align 4
  %590 = tail call i32 @llvm.bswap.i32(i32 %589) #11
  %591 = load ptr, ptr %118, align 4
  %592 = getelementptr i8, ptr %591, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %592, i32 %590) #11, !srcloc !20
  %593 = load i32, ptr %33, align 4
  %594 = and i32 %593, 2
  %595 = icmp eq i32 %594, 0
  br i1 %595, label %607, label %596

596:                                              ; preds = %583
  %597 = getelementptr i32, ptr %581, i32 2
  %598 = getelementptr i32, ptr %581, i32 3
  %599 = load i32, ptr %597, align 4
  %600 = tail call i32 @llvm.bswap.i32(i32 %599) #11
  %601 = load ptr, ptr %118, align 4
  %602 = getelementptr i8, ptr %601, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %602, i32 %600) #11, !srcloc !20
  %603 = load i32, ptr %598, align 4
  %604 = tail call i32 @llvm.bswap.i32(i32 %603) #11
  %605 = load ptr, ptr %118, align 4
  %606 = getelementptr i8, ptr %605, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %606, i32 %604) #11, !srcloc !20
  br label %607

607:                                              ; preds = %596, %583, %577, %574, %571, %568, %555, %301
  %608 = load ptr, ptr %118, align 4
  %609 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %608) #11, !srcloc !17
  %610 = or i32 %609, 32768
  %611 = load ptr, ptr %118, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %611, i32 %610) #11, !srcloc !20
  br label %612

612:                                              ; preds = %607, %575, %548, %243, %164, %15, %9, %2
  %613 = phi i32 [ -22, %2 ], [ -19, %9 ], [ -19, %15 ], [ -110, %243 ], [ 0, %607 ], [ -22, %164 ], [ -110, %575 ], [ -110, %548 ]
  ret i32 %613
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @des_expand_key(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @stm32_cryp_aes_aead_setkey(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #8 {
  switch i32 %2, label %7 [
    i32 32, label %4
    i32 24, label %4
    i32 16, label %4
  ]

4:                                                ; preds = %3, %3, %3
  %5 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1, i32 2, i32 12
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %5, ptr align 1 %1, i32 %2, i1 false)
  %6 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1, i32 2, i32 8
  store i32 %2, ptr %6, align 4
  br label %7

7:                                                ; preds = %4, %3
  %8 = phi i32 [ 0, %4 ], [ -22, %3 ]
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @stm32_cryp_aes_gcm_setauthsize(ptr nocapture noundef readnone %0, i32 noundef %1) #10 {
  %3 = add i32 %1, -4
  %4 = icmp ult i32 %3, 13
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = getelementptr inbounds [13 x i32], ptr @switch.table.stm32_cryp_aes_gcm_setauthsize, i32 0, i32 %3
  %7 = load i32, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi i32 [ -22, %2 ], [ %7, %5 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_cryp_aes_gcm_encrypt(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #11
  %5 = getelementptr i8, ptr %3, i32 76
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #11
  br label %14

9:                                                ; preds = %1
  %10 = load ptr, ptr @cryp_list, align 4
  %11 = icmp eq ptr %10, @cryp_list
  %12 = select i1 %11, ptr null, ptr %10
  store ptr %12, ptr %5, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #11
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %9, %8
  %15 = phi ptr [ %6, %8 ], [ %10, %9 ]
  store i32 131, ptr %4, align 4
  %16 = getelementptr inbounds %struct.stm32_cryp, ptr %15, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @crypto_transfer_aead_request_to_engine(ptr noundef %17, ptr noundef %0) #11
  br label %19

19:                                               ; preds = %14, %9
  %20 = phi i32 [ %18, %14 ], [ -19, %9 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_cryp_aes_gcm_decrypt(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #11
  %5 = getelementptr i8, ptr %3, i32 76
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #11
  br label %14

9:                                                ; preds = %1
  %10 = load ptr, ptr @cryp_list, align 4
  %11 = icmp eq ptr %10, @cryp_list
  %12 = select i1 %11, ptr null, ptr %10
  store ptr %12, ptr %5, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #11
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %9, %8
  %15 = phi ptr [ %6, %8 ], [ %10, %9 ]
  store i32 130, ptr %4, align 4
  %16 = getelementptr inbounds %struct.stm32_cryp, ptr %15, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @crypto_transfer_aead_request_to_engine(ptr noundef %17, ptr noundef %0) #11
  br label %19

19:                                               ; preds = %14, %9
  %20 = phi i32 [ %18, %14 ], [ -19, %9 ]
  ret i32 %20
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @stm32_cryp_aes_aead_init(ptr nocapture noundef writeonly %0) #9 {
  %2 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1
  %3 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 0, i32 1
  store i32 4, ptr %3, align 4
  %4 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1, i32 2
  store ptr @stm32_cryp_aead_one_req, ptr %4, align 4
  store ptr @stm32_cryp_prepare_aead_req, ptr %2, align 4
  %5 = getelementptr inbounds %struct.crypto_aead, ptr %0, i32 1, i32 1
  store ptr null, ptr %5, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @stm32_cryp_aes_ccm_setauthsize(ptr nocapture noundef readnone %0, i32 noundef %1) #10 {
  %3 = add i32 %1, -4
  %4 = icmp ult i32 %3, 13
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = getelementptr inbounds [13 x i32], ptr @switch.table.stm32_cryp_aes_ccm_setauthsize, i32 0, i32 %3
  %7 = load i32, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi i32 [ -22, %2 ], [ %7, %5 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_cryp_aes_ccm_encrypt(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 32
  %4 = load i8, ptr %3, align 1
  %5 = add i8 %4, -1
  %6 = icmp ult i8 %5, 7
  br i1 %6, label %7, label %25

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 16
  %10 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #11
  %11 = getelementptr i8, ptr %9, i32 76
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #11
  br label %20

15:                                               ; preds = %7
  %16 = load ptr, ptr @cryp_list, align 4
  %17 = icmp eq ptr %16, @cryp_list
  %18 = select i1 %17, ptr null, ptr %16
  store ptr %18, ptr %11, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %15, %14
  %21 = phi ptr [ %12, %14 ], [ %16, %15 ]
  store i32 259, ptr %10, align 4
  %22 = getelementptr inbounds %struct.stm32_cryp, ptr %21, i32 0, i32 8
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @crypto_transfer_aead_request_to_engine(ptr noundef %23, ptr noundef %0) #11
  br label %25

25:                                               ; preds = %20, %15, %1
  %26 = phi i32 [ -22, %1 ], [ %24, %20 ], [ -19, %15 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_cryp_aes_ccm_decrypt(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 32
  %4 = load i8, ptr %3, align 1
  %5 = add i8 %4, -1
  %6 = icmp ult i8 %5, 7
  br i1 %6, label %7, label %25

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 16
  %10 = getelementptr inbounds %struct.aead_request, ptr %0, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #11
  %11 = getelementptr i8, ptr %9, i32 76
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #11
  br label %20

15:                                               ; preds = %7
  %16 = load ptr, ptr @cryp_list, align 4
  %17 = icmp eq ptr %16, @cryp_list
  %18 = select i1 %17, ptr null, ptr %16
  store ptr %18, ptr %11, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.stm32_cryp_list, ptr @cryp_list, i32 0, i32 1)) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %15, %14
  %21 = phi ptr [ %12, %14 ], [ %16, %15 ]
  store i32 258, ptr %10, align 4
  %22 = getelementptr inbounds %struct.stm32_cryp, ptr %21, i32 0, i32 8
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @crypto_transfer_aead_request_to_engine(ptr noundef %23, ptr noundef %0) #11
  br label %25

25:                                               ; preds = %20, %15, %1
  %26 = phi i32 [ -22, %1 ], [ %24, %20 ], [ -19, %15 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_transfer_aead_request_to_engine(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_cryp_aead_one_req(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr i8, ptr %4, i32 76
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.stm32_cryp, ptr %6, i32 0, i32 13
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.stm32_cryp, ptr %6, i32 0, i32 14
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17, !prof !19

16:                                               ; preds = %12
  tail call fastcc void @stm32_cryp_finish_req(ptr noundef nonnull %6, i32 noundef 0)
  br label %21

17:                                               ; preds = %12, %8
  %18 = getelementptr inbounds %struct.stm32_cryp, ptr %6, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 3) #11, !srcloc !20
  br label %21

21:                                               ; preds = %17, %16, %2
  %22 = phi i32 [ 0, %16 ], [ 0, %17 ], [ -19, %2 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_cryp_prepare_aead_req(ptr nocapture noundef readnone %0, ptr noundef %1) #2 {
  %3 = tail call fastcc i32 @stm32_cryp_prepare_req(ptr noundef null, ptr noundef %1)
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_aeads(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_cryp_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stm32_cryp, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #11
  tail call void @clk_unprepare(ptr noundef %5) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_cryp_runtime_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stm32_cryp, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #11
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %8
  tail call void @clk_unprepare(ptr noundef %5) #11
  br label %12

12:                                               ; preds = %11, %1
  %13 = phi i32 [ %9, %11 ], [ %6, %1 ]
  %14 = getelementptr inbounds %struct.stm32_cryp, ptr %3, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.18) #12
  br label %16

16:                                               ; preds = %12, %8
  %17 = phi i32 [ %13, %12 ], [ 0, %8 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 486257, i64 2147976228, i64 2147976254, i64 2147976301, i64 2147976323, i64 2147976351, i64 2147976371}
!9 = !{i64 2147988440, i64 2147988466, i64 2147988495, i64 2147988529, i64 2147988560, i64 2147988583}
!10 = !{i64 2148924425}
!11 = !{i64 2148920249}
!12 = !{i64 2148920324, i64 2148920351, i64 2148920398, i64 2148920420, i64 2148920448, i64 2148920468}
!13 = !{i64 2148947428}
!14 = !{i64 2147987947}
!15 = !{i64 472826, i64 472851, i64 472873, i64 472889, i64 472901, i64 472921, i64 472945, i64 472961, i64 472973}
!16 = !{i64 2147988073}
!17 = !{i64 3135132}
!18 = !{!"auto-init"}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{i64 3134714}
!21 = !{!"branch_weights", i32 2000, i32 1}
!22 = !{i8 0, i8 2}
!23 = !{i64 2148702300}
