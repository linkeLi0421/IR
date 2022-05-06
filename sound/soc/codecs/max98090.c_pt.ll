; ModuleID = '/llk/IR/sound/soc/codecs/max98090.c_pt.bc'
source_filename = "../sound/soc/codecs/max98090.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_max98090_mic_detect:\09\09\09\09\09"
module asm "\09.asciz \09\22max98090_mic_detect\22\09\09\09\09\09"
module asm "__kstrtabns_max98090_mic_detect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.89, ptr }
%union.anon.89 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.reg_default = type { i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.81, i32 }
%union.anon.81 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8 }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.soc_bytes = type { i32, i32, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dmic_table = type { i32, [6 x %struct.anon.94] }
%struct.anon.94 = type { i32, [6 x i32] }
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
%struct.max98090_priv = type { ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, [1 x %struct.max98090_cdata], i32, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, ptr, i32, i32, i32, i8, i32, i32, i32, i8, i8 }
%struct.max98090_cdata = type { i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.80, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.80 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.75, [128 x i8] }
%union.anon.75 = type { %union.anon.77 }
%union.anon.77 = type { [64 x i64] }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
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
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }

@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_max98090_mic_detect = external dso_local constant [0 x i8], align 1
@__kstrtabns_max98090_mic_detect = external dso_local constant [0 x i8], align 1
@__ksymtab_max98090_mic_detect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @max98090_mic_detect to i32), ptr @__kstrtab_max98090_mic_detect, ptr @__kstrtabns_max98090_mic_detect }, section "___ksymtab_gpl+max98090_mic_detect", align 4
@max98090_i2c_id = internal constant [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"max98090\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"max98091\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], align 4
@max98090_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max98090\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max98091\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description254 = internal constant [37 x i8] c"description=ALSA SoC MAX98090 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author255 = internal constant [48 x i8] c"author=Peter Hsiang, Jesse Marroqin, Jerry Wong\00", section ".modinfo", align 1
@__UNIQUE_ID_license256 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__this_module = external dso_local global %struct.module, align 64
@max98090_i2c_driver = internal global %struct.i2c_driver { i32 0, ptr @max98090_i2c_probe, ptr @max98090_i2c_remove, ptr null, ptr @max98090_i2c_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @max98090_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max98090_pm, ptr null, ptr null }, ptr @max98090_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [9 x i8] c"max98090\00", align 1
@max98090_pm = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr @max98090_resume, ptr null, ptr @max98090_resume, ptr null, ptr @max98090_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max98090_runtime_suspend, ptr @max98090_runtime_resume, ptr null }, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"maxim,dmic-freq\00", align 1
@max98090_regmap = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr @max98090_readable_register, ptr @max98090_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max98090_reg, i32 208, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Failed to allocate regmap: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"max98090_interrupt\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"request_irq failed: %d\0A\00", align 1
@soc_component_dev_max98090 = internal constant %struct.snd_soc_component_driver { ptr null, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr @max98090_probe, ptr @max98090_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max98090_seq_notifier, ptr null, ptr @max98090_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 58, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@max98090_dai = internal global [1 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.349, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @max98090_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.224, i64 68, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.233, i64 68, i32 2046, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 0, i32 0, i32 0 }], align 8
@max98090_reg = internal constant [208 x %struct.reg_default] [%struct.reg_default zeroinitializer, %struct.reg_default { i32 3, i32 4 }, %struct.reg_default { i32 4, i32 0 }, %struct.reg_default { i32 5, i32 0 }, %struct.reg_default { i32 6, i32 0 }, %struct.reg_default { i32 7, i32 0 }, %struct.reg_default { i32 8, i32 0 }, %struct.reg_default { i32 9, i32 0 }, %struct.reg_default { i32 10, i32 0 }, %struct.reg_default { i32 11, i32 0 }, %struct.reg_default { i32 12, i32 0 }, %struct.reg_default { i32 13, i32 0 }, %struct.reg_default { i32 14, i32 27 }, %struct.reg_default { i32 15, i32 0 }, %struct.reg_default { i32 16, i32 20 }, %struct.reg_default { i32 17, i32 20 }, %struct.reg_default { i32 18, i32 0 }, %struct.reg_default { i32 19, i32 0 }, %struct.reg_default { i32 20, i32 0 }, %struct.reg_default { i32 21, i32 0 }, %struct.reg_default { i32 22, i32 0 }, %struct.reg_default { i32 23, i32 3 }, %struct.reg_default { i32 24, i32 3 }, %struct.reg_default { i32 25, i32 0 }, %struct.reg_default { i32 26, i32 0 }, %struct.reg_default { i32 27, i32 0 }, %struct.reg_default { i32 28, i32 0 }, %struct.reg_default { i32 29, i32 0 }, %struct.reg_default { i32 30, i32 0 }, %struct.reg_default { i32 31, i32 0 }, %struct.reg_default { i32 32, i32 0 }, %struct.reg_default { i32 33, i32 0 }, %struct.reg_default { i32 34, i32 0 }, %struct.reg_default { i32 35, i32 0 }, %struct.reg_default { i32 36, i32 0 }, %struct.reg_default { i32 37, i32 0 }, %struct.reg_default { i32 38, i32 128 }, %struct.reg_default { i32 39, i32 0 }, %struct.reg_default { i32 40, i32 0 }, %struct.reg_default { i32 41, i32 0 }, %struct.reg_default { i32 42, i32 0 }, %struct.reg_default { i32 43, i32 0 }, %struct.reg_default { i32 44, i32 26 }, %struct.reg_default { i32 45, i32 26 }, %struct.reg_default { i32 46, i32 0 }, %struct.reg_default { i32 47, i32 0 }, %struct.reg_default { i32 48, i32 0 }, %struct.reg_default { i32 49, i32 44 }, %struct.reg_default { i32 50, i32 44 }, %struct.reg_default { i32 51, i32 0 }, %struct.reg_default { i32 52, i32 0 }, %struct.reg_default { i32 53, i32 0 }, %struct.reg_default { i32 54, i32 0 }, %struct.reg_default { i32 55, i32 0 }, %struct.reg_default { i32 56, i32 0 }, %struct.reg_default { i32 57, i32 21 }, %struct.reg_default { i32 58, i32 0 }, %struct.reg_default { i32 59, i32 0 }, %struct.reg_default { i32 60, i32 21 }, %struct.reg_default { i32 61, i32 0 }, %struct.reg_default { i32 62, i32 0 }, %struct.reg_default { i32 63, i32 0 }, %struct.reg_default { i32 64, i32 0 }, %struct.reg_default { i32 65, i32 0 }, %struct.reg_default { i32 66, i32 0 }, %struct.reg_default { i32 67, i32 0 }, %struct.reg_default { i32 68, i32 6 }, %struct.reg_default { i32 69, i32 0 }, %struct.reg_default { i32 70, i32 0 }, %struct.reg_default { i32 71, i32 0 }, %struct.reg_default { i32 72, i32 0 }, %struct.reg_default { i32 73, i32 0 }, %struct.reg_default { i32 74, i32 0 }, %struct.reg_default { i32 75, i32 0 }, %struct.reg_default { i32 76, i32 0 }, %struct.reg_default { i32 77, i32 0 }, %struct.reg_default { i32 78, i32 0 }, %struct.reg_default { i32 79, i32 0 }, %struct.reg_default { i32 80, i32 0 }, %struct.reg_default { i32 81, i32 0 }, %struct.reg_default { i32 82, i32 0 }, %struct.reg_default { i32 83, i32 0 }, %struct.reg_default { i32 84, i32 0 }, %struct.reg_default { i32 85, i32 0 }, %struct.reg_default { i32 86, i32 0 }, %struct.reg_default { i32 87, i32 0 }, %struct.reg_default { i32 88, i32 0 }, %struct.reg_default { i32 89, i32 0 }, %struct.reg_default { i32 90, i32 0 }, %struct.reg_default { i32 91, i32 0 }, %struct.reg_default { i32 92, i32 0 }, %struct.reg_default { i32 93, i32 0 }, %struct.reg_default { i32 94, i32 0 }, %struct.reg_default { i32 95, i32 0 }, %struct.reg_default { i32 96, i32 0 }, %struct.reg_default { i32 97, i32 0 }, %struct.reg_default { i32 98, i32 0 }, %struct.reg_default { i32 99, i32 0 }, %struct.reg_default { i32 100, i32 0 }, %struct.reg_default { i32 101, i32 0 }, %struct.reg_default { i32 102, i32 0 }, %struct.reg_default { i32 103, i32 0 }, %struct.reg_default { i32 104, i32 0 }, %struct.reg_default { i32 105, i32 0 }, %struct.reg_default { i32 106, i32 0 }, %struct.reg_default { i32 107, i32 0 }, %struct.reg_default { i32 108, i32 0 }, %struct.reg_default { i32 109, i32 0 }, %struct.reg_default { i32 110, i32 0 }, %struct.reg_default { i32 111, i32 0 }, %struct.reg_default { i32 112, i32 0 }, %struct.reg_default { i32 113, i32 0 }, %struct.reg_default { i32 114, i32 0 }, %struct.reg_default { i32 115, i32 0 }, %struct.reg_default { i32 116, i32 0 }, %struct.reg_default { i32 117, i32 0 }, %struct.reg_default { i32 118, i32 0 }, %struct.reg_default { i32 119, i32 0 }, %struct.reg_default { i32 120, i32 0 }, %struct.reg_default { i32 121, i32 0 }, %struct.reg_default { i32 122, i32 0 }, %struct.reg_default { i32 123, i32 0 }, %struct.reg_default { i32 124, i32 0 }, %struct.reg_default { i32 125, i32 0 }, %struct.reg_default { i32 126, i32 0 }, %struct.reg_default { i32 127, i32 0 }, %struct.reg_default { i32 128, i32 0 }, %struct.reg_default { i32 129, i32 0 }, %struct.reg_default { i32 130, i32 0 }, %struct.reg_default { i32 131, i32 0 }, %struct.reg_default { i32 132, i32 0 }, %struct.reg_default { i32 133, i32 0 }, %struct.reg_default { i32 134, i32 0 }, %struct.reg_default { i32 135, i32 0 }, %struct.reg_default { i32 136, i32 0 }, %struct.reg_default { i32 137, i32 0 }, %struct.reg_default { i32 138, i32 0 }, %struct.reg_default { i32 139, i32 0 }, %struct.reg_default { i32 140, i32 0 }, %struct.reg_default { i32 141, i32 0 }, %struct.reg_default { i32 142, i32 0 }, %struct.reg_default { i32 143, i32 0 }, %struct.reg_default { i32 144, i32 0 }, %struct.reg_default { i32 145, i32 0 }, %struct.reg_default { i32 146, i32 0 }, %struct.reg_default { i32 147, i32 0 }, %struct.reg_default { i32 148, i32 0 }, %struct.reg_default { i32 149, i32 0 }, %struct.reg_default { i32 150, i32 0 }, %struct.reg_default { i32 151, i32 0 }, %struct.reg_default { i32 152, i32 0 }, %struct.reg_default { i32 153, i32 0 }, %struct.reg_default { i32 154, i32 0 }, %struct.reg_default { i32 155, i32 0 }, %struct.reg_default { i32 156, i32 0 }, %struct.reg_default { i32 157, i32 0 }, %struct.reg_default { i32 158, i32 0 }, %struct.reg_default { i32 159, i32 0 }, %struct.reg_default { i32 160, i32 0 }, %struct.reg_default { i32 161, i32 0 }, %struct.reg_default { i32 162, i32 0 }, %struct.reg_default { i32 163, i32 0 }, %struct.reg_default { i32 164, i32 0 }, %struct.reg_default { i32 165, i32 0 }, %struct.reg_default { i32 166, i32 0 }, %struct.reg_default { i32 167, i32 0 }, %struct.reg_default { i32 168, i32 0 }, %struct.reg_default { i32 169, i32 0 }, %struct.reg_default { i32 170, i32 0 }, %struct.reg_default { i32 171, i32 0 }, %struct.reg_default { i32 172, i32 0 }, %struct.reg_default { i32 173, i32 0 }, %struct.reg_default { i32 174, i32 0 }, %struct.reg_default { i32 175, i32 0 }, %struct.reg_default { i32 176, i32 0 }, %struct.reg_default { i32 177, i32 0 }, %struct.reg_default { i32 178, i32 0 }, %struct.reg_default { i32 179, i32 0 }, %struct.reg_default { i32 180, i32 0 }, %struct.reg_default { i32 181, i32 0 }, %struct.reg_default { i32 182, i32 0 }, %struct.reg_default { i32 183, i32 0 }, %struct.reg_default { i32 184, i32 0 }, %struct.reg_default { i32 185, i32 0 }, %struct.reg_default { i32 186, i32 0 }, %struct.reg_default { i32 187, i32 0 }, %struct.reg_default { i32 188, i32 0 }, %struct.reg_default { i32 189, i32 0 }, %struct.reg_default { i32 190, i32 0 }, %struct.reg_default { i32 191, i32 0 }, %struct.reg_default { i32 192, i32 0 }, %struct.reg_default { i32 193, i32 0 }, %struct.reg_default { i32 194, i32 0 }, %struct.reg_default { i32 195, i32 0 }, %struct.reg_default { i32 196, i32 0 }, %struct.reg_default { i32 197, i32 0 }, %struct.reg_default { i32 198, i32 0 }, %struct.reg_default { i32 199, i32 0 }, %struct.reg_default { i32 200, i32 0 }, %struct.reg_default { i32 201, i32 0 }, %struct.reg_default { i32 202, i32 0 }, %struct.reg_default { i32 203, i32 0 }, %struct.reg_default { i32 204, i32 0 }, %struct.reg_default { i32 205, i32 0 }, %struct.reg_default { i32 206, i32 0 }, %struct.reg_default { i32 207, i32 0 }, %struct.reg_default { i32 208, i32 0 }, %struct.reg_default { i32 209, i32 0 }], align 4
@.str.6 = private unnamed_addr constant [43 x i8] c"failed to read M98090_REG_INTERRUPT_S: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"failed to read M98090_REG_DEVICE_STATUS: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"M98090_CLD_MASK\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"M98090_DRCCLP_MASK\0A\00", align 1
@max98090_pll_work._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.max98090_pll_work = private unnamed_addr constant [18 x i8] c"max98090_pll_work\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"PLL unlocked\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"mclk\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"Failed to read device revision: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"MAX98090 REVID=0x%02x\0A\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"MAX98091 REVID=0x%02x\0A\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"Unrecognized revision 0x%02x\0A\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"Mismatch in DT specified CODEC type.\0A\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"maxim,micbias\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"use default 2.8v micbias\0A\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"micbias out of range 0x%x\0A\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"Failed to reset codec: %d\0A\00", align 1
@max98090_snd_controls = internal constant [66 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.21, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @max98090_vcmbandgap_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.22, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.23, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @max98090_get_enab_tlv, ptr @max98090_put_enab_tlv, %union.anon.81 { ptr @max98090_micboost_tlv }, i32 ptrtoint (ptr @.compoundliteral.24 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.25, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @max98090_get_enab_tlv, ptr @max98090_put_enab_tlv, %union.anon.81 { ptr @max98090_micboost_tlv }, i32 ptrtoint (ptr @.compoundliteral.26 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.27, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @max98090_mic_tlv }, i32 ptrtoint (ptr @.compoundliteral.28 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.29, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @max98090_mic_tlv }, i32 ptrtoint (ptr @.compoundliteral.30 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.31, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw_range, ptr @snd_soc_get_volsw_range, ptr @snd_soc_put_volsw_range, %union.anon.81 { ptr @max98090_line_single_ended_tlv }, i32 ptrtoint (ptr @.compoundliteral.32 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.33, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw_range, ptr @snd_soc_get_volsw_range, ptr @snd_soc_put_volsw_range, %union.anon.81 { ptr @max98090_line_single_ended_tlv }, i32 ptrtoint (ptr @.compoundliteral.34 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.35, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw_range, ptr @snd_soc_get_volsw_range, ptr @snd_soc_put_volsw_range, %union.anon.81 { ptr @max98090_line_tlv }, i32 ptrtoint (ptr @.compoundliteral.36 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw_range, ptr @snd_soc_get_volsw_range, ptr @snd_soc_put_volsw_range, %union.anon.81 { ptr @max98090_line_tlv }, i32 ptrtoint (ptr @.compoundliteral.38 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.39, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.40 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.41, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.42 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.43, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @max98090_avg_tlv }, i32 ptrtoint (ptr @.compoundliteral.44 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.45, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @max98090_avg_tlv }, i32 ptrtoint (ptr @.compoundliteral.46 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.47, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @max98090_av_tlv }, i32 ptrtoint (ptr @.compoundliteral.48 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.49, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @max98090_av_tlv }, i32 ptrtoint (ptr @.compoundliteral.50 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.51, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @max98090_osr128_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.52, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.53 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.54, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @max98090_adchp_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.55, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.56 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.57, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.58 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.59, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.60 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.61, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.62 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.63, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @max98090_mode_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.64, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.65 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.66, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.67 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.68, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @max98090_dv_tlv }, i32 ptrtoint (ptr @.compoundliteral.69 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.70, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @max98090_get_enab_tlv, ptr @max98090_put_enab_tlv, %union.anon.81 { ptr @max98090_sdg_tlv }, i32 ptrtoint (ptr @.compoundliteral.71 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.72, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @max98090_dvg_tlv }, i32 ptrtoint (ptr @.compoundliteral.73 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.74, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @max98090_dv_tlv }, i32 ptrtoint (ptr @.compoundliteral.75 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.76, i32 0, i32 0, i32 0, ptr @snd_soc_bytes_info, ptr @snd_soc_bytes_get, ptr @snd_soc_bytes_put, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.77 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.78, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.79 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.80, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.81 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.82, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.83 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.84, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.85 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.86, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @max98090_dv_tlv }, i32 ptrtoint (ptr @.compoundliteral.87 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.88, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.89 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.90, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @max98090_drcatk_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.91, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @max98090_drcrls_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.92, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @max98090_alcmakeup_tlv }, i32 ptrtoint (ptr @.compoundliteral.93 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.94, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @max98090_alccmp_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.95, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @max98090_drcexp_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.96, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @max98090_alccomp_tlv }, i32 ptrtoint (ptr @.compoundliteral.97 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.98, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @max98090_drcexp_tlv }, i32 ptrtoint (ptr @.compoundliteral.99 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.100, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @max98090_dac_perfmode_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.101, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @max98090_dachp_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.102, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @max98090_mixout_tlv }, i32 ptrtoint (ptr @.compoundliteral.103 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.104, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @max98090_mixout_tlv }, i32 ptrtoint (ptr @.compoundliteral.105 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.106, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @max98090_mixout_tlv }, i32 ptrtoint (ptr @.compoundliteral.107 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.108, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @max98090_mixout_tlv }, i32 ptrtoint (ptr @.compoundliteral.109 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.110, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @max98090_mixout_tlv }, i32 ptrtoint (ptr @.compoundliteral.111 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.112, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @max98090_mixout_tlv }, i32 ptrtoint (ptr @.compoundliteral.113 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.114, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @max98090_hp_tlv }, i32 ptrtoint (ptr @.compoundliteral.115 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.116, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw_range, ptr @snd_soc_get_volsw_range, ptr @snd_soc_put_volsw_range, %union.anon.81 { ptr @max98090_spk_tlv }, i32 ptrtoint (ptr @.compoundliteral.117 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.118, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @max98090_rcv_lout_tlv }, i32 ptrtoint (ptr @.compoundliteral.119 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.120, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.121 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.122, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.123 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.124, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.125 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.126, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.127 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.128, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.129 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.130, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.131 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.132, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.133 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.134, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.135 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.136, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.137 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.138, i32 0, i32 0, i32 0, ptr @snd_soc_bytes_info, ptr @snd_soc_bytes_get, ptr @snd_soc_bytes_put, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.139 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.140, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.141 to i32) }], align 4
@max98091_snd_controls = internal constant [10 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.171, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.172 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.173, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @max98090_filter_dmic34mode_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.174, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.175 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.176, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @max98090_avg_tlv }, i32 ptrtoint (ptr @.compoundliteral.177 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.178, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @max98090_avg_tlv }, i32 ptrtoint (ptr @.compoundliteral.179 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.180, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @max98090_av_tlv }, i32 ptrtoint (ptr @.compoundliteral.181 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.182, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @max98090_av_tlv }, i32 ptrtoint (ptr @.compoundliteral.183 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.184, i32 0, i32 0, i32 0, ptr @snd_soc_bytes_info, ptr @snd_soc_bytes_get, ptr @snd_soc_bytes_put, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.185 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.186, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.187 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.188, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @max98090_dv_tlv }, i32 ptrtoint (ptr @.compoundliteral.189 to i32) }], align 4
@max98090_dapm_routes = internal constant [128 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.213, ptr null, ptr @.str.190, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.214, ptr null, ptr @.str.191, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.192, ptr null, ptr @.str.207, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.192, ptr null, ptr @.str.208, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.193, ptr null, ptr @.str.207, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.193, ptr null, ptr @.str.208, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.192, ptr null, ptr @.str.209, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.193, ptr null, ptr @.str.209, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.210, ptr @.str.200, ptr @.str.200, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.210, ptr @.str.202, ptr @.str.202, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.211, ptr @.str.201, ptr @.str.201, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.211, ptr @.str.202, ptr @.str.202, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.213, ptr null, ptr @.str.210, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.214, ptr null, ptr @.str.211, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.219, ptr @.str.277, ptr @.str.200, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.219, ptr @.str.267, ptr @.str.201, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.219, ptr @.str.275, ptr @.str.202, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.219, ptr @.str.281, ptr @.str.217, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.219, ptr @.str.283, ptr @.str.218, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.219, ptr @.str.285, ptr @.str.213, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.219, ptr @.str.287, ptr @.str.214, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.220, ptr @.str.277, ptr @.str.200, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.220, ptr @.str.267, ptr @.str.201, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.220, ptr @.str.275, ptr @.str.202, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.220, ptr @.str.281, ptr @.str.217, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.220, ptr @.str.283, ptr @.str.218, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.220, ptr @.str.285, ptr @.str.213, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.220, ptr @.str.287, ptr @.str.214, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.215, ptr @.str.261, ptr @.str.194, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.215, ptr @.str.263, ptr @.str.196, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.215, ptr @.str.265, ptr @.str.198, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.215, ptr @.str.267, ptr @.str.201, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.216, ptr @.str.269, ptr @.str.195, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.216, ptr @.str.271, ptr @.str.197, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.216, ptr @.str.273, ptr @.str.199, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.216, ptr @.str.275, ptr @.str.202, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.217, ptr null, ptr @.str.215, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.218, ptr null, ptr @.str.216, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.221, ptr null, ptr @.str.219, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.222, ptr null, ptr @.str.220, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.221, ptr null, ptr @.str.204, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.222, ptr null, ptr @.str.204, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.212, ptr @.str.259, ptr @.str.221, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.212, ptr @.str.259, ptr @.str.222, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.212, ptr @.str.260, ptr @.str.192, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.212, ptr @.str.260, ptr @.str.193, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.226, ptr @.str.296, ptr @.str.212, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.226, ptr @.str.297, ptr @.str.228, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.227, ptr @.str.296, ptr @.str.212, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.227, ptr @.str.297, ptr @.str.229, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.223, ptr null, ptr @.str.226, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.225, ptr null, ptr @.str.227, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.223, ptr null, ptr @.str.204, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.225, ptr null, ptr @.str.204, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.223, ptr null, ptr @.str.206, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.225, ptr null, ptr @.str.206, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.228, ptr @.str.296, ptr @.str.232, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.228, ptr @.str.298, ptr @.str.226, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.229, ptr @.str.296, ptr @.str.234, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.229, ptr @.str.298, ptr @.str.227, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.235, ptr null, ptr @.str.228, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.236, ptr null, ptr @.str.229, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.230, ptr @.str.299, ptr @.str.221, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.230, ptr @.str.299, ptr @.str.192, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.231, ptr @.str.300, ptr @.str.222, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.231, ptr @.str.300, ptr @.str.193, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.235, ptr null, ptr @.str.230, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.236, ptr null, ptr @.str.231, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.232, ptr null, ptr @.str.204, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.234, ptr null, ptr @.str.204, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.232, ptr null, ptr @.str.205, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.234, ptr null, ptr @.str.205, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.235, ptr null, ptr @.str.204, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.236, ptr null, ptr @.str.204, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.237, ptr @.str.301, ptr @.str.235, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.237, ptr @.str.303, ptr @.str.236, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.237, ptr @.str.285, ptr @.str.213, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.237, ptr @.str.287, ptr @.str.214, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.237, ptr @.str.281, ptr @.str.217, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.237, ptr @.str.283, ptr @.str.218, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.238, ptr @.str.301, ptr @.str.235, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.238, ptr @.str.303, ptr @.str.236, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.238, ptr @.str.285, ptr @.str.213, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.238, ptr @.str.287, ptr @.str.214, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.238, ptr @.str.281, ptr @.str.217, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.238, ptr @.str.283, ptr @.str.218, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.239, ptr @.str.301, ptr @.str.235, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.239, ptr @.str.303, ptr @.str.236, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.239, ptr @.str.285, ptr @.str.213, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.239, ptr @.str.287, ptr @.str.214, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.239, ptr @.str.281, ptr @.str.217, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.239, ptr @.str.283, ptr @.str.218, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.240, ptr @.str.301, ptr @.str.235, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.240, ptr @.str.303, ptr @.str.236, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.240, ptr @.str.285, ptr @.str.213, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.240, ptr @.str.287, ptr @.str.214, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.240, ptr @.str.281, ptr @.str.217, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.240, ptr @.str.283, ptr @.str.218, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.241, ptr @.str.301, ptr @.str.235, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.241, ptr @.str.303, ptr @.str.236, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.241, ptr @.str.285, ptr @.str.213, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.241, ptr @.str.287, ptr @.str.214, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.241, ptr @.str.281, ptr @.str.217, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.241, ptr @.str.283, ptr @.str.218, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.242, ptr @.str.301, ptr @.str.235, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.242, ptr @.str.303, ptr @.str.236, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.242, ptr @.str.285, ptr @.str.213, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.242, ptr @.str.287, ptr @.str.214, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.242, ptr @.str.281, ptr @.str.217, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.242, ptr @.str.283, ptr @.str.218, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.244, ptr @.str.342, ptr @.str.237, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.246, ptr null, ptr @.str.235, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.246, ptr null, ptr @.str.244, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.245, ptr @.str.342, ptr @.str.238, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.247, ptr null, ptr @.str.236, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.247, ptr null, ptr @.str.245, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.248, ptr null, ptr @.str.239, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.249, ptr null, ptr @.str.240, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.250, ptr null, ptr @.str.241, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.243, ptr @.str.340, ptr @.str.242, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.243, ptr @.str.339, ptr @.str.241, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.251, ptr null, ptr @.str.243, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.252, ptr null, ptr @.str.246, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.253, ptr null, ptr @.str.247, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.254, ptr null, ptr @.str.248, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.255, ptr null, ptr @.str.249, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.256, ptr null, ptr @.str.250, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.257, ptr null, ptr @.str.251, ptr null, %struct.snd_soc_dobj zeroinitializer }], align 4
@max98091_dapm_routes = internal constant [4 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.343, ptr null, ptr @.str.345, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.344, ptr null, ptr @.str.346, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.343, ptr null, ptr @.str.209, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.344, ptr null, ptr @.str.209, ptr null, %struct.snd_soc_dobj zeroinitializer }], align 4
@.str.21 = private unnamed_addr constant [21 x i8] c"MIC Bias VCM Bandgap\00", align 1
@max98090_vcmbandgap_enum = internal constant %struct.soc_enum { i32 66, i8 0, i8 0, i32 2, i32 1, ptr @max98090_pwr_perf_text, ptr null, i8 0 }, align 4
@.str.22 = private unnamed_addr constant [28 x i8] c"DMIC MIC Comp Filter Config\00", align 1
@.compoundliteral = internal global %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 20, i32 20, i32 4, i32 4, i32 0, i8 0 }, align 4
@.str.23 = private unnamed_addr constant [18 x i8] c"MIC1 Boost Volume\00", align 1
@max98090_micboost_tlv = internal constant [14 x i32] [i32 3, i32 48, i32 0, i32 1, i32 1, i32 8, i32 0, i32 2000, i32 2, i32 2, i32 1, i32 8, i32 3000, i32 0], align 4
@.compoundliteral.24 = internal global %struct.soc_mixer_control { i32 0, i32 2, i32 2, i32 16, i32 16, i32 5, i32 5, i32 0, i8 0 }, align 4
@.str.25 = private unnamed_addr constant [18 x i8] c"MIC2 Boost Volume\00", align 1
@.compoundliteral.26 = internal global %struct.soc_mixer_control { i32 0, i32 2, i32 2, i32 17, i32 17, i32 5, i32 5, i32 0, i8 0 }, align 4
@.str.27 = private unnamed_addr constant [12 x i8] c"MIC1 Volume\00", align 1
@max98090_mic_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 0, i32 100], align 4
@.compoundliteral.28 = internal global %struct.soc_mixer_control { i32 0, i32 20, i32 20, i32 16, i32 16, i32 0, i32 0, i32 0, i8 1 }, align 4
@.str.29 = private unnamed_addr constant [12 x i8] c"MIC2 Volume\00", align 1
@.compoundliteral.30 = internal global %struct.soc_mixer_control { i32 0, i32 20, i32 20, i32 17, i32 17, i32 0, i32 0, i32 0, i8 1 }, align 4
@.str.31 = private unnamed_addr constant [26 x i8] c"LINEA Single Ended Volume\00", align 1
@max98090_line_single_ended_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 -600, i32 600], align 4
@.compoundliteral.32 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14, i32 14, i32 7, i32 7, i32 0, i8 1 }, align 4
@.str.33 = private unnamed_addr constant [26 x i8] c"LINEB Single Ended Volume\00", align 1
@.compoundliteral.34 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14, i32 14, i32 6, i32 6, i32 0, i8 1 }, align 4
@.str.35 = private unnamed_addr constant [13 x i8] c"LINEA Volume\00", align 1
@max98090_line_tlv = internal constant [14 x i32] [i32 3, i32 48, i32 0, i32 3, i32 1, i32 8, i32 -600, i32 300, i32 4, i32 5, i32 1, i32 8, i32 1400, i32 600], align 4
@.compoundliteral.36 = internal global %struct.soc_mixer_control { i32 0, i32 5, i32 5, i32 14, i32 14, i32 3, i32 3, i32 0, i8 1 }, align 4
@.str.37 = private unnamed_addr constant [13 x i8] c"LINEB Volume\00", align 1
@.compoundliteral.38 = internal global %struct.soc_mixer_control { i32 0, i32 5, i32 5, i32 14, i32 14, i32 0, i32 0, i32 0, i8 1 }, align 4
@.str.39 = private unnamed_addr constant [29 x i8] c"LINEA Ext Resistor Gain Mode\00", align 1
@.compoundliteral.40 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 15, i32 15, i32 7, i32 7, i32 0, i8 0 }, align 4
@.str.41 = private unnamed_addr constant [29 x i8] c"LINEB Ext Resistor Gain Mode\00", align 1
@.compoundliteral.42 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 15, i32 15, i32 6, i32 6, i32 0, i8 0 }, align 4
@.str.43 = private unnamed_addr constant [18 x i8] c"ADCL Boost Volume\00", align 1
@max98090_avg_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 0, i32 600], align 4
@.compoundliteral.44 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 23, i32 23, i32 4, i32 4, i32 0, i8 0 }, align 4
@.str.45 = private unnamed_addr constant [18 x i8] c"ADCR Boost Volume\00", align 1
@.compoundliteral.46 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 24, i32 24, i32 4, i32 4, i32 0, i8 0 }, align 4
@.str.47 = private unnamed_addr constant [12 x i8] c"ADCL Volume\00", align 1
@max98090_av_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 -1200, i32 100], align 4
@.compoundliteral.48 = internal global %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 23, i32 23, i32 0, i32 0, i32 0, i8 1 }, align 4
@.str.49 = private unnamed_addr constant [12 x i8] c"ADCR Volume\00", align 1
@.compoundliteral.50 = internal global %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 24, i32 24, i32 0, i32 0, i32 0, i8 1 }, align 4
@.str.51 = private unnamed_addr constant [22 x i8] c"ADC Oversampling Rate\00", align 1
@max98090_osr128_enum = internal constant %struct.soc_enum { i32 68, i8 2, i8 2, i32 2, i32 1, ptr @max98090_osr128_text, ptr null, i8 0 }, align 4
@.str.52 = private unnamed_addr constant [21 x i8] c"ADC Quantizer Dither\00", align 1
@.compoundliteral.53 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 68, i32 68, i32 1, i32 1, i32 0, i8 0 }, align 4
@.str.54 = private unnamed_addr constant [26 x i8] c"ADC High Performance Mode\00", align 1
@max98090_adchp_enum = internal constant %struct.soc_enum { i32 68, i8 0, i8 0, i32 2, i32 1, ptr @max98090_pwr_perf_text, ptr null, i8 0 }, align 4
@.str.55 = private unnamed_addr constant [14 x i8] c"DAC Mono Mode\00", align 1
@.compoundliteral.56 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 37, i32 37, i32 3, i32 3, i32 0, i8 0 }, align 4
@.str.57 = private unnamed_addr constant [10 x i8] c"SDIN Mode\00", align 1
@.compoundliteral.58 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 37, i32 37, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.59 = private unnamed_addr constant [11 x i8] c"SDOUT Mode\00", align 1
@.compoundliteral.60 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 37, i32 37, i32 1, i32 1, i32 0, i8 0 }, align 4
@.str.61 = private unnamed_addr constant [16 x i8] c"SDOUT Hi-Z Mode\00", align 1
@.compoundliteral.62 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 37, i32 37, i32 2, i32 2, i32 0, i8 1 }, align 4
@.str.63 = private unnamed_addr constant [12 x i8] c"Filter Mode\00", align 1
@max98090_mode_enum = internal constant %struct.soc_enum { i32 38, i8 7, i8 7, i32 2, i32 1, ptr @max98090_mode_text, ptr null, i8 0 }, align 4
@.str.64 = private unnamed_addr constant [24 x i8] c"Record Path DC Blocking\00", align 1
@.compoundliteral.65 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 38, i32 38, i32 6, i32 6, i32 0, i8 0 }, align 4
@.str.66 = private unnamed_addr constant [26 x i8] c"Playback Path DC Blocking\00", align 1
@.compoundliteral.67 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 38, i32 38, i32 5, i32 5, i32 0, i8 0 }, align 4
@.str.68 = private unnamed_addr constant [18 x i8] c"Digital BQ Volume\00", align 1
@max98090_dv_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 -1500, i32 100], align 4
@.compoundliteral.69 = internal global %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 25, i32 25, i32 0, i32 0, i32 0, i8 1 }, align 4
@.str.70 = private unnamed_addr constant [24 x i8] c"Digital Sidetone Volume\00", align 1
@max98090_sdg_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 50, i32 200], align 4
@.compoundliteral.71 = internal global %struct.soc_mixer_control { i32 0, i32 30, i32 30, i32 26, i32 26, i32 0, i32 0, i32 0, i8 1 }, align 4
@.str.72 = private unnamed_addr constant [22 x i8] c"Digital Coarse Volume\00", align 1
@max98090_dvg_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 0, i32 600], align 4
@.compoundliteral.73 = internal global %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 39, i32 39, i32 4, i32 4, i32 0, i8 0 }, align 4
@.str.74 = private unnamed_addr constant [15 x i8] c"Digital Volume\00", align 1
@.compoundliteral.75 = internal global %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 39, i32 39, i32 0, i32 0, i32 0, i8 1 }, align 4
@.str.76 = private unnamed_addr constant [16 x i8] c"EQ Coefficients\00", align 1
@.compoundliteral.77 = internal global %struct.soc_bytes { i32 70, i32 105, i32 0 }, align 4
@.str.78 = private unnamed_addr constant [25 x i8] c"Digital EQ 3 Band Switch\00", align 1
@.compoundliteral.79 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 65, i32 65, i32 2, i32 2, i32 0, i8 0 }, align 4
@.str.80 = private unnamed_addr constant [25 x i8] c"Digital EQ 5 Band Switch\00", align 1
@.compoundliteral.81 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 65, i32 65, i32 1, i32 1, i32 0, i8 0 }, align 4
@.str.82 = private unnamed_addr constant [25 x i8] c"Digital EQ 7 Band Switch\00", align 1
@.compoundliteral.83 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 65, i32 65, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.84 = private unnamed_addr constant [30 x i8] c"Digital EQ Clipping Detection\00", align 1
@.compoundliteral.85 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 4, i32 4, i32 0, i8 1 }, align 4
@.str.86 = private unnamed_addr constant [18 x i8] c"Digital EQ Volume\00", align 1
@.compoundliteral.87 = internal global %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 40, i32 40, i32 0, i32 0, i32 0, i8 1 }, align 4
@.str.88 = private unnamed_addr constant [11 x i8] c"ALC Enable\00", align 1
@.compoundliteral.89 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 51, i32 51, i32 7, i32 7, i32 0, i8 0 }, align 4
@.str.90 = private unnamed_addr constant [16 x i8] c"ALC Attack Time\00", align 1
@max98090_drcatk_enum = internal constant %struct.soc_enum { i32 51, i8 0, i8 0, i32 8, i32 7, ptr @max98090_drcatk_text, ptr null, i8 0 }, align 4
@.str.91 = private unnamed_addr constant [17 x i8] c"ALC Release Time\00", align 1
@max98090_drcrls_enum = internal constant %struct.soc_enum { i32 51, i8 4, i8 4, i32 8, i32 7, ptr @max98090_drcrls_text, ptr null, i8 0 }, align 4
@.str.92 = private unnamed_addr constant [19 x i8] c"ALC Make Up Volume\00", align 1
@max98090_alcmakeup_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 0, i32 100], align 4
@.compoundliteral.93 = internal global %struct.soc_mixer_control { i32 0, i32 12, i32 12, i32 54, i32 54, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.94 = private unnamed_addr constant [22 x i8] c"ALC Compression Ratio\00", align 1
@max98090_alccmp_enum = internal constant %struct.soc_enum { i32 52, i8 5, i8 5, i32 5, i32 7, ptr @max98090_alccmp_text, ptr null, i8 0 }, align 4
@.str.95 = private unnamed_addr constant [20 x i8] c"ALC Expansion Ratio\00", align 1
@max98090_drcexp_enum = internal constant %struct.soc_enum { i32 53, i8 5, i8 5, i32 3, i32 3, ptr @max98090_drcexp_text, ptr null, i8 0 }, align 4
@.str.96 = private unnamed_addr constant [33 x i8] c"ALC Compression Threshold Volume\00", align 1
@max98090_alccomp_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 -3100, i32 100], align 4
@.compoundliteral.97 = internal global %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 52, i32 52, i32 0, i32 0, i32 0, i8 1 }, align 4
@.str.98 = private unnamed_addr constant [31 x i8] c"ALC Expansion Threshold Volume\00", align 1
@max98090_drcexp_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 -6600, i32 100], align 4
@.compoundliteral.99 = internal global %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 53, i32 53, i32 0, i32 0, i32 0, i8 1 }, align 4
@.str.100 = private unnamed_addr constant [33 x i8] c"DAC HP Playback Performance Mode\00", align 1
@max98090_dac_perfmode_enum = internal constant %struct.soc_enum { i32 67, i8 1, i8 1, i32 2, i32 1, ptr @max98090_perf_pwr_text, ptr null, i8 0 }, align 4
@.str.101 = private unnamed_addr constant [26 x i8] c"DAC High Performance Mode\00", align 1
@max98090_dachp_enum = internal constant %struct.soc_enum { i32 67, i8 0, i8 0, i32 2, i32 1, ptr @max98090_pwr_perf_text, ptr null, i8 0 }, align 4
@.str.102 = private unnamed_addr constant [28 x i8] c"Headphone Left Mixer Volume\00", align 1
@max98090_mixout_tlv = internal constant [14 x i32] [i32 3, i32 48, i32 0, i32 1, i32 1, i32 8, i32 -1200, i32 250, i32 2, i32 3, i32 1, i32 8, i32 -600, i32 600], align 4
@.compoundliteral.103 = internal global %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 43, i32 43, i32 0, i32 0, i32 0, i8 1 }, align 4
@.str.104 = private unnamed_addr constant [29 x i8] c"Headphone Right Mixer Volume\00", align 1
@.compoundliteral.105 = internal global %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 43, i32 43, i32 2, i32 2, i32 0, i8 1 }, align 4
@.str.106 = private unnamed_addr constant [26 x i8] c"Speaker Left Mixer Volume\00", align 1
@.compoundliteral.107 = internal global %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 48, i32 48, i32 0, i32 0, i32 0, i8 1 }, align 4
@.str.108 = private unnamed_addr constant [27 x i8] c"Speaker Right Mixer Volume\00", align 1
@.compoundliteral.109 = internal global %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 48, i32 48, i32 2, i32 2, i32 0, i8 1 }, align 4
@.str.110 = private unnamed_addr constant [27 x i8] c"Receiver Left Mixer Volume\00", align 1
@.compoundliteral.111 = internal global %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 56, i32 56, i32 0, i32 0, i32 0, i8 1 }, align 4
@.str.112 = private unnamed_addr constant [28 x i8] c"Receiver Right Mixer Volume\00", align 1
@.compoundliteral.113 = internal global %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 59, i32 59, i32 0, i32 0, i32 0, i8 1 }, align 4
@.str.114 = private unnamed_addr constant [17 x i8] c"Headphone Volume\00", align 1
@max98090_hp_tlv = internal constant [32 x i32] [i32 3, i32 120, i32 0, i32 6, i32 1, i32 8, i32 -6700, i32 400, i32 7, i32 14, i32 1, i32 8, i32 -4000, i32 300, i32 15, i32 21, i32 1, i32 8, i32 -1700, i32 200, i32 22, i32 27, i32 1, i32 8, i32 -400, i32 100, i32 28, i32 31, i32 1, i32 8, i32 150, i32 50], align 4
@.compoundliteral.115 = internal global %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 44, i32 45, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.116 = private unnamed_addr constant [15 x i8] c"Speaker Volume\00", align 1
@max98090_spk_tlv = internal constant [32 x i32] [i32 3, i32 120, i32 0, i32 4, i32 1, i32 8, i32 -4800, i32 400, i32 5, i32 10, i32 1, i32 8, i32 -2900, i32 300, i32 11, i32 14, i32 1, i32 8, i32 -1200, i32 200, i32 15, i32 29, i32 1, i32 8, i32 -500, i32 100, i32 30, i32 39, i32 1, i32 8, i32 950, i32 50], align 4
@.compoundliteral.117 = internal global %struct.soc_mixer_control { i32 24, i32 63, i32 63, i32 49, i32 50, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.118 = private unnamed_addr constant [16 x i8] c"Receiver Volume\00", align 1
@max98090_rcv_lout_tlv = internal constant [32 x i32] [i32 3, i32 120, i32 0, i32 6, i32 1, i32 8, i32 -6200, i32 400, i32 7, i32 14, i32 1, i32 8, i32 -3500, i32 300, i32 15, i32 21, i32 1, i32 8, i32 -1200, i32 200, i32 22, i32 27, i32 1, i32 8, i32 100, i32 100, i32 28, i32 31, i32 1, i32 8, i32 650, i32 50], align 4
@.compoundliteral.119 = internal global %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 57, i32 60, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.120 = private unnamed_addr constant [22 x i8] c"Headphone Left Switch\00", align 1
@.compoundliteral.121 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 7, i32 7, i32 0, i8 1 }, align 4
@.str.122 = private unnamed_addr constant [23 x i8] c"Headphone Right Switch\00", align 1
@.compoundliteral.123 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 45, i32 45, i32 7, i32 7, i32 0, i8 1 }, align 4
@.str.124 = private unnamed_addr constant [20 x i8] c"Speaker Left Switch\00", align 1
@.compoundliteral.125 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 49, i32 49, i32 7, i32 7, i32 0, i8 1 }, align 4
@.str.126 = private unnamed_addr constant [21 x i8] c"Speaker Right Switch\00", align 1
@.compoundliteral.127 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 50, i32 50, i32 7, i32 7, i32 0, i8 1 }, align 4
@.str.128 = private unnamed_addr constant [21 x i8] c"Receiver Left Switch\00", align 1
@.compoundliteral.129 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 57, i32 57, i32 7, i32 7, i32 0, i8 1 }, align 4
@.str.130 = private unnamed_addr constant [22 x i8] c"Receiver Right Switch\00", align 1
@.compoundliteral.131 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 60, i32 60, i32 7, i32 7, i32 0, i8 1 }, align 4
@.str.132 = private unnamed_addr constant [24 x i8] c"Zero-Crossing Detection\00", align 1
@.compoundliteral.133 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 64, i32 64, i32 2, i32 2, i32 0, i8 1 }, align 4
@.str.134 = private unnamed_addr constant [23 x i8] c"Enhanced Vol Smoothing\00", align 1
@.compoundliteral.135 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 64, i32 64, i32 1, i32 1, i32 0, i8 1 }, align 4
@.str.136 = private unnamed_addr constant [28 x i8] c"Volume Adjustment Smoothing\00", align 1
@.compoundliteral.137 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 64, i32 64, i32 0, i32 0, i32 0, i8 1 }, align 4
@.str.138 = private unnamed_addr constant [20 x i8] c"Biquad Coefficients\00", align 1
@.compoundliteral.139 = internal global %struct.soc_bytes { i32 175, i32 15, i32 0 }, align 4
@.str.140 = private unnamed_addr constant [14 x i8] c"Biquad Switch\00", align 1
@.compoundliteral.141 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 65, i32 65, i32 3, i32 3, i32 0, i8 0 }, align 4
@max98090_pwr_perf_text = internal global [2 x ptr] [ptr @.str.142, ptr @.str.143], align 4
@.str.142 = private unnamed_addr constant [10 x i8] c"Low Power\00", align 1
@.str.143 = private unnamed_addr constant [17 x i8] c"High Performance\00", align 1
@max98090_osr128_text = internal global [2 x ptr] [ptr @.str.144, ptr @.str.145], align 4
@.str.144 = private unnamed_addr constant [6 x i8] c"64*fs\00", align 1
@.str.145 = private unnamed_addr constant [7 x i8] c"128*fs\00", align 1
@max98090_mode_text = internal global [2 x ptr] [ptr @.str.146, ptr @.str.147], align 4
@.str.146 = private unnamed_addr constant [6 x i8] c"Voice\00", align 1
@.str.147 = private unnamed_addr constant [6 x i8] c"Music\00", align 1
@max98090_drcatk_text = internal global [8 x ptr] [ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155], align 4
@.str.148 = private unnamed_addr constant [6 x i8] c"0.5ms\00", align 1
@.str.149 = private unnamed_addr constant [4 x i8] c"1ms\00", align 1
@.str.150 = private unnamed_addr constant [4 x i8] c"5ms\00", align 1
@.str.151 = private unnamed_addr constant [5 x i8] c"10ms\00", align 1
@.str.152 = private unnamed_addr constant [5 x i8] c"25ms\00", align 1
@.str.153 = private unnamed_addr constant [5 x i8] c"50ms\00", align 1
@.str.154 = private unnamed_addr constant [6 x i8] c"100ms\00", align 1
@.str.155 = private unnamed_addr constant [6 x i8] c"200ms\00", align 1
@max98090_drcrls_text = internal global [8 x ptr] [ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163], align 4
@.str.156 = private unnamed_addr constant [3 x i8] c"8s\00", align 1
@.str.157 = private unnamed_addr constant [3 x i8] c"4s\00", align 1
@.str.158 = private unnamed_addr constant [3 x i8] c"2s\00", align 1
@.str.159 = private unnamed_addr constant [3 x i8] c"1s\00", align 1
@.str.160 = private unnamed_addr constant [5 x i8] c"0.5s\00", align 1
@.str.161 = private unnamed_addr constant [6 x i8] c"0.25s\00", align 1
@.str.162 = private unnamed_addr constant [7 x i8] c"0.125s\00", align 1
@.str.163 = private unnamed_addr constant [8 x i8] c"0.0625s\00", align 1
@max98090_alccmp_text = internal global [5 x ptr] [ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168], align 4
@.str.164 = private unnamed_addr constant [4 x i8] c"1:1\00", align 1
@.str.165 = private unnamed_addr constant [6 x i8] c"1:1.5\00", align 1
@.str.166 = private unnamed_addr constant [4 x i8] c"1:2\00", align 1
@.str.167 = private unnamed_addr constant [4 x i8] c"1:4\00", align 1
@.str.168 = private unnamed_addr constant [6 x i8] c"1:INF\00", align 1
@max98090_drcexp_text = internal global [3 x ptr] [ptr @.str.164, ptr @.str.169, ptr @.str.170], align 4
@.str.169 = private unnamed_addr constant [4 x i8] c"2:1\00", align 1
@.str.170 = private unnamed_addr constant [4 x i8] c"3:1\00", align 1
@max98090_perf_pwr_text = internal global [2 x ptr] [ptr @.str.143, ptr @.str.142], align 4
@.str.171 = private unnamed_addr constant [15 x i8] c"DMIC34 Zeropad\00", align 1
@.compoundliteral.172 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 194, i32 194, i32 4, i32 4, i32 0, i8 0 }, align 4
@.str.173 = private unnamed_addr constant [19 x i8] c"Filter DMIC34 Mode\00", align 1
@max98090_filter_dmic34mode_enum = internal constant %struct.soc_enum { i32 38, i8 3, i8 3, i32 2, i32 1, ptr @max98090_mode_text, ptr null, i8 0 }, align 4
@.str.174 = private unnamed_addr constant [19 x i8] c"DMIC34 DC Blocking\00", align 1
@.compoundliteral.175 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 38, i32 38, i32 2, i32 2, i32 0, i8 0 }, align 4
@.str.176 = private unnamed_addr constant [19 x i8] c"DMIC3 Boost Volume\00", align 1
@.compoundliteral.177 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 190, i32 190, i32 4, i32 4, i32 0, i8 0 }, align 4
@.str.178 = private unnamed_addr constant [19 x i8] c"DMIC4 Boost Volume\00", align 1
@.compoundliteral.179 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 191, i32 191, i32 4, i32 4, i32 0, i8 0 }, align 4
@.str.180 = private unnamed_addr constant [13 x i8] c"DMIC3 Volume\00", align 1
@.compoundliteral.181 = internal global %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 190, i32 190, i32 0, i32 0, i32 0, i8 1 }, align 4
@.str.182 = private unnamed_addr constant [13 x i8] c"DMIC4 Volume\00", align 1
@.compoundliteral.183 = internal global %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 191, i32 191, i32 0, i32 0, i32 0, i8 1 }, align 4
@.str.184 = private unnamed_addr constant [27 x i8] c"DMIC34 Biquad Coefficients\00", align 1
@.compoundliteral.185 = internal global %struct.soc_bytes { i32 195, i32 15, i32 0 }, align 4
@.str.186 = private unnamed_addr constant [21 x i8] c"DMIC34 Biquad Switch\00", align 1
@.compoundliteral.187 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 65, i32 65, i32 4, i32 4, i32 0, i8 0 }, align 4
@.str.188 = private unnamed_addr constant [32 x i8] c"DMIC34 BQ PreAttenuation Volume\00", align 1
@.compoundliteral.189 = internal global %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 192, i32 192, i32 0, i32 0, i32 0, i8 1 }, align 4
@.str.190 = private unnamed_addr constant [5 x i8] c"MIC1\00", align 1
@.str.191 = private unnamed_addr constant [5 x i8] c"MIC2\00", align 1
@.str.192 = private unnamed_addr constant [6 x i8] c"DMICL\00", align 1
@.str.193 = private unnamed_addr constant [6 x i8] c"DMICR\00", align 1
@.str.194 = private unnamed_addr constant [4 x i8] c"IN1\00", align 1
@.str.195 = private unnamed_addr constant [4 x i8] c"IN2\00", align 1
@.str.196 = private unnamed_addr constant [4 x i8] c"IN3\00", align 1
@.str.197 = private unnamed_addr constant [4 x i8] c"IN4\00", align 1
@.str.198 = private unnamed_addr constant [4 x i8] c"IN5\00", align 1
@.str.199 = private unnamed_addr constant [4 x i8] c"IN6\00", align 1
@.str.200 = private unnamed_addr constant [5 x i8] c"IN12\00", align 1
@.str.201 = private unnamed_addr constant [5 x i8] c"IN34\00", align 1
@.str.202 = private unnamed_addr constant [5 x i8] c"IN56\00", align 1
@.str.203 = private unnamed_addr constant [8 x i8] c"MICBIAS\00", align 1
@.str.204 = private unnamed_addr constant [5 x i8] c"SHDN\00", align 1
@.str.205 = private unnamed_addr constant [6 x i8] c"SDIEN\00", align 1
@.str.206 = private unnamed_addr constant [6 x i8] c"SDOEN\00", align 1
@.str.207 = private unnamed_addr constant [10 x i8] c"DMICL_ENA\00", align 1
@.str.208 = private unnamed_addr constant [10 x i8] c"DMICR_ENA\00", align 1
@.str.209 = private unnamed_addr constant [5 x i8] c"AHPF\00", align 1
@.str.210 = private unnamed_addr constant [9 x i8] c"MIC1 Mux\00", align 1
@max98090_mic1_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.210, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @mic1_mux_enum to i32) }, align 4
@.str.211 = private unnamed_addr constant [9 x i8] c"MIC2 Mux\00", align 1
@max98090_mic2_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.211, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @mic2_mux_enum to i32) }, align 4
@.str.212 = private unnamed_addr constant [9 x i8] c"DMIC Mux\00", align 1
@max98090_dmic_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.212, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @dmic_mux_enum to i32) }, align 4
@.str.213 = private unnamed_addr constant [11 x i8] c"MIC1 Input\00", align 1
@.str.214 = private unnamed_addr constant [11 x i8] c"MIC2 Input\00", align 1
@.str.215 = private unnamed_addr constant [12 x i8] c"LINEA Mixer\00", align 1
@max98090_linea_mixer_controls = internal constant [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.261, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.262 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.263, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.264 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.265, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.266 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.267, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.268 to i32) }], align 4
@.str.216 = private unnamed_addr constant [12 x i8] c"LINEB Mixer\00", align 1
@max98090_lineb_mixer_controls = internal constant [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.269, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.270 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.271, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.272 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.273, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.274 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.275, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.276 to i32) }], align 4
@.str.217 = private unnamed_addr constant [12 x i8] c"LINEA Input\00", align 1
@.str.218 = private unnamed_addr constant [12 x i8] c"LINEB Input\00", align 1
@.str.219 = private unnamed_addr constant [15 x i8] c"Left ADC Mixer\00", align 1
@max98090_left_adc_mixer_controls = internal constant [7 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.277, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.278 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.267, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.279 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.275, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.280 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.281, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.282 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.283, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.284 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.285, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.286 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.287, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.288 to i32) }], align 4
@.str.220 = private unnamed_addr constant [16 x i8] c"Right ADC Mixer\00", align 1
@max98090_right_adc_mixer_controls = internal constant [7 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.277, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.289 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.267, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.290 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.275, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.291 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.281, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.292 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.283, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.293 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.285, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.294 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.287, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.295 to i32) }], align 4
@.str.221 = private unnamed_addr constant [5 x i8] c"ADCL\00", align 1
@.str.222 = private unnamed_addr constant [5 x i8] c"ADCR\00", align 1
@.str.223 = private unnamed_addr constant [8 x i8] c"AIFOUTL\00", align 1
@.str.224 = private unnamed_addr constant [13 x i8] c"HiFi Capture\00", align 1
@.str.225 = private unnamed_addr constant [8 x i8] c"AIFOUTR\00", align 1
@.str.226 = private unnamed_addr constant [10 x i8] c"LBENL Mux\00", align 1
@max98090_lbenl_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.226, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @lbenl_mux_enum to i32) }, align 4
@.str.227 = private unnamed_addr constant [10 x i8] c"LBENR Mux\00", align 1
@max98090_lbenr_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.227, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @lbenr_mux_enum to i32) }, align 4
@.str.228 = private unnamed_addr constant [10 x i8] c"LTENL Mux\00", align 1
@max98090_ltenl_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.228, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @ltenl_mux_enum to i32) }, align 4
@.str.229 = private unnamed_addr constant [10 x i8] c"LTENR Mux\00", align 1
@max98090_ltenr_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.229, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @ltenr_mux_enum to i32) }, align 4
@.str.230 = private unnamed_addr constant [10 x i8] c"STENL Mux\00", align 1
@max98090_stenl_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.230, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @stenl_mux_enum to i32) }, align 4
@.str.231 = private unnamed_addr constant [10 x i8] c"STENR Mux\00", align 1
@max98090_stenr_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.231, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @stenr_mux_enum to i32) }, align 4
@.str.232 = private unnamed_addr constant [7 x i8] c"AIFINL\00", align 1
@.str.233 = private unnamed_addr constant [14 x i8] c"HiFi Playback\00", align 1
@.str.234 = private unnamed_addr constant [7 x i8] c"AIFINR\00", align 1
@.str.235 = private unnamed_addr constant [5 x i8] c"DACL\00", align 1
@.str.236 = private unnamed_addr constant [5 x i8] c"DACR\00", align 1
@.str.237 = private unnamed_addr constant [21 x i8] c"Left Headphone Mixer\00", align 1
@max98090_left_hp_mixer_controls = internal constant [6 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.301, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.302 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.303, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.304 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.281, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.305 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.283, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.306 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.285, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.307 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.287, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.308 to i32) }], align 4
@.str.238 = private unnamed_addr constant [22 x i8] c"Right Headphone Mixer\00", align 1
@max98090_right_hp_mixer_controls = internal constant [6 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.301, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.309 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.303, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.310 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.281, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.311 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.283, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.312 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.285, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.313 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.287, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.314 to i32) }], align 4
@.str.239 = private unnamed_addr constant [19 x i8] c"Left Speaker Mixer\00", align 1
@max98090_left_speaker_mixer_controls = internal constant [6 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.301, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.315 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.303, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.316 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.281, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.317 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.283, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.318 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.285, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.319 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.287, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.320 to i32) }], align 4
@.str.240 = private unnamed_addr constant [20 x i8] c"Right Speaker Mixer\00", align 1
@max98090_right_speaker_mixer_controls = internal constant [6 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.301, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.321 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.303, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.322 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.281, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.323 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.283, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.324 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.285, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.325 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.287, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.326 to i32) }], align 4
@.str.241 = private unnamed_addr constant [20 x i8] c"Left Receiver Mixer\00", align 1
@max98090_left_rcv_mixer_controls = internal constant [6 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.301, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.327 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.303, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.328 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.281, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.329 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.283, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.330 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.285, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.331 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.287, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.332 to i32) }], align 4
@.str.242 = private unnamed_addr constant [21 x i8] c"Right Receiver Mixer\00", align 1
@max98090_right_rcv_mixer_controls = internal constant [6 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.301, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.333 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.303, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.334 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.281, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.335 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.283, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.336 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.285, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.337 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.287, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.338 to i32) }], align 4
@.str.243 = private unnamed_addr constant [11 x i8] c"LINMOD Mux\00", align 1
@max98090_linmod_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.243, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @linmod_mux_enum to i32) }, align 4
@.str.244 = private unnamed_addr constant [14 x i8] c"MIXHPLSEL Mux\00", align 1
@max98090_mixhplsel_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.244, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @mixhplsel_mux_enum to i32) }, align 4
@.str.245 = private unnamed_addr constant [14 x i8] c"MIXHPRSEL Mux\00", align 1
@max98090_mixhprsel_mux = internal constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.245, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @mixhprsel_mux_enum to i32) }, align 4
@.str.246 = private unnamed_addr constant [12 x i8] c"HP Left Out\00", align 1
@.str.247 = private unnamed_addr constant [13 x i8] c"HP Right Out\00", align 1
@.str.248 = private unnamed_addr constant [13 x i8] c"SPK Left Out\00", align 1
@.str.249 = private unnamed_addr constant [14 x i8] c"SPK Right Out\00", align 1
@.str.250 = private unnamed_addr constant [13 x i8] c"RCV Left Out\00", align 1
@.str.251 = private unnamed_addr constant [14 x i8] c"RCV Right Out\00", align 1
@.str.252 = private unnamed_addr constant [4 x i8] c"HPL\00", align 1
@.str.253 = private unnamed_addr constant [4 x i8] c"HPR\00", align 1
@.str.254 = private unnamed_addr constant [5 x i8] c"SPKL\00", align 1
@.str.255 = private unnamed_addr constant [5 x i8] c"SPKR\00", align 1
@.str.256 = private unnamed_addr constant [5 x i8] c"RCVL\00", align 1
@.str.257 = private unnamed_addr constant [5 x i8] c"RCVR\00", align 1
@max98090_dapm_widgets = internal constant [66 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.190, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.191, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.192, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.193, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.194, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.195, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.196, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.197, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.198, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.199, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.200, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.201, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.202, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.203, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 62, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.204, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 69, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.205, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 37, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.206, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 37, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.207, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 19, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 2, ptr @max98090_shdn_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.208, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 19, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 2, ptr @max98090_shdn_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.209, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 38, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.210, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @max98090_mic1_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.211, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @max98090_mic2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.212, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @max98090_dmic_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.213, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 16, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @max98090_micinput_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.214, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 17, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @max98090_micinput_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.215, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @max98090_linea_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.216, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @max98090_lineb_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.217, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 62, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.218, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 62, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.219, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 7, ptr @max98090_left_adc_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.220, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 7, ptr @max98090_right_adc_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.221, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 62, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 2, ptr @max98090_shdn_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.222, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 62, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 2, ptr @max98090_shdn_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.223, ptr @.str.224, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.225, ptr @.str.224, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 1 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.226, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @max98090_lbenl_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.227, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @max98090_lbenr_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.228, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @max98090_ltenl_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.229, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @max98090_ltenr_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.230, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @max98090_stenl_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.231, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @max98090_stenr_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.232, ptr @.str.233, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.234, ptr @.str.233, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 1 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.235, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 63, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.236, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 63, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.237, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 6, ptr @max98090_left_hp_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.238, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 6, ptr @max98090_right_hp_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.239, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 6, ptr @max98090_left_speaker_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.240, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 6, ptr @max98090_right_speaker_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.241, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 6, ptr @max98090_left_rcv_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.242, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 6, ptr @max98090_right_rcv_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.243, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @max98090_linmod_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.244, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @max98090_mixhplsel_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.245, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @max98090_mixhprsel_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.246, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 63, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.247, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 63, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.248, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 63, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.249, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 63, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.250, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 63, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.251, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 63, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.252, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.253, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.254, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.255, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.256, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.257, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], align 4
@mic1_mux_enum = internal constant %struct.soc_enum { i32 15, i8 0, i8 0, i32 2, i32 1, ptr @mic1_mux_text, ptr null, i8 0 }, align 4
@mic1_mux_text = internal global [2 x ptr] [ptr @.str.200, ptr @.str.202], align 4
@mic2_mux_enum = internal constant %struct.soc_enum { i32 15, i8 1, i8 1, i32 2, i32 1, ptr @mic2_mux_text, ptr null, i8 0 }, align 4
@mic2_mux_text = internal global [2 x ptr] [ptr @.str.201, ptr @.str.202], align 4
@dmic_mux_enum = internal constant %struct.soc_enum { i32 -1, i8 0, i8 0, i32 2, i32 1, ptr @dmic_mux_text, ptr null, i8 0 }, align 4
@dmic_mux_text = internal global [2 x ptr] [ptr @.str.259, ptr @.str.260], align 4
@.str.259 = private unnamed_addr constant [4 x i8] c"ADC\00", align 1
@.str.260 = private unnamed_addr constant [5 x i8] c"DMIC\00", align 1
@.str.261 = private unnamed_addr constant [11 x i8] c"IN1 Switch\00", align 1
@.compoundliteral.262 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13, i32 13, i32 5, i32 5, i32 0, i8 0 }, align 4
@.str.263 = private unnamed_addr constant [11 x i8] c"IN3 Switch\00", align 1
@.compoundliteral.264 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13, i32 13, i32 3, i32 3, i32 0, i8 0 }, align 4
@.str.265 = private unnamed_addr constant [11 x i8] c"IN5 Switch\00", align 1
@.compoundliteral.266 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13, i32 13, i32 1, i32 1, i32 0, i8 0 }, align 4
@.str.267 = private unnamed_addr constant [12 x i8] c"IN34 Switch\00", align 1
@.compoundliteral.268 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13, i32 13, i32 7, i32 7, i32 0, i8 0 }, align 4
@.str.269 = private unnamed_addr constant [11 x i8] c"IN2 Switch\00", align 1
@.compoundliteral.270 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13, i32 13, i32 4, i32 4, i32 0, i8 0 }, align 4
@.str.271 = private unnamed_addr constant [11 x i8] c"IN4 Switch\00", align 1
@.compoundliteral.272 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13, i32 13, i32 2, i32 2, i32 0, i8 0 }, align 4
@.str.273 = private unnamed_addr constant [11 x i8] c"IN6 Switch\00", align 1
@.compoundliteral.274 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13, i32 13, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.275 = private unnamed_addr constant [12 x i8] c"IN56 Switch\00", align 1
@.compoundliteral.276 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13, i32 13, i32 6, i32 6, i32 0, i8 0 }, align 4
@.str.277 = private unnamed_addr constant [12 x i8] c"IN12 Switch\00", align 1
@.compoundliteral.278 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 21, i32 21, i32 0, i32 0, i32 0, i8 0 }, align 4
@.compoundliteral.279 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 21, i32 21, i32 1, i32 1, i32 0, i8 0 }, align 4
@.compoundliteral.280 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 21, i32 21, i32 2, i32 2, i32 0, i8 0 }, align 4
@.str.281 = private unnamed_addr constant [13 x i8] c"LINEA Switch\00", align 1
@.compoundliteral.282 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 21, i32 21, i32 3, i32 3, i32 0, i8 0 }, align 4
@.str.283 = private unnamed_addr constant [13 x i8] c"LINEB Switch\00", align 1
@.compoundliteral.284 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 21, i32 21, i32 4, i32 4, i32 0, i8 0 }, align 4
@.str.285 = private unnamed_addr constant [12 x i8] c"MIC1 Switch\00", align 1
@.compoundliteral.286 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 21, i32 21, i32 5, i32 5, i32 0, i8 0 }, align 4
@.str.287 = private unnamed_addr constant [12 x i8] c"MIC2 Switch\00", align 1
@.compoundliteral.288 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 21, i32 21, i32 6, i32 6, i32 0, i8 0 }, align 4
@.compoundliteral.289 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 22, i32 22, i32 0, i32 0, i32 0, i8 0 }, align 4
@.compoundliteral.290 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 22, i32 22, i32 1, i32 1, i32 0, i8 0 }, align 4
@.compoundliteral.291 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 22, i32 22, i32 2, i32 2, i32 0, i8 0 }, align 4
@.compoundliteral.292 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 22, i32 22, i32 3, i32 3, i32 0, i8 0 }, align 4
@.compoundliteral.293 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 22, i32 22, i32 4, i32 4, i32 0, i8 0 }, align 4
@.compoundliteral.294 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 22, i32 22, i32 5, i32 5, i32 0, i8 0 }, align 4
@.compoundliteral.295 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 22, i32 22, i32 6, i32 6, i32 0, i8 0 }, align 4
@lbenl_mux_enum = internal constant %struct.soc_enum { i32 37, i8 4, i8 4, i32 2, i32 1, ptr @lben_mux_text, ptr null, i8 0 }, align 4
@lben_mux_text = internal global [2 x ptr] [ptr @.str.296, ptr @.str.297], align 4
@.str.296 = private unnamed_addr constant [7 x i8] c"Normal\00", align 1
@.str.297 = private unnamed_addr constant [9 x i8] c"Loopback\00", align 1
@lbenr_mux_enum = internal constant %struct.soc_enum { i32 37, i8 4, i8 4, i32 2, i32 1, ptr @lben_mux_text, ptr null, i8 0 }, align 4
@ltenl_mux_enum = internal constant %struct.soc_enum { i32 37, i8 5, i8 5, i32 2, i32 1, ptr @lten_mux_text, ptr null, i8 0 }, align 4
@lten_mux_text = internal global [2 x ptr] [ptr @.str.296, ptr @.str.298], align 4
@.str.298 = private unnamed_addr constant [12 x i8] c"Loopthrough\00", align 1
@ltenr_mux_enum = internal constant %struct.soc_enum { i32 37, i8 5, i8 5, i32 2, i32 1, ptr @lten_mux_text, ptr null, i8 0 }, align 4
@stenl_mux_enum = internal constant %struct.soc_enum { i32 26, i8 6, i8 6, i32 2, i32 1, ptr @stenl_mux_text, ptr null, i8 0 }, align 4
@stenl_mux_text = internal global [2 x ptr] [ptr @.str.296, ptr @.str.299], align 4
@.str.299 = private unnamed_addr constant [14 x i8] c"Sidetone Left\00", align 1
@stenr_mux_enum = internal constant %struct.soc_enum { i32 26, i8 7, i8 7, i32 2, i32 1, ptr @stenr_mux_text, ptr null, i8 0 }, align 4
@stenr_mux_text = internal global [2 x ptr] [ptr @.str.296, ptr @.str.300], align 4
@.str.300 = private unnamed_addr constant [15 x i8] c"Sidetone Right\00", align 1
@.str.301 = private unnamed_addr constant [16 x i8] c"Left DAC Switch\00", align 1
@.compoundliteral.302 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.303 = private unnamed_addr constant [17 x i8] c"Right DAC Switch\00", align 1
@.compoundliteral.304 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 1, i32 1, i32 0, i8 0 }, align 4
@.compoundliteral.305 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 2, i32 2, i32 0, i8 0 }, align 4
@.compoundliteral.306 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 3, i32 3, i32 0, i8 0 }, align 4
@.compoundliteral.307 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 4, i32 4, i32 0, i8 0 }, align 4
@.compoundliteral.308 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 5, i32 5, i32 0, i8 0 }, align 4
@.compoundliteral.309 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 0, i32 0, i32 0, i8 0 }, align 4
@.compoundliteral.310 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 1, i32 1, i32 0, i8 0 }, align 4
@.compoundliteral.311 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 2, i32 2, i32 0, i8 0 }, align 4
@.compoundliteral.312 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 3, i32 3, i32 0, i8 0 }, align 4
@.compoundliteral.313 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 4, i32 4, i32 0, i8 0 }, align 4
@.compoundliteral.314 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 5, i32 5, i32 0, i8 0 }, align 4
@.compoundliteral.315 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 46, i32 46, i32 0, i32 0, i32 0, i8 0 }, align 4
@.compoundliteral.316 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 46, i32 46, i32 1, i32 1, i32 0, i8 0 }, align 4
@.compoundliteral.317 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 46, i32 46, i32 2, i32 2, i32 0, i8 0 }, align 4
@.compoundliteral.318 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 46, i32 46, i32 3, i32 3, i32 0, i8 0 }, align 4
@.compoundliteral.319 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 46, i32 46, i32 4, i32 4, i32 0, i8 0 }, align 4
@.compoundliteral.320 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 46, i32 46, i32 5, i32 5, i32 0, i8 0 }, align 4
@.compoundliteral.321 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 47, i32 47, i32 0, i32 0, i32 0, i8 0 }, align 4
@.compoundliteral.322 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 47, i32 47, i32 1, i32 1, i32 0, i8 0 }, align 4
@.compoundliteral.323 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 47, i32 47, i32 2, i32 2, i32 0, i8 0 }, align 4
@.compoundliteral.324 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 47, i32 47, i32 3, i32 3, i32 0, i8 0 }, align 4
@.compoundliteral.325 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 47, i32 47, i32 4, i32 4, i32 0, i8 0 }, align 4
@.compoundliteral.326 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 47, i32 47, i32 5, i32 5, i32 0, i8 0 }, align 4
@.compoundliteral.327 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 55, i32 55, i32 0, i32 0, i32 0, i8 0 }, align 4
@.compoundliteral.328 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 55, i32 55, i32 1, i32 1, i32 0, i8 0 }, align 4
@.compoundliteral.329 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 55, i32 55, i32 2, i32 2, i32 0, i8 0 }, align 4
@.compoundliteral.330 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 55, i32 55, i32 3, i32 3, i32 0, i8 0 }, align 4
@.compoundliteral.331 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 55, i32 55, i32 4, i32 4, i32 0, i8 0 }, align 4
@.compoundliteral.332 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 55, i32 55, i32 5, i32 5, i32 0, i8 0 }, align 4
@.compoundliteral.333 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 58, i32 58, i32 0, i32 0, i32 0, i8 0 }, align 4
@.compoundliteral.334 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 58, i32 58, i32 1, i32 1, i32 0, i8 0 }, align 4
@.compoundliteral.335 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 58, i32 58, i32 2, i32 2, i32 0, i8 0 }, align 4
@.compoundliteral.336 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 58, i32 58, i32 3, i32 3, i32 0, i8 0 }, align 4
@.compoundliteral.337 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 58, i32 58, i32 4, i32 4, i32 0, i8 0 }, align 4
@.compoundliteral.338 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 58, i32 58, i32 5, i32 5, i32 0, i8 0 }, align 4
@linmod_mux_enum = internal constant %struct.soc_enum { i32 58, i8 7, i8 7, i32 2, i32 1, ptr @linmod_mux_text, ptr null, i8 0 }, align 4
@linmod_mux_text = internal global [2 x ptr] [ptr @.str.339, ptr @.str.340], align 4
@.str.339 = private unnamed_addr constant [10 x i8] c"Left Only\00", align 1
@.str.340 = private unnamed_addr constant [15 x i8] c"Left and Right\00", align 1
@mixhplsel_mux_enum = internal constant %struct.soc_enum { i32 43, i8 4, i8 4, i32 2, i32 1, ptr @mixhpsel_mux_text, ptr null, i8 0 }, align 4
@mixhpsel_mux_text = internal global [2 x ptr] [ptr @.str.341, ptr @.str.342], align 4
@.str.341 = private unnamed_addr constant [9 x i8] c"DAC Only\00", align 1
@.str.342 = private unnamed_addr constant [9 x i8] c"HP Mixer\00", align 1
@mixhprsel_mux_enum = internal constant %struct.soc_enum { i32 43, i8 5, i8 5, i32 2, i32 1, ptr @mixhpsel_mux_text, ptr null, i8 0 }, align 4
@.str.343 = private unnamed_addr constant [6 x i8] c"DMIC3\00", align 1
@.str.344 = private unnamed_addr constant [6 x i8] c"DMIC4\00", align 1
@.str.345 = private unnamed_addr constant [10 x i8] c"DMIC3_ENA\00", align 1
@.str.346 = private unnamed_addr constant [10 x i8] c"DMIC4_ENA\00", align 1
@max98091_dapm_widgets = internal constant [4 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.343, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.344, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.345, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 19, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.346, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 19, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], align 4
@.str.348 = private unnamed_addr constant [26 x i8] c"Failed to sync cache: %d\0A\00", align 1
@.str.349 = private unnamed_addr constant [5 x i8] c"HiFi\00", align 1
@max98090_dai_ops = internal constant %struct.snd_soc_dai_ops { ptr @max98090_dai_set_sysclk, ptr null, ptr null, ptr null, ptr @max98090_dai_set_fmt, ptr null, ptr @max98090_set_tdm_slot, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max98090_dai_mute, ptr @max98090_dai_startup, ptr null, ptr @max98090_dai_hw_params, ptr null, ptr null, ptr @max98090_dai_trigger, ptr null, ptr null, ptr null, i32 0, i8 1 }, align 4
@.str.350 = private unnamed_addr constant [32 x i8] c"Invalid master clock frequency\0A\00", align 1
@.str.351 = private unnamed_addr constant [27 x i8] c"DAI clock mode unsupported\00", align 1
@.str.352 = private unnamed_addr constant [23 x i8] c"DAI format unsupported\00", align 1
@.str.353 = private unnamed_addr constant [28 x i8] c"DAI invert mode unsupported\00", align 1
@.str.354 = private unnamed_addr constant [22 x i8] c"No SYSCLK configured\0A\00", align 1
@.str.355 = private unnamed_addr constant [28 x i8] c"No audio clocks configured\0A\00", align 1
@ni_value = internal unnamed_addr constant [4 x i64] [i64 3528, i64 768, i64 441, i64 8], align 8
@mi_value = internal unnamed_addr constant [4 x i64] [i64 8125, i64 1625, i64 1500, i64 25], align 8
@.str.356 = private unnamed_addr constant [24 x i8] c"No better method found\0A\00", align 1
@.str.357 = private unnamed_addr constant [35 x i8] c"Calculating ni %lld with mi 65536\0A\00", align 1
@dmic_table = internal unnamed_addr constant [5 x %struct.dmic_table] [%struct.dmic_table { i32 11289600, [6 x %struct.anon.94] [%struct.anon.94 { i32 2, [6 x i32] [i32 7, i32 8, i32 3, i32 3, i32 3, i32 3] }, %struct.anon.94 { i32 1, [6 x i32] [i32 7, i32 8, i32 2, i32 2, i32 2, i32 2] }, %struct.anon.94 { i32 0, [6 x i32] [i32 7, i32 8, i32 3, i32 3, i32 3, i32 3] }, %struct.anon.94 { i32 0, [6 x i32] [i32 7, i32 8, i32 6, i32 6, i32 6, i32 6] }, %struct.anon.94 { i32 0, [6 x i32] [i32 7, i32 8, i32 3, i32 3, i32 3, i32 3] }, %struct.anon.94 { i32 0, [6 x i32] [i32 7, i32 8, i32 3, i32 3, i32 3, i32 3] }] }, %struct.dmic_table { i32 12000000, [6 x %struct.anon.94] [%struct.anon.94 { i32 2, [6 x i32] [i32 7, i32 8, i32 3, i32 3, i32 3, i32 3] }, %struct.anon.94 { i32 1, [6 x i32] [i32 7, i32 8, i32 2, i32 2, i32 2, i32 2] }, %struct.anon.94 { i32 0, [6 x i32] [i32 7, i32 8, i32 3, i32 3, i32 3, i32 3] }, %struct.anon.94 { i32 0, [6 x i32] [i32 7, i32 8, i32 5, i32 5, i32 6, i32 6] }, %struct.anon.94 { i32 0, [6 x i32] [i32 7, i32 8, i32 3, i32 3, i32 3, i32 3] }, %struct.anon.94 { i32 0, [6 x i32] [i32 7, i32 8, i32 3, i32 3, i32 3, i32 3] }] }, %struct.dmic_table { i32 12288000, [6 x %struct.anon.94] [%struct.anon.94 { i32 2, [6 x i32] [i32 7, i32 8, i32 3, i32 3, i32 3, i32 3] }, %struct.anon.94 { i32 1, [6 x i32] [i32 7, i32 8, i32 2, i32 2, i32 2, i32 2] }, %struct.anon.94 { i32 0, [6 x i32] [i32 7, i32 8, i32 3, i32 3, i32 3, i32 3] }, %struct.anon.94 { i32 0, [6 x i32] [i32 7, i32 8, i32 6, i32 6, i32 6, i32 6] }, %struct.anon.94 { i32 0, [6 x i32] [i32 7, i32 8, i32 3, i32 3, i32 3, i32 3] }, %struct.anon.94 { i32 0, [6 x i32] [i32 7, i32 8, i32 3, i32 3, i32 3, i32 3] }] }, %struct.dmic_table { i32 13000000, [6 x %struct.anon.94] [%struct.anon.94 { i32 2, [6 x i32] [i32 7, i32 8, i32 1, i32 1, i32 1, i32 1] }, %struct.anon.94 { i32 1, [6 x i32] [i32 7, i32 8, i32 0, i32 0, i32 0, i32 0] }, %struct.anon.94 { i32 0, [6 x i32] [i32 7, i32 8, i32 1, i32 1, i32 1, i32 1] }, %struct.anon.94 { i32 0, [6 x i32] [i32 7, i32 8, i32 4, i32 4, i32 5, i32 5] }, %struct.anon.94 { i32 0, [6 x i32] [i32 7, i32 8, i32 1, i32 1, i32 1, i32 1] }, %struct.anon.94 { i32 0, [6 x i32] [i32 7, i32 8, i32 1, i32 1, i32 1, i32 1] }] }, %struct.dmic_table { i32 19200000, [6 x %struct.anon.94] [%struct.anon.94 { i32 2, [6 x i32] zeroinitializer }, %struct.anon.94 { i32 1, [6 x i32] [i32 7, i32 8, i32 1, i32 1, i32 1, i32 1] }, %struct.anon.94 { i32 0, [6 x i32] [i32 7, i32 8, i32 5, i32 5, i32 6, i32 6] }, %struct.anon.94 { i32 0, [6 x i32] [i32 7, i32 8, i32 2, i32 2, i32 3, i32 3] }, %struct.anon.94 { i32 0, [6 x i32] [i32 7, i32 8, i32 1, i32 1, i32 2, i32 2] }, %struct.anon.94 { i32 0, [6 x i32] [i32 7, i32 8, i32 5, i32 5, i32 6, i32 6] }] }], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author255, ptr @__UNIQUE_ID_description254, ptr @__UNIQUE_ID_license256, ptr @__ksymtab_max98090_mic_detect], section "llvm.metadata"

@__mod_i2c__max98090_i2c_id_device_table = dso_local alias [3 x %struct.i2c_device_id], ptr @max98090_i2c_id
@__mod_of__max98090_of_match_device_table = dso_local alias [3 x %struct.of_device_id], ptr @max98090_of_match

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @max98090_mic_detect(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.max98090_priv, ptr %6, i32 0, i32 15
  store ptr %1, ptr %7, align 4
  %8 = icmp eq ptr %1, null
  %9 = select i1 %8, i32 0, i32 4
  %10 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 3, i32 noundef 4, i32 noundef %9) #8
  %11 = load ptr, ptr %7, align 4
  tail call void @snd_soc_jack_report(ptr noundef %11, i32 noundef 0, i32 noundef 16387) #8
  %12 = load ptr, ptr @system_power_efficient_wq, align 4
  %13 = getelementptr inbounds %struct.max98090_priv, ptr %6, i32 0, i32 12
  %14 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %12, ptr noundef %13, i32 noundef 10) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_jack_report(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #3 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @max98090_i2c_driver) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #3 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @max98090_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max98090_i2c_probe(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 192, i32 noundef 3520) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %37, label %6

6:                                                ; preds = %2
  %7 = icmp eq ptr %1, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.i2c_device_id, ptr %1, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %6
  %12 = phi i32 [ %10, %8 ], [ 0, %6 ]
  %13 = getelementptr inbounds %struct.max98090_priv, ptr %4, i32 0, i32 2
  store i32 %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %4, ptr %14, align 8
  %15 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.max98090_priv, ptr %4, i32 0, i32 3
  store ptr %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 25
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.max98090_priv, ptr %4, i32 0, i32 9
  %21 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %19, ptr noundef nonnull @.str.2, ptr noundef %20, i32 noundef 1, i32 noundef 0) #8
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %11
  store i32 2500000, ptr %20, align 4
  br label %24

24:                                               ; preds = %23, %11
  %25 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %0, ptr noundef nonnull @max98090_regmap, ptr noundef null, ptr noundef null) #8
  store ptr %25, ptr %4, align 4
  %26 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = ptrtoint ptr %25 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef %28) #9
  br label %37

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 6
  %31 = load i32, ptr %30, align 4
  %32 = tail call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %31, ptr noundef null, ptr noundef nonnull @max98090_interrupt, i32 noundef 8194, ptr noundef nonnull @.str.4, ptr noundef nonnull %4) #8
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef %32) #9
  br label %37

35:                                               ; preds = %29
  %36 = tail call i32 @devm_snd_soc_register_component(ptr noundef %3, ptr noundef nonnull @soc_component_dev_max98090, ptr noundef nonnull @max98090_dai, i32 noundef 1) #8
  br label %37

37:                                               ; preds = %35, %34, %27, %2
  %38 = phi i32 [ %32, %34 ], [ -12, %2 ], [ %28, %27 ], [ %36, %35 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max98090_i2c_remove(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 64, i32 noundef 1) #8
  %6 = load ptr, ptr %3, align 4
  %7 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 69, i32 noundef 0) #8
  tail call void @msleep(i32 noundef 40) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @max98090_i2c_shutdown(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 64, i32 noundef 1) #8
  %6 = load ptr, ptr %3, align 4
  %7 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 69, i32 noundef 0) #8
  tail call void @msleep(i32 noundef 40) #8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max98090_interrupt(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.max98090_priv, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %107, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %1, align 4
  %10 = call i32 @regmap_read(ptr noundef %9, i32 noundef 3, ptr noundef nonnull %3) #8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.snd_soc_component, ptr %6, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.6, i32 noundef %10) #9
  br label %107

15:                                               ; preds = %8
  %16 = load ptr, ptr %1, align 4
  %17 = call i32 @regmap_read(ptr noundef %16, i32 noundef 1, ptr noundef nonnull %4) #8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.snd_soc_component, ptr %6, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.7, i32 noundef %17) #9
  br label %107

22:                                               ; preds = %15
  %23 = load i32, ptr %3, align 4
  %24 = load i32, ptr %4, align 4
  %25 = and i32 %24, %23
  store i32 %25, ptr %4, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %107, label %27

27:                                               ; preds = %22
  %28 = and i32 %25, 128
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.snd_soc_component, ptr %6, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.8) #9
  %33 = load i32, ptr %4, align 4
  br label %34

34:                                               ; preds = %30, %27
  %35 = phi i32 [ %33, %30 ], [ %25, %27 ]
  %36 = and i32 %35, 32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %89, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr %5, align 4
  %40 = getelementptr inbounds %struct.snd_soc_component, ptr %39, i32 0, i32 5
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %89, label %43

43:                                               ; preds = %38
  %44 = call i32 @___ratelimit(ptr noundef nonnull @max98090_pll_work._rs, ptr noundef nonnull @__func__.max98090_pll_work) #8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.snd_soc_component, ptr %39, i32 0, i32 3
  %48 = load ptr, ptr %47, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %48, ptr noundef nonnull @.str.10) #9
  br label %49

49:                                               ; preds = %46, %43
  %50 = call i32 @snd_soc_component_update_bits(ptr noundef %39, i32 noundef 69, i32 noundef 128, i32 noundef 0) #8
  %51 = call i32 @snd_soc_component_update_bits(ptr noundef %39, i32 noundef 69, i32 noundef 128, i32 noundef 128) #8
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1200, i32 noundef 2) #8
  %52 = call i32 @snd_soc_component_read(ptr noundef %39, i32 noundef 1) #8
  %53 = and i32 %52, 32
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %89, label %55

55:                                               ; preds = %49
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1200, i32 noundef 2) #8
  %56 = call i32 @snd_soc_component_read(ptr noundef %39, i32 noundef 1) #8
  %57 = and i32 %56, 32
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %89, label %59

59:                                               ; preds = %55
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1200, i32 noundef 2) #8
  %60 = call i32 @snd_soc_component_read(ptr noundef %39, i32 noundef 1) #8
  %61 = and i32 %60, 32
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %89, label %63

63:                                               ; preds = %59
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1200, i32 noundef 2) #8
  %64 = call i32 @snd_soc_component_read(ptr noundef %39, i32 noundef 1) #8
  %65 = and i32 %64, 32
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %89, label %67

67:                                               ; preds = %63
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1200, i32 noundef 2) #8
  %68 = call i32 @snd_soc_component_read(ptr noundef %39, i32 noundef 1) #8
  %69 = and i32 %68, 32
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %89, label %71

71:                                               ; preds = %67
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1200, i32 noundef 2) #8
  %72 = call i32 @snd_soc_component_read(ptr noundef %39, i32 noundef 1) #8
  %73 = and i32 %72, 32
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %89, label %75

75:                                               ; preds = %71
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1200, i32 noundef 2) #8
  %76 = call i32 @snd_soc_component_read(ptr noundef %39, i32 noundef 1) #8
  %77 = and i32 %76, 32
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %89, label %79

79:                                               ; preds = %75
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1200, i32 noundef 2) #8
  %80 = call i32 @snd_soc_component_read(ptr noundef %39, i32 noundef 1) #8
  %81 = and i32 %80, 32
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %79
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1200, i32 noundef 2) #8
  %84 = call i32 @snd_soc_component_read(ptr noundef %39, i32 noundef 1) #8
  %85 = and i32 %84, 32
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %83
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1200, i32 noundef 2) #8
  %88 = call i32 @snd_soc_component_read(ptr noundef %39, i32 noundef 1) #8
  br label %89

89:                                               ; preds = %87, %83, %79, %75, %71, %67, %63, %59, %55, %49, %38, %34
  %90 = load i32, ptr %4, align 4
  %91 = and i32 %90, 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.snd_soc_component, ptr %6, i32 0, i32 3
  %95 = load ptr, ptr %94, align 4
  call void @pm_wakeup_dev_event(ptr noundef %95, i32 noundef 100, i1 noundef zeroext false) #8
  %96 = load ptr, ptr @system_power_efficient_wq, align 4
  %97 = getelementptr inbounds %struct.max98090_priv, ptr %1, i32 0, i32 12
  %98 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %96, ptr noundef %97, i32 noundef 10) #8
  %99 = load i32, ptr %4, align 4
  br label %100

100:                                              ; preds = %93, %89
  %101 = phi i32 [ %99, %93 ], [ %90, %89 ]
  %102 = and i32 %101, 1
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.snd_soc_component, ptr %6, i32 0, i32 3
  %106 = load ptr, ptr %105, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %106, ptr noundef nonnull @.str.9) #9
  br label %107

107:                                              ; preds = %104, %100, %22, %19, %12, %2
  %108 = phi i32 [ 0, %12 ], [ 0, %19 ], [ 0, %2 ], [ 0, %22 ], [ 1, %104 ], [ 1, %100 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %108
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @max98090_readable_register(ptr nocapture noundef readnone %0, i32 noundef %1) #5 {
  switch i32 %1, label %3 [
    i32 255, label %6
    i32 1, label %6
    i32 2, label %6
    i32 3, label %6
  ]

3:                                                ; preds = %2
  %4 = add i32 %1, -13
  %5 = icmp ult i32 %4, 197
  br label %6

6:                                                ; preds = %3, %2, %2, %2, %2
  %7 = phi i1 [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ %5, %3 ]
  ret i1 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @max98090_volatile_register(ptr nocapture noundef readnone %0, i32 noundef %1) #5 {
  switch i32 %1, label %3 [
    i32 0, label %4
    i32 1, label %4
    i32 2, label %4
    i32 255, label %4
  ]

3:                                                ; preds = %2
  br label %4

4:                                                ; preds = %3, %2, %2, %2, %2
  %5 = phi i1 [ false, %3 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ]
  ret i1 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_wakeup_dev_event(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max98090_probe(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  %7 = tail call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull @.str.11) #8
  %8 = getelementptr inbounds %struct.max98090_priv, ptr %6, i32 0, i32 4
  store ptr %7, ptr %8, align 4
  %9 = icmp eq ptr %7, inttoptr (i32 -517 to ptr)
  br i1 %9, label %102, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.max98090_priv, ptr %6, i32 0, i32 1
  store ptr %0, ptr %11, align 4
  %12 = load ptr, ptr %6, align 4
  %13 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 0, i32 noundef 128) #8
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load ptr, ptr %11, align 4
  %17 = getelementptr inbounds %struct.snd_soc_component, ptr %16, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.20, i32 noundef %13) #9
  br label %20

19:                                               ; preds = %10
  tail call void @msleep(i32 noundef 20) #8
  br label %20

20:                                               ; preds = %19, %15
  %21 = getelementptr inbounds %struct.max98090_priv, ptr %6, i32 0, i32 5
  store i32 -1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.max98090_priv, ptr %6, i32 0, i32 6
  store i32 -1, ptr %22, align 4
  %23 = getelementptr inbounds %struct.max98090_priv, ptr %6, i32 0, i32 23
  store i8 0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.max98090_priv, ptr %6, i32 0, i32 10
  store i32 -1, ptr %24, align 4
  %25 = getelementptr inbounds %struct.max98090_priv, ptr %6, i32 0, i32 10, i32 0, i32 1
  store i32 -1, ptr %25, align 4
  %26 = getelementptr inbounds %struct.max98090_priv, ptr %6, i32 0, i32 19
  store i8 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.max98090_priv, ptr %6, i32 0, i32 20
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.max98090_priv, ptr %6, i32 0, i32 21
  store i32 0, ptr %28, align 4
  %29 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 255) #8
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.12, i32 noundef %29) #9
  br label %102

33:                                               ; preds = %20
  %34 = and i32 %29, -16
  switch i32 %34, label %39 [
    i32 64, label %35
    i32 80, label %37
  ]

35:                                               ; preds = %33
  %36 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %36, ptr noundef nonnull @.str.13, i32 noundef %29) #9
  br label %41

37:                                               ; preds = %33
  %38 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %38, ptr noundef nonnull @.str.14, i32 noundef %29) #9
  br label %41

39:                                               ; preds = %33
  %40 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.15, i32 noundef %29) #9
  br label %41

41:                                               ; preds = %39, %37, %35
  %42 = phi i32 [ 0, %35 ], [ 1, %37 ], [ 0, %39 ]
  %43 = getelementptr inbounds %struct.max98090_priv, ptr %6, i32 0, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, %42
  br i1 %45, label %48, label %46

46:                                               ; preds = %41
  %47 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %47, ptr noundef nonnull @.str.16) #9
  store i32 %42, ptr %43, align 4
  br label %48

48:                                               ; preds = %46, %41
  %49 = getelementptr inbounds %struct.max98090_priv, ptr %6, i32 0, i32 11
  store i32 0, ptr %49, align 4
  %50 = getelementptr inbounds %struct.max98090_priv, ptr %6, i32 0, i32 12
  store i32 -32, ptr %50, align 4
  %51 = getelementptr inbounds %struct.max98090_priv, ptr %6, i32 0, i32 12, i32 0, i32 1
  store volatile ptr %51, ptr %51, align 4
  %52 = getelementptr inbounds %struct.max98090_priv, ptr %6, i32 0, i32 12, i32 0, i32 1, i32 1
  store ptr %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.max98090_priv, ptr %6, i32 0, i32 12, i32 0, i32 2
  store ptr @max98090_jack_work, ptr %53, align 4
  %54 = getelementptr inbounds %struct.max98090_priv, ptr %6, i32 0, i32 12, i32 1
  tail call void @init_timer_key(ptr noundef %54, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #8
  %55 = getelementptr inbounds %struct.max98090_priv, ptr %6, i32 0, i32 13
  store i32 -32, ptr %55, align 4
  %56 = getelementptr inbounds %struct.max98090_priv, ptr %6, i32 0, i32 13, i32 0, i32 1
  store volatile ptr %56, ptr %56, align 4
  %57 = getelementptr inbounds %struct.max98090_priv, ptr %6, i32 0, i32 13, i32 0, i32 1, i32 1
  store ptr %56, ptr %57, align 4
  %58 = getelementptr inbounds %struct.max98090_priv, ptr %6, i32 0, i32 13, i32 0, i32 2
  store ptr @max98090_pll_det_enable_work, ptr %58, align 4
  %59 = getelementptr inbounds %struct.max98090_priv, ptr %6, i32 0, i32 13, i32 1
  tail call void @init_timer_key(ptr noundef %59, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #8
  %60 = getelementptr inbounds %struct.max98090_priv, ptr %6, i32 0, i32 14
  store i32 -32, ptr %60, align 4
  %61 = getelementptr inbounds %struct.max98090_priv, ptr %6, i32 0, i32 14, i32 1
  store volatile ptr %61, ptr %61, align 4
  %62 = getelementptr inbounds %struct.max98090_priv, ptr %6, i32 0, i32 14, i32 1, i32 1
  store ptr %61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.max98090_priv, ptr %6, i32 0, i32 14, i32 2
  store ptr @max98090_pll_det_disable_work, ptr %63, align 4
  %64 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 61, i32 noundef 128) #8
  %65 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 1) #8
  %66 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 67, i32 noundef 1, i32 noundef 1) #8
  %67 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 67, i32 noundef 2, i32 noundef 0) #8
  %68 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 68, i32 noundef 1, i32 noundef 1) #8
  %69 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 66, i32 noundef 1) #8
  %70 = load ptr, ptr %3, align 4
  %71 = call i32 @device_property_read_u32_array(ptr noundef %70, ptr noundef nonnull @.str.17, ptr noundef nonnull %2, i32 noundef 1) #8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %48
  store i32 3, ptr %2, align 4
  %74 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %74, ptr noundef nonnull @.str.18) #9
  %75 = load i32, ptr %2, align 4
  br label %81

76:                                               ; preds = %48
  %77 = load i32, ptr %2, align 4
  %78 = icmp ugt i32 %77, 3
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull @.str.19, i32 noundef %77) #9
  store i32 3, ptr %2, align 4
  br label %81

81:                                               ; preds = %79, %76, %73
  %82 = phi i32 [ %77, %76 ], [ 3, %79 ], [ %75, %73 ]
  %83 = call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 18, i32 noundef 3, i32 noundef %82) #8
  %84 = load ptr, ptr %3, align 4
  %85 = getelementptr inbounds %struct.device, ptr %84, i32 0, i32 8
  %86 = load ptr, ptr %85, align 8
  %87 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 17
  %88 = call i32 @snd_soc_add_component_controls(ptr noundef %0, ptr noundef nonnull @max98090_snd_controls, i32 noundef 66) #8
  %89 = getelementptr inbounds %struct.max98090_priv, ptr %86, i32 0, i32 2
  %90 = load i32, ptr %89, align 4
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %94

92:                                               ; preds = %81
  %93 = call i32 @snd_soc_add_component_controls(ptr noundef %0, ptr noundef nonnull @max98091_snd_controls, i32 noundef 10) #8
  br label %94

94:                                               ; preds = %92, %81
  %95 = call i32 @snd_soc_dapm_new_controls(ptr noundef %87, ptr noundef nonnull @max98090_dapm_widgets, i32 noundef 66) #8
  %96 = call i32 @snd_soc_dapm_add_routes(ptr noundef %87, ptr noundef nonnull @max98090_dapm_routes, i32 noundef 128) #8
  %97 = load i32, ptr %89, align 4
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = call i32 @snd_soc_dapm_new_controls(ptr noundef %87, ptr noundef nonnull @max98091_dapm_widgets, i32 noundef 4) #8
  %101 = call i32 @snd_soc_dapm_add_routes(ptr noundef %87, ptr noundef nonnull @max98091_dapm_routes, i32 noundef 4) #8
  br label %102

102:                                              ; preds = %99, %94, %31, %1
  %103 = phi i32 [ -517, %1 ], [ %29, %31 ], [ %29, %94 ], [ %29, %99 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 %103
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @max98090_remove(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.max98090_priv, ptr %5, i32 0, i32 12
  %7 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %6) #8
  %8 = getelementptr inbounds %struct.max98090_priv, ptr %5, i32 0, i32 13
  %9 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %8) #8
  %10 = getelementptr inbounds %struct.max98090_priv, ptr %5, i32 0, i32 14
  %11 = tail call zeroext i1 @cancel_work_sync(ptr noundef %10) #8
  %12 = getelementptr inbounds %struct.max98090_priv, ptr %5, i32 0, i32 1
  store ptr null, ptr %12, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @max98090_seq_notifier(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.max98090_priv, ptr %7, i32 0, i32 24
  %9 = load i8, ptr %8, align 1, !range !9
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 69, i32 noundef 128, i32 noundef 0) #8
  tail call void @msleep(i32 noundef 40) #8
  %13 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 69, i32 noundef 128, i32 noundef 128) #8
  store i8 0, ptr %8, align 1
  br label %14

14:                                               ; preds = %11, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max98090_set_bias_level(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  switch i32 %1, label %36 [
    i32 0, label %33
    i32 2, label %7
    i32 1, label %23
  ]

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.max98090_priv, ptr %6, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %36, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 17
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 3
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  tail call void @clk_disable(ptr noundef %9) #8
  tail call void @clk_unprepare(ptr noundef %9) #8
  br label %36

16:                                               ; preds = %11
  %17 = tail call i32 @clk_prepare(ptr noundef %9) #8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %16
  %20 = tail call i32 @clk_enable(ptr noundef %9) #8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %36, label %22

22:                                               ; preds = %19
  tail call void @clk_unprepare(ptr noundef %9) #8
  br label %36

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 17
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = load ptr, ptr %6, align 4
  %29 = tail call i32 @regcache_sync(ptr noundef %28) #8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.348, i32 noundef %29) #9
  br label %36

33:                                               ; preds = %2
  %34 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 61, i32 noundef 64, i32 noundef 64) #8
  %35 = load ptr, ptr %6, align 4
  tail call void @regcache_mark_dirty(ptr noundef %35) #8
  br label %36

36:                                               ; preds = %33, %31, %27, %23, %22, %19, %16, %15, %7, %2
  %37 = phi i32 [ %29, %31 ], [ 0, %19 ], [ 0, %23 ], [ 0, %27 ], [ 0, %15 ], [ 0, %7 ], [ 0, %2 ], [ 0, %33 ], [ %20, %22 ], [ %17, %16 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @max98090_jack_work(ptr nocapture noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -48
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = tail call i32 @snd_soc_component_update_bits(ptr noundef %3, i32 noundef 61, i32 noundef 64, i32 noundef 0) #8
  tail call void @msleep(i32 noundef 50) #8
  %9 = tail call i32 @snd_soc_component_read(ptr noundef %3, i32 noundef 2) #8
  %10 = tail call i32 @snd_soc_component_update_bits(ptr noundef %3, i32 noundef 61, i32 noundef 64, i32 noundef 64) #8
  br label %11

11:                                               ; preds = %7, %1
  %12 = tail call i32 @snd_soc_component_read(ptr noundef %3, i32 noundef 2) #8
  %13 = and i32 %12, 6
  switch i32 %13, label %21 [
    i32 6, label %18
    i32 0, label %14
    i32 2, label %17
  ]

14:                                               ; preds = %11
  %15 = load i32, ptr %4, align 4
  %16 = icmp eq i32 %15, 3
  br i1 %16, label %21, label %18

17:                                               ; preds = %11
  br label %18

18:                                               ; preds = %17, %14, %11
  %19 = phi i32 [ 3, %17 ], [ 0, %11 ], [ 2, %14 ]
  %20 = phi i32 [ 3, %17 ], [ 0, %11 ], [ 1, %14 ]
  store i32 %19, ptr %4, align 4
  br label %21

21:                                               ; preds = %18, %14, %11
  %22 = phi i32 [ 0, %11 ], [ 16387, %14 ], [ %20, %18 ]
  %23 = getelementptr i8, ptr %0, i32 104
  %24 = load ptr, ptr %23, align 4
  tail call void @snd_soc_jack_report(ptr noundef %24, i32 noundef %22, i32 noundef 16387) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @max98090_pll_det_enable_work(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr i8, ptr %0, i32 -96
  %5 = getelementptr i8, ptr %0, i32 -92
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %7 = load ptr, ptr %4, align 4
  %8 = call i32 @regmap_read(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2) #8
  %9 = load ptr, ptr %4, align 4
  %10 = call i32 @regmap_read(ptr noundef %9, i32 noundef 3, ptr noundef nonnull %3) #8
  %11 = load i32, ptr %3, align 4
  %12 = load i32, ptr %2, align 4
  %13 = and i32 %12, %11
  store i32 %13, ptr %2, align 4
  %14 = and i32 %13, 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = load ptr, ptr @system_power_efficient_wq, align 4
  %18 = getelementptr i8, ptr %0, i32 -44
  %19 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %17, ptr noundef %18, i32 noundef 10) #8
  br label %20

20:                                               ; preds = %16, %1
  %21 = call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 3, i32 noundef 32, i32 noundef 32) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @max98090_pll_det_disable_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -136
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 -44
  %5 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %4) #8
  %6 = tail call i32 @snd_soc_component_update_bits(ptr noundef %3, i32 noundef 3, i32 noundef 32, i32 noundef 0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_add_component_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_new_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_add_routes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max98090_get_enab_tlv(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = inttoptr i32 %10 to ptr
  %12 = getelementptr inbounds %struct.soc_mixer_control, ptr %11, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  %15 = tail call i32 @llvm.ctlz.i32(i32 %13, i1 false) #8, !range !10
  %16 = sub nuw nsw i32 32, %15
  %17 = shl nsw i32 -1, %16
  %18 = xor i32 %17, -1
  %19 = select i1 %14, i32 0, i32 %18
  %20 = getelementptr inbounds %struct.soc_mixer_control, ptr %11, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = tail call i32 @snd_soc_component_read(ptr noundef %4, i32 noundef %21) #8
  %23 = load i32, ptr %20, align 4
  switch i32 %23, label %44 [
    i32 16, label %24
    i32 17, label %26
    i32 26, label %28
  ]

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.max98090_priv, ptr %8, i32 0, i32 20
  br label %30

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.max98090_priv, ptr %8, i32 0, i32 21
  br label %30

28:                                               ; preds = %2
  %29 = getelementptr inbounds %struct.max98090_priv, ptr %8, i32 0, i32 22
  br label %30

30:                                               ; preds = %28, %26, %24
  %31 = phi ptr [ %29, %28 ], [ %27, %26 ], [ %25, %24 ]
  %32 = getelementptr inbounds %struct.soc_mixer_control, ptr %11, i32 0, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = lshr i32 %22, %33
  %35 = and i32 %34, %19
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %30
  %38 = add i32 %35, -1
  store i32 %38, ptr %31, align 4
  br label %41

39:                                               ; preds = %30
  %40 = load i32, ptr %31, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  %43 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %42, ptr %43, align 8
  br label %44

44:                                               ; preds = %41, %2
  %45 = phi i32 [ 0, %41 ], [ -22, %2 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max98090_put_enab_tlv(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = inttoptr i32 %10 to ptr
  %12 = getelementptr inbounds %struct.soc_mixer_control, ptr %11, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  %15 = tail call i32 @llvm.ctlz.i32(i32 %13, i1 false) #8, !range !10
  %16 = sub nuw nsw i32 32, %15
  %17 = shl nsw i32 -1, %16
  %18 = xor i32 %17, -1
  %19 = select i1 %14, i32 0, i32 %18
  %20 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %21 = load i32, ptr %20, align 8
  %22 = getelementptr inbounds %struct.soc_mixer_control, ptr %11, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = tail call i32 @snd_soc_component_read(ptr noundef %4, i32 noundef %23) #8
  %25 = load i32, ptr %22, align 4
  switch i32 %25, label %46 [
    i32 16, label %26
    i32 17, label %28
    i32 26, label %30
  ]

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.max98090_priv, ptr %8, i32 0, i32 20
  br label %32

28:                                               ; preds = %2
  %29 = getelementptr inbounds %struct.max98090_priv, ptr %8, i32 0, i32 21
  br label %32

30:                                               ; preds = %2
  %31 = getelementptr inbounds %struct.max98090_priv, ptr %8, i32 0, i32 22
  br label %32

32:                                               ; preds = %30, %28, %26
  %33 = phi ptr [ %31, %30 ], [ %29, %28 ], [ %27, %26 ]
  %34 = getelementptr inbounds %struct.soc_mixer_control, ptr %11, i32 0, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = lshr i32 %24, %35
  %37 = and i32 %36, %19
  store i32 %21, ptr %33, align 4
  %38 = icmp eq i32 %37, 0
  %39 = add i32 %21, 1
  %40 = select i1 %38, i32 0, i32 %39
  %41 = load i32, ptr %22, align 4
  %42 = load i32, ptr %34, align 4
  %43 = shl i32 %19, %42
  %44 = shl i32 %40, %42
  %45 = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef %41, i32 noundef %43, i32 noundef %44) #8
  br label %46

46:                                               ; preds = %32, %2
  %47 = phi i32 [ 0, %32 ], [ -22, %2 ]
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw_range(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw_range(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw_range(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_bytes_info(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_bytes_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_bytes_put(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @max98090_shdn_event(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #7 {
  %4 = and i32 %2, 2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 -92
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 8
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.max98090_priv, ptr %12, i32 0, i32 24
  store i8 1, ptr %13, align 1
  br label %14

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max98090_micinput_event(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -104
  %7 = getelementptr i8, ptr %5, i32 -92
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 8
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @snd_soc_component_read(ptr noundef %6, i32 noundef %12) #8
  %14 = lshr i32 %13, 5
  %15 = and i32 %14, 3
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %3
  %18 = load i32, ptr %11, align 4
  %19 = icmp eq i32 %18, 16
  %20 = add nsw i32 %15, -1
  %21 = getelementptr inbounds %struct.max98090_priv, ptr %10, i32 0, i32 20
  %22 = getelementptr inbounds %struct.max98090_priv, ptr %10, i32 0, i32 21
  %23 = select i1 %19, ptr %21, ptr %22
  store i32 %20, ptr %23, align 4
  br label %24

24:                                               ; preds = %17, %3
  switch i32 %2, label %47 [
    i32 2, label %25
    i32 8, label %36
  ]

25:                                               ; preds = %24
  %26 = load i32, ptr %11, align 4
  %27 = icmp eq i32 %26, 16
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.max98090_priv, ptr %10, i32 0, i32 20
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, 1
  br label %42

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.max98090_priv, ptr %10, i32 0, i32 21
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, 1
  br label %39

36:                                               ; preds = %24
  %37 = load i32, ptr %11, align 4
  %38 = icmp eq i32 %37, 16
  br i1 %38, label %42, label %39

39:                                               ; preds = %36, %32
  %40 = phi i32 [ %35, %32 ], [ 0, %36 ]
  %41 = phi i32 [ %26, %32 ], [ %37, %36 ]
  br label %42

42:                                               ; preds = %39, %36, %28
  %43 = phi i32 [ %40, %39 ], [ %31, %28 ], [ 0, %36 ]
  %44 = phi i32 [ %41, %39 ], [ 16, %28 ], [ 16, %36 ]
  %45 = shl i32 %43, 5
  %46 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef %44, i32 noundef 96, i32 noundef %45) #8
  br label %47

47:                                               ; preds = %42, %24
  %48 = phi i32 [ -22, %24 ], [ 0, %42 ]
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max98090_dai_set_sysclk(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_soc_component, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.max98090_priv, ptr %10, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, %2
  br i1 %13, label %45, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.max98090_priv, ptr %10, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = tail call i32 @clk_round_rate(ptr noundef %16, i32 noundef %2) #8
  %20 = load ptr, ptr %15, align 4
  %21 = tail call i32 @clk_set_rate(ptr noundef %20, i32 noundef %19) #8
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %2, %14 ], [ %19, %18 ]
  %24 = add i32 %23, -10000000
  %25 = icmp ult i32 %24, 10000001
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = tail call i32 @snd_soc_component_write(ptr noundef %6, i32 noundef 27, i32 noundef 16) #8
  br label %42

28:                                               ; preds = %22
  %29 = add i32 %23, -20000001
  %30 = icmp ult i32 %29, 20000000
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = tail call i32 @snd_soc_component_write(ptr noundef %6, i32 noundef 27, i32 noundef 32) #8
  %33 = lshr i32 %23, 1
  br label %42

34:                                               ; preds = %28
  %35 = add i32 %23, -40000001
  %36 = icmp ult i32 %35, 20000000
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = tail call i32 @snd_soc_component_write(ptr noundef %6, i32 noundef 27, i32 noundef 48) #8
  %39 = lshr i32 %23, 2
  br label %42

40:                                               ; preds = %34
  %41 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.350) #9
  br label %45

42:                                               ; preds = %37, %31, %26
  %43 = phi i32 [ %33, %31 ], [ %39, %37 ], [ %23, %26 ]
  %44 = getelementptr inbounds %struct.max98090_priv, ptr %10, i32 0, i32 6
  store i32 %43, ptr %44, align 4
  store i32 %23, ptr %11, align 4
  br label %45

45:                                               ; preds = %42, %40, %4
  %46 = phi i32 [ 0, %42 ], [ -22, %40 ], [ 0, %4 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max98090_dai_set_fmt(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.max98090_priv, ptr %8, i32 0, i32 16
  store i32 %1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.max98090_priv, ptr %8, i32 0, i32 10, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, %1
  br i1 %12, label %64, label %13

13:                                               ; preds = %2
  store i32 %1, ptr %10, align 4
  %14 = and i32 %1, 61440
  %15 = add nsw i32 %14, -4096
  %16 = lshr exact i32 %15, 12
  switch i32 %16, label %28 [
    i32 3, label %17
    i32 0, label %21
  ]

17:                                               ; preds = %13
  %18 = tail call i32 @snd_soc_component_write(ptr noundef %4, i32 noundef 29, i32 noundef 0) #8
  %19 = tail call i32 @snd_soc_component_write(ptr noundef %4, i32 noundef 30, i32 noundef 0) #8
  %20 = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 28, i32 noundef 1, i32 noundef 0) #8
  br label %30

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.max98090_priv, ptr %8, i32 0, i32 17
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 3
  %25 = select i1 %24, i32 130, i32 129
  %26 = icmp eq i32 %23, 4
  %27 = select i1 %26, i32 131, i32 %25
  br label %30

28:                                               ; preds = %13
  %29 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.351) #9
  br label %64

30:                                               ; preds = %21, %17
  %31 = phi i8 [ 1, %21 ], [ 0, %17 ]
  %32 = phi i32 [ %27, %21 ], [ 0, %17 ]
  %33 = getelementptr inbounds %struct.max98090_priv, ptr %8, i32 0, i32 23
  store i8 %31, ptr %33, align 4
  %34 = tail call i32 @snd_soc_component_write(ptr noundef %4, i32 noundef 33, i32 noundef %32) #8
  %35 = and i32 %1, 15
  %36 = add nsw i32 %35, -1
  %37 = icmp ult i32 %36, 3
  br i1 %37, label %40, label %38

38:                                               ; preds = %30
  %39 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.352) #9
  br label %64

40:                                               ; preds = %30
  %41 = trunc i32 %36 to i24
  %42 = shl i24 %41, 3
  %43 = lshr i24 8196, %42
  %44 = trunc i24 %43 to i8
  %45 = lshr i32 %1, 8
  %46 = and i32 %45, 15
  switch i32 %46, label %53 [
    i32 0, label %55
    i32 2, label %47
    i32 3, label %49
    i32 4, label %51
  ]

47:                                               ; preds = %40
  %48 = or i8 %44, 16
  br label %55

49:                                               ; preds = %40
  %50 = or i8 %44, 8
  br label %55

51:                                               ; preds = %40
  %52 = or i8 %44, 24
  br label %55

53:                                               ; preds = %40
  %54 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.353) #9
  br label %64

55:                                               ; preds = %51, %49, %47, %40
  %56 = phi i8 [ %52, %51 ], [ %50, %49 ], [ %48, %47 ], [ %44, %40 ]
  %57 = getelementptr inbounds %struct.max98090_priv, ptr %8, i32 0, i32 17
  %58 = load i32, ptr %57, align 4
  %59 = icmp sgt i32 %58, 1
  %60 = xor i8 %56, 8
  %61 = select i1 %59, i8 %60, i8 %56
  %62 = zext i8 %61 to i32
  %63 = tail call i32 @snd_soc_component_write(ptr noundef %4, i32 noundef 34, i32 noundef %62) #8
  br label %64

64:                                               ; preds = %55, %53, %38, %28, %2
  %65 = phi i32 [ -22, %28 ], [ -22, %38 ], [ -22, %53 ], [ 0, %55 ], [ 0, %2 ]
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max98090_set_tdm_slot(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_soc_component, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %11 = load ptr, ptr %10, align 8
  %12 = icmp ugt i32 %3, 4
  br i1 %12, label %25, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.max98090_priv, ptr %11, i32 0, i32 17
  store i32 %3, ptr %14, align 4
  %15 = getelementptr inbounds %struct.max98090_priv, ptr %11, i32 0, i32 18
  store i32 %4, ptr %15, align 4
  %16 = icmp ugt i32 %3, 1
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = tail call i32 @snd_soc_component_write(ptr noundef %7, i32 noundef 36, i32 noundef 16) #8
  %19 = tail call i32 @snd_soc_component_update_bits(ptr noundef %7, i32 noundef 35, i32 noundef 1, i32 noundef 1) #8
  br label %20

20:                                               ; preds = %17, %13
  %21 = getelementptr inbounds %struct.max98090_priv, ptr %11, i32 0, i32 10, i32 0, i32 1
  store i32 0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.max98090_priv, ptr %11, i32 0, i32 16
  %23 = load i32, ptr %22, align 4
  %24 = tail call i32 @max98090_dai_set_fmt(ptr noundef %0, i32 noundef %23)
  br label %25

25:                                               ; preds = %20, %5
  %26 = phi i32 [ 0, %20 ], [ -22, %5 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max98090_dai_mute(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq i32 %1, 0
  %7 = select i1 %6, i32 0, i32 128
  %8 = tail call i32 @snd_soc_component_update_bits(ptr noundef %5, i32 noundef 39, i32 noundef 128, i32 noundef %7) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max98090_dai_startup(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.max98090_priv, ptr %8, i32 0, i32 16
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 15
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %15, i32 0, i32 46, i32 1
  store i64 4, ptr %16, align 8
  %17 = load ptr, ptr %14, align 4
  %18 = tail call i32 @snd_pcm_hw_constraint_msbits(ptr noundef %17, i32 noundef 0, i32 noundef 16, i32 noundef 16) #8
  br label %19

19:                                               ; preds = %13, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max98090_dai_hw_params(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_soc_component, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.max98090_priv, ptr %9, i32 0, i32 10
  %11 = tail call i32 @snd_soc_params_to_bclk(ptr noundef %1) #8
  %12 = getelementptr inbounds %struct.max98090_priv, ptr %9, i32 0, i32 7
  store i32 %11, ptr %12, align 4
  %13 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = shl i32 %11, 1
  store i32 %17, ptr %12, align 4
  br label %18

18:                                               ; preds = %16, %3
  %19 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.max98090_priv, ptr %9, i32 0, i32 8
  store i32 %20, ptr %21, align 4
  %22 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %30, %18
  %26 = phi i32 [ 0, %18 ], [ 32, %30 ]
  %27 = phi i32 [ %23, %18 ], [ %32, %30 ]
  %28 = tail call i32 @llvm.cttz.i32(i32 %27, i1 true) #8, !range !10
  %29 = or i32 %28, %26
  br label %34

30:                                               ; preds = %18
  %31 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %25

34:                                               ; preds = %30, %25
  %35 = phi i32 [ %29, %25 ], [ 0, %30 ]
  %36 = tail call i32 @snd_pcm_format_width(i32 noundef %35) #8
  %37 = icmp eq i32 %36, 16
  br i1 %37, label %38, label %229

38:                                               ; preds = %34
  %39 = tail call i32 @snd_soc_component_update_bits(ptr noundef %5, i32 noundef 34, i32 noundef 3, i32 noundef 0) #8
  %40 = getelementptr inbounds %struct.max98090_priv, ptr %9, i32 0, i32 23
  %41 = load i8, ptr %40, align 4, !range !9
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %131, label %43

43:                                               ; preds = %38
  %44 = load ptr, ptr %6, align 4
  %45 = getelementptr inbounds %struct.device, ptr %44, i32 0, i32 8
  %46 = load ptr, ptr %45, align 8
  %47 = getelementptr inbounds %struct.max98090_priv, ptr %46, i32 0, i32 5
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.354) #9
  br label %131

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.max98090_priv, ptr %46, i32 0, i32 7
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.max98090_priv, ptr %46, i32 0, i32 8
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55, %51
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.355) #9
  br label %131

60:                                               ; preds = %55
  %61 = tail call i32 @snd_soc_component_read(ptr noundef %5, i32 noundef 33) #8
  %62 = and i32 %61, 128
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %131, label %64

64:                                               ; preds = %60
  %65 = load i32, ptr %47, align 4
  switch i32 %65, label %104 [
    i32 12000000, label %66
    i32 13000000, label %76
    i32 16000000, label %78
    i32 19200000, label %80
  ]

66:                                               ; preds = %64
  %67 = load i32, ptr %56, align 4
  switch i32 %67, label %104 [
    i32 8000, label %72
    i32 16000, label %68
  ]

68:                                               ; preds = %66
  br label %72

69:                                               ; preds = %76
  br label %72

70:                                               ; preds = %78
  br label %72

71:                                               ; preds = %80
  br label %72

72:                                               ; preds = %80, %78, %76, %71, %70, %69, %68, %66
  %73 = phi i32 [ 128, %66 ], [ 160, %76 ], [ 192, %78 ], [ 224, %80 ], [ 144, %68 ], [ 176, %69 ], [ 208, %70 ], [ 240, %71 ]
  %74 = tail call i32 @snd_soc_component_update_bits(ptr noundef %5, i32 noundef 28, i32 noundef 240, i32 noundef %73) #8
  %75 = tail call i32 @snd_soc_component_update_bits(ptr noundef %5, i32 noundef 28, i32 noundef 1, i32 noundef 0) #8
  br label %131

76:                                               ; preds = %64
  %77 = load i32, ptr %56, align 4
  switch i32 %77, label %104 [
    i32 8000, label %72
    i32 16000, label %69
    i32 44100, label %84
    i32 48000, label %82
  ]

78:                                               ; preds = %64
  %79 = load i32, ptr %56, align 4
  switch i32 %79, label %104 [
    i32 8000, label %72
    i32 16000, label %70
  ]

80:                                               ; preds = %64
  %81 = load i32, ptr %56, align 4
  switch i32 %81, label %104 [
    i32 8000, label %72
    i32 16000, label %71
    i32 44100, label %84
    i32 48000, label %83
  ]

82:                                               ; preds = %76
  br label %84

83:                                               ; preds = %80
  br label %84

84:                                               ; preds = %83, %82, %80, %76
  %85 = phi i32 [ 0, %76 ], [ 1, %82 ], [ 2, %80 ], [ 3, %83 ]
  %86 = tail call i32 @snd_soc_component_update_bits(ptr noundef %5, i32 noundef 28, i32 noundef 240, i32 noundef 0) #8
  %87 = tail call i32 @snd_soc_component_update_bits(ptr noundef %5, i32 noundef 28, i32 noundef 1, i32 noundef 1) #8
  %88 = getelementptr [4 x i64], ptr @ni_value, i32 0, i32 %85
  %89 = load i64, ptr %88, align 8
  %90 = trunc i64 %89 to i32
  %91 = lshr i32 %90, 8
  %92 = and i32 %91, 127
  %93 = tail call i32 @snd_soc_component_write(ptr noundef %5, i32 noundef 29, i32 noundef %92) #8
  %94 = and i32 %90, 255
  %95 = tail call i32 @snd_soc_component_write(ptr noundef %5, i32 noundef 30, i32 noundef %94) #8
  %96 = getelementptr [4 x i64], ptr @mi_value, i32 0, i32 %85
  %97 = load i64, ptr %96, align 8
  %98 = trunc i64 %97 to i32
  %99 = lshr i32 %98, 8
  %100 = and i32 %99, 127
  %101 = tail call i32 @snd_soc_component_write(ptr noundef %5, i32 noundef 31, i32 noundef %100) #8
  %102 = and i32 %98, 255
  %103 = tail call i32 @snd_soc_component_write(ptr noundef %5, i32 noundef 32, i32 noundef %102) #8
  br label %131

104:                                              ; preds = %80, %78, %76, %66, %64
  %105 = tail call i32 @snd_soc_component_update_bits(ptr noundef %5, i32 noundef 28, i32 noundef 240, i32 noundef 0) #8
  %106 = tail call i32 @snd_soc_component_update_bits(ptr noundef %5, i32 noundef 28, i32 noundef 1, i32 noundef 0) #8
  %107 = load i32, ptr %56, align 4
  %108 = icmp ult i32 %107, 50000
  %109 = select i1 %108, i64 6291456, i64 3145728
  %110 = zext i32 %107 to i64
  %111 = mul nuw nsw i64 %109, %110
  %112 = load i32, ptr %47, align 4
  %113 = icmp ult i64 %111, 4294967296
  br i1 %113, label %114, label %118, !prof !11

114:                                              ; preds = %104
  %115 = trunc i64 %111 to i32
  %116 = udiv i32 %115, %112
  %117 = zext i32 %116 to i64
  br label %121

118:                                              ; preds = %104
  %119 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %112, i64 %111) #10, !srcloc !12
  %120 = extractvalue { i64, i64 } %119, 1
  br label %121

121:                                              ; preds = %118, %114
  %122 = phi i64 [ %117, %114 ], [ %120, %118 ]
  %123 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %123, ptr noundef nonnull @.str.356) #9
  %124 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %124, ptr noundef nonnull @.str.357, i64 noundef %122) #9
  %125 = trunc i64 %122 to i32
  %126 = lshr i32 %125, 8
  %127 = and i32 %126, 127
  %128 = tail call i32 @snd_soc_component_write(ptr noundef %5, i32 noundef 29, i32 noundef %127) #8
  %129 = and i32 %125, 255
  %130 = tail call i32 @snd_soc_component_write(ptr noundef %5, i32 noundef 30, i32 noundef %129) #8
  br label %131

131:                                              ; preds = %121, %84, %72, %60, %59, %50, %38
  %132 = load i32, ptr %21, align 4
  store i32 %132, ptr %10, align 4
  %133 = icmp ult i32 %132, 24000
  %134 = select i1 %133, i32 0, i32 128
  %135 = tail call i32 @snd_soc_component_update_bits(ptr noundef %5, i32 noundef 38, i32 noundef 128, i32 noundef %134) #8
  %136 = load i32, ptr %21, align 4
  %137 = icmp ult i32 %136, 50000
  %138 = select i1 %137, i32 0, i32 16
  %139 = tail call i32 @snd_soc_component_update_bits(ptr noundef %5, i32 noundef 38, i32 noundef 16, i32 noundef %138) #8
  %140 = getelementptr inbounds %struct.max98090_priv, ptr %9, i32 0, i32 9
  %141 = load i32, ptr %140, align 4
  %142 = getelementptr inbounds %struct.max98090_priv, ptr %9, i32 0, i32 6
  %143 = load i32, ptr %142, align 4
  %144 = load i32, ptr %21, align 4
  %145 = icmp slt i32 %143, 11289601
  br i1 %145, label %172, label %156

146:                                              ; preds = %170, %166, %162, %158
  %147 = phi i32 [ 4, %170 ], [ 3, %166 ], [ 2, %162 ], [ 1, %158 ]
  %148 = phi i32 [ 19200000, %170 ], [ 13000000, %166 ], [ 12288000, %162 ], [ 12000000, %158 ]
  %149 = add nsw i32 %147, -1
  %150 = getelementptr [5 x %struct.dmic_table], ptr @dmic_table, i32 0, i32 %149
  %151 = load i32, ptr %150, align 4
  %152 = sub i32 %143, %151
  %153 = sub nsw i32 %148, %143
  %154 = icmp slt i32 %152, %153
  %155 = select i1 %154, i32 %149, i32 %147
  br label %172

156:                                              ; preds = %131
  %157 = icmp eq i32 %143, 12000000
  br i1 %157, label %172, label %158

158:                                              ; preds = %156
  %159 = icmp ult i32 %143, 12000000
  br i1 %159, label %146, label %160

160:                                              ; preds = %158
  %161 = icmp eq i32 %143, 12288000
  br i1 %161, label %172, label %162

162:                                              ; preds = %160
  %163 = icmp ult i32 %143, 12288000
  br i1 %163, label %146, label %164

164:                                              ; preds = %162
  %165 = icmp eq i32 %143, 13000000
  br i1 %165, label %172, label %166

166:                                              ; preds = %164
  %167 = icmp ult i32 %143, 13000000
  br i1 %167, label %146, label %168

168:                                              ; preds = %166
  %169 = icmp eq i32 %143, 19200000
  br i1 %169, label %172, label %170

170:                                              ; preds = %168
  %171 = icmp ult i32 %143, 19200000
  br i1 %171, label %146, label %229

172:                                              ; preds = %168, %164, %160, %156, %146, %131
  %173 = phi i32 [ 4, %168 ], [ 3, %164 ], [ 2, %160 ], [ 1, %156 ], [ 0, %131 ], [ %155, %146 ]
  %174 = sdiv i32 %143, -2
  %175 = add i32 %174, %141
  %176 = tail call i32 @llvm.abs.i32(i32 %175, i1 false) #8
  %177 = sdiv i32 %143, -3
  %178 = add i32 %177, %141
  %179 = tail call i32 @llvm.abs.i32(i32 %178, i1 false) #8
  %180 = icmp slt i32 %179, %176
  %181 = zext i1 %180 to i32
  %182 = tail call i32 @llvm.smin.i32(i32 %179, i32 %176) #8
  %183 = sdiv i32 %143, -4
  %184 = add i32 %183, %141
  %185 = tail call i32 @llvm.abs.i32(i32 %184, i1 false) #8
  %186 = icmp slt i32 %185, %182
  %187 = select i1 %186, i32 2, i32 %181
  %188 = tail call i32 @llvm.smin.i32(i32 %185, i32 %182) #8
  %189 = sdiv i32 %143, -5
  %190 = add i32 %189, %141
  %191 = tail call i32 @llvm.abs.i32(i32 %190, i1 false) #8
  %192 = icmp slt i32 %191, %188
  %193 = select i1 %192, i32 3, i32 %187
  %194 = tail call i32 @llvm.smin.i32(i32 %191, i32 %188) #8
  %195 = sdiv i32 %143, -6
  %196 = add i32 %195, %141
  %197 = tail call i32 @llvm.abs.i32(i32 %196, i1 false) #8
  %198 = icmp slt i32 %197, %194
  %199 = select i1 %198, i32 4, i32 %193
  %200 = tail call i32 @llvm.smin.i32(i32 %197, i32 %194) #8
  %201 = sdiv i32 %143, -8
  %202 = add i32 %201, %141
  %203 = tail call i32 @llvm.abs.i32(i32 %202, i1 false) #8
  %204 = icmp slt i32 %203, %200
  %205 = select i1 %204, i32 5, i32 %199
  %206 = icmp sgt i32 %144, 12000
  br i1 %206, label %207, label %216

207:                                              ; preds = %172
  %208 = icmp ugt i32 %144, 24000
  br i1 %208, label %209, label %216

209:                                              ; preds = %207
  %210 = icmp ugt i32 %144, 38050
  br i1 %210, label %211, label %216

211:                                              ; preds = %209
  %212 = icmp ugt i32 %144, 46050
  br i1 %212, label %213, label %216

213:                                              ; preds = %211
  %214 = icmp ugt i32 %144, 72000
  %215 = select i1 %214, i32 5, i32 4
  br label %216

216:                                              ; preds = %213, %211, %209, %207, %172
  %217 = phi i32 [ 0, %172 ], [ 1, %207 ], [ 2, %209 ], [ 3, %211 ], [ %215, %213 ]
  %218 = getelementptr [5 x %struct.dmic_table], ptr @dmic_table, i32 0, i32 %173, i32 1, i32 %205
  %219 = load i32, ptr %218, align 4
  %220 = getelementptr [5 x %struct.dmic_table], ptr @dmic_table, i32 0, i32 %173, i32 1, i32 %205, i32 1, i32 %217
  %221 = load i32, ptr %220, align 4
  %222 = load ptr, ptr %9, align 4
  %223 = shl nuw nsw i32 %205, 4
  %224 = tail call i32 @regmap_update_bits_base(ptr noundef %222, i32 noundef 19, i32 noundef 112, i32 noundef %223, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %225 = load ptr, ptr %9, align 4
  %226 = shl i32 %221, 4
  %227 = or i32 %226, %219
  %228 = tail call i32 @regmap_update_bits_base(ptr noundef %225, i32 noundef 20, i32 noundef 243, i32 noundef %227, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %229

229:                                              ; preds = %216, %170, %34
  %230 = phi i32 [ -22, %34 ], [ 0, %170 ], [ 0, %216 ]
  ret i32 %230
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max98090_dai_trigger(ptr nocapture noundef readnone %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_soc_component, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  switch i32 %1, label %32 [
    i32 1, label %10
    i32 6, label %10
    i32 4, label %10
    i32 0, label %21
    i32 5, label %21
    i32 3, label %21
  ]

10:                                               ; preds = %3, %3, %3
  %11 = getelementptr inbounds %struct.max98090_priv, ptr %9, i32 0, i32 23
  %12 = load i8, ptr %11, align 4, !range !9
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %10
  %15 = tail call i32 @snd_soc_dai_active(ptr noundef %2) #8
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %32

17:                                               ; preds = %14
  %18 = load ptr, ptr @system_power_efficient_wq, align 4
  %19 = getelementptr inbounds %struct.max98090_priv, ptr %9, i32 0, i32 13
  %20 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %18, ptr noundef %19, i32 noundef 1) #8
  br label %32

21:                                               ; preds = %3, %3, %3
  %22 = getelementptr inbounds %struct.max98090_priv, ptr %9, i32 0, i32 23
  %23 = load i8, ptr %22, align 4, !range !9
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = tail call i32 @snd_soc_dai_active(ptr noundef %2) #8
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.max98090_priv, ptr %9, i32 0, i32 14
  %30 = load ptr, ptr @system_wq, align 4
  %31 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %30, ptr noundef %29) #8
  br label %32

32:                                               ; preds = %28, %25, %21, %17, %14, %10, %3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_msbits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_params_to_bclk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max98090_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  %5 = load ptr, ptr %4, align 4
  tail call void @regcache_mark_dirty(ptr noundef %5) #8
  %6 = load ptr, ptr %4, align 4
  %7 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 0, i32 noundef 128) #8
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.max98090_priv, ptr %4, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.snd_soc_component, ptr %11, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.20, i32 noundef %7) #9
  br label %15

14:                                               ; preds = %1
  tail call void @msleep(i32 noundef 20) #8
  br label %15

15:                                               ; preds = %14, %9
  %16 = load ptr, ptr %4, align 4
  %17 = call i32 @regmap_read(ptr noundef %16, i32 noundef 1, ptr noundef nonnull %2) #8
  %18 = load ptr, ptr %4, align 4
  %19 = call i32 @regcache_sync(ptr noundef %18) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max98090_runtime_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  tail call void @regcache_cache_only(ptr noundef %4, i1 noundef zeroext true) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max98090_runtime_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  tail call void @regcache_cache_only(ptr noundef %4, i1 noundef zeroext false) #8
  %5 = load ptr, ptr %3, align 4
  %6 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 0, i32 noundef 128) #8
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.max98090_priv, ptr %3, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_soc_component, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.20, i32 noundef %6) #9
  br label %14

13:                                               ; preds = %1
  tail call void @msleep(i32 noundef 20) #8
  br label %14

14:                                               ; preds = %13, %8
  %15 = load ptr, ptr %3, align 4
  %16 = tail call i32 @regcache_sync(ptr noundef %15) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

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
!9 = !{i8 0, i8 2}
!10 = !{i32 0, i32 33}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2147769567, i64 2147769847, i64 2147770181, i64 2147770515}
