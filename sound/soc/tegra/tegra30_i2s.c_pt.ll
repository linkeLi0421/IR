; ModuleID = '/llk/IR/sound/soc/tegra/tegra30_i2s.c_pt.bc'
source_filename = "../sound/soc/tegra/tegra30_i2s.c"
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
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.88, ptr }
%union.anon.88 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.tegra30_i2s_soc_data = type { ptr }
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
%struct.tegra30_i2s = type { ptr, %struct.snd_soc_dai_driver, i32, ptr, i32, i32, [8 x i8], %struct.snd_dmaengine_dai_dma_data, i32, i32, [8 x i8], %struct.snd_dmaengine_dai_dma_data, ptr, %struct.snd_dmaengine_pcm_config }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.snd_dmaengine_pcm_config = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.tegra30_ahub_cif_conf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }

@__UNIQUE_ID_author233 = internal constant [43 x i8] c"author=Stephen Warren <swarren@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description234 = internal constant [36 x i8] c"description=Tegra30 I2S ASoC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias236 = internal constant [27 x i8] c"alias=platform:tegra30-i2s\00", section ".modinfo", align 1
@tegra30_i2s_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-i2s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra124_i2s_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-i2s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra30_i2s_config }, %struct.of_device_id zeroinitializer], align 4
@tegra30_i2s_driver = internal global %struct.platform_driver { ptr @tegra30_i2s_platform_probe, ptr @tegra30_i2s_platform_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra30_i2s_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra30_i2s_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [12 x i8] c"tegra30-i2s\00", align 1
@tegra30_i2s_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra30_i2s_runtime_suspend, ptr @tegra30_i2s_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Error: No device match found\0A\00", align 1
@tegra30_i2s_dai_template = internal unnamed_addr constant %struct.snd_soc_dai_driver { ptr null, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @tegra30_i2s_probe, ptr null, ptr null, ptr null, ptr @tegra30_i2s_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.10, i64 4, i32 2046, i32 0, i32 0, i32 2, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.11, i64 4, i32 2046, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 1, i32 0, i32 0 }, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"nvidia,ahub-cif-ids\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Can't retrieve i2s clock\0A\00", align 1
@tegra30_i2s_regmap_config = internal constant %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr @tegra30_i2s_wr_rd_reg, ptr @tegra30_i2s_wr_rd_reg, ptr @tegra30_i2s_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 84, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 3, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"regmap init failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Could not alloc TX FIFO: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Could not route TX FIFO: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Could not alloc RX FIFO: %d\0A\00", align 1
@tegra30_i2s_component = internal constant %struct.snd_soc_component_driver { ptr @.str, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"Could not register DAI: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Could not register PCM: %d\0A\00", align 1
@tegra30_i2s_dai_ops = internal constant %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr @tegra30_i2s_set_fmt, ptr null, ptr @tegra30_i2s_set_tdm, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra30_i2s_hw_params, ptr null, ptr null, ptr @tegra30_i2s_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"Capture\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"Playback\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"Can't set I2S clock rate: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"clk_enable failed: %d\0A\00", align 1
@tegra124_i2s_config = internal constant %struct.tegra30_i2s_soc_data { ptr @tegra124_ahub_set_cif }, align 4
@tegra30_i2s_config = internal constant %struct.tegra30_i2s_soc_data { ptr @tegra30_ahub_set_cif }, align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias236, ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_description234, ptr @__UNIQUE_ID_license235], section "llvm.metadata"

@__mod_of__tegra30_i2s_of_match_device_table = dso_local alias [3 x %struct.of_device_id], ptr @tegra30_i2s_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra30_i2s_driver, ptr noundef nonnull @__this_module) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra30_i2s_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra30_i2s_platform_probe(ptr noundef %0) #2 {
  %2 = alloca [2 x i32], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #9
  store i64 0, ptr %2, align 8, !annotation !8
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 328, i32 noundef 3520) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %106, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %7, align 8
  %8 = tail call ptr @of_device_get_match_data(ptr noundef %3) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #10
  br label %106

11:                                               ; preds = %6
  store ptr %8, ptr %4, align 8
  %12 = getelementptr inbounds %struct.tegra30_i2s, ptr %4, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(168) %12, ptr noundef nonnull align 8 dereferenceable(168) @tegra30_i2s_dai_template, i32 168, i1 false)
  %13 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load ptr, ptr %3, align 4
  br label %18

18:                                               ; preds = %16, %11
  %19 = phi ptr [ %17, %16 ], [ %14, %11 ]
  store ptr %19, ptr %12, align 8
  %20 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %21 = load ptr, ptr %20, align 8
  %22 = call i32 @of_property_read_variable_u32_array(ptr noundef %21, ptr noundef nonnull @.str.2, ptr noundef nonnull %2, i32 noundef 2, i32 noundef 0) #9
  %23 = call i32 @llvm.smin.i32(i32 %22, i32 0) #9
  %24 = icmp slt i32 %22, 0
  br i1 %24, label %106, label %25

25:                                               ; preds = %18
  %26 = load i32, ptr %2, align 8
  %27 = getelementptr inbounds %struct.tegra30_i2s, ptr %4, i32 0, i32 8
  store i32 %26, ptr %27, align 4
  %28 = getelementptr inbounds [2 x i32], ptr %2, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.tegra30_i2s, ptr %4, i32 0, i32 4
  store i32 %29, ptr %30, align 8
  %31 = call ptr @devm_clk_get(ptr noundef %3, ptr noundef null) #9
  %32 = getelementptr inbounds %struct.tegra30_i2s, ptr %4, i32 0, i32 3
  store ptr %31, ptr %32, align 4
  %33 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3) #10
  %35 = load ptr, ptr %32, align 4
  %36 = ptrtoint ptr %35 to i32
  br label %106

37:                                               ; preds = %25
  %38 = call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #9
  %39 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = ptrtoint ptr %38 to i32
  br label %106

42:                                               ; preds = %37
  %43 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %3, ptr noundef null, ptr noundef %38, ptr noundef nonnull @tegra30_i2s_regmap_config, ptr noundef null, ptr noundef null) #9
  %44 = getelementptr inbounds %struct.tegra30_i2s, ptr %4, i32 0, i32 12
  store ptr %43, ptr %44, align 8
  %45 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4) #10
  %47 = load ptr, ptr %44, align 8
  %48 = ptrtoint ptr %47 to i32
  br label %106

49:                                               ; preds = %42
  call void @regcache_cache_only(ptr noundef %43, i1 noundef zeroext true) #9
  call void @pm_runtime_enable(ptr noundef %3) #9
  %50 = getelementptr inbounds %struct.tegra30_i2s, ptr %4, i32 0, i32 11
  %51 = getelementptr inbounds %struct.tegra30_i2s, ptr %4, i32 0, i32 11, i32 1
  store i32 4, ptr %51, align 4
  %52 = getelementptr inbounds %struct.tegra30_i2s, ptr %4, i32 0, i32 11, i32 2
  store i32 4, ptr %52, align 4
  %53 = getelementptr inbounds %struct.tegra30_i2s, ptr %4, i32 0, i32 9
  %54 = getelementptr inbounds %struct.tegra30_i2s, ptr %4, i32 0, i32 10
  %55 = call i32 @tegra30_ahub_allocate_tx_fifo(ptr noundef %53, ptr noundef %54, i32 noundef 8, ptr noundef %50) #9
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %49
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef %55) #10
  br label %104

58:                                               ; preds = %49
  %59 = load i32, ptr %27, align 4
  %60 = load i32, ptr %53, align 8
  %61 = call i32 @tegra30_ahub_set_rx_cif_source(i32 noundef %59, i32 noundef %60) #9
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6, i32 noundef %61) #10
  br label %100

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.tegra30_i2s, ptr %4, i32 0, i32 7
  %66 = getelementptr inbounds %struct.tegra30_i2s, ptr %4, i32 0, i32 7, i32 1
  store i32 4, ptr %66, align 4
  %67 = getelementptr inbounds %struct.tegra30_i2s, ptr %4, i32 0, i32 7, i32 2
  store i32 4, ptr %67, align 8
  %68 = getelementptr inbounds %struct.tegra30_i2s, ptr %4, i32 0, i32 5
  %69 = getelementptr inbounds %struct.tegra30_i2s, ptr %4, i32 0, i32 6
  %70 = call i32 @tegra30_ahub_allocate_rx_fifo(ptr noundef %68, ptr noundef %69, i32 noundef 8, ptr noundef %65) #9
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %64
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7, i32 noundef %70) #10
  br label %96

73:                                               ; preds = %64
  %74 = load i32, ptr %68, align 4
  %75 = load i32, ptr %30, align 8
  %76 = call i32 @tegra30_ahub_set_rx_cif_source(i32 noundef %74, i32 noundef %75) #9
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %73
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6, i32 noundef %76) #10
  br label %92

79:                                               ; preds = %73
  %80 = call i32 @snd_soc_register_component(ptr noundef %3, ptr noundef nonnull @tegra30_i2s_component, ptr noundef %12, i32 noundef 1) #9
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %79
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.8, i32 noundef %80) #10
  br label %88

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.tegra30_i2s, ptr %4, i32 0, i32 13
  %85 = call i32 @tegra_pcm_platform_register_with_chan_names(ptr noundef %3, ptr noundef %84, ptr noundef %54, ptr noundef %69) #9
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %106, label %87

87:                                               ; preds = %83
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.9, i32 noundef %85) #10
  call void @snd_soc_unregister_component(ptr noundef %3) #9
  br label %88

88:                                               ; preds = %87, %82
  %89 = phi i32 [ -12, %82 ], [ %85, %87 ]
  %90 = load i32, ptr %68, align 4
  %91 = call i32 @tegra30_ahub_unset_rx_cif_source(i32 noundef %90) #9
  br label %92

92:                                               ; preds = %88, %78
  %93 = phi i32 [ %76, %78 ], [ %89, %88 ]
  %94 = load i32, ptr %68, align 4
  %95 = call i32 @tegra30_ahub_free_rx_fifo(i32 noundef %94) #9
  br label %96

96:                                               ; preds = %92, %72
  %97 = phi i32 [ %70, %72 ], [ %93, %92 ]
  %98 = load i32, ptr %27, align 4
  %99 = call i32 @tegra30_ahub_unset_rx_cif_source(i32 noundef %98) #9
  br label %100

100:                                              ; preds = %96, %63
  %101 = phi i32 [ %61, %63 ], [ %97, %96 ]
  %102 = load i32, ptr %53, align 8
  %103 = call i32 @tegra30_ahub_free_tx_fifo(i32 noundef %102) #9
  br label %104

104:                                              ; preds = %100, %57
  %105 = phi i32 [ %55, %57 ], [ %101, %100 ]
  call void @__pm_runtime_disable(ptr noundef %3, i1 noundef zeroext true) #9
  br label %106

106:                                              ; preds = %104, %83, %46, %40, %34, %18, %10, %1
  %107 = phi i32 [ 0, %83 ], [ %23, %18 ], [ %36, %34 ], [ %41, %40 ], [ %48, %46 ], [ %105, %104 ], [ -19, %10 ], [ -12, %1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  ret i32 %107
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra30_i2s_platform_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %4 = load ptr, ptr %3, align 8
  tail call void @tegra_pcm_platform_unregister(ptr noundef %2) #9
  tail call void @snd_soc_unregister_component(ptr noundef %2) #9
  %5 = getelementptr inbounds %struct.tegra30_i2s, ptr %4, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = tail call i32 @tegra30_ahub_unset_rx_cif_source(i32 noundef %6) #9
  %8 = load i32, ptr %5, align 4
  %9 = tail call i32 @tegra30_ahub_free_rx_fifo(i32 noundef %8) #9
  %10 = getelementptr inbounds %struct.tegra30_i2s, ptr %4, i32 0, i32 8
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @tegra30_ahub_unset_rx_cif_source(i32 noundef %11) #9
  %13 = getelementptr inbounds %struct.tegra30_i2s, ptr %4, i32 0, i32 9
  %14 = load i32, ptr %13, align 8
  %15 = tail call i32 @tegra30_ahub_free_tx_fifo(i32 noundef %14) #9
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra30_ahub_allocate_tx_fifo(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra30_ahub_set_rx_cif_source(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra30_ahub_allocate_rx_fifo(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_pcm_platform_register_with_chan_names(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_unregister_component(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra30_ahub_unset_rx_cif_source(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra30_ahub_free_rx_fifo(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra30_ahub_free_tx_fifo(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @tegra30_i2s_probe(ptr nocapture noundef %0) #6 {
  %2 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.tegra30_i2s, ptr %5, i32 0, i32 7
  %7 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 8
  store ptr %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.tegra30_i2s, ptr %5, i32 0, i32 11
  %9 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 7
  store ptr %8, ptr %9, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra30_i2s_set_fmt(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = and i32 %1, 3840
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %28

9:                                                ; preds = %2
  %10 = trunc i32 %1 to i16
  %11 = and i16 %10, -4096
  switch i16 %11, label %28 [
    i16 16384, label %12
    i16 4096, label %13
  ]

12:                                               ; preds = %9
  br label %13

13:                                               ; preds = %12, %9
  %14 = phi i32 [ 0, %9 ], [ 1024, %12 ]
  %15 = and i32 %1, 15
  switch i32 %15, label %28 [
    i32 4, label %16
    i32 5, label %18
    i32 1, label %20
    i32 2, label %20
    i32 3, label %20
  ]

16:                                               ; preds = %13
  %17 = or i32 %14, 4096
  br label %20

18:                                               ; preds = %13
  %19 = or i32 %14, 4608
  br label %20

20:                                               ; preds = %18, %16, %13, %13, %13
  %21 = phi i32 [ %19, %18 ], [ %17, %16 ], [ %14, %13 ], [ %14, %13 ], [ %14, %13 ]
  %22 = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #9
  %23 = getelementptr inbounds %struct.tegra30_i2s, ptr %6, i32 0, i32 12
  %24 = load ptr, ptr %23, align 8
  %25 = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 0, i32 noundef 30208, i32 noundef %21, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %26 = load ptr, ptr %3, align 4
  %27 = tail call i32 @__pm_runtime_idle(ptr noundef %26, i32 noundef 5) #9
  br label %28

28:                                               ; preds = %20, %13, %9, %2
  %29 = phi i32 [ 0, %20 ], [ -22, %2 ], [ -22, %9 ], [ -22, %13 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra30_i2s_set_tdm(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = shl i32 %2, 8
  %11 = or i32 %10, %1
  %12 = shl i32 %3, 16
  %13 = add i32 %12, -65536
  %14 = or i32 %11, %13
  %15 = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #9
  %16 = getelementptr inbounds %struct.tegra30_i2s, ptr %9, i32 0, i32 12
  %17 = load ptr, ptr %16, align 8
  %18 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 16, i32 noundef 524287, i32 noundef %14, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %19 = load ptr, ptr %16, align 8
  %20 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 12, i32 noundef -16777216, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %21 = load ptr, ptr %6, align 4
  %22 = tail call i32 @__pm_runtime_idle(ptr noundef %21, i32 noundef 5) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra30_i2s_hw_params(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #2 {
  %4 = alloca %struct.tegra30_ahub_cif_conf, align 4
  %5 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %4) #9
  %9 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %75

12:                                               ; preds = %3
  %13 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %75, label %20

20:                                               ; preds = %16, %12
  %21 = phi i32 [ 0, %12 ], [ 32, %16 ]
  %22 = phi i32 [ %14, %12 ], [ %18, %16 ]
  %23 = tail call i32 @llvm.cttz.i32(i32 %22, i1 true) #9, !range !9
  %24 = or i32 %23, %21
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %75

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.tegra30_i2s, ptr %8, i32 0, i32 12
  %28 = load ptr, ptr %27, align 8
  %29 = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 0, i32 noundef 7, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %30 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = load i32, ptr %9, align 4
  %33 = shl i32 %31, 5
  %34 = mul i32 %33, %32
  %35 = shl i32 %31, 1
  %36 = freeze i32 %34
  %37 = freeze i32 %35
  %38 = sdiv i32 %36, %37
  %39 = add i32 %38, -1
  %40 = icmp ugt i32 %39, 2047
  br i1 %40, label %75, label %41

41:                                               ; preds = %26
  %42 = getelementptr inbounds %struct.tegra30_i2s, ptr %8, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 @clk_set_rate(ptr noundef %43, i32 noundef %34) #9
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.12, i32 noundef %44) #10
  br label %75

47:                                               ; preds = %41
  %48 = mul i32 %38, %37
  %49 = sub i32 %36, %48
  %50 = icmp eq i32 %49, 0
  %51 = or i32 %39, 4096
  %52 = select i1 %50, i32 %39, i32 %51
  %53 = load ptr, ptr %27, align 8
  %54 = tail call i32 @regmap_write(ptr noundef %53, i32 noundef 4, i32 noundef %52) #9
  store i32 0, ptr %4, align 4
  %55 = getelementptr inbounds %struct.tegra30_ahub_cif_conf, ptr %4, i32 0, i32 1
  store i32 2, ptr %55, align 4
  %56 = getelementptr inbounds %struct.tegra30_ahub_cif_conf, ptr %4, i32 0, i32 2
  store i32 2, ptr %56, align 4
  %57 = getelementptr inbounds %struct.tegra30_ahub_cif_conf, ptr %4, i32 0, i32 3
  store i32 3, ptr %57, align 4
  %58 = getelementptr inbounds %struct.tegra30_ahub_cif_conf, ptr %4, i32 0, i32 4
  store i32 3, ptr %58, align 4
  %59 = getelementptr inbounds %struct.tegra30_ahub_cif_conf, ptr %4, i32 0, i32 5
  store i32 0, ptr %59, align 4
  %60 = getelementptr inbounds %struct.tegra30_ahub_cif_conf, ptr %4, i32 0, i32 6
  store i32 0, ptr %60, align 4
  %61 = getelementptr inbounds %struct.tegra30_ahub_cif_conf, ptr %4, i32 0, i32 7
  store i32 0, ptr %61, align 4
  %62 = getelementptr inbounds %struct.tegra30_ahub_cif_conf, ptr %4, i32 0, i32 9
  store i32 0, ptr %62, align 4
  %63 = getelementptr inbounds %struct.tegra30_ahub_cif_conf, ptr %4, i32 0, i32 10
  store i32 0, ptr %63, align 4
  %64 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, 0
  %67 = zext i1 %66 to i32
  %68 = select i1 %66, i32 20, i32 24
  %69 = getelementptr inbounds %struct.tegra30_ahub_cif_conf, ptr %4, i32 0, i32 8
  store i32 %67, ptr %69, align 4
  %70 = load ptr, ptr %8, align 8
  %71 = load ptr, ptr %70, align 4
  %72 = load ptr, ptr %27, align 8
  call void %71(ptr noundef %72, i32 noundef %68, ptr noundef nonnull %4) #9
  %73 = load ptr, ptr %27, align 8
  %74 = call i32 @regmap_write(ptr noundef %73, i32 noundef 8, i32 noundef 65537) #9
  br label %75

75:                                               ; preds = %47, %46, %26, %20, %16, %3
  %76 = phi i32 [ %44, %46 ], [ 0, %47 ], [ -22, %3 ], [ -22, %20 ], [ -22, %26 ], [ -22, %16 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %4) #9
  ret i32 %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra30_i2s_trigger(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  switch i32 %1, label %44 [
    i32 1, label %8
    i32 4, label %8
    i32 6, label %8
    i32 0, label %26
    i32 3, label %26
    i32 5, label %26
  ]

8:                                                ; preds = %3, %3, %3
  %9 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.tegra30_i2s, ptr %7, i32 0, i32 9
  %14 = load i32, ptr %13, align 8
  %15 = tail call i32 @tegra30_ahub_enable_tx_fifo(i32 noundef %14) #9
  %16 = getelementptr inbounds %struct.tegra30_i2s, ptr %7, i32 0, i32 12
  %17 = load ptr, ptr %16, align 8
  %18 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 0, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %44

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.tegra30_i2s, ptr %7, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = tail call i32 @tegra30_ahub_enable_rx_fifo(i32 noundef %21) #9
  %23 = getelementptr inbounds %struct.tegra30_i2s, ptr %7, i32 0, i32 12
  %24 = load ptr, ptr %23, align 8
  %25 = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 0, i32 noundef 1073741824, i32 noundef 1073741824, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %44

26:                                               ; preds = %3, %3, %3
  %27 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.tegra30_i2s, ptr %7, i32 0, i32 9
  %32 = load i32, ptr %31, align 8
  %33 = tail call i32 @tegra30_ahub_disable_tx_fifo(i32 noundef %32) #9
  %34 = getelementptr inbounds %struct.tegra30_i2s, ptr %7, i32 0, i32 12
  %35 = load ptr, ptr %34, align 8
  %36 = tail call i32 @regmap_update_bits_base(ptr noundef %35, i32 noundef 0, i32 noundef -2147483648, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %44

37:                                               ; preds = %26
  %38 = getelementptr inbounds %struct.tegra30_i2s, ptr %7, i32 0, i32 12
  %39 = load ptr, ptr %38, align 8
  %40 = tail call i32 @regmap_update_bits_base(ptr noundef %39, i32 noundef 0, i32 noundef 1073741824, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %41 = getelementptr inbounds %struct.tegra30_i2s, ptr %7, i32 0, i32 5
  %42 = load i32, ptr %41, align 4
  %43 = tail call i32 @tegra30_ahub_disable_rx_fifo(i32 noundef %42) #9
  br label %44

44:                                               ; preds = %37, %30, %19, %12, %3
  %45 = phi i32 [ -22, %3 ], [ 0, %30 ], [ 0, %37 ], [ 0, %12 ], [ 0, %19 ]
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra30_ahub_enable_tx_fifo(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra30_ahub_enable_rx_fifo(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra30_ahub_disable_tx_fifo(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra30_ahub_disable_rx_fifo(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tegra30_i2s_wr_rd_reg(ptr nocapture noundef readnone %0, i32 noundef %1) #8 {
  %3 = tail call i32 @llvm.fshl.i32(i32 %1, i32 %1, i32 30)
  %4 = icmp ult i32 %3, 22
  ret i1 %4
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tegra30_i2s_volatile_reg(ptr nocapture noundef readnone %0, i32 noundef %1) #8 {
  %3 = add i32 %1, -36
  %4 = tail call i32 @llvm.fshl.i32(i32 %3, i32 %3, i32 30)
  %5 = icmp ult i32 %4, 4
  ret i1 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_pcm_platform_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra30_i2s_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra30_i2s, ptr %3, i32 0, i32 12
  %5 = load ptr, ptr %4, align 8
  tail call void @regcache_cache_only(ptr noundef %5, i1 noundef zeroext true) #9
  %6 = getelementptr inbounds %struct.tegra30_i2s, ptr %3, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %7) #9
  tail call void @clk_unprepare(ptr noundef %7) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra30_i2s_runtime_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra30_i2s, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #9
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  tail call void @clk_unprepare(ptr noundef %5) #9
  br label %12

12:                                               ; preds = %11, %1
  %13 = phi i32 [ %9, %11 ], [ %6, %1 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %13) #10
  br label %23

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.tegra30_i2s, ptr %3, i32 0, i32 12
  %16 = load ptr, ptr %15, align 8
  tail call void @regcache_cache_only(ptr noundef %16, i1 noundef zeroext false) #9
  %17 = load ptr, ptr %15, align 8
  tail call void @regcache_mark_dirty(ptr noundef %17) #9
  %18 = load ptr, ptr %15, align 8
  %19 = tail call i32 @regcache_sync(ptr noundef %18) #9
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %14
  %22 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %22) #9
  tail call void @clk_unprepare(ptr noundef %22) #9
  br label %23

23:                                               ; preds = %21, %14, %12
  %24 = phi i32 [ %13, %12 ], [ %19, %21 ], [ 0, %14 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra124_ahub_set_cif(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra30_ahub_set_cif(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{!"auto-init"}
!9 = !{i32 0, i32 33}
