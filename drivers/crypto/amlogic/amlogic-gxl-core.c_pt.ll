; ModuleID = '/llk/IR/drivers/crypto/amlogic/amlogic-gxl-core.c_pt.bc'
source_filename = "../drivers/crypto/amlogic/amlogic-gxl-core.c"
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
%struct.lock_class_key = type {}
%struct.meson_alg_template = type { i32, i32, [56 x i8], %union.anon.68, ptr, [60 x i8] }
%union.anon.68 = type { %struct.skcipher_alg }
%struct.skcipher_alg = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [24 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.65, ptr, ptr, ptr, ptr, [48 x i8] }
%union.anon.65 = type { %struct.cipher_alg }
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
%struct.meson_dev = type { ptr, ptr, ptr, ptr, %struct.atomic_t, ptr }
%struct.meson_flow = type { ptr, %struct.completion, i32, i32, i32, ptr }

@meson_crypto_of_match_table = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,gxl-crypto\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description226 = internal constant [48 x i8] c"description=Amlogic GXL cryptographic offloader\00", section ".modinfo", align 1
@__UNIQUE_ID_license227 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author228 = internal constant [44 x i8] c"author=Corentin Labbe <clabbe@baylibre.com>\00", section ".modinfo", align 1
@meson_crypto_driver = internal global %struct.platform_driver { ptr @meson_crypto_probe, ptr @meson_crypto_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @meson_crypto_of_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [11 x i8] c"gxl-crypto\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Cannot request MMIO err=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"blkmv\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Cannot get core clock err=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Cannot request IRQ for flow %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Cannot prepare_enable busclk\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"%s %d Got irq for flow %d but ctrl is empty\0A\00", align 1
@__func__.meson_irq_handler = private unnamed_addr constant [18 x i8] c"meson_irq_handler\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"%s %d from unknown irq\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Cannot allocate engine\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"Cannot start engine\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@mc_algs = internal global [2 x %struct.meson_alg_template] [%struct.meson_alg_template { i32 5, i32 1, [56 x i8] undef, %union.anon.68 { %struct.skcipher_alg { ptr @meson_aes_setkey, ptr @meson_skencrypt, ptr @meson_skdecrypt, ptr null, ptr null, i32 16, i32 32, i32 16, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 65925, i32 16, i32 32, i32 15, i32 400, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cbc-aes-gxl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.65 zeroinitializer, ptr @meson_cipher_init, ptr @meson_cipher_exit, ptr null, ptr @__this_module, [48 x i8] undef } } }, ptr null, [60 x i8] undef }, %struct.meson_alg_template { i32 5, i32 0, [56 x i8] undef, %union.anon.68 { %struct.skcipher_alg { ptr @meson_aes_setkey, ptr @meson_skencrypt, ptr @meson_skdecrypt, ptr null, ptr null, i32 16, i32 32, i32 0, i32 0, i32 0, [24 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 65925, i32 16, i32 32, i32 15, i32 400, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecb-aes-gxl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.65 zeroinitializer, ptr @meson_cipher_init, ptr @meson_cipher_exit, ptr null, ptr @__this_module, [48 x i8] undef } } }, ptr null, [60 x i8] undef }], align 64
@.str.11 = private unnamed_addr constant [21 x i8] c"Fail to register %s\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author228, ptr @__UNIQUE_ID_description226, ptr @__UNIQUE_ID_license227], section "llvm.metadata"

@__mod_of__meson_crypto_of_match_table_device_table = dso_local alias [2 x %struct.of_device_id], ptr @meson_crypto_of_match_table

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @meson_crypto_driver, ptr noundef nonnull @__this_module) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @meson_crypto_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_crypto_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 24, i32 noundef 3520) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %208, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.meson_dev, ptr %3, i32 0, i32 2
  store ptr %2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %7, align 8
  %8 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #4
  store ptr %8, ptr %3, align 4
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = ptrtoint ptr %8 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef %11) #5
  br label %208

12:                                               ; preds = %5
  %13 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.2) #4
  %14 = getelementptr inbounds %struct.meson_dev, ptr %3, i32 0, i32 1
  store ptr %13, ptr %14, align 4
  %15 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = ptrtoint ptr %13 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %17) #5
  br label %208

18:                                               ; preds = %12
  %19 = load ptr, ptr %6, align 4
  %20 = tail call noalias ptr @devm_kmalloc(ptr noundef %19, i32 noundef 8, i32 noundef 3520) #4
  %21 = getelementptr inbounds %struct.meson_dev, ptr %3, i32 0, i32 5
  store ptr %20, ptr %21, align 4
  %22 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #4
  %23 = load ptr, ptr %21, align 4
  store i32 %22, ptr %23, align 4
  %24 = load ptr, ptr %21, align 4
  %25 = load i32, ptr %24, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %208, label %27

27:                                               ; preds = %18
  %28 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %25, ptr noundef nonnull @meson_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull %3) #4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %42, %27
  %31 = phi i32 [ %28, %27 ], [ %43, %42 ]
  %32 = phi i32 [ 0, %27 ], [ 1, %42 ]
  %33 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.4, i32 noundef %32) #5
  br label %208

34:                                               ; preds = %27
  %35 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 1) #4
  %36 = load ptr, ptr %21, align 4
  %37 = getelementptr i32, ptr %36, i32 1
  store i32 %35, ptr %37, align 4
  %38 = load ptr, ptr %21, align 4
  %39 = getelementptr i32, ptr %38, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %208, label %42

42:                                               ; preds = %34
  %43 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %40, ptr noundef nonnull @meson_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull %3) #4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %30, label %45

45:                                               ; preds = %42
  %46 = load ptr, ptr %14, align 4
  %47 = tail call i32 @clk_prepare(ptr noundef %46) #4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = tail call i32 @clk_enable(ptr noundef %46) #4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  tail call void @clk_unprepare(ptr noundef %46) #4
  br label %53

53:                                               ; preds = %52, %45
  %54 = phi i32 [ %50, %52 ], [ %47, %45 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5) #5
  br label %208

55:                                               ; preds = %49
  %56 = load ptr, ptr %6, align 4
  %57 = tail call noalias ptr @devm_kmalloc(ptr noundef %56, i32 noundef 72, i32 noundef 3520) #4
  %58 = getelementptr inbounds %struct.meson_dev, ptr %3, i32 0, i32 3
  store ptr %57, ptr %58, align 4
  %59 = icmp eq ptr %57, null
  br i1 %59, label %179, label %60

60:                                               ; preds = %55
  %61 = getelementptr %struct.meson_flow, ptr %57, i32 0, i32 1
  store i32 0, ptr %61, align 4
  %62 = getelementptr %struct.meson_flow, ptr %57, i32 0, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %62, ptr noundef nonnull @.str.10, ptr noundef nonnull @init_completion.__key) #4
  %63 = load ptr, ptr %6, align 4
  %64 = tail call ptr @crypto_engine_alloc_init(ptr noundef %63, i1 noundef zeroext true) #4
  %65 = load ptr, ptr %58, align 4
  store ptr %64, ptr %65, align 4
  %66 = load ptr, ptr %58, align 4
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %108, label %69

69:                                               ; preds = %60
  %70 = tail call i32 @crypto_engine_start(ptr noundef nonnull %67) #4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %110

72:                                               ; preds = %69
  %73 = load ptr, ptr %6, align 4
  %74 = load ptr, ptr %58, align 4
  %75 = getelementptr %struct.meson_flow, ptr %74, i32 0, i32 4
  %76 = tail call ptr @dma_alloc_attrs(ptr noundef %73, i32 noundef 768, ptr noundef %75, i32 noundef 3264, i32 noundef 0) #4
  %77 = load ptr, ptr %58, align 4
  %78 = getelementptr %struct.meson_flow, ptr %77, i32 0, i32 5
  store ptr %76, ptr %78, align 4
  %79 = load ptr, ptr %58, align 4
  %80 = getelementptr %struct.meson_flow, ptr %79, i32 0, i32 5
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %115, label %83

83:                                               ; preds = %72
  %84 = getelementptr %struct.meson_flow, ptr %79, i32 1, i32 1
  store i32 0, ptr %84, align 4
  %85 = getelementptr %struct.meson_flow, ptr %79, i32 1, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %85, ptr noundef nonnull @.str.10, ptr noundef nonnull @init_completion.__key) #4
  %86 = load ptr, ptr %6, align 4
  %87 = tail call ptr @crypto_engine_alloc_init(ptr noundef %86, i1 noundef zeroext true) #4
  %88 = load ptr, ptr %58, align 4
  %89 = getelementptr %struct.meson_flow, ptr %88, i32 1
  store ptr %87, ptr %89, align 4
  %90 = load ptr, ptr %58, align 4
  %91 = getelementptr %struct.meson_flow, ptr %90, i32 1
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %110, label %94

94:                                               ; preds = %83
  %95 = tail call i32 @crypto_engine_start(ptr noundef nonnull %92) #4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %110

97:                                               ; preds = %94
  %98 = load ptr, ptr %6, align 4
  %99 = load ptr, ptr %58, align 4
  %100 = getelementptr %struct.meson_flow, ptr %99, i32 1, i32 4
  %101 = tail call ptr @dma_alloc_attrs(ptr noundef %98, i32 noundef 768, ptr noundef %100, i32 noundef 3264, i32 noundef 0) #4
  %102 = load ptr, ptr %58, align 4
  %103 = getelementptr %struct.meson_flow, ptr %102, i32 1, i32 5
  store ptr %101, ptr %103, align 4
  %104 = load ptr, ptr %58, align 4
  %105 = getelementptr %struct.meson_flow, ptr %104, i32 1, i32 5
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %115, label %148

108:                                              ; preds = %60
  %109 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %109, ptr noundef nonnull @.str.8) #5
  br label %179

110:                                              ; preds = %94, %83, %69
  %111 = phi ptr [ @.str.9, %94 ], [ @.str.9, %69 ], [ @.str.8, %83 ]
  %112 = phi i32 [ %95, %94 ], [ %70, %69 ], [ -12, %83 ]
  %113 = phi i32 [ 1, %94 ], [ 0, %69 ], [ 0, %83 ]
  %114 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %114, ptr noundef nonnull %111) #5
  br label %115

115:                                              ; preds = %110, %97, %72
  %116 = phi i32 [ -12, %72 ], [ -12, %97 ], [ %112, %110 ]
  %117 = phi i32 [ 0, %72 ], [ 1, %97 ], [ %113, %110 ]
  %118 = load ptr, ptr %58, align 4
  %119 = getelementptr %struct.meson_flow, ptr %118, i32 %117
  %120 = load ptr, ptr %119, align 4
  %121 = tail call i32 @crypto_engine_exit(ptr noundef %120) #4
  %122 = load ptr, ptr %58, align 4
  %123 = getelementptr %struct.meson_flow, ptr %122, i32 %117, i32 5
  %124 = load ptr, ptr %123, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %130, label %126

126:                                              ; preds = %115
  %127 = load ptr, ptr %6, align 4
  %128 = getelementptr %struct.meson_flow, ptr %122, i32 %117, i32 4
  %129 = load i32, ptr %128, align 4
  tail call void @dma_free_attrs(ptr noundef %127, i32 noundef 768, ptr noundef nonnull %124, i32 noundef %129, i32 noundef 0) #4
  br label %130

130:                                              ; preds = %126, %115
  %131 = add nsw i32 %117, -1
  %132 = icmp sgt i32 %117, 0
  br i1 %132, label %133, label %146

133:                                              ; preds = %130
  %134 = load ptr, ptr %58, align 4
  %135 = getelementptr %struct.meson_flow, ptr %134, i32 %131
  %136 = load ptr, ptr %135, align 4
  %137 = tail call i32 @crypto_engine_exit(ptr noundef %136) #4
  %138 = load ptr, ptr %58, align 4
  %139 = getelementptr %struct.meson_flow, ptr %138, i32 %131, i32 5
  %140 = load ptr, ptr %139, align 4
  %141 = icmp eq ptr %140, null
  br i1 %141, label %146, label %142

142:                                              ; preds = %133
  %143 = load ptr, ptr %6, align 4
  %144 = getelementptr %struct.meson_flow, ptr %138, i32 %131, i32 4
  %145 = load i32, ptr %144, align 4
  tail call void @dma_free_attrs(ptr noundef %143, i32 noundef 768, ptr noundef nonnull %140, i32 noundef %145, i32 noundef 0) #4
  br label %146

146:                                              ; preds = %142, %133, %130
  %147 = icmp eq i32 %116, 0
  br i1 %147, label %148, label %179

148:                                              ; preds = %146, %97
  store ptr %3, ptr getelementptr inbounds ([2 x %struct.meson_alg_template], ptr @mc_algs, i32 0, i32 0, i32 4), align 64
  %149 = load i32, ptr @mc_algs, align 64
  %150 = icmp eq i32 %149, 5
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = tail call i32 @crypto_register_skcipher(ptr noundef getelementptr inbounds ([2 x %struct.meson_alg_template], ptr @mc_algs, i32 0, i32 0, i32 3)) #4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %151, %148
  store ptr %3, ptr getelementptr inbounds ([2 x %struct.meson_alg_template], ptr @mc_algs, i32 0, i32 1, i32 4), align 64
  %155 = load i32, ptr getelementptr inbounds ([2 x %struct.meson_alg_template], ptr @mc_algs, i32 0, i32 1), align 64
  %156 = icmp eq i32 %155, 5
  br i1 %156, label %157, label %208

157:                                              ; preds = %154
  %158 = tail call i32 @crypto_register_skcipher(ptr noundef getelementptr inbounds ([2 x %struct.meson_alg_template], ptr @mc_algs, i32 0, i32 1, i32 3)) #4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %208, label %160

160:                                              ; preds = %157, %151
  %161 = phi ptr [ getelementptr inbounds ([2 x %struct.meson_alg_template], ptr @mc_algs, i32 0, i32 0, i32 4), %151 ], [ getelementptr inbounds ([2 x %struct.meson_alg_template], ptr @mc_algs, i32 0, i32 1, i32 4), %157 ]
  %162 = phi ptr [ getelementptr inbounds ([2 x %struct.meson_alg_template], ptr @mc_algs, i32 0, i32 0, i32 3), %151 ], [ getelementptr inbounds ([2 x %struct.meson_alg_template], ptr @mc_algs, i32 0, i32 1, i32 3), %157 ]
  %163 = phi i32 [ %152, %151 ], [ %158, %157 ]
  %164 = load ptr, ptr %6, align 4
  %165 = getelementptr inbounds %struct.skcipher_alg, ptr %162, i32 0, i32 11, i32 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %164, ptr noundef nonnull @.str.11, ptr noundef %165) #5
  store ptr null, ptr %161, align 64
  %166 = load ptr, ptr getelementptr inbounds ([2 x %struct.meson_alg_template], ptr @mc_algs, i32 0, i32 0, i32 4), align 64
  %167 = icmp ne ptr %166, null
  %168 = load i32, ptr @mc_algs, align 64
  %169 = icmp eq i32 %168, 5
  %170 = select i1 %167, i1 %169, i1 false
  br i1 %170, label %171, label %172

171:                                              ; preds = %160
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([2 x %struct.meson_alg_template], ptr @mc_algs, i32 0, i32 0, i32 3)) #4
  br label %172

172:                                              ; preds = %171, %160
  %173 = load ptr, ptr getelementptr inbounds ([2 x %struct.meson_alg_template], ptr @mc_algs, i32 0, i32 1, i32 4), align 64
  %174 = icmp ne ptr %173, null
  %175 = load i32, ptr getelementptr inbounds ([2 x %struct.meson_alg_template], ptr @mc_algs, i32 0, i32 1), align 64
  %176 = icmp eq i32 %175, 5
  %177 = select i1 %174, i1 %176, i1 false
  br i1 %177, label %178, label %179

178:                                              ; preds = %172
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([2 x %struct.meson_alg_template], ptr @mc_algs, i32 0, i32 1, i32 3)) #4
  br label %179

179:                                              ; preds = %178, %172, %146, %108, %55
  %180 = phi i32 [ %116, %146 ], [ %163, %172 ], [ %163, %178 ], [ -12, %55 ], [ -12, %108 ]
  %181 = load ptr, ptr %58, align 4
  %182 = getelementptr %struct.meson_flow, ptr %181, i32 1
  %183 = load ptr, ptr %182, align 4
  %184 = tail call i32 @crypto_engine_exit(ptr noundef %183) #4
  %185 = load ptr, ptr %58, align 4
  %186 = getelementptr %struct.meson_flow, ptr %185, i32 1, i32 5
  %187 = load ptr, ptr %186, align 4
  %188 = icmp eq ptr %187, null
  br i1 %188, label %194, label %189

189:                                              ; preds = %179
  %190 = load ptr, ptr %6, align 4
  %191 = getelementptr %struct.meson_flow, ptr %185, i32 1, i32 4
  %192 = load i32, ptr %191, align 4
  tail call void @dma_free_attrs(ptr noundef %190, i32 noundef 768, ptr noundef nonnull %187, i32 noundef %192, i32 noundef 0) #4
  %193 = load ptr, ptr %58, align 4
  br label %194

194:                                              ; preds = %189, %179
  %195 = phi ptr [ %193, %189 ], [ %185, %179 ]
  %196 = load ptr, ptr %195, align 4
  %197 = tail call i32 @crypto_engine_exit(ptr noundef %196) #4
  %198 = load ptr, ptr %58, align 4
  %199 = getelementptr %struct.meson_flow, ptr %198, i32 0, i32 5
  %200 = load ptr, ptr %199, align 4
  %201 = icmp eq ptr %200, null
  br i1 %201, label %206, label %202

202:                                              ; preds = %194
  %203 = load ptr, ptr %6, align 4
  %204 = getelementptr %struct.meson_flow, ptr %198, i32 0, i32 4
  %205 = load i32, ptr %204, align 4
  tail call void @dma_free_attrs(ptr noundef %203, i32 noundef 768, ptr noundef nonnull %200, i32 noundef %205, i32 noundef 0) #4
  br label %206

206:                                              ; preds = %202, %194
  %207 = load ptr, ptr %14, align 4
  tail call void @clk_disable(ptr noundef %207) #4
  tail call void @clk_unprepare(ptr noundef %207) #4
  br label %208

208:                                              ; preds = %206, %157, %154, %53, %34, %30, %18, %16, %10, %1
  %209 = phi i32 [ %11, %10 ], [ %17, %16 ], [ %31, %30 ], [ %54, %53 ], [ %180, %206 ], [ -12, %1 ], [ 0, %157 ], [ 0, %154 ], [ %25, %18 ], [ %40, %34 ]
  ret i32 %209
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_crypto_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr getelementptr inbounds ([2 x %struct.meson_alg_template], ptr @mc_algs, i32 0, i32 0, i32 4), align 64
  %5 = icmp ne ptr %4, null
  %6 = load i32, ptr @mc_algs, align 64
  %7 = icmp eq i32 %6, 5
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([2 x %struct.meson_alg_template], ptr @mc_algs, i32 0, i32 0, i32 3)) #4
  br label %10

10:                                               ; preds = %9, %1
  %11 = load ptr, ptr getelementptr inbounds ([2 x %struct.meson_alg_template], ptr @mc_algs, i32 0, i32 1, i32 4), align 64
  %12 = icmp ne ptr %11, null
  %13 = load i32, ptr getelementptr inbounds ([2 x %struct.meson_alg_template], ptr @mc_algs, i32 0, i32 1), align 64
  %14 = icmp eq i32 %13, 5
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([2 x %struct.meson_alg_template], ptr @mc_algs, i32 0, i32 1, i32 3)) #4
  br label %17

17:                                               ; preds = %16, %10
  %18 = getelementptr inbounds %struct.meson_dev, ptr %3, i32 0, i32 3
  %19 = getelementptr inbounds %struct.meson_dev, ptr %3, i32 0, i32 2
  %20 = load ptr, ptr %18, align 4
  %21 = getelementptr %struct.meson_flow, ptr %20, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 @crypto_engine_exit(ptr noundef %22) #4
  %24 = load ptr, ptr %18, align 4
  %25 = getelementptr %struct.meson_flow, ptr %24, i32 1, i32 5
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %17
  %29 = load ptr, ptr %19, align 4
  %30 = getelementptr %struct.meson_flow, ptr %24, i32 1, i32 4
  %31 = load i32, ptr %30, align 4
  tail call void @dma_free_attrs(ptr noundef %29, i32 noundef 768, ptr noundef nonnull %26, i32 noundef %31, i32 noundef 0) #4
  %32 = load ptr, ptr %18, align 4
  br label %33

33:                                               ; preds = %28, %17
  %34 = phi ptr [ %32, %28 ], [ %24, %17 ]
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 @crypto_engine_exit(ptr noundef %35) #4
  %37 = load ptr, ptr %18, align 4
  %38 = getelementptr %struct.meson_flow, ptr %37, i32 0, i32 5
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %33
  %42 = load ptr, ptr %19, align 4
  %43 = getelementptr %struct.meson_flow, ptr %37, i32 0, i32 4
  %44 = load i32, ptr %43, align 4
  tail call void @dma_free_attrs(ptr noundef %42, i32 noundef 768, ptr noundef nonnull %39, i32 noundef %44, i32 noundef 0) #4
  br label %45

45:                                               ; preds = %41, %33
  %46 = getelementptr inbounds %struct.meson_dev, ptr %3, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  tail call void @clk_disable(ptr noundef %47) #4
  tail call void @clk_unprepare(ptr noundef %47) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_irq_handler(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.meson_dev, ptr %1, i32 0, i32 5
  %4 = getelementptr inbounds %struct.meson_dev, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %3, align 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, %0
  br i1 %7, label %8, label %26

8:                                                ; preds = %2
  %9 = load ptr, ptr %1, align 4
  %10 = getelementptr i8, ptr %9, i32 16
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %31, %8
  %14 = phi i32 [ 0, %8 ], [ 1, %31 ]
  %15 = phi i32 [ 16, %8 ], [ 20, %31 ]
  %16 = load ptr, ptr %1, align 4
  %17 = getelementptr i8, ptr %16, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 15) #4, !srcloc !10
  %18 = getelementptr inbounds %struct.meson_dev, ptr %1, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr %struct.meson_flow, ptr %19, i32 %14, i32 2
  store i32 1, ptr %20, align 4
  %21 = load ptr, ptr %18, align 4
  %22 = getelementptr %struct.meson_flow, ptr %21, i32 %14, i32 1
  tail call void @complete(ptr noundef %22) #4
  br label %40

23:                                               ; preds = %8
  %24 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.meson_irq_handler, i32 noundef %0, i32 noundef 0) #5
  %25 = load ptr, ptr %3, align 4
  br label %26

26:                                               ; preds = %23, %2
  %27 = phi ptr [ %5, %2 ], [ %25, %23 ]
  %28 = getelementptr i32, ptr %27, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, %0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load ptr, ptr %1, align 4
  %33 = getelementptr i8, ptr %32, i32 20
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %13

36:                                               ; preds = %31
  %37 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.meson_irq_handler, i32 noundef %0, i32 noundef 1) #5
  br label %38

38:                                               ; preds = %36, %26
  %39 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.meson_irq_handler, i32 noundef %0) #5
  br label %40

40:                                               ; preds = %38, %13
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_engine_alloc_init(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_engine_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_skcipher(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @meson_aes_setkey(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @meson_skencrypt(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @meson_skdecrypt(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @meson_cipher_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @meson_cipher_exit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_skcipher(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_engine_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

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
!8 = !{i64 2668607}
!9 = !{i64 2153258323}
!10 = !{i64 2668189}
