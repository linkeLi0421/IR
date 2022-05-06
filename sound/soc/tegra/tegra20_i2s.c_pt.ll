; ModuleID = '/llk/IR/sound/soc/tegra/tegra20_i2s.c_pt.bc'
source_filename = "../sound/soc/tegra/tegra20_i2s.c"
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
%struct.tegra20_i2s = type { %struct.snd_soc_dai_driver, ptr, %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data, ptr, ptr }
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
%struct.snd_pcm_hw_rule = type { i32, i32, [5 x i32], ptr, ptr }

@__UNIQUE_ID_author233 = internal constant [43 x i8] c"author=Stephen Warren <swarren@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description234 = internal constant [36 x i8] c"description=Tegra20 I2S ASoC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias236 = internal constant [27 x i8] c"alias=platform:tegra20-i2s\00", section ".modinfo", align 1
@tegra20_i2s_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-i2s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@tegra20_i2s_driver = internal global %struct.platform_driver { ptr @tegra20_i2s_platform_probe, ptr @tegra20_i2s_platform_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra20_i2s_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra20_i2s_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [12 x i8] c"tegra20-i2s\00", align 1
@tegra20_i2s_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra20_i2s_runtime_suspend, ptr @tegra20_i2s_runtime_resume, ptr null }, align 4
@tegra20_i2s_dai_template = internal unnamed_addr constant %struct.snd_soc_dai_driver { ptr null, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @tegra20_i2s_probe, ptr null, ptr null, ptr null, ptr @tegra20_i2s_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.7, i64 4, i32 2046, i32 0, i32 0, i32 2, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.8, i64 4, i32 2046, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 1, i32 0, i32 0 }, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"i2s\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Can't retrieve i2s reset\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Can't retrieve i2s clock\0A\00", align 1
@tegra20_i2s_regmap_config = internal constant %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr @tegra20_i2s_wr_rd_reg, ptr @tegra20_i2s_wr_rd_reg, ptr @tegra20_i2s_volatile_reg, ptr @tegra20_i2s_precious_reg, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 128, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 3, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"regmap init failed\0A\00", align 1
@tegra20_i2s_component = internal constant %struct.snd_soc_component_driver { ptr @.str, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"Could not register DAI: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Could not register PCM: %d\0A\00", align 1
@tegra20_i2s_dai_ops = internal constant %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr @tegra20_i2s_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra20_i2s_startup, ptr null, ptr @tegra20_i2s_hw_params, ptr null, ptr null, ptr @tegra20_i2s_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"Capture\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"Playback\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"nvidia,fixed-parent-rate\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"Can't get parent clock rate: %ld\0A\00", align 1
@tegra20_i2s_rates = internal constant [10 x i32] [i32 8000, i32 11025, i32 16000, i32 22050, i32 32000, i32 44100, i32 48000, i32 64000, i32 88200, i32 96000], align 4
@.str.11 = private unnamed_addr constant [30 x i8] c"Can't set I2S clock rate: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"clk_enable failed: %d\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias236, ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_description234, ptr @__UNIQUE_ID_license235], section "llvm.metadata"

@__mod_of__tegra20_i2s_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @tegra20_i2s_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra20_i2s_driver, ptr noundef nonnull @__this_module) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra20_i2s_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra20_i2s_platform_probe(ptr noundef %0) #2 {
  %2 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store ptr null, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 256, i32 noundef 3520) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %61, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %7, align 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(168) %4, ptr noundef nonnull align 8 dereferenceable(168) @tegra20_i2s_dai_template, i32 168, i1 false)
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = load ptr, ptr %3, align 4
  br label %13

13:                                               ; preds = %11, %6
  %14 = phi ptr [ %12, %11 ], [ %9, %6 ]
  store ptr %14, ptr %4, align 8
  %15 = tail call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef nonnull @.str.1, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %16 = getelementptr inbounds %struct.tegra20_i2s, ptr %4, i32 0, i32 5
  store ptr %15, ptr %16, align 8
  %17 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #10
  %19 = load ptr, ptr %16, align 8
  %20 = ptrtoint ptr %19 to i32
  br label %61

21:                                               ; preds = %13
  %22 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef null) #9
  %23 = getelementptr inbounds %struct.tegra20_i2s, ptr %4, i32 0, i32 1
  store ptr %22, ptr %23, align 8
  %24 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3) #10
  %26 = load ptr, ptr %23, align 8
  %27 = ptrtoint ptr %26 to i32
  br label %61

28:                                               ; preds = %21
  %29 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #9
  %30 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = ptrtoint ptr %29 to i32
  br label %61

33:                                               ; preds = %28
  %34 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %3, ptr noundef null, ptr noundef %29, ptr noundef nonnull @tegra20_i2s_regmap_config, ptr noundef null, ptr noundef null) #9
  %35 = getelementptr inbounds %struct.tegra20_i2s, ptr %4, i32 0, i32 4
  store ptr %34, ptr %35, align 4
  %36 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4) #10
  %38 = load ptr, ptr %35, align 4
  %39 = ptrtoint ptr %38 to i32
  br label %61

40:                                               ; preds = %33
  %41 = load ptr, ptr %2, align 4
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, 128
  %44 = getelementptr inbounds %struct.tegra20_i2s, ptr %4, i32 0, i32 2
  store i32 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.tegra20_i2s, ptr %4, i32 0, i32 2, i32 1
  store i32 4, ptr %45, align 4
  %46 = getelementptr inbounds %struct.tegra20_i2s, ptr %4, i32 0, i32 2, i32 2
  store i32 4, ptr %46, align 4
  %47 = load i32, ptr %41, align 4
  %48 = add i32 %47, 64
  %49 = getelementptr inbounds %struct.tegra20_i2s, ptr %4, i32 0, i32 3
  store i32 %48, ptr %49, align 8
  %50 = getelementptr inbounds %struct.tegra20_i2s, ptr %4, i32 0, i32 3, i32 1
  store i32 4, ptr %50, align 4
  %51 = getelementptr inbounds %struct.tegra20_i2s, ptr %4, i32 0, i32 3, i32 2
  store i32 4, ptr %51, align 8
  call void @pm_runtime_enable(ptr noundef %3) #9
  %52 = call i32 @snd_soc_register_component(ptr noundef %3, ptr noundef nonnull @tegra20_i2s_component, ptr noundef nonnull %4, i32 noundef 1) #9
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %40
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef %52) #10
  br label %59

55:                                               ; preds = %40
  %56 = call i32 @tegra_pcm_platform_register(ptr noundef %3) #9
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6, i32 noundef %56) #10
  call void @snd_soc_unregister_component(ptr noundef %3) #9
  br label %59

59:                                               ; preds = %58, %54
  %60 = phi i32 [ -12, %54 ], [ %56, %58 ]
  call void @__pm_runtime_disable(ptr noundef %3, i1 noundef zeroext true) #9
  br label %61

61:                                               ; preds = %59, %55, %37, %31, %25, %18, %1
  %62 = phi i32 [ %20, %18 ], [ 0, %55 ], [ %27, %25 ], [ %32, %31 ], [ %39, %37 ], [ %60, %59 ], [ -12, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra20_i2s_platform_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @tegra_pcm_platform_unregister(ptr noundef %2) #9
  tail call void @snd_soc_unregister_component(ptr noundef %2) #9
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_pcm_platform_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_unregister_component(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @tegra20_i2s_probe(ptr nocapture noundef %0) #6 {
  %2 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.tegra20_i2s, ptr %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 8
  store ptr %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.tegra20_i2s, ptr %5, i32 0, i32 3
  %9 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 7
  store ptr %8, ptr %9, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra20_i2s_set_fmt(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = and i32 %1, 3840
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %29

9:                                                ; preds = %2
  %10 = trunc i32 %1 to i16
  %11 = and i16 %10, -4096
  switch i16 %11, label %29 [
    i16 16384, label %12
    i16 4096, label %13
  ]

12:                                               ; preds = %9
  br label %13

13:                                               ; preds = %12, %9
  %14 = phi i32 [ 0, %9 ], [ 33554432, %12 ]
  %15 = and i32 %1, 15
  switch i32 %15, label %29 [
    i32 4, label %16
    i32 5, label %18
    i32 1, label %24
    i32 2, label %20
    i32 3, label %22
  ]

16:                                               ; preds = %13
  %17 = or i32 %14, 3072
  br label %24

18:                                               ; preds = %13
  %19 = or i32 %14, 16780288
  br label %24

20:                                               ; preds = %13
  %21 = or i32 %14, 1024
  br label %24

22:                                               ; preds = %13
  %23 = or i32 %14, 2048
  br label %24

24:                                               ; preds = %22, %20, %18, %16, %13
  %25 = phi i32 [ %23, %22 ], [ %21, %20 ], [ %19, %18 ], [ %17, %16 ], [ %14, %13 ]
  %26 = getelementptr inbounds %struct.tegra20_i2s, ptr %6, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 0, i32 noundef 50334720, i32 noundef %25, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %29

29:                                               ; preds = %24, %13, %9, %2
  %30 = phi i32 [ 0, %24 ], [ -22, %2 ], [ -22, %9 ], [ -22, %13 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra20_i2s_startup(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = tail call zeroext i1 @device_property_present(ptr noundef %4, ptr noundef nonnull @.str.9) #9
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %8, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @tegra20_i2s_filter_rates, ptr noundef %1, i32 noundef 11, i32 noundef -1) #9
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i32 [ %9, %6 ], [ 0, %2 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra20_i2s_hw_params(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #2 {
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %55, label %15

15:                                               ; preds = %11, %3
  %16 = phi i32 [ 0, %3 ], [ 32, %11 ]
  %17 = phi i32 [ %9, %3 ], [ %13, %11 ]
  %18 = tail call i32 @llvm.cttz.i32(i32 %17, i1 true) #9, !range !9
  %19 = or i32 %18, %16
  switch i32 %19, label %55 [
    i32 2, label %22
    i32 6, label %20
    i32 10, label %21
  ]

20:                                               ; preds = %15
  br label %22

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %21, %20, %15
  %23 = phi i32 [ 880, %21 ], [ 624, %20 ], [ 112, %15 ]
  %24 = phi i32 [ 64, %21 ], [ 48, %20 ], [ 32, %15 ]
  %25 = getelementptr inbounds %struct.tegra20_i2s, ptr %7, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 0, i32 noundef 880, i32 noundef %23, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %28 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = mul i32 %24, %29
  %33 = mul i32 %32, %31
  %34 = getelementptr inbounds %struct.tegra20_i2s, ptr %7, i32 0, i32 1
  %35 = load ptr, ptr %34, align 8
  %36 = tail call i32 @clk_set_rate(ptr noundef %35, i32 noundef %33) #9
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.11, i32 noundef %36) #10
  br label %55

39:                                               ; preds = %22
  %40 = shl i32 %29, 1
  %41 = freeze i32 %40
  %42 = sdiv i32 %33, %41
  %43 = add i32 %42, -1
  %44 = icmp ugt i32 %43, 2047
  br i1 %44, label %55, label %45

45:                                               ; preds = %39
  %46 = mul i32 %42, %41
  %47 = sub i32 %33, %46
  %48 = icmp eq i32 %47, 0
  %49 = or i32 %43, 4096
  %50 = select i1 %48, i32 %43, i32 %49
  %51 = load ptr, ptr %25, align 4
  %52 = tail call i32 @regmap_write(ptr noundef %51, i32 noundef 8, i32 noundef %50) #9
  %53 = load ptr, ptr %25, align 4
  %54 = tail call i32 @regmap_write(ptr noundef %53, i32 noundef 12, i32 noundef 17) #9
  br label %55

55:                                               ; preds = %45, %39, %38, %15, %11
  %56 = phi i32 [ %36, %38 ], [ 0, %45 ], [ -22, %15 ], [ -22, %39 ], [ -22, %11 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra20_i2s_trigger(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  switch i32 %1, label %28 [
    i32 1, label %8
    i32 4, label %8
    i32 6, label %8
    i32 0, label %18
    i32 3, label %18
    i32 5, label %18
  ]

8:                                                ; preds = %3, %3, %3
  %9 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  %12 = getelementptr inbounds %struct.tegra20_i2s, ptr %7, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  br i1 %11, label %14, label %16

14:                                               ; preds = %8
  %15 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 0, i32 noundef 536870912, i32 noundef 536870912, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %28

16:                                               ; preds = %8
  %17 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 0, i32 noundef 268435456, i32 noundef 268435456, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %28

18:                                               ; preds = %3, %3, %3
  %19 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr inbounds %struct.tegra20_i2s, ptr %7, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  br i1 %21, label %24, label %26

24:                                               ; preds = %18
  %25 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 0, i32 noundef 536870912, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %28

26:                                               ; preds = %18
  %27 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 0, i32 noundef 268435456, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %28

28:                                               ; preds = %26, %24, %16, %14, %3
  %29 = phi i32 [ -22, %3 ], [ 0, %24 ], [ 0, %26 ], [ 0, %14 ], [ 0, %16 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_rule_add(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra20_i2s_filter_rates(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %1, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %1, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_soc_dai, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.tegra20_i2s, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = tail call ptr @clk_get_parent(ptr noundef %12) #9
  %14 = tail call i32 @clk_get_rate(ptr noundef %13) #9
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %61, label %16

16:                                               ; preds = %2
  %17 = add i32 %4, -8
  %18 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 %17
  %19 = urem i32 %14, 1024000
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = urem i32 %14, 1411200
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i32 2, i32 0
  %25 = or i32 %24, %21
  %26 = urem i32 %14, 2048000
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, i32 4, i32 0
  %29 = or i32 %28, %25
  %30 = urem i32 %14, 2822400
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i32 8, i32 0
  %33 = or i32 %32, %29
  %34 = urem i32 %14, 4096000
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %35, i32 16, i32 0
  %37 = or i32 %36, %33
  %38 = urem i32 %14, 5644800
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i32 32, i32 0
  %41 = or i32 %40, %37
  %42 = urem i32 %14, 6144000
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, i32 64, i32 0
  %45 = or i32 %44, %41
  %46 = urem i32 %14, 8192000
  %47 = icmp eq i32 %46, 0
  %48 = select i1 %47, i32 128, i32 0
  %49 = or i32 %48, %45
  %50 = urem i32 %14, 11289600
  %51 = icmp eq i32 %50, 0
  %52 = select i1 %51, i32 256, i32 0
  %53 = or i32 %52, %49
  %54 = urem i32 %14, 12288000
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %55, i32 512, i32 0
  %57 = or i32 %56, %53
  %58 = icmp eq i32 %57, 0
  %59 = select i1 %58, i32 1023, i32 %57
  %60 = tail call i32 @snd_interval_list(ptr noundef %18, i32 noundef 10, ptr noundef nonnull @tegra20_i2s_rates, i32 noundef %59) #9
  br label %65

61:                                               ; preds = %2
  %62 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.10, i32 noundef %14) #10
  %63 = icmp eq i32 %14, 0
  %64 = select i1 %63, i32 -22, i32 %14
  br label %65

65:                                               ; preds = %61, %16
  %66 = phi i32 [ %64, %61 ], [ %60, %16 ]
  ret i32 %66
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_interval_list(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tegra20_i2s_wr_rd_reg(ptr nocapture noundef readnone %0, i32 noundef %1) #8 {
  switch i32 %1, label %3 [
    i32 0, label %4
    i32 4, label %4
    i32 8, label %4
    i32 12, label %4
    i32 16, label %4
    i32 20, label %4
    i32 32, label %4
    i32 36, label %4
    i32 64, label %4
    i32 128, label %4
  ]

3:                                                ; preds = %2
  br label %4

4:                                                ; preds = %3, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %5 = phi i1 [ false, %3 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ]
  ret i1 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tegra20_i2s_volatile_reg(ptr nocapture noundef readnone %0, i32 noundef %1) #8 {
  switch i32 %1, label %3 [
    i32 4, label %4
    i32 12, label %4
    i32 64, label %4
    i32 128, label %4
  ]

3:                                                ; preds = %2
  br label %4

4:                                                ; preds = %3, %2, %2, %2, %2
  %5 = phi i1 [ false, %3 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ]
  ret i1 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tegra20_i2s_precious_reg(ptr nocapture noundef readnone %0, i32 noundef %1) #8 {
  %3 = add i32 %1, -64
  %4 = and i32 %3, -65
  %5 = icmp eq i32 %4, 0
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
define internal i32 @tegra20_i2s_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra20_i2s, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  tail call void @regcache_cache_only(ptr noundef %5, i1 noundef zeroext true) #9
  %6 = getelementptr inbounds %struct.tegra20_i2s, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  tail call void @clk_disable(ptr noundef %7) #9
  tail call void @clk_unprepare(ptr noundef %7) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra20_i2s_runtime_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra20_i2s, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @reset_control_assert(ptr noundef %5) #9
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %33

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.tegra20_i2s, ptr %3, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = tail call i32 @clk_prepare(ptr noundef %10) #9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = tail call i32 @clk_enable(ptr noundef %10) #9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  tail call void @clk_unprepare(ptr noundef %10) #9
  br label %17

17:                                               ; preds = %16, %8
  %18 = phi i32 [ %14, %16 ], [ %11, %8 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %18) #10
  br label %33

19:                                               ; preds = %13
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #9
  %20 = load ptr, ptr %4, align 8
  %21 = tail call i32 @reset_control_deassert(ptr noundef %20) #9
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.tegra20_i2s, ptr %3, i32 0, i32 4
  %25 = load ptr, ptr %24, align 4
  tail call void @regcache_cache_only(ptr noundef %25, i1 noundef zeroext false) #9
  %26 = load ptr, ptr %24, align 4
  tail call void @regcache_mark_dirty(ptr noundef %26) #9
  %27 = load ptr, ptr %24, align 4
  %28 = tail call i32 @regcache_sync(ptr noundef %27) #9
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %23, %19
  %31 = phi i32 [ %21, %19 ], [ %28, %23 ]
  %32 = load ptr, ptr %9, align 8
  tail call void @clk_disable(ptr noundef %32) #9
  tail call void @clk_unprepare(ptr noundef %32) #9
  br label %33

33:                                               ; preds = %30, %23, %17, %1
  %34 = phi i32 [ %18, %17 ], [ %31, %30 ], [ %6, %1 ], [ 0, %23 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
