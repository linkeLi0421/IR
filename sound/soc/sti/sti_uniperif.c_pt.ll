; ModuleID = '/llk/IR/sound/soc/sti/sti_uniperif.c_pt.bc'
source_filename = "../sound/soc/sti/sti_uniperif.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.sti_uniperiph_dev_data = type { i32, i32, i32, ptr, i32 }
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
%struct.snd_dmaengine_pcm_config = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], ptr, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.88, ptr }
%union.anon.88 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.uniperif = type { i32, i32, ptr, i32, i32, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.uniperif_iec958_settings, %struct.mutex, ptr, i32, i32, %struct.dai_tdm_slot, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.uniperif_iec958_settings = type { i32, %struct.snd_aes_iec958 }
%struct.snd_aes_iec958 = type { [24 x i8], [147 x i8], i8, [4 x i8] }
%struct.dai_tdm_slot = type { i32, i32, i32, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
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
%struct.sti_uniperiph_data = type { ptr, ptr, %struct.sti_uniperiph_dai }
%struct.sti_uniperiph_dai = type { i32, ptr, %struct.snd_dmaengine_dai_dma_data }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_hw_rule = type { i32, i32, [5 x i32], ptr, ptr }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.80, i32 }
%union.anon.80 = type { ptr }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }

@snd_soc_sti_match = internal constant [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih407-uni-player-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sti_uniplayer_hdmi }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih407-uni-player-pcm-out\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sti_uniplayer_pcm_out }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih407-uni-player-dac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sti_uniplayer_dac }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih407-uni-player-spdif\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sti_uniplayer_spdif }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih407-uni-reader-pcm_in\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sti_unireader_pcm_in }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih407-uni-reader-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sti_unireader_hdmi_in }, %struct.of_device_id zeroinitializer], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to reset uniperif\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"cpu dai not in tdm mode\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"frame size not allowed: %d bytes\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"format not supported: %d bits\0A\00", align 1
@__UNIQUE_ID_description232 = internal constant [37 x i8] c"description=uniperipheral DAI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author233 = internal constant [50 x i8] c"author=Arnaud Pouliquen <arnaud.pouliquen@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@sti_uniplayer_hdmi = internal constant %struct.sti_uniperiph_dev_data { i32 0, i32 5, i32 0, ptr @.str.4, i32 1 }, align 4
@sti_uniplayer_pcm_out = internal constant %struct.sti_uniperiph_dev_data { i32 1, i32 5, i32 0, ptr @.str.5, i32 10 }, align 4
@sti_uniplayer_dac = internal constant %struct.sti_uniperiph_dev_data { i32 2, i32 5, i32 0, ptr @.str.6, i32 2 }, align 4
@sti_uniplayer_spdif = internal constant %struct.sti_uniperiph_dev_data { i32 3, i32 5, i32 0, ptr @.str.7, i32 4 }, align 4
@sti_unireader_pcm_in = internal constant %struct.sti_uniperiph_dev_data { i32 0, i32 3, i32 1, ptr @.str.8, i32 10 }, align 4
@sti_unireader_hdmi_in = internal constant %struct.sti_uniperiph_dev_data { i32 1, i32 3, i32 1, ptr @.str.9, i32 2 }, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"Uni Player #0 (HDMI)\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Uni Player #1 (PCM OUT)\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Uni Player #2 (DAC)\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Uni Player #3 (SPDIF)\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Uni Reader #0 (PCM IN)\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"Uni Reader #1 (HDMI IN)\00", align 1
@sti_uniperiph_driver = internal global %struct.platform_driver { ptr @sti_uniperiph_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.10, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @snd_soc_sti_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.10 = private unnamed_addr constant [18 x i8] c"sti-uniperiph-dai\00", align 1
@sti_uniperiph_dai_component = internal constant %struct.snd_soc_component_driver { ptr @.str.13, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @sti_uniperiph_suspend, ptr @sti_uniperiph_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@dmaengine_pcm_config = internal constant %struct.snd_dmaengine_pcm_config { ptr @snd_dmaengine_pcm_prepare_slave_config, ptr null, ptr null, ptr null, ptr null, [2 x ptr] zeroinitializer, ptr null, i32 0 }, align 4
@.str.11 = private unnamed_addr constant [38 x i8] c"data associated to device is missing\0A\00", align 1
@sti_uniperiph_dai_template = internal unnamed_addr constant %struct.snd_soc_dai_driver { ptr null, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @sti_uniperiph_dai_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }, align 8
@.str.12 = private unnamed_addr constant [12 x i8] c"st,tdm-mode\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"sti_cpu_dai\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"%s: invalid uni state( %d)\0A\00", align 1
@__func__.sti_uniperiph_suspend = private unnamed_addr constant [22 x i8] c"sti_uniperiph_suspend\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"%s: failed to select pinctrl state\0A\00", align 1
@__func__.sti_uniperiph_resume = private unnamed_addr constant [21 x i8] c"sti_uniperiph_resume\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_license234], section "llvm.metadata"

@__mod_of__snd_soc_sti_match_device_table = dso_local alias [7 x %struct.of_device_id], ptr @snd_soc_sti_match

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sti_uniperiph_reset(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.uniperif, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 1) #9, !srcloc !8
  %4 = getelementptr inbounds %struct.uniperif, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = icmp slt i32 %5, 5
  br i1 %6, label %7, label %27

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #9, !srcloc !9
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %12, %7
  %13 = phi i32 [ %15, %12 ], [ 10, %7 ]
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 1073740) #9
  %15 = add nsw i32 %13, -1
  %16 = load ptr, ptr %2, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #9, !srcloc !9
  %18 = and i32 %17, 1
  %19 = icmp ne i32 %18, 0
  %20 = icmp ne i32 %15, 0
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %12, label %22

22:                                               ; preds = %12
  %23 = icmp eq i32 %15, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.uniperif, ptr %0, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str) #10
  br label %27

27:                                               ; preds = %24, %22, %7, %1
  %28 = phi i32 [ -5, %24 ], [ 0, %22 ], [ 0, %1 ], [ 0, %7 ]
  ret i32 %28
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sti_uniperiph_set_tdm_slot(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.sti_uniperiph_data, ptr %9, i32 0, i32 2, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 8
  br i1 %13, label %17, label %14

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.uniperif, ptr %11, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.1) #10
  br label %44

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.uniperif, ptr %11, i32 0, i32 23
  %19 = getelementptr inbounds %struct.uniperif, ptr %11, i32 0, i32 23, i32 1
  store i32 %3, ptr %19, align 4
  %20 = getelementptr inbounds %struct.uniperif, ptr %11, i32 0, i32 23, i32 2
  store i32 %4, ptr %20, align 4
  %21 = icmp eq i32 %1, 0
  %22 = select i1 %21, i32 %2, i32 %1
  store i32 %22, ptr %18, align 4
  %23 = icmp sgt i32 %3, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %24, %17
  %25 = phi i32 [ %29, %24 ], [ 0, %17 ]
  %26 = phi i32 [ %30, %24 ], [ 0, %17 ]
  %27 = lshr i32 %22, %26
  %28 = and i32 %27, 1
  %29 = add i32 %28, %25
  %30 = add nuw nsw i32 %26, 1
  %31 = icmp eq i32 %30, %3
  br i1 %31, label %32, label %24

32:                                               ; preds = %24, %17
  %33 = phi i32 [ 0, %17 ], [ %29, %24 ]
  %34 = getelementptr inbounds %struct.uniperif, ptr %11, i32 0, i32 23, i32 3
  store i32 %33, ptr %34, align 4
  %35 = mul i32 %33, %4
  %36 = icmp ult i32 %35, 264
  %37 = and i32 %35, -456
  %38 = icmp eq i32 %37, 0
  %39 = and i1 %36, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %32
  %41 = lshr i32 %35, 3
  %42 = getelementptr inbounds %struct.uniperif, ptr %11, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.2, i32 noundef %41) #10
  br label %44

44:                                               ; preds = %40, %32, %14
  %45 = phi i32 [ -22, %40 ], [ -22, %14 ], [ 0, %32 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sti_uniperiph_fix_tdm_chan(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.snd_interval, align 4
  %4 = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %1, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  %6 = getelementptr inbounds i8, ptr %3, i32 8
  store i32 0, ptr %6, align 4, !annotation !10
  %7 = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 23, i32 3
  %8 = load i32, ptr %7, align 4
  store i32 %8, ptr %3, align 4
  %9 = getelementptr inbounds %struct.snd_interval, ptr %3, i32 0, i32 1
  store i32 %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %1, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, -8
  %13 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 %12
  %14 = call i32 @snd_interval_refine(ptr noundef %13, ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  ret i32 %14
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_interval_refine(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sti_uniperiph_fix_tdm_format(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 1, i32 %6
  %8 = getelementptr inbounds %struct.uniperif, ptr %4, i32 0, i32 23, i32 2
  %9 = load i32, ptr %8, align 4
  switch i32 %9, label %11 [
    i32 16, label %14
    i32 32, label %10
  ]

10:                                               ; preds = %2
  br label %14

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.uniperif, ptr %4, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.3, i32 noundef %9) #10
  br label %21

14:                                               ; preds = %10, %2
  %15 = phi i32 [ 1024, %10 ], [ 4, %2 ]
  %16 = load i32, ptr %7, align 4
  %17 = and i32 %16, %15
  store i32 %17, ptr %7, align 4
  %18 = getelementptr [8 x i32], ptr %7, i32 0, i32 1
  %19 = icmp eq i32 %17, 0
  %20 = select i1 %19, i32 -22, i32 0
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(28) %18, i8 0, i64 28, i1 false)
  br label %21

21:                                               ; preds = %14, %11
  %22 = phi i32 [ -22, %11 ], [ %20, %14 ]
  ret i32 %22
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sti_uniperiph_get_tdm_word_pos(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #5 {
  %3 = alloca [4 x i32], align 4
  %4 = getelementptr inbounds %struct.uniperif, ptr %0, i32 0, i32 23
  %5 = getelementptr inbounds %struct.uniperif, ptr %0, i32 0, i32 23, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = sdiv i32 %6, 8
  %8 = getelementptr inbounds %struct.uniperif, ptr %0, i32 0, i32 23, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = load i32, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !10
  %11 = icmp sgt i32 %9, 0
  br i1 %11, label %12, label %56

12:                                               ; preds = %2
  %13 = and i32 %6, -8
  %14 = icmp eq i32 %13, 32
  %15 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 1
  %16 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 3
  %17 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 2
  br label %18

18:                                               ; preds = %49, %12
  %19 = phi i32 [ 0, %12 ], [ %51, %49 ]
  %20 = phi i32 [ 0, %12 ], [ %50, %49 ]
  %21 = phi i32 [ 0, %12 ], [ %52, %49 ]
  %22 = shl nuw i32 1, %21
  %23 = and i32 %22, %10
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %49, label %25

25:                                               ; preds = %18
  %26 = mul i32 %21, %7
  %27 = getelementptr [4 x i32], ptr %3, i32 0, i32 %20
  store i32 %26, ptr %27, align 4
  br i1 %14, label %28, label %32

28:                                               ; preds = %25
  %29 = add i32 %26, 2
  %30 = add i32 %20, 1
  %31 = getelementptr [4 x i32], ptr %3, i32 0, i32 %30
  store i32 %29, ptr %31, align 4
  br label %32

32:                                               ; preds = %28, %25
  %33 = phi i32 [ %30, %28 ], [ %20, %25 ]
  %34 = add i32 %33, 1
  %35 = icmp sgt i32 %34, 3
  br i1 %35, label %36, label %49

36:                                               ; preds = %32
  %37 = load i32, ptr %15, align 4
  %38 = load i32, ptr %3, align 4
  %39 = shl i32 %38, 8
  %40 = or i32 %39, %37
  %41 = load i32, ptr %16, align 4
  %42 = shl i32 %41, 16
  %43 = or i32 %40, %42
  %44 = load i32, ptr %17, align 4
  %45 = shl i32 %44, 24
  %46 = or i32 %43, %45
  %47 = getelementptr i32, ptr %1, i32 %19
  store i32 %46, ptr %47, align 4
  %48 = add nsw i32 %19, 1
  br label %49

49:                                               ; preds = %36, %32, %18
  %50 = phi i32 [ 0, %36 ], [ %34, %32 ], [ %20, %18 ]
  %51 = phi i32 [ %48, %36 ], [ %19, %32 ], [ %19, %18 ]
  %52 = add nuw nsw i32 %21, 1
  %53 = icmp slt i32 %52, %9
  %54 = icmp slt i32 %51, 4
  %55 = select i1 %53, i1 %54, i1 false
  br i1 %55, label %18, label %56

56:                                               ; preds = %49, %2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sti_uniperiph_dai_hw_params(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.sti_uniperiph_data, ptr %7, i32 0, i32 2, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 8
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = tail call i32 @snd_soc_params_to_frame_size(ptr noundef %1) #9
  %14 = sdiv i32 %13, 32
  br label %19

15:                                               ; preds = %3
  %16 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = shl i32 %17, 2
  br label %19

19:                                               ; preds = %15, %12
  %20 = phi i32 [ %14, %12 ], [ %18, %15 ]
  %21 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  %24 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 7
  %25 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 8
  %26 = select i1 %23, ptr %24, ptr %25
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, ptr %27, i32 0, i32 2
  store i32 %20, ptr %28, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_params_to_frame_size(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @sti_uniperiph_dai_set_fmt(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.sti_uniperiph_data, ptr %6, i32 0, i32 2, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.uniperif, ptr %8, i32 0, i32 22
  store i32 %1, ptr %9, align 4
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #7 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sti_uniperiph_driver, ptr noundef nonnull @__this_module) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #7 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sti_uniperiph_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_uniperiph_probe(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 52, i32 noundef 3520) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %97, label %8

8:                                                ; preds = %1
  %9 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 168, i32 noundef 3520) #9
  %10 = getelementptr inbounds %struct.sti_uniperiph_data, ptr %6, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  %11 = icmp eq ptr %9, null
  br i1 %11, label %97, label %12

12:                                               ; preds = %8
  store ptr %0, ptr %6, align 4
  %13 = getelementptr inbounds %struct.sti_uniperiph_data, ptr %6, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store ptr null, ptr %2, align 4, !annotation !10
  %14 = tail call ptr @of_match_node(ptr noundef nonnull @snd_soc_sti_match, ptr noundef %5) #9
  %15 = getelementptr inbounds %struct.of_device_id, ptr %14, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.11) #10
  br label %86

19:                                               ; preds = %12
  %20 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 304, i32 noundef 3520) #9
  %21 = icmp eq ptr %20, null
  br i1 %21, label %86, label %22

22:                                               ; preds = %19
  %23 = load i32, ptr %16, align 4
  %24 = getelementptr inbounds %struct.uniperif, ptr %20, i32 0, i32 3
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.sti_uniperiph_dev_data, ptr %16, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.uniperif, ptr %20, i32 0, i32 4
  store i32 %26, ptr %27, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(168) %9, ptr noundef nonnull align 8 dereferenceable(168) @sti_uniperiph_dai_template, i32 168, i1 false) #9
  %28 = getelementptr inbounds %struct.sti_uniperiph_dev_data, ptr %16, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  store ptr %29, ptr %9, align 8
  %30 = getelementptr inbounds %struct.uniperif, ptr %20, i32 0, i32 9
  %31 = tail call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %0, i32 noundef 0, ptr noundef %30) #9
  %32 = getelementptr inbounds %struct.uniperif, ptr %20, i32 0, i32 10
  store ptr %31, ptr %32, align 4
  %33 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %88, label %34

34:                                               ; preds = %22
  %35 = load ptr, ptr %30, align 4
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, 4
  %38 = getelementptr inbounds %struct.uniperif, ptr %20, i32 0, i32 11
  store i32 %37, ptr %38, align 4
  %39 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #9
  %40 = getelementptr inbounds %struct.uniperif, ptr %20, i32 0, i32 12
  store i32 %39, ptr %40, align 4
  %41 = icmp slt i32 %39, 0
  br i1 %41, label %86, label %42

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.sti_uniperiph_dev_data, ptr %16, i32 0, i32 4
  %44 = load i32, ptr %43, align 4
  store i32 %44, ptr %20, align 4
  %45 = load i32, ptr %43, align 4
  %46 = and i32 %45, 8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %42
  %49 = call i32 @of_property_read_string(ptr noundef %5, ptr noundef nonnull @.str.12, ptr noundef nonnull %2) #9
  %50 = icmp eq i32 %49, 0
  %51 = select i1 %50, i32 8, i32 2
  store i32 %51, ptr %20, align 4
  br label %52

52:                                               ; preds = %48, %42
  %53 = getelementptr inbounds %struct.sti_uniperiph_data, ptr %6, i32 0, i32 2, i32 1
  store ptr %20, ptr %53, align 4
  %54 = getelementptr inbounds %struct.sti_uniperiph_dev_data, ptr %16, i32 0, i32 2
  %55 = load i32, ptr %54, align 4
  store i32 %55, ptr %13, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = call i32 @uni_player_init(ptr noundef %0, ptr noundef nonnull %20) #9
  %59 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %9, i32 0, i32 11
  br label %63

60:                                               ; preds = %52
  %61 = call i32 @uni_reader_init(ptr noundef %0, ptr noundef nonnull %20) #9
  %62 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %9, i32 0, i32 10
  br label %63

63:                                               ; preds = %60, %57
  %64 = phi ptr [ %59, %57 ], [ %62, %60 ]
  %65 = phi i32 [ %58, %57 ], [ %61, %60 ]
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %86, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.uniperif, ptr %20, i32 0, i32 24
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %9, i32 0, i32 8
  store ptr %69, ptr %70, align 8
  %71 = load ptr, ptr %9, align 8
  store ptr %71, ptr %64, align 8
  %72 = getelementptr inbounds %struct.uniperif, ptr %20, i32 0, i32 8
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.snd_pcm_hardware, ptr %73, i32 0, i32 5
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr inbounds %struct.snd_soc_pcm_stream, ptr %64, i32 0, i32 5
  store i32 %75, ptr %76, align 4
  %77 = getelementptr inbounds %struct.snd_pcm_hardware, ptr %73, i32 0, i32 6
  %78 = load i32, ptr %77, align 8
  %79 = getelementptr inbounds %struct.snd_soc_pcm_stream, ptr %64, i32 0, i32 6
  store i32 %78, ptr %79, align 8
  %80 = getelementptr inbounds %struct.snd_pcm_hardware, ptr %73, i32 0, i32 2
  %81 = load i32, ptr %80, align 8
  %82 = getelementptr inbounds %struct.snd_soc_pcm_stream, ptr %64, i32 0, i32 2
  store i32 %81, ptr %82, align 8
  %83 = getelementptr inbounds %struct.snd_pcm_hardware, ptr %73, i32 0, i32 1
  %84 = load i64, ptr %83, align 8
  %85 = getelementptr inbounds %struct.snd_soc_pcm_stream, ptr %64, i32 0, i32 1
  store i64 %84, ptr %85, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  br label %91

86:                                               ; preds = %63, %34, %19, %18
  %87 = phi i32 [ %65, %63 ], [ -6, %34 ], [ -12, %19 ], [ -22, %18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  br label %97

88:                                               ; preds = %22
  %89 = ptrtoint ptr %31 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  %90 = icmp slt ptr %31, null
  br i1 %90, label %97, label %91

91:                                               ; preds = %88, %67
  %92 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %6, ptr %92, align 8
  %93 = call i32 @devm_snd_soc_register_component(ptr noundef %3, ptr noundef nonnull @sti_uniperiph_dai_component, ptr noundef nonnull %9, i32 noundef 1) #9
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %91
  %96 = call i32 @devm_snd_dmaengine_pcm_register(ptr noundef %3, ptr noundef nonnull @dmaengine_pcm_config, i32 noundef 0) #9
  br label %97

97:                                               ; preds = %95, %91, %88, %86, %8, %1
  %98 = phi i32 [ %96, %95 ], [ -12, %1 ], [ -12, %8 ], [ %89, %88 ], [ %93, %91 ], [ %87, %86 ]
  ret i32 %98
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_dmaengine_pcm_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uni_player_init(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uni_reader_init(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_uniperiph_dai_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sti_uniperiph_data, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %struct.sti_uniperiph_data, ptr %5, i32 0, i32 2, i32 2
  %10 = select i1 %8, ptr %9, ptr null
  %11 = select i1 %8, ptr null, ptr %9
  %12 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 7
  store ptr %10, ptr %12, align 4
  %13 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 8
  store ptr %11, ptr %13, align 4
  %14 = getelementptr inbounds %struct.sti_uniperiph_data, ptr %5, i32 0, i32 2, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.uniperif, ptr %15, i32 0, i32 11
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.sti_uniperiph_data, ptr %5, i32 0, i32 2, i32 2
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.sti_uniperiph_data, ptr %5, i32 0, i32 2, i32 2, i32 1
  store i32 4, ptr %19, align 4
  %20 = load ptr, ptr %2, align 4
  %21 = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 8
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.sti_uniperiph_data, ptr %22, i32 0, i32 2, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.uniperif, ptr %24, i32 0, i32 21
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %48, label %28

28:                                               ; preds = %1
  %29 = icmp sgt i32 %26, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.uniperif, ptr %24, i32 0, i32 20
  %32 = getelementptr inbounds %struct.uniperif, ptr %24, i32 0, i32 3
  br label %33

33:                                               ; preds = %33, %30
  %34 = phi i32 [ 0, %30 ], [ %40, %33 ]
  %35 = load ptr, ptr %31, align 4
  %36 = load i32, ptr %32, align 4
  %37 = getelementptr %struct.snd_kcontrol_new, ptr %35, i32 %34, i32 4
  store i32 %36, ptr %37, align 4
  %38 = load i32, ptr %32, align 4
  %39 = getelementptr %struct.snd_kcontrol_new, ptr %35, i32 %34, i32 1
  store i32 %38, ptr %39, align 4
  %40 = add nuw nsw i32 %34, 1
  %41 = load i32, ptr %25, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %33, label %43

43:                                               ; preds = %33, %28
  %44 = phi i32 [ %26, %28 ], [ %41, %33 ]
  %45 = getelementptr inbounds %struct.uniperif, ptr %24, i32 0, i32 20
  %46 = load ptr, ptr %45, align 4
  %47 = tail call i32 @snd_soc_add_dai_controls(ptr noundef %0, ptr noundef %46, i32 noundef %44) #9
  br label %48

48:                                               ; preds = %43, %1
  %49 = phi i32 [ %47, %43 ], [ 0, %1 ]
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_add_dai_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_uniperiph_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sti_uniperiph_data, ptr %5, i32 0, i32 2, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.uniperif, ptr %7, i32 0, i32 16
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  %11 = getelementptr inbounds %struct.uniperif, ptr %7, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  br i1 %10, label %14, label %13

13:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.sti_uniperiph_suspend, i32 noundef %9) #10
  br label %19

14:                                               ; preds = %1
  %15 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %12) #9
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.sti_uniperiph_suspend) #10
  br label %19

19:                                               ; preds = %17, %14, %13
  %20 = phi i32 [ -16, %13 ], [ %15, %17 ], [ 0, %14 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_uniperiph_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sti_uniperiph_data, ptr %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.sti_uniperiph_data, ptr %5, i32 0, i32 2, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %6, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = tail call i32 @uni_player_resume(ptr noundef %8) #9
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %11, %1
  %15 = getelementptr inbounds %struct.uniperif, ptr %8, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %16) #9
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = load ptr, ptr %15, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.sti_uniperiph_resume) #10
  br label %21

21:                                               ; preds = %19, %14, %11
  %22 = phi i32 [ %12, %11 ], [ %17, %19 ], [ 0, %14 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uni_player_resume(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dmaengine_pcm_prepare_slave_config(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn }
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
!8 = !{i64 4245947}
!9 = !{i64 4246365}
!10 = !{!"auto-init"}
