; ModuleID = '/llk/IR/sound/soc/bcm/bcm2835-i2s.c_pt.bc'
source_filename = "../sound/soc/bcm/bcm2835-i2s.c"
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
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.88, ptr }
%union.anon.88 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.bcm2835_i2s_dev = type { ptr, [2 x %struct.snd_dmaengine_dai_dma_data], i32, i32, i32, i32, i32, i32, ptr, ptr, i8, i32 }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@bcm2835_i2s_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2835-i2s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_alias232 = internal constant [27 x i8] c"alias=platform:bcm2835-i2s\00", section ".modinfo", align 1
@__UNIQUE_ID_description233 = internal constant [34 x i8] c"description=BCM2835 I2S interface\00", section ".modinfo", align 1
@__UNIQUE_ID_author234 = internal constant [46 x i8] c"author=Florian Meier <florian.meier@koalo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@bcm2835_i2s_driver = internal global %struct.platform_driver { ptr @bcm2835_i2s_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm2835_i2s_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [12 x i8] c"bcm2835-i2s\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"could not get clk: %d\0A\00", align 1
@bcm2835_regmap_config = internal constant %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr @bcm2835_i2s_volatile_reg, ptr @bcm2835_i2s_precious_reg, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"could not get DMA-register address\0A\00", align 1
@bcm2835_i2s_component = internal constant %struct.snd_soc_component_driver { ptr @.str.5, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@bcm2835_i2s_dai = internal global %struct.snd_soc_dai_driver { ptr @.str, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @bcm2835_i2s_dai_probe, ptr null, ptr null, ptr null, ptr @bcm2835_i2s_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr null, i64 1092, i32 1073741824, i32 8000, i32 384000, i32 2, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr null, i64 1092, i32 1073741824, i32 8000, i32 384000, i32 2, i32 2, i32 0 }, i8 5, i32 0, i32 0 }, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"Could not register DAI: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Could not register PCM: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"bcm2835-i2s-comp\00", align 1
@bcm2835_i2s_dai_ops = internal constant %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr @bcm2835_i2s_set_dai_bclk_ratio, ptr @bcm2835_i2s_set_dai_fmt, ptr null, ptr @bcm2835_i2s_set_dai_tdm_slot, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm2835_i2s_startup, ptr @bcm2835_i2s_shutdown, ptr @bcm2835_i2s_hw_params, ptr null, ptr @bcm2835_i2s_prepare, ptr @bcm2835_i2s_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, align 4
@.str.6 = private unnamed_addr constant [54 x i8] c"Unstable consumer config detected, L/R may be swapped\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"I2S SYNC error!\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias232, ptr @__UNIQUE_ID_author234, ptr @__UNIQUE_ID_description233, ptr @__UNIQUE_ID_license235], section "llvm.metadata"

@__mod_of__bcm2835_i2s_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @bcm2835_i2s_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm2835_i2s_driver, ptr noundef nonnull @__this_module) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcm2835_i2s_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_i2s_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 116, i32 noundef 3520) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %51, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %3, i32 0, i32 10
  store i8 0, ptr %6, align 4
  %7 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #9
  %8 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %3, i32 0, i32 9
  store ptr %7, ptr %8, align 4
  %9 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = icmp eq ptr %7, inttoptr (i32 -517 to ptr)
  br i1 %11, label %51, label %12

12:                                               ; preds = %10
  %13 = ptrtoint ptr %7 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef %13) #10
  br label %51

14:                                               ; preds = %5
  %15 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #9
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = ptrtoint ptr %15 to i32
  br label %51

19:                                               ; preds = %14
  %20 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %2, ptr noundef null, ptr noundef %15, ptr noundef nonnull @bcm2835_regmap_config, ptr noundef null, ptr noundef null) #9
  %21 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %3, i32 0, i32 8
  store ptr %20, ptr %21, align 4
  %22 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = ptrtoint ptr %20 to i32
  br label %51

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %27 = load ptr, ptr %26, align 8
  %28 = tail call ptr @__of_get_address(ptr noundef %27, i32 noundef 0, i32 noundef -1, ptr noundef null, ptr noundef null) #9
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #10
  br label %51

31:                                               ; preds = %25
  %32 = load i32, ptr %28, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #9
  %34 = add i32 %33, 4
  %35 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %3, i32 0, i32 1
  store i32 %34, ptr %35, align 4
  %36 = getelementptr %struct.bcm2835_i2s_dev, ptr %3, i32 0, i32 1, i32 1
  store i32 %34, ptr %36, align 4
  %37 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %3, i32 0, i32 1, i32 0, i32 1
  store i32 4, ptr %37, align 4
  %38 = getelementptr %struct.bcm2835_i2s_dev, ptr %3, i32 0, i32 1, i32 1, i32 1
  store i32 4, ptr %38, align 4
  %39 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %3, i32 0, i32 1, i32 0, i32 2
  store i32 2, ptr %39, align 4
  %40 = getelementptr %struct.bcm2835_i2s_dev, ptr %3, i32 0, i32 1, i32 1, i32 2
  store i32 2, ptr %40, align 4
  %41 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %3, i32 0, i32 1, i32 0, i32 6
  store i32 1, ptr %41, align 4
  %42 = getelementptr %struct.bcm2835_i2s_dev, ptr %3, i32 0, i32 1, i32 1, i32 6
  store i32 1, ptr %42, align 4
  store ptr %2, ptr %3, align 4
  %43 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %43, align 8
  %44 = tail call i32 @devm_snd_soc_register_component(ptr noundef %2, ptr noundef nonnull @bcm2835_i2s_component, ptr noundef nonnull @bcm2835_i2s_dai, i32 noundef 1) #9
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %31
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %44) #10
  br label %51

47:                                               ; preds = %31
  %48 = tail call i32 @devm_snd_dmaengine_pcm_register(ptr noundef %2, ptr noundef null, i32 noundef 0) #9
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef %48) #10
  br label %51

51:                                               ; preds = %50, %47, %46, %30, %23, %17, %12, %10, %1
  %52 = phi i32 [ %18, %17 ], [ %24, %23 ], [ %44, %46 ], [ %48, %50 ], [ -22, %30 ], [ -12, %1 ], [ -517, %10 ], [ %13, %12 ], [ 0, %47 ]
  ret i32 %52
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_dmaengine_pcm_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @bcm2835_i2s_volatile_reg(ptr nocapture noundef readnone %0, i32 noundef %1) #5 {
  %3 = tail call i32 @llvm.fshl.i32(i32 %1, i32 %1, i32 30)
  %4 = icmp ult i32 %3, 9
  %5 = trunc i32 %3 to i9
  %6 = lshr i9 -125, %5
  %7 = and i9 %6, 1
  %8 = icmp ne i9 %7, 0
  %9 = select i1 %4, i1 %8, i1 false
  ret i1 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @bcm2835_i2s_precious_reg(ptr nocapture noundef readnone %0, i32 noundef %1) #6 {
  %3 = icmp eq i32 %1, 4
  ret i1 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_get_address(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @bcm2835_i2s_dai_probe(ptr nocapture noundef %0) #8 {
  %2 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %5, i32 0, i32 1
  %7 = getelementptr %struct.bcm2835_i2s_dev, ptr %5, i32 0, i32 1, i32 1
  %8 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 7
  store ptr %6, ptr %8, align 4
  %9 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 8
  store ptr %7, ptr %9, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @bcm2835_i2s_set_dai_bclk_ratio(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %6, i32 0, i32 3
  store i32 0, ptr %9, align 4
  br label %19

10:                                               ; preds = %2
  %11 = icmp ugt i32 %1, 1024
  br i1 %11, label %19, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %6, i32 0, i32 3
  store i32 2, ptr %13, align 4
  %14 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %6, i32 0, i32 4
  store i32 3, ptr %14, align 4
  %15 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %6, i32 0, i32 5
  store i32 3, ptr %15, align 4
  %16 = lshr i32 %1, 1
  %17 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %6, i32 0, i32 6
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %6, i32 0, i32 7
  store i32 %1, ptr %18, align 4
  br label %19

19:                                               ; preds = %12, %10, %8
  %20 = phi i32 [ 0, %12 ], [ 0, %8 ], [ -22, %10 ]
  ret i32 %20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @bcm2835_i2s_set_dai_fmt(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %6, i32 0, i32 2
  store i32 %1, ptr %7, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_i2s_set_dai_tdm_slot(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq i32 %3, 0
  br i1 %10, label %27, label %11

11:                                               ; preds = %5
  %12 = or i32 %4, %3
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %14, label %36

14:                                               ; preds = %11
  %15 = sub i32 32, %3
  %16 = lshr i32 -1, %15
  %17 = and i32 %16, %2
  %18 = tail call i32 @__sw_hweight32(i32 noundef %17) #9
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %36

20:                                               ; preds = %14
  %21 = and i32 %16, %1
  %22 = tail call i32 @__sw_hweight32(i32 noundef %21) #9
  %23 = icmp ne i32 %22, 2
  %24 = mul i32 %4, %3
  %25 = icmp sgt i32 %24, 1024
  %26 = or i1 %25, %23
  br i1 %26, label %36, label %27

27:                                               ; preds = %20, %5
  %28 = phi i32 [ %24, %20 ], [ 0, %5 ]
  %29 = phi i32 [ %17, %20 ], [ %2, %5 ]
  %30 = phi i32 [ %21, %20 ], [ %1, %5 ]
  %31 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %9, i32 0, i32 3
  store i32 %3, ptr %31, align 4
  %32 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %9, i32 0, i32 4
  store i32 %29, ptr %32, align 4
  %33 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %9, i32 0, i32 5
  store i32 %30, ptr %33, align 4
  %34 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %9, i32 0, i32 6
  store i32 %4, ptr %34, align 4
  %35 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %9, i32 0, i32 7
  store i32 %28, ptr %35, align 4
  br label %36

36:                                               ; preds = %27, %20, %14, %11
  %37 = phi i32 [ 0, %27 ], [ -22, %11 ], [ -22, %20 ], [ -22, %14 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_i2s_startup(ptr nocapture noundef readnone %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @snd_soc_dai_active(ptr noundef %1) #9
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %6, i32 0, i32 10
  %11 = load i8, ptr %10, align 4, !range !8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %6, i32 0, i32 9
  %15 = load ptr, ptr %14, align 4
  tail call void @clk_disable(ptr noundef %15) #9
  tail call void @clk_unprepare(ptr noundef %15) #9
  br label %16

16:                                               ; preds = %13, %9
  store i8 0, ptr %10, align 4
  %17 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %6, i32 0, i32 8
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %20 = load ptr, ptr %17, align 4
  %21 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 0, i32 noundef 33554432, i32 noundef 33554432, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %22

22:                                               ; preds = %16, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm2835_i2s_shutdown(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 1
  %10 = select i1 %9, i32 2, i32 4
  %11 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %6, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 0, i32 noundef %10, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %14 = tail call i32 @snd_soc_dai_active(ptr noundef %1) #9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %6, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %6, i32 0, i32 10
  %23 = load i8, ptr %22, align 4, !range !8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %6, i32 0, i32 9
  %27 = load ptr, ptr %26, align 4
  tail call void @clk_disable(ptr noundef %27) #9
  tail call void @clk_unprepare(ptr noundef %27) #9
  br label %28

28:                                               ; preds = %25, %21
  store i8 0, ptr %22, align 4
  br label %29

29:                                               ; preds = %28, %16, %2
  %30 = tail call i32 @snd_soc_dai_active(ptr noundef %1) #9
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = load ptr, ptr %11, align 4
  %34 = tail call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %35 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %6, i32 0, i32 10
  %36 = load i8, ptr %35, align 4, !range !8
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %6, i32 0, i32 9
  %40 = load ptr, ptr %39, align 4
  tail call void @clk_disable(ptr noundef %40) #9
  tail call void @clk_unprepare(ptr noundef %40) #9
  br label %41

41:                                               ; preds = %38, %32
  store i8 0, ptr %35, align 4
  br label %42

42:                                               ; preds = %41, %29
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_i2s_hw_params(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !9
  %9 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = call i32 @regmap_read(ptr noundef %10, i32 noundef 0, ptr noundef nonnull %4) #9
  %12 = load i32, ptr %4, align 4
  %13 = and i32 %12, 6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %257

15:                                               ; preds = %3
  %16 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %24, %15
  %20 = phi i32 [ 0, %15 ], [ 32, %24 ]
  %21 = phi i32 [ %17, %15 ], [ %26, %24 ]
  %22 = call i32 @llvm.cttz.i32(i32 %21, i1 true) #9, !range !10
  %23 = or i32 %22, %20
  br label %28

24:                                               ; preds = %15
  %25 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %19

28:                                               ; preds = %24, %19
  %29 = phi i32 [ %23, %19 ], [ 0, %24 ]
  %30 = call i32 @snd_pcm_format_width(i32 noundef %29) #9
  %31 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %8, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %8, i32 0, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %8, i32 0, i32 7
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %8, i32 0, i32 4
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %8, i32 0, i32 5
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = mul i32 %44, %38
  br label %66

46:                                               ; preds = %28
  %47 = load i32, ptr %16, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %54, %46
  %50 = phi i32 [ 0, %46 ], [ 32, %54 ]
  %51 = phi i32 [ %47, %46 ], [ %56, %54 ]
  %52 = call i32 @llvm.cttz.i32(i32 %51, i1 true) #9, !range !10
  %53 = or i32 %52, %50
  br label %58

54:                                               ; preds = %46
  %55 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %49

58:                                               ; preds = %54, %49
  %59 = phi i32 [ %53, %49 ], [ 0, %54 ]
  %60 = call i32 @snd_pcm_format_width(i32 noundef %59) #9
  %61 = call i32 @snd_soc_params_to_frame_size(ptr noundef %1) #9
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %257, label %63

63:                                               ; preds = %58
  %64 = call i32 @snd_soc_params_to_bclk(ptr noundef %1) #9
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %257, label %66

66:                                               ; preds = %63, %34
  %67 = phi i32 [ %32, %34 ], [ 2, %63 ]
  %68 = phi i32 [ %36, %34 ], [ %60, %63 ]
  %69 = phi i32 [ %38, %34 ], [ %61, %63 ]
  %70 = phi i32 [ %45, %34 ], [ %64, %63 ]
  %71 = phi i32 [ %40, %34 ], [ 3, %63 ]
  %72 = phi i32 [ %42, %34 ], [ 3, %63 ]
  %73 = icmp ult i32 %68, %30
  br i1 %73, label %257, label %74

74:                                               ; preds = %66
  %75 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %8, i32 0, i32 2
  %76 = load i32, ptr %75, align 4
  %77 = and i32 %76, 61440
  %78 = add nsw i32 %77, -4096
  %79 = icmp ult i32 %78, 16384
  br i1 %79, label %80, label %257

80:                                               ; preds = %74
  %81 = lshr exact i32 %78, 12
  %82 = and i32 %78, 4096
  %83 = icmp eq i32 %82, 0
  %84 = trunc i32 %81 to i4
  %85 = lshr i4 -4, %84
  %86 = and i4 %85, 1
  %87 = icmp ne i4 %86, 0
  br i1 %83, label %125, label %88

88:                                               ; preds = %80
  %89 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %8, i32 0, i32 10
  %90 = load i8, ptr %89, align 4, !range !8
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %8, i32 0, i32 11
  %94 = load i32, ptr %93, align 4
  %95 = icmp eq i32 %94, %70
  br i1 %95, label %125, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %8, i32 0, i32 9
  %98 = load ptr, ptr %97, align 4
  call void @clk_disable(ptr noundef %98) #9
  call void @clk_unprepare(ptr noundef %98) #9
  store i8 0, ptr %89, align 4
  br label %99

99:                                               ; preds = %96, %88
  %100 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %8, i32 0, i32 11
  %101 = load i32, ptr %100, align 4
  %102 = icmp eq i32 %101, %70
  br i1 %102, label %111, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %8, i32 0, i32 9
  %105 = load ptr, ptr %104, align 4
  %106 = call i32 @clk_set_rate(ptr noundef %105, i32 noundef %70) #9
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %257

108:                                              ; preds = %103
  store i32 %70, ptr %100, align 4
  %109 = load i8, ptr %89, align 4, !range !8
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %111, label %125

111:                                              ; preds = %108, %99
  %112 = load i32, ptr %75, align 4
  %113 = trunc i32 %112 to i16
  %114 = and i16 %113, -4096
  switch i16 %114, label %125 [
    i16 16384, label %115
    i16 8192, label %115
  ]

115:                                              ; preds = %111, %111
  %116 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %8, i32 0, i32 9
  %117 = load ptr, ptr %116, align 4
  %118 = call i32 @clk_prepare(ptr noundef %117) #9
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = call i32 @clk_enable(ptr noundef %117) #9
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %120
  call void @clk_unprepare(ptr noundef %117) #9
  br label %124

124:                                              ; preds = %123, %120, %115
  store i8 1, ptr %89, align 4
  br label %125

125:                                              ; preds = %124, %111, %108, %92, %80
  %126 = icmp ugt i32 %30, 23
  %127 = select i1 %126, i32 49152, i32 16384
  %128 = add i32 %30, 8
  %129 = and i32 %128, 15
  %130 = or i32 %127, %129
  %131 = mul nuw i32 %130, 65537
  %132 = load i32, ptr %75, align 4
  %133 = and i32 %132, 15
  switch i32 %133, label %257 [
    i32 1, label %134
    i32 3, label %140
    i32 2, label %146
    i32 4, label %157
    i32 5, label %156
  ]

134:                                              ; preds = %125
  %135 = and i32 %67, 1
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %257

137:                                              ; preds = %134
  %138 = lshr i32 %67, 1
  %139 = sdiv i32 %69, 2
  br label %157

140:                                              ; preds = %125
  %141 = and i32 %67, 1
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %257

143:                                              ; preds = %140
  %144 = lshr i32 %67, 1
  %145 = sdiv i32 %69, 2
  br label %157

146:                                              ; preds = %125
  %147 = and i32 %67, 1
  %148 = icmp eq i32 %147, 0
  %149 = and i32 %69, 1
  %150 = icmp eq i32 %149, 0
  %151 = select i1 %148, i1 %150, i1 false
  br i1 %151, label %152, label %257

152:                                              ; preds = %146
  %153 = lshr i32 %67, 1
  %154 = sub i32 %68, %30
  %155 = sdiv i32 %69, 2
  br label %157

156:                                              ; preds = %125
  br label %157

157:                                              ; preds = %156, %152, %143, %137, %125
  %158 = phi i32 [ 0, %156 ], [ %154, %152 ], [ 0, %143 ], [ 1, %137 ], [ 1, %125 ]
  %159 = phi i32 [ 1, %156 ], [ %155, %152 ], [ %145, %143 ], [ %139, %137 ], [ 1, %125 ]
  %160 = phi i32 [ 0, %156 ], [ %153, %152 ], [ %144, %143 ], [ %138, %137 ], [ 0, %125 ]
  %161 = phi i1 [ false, %156 ], [ false, %152 ], [ false, %143 ], [ true, %137 ], [ false, %125 ]
  %162 = call i32 @llvm.cttz.i32(i32 %71, i1 true) #9, !range !10
  %163 = icmp eq i32 %71, 0
  %164 = select i1 %163, i32 -1, i32 %162
  %165 = icmp eq i32 %160, 0
  %166 = and i32 %164, 1
  %167 = icmp eq i32 %166, 0
  %168 = lshr i32 %164, 1
  %169 = select i1 %167, i32 0, i32 %160
  %170 = add nuw i32 %169, %168
  %171 = select i1 %165, i32 %164, i32 %170
  %172 = mul i32 %171, %68
  %173 = add i32 %172, %158
  %174 = call i32 @llvm.ctlz.i32(i32 %71, i1 false) #9, !range !10
  %175 = sub nsw i32 31, %174
  %176 = select i1 %163, i32 -1, i32 %175
  %177 = and i32 %176, 1
  %178 = icmp eq i32 %177, 0
  %179 = lshr i32 %176, 1
  %180 = select i1 %178, i32 0, i32 %160
  %181 = add nuw i32 %180, %179
  %182 = select i1 %165, i32 %176, i32 %181
  %183 = mul i32 %182, %68
  %184 = add i32 %183, %158
  %185 = call i32 @llvm.cttz.i32(i32 %72, i1 true) #9, !range !10
  %186 = icmp eq i32 %72, 0
  %187 = select i1 %186, i32 -1, i32 %185
  %188 = and i32 %187, 1
  %189 = icmp eq i32 %188, 0
  %190 = lshr i32 %187, 1
  %191 = select i1 %189, i32 0, i32 %160
  %192 = add nuw i32 %191, %190
  %193 = select i1 %165, i32 %187, i32 %192
  %194 = mul i32 %193, %68
  %195 = add i32 %194, %158
  %196 = call i32 @llvm.ctlz.i32(i32 %72, i1 false) #9, !range !10
  %197 = sub nsw i32 31, %196
  %198 = select i1 %186, i32 -1, i32 %197
  %199 = and i32 %198, 1
  %200 = icmp eq i32 %199, 0
  %201 = lshr i32 %198, 1
  %202 = select i1 %200, i32 0, i32 %160
  %203 = add nuw i32 %202, %201
  %204 = select i1 %165, i32 %198, i32 %203
  %205 = mul i32 %204, %68
  %206 = add i32 %205, %158
  %207 = icmp ne i32 %173, 0
  %208 = icmp ne i32 %195, 0
  %209 = select i1 %207, i1 %208, i1 false
  %210 = or i1 %87, %209
  br i1 %210, label %213, label %211

211:                                              ; preds = %157
  %212 = load ptr, ptr %8, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %212, ptr noundef nonnull @.str.6) #10
  br label %213

213:                                              ; preds = %211, %157
  %214 = load ptr, ptr %9, align 4
  %215 = shl i32 %173, 20
  %216 = or i32 %215, %131
  %217 = shl i32 %184, 4
  %218 = or i32 %216, %217
  %219 = call i32 @regmap_write(ptr noundef %214, i32 noundef 12, i32 noundef %218) #9
  %220 = load ptr, ptr %9, align 4
  %221 = shl i32 %195, 20
  %222 = or i32 %221, %131
  %223 = shl i32 %206, 4
  %224 = or i32 %222, %223
  %225 = call i32 @regmap_write(ptr noundef %220, i32 noundef 16, i32 noundef %224) #9
  %226 = icmp ult i32 %30, 17
  %227 = select i1 %226, i32 50331648, i32 0
  %228 = shl i32 %69, 10
  %229 = add i32 %228, -1024
  %230 = or i32 %229, %227
  %231 = or i32 %230, %159
  %232 = or i32 %231, 8388608
  %233 = select i1 %83, i32 %232, i32 %231
  %234 = or i32 %233, 2097152
  %235 = select i1 %87, i32 %233, i32 %234
  %236 = load i32, ptr %75, align 4
  %237 = lshr i32 %236, 8
  %238 = and i32 %237, 15
  switch i32 %238, label %257 [
    i32 0, label %239
    i32 2, label %239
    i32 3, label %241
    i32 4, label %241
  ]

239:                                              ; preds = %213, %213
  %240 = or i32 %235, 4194304
  br label %241

241:                                              ; preds = %239, %213, %213
  %242 = phi i32 [ %235, %213 ], [ %235, %213 ], [ %240, %239 ]
  switch i32 %238, label %257 [
    i32 0, label %243
    i32 3, label %243
    i32 2, label %245
    i32 4, label %245
  ]

243:                                              ; preds = %241, %241
  %244 = or i32 %242, 1048576
  br label %247

245:                                              ; preds = %241, %241
  %246 = or i32 %242, 1048576
  br label %247

247:                                              ; preds = %245, %243
  %248 = phi i32 [ %246, %245 ], [ %242, %243 ]
  %249 = phi i32 [ %242, %245 ], [ %244, %243 ]
  %250 = select i1 %161, i32 %249, i32 %248
  %251 = load ptr, ptr %9, align 4
  %252 = call i32 @regmap_write(ptr noundef %251, i32 noundef 8, i32 noundef %250) #9
  %253 = load ptr, ptr %9, align 4
  %254 = call i32 @regmap_update_bits_base(ptr noundef %253, i32 noundef 0, i32 noundef 672, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %255 = load ptr, ptr %9, align 4
  %256 = call i32 @regmap_update_bits_base(ptr noundef %255, i32 noundef 20, i32 noundef 271593504, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call fastcc void @bcm2835_i2s_clear_fifos(ptr noundef %8, i1 noundef zeroext true, i1 noundef zeroext true)
  br label %257

257:                                              ; preds = %247, %241, %213, %146, %140, %134, %125, %103, %74, %66, %63, %58, %3
  %258 = phi i32 [ 0, %247 ], [ 0, %3 ], [ %61, %58 ], [ %64, %63 ], [ -22, %66 ], [ -22, %74 ], [ %106, %103 ], [ -22, %134 ], [ -22, %140 ], [ -22, %146 ], [ -22, %125 ], [ -22, %213 ], [ -22, %241 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i32 %258
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_i2s_prepare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !9
  %8 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = call i32 @regmap_read(ptr noundef %9, i32 noundef 0, ptr noundef nonnull %3) #9
  %11 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  switch i32 %12, label %23 [
    i32 0, label %13
    i32 1, label %18
  ]

13:                                               ; preds = %2
  %14 = load i32, ptr %3, align 4
  %15 = and i32 %14, 2097152
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  call fastcc void @bcm2835_i2s_clear_fifos(ptr noundef %7, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %23

18:                                               ; preds = %2
  %19 = load i32, ptr %3, align 4
  %20 = and i32 %19, 1048576
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  call fastcc void @bcm2835_i2s_clear_fifos(ptr noundef %7, i1 noundef zeroext false, i1 noundef zeroext true)
  br label %23

23:                                               ; preds = %22, %18, %17, %13, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_i2s_trigger(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  switch i32 %1, label %58 [
    i32 1, label %8
    i32 6, label %8
    i32 4, label %8
    i32 0, label %35
    i32 5, label %35
    i32 3, label %35
  ]

8:                                                ; preds = %3, %3, %3
  %9 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %7, i32 0, i32 10
  %10 = load i8, ptr %9, align 4, !range !8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %7, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = trunc i32 %14 to i16
  %16 = and i16 %15, -4096
  switch i16 %16, label %27 [
    i16 16384, label %17
    i16 8192, label %17
  ]

17:                                               ; preds = %12, %12
  %18 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %7, i32 0, i32 9
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 @clk_prepare(ptr noundef %19) #9
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = tail call i32 @clk_enable(ptr noundef %19) #9
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  tail call void @clk_unprepare(ptr noundef %19) #9
  br label %26

26:                                               ; preds = %25, %22, %17
  store i8 1, ptr %9, align 4
  br label %27

27:                                               ; preds = %26, %12, %8
  %28 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 1
  %31 = select i1 %30, i32 2, i32 4
  %32 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %7, i32 0, i32 8
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef 0, i32 noundef %31, i32 noundef %31, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %58

35:                                               ; preds = %3, %3, %3
  %36 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 1
  %39 = select i1 %38, i32 2, i32 4
  %40 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %7, i32 0, i32 8
  %41 = load ptr, ptr %40, align 4
  %42 = tail call i32 @regmap_update_bits_base(ptr noundef %41, i32 noundef 0, i32 noundef %39, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %43 = tail call i32 @snd_soc_dai_active(ptr noundef %2) #9
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %35
  %46 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %7, i32 0, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, 16
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %7, i32 0, i32 10
  %52 = load i8, ptr %51, align 4, !range !8
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %7, i32 0, i32 9
  %56 = load ptr, ptr %55, align 4
  tail call void @clk_disable(ptr noundef %56) #9
  tail call void @clk_unprepare(ptr noundef %56) #9
  br label %57

57:                                               ; preds = %54, %50
  store i8 0, ptr %51, align 4
  br label %58

58:                                               ; preds = %57, %45, %35, %27, %3
  %59 = phi i32 [ -22, %3 ], [ 0, %27 ], [ 0, %35 ], [ 0, %45 ], [ 0, %57 ]
  ret i32 %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_active(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_params_to_frame_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_params_to_bclk(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bcm2835_i2s_clear_fifos(ptr nocapture noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = select i1 %1, i32 4, i32 0
  %7 = select i1 %2, i32 2, i32 0
  %8 = or i32 %7, %6
  %9 = select i1 %1, i32 8, i32 0
  %10 = select i1 %2, i32 16, i32 0
  %11 = or i32 %10, %9
  %12 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %0, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = call i32 @regmap_read(ptr noundef %13, i32 noundef 0, ptr noundef nonnull %5) #9
  %15 = load i32, ptr %5, align 4
  %16 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %0, i32 0, i32 10
  %17 = load i8, ptr %16, align 4, !range !8
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %0, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = trunc i32 %21 to i16
  %23 = and i16 %22, -4096
  switch i16 %23, label %34 [
    i16 16384, label %24
    i16 8192, label %24
  ]

24:                                               ; preds = %19, %19
  %25 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %0, i32 0, i32 9
  %26 = load ptr, ptr %25, align 4
  %27 = call i32 @clk_prepare(ptr noundef %26) #9
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = call i32 @clk_enable(ptr noundef %26) #9
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  call void @clk_unprepare(ptr noundef %26) #9
  br label %33

33:                                               ; preds = %32, %29, %24
  store i8 1, ptr %16, align 4
  br label %34

34:                                               ; preds = %33, %19, %3
  %35 = load ptr, ptr %12, align 4
  %36 = call i32 @regmap_update_bits_base(ptr noundef %35, i32 noundef 0, i32 noundef %8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %37 = load ptr, ptr %12, align 4
  %38 = call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef 0, i32 noundef %11, i32 noundef %11, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %39 = load ptr, ptr %12, align 4
  %40 = call i32 @regmap_read(ptr noundef %39, i32 noundef 0, ptr noundef nonnull %4) #9
  %41 = load i32, ptr %4, align 4
  %42 = and i32 %41, 16777216
  store i32 %42, ptr %4, align 4
  %43 = load ptr, ptr %12, align 4
  %44 = xor i32 %42, -1
  %45 = call i32 @regmap_update_bits_base(ptr noundef %43, i32 noundef 0, i32 noundef 16777216, i32 noundef %44, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %46

46:                                               ; preds = %50, %34
  %47 = phi i32 [ 1000, %34 ], [ %48, %50 ]
  %48 = add nsw i32 %47, -1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %46
  %51 = load ptr, ptr %12, align 4
  %52 = call i32 @regmap_read(ptr noundef %51, i32 noundef 0, ptr noundef nonnull %5) #9
  %53 = load i32, ptr %5, align 4
  %54 = and i32 %53, 16777216
  %55 = load i32, ptr %4, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %46, label %59

57:                                               ; preds = %46
  %58 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.7) #10
  br label %59

59:                                               ; preds = %57, %50
  br i1 %18, label %60, label %67

60:                                               ; preds = %59
  %61 = load i8, ptr %16, align 4, !range !8
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %0, i32 0, i32 9
  %65 = load ptr, ptr %64, align 4
  call void @clk_disable(ptr noundef %65) #9
  call void @clk_unprepare(ptr noundef %65) #9
  br label %66

66:                                               ; preds = %63, %60
  store i8 0, ptr %16, align 4
  br label %67

67:                                               ; preds = %66, %59
  %68 = and i32 %15, 6
  %69 = load ptr, ptr %12, align 4
  %70 = call i32 @regmap_update_bits_base(ptr noundef %69, i32 noundef 0, i32 noundef 6, i32 noundef %68, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
!9 = !{!"auto-init"}
!10 = !{i32 0, i32 33}
