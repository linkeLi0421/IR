; ModuleID = '/llk/IR/sound/soc/atmel/atmel-pdmic.c_pt.bc'
source_filename = "../sound/soc/atmel/atmel-pdmic.c"
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
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.88, ptr }
%union.anon.88 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_dmaengine_pcm_config = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], ptr, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.80, i32 }
%union.anon.80 = type { ptr }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.mic_gain = type { i32, i32 }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.atmel_pdmic_pdata = type { i32, i32, i32, ptr }
%struct.atmel_pdmic = type { i32, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [80 x i8], [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.snd_soc_dai_link = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i24 }
%struct.snd_soc_dai_link_component = type { ptr, ptr, ptr }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64 }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.79, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.79 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.74, [128 x i8] }
%union.anon.74 = type { %union.anon.76 }
%union.anon.76 = type { [64 x i64] }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }

@atmel_pdmic_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-pdmic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description232 = internal constant [59 x i8] c"description=Atmel PDMIC driver under ALSA SoC architecture\00", section ".modinfo", align 1
@__UNIQUE_ID_author233 = internal constant [41 x i8] c"author=Songjun Wu <songjun.wu@atmel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@atmel_pdmic_driver = internal global %struct.platform_driver { ptr @atmel_pdmic_probe, ptr @atmel_pdmic_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @atmel_pdmic_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_soc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [12 x i8] c"atmel-pdmic\00", align 1
@snd_soc_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"failed to get peripheral clock: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"gclk\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"failed to get GCK: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"failed to set GCK clock rate: %d\0A\00", align 1
@atmel_pdmic_regmap_config = internal constant %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 292, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"failed to init register map: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"PDMIC\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"can't register ISR for IRQ %u (ret=%i)\0A\00", align 1
@atmel_pdmic_cpu_dai = internal global %struct.snd_soc_dai_driver { ptr null, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @atmel_pdmic_cpu_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.23, i64 1028, i32 -2147483648, i32 0, i32 0, i32 1, i32 1, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }, align 8
@atmel_pdmic_cpu_dai_component = internal constant %struct.snd_soc_component_driver { ptr @.str, ptr @atmel_pdmic_snd_controls, i32 3, ptr null, i32 0, ptr null, i32 0, ptr @atmel_pdmic_component_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 26, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.9 = private unnamed_addr constant [32 x i8] c"could not register CPU DAI: %d\0A\00", align 1
@atmel_pdmic_dmaengine_pcm_config = internal constant %struct.snd_dmaengine_pcm_config { ptr @atmel_pdmic_platform_configure_dma, ptr null, ptr null, ptr null, ptr null, [2 x ptr] zeroinitializer, ptr @atmel_pdmic_hw, i32 65536 }, align 4
@.str.10 = private unnamed_addr constant [33 x i8] c"could not register platform: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"failed to init sound card: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"failed to register sound card: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"device node not found\0A\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"atmel,model\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"atmel,mic-min-freq\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"failed to get mic-min-freq\0A\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"atmel,mic-max-freq\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"failed to get mic-max-freq\0A\00", align 1
@.str.19 = private unnamed_addr constant [51 x i8] c"mic-max-freq should not be less than mic-min-freq\0A\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"atmel,mic-offset\00", align 1
@.str.21 = private unnamed_addr constant [81 x i8] c"mic-offset value %d is larger than the max value %d, the max value is specified\0A\00", align 1
@.str.22 = private unnamed_addr constant [79 x i8] c"mic-offset value %d is less than the min value %d, the min value is specified\0A\00", align 1
@atmel_pdmic_cpu_dai_ops = internal constant %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atmel_pdmic_cpu_dai_startup, ptr @atmel_pdmic_cpu_dai_shutdown, ptr @atmel_pdmic_cpu_dai_hw_params, ptr null, ptr @atmel_pdmic_cpu_dai_prepare, ptr @atmel_pdmic_cpu_dai_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, align 4
@.str.23 = private unnamed_addr constant [8 x i8] c"Capture\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"only supports one channel\0A\00", align 1
@.str.25 = private unnamed_addr constant [57 x i8] c"sample rate is %dHz, min rate is %dHz, max rate is %dHz\0A\00", align 1
@atmel_pdmic_snd_controls = internal constant [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.26, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @pdmic_get_mic_volsw, ptr @pdmic_put_mic_volsw, %union.anon.80 { ptr @mic_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.27, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.28 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.29, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.30 to i32) }], align 4
@.str.26 = private unnamed_addr constant [19 x i8] c"Mic Capture Volume\00", align 1
@mic_gain_tlv = internal constant [26 x i32] [i32 3, i32 96, i32 0, i32 1, i32 1, i32 8, i32 -9000, i32 600, i32 2, i32 5, i32 1, i32 8, i32 -8100, i32 300, i32 6, i32 7, i32 1, i32 8, i32 -7000, i32 200, i32 8, i32 163, i32 1, i32 8, i32 -6500, i32 100], align 4
@.compoundliteral = internal global %struct.soc_mixer_control { i32 0, i32 163, i32 163, i32 92, i32 92, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.27 = private unnamed_addr constant [24 x i8] c"High Pass Filter Switch\00", align 1
@.compoundliteral.28 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 88, i32 88, i32 1, i32 1, i32 0, i8 1 }, align 4
@.str.29 = private unnamed_addr constant [20 x i8] c"SINCC Filter Switch\00", align 1
@.compoundliteral.30 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 88, i32 88, i32 2, i32 2, i32 0, i8 1 }, align 4
@mic_gain_table = internal unnamed_addr constant [164 x %struct.mic_gain] [%struct.mic_gain { i32 1, i32 15 }, %struct.mic_gain { i32 1, i32 14 }, %struct.mic_gain { i32 3, i32 15 }, %struct.mic_gain { i32 1, i32 13 }, %struct.mic_gain { i32 3, i32 14 }, %struct.mic_gain { i32 1, i32 12 }, %struct.mic_gain { i32 5, i32 14 }, %struct.mic_gain { i32 13, i32 15 }, %struct.mic_gain { i32 9, i32 14 }, %struct.mic_gain { i32 21, i32 15 }, %struct.mic_gain { i32 23, i32 15 }, %struct.mic_gain { i32 13, i32 14 }, %struct.mic_gain { i32 29, i32 15 }, %struct.mic_gain { i32 33, i32 15 }, %struct.mic_gain { i32 37, i32 15 }, %struct.mic_gain { i32 41, i32 15 }, %struct.mic_gain { i32 23, i32 14 }, %struct.mic_gain { i32 13, i32 13 }, %struct.mic_gain { i32 58, i32 15 }, %struct.mic_gain { i32 65, i32 15 }, %struct.mic_gain { i32 73, i32 15 }, %struct.mic_gain { i32 41, i32 14 }, %struct.mic_gain { i32 23, i32 13 }, %struct.mic_gain { i32 13, i32 12 }, %struct.mic_gain { i32 29, i32 13 }, %struct.mic_gain { i32 65, i32 14 }, %struct.mic_gain { i32 73, i32 14 }, %struct.mic_gain { i32 41, i32 13 }, %struct.mic_gain { i32 23, i32 12 }, %struct.mic_gain { i32 207, i32 15 }, %struct.mic_gain { i32 29, i32 12 }, %struct.mic_gain { i32 65, i32 13 }, %struct.mic_gain { i32 73, i32 13 }, %struct.mic_gain { i32 41, i32 12 }, %struct.mic_gain { i32 23, i32 11 }, %struct.mic_gain { i32 413, i32 15 }, %struct.mic_gain { i32 463, i32 15 }, %struct.mic_gain { i32 519, i32 15 }, %struct.mic_gain { i32 583, i32 15 }, %struct.mic_gain { i32 327, i32 14 }, %struct.mic_gain { i32 367, i32 14 }, %struct.mic_gain { i32 823, i32 15 }, %struct.mic_gain { i32 231, i32 13 }, %struct.mic_gain { i32 1036, i32 15 }, %struct.mic_gain { i32 1163, i32 15 }, %struct.mic_gain { i32 1305, i32 15 }, %struct.mic_gain { i32 183, i32 12 }, %struct.mic_gain { i32 1642, i32 15 }, %struct.mic_gain { i32 1843, i32 15 }, %struct.mic_gain { i32 2068, i32 15 }, %struct.mic_gain { i32 145, i32 11 }, %struct.mic_gain { i32 2603, i32 15 }, %struct.mic_gain { i32 365, i32 12 }, %struct.mic_gain { i32 3277, i32 15 }, %struct.mic_gain { i32 3677, i32 15 }, %struct.mic_gain { i32 4125, i32 15 }, %struct.mic_gain { i32 4629, i32 15 }, %struct.mic_gain { i32 5193, i32 15 }, %struct.mic_gain { i32 5827, i32 15 }, %struct.mic_gain { i32 3269, i32 14 }, %struct.mic_gain { i32 917, i32 12 }, %struct.mic_gain { i32 8231, i32 15 }, %struct.mic_gain { i32 9235, i32 15 }, %struct.mic_gain { i32 5181, i32 14 }, %struct.mic_gain { i32 11627, i32 15 }, %struct.mic_gain { i32 13045, i32 15 }, %struct.mic_gain { i32 14637, i32 15 }, %struct.mic_gain { i32 16423, i32 15 }, %struct.mic_gain { i32 18427, i32 15 }, %struct.mic_gain { i32 20675, i32 15 }, %struct.mic_gain { i32 5799, i32 13 }, %struct.mic_gain { i32 26029, i32 15 }, %struct.mic_gain { i32 7301, i32 13 }, %struct.mic_gain { i32 1, i32 0 }, %struct.mic_gain { i32 18383, i32 14 }, %struct.mic_gain { i32 10313, i32 13 }, %struct.mic_gain { i32 23143, i32 14 }, %struct.mic_gain { i32 25967, i32 14 }, %struct.mic_gain { i32 29135, i32 14 }, %struct.mic_gain { i32 16345, i32 13 }, %struct.mic_gain { i32 4585, i32 11 }, %struct.mic_gain { i32 20577, i32 13 }, %struct.mic_gain { i32 1443, i32 9 }, %struct.mic_gain { i32 25905, i32 13 }, %struct.mic_gain { i32 14533, i32 12 }, %struct.mic_gain { i32 8153, i32 11 }, %struct.mic_gain { i32 2287, i32 9 }, %struct.mic_gain { i32 20529, i32 12 }, %struct.mic_gain { i32 11517, i32 11 }, %struct.mic_gain { i32 6461, i32 10 }, %struct.mic_gain { i32 28997, i32 12 }, %struct.mic_gain { i32 4067, i32 9 }, %struct.mic_gain { i32 18253, i32 11 }, %struct.mic_gain { i32 10, i32 0 }, %struct.mic_gain { i32 22979, i32 11 }, %struct.mic_gain { i32 25783, i32 11 }, %struct.mic_gain { i32 28929, i32 11 }, %struct.mic_gain { i32 32459, i32 11 }, %struct.mic_gain { i32 9105, i32 9 }, %struct.mic_gain { i32 20431, i32 10 }, %struct.mic_gain { i32 22925, i32 10 }, %struct.mic_gain { i32 12861, i32 9 }, %struct.mic_gain { i32 7215, i32 8 }, %struct.mic_gain { i32 16191, i32 9 }, %struct.mic_gain { i32 9083, i32 8 }, %struct.mic_gain { i32 20383, i32 9 }, %struct.mic_gain { i32 11435, i32 8 }, %struct.mic_gain { i32 6145, i32 7 }, %struct.mic_gain { i32 3599, i32 6 }, %struct.mic_gain { i32 32305, i32 9 }, %struct.mic_gain { i32 18123, i32 8 }, %struct.mic_gain { i32 20335, i32 8 }, %struct.mic_gain { i32 713, i32 3 }, %struct.mic_gain { i32 100, i32 0 }, %struct.mic_gain { i32 7181, i32 6 }, %struct.mic_gain { i32 8057, i32 6 }, %struct.mic_gain { i32 565, i32 2 }, %struct.mic_gain { i32 20287, i32 7 }, %struct.mic_gain { i32 11381, i32 6 }, %struct.mic_gain { i32 25539, i32 7 }, %struct.mic_gain { i32 1791, i32 3 }, %struct.mic_gain { i32 4019, i32 4 }, %struct.mic_gain { i32 9019, i32 5 }, %struct.mic_gain { i32 20239, i32 6 }, %struct.mic_gain { i32 5677, i32 4 }, %struct.mic_gain { i32 25479, i32 6 }, %struct.mic_gain { i32 7147, i32 4 }, %struct.mic_gain { i32 8019, i32 4 }, %struct.mic_gain { i32 17995, i32 5 }, %struct.mic_gain { i32 20191, i32 5 }, %struct.mic_gain { i32 11327, i32 4 }, %struct.mic_gain { i32 12709, i32 4 }, %struct.mic_gain { i32 3565, i32 2 }, %struct.mic_gain { i32 1000, i32 0 }, %struct.mic_gain { i32 1122, i32 0 }, %struct.mic_gain { i32 1259, i32 0 }, %struct.mic_gain { i32 2825, i32 1 }, %struct.mic_gain { i32 12679, i32 3 }, %struct.mic_gain { i32 7113, i32 2 }, %struct.mic_gain { i32 7981, i32 2 }, %struct.mic_gain { i32 8955, i32 2 }, %struct.mic_gain { i32 20095, i32 3 }, %struct.mic_gain { i32 22547, i32 3 }, %struct.mic_gain { i32 12649, i32 2 }, %struct.mic_gain { i32 28385, i32 3 }, %struct.mic_gain { i32 3981, i32 0 }, %struct.mic_gain { i32 17867, i32 2 }, %struct.mic_gain { i32 20047, i32 2 }, %struct.mic_gain { i32 11247, i32 1 }, %struct.mic_gain { i32 12619, i32 1 }, %struct.mic_gain { i32 14159, i32 1 }, %struct.mic_gain { i32 31773, i32 2 }, %struct.mic_gain { i32 17825, i32 1 }, %struct.mic_gain { i32 10000, i32 0 }, %struct.mic_gain { i32 11220, i32 0 }, %struct.mic_gain { i32 12589, i32 0 }, %struct.mic_gain { i32 28251, i32 1 }, %struct.mic_gain { i32 15849, i32 0 }, %struct.mic_gain { i32 17783, i32 0 }, %struct.mic_gain { i32 19953, i32 0 }, %struct.mic_gain { i32 22387, i32 0 }, %struct.mic_gain { i32 25119, i32 0 }, %struct.mic_gain { i32 28184, i32 0 }, %struct.mic_gain { i32 31623, i32 0 }], align 4
@atmel_pdmic_hw = internal constant %struct.snd_pcm_hardware { i32 786691, i64 1028, i32 0, i32 0, i32 0, i32 0, i32 0, i32 65536, i32 256, i32 32768, i32 2, i32 256, i32 0 }, align 8
@.str.31 = private unnamed_addr constant [41 x i8] c"hw params to dma slave configure failed\0A\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"PDMIC PCM\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"snd-soc-dummy-dai\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"snd-soc-dummy\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_license234], section "llvm.metadata"
@switch.table.atmel_pdmic_cpu_dai_trigger = private unnamed_addr constant [7 x i32] [i32 0, i32 16, i32 16, i32 0, i32 16, i32 0, i32 16], align 4

@__mod_of__atmel_pdmic_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @atmel_pdmic_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @atmel_pdmic_driver, ptr noundef nonnull @__this_module) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @atmel_pdmic_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_pdmic_probe(ptr noundef %0) #2 {
  %2 = alloca ptr, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store ptr null, ptr %2, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %41, label %7

7:                                                ; preds = %1
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 16, i32 noundef 3520) #7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %43, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.atmel_pdmic_pdata, ptr %8, i32 0, i32 3
  %12 = tail call i32 @of_property_read_string(ptr noundef nonnull %5, ptr noundef nonnull @.str.14, ptr noundef %11) #7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  store ptr @.str.7, ptr %11, align 4
  br label %15

15:                                               ; preds = %14, %10
  %16 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %5, ptr noundef nonnull @.str.15, ptr noundef nonnull %8, i32 noundef 1, i32 noundef 0) #7
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %18, label %41

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.atmel_pdmic_pdata, ptr %8, i32 0, i32 1
  %20 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %5, ptr noundef nonnull @.str.17, ptr noundef %19, i32 noundef 1, i32 noundef 0) #7
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %22, label %41

22:                                               ; preds = %18
  %23 = load i32, ptr %19, align 4
  %24 = load i32, ptr %8, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %41, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.atmel_pdmic_pdata, ptr %8, i32 0, i32 2
  %28 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %5, ptr noundef nonnull @.str.20, ptr noundef %27, i32 noundef 1, i32 noundef 0) #7
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load i32, ptr %27, align 4
  %32 = icmp sgt i32 %31, 32767
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.21, i32 noundef %31, i32 noundef 32767) #8
  br label %37

34:                                               ; preds = %30
  %35 = icmp slt i32 %31, -32768
  br i1 %35, label %36, label %39

36:                                               ; preds = %34
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.22, i32 noundef %31, i32 noundef -32768) #8
  br label %37

37:                                               ; preds = %36, %33, %26
  %38 = phi i32 [ 32767, %33 ], [ -32768, %36 ], [ 0, %26 ]
  store i32 %38, ptr %27, align 4
  br label %39

39:                                               ; preds = %37, %34
  %40 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %40, label %43, label %46

41:                                               ; preds = %22, %18, %15, %1
  %42 = phi ptr [ @.str.13, %1 ], [ @.str.16, %15 ], [ @.str.18, %18 ], [ @.str.19, %22 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull %42) #8
  br label %43

43:                                               ; preds = %41, %39, %7
  %44 = phi ptr [ %8, %39 ], [ inttoptr (i32 -12 to ptr), %7 ], [ inttoptr (i32 -22 to ptr), %41 ]
  %45 = ptrtoint ptr %44 to i32
  br label %153

46:                                               ; preds = %39
  %47 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 32, i32 noundef 3520) #7
  %48 = icmp eq ptr %47, null
  br i1 %48, label %153, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.atmel_pdmic, ptr %47, i32 0, i32 7
  store ptr %8, ptr %50, align 4
  %51 = getelementptr inbounds %struct.atmel_pdmic, ptr %47, i32 0, i32 4
  store ptr %3, ptr %51, align 4
  %52 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #7
  %53 = getelementptr inbounds %struct.atmel_pdmic, ptr %47, i32 0, i32 5
  store i32 %52, ptr %53, align 4
  %54 = icmp slt i32 %52, 0
  br i1 %54, label %153, label %55

55:                                               ; preds = %49
  %56 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.1) #7
  %57 = getelementptr inbounds %struct.atmel_pdmic, ptr %47, i32 0, i32 2
  store ptr %56, ptr %57, align 4
  %58 = icmp ugt ptr %56, inttoptr (i32 -4096 to ptr)
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = ptrtoint ptr %56 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2, i32 noundef %60) #8
  br label %153

61:                                               ; preds = %55
  %62 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.3) #7
  %63 = getelementptr inbounds %struct.atmel_pdmic, ptr %47, i32 0, i32 3
  store ptr %62, ptr %63, align 4
  %64 = icmp ugt ptr %62, inttoptr (i32 -4096 to ptr)
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = ptrtoint ptr %62 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4, i32 noundef %66) #8
  br label %153

67:                                               ; preds = %61
  %68 = tail call i32 @clk_get_rate(ptr noundef %56) #7
  %69 = udiv i32 %68, 3
  %70 = tail call i32 @clk_set_rate(ptr noundef %62, i32 noundef %69) #7
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef %70) #8
  br label %153

73:                                               ; preds = %67
  %74 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #7
  %75 = icmp ugt ptr %74, inttoptr (i32 -4096 to ptr)
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = ptrtoint ptr %74 to i32
  br label %153

78:                                               ; preds = %73
  %79 = load ptr, ptr %2, align 4
  %80 = load i32, ptr %79, align 4
  store i32 %80, ptr %47, align 4
  %81 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %3, ptr noundef null, ptr noundef %74, ptr noundef nonnull @atmel_pdmic_regmap_config, ptr noundef null, ptr noundef null) #7
  %82 = getelementptr inbounds %struct.atmel_pdmic, ptr %47, i32 0, i32 1
  store ptr %81, ptr %82, align 4
  %83 = icmp ugt ptr %81, inttoptr (i32 -4096 to ptr)
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = ptrtoint ptr %81 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6, i32 noundef %85) #8
  br label %153

86:                                               ; preds = %78
  %87 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %52, ptr noundef nonnull @atmel_pdmic_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull %47) #7
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = load i32, ptr %53, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.8, i32 noundef %90, i32 noundef %87) #8
  br label %153

91:                                               ; preds = %86
  %92 = load ptr, ptr %50, align 4
  %93 = load i32, ptr %92, align 4
  %94 = getelementptr inbounds %struct.atmel_pdmic_pdata, ptr %92, i32 0, i32 1
  %95 = load i32, ptr %94, align 4
  %96 = load ptr, ptr %57, align 4
  %97 = call i32 @clk_get_rate(ptr noundef %96) #7
  %98 = lshr i32 %97, 1
  %99 = load ptr, ptr %63, align 4
  %100 = call i32 @clk_get_rate(ptr noundef %99) #7
  %101 = lshr i32 %100, 8
  %102 = call i32 @llvm.umin.i32(i32 %95, i32 %98) #7
  %103 = call i32 @llvm.umax.i32(i32 %93, i32 %101) #7
  %104 = add i32 %103, 64
  %105 = lshr i32 %104, 7
  %106 = lshr i32 %102, 6
  store i32 %105, ptr getelementptr inbounds (%struct.snd_soc_dai_driver, ptr @atmel_pdmic_cpu_dai, i32 0, i32 10, i32 3), align 4
  store i32 %106, ptr getelementptr inbounds (%struct.snd_soc_dai_driver, ptr @atmel_pdmic_cpu_dai, i32 0, i32 10, i32 4), align 8
  %107 = call i32 @devm_snd_soc_register_component(ptr noundef %3, ptr noundef nonnull @atmel_pdmic_cpu_dai_component, ptr noundef nonnull @atmel_pdmic_cpu_dai, i32 noundef 1) #7
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %91
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.9, i32 noundef %107) #8
  br label %153

110:                                              ; preds = %91
  %111 = call i32 @devm_snd_dmaengine_pcm_register(ptr noundef %3, ptr noundef nonnull @atmel_pdmic_dmaengine_pcm_config, i32 noundef 0) #7
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %110
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.10, i32 noundef %111) #8
  br label %153

114:                                              ; preds = %110
  %115 = call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 484, i32 noundef 3520) #7
  %116 = icmp eq ptr %115, null
  br i1 %116, label %153, label %117

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.snd_soc_card, ptr %115, i32 0, i32 58
  store ptr %47, ptr %118, align 4
  %119 = call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 80, i32 noundef 3520) #7
  %120 = icmp eq ptr %119, null
  br i1 %120, label %140, label %121

121:                                              ; preds = %117
  %122 = call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 36, i32 noundef 3520) #7
  %123 = icmp eq ptr %122, null
  br i1 %123, label %140, label %124

124:                                              ; preds = %121
  %125 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %119, i32 0, i32 2
  store ptr %122, ptr %125, align 4
  %126 = getelementptr %struct.snd_soc_dai_link_component, ptr %122, i32 1
  %127 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %119, i32 0, i32 4
  store ptr %126, ptr %127, align 4
  %128 = getelementptr %struct.snd_soc_dai_link_component, ptr %122, i32 2
  %129 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %119, i32 0, i32 6
  store ptr %128, ptr %129, align 4
  %130 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %119, i32 0, i32 3
  store i32 1, ptr %130, align 4
  %131 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %119, i32 0, i32 5
  store i32 1, ptr %131, align 4
  %132 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %119, i32 0, i32 7
  store i32 1, ptr %132, align 4
  store ptr @.str.7, ptr %119, align 4
  %133 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %119, i32 0, i32 1
  store ptr @.str.32, ptr %133, align 4
  %134 = getelementptr %struct.snd_soc_dai_link_component, ptr %122, i32 1, i32 2
  store ptr @.str.33, ptr %134, align 4
  %135 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %136 = load ptr, ptr %135, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %141

138:                                              ; preds = %124
  %139 = load ptr, ptr %3, align 4
  br label %141

140:                                              ; preds = %121, %117
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.11, i32 noundef -12) #8
  br label %153

141:                                              ; preds = %138, %124
  %142 = phi ptr [ %139, %138 ], [ %136, %124 ]
  %143 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %122, i32 0, i32 2
  store ptr %142, ptr %143, align 4
  store ptr @.str.34, ptr %126, align 4
  store ptr %142, ptr %128, align 4
  %144 = getelementptr inbounds %struct.snd_soc_card, ptr %115, i32 0, i32 25
  store ptr %119, ptr %144, align 4
  %145 = getelementptr inbounds %struct.snd_soc_card, ptr %115, i32 0, i32 26
  store i32 1, ptr %145, align 4
  %146 = load ptr, ptr %50, align 4
  %147 = getelementptr inbounds %struct.atmel_pdmic_pdata, ptr %146, i32 0, i32 3
  %148 = load ptr, ptr %147, align 4
  store ptr %148, ptr %115, align 4
  %149 = getelementptr inbounds %struct.snd_soc_card, ptr %115, i32 0, i32 6
  store ptr %3, ptr %149, align 4
  %150 = call i32 @devm_snd_soc_register_card(ptr noundef %3, ptr noundef nonnull %115) #7
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %141
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.12, i32 noundef %150) #8
  br label %153

153:                                              ; preds = %152, %141, %140, %114, %113, %109, %89, %84, %76, %72, %65, %59, %49, %46, %43
  %154 = phi i32 [ %45, %43 ], [ %60, %59 ], [ %66, %65 ], [ %70, %72 ], [ %77, %76 ], [ %85, %84 ], [ %87, %89 ], [ %107, %109 ], [ %111, %113 ], [ -12, %46 ], [ %52, %49 ], [ 0, %141 ], [ -12, %140 ], [ %150, %152 ], [ -12, %114 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 %154
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @atmel_pdmic_remove(ptr nocapture noundef readnone %0) #3 {
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_pdmic_interrupt(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.atmel_pdmic, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = call i32 @regmap_read(ptr noundef %5, i32 noundef 36, ptr noundef nonnull %3) #7
  %7 = load i32, ptr %3, align 4
  %8 = and i32 %7, 33554432
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %4, align 4
  %12 = call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 0, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %13 = getelementptr inbounds %struct.atmel_pdmic, ptr %1, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = call i32 @snd_pcm_stop_xrun(ptr noundef %14) #7
  br label %16

16:                                               ; preds = %10, %2
  %17 = phi i32 [ 1, %10 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_dmaengine_pcm_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_card(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_stop_xrun(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_pdmic_cpu_dai_startup(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_soc_card, ptr %6, i32 0, i32 58
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.atmel_pdmic, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @clk_prepare(ptr noundef %10) #7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %36

13:                                               ; preds = %2
  %14 = tail call i32 @clk_enable(ptr noundef %10) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  tail call void @clk_unprepare(ptr noundef %10) #7
  br label %36

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.atmel_pdmic, ptr %8, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 @clk_prepare(ptr noundef %19) #7
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = tail call i32 @clk_enable(ptr noundef %19) #7
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  tail call void @clk_unprepare(ptr noundef %19) #7
  br label %26

26:                                               ; preds = %25, %17
  %27 = phi i32 [ %23, %25 ], [ %20, %17 ]
  %28 = load ptr, ptr %9, align 4
  tail call void @clk_disable(ptr noundef %28) #7
  tail call void @clk_unprepare(ptr noundef %28) #7
  br label %36

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.atmel_pdmic, ptr %8, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 @regmap_write(ptr noundef %31, i32 noundef 0, i32 noundef 0) #7
  %33 = getelementptr inbounds %struct.atmel_pdmic, ptr %8, i32 0, i32 6
  store ptr %0, ptr %33, align 4
  %34 = load ptr, ptr %30, align 4
  %35 = tail call i32 @regmap_write(ptr noundef %34, i32 noundef 24, i32 noundef 33554432) #7
  br label %36

36:                                               ; preds = %29, %26, %16, %2
  %37 = phi i32 [ %27, %26 ], [ 0, %29 ], [ %14, %16 ], [ %11, %2 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_pdmic_cpu_dai_shutdown(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_soc_card, ptr %6, i32 0, i32 58
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.atmel_pdmic, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 28, i32 noundef 33554432) #7
  %12 = getelementptr inbounds %struct.atmel_pdmic, ptr %8, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  tail call void @clk_disable(ptr noundef %13) #7
  tail call void @clk_unprepare(ptr noundef %13) #7
  %14 = getelementptr inbounds %struct.atmel_pdmic, ptr %8, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  tail call void @clk_disable(ptr noundef %15) #7
  tail call void @clk_unprepare(ptr noundef %15) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_pdmic_cpu_dai_hw_params(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #2 {
  %4 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_soc_card, ptr %7, i32 0, i32 58
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 12
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %13, i32 0, i32 46, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %13, i32 0, i32 46, i32 4
  %17 = load i32, ptr %16, align 8
  %18 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %28, %3
  %24 = phi i32 [ 0, %3 ], [ 32, %28 ]
  %25 = phi i32 [ %21, %3 ], [ %30, %28 ]
  %26 = tail call i32 @llvm.cttz.i32(i32 %25, i1 true) #7, !range !9
  %27 = or i32 %26, %24
  br label %32

28:                                               ; preds = %3
  %29 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %23

32:                                               ; preds = %28, %23
  %33 = phi i32 [ %27, %23 ], [ 0, %28 ]
  %34 = tail call i32 @snd_pcm_format_width(i32 noundef %33) #7
  %35 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.snd_soc_component, ptr %11, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.24) #8
  br label %85

41:                                               ; preds = %32
  %42 = icmp ult i32 %19, %15
  %43 = icmp ugt i32 %19, %17
  %44 = select i1 %42, i1 true, i1 %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.snd_soc_component, ptr %11, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.25, i32 noundef %19, i32 noundef %15, i32 noundef %17) #8
  br label %85

48:                                               ; preds = %41
  switch i32 %34, label %85 [
    i32 16, label %50
    i32 32, label %49
  ]

49:                                               ; preds = %48
  br label %50

50:                                               ; preds = %49, %48
  %51 = phi i32 [ 8, %49 ], [ 0, %48 ]
  %52 = shl i32 %19, 7
  %53 = shl i32 %17, 6
  %54 = icmp ugt i32 %52, %53
  %55 = shl i32 %19, 6
  %56 = or i32 %51, 16
  %57 = select i1 %54, i32 %55, i32 %52
  %58 = select i1 %54, i32 %56, i32 %51
  %59 = getelementptr inbounds %struct.atmel_pdmic, ptr %9, i32 0, i32 2
  %60 = load ptr, ptr %59, align 4
  %61 = tail call i32 @clk_get_rate(ptr noundef %60) #7
  %62 = getelementptr inbounds %struct.atmel_pdmic, ptr %9, i32 0, i32 3
  %63 = load ptr, ptr %62, align 4
  %64 = tail call i32 @clk_get_rate(ptr noundef %63) #7
  %65 = shl i32 %57, 1
  %66 = udiv i32 %61, %65
  %67 = add i32 %66, -1
  %68 = udiv i32 %64, %65
  %69 = icmp ugt i32 %67, 127
  br i1 %69, label %76, label %70

70:                                               ; preds = %50
  %71 = shl i32 %68, 1
  %72 = udiv i32 %64, %71
  %73 = shl nuw nsw i32 %66, 1
  %74 = udiv i32 %61, %73
  %75 = icmp ult i32 %72, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %70, %50
  %77 = shl i32 %68, 8
  %78 = add i32 %77, -240
  br label %81

79:                                               ; preds = %70
  %80 = shl nuw nsw i32 %67, 8
  br label %81

81:                                               ; preds = %79, %76
  %82 = phi i32 [ %78, %76 ], [ %80, %79 ]
  %83 = tail call i32 @snd_soc_component_update_bits(ptr noundef %11, i32 noundef 4, i32 noundef 32528, i32 noundef %82) #7
  %84 = tail call i32 @snd_soc_component_update_bits(ptr noundef %11, i32 noundef 88, i32 noundef 120, i32 noundef %58) #7
  br label %85

85:                                               ; preds = %81, %48, %45, %38
  %86 = phi i32 [ -22, %38 ], [ -22, %45 ], [ 0, %81 ], [ -22, %48 ]
  ret i32 %86
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_pdmic_cpu_dai_prepare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_soc_card, ptr %7, i32 0, i32 58
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 12
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  %12 = getelementptr inbounds %struct.atmel_pdmic, ptr %9, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = call i32 @regmap_read(ptr noundef %13, i32 noundef 20, ptr noundef nonnull %3) #7
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = call i32 @snd_soc_component_update_bits(ptr noundef %11, i32 noundef 0, i32 noundef 16, i32 noundef 0) #7
  %18 = call i32 @llvm.smin.i32(i32 %17, i32 0)
  br label %19

19:                                               ; preds = %16, %2
  %20 = phi i32 [ 0, %2 ], [ %18, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_pdmic_cpu_dai_trigger(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #2 {
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
  %13 = getelementptr inbounds [7 x i32], ptr @switch.table.atmel_pdmic_cpu_dai_trigger, i32 0, i32 %1
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @snd_soc_component_update_bits(ptr noundef %5, i32 noundef 0, i32 noundef 16, i32 noundef %14) #7
  br label %16

16:                                               ; preds = %12, %7, %3
  %17 = phi i32 [ 0, %12 ], [ -22, %3 ], [ -22, %7 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_pdmic_component_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.snd_soc_card, ptr %5, i32 0, i32 58
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.atmel_pdmic, ptr %7, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.atmel_pdmic_pdata, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = shl i32 %11, 16
  %13 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 92, i32 noundef -65536, i32 noundef %12) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pdmic_get_mic_volsw(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @snd_soc_component_read(ptr noundef %4, i32 noundef 92) #7
  %6 = and i32 %5, 32767
  %7 = tail call i32 @snd_soc_component_read(ptr noundef %4, i32 noundef 88) #7
  %8 = lshr i32 %7, 8
  %9 = and i32 %8, 15
  %10 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  br label %11

11:                                               ; preds = %21, %2
  %12 = phi i32 [ 0, %2 ], [ %22, %21 ]
  %13 = getelementptr [164 x %struct.mic_gain], ptr @mic_gain_table, i32 0, i32 %12
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, %6
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = getelementptr [164 x %struct.mic_gain], ptr @mic_gain_table, i32 0, i32 %12, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, %9
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 %12, ptr %10, align 8
  br label %21

21:                                               ; preds = %20, %16, %11
  %22 = add nuw nsw i32 %12, 1
  %23 = icmp eq i32 %22, 164
  br i1 %23, label %24, label %11

24:                                               ; preds = %21
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pdmic_put_mic_volsw(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.soc_mixer_control, ptr %5, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = icmp ugt i32 %11, %9
  br i1 %12, label %24, label %13

13:                                               ; preds = %2
  %14 = getelementptr [164 x %struct.mic_gain], ptr @mic_gain_table, i32 0, i32 %11
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 @snd_soc_component_update_bits(ptr noundef %7, i32 noundef 92, i32 noundef 32767, i32 noundef %15) #7
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  %19 = getelementptr [164 x %struct.mic_gain], ptr @mic_gain_table, i32 0, i32 %11, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = shl i32 %20, 8
  %22 = tail call i32 @snd_soc_component_update_bits(ptr noundef %7, i32 noundef 88, i32 noundef 3840, i32 noundef %21) #7
  %23 = tail call i32 @llvm.smin.i32(i32 %22, i32 0)
  br label %24

24:                                               ; preds = %18, %13, %2
  %25 = phi i32 [ -22, %2 ], [ %16, %13 ], [ %23, %18 ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_pdmic_platform_configure_dma(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_soc_card, ptr %7, i32 0, i32 58
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @snd_hwparams_to_dma_slave_config(ptr noundef %0, ptr noundef %1, ptr noundef %2) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.atmel_pdmic, ptr %9, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.31) #8
  br label %21

15:                                               ; preds = %3
  %16 = load i32, ptr %9, align 4
  %17 = add i32 %16, 20
  %18 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 1
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 5
  store i32 1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 6
  store i32 1, ptr %20, align 4
  br label %21

21:                                               ; preds = %15, %12
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hwparams_to_dma_slave_config(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!9 = !{i32 0, i32 33}
