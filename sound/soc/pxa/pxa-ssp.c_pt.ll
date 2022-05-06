; ModuleID = '/llk/IR/sound/soc/pxa/pxa-ssp.c_pt.bc'
source_filename = "../sound/soc/pxa/pxa-ssp.c"
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
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.88, ptr }
%union.anon.88 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.pxa_ssp_clock_mode = type { i32, i32, i8, i8 }
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
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.ssp_device = type { ptr, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i32, i32, ptr }
%struct.ssp_priv = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@pxa_ssp_of_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mrvl,pxa-ssp-dai\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author232 = internal constant [56 x i8] c"author=Mark Brown <broonie@opensource.wolfsonmicro.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description233 = internal constant [38 x i8] c"description=PXA SSP/PCM SoC Interface\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias235 = internal constant [27 x i8] c"alias=platform:pxa-ssp-dai\00", section ".modinfo", align 1
@asoc_ssp_driver = internal global %struct.platform_driver { ptr @asoc_ssp_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pxa_ssp_of_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [12 x i8] c"pxa-ssp-dai\00", align 1
@pxa_ssp_component = internal constant %struct.snd_soc_component_driver { ptr @.str.1, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @pxa_ssp_suspend, ptr @pxa_ssp_resume, ptr null, ptr null, ptr @pxa2xx_soc_pcm_new, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pxa2xx_soc_pcm_open, ptr @pxa2xx_soc_pcm_close, ptr null, ptr @pxa2xx_soc_pcm_hw_params, ptr null, ptr @pxa2xx_soc_pcm_prepare, ptr @pxa2xx_soc_pcm_trigger, ptr null, ptr @pxa2xx_soc_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@pxa_ssp_dai = internal global %struct.snd_soc_dai_driver { ptr null, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @pxa_ssp_probe, ptr @pxa_ssp_remove, ptr null, ptr null, ptr @pxa_ssp_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr null, i64 1028, i32 2046, i32 0, i32 0, i32 1, i32 8, i32 0 }, %struct.snd_soc_pcm_stream { ptr null, i64 1028, i32 2046, i32 0, i32 0, i32 1, i32 8, i32 0 }, i8 0, i32 0, i32 0 }, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"pxa-ssp\00", align 1
@pxa_ssp_dai_ops = internal constant %struct.snd_soc_dai_ops { ptr @pxa_ssp_set_dai_sysclk, ptr null, ptr null, ptr null, ptr @pxa_ssp_set_dai_fmt, ptr null, ptr @pxa_ssp_set_dai_tdm_slot, ptr null, ptr null, ptr @pxa_ssp_set_dai_tristate, ptr null, ptr null, ptr null, ptr @pxa_ssp_startup, ptr @pxa_ssp_shutdown, ptr @pxa_ssp_hw_params, ptr null, ptr null, ptr @pxa_ssp_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"unable to get 'port' phandle\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"SoC audio\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"extclk\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@pxa_ssp_clock_modes = internal unnamed_addr constant [8 x %struct.pxa_ssp_clock_mode] [%struct.pxa_ssp_clock_mode { i32 8000, i32 32842000, i8 5, i8 0 }, %struct.pxa_ssp_clock_mode { i32 11025, i32 5622000, i8 2, i8 0 }, %struct.pxa_ssp_clock_mode { i32 16000, i32 32842000, i8 4, i8 0 }, %struct.pxa_ssp_clock_mode { i32 22050, i32 5622000, i8 1, i8 0 }, %struct.pxa_ssp_clock_mode { i32 44100, i32 11345000, i8 1, i8 0 }, %struct.pxa_ssp_clock_mode { i32 48000, i32 12235000, i8 1, i8 0 }, %struct.pxa_ssp_clock_mode { i32 96000, i32 12235000, i8 2, i8 1 }, %struct.pxa_ssp_clock_mode zeroinitializer], align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"No TDM timeslot configured\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias235, ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_description233, ptr @__UNIQUE_ID_license234], section "llvm.metadata"

@__mod_of__pxa_ssp_of_ids_device_table = dso_local alias [2 x %struct.of_device_id], ptr @pxa_ssp_of_ids

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @asoc_ssp_driver, ptr noundef nonnull @__this_module) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @asoc_ssp_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @asoc_ssp_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call i32 @devm_snd_soc_register_component(ptr noundef %2, ptr noundef nonnull @pxa_ssp_component, ptr noundef nonnull @pxa_ssp_dai, i32 noundef 1) #9
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pxa_ssp_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ssp_device, ptr %6, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @clk_prepare(ptr noundef %12) #9
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = tail call i32 @clk_enable(ptr noundef %12) #9
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  tail call void @clk_unprepare(ptr noundef %12) #9
  br label %19

19:                                               ; preds = %18, %15, %10, %1
  %20 = getelementptr inbounds %struct.ssp_device, ptr %6, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #9, !srcloc !8
  %23 = getelementptr inbounds %struct.ssp_priv, ptr %5, i32 0, i32 6
  store i32 %22, ptr %23, align 4
  %24 = load ptr, ptr %20, align 4
  %25 = getelementptr i8, ptr %24, i32 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #9, !srcloc !8
  %27 = getelementptr inbounds %struct.ssp_priv, ptr %5, i32 0, i32 7
  store i32 %26, ptr %27, align 4
  %28 = load ptr, ptr %20, align 4
  %29 = getelementptr i8, ptr %28, i32 40
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #9, !srcloc !8
  %31 = getelementptr inbounds %struct.ssp_priv, ptr %5, i32 0, i32 8
  store i32 %30, ptr %31, align 4
  %32 = load ptr, ptr %20, align 4
  %33 = getelementptr i8, ptr %32, i32 44
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #9, !srcloc !8
  %35 = getelementptr inbounds %struct.ssp_priv, ptr %5, i32 0, i32 9
  store i32 %34, ptr %35, align 4
  %36 = load ptr, ptr %20, align 4
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #9, !srcloc !8
  %38 = and i32 %37, -129
  %39 = load ptr, ptr %20, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %38) #9, !srcloc !9
  %40 = getelementptr inbounds %struct.ssp_device, ptr %6, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  tail call void @clk_disable(ptr noundef %41) #9
  tail call void @clk_unprepare(ptr noundef %41) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pxa_ssp_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ssp_device, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @clk_prepare(ptr noundef %8) #9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = tail call i32 @clk_enable(ptr noundef %8) #9
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call void @clk_unprepare(ptr noundef %8) #9
  br label %15

15:                                               ; preds = %14, %11, %1
  %16 = getelementptr inbounds %struct.ssp_device, ptr %6, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 10485888) #9, !srcloc !9
  %19 = getelementptr inbounds %struct.ssp_priv, ptr %5, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, -129
  %22 = load ptr, ptr %16, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %21) #9, !srcloc !9
  %23 = getelementptr inbounds %struct.ssp_priv, ptr %5, i32 0, i32 7
  %24 = load i32, ptr %23, align 4
  %25 = load ptr, ptr %16, align 4
  %26 = getelementptr i8, ptr %25, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #9, !srcloc !9
  %27 = getelementptr inbounds %struct.ssp_priv, ptr %5, i32 0, i32 8
  %28 = load i32, ptr %27, align 4
  %29 = load ptr, ptr %16, align 4
  %30 = getelementptr i8, ptr %29, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #9, !srcloc !9
  %31 = getelementptr inbounds %struct.ssp_priv, ptr %5, i32 0, i32 9
  %32 = load i32, ptr %31, align 4
  %33 = load ptr, ptr %16, align 4
  %34 = getelementptr i8, ptr %33, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #9, !srcloc !9
  %35 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 5
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %15
  %39 = load ptr, ptr %16, align 4
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #9, !srcloc !8
  %41 = or i32 %40, 128
  %42 = load ptr, ptr %16, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %41) #9, !srcloc !9
  br label %45

43:                                               ; preds = %15
  %44 = load ptr, ptr %7, align 4
  tail call void @clk_disable(ptr noundef %44) #9
  tail call void @clk_unprepare(ptr noundef %44) #9
  br label %45

45:                                               ; preds = %43, %38
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pxa2xx_soc_pcm_new(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pxa2xx_soc_pcm_open(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pxa2xx_soc_pcm_close(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pxa2xx_soc_pcm_hw_params(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pxa2xx_soc_pcm_prepare(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pxa2xx_soc_pcm_trigger(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pxa2xx_soc_pcm_pointer(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pxa_ssp_probe(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 40) #10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %40, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 25
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %29, label %12

12:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #9, !annotation !10
  %13 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %10, ptr noundef nonnull @.str.2, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #9
  %14 = icmp ne i32 %13, 0
  %15 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #9
  %16 = icmp eq ptr %15, null
  %17 = select i1 %14, i1 true, i1 %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.3) #11
  br label %39

19:                                               ; preds = %12
  %20 = call ptr @pxa_ssp_request_of(ptr noundef nonnull %15, ptr noundef nonnull @.str.4) #9
  store ptr %20, ptr %6, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %39, label %22

22:                                               ; preds = %19
  %23 = call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull @.str.5) #9
  %24 = getelementptr inbounds %struct.ssp_priv, ptr %6, i32 0, i32 1
  store ptr %23, ptr %24, align 4
  %25 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %26, label %35

26:                                               ; preds = %22
  %27 = icmp eq ptr %23, inttoptr (i32 -517 to ptr)
  br i1 %27, label %40, label %28

28:                                               ; preds = %26
  store ptr null, ptr %24, align 4
  br label %35

29:                                               ; preds = %8
  %30 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, 1
  %33 = tail call ptr @pxa_ssp_request(i32 noundef %32, ptr noundef nonnull @.str.4) #9
  store ptr %33, ptr %6, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %29, %28, %22
  %36 = getelementptr inbounds %struct.ssp_priv, ptr %6, i32 0, i32 4
  store i32 -1, ptr %36, align 8
  %37 = load ptr, ptr %3, align 4
  %38 = getelementptr inbounds %struct.device, ptr %37, i32 0, i32 8
  store ptr %6, ptr %38, align 8
  br label %40

39:                                               ; preds = %29, %19, %18
  call void @kfree(ptr noundef nonnull %6) #9
  br label %40

40:                                               ; preds = %39, %35, %26, %1
  %41 = phi i32 [ -19, %39 ], [ 0, %35 ], [ -12, %1 ], [ -517, %26 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pxa_ssp_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  tail call void @pxa_ssp_free(ptr noundef %6) #9
  tail call void @kfree(ptr noundef %5) #9
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pxa_ssp_request_of(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pxa_ssp_request(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pxa_ssp_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pxa_ssp_set_dai_sysclk(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ssp_device, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #9, !srcloc !8
  %13 = and i32 %12, 1071644607
  %14 = getelementptr inbounds %struct.ssp_priv, ptr %8, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = tail call i32 @clk_set_rate(ptr noundef nonnull %15, i32 noundef %2) #9
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %69, label %30

20:                                               ; preds = %4
  switch i32 %1, label %69 [
    i32 4, label %21
    i32 0, label %23
    i32 1, label %30
    i32 2, label %33
    i32 3, label %36
  ]

21:                                               ; preds = %20
  %22 = or i32 %13, -2147483648
  br label %48

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.ssp_device, ptr %9, i32 0, i32 7
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 1
  %27 = getelementptr inbounds %struct.ssp_priv, ptr %8, i32 0, i32 3
  br i1 %26, label %28, label %29

28:                                               ; preds = %23
  store i32 1843200, ptr %27, align 4
  br label %48

29:                                               ; preds = %23
  store i32 13000000, ptr %27, align 4
  br label %48

30:                                               ; preds = %20, %17
  %31 = getelementptr inbounds %struct.ssp_priv, ptr %8, i32 0, i32 3
  store i32 %2, ptr %31, align 4
  %32 = or i32 %13, 64
  br label %48

33:                                               ; preds = %20
  %34 = getelementptr inbounds %struct.ssp_priv, ptr %8, i32 0, i32 3
  store i32 %2, ptr %34, align 4
  %35 = or i32 %13, -2145386496
  br label %48

36:                                               ; preds = %20
  %37 = getelementptr inbounds %struct.ssp_priv, ptr %8, i32 0, i32 3
  store i32 0, ptr %37, align 4
  %38 = load ptr, ptr %10, align 4
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #9, !srcloc !8
  %40 = getelementptr inbounds %struct.ssp_device, ptr %9, i32 0, i32 7
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 1
  %43 = or i32 %39, -256
  %44 = and i32 %39, -1048321
  %45 = select i1 %42, i32 %43, i32 %44
  %46 = load ptr, ptr %10, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %45) #9, !srcloc !9
  %47 = or i32 %13, 1073741824
  br label %48

48:                                               ; preds = %36, %33, %30, %29, %28, %21
  %49 = phi i32 [ %47, %36 ], [ %35, %33 ], [ %32, %30 ], [ %13, %28 ], [ %13, %29 ], [ %22, %21 ]
  %50 = getelementptr inbounds %struct.ssp_device, ptr %9, i32 0, i32 7
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 4
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.ssp_device, ptr %9, i32 0, i32 2
  %55 = load ptr, ptr %54, align 4
  tail call void @clk_disable(ptr noundef %55) #9
  tail call void @clk_unprepare(ptr noundef %55) #9
  br label %56

56:                                               ; preds = %53, %48
  %57 = load ptr, ptr %10, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %49) #9, !srcloc !9
  %58 = load i32, ptr %50, align 4
  %59 = icmp eq i32 %58, 4
  br i1 %59, label %69, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.ssp_device, ptr %9, i32 0, i32 2
  %62 = load ptr, ptr %61, align 4
  %63 = tail call i32 @clk_prepare(ptr noundef %62) #9
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = tail call i32 @clk_enable(ptr noundef %62) #9
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  tail call void @clk_unprepare(ptr noundef %62) #9
  br label %69

69:                                               ; preds = %68, %65, %60, %56, %20, %17
  %70 = phi i32 [ %18, %17 ], [ -19, %20 ], [ 0, %56 ], [ 0, %60 ], [ 0, %65 ], [ 0, %68 ]
  ret i32 %70
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @pxa_ssp_set_dai_fmt(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = trunc i32 %1 to i16
  %8 = and i16 %7, -4096
  switch i16 %8, label %16 [
    i16 4096, label %9
    i16 12288, label %9
    i16 16384, label %9
  ]

9:                                                ; preds = %2, %2, %2
  %10 = lshr i32 %1, 8
  %11 = and i32 %10, 15
  switch i32 %11, label %16 [
    i32 0, label %12
    i32 2, label %12
    i32 4, label %12
    i32 3, label %12
  ]

12:                                               ; preds = %9, %9, %9, %9
  %13 = and i32 %1, 15
  switch i32 %13, label %16 [
    i32 1, label %14
    i32 4, label %14
    i32 5, label %14
  ]

14:                                               ; preds = %12, %12, %12
  %15 = getelementptr inbounds %struct.ssp_priv, ptr %6, i32 0, i32 4
  store i32 %1, ptr %15, align 4
  br label %16

16:                                               ; preds = %14, %12, %9, %2
  %17 = phi i32 [ 0, %14 ], [ -22, %2 ], [ -22, %9 ], [ -22, %12 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pxa_ssp_set_dai_tdm_slot(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ssp_device, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #9, !srcloc !8
  %14 = and i32 %13, 2028994544
  %15 = icmp sgt i32 %4, 16
  %16 = add i32 %4, -17
  %17 = or i32 %16, 1048576
  %18 = add i32 %4, -1
  %19 = select i1 %15, i32 %17, i32 %18
  %20 = or i32 %14, %19
  %21 = icmp sgt i32 %3, 1
  br i1 %21, label %22, label %31

22:                                               ; preds = %5
  %23 = shl i32 %3, 24
  %24 = add i32 %23, 2130706432
  %25 = or i32 %24, %20
  %26 = or i32 %25, -2147483648
  %27 = load ptr, ptr %11, align 4
  %28 = getelementptr i8, ptr %27, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %1) #9, !srcloc !9
  %29 = load ptr, ptr %11, align 4
  %30 = getelementptr i8, ptr %29, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %2) #9, !srcloc !9
  br label %31

31:                                               ; preds = %22, %5
  %32 = phi i32 [ %26, %22 ], [ %20, %5 ]
  %33 = load ptr, ptr %11, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %32) #9, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pxa_ssp_set_dai_tristate(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ssp_device, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #9, !srcloc !8
  %12 = icmp eq i32 %1, 0
  %13 = and i32 %11, -1073741825
  %14 = select i1 %12, i32 1073741824, i32 0
  %15 = or i32 %13, %14
  %16 = load ptr, ptr %8, align 4
  %17 = getelementptr i8, ptr %16, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #9, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pxa_ssp_startup(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @snd_soc_dai_active(ptr noundef %1) #9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ssp_device, ptr %7, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @clk_prepare(ptr noundef %12) #9
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = tail call i32 @clk_enable(ptr noundef %12) #9
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  tail call void @clk_unprepare(ptr noundef %12) #9
  br label %19

19:                                               ; preds = %18, %15, %10
  %20 = getelementptr inbounds %struct.ssp_device, ptr %7, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #9, !srcloc !8
  %23 = and i32 %22, -129
  %24 = load ptr, ptr %20, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %23) #9, !srcloc !9
  br label %25

25:                                               ; preds = %19, %2
  %26 = getelementptr inbounds %struct.ssp_priv, ptr %6, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 @clk_prepare(ptr noundef %27) #9
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = tail call i32 @clk_enable(ptr noundef %27) #9
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  tail call void @clk_unprepare(ptr noundef %27) #9
  br label %34

34:                                               ; preds = %33, %30, %25
  %35 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %36 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %35, i32 noundef 3520, i32 noundef 36) #10
  %37 = icmp eq ptr %36, null
  br i1 %37, label %47, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, ptr @.str.6, ptr @.str.7
  %43 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, ptr %36, i32 0, i32 4
  store ptr %42, ptr %43, align 8
  %44 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 8
  %45 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 7
  %46 = select i1 %41, ptr %45, ptr %44
  store ptr %36, ptr %46, align 4
  br label %47

47:                                               ; preds = %38, %34
  %48 = phi i32 [ 0, %38 ], [ -12, %34 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pxa_ssp_shutdown(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @snd_soc_dai_active(ptr noundef %1) #9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ssp_device, ptr %7, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #9, !srcloc !8
  %14 = and i32 %13, -129
  %15 = load ptr, ptr %11, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %14) #9, !srcloc !9
  %16 = getelementptr inbounds %struct.ssp_device, ptr %7, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  tail call void @clk_disable(ptr noundef %17) #9
  tail call void @clk_unprepare(ptr noundef %17) #9
  br label %18

18:                                               ; preds = %10, %2
  %19 = getelementptr inbounds %struct.ssp_priv, ptr %6, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  tail call void @clk_disable(ptr noundef %20) #9
  tail call void @clk_unprepare(ptr noundef %20) #9
  %21 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  %24 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 7
  %25 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 8
  %26 = select i1 %23, ptr %24, ptr %25
  %27 = load ptr, ptr %26, align 4
  tail call void @kfree(ptr noundef %27) #9
  %28 = load i32, ptr %21, align 4
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, ptr %24, ptr %25
  store ptr null, ptr %30, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pxa_ssp_hw_params(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #2 {
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %19, %3
  %15 = phi i32 [ 0, %3 ], [ 32, %19 ]
  %16 = phi i32 [ %12, %3 ], [ %21, %19 ]
  %17 = tail call i32 @llvm.cttz.i32(i32 %16, i1 true) #9, !range !11
  %18 = or i32 %17, %15
  br label %23

19:                                               ; preds = %3
  %20 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %14

23:                                               ; preds = %19, %14
  %24 = phi i32 [ %18, %14 ], [ 0, %19 ]
  %25 = tail call i32 @snd_pcm_format_physical_width(i32 noundef %24) #9
  %26 = getelementptr inbounds %struct.ssp_device, ptr %8, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 48
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #9, !srcloc !8
  %30 = and i32 %29, 15
  %31 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = sdiv i32 %25, 8
  %34 = mul i32 %33, %10
  %35 = mul i32 %34, %32
  %36 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  %39 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 7
  %40 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 8
  %41 = select i1 %38, ptr %39, ptr %40
  %42 = load ptr, ptr %41, align 4
  %43 = icmp ne i32 %10, 2
  %44 = icmp eq i32 %30, 1
  %45 = select i1 %43, i1 true, i1 %44
  %46 = icmp ne i32 %25, 32
  %47 = select i1 %45, i1 %46, i1 false
  %48 = select i1 %47, i32 2, i32 4
  %49 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, ptr %42, i32 0, i32 1
  store i32 %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, ptr %42, i32 0, i32 2
  store i32 16, ptr %50, align 4
  %51 = getelementptr inbounds %struct.ssp_device, ptr %8, i32 0, i32 4
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %52, 16
  store i32 %53, ptr %42, align 4
  %54 = load ptr, ptr %26, align 4
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #9, !srcloc !8
  %56 = and i32 %55, 128
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %262

58:                                               ; preds = %23
  %59 = getelementptr inbounds %struct.ssp_priv, ptr %7, i32 0, i32 5
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr inbounds %struct.ssp_priv, ptr %7, i32 0, i32 4
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %138, label %64

64:                                               ; preds = %58
  %65 = load ptr, ptr %7, align 4
  %66 = getelementptr inbounds %struct.ssp_device, ptr %65, i32 0, i32 3
  %67 = load ptr, ptr %66, align 4
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #9, !srcloc !8
  %69 = and i32 %68, 2147483599
  %70 = load ptr, ptr %66, align 4
  %71 = getelementptr i8, ptr %70, i32 4
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #9, !srcloc !8
  %73 = and i32 %72, -331366337
  %74 = load ptr, ptr %66, align 4
  %75 = getelementptr i8, ptr %74, i32 44
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #9, !srcloc !8
  %77 = and i32 %76, -8
  %78 = or i32 %73, 7552
  %79 = load i32, ptr %61, align 4
  %80 = trunc i32 %79 to i16
  %81 = and i16 %80, -4096
  switch i16 %81, label %262 [
    i16 4096, label %82
    i16 12288, label %84
    i16 16384, label %86
  ]

82:                                               ; preds = %64
  %83 = or i32 %73, 318774656
  br label %86

84:                                               ; preds = %64
  %85 = or i32 %73, 301997440
  br label %86

86:                                               ; preds = %84, %82, %64
  %87 = phi i32 [ %78, %64 ], [ %85, %84 ], [ %83, %82 ]
  %88 = lshr i32 %79, 8
  %89 = and i32 %88, 15
  switch i32 %89, label %262 [
    i32 0, label %90
    i32 2, label %96
    i32 4, label %92
    i32 3, label %94
  ]

90:                                               ; preds = %86
  %91 = or i32 %77, 4
  br label %96

92:                                               ; preds = %86
  %93 = or i32 %77, 2
  br label %96

94:                                               ; preds = %86
  %95 = or i32 %77, 6
  br label %96

96:                                               ; preds = %94, %92, %90, %86
  %97 = phi i32 [ %95, %94 ], [ %93, %92 ], [ %77, %86 ], [ %91, %90 ]
  %98 = and i32 %79, 15
  switch i32 %98, label %262 [
    i32 1, label %99
    i32 4, label %101
    i32 5, label %103
  ]

99:                                               ; preds = %96
  %100 = or i32 %69, 48
  br label %106

101:                                              ; preds = %96
  %102 = or i32 %97, 33554432
  br label %103

103:                                              ; preds = %101, %96
  %104 = phi i32 [ %97, %96 ], [ %102, %101 ]
  %105 = or i32 %68, -2147483600
  br label %106

106:                                              ; preds = %103, %99
  %107 = phi i32 [ %105, %103 ], [ %100, %99 ]
  %108 = phi i32 [ %104, %103 ], [ %97, %99 ]
  %109 = or i32 %87, 12582912
  %110 = load ptr, ptr %66, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 %107) #9, !srcloc !9
  %111 = load ptr, ptr %66, align 4
  %112 = getelementptr i8, ptr %111, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %112, i32 %109) #9, !srcloc !9
  %113 = load ptr, ptr %66, align 4
  %114 = getelementptr i8, ptr %113, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %114, i32 %108) #9, !srcloc !9
  %115 = load i32, ptr %61, align 4
  %116 = trunc i32 %115 to i16
  %117 = and i16 %116, -4096
  switch i16 %117, label %136 [
    i16 4096, label %118
    i16 12288, label %118
  ]

118:                                              ; preds = %106, %106
  %119 = load ptr, ptr %66, align 4
  %120 = getelementptr i8, ptr %119, i32 4
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %120) #9, !srcloc !8
  %122 = or i32 %121, 268435456
  %123 = load ptr, ptr %66, align 4
  %124 = getelementptr i8, ptr %123, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %124, i32 %122) #9, !srcloc !9
  %125 = load ptr, ptr %66, align 4
  %126 = getelementptr i8, ptr %125, i32 8
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %126) #9, !srcloc !8
  %128 = and i32 %127, 16
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %136, label %130

130:                                              ; preds = %130, %118
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !13
  %131 = load ptr, ptr %66, align 4
  %132 = getelementptr i8, ptr %131, i32 8
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %132) #9, !srcloc !8
  %134 = and i32 %133, 16
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %130

136:                                              ; preds = %130, %118, %106
  %137 = load i32, ptr %61, align 4
  store i32 %137, ptr %59, align 4
  br label %138

138:                                              ; preds = %136, %58
  %139 = load ptr, ptr %26, align 4
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %139) #9, !srcloc !8
  %141 = and i32 %140, -1048592
  %142 = load i32, ptr %11, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %138
  %145 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 1
  %146 = load i32, ptr %145, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %164, label %148

148:                                              ; preds = %144, %138
  %149 = phi i32 [ 0, %138 ], [ 32, %144 ]
  %150 = phi i32 [ %142, %138 ], [ %146, %144 ]
  %151 = tail call i32 @llvm.cttz.i32(i32 %150, i1 true) #9, !range !11
  %152 = or i32 %151, %149
  switch i32 %152, label %164 [
    i32 2, label %153
    i32 6, label %160
    i32 10, label %162
  ]

153:                                              ; preds = %148
  %154 = getelementptr inbounds %struct.ssp_device, ptr %8, i32 0, i32 7
  %155 = load i32, ptr %154, align 4
  %156 = icmp eq i32 %155, 4
  %157 = or i32 %141, 536870912
  %158 = select i1 %156, i32 %157, i32 %141
  %159 = or i32 %158, 15
  br label %164

160:                                              ; preds = %148
  %161 = or i32 %141, 1048583
  br label %164

162:                                              ; preds = %148
  %163 = or i32 %140, 1048591
  br label %164

164:                                              ; preds = %162, %160, %153, %148, %144
  %165 = phi i32 [ %141, %148 ], [ %163, %162 ], [ %161, %160 ], [ %159, %153 ], [ %141, %144 ]
  %166 = load ptr, ptr %26, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %166, i32 %165) #9, !srcloc !9
  %167 = and i32 %165, 1073741824
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %201, label %169

169:                                              ; preds = %164
  %170 = tail call fastcc i32 @pxa_ssp_set_pll(ptr noundef %7, i32 noundef %35)
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %225

172:                                              ; preds = %169
  switch i32 %32, label %173 [
    i32 8000, label %180
    i32 11025, label %174
    i32 16000, label %175
    i32 22050, label %176
    i32 44100, label %177
    i32 48000, label %178
    i32 96000, label %179
  ]

173:                                              ; preds = %172
  br label %180

174:                                              ; preds = %172
  br label %180

175:                                              ; preds = %172
  br label %180

176:                                              ; preds = %172
  br label %180

177:                                              ; preds = %172
  br label %180

178:                                              ; preds = %172
  br label %180

179:                                              ; preds = %172
  br label %180

180:                                              ; preds = %179, %178, %177, %176, %175, %174, %173, %172
  %181 = phi ptr [ @pxa_ssp_clock_modes, %172 ], [ getelementptr inbounds ([8 x %struct.pxa_ssp_clock_mode], ptr @pxa_ssp_clock_modes, i32 0, i32 7), %173 ], [ getelementptr inbounds ([8 x %struct.pxa_ssp_clock_mode], ptr @pxa_ssp_clock_modes, i32 0, i32 1), %174 ], [ getelementptr inbounds ([8 x %struct.pxa_ssp_clock_mode], ptr @pxa_ssp_clock_modes, i32 0, i32 2), %175 ], [ getelementptr inbounds ([8 x %struct.pxa_ssp_clock_mode], ptr @pxa_ssp_clock_modes, i32 0, i32 3), %176 ], [ getelementptr inbounds ([8 x %struct.pxa_ssp_clock_mode], ptr @pxa_ssp_clock_modes, i32 0, i32 4), %177 ], [ getelementptr inbounds ([8 x %struct.pxa_ssp_clock_mode], ptr @pxa_ssp_clock_modes, i32 0, i32 5), %178 ], [ getelementptr inbounds ([8 x %struct.pxa_ssp_clock_mode], ptr @pxa_ssp_clock_modes, i32 0, i32 6), %179 ]
  %182 = phi i1 [ false, %172 ], [ true, %173 ], [ false, %174 ], [ false, %175 ], [ false, %176 ], [ false, %177 ], [ false, %178 ], [ false, %179 ]
  br i1 %182, label %262, label %183

183:                                              ; preds = %180
  %184 = tail call fastcc i32 @pxa_ssp_set_pll(ptr noundef %7, i32 noundef %35)
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %262, label %186

186:                                              ; preds = %183
  %187 = getelementptr inbounds %struct.pxa_ssp_clock_mode, ptr %181, i32 0, i32 2
  %188 = load ptr, ptr %26, align 4
  %189 = getelementptr i8, ptr %188, i32 60
  %190 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %189) #9, !srcloc !8
  %191 = and i32 %190, -8
  %192 = load i8, ptr %187, align 4
  %193 = zext i8 %192 to i32
  %194 = or i32 %191, %193
  %195 = getelementptr inbounds %struct.pxa_ssp_clock_mode, ptr %181, i32 0, i32 3
  %196 = load i8, ptr %195, align 1
  %197 = zext i8 %196 to i32
  %198 = or i32 %194, %197
  %199 = load ptr, ptr %26, align 4
  %200 = getelementptr i8, ptr %199, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %200, i32 %198) #9, !srcloc !9
  br label %225

201:                                              ; preds = %164
  %202 = and i32 %165, 64
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %225, label %204

204:                                              ; preds = %201
  %205 = sdiv i32 %35, %32
  %206 = load ptr, ptr %26, align 4
  %207 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %206) #9, !srcloc !8
  %208 = getelementptr inbounds %struct.ssp_device, ptr %8, i32 0, i32 7
  %209 = load i32, ptr %208, align 4
  %210 = icmp eq i32 %209, 1
  br i1 %210, label %211, label %217

211:                                              ; preds = %204
  %212 = and i32 %207, -65281
  %213 = shl i32 %205, 7
  %214 = add i32 %213, -256
  %215 = and i32 %214, -256
  %216 = or i32 %212, %215
  br label %222

217:                                              ; preds = %204
  %218 = and i32 %207, -1048321
  %219 = shl i32 %205, 8
  %220 = add i32 %219, -256
  %221 = or i32 %218, %220
  br label %222

222:                                              ; preds = %217, %211
  %223 = phi i32 [ %216, %211 ], [ %221, %217 ]
  %224 = load ptr, ptr %26, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %224, i32 %223) #9, !srcloc !9
  br label %225

225:                                              ; preds = %222, %201, %186, %169
  %226 = load i32, ptr %61, align 4
  %227 = and i32 %226, 15
  %228 = icmp eq i32 %227, 1
  br i1 %228, label %229, label %256

229:                                              ; preds = %225
  %230 = load ptr, ptr %26, align 4
  %231 = getelementptr i8, ptr %230, i32 44
  %232 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %231) #9, !srcloc !8
  %233 = getelementptr inbounds %struct.ssp_priv, ptr %7, i32 0, i32 3
  %234 = load i32, ptr %233, align 4
  %235 = udiv i32 %234, %35
  %236 = icmp eq i32 %235, 64
  %237 = icmp eq i32 %25, 16
  %238 = select i1 %236, i1 %237, i1 false
  br i1 %238, label %239, label %245

239:                                              ; preds = %229
  %240 = getelementptr inbounds %struct.ssp_device, ptr %8, i32 0, i32 7
  %241 = load i32, ptr %240, align 4
  %242 = icmp eq i32 %241, 4
  br i1 %242, label %243, label %262

243:                                              ; preds = %239
  %244 = or i32 %232, 832602112
  br label %251

245:                                              ; preds = %229
  %246 = add i32 %25, 1
  %247 = shl i32 %246, 16
  %248 = shl i32 %246, 10
  %249 = or i32 %248, %247
  %250 = or i32 %249, %232
  br label %251

251:                                              ; preds = %245, %243
  %252 = phi i32 [ %244, %243 ], [ %250, %245 ]
  %253 = or i32 %252, 128
  %254 = load ptr, ptr %26, align 4
  %255 = getelementptr i8, ptr %254, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %255, i32 %253) #9, !srcloc !9
  br label %256

256:                                              ; preds = %251, %225
  %257 = icmp sgt i32 %165, -1
  %258 = icmp ne i32 %30, 0
  %259 = select i1 %257, i1 true, i1 %258
  br i1 %259, label %262, label %260

260:                                              ; preds = %256
  %261 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %261, ptr noundef nonnull @.str.8) #11
  br label %262

262:                                              ; preds = %260, %256, %239, %183, %180, %96, %86, %64, %23
  %263 = phi i32 [ -22, %260 ], [ 0, %23 ], [ -22, %239 ], [ 0, %256 ], [ -22, %64 ], [ -22, %86 ], [ -22, %96 ], [ %184, %183 ], [ -22, %180 ]
  ret i32 %263
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pxa_ssp_trigger(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %7, align 4
  switch i32 %1, label %148 [
    i32 6, label %9
    i32 4, label %15
    i32 1, label %57
    i32 0, label %94
    i32 5, label %118
    i32 3, label %124
  ]

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ssp_device, ptr %8, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #9, !srcloc !8
  %13 = or i32 %12, 128
  %14 = load ptr, ptr %10, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %13) #9, !srcloc !9
  br label %148

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.ssp_device, ptr %8, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #9, !srcloc !8
  %19 = load ptr, ptr %16, align 4
  %20 = getelementptr i8, ptr %19, i32 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #9, !srcloc !8
  %22 = load ptr, ptr %16, align 4
  %23 = getelementptr i8, ptr %22, i32 44
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #9, !srcloc !8
  %25 = load ptr, ptr %16, align 4
  %26 = getelementptr i8, ptr %25, i32 8
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #9, !srcloc !8
  %28 = and i32 %18, 128
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %15
  %31 = and i32 %18, -129
  %32 = load ptr, ptr %16, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %31) #9, !srcloc !9
  br label %33

33:                                               ; preds = %30, %15
  %34 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = or i32 %21, 2097152
  %39 = load ptr, ptr %16, align 4
  %40 = getelementptr i8, ptr %39, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #9, !srcloc !9
  br label %45

41:                                               ; preds = %33
  %42 = or i32 %21, 1048576
  %43 = load ptr, ptr %16, align 4
  %44 = getelementptr i8, ptr %43, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %42) #9, !srcloc !9
  br label %45

45:                                               ; preds = %41, %37
  %46 = load ptr, ptr %16, align 4
  %47 = getelementptr i8, ptr %46, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %27) #9, !srcloc !9
  %48 = load ptr, ptr %16, align 4
  %49 = getelementptr i8, ptr %48, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %24) #9, !srcloc !9
  %50 = or i32 %18, 128
  %51 = load ptr, ptr %16, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %50) #9, !srcloc !9
  %52 = load ptr, ptr %16, align 4
  %53 = getelementptr i8, ptr %52, i32 8
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #9, !srcloc !8
  %55 = load ptr, ptr %16, align 4
  %56 = getelementptr i8, ptr %55, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %54) #9, !srcloc !9
  br label %148

57:                                               ; preds = %3
  %58 = getelementptr inbounds %struct.ssp_device, ptr %8, i32 0, i32 3
  %59 = load ptr, ptr %58, align 4
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #9, !srcloc !8
  %61 = load ptr, ptr %58, align 4
  %62 = getelementptr i8, ptr %61, i32 4
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #9, !srcloc !8
  %64 = load ptr, ptr %58, align 4
  %65 = getelementptr i8, ptr %64, i32 44
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #9, !srcloc !8
  %67 = load ptr, ptr %58, align 4
  %68 = getelementptr i8, ptr %67, i32 8
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #9, !srcloc !8
  %70 = and i32 %60, 128
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %57
  %73 = and i32 %60, -129
  %74 = load ptr, ptr %58, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %73) #9, !srcloc !9
  br label %75

75:                                               ; preds = %72, %57
  %76 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = or i32 %63, 2097152
  %81 = load ptr, ptr %58, align 4
  %82 = getelementptr i8, ptr %81, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 %80) #9, !srcloc !9
  br label %87

83:                                               ; preds = %75
  %84 = or i32 %63, 1048576
  %85 = load ptr, ptr %58, align 4
  %86 = getelementptr i8, ptr %85, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %84) #9, !srcloc !9
  br label %87

87:                                               ; preds = %83, %79
  %88 = load ptr, ptr %58, align 4
  %89 = getelementptr i8, ptr %88, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 %69) #9, !srcloc !9
  %90 = load ptr, ptr %58, align 4
  %91 = getelementptr i8, ptr %90, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %66) #9, !srcloc !9
  %92 = or i32 %60, 128
  %93 = load ptr, ptr %58, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 %92) #9, !srcloc !9
  br label %148

94:                                               ; preds = %3
  %95 = getelementptr inbounds %struct.ssp_device, ptr %8, i32 0, i32 3
  %96 = load ptr, ptr %95, align 4
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %96) #9, !srcloc !8
  %98 = load ptr, ptr %95, align 4
  %99 = getelementptr i8, ptr %98, i32 4
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %99) #9, !srcloc !8
  %101 = load ptr, ptr %95, align 4
  %102 = getelementptr i8, ptr %101, i32 44
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %102) #9, !srcloc !8
  %104 = load ptr, ptr %95, align 4
  %105 = getelementptr i8, ptr %104, i32 8
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %105) #9, !srcloc !8
  %107 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %108 = load i32, ptr %107, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %94
  %111 = and i32 %100, -2097153
  %112 = load ptr, ptr %95, align 4
  %113 = getelementptr i8, ptr %112, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %113, i32 %111) #9, !srcloc !9
  br label %148

114:                                              ; preds = %94
  %115 = and i32 %100, -1048577
  %116 = load ptr, ptr %95, align 4
  %117 = getelementptr i8, ptr %116, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 %115) #9, !srcloc !9
  br label %148

118:                                              ; preds = %3
  %119 = getelementptr inbounds %struct.ssp_device, ptr %8, i32 0, i32 3
  %120 = load ptr, ptr %119, align 4
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %120) #9, !srcloc !8
  %122 = and i32 %121, -129
  %123 = load ptr, ptr %119, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %123, i32 %122) #9, !srcloc !9
  br label %148

124:                                              ; preds = %3
  %125 = getelementptr inbounds %struct.ssp_device, ptr %8, i32 0, i32 3
  %126 = load ptr, ptr %125, align 4
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %126) #9, !srcloc !8
  %128 = load ptr, ptr %125, align 4
  %129 = getelementptr i8, ptr %128, i32 4
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %129) #9, !srcloc !8
  %131 = load ptr, ptr %125, align 4
  %132 = getelementptr i8, ptr %131, i32 44
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %132) #9, !srcloc !8
  %134 = load ptr, ptr %125, align 4
  %135 = getelementptr i8, ptr %134, i32 8
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %135) #9, !srcloc !8
  %137 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %138 = load i32, ptr %137, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %124
  %141 = and i32 %130, -2097153
  %142 = load ptr, ptr %125, align 4
  %143 = getelementptr i8, ptr %142, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %143, i32 %141) #9, !srcloc !9
  br label %148

144:                                              ; preds = %124
  %145 = and i32 %130, -1048577
  %146 = load ptr, ptr %125, align 4
  %147 = getelementptr i8, ptr %146, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %147, i32 %145) #9, !srcloc !9
  br label %148

148:                                              ; preds = %144, %140, %118, %114, %110, %87, %45, %9, %3
  %149 = phi i32 [ 0, %118 ], [ 0, %87 ], [ 0, %45 ], [ 0, %9 ], [ -22, %3 ], [ 0, %110 ], [ 0, %114 ], [ 0, %140 ], [ 0, %144 ]
  ret i32 %149
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_active(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_physical_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pxa_ssp_set_pll(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.ssp_device, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 60
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #9, !srcloc !8
  %8 = and i32 %7, -113
  %9 = getelementptr inbounds %struct.ssp_device, ptr %3, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 4
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr i8, ptr %13, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 0) #9, !srcloc !9
  br label %15

15:                                               ; preds = %12, %2
  switch i32 %1, label %26 [
    i32 5622000, label %38
    i32 11345000, label %16
    i32 12235000, label %18
    i32 14857000, label %20
    i32 32842000, label %22
    i32 48000000, label %24
    i32 0, label %38
  ]

16:                                               ; preds = %15
  %17 = or i32 %8, 16
  br label %38

18:                                               ; preds = %15
  %19 = or i32 %8, 32
  br label %38

20:                                               ; preds = %15
  %21 = or i32 %8, 48
  br label %38

22:                                               ; preds = %15
  %23 = or i32 %8, 64
  br label %38

24:                                               ; preds = %15
  %25 = or i32 %8, 80
  br label %38

26:                                               ; preds = %15
  %27 = load i32, ptr %9, align 4
  %28 = icmp eq i32 %27, 4
  br i1 %28, label %29, label %42

29:                                               ; preds = %26
  %30 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %1, i64 19968000000) #12, !srcloc !14
  %31 = extractvalue { i64, i64 } %30, 1
  %32 = trunc i64 %31 to i32
  %33 = shl i32 %32, 16
  %34 = or i32 %33, 64
  %35 = load ptr, ptr %4, align 4
  %36 = getelementptr i8, ptr %35, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #9, !srcloc !9
  %37 = or i32 %8, 96
  br label %38

38:                                               ; preds = %29, %24, %22, %20, %18, %16, %15, %15
  %39 = phi i32 [ %37, %29 ], [ %25, %24 ], [ %23, %22 ], [ %21, %20 ], [ %19, %18 ], [ %17, %16 ], [ %8, %15 ], [ %8, %15 ]
  %40 = load ptr, ptr %4, align 4
  %41 = getelementptr i8, ptr %40, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %39) #9, !srcloc !9
  br label %42

42:                                               ; preds = %38, %26
  %43 = phi i32 [ 0, %38 ], [ -22, %26 ]
  ret i32 %43
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

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
!8 = !{i64 3783982}
!9 = !{i64 3783564}
!10 = !{!"auto-init"}
!11 = !{i32 0, i32 33}
!12 = !{i64 2153683638}
!13 = !{i64 2153683480}
!14 = !{i64 2147921784, i64 2147922064, i64 2147922398, i64 2147922732}
