; ModuleID = '/llk/IR/sound/soc/codecs/wm8994.c_pt.bc'
source_filename = "../sound/soc/codecs/wm8994.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wm8994_mic_detect:\09\09\09\09\09"
module asm "\09.asciz \09\22wm8994_mic_detect\22\09\09\09\09\09"
module asm "__kstrtabns_wm8994_mic_detect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wm8958_mic_detect:\09\09\09\09\09"
module asm "\09.asciz \09\22wm8958_mic_detect\22\09\09\09\09\09"
module asm "__kstrtabns_wm8958_mic_detect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.wm8958_micd_rate = type { i32, i8, i32, i32 }
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
%struct.lock_class_key = type {}
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.89, ptr }
%union.anon.89 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.wm8994_reg_mask = type { i32, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.81, i32 }
%union.anon.81 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_bytes = type { i32, i32, i32 }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.anon.92 = type { i32, i32 }
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
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [80 x i8], [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.wm_hubs_data = type { i32, i32, i32, i32, i32, i32, i8, i8, %struct.list_head, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, %struct.completion, ptr }
%struct.wm8994_priv = type { %struct.wm_hubs_data, ptr, [2 x %struct.clk_bulk_data], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x %struct.wm8994_fll_config], [2 x %struct.wm8994_fll_config], [2 x %struct.completion], i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], ptr, [3 x i32], %struct.soc_enum, i32, ptr, [3 x i32], %struct.soc_enum, i32, ptr, %struct.soc_enum, i32, ptr, %struct.soc_enum, i32, ptr, %struct.soc_enum, i32, ptr, %struct.soc_enum, %struct.mutex, [2 x %struct.wm8994_micdet], %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, i16, i8, i8, i32, i8, i32, %struct.delayed_work, i32, ptr, ptr, ptr, ptr, i8, %struct.mutex, i32, ptr, ptr, ptr, ptr }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.wm8994_fll_config = type { i32, i32, i32 }
%struct.wm8994_micdet = type { ptr, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.wm8994 = type { %struct.wm8994_pdata, i32, i32, i32, ptr, ptr, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr }
%struct.wm8994_pdata = type { i32, [11 x i32], [2 x %struct.wm8994_ldo_pdata], i32, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, i8, i32, i32, i32, i8, [2 x i32], i16, i8, i8, i8, [3 x i32], i32 }
%struct.wm8994_ldo_pdata = type { ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.wm8994_drc_cfg = type { ptr, [5 x i16] }
%struct.wm8994_retune_mobile_cfg = type { ptr, i32, [20 x i16] }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.80, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.80 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.75, [128 x i8] }
%union.anon.75 = type { %union.anon.77 }
%union.anon.77 = type { [64 x i64] }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.fll_div = type { i16, i16, i16, i16, i16, i16 }
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

@.str = private unnamed_addr constant [17 x i8] c"LINEOUT1N Driver\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"LINEOUT1P Driver\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"LINEOUT2N Driver\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"LINEOUT2P Driver\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Not a WM8994\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"MICBIAS1\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Invalid MICBIAS %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Failed to configure MICBIAS%d: %d\0A\00", align 1
@__kstrtab_wm8994_mic_detect = external dso_local constant [0 x i8], align 1
@__kstrtabns_wm8994_mic_detect = external dso_local constant [0 x i8], align 1
@__ksymtab_wm8994_mic_detect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wm8994_mic_detect to i32), ptr @__kstrtab_wm8994_mic_detect, ptr @__kstrtabns_wm8994_mic_detect }, section "___ksymtab_gpl+wm8994_mic_detect", align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"CLK_SYS\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"sound/soc/codecs/wm8994.c\00", align 1
@__kstrtab_wm8958_mic_detect = external dso_local constant [0 x i8], align 1
@__kstrtabns_wm8958_mic_detect = external dso_local constant [0 x i8], align 1
@__ksymtab_wm8958_mic_detect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wm8958_mic_detect to i32), ptr @__kstrtab_wm8958_mic_detect, ptr @__kstrtabns_wm8958_mic_detect }, section "___ksymtab_gpl+wm8958_mic_detect", align 4
@__UNIQUE_ID_description285 = internal constant [31 x i8] c"description=ASoC WM8994 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author286 = internal constant [56 x i8] c"author=Mark Brown <broonie@opensource.wolfsonmicro.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license287 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias288 = internal constant [28 x i8] c"alias=platform:wm8994-codec\00", section ".modinfo", align 1
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.10 = private unnamed_addr constant [9 x i8] c"MICBIAS2\00", align 1
@jackdet_rates = internal unnamed_addr constant [4 x %struct.wm8958_micd_rate] [%struct.wm8958_micd_rate { i32 32768, i8 1, i32 0, i32 1 }, %struct.wm8958_micd_rate { i32 32768, i8 0, i32 0, i32 1 }, %struct.wm8958_micd_rate { i32 11289600, i8 1, i32 10, i32 10 }, %struct.wm8958_micd_rate { i32 11289600, i8 0, i32 7, i32 8 }], align 4
@micdet_rates = internal unnamed_addr constant [4 x %struct.wm8958_micd_rate] [%struct.wm8958_micd_rate { i32 32768, i8 1, i32 1, i32 4 }, %struct.wm8958_micd_rate { i32 32768, i8 0, i32 1, i32 1 }, %struct.wm8958_micd_rate { i32 11289600, i8 1, i32 7, i32 10 }, %struct.wm8958_micd_rate { i32 11289600, i8 0, i32 7, i32 10 }], align 4
@wm8994_codec_driver = internal global %struct.platform_driver { ptr @wm8994_probe, ptr @wm8994_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.11, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8994_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.11 = private unnamed_addr constant [13 x i8] c"wm8994-codec\00", align 1
@wm8994_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @wm8994_suspend, ptr @wm8994_resume, ptr @wm8994_suspend, ptr @wm8994_resume, ptr @wm8994_suspend, ptr @wm8994_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@wm8994_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"&wm8994->fw_lock\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"MCLK1\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"MCLK2\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"Failed to get clocks: %d\0A\00", align 1
@soc_component_dev_wm8994 = internal constant %struct.snd_soc_component_driver { ptr null, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr @wm8994_component_probe, ptr @wm8994_component_remove, ptr @wm8994_component_suspend, ptr @wm8994_component_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8994_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 58, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@wm8994_dai = internal global [3 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.378, i32 1, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @wm8994_aif1_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.366, i64 68719477828, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 24 }, %struct.snd_soc_pcm_stream { ptr @.str.363, i64 68719477828, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 24 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.379, i32 2, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @wm8994_aif2_probe, ptr null, ptr null, ptr null, ptr @wm8994_aif2_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.367, i64 68719477828, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 24 }, %struct.snd_soc_pcm_stream { ptr @.str.364, i64 68719477828, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 24 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.380, i32 3, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @wm8994_aif3_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.368, i64 68719477828, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 24 }, %struct.snd_soc_pcm_stream { ptr @.str.365, i64 68719477828, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 24 }, i8 0, i32 0, i32 0 }], align 8
@wm8994_component_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"&wm8994->accdet_lock\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"FIFO error\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"Thermal warning\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"Thermal shutdown\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"Mic1 detect\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"Mic 1 detect\00", align 1
@.str.22 = private unnamed_addr constant [39 x i8] c"Failed to request Mic1 detect IRQ: %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"Mic 1 short\00", align 1
@.str.24 = private unnamed_addr constant [38 x i8] c"Failed to request Mic1 short IRQ: %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"Mic 2 detect\00", align 1
@.str.26 = private unnamed_addr constant [39 x i8] c"Failed to request Mic2 detect IRQ: %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"Mic 2 short\00", align 1
@.str.28 = private unnamed_addr constant [38 x i8] c"Failed to request Mic2 short IRQ: %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"Mic detect\00", align 1
@.str.30 = private unnamed_addr constant [38 x i8] c"Failed to request Mic detect IRQ: %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"JACKDET\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"FLL lock\00", align 1
@.str.33 = private unnamed_addr constant [32 x i8] c"Failed to read GPIO1 state: %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [32 x i8] c"Failed to read GPIO6 state: %d\0A\00", align 1
@wm8994_vu_bits = internal unnamed_addr constant [22 x %struct.wm8994_reg_mask] [%struct.wm8994_reg_mask { i32 24, i32 256 }, %struct.wm8994_reg_mask { i32 26, i32 256 }, %struct.wm8994_reg_mask { i32 25, i32 256 }, %struct.wm8994_reg_mask { i32 27, i32 256 }, %struct.wm8994_reg_mask { i32 38, i32 256 }, %struct.wm8994_reg_mask { i32 39, i32 256 }, %struct.wm8994_reg_mask { i32 28, i32 256 }, %struct.wm8994_reg_mask { i32 29, i32 256 }, %struct.wm8994_reg_mask { i32 32, i32 256 }, %struct.wm8994_reg_mask { i32 33, i32 256 }, %struct.wm8994_reg_mask { i32 1026, i32 256 }, %struct.wm8994_reg_mask { i32 1027, i32 256 }, %struct.wm8994_reg_mask { i32 1282, i32 256 }, %struct.wm8994_reg_mask { i32 1283, i32 256 }, %struct.wm8994_reg_mask { i32 1024, i32 256 }, %struct.wm8994_reg_mask { i32 1025, i32 256 }, %struct.wm8994_reg_mask { i32 1280, i32 256 }, %struct.wm8994_reg_mask { i32 1281, i32 256 }, %struct.wm8994_reg_mask { i32 1552, i32 256 }, %struct.wm8994_reg_mask { i32 1553, i32 256 }, %struct.wm8994_reg_mask { i32 1554, i32 256 }, %struct.wm8994_reg_mask { i32 1555, i32 256 }], align 4
@wm8994_common_snd_controls = internal constant [48 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.87, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @digital_tlv }, i32 ptrtoint (ptr @.compoundliteral.88 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.89, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @digital_tlv }, i32 ptrtoint (ptr @.compoundliteral.90 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.91, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @aif1adcl_src to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.92, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @aif1adcr_src to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.93, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @aif2adcl_src to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.94, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @aif2adcr_src to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.95, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @aif1dacl_src to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.96, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @aif1dacr_src to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.97, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @aif2dacl_src to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.98, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @aif2dacr_src to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.99, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @digital_tlv }, i32 ptrtoint (ptr @.compoundliteral.100 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.101, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @digital_tlv }, i32 ptrtoint (ptr @.compoundliteral.102 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.103, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @aif_tlv }, i32 ptrtoint (ptr @.compoundliteral.104 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.105, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @aif_tlv }, i32 ptrtoint (ptr @.compoundliteral.106 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.107, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.108 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.109, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.110 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.111, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @wm8994_put_drc_sw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.112 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.113, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @wm8994_put_drc_sw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.114 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.115, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @wm8994_put_drc_sw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.116 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.117, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @wm8994_put_drc_sw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.118 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.119, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @wm8994_put_drc_sw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.120 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.121, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @wm8994_put_drc_sw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.122 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.123, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @st_tlv }, i32 ptrtoint (ptr @.compoundliteral.124 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.125, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @st_tlv }, i32 ptrtoint (ptr @.compoundliteral.126 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.127, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @st_tlv }, i32 ptrtoint (ptr @.compoundliteral.128 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.129, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @st_tlv }, i32 ptrtoint (ptr @.compoundliteral.130 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.131, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @sidetone_hpf to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.132, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.133 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.134, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @aif1adc1_hpf to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.135, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.136 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.137, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @aif2adc_hpf to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.138, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.139 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.140, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @adc_osr to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.141, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @dac_osr to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.142, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @digital_tlv }, i32 ptrtoint (ptr @.compoundliteral.143 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.144, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.145 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.146, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @digital_tlv }, i32 ptrtoint (ptr @.compoundliteral.147 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.148, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.149 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.150, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @wm_hubs_spkmix_tlv }, i32 ptrtoint (ptr @.compoundliteral.151 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.152, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @wm_hubs_spkmix_tlv }, i32 ptrtoint (ptr @.compoundliteral.153 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.154, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @wm_hubs_spkmix_tlv }, i32 ptrtoint (ptr @.compoundliteral.155 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.156, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @wm_hubs_spkmix_tlv }, i32 ptrtoint (ptr @.compoundliteral.157 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.158, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @wm8994_3d_tlv }, i32 ptrtoint (ptr @.compoundliteral.159 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.160, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.161 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.162, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @wm8994_3d_tlv }, i32 ptrtoint (ptr @.compoundliteral.163 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.164, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.165 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.166, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @wm8994_3d_tlv }, i32 ptrtoint (ptr @.compoundliteral.167 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.168, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.169 to i32) }], align 4
@wm8994_snd_controls = internal constant [8 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.278, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @digital_tlv }, i32 ptrtoint (ptr @.compoundliteral.279 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.280, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @digital_tlv }, i32 ptrtoint (ptr @.compoundliteral.281 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.282, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.283 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.284, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @wm8994_put_drc_sw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.285 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.286, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @wm8994_put_drc_sw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.287 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.288, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @wm8994_put_drc_sw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.289 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.290, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @aif1adc2_hpf to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.291, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.292 to i32) }], align 4
@wm8958_snd_controls = internal constant [10 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.336, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @aif_tlv }, i32 ptrtoint (ptr @.compoundliteral.337 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.338, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.339 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.340, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @wm8958_aif1dac1_ng_hold to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.341, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @ng_tlv }, i32 ptrtoint (ptr @.compoundliteral.342 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.343, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.344 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.345, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @wm8958_aif1dac2_ng_hold to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.346, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @ng_tlv }, i32 ptrtoint (ptr @.compoundliteral.347 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.348, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.349 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.350, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @wm8958_aif2dac_ng_hold to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.351, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @ng_tlv }, i32 ptrtoint (ptr @.compoundliteral.352 to i32) }], align 4
@.str.35 = private unnamed_addr constant [14 x i8] c"DC servo done\00", align 1
@intercon = internal constant [148 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.8, ptr null, ptr @.str.296, ptr @check_clk_sys, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.8, ptr null, ptr @.str.297, ptr @check_clk_sys, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.190, ptr null, ptr @.str.8, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.191, ptr null, ptr @.str.8, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.192, ptr null, ptr @.str.8, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.193, ptr null, ptr @.str.296, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.193, ptr null, ptr @.str.190, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.194, ptr null, ptr @.str.296, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.194, ptr null, ptr @.str.190, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.194, ptr null, ptr @.str.192, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.195, ptr null, ptr @.str.296, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.195, ptr null, ptr @.str.190, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.196, ptr null, ptr @.str.296, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.196, ptr null, ptr @.str.190, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.196, ptr null, ptr @.str.192, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.197, ptr null, ptr @.str.296, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.197, ptr null, ptr @.str.190, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.198, ptr null, ptr @.str.296, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.198, ptr null, ptr @.str.190, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.198, ptr null, ptr @.str.192, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.199, ptr null, ptr @.str.296, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.199, ptr null, ptr @.str.190, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.200, ptr null, ptr @.str.296, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.200, ptr null, ptr @.str.190, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.200, ptr null, ptr @.str.192, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.211, ptr null, ptr @.str.297, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.211, ptr null, ptr @.str.191, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.212, ptr null, ptr @.str.297, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.212, ptr null, ptr @.str.191, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.212, ptr null, ptr @.str.192, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.213, ptr null, ptr @.str.297, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.213, ptr null, ptr @.str.191, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.214, ptr null, ptr @.str.297, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.214, ptr null, ptr @.str.191, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.214, ptr null, ptr @.str.192, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.227, ptr null, ptr @.str.185, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.227, ptr null, ptr @.str.8, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.228, ptr null, ptr @.str.185, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.228, ptr null, ptr @.str.8, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.225, ptr null, ptr @.str.186, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.225, ptr null, ptr @.str.8, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.226, ptr null, ptr @.str.186, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.226, ptr null, ptr @.str.8, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.229, ptr null, ptr @.str.296, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.229, ptr null, ptr @.str.190, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.229, ptr null, ptr @.str.192, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.230, ptr null, ptr @.str.296, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.230, ptr null, ptr @.str.190, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.230, ptr null, ptr @.str.192, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.323, ptr @.str.326, ptr @.str.229, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.323, ptr @.str.327, ptr @.str.227, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.324, ptr @.str.326, ptr @.str.230, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.324, ptr @.str.327, ptr @.str.228, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.330, ptr null, ptr @.str.296, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.330, ptr null, ptr @.str.190, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.330, ptr null, ptr @.str.192, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.331, ptr null, ptr @.str.296, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.331, ptr null, ptr @.str.190, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.331, ptr null, ptr @.str.192, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.328, ptr null, ptr @.str.297, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.328, ptr null, ptr @.str.191, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.328, ptr null, ptr @.str.192, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.329, ptr null, ptr @.str.214, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.329, ptr null, ptr @.str.297, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.329, ptr null, ptr @.str.191, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.329, ptr null, ptr @.str.192, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.224, ptr null, ptr @.str.8, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.215, ptr null, ptr @.str.363, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.216, ptr null, ptr @.str.364, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.222, ptr null, ptr @.str.365, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.366, ptr null, ptr @.str.217, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.367, ptr null, ptr @.str.218, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.368, ptr null, ptr @.str.223, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.193, ptr null, ptr @.str.201, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.201, ptr @.str.237, ptr @.str.323, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.201, ptr @.str.239, ptr @.str.213, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.194, ptr null, ptr @.str.202, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.202, ptr @.str.237, ptr @.str.324, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.202, ptr @.str.239, ptr @.str.214, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.197, ptr null, ptr @.str.203, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.203, ptr @.str.243, ptr @.str.225, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.203, ptr @.str.239, ptr @.str.213, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.198, ptr null, ptr @.str.204, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.204, ptr @.str.243, ptr @.str.226, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.204, ptr @.str.239, ptr @.str.214, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.195, ptr null, ptr @.str.219, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.196, ptr null, ptr @.str.219, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.199, ptr null, ptr @.str.219, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.200, ptr null, ptr @.str.219, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.219, ptr @.str.215, ptr @.str.231, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.219, ptr @.str.222, ptr @.str.222, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.220, ptr @.str.216, ptr @.str.232, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.220, ptr @.str.222, ptr @.str.222, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.221, ptr @.str.218, ptr @.str.211, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.221, ptr @.str.218, ptr @.str.212, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.209, ptr @.str.239, ptr @.str.213, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.209, ptr @.str.253, ptr @.str.199, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.209, ptr @.str.255, ptr @.str.195, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.209, ptr @.str.250, ptr @.str.207, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.209, ptr @.str.248, ptr @.str.208, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.210, ptr @.str.239, ptr @.str.214, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.210, ptr @.str.253, ptr @.str.200, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.210, ptr @.str.255, ptr @.str.196, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.210, ptr @.str.250, ptr @.str.207, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.210, ptr @.str.248, ptr @.str.208, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.211, ptr null, ptr @.str.205, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.205, ptr @.str.239, ptr @.str.213, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.205, ptr @.str.253, ptr @.str.199, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.205, ptr @.str.255, ptr @.str.195, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.205, ptr @.str.250, ptr @.str.207, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.205, ptr @.str.248, ptr @.str.208, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.212, ptr null, ptr @.str.206, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.206, ptr @.str.239, ptr @.str.214, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.206, ptr @.str.253, ptr @.str.200, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.206, ptr @.str.255, ptr @.str.196, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.206, ptr @.str.250, ptr @.str.207, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.206, ptr @.str.248, ptr @.str.208, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.217, ptr null, ptr @.str.193, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.217, ptr null, ptr @.str.194, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.217, ptr null, ptr @.str.197, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.217, ptr null, ptr @.str.198, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.218, ptr null, ptr @.str.221, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.293, ptr @.str.217, ptr @.str.193, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.293, ptr @.str.217, ptr @.str.194, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.293, ptr @.str.217, ptr @.str.197, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.293, ptr @.str.217, ptr @.str.198, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.293, ptr @.str.218, ptr @.str.211, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.293, ptr @.str.218, ptr @.str.212, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.293, ptr @.str.216, ptr @.str.213, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.293, ptr @.str.216, ptr @.str.214, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.223, ptr null, ptr @.str.293, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.231, ptr @.str.277, ptr @.str.217, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.231, ptr @.str.276, ptr @.str.215, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.232, ptr @.str.277, ptr @.str.218, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.232, ptr @.str.276, ptr @.str.216, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.207, ptr @.str.263, ptr @.str.323, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.207, ptr @.str.264, ptr @.str.225, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.208, ptr @.str.263, ptr @.str.324, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.208, ptr @.str.264, ptr @.str.226, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.369, ptr @.str.370, ptr @.str.330, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.371, ptr @.str.370, ptr @.str.331, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.303, ptr @.str.144, ptr @.str.330, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.303, ptr @.str.148, ptr @.str.328, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.304, ptr @.str.144, ptr @.str.331, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.304, ptr @.str.148, ptr @.str.329, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.305, ptr @.str.372, ptr @.str.330, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.306, ptr @.str.372, ptr @.str.331, ptr null, %struct.snd_soc_dobj zeroinitializer }], align 4
@wm8994_intercon = internal constant [4 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.213, ptr null, ptr @.str.220, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.214, ptr null, ptr @.str.220, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.5, ptr null, ptr @.str.189, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.10, ptr null, ptr @.str.189, ptr null, %struct.snd_soc_dobj zeroinitializer }], align 4
@wm8994_revd_intercon = internal constant [8 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.215, ptr null, ptr @.str.216, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.216, ptr null, ptr @.str.215, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.217, ptr null, ptr @.str.218, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.218, ptr null, ptr @.str.217, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.5, ptr null, ptr @.str.8, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.5, ptr null, ptr @.str.188, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.10, ptr null, ptr @.str.8, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.10, ptr null, ptr @.str.188, ptr null, %struct.snd_soc_dobj zeroinitializer }], align 4
@wm8994_lateclk_revd_intercon = internal constant [8 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.330, ptr null, ptr @.str.298, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.298, ptr null, ptr @.str.209, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.331, ptr null, ptr @.str.299, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.299, ptr null, ptr @.str.210, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.328, ptr null, ptr @.str.300, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.300, ptr null, ptr @.str.205, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.329, ptr null, ptr @.str.301, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.301, ptr null, ptr @.str.206, ptr null, %struct.snd_soc_dobj zeroinitializer }], align 4
@wm8994_lateclk_intercon = internal constant [4 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.330, ptr null, ptr @.str.209, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.331, ptr null, ptr @.str.210, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.328, ptr null, ptr @.str.205, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.329, ptr null, ptr @.str.206, ptr null, %struct.snd_soc_dobj zeroinitializer }], align 4
@wm8958_intercon = internal constant [11 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.213, ptr null, ptr @.str.359, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.214, ptr null, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.359, ptr @.str.362, ptr @.str.220, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.359, ptr @.str.357, ptr @.str.222, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.360, ptr @.str.362, ptr @.str.220, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.360, ptr @.str.357, ptr @.str.222, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.222, ptr null, ptr @.str.357, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.223, ptr null, ptr @.str.357, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.358, ptr @.str.211, ptr @.str.211, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.358, ptr @.str.212, ptr @.str.212, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.293, ptr @.str.295, ptr @.str.358, ptr null, %struct.snd_soc_dobj zeroinitializer }], align 4
@.str.36 = private unnamed_addr constant [38 x i8] c"Failed to read microphone status: %d\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"FIFO error\0A\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"Thermal warning\0A\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"Thermal shutdown\0A\00", align 1
@.str.41 = private unnamed_addr constant [38 x i8] c"Failed to read mic detect status: %d\0A\00", align 1
@.str.42 = private unnamed_addr constant [38 x i8] c"No impedance range reported for jack\0A\00", align 1
@.str.43 = private unnamed_addr constant [32 x i8] c"Failed to read jack status: %d\0A\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"AIF1DRC1 Mode\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"AIF1DRC2 Mode\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"AIF2DRC Mode\00", align 1
@wm8994_drc_controls = internal constant [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.48, i32 0, i32 0, i32 0, ptr @snd_soc_bytes_info, ptr @snd_soc_bytes_get, ptr @snd_soc_bytes_put, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.49, i32 0, i32 0, i32 0, ptr @snd_soc_bytes_info, ptr @snd_soc_bytes_get, ptr @snd_soc_bytes_put, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.50 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.51, i32 0, i32 0, i32 0, ptr @snd_soc_bytes_info, ptr @snd_soc_bytes_get, ptr @snd_soc_bytes_put, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.52 to i32) }], align 4
@.str.47 = private unnamed_addr constant [37 x i8] c"Failed to add DRC mode controls: %d\0A\00", align 1
@wm8994_eq_controls = internal constant [15 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.57, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral.58 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.59, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral.60 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.61, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral.62 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.63, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral.64 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.65, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral.66 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.67, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral.68 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.69, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral.70 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.71, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral.72 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.73, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral.74 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.75, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral.76 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.77, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral.78 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.79, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral.80 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.81, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral.82 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.83, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral.84 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.85, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral.86 to i32) }], align 4
@wm8994_drc_base = internal unnamed_addr constant [3 x i32] [i32 1088, i32 1104, i32 1344], align 4
@.str.48 = private unnamed_addr constant [11 x i8] c"AIF1.1 DRC\00", align 1
@.compoundliteral = internal global %struct.soc_bytes { i32 1088, i32 5, i32 7 }, align 4
@.str.49 = private unnamed_addr constant [11 x i8] c"AIF1.2 DRC\00", align 1
@.compoundliteral.50 = internal global %struct.soc_bytes { i32 1104, i32 5, i32 7 }, align 4
@.str.51 = private unnamed_addr constant [9 x i8] c"AIF2 DRC\00", align 1
@.compoundliteral.52 = internal global %struct.soc_bytes { i32 1344, i32 5, i32 7 }, align 4
@.str.53 = private unnamed_addr constant [15 x i8] c"AIF1.1 EQ Mode\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"AIF1.2 EQ Mode\00", align 1
@.str.55 = private unnamed_addr constant [13 x i8] c"AIF2 EQ Mode\00", align 1
@.str.56 = private unnamed_addr constant [42 x i8] c"Failed to add ReTune Mobile controls: %d\0A\00", align 1
@wm8994_retune_mobile_base = internal unnamed_addr constant [3 x i32] [i32 1152, i32 1184, i32 1408], align 4
@.str.57 = private unnamed_addr constant [20 x i8] c"AIF1DAC1 EQ1 Volume\00", align 1
@eq_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 -1200, i32 100], align 4
@.compoundliteral.58 = internal global %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 1152, i32 1152, i32 11, i32 11, i32 0, i8 0 }, align 4
@.str.59 = private unnamed_addr constant [20 x i8] c"AIF1DAC1 EQ2 Volume\00", align 1
@.compoundliteral.60 = internal global %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 1152, i32 1152, i32 6, i32 6, i32 0, i8 0 }, align 4
@.str.61 = private unnamed_addr constant [20 x i8] c"AIF1DAC1 EQ3 Volume\00", align 1
@.compoundliteral.62 = internal global %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 1152, i32 1152, i32 1, i32 1, i32 0, i8 0 }, align 4
@.str.63 = private unnamed_addr constant [20 x i8] c"AIF1DAC1 EQ4 Volume\00", align 1
@.compoundliteral.64 = internal global %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 1153, i32 1153, i32 11, i32 11, i32 0, i8 0 }, align 4
@.str.65 = private unnamed_addr constant [20 x i8] c"AIF1DAC1 EQ5 Volume\00", align 1
@.compoundliteral.66 = internal global %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 1153, i32 1153, i32 6, i32 6, i32 0, i8 0 }, align 4
@.str.67 = private unnamed_addr constant [20 x i8] c"AIF1DAC2 EQ1 Volume\00", align 1
@.compoundliteral.68 = internal global %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 1184, i32 1184, i32 11, i32 11, i32 0, i8 0 }, align 4
@.str.69 = private unnamed_addr constant [20 x i8] c"AIF1DAC2 EQ2 Volume\00", align 1
@.compoundliteral.70 = internal global %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 1184, i32 1184, i32 6, i32 6, i32 0, i8 0 }, align 4
@.str.71 = private unnamed_addr constant [20 x i8] c"AIF1DAC2 EQ3 Volume\00", align 1
@.compoundliteral.72 = internal global %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 1184, i32 1184, i32 1, i32 1, i32 0, i8 0 }, align 4
@.str.73 = private unnamed_addr constant [20 x i8] c"AIF1DAC2 EQ4 Volume\00", align 1
@.compoundliteral.74 = internal global %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 1185, i32 1185, i32 11, i32 11, i32 0, i8 0 }, align 4
@.str.75 = private unnamed_addr constant [20 x i8] c"AIF1DAC2 EQ5 Volume\00", align 1
@.compoundliteral.76 = internal global %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 1185, i32 1185, i32 6, i32 6, i32 0, i8 0 }, align 4
@.str.77 = private unnamed_addr constant [16 x i8] c"AIF2 EQ1 Volume\00", align 1
@.compoundliteral.78 = internal global %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 1408, i32 1408, i32 11, i32 11, i32 0, i8 0 }, align 4
@.str.79 = private unnamed_addr constant [16 x i8] c"AIF2 EQ2 Volume\00", align 1
@.compoundliteral.80 = internal global %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 1408, i32 1408, i32 6, i32 6, i32 0, i8 0 }, align 4
@.str.81 = private unnamed_addr constant [16 x i8] c"AIF2 EQ3 Volume\00", align 1
@.compoundliteral.82 = internal global %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 1408, i32 1408, i32 1, i32 1, i32 0, i8 0 }, align 4
@.str.83 = private unnamed_addr constant [16 x i8] c"AIF2 EQ4 Volume\00", align 1
@.compoundliteral.84 = internal global %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 1409, i32 1409, i32 11, i32 11, i32 0, i8 0 }, align 4
@.str.85 = private unnamed_addr constant [16 x i8] c"AIF2 EQ5 Volume\00", align 1
@.compoundliteral.86 = internal global %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 1409, i32 1409, i32 6, i32 6, i32 0, i8 0 }, align 4
@.str.87 = private unnamed_addr constant [16 x i8] c"AIF1ADC1 Volume\00", align 1
@digital_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 -7200, i32 65611], align 4
@.compoundliteral.88 = internal global %struct.soc_mixer_control { i32 0, i32 119, i32 119, i32 1024, i32 1025, i32 1, i32 1, i32 0, i8 0 }, align 4
@.str.89 = private unnamed_addr constant [15 x i8] c"AIF2ADC Volume\00", align 1
@.compoundliteral.90 = internal global %struct.soc_mixer_control { i32 0, i32 119, i32 119, i32 1280, i32 1281, i32 1, i32 1, i32 0, i8 0 }, align 4
@.str.91 = private unnamed_addr constant [16 x i8] c"AIF1ADCL Source\00", align 1
@aif1adcl_src = internal constant %struct.soc_enum { i32 768, i8 15, i8 15, i32 2, i32 1, ptr @aif_chan_src_text, ptr null, i8 0 }, align 4
@.str.92 = private unnamed_addr constant [16 x i8] c"AIF1ADCR Source\00", align 1
@aif1adcr_src = internal constant %struct.soc_enum { i32 768, i8 14, i8 14, i32 2, i32 1, ptr @aif_chan_src_text, ptr null, i8 0 }, align 4
@.str.93 = private unnamed_addr constant [16 x i8] c"AIF2ADCL Source\00", align 1
@aif2adcl_src = internal constant %struct.soc_enum { i32 784, i8 15, i8 15, i32 2, i32 1, ptr @aif_chan_src_text, ptr null, i8 0 }, align 4
@.str.94 = private unnamed_addr constant [16 x i8] c"AIF2ADCR Source\00", align 1
@aif2adcr_src = internal constant %struct.soc_enum { i32 784, i8 14, i8 14, i32 2, i32 1, ptr @aif_chan_src_text, ptr null, i8 0 }, align 4
@.str.95 = private unnamed_addr constant [16 x i8] c"AIF1DACL Source\00", align 1
@aif1dacl_src = internal constant %struct.soc_enum { i32 769, i8 15, i8 15, i32 2, i32 1, ptr @aif_chan_src_text, ptr null, i8 0 }, align 4
@.str.96 = private unnamed_addr constant [16 x i8] c"AIF1DACR Source\00", align 1
@aif1dacr_src = internal constant %struct.soc_enum { i32 769, i8 14, i8 14, i32 2, i32 1, ptr @aif_chan_src_text, ptr null, i8 0 }, align 4
@.str.97 = private unnamed_addr constant [16 x i8] c"AIF2DACL Source\00", align 1
@aif2dacl_src = internal constant %struct.soc_enum { i32 785, i8 15, i8 15, i32 2, i32 1, ptr @aif_chan_src_text, ptr null, i8 0 }, align 4
@.str.98 = private unnamed_addr constant [16 x i8] c"AIF2DACR Source\00", align 1
@aif2dacr_src = internal constant %struct.soc_enum { i32 785, i8 14, i8 14, i32 2, i32 1, ptr @aif_chan_src_text, ptr null, i8 0 }, align 4
@.str.99 = private unnamed_addr constant [16 x i8] c"AIF1DAC1 Volume\00", align 1
@.compoundliteral.100 = internal global %struct.soc_mixer_control { i32 0, i32 96, i32 96, i32 1026, i32 1027, i32 1, i32 1, i32 0, i8 0 }, align 4
@.str.101 = private unnamed_addr constant [15 x i8] c"AIF2DAC Volume\00", align 1
@.compoundliteral.102 = internal global %struct.soc_mixer_control { i32 0, i32 96, i32 96, i32 1282, i32 1283, i32 1, i32 1, i32 0, i8 0 }, align 4
@.str.103 = private unnamed_addr constant [18 x i8] c"AIF1 Boost Volume\00", align 1
@aif_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 0, i32 600], align 4
@.compoundliteral.104 = internal global %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 769, i32 769, i32 10, i32 10, i32 0, i8 0 }, align 4
@.str.105 = private unnamed_addr constant [18 x i8] c"AIF2 Boost Volume\00", align 1
@.compoundliteral.106 = internal global %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 785, i32 785, i32 10, i32 10, i32 0, i8 0 }, align 4
@.str.107 = private unnamed_addr constant [19 x i8] c"AIF1DAC1 EQ Switch\00", align 1
@.compoundliteral.108 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1152, i32 1152, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.109 = private unnamed_addr constant [15 x i8] c"AIF2 EQ Switch\00", align 1
@.compoundliteral.110 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1408, i32 1408, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.111 = private unnamed_addr constant [20 x i8] c"AIF1DAC1 DRC Switch\00", align 1
@.compoundliteral.112 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1088, i32 1088, i32 2, i32 2, i32 0, i8 0 }, align 4
@.str.113 = private unnamed_addr constant [21 x i8] c"AIF1ADC1L DRC Switch\00", align 1
@.compoundliteral.114 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1088, i32 1088, i32 1, i32 1, i32 0, i8 0 }, align 4
@.str.115 = private unnamed_addr constant [21 x i8] c"AIF1ADC1R DRC Switch\00", align 1
@.compoundliteral.116 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1088, i32 1088, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.117 = private unnamed_addr constant [19 x i8] c"AIF2DAC DRC Switch\00", align 1
@.compoundliteral.118 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1344, i32 1344, i32 2, i32 2, i32 0, i8 0 }, align 4
@.str.119 = private unnamed_addr constant [20 x i8] c"AIF2ADCL DRC Switch\00", align 1
@.compoundliteral.120 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1344, i32 1344, i32 1, i32 1, i32 0, i8 0 }, align 4
@.str.121 = private unnamed_addr constant [20 x i8] c"AIF2ADCR DRC Switch\00", align 1
@.compoundliteral.122 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1344, i32 1344, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.123 = private unnamed_addr constant [27 x i8] c"DAC1 Right Sidetone Volume\00", align 1
@st_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 -3600, i32 300], align 4
@.compoundliteral.124 = internal global %struct.soc_mixer_control { i32 0, i32 12, i32 12, i32 1536, i32 1536, i32 5, i32 5, i32 0, i8 0 }, align 4
@.str.125 = private unnamed_addr constant [26 x i8] c"DAC1 Left Sidetone Volume\00", align 1
@.compoundliteral.126 = internal global %struct.soc_mixer_control { i32 0, i32 12, i32 12, i32 1536, i32 1536, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.127 = private unnamed_addr constant [27 x i8] c"DAC2 Right Sidetone Volume\00", align 1
@.compoundliteral.128 = internal global %struct.soc_mixer_control { i32 0, i32 12, i32 12, i32 1539, i32 1539, i32 5, i32 5, i32 0, i8 0 }, align 4
@.str.129 = private unnamed_addr constant [26 x i8] c"DAC2 Left Sidetone Volume\00", align 1
@.compoundliteral.130 = internal global %struct.soc_mixer_control { i32 0, i32 12, i32 12, i32 1539, i32 1539, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.131 = private unnamed_addr constant [17 x i8] c"Sidetone HPF Mux\00", align 1
@sidetone_hpf = internal constant %struct.soc_enum { i32 1569, i8 7, i8 7, i32 7, i32 7, ptr @sidetone_hpf_text, ptr null, i8 0 }, align 4
@.str.132 = private unnamed_addr constant [20 x i8] c"Sidetone HPF Switch\00", align 1
@.compoundliteral.133 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1569, i32 1569, i32 6, i32 6, i32 0, i8 0 }, align 4
@.str.134 = private unnamed_addr constant [18 x i8] c"AIF1ADC1 HPF Mode\00", align 1
@aif1adc1_hpf = internal constant %struct.soc_enum { i32 1040, i8 13, i8 13, i32 4, i32 3, ptr @adc_hpf_text, ptr null, i8 0 }, align 4
@.str.135 = private unnamed_addr constant [20 x i8] c"AIF1ADC1 HPF Switch\00", align 1
@.compoundliteral.136 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1040, i32 1040, i32 12, i32 11, i32 0, i8 0 }, align 4
@.str.137 = private unnamed_addr constant [17 x i8] c"AIF2ADC HPF Mode\00", align 1
@aif2adc_hpf = internal constant %struct.soc_enum { i32 1296, i8 13, i8 13, i32 4, i32 3, ptr @adc_hpf_text, ptr null, i8 0 }, align 4
@.str.138 = private unnamed_addr constant [19 x i8] c"AIF2ADC HPF Switch\00", align 1
@.compoundliteral.139 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1296, i32 1296, i32 12, i32 11, i32 0, i8 0 }, align 4
@.str.140 = private unnamed_addr constant [8 x i8] c"ADC OSR\00", align 1
@adc_osr = internal constant %struct.soc_enum { i32 1568, i8 1, i8 1, i32 2, i32 1, ptr @osr_text, ptr null, i8 0 }, align 4
@.str.141 = private unnamed_addr constant [8 x i8] c"DAC OSR\00", align 1
@dac_osr = internal constant %struct.soc_enum { i32 1568, i8 0, i8 0, i32 2, i32 1, ptr @osr_text, ptr null, i8 0 }, align 4
@.str.142 = private unnamed_addr constant [12 x i8] c"DAC1 Volume\00", align 1
@.compoundliteral.143 = internal global %struct.soc_mixer_control { i32 0, i32 96, i32 96, i32 1552, i32 1553, i32 1, i32 1, i32 0, i8 0 }, align 4
@.str.144 = private unnamed_addr constant [12 x i8] c"DAC1 Switch\00", align 1
@.compoundliteral.145 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1552, i32 1553, i32 9, i32 9, i32 0, i8 1 }, align 4
@.str.146 = private unnamed_addr constant [12 x i8] c"DAC2 Volume\00", align 1
@.compoundliteral.147 = internal global %struct.soc_mixer_control { i32 0, i32 96, i32 96, i32 1554, i32 1555, i32 1, i32 1, i32 0, i8 0 }, align 4
@.str.148 = private unnamed_addr constant [12 x i8] c"DAC2 Switch\00", align 1
@.compoundliteral.149 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1554, i32 1555, i32 9, i32 9, i32 0, i8 1 }, align 4
@.str.150 = private unnamed_addr constant [17 x i8] c"SPKL DAC2 Volume\00", align 1
@wm_hubs_spkmix_tlv = external dso_local constant [0 x i32], align 4
@.compoundliteral.151 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 34, i32 34, i32 6, i32 6, i32 0, i8 1 }, align 4
@.str.152 = private unnamed_addr constant [17 x i8] c"SPKL DAC1 Volume\00", align 1
@.compoundliteral.153 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 34, i32 34, i32 2, i32 2, i32 0, i8 1 }, align 4
@.str.154 = private unnamed_addr constant [17 x i8] c"SPKR DAC2 Volume\00", align 1
@.compoundliteral.155 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 35, i32 35, i32 6, i32 6, i32 0, i8 1 }, align 4
@.str.156 = private unnamed_addr constant [17 x i8] c"SPKR DAC1 Volume\00", align 1
@.compoundliteral.157 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 35, i32 35, i32 2, i32 2, i32 0, i8 1 }, align 4
@.str.158 = private unnamed_addr constant [26 x i8] c"AIF1DAC1 3D Stereo Volume\00", align 1
@wm8994_3d_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 -1600, i32 183], align 4
@.compoundliteral.159 = internal global %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 1057, i32 1057, i32 10, i32 10, i32 0, i8 0 }, align 4
@.str.160 = private unnamed_addr constant [26 x i8] c"AIF1DAC1 3D Stereo Switch\00", align 1
@.compoundliteral.161 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1057, i32 1057, i32 8, i32 8, i32 0, i8 0 }, align 4
@.str.162 = private unnamed_addr constant [26 x i8] c"AIF1DAC2 3D Stereo Volume\00", align 1
@.compoundliteral.163 = internal global %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 1059, i32 1059, i32 10, i32 10, i32 0, i8 0 }, align 4
@.str.164 = private unnamed_addr constant [26 x i8] c"AIF1DAC2 3D Stereo Switch\00", align 1
@.compoundliteral.165 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1059, i32 1059, i32 8, i32 8, i32 0, i8 0 }, align 4
@.str.166 = private unnamed_addr constant [25 x i8] c"AIF2DAC 3D Stereo Volume\00", align 1
@.compoundliteral.167 = internal global %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 1313, i32 1313, i32 10, i32 10, i32 0, i8 0 }, align 4
@.str.168 = private unnamed_addr constant [25 x i8] c"AIF2DAC 3D Stereo Switch\00", align 1
@.compoundliteral.169 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1313, i32 1313, i32 8, i32 8, i32 0, i8 0 }, align 4
@aif_chan_src_text = internal global [2 x ptr] [ptr @.str.170, ptr @.str.171], align 4
@.str.170 = private unnamed_addr constant [5 x i8] c"Left\00", align 1
@.str.171 = private unnamed_addr constant [6 x i8] c"Right\00", align 1
@sidetone_hpf_text = internal global [7 x ptr] [ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178], align 4
@.str.172 = private unnamed_addr constant [7 x i8] c"2.7kHz\00", align 1
@.str.173 = private unnamed_addr constant [8 x i8] c"1.35kHz\00", align 1
@.str.174 = private unnamed_addr constant [6 x i8] c"675Hz\00", align 1
@.str.175 = private unnamed_addr constant [6 x i8] c"370Hz\00", align 1
@.str.176 = private unnamed_addr constant [6 x i8] c"180Hz\00", align 1
@.str.177 = private unnamed_addr constant [5 x i8] c"90Hz\00", align 1
@.str.178 = private unnamed_addr constant [5 x i8] c"45Hz\00", align 1
@adc_hpf_text = internal global [4 x ptr] [ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182], align 4
@.str.179 = private unnamed_addr constant [5 x i8] c"HiFi\00", align 1
@.str.180 = private unnamed_addr constant [8 x i8] c"Voice 1\00", align 1
@.str.181 = private unnamed_addr constant [8 x i8] c"Voice 2\00", align 1
@.str.182 = private unnamed_addr constant [8 x i8] c"Voice 3\00", align 1
@osr_text = internal global [2 x ptr] [ptr @.str.183, ptr @.str.184], align 4
@.str.183 = private unnamed_addr constant [10 x i8] c"Low Power\00", align 1
@.str.184 = private unnamed_addr constant [17 x i8] c"High Performance\00", align 1
@.str.185 = private unnamed_addr constant [9 x i8] c"DMIC1DAT\00", align 1
@.str.186 = private unnamed_addr constant [9 x i8] c"DMIC2DAT\00", align 1
@.str.187 = private unnamed_addr constant [6 x i8] c"Clock\00", align 1
@.str.188 = private unnamed_addr constant [15 x i8] c"MICBIAS Supply\00", align 1
@.str.189 = private unnamed_addr constant [5 x i8] c"VMID\00", align 1
@.str.190 = private unnamed_addr constant [8 x i8] c"DSP1CLK\00", align 1
@.str.191 = private unnamed_addr constant [8 x i8] c"DSP2CLK\00", align 1
@.str.192 = private unnamed_addr constant [10 x i8] c"DSPINTCLK\00", align 1
@.str.193 = private unnamed_addr constant [10 x i8] c"AIF1ADC1L\00", align 1
@.str.194 = private unnamed_addr constant [10 x i8] c"AIF1ADC1R\00", align 1
@.str.195 = private unnamed_addr constant [10 x i8] c"AIF1DAC1L\00", align 1
@.str.196 = private unnamed_addr constant [10 x i8] c"AIF1DAC1R\00", align 1
@.str.197 = private unnamed_addr constant [10 x i8] c"AIF1ADC2L\00", align 1
@.str.198 = private unnamed_addr constant [10 x i8] c"AIF1ADC2R\00", align 1
@.str.199 = private unnamed_addr constant [10 x i8] c"AIF1DAC2L\00", align 1
@.str.200 = private unnamed_addr constant [10 x i8] c"AIF1DAC2R\00", align 1
@.str.201 = private unnamed_addr constant [16 x i8] c"AIF1ADC1L Mixer\00", align 1
@aif1adc1l_mix = internal constant [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.237, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.238 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.239, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.240 to i32) }], align 4
@.str.202 = private unnamed_addr constant [16 x i8] c"AIF1ADC1R Mixer\00", align 1
@aif1adc1r_mix = internal constant [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.237, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.241 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.239, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.242 to i32) }], align 4
@.str.203 = private unnamed_addr constant [16 x i8] c"AIF1ADC2L Mixer\00", align 1
@aif1adc2l_mix = internal constant [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.243, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.244 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.239, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.245 to i32) }], align 4
@.str.204 = private unnamed_addr constant [16 x i8] c"AIF1ADC2R Mixer\00", align 1
@aif1adc2r_mix = internal constant [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.243, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.246 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.239, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.247 to i32) }], align 4
@.str.205 = private unnamed_addr constant [16 x i8] c"AIF2DAC2L Mixer\00", align 1
@aif2dac2l_mix = internal constant [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.248, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.249 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.250, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.251 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.239, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.252 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.253, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.254 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.255, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.256 to i32) }], align 4
@.str.206 = private unnamed_addr constant [16 x i8] c"AIF2DAC2R Mixer\00", align 1
@aif2dac2r_mix = internal constant [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.248, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.257 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.250, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.258 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.239, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.259 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.253, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.260 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.255, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.261 to i32) }], align 4
@.str.207 = private unnamed_addr constant [14 x i8] c"Left Sidetone\00", align 1
@sidetone1_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.262, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @sidetone1_enum to i32) }, align 4
@.str.208 = private unnamed_addr constant [15 x i8] c"Right Sidetone\00", align 1
@sidetone2_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.265, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @sidetone2_enum to i32) }, align 4
@.str.209 = private unnamed_addr constant [12 x i8] c"DAC1L Mixer\00", align 1
@dac1l_mix = internal constant [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.248, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @wm8994_put_class_w, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.266 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.250, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @wm8994_put_class_w, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.267 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.239, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @wm8994_put_class_w, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.268 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.253, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @wm8994_put_class_w, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.269 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.255, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @wm8994_put_class_w, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.270 to i32) }], align 4
@.str.210 = private unnamed_addr constant [12 x i8] c"DAC1R Mixer\00", align 1
@dac1r_mix = internal constant [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.248, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @wm8994_put_class_w, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.271 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.250, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @wm8994_put_class_w, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.272 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.239, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @wm8994_put_class_w, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.273 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.253, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @wm8994_put_class_w, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.274 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.255, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @wm8994_put_class_w, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.275 to i32) }], align 4
@.str.211 = private unnamed_addr constant [9 x i8] c"AIF2ADCL\00", align 1
@.str.212 = private unnamed_addr constant [9 x i8] c"AIF2ADCR\00", align 1
@.str.213 = private unnamed_addr constant [9 x i8] c"AIF2DACL\00", align 1
@.str.214 = private unnamed_addr constant [9 x i8] c"AIF2DACR\00", align 1
@.str.215 = private unnamed_addr constant [11 x i8] c"AIF1DACDAT\00", align 1
@.str.216 = private unnamed_addr constant [11 x i8] c"AIF2DACDAT\00", align 1
@.str.217 = private unnamed_addr constant [11 x i8] c"AIF1ADCDAT\00", align 1
@.str.218 = private unnamed_addr constant [11 x i8] c"AIF2ADCDAT\00", align 1
@.str.219 = private unnamed_addr constant [12 x i8] c"AIF1DAC Mux\00", align 1
@aif1dac_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.219, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @aif1dac_enum to i32) }, align 4
@.str.220 = private unnamed_addr constant [12 x i8] c"AIF2DAC Mux\00", align 1
@aif2dac_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.220, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @aif2dac_enum to i32) }, align 4
@.str.221 = private unnamed_addr constant [12 x i8] c"AIF2ADC Mux\00", align 1
@aif2adc_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.221, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @aif2adc_enum to i32) }, align 4
@.str.222 = private unnamed_addr constant [11 x i8] c"AIF3DACDAT\00", align 1
@.str.223 = private unnamed_addr constant [11 x i8] c"AIF3ADCDAT\00", align 1
@.str.224 = private unnamed_addr constant [6 x i8] c"TOCLK\00", align 1
@.str.225 = private unnamed_addr constant [7 x i8] c"DMIC2L\00", align 1
@.str.226 = private unnamed_addr constant [7 x i8] c"DMIC2R\00", align 1
@.str.227 = private unnamed_addr constant [7 x i8] c"DMIC1L\00", align 1
@.str.228 = private unnamed_addr constant [7 x i8] c"DMIC1R\00", align 1
@.str.229 = private unnamed_addr constant [5 x i8] c"ADCL\00", align 1
@.str.230 = private unnamed_addr constant [5 x i8] c"ADCR\00", align 1
@.str.231 = private unnamed_addr constant [14 x i8] c"AIF1 Loopback\00", align 1
@aif1_loopback = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.231, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @aif1_loopback_enum to i32) }, align 4
@.str.232 = private unnamed_addr constant [14 x i8] c"AIF2 Loopback\00", align 1
@aif2_loopback = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.232, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @aif2_loopback_enum to i32) }, align 4
@.str.233 = private unnamed_addr constant [10 x i8] c"Debug log\00", align 1
@wm8994_dapm_widgets = internal constant [50 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.185, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.186, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.187, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.188, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 1, ptr @micbias_ev, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.189, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @vmid_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.8, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 7, ptr @clk_sys_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.190, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.191, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.192, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.193, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 9, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.194, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.195, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 9, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @wm8958_aif_ev, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.196, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @wm8958_aif_ev, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.197, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.198, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 10, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.199, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @wm8958_aif_ev, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.200, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 10, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @wm8958_aif_ev, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.201, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @aif1adc1l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.202, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @aif1adc1r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.203, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @aif1adc2l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.204, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @aif1adc2r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.205, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 5, ptr @aif2dac2l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.206, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 5, ptr @aif2dac2r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.207, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @sidetone1_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.208, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @sidetone2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.209, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 5, ptr @dac1l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.210, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 5, ptr @dac1r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.211, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 13, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.212, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.213, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 13, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @wm8958_aif_ev, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.214, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @wm8958_aif_ev, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.215, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.216, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.217, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.218, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.219, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @aif1dac_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.220, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @aif2dac_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.221, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @aif2adc_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.222, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.223, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.224, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 520, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.225, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 4, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.226, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 4, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.227, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 4, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.228, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 4, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.229, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.230, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.231, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @aif1_loopback, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.232, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @aif2_loopback, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 18, ptr @.str.233, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @post_ev, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], align 4
@.str.235 = private unnamed_addr constant [25 x i8] c"Failed to enable MCLK%d\0A\00", align 1
@.str.237 = private unnamed_addr constant [16 x i8] c"ADC/DMIC Switch\00", align 1
@.compoundliteral.238 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1542, i32 1542, i32 1, i32 1, i32 0, i8 0 }, align 4
@.str.239 = private unnamed_addr constant [12 x i8] c"AIF2 Switch\00", align 1
@.compoundliteral.240 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1542, i32 1542, i32 0, i32 0, i32 0, i8 0 }, align 4
@.compoundliteral.241 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1543, i32 1543, i32 1, i32 1, i32 0, i8 0 }, align 4
@.compoundliteral.242 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1543, i32 1543, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.243 = private unnamed_addr constant [12 x i8] c"DMIC Switch\00", align 1
@.compoundliteral.244 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1544, i32 1544, i32 1, i32 1, i32 0, i8 0 }, align 4
@.compoundliteral.245 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1544, i32 1544, i32 0, i32 0, i32 0, i8 0 }, align 4
@.compoundliteral.246 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1545, i32 1545, i32 1, i32 1, i32 0, i8 0 }, align 4
@.compoundliteral.247 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1545, i32 1545, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.248 = private unnamed_addr constant [22 x i8] c"Right Sidetone Switch\00", align 1
@.compoundliteral.249 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1540, i32 1540, i32 5, i32 5, i32 0, i8 0 }, align 4
@.str.250 = private unnamed_addr constant [21 x i8] c"Left Sidetone Switch\00", align 1
@.compoundliteral.251 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1540, i32 1540, i32 4, i32 4, i32 0, i8 0 }, align 4
@.compoundliteral.252 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1540, i32 1540, i32 2, i32 2, i32 0, i8 0 }, align 4
@.str.253 = private unnamed_addr constant [14 x i8] c"AIF1.2 Switch\00", align 1
@.compoundliteral.254 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1540, i32 1540, i32 1, i32 1, i32 0, i8 0 }, align 4
@.str.255 = private unnamed_addr constant [14 x i8] c"AIF1.1 Switch\00", align 1
@.compoundliteral.256 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1540, i32 1540, i32 0, i32 0, i32 0, i8 0 }, align 4
@.compoundliteral.257 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1541, i32 1541, i32 5, i32 5, i32 0, i8 0 }, align 4
@.compoundliteral.258 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1541, i32 1541, i32 4, i32 4, i32 0, i8 0 }, align 4
@.compoundliteral.259 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1541, i32 1541, i32 2, i32 2, i32 0, i8 0 }, align 4
@.compoundliteral.260 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1541, i32 1541, i32 1, i32 1, i32 0, i8 0 }, align 4
@.compoundliteral.261 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1541, i32 1541, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.262 = private unnamed_addr constant [18 x i8] c"Left Sidetone Mux\00", align 1
@sidetone1_enum = internal constant %struct.soc_enum { i32 1569, i8 0, i8 0, i32 2, i32 1, ptr @sidetone_text, ptr null, i8 0 }, align 4
@sidetone_text = internal global [2 x ptr] [ptr @.str.263, ptr @.str.264], align 4
@.str.263 = private unnamed_addr constant [10 x i8] c"ADC/DMIC1\00", align 1
@.str.264 = private unnamed_addr constant [6 x i8] c"DMIC2\00", align 1
@.str.265 = private unnamed_addr constant [19 x i8] c"Right Sidetone Mux\00", align 1
@sidetone2_enum = internal constant %struct.soc_enum { i32 1569, i8 1, i8 1, i32 2, i32 1, ptr @sidetone_text, ptr null, i8 0 }, align 4
@.compoundliteral.266 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1537, i32 1537, i32 5, i32 5, i32 0, i8 0 }, align 4
@.compoundliteral.267 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1537, i32 1537, i32 4, i32 4, i32 0, i8 0 }, align 4
@.compoundliteral.268 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1537, i32 1537, i32 2, i32 2, i32 0, i8 0 }, align 4
@.compoundliteral.269 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1537, i32 1537, i32 1, i32 1, i32 0, i8 0 }, align 4
@.compoundliteral.270 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1537, i32 1537, i32 0, i32 0, i32 0, i8 0 }, align 4
@.compoundliteral.271 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1538, i32 1538, i32 5, i32 5, i32 0, i8 0 }, align 4
@.compoundliteral.272 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1538, i32 1538, i32 4, i32 4, i32 0, i8 0 }, align 4
@.compoundliteral.273 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1538, i32 1538, i32 2, i32 2, i32 0, i8 0 }, align 4
@.compoundliteral.274 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1538, i32 1538, i32 1, i32 1, i32 0, i8 0 }, align 4
@.compoundliteral.275 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1538, i32 1538, i32 0, i32 0, i32 0, i8 0 }, align 4
@aif1dac_enum = internal constant %struct.soc_enum { i32 6, i8 0, i8 0, i32 2, i32 1, ptr @aif1dac_text, ptr null, i8 0 }, align 4
@aif1dac_text = internal global [2 x ptr] [ptr @.str.215, ptr @.str.222], align 4
@aif2dac_enum = internal constant %struct.soc_enum { i32 6, i8 1, i8 1, i32 2, i32 1, ptr @aif2dac_text, ptr null, i8 0 }, align 4
@aif2dac_text = internal global [2 x ptr] [ptr @.str.216, ptr @.str.222], align 4
@aif2adc_enum = internal constant %struct.soc_enum { i32 6, i8 2, i8 2, i32 2, i32 1, ptr @aif2adc_text, ptr null, i8 0 }, align 4
@aif2adc_text = internal global [2 x ptr] [ptr @.str.218, ptr @.str.222], align 4
@aif1_loopback_enum = internal constant %struct.soc_enum { i32 769, i8 0, i8 0, i32 2, i32 1, ptr @loopback_text, ptr null, i8 0 }, align 4
@loopback_text = internal global [2 x ptr] [ptr @.str.276, ptr @.str.277], align 4
@.str.276 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.277 = private unnamed_addr constant [7 x i8] c"ADCDAT\00", align 1
@aif2_loopback_enum = internal constant %struct.soc_enum { i32 785, i8 0, i8 0, i32 2, i32 1, ptr @loopback_text, ptr null, i8 0 }, align 4
@.str.278 = private unnamed_addr constant [16 x i8] c"AIF1ADC2 Volume\00", align 1
@.compoundliteral.279 = internal global %struct.soc_mixer_control { i32 0, i32 119, i32 119, i32 1028, i32 1029, i32 1, i32 1, i32 0, i8 0 }, align 4
@.str.280 = private unnamed_addr constant [16 x i8] c"AIF1DAC2 Volume\00", align 1
@.compoundliteral.281 = internal global %struct.soc_mixer_control { i32 0, i32 96, i32 96, i32 1030, i32 1031, i32 1, i32 1, i32 0, i8 0 }, align 4
@.str.282 = private unnamed_addr constant [19 x i8] c"AIF1DAC2 EQ Switch\00", align 1
@.compoundliteral.283 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1184, i32 1184, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.284 = private unnamed_addr constant [20 x i8] c"AIF1DAC2 DRC Switch\00", align 1
@.compoundliteral.285 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1104, i32 1104, i32 2, i32 2, i32 0, i8 0 }, align 4
@.str.286 = private unnamed_addr constant [21 x i8] c"AIF1ADC2L DRC Switch\00", align 1
@.compoundliteral.287 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1104, i32 1104, i32 1, i32 1, i32 0, i8 0 }, align 4
@.str.288 = private unnamed_addr constant [21 x i8] c"AIF1ADC2R DRC Switch\00", align 1
@.compoundliteral.289 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1104, i32 1104, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.290 = private unnamed_addr constant [18 x i8] c"AIF1ADC2 HPF Mode\00", align 1
@aif1adc2_hpf = internal constant %struct.soc_enum { i32 1041, i8 13, i8 13, i32 4, i32 3, ptr @adc_hpf_text, ptr null, i8 0 }, align 4
@.str.291 = private unnamed_addr constant [20 x i8] c"AIF1ADC2 HPF Switch\00", align 1
@.compoundliteral.292 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1041, i32 1041, i32 12, i32 11, i32 0, i8 0 }, align 4
@.str.293 = private unnamed_addr constant [12 x i8] c"AIF3ADC Mux\00", align 1
@wm8994_aif3adc_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.293, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @wm8994_aif3adc_enum to i32) }, align 4
@wm8994_specific_dapm_widgets = internal constant [1 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.293, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @wm8994_aif3adc_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], align 4
@wm8994_aif3adc_enum = internal constant %struct.soc_enum { i32 6, i8 3, i8 3, i32 4, i32 3, ptr @aif3adc_text, ptr null, i8 0 }, align 4
@aif3adc_text = internal global [4 x ptr] [ptr @.str.217, ptr @.str.218, ptr @.str.216, ptr @.str.295], align 4
@.str.295 = private unnamed_addr constant [9 x i8] c"Mono PCM\00", align 1
@.str.296 = private unnamed_addr constant [8 x i8] c"AIF1CLK\00", align 1
@.str.297 = private unnamed_addr constant [8 x i8] c"AIF2CLK\00", align 1
@.str.298 = private unnamed_addr constant [22 x i8] c"Late DAC1L Enable PGA\00", align 1
@.str.299 = private unnamed_addr constant [22 x i8] c"Late DAC1R Enable PGA\00", align 1
@.str.300 = private unnamed_addr constant [22 x i8] c"Late DAC2L Enable PGA\00", align 1
@.str.301 = private unnamed_addr constant [22 x i8] c"Late DAC2R Enable PGA\00", align 1
@.str.302 = private unnamed_addr constant [13 x i8] c"Direct Voice\00", align 1
@.str.303 = private unnamed_addr constant [5 x i8] c"SPKL\00", align 1
@left_speaker_mixer = internal constant [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.148, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.309 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.310, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.311 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.312, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.313 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.314, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.315 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.144, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.316 to i32) }], align 4
@.str.304 = private unnamed_addr constant [5 x i8] c"SPKR\00", align 1
@right_speaker_mixer = internal constant [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.148, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.317 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.310, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.318 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.319, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.320 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.314, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.321 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.144, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.322 to i32) }], align 4
@.str.305 = private unnamed_addr constant [19 x i8] c"Left Headphone Mux\00", align 1
@wm_hubs_hpl_mux = external dso_local constant %struct.snd_kcontrol_new, align 4
@.str.306 = private unnamed_addr constant [20 x i8] c"Right Headphone Mux\00", align 1
@wm_hubs_hpr_mux = external dso_local constant %struct.snd_kcontrol_new, align 4
@.str.307 = private unnamed_addr constant [17 x i8] c"Late Disable PGA\00", align 1
@wm8994_lateclk_revd_widgets = internal constant [12 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.296, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @aif1clk_late_ev, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.297, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @aif2clk_late_ev, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.298, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 1, ptr @late_enable_ev, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.299, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 1, ptr @late_enable_ev, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.300, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 1, ptr @late_enable_ev, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.301, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 1, ptr @late_enable_ev, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.302, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 1, ptr @late_enable_ev, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.303, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 1, ptr @late_enable_ev, i32 5, ptr @left_speaker_mixer, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.304, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 9, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 1, ptr @late_enable_ev, i32 5, ptr @right_speaker_mixer, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.305, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 1, ptr @late_enable_ev, i32 1, ptr @wm_hubs_hpl_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.306, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 1, ptr @late_enable_ev, i32 1, ptr @wm_hubs_hpr_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 18, ptr @.str.307, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @late_disable_ev, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], align 4
@.compoundliteral.309 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 54, i32 54, i32 9, i32 9, i32 0, i8 0 }, align 4
@.str.310 = private unnamed_addr constant [13 x i8] c"Input Switch\00", align 1
@.compoundliteral.311 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 54, i32 54, i32 7, i32 7, i32 0, i8 0 }, align 4
@.str.312 = private unnamed_addr constant [13 x i8] c"IN1LP Switch\00", align 1
@.compoundliteral.313 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 54, i32 54, i32 5, i32 5, i32 0, i8 0 }, align 4
@.str.314 = private unnamed_addr constant [14 x i8] c"Output Switch\00", align 1
@.compoundliteral.315 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 54, i32 54, i32 3, i32 3, i32 0, i8 0 }, align 4
@.compoundliteral.316 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 54, i32 54, i32 1, i32 1, i32 0, i8 0 }, align 4
@.compoundliteral.317 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 54, i32 54, i32 8, i32 8, i32 0, i8 0 }, align 4
@.compoundliteral.318 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 54, i32 54, i32 6, i32 6, i32 0, i8 0 }, align 4
@.str.319 = private unnamed_addr constant [13 x i8] c"IN1RP Switch\00", align 1
@.compoundliteral.320 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 54, i32 54, i32 4, i32 4, i32 0, i8 0 }, align 4
@.compoundliteral.321 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 54, i32 54, i32 2, i32 2, i32 0, i8 0 }, align 4
@.compoundliteral.322 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 54, i32 54, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.323 = private unnamed_addr constant [9 x i8] c"ADCL Mux\00", align 1
@adcl_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.323, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @adc_enum to i32) }, align 4
@.str.324 = private unnamed_addr constant [9 x i8] c"ADCR Mux\00", align 1
@adcr_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.324, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @adc_enum to i32) }, align 4
@wm8994_adc_revd_widgets = internal constant [2 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.323, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 4, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 1, ptr @adc_mux_ev, i32 1, ptr @adcl_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.324, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 4, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 1, ptr @adc_mux_ev, i32 1, ptr @adcr_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], align 4
@adc_enum = internal constant %struct.soc_enum { i32 -1, i8 0, i8 0, i32 2, i32 1, ptr @adc_mux_text, ptr null, i8 0 }, align 4
@adc_mux_text = internal global [2 x ptr] [ptr @.str.326, ptr @.str.327], align 4
@.str.326 = private unnamed_addr constant [4 x i8] c"ADC\00", align 1
@.str.327 = private unnamed_addr constant [5 x i8] c"DMIC\00", align 1
@.str.328 = private unnamed_addr constant [6 x i8] c"DAC2L\00", align 1
@.str.329 = private unnamed_addr constant [6 x i8] c"DAC2R\00", align 1
@.str.330 = private unnamed_addr constant [6 x i8] c"DAC1L\00", align 1
@.str.331 = private unnamed_addr constant [6 x i8] c"DAC1R\00", align 1
@wm8994_dac_revd_widgets = internal constant [4 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.328, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 1, ptr @dac_ev, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.329, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 1, ptr @dac_ev, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.330, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 1, ptr @dac_ev, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.331, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 1, ptr @dac_ev, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], align 4
@wm8994_lateclk_widgets = internal constant [7 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.296, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 512, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 15, ptr @aif1clk_ev, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.297, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 516, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 15, ptr @aif2clk_ev, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.302, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.303, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 5, ptr @left_speaker_mixer, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.304, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 9, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 5, ptr @right_speaker_mixer, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.305, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @wm_hubs_hpl_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.306, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @wm_hubs_hpr_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], align 4
@wm8994_adc_widgets = internal constant [2 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.323, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 4, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @adcl_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.324, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 4, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @adcr_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], align 4
@wm8994_dac_widgets = internal constant [4 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.328, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 5, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.329, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 5, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.330, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 5, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.331, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 5, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], align 4
@.str.336 = private unnamed_addr constant [18 x i8] c"AIF3 Boost Volume\00", align 1
@.compoundliteral.337 = internal global %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 801, i32 801, i32 10, i32 10, i32 0, i8 0 }, align 4
@.str.338 = private unnamed_addr constant [27 x i8] c"AIF1DAC1 Noise Gate Switch\00", align 1
@.compoundliteral.339 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1072, i32 1072, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.340 = private unnamed_addr constant [30 x i8] c"AIF1DAC1 Noise Gate Hold Time\00", align 1
@wm8958_aif1dac1_ng_hold = internal constant %struct.soc_enum { i32 1072, i8 1, i8 1, i32 4, i32 3, ptr @wm8958_ng_text, ptr null, i8 0 }, align 4
@.str.341 = private unnamed_addr constant [37 x i8] c"AIF1DAC1 Noise Gate Threshold Volume\00", align 1
@ng_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 -10200, i32 600], align 4
@.compoundliteral.342 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 1072, i32 1072, i32 1, i32 1, i32 0, i8 1 }, align 4
@.str.343 = private unnamed_addr constant [27 x i8] c"AIF1DAC2 Noise Gate Switch\00", align 1
@.compoundliteral.344 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1073, i32 1073, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.345 = private unnamed_addr constant [30 x i8] c"AIF1DAC2 Noise Gate Hold Time\00", align 1
@wm8958_aif1dac2_ng_hold = internal constant %struct.soc_enum { i32 1073, i8 1, i8 1, i32 4, i32 3, ptr @wm8958_ng_text, ptr null, i8 0 }, align 4
@.str.346 = private unnamed_addr constant [37 x i8] c"AIF1DAC2 Noise Gate Threshold Volume\00", align 1
@.compoundliteral.347 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 1073, i32 1073, i32 1, i32 1, i32 0, i8 1 }, align 4
@.str.348 = private unnamed_addr constant [26 x i8] c"AIF2DAC Noise Gate Switch\00", align 1
@.compoundliteral.349 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1328, i32 1328, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.350 = private unnamed_addr constant [29 x i8] c"AIF2DAC Noise Gate Hold Time\00", align 1
@wm8958_aif2dac_ng_hold = internal constant %struct.soc_enum { i32 1328, i8 1, i8 1, i32 4, i32 3, ptr @wm8958_ng_text, ptr null, i8 0 }, align 4
@.str.351 = private unnamed_addr constant [36 x i8] c"AIF2DAC Noise Gate Threshold Volume\00", align 1
@.compoundliteral.352 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 1328, i32 1328, i32 1, i32 1, i32 0, i8 1 }, align 4
@wm8958_ng_text = internal global [4 x ptr] [ptr @.str.353, ptr @.str.354, ptr @.str.355, ptr @.str.356], align 4
@.str.353 = private unnamed_addr constant [5 x i8] c"30ms\00", align 1
@.str.354 = private unnamed_addr constant [6 x i8] c"125ms\00", align 1
@.str.355 = private unnamed_addr constant [6 x i8] c"250ms\00", align 1
@.str.356 = private unnamed_addr constant [6 x i8] c"500ms\00", align 1
@.str.357 = private unnamed_addr constant [5 x i8] c"AIF3\00", align 1
@.str.358 = private unnamed_addr constant [17 x i8] c"Mono PCM Out Mux\00", align 1
@mono_pcm_out_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.358, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @mono_pcm_out_enum to i32) }, align 4
@.str.359 = private unnamed_addr constant [13 x i8] c"AIF2DACL Mux\00", align 1
@aif2dacl_src_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.359, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @aif2dacl_src_enum to i32) }, align 4
@.str.360 = private unnamed_addr constant [13 x i8] c"AIF2DACR Mux\00", align 1
@aif2dacr_src_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.360, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @aif2dacr_src_enum to i32) }, align 4
@wm8958_aif3adc_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.293, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @wm8958_aif3adc_enum to i32) }, align 4
@wm8958_dapm_widgets = internal constant [5 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.357, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 6, i8 5, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.358, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @mono_pcm_out_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.359, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @aif2dacl_src_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.360, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @aif2dacr_src_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.293, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @wm8958_aif3adc_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], align 4
@mono_pcm_out_enum = internal constant %struct.soc_enum { i32 6, i8 9, i8 9, i32 3, i32 3, ptr @mono_pcm_out_text, ptr null, i8 0 }, align 4
@mono_pcm_out_text = internal global [3 x ptr] [ptr @.str.276, ptr @.str.211, ptr @.str.212], align 4
@aif2dacl_src_enum = internal constant %struct.soc_enum { i32 6, i8 7, i8 7, i32 2, i32 1, ptr @aif2dac_src_text, ptr null, i8 0 }, align 4
@aif2dac_src_text = internal global [2 x ptr] [ptr @.str.362, ptr @.str.357], align 4
@.str.362 = private unnamed_addr constant [5 x i8] c"AIF2\00", align 1
@aif2dacr_src_enum = internal constant %struct.soc_enum { i32 6, i8 8, i8 8, i32 2, i32 1, ptr @aif2dac_src_text, ptr null, i8 0 }, align 4
@wm8958_aif3adc_enum = internal constant %struct.soc_enum { i32 6, i8 3, i8 3, i32 4, i32 3, ptr @aif3adc_text, ptr null, i8 0 }, align 4
@.str.363 = private unnamed_addr constant [14 x i8] c"AIF1 Playback\00", align 1
@.str.364 = private unnamed_addr constant [14 x i8] c"AIF2 Playback\00", align 1
@.str.365 = private unnamed_addr constant [14 x i8] c"AIF3 Playback\00", align 1
@.str.366 = private unnamed_addr constant [13 x i8] c"AIF1 Capture\00", align 1
@.str.367 = private unnamed_addr constant [13 x i8] c"AIF2 Capture\00", align 1
@.str.368 = private unnamed_addr constant [13 x i8] c"AIF3 Capture\00", align 1
@.str.369 = private unnamed_addr constant [18 x i8] c"Left Output Mixer\00", align 1
@.str.370 = private unnamed_addr constant [11 x i8] c"DAC Switch\00", align 1
@.str.371 = private unnamed_addr constant [19 x i8] c"Right Output Mixer\00", align 1
@.str.372 = private unnamed_addr constant [4 x i8] c"DAC\00", align 1
@.str.373 = private unnamed_addr constant [26 x i8] c"Failed to stop FLL%d: %d\0A\00", align 1
@.str.374 = private unnamed_addr constant [37 x i8] c"FLL%d is currently providing SYSCLK\0A\00", align 1
@.str.375 = private unnamed_addr constant [33 x i8] c"Failed to enable MCLK for FLL%d\0A\00", align 1
@.str.376 = private unnamed_addr constant [32 x i8] c"Timed out waiting for FLL lock\0A\00", align 1
@.str.377 = private unnamed_addr constant [29 x i8] c"Failed to restore FLL%d: %d\0A\00", align 1
@.str.378 = private unnamed_addr constant [12 x i8] c"wm8994-aif1\00", align 1
@wm8994_aif1_dai_ops = internal constant %struct.snd_soc_dai_ops { ptr @wm8994_set_dai_sysclk, ptr @wm8994_set_fll, ptr null, ptr null, ptr @wm8994_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr @wm8994_set_tristate, ptr null, ptr null, ptr @wm8994_aif_mute, ptr null, ptr null, ptr @wm8994_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 1 }, align 4
@.str.379 = private unnamed_addr constant [12 x i8] c"wm8994-aif2\00", align 1
@wm8994_aif2_dai_ops = internal constant %struct.snd_soc_dai_ops { ptr @wm8994_set_dai_sysclk, ptr @wm8994_set_fll, ptr null, ptr null, ptr @wm8994_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr @wm8994_set_tristate, ptr null, ptr null, ptr @wm8994_aif_mute, ptr null, ptr null, ptr @wm8994_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 1 }, align 4
@.str.380 = private unnamed_addr constant [12 x i8] c"wm8994-aif3\00", align 1
@wm8994_aif3_dai_ops = internal constant %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8994_aif3_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, align 4
@srs = internal unnamed_addr constant [11 x %struct.anon.92] [%struct.anon.92 { i32 0, i32 8000 }, %struct.anon.92 { i32 1, i32 11025 }, %struct.anon.92 { i32 2, i32 12000 }, %struct.anon.92 { i32 3, i32 16000 }, %struct.anon.92 { i32 4, i32 22050 }, %struct.anon.92 { i32 5, i32 24000 }, %struct.anon.92 { i32 6, i32 32000 }, %struct.anon.92 { i32 7, i32 44100 }, %struct.anon.92 { i32 8, i32 48000 }, %struct.anon.92 { i32 9, i32 88200 }, %struct.anon.92 { i32 10, i32 96000 }], align 4
@.str.381 = private unnamed_addr constant [25 x i8] c"AIF%dCLK not configured\0A\00", align 1
@bclk_divs = internal unnamed_addr constant [22 x i32] [i32 10, i32 15, i32 20, i32 30, i32 40, i32 50, i32 60, i32 80, i32 110, i32 120, i32 160, i32 220, i32 240, i32 320, i32 440, i32 480, i32 640, i32 880, i32 960, i32 1280, i32 1760, i32 1920], align 4
@.str.382 = private unnamed_addr constant [41 x i8] c"Unable to generate LRCLK from %dHz BCLK\0A\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_alias288, ptr @__UNIQUE_ID_author286, ptr @__UNIQUE_ID_description285, ptr @__UNIQUE_ID_license287, ptr @__ksymtab_wm8958_mic_detect, ptr @__ksymtab_wm8994_mic_detect], section "llvm.metadata"
@switch.table.wm8994_set_retune_mobile = private unnamed_addr constant [3 x i32] [i32 0, i32 0, i32 1], align 4
@switch.table.wm8994_aif3_hw_params = private unnamed_addr constant [5 x i32] [i32 0, i32 32, i32 64, i32 0, i32 96], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @wm8994_vmid_mode(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 17
  switch i32 %1, label %52 [
    i32 0, label %8
    i32 1, label %28
  ]

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 17, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_soc_card, ptr %10, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %11) #15
  %12 = getelementptr inbounds %struct.wm_hubs_data, ptr %6, i32 0, i32 12
  %13 = load i8, ptr %12, align 4, !range !8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %8
  %16 = tail call i32 @snd_soc_dapm_disable_pin_unlocked(ptr noundef %7, ptr noundef nonnull @.str) #15
  %17 = tail call i32 @snd_soc_dapm_disable_pin_unlocked(ptr noundef %7, ptr noundef nonnull @.str.1) #15
  br label %18

18:                                               ; preds = %15, %8
  %19 = getelementptr inbounds %struct.wm_hubs_data, ptr %6, i32 0, i32 15
  %20 = load i8, ptr %19, align 1, !range !8
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = tail call i32 @snd_soc_dapm_disable_pin_unlocked(ptr noundef %7, ptr noundef nonnull @.str.2) #15
  %24 = tail call i32 @snd_soc_dapm_disable_pin_unlocked(ptr noundef %7, ptr noundef nonnull @.str.3) #15
  br label %25

25:                                               ; preds = %22, %18
  %26 = tail call i32 @snd_soc_dapm_sync_unlocked(ptr noundef %7) #15
  %27 = getelementptr inbounds %struct.wm8994_priv, ptr %6, i32 0, i32 17
  store i32 0, ptr %27, align 4
  br label %48

28:                                               ; preds = %2
  %29 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 17, i32 4
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.snd_soc_card, ptr %30, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %31) #15
  %32 = getelementptr inbounds %struct.wm_hubs_data, ptr %6, i32 0, i32 12
  %33 = load i8, ptr %32, align 4, !range !8
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %28
  %36 = tail call i32 @snd_soc_dapm_force_enable_pin_unlocked(ptr noundef %7, ptr noundef nonnull @.str) #15
  %37 = tail call i32 @snd_soc_dapm_force_enable_pin_unlocked(ptr noundef %7, ptr noundef nonnull @.str.1) #15
  br label %38

38:                                               ; preds = %35, %28
  %39 = getelementptr inbounds %struct.wm_hubs_data, ptr %6, i32 0, i32 15
  %40 = load i8, ptr %39, align 1, !range !8
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = tail call i32 @snd_soc_dapm_force_enable_pin_unlocked(ptr noundef %7, ptr noundef nonnull @.str.2) #15
  %44 = tail call i32 @snd_soc_dapm_force_enable_pin_unlocked(ptr noundef %7, ptr noundef nonnull @.str.3) #15
  br label %45

45:                                               ; preds = %42, %38
  %46 = getelementptr inbounds %struct.wm8994_priv, ptr %6, i32 0, i32 17
  store i32 1, ptr %46, align 4
  %47 = tail call i32 @snd_soc_dapm_sync_unlocked(ptr noundef %7) #15
  br label %48

48:                                               ; preds = %45, %25
  %49 = phi ptr [ %9, %25 ], [ %29, %45 ]
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.snd_soc_card, ptr %50, i32 0, i32 10
  tail call void @mutex_unlock(ptr noundef %51) #15
  br label %52

52:                                               ; preds = %48, %2
  %53 = phi i32 [ -22, %2 ], [ 0, %48 ]
  ret i32 %53
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_disable_pin_unlocked(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_sync_unlocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_force_enable_pin_unlocked(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @wm8994_mic_detect(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 17
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.wm8994_priv, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.wm8994, ptr %10, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.4) #16
  br label %56

15:                                               ; preds = %3
  %16 = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #15
  switch i32 %2, label %31 [
    i32 1, label %17
    i32 2, label %24
  ]

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.wm8994_priv, ptr %8, i32 0, i32 45
  %19 = icmp eq ptr %1, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = tail call i32 @snd_soc_dapm_force_enable_pin(ptr noundef %4, ptr noundef nonnull @.str.5) #15
  br label %33

22:                                               ; preds = %17
  %23 = tail call i32 @snd_soc_dapm_disable_pin(ptr noundef %4, ptr noundef nonnull @.str.5) #15
  br label %33

24:                                               ; preds = %15
  %25 = getelementptr %struct.wm8994_priv, ptr %8, i32 0, i32 45, i32 1
  %26 = icmp eq ptr %1, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = tail call i32 @snd_soc_dapm_force_enable_pin(ptr noundef %4, ptr noundef nonnull @.str.5) #15
  br label %33

29:                                               ; preds = %24
  %30 = tail call i32 @snd_soc_dapm_disable_pin(ptr noundef %4, ptr noundef nonnull @.str.5) #15
  br label %33

31:                                               ; preds = %15
  %32 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %32, ptr noundef nonnull @.str.6, i32 noundef %2) #16
  br label %56

33:                                               ; preds = %29, %27, %22, %20
  %34 = phi ptr [ %25, %27 ], [ %25, %29 ], [ %18, %20 ], [ %18, %22 ]
  %35 = phi i32 [ %28, %27 ], [ %30, %29 ], [ %21, %20 ], [ %23, %22 ]
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %38, ptr noundef nonnull @.str.7, i32 noundef %2, i32 noundef %35) #16
  br label %39

39:                                               ; preds = %37, %33
  store ptr %1, ptr %34, align 4
  %40 = getelementptr inbounds %struct.wm8994_micdet, ptr %34, i32 0, i32 1
  store i8 1, ptr %40, align 4
  %41 = getelementptr inbounds %struct.wm8994_priv, ptr %8, i32 0, i32 45
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = getelementptr %struct.wm8994_priv, ptr %8, i32 0, i32 45, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  %48 = select i1 %47, i32 0, i32 4
  br label %49

49:                                               ; preds = %44, %39
  %50 = phi i32 [ 4, %39 ], [ %48, %44 ]
  %51 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 58, i32 noundef 4, i32 noundef %50) #15
  %52 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 1864, i32 noundef 30, i32 noundef 6) #15
  %53 = tail call i32 @snd_soc_dapm_sync(ptr noundef %4) #15
  %54 = load ptr, ptr %5, align 4
  %55 = tail call i32 @__pm_runtime_idle(ptr noundef %54, i32 noundef 5) #15
  br label %56

56:                                               ; preds = %49, %31, %14
  %57 = phi i32 [ -22, %14 ], [ -22, %31 ], [ 0, %49 ]
  ret i32 %57
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_force_enable_pin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_disable_pin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @wm8958_mic_detect(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 17
  %8 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.wm8994_priv, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.wm8994, ptr %13, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, -1
  %17 = icmp ult i32 %16, 2
  br i1 %17, label %18, label %106

18:                                               ; preds = %6
  %19 = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #15
  %20 = icmp eq ptr %1, null
  br i1 %20, label %78, label %21

21:                                               ; preds = %18
  %22 = tail call i32 @snd_soc_dapm_force_enable_pin(ptr noundef %7, ptr noundef nonnull @.str.8) #15
  %23 = tail call i32 @snd_soc_dapm_sync(ptr noundef %7) #15
  %24 = getelementptr inbounds %struct.wm8994_priv, ptr %11, i32 0, i32 45
  store ptr %1, ptr %24, align 4
  %25 = icmp eq ptr %2, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.wm8994_priv, ptr %11, i32 0, i32 57
  store ptr %2, ptr %27, align 4
  %28 = getelementptr inbounds %struct.wm8994_priv, ptr %11, i32 0, i32 58
  store ptr %3, ptr %28, align 4
  br label %32

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.wm8994_priv, ptr %11, i32 0, i32 50
  store i8 1, ptr %30, align 2
  %31 = getelementptr inbounds %struct.wm8994_priv, ptr %11, i32 0, i32 51
  store i8 0, ptr %31, align 1
  br label %32

32:                                               ; preds = %29, %26
  %33 = icmp eq ptr %4, null
  %34 = select i1 %33, ptr @wm8958_mic_id, ptr %4
  %35 = select i1 %33, ptr %0, ptr %5
  %36 = getelementptr inbounds %struct.wm8994_priv, ptr %11, i32 0, i32 59
  store ptr %34, ptr %36, align 4
  %37 = getelementptr inbounds %struct.wm8994_priv, ptr %11, i32 0, i32 60
  store ptr %35, ptr %37, align 4
  tail call fastcc void @wm8958_micd_set_rate(ptr noundef %0)
  %38 = getelementptr inbounds %struct.wm8994_pdata, ptr %13, i32 0, i32 27
  %39 = load i16, ptr %38, align 4
  %40 = icmp eq i16 %39, 0
  %41 = select i1 %40, i16 65, i16 %39
  %42 = zext i16 %41 to i32
  %43 = getelementptr inbounds %struct.wm8994_priv, ptr %11, i32 0, i32 52
  store i32 32256, ptr %43, align 4
  %44 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 209, i32 noundef 255, i32 noundef %42) #15
  %45 = load i32, ptr %7, align 4
  %46 = icmp ugt i32 %45, 1
  br i1 %46, label %47, label %48, !prof !9

47:                                               ; preds = %32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 3978, i32 noundef 9, ptr noundef null) #15
  br label %48

48:                                               ; preds = %47, %32
  %49 = getelementptr inbounds %struct.wm8994_priv, ptr %11, i32 0, i32 53
  %50 = load i8, ptr %49, align 4, !range !8
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %76, label %52

52:                                               ; preds = %48
  %53 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 1797, i32 noundef 256, i32 noundef 0) #15
  %54 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 62, i32 noundef 1, i32 noundef 1) #15
  %55 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 59, i32 noundef 1, i32 noundef 0) #15
  %56 = load ptr, ptr %8, align 4
  %57 = getelementptr inbounds %struct.device, ptr %56, i32 0, i32 8
  %58 = load ptr, ptr %57, align 8
  %59 = getelementptr inbounds %struct.wm8994_priv, ptr %58, i32 0, i32 53
  %60 = load i8, ptr %59, align 4, !range !8
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %103, label %62

62:                                               ; preds = %52
  %63 = getelementptr inbounds %struct.wm8994_priv, ptr %58, i32 0, i32 45
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %103, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.wm8994_priv, ptr %58, i32 0, i32 16
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, 0
  %70 = select i1 %69, i32 256, i32 384
  %71 = getelementptr inbounds %struct.wm8994_priv, ptr %58, i32 0, i32 54
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %72, %70
  br i1 %73, label %103, label %74

74:                                               ; preds = %66
  store i32 %70, ptr %71, align 4
  %75 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 57, i32 noundef 384, i32 noundef 384) #15
  br label %103

76:                                               ; preds = %48
  %77 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 208, i32 noundef 1, i32 noundef 1) #15
  br label %103

78:                                               ; preds = %18
  %79 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 208, i32 noundef 1, i32 noundef 0) #15
  %80 = load ptr, ptr %8, align 4
  %81 = getelementptr inbounds %struct.device, ptr %80, i32 0, i32 8
  %82 = load ptr, ptr %81, align 8
  %83 = getelementptr inbounds %struct.wm8994_priv, ptr %82, i32 0, i32 53
  %84 = load i8, ptr %83, align 4, !range !8
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %100, label %86

86:                                               ; preds = %78
  %87 = getelementptr inbounds %struct.wm8994_priv, ptr %82, i32 0, i32 45
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %100, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.wm8994_priv, ptr %82, i32 0, i32 16
  %92 = load i32, ptr %91, align 4
  %93 = icmp eq i32 %92, 0
  %94 = select i1 %93, i32 0, i32 384
  %95 = getelementptr inbounds %struct.wm8994_priv, ptr %82, i32 0, i32 54
  %96 = load i32, ptr %95, align 4
  %97 = icmp eq i32 %96, %94
  br i1 %97, label %100, label %98

98:                                               ; preds = %90
  store i32 %94, ptr %95, align 4
  %99 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 57, i32 noundef 384, i32 noundef %94) #15
  br label %100

100:                                              ; preds = %98, %90, %86, %78
  %101 = tail call i32 @snd_soc_dapm_disable_pin(ptr noundef %7, ptr noundef nonnull @.str.8) #15
  %102 = tail call i32 @snd_soc_dapm_sync(ptr noundef %7) #15
  br label %103

103:                                              ; preds = %100, %76, %74, %66, %62, %52
  %104 = load ptr, ptr %8, align 4
  %105 = tail call i32 @__pm_runtime_idle(ptr noundef %104, i32 noundef 5) #15
  br label %106

106:                                              ; preds = %103, %6
  %107 = phi i32 [ 0, %103 ], [ -22, %6 ]
  ret i32 %107
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @wm8958_mic_id(ptr noundef %0, i16 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = zext i16 %1 to i32
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load ptr, ptr @system_power_efficient_wq, align 4
  %12 = getelementptr inbounds %struct.wm8994_priv, ptr %6, i32 0, i32 47
  %13 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %11, ptr noundef %12, i32 noundef 250) #15
  br label %29

14:                                               ; preds = %2
  %15 = and i32 %7, 1536
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.wm8994_priv, ptr %6, i32 0, i32 50
  store i8 0, ptr %18, align 2
  %19 = getelementptr inbounds %struct.wm8994_priv, ptr %6, i32 0, i32 51
  store i8 1, ptr %19, align 1
  tail call fastcc void @wm8958_micd_set_rate(ptr noundef %0)
  %20 = getelementptr inbounds %struct.wm8994_priv, ptr %6, i32 0, i32 45
  %21 = load ptr, ptr %20, align 4
  tail call void @snd_soc_jack_report(ptr noundef %21, i32 noundef 3, i32 noundef 3) #15
  br label %22

22:                                               ; preds = %17, %14
  %23 = and i32 %7, 252
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.wm8994_priv, ptr %6, i32 0, i32 50
  store i8 0, ptr %26, align 2
  tail call fastcc void @wm8958_micd_set_rate(ptr noundef %0)
  tail call fastcc void @wm1811_micd_stop(ptr noundef %0)
  %27 = getelementptr inbounds %struct.wm8994_priv, ptr %6, i32 0, i32 45
  %28 = load ptr, ptr %27, align 4
  tail call void @snd_soc_jack_report(ptr noundef %28, i32 noundef 1, i32 noundef 3) #15
  br label %29

29:                                               ; preds = %25, %22, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @wm8958_micd_set_rate(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.wm8994_priv, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.wm8994_priv, ptr %5, i32 0, i32 51
  %9 = load i8, ptr %8, align 1, !range !8
  %10 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 520) #15
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr %struct.wm8994_priv, ptr %5, i32 0, i32 6, i32 1
  %14 = getelementptr inbounds %struct.wm8994_priv, ptr %5, i32 0, i32 6
  %15 = select i1 %12, ptr %14, ptr %13
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.wm8994_pdata, ptr %7, i32 0, i32 18
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.wm8994_priv, ptr %5, i32 0, i32 53
  %22 = load i8, ptr %21, align 4, !range !8
  %23 = icmp eq i8 %22, 0
  %24 = select i1 %23, ptr @micdet_rates, ptr @jackdet_rates
  br label %29

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.wm8994_pdata, ptr %7, i32 0, i32 17
  %27 = load i32, ptr %26, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %58

29:                                               ; preds = %25, %20
  %30 = phi i32 [ 4, %20 ], [ %27, %25 ]
  %31 = phi ptr [ %24, %20 ], [ %18, %25 ]
  %32 = xor i8 %9, 1
  br label %33

33:                                               ; preds = %54, %29
  %34 = phi i32 [ 0, %29 ], [ %55, %54 ]
  %35 = phi i32 [ 0, %29 ], [ %56, %54 ]
  %36 = getelementptr %struct.wm8958_micd_rate, ptr %31, i32 %35, i32 1
  %37 = load i8, ptr %36, align 4, !range !8
  %38 = icmp eq i8 %37, %32
  br i1 %38, label %39, label %54

39:                                               ; preds = %33
  %40 = getelementptr %struct.wm8958_micd_rate, ptr %31, i32 %35
  %41 = load i32, ptr %40, align 4
  %42 = sub i32 %41, %16
  %43 = tail call i32 @llvm.abs.i32(i32 %42, i1 false)
  %44 = getelementptr %struct.wm8958_micd_rate, ptr %31, i32 %34
  %45 = load i32, ptr %44, align 4
  %46 = sub i32 %45, %16
  %47 = tail call i32 @llvm.abs.i32(i32 %46, i1 false)
  %48 = icmp slt i32 %43, %47
  br i1 %48, label %54, label %49

49:                                               ; preds = %39
  %50 = getelementptr %struct.wm8958_micd_rate, ptr %31, i32 %34, i32 1
  %51 = load i8, ptr %50, align 4, !range !8
  %52 = icmp eq i8 %51, %32
  %53 = select i1 %52, i32 %34, i32 %35
  br label %54

54:                                               ; preds = %49, %39, %33
  %55 = phi i32 [ %34, %33 ], [ %35, %39 ], [ %53, %49 ]
  %56 = add nuw nsw i32 %35, 1
  %57 = icmp eq i32 %56, %30
  br i1 %57, label %58, label %33

58:                                               ; preds = %54, %25
  %59 = phi ptr [ %18, %25 ], [ %31, %54 ]
  %60 = phi i32 [ 0, %25 ], [ %55, %54 ]
  %61 = getelementptr %struct.wm8958_micd_rate, ptr %59, i32 %60, i32 2
  %62 = load i32, ptr %61, align 4
  %63 = shl i32 %62, 12
  %64 = getelementptr %struct.wm8958_micd_rate, ptr %59, i32 %60, i32 3
  %65 = load i32, ptr %64, align 4
  %66 = shl i32 %65, 8
  %67 = or i32 %66, %63
  %68 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 208, i32 noundef 65280, i32 noundef %67) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #4 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @wm8994_codec_driver, ptr noundef nonnull @__this_module) #15
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #4 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @wm8994_codec_driver) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_jack_report(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @wm1811_micd_stop(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 17
  %3 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.wm8994_priv, ptr %6, i32 0, i32 53
  %8 = load i8, ptr %7, align 4, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %41, label %10

10:                                               ; preds = %1
  %11 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 208, i32 noundef 1, i32 noundef 0) #15
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 8
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.wm8994_priv, ptr %14, i32 0, i32 53
  %16 = load i8, ptr %15, align 4, !range !8
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %32, label %18

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.wm8994_priv, ptr %14, i32 0, i32 45
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.wm8994_priv, ptr %14, i32 0, i32 16
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i32 256, i32 384
  %27 = getelementptr inbounds %struct.wm8994_priv, ptr %14, i32 0, i32 54
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, %26
  br i1 %29, label %32, label %30

30:                                               ; preds = %22
  store i32 %26, ptr %27, align 4
  %31 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 57, i32 noundef 384, i32 noundef 384) #15
  br label %32

32:                                               ; preds = %30, %22, %18, %10
  %33 = getelementptr inbounds %struct.wm8994_priv, ptr %6, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.wm8994_pdata, ptr %34, i32 0, i32 25
  %36 = load i8, ptr %35, align 4
  %37 = and i8 %36, 64
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %32
  %40 = tail call i32 @snd_soc_dapm_disable_pin(ptr noundef %2, ptr noundef nonnull @.str.10) #15
  br label %41

41:                                               ; preds = %39, %32, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8994_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 844, i32 noundef 3520) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %6, align 8
  %7 = getelementptr inbounds %struct.wm8994_priv, ptr %3, i32 0, i32 62
  tail call void @__mutex_init(ptr noundef %7, ptr noundef nonnull @.str.12, ptr noundef nonnull @wm8994_probe.__key) #15
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.wm8994_priv, ptr %3, i32 0, i32 1
  store ptr %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.wm8994_priv, ptr %3, i32 0, i32 2
  store ptr @.str.13, ptr %13, align 4
  %14 = getelementptr %struct.wm8994_priv, ptr %3, i32 0, i32 2, i32 1
  store ptr @.str.14, ptr %14, align 4
  %15 = tail call i32 @devm_clk_bulk_get_optional(ptr noundef %9, i32 noundef 2, ptr noundef %13) #15
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.15, i32 noundef %15) #16
  br label %23

18:                                               ; preds = %5
  tail call void @pm_runtime_enable(ptr noundef %2) #15
  %19 = tail call i32 @__pm_runtime_idle(ptr noundef %2, i32 noundef 0) #15
  %20 = tail call i32 @devm_snd_soc_register_component(ptr noundef %2, ptr noundef nonnull @soc_component_dev_wm8994, ptr noundef nonnull @wm8994_dai, i32 noundef 3) #15
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #15
  br label %23

23:                                               ; preds = %22, %18, %17, %1
  %24 = phi i32 [ %15, %17 ], [ -12, %1 ], [ %20, %22 ], [ %20, %18 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8994_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get_optional(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8994_component_probe(ptr noundef %0) #0 {
  %2 = alloca [3 x %struct.snd_kcontrol_new], align 4
  %3 = alloca [3 x %struct.snd_kcontrol_new], align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 17
  %6 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %13 = load ptr, ptr %12, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  store i32 0, ptr %4, align 4, !annotation !10
  %14 = getelementptr inbounds %struct.wm8994, ptr %11, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  tail call void @snd_soc_component_init_regmap(ptr noundef %0, ptr noundef %15) #15
  %16 = getelementptr inbounds %struct.wm_hubs_data, ptr %13, i32 0, i32 20
  store ptr %0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.wm8994_priv, ptr %13, i32 0, i32 44
  tail call void @__mutex_init(ptr noundef %17, ptr noundef nonnull @.str.16, ptr noundef nonnull @wm8994_component_probe.__key) #15
  %18 = getelementptr inbounds %struct.wm8994_priv, ptr %13, i32 0, i32 55
  store i32 -32, ptr %18, align 4
  %19 = getelementptr inbounds %struct.wm8994_priv, ptr %13, i32 0, i32 55, i32 0, i32 1
  store volatile ptr %19, ptr %19, align 4
  %20 = getelementptr inbounds %struct.wm8994_priv, ptr %13, i32 0, i32 55, i32 0, i32 1, i32 1
  store ptr %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.wm8994_priv, ptr %13, i32 0, i32 55, i32 0, i32 2
  store ptr @wm1811_jackdet_bootstrap, ptr %21, align 4
  %22 = getelementptr inbounds %struct.wm8994_priv, ptr %13, i32 0, i32 55, i32 1
  tail call void @init_timer_key(ptr noundef %22, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #15
  %23 = getelementptr inbounds %struct.wm8994_priv, ptr %13, i32 0, i32 47
  store i32 -32, ptr %23, align 4
  %24 = getelementptr inbounds %struct.wm8994_priv, ptr %13, i32 0, i32 47, i32 0, i32 1
  store volatile ptr %24, ptr %24, align 4
  %25 = getelementptr inbounds %struct.wm8994_priv, ptr %13, i32 0, i32 47, i32 0, i32 1, i32 1
  store ptr %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.wm8994_priv, ptr %13, i32 0, i32 47, i32 0, i32 2
  store ptr @wm8958_open_circuit_work, ptr %26, align 4
  %27 = getelementptr inbounds %struct.wm8994_priv, ptr %13, i32 0, i32 47, i32 1
  tail call void @init_timer_key(ptr noundef %27, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #15
  %28 = getelementptr inbounds %struct.wm8994, ptr %11, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  switch i32 %29, label %42 [
    i32 0, label %30
    i32 2, label %33
  ]

30:                                               ; preds = %1
  %31 = getelementptr inbounds %struct.wm8994_priv, ptr %13, i32 0, i32 46
  store i32 -32, ptr %31, align 4
  %32 = getelementptr inbounds %struct.wm8994_priv, ptr %13, i32 0, i32 46, i32 0, i32 1
  store volatile ptr %32, ptr %32, align 4
  br label %36

33:                                               ; preds = %1
  %34 = getelementptr inbounds %struct.wm8994_priv, ptr %13, i32 0, i32 46
  store i32 -32, ptr %34, align 4
  %35 = getelementptr inbounds %struct.wm8994_priv, ptr %13, i32 0, i32 46, i32 0, i32 1
  store volatile ptr %35, ptr %35, align 4
  br label %36

36:                                               ; preds = %33, %30
  %37 = phi ptr [ %35, %33 ], [ %32, %30 ]
  %38 = phi ptr [ @wm1811_mic_work, %33 ], [ @wm8994_mic_work, %30 ]
  %39 = getelementptr inbounds %struct.wm8994_priv, ptr %13, i32 0, i32 46, i32 0, i32 1, i32 1
  store ptr %37, ptr %39, align 4
  %40 = getelementptr inbounds %struct.wm8994_priv, ptr %13, i32 0, i32 46, i32 0, i32 2
  store ptr %38, ptr %40, align 4
  %41 = getelementptr inbounds %struct.wm8994_priv, ptr %13, i32 0, i32 46, i32 1
  tail call void @init_timer_key(ptr noundef %41, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #15
  br label %42

42:                                               ; preds = %36, %1
  %43 = getelementptr inbounds %struct.wm8994_priv, ptr %13, i32 0, i32 48
  store i32 -32, ptr %43, align 4
  %44 = getelementptr inbounds %struct.wm8994_priv, ptr %13, i32 0, i32 48, i32 0, i32 1
  store volatile ptr %44, ptr %44, align 4
  %45 = getelementptr inbounds %struct.wm8994_priv, ptr %13, i32 0, i32 48, i32 0, i32 1, i32 1
  store ptr %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.wm8994_priv, ptr %13, i32 0, i32 48, i32 0, i32 2
  store ptr @wm8958_mic_work, ptr %46, align 4
  %47 = getelementptr inbounds %struct.wm8994_priv, ptr %13, i32 0, i32 48, i32 1
  tail call void @init_timer_key(ptr noundef %47, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #15
  %48 = getelementptr %struct.wm8994_priv, ptr %13, i32 0, i32 11, i32 0
  store i32 0, ptr %48, align 4
  %49 = getelementptr %struct.wm8994_priv, ptr %13, i32 0, i32 11, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %49, ptr noundef nonnull @.str.37, ptr noundef nonnull @init_completion.__key) #15
  %50 = getelementptr %struct.wm8994_priv, ptr %13, i32 0, i32 11, i32 1
  store i32 0, ptr %50, align 4
  %51 = getelementptr %struct.wm8994_priv, ptr %13, i32 0, i32 11, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %51, ptr noundef nonnull @.str.37, ptr noundef nonnull @init_completion.__key) #15
  %52 = getelementptr inbounds %struct.wm8994_pdata, ptr %11, i32 0, i32 24
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.wm8994_priv, ptr %13, i32 0, i32 56
  store i32 %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 17, i32 1
  %56 = load i8, ptr %55, align 4
  %57 = or i8 %56, 1
  store i8 %57, ptr %55, align 4
  %58 = load i32, ptr %28, align 4
  switch i32 %58, label %96 [
    i32 0, label %59
    i32 1, label %79
    i32 2, label %88
  ]

59:                                               ; preds = %42
  %60 = getelementptr inbounds %struct.wm8994_pdata, ptr %11, i32 0, i32 21
  %61 = load i8, ptr %60, align 4
  %62 = and i8 %61, 3
  %63 = icmp eq i8 %62, 3
  br i1 %63, label %66, label %64

64:                                               ; preds = %59
  %65 = and i8 %56, -2
  store i8 %65, ptr %55, align 4
  br label %66

66:                                               ; preds = %64, %59
  %67 = getelementptr inbounds %struct.wm8994, ptr %11, i32 0, i32 2
  %68 = load i32, ptr %67, align 4
  %69 = and i32 %68, -2
  %70 = icmp eq i32 %69, 2
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  store i32 -5, ptr %13, align 4
  %72 = getelementptr inbounds %struct.wm_hubs_data, ptr %13, i32 0, i32 1
  store i32 -5, ptr %72, align 4
  %73 = getelementptr inbounds %struct.wm_hubs_data, ptr %13, i32 0, i32 3
  store i32 1, ptr %73, align 4
  %74 = getelementptr inbounds %struct.wm_hubs_data, ptr %13, i32 0, i32 4
  store i32 1, ptr %74, align 4
  br label %75

75:                                               ; preds = %71, %66
  %76 = phi i32 [ 1, %71 ], [ 2, %66 ]
  %77 = getelementptr inbounds %struct.wm_hubs_data, ptr %13, i32 0, i32 2
  store i32 %76, ptr %77, align 4
  %78 = getelementptr inbounds %struct.wm_hubs_data, ptr %13, i32 0, i32 6
  store i8 1, ptr %78, align 4
  br label %96

79:                                               ; preds = %42
  %80 = getelementptr inbounds %struct.wm_hubs_data, ptr %13, i32 0, i32 2
  store i32 1, ptr %80, align 4
  %81 = getelementptr inbounds %struct.wm_hubs_data, ptr %13, i32 0, i32 3
  store i32 1, ptr %81, align 4
  %82 = getelementptr inbounds %struct.wm_hubs_data, ptr %13, i32 0, i32 6
  store i8 1, ptr %82, align 4
  %83 = getelementptr inbounds %struct.wm8994, ptr %11, i32 0, i32 2
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %96, label %86

86:                                               ; preds = %79
  %87 = getelementptr inbounds %struct.wm8994_priv, ptr %13, i32 0, i32 13
  store i8 1, ptr %87, align 1
  br label %96

88:                                               ; preds = %42
  %89 = getelementptr inbounds %struct.wm_hubs_data, ptr %13, i32 0, i32 2
  store i32 2, ptr %89, align 4
  %90 = getelementptr inbounds %struct.wm_hubs_data, ptr %13, i32 0, i32 5
  store i32 1, ptr %90, align 4
  %91 = getelementptr inbounds %struct.wm_hubs_data, ptr %13, i32 0, i32 3
  store i32 1, ptr %91, align 4
  %92 = getelementptr inbounds %struct.wm_hubs_data, ptr %13, i32 0, i32 7
  store i8 1, ptr %92, align 1
  %93 = getelementptr inbounds %struct.wm8994_priv, ptr %13, i32 0, i32 13
  store i8 1, ptr %93, align 1
  store i32 -9, ptr %13, align 4
  %94 = getelementptr inbounds %struct.wm_hubs_data, ptr %13, i32 0, i32 1
  store i32 -7, ptr %94, align 4
  %95 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 96, i32 noundef 256, i32 noundef 256) #15
  br label %96

96:                                               ; preds = %88, %86, %79, %75, %42
  %97 = getelementptr inbounds %struct.wm8994_priv, ptr %13, i32 0, i32 1
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.wm8994, ptr %98, i32 0, i32 10
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %119, label %102

102:                                              ; preds = %96
  %103 = tail call i32 @regmap_irq_get_virq(ptr noundef nonnull %100, i32 noundef 12) #15
  %104 = tail call i32 @request_threaded_irq(i32 noundef %103, ptr noundef null, ptr noundef nonnull @wm8994_fifo_error, i32 noundef 1, ptr noundef nonnull @.str.17, ptr noundef %0) #15
  %105 = load ptr, ptr %97, align 4
  %106 = getelementptr inbounds %struct.wm8994, ptr %105, i32 0, i32 10
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %119, label %109

109:                                              ; preds = %102
  %110 = tail call i32 @regmap_irq_get_virq(ptr noundef nonnull %107, i32 noundef 15) #15
  %111 = tail call i32 @request_threaded_irq(i32 noundef %110, ptr noundef null, ptr noundef nonnull @wm8994_temp_warn, i32 noundef 1, ptr noundef nonnull @.str.18, ptr noundef %0) #15
  %112 = load ptr, ptr %97, align 4
  %113 = getelementptr inbounds %struct.wm8994, ptr %112, i32 0, i32 10
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %109
  %117 = tail call i32 @regmap_irq_get_virq(ptr noundef nonnull %114, i32 noundef 0) #15
  %118 = tail call i32 @request_threaded_irq(i32 noundef %117, ptr noundef null, ptr noundef nonnull @wm8994_temp_shut, i32 noundef 1, ptr noundef nonnull @.str.19, ptr noundef %0) #15
  br label %119

119:                                              ; preds = %116, %109, %102, %96
  %120 = load i32, ptr %28, align 4
  switch i32 %120, label %214 [
    i32 0, label %121
    i32 1, label %176
    i32 2, label %176
  ]

121:                                              ; preds = %119
  %122 = load i32, ptr %54, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %121
  %125 = tail call i32 @request_threaded_irq(i32 noundef %122, ptr noundef null, ptr noundef nonnull @wm8994_mic_irq, i32 noundef 8193, ptr noundef nonnull @.str.20, ptr noundef %13) #15
  br label %134

126:                                              ; preds = %121
  %127 = load ptr, ptr %97, align 4
  %128 = getelementptr inbounds %struct.wm8994, ptr %127, i32 0, i32 10
  %129 = load ptr, ptr %128, align 4
  %130 = icmp eq ptr %129, null
  br i1 %130, label %137, label %131

131:                                              ; preds = %126
  %132 = tail call i32 @regmap_irq_get_virq(ptr noundef nonnull %129, i32 noundef 1) #15
  %133 = tail call i32 @request_threaded_irq(i32 noundef %132, ptr noundef null, ptr noundef nonnull @wm8994_mic_irq, i32 noundef 1, ptr noundef nonnull @.str.21, ptr noundef %13) #15
  br label %134

134:                                              ; preds = %131, %124
  %135 = phi i32 [ %125, %124 ], [ %133, %131 ]
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %134, %126
  %138 = phi i32 [ %135, %134 ], [ -22, %126 ]
  %139 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %139, ptr noundef nonnull @.str.22, i32 noundef %138) #16
  br label %140

140:                                              ; preds = %137, %134
  %141 = load ptr, ptr %97, align 4
  %142 = getelementptr inbounds %struct.wm8994, ptr %141, i32 0, i32 10
  %143 = load ptr, ptr %142, align 4
  %144 = icmp eq ptr %143, null
  br i1 %144, label %149, label %145

145:                                              ; preds = %140
  %146 = tail call i32 @regmap_irq_get_virq(ptr noundef nonnull %143, i32 noundef 2) #15
  %147 = tail call i32 @request_threaded_irq(i32 noundef %146, ptr noundef null, ptr noundef nonnull @wm8994_mic_irq, i32 noundef 1, ptr noundef nonnull @.str.23, ptr noundef %13) #15
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %145, %140
  %150 = phi i32 [ %147, %145 ], [ -22, %140 ]
  %151 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %151, ptr noundef nonnull @.str.24, i32 noundef %150) #16
  br label %152

152:                                              ; preds = %149, %145
  %153 = load ptr, ptr %97, align 4
  %154 = getelementptr inbounds %struct.wm8994, ptr %153, i32 0, i32 10
  %155 = load ptr, ptr %154, align 4
  %156 = icmp eq ptr %155, null
  br i1 %156, label %161, label %157

157:                                              ; preds = %152
  %158 = tail call i32 @regmap_irq_get_virq(ptr noundef nonnull %155, i32 noundef 3) #15
  %159 = tail call i32 @request_threaded_irq(i32 noundef %158, ptr noundef null, ptr noundef nonnull @wm8994_mic_irq, i32 noundef 1, ptr noundef nonnull @.str.25, ptr noundef %13) #15
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %157, %152
  %162 = phi i32 [ %159, %157 ], [ -22, %152 ]
  %163 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %163, ptr noundef nonnull @.str.26, i32 noundef %162) #16
  br label %164

164:                                              ; preds = %161, %157
  %165 = load ptr, ptr %97, align 4
  %166 = getelementptr inbounds %struct.wm8994, ptr %165, i32 0, i32 10
  %167 = load ptr, ptr %166, align 4
  %168 = icmp eq ptr %167, null
  br i1 %168, label %173, label %169

169:                                              ; preds = %164
  %170 = tail call i32 @regmap_irq_get_virq(ptr noundef nonnull %167, i32 noundef 4) #15
  %171 = tail call i32 @request_threaded_irq(i32 noundef %170, ptr noundef null, ptr noundef nonnull @wm8994_mic_irq, i32 noundef 1, ptr noundef nonnull @.str.27, ptr noundef %13) #15
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %192, label %173

173:                                              ; preds = %169, %164
  %174 = phi i32 [ %171, %169 ], [ -22, %164 ]
  %175 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %175, ptr noundef nonnull @.str.28, i32 noundef %174) #16
  br label %192

176:                                              ; preds = %119, %119
  %177 = load i32, ptr %54, align 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %184, label %179

179:                                              ; preds = %176
  %180 = tail call i32 @request_threaded_irq(i32 noundef %177, ptr noundef null, ptr noundef nonnull @wm8958_mic_irq, i32 noundef 8193, ptr noundef nonnull @.str.29, ptr noundef %13) #15
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %192, label %182

182:                                              ; preds = %179
  %183 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %183, ptr noundef nonnull @.str.30, i32 noundef %180) #16
  br label %192

184:                                              ; preds = %176
  %185 = load ptr, ptr %97, align 4
  %186 = getelementptr inbounds %struct.wm8994, ptr %185, i32 0, i32 10
  %187 = load ptr, ptr %186, align 4
  %188 = icmp eq ptr %187, null
  br i1 %188, label %192, label %189

189:                                              ; preds = %184
  %190 = tail call i32 @regmap_irq_get_virq(ptr noundef nonnull %187, i32 noundef 1) #15
  %191 = tail call i32 @request_threaded_irq(i32 noundef %190, ptr noundef null, ptr noundef nonnull @wm8958_mic_irq, i32 noundef 1, ptr noundef nonnull @.str.29, ptr noundef %13) #15
  br label %192

192:                                              ; preds = %189, %184, %182, %179, %173, %169
  %193 = load i32, ptr %28, align 4
  %194 = icmp eq i32 %193, 2
  br i1 %194, label %195, label %214

195:                                              ; preds = %192
  %196 = getelementptr inbounds %struct.wm8994, ptr %11, i32 0, i32 3
  %197 = load i32, ptr %196, align 4
  %198 = icmp sgt i32 %197, 1
  br i1 %198, label %203, label %199

199:                                              ; preds = %195
  %200 = getelementptr inbounds %struct.wm8994, ptr %11, i32 0, i32 2
  %201 = load i32, ptr %200, align 4
  %202 = icmp sgt i32 %201, 1
  br i1 %202, label %203, label %214

203:                                              ; preds = %199, %195
  %204 = load ptr, ptr %97, align 4
  %205 = getelementptr inbounds %struct.wm8994, ptr %204, i32 0, i32 10
  %206 = load ptr, ptr %205, align 4
  %207 = icmp eq ptr %206, null
  br i1 %207, label %214, label %208

208:                                              ; preds = %203
  %209 = tail call i32 @regmap_irq_get_virq(ptr noundef nonnull %206, i32 noundef 21) #15
  %210 = tail call i32 @request_threaded_irq(i32 noundef %209, ptr noundef null, ptr noundef nonnull @wm1811_jackdet_irq, i32 noundef 1, ptr noundef nonnull @.str.31, ptr noundef %13) #15
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %208
  %213 = getelementptr inbounds %struct.wm8994_priv, ptr %13, i32 0, i32 53
  store i8 1, ptr %213, align 4
  br label %214

214:                                              ; preds = %212, %208, %203, %199, %192, %119
  %215 = getelementptr inbounds %struct.wm8994_priv, ptr %13, i32 0, i32 12
  store i8 1, ptr %215, align 4
  %216 = load ptr, ptr %97, align 4
  %217 = getelementptr inbounds %struct.wm8994, ptr %216, i32 0, i32 10
  %218 = load ptr, ptr %217, align 4
  %219 = icmp eq ptr %218, null
  br i1 %219, label %224, label %220

220:                                              ; preds = %214
  %221 = tail call i32 @regmap_irq_get_virq(ptr noundef nonnull %218, i32 noundef 5) #15
  %222 = tail call i32 @request_threaded_irq(i32 noundef %221, ptr noundef null, ptr noundef nonnull @wm8994_fll_locked_irq, i32 noundef 1, ptr noundef nonnull @.str.32, ptr noundef %48) #15
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %225, label %224

224:                                              ; preds = %220, %214
  store i8 0, ptr %215, align 4
  br label %225

225:                                              ; preds = %224, %220
  %226 = load ptr, ptr %97, align 4
  %227 = getelementptr inbounds %struct.wm8994, ptr %226, i32 0, i32 10
  %228 = load ptr, ptr %227, align 4
  %229 = icmp eq ptr %228, null
  br i1 %229, label %234, label %230

230:                                              ; preds = %225
  %231 = tail call i32 @regmap_irq_get_virq(ptr noundef nonnull %228, i32 noundef 6) #15
  %232 = tail call i32 @request_threaded_irq(i32 noundef %231, ptr noundef null, ptr noundef nonnull @wm8994_fll_locked_irq, i32 noundef 1, ptr noundef nonnull @.str.32, ptr noundef %50) #15
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %235, label %234

234:                                              ; preds = %230, %225
  store i8 0, ptr %215, align 4
  br label %235

235:                                              ; preds = %234, %230
  %236 = load ptr, ptr %6, align 4
  %237 = tail call i32 @__pm_runtime_resume(ptr noundef %236, i32 noundef 4) #15
  %238 = load ptr, ptr %14, align 4
  %239 = call i32 @regmap_read(ptr noundef %238, i32 noundef 1792, ptr noundef nonnull %4) #15
  %240 = icmp slt i32 %239, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %235
  %242 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %242, ptr noundef nonnull @.str.33, i32 noundef %239) #16
  br label %634

243:                                              ; preds = %235
  %244 = load i32, ptr %4, align 4
  %245 = and i32 %244, 31
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %250, label %247

247:                                              ; preds = %243
  %248 = load i8, ptr getelementptr inbounds ([3 x %struct.snd_soc_dai_driver], ptr @wm8994_dai, i32 0, i32 0, i32 12), align 8
  %249 = or i8 %248, 1
  store i8 %249, ptr getelementptr inbounds ([3 x %struct.snd_soc_dai_driver], ptr @wm8994_dai, i32 0, i32 0, i32 12), align 8
  br label %250

250:                                              ; preds = %247, %243
  %251 = phi i32 [ 1, %247 ], [ 0, %243 ]
  %252 = getelementptr inbounds %struct.wm8994_priv, ptr %13, i32 0, i32 19
  store i32 %251, ptr %252, align 4
  %253 = load ptr, ptr %14, align 4
  %254 = call i32 @regmap_read(ptr noundef %253, i32 noundef 1797, ptr noundef nonnull %4) #15
  %255 = icmp slt i32 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %250
  %257 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %257, ptr noundef nonnull @.str.34, i32 noundef %254) #16
  br label %634

258:                                              ; preds = %250
  %259 = load i32, ptr %4, align 4
  %260 = and i32 %259, 31
  %261 = icmp eq i32 %260, 0
  %262 = getelementptr %struct.wm8994_priv, ptr %13, i32 0, i32 19, i32 1
  br i1 %261, label %266, label %263

263:                                              ; preds = %258
  store i32 1, ptr %262, align 4
  %264 = load i8, ptr getelementptr inbounds ([3 x %struct.snd_soc_dai_driver], ptr @wm8994_dai, i32 0, i32 1, i32 12), align 8
  %265 = or i8 %264, 1
  store i8 %265, ptr getelementptr inbounds ([3 x %struct.snd_soc_dai_driver], ptr @wm8994_dai, i32 0, i32 1, i32 12), align 8
  br label %267

266:                                              ; preds = %258
  store i32 0, ptr %262, align 4
  br label %267

267:                                              ; preds = %266, %263
  %268 = load ptr, ptr %6, align 4
  %269 = call i32 @__pm_runtime_idle(ptr noundef %268, i32 noundef 5) #15
  br label %270

270:                                              ; preds = %270, %267
  %271 = phi i32 [ 0, %267 ], [ %277, %270 ]
  %272 = getelementptr [22 x %struct.wm8994_reg_mask], ptr @wm8994_vu_bits, i32 0, i32 %271
  %273 = load i32, ptr %272, align 4
  %274 = getelementptr [22 x %struct.wm8994_reg_mask], ptr @wm8994_vu_bits, i32 0, i32 %271, i32 1
  %275 = load i32, ptr %274, align 4
  %276 = call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef %273, i32 noundef %275, i32 noundef %275) #15
  %277 = add nuw nsw i32 %271, 1
  %278 = icmp eq i32 %277, 22
  br i1 %278, label %279, label %270

279:                                              ; preds = %270
  %280 = load i32, ptr %28, align 4
  %281 = icmp eq i32 %280, 2
  br i1 %281, label %287, label %282

282:                                              ; preds = %279
  %283 = call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 1030, i32 noundef 256, i32 noundef 256) #15
  %284 = call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 1031, i32 noundef 256, i32 noundef 256) #15
  %285 = call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 1028, i32 noundef 256, i32 noundef 256) #15
  %286 = call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 1029, i32 noundef 256, i32 noundef 256) #15
  br label %287

287:                                              ; preds = %282, %279
  %288 = call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 1057, i32 noundef 512, i32 noundef 512) #15
  %289 = call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 1059, i32 noundef 512, i32 noundef 512) #15
  %290 = call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 1313, i32 noundef 512, i32 noundef 512) #15
  %291 = load i32, ptr %28, align 4
  %292 = icmp ult i32 %291, 2
  br i1 %292, label %293, label %296

293:                                              ; preds = %287
  %294 = call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 768, i32 noundef 8192, i32 noundef 8192) #15
  %295 = load i32, ptr %28, align 4
  br label %296

296:                                              ; preds = %293, %287
  %297 = phi i32 [ %291, %287 ], [ %295, %293 ]
  %298 = add i32 %297, -1
  %299 = icmp ult i32 %298, 2
  br i1 %299, label %300, label %303

300:                                              ; preds = %296
  %301 = call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 61, i32 noundef 16, i32 noundef 16) #15
  %302 = call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 62, i32 noundef 16, i32 noundef 16) #15
  br label %303

303:                                              ; preds = %300, %296
  %304 = getelementptr inbounds %struct.wm_hubs_data, ptr %13, i32 0, i32 9
  store ptr @wm8994_check_class_w_digital, ptr %304, align 4
  call void @wm_hubs_update_class_w(ptr noundef %0) #15
  %305 = load ptr, ptr %16, align 4
  %306 = load ptr, ptr %97, align 4
  %307 = icmp eq ptr %306, null
  br i1 %307, label %559, label %308

308:                                              ; preds = %303
  %309 = getelementptr inbounds %struct.wm8994_pdata, ptr %306, i32 0, i32 21
  %310 = load i8, ptr %309, align 4
  %311 = and i8 %310, 1
  %312 = zext i8 %311 to i32
  %313 = lshr i8 %310, 1
  %314 = and i8 %313, 1
  %315 = zext i8 %314 to i32
  %316 = lshr i8 %310, 2
  %317 = and i8 %316, 1
  %318 = zext i8 %317 to i32
  %319 = lshr i8 %310, 3
  %320 = and i8 %319, 1
  %321 = zext i8 %320 to i32
  %322 = getelementptr inbounds %struct.wm8994_pdata, ptr %306, i32 0, i32 25
  %323 = load i8, ptr %322, align 4
  %324 = lshr i8 %323, 2
  %325 = and i8 %324, 3
  %326 = zext i8 %325 to i32
  %327 = lshr i8 %323, 4
  %328 = and i8 %327, 3
  %329 = zext i8 %328 to i32
  %330 = getelementptr inbounds %struct.wm8994_pdata, ptr %306, i32 0, i32 19
  %331 = load i32, ptr %330, align 4
  %332 = getelementptr inbounds %struct.wm8994_pdata, ptr %306, i32 0, i32 20
  %333 = load i32, ptr %332, align 4
  %334 = and i8 %323, 1
  %335 = zext i8 %334 to i32
  %336 = lshr i8 %323, 1
  %337 = and i8 %336, 1
  %338 = zext i8 %337 to i32
  %339 = call i32 @wm_hubs_handle_analogue_pdata(ptr noundef %305, i32 noundef %312, i32 noundef %315, i32 noundef %318, i32 noundef %321, i32 noundef %326, i32 noundef %329, i32 noundef %331, i32 noundef %333, i32 noundef %335, i32 noundef %338) #15
  %340 = getelementptr inbounds %struct.wm8994_pdata, ptr %306, i32 0, i32 5
  %341 = load i32, ptr %340, align 4
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %424, label %343

343:                                              ; preds = %308
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #15
  store i32 2, ptr %3, align 4
  %344 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 0, i32 1
  store i32 0, ptr %344, align 4
  %345 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 0, i32 2
  store i32 0, ptr %345, align 4
  %346 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 0, i32 3
  store ptr @.str.44, ptr %346, align 4
  %347 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 0, i32 4
  store i32 0, ptr %347, align 4
  %348 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 0, i32 5
  store i32 0, ptr %348, align 4
  %349 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 0, i32 6
  store i32 0, ptr %349, align 4
  %350 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 0, i32 7
  store ptr @snd_soc_info_enum_double, ptr %350, align 4
  %351 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 0, i32 8
  store ptr @wm8994_get_drc_enum, ptr %351, align 4
  %352 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 0, i32 9
  store ptr @wm8994_put_drc_enum, ptr %352, align 4
  %353 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 0, i32 10
  store i32 0, ptr %353, align 4
  %354 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 0, i32 11
  %355 = getelementptr inbounds %struct.wm8994_priv, ptr %13, i32 0, i32 27
  %356 = ptrtoint ptr %355 to i32
  store i32 %356, ptr %354, align 4
  %357 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 1
  store i32 2, ptr %357, align 4
  %358 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 1, i32 1
  store i32 0, ptr %358, align 4
  %359 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 1, i32 2
  store i32 0, ptr %359, align 4
  %360 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 1, i32 3
  store ptr @.str.45, ptr %360, align 4
  %361 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 1, i32 4
  store i32 0, ptr %361, align 4
  %362 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 1, i32 5
  store i32 0, ptr %362, align 4
  %363 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 1, i32 6
  store i32 0, ptr %363, align 4
  %364 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 1, i32 7
  store ptr @snd_soc_info_enum_double, ptr %364, align 4
  %365 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 1, i32 8
  store ptr @wm8994_get_drc_enum, ptr %365, align 4
  %366 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 1, i32 9
  store ptr @wm8994_put_drc_enum, ptr %366, align 4
  %367 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 1, i32 10
  store i32 0, ptr %367, align 4
  %368 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 1, i32 11
  store i32 %356, ptr %368, align 4
  %369 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 2
  store i32 2, ptr %369, align 4
  %370 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 2, i32 1
  store i32 0, ptr %370, align 4
  %371 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 2, i32 2
  store i32 0, ptr %371, align 4
  %372 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 2, i32 3
  store ptr @.str.46, ptr %372, align 4
  %373 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 2, i32 4
  store i32 0, ptr %373, align 4
  %374 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 2, i32 5
  store i32 0, ptr %374, align 4
  %375 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 2, i32 6
  store i32 0, ptr %375, align 4
  %376 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 2, i32 7
  store ptr @snd_soc_info_enum_double, ptr %376, align 4
  %377 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 2, i32 8
  store ptr @wm8994_get_drc_enum, ptr %377, align 4
  %378 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 2, i32 9
  store ptr @wm8994_put_drc_enum, ptr %378, align 4
  %379 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 2, i32 10
  store i32 0, ptr %379, align 4
  %380 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 2, i32 11
  store i32 %356, ptr %380, align 4
  %381 = load i32, ptr %340, align 4
  %382 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %381, i32 4) #15
  %383 = extractvalue { i32, i1 } %382, 1
  br i1 %383, label %384, label %386, !prof !9

384:                                              ; preds = %343
  %385 = getelementptr inbounds %struct.wm8994_priv, ptr %13, i32 0, i32 25
  store ptr null, ptr %385, align 4
  br label %423

386:                                              ; preds = %343
  %387 = load ptr, ptr %16, align 4
  %388 = getelementptr inbounds %struct.snd_soc_component, ptr %387, i32 0, i32 3
  %389 = load ptr, ptr %388, align 4
  %390 = extractvalue { i32, i1 } %382, 0
  %391 = call noalias ptr @devm_kmalloc(ptr noundef %389, i32 noundef %390, i32 noundef 3520) #15
  %392 = getelementptr inbounds %struct.wm8994_priv, ptr %13, i32 0, i32 25
  store ptr %391, ptr %392, align 4
  %393 = icmp eq ptr %391, null
  br i1 %393, label %423, label %394

394:                                              ; preds = %386
  %395 = load i32, ptr %340, align 4
  %396 = icmp sgt i32 %395, 0
  br i1 %396, label %397, label %416

397:                                              ; preds = %394
  %398 = getelementptr inbounds %struct.wm8994_pdata, ptr %306, i32 0, i32 6
  %399 = load ptr, ptr %398, align 4
  %400 = load ptr, ptr %399, align 4
  store ptr %400, ptr %391, align 4
  %401 = load i32, ptr %340, align 4
  %402 = icmp sgt i32 %401, 1
  br i1 %402, label %403, label %413

403:                                              ; preds = %403, %397
  %404 = phi i32 [ %410, %403 ], [ 1, %397 ]
  %405 = load ptr, ptr %392, align 4
  %406 = load ptr, ptr %398, align 4
  %407 = getelementptr %struct.wm8994_drc_cfg, ptr %406, i32 %404
  %408 = load ptr, ptr %407, align 4
  %409 = getelementptr ptr, ptr %405, i32 %404
  store ptr %408, ptr %409, align 4
  %410 = add nuw nsw i32 %404, 1
  %411 = load i32, ptr %340, align 4
  %412 = icmp slt i32 %410, %411
  br i1 %412, label %403, label %413

413:                                              ; preds = %403, %397
  %414 = phi i32 [ %401, %397 ], [ %411, %403 ]
  %415 = load ptr, ptr %392, align 4
  br label %416

416:                                              ; preds = %413, %394
  %417 = phi ptr [ %391, %394 ], [ %415, %413 ]
  %418 = phi i32 [ %395, %394 ], [ %414, %413 ]
  %419 = getelementptr inbounds %struct.wm8994_priv, ptr %13, i32 0, i32 27, i32 3
  store i32 %418, ptr %419, align 4
  %420 = getelementptr inbounds %struct.wm8994_priv, ptr %13, i32 0, i32 27, i32 5
  store ptr %417, ptr %420, align 4
  %421 = load ptr, ptr %16, align 4
  %422 = call i32 @snd_soc_add_component_controls(ptr noundef %421, ptr noundef nonnull %3, i32 noundef 3) #15
  call fastcc void @wm8994_set_drc(ptr noundef %305, i32 noundef 0) #15
  call fastcc void @wm8994_set_drc(ptr noundef %305, i32 noundef 1) #15
  call fastcc void @wm8994_set_drc(ptr noundef %305, i32 noundef 2) #15
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #15
  br label %427

423:                                              ; preds = %386, %384
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #15
  br label %559

424:                                              ; preds = %308
  %425 = load ptr, ptr %16, align 4
  %426 = call i32 @snd_soc_add_component_controls(ptr noundef %425, ptr noundef nonnull @wm8994_drc_controls, i32 noundef 3) #15
  br label %427

427:                                              ; preds = %424, %416
  %428 = phi i32 [ %422, %416 ], [ %426, %424 ]
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %434, label %430

430:                                              ; preds = %427
  %431 = load ptr, ptr %16, align 4
  %432 = getelementptr inbounds %struct.snd_soc_component, ptr %431, i32 0, i32 3
  %433 = load ptr, ptr %432, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %433, ptr noundef nonnull @.str.47, i32 noundef %428) #16
  br label %434

434:                                              ; preds = %430, %427
  %435 = getelementptr inbounds %struct.wm8994_pdata, ptr %306, i32 0, i32 7
  %436 = load i32, ptr %435, align 4
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %542, label %438

438:                                              ; preds = %434
  %439 = load ptr, ptr %97, align 4
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %2) #15
  store i32 2, ptr %2, align 4
  %440 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 0, i32 1
  store i32 0, ptr %440, align 4
  %441 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 0, i32 2
  store i32 0, ptr %441, align 4
  %442 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 0, i32 3
  store ptr @.str.53, ptr %442, align 4
  %443 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 0, i32 4
  store i32 0, ptr %443, align 4
  %444 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 0, i32 5
  store i32 0, ptr %444, align 4
  %445 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 0, i32 6
  store i32 0, ptr %445, align 4
  %446 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 0, i32 7
  store ptr @snd_soc_info_enum_double, ptr %446, align 4
  %447 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 0, i32 8
  store ptr @wm8994_get_retune_mobile_enum, ptr %447, align 4
  %448 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 0, i32 9
  store ptr @wm8994_put_retune_mobile_enum, ptr %448, align 4
  %449 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 0, i32 10
  store i32 0, ptr %449, align 4
  %450 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 0, i32 11
  %451 = getelementptr inbounds %struct.wm8994_priv, ptr %13, i32 0, i32 31
  %452 = ptrtoint ptr %451 to i32
  store i32 %452, ptr %450, align 4
  %453 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 1
  store i32 2, ptr %453, align 4
  %454 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 1, i32 1
  store i32 0, ptr %454, align 4
  %455 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 1, i32 2
  store i32 0, ptr %455, align 4
  %456 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 1, i32 3
  store ptr @.str.54, ptr %456, align 4
  %457 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 1, i32 4
  store i32 0, ptr %457, align 4
  %458 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 1, i32 5
  store i32 0, ptr %458, align 4
  %459 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 1, i32 6
  store i32 0, ptr %459, align 4
  %460 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 1, i32 7
  store ptr @snd_soc_info_enum_double, ptr %460, align 4
  %461 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 1, i32 8
  store ptr @wm8994_get_retune_mobile_enum, ptr %461, align 4
  %462 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 1, i32 9
  store ptr @wm8994_put_retune_mobile_enum, ptr %462, align 4
  %463 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 1, i32 10
  store i32 0, ptr %463, align 4
  %464 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 1, i32 11
  store i32 %452, ptr %464, align 4
  %465 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 2
  store i32 2, ptr %465, align 4
  %466 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 2, i32 1
  store i32 0, ptr %466, align 4
  %467 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 2, i32 2
  store i32 0, ptr %467, align 4
  %468 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 2, i32 3
  store ptr @.str.55, ptr %468, align 4
  %469 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 2, i32 4
  store i32 0, ptr %469, align 4
  %470 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 2, i32 5
  store i32 0, ptr %470, align 4
  %471 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 2, i32 6
  store i32 0, ptr %471, align 4
  %472 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 2, i32 7
  store ptr @snd_soc_info_enum_double, ptr %472, align 4
  %473 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 2, i32 8
  store ptr @wm8994_get_retune_mobile_enum, ptr %473, align 4
  %474 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 2, i32 9
  store ptr @wm8994_put_retune_mobile_enum, ptr %474, align 4
  %475 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 2, i32 10
  store i32 0, ptr %475, align 4
  %476 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %2, i32 2, i32 11
  store i32 %452, ptr %476, align 4
  %477 = getelementptr inbounds %struct.wm8994_priv, ptr %13, i32 0, i32 28
  store i32 0, ptr %477, align 4
  %478 = getelementptr inbounds %struct.wm8994_priv, ptr %13, i32 0, i32 29
  store ptr null, ptr %478, align 4
  %479 = getelementptr inbounds %struct.wm8994_pdata, ptr %439, i32 0, i32 7
  %480 = load i32, ptr %479, align 4
  %481 = icmp sgt i32 %480, 0
  br i1 %481, label %482, label %529

482:                                              ; preds = %438
  %483 = getelementptr inbounds %struct.wm8994_pdata, ptr %439, i32 0, i32 8
  br label %484

484:                                              ; preds = %522, %482
  %485 = phi i32 [ 0, %482 ], [ %523, %522 ]
  %486 = phi i32 [ 0, %482 ], [ %524, %522 ]
  %487 = icmp sgt i32 %485, 0
  br i1 %487, label %488, label %502

488:                                              ; preds = %484
  %489 = load ptr, ptr %483, align 4
  %490 = getelementptr %struct.wm8994_retune_mobile_cfg, ptr %489, i32 %486
  %491 = load ptr, ptr %490, align 4
  %492 = load ptr, ptr %478, align 4
  br label %493

493:                                              ; preds = %499, %488
  %494 = phi i32 [ 0, %488 ], [ %500, %499 ]
  %495 = getelementptr ptr, ptr %492, i32 %494
  %496 = load ptr, ptr %495, align 4
  %497 = call i32 @strcmp(ptr noundef %491, ptr noundef %496) #15
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %502, label %499

499:                                              ; preds = %493
  %500 = add nuw nsw i32 %494, 1
  %501 = icmp eq i32 %500, %485
  br i1 %501, label %507, label %493

502:                                              ; preds = %493, %484
  %503 = phi i32 [ 0, %484 ], [ %494, %493 ]
  %504 = icmp eq i32 %503, %485
  br i1 %504, label %505, label %522

505:                                              ; preds = %502
  %506 = load ptr, ptr %478, align 4
  br label %507

507:                                              ; preds = %505, %499
  %508 = phi ptr [ %506, %505 ], [ %492, %499 ]
  %509 = shl i32 %485, 2
  %510 = add i32 %509, 4
  %511 = call noalias ptr @krealloc(ptr noundef %508, i32 noundef %510, i32 noundef 3264) #17
  %512 = icmp eq ptr %511, null
  br i1 %512, label %513, label %515

513:                                              ; preds = %507
  %514 = load i32, ptr %477, align 4
  br label %522

515:                                              ; preds = %507
  %516 = load ptr, ptr %483, align 4
  %517 = getelementptr %struct.wm8994_retune_mobile_cfg, ptr %516, i32 %486
  %518 = load ptr, ptr %517, align 4
  %519 = load i32, ptr %477, align 4
  %520 = getelementptr ptr, ptr %511, i32 %519
  store ptr %518, ptr %520, align 4
  %521 = add i32 %519, 1
  store i32 %521, ptr %477, align 4
  store ptr %511, ptr %478, align 4
  br label %522

522:                                              ; preds = %515, %513, %502
  %523 = phi i32 [ %514, %513 ], [ %521, %515 ], [ %485, %502 ]
  %524 = add nuw nsw i32 %486, 1
  %525 = load i32, ptr %479, align 4
  %526 = icmp slt i32 %524, %525
  br i1 %526, label %484, label %527

527:                                              ; preds = %522
  %528 = load ptr, ptr %478, align 4
  br label %529

529:                                              ; preds = %527, %438
  %530 = phi ptr [ %528, %527 ], [ null, %438 ]
  %531 = phi i32 [ %523, %527 ], [ 0, %438 ]
  %532 = getelementptr inbounds %struct.wm8994_priv, ptr %13, i32 0, i32 31, i32 3
  store i32 %531, ptr %532, align 4
  %533 = getelementptr inbounds %struct.wm8994_priv, ptr %13, i32 0, i32 31, i32 5
  store ptr %530, ptr %533, align 4
  %534 = load ptr, ptr %16, align 4
  %535 = call i32 @snd_soc_add_component_controls(ptr noundef %534, ptr noundef nonnull %2, i32 noundef 3) #15
  %536 = icmp eq i32 %535, 0
  br i1 %536, label %541, label %537

537:                                              ; preds = %529
  %538 = load ptr, ptr %16, align 4
  %539 = getelementptr inbounds %struct.snd_soc_component, ptr %538, i32 0, i32 3
  %540 = load ptr, ptr %539, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %540, ptr noundef nonnull @.str.56, i32 noundef %535) #16
  br label %541

541:                                              ; preds = %537, %529
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #15
  br label %545

542:                                              ; preds = %434
  %543 = load ptr, ptr %16, align 4
  %544 = call i32 @snd_soc_add_component_controls(ptr noundef %543, ptr noundef nonnull @wm8994_eq_controls, i32 noundef 15) #15
  br label %545

545:                                              ; preds = %542, %541
  %546 = getelementptr %struct.wm8994_pdata, ptr %306, i32 0, i32 26, i32 0
  %547 = load i32, ptr %546, align 4
  %548 = icmp eq i32 %547, 0
  br i1 %548, label %552, label %549

549:                                              ; preds = %545
  %550 = and i32 %547, 65535
  %551 = call i32 @snd_soc_component_write(ptr noundef %305, i32 noundef 61, i32 noundef %550) #15
  br label %552

552:                                              ; preds = %549, %545
  %553 = getelementptr %struct.wm8994_pdata, ptr %306, i32 0, i32 26, i32 1
  %554 = load i32, ptr %553, align 4
  %555 = icmp eq i32 %554, 0
  br i1 %555, label %559, label %556

556:                                              ; preds = %552
  %557 = and i32 %554, 65535
  %558 = call i32 @snd_soc_component_write(ptr noundef %305, i32 noundef 62, i32 noundef %557) #15
  br label %559

559:                                              ; preds = %556, %552, %423, %303
  %560 = call i32 @wm_hubs_add_analogue_controls(ptr noundef %0) #15
  %561 = call i32 @snd_soc_add_component_controls(ptr noundef %0, ptr noundef nonnull @wm8994_common_snd_controls, i32 noundef 48) #15
  %562 = call i32 @snd_soc_dapm_new_controls(ptr noundef %5, ptr noundef nonnull @wm8994_dapm_widgets, i32 noundef 50) #15
  %563 = load i32, ptr %28, align 4
  switch i32 %563, label %594 [
    i32 0, label %564
    i32 1, label %574
    i32 2, label %585
  ]

564:                                              ; preds = %559
  %565 = call i32 @snd_soc_add_component_controls(ptr noundef %0, ptr noundef nonnull @wm8994_snd_controls, i32 noundef 8) #15
  %566 = call i32 @snd_soc_dapm_new_controls(ptr noundef %5, ptr noundef nonnull @wm8994_specific_dapm_widgets, i32 noundef 1) #15
  %567 = getelementptr inbounds %struct.wm8994, ptr %11, i32 0, i32 2
  %568 = load i32, ptr %567, align 4
  %569 = icmp slt i32 %568, 4
  br i1 %569, label %570, label %572

570:                                              ; preds = %564
  %571 = call i32 @snd_soc_dapm_new_controls(ptr noundef %5, ptr noundef nonnull @wm8994_lateclk_revd_widgets, i32 noundef 12) #15
  br label %589

572:                                              ; preds = %564
  %573 = call i32 @snd_soc_dapm_new_controls(ptr noundef %5, ptr noundef nonnull @wm8994_lateclk_widgets, i32 noundef 7) #15
  br label %589

574:                                              ; preds = %559
  %575 = call i32 @snd_soc_add_component_controls(ptr noundef %0, ptr noundef nonnull @wm8994_snd_controls, i32 noundef 8) #15
  %576 = call i32 @snd_soc_add_component_controls(ptr noundef %0, ptr noundef nonnull @wm8958_snd_controls, i32 noundef 10) #15
  %577 = call i32 @snd_soc_dapm_new_controls(ptr noundef %5, ptr noundef nonnull @wm8958_dapm_widgets, i32 noundef 5) #15
  %578 = getelementptr inbounds %struct.wm8994, ptr %11, i32 0, i32 2
  %579 = load i32, ptr %578, align 4
  %580 = icmp slt i32 %579, 1
  br i1 %580, label %581, label %583

581:                                              ; preds = %574
  %582 = call i32 @snd_soc_dapm_new_controls(ptr noundef %5, ptr noundef nonnull @wm8994_lateclk_revd_widgets, i32 noundef 12) #15
  br label %589

583:                                              ; preds = %574
  %584 = call i32 @snd_soc_dapm_new_controls(ptr noundef %5, ptr noundef nonnull @wm8994_lateclk_widgets, i32 noundef 7) #15
  br label %589

585:                                              ; preds = %559
  %586 = call i32 @snd_soc_add_component_controls(ptr noundef %0, ptr noundef nonnull @wm8958_snd_controls, i32 noundef 10) #15
  %587 = call i32 @snd_soc_dapm_new_controls(ptr noundef %5, ptr noundef nonnull @wm8958_dapm_widgets, i32 noundef 5) #15
  %588 = call i32 @snd_soc_dapm_new_controls(ptr noundef %5, ptr noundef nonnull @wm8994_lateclk_widgets, i32 noundef 7) #15
  br label %589

589:                                              ; preds = %585, %583, %581, %572, %570
  %590 = phi ptr [ @wm8994_adc_revd_widgets, %581 ], [ @wm8994_adc_widgets, %583 ], [ @wm8994_adc_revd_widgets, %570 ], [ @wm8994_adc_widgets, %572 ], [ @wm8994_adc_widgets, %585 ]
  %591 = phi ptr [ @wm8994_dac_revd_widgets, %581 ], [ @wm8994_dac_widgets, %583 ], [ @wm8994_dac_revd_widgets, %570 ], [ @wm8994_dac_widgets, %572 ], [ @wm8994_dac_widgets, %585 ]
  %592 = call i32 @snd_soc_dapm_new_controls(ptr noundef %5, ptr noundef nonnull %590, i32 noundef 2) #15
  %593 = call i32 @snd_soc_dapm_new_controls(ptr noundef %5, ptr noundef nonnull %591, i32 noundef 4) #15
  br label %594

594:                                              ; preds = %589, %559
  %595 = call i32 @wm_hubs_add_analogue_routes(ptr noundef %0, i32 noundef 0, i32 noundef 0) #15
  %596 = load ptr, ptr %97, align 4
  %597 = getelementptr inbounds %struct.wm8994, ptr %596, i32 0, i32 10
  %598 = load ptr, ptr %597, align 4
  %599 = icmp eq ptr %598, null
  br i1 %599, label %606, label %600

600:                                              ; preds = %594
  %601 = call i32 @regmap_irq_get_virq(ptr noundef nonnull %598, i32 noundef 14) #15
  %602 = call i32 @request_threaded_irq(i32 noundef %601, ptr noundef null, ptr noundef nonnull @wm_hubs_dcs_done, i32 noundef 1, ptr noundef nonnull @.str.35, ptr noundef %13) #15
  %603 = icmp eq i32 %602, 0
  br i1 %603, label %604, label %606

604:                                              ; preds = %600
  %605 = getelementptr inbounds %struct.wm_hubs_data, ptr %13, i32 0, i32 18
  store i8 1, ptr %605, align 2
  br label %606

606:                                              ; preds = %604, %600, %594
  %607 = call i32 @snd_soc_dapm_add_routes(ptr noundef %5, ptr noundef nonnull @intercon, i32 noundef 148) #15
  %608 = load i32, ptr %28, align 4
  switch i32 %608, label %717 [
    i32 0, label %609
    i32 1, label %619
    i32 2, label %631
  ]

609:                                              ; preds = %606
  %610 = call i32 @snd_soc_dapm_add_routes(ptr noundef %5, ptr noundef nonnull @wm8994_intercon, i32 noundef 4) #15
  %611 = getelementptr inbounds %struct.wm8994, ptr %11, i32 0, i32 2
  %612 = load i32, ptr %611, align 4
  %613 = icmp slt i32 %612, 4
  br i1 %613, label %614, label %617

614:                                              ; preds = %609
  %615 = call i32 @snd_soc_dapm_add_routes(ptr noundef %5, ptr noundef nonnull @wm8994_revd_intercon, i32 noundef 8) #15
  %616 = call i32 @snd_soc_dapm_add_routes(ptr noundef %5, ptr noundef nonnull @wm8994_lateclk_revd_intercon, i32 noundef 8) #15
  br label %717

617:                                              ; preds = %609
  %618 = call i32 @snd_soc_dapm_add_routes(ptr noundef %5, ptr noundef nonnull @wm8994_lateclk_intercon, i32 noundef 4) #15
  br label %717

619:                                              ; preds = %606
  %620 = getelementptr inbounds %struct.wm8994, ptr %11, i32 0, i32 2
  %621 = load i32, ptr %620, align 4
  %622 = icmp slt i32 %621, 1
  br i1 %622, label %623, label %627

623:                                              ; preds = %619
  %624 = call i32 @snd_soc_dapm_add_routes(ptr noundef %5, ptr noundef nonnull @wm8994_intercon, i32 noundef 4) #15
  %625 = call i32 @snd_soc_dapm_add_routes(ptr noundef %5, ptr noundef nonnull @wm8994_revd_intercon, i32 noundef 8) #15
  %626 = call i32 @snd_soc_dapm_add_routes(ptr noundef %5, ptr noundef nonnull @wm8994_lateclk_revd_intercon, i32 noundef 8) #15
  br label %630

627:                                              ; preds = %619
  %628 = call i32 @snd_soc_dapm_add_routes(ptr noundef %5, ptr noundef nonnull @wm8994_lateclk_intercon, i32 noundef 4) #15
  %629 = call i32 @snd_soc_dapm_add_routes(ptr noundef %5, ptr noundef nonnull @wm8958_intercon, i32 noundef 11) #15
  br label %630

630:                                              ; preds = %627, %623
  call void @wm8958_dsp2_init(ptr noundef %0) #15
  br label %717

631:                                              ; preds = %606
  %632 = call i32 @snd_soc_dapm_add_routes(ptr noundef %5, ptr noundef nonnull @wm8994_lateclk_intercon, i32 noundef 4) #15
  %633 = call i32 @snd_soc_dapm_add_routes(ptr noundef %5, ptr noundef nonnull @wm8958_intercon, i32 noundef 11) #15
  br label %717

634:                                              ; preds = %256, %241
  %635 = phi i32 [ %239, %241 ], [ %254, %256 ]
  %636 = getelementptr inbounds %struct.wm8994_priv, ptr %13, i32 0, i32 53
  %637 = load i8, ptr %636, align 4, !range !8
  %638 = icmp eq i8 %637, 0
  br i1 %638, label %647, label %639

639:                                              ; preds = %634
  %640 = load ptr, ptr %97, align 4
  %641 = getelementptr inbounds %struct.wm8994, ptr %640, i32 0, i32 10
  %642 = load ptr, ptr %641, align 4
  %643 = icmp eq ptr %642, null
  br i1 %643, label %647, label %644

644:                                              ; preds = %639
  %645 = call i32 @regmap_irq_get_virq(ptr noundef nonnull %642, i32 noundef 21) #15
  %646 = call ptr @free_irq(i32 noundef %645, ptr noundef %13) #15
  br label %647

647:                                              ; preds = %644, %639, %634
  %648 = load ptr, ptr %97, align 4
  %649 = getelementptr inbounds %struct.wm8994, ptr %648, i32 0, i32 10
  %650 = load ptr, ptr %649, align 4
  %651 = icmp eq ptr %650, null
  br i1 %651, label %669, label %652

652:                                              ; preds = %647
  %653 = call i32 @regmap_irq_get_virq(ptr noundef nonnull %650, i32 noundef 4) #15
  %654 = call ptr @free_irq(i32 noundef %653, ptr noundef %13) #15
  %655 = load ptr, ptr %97, align 4
  %656 = getelementptr inbounds %struct.wm8994, ptr %655, i32 0, i32 10
  %657 = load ptr, ptr %656, align 4
  %658 = icmp eq ptr %657, null
  br i1 %658, label %669, label %659

659:                                              ; preds = %652
  %660 = call i32 @regmap_irq_get_virq(ptr noundef nonnull %657, i32 noundef 3) #15
  %661 = call ptr @free_irq(i32 noundef %660, ptr noundef %13) #15
  %662 = load ptr, ptr %97, align 4
  %663 = getelementptr inbounds %struct.wm8994, ptr %662, i32 0, i32 10
  %664 = load ptr, ptr %663, align 4
  %665 = icmp eq ptr %664, null
  br i1 %665, label %669, label %666

666:                                              ; preds = %659
  %667 = call i32 @regmap_irq_get_virq(ptr noundef nonnull %664, i32 noundef 2) #15
  %668 = call ptr @free_irq(i32 noundef %667, ptr noundef %13) #15
  br label %669

669:                                              ; preds = %666, %659, %652, %647
  %670 = load i32, ptr %54, align 4
  %671 = icmp eq i32 %670, 0
  br i1 %671, label %674, label %672

672:                                              ; preds = %669
  %673 = call ptr @free_irq(i32 noundef %670, ptr noundef %13) #15
  br label %674

674:                                              ; preds = %672, %669
  %675 = load ptr, ptr %97, align 4
  %676 = getelementptr inbounds %struct.wm8994, ptr %675, i32 0, i32 10
  %677 = load ptr, ptr %676, align 4
  %678 = icmp eq ptr %677, null
  br i1 %678, label %717, label %679

679:                                              ; preds = %674
  %680 = call i32 @regmap_irq_get_virq(ptr noundef nonnull %677, i32 noundef 5) #15
  %681 = call ptr @free_irq(i32 noundef %680, ptr noundef %48) #15
  %682 = load ptr, ptr %97, align 4
  %683 = getelementptr inbounds %struct.wm8994, ptr %682, i32 0, i32 10
  %684 = load ptr, ptr %683, align 4
  %685 = icmp eq ptr %684, null
  br i1 %685, label %717, label %686

686:                                              ; preds = %679
  %687 = call i32 @regmap_irq_get_virq(ptr noundef nonnull %684, i32 noundef 6) #15
  %688 = call ptr @free_irq(i32 noundef %687, ptr noundef %50) #15
  %689 = load ptr, ptr %97, align 4
  %690 = getelementptr inbounds %struct.wm8994, ptr %689, i32 0, i32 10
  %691 = load ptr, ptr %690, align 4
  %692 = icmp eq ptr %691, null
  br i1 %692, label %717, label %693

693:                                              ; preds = %686
  %694 = call i32 @regmap_irq_get_virq(ptr noundef nonnull %691, i32 noundef 14) #15
  %695 = call ptr @free_irq(i32 noundef %694, ptr noundef %13) #15
  %696 = load ptr, ptr %97, align 4
  %697 = getelementptr inbounds %struct.wm8994, ptr %696, i32 0, i32 10
  %698 = load ptr, ptr %697, align 4
  %699 = icmp eq ptr %698, null
  br i1 %699, label %717, label %700

700:                                              ; preds = %693
  %701 = call i32 @regmap_irq_get_virq(ptr noundef nonnull %698, i32 noundef 12) #15
  %702 = call ptr @free_irq(i32 noundef %701, ptr noundef %0) #15
  %703 = load ptr, ptr %97, align 4
  %704 = getelementptr inbounds %struct.wm8994, ptr %703, i32 0, i32 10
  %705 = load ptr, ptr %704, align 4
  %706 = icmp eq ptr %705, null
  br i1 %706, label %717, label %707

707:                                              ; preds = %700
  %708 = call i32 @regmap_irq_get_virq(ptr noundef nonnull %705, i32 noundef 0) #15
  %709 = call ptr @free_irq(i32 noundef %708, ptr noundef %0) #15
  %710 = load ptr, ptr %97, align 4
  %711 = getelementptr inbounds %struct.wm8994, ptr %710, i32 0, i32 10
  %712 = load ptr, ptr %711, align 4
  %713 = icmp eq ptr %712, null
  br i1 %713, label %717, label %714

714:                                              ; preds = %707
  %715 = call i32 @regmap_irq_get_virq(ptr noundef nonnull %712, i32 noundef 15) #15
  %716 = call ptr @free_irq(i32 noundef %715, ptr noundef %0) #15
  br label %717

717:                                              ; preds = %714, %707, %700, %693, %686, %679, %674, %631, %630, %617, %614, %606
  %718 = phi i32 [ 0, %614 ], [ 0, %617 ], [ 0, %606 ], [ 0, %631 ], [ 0, %630 ], [ %635, %707 ], [ %635, %714 ], [ %635, %700 ], [ %635, %693 ], [ %635, %686 ], [ %635, %679 ], [ %635, %674 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  ret i32 %718
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @wm8994_component_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.wm8994_priv, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.wm8994, ptr %7, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %51, label %11

11:                                               ; preds = %1
  %12 = getelementptr %struct.wm8994_priv, ptr %5, i32 0, i32 11, i32 0
  %13 = tail call i32 @regmap_irq_get_virq(ptr noundef nonnull %9, i32 noundef 5) #15
  %14 = tail call ptr @free_irq(i32 noundef %13, ptr noundef %12) #15
  %15 = load ptr, ptr %6, align 4
  %16 = getelementptr inbounds %struct.wm8994, ptr %15, i32 0, i32 10
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %51, label %19

19:                                               ; preds = %11
  %20 = getelementptr %struct.wm8994_priv, ptr %5, i32 0, i32 11, i32 1
  %21 = tail call i32 @regmap_irq_get_virq(ptr noundef nonnull %17, i32 noundef 6) #15
  %22 = tail call ptr @free_irq(i32 noundef %21, ptr noundef %20) #15
  %23 = load ptr, ptr %6, align 4
  %24 = getelementptr inbounds %struct.wm8994, ptr %23, i32 0, i32 10
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %51, label %27

27:                                               ; preds = %19
  %28 = tail call i32 @regmap_irq_get_virq(ptr noundef nonnull %25, i32 noundef 14) #15
  %29 = tail call ptr @free_irq(i32 noundef %28, ptr noundef %5) #15
  %30 = load ptr, ptr %6, align 4
  %31 = getelementptr inbounds %struct.wm8994, ptr %30, i32 0, i32 10
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %51, label %34

34:                                               ; preds = %27
  %35 = tail call i32 @regmap_irq_get_virq(ptr noundef nonnull %32, i32 noundef 12) #15
  %36 = tail call ptr @free_irq(i32 noundef %35, ptr noundef %0) #15
  %37 = load ptr, ptr %6, align 4
  %38 = getelementptr inbounds %struct.wm8994, ptr %37, i32 0, i32 10
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %51, label %41

41:                                               ; preds = %34
  %42 = tail call i32 @regmap_irq_get_virq(ptr noundef nonnull %39, i32 noundef 0) #15
  %43 = tail call ptr @free_irq(i32 noundef %42, ptr noundef %0) #15
  %44 = load ptr, ptr %6, align 4
  %45 = getelementptr inbounds %struct.wm8994, ptr %44, i32 0, i32 10
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %41
  %49 = tail call i32 @regmap_irq_get_virq(ptr noundef nonnull %46, i32 noundef 15) #15
  %50 = tail call ptr @free_irq(i32 noundef %49, ptr noundef %0) #15
  br label %51

51:                                               ; preds = %48, %41, %34, %27, %19, %11, %1
  %52 = getelementptr inbounds %struct.wm8994_priv, ptr %5, i32 0, i32 53
  %53 = load i8, ptr %52, align 4, !range !8
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %51
  %56 = load ptr, ptr %6, align 4
  %57 = getelementptr inbounds %struct.wm8994, ptr %56, i32 0, i32 10
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = tail call i32 @regmap_irq_get_virq(ptr noundef nonnull %58, i32 noundef 21) #15
  %62 = tail call ptr @free_irq(i32 noundef %61, ptr noundef %5) #15
  br label %63

63:                                               ; preds = %60, %55, %51
  %64 = getelementptr inbounds %struct.wm8994, ptr %7, i32 0, i32 1
  %65 = load i32, ptr %64, align 4
  switch i32 %65, label %100 [
    i32 0, label %66
    i32 2, label %93
    i32 1, label %93
  ]

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.wm8994_priv, ptr %5, i32 0, i32 56
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %66
  %71 = tail call ptr @free_irq(i32 noundef %68, ptr noundef %5) #15
  br label %72

72:                                               ; preds = %70, %66
  %73 = load ptr, ptr %6, align 4
  %74 = getelementptr inbounds %struct.wm8994, ptr %73, i32 0, i32 10
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %100, label %77

77:                                               ; preds = %72
  %78 = tail call i32 @regmap_irq_get_virq(ptr noundef nonnull %75, i32 noundef 3) #15
  %79 = tail call ptr @free_irq(i32 noundef %78, ptr noundef %5) #15
  %80 = load ptr, ptr %6, align 4
  %81 = getelementptr inbounds %struct.wm8994, ptr %80, i32 0, i32 10
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %100, label %84

84:                                               ; preds = %77
  %85 = tail call i32 @regmap_irq_get_virq(ptr noundef nonnull %82, i32 noundef 2) #15
  %86 = tail call ptr @free_irq(i32 noundef %85, ptr noundef %5) #15
  %87 = load ptr, ptr %6, align 4
  %88 = getelementptr inbounds %struct.wm8994, ptr %87, i32 0, i32 10
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %100, label %91

91:                                               ; preds = %84
  %92 = tail call i32 @regmap_irq_get_virq(ptr noundef nonnull %89, i32 noundef 1) #15
  br label %97

93:                                               ; preds = %63, %63
  %94 = getelementptr inbounds %struct.wm8994_priv, ptr %5, i32 0, i32 56
  %95 = load i32, ptr %94, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %93, %91
  %98 = phi i32 [ %92, %91 ], [ %95, %93 ]
  %99 = tail call ptr @free_irq(i32 noundef %98, ptr noundef %5) #15
  br label %100

100:                                              ; preds = %97, %93, %84, %77, %72, %63
  %101 = getelementptr inbounds %struct.wm8994_priv, ptr %5, i32 0, i32 65
  %102 = load ptr, ptr %101, align 4
  tail call void @release_firmware(ptr noundef %102) #15
  %103 = getelementptr inbounds %struct.wm8994_priv, ptr %5, i32 0, i32 66
  %104 = load ptr, ptr %103, align 4
  tail call void @release_firmware(ptr noundef %104) #15
  %105 = getelementptr inbounds %struct.wm8994_priv, ptr %5, i32 0, i32 67
  %106 = load ptr, ptr %105, align 4
  tail call void @release_firmware(ptr noundef %106) #15
  %107 = getelementptr inbounds %struct.wm8994_priv, ptr %5, i32 0, i32 29
  %108 = load ptr, ptr %107, align 4
  tail call void @kfree(ptr noundef %108) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8994_component_suspend(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr %struct.wm8994_priv, ptr %5, i32 0, i32 10, i32 0
  %7 = getelementptr %struct.wm8994_priv, ptr %5, i32 0, i32 9, i32 0
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %6, ptr noundef align 4 dereferenceable(12) %7, i32 12, i1 false)
  %8 = tail call fastcc i32 @_wm8994_set_fll(ptr noundef %0, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.373, i32 noundef 1, i32 noundef %8) #16
  br label %12

12:                                               ; preds = %10, %1
  %13 = getelementptr %struct.wm8994_priv, ptr %5, i32 0, i32 10, i32 1
  %14 = getelementptr %struct.wm8994_priv, ptr %5, i32 0, i32 9, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %13, ptr noundef align 4 dereferenceable(12) %14, i32 12, i1 false)
  %15 = tail call fastcc i32 @_wm8994_set_fll(ptr noundef %0, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.373, i32 noundef 2, i32 noundef %15) #16
  br label %19

19:                                               ; preds = %17, %12
  %20 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 17
  %21 = tail call i32 @snd_soc_dapm_force_bias_level(ptr noundef %20, i32 noundef 0) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8994_component_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr %struct.wm8994_priv, ptr %5, i32 0, i32 10, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %1
  %10 = getelementptr %struct.wm8994_priv, ptr %5, i32 0, i32 10, i32 0
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr %struct.wm8994_priv, ptr %5, i32 0, i32 10, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = tail call fastcc i32 @_wm8994_set_fll(ptr noundef %0, i32 noundef 1, i32 noundef %11, i32 noundef %13, i32 noundef %7)
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.377, i32 noundef 1, i32 noundef %14) #16
  br label %18

18:                                               ; preds = %16, %9, %1
  %19 = getelementptr %struct.wm8994_priv, ptr %5, i32 0, i32 10, i32 1, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %18
  %23 = getelementptr %struct.wm8994_priv, ptr %5, i32 0, i32 10, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr %struct.wm8994_priv, ptr %5, i32 0, i32 10, i32 1, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = tail call fastcc i32 @_wm8994_set_fll(ptr noundef %0, i32 noundef 2, i32 noundef %24, i32 noundef %26, i32 noundef %20)
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %30, ptr noundef nonnull @.str.377, i32 noundef 2, i32 noundef %27) #16
  br label %31

31:                                               ; preds = %29, %22, %18
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8994_set_bias_level(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.wm8994_priv, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  tail call void @wm_hubs_set_bias_level(ptr noundef %0, i32 noundef %1) #15
  switch i32 %1, label %81 [
    i32 0, label %75
    i32 2, label %9
    i32 1, label %46
  ]

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.wm8994, ptr %8, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, -1
  %13 = icmp ult i32 %12, 2
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 61, i32 noundef 16, i32 noundef 0) #15
  %16 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 62, i32 noundef 16, i32 noundef 0) #15
  br label %17

17:                                               ; preds = %14, %9
  %18 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 17
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %81

21:                                               ; preds = %17
  %22 = load ptr, ptr %3, align 4
  %23 = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 8
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.wm8994_priv, ptr %24, i32 0, i32 44
  tail call void @mutex_lock(ptr noundef %25) #15
  %26 = getelementptr inbounds %struct.wm8994_priv, ptr %24, i32 0, i32 16
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, 1
  store i32 %28, ptr %26, align 4
  %29 = load ptr, ptr %3, align 4
  %30 = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 8
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.wm8994_priv, ptr %31, i32 0, i32 53
  %33 = load i8, ptr %32, align 4, !range !8
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %21
  %36 = getelementptr inbounds %struct.wm8994_priv, ptr %31, i32 0, i32 45
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.wm8994_priv, ptr %31, i32 0, i32 54
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 384
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  store i32 384, ptr %40, align 4
  %44 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 57, i32 noundef 384, i32 noundef 384) #15
  br label %45

45:                                               ; preds = %43, %39, %35, %21
  tail call void @mutex_unlock(ptr noundef %25) #15
  br label %81

46:                                               ; preds = %2
  %47 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 17
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.wm8994, ptr %8, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.wm8994, ptr %8, i32 0, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 77, i32 noundef 32768, i32 noundef 32768) #15
  br label %60

60:                                               ; preds = %58, %54, %50
  %61 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 56, i32 noundef 48, i32 noundef 48) #15
  %62 = load i32, ptr %47, align 4
  br label %63

63:                                               ; preds = %60, %46
  %64 = phi i32 [ %62, %60 ], [ %48, %46 ]
  %65 = icmp eq i32 %64, 2
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  tail call fastcc void @active_dereference(ptr noundef %0)
  br label %67

67:                                               ; preds = %66, %63
  %68 = getelementptr inbounds %struct.wm8994, ptr %8, i32 0, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = add i32 %69, -1
  %71 = icmp ult i32 %70, 2
  br i1 %71, label %72, label %81

72:                                               ; preds = %67
  %73 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 61, i32 noundef 16, i32 noundef 16) #15
  %74 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 62, i32 noundef 16, i32 noundef 16) #15
  br label %81

75:                                               ; preds = %2
  %76 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 17
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.wm8994_priv, ptr %6, i32 0, i32 64
  store ptr null, ptr %80, align 4
  br label %81

81:                                               ; preds = %79, %75, %72, %67, %45, %17, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_component_init_regmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @wm1811_jackdet_bootstrap(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -736
  %3 = tail call i32 @wm1811_jackdet_irq(i32 noundef 0, ptr noundef %2)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @wm8958_open_circuit_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -80
  tail call void @mutex_lock(ptr noundef %2) #15
  %3 = getelementptr i8, ptr %0, i32 -560
  %4 = load ptr, ptr %3, align 4
  tail call fastcc void @wm1811_micd_stop(ptr noundef %4)
  %5 = getelementptr i8, ptr %0, i32 91
  store i8 0, ptr %5, align 1
  %6 = getelementptr i8, ptr %0, i32 90
  store i8 1, ptr %6, align 2
  %7 = load ptr, ptr %3, align 4
  tail call fastcc void @wm8958_micd_set_rate(ptr noundef %7)
  %8 = getelementptr i8, ptr %0, i32 -60
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %0, i32 92
  %11 = load i32, ptr %10, align 4
  %12 = or i32 %11, 3
  tail call void @snd_soc_jack_report(ptr noundef %9, i32 noundef 0, i32 noundef %12) #15
  tail call void @mutex_unlock(ptr noundef %2) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @wm8994_mic_work(ptr nocapture noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr i8, ptr %0, i32 -512
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.wm8994, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.wm8994, ptr %4, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  store i32 0, ptr %2, align 4, !annotation !10
  %9 = tail call i32 @__pm_runtime_resume(ptr noundef %8, i32 noundef 4) #15
  %10 = call i32 @regmap_read(ptr noundef %6, i32 noundef 1842, ptr noundef nonnull %2) #15
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.36, i32 noundef %10) #16
  br label %70

13:                                               ; preds = %1
  %14 = load i32, ptr %2, align 4
  %15 = and i32 %14, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %13
  %18 = getelementptr i8, ptr %0, i32 -12
  %19 = load i8, ptr %18, align 4, !range !8
  %20 = icmp eq i8 %19, 0
  %21 = select i1 %20, i32 0, i32 3
  %22 = and i32 %14, 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %34, label %27

24:                                               ; preds = %13
  %25 = and i32 %14, 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %24, %17
  %28 = phi i32 [ 0, %24 ], [ %21, %17 ]
  %29 = getelementptr i8, ptr %0, i32 -12
  %30 = load i8, ptr %29, align 4, !range !8
  %31 = icmp eq i8 %30, 0
  %32 = or i32 %28, 16384
  %33 = select i1 %31, i32 %32, i32 1
  br label %36

34:                                               ; preds = %17
  br i1 %20, label %35, label %36

35:                                               ; preds = %34, %24
  br label %36

36:                                               ; preds = %35, %34, %27
  %37 = phi i8 [ 1, %35 ], [ 0, %27 ], [ 0, %34 ]
  %38 = phi i32 [ 0, %35 ], [ %33, %27 ], [ %21, %34 ]
  %39 = getelementptr i8, ptr %0, i32 -12
  store i8 %37, ptr %39, align 4
  %40 = getelementptr i8, ptr %0, i32 -16
  %41 = load ptr, ptr %40, align 4
  call void @snd_soc_jack_report(ptr noundef %41, i32 noundef %38, i32 noundef 16387) #15
  %42 = load i32, ptr %2, align 4
  %43 = and i32 %42, 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %36
  %46 = getelementptr i8, ptr %0, i32 -4
  %47 = load i8, ptr %46, align 4, !range !8
  %48 = icmp eq i8 %47, 0
  %49 = select i1 %48, i32 0, i32 3
  %50 = and i32 %42, 16
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %62, label %55

52:                                               ; preds = %36
  %53 = and i32 %42, 16
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %52, %45
  %56 = phi i32 [ 0, %52 ], [ %49, %45 ]
  %57 = getelementptr i8, ptr %0, i32 -4
  %58 = load i8, ptr %57, align 4, !range !8
  %59 = icmp eq i8 %58, 0
  %60 = or i32 %56, 16384
  %61 = select i1 %59, i32 %60, i32 1
  br label %64

62:                                               ; preds = %45
  br i1 %48, label %63, label %64

63:                                               ; preds = %62, %52
  br label %64

64:                                               ; preds = %63, %62, %55
  %65 = phi i8 [ 1, %63 ], [ 0, %55 ], [ 0, %62 ]
  %66 = phi i32 [ 0, %63 ], [ %61, %55 ], [ %49, %62 ]
  %67 = getelementptr i8, ptr %0, i32 -4
  store i8 %65, ptr %67, align 4
  %68 = getelementptr i8, ptr %0, i32 -8
  %69 = load ptr, ptr %68, align 4
  call void @snd_soc_jack_report(ptr noundef %69, i32 noundef %66, i32 noundef 16387) #15
  br label %70

70:                                               ; preds = %64, %12
  %71 = call i32 @__pm_runtime_idle(ptr noundef %8, i32 noundef 5) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @wm1811_mic_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -512
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 -516
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_soc_component, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #15
  %9 = getelementptr inbounds %struct.wm8994_pdata, ptr %3, i32 0, i32 25
  %10 = load i8, ptr %9, align 4
  %11 = and i8 %10, 64
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.snd_soc_component, ptr %5, i32 0, i32 17
  %15 = tail call i32 @snd_soc_dapm_force_enable_pin(ptr noundef %14, ptr noundef nonnull @.str.10) #15
  %16 = tail call i32 @snd_soc_dapm_sync(ptr noundef %14) #15
  br label %17

17:                                               ; preds = %13, %1
  %18 = getelementptr i8, ptr %0, i32 -36
  tail call void @mutex_lock(ptr noundef %18) #15
  %19 = getelementptr i8, ptr %0, i32 196
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = getelementptr i8, ptr %0, i32 200
  %24 = load ptr, ptr %23, align 4
  tail call void %20(ptr noundef %24) #15
  br label %49

25:                                               ; preds = %17
  %26 = getelementptr i8, ptr %0, i32 134
  store i8 1, ptr %26, align 2
  %27 = load ptr, ptr %6, align 4
  %28 = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 8
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.wm8994_priv, ptr %29, i32 0, i32 53
  %31 = load i8, ptr %30, align 4, !range !8
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %47, label %33

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.wm8994_priv, ptr %29, i32 0, i32 45
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %47, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.wm8994_priv, ptr %29, i32 0, i32 16
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, i32 128, i32 384
  %42 = getelementptr inbounds %struct.wm8994_priv, ptr %29, i32 0, i32 54
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, %41
  br i1 %44, label %47, label %45

45:                                               ; preds = %37
  store i32 %41, ptr %42, align 4
  %46 = tail call i32 @snd_soc_component_update_bits(ptr noundef %5, i32 noundef 57, i32 noundef 384, i32 noundef 384) #15
  br label %47

47:                                               ; preds = %45, %37, %33, %25
  %48 = tail call i32 @snd_soc_component_update_bits(ptr noundef %5, i32 noundef 208, i32 noundef 1, i32 noundef 1) #15
  br label %49

49:                                               ; preds = %47, %22
  tail call void @mutex_unlock(ptr noundef %18) #15
  %50 = load ptr, ptr %6, align 4
  %51 = tail call i32 @__pm_runtime_idle(ptr noundef %50, i32 noundef 5) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @wm8958_mic_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -604
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_soc_component, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #15
  %7 = getelementptr i8, ptr %0, i32 -124
  tail call void @mutex_lock(ptr noundef %7) #15
  %8 = getelementptr i8, ptr %0, i32 116
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %0, i32 120
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %0, i32 44
  %13 = load i16, ptr %12, align 4
  tail call void %9(ptr noundef %11, i16 noundef zeroext %13) #15
  tail call void @mutex_unlock(ptr noundef %7) #15
  %14 = load ptr, ptr %4, align 4
  %15 = tail call i32 @__pm_runtime_idle(ptr noundef %14, i32 noundef 5) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8994_fifo_error(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.38) #16
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8994_temp_warn(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.39) #16
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8994_temp_shut(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %4, ptr noundef nonnull @.str.40) #16
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8994_mic_irq(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.wm_hubs_data, ptr %1, i32 0, i32 20
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  tail call void @pm_wakeup_dev_event(ptr noundef %6, i32 noundef 300, i1 noundef zeroext false) #15
  %7 = load ptr, ptr @system_power_efficient_wq, align 4
  %8 = getelementptr inbounds %struct.wm8994_priv, ptr %1, i32 0, i32 46
  %9 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %7, ptr noundef %8, i32 noundef 25) #15
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8958_mic_irq(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.wm_hubs_data, ptr %1, i32 0, i32 20
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @snd_soc_component_read(ptr noundef %4, i32 noundef 208) #15
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %103, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.wm8994_priv, ptr %1, i32 0, i32 48
  %10 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %9) #15
  %11 = getelementptr inbounds %struct.wm8994_priv, ptr %1, i32 0, i32 47
  %12 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %11) #15
  %13 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @__pm_runtime_resume(ptr noundef %14, i32 noundef 4) #15
  br label %16

16:                                               ; preds = %32, %8
  %17 = phi i32 [ 10, %8 ], [ %33, %32 ]
  %18 = tail call i32 @snd_soc_component_read(ptr noundef %4, i32 noundef 210) #15
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.41, i32 noundef %18) #16
  br label %99

22:                                               ; preds = %16
  %23 = and i32 %18, 2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %99, label %25

25:                                               ; preds = %22
  %26 = and i32 %18, 1
  %27 = icmp eq i32 %26, 0
  %28 = xor i1 %27, true
  %29 = and i32 %18, 2044
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %28, i1 %30, i1 false
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  tail call void @msleep(i32 noundef 1) #15
  %33 = add nsw i32 %17, -1
  %34 = icmp eq i32 %17, 0
  br i1 %34, label %39, label %16

35:                                               ; preds = %25
  %36 = icmp eq i32 %17, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %35
  %38 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %38, ptr noundef nonnull @.str.42) #16
  br label %39

39:                                               ; preds = %37, %35, %32
  %40 = getelementptr inbounds %struct.wm8994_priv, ptr %1, i32 0, i32 53
  %41 = load i8, ptr %40, align 4, !range !8
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %39
  %44 = tail call i32 @snd_soc_component_read(ptr noundef %4, i32 noundef 1797) #15
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.43, i32 noundef %44) #16
  br label %59

48:                                               ; preds = %43
  %49 = and i32 %44, 64
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %99, label %59

51:                                               ; preds = %39
  br i1 %27, label %52, label %59

52:                                               ; preds = %51
  %53 = getelementptr inbounds %struct.wm8994_priv, ptr %1, i32 0, i32 45
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.wm8994_priv, ptr %1, i32 0, i32 52
  %56 = load i32, ptr %55, align 4
  %57 = or i32 %56, 11
  tail call void @snd_soc_jack_report(ptr noundef %54, i32 noundef 0, i32 noundef %57) #15
  %58 = getelementptr inbounds %struct.wm8994_priv, ptr %1, i32 0, i32 50
  store i8 1, ptr %58, align 2
  br label %99

59:                                               ; preds = %51, %48, %46
  %60 = trunc i32 %18 to i16
  %61 = getelementptr inbounds %struct.wm8994_priv, ptr %1, i32 0, i32 49
  store i16 %60, ptr %61, align 4
  %62 = getelementptr inbounds %struct.wm8994_priv, ptr %1, i32 0, i32 50
  %63 = load i8, ptr %62, align 2, !range !8
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %59
  %66 = load ptr, ptr @system_power_efficient_wq, align 4
  %67 = getelementptr inbounds %struct.wm8994_priv, ptr %1, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.wm8994_pdata, ptr %68, i32 0, i32 23
  %70 = load i32, ptr %69, align 4
  %71 = tail call i32 @__msecs_to_jiffies(i32 noundef %70) #15
  %72 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %66, ptr noundef %9, i32 noundef %71) #15
  br label %99

73:                                               ; preds = %59
  %74 = load ptr, ptr %13, align 4
  %75 = getelementptr inbounds %struct.device, ptr %74, i32 0, i32 8
  %76 = load ptr, ptr %75, align 8
  %77 = and i32 %18, 65535
  %78 = shl nuw nsw i32 %77, 12
  %79 = and i32 %78, 16384
  %80 = shl nuw nsw i32 %77, 10
  %81 = and i32 %80, 8192
  %82 = or i32 %81, %79
  %83 = shl nuw nsw i32 %77, 8
  %84 = and i32 %83, 4096
  %85 = or i32 %82, %84
  %86 = shl nuw nsw i32 %77, 6
  %87 = and i32 %86, 2048
  %88 = or i32 %85, %87
  %89 = shl nuw nsw i32 %77, 4
  %90 = and i32 %89, 1024
  %91 = or i32 %88, %90
  %92 = shl nuw nsw i32 %77, 2
  %93 = and i32 %92, 512
  %94 = or i32 %91, %93
  %95 = getelementptr inbounds %struct.wm8994_priv, ptr %76, i32 0, i32 45
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.wm8994_priv, ptr %76, i32 0, i32 52
  %98 = load i32, ptr %97, align 4
  tail call void @snd_soc_jack_report(ptr noundef %96, i32 noundef %94, i32 noundef %98) #15
  br label %99

99:                                               ; preds = %73, %65, %52, %48, %22, %20
  %100 = phi i32 [ 0, %20 ], [ 1, %65 ], [ 1, %73 ], [ 1, %48 ], [ 1, %52 ], [ 1, %22 ]
  %101 = load ptr, ptr %13, align 4
  %102 = tail call i32 @__pm_runtime_idle(ptr noundef %101, i32 noundef 5) #15
  br label %103

103:                                              ; preds = %99, %2
  %104 = phi i32 [ 1, %2 ], [ %100, %99 ]
  ret i32 %104
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm1811_jackdet_irq(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.wm8994_priv, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.wm_hubs_data, ptr %1, i32 0, i32 20
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_soc_component, ptr %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.snd_soc_component, ptr %6, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #15
  %11 = getelementptr inbounds %struct.wm8994_priv, ptr %1, i32 0, i32 48
  %12 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %11) #15
  %13 = getelementptr inbounds %struct.wm8994_priv, ptr %1, i32 0, i32 44
  tail call void @mutex_lock(ptr noundef %13) #15
  %14 = tail call i32 @snd_soc_component_read(ptr noundef %6, i32 noundef 1797) #15
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.43, i32 noundef %14) #16
  tail call void @mutex_unlock(ptr noundef %13) #15
  br label %78

18:                                               ; preds = %2
  %19 = and i32 %14, 64
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %18
  tail call fastcc void @wm8958_micd_set_rate(ptr noundef %6)
  %22 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 62, i32 noundef 1, i32 noundef 0) #15
  %23 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 1797, i32 noundef 256, i32 noundef 0) #15
  %24 = load ptr, ptr @system_power_efficient_wq, align 4
  %25 = getelementptr inbounds %struct.wm8994_priv, ptr %1, i32 0, i32 46
  %26 = getelementptr inbounds %struct.wm8994_pdata, ptr %4, i32 0, i32 22
  %27 = load i32, ptr %26, align 4
  %28 = tail call i32 @__msecs_to_jiffies(i32 noundef %27) #15
  %29 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %24, ptr noundef %25, i32 noundef %28) #15
  br label %58

30:                                               ; preds = %18
  %31 = getelementptr inbounds %struct.wm8994_priv, ptr %1, i32 0, i32 46
  %32 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %31) #15
  %33 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 62, i32 noundef 1, i32 noundef 1) #15
  %34 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 1797, i32 noundef 256, i32 noundef 256) #15
  %35 = getelementptr inbounds %struct.wm8994_priv, ptr %1, i32 0, i32 50
  store i8 0, ptr %35, align 2
  %36 = getelementptr inbounds %struct.wm8994_priv, ptr %1, i32 0, i32 51
  store i8 0, ptr %36, align 1
  %37 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 208, i32 noundef 1, i32 noundef 0) #15
  %38 = load ptr, ptr %8, align 4
  %39 = getelementptr inbounds %struct.device, ptr %38, i32 0, i32 8
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.wm8994_priv, ptr %40, i32 0, i32 53
  %42 = load i8, ptr %41, align 4, !range !8
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %58, label %44

44:                                               ; preds = %30
  %45 = getelementptr inbounds %struct.wm8994_priv, ptr %40, i32 0, i32 45
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %58, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.wm8994_priv, ptr %40, i32 0, i32 16
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  %52 = select i1 %51, i32 256, i32 384
  %53 = getelementptr inbounds %struct.wm8994_priv, ptr %40, i32 0, i32 54
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, %52
  br i1 %55, label %58, label %56

56:                                               ; preds = %48
  store i32 %52, ptr %53, align 4
  %57 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 57, i32 noundef 384, i32 noundef 384) #15
  br label %58

58:                                               ; preds = %56, %48, %44, %30, %21
  tail call void @mutex_unlock(ptr noundef %13) #15
  %59 = getelementptr inbounds %struct.wm8994_pdata, ptr %4, i32 0, i32 25
  %60 = load i8, ptr %59, align 4
  %61 = and i8 %60, 64
  %62 = icmp eq i8 %61, 0
  %63 = xor i1 %20, true
  %64 = select i1 %62, i1 true, i1 %63
  br i1 %64, label %67, label %65

65:                                               ; preds = %58
  %66 = tail call i32 @snd_soc_dapm_disable_pin(ptr noundef %7, ptr noundef nonnull @.str.10) #15
  br label %67

67:                                               ; preds = %65, %58
  %68 = getelementptr inbounds %struct.wm8994_priv, ptr %1, i32 0, i32 45
  %69 = load ptr, ptr %68, align 4
  br i1 %20, label %71, label %70

70:                                               ; preds = %67
  tail call void @snd_soc_jack_report(ptr noundef %69, i32 noundef 8, i32 noundef 8) #15
  br label %75

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.wm8994_priv, ptr %1, i32 0, i32 52
  %73 = load i32, ptr %72, align 4
  %74 = or i32 %73, 11
  tail call void @snd_soc_jack_report(ptr noundef %69, i32 noundef 0, i32 noundef %74) #15
  br label %75

75:                                               ; preds = %71, %70
  %76 = getelementptr inbounds %struct.wm8994_priv, ptr %1, i32 0, i32 45
  %77 = load ptr, ptr %76, align 4
  tail call void @snd_soc_jack_report(ptr noundef %77, i32 noundef 0, i32 noundef 0) #15
  br label %78

78:                                               ; preds = %75, %16
  %79 = phi i32 [ 0, %16 ], [ 1, %75 ]
  %80 = load ptr, ptr %8, align 4
  %81 = tail call i32 @__pm_runtime_idle(ptr noundef %80, i32 noundef 5) #15
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8994_fll_locked_irq(i32 noundef %0, ptr noundef %1) #0 {
  tail call void @complete(ptr noundef %1) #15
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @wm8994_check_class_w_digital(ptr noundef %0) #0 {
  %2 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 1537) #15
  switch i32 %2, label %11 [
    i32 4, label %5
    i32 2, label %3
    i32 1, label %4
  ]

3:                                                ; preds = %1
  br label %5

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %4, %3, %1
  %6 = phi i32 [ 0, %4 ], [ 256, %3 ], [ 512, %1 ]
  %7 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 1538) #15
  %8 = icmp eq i32 %7, %2
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 81, i32 noundef 768, i32 noundef %6) #15
  br label %11

11:                                               ; preds = %9, %5, %1
  %12 = phi i1 [ true, %9 ], [ false, %1 ], [ false, %5 ]
  ret i1 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wm_hubs_update_class_w(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm_hubs_add_analogue_controls(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_add_component_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_new_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm_hubs_add_analogue_routes(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm_hubs_dcs_done(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_add_routes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wm8958_dsp2_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_irq_get_virq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_crit(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_wakeup_dev_event(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm_hubs_handle_analogue_pdata(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @wm8994_get_drc_enum(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 1, i32 4
  %10 = tail call i32 @strcmp(ptr noundef %9, ptr noundef nonnull dereferenceable(14) @.str.44) #15
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = tail call i32 @strcmp(ptr noundef %9, ptr noundef nonnull dereferenceable(14) @.str.45) #15
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = tail call i32 @strcmp(ptr noundef %9, ptr noundef nonnull dereferenceable(13) @.str.46) #15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %15, %12, %2
  %19 = phi i32 [ 1, %12 ], [ 0, %2 ], [ 2, %15 ]
  %20 = getelementptr %struct.wm8994_priv, ptr %8, i32 0, i32 26, i32 %19
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %21, ptr %22, align 8
  br label %23

23:                                               ; preds = %18, %15
  %24 = phi i32 [ 0, %18 ], [ -22, %15 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8994_put_drc_enum(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.wm8994_priv, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 1, i32 4
  %12 = tail call i32 @strcmp(ptr noundef %11, ptr noundef nonnull dereferenceable(14) @.str.44) #15
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = tail call i32 @strcmp(ptr noundef %11, ptr noundef nonnull dereferenceable(14) @.str.45) #15
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = tail call i32 @strcmp(ptr noundef %11, ptr noundef nonnull dereferenceable(13) @.str.46) #15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %17, %14, %2
  %21 = phi i32 [ 1, %14 ], [ 0, %2 ], [ 2, %17 ]
  %22 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %23 = load i32, ptr %22, align 8
  %24 = getelementptr inbounds %struct.wm8994_pdata, ptr %10, i32 0, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = getelementptr %struct.wm8994_priv, ptr %8, i32 0, i32 26, i32 %21
  store i32 %23, ptr %28, align 4
  tail call fastcc void @wm8994_set_drc(ptr noundef %4, i32 noundef %21)
  br label %29

29:                                               ; preds = %27, %20, %17
  %30 = phi i32 [ 0, %27 ], [ -22, %20 ], [ -22, %17 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @wm8994_set_drc(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.wm8994_priv, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr [3 x i32], ptr @wm8994_drc_base, i32 0, i32 %1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr %struct.wm8994_priv, ptr %6, i32 0, i32 26, i32 %1
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef %10) #15
  %14 = getelementptr inbounds %struct.wm8994_pdata, ptr %8, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr %struct.wm8994_drc_cfg, ptr %15, i32 %12, i32 1, i32 0
  %17 = load i16, ptr %16, align 2
  %18 = zext i16 %17 to i32
  %19 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef %10, i32 noundef 65535, i32 noundef %18) #15
  %20 = add i32 %10, 1
  %21 = load ptr, ptr %14, align 4
  %22 = getelementptr %struct.wm8994_drc_cfg, ptr %21, i32 %12, i32 1, i32 1
  %23 = load i16, ptr %22, align 2
  %24 = zext i16 %23 to i32
  %25 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef %20, i32 noundef 65535, i32 noundef %24) #15
  %26 = add i32 %10, 2
  %27 = load ptr, ptr %14, align 4
  %28 = getelementptr %struct.wm8994_drc_cfg, ptr %27, i32 %12, i32 1, i32 2
  %29 = load i16, ptr %28, align 2
  %30 = zext i16 %29 to i32
  %31 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef %26, i32 noundef 65535, i32 noundef %30) #15
  %32 = add i32 %10, 3
  %33 = load ptr, ptr %14, align 4
  %34 = getelementptr %struct.wm8994_drc_cfg, ptr %33, i32 %12, i32 1, i32 3
  %35 = load i16, ptr %34, align 2
  %36 = zext i16 %35 to i32
  %37 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef %32, i32 noundef 65535, i32 noundef %36) #15
  %38 = add i32 %10, 4
  %39 = load ptr, ptr %14, align 4
  %40 = getelementptr %struct.wm8994_drc_cfg, ptr %39, i32 %12, i32 1, i32 4
  %41 = load i16, ptr %40, align 2
  %42 = zext i16 %41 to i32
  %43 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef %38, i32 noundef 65535, i32 noundef %42) #15
  %44 = and i32 %13, 7
  %45 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef %10, i32 noundef 7, i32 noundef %44) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_bytes_info(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_bytes_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_bytes_put(ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @wm8994_get_retune_mobile_enum(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 1, i32 4
  %10 = tail call i32 @strcmp(ptr noundef %9, ptr noundef nonnull dereferenceable(15) @.str.53) #15
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = tail call i32 @strcmp(ptr noundef %9, ptr noundef nonnull dereferenceable(15) @.str.54) #15
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = tail call i32 @strcmp(ptr noundef %9, ptr noundef nonnull dereferenceable(13) @.str.55) #15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %15, %12, %2
  %19 = phi i32 [ 1, %12 ], [ 0, %2 ], [ 2, %15 ]
  %20 = getelementptr %struct.wm8994_priv, ptr %8, i32 0, i32 30, i32 %19
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %21, ptr %22, align 8
  br label %23

23:                                               ; preds = %18, %15
  %24 = phi i32 [ 0, %18 ], [ -22, %15 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8994_put_retune_mobile_enum(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.wm8994_priv, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 1, i32 4
  %12 = tail call i32 @strcmp(ptr noundef %11, ptr noundef nonnull dereferenceable(15) @.str.53) #15
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = tail call i32 @strcmp(ptr noundef %11, ptr noundef nonnull dereferenceable(15) @.str.54) #15
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = tail call i32 @strcmp(ptr noundef %11, ptr noundef nonnull dereferenceable(13) @.str.55) #15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %17, %14, %2
  %21 = phi i32 [ 1, %14 ], [ 0, %2 ], [ 2, %17 ]
  %22 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %23 = load i32, ptr %22, align 8
  %24 = getelementptr inbounds %struct.wm8994_pdata, ptr %10, i32 0, i32 7
  %25 = load i32, ptr %24, align 4
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = getelementptr %struct.wm8994_priv, ptr %8, i32 0, i32 30, i32 %21
  store i32 %23, ptr %28, align 4
  tail call fastcc void @wm8994_set_retune_mobile(ptr noundef %4, i32 noundef %21)
  br label %29

29:                                               ; preds = %27, %20, %17
  %30 = phi i32 [ 0, %27 ], [ -22, %20 ], [ -22, %17 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @wm8994_set_retune_mobile(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.wm8994_priv, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr [3 x i32], ptr @wm8994_retune_mobile_base, i32 0, i32 %1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq ptr %8, null
  br i1 %11, label %73, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.wm8994_priv, ptr %6, i32 0, i32 28
  %14 = load i32, ptr %13, align 4
  %15 = icmp ne i32 %14, 0
  %16 = icmp ult i32 %1, 3
  %17 = and i1 %15, %16
  br i1 %17, label %18, label %73

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.wm8994_pdata, ptr %8, i32 0, i32 7
  %20 = load i32, ptr %19, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %56

22:                                               ; preds = %18
  %23 = getelementptr inbounds [3 x i32], ptr @switch.table.wm8994_set_retune_mobile, i32 0, i32 %1
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr %struct.wm8994_priv, ptr %6, i32 0, i32 30, i32 %1
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.wm8994_pdata, ptr %8, i32 0, i32 8
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.wm8994_priv, ptr %6, i32 0, i32 29
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr ptr, ptr %30, i32 %26
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr %struct.wm8994_priv, ptr %6, i32 0, i32 18, i32 %24
  br label %34

34:                                               ; preds = %51, %22
  %35 = phi i32 [ 0, %22 ], [ %54, %51 ]
  %36 = phi i32 [ 2147483647, %22 ], [ %53, %51 ]
  %37 = phi i32 [ 0, %22 ], [ %52, %51 ]
  %38 = getelementptr %struct.wm8994_retune_mobile_cfg, ptr %28, i32 %35
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 @strcmp(ptr noundef %39, ptr noundef %32)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %34
  %43 = getelementptr %struct.wm8994_retune_mobile_cfg, ptr %28, i32 %35, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = load i32, ptr %33, align 4
  %46 = sub i32 %44, %45
  %47 = tail call i32 @llvm.abs.i32(i32 %46, i1 false)
  %48 = icmp slt i32 %47, %36
  %49 = select i1 %48, i32 %35, i32 %37
  %50 = tail call i32 @llvm.smin.i32(i32 %47, i32 %36)
  br label %51

51:                                               ; preds = %42, %34
  %52 = phi i32 [ %37, %34 ], [ %49, %42 ]
  %53 = phi i32 [ %36, %34 ], [ %50, %42 ]
  %54 = add nuw nsw i32 %35, 1
  %55 = icmp eq i32 %54, %20
  br i1 %55, label %56, label %34

56:                                               ; preds = %51, %18
  %57 = phi i32 [ 0, %18 ], [ %52, %51 ]
  %58 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef %10) #15
  %59 = getelementptr inbounds %struct.wm8994_pdata, ptr %8, i32 0, i32 8
  br label %60

60:                                               ; preds = %60, %56
  %61 = phi i32 [ 0, %56 ], [ %68, %60 ]
  %62 = add i32 %61, %10
  %63 = load ptr, ptr %59, align 4
  %64 = getelementptr %struct.wm8994_retune_mobile_cfg, ptr %63, i32 %57, i32 2, i32 %61
  %65 = load i16, ptr %64, align 2
  %66 = zext i16 %65 to i32
  %67 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef %62, i32 noundef 65535, i32 noundef %66) #15
  %68 = add nuw nsw i32 %61, 1
  %69 = icmp eq i32 %68, 20
  br i1 %69, label %70, label %60

70:                                               ; preds = %60
  %71 = and i32 %58, 1
  %72 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef %10, i32 noundef 1, i32 noundef %71) #15
  br label %73

73:                                               ; preds = %70, %12, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8994_put_drc_sw(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.soc_mixer_control, ptr %5, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.soc_mixer_control, ptr %5, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @snd_soc_component_read(ptr noundef %7, i32 noundef %11) #15
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %2
  %15 = icmp eq i32 %9, 2
  %16 = select i1 %15, i32 3, i32 4
  %17 = and i32 %12, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = tail call i32 @snd_soc_put_volsw(ptr noundef %0, ptr noundef %1) #15
  br label %21

21:                                               ; preds = %19, %14, %2
  %22 = phi i32 [ %20, %19 ], [ %12, %2 ], [ -22, %14 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @micbias_ev(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call i32 @late_enable_ev(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vmid_event(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -104
  switch i32 %2, label %9 [
    i32 1, label %7
    i32 8, label %8
  ]

7:                                                ; preds = %3
  tail call fastcc void @vmid_reference(ptr noundef %6)
  br label %9

8:                                                ; preds = %3
  tail call fastcc void @vmid_dereference(ptr noundef %6)
  br label %9

9:                                                ; preds = %8, %7, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_sys_event(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -104
  %7 = getelementptr i8, ptr %5, i32 -92
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  switch i32 %2, label %25 [
    i32 1, label %11
    i32 2, label %12
    i32 8, label %24
  ]

11:                                               ; preds = %3
  tail call fastcc void @configure_clock(ptr noundef %6)
  br label %25

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.wm8994_priv, ptr %10, i32 0, i32 53
  %14 = load i8, ptr %13, align 4, !range !8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.wm8994_priv, ptr %10, i32 0, i32 14
  %18 = load i8, ptr %17, align 2, !range !8
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load ptr, ptr @system_power_efficient_wq, align 4
  %22 = getelementptr inbounds %struct.wm8994_priv, ptr %10, i32 0, i32 55
  %23 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %21, ptr noundef %22, i32 noundef 100) #15
  store i8 1, ptr %17, align 2
  br label %25

24:                                               ; preds = %3
  tail call fastcc void @configure_clock(ptr noundef %6)
  br label %25

25:                                               ; preds = %24, %20, %16, %12, %11, %3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm8958_aif_ev(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @post_ev(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #11 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @late_enable_ev(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -104
  %7 = icmp eq i32 %2, 1
  br i1 %7, label %8, label %35

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %5, i32 -92
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 8
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.wm8994_priv, ptr %12, i32 0, i32 61
  %14 = load i8, ptr %13, align 4
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %8
  %18 = tail call i32 @aif1clk_ev(ptr noundef %0, ptr noundef %1, i32 noundef 1)
  %19 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 512, i32 noundef 1, i32 noundef 1) #15
  %20 = load ptr, ptr %4, align 4
  %21 = getelementptr i8, ptr %20, i32 -104
  tail call fastcc void @wm8994_update_vu_bits(ptr noundef %21) #15
  %22 = load i8, ptr %13, align 4
  %23 = and i8 %22, -2
  store i8 %23, ptr %13, align 4
  br label %24

24:                                               ; preds = %17, %8
  %25 = phi i8 [ %23, %17 ], [ %14, %8 ]
  %26 = and i8 %25, 2
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %24
  %29 = tail call i32 @aif2clk_ev(ptr noundef %0, ptr noundef %1, i32 noundef 1)
  %30 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 516, i32 noundef 1, i32 noundef 1) #15
  %31 = load ptr, ptr %4, align 4
  %32 = getelementptr i8, ptr %31, i32 -104
  tail call fastcc void @wm8994_update_vu_bits(ptr noundef %32) #15
  %33 = load i8, ptr %13, align 4
  %34 = and i8 %33, -3
  store i8 %34, ptr %13, align 4
  br label %35

35:                                               ; preds = %28, %24, %3
  %36 = tail call i32 @wm8958_aif_ev(ptr noundef %0, ptr noundef %1, i32 noundef %2) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aif1clk_ev(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -104
  %7 = getelementptr i8, ptr %5, i32 -92
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.wm8994_priv, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.wm8994, ptr %12, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp ult i32 %14, 2
  %16 = select i1 %15, i32 3840, i32 768
  switch i32 %2, label %76 [
    i32 1, label %17
    i32 2, label %57
    i32 4, label %58
    i32 8, label %58
  ]

17:                                               ; preds = %3
  %18 = tail call i32 @snd_soc_component_read(ptr noundef %6, i32 noundef 512) #15
  %19 = and i32 %18, 24
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %17
  %22 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 2, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @clk_prepare(ptr noundef %23) #15
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = tail call i32 @clk_enable(ptr noundef %23) #15
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  tail call void @clk_unprepare(ptr noundef %23) #15
  br label %30

30:                                               ; preds = %29, %21
  %31 = phi i32 [ %24, %21 ], [ %27, %29 ]
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.235, i32 noundef 0) #16
  br label %76

35:                                               ; preds = %30, %26, %17
  %36 = getelementptr inbounds %struct.wm8994_priv, ptr %10, i32 0, i32 8
  %37 = load i32, ptr %36, align 4
  %38 = icmp slt i32 %37, 3
  %39 = select i1 %38, i32 768, i32 %16
  %40 = tail call i32 @snd_soc_component_read(ptr noundef %6, i32 noundef 768) #15
  %41 = and i32 %40, 49152
  %42 = icmp eq i32 %41, 49152
  %43 = icmp eq i32 %41, 0
  %44 = select i1 %43, i32 2560, i32 3840
  %45 = select i1 %42, i32 1280, i32 %44
  %46 = tail call i32 @snd_soc_component_read(ptr noundef %6, i32 noundef 769) #15
  %47 = and i32 %46, 49152
  %48 = icmp eq i32 %47, 49152
  %49 = icmp eq i32 %47, 0
  %50 = select i1 %49, i32 2560, i32 3840
  %51 = select i1 %48, i32 1280, i32 %50
  %52 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 4, i32 noundef %39, i32 noundef %45) #15
  %53 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 5, i32 noundef %39, i32 noundef %51) #15
  %54 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 520, i32 noundef 10, i32 noundef 10) #15
  %55 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 4, i32 noundef %39, i32 noundef 3840) #15
  %56 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 5, i32 noundef %39, i32 noundef 3840) #15
  br label %76

57:                                               ; preds = %3
  tail call fastcc void @wm8994_update_vu_bits(ptr noundef %6)
  br label %76

58:                                               ; preds = %3, %3
  %59 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 5, i32 noundef %16, i32 noundef 0) #15
  %60 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 4, i32 noundef %16, i32 noundef 0) #15
  %61 = tail call i32 @snd_soc_component_read(ptr noundef %6, i32 noundef 520) #15
  %62 = lshr i32 %61, 1
  %63 = and i32 %62, 2
  %64 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 520, i32 noundef 10, i32 noundef %63) #15
  %65 = icmp eq i32 %2, 8
  br i1 %65, label %66, label %76

66:                                               ; preds = %58
  %67 = load ptr, ptr %7, align 4
  %68 = getelementptr inbounds %struct.device, ptr %67, i32 0, i32 8
  %69 = load ptr, ptr %68, align 8
  %70 = tail call i32 @snd_soc_component_read(ptr noundef %6, i32 noundef 512) #15
  %71 = and i32 %70, 24
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = getelementptr %struct.wm8994_priv, ptr %69, i32 0, i32 2, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  tail call void @clk_disable(ptr noundef %75) #15
  tail call void @clk_unprepare(ptr noundef %75) #15
  br label %76

76:                                               ; preds = %73, %66, %58, %57, %35, %33, %3
  %77 = phi i32 [ %31, %33 ], [ 0, %3 ], [ 0, %58 ], [ 0, %66 ], [ 0, %73 ], [ 0, %57 ], [ 0, %35 ]
  ret i32 %77
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aif2clk_ev(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -104
  switch i32 %2, label %67 [
    i32 1, label %7
    i32 2, label %47
    i32 4, label %48
    i32 8, label %48
  ]

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %5, i32 -92
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %11 = load ptr, ptr %10, align 8
  %12 = tail call i32 @snd_soc_component_read(ptr noundef %6, i32 noundef 516) #15
  %13 = and i32 %12, 24
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %7
  %16 = getelementptr %struct.wm8994_priv, ptr %11, i32 0, i32 2, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @clk_prepare(ptr noundef %17) #15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = tail call i32 @clk_enable(ptr noundef %17) #15
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  tail call void @clk_unprepare(ptr noundef %17) #15
  br label %24

24:                                               ; preds = %23, %15
  %25 = phi i32 [ %18, %15 ], [ %21, %23 ]
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.235, i32 noundef 0) #16
  br label %67

29:                                               ; preds = %24, %20, %7
  %30 = tail call i32 @snd_soc_component_read(ptr noundef %6, i32 noundef 784) #15
  %31 = and i32 %30, 49152
  %32 = icmp eq i32 %31, 49152
  %33 = icmp eq i32 %31, 0
  %34 = select i1 %33, i32 8192, i32 12288
  %35 = select i1 %32, i32 4096, i32 %34
  %36 = tail call i32 @snd_soc_component_read(ptr noundef %6, i32 noundef 785) #15
  %37 = and i32 %36, 49152
  %38 = icmp eq i32 %37, 49152
  %39 = icmp eq i32 %37, 0
  %40 = select i1 %39, i32 8192, i32 12288
  %41 = select i1 %38, i32 4096, i32 %40
  %42 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 4, i32 noundef 12288, i32 noundef %35) #15
  %43 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 5, i32 noundef 12288, i32 noundef %41) #15
  %44 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 520, i32 noundef 6, i32 noundef 6) #15
  %45 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 4, i32 noundef 12288, i32 noundef 12288) #15
  %46 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 5, i32 noundef 12288, i32 noundef 12288) #15
  br label %67

47:                                               ; preds = %3
  tail call fastcc void @wm8994_update_vu_bits(ptr noundef %6)
  br label %67

48:                                               ; preds = %3, %3
  %49 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 5, i32 noundef 12288, i32 noundef 0) #15
  %50 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 4, i32 noundef 12288, i32 noundef 0) #15
  %51 = tail call i32 @snd_soc_component_read(ptr noundef %6, i32 noundef 520) #15
  %52 = lshr i32 %51, 2
  %53 = and i32 %52, 2
  %54 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 520, i32 noundef 6, i32 noundef %53) #15
  %55 = icmp eq i32 %2, 8
  br i1 %55, label %56, label %67

56:                                               ; preds = %48
  %57 = getelementptr i8, ptr %5, i32 -92
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.device, ptr %58, i32 0, i32 8
  %60 = load ptr, ptr %59, align 8
  %61 = tail call i32 @snd_soc_component_read(ptr noundef %6, i32 noundef 516) #15
  %62 = and i32 %61, 24
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %56
  %65 = getelementptr %struct.wm8994_priv, ptr %60, i32 0, i32 2, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  tail call void @clk_disable(ptr noundef %66) #15
  tail call void @clk_unprepare(ptr noundef %66) #15
  br label %67

67:                                               ; preds = %64, %56, %48, %47, %29, %27, %3
  %68 = phi i32 [ %25, %27 ], [ 0, %3 ], [ 0, %48 ], [ 0, %56 ], [ 0, %64 ], [ 0, %47 ], [ 0, %29 ]
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @wm8994_update_vu_bits(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.wm8994_priv, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  br label %8

8:                                                ; preds = %8, %1
  %9 = phi i32 [ 0, %1 ], [ %14, %8 ]
  %10 = getelementptr [22 x %struct.wm8994_reg_mask], ptr @wm8994_vu_bits, i32 0, i32 %9
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef %11) #15
  %13 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef %11, i32 noundef %12) #15
  %14 = add nuw nsw i32 %9, 1
  %15 = icmp eq i32 %14, 22
  br i1 %15, label %16, label %8

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.wm8994, ptr %7, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %29, label %20

20:                                               ; preds = %16
  %21 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 1030) #15
  %22 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 1030, i32 noundef %21) #15
  %23 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 1031) #15
  %24 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 1031, i32 noundef %23) #15
  %25 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 1028) #15
  %26 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 1028, i32 noundef %25) #15
  %27 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 1029) #15
  %28 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 1029, i32 noundef %27) #15
  br label %29

29:                                               ; preds = %20, %16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @vmid_reference(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #15
  %7 = getelementptr inbounds %struct.wm8994_priv, ptr %5, i32 0, i32 15
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  store i32 %9, ptr %7, align 4
  %10 = icmp eq i32 %8, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 56, i32 noundef 48, i32 noundef 0) #15
  tail call void @wm_hubs_vmid_ena(ptr noundef %0) #15
  %13 = getelementptr inbounds %struct.wm8994_priv, ptr %5, i32 0, i32 17
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 1
  %16 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 57, i32 noundef 111, i32 noundef 78) #15
  %17 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 1, i32 noundef 7, i32 noundef 3) #15
  %18 = select i1 %15, i32 400, i32 300
  tail call void @msleep(i32 noundef %18) #15
  %19 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 57, i32 noundef 98, i32 noundef 0) #15
  br label %20

20:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @vmid_dereference(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.wm8994_priv, ptr %5, i32 0, i32 15
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, -1
  store i32 %8, ptr %6, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.wm_hubs_data, ptr %5, i32 0, i32 12
  %12 = load i8, ptr %11, align 4, !range !8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 3, i32 noundef 12288, i32 noundef 12288) #15
  br label %16

16:                                               ; preds = %14, %10
  %17 = getelementptr inbounds %struct.wm_hubs_data, ptr %5, i32 0, i32 15
  %18 = load i8, ptr %17, align 1, !range !8
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 3, i32 noundef 3072, i32 noundef 3072) #15
  br label %22

22:                                               ; preds = %20, %16
  %23 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 57, i32 noundef 3, i32 noundef 3) #15
  %24 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 1, i32 noundef 6, i32 noundef 0) #15
  tail call void @msleep(i32 noundef 400) #15
  %25 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 56, i32 noundef 48, i32 noundef 48) #15
  %26 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 3, i32 noundef 15360, i32 noundef 0) #15
  %27 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 57, i32 noundef 110, i32 noundef 0) #15
  %28 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 1, i32 noundef 6, i32 noundef 0) #15
  br label %29

29:                                               ; preds = %22, %1
  %30 = load ptr, ptr %2, align 4
  %31 = tail call i32 @__pm_runtime_idle(ptr noundef %30, i32 noundef 5) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wm_hubs_vmid_ena(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @configure_clock(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 17
  %3 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr %struct.wm8994_priv, ptr %6, i32 0, i32 3, i32 0
  %8 = load i32, ptr %7, align 4
  switch i32 %8, label %31 [
    i32 1, label %9
    i32 2, label %11
    i32 3, label %13
    i32 4, label %15
  ]

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.wm8994_priv, ptr %6, i32 0, i32 5
  br label %17

11:                                               ; preds = %1
  %12 = getelementptr %struct.wm8994_priv, ptr %6, i32 0, i32 5, i32 1
  br label %17

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.wm8994_priv, ptr %6, i32 0, i32 9, i32 0, i32 2
  br label %17

15:                                               ; preds = %1
  %16 = getelementptr %struct.wm8994_priv, ptr %6, i32 0, i32 9, i32 1, i32 2
  br label %17

17:                                               ; preds = %15, %13, %11, %9
  %18 = phi ptr [ %16, %15 ], [ %14, %13 ], [ %12, %11 ], [ %10, %9 ]
  %19 = phi i32 [ 24, %15 ], [ 16, %13 ], [ 8, %11 ], [ 0, %9 ]
  %20 = load i32, ptr %18, align 4
  %21 = icmp sgt i32 %20, 13499999
  %22 = sdiv i32 %20, 2
  %23 = or i32 %19, 2
  %24 = select i1 %21, i32 %22, i32 %20
  %25 = select i1 %21, i32 %23, i32 %19
  %26 = getelementptr %struct.wm8994_priv, ptr %6, i32 0, i32 6, i32 0
  store i32 %24, ptr %26, align 4
  %27 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 512, i32 noundef 26, i32 noundef %25) #15
  %28 = load ptr, ptr %3, align 4
  %29 = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 8
  %30 = load ptr, ptr %29, align 8
  br label %31

31:                                               ; preds = %17, %1
  %32 = phi ptr [ %6, %1 ], [ %30, %17 ]
  %33 = getelementptr %struct.wm8994_priv, ptr %32, i32 0, i32 3, i32 1
  %34 = load i32, ptr %33, align 4
  switch i32 %34, label %54 [
    i32 1, label %35
    i32 2, label %37
    i32 3, label %39
    i32 4, label %41
  ]

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.wm8994_priv, ptr %32, i32 0, i32 5
  br label %43

37:                                               ; preds = %31
  %38 = getelementptr %struct.wm8994_priv, ptr %32, i32 0, i32 5, i32 1
  br label %43

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.wm8994_priv, ptr %32, i32 0, i32 9, i32 0, i32 2
  br label %43

41:                                               ; preds = %31
  %42 = getelementptr %struct.wm8994_priv, ptr %32, i32 0, i32 9, i32 1, i32 2
  br label %43

43:                                               ; preds = %41, %39, %37, %35
  %44 = phi ptr [ %42, %41 ], [ %40, %39 ], [ %38, %37 ], [ %36, %35 ]
  %45 = phi i32 [ 24, %41 ], [ 16, %39 ], [ 8, %37 ], [ 0, %35 ]
  %46 = load i32, ptr %44, align 4
  %47 = icmp sgt i32 %46, 13499999
  %48 = sdiv i32 %46, 2
  %49 = or i32 %45, 2
  %50 = select i1 %47, i32 %48, i32 %46
  %51 = select i1 %47, i32 %49, i32 %45
  %52 = getelementptr %struct.wm8994_priv, ptr %32, i32 0, i32 6, i32 1
  store i32 %50, ptr %52, align 4
  %53 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 516, i32 noundef 26, i32 noundef %51) #15
  br label %54

54:                                               ; preds = %43, %31
  %55 = getelementptr inbounds %struct.wm8994_priv, ptr %6, i32 0, i32 6
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr %struct.wm8994_priv, ptr %6, i32 0, i32 6, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %67, label %60

60:                                               ; preds = %54
  %61 = icmp slt i32 %56, %58
  %62 = zext i1 %61 to i32
  %63 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 520, i32 noundef 1, i32 noundef %62) #15
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %60
  %66 = tail call i32 @snd_soc_dapm_sync(ptr noundef %2) #15
  br label %67

67:                                               ; preds = %65, %60, %54
  tail call fastcc void @wm8958_micd_set_rate(ptr noundef %0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8994_put_class_w(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @snd_soc_dapm_kcontrol_dapm(ptr noundef %0) #15
  %4 = getelementptr i8, ptr %3, i32 -104
  %5 = tail call i32 @snd_soc_dapm_put_volsw(ptr noundef %0, ptr noundef %1) #15
  tail call void @wm_hubs_update_class_w(ptr noundef %4) #15
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_dapm_kcontrol_dapm(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @aif1clk_late_ev(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #12 {
  %4 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -92
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  switch i32 %2, label %16 [
    i32 1, label %11
    i32 8, label %10
  ]

10:                                               ; preds = %3
  br label %11

11:                                               ; preds = %10, %3
  %12 = phi i8 [ 4, %10 ], [ 1, %3 ]
  %13 = getelementptr inbounds %struct.wm8994_priv, ptr %9, i32 0, i32 61
  %14 = load i8, ptr %13, align 4
  %15 = or i8 %14, %12
  store i8 %15, ptr %13, align 4
  br label %16

16:                                               ; preds = %11, %3
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @aif2clk_late_ev(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #12 {
  %4 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -92
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  switch i32 %2, label %16 [
    i32 1, label %11
    i32 8, label %10
  ]

10:                                               ; preds = %3
  br label %11

11:                                               ; preds = %10, %3
  %12 = phi i8 [ 8, %10 ], [ 2, %3 ]
  %13 = getelementptr inbounds %struct.wm8994_priv, ptr %9, i32 0, i32 61
  %14 = load i8, ptr %13, align 4
  %15 = or i8 %14, %12
  store i8 %15, ptr %13, align 4
  br label %16

16:                                               ; preds = %11, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @late_disable_ev(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -104
  %7 = icmp eq i32 %2, 8
  br i1 %7, label %8, label %51

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %5, i32 -92
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 8
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.wm8994_priv, ptr %12, i32 0, i32 61
  %14 = load i8, ptr %13, align 4
  %15 = and i8 %14, 4
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %34, label %17

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.wm8994_priv, ptr %12, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.wm8994, ptr %19, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp ult i32 %21, 2
  %23 = select i1 %22, i32 3840, i32 768
  %24 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 5, i32 noundef %23, i32 noundef 0) #15
  %25 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 4, i32 noundef %23, i32 noundef 0) #15
  %26 = tail call i32 @snd_soc_component_read(ptr noundef %6, i32 noundef 520) #15
  %27 = lshr i32 %26, 1
  %28 = and i32 %27, 2
  %29 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 520, i32 noundef 10, i32 noundef %28) #15
  %30 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 512, i32 noundef 1, i32 noundef 0) #15
  %31 = tail call i32 @aif1clk_ev(ptr noundef %0, ptr noundef %1, i32 noundef 8)
  %32 = load i8, ptr %13, align 4
  %33 = and i8 %32, -5
  store i8 %33, ptr %13, align 4
  br label %34

34:                                               ; preds = %17, %8
  %35 = phi i8 [ %33, %17 ], [ %14, %8 ]
  %36 = and i8 %35, 8
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %51, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr %4, align 4
  %40 = getelementptr i8, ptr %39, i32 -104
  %41 = tail call i32 @snd_soc_component_update_bits(ptr noundef %40, i32 noundef 5, i32 noundef 12288, i32 noundef 0) #15
  %42 = tail call i32 @snd_soc_component_update_bits(ptr noundef %40, i32 noundef 4, i32 noundef 12288, i32 noundef 0) #15
  %43 = tail call i32 @snd_soc_component_read(ptr noundef %40, i32 noundef 520) #15
  %44 = lshr i32 %43, 2
  %45 = and i32 %44, 2
  %46 = tail call i32 @snd_soc_component_update_bits(ptr noundef %40, i32 noundef 520, i32 noundef 6, i32 noundef %45) #15
  %47 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 516, i32 noundef 1, i32 noundef 0) #15
  %48 = tail call i32 @aif2clk_ev(ptr noundef %0, ptr noundef %1, i32 noundef 8)
  %49 = load i8, ptr %13, align 4
  %50 = and i8 %49, -9
  store i8 %50, ptr %13, align 4
  br label %51

51:                                               ; preds = %38, %34, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @adc_mux_ev(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call i32 @late_enable_ev(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dac_ev(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -104
  %7 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 9
  %8 = load i8, ptr %7, align 4
  %9 = zext i8 %8 to i32
  %10 = shl nuw i32 1, %9
  %11 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 5, i32 noundef %10, i32 noundef %10) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @check_clk_sys(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -104
  %6 = tail call i32 @snd_soc_component_read(ptr noundef %5, i32 noundef 520) #15
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, ptr @.str.296, ptr @.str.297
  %10 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @strcmp(ptr noundef %11, ptr noundef nonnull dereferenceable(8) %9)
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i32
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_wm8994_set_fll(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.fll_div, align 2
  %7 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.wm8994_priv, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(12) %6, i8 0, i32 12, i1 false), !annotation !10
  switch i32 %1, label %249 [
    i32 1, label %14
    i32 2, label %13
  ]

13:                                               ; preds = %5
  br label %14

14:                                               ; preds = %13, %5
  %15 = phi i32 [ 32, %13 ], [ 0, %5 ]
  %16 = phi i32 [ 24, %13 ], [ 16, %5 ]
  %17 = phi i32 [ 1, %13 ], [ 0, %5 ]
  %18 = add nuw nsw i32 %15, 544
  %19 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef %18) #15
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  switch i32 %2, label %249 [
    i32 0, label %22
    i32 1, label %28
    i32 2, label %28
    i32 3, label %28
    i32 4, label %28
    i32 5, label %27
  ]

22:                                               ; preds = %14
  %23 = icmp eq i32 %4, 0
  br i1 %23, label %24, label %249

24:                                               ; preds = %22
  %25 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 9, i32 %17
  %26 = load i32, ptr %25, align 4
  br label %28

27:                                               ; preds = %14
  br label %28

28:                                               ; preds = %27, %24, %14, %14, %14, %14
  %29 = phi i32 [ 12000000, %27 ], [ %3, %14 ], [ %3, %14 ], [ %3, %14 ], [ %3, %14 ], [ %3, %24 ]
  %30 = phi i32 [ 12000000, %27 ], [ %4, %14 ], [ %4, %14 ], [ %4, %14 ], [ %4, %14 ], [ 0, %24 ]
  %31 = phi i32 [ 5, %27 ], [ %2, %14 ], [ %2, %14 ], [ %2, %14 ], [ %2, %14 ], [ %26, %24 ]
  %32 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 9, i32 %17
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, %31
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 9, i32 %17, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, %29
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 9, i32 %17, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, %30
  br i1 %42, label %249, label %43

43:                                               ; preds = %39, %35, %28
  %44 = icmp ne i32 %30, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %43
  %46 = call fastcc i32 @wm8994_get_fll_config(ptr noundef %12, ptr noundef nonnull %6, i32 noundef %29, i32 noundef %30)
  br label %53

47:                                               ; preds = %43
  %48 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 9, i32 %17, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 9, i32 %17, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = call fastcc i32 @wm8994_get_fll_config(ptr noundef %12, ptr noundef nonnull %6, i32 noundef %49, i32 noundef %51)
  br label %53

53:                                               ; preds = %47, %45
  %54 = phi i32 [ %46, %45 ], [ %52, %47 ]
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %249, label %56

56:                                               ; preds = %53
  %57 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 520) #15
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  %60 = select i1 %59, i32 512, i32 516
  %61 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef %60) #15
  %62 = and i32 %61, 1
  %63 = icmp ne i32 %62, 0
  %64 = and i32 %61, 24
  %65 = icmp eq i32 %64, %16
  %66 = and i1 %63, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %56
  %68 = load ptr, ptr %7, align 4
  %69 = add nuw nsw i32 %17, 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.374, i32 noundef %69) #16
  br label %249

70:                                               ; preds = %56
  %71 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef %18, i32 noundef 1, i32 noundef 0) #15
  br i1 %21, label %85, label %72

72:                                               ; preds = %70
  %73 = add nuw nsw i32 %15, 548
  %74 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef %73) #15
  %75 = and i32 %74, 3
  switch i32 %75, label %83 [
    i32 0, label %76
    i32 1, label %78
  ]

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.wm8994_priv, ptr %10, i32 0, i32 2, i32 0, i32 1
  br label %80

78:                                               ; preds = %72
  %79 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 2, i32 1, i32 1
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi ptr [ %79, %78 ], [ %77, %76 ]
  %82 = load ptr, ptr %81, align 4
  br label %83

83:                                               ; preds = %80, %72
  %84 = phi ptr [ null, %72 ], [ %82, %80 ]
  tail call void @clk_disable(ptr noundef %84) #15
  tail call void @clk_unprepare(ptr noundef %84) #15
  br label %85

85:                                               ; preds = %83, %70
  %86 = getelementptr inbounds %struct.wm8994_priv, ptr %10, i32 0, i32 13
  %87 = load i8, ptr %86, align 1, !range !8
  %88 = icmp ne i8 %87, 0
  %89 = icmp eq i32 %31, 4
  %90 = select i1 %88, i1 %89, i1 false
  %91 = icmp eq i32 %29, %30
  %92 = and i1 %91, %44
  %93 = and i1 %92, %90
  br i1 %93, label %94, label %97

94:                                               ; preds = %85
  %95 = add nuw nsw i32 %15, 548
  %96 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef %95, i32 noundef 32768, i32 noundef 32768) #15
  br label %222

97:                                               ; preds = %85
  %98 = load i16, ptr %6, align 2
  %99 = shl i16 %98, 8
  %100 = getelementptr inbounds %struct.fll_div, ptr %6, i32 0, i32 5
  %101 = load i16, ptr %100, align 2
  %102 = or i16 %99, %101
  %103 = add nuw nsw i32 %15, 545
  %104 = zext i16 %102 to i32
  %105 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef %103, i32 noundef 16135, i32 noundef %104) #15
  %106 = add nuw nsw i32 %15, 546
  %107 = getelementptr inbounds %struct.fll_div, ptr %6, i32 0, i32 2
  %108 = load i16, ptr %107, align 2
  %109 = zext i16 %108 to i32
  %110 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef %106, i32 noundef 65535, i32 noundef %109) #15
  %111 = add nuw nsw i32 %15, 547
  %112 = getelementptr inbounds %struct.fll_div, ptr %6, i32 0, i32 1
  %113 = load i16, ptr %112, align 2
  %114 = zext i16 %113 to i32
  %115 = shl nuw nsw i32 %114, 5
  %116 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef %111, i32 noundef 32736, i32 noundef %115) #15
  %117 = getelementptr inbounds %struct.fll_div, ptr %6, i32 0, i32 3
  %118 = load i16, ptr %117, align 2
  %119 = icmp eq i16 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %97
  %121 = add nuw nsw i32 %15, 550
  %122 = zext i16 %118 to i32
  %123 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef %121, i32 noundef 65535, i32 noundef %122) #15
  br label %124

124:                                              ; preds = %120, %97
  %125 = phi i32 [ 1, %120 ], [ 0, %97 ]
  %126 = add nuw nsw i32 %15, 551
  %127 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef %126, i32 noundef 1, i32 noundef %125) #15
  %128 = add nuw nsw i32 %15, 548
  %129 = icmp eq i32 %31, 5
  %130 = select i1 %129, i32 64, i32 0
  %131 = getelementptr inbounds %struct.fll_div, ptr %6, i32 0, i32 4
  %132 = load i16, ptr %131, align 2
  %133 = zext i16 %132 to i32
  %134 = shl nuw nsw i32 %133, 3
  %135 = add i32 %31, -1
  %136 = or i32 %130, %135
  %137 = or i32 %136, %134
  %138 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef %128, i32 noundef 32859, i32 noundef %137) #15
  %139 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 11, i32 %17
  %140 = tail call zeroext i1 @try_wait_for_completion(ptr noundef %139) #15
  switch i32 %31, label %148 [
    i32 1, label %141
    i32 2, label %143
  ]

141:                                              ; preds = %124
  %142 = getelementptr inbounds %struct.wm8994_priv, ptr %10, i32 0, i32 2, i32 0, i32 1
  br label %145

143:                                              ; preds = %124
  %144 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 2, i32 1, i32 1
  br label %145

145:                                              ; preds = %143, %141
  %146 = phi ptr [ %144, %143 ], [ %142, %141 ]
  %147 = load ptr, ptr %146, align 4
  br label %148

148:                                              ; preds = %145, %124
  %149 = phi ptr [ null, %124 ], [ %147, %145 ]
  br i1 %44, label %150, label %212

150:                                              ; preds = %148
  %151 = tail call i32 @clk_prepare(ptr noundef %149) #15
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %150
  %154 = tail call i32 @clk_enable(ptr noundef %149) #15
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %163, label %156

156:                                              ; preds = %153
  tail call void @clk_unprepare(ptr noundef %149) #15
  br label %157

157:                                              ; preds = %156, %150
  %158 = phi i32 [ %151, %150 ], [ %154, %156 ]
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = load ptr, ptr %7, align 4
  %162 = add nuw nsw i32 %17, 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %161, ptr noundef nonnull @.str.375, i32 noundef %162) #16
  br label %249

163:                                              ; preds = %157, %153
  br i1 %21, label %164, label %196

164:                                              ; preds = %163
  %165 = load ptr, ptr %7, align 4
  %166 = getelementptr inbounds %struct.device, ptr %165, i32 0, i32 8
  %167 = load ptr, ptr %166, align 8
  %168 = getelementptr inbounds %struct.wm8994_priv, ptr %167, i32 0, i32 44
  tail call void @mutex_lock(ptr noundef %168) #15
  %169 = getelementptr inbounds %struct.wm8994_priv, ptr %167, i32 0, i32 16
  %170 = load i32, ptr %169, align 4
  %171 = add i32 %170, 1
  store i32 %171, ptr %169, align 4
  %172 = load ptr, ptr %7, align 4
  %173 = getelementptr inbounds %struct.device, ptr %172, i32 0, i32 8
  %174 = load ptr, ptr %173, align 8
  %175 = getelementptr inbounds %struct.wm8994_priv, ptr %174, i32 0, i32 53
  %176 = load i8, ptr %175, align 4, !range !8
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %188, label %178

178:                                              ; preds = %164
  %179 = getelementptr inbounds %struct.wm8994_priv, ptr %174, i32 0, i32 45
  %180 = load ptr, ptr %179, align 4
  %181 = icmp eq ptr %180, null
  br i1 %181, label %188, label %182

182:                                              ; preds = %178
  %183 = getelementptr inbounds %struct.wm8994_priv, ptr %174, i32 0, i32 54
  %184 = load i32, ptr %183, align 4
  %185 = icmp eq i32 %184, 384
  br i1 %185, label %188, label %186

186:                                              ; preds = %182
  store i32 384, ptr %183, align 4
  %187 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 57, i32 noundef 384, i32 noundef 384) #15
  br label %188

188:                                              ; preds = %186, %182, %178, %164
  tail call void @mutex_unlock(ptr noundef %168) #15
  %189 = getelementptr inbounds %struct.wm8994, ptr %12, i32 0, i32 1
  %190 = load i32, ptr %189, align 4
  switch i32 %190, label %196 [
    i32 0, label %195
    i32 1, label %191
  ]

191:                                              ; preds = %188
  %192 = getelementptr inbounds %struct.wm8994, ptr %12, i32 0, i32 2
  %193 = load i32, ptr %192, align 4
  %194 = icmp slt i32 %193, 1
  br i1 %194, label %195, label %196

195:                                              ; preds = %191, %188
  tail call fastcc void @vmid_reference(ptr noundef %0)
  br label %196

196:                                              ; preds = %195, %191, %188, %163
  %197 = icmp eq i16 %108, 0
  %198 = select i1 %197, i16 1, i16 5
  %199 = or i16 %198, 2
  %200 = select i1 %129, i16 %199, i16 %198
  %201 = zext i16 %200 to i32
  %202 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef %18, i32 noundef 7, i32 noundef %201) #15
  %203 = getelementptr inbounds %struct.wm8994_priv, ptr %10, i32 0, i32 12
  %204 = load i8, ptr %203, align 4, !range !8
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %211, label %206

206:                                              ; preds = %196
  %207 = tail call i32 @wait_for_completion_timeout(ptr noundef %139, i32 noundef 1) #15
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %222

209:                                              ; preds = %206
  %210 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %210, ptr noundef nonnull @.str.376) #16
  br label %222

211:                                              ; preds = %196
  tail call void @msleep(i32 noundef 5) #15
  br label %222

212:                                              ; preds = %148
  br i1 %21, label %222, label %213

213:                                              ; preds = %212
  %214 = getelementptr inbounds %struct.wm8994, ptr %12, i32 0, i32 1
  %215 = load i32, ptr %214, align 4
  switch i32 %215, label %221 [
    i32 0, label %220
    i32 1, label %216
  ]

216:                                              ; preds = %213
  %217 = getelementptr inbounds %struct.wm8994, ptr %12, i32 0, i32 2
  %218 = load i32, ptr %217, align 4
  %219 = icmp slt i32 %218, 1
  br i1 %219, label %220, label %221

220:                                              ; preds = %216, %213
  tail call fastcc void @vmid_dereference(ptr noundef %0)
  br label %221

221:                                              ; preds = %220, %216, %213
  tail call fastcc void @active_dereference(ptr noundef %0)
  br label %222

222:                                              ; preds = %221, %212, %211, %209, %206, %94
  %223 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 9, i32 %17, i32 1
  store i32 %29, ptr %223, align 4
  %224 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 9, i32 %17, i32 2
  store i32 %30, ptr %224, align 4
  store i32 %31, ptr %32, align 4
  tail call fastcc void @configure_clock(ptr noundef %0)
  %225 = getelementptr inbounds %struct.wm8994_priv, ptr %10, i32 0, i32 6
  %226 = load i32, ptr %225, align 4
  %227 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 6, i32 1
  %228 = load i32, ptr %227, align 4
  %229 = tail call i32 @llvm.smax.i32(i32 %226, i32 %228)
  %230 = icmp slt i32 %229, 50000
  br i1 %230, label %231, label %240

231:                                              ; preds = %222
  %232 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 528) #15
  %233 = and i32 %232, 15
  %234 = getelementptr inbounds %struct.wm8994_priv, ptr %10, i32 0, i32 7
  store i32 %233, ptr %234, align 4
  %235 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 529) #15
  %236 = and i32 %235, 15
  %237 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 7, i32 1
  store i32 %236, ptr %237, align 4
  %238 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 528, i32 noundef 15, i32 noundef 1) #15
  %239 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 529, i32 noundef 15, i32 noundef 1) #15
  br label %249

240:                                              ; preds = %222
  %241 = getelementptr inbounds %struct.wm8994_priv, ptr %10, i32 0, i32 7
  %242 = load i32, ptr %241, align 4
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %249, label %244

244:                                              ; preds = %240
  %245 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 528, i32 noundef 15, i32 noundef %242) #15
  %246 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 7, i32 1
  %247 = load i32, ptr %246, align 4
  %248 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 529, i32 noundef 15, i32 noundef %247) #15
  store i32 0, ptr %241, align 4
  store i32 0, ptr %246, align 4
  br label %249

249:                                              ; preds = %244, %240, %231, %160, %67, %53, %39, %22, %14, %5
  %250 = phi i32 [ -16, %67 ], [ %158, %160 ], [ -22, %5 ], [ -22, %22 ], [ -22, %14 ], [ 0, %39 ], [ %54, %53 ], [ 0, %240 ], [ 0, %244 ], [ 0, %231 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #15
  ret i32 %250
}

; Function Attrs: argmemonly nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @wm8994_get_fll_config(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #13 {
  %5 = getelementptr inbounds %struct.fll_div, ptr %1, i32 0, i32 4
  store i16 0, ptr %5, align 2
  %6 = icmp sgt i32 %2, 13500000
  br i1 %6, label %7, label %17

7:                                                ; preds = %4
  store i16 1, ptr %5, align 2
  %8 = lshr i32 %2, 1
  %9 = icmp ugt i32 %2, 27000001
  br i1 %9, label %10, label %17

10:                                               ; preds = %7
  store i16 2, ptr %5, align 2
  %11 = lshr i32 %2, 2
  %12 = icmp ugt i32 %2, 54000003
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  store i16 3, ptr %5, align 2
  %14 = lshr i32 %2, 3
  %15 = icmp ugt i32 %2, 108000007
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i16 4, ptr %5, align 2
  br label %94

17:                                               ; preds = %13, %10, %7, %4
  %18 = phi i32 [ %2, %4 ], [ %8, %7 ], [ %11, %10 ], [ %14, %13 ]
  store i16 3, ptr %1, align 2
  br label %19

19:                                               ; preds = %25, %17
  %20 = phi i16 [ %26, %25 ], [ 3, %17 ]
  %21 = add nuw nsw i16 %20, 1
  %22 = zext i16 %21 to i32
  %23 = mul i32 %22, %3
  %24 = icmp slt i32 %23, 90000000
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = add nuw nsw i16 %20, 1
  store i16 %26, ptr %1, align 2
  %27 = icmp ugt i16 %20, 62
  br i1 %27, label %94, label %19

28:                                               ; preds = %19
  %29 = icmp sgt i32 %18, 1000000
  br i1 %29, label %30, label %32

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.fll_div, ptr %1, i32 0, i32 5
  store i16 0, ptr %31, align 2
  br label %49

32:                                               ; preds = %28
  %33 = icmp sgt i32 %18, 256000
  br i1 %33, label %34, label %37

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.fll_div, ptr %1, i32 0, i32 5
  store i16 1, ptr %35, align 2
  %36 = shl nuw nsw i32 %18, 1
  br label %49

37:                                               ; preds = %32
  %38 = icmp sgt i32 %18, 128000
  br i1 %38, label %39, label %42

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.fll_div, ptr %1, i32 0, i32 5
  store i16 2, ptr %40, align 2
  %41 = shl nuw nsw i32 %18, 2
  br label %49

42:                                               ; preds = %37
  %43 = icmp sgt i32 %18, 64000
  %44 = getelementptr inbounds %struct.fll_div, ptr %1, i32 0, i32 5
  br i1 %43, label %45, label %47

45:                                               ; preds = %42
  store i16 3, ptr %44, align 2
  %46 = shl nuw nsw i32 %18, 3
  br label %49

47:                                               ; preds = %42
  store i16 4, ptr %44, align 2
  %48 = shl i32 %18, 4
  br label %49

49:                                               ; preds = %47, %45, %39, %34, %30
  %50 = phi i32 [ %18, %30 ], [ %36, %34 ], [ %41, %39 ], [ %46, %45 ], [ %48, %47 ]
  %51 = freeze i32 %23
  %52 = freeze i32 %50
  %53 = sdiv i32 %51, %52
  %54 = trunc i32 %53 to i16
  %55 = getelementptr inbounds %struct.fll_div, ptr %1, i32 0, i32 1
  store i16 %54, ptr %55, align 2
  %56 = getelementptr inbounds %struct.wm8994, ptr %0, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %81

59:                                               ; preds = %49
  %60 = mul i32 %53, %52
  %61 = sub i32 %51, %60
  %62 = zext i32 %61 to i64
  %63 = mul nuw nsw i64 %62, 655360
  %64 = icmp ult i64 %63, 4294967296
  br i1 %64, label %65, label %68, !prof !11

65:                                               ; preds = %59
  %66 = trunc i64 %63 to i32
  %67 = udiv i32 %66, %50
  br label %72

68:                                               ; preds = %59
  %69 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %50, i64 %63) #18, !srcloc !12
  %70 = extractvalue { i64, i64 } %69, 1
  %71 = trunc i64 %70 to i32
  br label %72

72:                                               ; preds = %68, %65
  %73 = phi i32 [ %67, %65 ], [ %71, %68 ]
  %74 = urem i32 %73, 10
  %75 = icmp ugt i32 %74, 4
  %76 = add i32 %73, 5
  %77 = select i1 %75, i32 %76, i32 %73
  %78 = udiv i32 %77, 10
  %79 = trunc i32 %78 to i16
  %80 = getelementptr inbounds %struct.fll_div, ptr %1, i32 0, i32 2
  store i16 %79, ptr %80, align 2
  br label %91

81:                                               ; preds = %49
  %82 = tail call i32 @gcd(i32 noundef %23, i32 noundef %50) #19
  %83 = and i32 %53, 65535
  %84 = mul i32 %83, %50
  %85 = sub i32 %23, %84
  %86 = udiv i32 %85, %82
  %87 = trunc i32 %86 to i16
  %88 = getelementptr inbounds %struct.fll_div, ptr %1, i32 0, i32 2
  store i16 %87, ptr %88, align 2
  %89 = udiv i32 %50, %82
  %90 = trunc i32 %89 to i16
  br label %91

91:                                               ; preds = %81, %72
  %92 = phi i16 [ 0, %72 ], [ %90, %81 ]
  %93 = getelementptr inbounds %struct.fll_div, ptr %1, i32 0, i32 3
  store i16 %92, ptr %93, align 2
  br label %94

94:                                               ; preds = %91, %25, %16
  %95 = phi i32 [ 0, %91 ], [ -22, %16 ], [ -22, %25 ]
  ret i32 %95
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @active_dereference(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.wm8994_priv, ptr %5, i32 0, i32 44
  tail call void @mutex_lock(ptr noundef %6) #15
  %7 = getelementptr inbounds %struct.wm8994_priv, ptr %5, i32 0, i32 16
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, -1
  store i32 %9, ptr %7, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %42

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.wm8994_priv, ptr %5, i32 0, i32 51
  %13 = load i8, ptr %12, align 1, !range !8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.wm8994_priv, ptr %5, i32 0, i32 50
  %17 = load i8, ptr %16, align 2, !range !8
  %18 = icmp eq i8 %17, 0
  %19 = select i1 %18, i32 256, i32 128
  br label %20

20:                                               ; preds = %15, %11
  %21 = phi i32 [ 128, %11 ], [ %19, %15 ]
  %22 = load ptr, ptr %2, align 4
  %23 = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 8
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.wm8994_priv, ptr %24, i32 0, i32 53
  %26 = load i8, ptr %25, align 4, !range !8
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %42, label %28

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.wm8994_priv, ptr %24, i32 0, i32 45
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %42, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.wm8994_priv, ptr %24, i32 0, i32 16
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %35, i32 %21, i32 384
  %37 = getelementptr inbounds %struct.wm8994_priv, ptr %24, i32 0, i32 54
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, %36
  br i1 %39, label %42, label %40

40:                                               ; preds = %32
  store i32 %36, ptr %37, align 4
  %41 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 57, i32 noundef 384, i32 noundef 384) #15
  br label %42

42:                                               ; preds = %40, %32, %28, %20, %1
  tail call void @mutex_unlock(ptr noundef %6) #15
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @gcd(i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_force_bias_level(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wm_hubs_set_bias_level(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8994_aif2_probe(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %3, i32 noundef 1794, i32 noundef 24576, i32 noundef 0) #15
  %5 = tail call i32 @snd_soc_component_update_bits(ptr noundef %3, i32 noundef 1795, i32 noundef 24576, i32 noundef 0) #15
  %6 = tail call i32 @snd_soc_component_update_bits(ptr noundef %3, i32 noundef 1796, i32 noundef 24576, i32 noundef 0) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8994_set_dai_sysclk(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_soc_component, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, -1
  %14 = icmp ult i32 %13, 2
  br i1 %14, label %15, label %100

15:                                               ; preds = %4
  switch i32 %1, label %100 [
    i32 1, label %16
    i32 2, label %36
    i32 3, label %56
    i32 4, label %58
    i32 5, label %60
  ]

16:                                               ; preds = %15
  %17 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 3, i32 %13
  store i32 1, ptr %17, align 4
  %18 = load i32, ptr %11, align 4
  %19 = add i32 %18, -1
  %20 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 2, i32 %19, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %33, label %23

23:                                               ; preds = %16
  %24 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 5, i32 %19
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, %2
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = tail call i32 @clk_set_rate(ptr noundef nonnull %21, i32 noundef %2) #15
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %100, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr %20, align 4
  %32 = tail call i32 @clk_get_rate(ptr noundef %31) #15
  br label %33

33:                                               ; preds = %30, %23, %16
  %34 = phi i32 [ %32, %30 ], [ %2, %23 ], [ %2, %16 ]
  %35 = getelementptr inbounds %struct.wm8994_priv, ptr %10, i32 0, i32 5
  store i32 %34, ptr %35, align 4
  br label %75

36:                                               ; preds = %15
  %37 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 3, i32 %13
  store i32 2, ptr %37, align 4
  %38 = load i32, ptr %11, align 4
  %39 = add i32 %38, -1
  %40 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 2, i32 %39, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %53, label %43

43:                                               ; preds = %36
  %44 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 5, i32 %39
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, %2
  br i1 %46, label %53, label %47

47:                                               ; preds = %43
  %48 = tail call i32 @clk_set_rate(ptr noundef nonnull %41, i32 noundef %2) #15
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %100, label %50

50:                                               ; preds = %47
  %51 = load ptr, ptr %40, align 4
  %52 = tail call i32 @clk_get_rate(ptr noundef %51) #15
  br label %53

53:                                               ; preds = %50, %43, %36
  %54 = phi i32 [ %52, %50 ], [ %2, %43 ], [ %2, %36 ]
  %55 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 5, i32 1
  store i32 %54, ptr %55, align 4
  br label %75

56:                                               ; preds = %15
  %57 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 3, i32 %13
  store i32 3, ptr %57, align 4
  br label %75

58:                                               ; preds = %15
  %59 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 3, i32 %13
  store i32 4, ptr %59, align 4
  br label %75

60:                                               ; preds = %15
  switch i32 %2, label %100 [
    i32 0, label %73
    i32 10, label %69
    i32 20, label %61
    i32 30, label %62
    i32 40, label %63
    i32 55, label %64
    i32 60, label %65
    i32 80, label %66
    i32 120, label %67
    i32 160, label %68
  ]

61:                                               ; preds = %60
  br label %69

62:                                               ; preds = %60
  br label %69

63:                                               ; preds = %60
  br label %69

64:                                               ; preds = %60
  br label %69

65:                                               ; preds = %60
  br label %69

66:                                               ; preds = %60
  br label %69

67:                                               ; preds = %60
  br label %69

68:                                               ; preds = %60
  br label %69

69:                                               ; preds = %68, %67, %66, %65, %64, %63, %62, %61, %60
  %70 = phi i32 [ 0, %60 ], [ 1, %61 ], [ 2, %62 ], [ 3, %63 ], [ 4, %64 ], [ 5, %65 ], [ 6, %66 ], [ 7, %67 ], [ 8, %68 ]
  %71 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 521, i32 noundef 7, i32 noundef %70) #15
  %72 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 2, i32 noundef 2048, i32 noundef 2048) #15
  br label %75

73:                                               ; preds = %60
  %74 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 2, i32 noundef 2048, i32 noundef 0) #15
  br label %75

75:                                               ; preds = %73, %69, %58, %56, %53, %33
  tail call fastcc void @configure_clock(ptr noundef %6)
  %76 = getelementptr inbounds %struct.wm8994_priv, ptr %10, i32 0, i32 6
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 6, i32 1
  %79 = load i32, ptr %78, align 4
  %80 = tail call i32 @llvm.smax.i32(i32 %77, i32 %79)
  %81 = icmp slt i32 %80, 50000
  br i1 %81, label %82, label %91

82:                                               ; preds = %75
  %83 = tail call i32 @snd_soc_component_read(ptr noundef %6, i32 noundef 528) #15
  %84 = and i32 %83, 15
  %85 = getelementptr inbounds %struct.wm8994_priv, ptr %10, i32 0, i32 7
  store i32 %84, ptr %85, align 4
  %86 = tail call i32 @snd_soc_component_read(ptr noundef %6, i32 noundef 529) #15
  %87 = and i32 %86, 15
  %88 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 7, i32 1
  store i32 %87, ptr %88, align 4
  %89 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 528, i32 noundef 15, i32 noundef 1) #15
  %90 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 529, i32 noundef 15, i32 noundef 1) #15
  br label %100

91:                                               ; preds = %75
  %92 = getelementptr inbounds %struct.wm8994_priv, ptr %10, i32 0, i32 7
  %93 = load i32, ptr %92, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %91
  %96 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 528, i32 noundef 15, i32 noundef %93) #15
  %97 = getelementptr %struct.wm8994_priv, ptr %10, i32 0, i32 7, i32 1
  %98 = load i32, ptr %97, align 4
  %99 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 529, i32 noundef 15, i32 noundef %98) #15
  store i32 0, ptr %92, align 4
  store i32 0, ptr %97, align 4
  br label %100

100:                                              ; preds = %95, %91, %82, %60, %47, %27, %15, %4
  %101 = phi i32 [ -22, %4 ], [ -22, %15 ], [ 0, %91 ], [ 0, %95 ], [ 0, %82 ], [ %28, %27 ], [ %48, %47 ], [ -22, %60 ]
  ret i32 %101
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8994_set_fll(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %7 = load ptr, ptr %6, align 4
  %8 = tail call fastcc i32 @_wm8994_set_fll(ptr noundef %7, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8994_set_dai_fmt(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.wm8994_priv, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  switch i32 %12, label %58 [
    i32 1, label %14
    i32 2, label %13
  ]

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %13, %2
  %15 = phi i32 [ 786, %13 ], [ 770, %2 ]
  %16 = phi i32 [ 784, %13 ], [ 768, %2 ]
  %17 = trunc i32 %1 to i16
  %18 = and i16 %17, -4096
  switch i16 %18, label %58 [
    i16 16384, label %20
    i16 4096, label %19
  ]

19:                                               ; preds = %14
  br label %20

20:                                               ; preds = %19, %14
  %21 = phi i32 [ 16384, %19 ], [ 0, %14 ]
  %22 = and i32 %1, 15
  switch i32 %22, label %58 [
    i32 5, label %23
    i32 4, label %26
    i32 1, label %24
    i32 2, label %32
    i32 3, label %25
  ]

23:                                               ; preds = %20
  br label %26

24:                                               ; preds = %20
  br label %32

25:                                               ; preds = %20
  br label %32

26:                                               ; preds = %23, %20
  %27 = phi i32 [ 24, %20 ], [ 152, %23 ]
  %28 = phi i32 [ 0, %20 ], [ 4096, %23 ]
  %29 = and i32 %1, 3840
  switch i32 %29, label %58 [
    i32 0, label %42
    i32 768, label %30
  ]

30:                                               ; preds = %26
  %31 = or i32 %27, 256
  br label %42

32:                                               ; preds = %25, %24, %20
  %33 = phi i32 [ 16, %24 ], [ 0, %20 ], [ 8, %25 ]
  %34 = lshr i32 %1, 8
  %35 = and i32 %34, 15
  switch i32 %35, label %58 [
    i32 0, label %42
    i32 4, label %36
    i32 3, label %38
    i32 2, label %40
  ]

36:                                               ; preds = %32
  %37 = or i32 %33, 384
  br label %42

38:                                               ; preds = %32
  %39 = or i32 %33, 256
  br label %42

40:                                               ; preds = %32
  %41 = or i32 %33, 128
  br label %42

42:                                               ; preds = %40, %38, %36, %32, %30, %26
  %43 = phi i32 [ %41, %40 ], [ %39, %38 ], [ %37, %36 ], [ %33, %32 ], [ %31, %30 ], [ %27, %26 ]
  %44 = phi i32 [ 4096, %40 ], [ 0, %38 ], [ 4096, %36 ], [ %35, %32 ], [ %28, %30 ], [ %28, %26 ]
  %45 = getelementptr inbounds %struct.wm8994, ptr %10, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, -1
  %48 = icmp ult i32 %47, 2
  %49 = icmp eq i32 %12, 2
  %50 = select i1 %48, i1 %49, i1 false
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 800, i32 noundef 152, i32 noundef %43) #15
  br label %53

53:                                               ; preds = %51, %42
  %54 = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef %16, i32 noundef 408, i32 noundef %43) #15
  %55 = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef %15, i32 noundef 16384, i32 noundef %21) #15
  %56 = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 773, i32 noundef 4096, i32 noundef %44) #15
  %57 = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 772, i32 noundef 4096, i32 noundef %44) #15
  br label %58

58:                                               ; preds = %53, %32, %26, %20, %14, %2
  %59 = phi i32 [ 0, %53 ], [ -22, %2 ], [ -22, %14 ], [ -22, %20 ], [ -22, %26 ], [ -22, %32 ]
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8994_set_tristate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %13 [
    i32 1, label %8
    i32 2, label %7
  ]

7:                                                ; preds = %2
  br label %8

8:                                                ; preds = %7, %2
  %9 = phi i32 [ 786, %7 ], [ 770, %2 ]
  %10 = icmp eq i32 %1, 0
  %11 = select i1 %10, i32 0, i32 32768
  %12 = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef %9, i32 noundef 32768, i32 noundef %11) #15
  br label %13

13:                                               ; preds = %8, %2
  %14 = phi i32 [ %12, %8 ], [ -22, %2 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8994_aif_mute(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %14 [
    i32 1, label %9
    i32 2, label %8
  ]

8:                                                ; preds = %3
  br label %9

9:                                                ; preds = %8, %3
  %10 = phi i32 [ 1312, %8 ], [ 1056, %3 ]
  %11 = icmp eq i32 %1, 0
  %12 = select i1 %11, i32 0, i32 512
  %13 = tail call i32 @snd_soc_component_update_bits(ptr noundef %5, i32 noundef %10, i32 noundef 512, i32 noundef %12) #15
  br label %14

14:                                               ; preds = %9, %3
  %15 = phi i32 [ 0, %9 ], [ -22, %3 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8994_hw_params(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_soc_component, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.wm8994_priv, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, -1
  switch i32 %13, label %214 [
    i32 1, label %15
    i32 2, label %24
  ]

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %33, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.wm8994_priv, ptr %9, i32 0, i32 19
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, i32 772, i32 773
  br label %33

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = getelementptr %struct.wm8994_priv, ptr %9, i32 0, i32 19, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i32 788, i32 789
  br label %33

33:                                               ; preds = %28, %24, %19, %15
  %34 = phi i32 [ 768, %15 ], [ 784, %24 ], [ 768, %19 ], [ 784, %28 ]
  %35 = phi i32 [ 769, %15 ], [ 785, %24 ], [ 769, %19 ], [ 785, %28 ]
  %36 = phi i32 [ 771, %15 ], [ 787, %24 ], [ 771, %19 ], [ 787, %28 ]
  %37 = phi i32 [ 773, %15 ], [ 789, %24 ], [ %23, %19 ], [ %32, %28 ]
  %38 = phi i32 [ 528, %15 ], [ 529, %24 ], [ 528, %19 ], [ 529, %28 ]
  %39 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %49, %33
  %45 = phi i32 [ 0, %33 ], [ 32, %49 ]
  %46 = phi i32 [ %42, %33 ], [ %51, %49 ]
  %47 = tail call i32 @llvm.cttz.i32(i32 %46, i1 true) #15, !range !13
  %48 = or i32 %47, %45
  br label %53

49:                                               ; preds = %33
  %50 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %44

53:                                               ; preds = %49, %44
  %54 = phi i32 [ %48, %44 ], [ 0, %49 ]
  %55 = tail call i32 @snd_pcm_format_width(i32 noundef %54) #15
  %56 = add i32 %55, -16
  %57 = tail call i32 @llvm.fshl.i32(i32 %56, i32 %56, i32 30)
  switch i32 %57, label %214 [
    i32 0, label %58
    i32 1, label %60
    i32 2, label %62
    i32 4, label %64
  ]

58:                                               ; preds = %53
  %59 = shl i32 %40, 4
  br label %66

60:                                               ; preds = %53
  %61 = mul i32 %40, 20
  br label %66

62:                                               ; preds = %53
  %63 = mul i32 %40, 24
  br label %66

64:                                               ; preds = %53
  %65 = shl i32 %40, 5
  br label %66

66:                                               ; preds = %64, %62, %60, %58
  %67 = phi i32 [ 96, %64 ], [ 64, %62 ], [ 32, %60 ], [ 0, %58 ]
  %68 = phi i32 [ %65, %64 ], [ %63, %62 ], [ %61, %60 ], [ %59, %58 ]
  %69 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 2
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr %struct.wm8994_priv, ptr %9, i32 0, i32 8, i32 %14
  store i32 %70, ptr %71, align 4
  %72 = getelementptr %struct.wm8994_pdata, ptr %11, i32 0, i32 31, i32 %14
  %73 = load i32, ptr %72, align 4
  %74 = icmp ne i32 %73, 0
  %75 = icmp sgt i32 %70, %73
  %76 = select i1 %74, i1 %75, i1 false
  %77 = select i1 %76, i32 %73, i32 %70
  store i32 %77, ptr %71, align 4
  %78 = add i32 %77, -1
  %79 = icmp ult i32 %78, 2
  %80 = select i1 %79, i32 -2, i32 -4
  %81 = mul i32 %80, %68
  %82 = load i32, ptr %39, align 4
  switch i32 %82, label %214 [
    i32 8000, label %93
    i32 11025, label %83
    i32 12000, label %84
    i32 16000, label %85
    i32 22050, label %86
    i32 24000, label %87
    i32 32000, label %88
    i32 44100, label %89
    i32 48000, label %90
    i32 88200, label %91
    i32 96000, label %92
  ]

83:                                               ; preds = %66
  br label %93

84:                                               ; preds = %66
  br label %93

85:                                               ; preds = %66
  br label %93

86:                                               ; preds = %66
  br label %93

87:                                               ; preds = %66
  br label %93

88:                                               ; preds = %66
  br label %93

89:                                               ; preds = %66
  br label %93

90:                                               ; preds = %66
  br label %93

91:                                               ; preds = %66
  br label %93

92:                                               ; preds = %66
  br label %93

93:                                               ; preds = %92, %91, %90, %89, %88, %87, %86, %85, %84, %83, %66
  %94 = phi i32 [ 0, %66 ], [ 1, %83 ], [ 2, %84 ], [ 3, %85 ], [ 4, %86 ], [ 5, %87 ], [ 6, %88 ], [ 7, %89 ], [ 8, %90 ], [ 9, %91 ], [ 10, %92 ]
  %95 = getelementptr [11 x %struct.anon.92], ptr @srs, i32 0, i32 %94
  %96 = load i32, ptr %95, align 4
  %97 = shl i32 %96, 4
  %98 = icmp eq i32 %77, 1
  br i1 %98, label %99, label %104

99:                                               ; preds = %93
  %100 = tail call i32 @snd_soc_component_read(ptr noundef %5, i32 noundef %34) #15
  %101 = and i32 %100, 24
  %102 = icmp eq i32 %101, 24
  %103 = select i1 %102, i32 256, i32 0
  br label %104

104:                                              ; preds = %99, %93
  %105 = phi i32 [ 0, %93 ], [ %103, %99 ]
  %106 = getelementptr %struct.wm8994_priv, ptr %9, i32 0, i32 6, i32 %14
  %107 = load i32, ptr %106, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 2
  %111 = load ptr, ptr %110, align 4
  %112 = load i32, ptr %12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %111, ptr noundef nonnull @.str.381, i32 noundef %112) #16
  br label %214

113:                                              ; preds = %104
  %114 = load i32, ptr %39, align 4
  %115 = shl i32 %114, 6
  %116 = sub i32 %115, %107
  %117 = tail call i32 @llvm.abs.i32(i32 %116, i1 false)
  %118 = shl i32 %114, 7
  %119 = sub i32 %118, %107
  %120 = tail call i32 @llvm.abs.i32(i32 %119, i1 false)
  %121 = icmp slt i32 %120, %117
  %122 = tail call i32 @llvm.smin.i32(i32 %120, i32 %117)
  %123 = zext i1 %121 to i32
  %124 = mul i32 %114, 192
  %125 = sub i32 %124, %107
  %126 = tail call i32 @llvm.abs.i32(i32 %125, i1 false)
  %127 = icmp slt i32 %126, %122
  %128 = tail call i32 @llvm.smin.i32(i32 %126, i32 %122)
  %129 = select i1 %127, i32 2, i32 %123
  %130 = shl i32 %114, 8
  %131 = sub i32 %130, %107
  %132 = tail call i32 @llvm.abs.i32(i32 %131, i1 false)
  %133 = icmp slt i32 %132, %128
  %134 = tail call i32 @llvm.smin.i32(i32 %132, i32 %128)
  %135 = select i1 %133, i32 3, i32 %129
  %136 = mul i32 %114, 384
  %137 = sub i32 %136, %107
  %138 = tail call i32 @llvm.abs.i32(i32 %137, i1 false)
  %139 = icmp slt i32 %138, %134
  %140 = tail call i32 @llvm.smin.i32(i32 %138, i32 %134)
  %141 = select i1 %139, i32 4, i32 %135
  %142 = shl i32 %114, 9
  %143 = sub i32 %142, %107
  %144 = tail call i32 @llvm.abs.i32(i32 %143, i1 false)
  %145 = icmp slt i32 %144, %140
  %146 = tail call i32 @llvm.smin.i32(i32 %144, i32 %140)
  %147 = select i1 %145, i32 5, i32 %141
  %148 = mul i32 %114, 768
  %149 = sub i32 %148, %107
  %150 = tail call i32 @llvm.abs.i32(i32 %149, i1 false)
  %151 = icmp slt i32 %150, %146
  %152 = tail call i32 @llvm.smin.i32(i32 %150, i32 %146)
  %153 = select i1 %151, i32 6, i32 %147
  %154 = shl i32 %114, 10
  %155 = sub i32 %154, %107
  %156 = tail call i32 @llvm.abs.i32(i32 %155, i1 false)
  %157 = icmp slt i32 %156, %152
  %158 = tail call i32 @llvm.smin.i32(i32 %156, i32 %152)
  %159 = select i1 %157, i32 7, i32 %153
  %160 = mul i32 %114, 1408
  %161 = sub i32 %160, %107
  %162 = tail call i32 @llvm.abs.i32(i32 %161, i1 false)
  %163 = icmp slt i32 %162, %158
  %164 = tail call i32 @llvm.smin.i32(i32 %162, i32 %158)
  %165 = select i1 %163, i32 8, i32 %159
  %166 = mul i32 %114, 1536
  %167 = sub i32 %166, %107
  %168 = tail call i32 @llvm.abs.i32(i32 %167, i1 false)
  %169 = icmp slt i32 %168, %164
  %170 = select i1 %169, i32 9, i32 %165
  %171 = or i32 %170, %97
  %172 = mul i32 %107, 10
  %173 = sdiv i32 %172, 10
  %174 = add i32 %173, %81
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %186, label %176

176:                                              ; preds = %180, %113
  %177 = phi i32 [ %178, %180 ], [ 0, %113 ]
  %178 = add nuw nsw i32 %177, 1
  %179 = icmp eq i32 %178, 22
  br i1 %179, label %186, label %180

180:                                              ; preds = %176
  %181 = getelementptr [22 x i32], ptr @bclk_divs, i32 0, i32 %178
  %182 = load i32, ptr %181, align 4
  %183 = sdiv i32 %172, %182
  %184 = add i32 %183, %81
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %186, label %176

186:                                              ; preds = %180, %176, %113
  %187 = phi i32 [ 0, %113 ], [ 21, %176 ], [ %177, %180 ]
  %188 = getelementptr [22 x i32], ptr @bclk_divs, i32 0, i32 %187
  %189 = load i32, ptr %188, align 4
  %190 = sdiv i32 %172, %189
  %191 = icmp ugt i32 %114, %190
  br i1 %191, label %192, label %195

192:                                              ; preds = %186
  %193 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 2
  %194 = load ptr, ptr %193, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %194, ptr noundef nonnull @.str.382, i32 noundef %190) #16
  br label %214

195:                                              ; preds = %186
  %196 = udiv i32 %190, %114
  %197 = shl nuw nsw i32 %187, 4
  %198 = tail call i32 @snd_soc_component_update_bits(ptr noundef %5, i32 noundef %34, i32 noundef 96, i32 noundef %67) #15
  %199 = tail call i32 @snd_soc_component_update_bits(ptr noundef %5, i32 noundef %35, i32 noundef 256, i32 noundef %105) #15
  %200 = tail call i32 @snd_soc_component_update_bits(ptr noundef %5, i32 noundef %36, i32 noundef 496, i32 noundef %197) #15
  %201 = tail call i32 @snd_soc_component_update_bits(ptr noundef %5, i32 noundef %37, i32 noundef 2047, i32 noundef %196) #15
  %202 = tail call i32 @snd_soc_component_update_bits(ptr noundef %5, i32 noundef %38, i32 noundef 255, i32 noundef %171) #15
  %203 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %204 = load i32, ptr %203, align 4
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %214

206:                                              ; preds = %195
  %207 = load i32, ptr %12, align 4
  switch i32 %207, label %214 [
    i32 1, label %208
    i32 2, label %211
  ]

208:                                              ; preds = %206
  %209 = load i32, ptr %39, align 4
  %210 = getelementptr inbounds %struct.wm8994_priv, ptr %9, i32 0, i32 18
  store i32 %209, ptr %210, align 4
  tail call fastcc void @wm8994_set_retune_mobile(ptr noundef %5, i32 noundef 0)
  tail call fastcc void @wm8994_set_retune_mobile(ptr noundef %5, i32 noundef 1)
  br label %214

211:                                              ; preds = %206
  %212 = load i32, ptr %39, align 4
  %213 = getelementptr %struct.wm8994_priv, ptr %9, i32 0, i32 18, i32 1
  store i32 %212, ptr %213, align 4
  tail call fastcc void @wm8994_set_retune_mobile(ptr noundef %5, i32 noundef 2)
  br label %214

214:                                              ; preds = %211, %208, %206, %195, %192, %109, %66, %53, %3
  %215 = phi i32 [ -22, %109 ], [ -22, %192 ], [ -22, %3 ], [ -22, %53 ], [ 0, %208 ], [ 0, %211 ], [ 0, %206 ], [ 0, %195 ], [ -22, %66 ]
  ret i32 %215
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8994_aif3_hw_params(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 3
  br i1 %8, label %9, label %48

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.snd_soc_component, ptr %5, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 8
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.wm8994_priv, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.wm8994, ptr %15, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, -1
  %19 = icmp ult i32 %18, 2
  br i1 %19, label %20, label %48

20:                                               ; preds = %9
  %21 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %29, %20
  %25 = phi i32 [ 0, %20 ], [ 32, %29 ]
  %26 = phi i32 [ %22, %20 ], [ %31, %29 ]
  %27 = tail call i32 @llvm.cttz.i32(i32 %26, i1 true) #15, !range !13
  %28 = or i32 %27, %25
  br label %33

29:                                               ; preds = %20
  %30 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %24

33:                                               ; preds = %29, %24
  %34 = phi i32 [ %28, %24 ], [ 0, %29 ]
  %35 = tail call i32 @snd_pcm_format_width(i32 noundef %34) #15
  %36 = add i32 %35, -16
  %37 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 30)
  %38 = icmp ult i32 %37, 5
  br i1 %38, label %39, label %48

39:                                               ; preds = %33
  %40 = trunc i32 %37 to i8
  %41 = lshr i8 23, %40
  %42 = and i8 %41, 1
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds [5 x i32], ptr @switch.table.wm8994_aif3_hw_params, i32 0, i32 %37
  %46 = load i32, ptr %45, align 4
  %47 = tail call i32 @snd_soc_component_update_bits(ptr noundef %5, i32 noundef 800, i32 noundef 96, i32 noundef %46) #15
  br label %48

48:                                               ; preds = %44, %39, %33, %9, %3
  %49 = phi i32 [ %47, %44 ], [ 0, %9 ], [ 0, %3 ], [ -22, %33 ], [ -22, %39 ]
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8994_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.wm8994_priv, ptr %3, i32 0, i32 53
  %5 = load i8, ptr %4, align 4, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.wm8994_priv, ptr %3, i32 0, i32 16
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.wm8994_priv, ptr %3, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.wm8994, ptr %13, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.wm8994_priv, ptr %3, i32 0, i32 54
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 57, i32 noundef 384, i32 noundef %17, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #15
  br label %19

19:                                               ; preds = %11, %7, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8994_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.wm8994_priv, ptr %3, i32 0, i32 53
  %5 = load i8, ptr %4, align 4, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.wm8994_priv, ptr %3, i32 0, i32 54
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.wm8994_priv, ptr %3, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.wm8994, ptr %13, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 57, i32 noundef 384, i32 noundef 384, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #15
  br label %17

17:                                               ; preds = %11, %7, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { null_pointer_is_valid allocsize(1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nounwind }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(1) }
attributes #18 = { nounwind readnone }
attributes #19 = { nounwind readnone willreturn }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{!"auto-init"}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2148024095, i64 2148024375, i64 2148024709, i64 2148025043}
!13 = !{i32 0, i32 33}
