; ModuleID = '/llk/IR/drivers/crypto/rockchip/rk3288_crypto.c_pt.bc'
source_filename = "../drivers/crypto/rockchip/rk3288_crypto.c"
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
%struct.rk_crypto_tmp = type { ptr, [60 x i8], %union.anon.69, i32, [60 x i8] }
%union.anon.69 = type { %struct.ahash_alg }
%struct.ahash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [24 x i8], %struct.hash_alg_common }
%struct.hash_alg_common = type { i32, i32, [56 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.66, ptr, ptr, ptr, ptr, [48 x i8] }
%union.anon.66 = type { %struct.cipher_alg }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.rk_crypto_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.crypto_queue, %struct.tasklet_struct, %struct.tasklet_struct, ptr, i32, %struct.spinlock, ptr, ptr, %struct.scatterlist, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.crypto_queue = type { %struct.list_head, ptr, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.65, i32 }
%union.anon.65 = type { ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }

@crypto_of_id_table = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3288-crypto\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author228 = internal constant [44 x i8] c"author=Zain Wang <zain.wang@rock-chips.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description229 = internal constant [56 x i8] c"description=Support for Rockchip's cryptographic engine\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@crypto_driver = internal global %struct.platform_driver { ptr @rk_crypto_probe, ptr @rk_crypto_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @crypto_of_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [14 x i8] c"rk3288-crypto\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"crypto-rst\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"aclk\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"hclk\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"sclk\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"apb_pclk\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"control Interrupt is not available.\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"rk-crypto\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"irq request failed.\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"err in register alg\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"Crypto Accelerator successfully registered\0A\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"DMA Error\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"[%s:%d], Couldn't enable clock sclk\0A\00", align 1
@__func__.rk_crypto_enable_clk = private unnamed_addr constant [21 x i8] c"rk_crypto_enable_clk\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"[%s:%d], Couldn't enable clock aclk\0A\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"[%s:%d], Couldn't enable clock hclk\0A\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"[%s:%d], Couldn't enable clock dmaclk\0A\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"[%s:%d] dma_map_sg(src)  error\0A\00", align 1
@__func__.rk_load_data = private unnamed_addr constant [13 x i8] c"rk_load_data\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"[%s:%d] dma_map_sg(dst)  error\0A\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"[%s:%d] pcopy err\0A\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"[%s:%d] dma_map_sg(sg_tmp)  error\0A\00", align 1
@rk_ecb_aes_alg = external dso_local global %struct.rk_crypto_tmp, align 64
@rk_cbc_aes_alg = external dso_local global %struct.rk_crypto_tmp, align 64
@rk_ecb_des_alg = external dso_local global %struct.rk_crypto_tmp, align 64
@rk_cbc_des_alg = external dso_local global %struct.rk_crypto_tmp, align 64
@rk_ecb_des3_ede_alg = external dso_local global %struct.rk_crypto_tmp, align 64
@rk_cbc_des3_ede_alg = external dso_local global %struct.rk_crypto_tmp, align 64
@rk_ahash_sha1 = external dso_local global %struct.rk_crypto_tmp, align 64
@rk_ahash_sha256 = external dso_local global %struct.rk_crypto_tmp, align 64
@rk_ahash_md5 = external dso_local global %struct.rk_crypto_tmp, align 64
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author228, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_license230], section "llvm.metadata"

@__mod_of__crypto_of_id_table_device_table = dso_local alias [2 x %struct.of_device_id], ptr @crypto_of_id_table

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @crypto_driver, ptr noundef nonnull @__this_module) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @crypto_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk_crypto_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 220, i32 noundef 3520) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %79, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #5
  %7 = getelementptr inbounds %struct.rk_crypto_info, ptr %3, i32 0, i32 5
  store ptr %6, ptr %7, align 4
  %8 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = ptrtoint ptr %6 to i32
  br label %79

11:                                               ; preds = %5
  %12 = tail call i32 @reset_control_assert(ptr noundef %6) #5
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #5
  %13 = load ptr, ptr %7, align 4
  %14 = tail call i32 @reset_control_deassert(ptr noundef %13) #5
  %15 = tail call i32 @devm_add_action(ptr noundef %2, ptr noundef nonnull @rk_crypto_action, ptr noundef nonnull %3) #5
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %7, align 4
  %19 = tail call i32 @reset_control_assert(ptr noundef %18) #5
  br label %79

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.rk_crypto_info, ptr %3, i32 0, i32 13
  store i32 0, ptr %21, align 4
  %22 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #5
  %23 = getelementptr inbounds %struct.rk_crypto_info, ptr %3, i32 0, i32 6
  store ptr %22, ptr %23, align 4
  %24 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = ptrtoint ptr %22 to i32
  br label %79

27:                                               ; preds = %20
  %28 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.2) #5
  %29 = getelementptr inbounds %struct.rk_crypto_info, ptr %3, i32 0, i32 1
  store ptr %28, ptr %29, align 4
  %30 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = ptrtoint ptr %28 to i32
  br label %79

33:                                               ; preds = %27
  %34 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.3) #5
  %35 = getelementptr inbounds %struct.rk_crypto_info, ptr %3, i32 0, i32 2
  store ptr %34, ptr %35, align 4
  %36 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = ptrtoint ptr %34 to i32
  br label %79

39:                                               ; preds = %33
  %40 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.4) #5
  %41 = getelementptr inbounds %struct.rk_crypto_info, ptr %3, i32 0, i32 3
  store ptr %40, ptr %41, align 4
  %42 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = ptrtoint ptr %40 to i32
  br label %79

45:                                               ; preds = %39
  %46 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.5) #5
  %47 = getelementptr inbounds %struct.rk_crypto_info, ptr %3, i32 0, i32 4
  store ptr %46, ptr %47, align 4
  %48 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = ptrtoint ptr %46 to i32
  br label %79

51:                                               ; preds = %45
  %52 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #5
  %53 = getelementptr inbounds %struct.rk_crypto_info, ptr %3, i32 0, i32 7
  store i32 %52, ptr %53, align 4
  %54 = icmp slt i32 %52, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %56, ptr noundef nonnull @.str.6) #6
  %57 = load i32, ptr %53, align 4
  br label %79

58:                                               ; preds = %51
  %59 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %52, ptr noundef nonnull @rk_crypto_irq_handle, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.7, ptr noundef %0) #5
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %58
  %62 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.8) #6
  br label %79

63:                                               ; preds = %58
  store ptr %2, ptr %3, align 4
  %64 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %64, align 8
  %65 = getelementptr inbounds %struct.rk_crypto_info, ptr %3, i32 0, i32 9
  %66 = ptrtoint ptr %3 to i32
  tail call void @tasklet_init(ptr noundef %65, ptr noundef nonnull @rk_crypto_queue_task_cb, i32 noundef %66) #5
  %67 = getelementptr inbounds %struct.rk_crypto_info, ptr %3, i32 0, i32 10
  tail call void @tasklet_init(ptr noundef %67, ptr noundef nonnull @rk_crypto_done_task_cb, i32 noundef %66) #5
  %68 = getelementptr inbounds %struct.rk_crypto_info, ptr %3, i32 0, i32 8
  tail call void @crypto_init_queue(ptr noundef %68, i32 noundef 50) #5
  %69 = getelementptr inbounds %struct.rk_crypto_info, ptr %3, i32 0, i32 32
  store ptr @rk_crypto_enable_clk, ptr %69, align 4
  %70 = getelementptr inbounds %struct.rk_crypto_info, ptr %3, i32 0, i32 33
  store ptr @rk_crypto_disable_clk, ptr %70, align 4
  %71 = getelementptr inbounds %struct.rk_crypto_info, ptr %3, i32 0, i32 34
  store ptr @rk_load_data, ptr %71, align 4
  %72 = getelementptr inbounds %struct.rk_crypto_info, ptr %3, i32 0, i32 35
  store ptr @rk_unload_data, ptr %72, align 4
  %73 = getelementptr inbounds %struct.rk_crypto_info, ptr %3, i32 0, i32 36
  store ptr @rk_crypto_enqueue, ptr %73, align 4
  %74 = getelementptr inbounds %struct.rk_crypto_info, ptr %3, i32 0, i32 28
  store i8 0, ptr %74, align 4
  %75 = tail call fastcc i32 @rk_crypto_register(ptr noundef nonnull %3)
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %63
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.9) #6
  tail call void @tasklet_kill(ptr noundef %65) #5
  tail call void @tasklet_kill(ptr noundef %67) #5
  br label %79

78:                                               ; preds = %63
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.10) #6
  br label %79

79:                                               ; preds = %78, %77, %61, %55, %49, %43, %37, %31, %25, %17, %9, %1
  %80 = phi i32 [ 0, %78 ], [ %10, %9 ], [ %15, %17 ], [ %26, %25 ], [ %32, %31 ], [ %38, %37 ], [ %44, %43 ], [ %50, %49 ], [ %57, %55 ], [ %59, %61 ], [ %75, %77 ], [ -12, %1 ]
  ret i32 %80
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk_crypto_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load i32, ptr getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ecb_aes_alg, i32 0, i32 3), align 64
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ecb_aes_alg, i32 0, i32 2)) #5
  br label %8

7:                                                ; preds = %1
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ecb_aes_alg, i32 0, i32 2)) #5
  br label %8

8:                                                ; preds = %7, %6
  %9 = load i32, ptr getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_cbc_aes_alg, i32 0, i32 3), align 64
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_cbc_aes_alg, i32 0, i32 2)) #5
  br label %13

12:                                               ; preds = %8
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_cbc_aes_alg, i32 0, i32 2)) #5
  br label %13

13:                                               ; preds = %12, %11
  %14 = load i32, ptr getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ecb_des_alg, i32 0, i32 3), align 64
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ecb_des_alg, i32 0, i32 2)) #5
  br label %18

17:                                               ; preds = %13
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ecb_des_alg, i32 0, i32 2)) #5
  br label %18

18:                                               ; preds = %17, %16
  %19 = load i32, ptr getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_cbc_des_alg, i32 0, i32 3), align 64
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_cbc_des_alg, i32 0, i32 2)) #5
  br label %23

22:                                               ; preds = %18
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_cbc_des_alg, i32 0, i32 2)) #5
  br label %23

23:                                               ; preds = %22, %21
  %24 = load i32, ptr getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ecb_des3_ede_alg, i32 0, i32 3), align 64
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ecb_des3_ede_alg, i32 0, i32 2)) #5
  br label %28

27:                                               ; preds = %23
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ecb_des3_ede_alg, i32 0, i32 2)) #5
  br label %28

28:                                               ; preds = %27, %26
  %29 = load i32, ptr getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_cbc_des3_ede_alg, i32 0, i32 3), align 64
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_cbc_des3_ede_alg, i32 0, i32 2)) #5
  br label %33

32:                                               ; preds = %28
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_cbc_des3_ede_alg, i32 0, i32 2)) #5
  br label %33

33:                                               ; preds = %32, %31
  %34 = load i32, ptr getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ahash_sha1, i32 0, i32 3), align 64
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ahash_sha1, i32 0, i32 2)) #5
  br label %38

37:                                               ; preds = %33
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ahash_sha1, i32 0, i32 2)) #5
  br label %38

38:                                               ; preds = %37, %36
  %39 = load i32, ptr getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ahash_sha256, i32 0, i32 3), align 64
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ahash_sha256, i32 0, i32 2)) #5
  br label %43

42:                                               ; preds = %38
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ahash_sha256, i32 0, i32 2)) #5
  br label %43

43:                                               ; preds = %42, %41
  %44 = load i32, ptr getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ahash_md5, i32 0, i32 3), align 64
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  tail call void @crypto_unregister_ahash(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ahash_md5, i32 0, i32 2)) #5
  br label %48

47:                                               ; preds = %43
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ahash_md5, i32 0, i32 2)) #5
  br label %48

48:                                               ; preds = %47, %46
  %49 = getelementptr inbounds %struct.rk_crypto_info, ptr %3, i32 0, i32 10
  tail call void @tasklet_kill(ptr noundef %49) #5
  %50 = getelementptr inbounds %struct.rk_crypto_info, ptr %3, i32 0, i32 9
  tail call void @tasklet_kill(ptr noundef %50) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk_crypto_action(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @reset_control_assert(ptr noundef %3) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk_crypto_irq_handle(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rk_crypto_info, ptr %4, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %5) #5
  %6 = getelementptr inbounds %struct.rk_crypto_info, ptr %4, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !8
  %9 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %8) #5, !srcloc !9
  %10 = and i32 %8, 10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.11) #6
  %14 = getelementptr inbounds %struct.rk_crypto_info, ptr %4, i32 0, i32 12
  store i32 -14, ptr %14, align 4
  br label %15

15:                                               ; preds = %12, %2
  %16 = getelementptr inbounds %struct.rk_crypto_info, ptr %4, i32 0, i32 10, i32 1
  %17 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %16) #5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.rk_crypto_info, ptr %4, i32 0, i32 10
  tail call void @__tasklet_schedule(ptr noundef %20) #5
  br label %21

21:                                               ; preds = %19, %15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !10
  %22 = load i16, ptr %5, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk_crypto_queue_task_cb(i32 noundef %0) #2 {
  %2 = inttoptr i32 %0 to ptr
  %3 = getelementptr inbounds %struct.rk_crypto_info, ptr %2, i32 0, i32 12
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.rk_crypto_info, ptr %2, i32 0, i32 13
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #5
  %6 = getelementptr inbounds %struct.rk_crypto_info, ptr %2, i32 0, i32 8
  %7 = getelementptr inbounds %struct.rk_crypto_info, ptr %2, i32 0, i32 8, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %6
  %10 = select i1 %9, ptr null, ptr %8
  %11 = tail call ptr @crypto_dequeue_request(ptr noundef %6) #5
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.rk_crypto_info, ptr %2, i32 0, i32 28
  store i8 0, ptr %14, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #5
  br label %30

15:                                               ; preds = %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #5
  %16 = icmp eq ptr %10, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.crypto_async_request, ptr %10, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  tail call void %19(ptr noundef nonnull %10, i32 noundef -115) #5
  br label %20

20:                                               ; preds = %17, %15
  %21 = getelementptr inbounds %struct.rk_crypto_info, ptr %2, i32 0, i32 11
  store ptr %11, ptr %21, align 4
  %22 = getelementptr inbounds %struct.rk_crypto_info, ptr %2, i32 0, i32 29
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 %23(ptr noundef %2) #5
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.rk_crypto_info, ptr %2, i32 0, i32 31
  %28 = load ptr, ptr %27, align 4
  %29 = load ptr, ptr %21, align 4
  tail call void %28(ptr noundef %29, i32 noundef %24) #5
  br label %30

30:                                               ; preds = %26, %20, %13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk_crypto_done_task_cb(i32 noundef %0) #2 {
  %2 = inttoptr i32 %0 to ptr
  %3 = getelementptr inbounds %struct.rk_crypto_info, ptr %2, i32 0, i32 12
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rk_crypto_info, ptr %2, i32 0, i32 30
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %2) #5
  store i32 %9, ptr %3, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %6, %1
  %12 = phi i32 [ %4, %1 ], [ %9, %6 ]
  %13 = getelementptr inbounds %struct.rk_crypto_info, ptr %2, i32 0, i32 31
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.rk_crypto_info, ptr %2, i32 0, i32 11
  %16 = load ptr, ptr %15, align 4
  tail call void %14(ptr noundef %16, i32 noundef %12) #5
  br label %17

17:                                               ; preds = %11, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_init_queue(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk_crypto_enable_clk(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @clk_prepare(ptr noundef %3) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = tail call i32 @clk_enable(ptr noundef %3) #5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  tail call void @clk_unprepare(ptr noundef %3) #5
  br label %10

10:                                               ; preds = %9, %1
  %11 = phi i32 [ %7, %9 ], [ %4, %1 ]
  %12 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.rk_crypto_enable_clk, i32 noundef 28) #6
  br label %56

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @clk_prepare(ptr noundef %15) #5
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = tail call i32 @clk_enable(ptr noundef %15) #5
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  tail call void @clk_unprepare(ptr noundef %15) #5
  br label %22

22:                                               ; preds = %21, %13
  %23 = phi i32 [ %19, %21 ], [ %16, %13 ]
  %24 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.rk_crypto_enable_clk, i32 noundef 34) #6
  br label %53

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 @clk_prepare(ptr noundef %27) #5
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = tail call i32 @clk_enable(ptr noundef %27) #5
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  tail call void @clk_unprepare(ptr noundef %27) #5
  br label %34

34:                                               ; preds = %33, %25
  %35 = phi i32 [ %31, %33 ], [ %28, %25 ]
  %36 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.rk_crypto_enable_clk, i32 noundef 40) #6
  br label %50

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 4
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 @clk_prepare(ptr noundef %39) #5
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = tail call i32 @clk_enable(ptr noundef %39) #5
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %42
  tail call void @clk_unprepare(ptr noundef %39) #5
  br label %46

46:                                               ; preds = %45, %37
  %47 = phi i32 [ %43, %45 ], [ %40, %37 ]
  %48 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.rk_crypto_enable_clk, i32 noundef 46) #6
  %49 = load ptr, ptr %26, align 4
  tail call void @clk_disable(ptr noundef %49) #5
  tail call void @clk_unprepare(ptr noundef %49) #5
  br label %50

50:                                               ; preds = %46, %34
  %51 = phi i32 [ %35, %34 ], [ %47, %46 ]
  %52 = load ptr, ptr %14, align 4
  tail call void @clk_disable(ptr noundef %52) #5
  tail call void @clk_unprepare(ptr noundef %52) #5
  br label %53

53:                                               ; preds = %50, %22
  %54 = phi i32 [ %23, %22 ], [ %51, %50 ]
  %55 = load ptr, ptr %2, align 4
  tail call void @clk_disable(ptr noundef %55) #5
  tail call void @clk_unprepare(ptr noundef %55) #5
  br label %56

56:                                               ; preds = %53, %42, %10
  %57 = phi i32 [ %11, %10 ], [ %54, %53 ], [ 0, %42 ]
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk_crypto_disable_clk(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  tail call void @clk_disable(ptr noundef %3) #5
  tail call void @clk_unprepare(ptr noundef %3) #5
  %4 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #5
  tail call void @clk_unprepare(ptr noundef %5) #5
  %6 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %7) #5
  tail call void @clk_unprepare(ptr noundef %7) #5
  %8 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  tail call void @clk_disable(ptr noundef %9) #5
  tail call void @clk_unprepare(ptr noundef %9) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk_load_data(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 20
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %67, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 21
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.scatterlist, ptr %1, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 3
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.scatterlist, ptr %1, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %9, -1
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br label %20

20:                                               ; preds = %14, %7
  %21 = phi i1 [ false, %7 ], [ %19, %14 ]
  %22 = icmp eq ptr %2, null
  br i1 %22, label %40, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.scatterlist, ptr %2, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 3
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %67

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.scatterlist, ptr %2, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %9, -1
  %32 = and i32 %30, %31
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %21, i1 %33, i1 false
  br i1 %34, label %35, label %67

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.scatterlist, ptr %1, i32 0, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, %30
  %39 = zext i1 %38 to i32
  store i32 %39, ptr %4, align 4
  br i1 %38, label %42, label %68

40:                                               ; preds = %20
  %41 = zext i1 %21 to i32
  store i32 %41, ptr %4, align 4
  br i1 %21, label %42, label %68

42:                                               ; preds = %40, %35
  %43 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 18
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.scatterlist, ptr %1, i32 0, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = tail call i32 @llvm.umin.i32(i32 %44, i32 %46)
  %48 = sub i32 %44, %47
  store i32 %48, ptr %43, align 4
  %49 = load ptr, ptr %0, align 4
  %50 = tail call i32 @dma_map_sg_attrs(ptr noundef %49, ptr noundef %1, i32 noundef 1, i32 noundef 1, i32 noundef 0) #5
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %42
  %53 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.rk_load_data, i32 noundef 100) #6
  br label %115

54:                                               ; preds = %42
  %55 = getelementptr inbounds %struct.scatterlist, ptr %1, i32 0, i32 3
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 26
  store i32 %56, ptr %57, align 4
  br i1 %22, label %112, label %58

58:                                               ; preds = %54
  %59 = load ptr, ptr %0, align 4
  %60 = tail call i32 @dma_map_sg_attrs(ptr noundef %59, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 2, i32 noundef 0) #5
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.rk_load_data, i32 noundef 109) #6
  %64 = load ptr, ptr %0, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %64, ptr noundef %1, i32 noundef 1, i32 noundef 1, i32 noundef 0) #5
  br label %115

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.scatterlist, ptr %2, i32 0, i32 3
  br label %107

67:                                               ; preds = %28, %23, %3
  store i32 0, ptr %4, align 4
  br label %68

68:                                               ; preds = %67, %40, %35
  %69 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 18
  %70 = load i32, ptr %69, align 4
  %71 = tail call i32 @llvm.umin.i32(i32 %70, i32 4096)
  %72 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 17
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 22
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 19
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 24
  %79 = load i32, ptr %78, align 4
  %80 = sub i32 %79, %70
  %81 = tail call i32 @sg_pcopy_to_buffer(ptr noundef %73, i32 noundef %75, ptr noundef %77, i32 noundef %71, i32 noundef %80) #5
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %68
  %84 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.rk_load_data, i32 noundef 124) #6
  br label %115

85:                                               ; preds = %68
  %86 = load i32, ptr %69, align 4
  %87 = sub i32 %86, %71
  store i32 %87, ptr %69, align 4
  %88 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 16
  %89 = load ptr, ptr %76, align 4
  tail call void @sg_init_one(ptr noundef %88, ptr noundef %89, i32 noundef %71) #5
  %90 = load ptr, ptr %0, align 4
  %91 = tail call i32 @dma_map_sg_attrs(ptr noundef %90, ptr noundef %88, i32 noundef 1, i32 noundef 1, i32 noundef 0) #5
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %85
  %94 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.rk_load_data, i32 noundef 131) #6
  br label %115

95:                                               ; preds = %85
  %96 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 16, i32 3
  %97 = load i32, ptr %96, align 4
  %98 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 26
  store i32 %97, ptr %98, align 4
  %99 = icmp eq ptr %2, null
  br i1 %99, label %112, label %100

100:                                              ; preds = %95
  %101 = load ptr, ptr %0, align 4
  %102 = tail call i32 @dma_map_sg_attrs(ptr noundef %101, ptr noundef %88, i32 noundef 1, i32 noundef 2, i32 noundef 0) #5
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %105, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.rk_load_data, i32 noundef 141) #6
  %106 = load ptr, ptr %0, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %106, ptr noundef %88, i32 noundef 1, i32 noundef 1, i32 noundef 0) #5
  br label %115

107:                                              ; preds = %100, %65
  %108 = phi ptr [ %66, %65 ], [ %96, %100 ]
  %109 = phi i32 [ %47, %65 ], [ %71, %100 ]
  %110 = load i32, ptr %108, align 4
  %111 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 27
  store i32 %110, ptr %111, align 4
  br label %112

112:                                              ; preds = %107, %95, %54
  %113 = phi i32 [ %47, %54 ], [ %71, %95 ], [ %109, %107 ]
  %114 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 25
  store i32 %113, ptr %114, align 4
  br label %115

115:                                              ; preds = %112, %104, %93, %83, %62, %52
  %116 = phi i32 [ 0, %112 ], [ -22, %62 ], [ -22, %52 ], [ -12, %104 ], [ -12, %93 ], [ -22, %83 ]
  ret i32 %116
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk_unload_data(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 20
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 14
  %7 = load ptr, ptr %6, align 4
  br label %10

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 16
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi ptr [ %7, %5 ], [ %9, %8 ]
  %12 = load ptr, ptr %0, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %12, ptr noundef %11, i32 noundef 1, i32 noundef 1, i32 noundef 0) #5
  %13 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 15
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %10
  %17 = load i32, ptr %2, align 4
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 16
  %20 = select i1 %18, ptr %19, ptr %14
  %21 = load ptr, ptr %0, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %21, ptr noundef %20, i32 noundef 1, i32 noundef 2, i32 noundef 0) #5
  br label %22

22:                                               ; preds = %16, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk_crypto_enqueue(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 13
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #5
  %5 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 8
  %6 = tail call i32 @crypto_enqueue_request(ptr noundef %5, ptr noundef %1) #5
  %7 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 28
  %8 = load i8, ptr %7, align 4, !range !14
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #5
  br label %17

11:                                               ; preds = %2
  store i8 1, ptr %7, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #5
  %12 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 9, i32 1
  %13 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %12) #5
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.rk_crypto_info, ptr %0, i32 0, i32 9
  tail call void @__tasklet_schedule(ptr noundef %16) #5
  br label %17

17:                                               ; preds = %15, %11, %10
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rk_crypto_register(ptr noundef %0) unnamed_addr #2 {
  store ptr %0, ptr @rk_ecb_aes_alg, align 64
  %2 = load i32, ptr getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ecb_aes_alg, i32 0, i32 3), align 64
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 @crypto_register_skcipher(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ecb_aes_alg, i32 0, i32 2)) #5
  br label %8

6:                                                ; preds = %1
  %7 = tail call i32 @crypto_register_ahash(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ecb_aes_alg, i32 0, i32 2)) #5
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi i32 [ %5, %4 ], [ %7, %6 ]
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %26, label %11

11:                                               ; preds = %103, %93, %83, %73, %63, %53, %43, %33, %8
  %12 = phi i32 [ %9, %8 ], [ %34, %33 ], [ %44, %43 ], [ %54, %53 ], [ %64, %63 ], [ %74, %73 ], [ %84, %83 ], [ %94, %93 ], [ %104, %103 ]
  %13 = phi i1 [ false, %8 ], [ true, %33 ], [ false, %43 ], [ false, %53 ], [ false, %63 ], [ false, %73 ], [ false, %83 ], [ false, %93 ], [ false, %103 ]
  %14 = phi i1 [ false, %8 ], [ false, %33 ], [ true, %43 ], [ false, %53 ], [ false, %63 ], [ false, %73 ], [ false, %83 ], [ false, %93 ], [ false, %103 ]
  %15 = phi i1 [ false, %8 ], [ false, %33 ], [ false, %43 ], [ true, %53 ], [ false, %63 ], [ false, %73 ], [ false, %83 ], [ false, %93 ], [ false, %103 ]
  %16 = phi i1 [ false, %8 ], [ false, %33 ], [ false, %43 ], [ false, %53 ], [ true, %63 ], [ false, %73 ], [ false, %83 ], [ false, %93 ], [ false, %103 ]
  %17 = phi i1 [ false, %8 ], [ false, %33 ], [ false, %43 ], [ false, %53 ], [ false, %63 ], [ true, %73 ], [ false, %83 ], [ false, %93 ], [ false, %103 ]
  %18 = phi i1 [ false, %8 ], [ false, %33 ], [ false, %43 ], [ false, %53 ], [ false, %63 ], [ false, %73 ], [ true, %83 ], [ false, %93 ], [ false, %103 ]
  %19 = phi i1 [ false, %8 ], [ false, %33 ], [ false, %43 ], [ false, %53 ], [ false, %63 ], [ false, %73 ], [ false, %83 ], [ true, %93 ], [ false, %103 ]
  %20 = phi ptr [ @rk_ecb_aes_alg, %8 ], [ @rk_cbc_aes_alg, %33 ], [ @rk_ecb_des_alg, %43 ], [ @rk_cbc_des_alg, %53 ], [ @rk_ecb_des3_ede_alg, %63 ], [ @rk_cbc_des3_ede_alg, %73 ], [ @rk_ahash_sha1, %83 ], [ @rk_ahash_sha256, %93 ], [ @rk_ahash_md5, %103 ]
  %21 = getelementptr inbounds %struct.rk_crypto_tmp, ptr %20, i32 0, i32 3
  br i1 %10, label %22, label %150

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.rk_crypto_tmp, ptr %20, i32 0, i32 2
  %24 = load i32, ptr %21, align 64
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %106, label %107

26:                                               ; preds = %8
  store ptr %0, ptr @rk_cbc_aes_alg, align 64
  %27 = load i32, ptr getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_cbc_aes_alg, i32 0, i32 3), align 64
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = tail call i32 @crypto_register_ahash(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_cbc_aes_alg, i32 0, i32 2)) #5
  br label %33

31:                                               ; preds = %26
  %32 = tail call i32 @crypto_register_skcipher(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_cbc_aes_alg, i32 0, i32 2)) #5
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %32, %31 ], [ %30, %29 ]
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %11

36:                                               ; preds = %33
  store ptr %0, ptr @rk_ecb_des_alg, align 64
  %37 = load i32, ptr getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ecb_des_alg, i32 0, i32 3), align 64
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = tail call i32 @crypto_register_ahash(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ecb_des_alg, i32 0, i32 2)) #5
  br label %43

41:                                               ; preds = %36
  %42 = tail call i32 @crypto_register_skcipher(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ecb_des_alg, i32 0, i32 2)) #5
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %42, %41 ], [ %40, %39 ]
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %11

46:                                               ; preds = %43
  store ptr %0, ptr @rk_cbc_des_alg, align 64
  %47 = load i32, ptr getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_cbc_des_alg, i32 0, i32 3), align 64
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = tail call i32 @crypto_register_ahash(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_cbc_des_alg, i32 0, i32 2)) #5
  br label %53

51:                                               ; preds = %46
  %52 = tail call i32 @crypto_register_skcipher(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_cbc_des_alg, i32 0, i32 2)) #5
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %52, %51 ], [ %50, %49 ]
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %11

56:                                               ; preds = %53
  store ptr %0, ptr @rk_ecb_des3_ede_alg, align 64
  %57 = load i32, ptr getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ecb_des3_ede_alg, i32 0, i32 3), align 64
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = tail call i32 @crypto_register_ahash(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ecb_des3_ede_alg, i32 0, i32 2)) #5
  br label %63

61:                                               ; preds = %56
  %62 = tail call i32 @crypto_register_skcipher(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ecb_des3_ede_alg, i32 0, i32 2)) #5
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %62, %61 ], [ %60, %59 ]
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %11

66:                                               ; preds = %63
  store ptr %0, ptr @rk_cbc_des3_ede_alg, align 64
  %67 = load i32, ptr getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_cbc_des3_ede_alg, i32 0, i32 3), align 64
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %71, label %69

69:                                               ; preds = %66
  %70 = tail call i32 @crypto_register_ahash(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_cbc_des3_ede_alg, i32 0, i32 2)) #5
  br label %73

71:                                               ; preds = %66
  %72 = tail call i32 @crypto_register_skcipher(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_cbc_des3_ede_alg, i32 0, i32 2)) #5
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i32 [ %72, %71 ], [ %70, %69 ]
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %11

76:                                               ; preds = %73
  store ptr %0, ptr @rk_ahash_sha1, align 64
  %77 = load i32, ptr getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ahash_sha1, i32 0, i32 3), align 64
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %81, label %79

79:                                               ; preds = %76
  %80 = tail call i32 @crypto_register_ahash(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ahash_sha1, i32 0, i32 2)) #5
  br label %83

81:                                               ; preds = %76
  %82 = tail call i32 @crypto_register_skcipher(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ahash_sha1, i32 0, i32 2)) #5
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i32 [ %82, %81 ], [ %80, %79 ]
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %11

86:                                               ; preds = %83
  store ptr %0, ptr @rk_ahash_sha256, align 64
  %87 = load i32, ptr getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ahash_sha256, i32 0, i32 3), align 64
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %91, label %89

89:                                               ; preds = %86
  %90 = tail call i32 @crypto_register_ahash(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ahash_sha256, i32 0, i32 2)) #5
  br label %93

91:                                               ; preds = %86
  %92 = tail call i32 @crypto_register_skcipher(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ahash_sha256, i32 0, i32 2)) #5
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi i32 [ %92, %91 ], [ %90, %89 ]
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %11

96:                                               ; preds = %93
  store ptr %0, ptr @rk_ahash_md5, align 64
  %97 = load i32, ptr getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ahash_md5, i32 0, i32 3), align 64
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %101, label %99

99:                                               ; preds = %96
  %100 = tail call i32 @crypto_register_ahash(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ahash_md5, i32 0, i32 2)) #5
  br label %103

101:                                              ; preds = %96
  %102 = tail call i32 @crypto_register_skcipher(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ahash_md5, i32 0, i32 2)) #5
  br label %103

103:                                              ; preds = %101, %99
  %104 = phi i32 [ %102, %101 ], [ %100, %99 ]
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %150, label %11

106:                                              ; preds = %22
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ecb_aes_alg, i32 0, i32 2)) #5
  br label %108

107:                                              ; preds = %22
  tail call void @crypto_unregister_ahash(ptr noundef %23) #5
  br label %108

108:                                              ; preds = %107, %106
  br i1 %13, label %150, label %109

109:                                              ; preds = %108
  %110 = load i32, ptr %21, align 64
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %113, label %112

112:                                              ; preds = %109
  tail call void @crypto_unregister_ahash(ptr noundef %23) #5
  br label %114

113:                                              ; preds = %109
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_cbc_aes_alg, i32 0, i32 2)) #5
  br label %114

114:                                              ; preds = %113, %112
  br i1 %14, label %150, label %115

115:                                              ; preds = %114
  %116 = load i32, ptr %21, align 64
  %117 = icmp eq i32 %116, 1
  br i1 %117, label %119, label %118

118:                                              ; preds = %115
  tail call void @crypto_unregister_ahash(ptr noundef %23) #5
  br label %120

119:                                              ; preds = %115
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ecb_des_alg, i32 0, i32 2)) #5
  br label %120

120:                                              ; preds = %119, %118
  br i1 %15, label %150, label %121

121:                                              ; preds = %120
  %122 = load i32, ptr %21, align 64
  %123 = icmp eq i32 %122, 1
  br i1 %123, label %125, label %124

124:                                              ; preds = %121
  tail call void @crypto_unregister_ahash(ptr noundef %23) #5
  br label %126

125:                                              ; preds = %121
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_cbc_des_alg, i32 0, i32 2)) #5
  br label %126

126:                                              ; preds = %125, %124
  br i1 %16, label %150, label %127

127:                                              ; preds = %126
  %128 = load i32, ptr %21, align 64
  %129 = icmp eq i32 %128, 1
  br i1 %129, label %131, label %130

130:                                              ; preds = %127
  tail call void @crypto_unregister_ahash(ptr noundef %23) #5
  br label %132

131:                                              ; preds = %127
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ecb_des3_ede_alg, i32 0, i32 2)) #5
  br label %132

132:                                              ; preds = %131, %130
  br i1 %17, label %150, label %133

133:                                              ; preds = %132
  %134 = load i32, ptr %21, align 64
  %135 = icmp eq i32 %134, 1
  br i1 %135, label %137, label %136

136:                                              ; preds = %133
  tail call void @crypto_unregister_ahash(ptr noundef %23) #5
  br label %138

137:                                              ; preds = %133
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_cbc_des3_ede_alg, i32 0, i32 2)) #5
  br label %138

138:                                              ; preds = %137, %136
  br i1 %18, label %150, label %139

139:                                              ; preds = %138
  %140 = load i32, ptr %21, align 64
  %141 = icmp eq i32 %140, 1
  br i1 %141, label %143, label %142

142:                                              ; preds = %139
  tail call void @crypto_unregister_ahash(ptr noundef %23) #5
  br label %144

143:                                              ; preds = %139
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ahash_sha1, i32 0, i32 2)) #5
  br label %144

144:                                              ; preds = %143, %142
  br i1 %19, label %150, label %145

145:                                              ; preds = %144
  %146 = load i32, ptr %21, align 64
  %147 = icmp eq i32 %146, 1
  br i1 %147, label %149, label %148

148:                                              ; preds = %145
  tail call void @crypto_unregister_ahash(ptr noundef %23) #5
  br label %150

149:                                              ; preds = %145
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds (%struct.rk_crypto_tmp, ptr @rk_ahash_sha256, i32 0, i32 2)) #5
  br label %150

150:                                              ; preds = %149, %148, %144, %138, %132, %126, %120, %114, %108, %103, %11
  %151 = phi i32 [ %12, %11 ], [ %104, %103 ], [ %12, %148 ], [ %12, %149 ], [ %12, %144 ], [ %12, %138 ], [ %12, %132 ], [ %12, %126 ], [ %12, %120 ], [ %12, %114 ], [ %12, %108 ]
  ret i32 %151
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_dequeue_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_pcopy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_enqueue_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_skcipher(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_ahash(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_skcipher(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_ahash(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
!8 = !{i64 3346746}
!9 = !{i64 3346328}
!10 = !{i64 2148987629}
!11 = !{i64 2148983453}
!12 = !{i64 2148983528, i64 2148983555, i64 2148983602, i64 2148983624, i64 2148983652, i64 2148983672}
!13 = !{i64 2149010632}
!14 = !{i8 0, i8 2}
