; ModuleID = '/llk/IR/sound/soc/tegra/tegra_asoc_machine.c_pt.bc'
source_filename = "../sound/soc/tegra/tegra_asoc_machine.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_asoc_machine_init:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_asoc_machine_init\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_asoc_machine_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_asoc_machine_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_asoc_machine_probe\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_asoc_machine_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.snd_soc_jack = type { %struct.mutex, ptr, ptr, %struct.list_head, i32, %struct.blocking_notifier_head, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.snd_soc_jack_pin = type { %struct.list_head, ptr, i32, i8 }
%struct.snd_soc_jack_gpio = type { i32, i32, ptr, ptr, i32, i32, i32, i8, ptr, %struct.delayed_work, %struct.notifier_block, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.77, i32 }
%union.anon.77 = type { ptr }
%struct.snd_soc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.85, ptr }
%union.anon.85 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.tegra_asoc_data = type { ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [80 x i8], [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.snd_soc_dai_link_component = type { ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.tegra_machine = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.snd_soc_dai_link = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i24 }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }

@.str = private unnamed_addr constant [16 x i8] c"Headphones Jack\00", align 1
@tegra_machine_hp_jack = internal global %struct.snd_soc_jack zeroinitializer, align 4
@tegra_machine_hp_jack_pins = internal global [2 x %struct.snd_soc_jack_pin] [%struct.snd_soc_jack_pin { %struct.list_head zeroinitializer, ptr @.str.40, i32 1, i8 0 }, %struct.snd_soc_jack_pin { %struct.list_head zeroinitializer, ptr @.str.41, i32 1, i8 0 }], align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Headphones Jack creation failed: %d\0A\00", align 1
@tegra_machine_hp_jack_gpio = internal global %struct.snd_soc_jack_gpio { i32 0, i32 0, ptr null, ptr @.str.42, i32 1, i32 0, i32 150, i8 0, ptr null, %struct.delayed_work zeroinitializer, %struct.notifier_block zeroinitializer, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"HP GPIOs not added: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Headset Jack\00", align 1
@tegra_machine_headset_jack = internal global %struct.snd_soc_jack zeroinitializer, align 4
@tegra_machine_headset_jack_pins = internal global [2 x %struct.snd_soc_jack_pin] [%struct.snd_soc_jack_pin { %struct.list_head zeroinitializer, ptr @.str.43, i32 2, i8 0 }, %struct.snd_soc_jack_pin { %struct.list_head zeroinitializer, ptr @.str.44, i32 1, i8 0 }], align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Headset Jack creation failed: %d\0A\00", align 1
@tegra_machine_headset_jack_gpio = internal global %struct.snd_soc_jack_gpio { i32 0, i32 0, ptr null, ptr @.str.45, i32 3, i32 0, i32 150, i8 0, ptr null, %struct.delayed_work zeroinitializer, %struct.notifier_block zeroinitializer, ptr null, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"Headset GPIOs not added: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Mic Jack\00", align 1
@tegra_machine_mic_jack = internal global %struct.snd_soc_jack zeroinitializer, align 4
@tegra_machine_mic_jack_pins = internal global [2 x %struct.snd_soc_jack_pin] [%struct.snd_soc_jack_pin { %struct.list_head zeroinitializer, ptr @.str.6, i32 2, i8 0 }, %struct.snd_soc_jack_pin { %struct.list_head zeroinitializer, ptr @.str.43, i32 2, i8 0 }], align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"Mic Jack creation failed: %d\0A\00", align 1
@tegra_machine_mic_jack_gpio = internal global %struct.snd_soc_jack_gpio { i32 0, i32 0, ptr null, ptr @.str.46, i32 2, i32 0, i32 150, i8 0, ptr null, %struct.delayed_work zeroinitializer, %struct.notifier_block zeroinitializer, ptr null, ptr null, ptr null }, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"Mic GPIOs not added: %d\0A\00", align 1
@__kstrtab_tegra_asoc_machine_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_asoc_machine_init = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_asoc_machine_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_asoc_machine_init to i32), ptr @__kstrtab_tegra_asoc_machine_init, ptr @__kstrtabns_tegra_asoc_machine_init }, section "___ksymtab_gpl+tegra_asoc_machine_init", align 4
@.str.9 = private unnamed_addr constant [15 x i8] c"nvidia,hp-mute\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"nvidia,hp-det\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"nvidia,mic-det\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"nvidia,spkr-en\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"nvidia,int-mic-en\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"nvidia,ext-mic-en\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"nvidia,model\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"nvidia,audio-routing\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"nvidia,ac97-controller\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"nvidia,audio-codec\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"nvidia,i2s-controller\00", align 1
@tegra_machine_controls = internal constant [8 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.48, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.77 zeroinitializer, i32 ptrtoint (ptr @.str.49 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.50, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.77 zeroinitializer, i32 ptrtoint (ptr @.str.51 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.52, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.77 zeroinitializer, i32 ptrtoint (ptr @.str.53 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.54, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.77 zeroinitializer, i32 ptrtoint (ptr @.str.43 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.55, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.77 zeroinitializer, i32 ptrtoint (ptr @.str.56 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.57, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.77 zeroinitializer, i32 ptrtoint (ptr @.str.58 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.59, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.77 zeroinitializer, i32 ptrtoint (ptr @.str.41 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.60, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.77 zeroinitializer, i32 ptrtoint (ptr @.str.6 to i32) }], align 4
@tegra_machine_snd_ops = internal constant %struct.snd_soc_ops { ptr null, ptr null, ptr @tegra_machine_hw_params, ptr null, ptr null, ptr null }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.20 = private unnamed_addr constant [6 x i8] c"tegra\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"pll_a\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"Can't retrieve clk pll_a\0A\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"pll_a_out0\00", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c"Can't retrieve clk pll_a_out0\0A\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"mclk\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"Can't retrieve clk cdev1\0A\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"assigned-clock-parents\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"nvidia,tegra20\00", align 1
@.str.29 = private unnamed_addr constant [45 x i8] c"Configuring clocks for a legacy device-tree\0A\00", align 1
@.str.30 = private unnamed_addr constant [48 x i8] c"Please update DT to use assigned-clock-parents\0A\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"extern1\00", align 1
@.str.32 = private unnamed_addr constant [28 x i8] c"Can't retrieve clk extern1\0A\00", align 1
@.str.33 = private unnamed_addr constant [35 x i8] c"Set parent failed for clk extern1\0A\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"pmc_clk_out_1\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"Can't retrieve pmc_clk_out_1\0A\00", align 1
@.str.36 = private unnamed_addr constant [37 x i8] c"Set parent failed for pmc_clk_out_1\0A\00", align 1
@.str.37 = private unnamed_addr constant [26 x i8] c"Can't set pll_a rate: %d\0A\00", align 1
@.str.38 = private unnamed_addr constant [31 x i8] c"Can't set pll_a_out0 rate: %d\0A\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"Can't enable cdev1: %d\0A\00", align 1
@__kstrtab_tegra_asoc_machine_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_asoc_machine_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_asoc_machine_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_asoc_machine_probe to i32), ptr @__kstrtab_tegra_asoc_machine_probe, ptr @__kstrtabns_tegra_asoc_machine_probe }, section "___ksymtab_gpl+tegra_asoc_machine_probe", align 4
@tegra_machine_of_match = internal constant [9 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra-audio-trimslice\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra_trimslice_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra-audio-max98090\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra_max98090_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra-audio-sgtl5000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra_sgtl5000_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra-audio-wm9712\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra_wm9712_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra-audio-wm8753\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra_wm8753_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra-audio-rt5677\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra_rt5677_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra-audio-rt5640\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra_rt5640_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra-audio-alc5632\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra_rt5632_data }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author230 = internal constant [42 x i8] c"author=Anatol Pomozov <anatol@google.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author231 = internal constant [40 x i8] c"author=Andrey Danin <danindrey@mail.ru>\00", section ".modinfo", align 1
@__UNIQUE_ID_author232 = internal constant [42 x i8] c"author=Dmitry Osipenko <digetx@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author233 = internal constant [37 x i8] c"author=Ion Agorria <ion@agorria.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author234 = internal constant [38 x i8] c"author=Leon Romanovsky <leon@leon.nu>\00", section ".modinfo", align 1
@__UNIQUE_ID_author235 = internal constant [36 x i8] c"author=Lucas Stach <dev@lynxeye.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_author236 = internal constant [39 x i8] c"author=Marc Dietrich <marvin24@gmx.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_author237 = internal constant [45 x i8] c"author=Marcel Ziswiler <marcel@ziswiler.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author238 = internal constant [43 x i8] c"author=Mike Rapoport <mike@compulab.co.il>\00", section ".modinfo", align 1
@__UNIQUE_ID_author239 = internal constant [43 x i8] c"author=Stephen Warren <swarren@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author240 = internal constant [45 x i8] c"author=Svyatoslav Ryhel <clamor95@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description241 = internal constant [38 x i8] c"description=Tegra machine ASoC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license242 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"Headphone\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"Headphones\00", align 1
@.str.42 = private unnamed_addr constant [21 x i8] c"Headphones detection\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"Headset Mic\00", align 1
@.str.44 = private unnamed_addr constant [20 x i8] c"Headset Stereophone\00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"Headset detection\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"Mic detection\00", align 1
@.str.47 = private unnamed_addr constant [34 x i8] c"Property '%s' missing or invalid\0A\00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"Speakers Switch\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"Speakers\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"Int Spk Switch\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"Int Spk\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"Int Mic Switch\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"Int Mic\00", align 1
@.str.54 = private unnamed_addr constant [19 x i8] c"Headset Mic Switch\00", align 1
@.str.55 = private unnamed_addr constant [22 x i8] c"Internal Mic 1 Switch\00", align 1
@.str.56 = private unnamed_addr constant [15 x i8] c"Internal Mic 1\00", align 1
@.str.57 = private unnamed_addr constant [22 x i8] c"Internal Mic 2 Switch\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"Internal Mic 2\00", align 1
@.str.59 = private unnamed_addr constant [18 x i8] c"Headphones Switch\00", align 1
@.str.60 = private unnamed_addr constant [16 x i8] c"Mic Jack Switch\00", align 1
@.str.61 = private unnamed_addr constant [15 x i8] c"Headphone Jack\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c"Digital Mic\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"Mic\00", align 1
@.str.64 = private unnamed_addr constant [13 x i8] c"Line In Jack\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"Line In\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"LineIn\00", align 1
@tegra_machine_dapm_widgets = internal constant [16 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 12, ptr @.str.61, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @tegra_machine_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 12, ptr @.str.40, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @tegra_machine_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 12, ptr @.str.44, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 12, ptr @.str.41, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 13, ptr @.str.49, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @tegra_machine_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 13, ptr @.str.51, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @tegra_machine_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.53, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @tegra_machine_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.6, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @tegra_machine_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.56, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.58, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.43, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.62, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.63, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 14, ptr @.str.64, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 14, ptr @.str.65, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 14, ptr @.str.66, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], align 4
@.str.68 = private unnamed_addr constant [15 x i8] c"nvidia,tegra30\00", align 1
@.str.69 = private unnamed_addr constant [24 x i8] c"Invalid sound rate: %u\0A\00", align 1
@.str.70 = private unnamed_addr constant [29 x i8] c"codec_dai clock not set: %d\0A\00", align 1
@tegra_trimslice_data = internal constant %struct.tegra_asoc_data { ptr @tegra_machine_mclk_rate_128, ptr null, ptr null, ptr @snd_soc_tegra_trimslice, i32 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0 }, align 4
@tegra_max98090_data = internal constant %struct.tegra_asoc_data { ptr @tegra_machine_mclk_rate_12mhz, ptr null, ptr @.str.41, ptr @snd_soc_tegra_max98090, i32 0, i8 0, i8 1, i8 1, i8 1, i8 0, i8 1, i8 1, i8 0 }, align 4
@tegra_sgtl5000_data = internal constant %struct.tegra_asoc_data { ptr @tegra_machine_mclk_rate_12mhz, ptr null, ptr null, ptr @snd_soc_tegra_sgtl5000, i32 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0 }, align 4
@tegra_wm9712_data = internal constant %struct.tegra_asoc_data { ptr null, ptr @.str.91, ptr null, ptr @snd_soc_tegra_wm9712, i32 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1 }, align 4
@tegra_wm8753_data = internal constant %struct.tegra_asoc_data { ptr @tegra_machine_mclk_rate_12mhz, ptr null, ptr null, ptr @snd_soc_tegra_wm8753, i32 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0 }, align 4
@tegra_rt5677_data = internal constant %struct.tegra_asoc_data { ptr @tegra_machine_mclk_rate_256, ptr null, ptr null, ptr @snd_soc_tegra_rt5677, i32 0, i8 0, i8 1, i8 1, i8 1, i8 0, i8 1, i8 1, i8 0 }, align 4
@tegra_rt5640_data = internal constant %struct.tegra_asoc_data { ptr @tegra_machine_mclk_rate_256, ptr null, ptr null, ptr @snd_soc_tegra_rt5640, i32 0, i8 0, i8 1, i8 1, i8 1, i8 0, i8 0, i8 1, i8 0 }, align 4
@tegra_rt5632_data = internal constant %struct.tegra_asoc_data { ptr @tegra_machine_mclk_rate_512, ptr null, ptr null, ptr @snd_soc_tegra_rt5632, i32 0, i8 0, i8 1, i8 1, i8 1, i8 1, i8 0, i8 0, i8 0 }, align 4
@snd_soc_tegra_trimslice = internal global %struct.snd_soc_card { ptr @.str.71, ptr null, ptr null, ptr @.str.72, [80 x i8] zeroinitializer, [32 x i8] zeroinitializer, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tegra_tlv320aic23_dai, i32 1, %struct.list_head zeroinitializer, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, ptr null, i32 0, ptr @trimslice_dapm_widgets, i32 2, ptr @trimslice_audio_map, i32 4, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.snd_soc_dapm_context zeroinitializer, %struct.snd_soc_dapm_stats zeroinitializer, ptr null, ptr null, %struct.work_struct zeroinitializer, i32 0, i8 4, ptr null }, align 4
@.str.71 = private unnamed_addr constant [16 x i8] c"tegra-trimslice\00", align 1
@.str.72 = private unnamed_addr constant [18 x i8] c"codec:tlv320aic23\00", align 1
@trimslice_audio_map = internal constant [4 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.77, ptr null, ptr @.str.79, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.77, ptr null, ptr @.str.80, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.81, ptr null, ptr @.str.65, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.82, ptr null, ptr @.str.65, ptr null, %struct.snd_soc_dobj zeroinitializer }], align 4
@.str.73 = private unnamed_addr constant [12 x i8] c"TLV320AIC23\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"AIC23\00", align 1
@tlv320aic23_hifi_cpus = internal global [1 x %struct.snd_soc_dai_link_component] zeroinitializer, align 4
@tlv320aic23_hifi_codecs = internal global [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.76 }], align 4
@tlv320aic23_hifi_platforms = internal global [1 x %struct.snd_soc_dai_link_component] zeroinitializer, align 4
@tegra_tlv320aic23_dai = internal global { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8 } { ptr @.str.73, ptr @.str.74, ptr @tlv320aic23_hifi_cpus, i32 1, ptr @tlv320aic23_hifi_codecs, i32 1, ptr @tlv320aic23_hifi_platforms, i32 1, i32 0, ptr null, i32 0, i32 16385, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i8 0, i8 0 }, align 4
@.str.76 = private unnamed_addr constant [17 x i8] c"tlv320aic23-hifi\00", align 1
@.str.77 = private unnamed_addr constant [9 x i8] c"Line Out\00", align 1
@trimslice_dapm_widgets = internal constant [2 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 12, ptr @.str.77, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 14, ptr @.str.65, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], align 4
@.str.79 = private unnamed_addr constant [5 x i8] c"LOUT\00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c"ROUT\00", align 1
@.str.81 = private unnamed_addr constant [8 x i8] c"LLINEIN\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"RLINEIN\00", align 1
@snd_soc_tegra_max98090 = internal global %struct.snd_soc_card { ptr null, ptr null, ptr null, ptr @.str.83, [80 x i8] zeroinitializer, [32 x i8] zeroinitializer, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tegra_max98090_dai, i32 1, %struct.list_head zeroinitializer, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.snd_soc_dapm_context zeroinitializer, %struct.snd_soc_dapm_stats zeroinitializer, ptr null, ptr null, %struct.work_struct zeroinitializer, i32 0, i8 4, ptr null }, align 4
@.str.83 = private unnamed_addr constant [15 x i8] c"codec:max98090\00", align 1
@.str.84 = private unnamed_addr constant [9 x i8] c"max98090\00", align 1
@.str.85 = private unnamed_addr constant [13 x i8] c"max98090 PCM\00", align 1
@max98090_hifi_cpus = internal global [1 x %struct.snd_soc_dai_link_component] zeroinitializer, align 4
@max98090_hifi_codecs = internal global [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.87 }], align 4
@max98090_hifi_platforms = internal global [1 x %struct.snd_soc_dai_link_component] zeroinitializer, align 4
@tegra_max98090_dai = internal global { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8 } { ptr @.str.84, ptr @.str.85, ptr @max98090_hifi_cpus, i32 1, ptr @max98090_hifi_codecs, i32 1, ptr @max98090_hifi_platforms, i32 1, i32 0, ptr null, i32 0, i32 16385, [2 x i32] zeroinitializer, ptr @tegra_asoc_machine_init, ptr null, ptr null, ptr null, ptr null, i8 0, i8 0, i8 0 }, align 4
@.str.87 = private unnamed_addr constant [5 x i8] c"HiFi\00", align 1
@snd_soc_tegra_sgtl5000 = internal global %struct.snd_soc_card { ptr null, ptr null, ptr null, ptr @.str.88, [80 x i8] zeroinitializer, [32 x i8] zeroinitializer, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tegra_sgtl5000_dai, i32 1, %struct.list_head zeroinitializer, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.snd_soc_dapm_context zeroinitializer, %struct.snd_soc_dapm_stats zeroinitializer, ptr null, ptr null, %struct.work_struct zeroinitializer, i32 0, i8 4, ptr null }, align 4
@.str.88 = private unnamed_addr constant [15 x i8] c"codec:sgtl5000\00", align 1
@.str.89 = private unnamed_addr constant [9 x i8] c"sgtl5000\00", align 1
@sgtl5000_hifi_cpus = internal global [1 x %struct.snd_soc_dai_link_component] zeroinitializer, align 4
@sgtl5000_hifi_codecs = internal global [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.89 }], align 4
@sgtl5000_hifi_platforms = internal global [1 x %struct.snd_soc_dai_link_component] zeroinitializer, align 4
@tegra_sgtl5000_dai = internal global { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8 } { ptr @.str.89, ptr @.str.87, ptr @sgtl5000_hifi_cpus, i32 1, ptr @sgtl5000_hifi_codecs, i32 1, ptr @sgtl5000_hifi_platforms, i32 1, i32 0, ptr null, i32 0, i32 16385, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i8 0, i8 0 }, align 4
@.str.91 = private unnamed_addr constant [13 x i8] c"wm9712-codec\00", align 1
@snd_soc_tegra_wm9712 = internal global %struct.snd_soc_card { ptr null, ptr null, ptr null, ptr @.str.92, [80 x i8] zeroinitializer, [32 x i8] zeroinitializer, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tegra_wm9712_dai, i32 1, %struct.list_head zeroinitializer, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.snd_soc_dapm_context zeroinitializer, %struct.snd_soc_dapm_stats zeroinitializer, ptr null, ptr null, %struct.work_struct zeroinitializer, i32 0, i8 4, ptr null }, align 4
@.str.92 = private unnamed_addr constant [13 x i8] c"codec:wm9712\00", align 1
@.str.93 = private unnamed_addr constant [10 x i8] c"AC97 HiFi\00", align 1
@wm9712_hifi_cpus = internal global [1 x %struct.snd_soc_dai_link_component] zeroinitializer, align 4
@wm9712_hifi_codecs = internal global [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.91, ptr null, ptr @.str.95 }], align 4
@wm9712_hifi_platforms = internal global [1 x %struct.snd_soc_dai_link_component] zeroinitializer, align 4
@tegra_wm9712_dai = internal global { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8 } { ptr @.str.93, ptr @.str.93, ptr @wm9712_hifi_cpus, i32 1, ptr @wm9712_hifi_codecs, i32 1, ptr @wm9712_hifi_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr @tegra_wm9712_init, ptr null, ptr null, ptr null, ptr null, i8 0, i8 0, i8 0 }, align 4
@.str.95 = private unnamed_addr constant [12 x i8] c"wm9712-hifi\00", align 1
@.str.96 = private unnamed_addr constant [9 x i8] c"Mic Bias\00", align 1
@snd_soc_tegra_wm8753 = internal global %struct.snd_soc_card { ptr null, ptr null, ptr null, ptr @.str.97, [80 x i8] zeroinitializer, [32 x i8] zeroinitializer, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tegra_wm8753_dai, i32 1, %struct.list_head zeroinitializer, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.snd_soc_dapm_context zeroinitializer, %struct.snd_soc_dapm_stats zeroinitializer, ptr null, ptr null, %struct.work_struct zeroinitializer, i32 0, i8 4, ptr null }, align 4
@.str.97 = private unnamed_addr constant [13 x i8] c"codec:wm8753\00", align 1
@.str.98 = private unnamed_addr constant [7 x i8] c"WM8753\00", align 1
@.str.99 = private unnamed_addr constant [11 x i8] c"WM8753 PCM\00", align 1
@wm8753_hifi_cpus = internal global [1 x %struct.snd_soc_dai_link_component] zeroinitializer, align 4
@wm8753_hifi_codecs = internal global [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.101 }], align 4
@wm8753_hifi_platforms = internal global [1 x %struct.snd_soc_dai_link_component] zeroinitializer, align 4
@tegra_wm8753_dai = internal global { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8 } { ptr @.str.98, ptr @.str.99, ptr @wm8753_hifi_cpus, i32 1, ptr @wm8753_hifi_codecs, i32 1, ptr @wm8753_hifi_platforms, i32 1, i32 0, ptr null, i32 0, i32 16385, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i8 0, i8 0 }, align 4
@.str.101 = private unnamed_addr constant [12 x i8] c"wm8753-hifi\00", align 1
@snd_soc_tegra_rt5677 = internal global %struct.snd_soc_card { ptr null, ptr null, ptr null, ptr @.str.102, [80 x i8] zeroinitializer, [32 x i8] zeroinitializer, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tegra_rt5677_dai, i32 1, %struct.list_head zeroinitializer, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.snd_soc_dapm_context zeroinitializer, %struct.snd_soc_dapm_stats zeroinitializer, ptr null, ptr null, %struct.work_struct zeroinitializer, i32 0, i8 4, ptr null }, align 4
@.str.102 = private unnamed_addr constant [13 x i8] c"codec:rt5677\00", align 1
@.str.103 = private unnamed_addr constant [7 x i8] c"RT5677\00", align 1
@.str.104 = private unnamed_addr constant [11 x i8] c"RT5677 PCM\00", align 1
@rt5677_aif1_cpus = internal global [1 x %struct.snd_soc_dai_link_component] zeroinitializer, align 4
@rt5677_aif1_codecs = internal global [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.106 }], align 4
@rt5677_aif1_platforms = internal global [1 x %struct.snd_soc_dai_link_component] zeroinitializer, align 4
@tegra_rt5677_dai = internal global { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8 } { ptr @.str.103, ptr @.str.104, ptr @rt5677_aif1_cpus, i32 1, ptr @rt5677_aif1_codecs, i32 1, ptr @rt5677_aif1_platforms, i32 1, i32 0, ptr null, i32 0, i32 16385, [2 x i32] zeroinitializer, ptr @tegra_rt5677_init, ptr null, ptr null, ptr null, ptr null, i8 0, i8 0, i8 0 }, align 4
@.str.106 = private unnamed_addr constant [12 x i8] c"rt5677-aif1\00", align 1
@.str.107 = private unnamed_addr constant [9 x i8] c"MICBIAS1\00", align 1
@snd_soc_tegra_rt5640 = internal global %struct.snd_soc_card { ptr null, ptr null, ptr null, ptr @.str.108, [80 x i8] zeroinitializer, [32 x i8] zeroinitializer, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tegra_rt5640_dai, i32 1, %struct.list_head zeroinitializer, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.snd_soc_dapm_context zeroinitializer, %struct.snd_soc_dapm_stats zeroinitializer, ptr null, ptr null, %struct.work_struct zeroinitializer, i32 0, i8 4, ptr null }, align 4
@.str.108 = private unnamed_addr constant [13 x i8] c"codec:rt5640\00", align 1
@.str.109 = private unnamed_addr constant [7 x i8] c"RT5640\00", align 1
@.str.110 = private unnamed_addr constant [11 x i8] c"RT5640 PCM\00", align 1
@rt5640_aif1_cpus = internal global [1 x %struct.snd_soc_dai_link_component] zeroinitializer, align 4
@rt5640_aif1_codecs = internal global [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.112 }], align 4
@rt5640_aif1_platforms = internal global [1 x %struct.snd_soc_dai_link_component] zeroinitializer, align 4
@tegra_rt5640_dai = internal global { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8 } { ptr @.str.109, ptr @.str.110, ptr @rt5640_aif1_cpus, i32 1, ptr @rt5640_aif1_codecs, i32 1, ptr @rt5640_aif1_platforms, i32 1, i32 0, ptr null, i32 0, i32 16385, [2 x i32] zeroinitializer, ptr @tegra_asoc_machine_init, ptr null, ptr null, ptr null, ptr null, i8 0, i8 0, i8 0 }, align 4
@.str.112 = private unnamed_addr constant [12 x i8] c"rt5640-aif1\00", align 1
@snd_soc_tegra_rt5632 = internal global %struct.snd_soc_card { ptr null, ptr null, ptr null, ptr @.str.113, [80 x i8] zeroinitializer, [32 x i8] zeroinitializer, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tegra_rt5632_dai, i32 1, %struct.list_head zeroinitializer, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.snd_soc_dapm_context zeroinitializer, %struct.snd_soc_dapm_stats zeroinitializer, ptr null, ptr null, %struct.work_struct zeroinitializer, i32 0, i8 4, ptr null }, align 4
@.str.113 = private unnamed_addr constant [13 x i8] c"codec:rt5632\00", align 1
@.str.114 = private unnamed_addr constant [8 x i8] c"ALC5632\00", align 1
@.str.115 = private unnamed_addr constant [12 x i8] c"ALC5632 PCM\00", align 1
@rt5632_hifi_cpus = internal global [1 x %struct.snd_soc_dai_link_component] zeroinitializer, align 4
@rt5632_hifi_codecs = internal global [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.117 }], align 4
@rt5632_hifi_platforms = internal global [1 x %struct.snd_soc_dai_link_component] zeroinitializer, align 4
@tegra_rt5632_dai = internal global { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8 } { ptr @.str.114, ptr @.str.115, ptr @rt5632_hifi_cpus, i32 1, ptr @rt5632_hifi_codecs, i32 1, ptr @rt5632_hifi_platforms, i32 1, i32 0, ptr null, i32 0, i32 16385, [2 x i32] zeroinitializer, ptr @tegra_rt5677_init, ptr null, ptr null, ptr null, ptr null, i8 0, i8 0, i8 0 }, align 4
@.str.117 = private unnamed_addr constant [13 x i8] c"alc5632-hifi\00", align 1
@tegra_asoc_machine_driver = internal global %struct.platform_driver { ptr @tegra_asoc_machine_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.118, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_machine_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_soc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str.118 = private unnamed_addr constant [12 x i8] c"tegra-audio\00", align 1
@snd_soc_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_author234, ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_license242, ptr @__ksymtab_tegra_asoc_machine_init, ptr @__ksymtab_tegra_asoc_machine_probe], section "llvm.metadata"

@__mod_of__tegra_machine_of_match_device_table = dso_local alias [9 x %struct.of_device_id], ptr @tegra_machine_of_match

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_asoc_machine_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 58
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tegra_machine, ptr %5, i32 0, i32 12
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %49, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.tegra_machine, ptr %5, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.tegra_asoc_data, ptr %11, i32 0, i32 11
  %13 = load i8, ptr %12, align 2, !range !8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %30, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.tegra_asoc_data, ptr %11, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  %19 = select i1 %18, ptr @.str, ptr %17
  %20 = tail call i32 @snd_soc_card_jack_new(ptr noundef %3, ptr noundef nonnull %19, i32 noundef 1, ptr noundef nonnull @tegra_machine_hp_jack, ptr noundef nonnull @tegra_machine_hp_jack_pins, i32 noundef 2) #9
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.1, i32 noundef %20) #10
  br label %71

24:                                               ; preds = %15
  %25 = load ptr, ptr %6, align 4
  store ptr %25, ptr getelementptr inbounds (%struct.snd_soc_jack_gpio, ptr @tegra_machine_hp_jack_gpio, i32 0, i32 11), align 4
  %26 = tail call i32 @snd_soc_jack_add_gpios(ptr noundef nonnull @tegra_machine_hp_jack, i32 noundef 1, ptr noundef nonnull @tegra_machine_hp_jack_gpio) #9
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.2, i32 noundef %26) #10
  br label %30

30:                                               ; preds = %28, %24, %9
  %31 = load ptr, ptr %6, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %49, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr %10, align 4
  %35 = getelementptr inbounds %struct.tegra_asoc_data, ptr %34, i32 0, i32 9
  %36 = load i8, ptr %35, align 4, !range !8
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %33
  %39 = tail call i32 @snd_soc_card_jack_new(ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef 3, ptr noundef nonnull @tegra_machine_headset_jack, ptr noundef nonnull @tegra_machine_headset_jack_pins, i32 noundef 2) #9
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.4, i32 noundef %39) #10
  br label %71

43:                                               ; preds = %38
  %44 = load ptr, ptr %6, align 4
  store ptr %44, ptr getelementptr inbounds (%struct.snd_soc_jack_gpio, ptr @tegra_machine_headset_jack_gpio, i32 0, i32 11), align 4
  %45 = tail call i32 @snd_soc_jack_add_gpios(ptr noundef nonnull @tegra_machine_headset_jack, i32 noundef 1, ptr noundef nonnull @tegra_machine_headset_jack_gpio) #9
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.5, i32 noundef %45) #10
  br label %49

49:                                               ; preds = %47, %43, %33, %30, %1
  %50 = getelementptr inbounds %struct.tegra_machine, ptr %5, i32 0, i32 9
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %71, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.tegra_machine, ptr %5, i32 0, i32 5
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.tegra_asoc_data, ptr %55, i32 0, i32 10
  %57 = load i8, ptr %56, align 1, !range !8
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %71, label %59

59:                                               ; preds = %53
  %60 = load ptr, ptr %2, align 4
  %61 = tail call i32 @snd_soc_card_jack_new(ptr noundef %60, ptr noundef nonnull @.str.6, i32 noundef 2, ptr noundef nonnull @tegra_machine_mic_jack, ptr noundef nonnull @tegra_machine_mic_jack_pins, i32 noundef 2) #9
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.7, i32 noundef %61) #10
  br label %71

65:                                               ; preds = %59
  %66 = load ptr, ptr %50, align 4
  store ptr %66, ptr getelementptr inbounds (%struct.snd_soc_jack_gpio, ptr @tegra_machine_mic_jack_gpio, i32 0, i32 11), align 4
  %67 = tail call i32 @snd_soc_jack_add_gpios(ptr noundef nonnull @tegra_machine_mic_jack, i32 noundef 1, ptr noundef nonnull @tegra_machine_mic_jack_gpio) #9
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %65
  %70 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.8, i32 noundef %67) #10
  br label %71

71:                                               ; preds = %69, %65, %63, %53, %49, %41, %22
  %72 = phi i32 [ %20, %22 ], [ %39, %41 ], [ %61, %63 ], [ 0, %65 ], [ 0, %69 ], [ 0, %53 ], [ 0, %49 ]
  ret i32 %72
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_card_jack_new(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_jack_add_gpios(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_asoc_machine_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 60, i32 noundef 3520) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %208, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @of_device_get_match_data(ptr noundef %2) #9
  %7 = getelementptr inbounds %struct.tegra_asoc_data, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.snd_soc_card, ptr %8, i32 0, i32 6
  store ptr %2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.tegra_machine, ptr %3, i32 0, i32 5
  store ptr %6, ptr %10, align 4
  %11 = getelementptr inbounds %struct.tegra_machine, ptr %3, i32 0, i32 13
  store ptr @tegra_machine_mic_jack, ptr %11, align 4
  %12 = getelementptr inbounds %struct.tegra_machine, ptr %3, i32 0, i32 14
  store ptr @tegra_machine_hp_jack_gpio, ptr %12, align 4
  %13 = getelementptr inbounds %struct.snd_soc_card, ptr %8, i32 0, i32 58
  store ptr %3, ptr %13, align 4
  %14 = tail call ptr @devm_gpiod_get_optional(ptr noundef %2, ptr noundef nonnull @.str.9, i32 noundef 7) #9
  %15 = getelementptr inbounds %struct.tegra_machine, ptr %3, i32 0, i32 11
  store ptr %14, ptr %15, align 4
  %16 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = ptrtoint ptr %14 to i32
  br label %208

19:                                               ; preds = %5
  %20 = tail call ptr @devm_gpiod_get_optional(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef 1) #9
  %21 = getelementptr inbounds %struct.tegra_machine, ptr %3, i32 0, i32 12
  store ptr %20, ptr %21, align 4
  %22 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = ptrtoint ptr %20 to i32
  br label %208

25:                                               ; preds = %19
  %26 = tail call ptr @devm_gpiod_get_optional(ptr noundef %2, ptr noundef nonnull @.str.11, i32 noundef 1) #9
  %27 = getelementptr inbounds %struct.tegra_machine, ptr %3, i32 0, i32 9
  store ptr %26, ptr %27, align 4
  %28 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = ptrtoint ptr %26 to i32
  br label %208

31:                                               ; preds = %25
  %32 = tail call ptr @devm_gpiod_get_optional(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef 3) #9
  %33 = getelementptr inbounds %struct.tegra_machine, ptr %3, i32 0, i32 8
  store ptr %32, ptr %33, align 4
  %34 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = ptrtoint ptr %32 to i32
  br label %208

37:                                               ; preds = %31
  %38 = tail call ptr @devm_gpiod_get_optional(ptr noundef %2, ptr noundef nonnull @.str.13, i32 noundef 3) #9
  %39 = getelementptr inbounds %struct.tegra_machine, ptr %3, i32 0, i32 7
  store ptr %38, ptr %39, align 4
  %40 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = ptrtoint ptr %38 to i32
  br label %208

43:                                               ; preds = %37
  %44 = tail call ptr @devm_gpiod_get_optional(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef 3) #9
  %45 = getelementptr inbounds %struct.tegra_machine, ptr %3, i32 0, i32 6
  store ptr %44, ptr %45, align 4
  %46 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = ptrtoint ptr %44 to i32
  br label %208

49:                                               ; preds = %43
  %50 = tail call i32 @snd_soc_of_parse_card_name(ptr noundef %8, ptr noundef nonnull @.str.15) #9
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %208

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.snd_soc_card, ptr %8, i32 0, i32 38
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = tail call i32 @snd_soc_of_parse_audio_routing(ptr noundef %8, ptr noundef nonnull @.str.16) #9
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %208

59:                                               ; preds = %56, %52
  %60 = getelementptr inbounds %struct.tegra_asoc_data, ptr %6, i32 0, i32 12
  %61 = load i8, ptr %60, align 1, !range !8
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %77, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.tegra_asoc_data, ptr %6, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = tail call fastcc i32 @tegra_machine_register_codec(ptr noundef %2, ptr noundef %65)
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %208

68:                                               ; preds = %63
  %69 = tail call fastcc ptr @tegra_machine_parse_phandle(ptr noundef %2, ptr noundef nonnull @.str.17)
  %70 = icmp ugt ptr %69, inttoptr (i32 -4096 to ptr)
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = ptrtoint ptr %69 to i32
  br label %208

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.snd_soc_card, ptr %8, i32 0, i32 25
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %75, i32 0, i32 2
  br label %95

77:                                               ; preds = %59
  %78 = tail call fastcc ptr @tegra_machine_parse_phandle(ptr noundef %2, ptr noundef nonnull @.str.18)
  %79 = icmp ugt ptr %78, inttoptr (i32 -4096 to ptr)
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = ptrtoint ptr %78 to i32
  br label %208

82:                                               ; preds = %77
  %83 = tail call fastcc ptr @tegra_machine_parse_phandle(ptr noundef %2, ptr noundef nonnull @.str.19)
  %84 = icmp ugt ptr %83, inttoptr (i32 -4096 to ptr)
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = ptrtoint ptr %83 to i32
  br label %208

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.snd_soc_card, ptr %8, i32 0, i32 25
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %89, i32 0, i32 2
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %91, i32 0, i32 1
  store ptr %83, ptr %92, align 4
  %93 = load ptr, ptr %88, align 4
  %94 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %93, i32 0, i32 4
  br label %95

95:                                               ; preds = %87, %73
  %96 = phi ptr [ %94, %87 ], [ %76, %73 ]
  %97 = phi ptr [ %78, %87 ], [ %69, %73 ]
  %98 = phi ptr [ %88, %87 ], [ %74, %73 ]
  %99 = phi ptr [ %83, %87 ], [ %69, %73 ]
  %100 = load ptr, ptr %96, align 4
  %101 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %100, i32 0, i32 1
  store ptr %97, ptr %101, align 4
  %102 = load ptr, ptr %98, align 4
  %103 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %102, i32 0, i32 6
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %104, i32 0, i32 1
  store ptr %99, ptr %105, align 4
  %106 = getelementptr inbounds %struct.tegra_asoc_data, ptr %6, i32 0, i32 7
  %107 = load i8, ptr %106, align 2, !range !8
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %95
  %110 = getelementptr inbounds %struct.snd_soc_card, ptr %8, i32 0, i32 34
  store ptr @tegra_machine_controls, ptr %110, align 4
  %111 = getelementptr inbounds %struct.snd_soc_card, ptr %8, i32 0, i32 35
  store i32 8, ptr %111, align 4
  br label %112

112:                                              ; preds = %109, %95
  %113 = getelementptr inbounds %struct.tegra_asoc_data, ptr %6, i32 0, i32 6
  %114 = load i8, ptr %113, align 1, !range !8
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.snd_soc_card, ptr %8, i32 0, i32 36
  store ptr @tegra_machine_dapm_widgets, ptr %117, align 4
  %118 = getelementptr inbounds %struct.snd_soc_card, ptr %8, i32 0, i32 37
  store i32 16, ptr %118, align 4
  br label %119

119:                                              ; preds = %116, %112
  %120 = getelementptr inbounds %struct.tegra_asoc_data, ptr %6, i32 0, i32 8
  %121 = load i8, ptr %120, align 1, !range !8
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.snd_soc_card, ptr %8, i32 0, i32 25
  %125 = load ptr, ptr %124, align 4
  %126 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %125, i32 0, i32 16
  store ptr @tegra_machine_snd_ops, ptr %126, align 4
  br label %127

127:                                              ; preds = %123, %119
  %128 = getelementptr inbounds %struct.snd_soc_card, ptr %8, i32 0, i32 8
  %129 = load ptr, ptr %128, align 4
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %132

131:                                              ; preds = %127
  store ptr @__this_module, ptr %128, align 4
  br label %132

132:                                              ; preds = %131, %127
  %133 = getelementptr inbounds %struct.snd_soc_card, ptr %8, i32 0, i32 2
  %134 = load ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  store ptr @.str.20, ptr %133, align 4
  br label %137

137:                                              ; preds = %136, %132
  %138 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.21) #9
  %139 = getelementptr inbounds %struct.tegra_machine, ptr %3, i32 0, i32 1
  store ptr %138, ptr %139, align 4
  %140 = icmp ugt ptr %138, inttoptr (i32 -4096 to ptr)
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.22) #10
  %142 = load ptr, ptr %139, align 4
  %143 = ptrtoint ptr %142 to i32
  br label %208

144:                                              ; preds = %137
  %145 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.23) #9
  store ptr %145, ptr %3, align 4
  %146 = icmp ugt ptr %145, inttoptr (i32 -4096 to ptr)
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.24) #10
  %148 = load ptr, ptr %3, align 4
  %149 = ptrtoint ptr %148 to i32
  br label %208

150:                                              ; preds = %144
  %151 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.25) #9
  %152 = getelementptr inbounds %struct.tegra_machine, ptr %3, i32 0, i32 2
  store ptr %151, ptr %152, align 4
  %153 = icmp ugt ptr %151, inttoptr (i32 -4096 to ptr)
  br i1 %153, label %154, label %157

154:                                              ; preds = %150
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.26) #10
  %155 = load ptr, ptr %152, align 4
  %156 = ptrtoint ptr %155 to i32
  br label %208

157:                                              ; preds = %150
  %158 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %159 = load ptr, ptr %158, align 8
  %160 = tail call ptr @of_find_property(ptr noundef %159, ptr noundef nonnull @.str.27, ptr noundef null) #9
  %161 = icmp eq ptr %160, null
  br i1 %161, label %162, label %185

162:                                              ; preds = %157
  %163 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.28) #9
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %185

165:                                              ; preds = %162
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.29) #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.30) #10
  %166 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.31) #9
  %167 = icmp ugt ptr %166, inttoptr (i32 -4096 to ptr)
  br i1 %167, label %168, label %170

168:                                              ; preds = %165
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.32) #10
  %169 = ptrtoint ptr %166 to i32
  br label %208

170:                                              ; preds = %165
  %171 = load ptr, ptr %3, align 4
  %172 = tail call i32 @clk_set_parent(ptr noundef %166, ptr noundef %171) #9
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %170
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.33) #10
  br label %208

175:                                              ; preds = %170
  %176 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.34) #9
  %177 = icmp ugt ptr %176, inttoptr (i32 -4096 to ptr)
  br i1 %177, label %178, label %180

178:                                              ; preds = %175
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.35) #10
  %179 = ptrtoint ptr %176 to i32
  br label %208

180:                                              ; preds = %175
  %181 = tail call i32 @clk_set_parent(ptr noundef %176, ptr noundef %166) #9
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %180
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.36) #10
  br label %208

184:                                              ; preds = %180
  store ptr %176, ptr %152, align 4
  br label %185

185:                                              ; preds = %184, %162, %157
  %186 = load i8, ptr %60, align 1, !range !8
  %187 = icmp eq i8 %186, 0
  br i1 %187, label %201, label %188

188:                                              ; preds = %185
  %189 = load ptr, ptr %139, align 4
  %190 = tail call i32 @clk_set_rate(ptr noundef %189, i32 noundef 73728000) #9
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %193, label %192

192:                                              ; preds = %188
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.37, i32 noundef %190) #10
  br label %208

193:                                              ; preds = %188
  %194 = load ptr, ptr %3, align 4
  %195 = tail call i32 @clk_set_rate(ptr noundef %194, i32 noundef 24576000) #9
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %198, label %197

197:                                              ; preds = %193
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.38, i32 noundef %195) #10
  br label %208

198:                                              ; preds = %193
  %199 = getelementptr inbounds %struct.tegra_machine, ptr %3, i32 0, i32 3
  store i32 73728000, ptr %199, align 4
  %200 = getelementptr inbounds %struct.tegra_machine, ptr %3, i32 0, i32 4
  store i32 24576000, ptr %200, align 4
  br label %201

201:                                              ; preds = %198, %185
  %202 = load ptr, ptr %152, align 4
  %203 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %202)
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %206, label %205

205:                                              ; preds = %201
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.39, i32 noundef %203) #10
  br label %208

206:                                              ; preds = %201
  %207 = tail call i32 @devm_snd_soc_register_card(ptr noundef %2, ptr noundef %8) #9
  br label %208

208:                                              ; preds = %206, %205, %197, %192, %183, %178, %174, %168, %154, %147, %141, %85, %80, %71, %63, %56, %49, %47, %41, %35, %29, %23, %17, %1
  %209 = phi i32 [ %18, %17 ], [ %24, %23 ], [ %30, %29 ], [ %36, %35 ], [ %42, %41 ], [ %48, %47 ], [ %72, %71 ], [ %143, %141 ], [ %149, %147 ], [ %156, %154 ], [ %190, %192 ], [ %195, %197 ], [ %203, %205 ], [ %81, %80 ], [ %86, %85 ], [ -12, %1 ], [ %50, %49 ], [ %57, %56 ], [ %66, %63 ], [ %207, %206 ], [ %181, %183 ], [ %179, %178 ], [ %172, %174 ], [ %169, %168 ]
  ret i32 %209
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_of_parse_card_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_of_parse_audio_routing(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tegra_machine_register_codec(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.platform_device_info, align 8
  %4 = icmp eq ptr %1, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #9
  %6 = getelementptr inbounds %struct.platform_device_info, ptr %3, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false) #9
  store ptr %1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.platform_device_info, ptr %3, i32 0, i32 4
  store i32 -1, ptr %7, align 8
  %8 = getelementptr inbounds %struct.platform_device_info, ptr %3, i32 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %8, i8 0, i64 16, i1 false) #9
  %9 = call ptr @platform_device_register_full(ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #9
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = ptrtoint ptr %9 to i32
  br label %17

13:                                               ; preds = %5
  %14 = call i32 @devm_add_action(ptr noundef %0, ptr noundef nonnull @tegra_machine_unregister_codec, ptr noundef %9) #9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  call void @platform_device_unregister(ptr noundef %9) #9
  br label %17

17:                                               ; preds = %16, %13, %11, %2
  %18 = phi i32 [ %12, %11 ], [ 0, %2 ], [ 0, %13 ], [ %14, %16 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @tegra_machine_parse_phandle(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #9, !annotation !9
  %6 = call i32 @__of_parse_phandle_with_args(ptr noundef %5, ptr noundef %1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #9
  %7 = icmp ne i32 %6, 0
  %8 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #9
  %9 = icmp eq ptr %8, null
  %10 = select i1 %7, i1 true, i1 %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.47, ptr noundef %1) #10
  br label %17

12:                                               ; preds = %2
  %13 = call i32 @devm_add_action(ptr noundef %0, ptr noundef nonnull @tegra_machine_node_release, ptr noundef nonnull %8) #9
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  call void @of_node_put(ptr noundef nonnull %8) #9
  %16 = inttoptr i32 %13 to ptr
  br label %17

17:                                               ; preds = %15, %12, %11
  %18 = phi ptr [ %16, %15 ], [ inttoptr (i32 -22 to ptr), %11 ], [ %8, %12 ]
  ret ptr %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %0) unnamed_addr #4 {
  %2 = tail call i32 @clk_prepare(ptr noundef %0) #9
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @clk_enable(ptr noundef %0) #9
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @clk_unprepare(ptr noundef %0) #9
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi i32 [ %2, %1 ], [ %5, %7 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_card(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #5 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_asoc_machine_driver, ptr noundef nonnull @__this_module) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #5 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra_asoc_machine_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_machine_unregister_codec(ptr noundef %0) #0 {
  tail call void @platform_device_unregister(ptr noundef %0) #9
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_machine_node_release(ptr noundef %0) #0 {
  tail call void @of_node_put(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_info_pin_switch(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_pin_switch(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_pin_switch(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_machine_event(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_soc_card, ptr %7, i32 0, i32 58
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @strcmp(ptr noundef %11, ptr noundef nonnull dereferenceable(8) @.str.51)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = tail call i32 @strcmp(ptr noundef %11, ptr noundef nonnull dereferenceable(9) @.str.49)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %14, %3
  %18 = getelementptr inbounds %struct.tegra_machine, ptr %9, i32 0, i32 8
  %19 = load ptr, ptr %18, align 4
  %20 = and i32 %2, 3
  tail call void @gpiod_set_value_cansleep(ptr noundef %19, i32 noundef %20) #9
  %21 = load ptr, ptr %10, align 4
  br label %22

22:                                               ; preds = %17, %14
  %23 = phi ptr [ %21, %17 ], [ %11, %14 ]
  %24 = tail call i32 @strcmp(ptr noundef %23, ptr noundef nonnull dereferenceable(9) @.str.6)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.tegra_machine, ptr %9, i32 0, i32 6
  %28 = load ptr, ptr %27, align 4
  %29 = and i32 %2, 3
  tail call void @gpiod_set_value_cansleep(ptr noundef %28, i32 noundef %29) #9
  %30 = load ptr, ptr %10, align 4
  br label %31

31:                                               ; preds = %26, %22
  %32 = phi ptr [ %30, %26 ], [ %23, %22 ]
  %33 = tail call i32 @strcmp(ptr noundef %32, ptr noundef nonnull dereferenceable(8) @.str.53)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.tegra_machine, ptr %9, i32 0, i32 7
  %37 = load ptr, ptr %36, align 4
  %38 = and i32 %2, 3
  tail call void @gpiod_set_value_cansleep(ptr noundef %37, i32 noundef %38) #9
  %39 = load ptr, ptr %10, align 4
  br label %40

40:                                               ; preds = %35, %31
  %41 = phi ptr [ %39, %35 ], [ %32, %31 ]
  %42 = tail call i32 @strcmp(ptr noundef %41, ptr noundef nonnull dereferenceable(10) @.str.40)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = tail call i32 @strcmp(ptr noundef %41, ptr noundef nonnull dereferenceable(15) @.str.61)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %44, %40
  %48 = getelementptr inbounds %struct.tegra_machine, ptr %9, i32 0, i32 11
  %49 = load ptr, ptr %48, align 4
  %50 = and i32 %2, 3
  %51 = icmp eq i32 %50, 0
  %52 = zext i1 %51 to i32
  tail call void @gpiod_set_value_cansleep(ptr noundef %49, i32 noundef %52) #9
  br label %53

53:                                               ; preds = %47, %44
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_machine_hw_params(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %4, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %4, i32 0, i32 11
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr ptr, ptr %6, i32 %8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %4, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.snd_soc_card, ptr %12, i32 0, i32 58
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.tegra_machine, ptr %14, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 %19(i32 noundef %16) #9
  %21 = load ptr, ptr %17, align 4
  %22 = getelementptr inbounds %struct.tegra_asoc_data, ptr %21, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  switch i32 %16, label %38 [
    i32 11025, label %24
    i32 22050, label %24
    i32 44100, label %24
    i32 88200, label %24
    i32 8000, label %31
    i32 16000, label %31
    i32 32000, label %31
    i32 48000, label %31
    i32 64000, label %31
    i32 96000, label %31
  ]

24:                                               ; preds = %2, %2, %2, %2
  %25 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.28) #9
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %24
  %28 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.68) #9
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i32 282240000, i32 564480000
  br label %41

31:                                               ; preds = %2, %2, %2, %2, %2, %2
  %32 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.28) #9
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.68) #9
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, i32 368640000, i32 552960000
  br label %41

38:                                               ; preds = %2
  %39 = getelementptr inbounds %struct.snd_soc_card, ptr %12, i32 0, i32 6
  %40 = load ptr, ptr %39, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.69, i32 noundef %16) #10
  br label %87

41:                                               ; preds = %34, %31, %27, %24
  %42 = phi i32 [ 56448000, %24 ], [ %30, %27 ], [ 73728000, %31 ], [ %37, %34 ]
  %43 = getelementptr inbounds %struct.tegra_machine, ptr %14, i32 0, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.tegra_machine, ptr %14, i32 0, i32 4
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %20, %48
  br i1 %49, label %81, label %50

50:                                               ; preds = %46, %41
  store i32 0, ptr %43, align 4
  %51 = getelementptr inbounds %struct.tegra_machine, ptr %14, i32 0, i32 4
  store i32 0, ptr %51, align 4
  %52 = getelementptr inbounds %struct.tegra_machine, ptr %14, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  tail call void @clk_disable(ptr noundef %53) #9
  tail call void @clk_unprepare(ptr noundef %53) #9
  %54 = getelementptr inbounds %struct.tegra_machine, ptr %14, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = tail call i32 @clk_set_rate(ptr noundef %55, i32 noundef %42) #9
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct.snd_soc_card, ptr %12, i32 0, i32 6
  %60 = load ptr, ptr %59, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.37, i32 noundef %56) #10
  br label %87

61:                                               ; preds = %50
  %62 = load ptr, ptr %14, align 4
  %63 = tail call i32 @clk_set_rate(ptr noundef %62, i32 noundef %20) #9
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.snd_soc_card, ptr %12, i32 0, i32 6
  %67 = load ptr, ptr %66, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.38, i32 noundef %63) #10
  br label %87

68:                                               ; preds = %61
  %69 = load ptr, ptr %52, align 4
  %70 = tail call i32 @clk_prepare(ptr noundef %69) #9
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = tail call i32 @clk_enable(ptr noundef %69) #9
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %72
  tail call void @clk_unprepare(ptr noundef %69) #9
  br label %76

76:                                               ; preds = %75, %68
  %77 = phi i32 [ %73, %75 ], [ %70, %68 ]
  %78 = getelementptr inbounds %struct.snd_soc_card, ptr %12, i32 0, i32 6
  %79 = load ptr, ptr %78, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.39, i32 noundef %77) #10
  br label %87

80:                                               ; preds = %72
  store i32 %42, ptr %43, align 4
  store i32 %20, ptr %51, align 4
  br label %81

81:                                               ; preds = %80, %46
  %82 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %10, i32 noundef %23, i32 noundef %20, i32 noundef 0) #9
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.snd_soc_card, ptr %12, i32 0, i32 6
  %86 = load ptr, ptr %85, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.70, i32 noundef %82) #10
  br label %87

87:                                               ; preds = %84, %81, %76, %65, %58, %38
  %88 = phi i32 [ -22, %38 ], [ %56, %58 ], [ %63, %65 ], [ %77, %76 ], [ %82, %84 ], [ 0, %81 ]
  ret i32 %88
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_sysclk(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @tegra_machine_mclk_rate_128(i32 noundef %0) #8 {
  %2 = shl i32 %0, 7
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @tegra_machine_mclk_rate_12mhz(i32 noundef %0) #8 {
  switch i32 %0, label %3 [
    i32 8000, label %4
    i32 16000, label %4
    i32 24000, label %4
    i32 32000, label %4
    i32 48000, label %4
    i32 64000, label %4
    i32 96000, label %4
    i32 11025, label %2
    i32 22050, label %2
    i32 44100, label %2
    i32 88200, label %2
  ]

2:                                                ; preds = %1, %1, %1, %1
  br label %4

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %3, %2, %1, %1, %1, %1, %1, %1, %1
  %5 = phi i32 [ 12000000, %3 ], [ 11289600, %2 ], [ 12288000, %1 ], [ 12288000, %1 ], [ 12288000, %1 ], [ 12288000, %1 ], [ 12288000, %1 ], [ 12288000, %1 ], [ 12288000, %1 ]
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_wm9712_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 51
  %5 = tail call i32 @snd_soc_dapm_force_enable_pin(ptr noundef %4, ptr noundef nonnull @.str.96) #9
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_force_enable_pin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @tegra_machine_mclk_rate_256(i32 noundef %0) #8 {
  %2 = shl i32 %0, 8
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_rt5677_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @tegra_asoc_machine_init(ptr noundef %0)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 51
  %8 = tail call i32 @snd_soc_dapm_force_enable_pin(ptr noundef %7, ptr noundef nonnull @.str.107) #9
  br label %9

9:                                                ; preds = %6, %1
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @tegra_machine_mclk_rate_512(i32 noundef %0) #8 {
  %2 = shl i32 %0, 9
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{i8 0, i8 2}
!9 = !{!"auto-init"}
