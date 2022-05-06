; ModuleID = '/llk/IR/sound/soc/codecs/sti-sas.c_pt.bc'
source_filename = "../sound/soc/codecs/sti-sas.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.sti_sas_dev_data = type { ptr, ptr, ptr, i32, ptr, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.85, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.85 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.reg_default = type { i32, i32 }
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
%struct.atomic_t = type { i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.sti_sas_data = type { ptr, ptr, %struct.sti_dac_audio, %struct.sti_spdif_audio }
%struct.sti_dac_audio = type { ptr, ptr, i32 }
%struct.sti_spdif_audio = type { ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
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
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64 }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@sti_sas_dev_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih407-sas-codec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stih407_data }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description230 = internal constant [61 x i8] c"description=audio codec for STMicroelectronics sti platforms\00", section ".modinfo", align 1
@__UNIQUE_ID_author231 = internal constant [31 x i8] c"author=Arnaud.pouliquen@st.com\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@stih407_data = internal constant %struct.sti_sas_dev_data { ptr @stih407_sas_regmap, ptr @stih407_dac_ops, ptr @stih407_sas_dapm_widgets, i32 3, ptr @stih407_sas_route, i32 2 }, align 4
@stih407_sas_regmap = internal constant %struct.regmap_config { ptr null, i32 32, i32 0, i32 0, i32 32, ptr null, ptr null, ptr @sti_sas_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @sti_sas_read_reg, ptr @sti_sas_write_reg, ptr null, i8 1, i32 168, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stih407_sas_reg_defaults, i32 2, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@stih407_dac_ops = internal constant %struct.snd_soc_dai_ops { ptr @sti_sas_set_sysclk, ptr null, ptr null, ptr null, ptr @sti_sas_dac_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stih407_sas_dac_mute, ptr null, ptr null, ptr null, ptr null, ptr @sti_sas_prepare, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, align 4
@stih407_sas_route = internal constant [2 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.5, ptr null, ptr @.str.2, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.2, ptr null, ptr @.str.3, ptr null, %struct.snd_soc_dobj zeroinitializer }], align 4
@stih407_sas_reg_defaults = internal constant [2 x %struct.reg_default] [%struct.reg_default { i32 168, i32 0 }, %struct.reg_default { i32 164, i32 64 }], align 4
@.str = private unnamed_addr constant [41 x i8] c"%s: ERROR: Unsupporter master mask 0x%x\0A\00", align 1
@__func__.sti_sas_dac_set_fmt = private unnamed_addr constant [20 x i8] c"sti_sas_dac_set_fmt\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"unexpected mclk-fs ratio\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"DAC standby ana\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"DAC standby\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"dac_p\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"DAC Output\00", align 1
@stih407_sas_dapm_widgets = internal constant [3 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 7, ptr @.str.2, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 168, i8 1, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.3, ptr @.str.4, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 168, i8 2, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.5, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], align 4
@sti_sas_platform_driver = internal global %struct.platform_driver { ptr @sti_sas_driver_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.7, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sti_sas_dev_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.7 = private unnamed_addr constant [14 x i8] c"sti-sas-codec\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"data associated to device is missing\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"audio registers not enabled\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"st,syscfg\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"syscon registers not available\0A\00", align 1
@sti_sas_dai = internal global [2 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.12, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @.compoundliteral, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.13, i64 1028, i32 6112, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.14, i32 1, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.4, i64 1028, i32 254, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 0, i32 0, i32 0 }], align 8
@sti_sas_driver = internal global %struct.snd_soc_component_driver { ptr null, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr @sti_sas_component_probe, ptr null, ptr null, ptr @sti_sas_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 58, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.12 = private unnamed_addr constant [18 x i8] c"sas-dai-spdif-out\00", align 1
@.compoundliteral = internal global [1 x %struct.snd_soc_dai_ops] [%struct.snd_soc_dai_ops { ptr @sti_sas_set_sysclk, ptr null, ptr null, ptr null, ptr @sti_sas_spdif_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sti_sas_prepare, ptr @sti_sas_spdif_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }], align 4
@.str.13 = private unnamed_addr constant [8 x i8] c"spdif_p\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"sas-dai-dac\00", align 1
@__func__.sti_sas_spdif_set_fmt = private unnamed_addr constant [22 x i8] c"sti_sas_spdif_set_fmt\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"Failed to update SPDIF registers\0A\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"Failed to update DAC registers\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_license232], section "llvm.metadata"
@switch.table.sti_sas_spdif_trigger = private unnamed_addr constant [7 x i32] [i32 0, i32 64, i32 64, i32 0, i32 64, i32 0, i32 0], align 4

@__mod_of__sti_sas_dev_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @sti_sas_dev_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sti_sas_platform_driver, ptr noundef nonnull @__this_module) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sti_sas_platform_driver) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @sti_sas_volatile_register(ptr nocapture noundef readnone %0, i32 noundef %1) #1 {
  %3 = icmp eq i32 %1, 164
  ret i1 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_sas_read_reg(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.sti_sas_data, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = call i32 @regmap_read(ptr noundef %6, i32 noundef %1, ptr noundef nonnull %4) #7
  %8 = load i32, ptr %4, align 4
  store i32 %8, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_sas_write_reg(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.sti_sas_data, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %1, i32 noundef %2) #7
  ret i32 %6
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @sti_sas_set_sysclk(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #5 {
  %5 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_soc_component, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq i32 %3, 1
  br i1 %11, label %23, label %12

12:                                               ; preds = %4
  %13 = icmp eq i32 %1, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  switch i32 %16, label %23 [
    i32 0, label %17
    i32 1, label %19
  ]

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.sti_sas_data, ptr %10, i32 0, i32 3, i32 1
  br label %21

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.sti_sas_data, ptr %10, i32 0, i32 2, i32 2
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi ptr [ %18, %17 ], [ %20, %19 ]
  store i32 %2, ptr %22, align 4
  br label %23

23:                                               ; preds = %21, %14, %12, %4
  %24 = phi i32 [ 0, %4 ], [ -22, %12 ], [ 0, %14 ], [ 0, %21 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_sas_dac_set_fmt(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = and i32 %1, 61440
  %4 = icmp eq i32 %3, 16384
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_soc_component, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.sti_sas_dac_set_fmt, i32 noundef %3) #8
  br label %10

10:                                               ; preds = %5, %2
  %11 = phi i32 [ -22, %5 ], [ 0, %2 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stih407_sas_dac_mute(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = icmp ne i32 %1, 0
  %7 = zext i1 %6 to i32
  %8 = tail call i32 @snd_soc_component_update_bits(ptr noundef %5, i32 noundef 168, i32 noundef 1, i32 noundef %7) #7
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_sas_prepare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  switch i32 %12, label %28 [
    i32 0, label %13
    i32 1, label %20
  ]

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.sti_sas_data, ptr %8, i32 0, i32 3, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %10, i32 0, i32 14
  %17 = load i32, ptr %16, align 4
  %18 = udiv i32 %15, %17
  %19 = icmp eq i32 %18, 128
  br i1 %19, label %28, label %27

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.sti_sas_data, ptr %8, i32 0, i32 2, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %10, i32 0, i32 14
  %24 = load i32, ptr %23, align 4
  %25 = udiv i32 %22, %24
  %26 = icmp eq i32 %25, 256
  br i1 %26, label %28, label %27

27:                                               ; preds = %20, %13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.1) #8
  br label %28

28:                                               ; preds = %27, %20, %13, %2
  %29 = phi i32 [ 0, %20 ], [ 0, %13 ], [ 0, %2 ], [ -22, %27 ]
  ret i32 %29
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_sas_driver_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 28, i32 noundef 3520) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %44, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @of_match_node(ptr noundef nonnull @sti_sas_dev_match, ptr noundef %4) #7
  %9 = getelementptr inbounds %struct.of_device_id, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.8) #8
  br label %44

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.sti_sas_data, ptr %5, i32 0, i32 1
  store ptr %10, ptr %14, align 4
  store ptr %2, ptr %5, align 4
  %15 = load ptr, ptr %10, align 4
  %16 = tail call ptr @__devm_regmap_init(ptr noundef %2, ptr noundef null, ptr noundef nonnull %5, ptr noundef %15, ptr noundef null, ptr noundef null) #7
  %17 = getelementptr inbounds %struct.sti_sas_data, ptr %5, i32 0, i32 2
  %18 = getelementptr inbounds %struct.sti_sas_data, ptr %5, i32 0, i32 2, i32 1
  store ptr %16, ptr %18, align 4
  %19 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.9) #8
  %21 = load ptr, ptr %18, align 4
  %22 = ptrtoint ptr %21 to i32
  br label %44

23:                                               ; preds = %13
  %24 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %4, ptr noundef nonnull @.str.10) #7
  store ptr %24, ptr %17, align 4
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.11) #8
  %27 = load ptr, ptr %17, align 4
  %28 = ptrtoint ptr %27 to i32
  br label %44

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.sti_sas_data, ptr %5, i32 0, i32 3
  store ptr %24, ptr %30, align 4
  %31 = load ptr, ptr %14, align 4
  %32 = getelementptr inbounds %struct.sti_sas_dev_data, ptr %31, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  store ptr %33, ptr getelementptr inbounds ([2 x %struct.snd_soc_dai_driver], ptr @sti_sas_dai, i32 0, i32 1, i32 8), align 8
  %34 = getelementptr inbounds %struct.sti_sas_dev_data, ptr %31, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  store ptr %35, ptr getelementptr inbounds (%struct.snd_soc_component_driver, ptr @sti_sas_driver, i32 0, i32 3), align 4
  %36 = getelementptr inbounds %struct.sti_sas_dev_data, ptr %31, i32 0, i32 3
  %37 = load i32, ptr %36, align 4
  store i32 %37, ptr getelementptr inbounds (%struct.snd_soc_component_driver, ptr @sti_sas_driver, i32 0, i32 4), align 4
  %38 = getelementptr inbounds %struct.sti_sas_dev_data, ptr %31, i32 0, i32 4
  %39 = load ptr, ptr %38, align 4
  store ptr %39, ptr getelementptr inbounds (%struct.snd_soc_component_driver, ptr @sti_sas_driver, i32 0, i32 5), align 4
  %40 = getelementptr inbounds %struct.sti_sas_dev_data, ptr %31, i32 0, i32 5
  %41 = load i32, ptr %40, align 4
  store i32 %41, ptr getelementptr inbounds (%struct.snd_soc_component_driver, ptr @sti_sas_driver, i32 0, i32 6), align 4
  %42 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %42, align 8
  %43 = tail call i32 @devm_snd_soc_register_component(ptr noundef %2, ptr noundef nonnull @sti_sas_driver, ptr noundef nonnull @sti_sas_dai, i32 noundef 2) #7
  br label %44

44:                                               ; preds = %29, %26, %20, %12, %1
  %45 = phi i32 [ %22, %20 ], [ %28, %26 ], [ %43, %29 ], [ -22, %12 ], [ -12, %1 ]
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_sas_spdif_set_fmt(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = and i32 %1, 61440
  %4 = icmp eq i32 %3, 16384
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_soc_component, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.sti_sas_spdif_set_fmt, i32 noundef %3) #8
  br label %10

10:                                               ; preds = %5, %2
  %11 = phi i32 [ -22, %5 ], [ 0, %2 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_sas_spdif_trigger(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = icmp ult i32 %1, 7
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = trunc i32 %1 to i8
  %9 = lshr i8 123, %8
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds [7 x i32], ptr @switch.table.sti_sas_spdif_trigger, i32 0, i32 %1
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @snd_soc_component_update_bits(ptr noundef %5, i32 noundef 164, i32 noundef 64, i32 noundef %14) #7
  br label %16

16:                                               ; preds = %12, %7, %3
  %17 = phi i32 [ -22, %3 ], [ %15, %12 ], [ -22, %7 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_sas_component_probe(ptr noundef %0) #2 {
  %2 = tail call fastcc i32 @sti_sas_init_sas_registers(ptr noundef %0)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_sas_resume(ptr noundef %0) #2 {
  %2 = tail call fastcc i32 @sti_sas_init_sas_registers(ptr noundef %0)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sti_sas_init_sas_registers(ptr noundef %0) unnamed_addr #2 {
  %2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 164, i32 noundef 64, i32 noundef 0) #7
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 164, i32 noundef 128, i32 noundef 0) #7
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi i32 [ %2, %1 ], [ %5, %4 ]
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %6
  %10 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 168, i32 noundef 4, i32 noundef 4) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 168, i32 noundef 2, i32 noundef 2) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 168, i32 noundef 1, i32 noundef 1) #7
  br label %17

17:                                               ; preds = %15, %12, %9
  %18 = phi i32 [ %13, %12 ], [ %16, %15 ], [ %10, %9 ]
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17, %6
  %21 = phi ptr [ @.str.15, %6 ], [ @.str.16, %17 ]
  %22 = phi i32 [ %7, %6 ], [ %18, %17 ]
  %23 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull %21) #8
  br label %25

25:                                               ; preds = %20, %17
  %26 = phi i32 [ %18, %17 ], [ %22, %20 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
