; ModuleID = '/llk/IR/sound/soc/sh/rcar/core.c_pt.bc'
source_filename = "../sound/soc/sh/rcar/core.c"
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
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rsnd_mod = type { i32, i32, ptr, ptr, ptr, i32 }
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
%struct.rsnd_mod_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rsnd_priv = type { ptr, %struct.spinlock, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, i32 }
%struct.rsnd_dai = type { [16 x i8], %struct.rsnd_dai_stream, %struct.rsnd_dai_stream, ptr, %struct.snd_pcm_hw_constraint_list, i32, i32, i32, i8 }
%struct.rsnd_dai_stream = type { [16 x i8], ptr, [13 x ptr], ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64 }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.rsnd_kctrl_cfg_m = type { %struct.rsnd_kctrl_cfg, [8 x i32] }
%struct.rsnd_kctrl_cfg = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rsnd_kctrl_cfg_s = type { %struct.rsnd_kctrl_cfg, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.80, i32 }
%union.anon.80 = type { ptr }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [80 x i8], [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.79, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.79 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.70, [64 x i8] }
%union.anon.70 = type { %struct.anon.73, [40 x i8] }
%struct.anon.73 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.74, [128 x i8] }
%union.anon.74 = type { %union.anon.76 }
%union.anon.76 = type { [64 x i64] }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.88, ptr }
%union.anon.88 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8 }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, ptr, ptr, %struct.device }
%struct.snd_pcm_hw_rule = type { i32, i32, [5 x i32], ptr, ptr }
%struct.snd_soc_dai_link = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i24 }

@rsnd_of_match = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar_sound-gen1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar_sound-gen2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar_sound-gen3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar_sound-r8a77990\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 19 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@.str = private unnamed_addr constant [32 x i8] c"%s is not your expected module\0A\00", align 1
@rsnd_mod_name.names = internal global [5 x [16 x i8]] zeroinitializer, align 1
@rsnd_mod_name.num = internal unnamed_addr global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"%s[%d%d]\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s[%d]\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"CTU and TDM Split should be used\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"sound/soc/sh/rcar/core.c\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"not supported sample bits\0A\00", align 1
@rsnd_get_dalign.dalign_values = internal unnamed_addr constant [8 x i32] [i32 1985229328, i32 50, i32 30292, i32 118, i32 -19088744, i32 186, i32 65244, i32 254], align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"strange node numbering (%s)\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Can't update kctrl when idle\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"128 dB/1 step\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"64 dB/1 step\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"32 dB/1 step\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"16 dB/1 step\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"8 dB/1 step\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"4 dB/1 step\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"2 dB/1 step\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"1 dB/1 step\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"0.5 dB/1 step\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"0.25 dB/1 step\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"0.125 dB/1 step\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"0.125 dB/2 steps\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"0.125 dB/4 steps\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"0.125 dB/8 steps\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"0.125 dB/16 steps\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"0.125 dB/32 steps\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"0.125 dB/64 steps\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"0.125 dB/128 steps\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"0.125 dB/256 steps\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"0.125 dB/512 steps\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"0.125 dB/1024 steps\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"0.125 dB/2048 steps\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"0.125 dB/4096 steps\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"0.125 dB/8192 steps\00", align 1
@volume_ramp_rate = dso_local local_unnamed_addr constant [24 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], align 4
@__UNIQUE_ID_license243 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description244 = internal constant [39 x i8] c"description=Renesas R-Car audio driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author245 = internal constant [60 x i8] c"author=Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias246 = internal constant [30 x i8] c"alias=platform:rcar-pcm-audio\00", section ".modinfo", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"<no-node>\00", align 1
@rsnd_driver = internal global %struct.platform_driver { ptr @rsnd_probe, ptr @rsnd_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.34, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rsnd_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rsnd_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.34 = private unnamed_addr constant [11 x i8] c"rcar_sound\00", align 1
@rsnd_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @rsnd_suspend, ptr @rsnd_resume, ptr @rsnd_suspend, ptr @rsnd_resume, ptr @rsnd_suspend, ptr @rsnd_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@rsnd_soc_component = internal constant %struct.snd_soc_component_driver { ptr @.str.67, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr @rsnd_debugfs_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rsnd_hw_params, ptr @rsnd_hw_free, ptr null, ptr null, ptr null, ptr @rsnd_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.35 = private unnamed_addr constant [25 x i8] c"cannot snd dai register\0A\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"probed\0A\00", align 1
@rsnd_mod_sequence = internal constant [2 x [13 x i32]] [[13 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 12, i32 7, i32 8, i32 9, i32 10, i32 11], [13 x i32] [i32 0, i32 1, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 2, i32 3, i32 4, i32 5, i32 6]], align 4
@.str.37 = private unnamed_addr constant [24 x i8] c"%s : %s error (%d, %d)\0A\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"rcar_sound,dai\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"rsnd-dai.%d\00", align 1
@rsnd_soc_dai_ops = internal constant %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr @rsnd_soc_dai_set_fmt, ptr null, ptr @rsnd_soc_set_dai_tdm_slot, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rsnd_soc_dai_startup, ptr @rsnd_soc_dai_shutdown, ptr null, ptr null, ptr @rsnd_soc_dai_prepare, ptr @rsnd_soc_dai_trigger, ptr null, ptr null, ptr @rsnd_soc_dai_formats, i32 2, i8 0 }, align 4
@.str.41 = private unnamed_addr constant [15 x i8] c"DAI%d Playback\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"DAI%d Capture\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"playback\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"capture\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"src\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"rcar_sound,src\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"ctu\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"rcar_sound,ctu\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"mix\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"rcar_sound,mix\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"dvc\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"rcar_sound,dvc\00", align 1
@rsnd_soc_dai_formats = internal global [2 x i64] [i64 64424509454, i64 48], align 8
@.str.53 = private unnamed_addr constant [28 x i8] c"unsupported TDM slots (%d)\0A\00", align 1
@rsnd_soc_hw_channels_list = internal global [3 x i32] [i32 2, i32 6, i32 8], align 4
@rsnd_pcm_hardware = internal constant %struct.snd_pcm_hardware { i32 259, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 65536, i32 32, i32 8192, i32 1, i32 32, i32 256 }, align 8
@rsnd_soc_hw_rate_list = internal global [12 x i32] [i32 8000, i32 11025, i32 16000, i32 22050, i32 32000, i32 44100, i32 48000, i32 64000, i32 88200, i32 96000, i32 176400, i32 192000], align 4
@.str.54 = private unnamed_addr constant [8 x i8] c"cleanup\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"prepare\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"init\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"pcm_new\00", align 1
@.str.62 = private unnamed_addr constant [14 x i8] c"hdmi@fead0000\00", align 1
@.str.63 = private unnamed_addr constant [14 x i8] c"hdmi@feae0000\00", align 1
@.str.64 = private unnamed_addr constant [16 x i8] c"rcar_sound,ssiu\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"probe\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"fallback\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"rsnd\00", align 1
@.str.68 = private unnamed_addr constant [10 x i8] c"hw_params\00", align 1
@.str.69 = private unnamed_addr constant [8 x i8] c"hw_free\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"pointer\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias246, ptr @__UNIQUE_ID_author245, ptr @__UNIQUE_ID_description244, ptr @__UNIQUE_ID_license243], section "llvm.metadata"

@__mod_of__rsnd_of_match_device_table = dso_local alias [5 x %struct.of_device_id], ptr @rsnd_of_match

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rsnd_mod_make_sure(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rsnd_mod, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, %1
  br i1 %5, label %51, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rsnd_mod, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  %11 = load i32, ptr @rsnd_mod_name.num, align 4
  %12 = getelementptr [5 x [16 x i8]], ptr @rsnd_mod_name.names, i32 0, i32 %11
  %13 = add i32 %11, 1
  %14 = icmp sgt i32 %13, 4
  %15 = select i1 %14, i32 0, i32 %13
  store i32 %15, ptr @rsnd_mod_name.num, align 4
  %16 = getelementptr inbounds %struct.rsnd_mod, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %17, i32 0, i32 18
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  %21 = load ptr, ptr %17, align 4
  %22 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %17, i32 0, i32 17
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %20, label %42, label %25

25:                                               ; preds = %6
  br i1 %24, label %26, label %28

26:                                               ; preds = %25
  %27 = load i32, ptr %0, align 4
  br label %34

28:                                               ; preds = %25
  %29 = tail call i32 %23(ptr noundef %0) #19
  %30 = load ptr, ptr %16, align 4
  %31 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %30, i32 0, i32 18
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %28, %26
  %35 = phi i32 [ %27, %26 ], [ %29, %28 ]
  %36 = phi ptr [ %19, %26 ], [ %32, %28 ]
  %37 = tail call i32 %36(ptr noundef %0) #19
  br label %38

38:                                               ; preds = %34, %28
  %39 = phi i32 [ %35, %34 ], [ %29, %28 ]
  %40 = phi i32 [ %37, %34 ], [ 0, %28 ]
  %41 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %12, i32 noundef 16, ptr noundef nonnull @.str.1, ptr noundef %21, i32 noundef %39, i32 noundef %40) #19
  br label %50

42:                                               ; preds = %6
  br i1 %24, label %45, label %43

43:                                               ; preds = %42
  %44 = tail call i32 %23(ptr noundef %0) #19
  br label %47

45:                                               ; preds = %42
  %46 = load i32, ptr %0, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  %49 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %12, i32 noundef 16, ptr noundef nonnull @.str.2, ptr noundef %21, i32 noundef %48) #19
  br label %50

50:                                               ; preds = %47, %38
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str, ptr noundef %12) #20
  br label %51

51:                                               ; preds = %50, %2
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @rsnd_mod_name(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @rsnd_mod_name.num, align 4
  %3 = getelementptr [5 x [16 x i8]], ptr @rsnd_mod_name.names, i32 0, i32 %2
  %4 = add i32 %2, 1
  %5 = icmp sgt i32 %4, 4
  %6 = select i1 %5, i32 0, i32 %4
  store i32 %6, ptr @rsnd_mod_name.num, align 4
  %7 = getelementptr inbounds %struct.rsnd_mod, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %8, i32 0, i32 18
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  %12 = load ptr, ptr %8, align 4
  %13 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %8, i32 0, i32 17
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %11, label %33, label %16

16:                                               ; preds = %1
  br i1 %15, label %17, label %19

17:                                               ; preds = %16
  %18 = load i32, ptr %0, align 4
  br label %25

19:                                               ; preds = %16
  %20 = tail call i32 %14(ptr noundef %0) #19
  %21 = load ptr, ptr %7, align 4
  %22 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %21, i32 0, i32 18
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %19, %17
  %26 = phi i32 [ %18, %17 ], [ %20, %19 ]
  %27 = phi ptr [ %10, %17 ], [ %23, %19 ]
  %28 = tail call i32 %27(ptr noundef %0) #19
  br label %29

29:                                               ; preds = %25, %19
  %30 = phi i32 [ %26, %25 ], [ %20, %19 ]
  %31 = phi i32 [ %28, %25 ], [ 0, %19 ]
  %32 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %3, i32 noundef 16, ptr noundef nonnull @.str.1, ptr noundef %12, i32 noundef %30, i32 noundef %31)
  br label %41

33:                                               ; preds = %1
  br i1 %15, label %36, label %34

34:                                               ; preds = %33
  %35 = tail call i32 %14(ptr noundef %0) #19
  br label %38

36:                                               ; preds = %33
  %37 = load i32, ptr %0, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %3, i32 noundef 16, ptr noundef nonnull @.str.2, ptr noundef %12, i32 noundef %39)
  br label %41

41:                                               ; preds = %38, %29
  ret ptr %3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @rsnd_mod_dma_req(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.rsnd_mod, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %6, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call ptr %10(ptr noundef %0, ptr noundef nonnull %1) #19
  br label %14

14:                                               ; preds = %12, %8, %4, %2
  %15 = phi ptr [ %13, %12 ], [ null, %8 ], [ null, %4 ], [ null, %2 ]
  ret ptr %15
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rsnd_mod_id(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rsnd_mod, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %3, i32 0, i32 17
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 %5(ptr noundef %0) #19
  br label %11

9:                                                ; preds = %1
  %10 = load i32, ptr %0, align 4
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %8, %7 ], [ %10, %9 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rsnd_mod_id_sub(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rsnd_mod, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %3, i32 0, i32 18
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 %5(ptr noundef %0) #19
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local ptr @rsnd_mod_get_status(ptr noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.rsnd_mod, ptr %0, i32 0, i32 5
  ret ptr %4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @rsnd_mod_id_raw(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = load i32, ptr %0, align 4
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rsnd_mod_init(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = tail call i32 @clk_prepare(ptr noundef %3) #19
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %6
  store i32 %5, ptr %1, align 4
  %10 = getelementptr inbounds %struct.rsnd_mod, ptr %1, i32 0, i32 2
  store ptr %2, ptr %10, align 4
  %11 = getelementptr inbounds %struct.rsnd_mod, ptr %1, i32 0, i32 1
  store i32 %4, ptr %11, align 4
  %12 = getelementptr inbounds %struct.rsnd_mod, ptr %1, i32 0, i32 4
  store ptr %3, ptr %12, align 4
  %13 = getelementptr inbounds %struct.rsnd_mod, ptr %1, i32 0, i32 3
  store ptr %0, ptr %13, align 4
  br label %14

14:                                               ; preds = %9, %6
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rsnd_mod_quit(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rsnd_mod, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  tail call void @clk_unprepare(ptr noundef %3) #19
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rsnd_mod_interrupt(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rsnd_mod, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rsnd_priv, ptr %4, i32 0, i32 21
  %6 = getelementptr inbounds %struct.rsnd_priv, ptr %4, i32 0, i32 22
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %35

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.rsnd_mod, ptr %0, i32 0, i32 1
  br label %11

11:                                               ; preds = %31, %9
  %12 = phi i32 [ 0, %9 ], [ %32, %31 ]
  %13 = load ptr, ptr %5, align 4
  %14 = getelementptr %struct.rsnd_dai, ptr %13, i32 %12
  %15 = icmp eq ptr %14, null
  br i1 %15, label %35, label %16

16:                                               ; preds = %11
  %17 = load i32, ptr %10, align 4
  %18 = getelementptr %struct.rsnd_dai, ptr %13, i32 %12, i32 1, i32 2, i32 %17
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = getelementptr %struct.rsnd_dai, ptr %13, i32 %12, i32 1
  tail call void %1(ptr noundef %0, ptr noundef %22) #19
  %23 = load i32, ptr %10, align 4
  br label %24

24:                                               ; preds = %21, %16
  %25 = phi i32 [ %23, %21 ], [ %17, %16 ]
  %26 = getelementptr %struct.rsnd_dai, ptr %13, i32 %12, i32 2, i32 2, i32 %25
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = getelementptr %struct.rsnd_dai, ptr %13, i32 %12, i32 2
  tail call void %1(ptr noundef %0, ptr noundef %30) #19
  br label %31

31:                                               ; preds = %29, %24
  %32 = add nuw nsw i32 %12, 1
  %33 = load i32, ptr %6, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %11, label %35

35:                                               ; preds = %31, %11, %2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @rsnd_rdai_get(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 22
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 21
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr %struct.rsnd_dai, ptr %10, i32 %1
  br label %12

12:                                               ; preds = %8, %4, %2
  %13 = phi ptr [ %11, %8 ], [ null, %4 ], [ null, %2 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @rsnd_io_is_working(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.snd_pcm_substream, ptr %3, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 37
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %9, align 8
  switch i32 %10, label %16 [
    i32 3, label %17
    i32 5, label %11
  ]

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.snd_pcm_substream, ptr %3, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  br label %17

16:                                               ; preds = %5
  br label %17

17:                                               ; preds = %16, %11, %5, %1
  %18 = phi i32 [ 0, %1 ], [ 1, %5 ], [ %15, %11 ], [ 0, %16 ]
  ret i32 %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @rsnd_runtime_channel_original_with_params(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.snd_pcm_substream, ptr %4, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %1, null
  br i1 %9, label %15, label %12

10:                                               ; preds = %2
  %11 = icmp eq ptr %1, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %10, %6
  %13 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 2
  %14 = load i32, ptr %13, align 4
  br label %20

15:                                               ; preds = %6
  %16 = icmp eq ptr %8, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 15
  %19 = load i32, ptr %18, align 8
  br label %20

20:                                               ; preds = %17, %15, %12, %10
  %21 = phi i32 [ %14, %12 ], [ %19, %17 ], [ 0, %15 ], [ 0, %10 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rsnd_runtime_channel_after_ctu_with_params(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.snd_pcm_substream, ptr %4, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %1, null
  br i1 %9, label %15, label %12

10:                                               ; preds = %2
  %11 = icmp eq ptr %1, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %10, %6
  %13 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 2
  %14 = load i32, ptr %13, align 4
  br label %20

15:                                               ; preds = %6
  %16 = icmp eq ptr %8, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 15
  %19 = load i32, ptr %18, align 8
  br label %20

20:                                               ; preds = %17, %15, %12, %10
  %21 = phi i32 [ %14, %12 ], [ %19, %17 ], [ 0, %15 ], [ 0, %10 ]
  %22 = getelementptr %struct.rsnd_dai_stream, ptr %0, i32 0, i32 2, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %41, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %0, i32 0, i32 7
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %0, i32 0, i32 9
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %0, i32 0, i32 4
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.rsnd_dai, ptr %34, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.platform_device, ptr %37, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.3) #20
  br label %39

39:                                               ; preds = %32, %25
  %40 = icmp eq i32 %27, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %39, %20
  br label %42

42:                                               ; preds = %41, %39
  %43 = phi i32 [ %21, %41 ], [ %27, %39 ]
  ret i32 %43
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @rsnd_runtime_is_tdm_split(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %0, i32 0, i32 9
  %3 = load i32, ptr %2, align 4
  %4 = lshr i32 %3, 2
  %5 = and i32 %4, 1
  ret i32 %5
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rsnd_channel_normalization(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp ugt i32 %0, 8
  br i1 %2, label %3, label %4, !prof !8

3:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 298, i32 noundef 9, ptr noundef null) #19
  br label %7

4:                                                ; preds = %1
  %5 = icmp eq i32 %0, 6
  %6 = select i1 %5, i32 8, i32 %0
  br label %7

7:                                                ; preds = %4, %3
  %8 = phi i32 [ 0, %3 ], [ %6, %4 ]
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rsnd_runtime_channel_for_ssi_with_params(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rsnd_dai, ptr %4, i32 0, i32 1
  %6 = icmp eq ptr %5, %0
  %7 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %6, label %10, label %45

10:                                               ; preds = %2
  br i1 %9, label %15, label %11

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.snd_pcm_substream, ptr %8, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %1, null
  br i1 %14, label %20, label %17

15:                                               ; preds = %10
  %16 = icmp eq ptr %1, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %15, %11
  %18 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 2
  %19 = load i32, ptr %18, align 4
  br label %25

20:                                               ; preds = %11
  %21 = icmp eq ptr %13, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %13, i32 0, i32 15
  %24 = load i32, ptr %23, align 8
  br label %25

25:                                               ; preds = %22, %20, %17, %15
  %26 = phi i32 [ %19, %17 ], [ %24, %22 ], [ 0, %20 ], [ 0, %15 ]
  %27 = getelementptr %struct.rsnd_dai_stream, ptr %0, i32 0, i32 2, i32 4
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %44, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %0, i32 0, i32 7
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %0, i32 0, i32 9
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.rsnd_dai, ptr %4, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.platform_device, ptr %40, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.3) #20
  br label %42

42:                                               ; preds = %37, %30
  %43 = icmp eq i32 %32, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %42, %25
  br label %60

45:                                               ; preds = %2
  br i1 %9, label %50, label %46

46:                                               ; preds = %45
  %47 = getelementptr inbounds %struct.snd_pcm_substream, ptr %8, i32 0, i32 11
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %1, null
  br i1 %49, label %55, label %52

50:                                               ; preds = %45
  %51 = icmp eq ptr %1, null
  br i1 %51, label %60, label %52

52:                                               ; preds = %50, %46
  %53 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 2
  %54 = load i32, ptr %53, align 4
  br label %60

55:                                               ; preds = %46
  %56 = icmp eq ptr %48, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %48, i32 0, i32 15
  %59 = load i32, ptr %58, align 8
  br label %60

60:                                               ; preds = %57, %55, %52, %50, %44, %42
  %61 = phi i32 [ %26, %44 ], [ %32, %42 ], [ %54, %52 ], [ %59, %57 ], [ 0, %55 ], [ 0, %50 ]
  %62 = load ptr, ptr %3, align 4
  %63 = getelementptr inbounds %struct.rsnd_dai, ptr %62, i32 0, i32 6
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr inbounds %struct.rsnd_dai, ptr %62, i32 0, i32 1
  %66 = icmp eq ptr %65, %0
  %67 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %0, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %66, label %70, label %98

70:                                               ; preds = %60
  br i1 %69, label %78, label %71

71:                                               ; preds = %70
  %72 = getelementptr inbounds %struct.snd_pcm_substream, ptr %68, i32 0, i32 11
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %73, i32 0, i32 15
  %77 = load i32, ptr %76, align 8
  br label %78

78:                                               ; preds = %75, %71, %70
  %79 = phi i32 [ %77, %75 ], [ 0, %71 ], [ 0, %70 ]
  %80 = getelementptr %struct.rsnd_dai_stream, ptr %0, i32 0, i32 2, i32 4
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %97, label %83

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %0, i32 0, i32 7
  %85 = load i32, ptr %84, align 4
  %86 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %0, i32 0, i32 9
  %87 = load i32, ptr %86, align 4
  %88 = and i32 %87, 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %83
  %91 = getelementptr inbounds %struct.rsnd_dai, ptr %62, i32 0, i32 3
  %92 = load ptr, ptr %91, align 4
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.platform_device, ptr %93, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull @.str.3) #20
  br label %95

95:                                               ; preds = %90, %83
  %96 = icmp eq i32 %85, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %95, %78
  br label %106

98:                                               ; preds = %60
  br i1 %69, label %115, label %99

99:                                               ; preds = %98
  %100 = getelementptr inbounds %struct.snd_pcm_substream, ptr %68, i32 0, i32 11
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %115, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %101, i32 0, i32 15
  %105 = load i32, ptr %104, align 8
  br label %106

106:                                              ; preds = %103, %97, %95
  %107 = phi i32 [ %79, %97 ], [ %85, %95 ], [ %105, %103 ]
  %108 = icmp slt i32 %107, 3
  %109 = icmp slt i32 %64, 2
  %110 = select i1 %108, i1 true, i1 %109
  br i1 %110, label %115, label %111

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.rsnd_dai, ptr %4, i32 0, i32 6
  %113 = load i32, ptr %112, align 4
  %114 = sdiv i32 %61, %113
  br label %115

115:                                              ; preds = %111, %106, %99, %98
  %116 = phi i32 [ %114, %111 ], [ %61, %106 ], [ %61, %99 ], [ %61, %98 ]
  %117 = icmp ugt i32 %116, 8
  br i1 %117, label %118, label %119, !prof !8

118:                                              ; preds = %115
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 298, i32 noundef 9, ptr noundef null) #19
  br label %122

119:                                              ; preds = %115
  %120 = icmp eq i32 %116, 6
  %121 = select i1 %120, i32 8, i32 %116
  br label %122

122:                                              ; preds = %119, %118
  %123 = phi i32 [ 0, %118 ], [ %121, %119 ]
  ret i32 %123
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rsnd_runtime_is_multi_ssi(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rsnd_dai, ptr %3, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rsnd_dai, ptr %3, i32 0, i32 1
  %7 = icmp eq ptr %6, %0
  %8 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %7, label %11, label %39

11:                                               ; preds = %1
  br i1 %10, label %19, label %12

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.snd_pcm_substream, ptr %9, i32 0, i32 11
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %14, i32 0, i32 15
  %18 = load i32, ptr %17, align 8
  br label %19

19:                                               ; preds = %16, %12, %11
  %20 = phi i32 [ %18, %16 ], [ 0, %12 ], [ 0, %11 ]
  %21 = getelementptr %struct.rsnd_dai_stream, ptr %0, i32 0, i32 2, i32 4
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %38, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %0, i32 0, i32 7
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %0, i32 0, i32 9
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.rsnd_dai, ptr %3, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.platform_device, ptr %34, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.3) #20
  br label %36

36:                                               ; preds = %31, %24
  %37 = icmp eq i32 %26, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %36, %19
  br label %47

39:                                               ; preds = %1
  br i1 %10, label %47, label %40

40:                                               ; preds = %39
  %41 = getelementptr inbounds %struct.snd_pcm_substream, ptr %9, i32 0, i32 11
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %42, i32 0, i32 15
  %46 = load i32, ptr %45, align 8
  br label %47

47:                                               ; preds = %44, %40, %39, %38, %36
  %48 = phi i32 [ %20, %38 ], [ %26, %36 ], [ %46, %44 ], [ 0, %40 ], [ 0, %39 ]
  %49 = icmp sgt i32 %48, 2
  %50 = icmp sgt i32 %5, 1
  %51 = select i1 %49, i1 %50, i1 false
  %52 = zext i1 %51 to i32
  ret i32 %52
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @rsnd_rdai_ssi_lane_ctrl(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = icmp sgt i32 %1, 0
  %4 = getelementptr inbounds %struct.rsnd_dai, ptr %0, i32 0, i32 6
  br i1 %3, label %7, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %4, align 4
  br label %8

7:                                                ; preds = %2
  store i32 %1, ptr %4, align 4
  br label %8

8:                                                ; preds = %7, %5
  %9 = phi i32 [ %6, %5 ], [ %1, %7 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rsnd_runtime_is_tdm(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @rsnd_runtime_channel_for_ssi_with_params(ptr noundef %0, ptr noundef null)
  %3 = icmp sgt i32 %2, 5
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rsnd_get_adinr_bit(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rsnd_mod, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.snd_pcm_substream, ptr %6, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi ptr [ %10, %8 ], [ null, %2 ]
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %12, i32 0, i32 12
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 @snd_pcm_format_width(i32 noundef %15) #19
  switch i32 %16, label %19 [
    i32 8, label %21
    i32 16, label %17
    i32 24, label %18
  ]

17:                                               ; preds = %11
  br label %21

18:                                               ; preds = %11
  br label %21

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str.5) #20
  br label %21

21:                                               ; preds = %19, %18, %17, %11
  %22 = phi i32 [ 0, %19 ], [ 0, %18 ], [ 524288, %17 ], [ 1048576, %11 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rsnd_get_dalign(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr %struct.rsnd_dai_stream, ptr %1, i32 0, i32 2, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.snd_pcm_substream, ptr %6, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi ptr [ %10, %8 ], [ null, %2 ]
  %13 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %1, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.rsnd_dai, ptr %14, i32 0, i32 1
  %16 = icmp eq ptr %15, %1
  %17 = getelementptr %struct.rsnd_dai_stream, ptr %1, i32 0, i32 2, i32 5
  %18 = getelementptr %struct.rsnd_dai_stream, ptr %1, i32 0, i32 2, i32 6
  %19 = select i1 %16, ptr %18, ptr %17
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  %22 = select i1 %21, ptr %4, ptr %20
  %23 = icmp eq ptr %4, %0
  br i1 %23, label %24, label %32

24:                                               ; preds = %11
  %25 = getelementptr inbounds %struct.rsnd_mod, ptr %0, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %26, i32 0, i32 18
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %24
  %31 = tail call i32 %28(ptr noundef %0) #19
  br label %32

32:                                               ; preds = %30, %24, %11
  %33 = phi i32 [ 0, %11 ], [ %31, %30 ], [ 0, %24 ]
  %34 = getelementptr [8 x i32], ptr @rsnd_get_dalign.dalign_values, i32 0, i32 %33
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq ptr %22, %0
  br i1 %36, label %37, label %48

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %12, i32 0, i32 12
  %39 = load i32, ptr %38, align 4
  %40 = tail call i32 @snd_pcm_format_width(i32 noundef %39) #19
  %41 = icmp eq i32 %40, 16
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = lshr i32 %35, 4
  %44 = and i32 %43, 252645135
  %45 = shl i32 %35, 4
  %46 = and i32 %45, -252645136
  %47 = or i32 %44, %46
  br label %48

48:                                               ; preds = %42, %37, %32
  %49 = phi i32 [ %47, %42 ], [ %35, %37 ], [ %35, %32 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rsnd_get_busif_shift(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.snd_pcm_substream, ptr %4, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi ptr [ %8, %6 ], [ null, %2 ]
  %11 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %0, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.rsnd_dai, ptr %12, i32 0, i32 1
  %14 = icmp eq ptr %13, %0
  %15 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %10, i32 0, i32 12
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 @snd_pcm_format_width(i32 noundef %16) #19
  %18 = icmp eq i32 %17, 24
  br i1 %18, label %19, label %40

19:                                               ; preds = %9
  %20 = select i1 %14, i32 6, i32 5
  %21 = getelementptr %struct.rsnd_dai_stream, ptr %0, i32 0, i32 2, i32 %20
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = select i1 %14, i32 5, i32 6
  %26 = getelementptr %struct.rsnd_dai_stream, ptr %0, i32 0, i32 2, i32 %25
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = getelementptr %struct.rsnd_dai_stream, ptr %0, i32 0, i32 2, i32 12
  %31 = load ptr, ptr %30, align 4
  br label %32

32:                                               ; preds = %29, %24, %19
  %33 = phi ptr [ %22, %19 ], [ %27, %24 ], [ %31, %29 ]
  %34 = icmp eq ptr %33, %1
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load ptr, ptr %11, align 4
  %37 = getelementptr inbounds %struct.rsnd_dai, ptr %36, i32 0, i32 1
  %38 = icmp eq ptr %37, %0
  %39 = select i1 %38, i32 524288, i32 1572864
  br label %40

40:                                               ; preds = %35, %32, %9
  %41 = phi i32 [ 0, %9 ], [ 0, %32 ], [ %39, %35 ]
  ret i32 %41
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @rsnd_mod_next(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, i32 noundef %3) local_unnamed_addr #9 {
  %5 = icmp eq ptr %2, null
  %6 = select i1 %5, i32 13, i32 %3
  %7 = load i32, ptr %0, align 4
  %8 = icmp slt i32 %7, %6
  br i1 %8, label %9, label %24

9:                                                ; preds = %21, %4
  %10 = phi i32 [ %22, %21 ], [ %7, %4 ]
  br i1 %5, label %14, label %11

11:                                               ; preds = %9
  %12 = getelementptr i32, ptr %2, i32 %10
  %13 = load i32, ptr %12, align 4
  br label %14

14:                                               ; preds = %11, %9
  %15 = phi i32 [ %13, %11 ], [ %10, %9 ]
  %16 = icmp ult i32 %15, 13
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = getelementptr %struct.rsnd_dai_stream, ptr %1, i32 0, i32 2, i32 %15
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %17, %14
  %22 = add i32 %10, 1
  store i32 %22, ptr %0, align 4
  %23 = icmp eq i32 %22, %6
  br i1 %23, label %24, label %9

24:                                               ; preds = %21, %17, %4
  %25 = phi ptr [ null, %4 ], [ null, %21 ], [ %19, %17 ]
  ret ptr %25
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @rsnd_dai_connect(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #8 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = getelementptr %struct.rsnd_dai_stream, ptr %1, i32 0, i32 2, i32 %2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = icmp eq ptr %7, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  store ptr %0, ptr %6, align 4
  br label %12

12:                                               ; preds = %11, %9, %5, %3
  %13 = phi i32 [ 0, %11 ], [ -5, %3 ], [ 0, %5 ], [ -22, %9 ]
  ret i32 %13
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @rsnd_rdai_channels_ctrl(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = icmp sgt i32 %1, 0
  %4 = getelementptr inbounds %struct.rsnd_dai, ptr %0, i32 0, i32 5
  br i1 %3, label %7, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %4, align 4
  br label %8

7:                                                ; preds = %2
  store i32 %1, ptr %4, align 4
  br label %8

8:                                                ; preds = %7, %5
  %9 = phi i32 [ %6, %5 ], [ %1, %7 ]
  ret i32 %9
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @rsnd_rdai_width_ctrl(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = icmp sgt i32 %1, 0
  %4 = getelementptr inbounds %struct.rsnd_dai, ptr %0, i32 0, i32 7
  br i1 %3, label %7, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %4, align 4
  br label %8

7:                                                ; preds = %2
  store i32 %1, ptr %4, align 4
  br label %8

8:                                                ; preds = %7, %5
  %9 = phi i32 [ %6, %5 ], [ %1, %7 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rsnd_dai_period_elapsed(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %3) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rsnd_parse_connect_common(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef readnone %4, ptr noundef readnone %5) local_unnamed_addr #0 {
  %7 = alloca [16 x i8], align 1
  %8 = getelementptr inbounds %struct.rsnd_dai, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %3, null
  br i1 %10, label %58, label %11

11:                                               ; preds = %6
  %12 = tail call ptr @of_get_next_child(ptr noundef nonnull %3, ptr noundef null) #19
  %13 = icmp eq ptr %12, null
  br i1 %13, label %57, label %14

14:                                               ; preds = %53, %11
  %15 = phi i32 [ %54, %53 ], [ 0, %11 ]
  %16 = phi ptr [ %55, %53 ], [ %12, %11 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %7, i8 0, i32 16, i1 false) #19, !annotation !9
  %17 = icmp slt i32 %15, 64
  br i1 %17, label %18, label %29

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.device_node, ptr %16, i32 0, i32 2
  br label %20

20:                                               ; preds = %26, %18
  %21 = phi i32 [ %15, %18 ], [ %27, %26 ]
  %22 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %7, i32 noundef 16, ptr noundef nonnull @.str.6, ptr noundef %1, i32 noundef %21) #19
  %23 = load ptr, ptr %19, align 4
  %24 = call i32 @strncmp(ptr noundef nonnull %7, ptr noundef %23, i32 noundef 16) #19
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = add i32 %21, 1
  %28 = icmp eq i32 %27, 64
  br i1 %28, label %29, label %20

29:                                               ; preds = %26, %20, %14
  %30 = phi i32 [ -22, %14 ], [ %21, %20 ], [ -22, %26 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #19
  %31 = tail call ptr %2(ptr noundef %9, i32 noundef %30) #19
  %32 = icmp eq ptr %16, %4
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  %34 = icmp eq ptr %31, null
  br i1 %34, label %53, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.rsnd_mod, ptr %31, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr %struct.rsnd_dai, ptr %0, i32 0, i32 1, i32 2, i32 %37
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store ptr %31, ptr %38, align 4
  br label %42

42:                                               ; preds = %41, %35, %29
  %43 = icmp ne ptr %16, %5
  %44 = icmp eq ptr %31, null
  %45 = select i1 %43, i1 true, i1 %44
  br i1 %45, label %53, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.rsnd_mod, ptr %31, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr %struct.rsnd_dai, ptr %0, i32 0, i32 2, i32 2, i32 %48
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store ptr %31, ptr %49, align 4
  br label %53

53:                                               ; preds = %52, %46, %42, %33
  %54 = add i32 %30, 1
  %55 = tail call ptr @of_get_next_child(ptr noundef nonnull %3, ptr noundef nonnull %16) #19
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %14

57:                                               ; preds = %53, %11
  tail call void @of_node_put(ptr noundef nonnull %3) #19
  br label %58

58:                                               ; preds = %57, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rsnd_node_fixed_index(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #10 {
  %4 = alloca [16 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !9
  %5 = icmp slt i32 %2, 64
  br i1 %5, label %6, label %21

6:                                                ; preds = %3
  %7 = icmp eq ptr %0, null
  %8 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 2
  br label %9

9:                                                ; preds = %18, %6
  %10 = phi i32 [ %2, %6 ], [ %19, %18 ]
  %11 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 16, ptr noundef nonnull @.str.6, ptr noundef %1, i32 noundef %10)
  br i1 %7, label %14, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr %8, align 4
  br label %14

14:                                               ; preds = %12, %9
  %15 = phi ptr [ %13, %12 ], [ @.str.33, %9 ]
  %16 = call i32 @strncmp(ptr noundef nonnull %4, ptr noundef %15, i32 noundef 16)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = add i32 %10, 1
  %20 = icmp eq i32 %19, 64
  br i1 %20, label %21, label %9

21:                                               ; preds = %18, %14, %3
  %22 = phi i32 [ -22, %3 ], [ -22, %18 ], [ %10, %14 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #11

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rsnd_node_count(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [16 x i8], align 1
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %7 = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef null) #19
  %8 = icmp eq ptr %7, null
  br i1 %8, label %38, label %9

9:                                                ; preds = %34, %3
  %10 = phi i32 [ %35, %34 ], [ 0, %3 ]
  %11 = phi ptr [ %36, %34 ], [ %7, %3 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %4, i8 0, i32 16, i1 false) #19, !annotation !9
  %12 = icmp slt i32 %10, 64
  br i1 %12, label %13, label %24

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.device_node, ptr %11, i32 0, i32 2
  br label %15

15:                                               ; preds = %21, %13
  %16 = phi i32 [ %10, %13 ], [ %22, %21 ]
  %17 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 16, ptr noundef nonnull @.str.6, ptr noundef %2, i32 noundef %16) #19
  %18 = load ptr, ptr %14, align 4
  %19 = call i32 @strncmp(ptr noundef nonnull %4, ptr noundef %18, i32 noundef 16) #19
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %15
  %22 = add i32 %16, 1
  %23 = icmp eq i32 %22, 64
  br i1 %23, label %24, label %15

24:                                               ; preds = %21, %9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  br label %27

25:                                               ; preds = %15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  %26 = icmp slt i32 %16, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %25, %24
  %28 = icmp eq ptr %1, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  br label %32

32:                                               ; preds = %29, %27
  %33 = phi ptr [ %31, %29 ], [ @.str.33, %27 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.7, ptr noundef %33) #20
  tail call void @of_node_put(ptr noundef nonnull %11) #19
  br label %38

34:                                               ; preds = %25
  %35 = add nuw i32 %16, 1
  %36 = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef nonnull %11) #19
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %9

38:                                               ; preds = %34, %32, %3
  %39 = phi i32 [ 0, %32 ], [ 0, %3 ], [ %35, %34 ]
  ret i32 %39
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @rsnd_kctrl_accept_anytime(ptr nocapture noundef readnone %0) local_unnamed_addr #4 {
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rsnd_kctrl_accept_runtime(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.snd_pcm_substream, ptr %3, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.rsnd_dai, ptr %11, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.8) #20
  br label %16

16:                                               ; preds = %9, %5
  %17 = phi i32 [ 0, %9 ], [ 1, %5 ]
  ret i32 %17
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local ptr @rsnd_kctrl_init_m(ptr noundef returned %0) local_unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.rsnd_kctrl_cfg_m, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %struct.rsnd_kctrl_cfg, ptr %0, i32 0, i32 2
  store ptr %2, ptr %3, align 4
  ret ptr %0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local ptr @rsnd_kctrl_init_s(ptr noundef returned %0) local_unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.rsnd_kctrl_cfg_s, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %struct.rsnd_kctrl_cfg, ptr %0, i32 0, i32 2
  store ptr %2, ptr %3, align 4
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rsnd_kctrl_new(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
  %11 = alloca %struct.snd_kcontrol_new, align 4
  %12 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %2, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.snd_soc_card, ptr %13, i32 0, i32 7
  %15 = load ptr, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %11) #19
  store i32 2, ptr %11, align 4
  %16 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %11, i32 0, i32 1
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %11, i32 0, i32 2
  store i32 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %11, i32 0, i32 3
  store ptr %3, ptr %18, align 4
  %19 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %11, i32 0, i32 4
  %20 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %2, i32 0, i32 17
  %21 = load i32, ptr %20, align 4
  store i32 %21, ptr %19, align 4
  %22 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %11, i32 0, i32 5
  store i32 0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %11, i32 0, i32 6
  store i32 0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %11, i32 0, i32 7
  store ptr @rsnd_kctrl_info, ptr %24, align 4
  %25 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %11, i32 0, i32 8
  store ptr @rsnd_kctrl_get, ptr %25, align 4
  %26 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %11, i32 0, i32 9
  store ptr @rsnd_kctrl_put, ptr %26, align 4
  %27 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %11, i32 0, i32 10
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %11, i32 0, i32 11
  store i32 0, ptr %28, align 4
  %29 = getelementptr inbounds %struct.snd_card, ptr %15, i32 0, i32 18
  br label %30

30:                                               ; preds = %34, %10
  %31 = phi ptr [ %29, %10 ], [ %32, %34 ]
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, %29
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.snd_kcontrol, ptr %32, i32 0, i32 8
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, %6
  br i1 %37, label %55, label %30

38:                                               ; preds = %30
  %39 = icmp sgt i32 %8, 8
  br i1 %39, label %55, label %40

40:                                               ; preds = %38
  %41 = call ptr @snd_ctl_new1(ptr noundef nonnull %11, ptr noundef %6) #19
  %42 = icmp eq ptr %41, null
  br i1 %42, label %55, label %43

43:                                               ; preds = %40
  %44 = call i32 @snd_ctl_add(ptr noundef %15, ptr noundef nonnull %41) #19
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.rsnd_kctrl_cfg, ptr %6, i32 0, i32 3
  store ptr %7, ptr %47, align 4
  store i32 %9, ptr %6, align 4
  %48 = getelementptr inbounds %struct.rsnd_kctrl_cfg, ptr %6, i32 0, i32 1
  store i32 %8, ptr %48, align 4
  %49 = getelementptr inbounds %struct.rsnd_kctrl_cfg, ptr %6, i32 0, i32 4
  store ptr %4, ptr %49, align 4
  %50 = getelementptr inbounds %struct.rsnd_kctrl_cfg, ptr %6, i32 0, i32 5
  store ptr %5, ptr %50, align 4
  %51 = getelementptr inbounds %struct.rsnd_kctrl_cfg, ptr %6, i32 0, i32 7
  store ptr %15, ptr %51, align 4
  %52 = getelementptr inbounds %struct.rsnd_kctrl_cfg, ptr %6, i32 0, i32 8
  store ptr %41, ptr %52, align 4
  %53 = getelementptr inbounds %struct.rsnd_kctrl_cfg, ptr %6, i32 0, i32 6
  store ptr %1, ptr %53, align 4
  %54 = getelementptr inbounds %struct.rsnd_kctrl_cfg, ptr %6, i32 0, i32 9
  store ptr %0, ptr %54, align 4
  br label %55

55:                                               ; preds = %46, %43, %40, %38, %34
  %56 = phi i32 [ 0, %46 ], [ -22, %38 ], [ -12, %40 ], [ %44, %43 ], [ 0, %34 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %11) #19
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_kctrl_info(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rsnd_kctrl_cfg, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %28, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 1
  store i32 3, ptr %9, align 8
  %10 = getelementptr inbounds %struct.rsnd_kctrl_cfg, ptr %4, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 3
  store i32 %11, ptr %12, align 8
  %13 = load i32, ptr %4, align 4
  %14 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5
  store i32 %13, ptr %14, align 8
  %15 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = load i32, ptr %4, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %21, label %19

19:                                               ; preds = %8
  %20 = add i32 %17, -1
  store i32 %20, ptr %15, align 4
  br label %21

21:                                               ; preds = %19, %8
  %22 = phi i32 [ %20, %19 ], [ %16, %8 ]
  %23 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5, i32 0, i32 2
  %24 = load ptr, ptr %5, align 4
  %25 = getelementptr ptr, ptr %24, i32 %22
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 @strscpy(ptr noundef %23, ptr noundef %26, i32 noundef 64) #19
  br label %39

28:                                               ; preds = %2
  %29 = getelementptr inbounds %struct.rsnd_kctrl_cfg, ptr %4, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 3
  store i32 %30, ptr %31, align 8
  %32 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5
  store i32 0, ptr %32, align 8
  %33 = load i32, ptr %4, align 4
  %34 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5, i32 0, i32 1
  store i32 %33, ptr %34, align 4
  %35 = load i32, ptr %4, align 4
  %36 = icmp eq i32 %35, 1
  %37 = select i1 %36, i32 1, i32 2
  %38 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 1
  store i32 %37, ptr %38, align 8
  br label %39

39:                                               ; preds = %28, %21
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_kctrl_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #14 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rsnd_kctrl_cfg, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.rsnd_kctrl_cfg, ptr %4, i32 0, i32 2
  %10 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  br label %11

11:                                               ; preds = %11, %8
  %12 = phi i32 [ 0, %8 ], [ %17, %11 ]
  %13 = load ptr, ptr %9, align 4
  %14 = getelementptr i32, ptr %13, i32 %12
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr [128 x i32], ptr %10, i32 0, i32 %12
  store i32 %15, ptr %16, align 4
  %17 = add nuw i32 %12, 1
  %18 = load i32, ptr %5, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %11, label %20

20:                                               ; preds = %11, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_kctrl_put(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rsnd_kctrl_cfg, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.rsnd_kctrl_cfg, ptr %4, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %6(ptr noundef %8) #19
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %42, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.rsnd_kctrl_cfg, ptr %4, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %42, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %17 = getelementptr inbounds %struct.rsnd_kctrl_cfg, ptr %4, i32 0, i32 2
  br label %18

18:                                               ; preds = %18, %15
  %19 = phi i32 [ 0, %15 ], [ %28, %18 ]
  %20 = phi i32 [ 0, %15 ], [ %29, %18 ]
  %21 = getelementptr [128 x i32], ptr %16, i32 0, i32 %20
  %22 = load i32, ptr %21, align 4
  %23 = load ptr, ptr %17, align 4
  %24 = getelementptr i32, ptr %23, i32 %20
  %25 = load i32, ptr %24, align 4
  %26 = icmp ne i32 %22, %25
  store i32 %22, ptr %24, align 4
  %27 = zext i1 %26 to i32
  %28 = or i32 %19, %27
  %29 = add nuw i32 %20, 1
  %30 = load i32, ptr %12, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %18, label %32

32:                                               ; preds = %18
  %33 = icmp eq i32 %28, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.rsnd_kctrl_cfg, ptr %4, i32 0, i32 5
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr %7, align 4
  %40 = getelementptr inbounds %struct.rsnd_kctrl_cfg, ptr %4, i32 0, i32 9
  %41 = load ptr, ptr %40, align 4
  tail call void %36(ptr noundef %39, ptr noundef %41) #19
  br label %42

42:                                               ; preds = %38, %34, %32, %11, %2
  %43 = phi i32 [ 0, %2 ], [ %28, %38 ], [ %28, %34 ], [ 0, %32 ], [ 0, %11 ]
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #15 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @rsnd_driver, ptr noundef nonnull @__this_module) #19
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #15 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @rsnd_driver) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 92, i32 noundef 3520) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %265, label %5

5:                                                ; preds = %1
  store ptr %0, ptr %3, align 4
  %6 = tail call ptr @of_device_get_match_data(ptr noundef %2) #19
  %7 = ptrtoint ptr %6 to i32
  %8 = getelementptr inbounds %struct.rsnd_priv, ptr %3, i32 0, i32 2
  store i32 %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.rsnd_priv, ptr %3, i32 0, i32 1
  store i32 0, ptr %9, align 4
  %10 = tail call i32 @rsnd_gen_probe(ptr noundef nonnull %3) #19
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %265

12:                                               ; preds = %5
  %13 = tail call i32 @rsnd_dma_probe(ptr noundef nonnull %3) #19
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %265

15:                                               ; preds = %12
  %16 = tail call i32 @rsnd_ssi_probe(ptr noundef nonnull %3) #19
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %265

18:                                               ; preds = %15
  %19 = tail call i32 @rsnd_ssiu_probe(ptr noundef nonnull %3) #19
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %265

21:                                               ; preds = %18
  %22 = tail call i32 @rsnd_src_probe(ptr noundef nonnull %3) #19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %265

24:                                               ; preds = %21
  %25 = tail call i32 @rsnd_ctu_probe(ptr noundef nonnull %3) #19
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %265

27:                                               ; preds = %24
  %28 = tail call i32 @rsnd_mix_probe(ptr noundef nonnull %3) #19
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %265

30:                                               ; preds = %27
  %31 = tail call i32 @rsnd_dvc_probe(ptr noundef nonnull %3) #19
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %265

33:                                               ; preds = %30
  %34 = tail call i32 @rsnd_cmd_probe(ptr noundef nonnull %3) #19
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %265

36:                                               ; preds = %33
  %37 = tail call i32 @rsnd_adg_probe(ptr noundef nonnull %3) #19
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %265

39:                                               ; preds = %36
  %40 = tail call fastcc i32 @rsnd_dai_probe(ptr noundef nonnull %3) #19
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %265

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.rsnd_priv, ptr %3, i32 0, i32 22
  %44 = load i32, ptr %43, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %68

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.rsnd_priv, ptr %3, i32 0, i32 21
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %68, label %58

50:                                               ; preds = %64
  %51 = add nuw nsw i32 %60, 1
  %52 = load i32, ptr %43, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %68

54:                                               ; preds = %50
  %55 = load ptr, ptr %47, align 4
  %56 = getelementptr %struct.rsnd_dai, ptr %55, i32 %51
  %57 = icmp eq ptr %56, null
  br i1 %57, label %68, label %58

58:                                               ; preds = %54, %46
  %59 = phi ptr [ %55, %54 ], [ %48, %46 ]
  %60 = phi i32 [ %51, %54 ], [ 0, %46 ]
  %61 = getelementptr %struct.rsnd_dai, ptr %59, i32 %60, i32 1
  %62 = tail call fastcc i32 @rsnd_rdai_continuance_probe(ptr noundef nonnull %3, ptr noundef %61)
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %58
  %65 = getelementptr %struct.rsnd_dai, ptr %59, i32 %60, i32 2
  %66 = tail call fastcc i32 @rsnd_rdai_continuance_probe(ptr noundef nonnull %3, ptr noundef %65)
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %50, label %77

68:                                               ; preds = %54, %50, %46, %42
  %69 = phi i32 [ %44, %42 ], [ %44, %46 ], [ %52, %54 ], [ %52, %50 ]
  %70 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %70, align 8
  %71 = getelementptr inbounds %struct.rsnd_priv, ptr %3, i32 0, i32 20
  %72 = load ptr, ptr %71, align 4
  %73 = tail call i32 @devm_snd_soc_register_component(ptr noundef %2, ptr noundef nonnull @rsnd_soc_component, ptr noundef %72, i32 noundef %69) #19
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.35) #20
  br label %77

76:                                               ; preds = %68
  tail call void @pm_runtime_enable(ptr noundef %2) #19
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.36) #20
  br label %265

77:                                               ; preds = %75, %64, %58
  %78 = phi i32 [ %73, %75 ], [ %66, %64 ], [ %62, %58 ]
  %79 = getelementptr inbounds %struct.rsnd_priv, ptr %3, i32 0, i32 21
  %80 = load i32, ptr %43, align 4
  %81 = icmp slt i32 %80, 1
  br i1 %81, label %264, label %82

82:                                               ; preds = %260, %77
  %83 = phi i32 [ %261, %260 ], [ 0, %77 ]
  %84 = load ptr, ptr %79, align 4
  %85 = getelementptr %struct.rsnd_dai, ptr %84, i32 %83
  %86 = icmp eq ptr %85, null
  br i1 %86, label %264, label %87

87:                                               ; preds = %82
  %88 = getelementptr %struct.rsnd_dai, ptr %84, i32 %83, i32 1
  %89 = getelementptr %struct.rsnd_dai, ptr %84, i32 %83, i32 1, i32 4
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.rsnd_dai, ptr %90, i32 0, i32 3
  %92 = load ptr, ptr %91, align 4
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.platform_device, ptr %93, i32 0, i32 3
  %95 = icmp eq ptr %90, %85
  %96 = zext i1 %95 to i32
  %97 = getelementptr [2 x [13 x i32]], ptr @rsnd_mod_sequence, i32 0, i32 %96
  %98 = icmp eq ptr %97, null
  br label %99

99:                                               ; preds = %114, %87
  %100 = phi i32 [ 0, %87 ], [ %115, %114 ]
  br i1 %98, label %104, label %101

101:                                              ; preds = %99
  %102 = getelementptr i32, ptr %97, i32 %100
  %103 = load i32, ptr %102, align 4
  br label %104

104:                                              ; preds = %101, %99
  %105 = phi i32 [ %103, %101 ], [ %100, %99 ]
  %106 = icmp ult i32 %105, 13
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = getelementptr %struct.rsnd_dai, ptr %84, i32 %83, i32 1, i32 2, i32 %105
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %116

111:                                              ; preds = %107, %104
  %112 = add i32 %100, 1
  %113 = icmp eq i32 %112, 13
  br i1 %113, label %173, label %114

114:                                              ; preds = %170, %111
  %115 = phi i32 [ %112, %111 ], [ %171, %170 ]
  br label %99

116:                                              ; preds = %107
  %117 = getelementptr i32, ptr %97, i32 %100
  %118 = load i32, ptr %117, align 4
  %119 = getelementptr inbounds %struct.rsnd_mod, ptr %109, i32 0, i32 2
  %120 = load ptr, ptr %119, align 4
  %121 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %120, i32 0, i32 16
  %122 = load ptr, ptr %121, align 4
  %123 = tail call ptr %122(ptr noundef nonnull %109, ptr noundef %88, i32 noundef %118) #19
  %124 = load ptr, ptr %119, align 4
  %125 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %124, i32 0, i32 3
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %170, label %128

128:                                              ; preds = %116
  %129 = tail call i32 %126(ptr noundef nonnull %109, ptr noundef %88, ptr noundef nonnull %3) #19
  switch i32 %129, label %130 [
    i32 -517, label %170
    i32 0, label %170
  ]

130:                                              ; preds = %128
  %131 = load i32, ptr @rsnd_mod_name.num, align 4
  %132 = getelementptr [5 x [16 x i8]], ptr @rsnd_mod_name.names, i32 0, i32 %131
  %133 = add i32 %131, 1
  %134 = icmp sgt i32 %133, 4
  %135 = select i1 %134, i32 0, i32 %133
  store i32 %135, ptr @rsnd_mod_name.num, align 4
  %136 = load ptr, ptr %119, align 4
  %137 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %136, i32 0, i32 18
  %138 = load ptr, ptr %137, align 4
  %139 = icmp eq ptr %138, null
  %140 = load ptr, ptr %136, align 4
  %141 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %136, i32 0, i32 17
  %142 = load ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, null
  br i1 %139, label %161, label %144

144:                                              ; preds = %130
  br i1 %143, label %145, label %147

145:                                              ; preds = %144
  %146 = load i32, ptr %109, align 4
  br label %153

147:                                              ; preds = %144
  %148 = tail call i32 %142(ptr noundef nonnull %109) #19
  %149 = load ptr, ptr %119, align 4
  %150 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %149, i32 0, i32 18
  %151 = load ptr, ptr %150, align 4
  %152 = icmp eq ptr %151, null
  br i1 %152, label %157, label %153

153:                                              ; preds = %147, %145
  %154 = phi i32 [ %146, %145 ], [ %148, %147 ]
  %155 = phi ptr [ %138, %145 ], [ %151, %147 ]
  %156 = tail call i32 %155(ptr noundef nonnull %109) #19
  br label %157

157:                                              ; preds = %153, %147
  %158 = phi i32 [ %154, %153 ], [ %148, %147 ]
  %159 = phi i32 [ %156, %153 ], [ 0, %147 ]
  %160 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %132, i32 noundef 16, ptr noundef nonnull @.str.1, ptr noundef %140, i32 noundef %158, i32 noundef %159) #19
  br label %169

161:                                              ; preds = %130
  br i1 %143, label %164, label %162

162:                                              ; preds = %161
  %163 = tail call i32 %142(ptr noundef nonnull %109) #19
  br label %166

164:                                              ; preds = %161
  %165 = load i32, ptr %109, align 4
  br label %166

166:                                              ; preds = %164, %162
  %167 = phi i32 [ %163, %162 ], [ %165, %164 ]
  %168 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %132, i32 noundef 16, ptr noundef nonnull @.str.2, ptr noundef %140, i32 noundef %167) #19
  br label %169

169:                                              ; preds = %166, %157
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull @.str.37, ptr noundef %132, ptr noundef nonnull @.str.38, i32 noundef %129, i32 noundef 1) #20
  br label %170

170:                                              ; preds = %169, %128, %128, %116
  %171 = add i32 %100, 1
  %172 = icmp slt i32 %171, 13
  br i1 %172, label %114, label %173

173:                                              ; preds = %170, %111
  %174 = getelementptr %struct.rsnd_dai, ptr %84, i32 %83, i32 2
  %175 = getelementptr %struct.rsnd_dai, ptr %84, i32 %83, i32 2, i32 4
  %176 = load ptr, ptr %175, align 4
  %177 = getelementptr inbounds %struct.rsnd_dai, ptr %176, i32 0, i32 3
  %178 = load ptr, ptr %177, align 4
  %179 = load ptr, ptr %178, align 4
  %180 = getelementptr inbounds %struct.platform_device, ptr %179, i32 0, i32 3
  %181 = getelementptr inbounds %struct.rsnd_dai, ptr %176, i32 0, i32 1
  %182 = icmp eq ptr %181, %174
  %183 = zext i1 %182 to i32
  %184 = getelementptr [2 x [13 x i32]], ptr @rsnd_mod_sequence, i32 0, i32 %183
  %185 = icmp eq ptr %184, null
  br label %186

186:                                              ; preds = %201, %173
  %187 = phi i32 [ 0, %173 ], [ %202, %201 ]
  br i1 %185, label %191, label %188

188:                                              ; preds = %186
  %189 = getelementptr i32, ptr %184, i32 %187
  %190 = load i32, ptr %189, align 4
  br label %191

191:                                              ; preds = %188, %186
  %192 = phi i32 [ %190, %188 ], [ %187, %186 ]
  %193 = icmp ult i32 %192, 13
  br i1 %193, label %194, label %198

194:                                              ; preds = %191
  %195 = getelementptr %struct.rsnd_dai, ptr %84, i32 %83, i32 2, i32 2, i32 %192
  %196 = load ptr, ptr %195, align 4
  %197 = icmp eq ptr %196, null
  br i1 %197, label %198, label %203

198:                                              ; preds = %194, %191
  %199 = add i32 %187, 1
  %200 = icmp eq i32 %199, 13
  br i1 %200, label %260, label %201

201:                                              ; preds = %257, %198
  %202 = phi i32 [ %199, %198 ], [ %258, %257 ]
  br label %186

203:                                              ; preds = %194
  %204 = getelementptr i32, ptr %184, i32 %187
  %205 = load i32, ptr %204, align 4
  %206 = getelementptr inbounds %struct.rsnd_mod, ptr %196, i32 0, i32 2
  %207 = load ptr, ptr %206, align 4
  %208 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %207, i32 0, i32 16
  %209 = load ptr, ptr %208, align 4
  %210 = tail call ptr %209(ptr noundef nonnull %196, ptr noundef %174, i32 noundef %205) #19
  %211 = load ptr, ptr %206, align 4
  %212 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %211, i32 0, i32 3
  %213 = load ptr, ptr %212, align 4
  %214 = icmp eq ptr %213, null
  br i1 %214, label %257, label %215

215:                                              ; preds = %203
  %216 = tail call i32 %213(ptr noundef nonnull %196, ptr noundef %174, ptr noundef nonnull %3) #19
  switch i32 %216, label %217 [
    i32 -517, label %257
    i32 0, label %257
  ]

217:                                              ; preds = %215
  %218 = load i32, ptr @rsnd_mod_name.num, align 4
  %219 = getelementptr [5 x [16 x i8]], ptr @rsnd_mod_name.names, i32 0, i32 %218
  %220 = add i32 %218, 1
  %221 = icmp sgt i32 %220, 4
  %222 = select i1 %221, i32 0, i32 %220
  store i32 %222, ptr @rsnd_mod_name.num, align 4
  %223 = load ptr, ptr %206, align 4
  %224 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %223, i32 0, i32 18
  %225 = load ptr, ptr %224, align 4
  %226 = icmp eq ptr %225, null
  %227 = load ptr, ptr %223, align 4
  %228 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %223, i32 0, i32 17
  %229 = load ptr, ptr %228, align 4
  %230 = icmp eq ptr %229, null
  br i1 %226, label %248, label %231

231:                                              ; preds = %217
  br i1 %230, label %232, label %234

232:                                              ; preds = %231
  %233 = load i32, ptr %196, align 4
  br label %240

234:                                              ; preds = %231
  %235 = tail call i32 %229(ptr noundef nonnull %196) #19
  %236 = load ptr, ptr %206, align 4
  %237 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %236, i32 0, i32 18
  %238 = load ptr, ptr %237, align 4
  %239 = icmp eq ptr %238, null
  br i1 %239, label %244, label %240

240:                                              ; preds = %234, %232
  %241 = phi i32 [ %233, %232 ], [ %235, %234 ]
  %242 = phi ptr [ %225, %232 ], [ %238, %234 ]
  %243 = tail call i32 %242(ptr noundef nonnull %196) #19
  br label %244

244:                                              ; preds = %240, %234
  %245 = phi i32 [ %241, %240 ], [ %235, %234 ]
  %246 = phi i32 [ %243, %240 ], [ 0, %234 ]
  %247 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %219, i32 noundef 16, ptr noundef nonnull @.str.1, ptr noundef %227, i32 noundef %245, i32 noundef %246) #19
  br label %256

248:                                              ; preds = %217
  br i1 %230, label %251, label %249

249:                                              ; preds = %248
  %250 = tail call i32 %229(ptr noundef nonnull %196) #19
  br label %253

251:                                              ; preds = %248
  %252 = load i32, ptr %196, align 4
  br label %253

253:                                              ; preds = %251, %249
  %254 = phi i32 [ %250, %249 ], [ %252, %251 ]
  %255 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %219, i32 noundef 16, ptr noundef nonnull @.str.2, ptr noundef %227, i32 noundef %254) #19
  br label %256

256:                                              ; preds = %253, %244
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %180, ptr noundef nonnull @.str.37, ptr noundef %219, ptr noundef nonnull @.str.38, i32 noundef %216, i32 noundef 1) #20
  br label %257

257:                                              ; preds = %256, %215, %215, %203
  %258 = add i32 %187, 1
  %259 = icmp slt i32 %258, 13
  br i1 %259, label %201, label %260

260:                                              ; preds = %257, %198
  %261 = add nuw nsw i32 %83, 1
  %262 = load i32, ptr %43, align 4
  %263 = icmp slt i32 %261, %262
  br i1 %263, label %82, label %264

264:                                              ; preds = %260, %82, %77
  tail call void @rsnd_adg_remove(ptr noundef nonnull %3) #19
  br label %265

265:                                              ; preds = %264, %76, %39, %36, %33, %30, %27, %24, %21, %18, %15, %12, %5, %1
  %266 = phi i32 [ %78, %264 ], [ %73, %76 ], [ -19, %1 ], [ %10, %5 ], [ %13, %12 ], [ %16, %15 ], [ %19, %18 ], [ %22, %21 ], [ %25, %24 ], [ %28, %27 ], [ %31, %30 ], [ %34, %33 ], [ %37, %36 ], [ %40, %39 ]
  ret i32 %266
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %4 = load ptr, ptr %3, align 8
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #19
  %5 = getelementptr inbounds %struct.rsnd_priv, ptr %4, i32 0, i32 21
  %6 = getelementptr inbounds %struct.rsnd_priv, ptr %4, i32 0, i32 22
  %7 = load i32, ptr %6, align 4
  %8 = icmp slt i32 %7, 1
  br i1 %8, label %202, label %9

9:                                                ; preds = %196, %1
  %10 = phi i32 [ %198, %196 ], [ 0, %1 ]
  %11 = phi i32 [ %199, %196 ], [ 0, %1 ]
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr %struct.rsnd_dai, ptr %12, i32 %11
  %14 = icmp eq ptr %13, null
  br i1 %14, label %202, label %15

15:                                               ; preds = %9
  %16 = getelementptr %struct.rsnd_dai, ptr %12, i32 %11, i32 1
  %17 = getelementptr %struct.rsnd_dai, ptr %12, i32 %11, i32 1, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.rsnd_dai, ptr %18, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.platform_device, ptr %21, i32 0, i32 3
  %23 = icmp eq ptr %18, %13
  %24 = zext i1 %23 to i32
  %25 = getelementptr [2 x [13 x i32]], ptr @rsnd_mod_sequence, i32 0, i32 %24
  %26 = icmp eq ptr %25, null
  br label %27

27:                                               ; preds = %99, %15
  %28 = phi i32 [ 0, %15 ], [ %101, %99 ]
  %29 = phi i32 [ 0, %15 ], [ %102, %99 ]
  br label %30

30:                                               ; preds = %42, %27
  %31 = phi i32 [ %43, %42 ], [ %29, %27 ]
  br i1 %26, label %35, label %32

32:                                               ; preds = %30
  %33 = getelementptr i32, ptr %25, i32 %31
  %34 = load i32, ptr %33, align 4
  br label %35

35:                                               ; preds = %32, %30
  %36 = phi i32 [ %34, %32 ], [ %31, %30 ]
  %37 = icmp ult i32 %36, 13
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = getelementptr %struct.rsnd_dai, ptr %12, i32 %11, i32 1, i32 2, i32 %36
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %38, %35
  %43 = add i32 %31, 1
  %44 = icmp eq i32 %43, 13
  br i1 %44, label %104, label %30

45:                                               ; preds = %38
  %46 = getelementptr i32, ptr %25, i32 %31
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.rsnd_mod, ptr %40, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %49, i32 0, i32 16
  %51 = load ptr, ptr %50, align 4
  %52 = tail call ptr %51(ptr noundef nonnull %40, ptr noundef %16, i32 noundef %47) #19
  %53 = load ptr, ptr %48, align 4
  %54 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %53, i32 0, i32 3
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %99, label %57

57:                                               ; preds = %45
  %58 = tail call i32 %55(ptr noundef nonnull %40, ptr noundef %16, ptr noundef %4) #19
  switch i32 %58, label %59 [
    i32 -517, label %99
    i32 0, label %99
  ]

59:                                               ; preds = %57
  %60 = load i32, ptr @rsnd_mod_name.num, align 4
  %61 = getelementptr [5 x [16 x i8]], ptr @rsnd_mod_name.names, i32 0, i32 %60
  %62 = add i32 %60, 1
  %63 = icmp sgt i32 %62, 4
  %64 = select i1 %63, i32 0, i32 %62
  store i32 %64, ptr @rsnd_mod_name.num, align 4
  %65 = load ptr, ptr %48, align 4
  %66 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %65, i32 0, i32 18
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  %69 = load ptr, ptr %65, align 4
  %70 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %65, i32 0, i32 17
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %68, label %90, label %73

73:                                               ; preds = %59
  br i1 %72, label %74, label %76

74:                                               ; preds = %73
  %75 = load i32, ptr %40, align 4
  br label %82

76:                                               ; preds = %73
  %77 = tail call i32 %71(ptr noundef nonnull %40) #19
  %78 = load ptr, ptr %48, align 4
  %79 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %78, i32 0, i32 18
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %86, label %82

82:                                               ; preds = %76, %74
  %83 = phi i32 [ %75, %74 ], [ %77, %76 ]
  %84 = phi ptr [ %67, %74 ], [ %80, %76 ]
  %85 = tail call i32 %84(ptr noundef nonnull %40) #19
  br label %86

86:                                               ; preds = %82, %76
  %87 = phi i32 [ %83, %82 ], [ %77, %76 ]
  %88 = phi i32 [ %85, %82 ], [ 0, %76 ]
  %89 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %61, i32 noundef 16, ptr noundef nonnull @.str.1, ptr noundef %69, i32 noundef %87, i32 noundef %88) #19
  br label %98

90:                                               ; preds = %59
  br i1 %72, label %93, label %91

91:                                               ; preds = %90
  %92 = tail call i32 %71(ptr noundef nonnull %40) #19
  br label %95

93:                                               ; preds = %90
  %94 = load i32, ptr %40, align 4
  br label %95

95:                                               ; preds = %93, %91
  %96 = phi i32 [ %92, %91 ], [ %94, %93 ]
  %97 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %61, i32 noundef 16, ptr noundef nonnull @.str.2, ptr noundef %69, i32 noundef %96) #19
  br label %98

98:                                               ; preds = %95, %86
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.37, ptr noundef %61, ptr noundef nonnull @.str.38, i32 noundef %58, i32 noundef 1) #20
  br label %99

99:                                               ; preds = %98, %57, %57, %45
  %100 = phi i32 [ %58, %57 ], [ %58, %57 ], [ %58, %98 ], [ 0, %45 ]
  %101 = or i32 %100, %28
  %102 = add i32 %31, 1
  %103 = icmp slt i32 %102, 13
  br i1 %103, label %27, label %104

104:                                              ; preds = %99, %42
  %105 = phi i32 [ %28, %42 ], [ %101, %99 ]
  %106 = or i32 %105, %10
  %107 = getelementptr %struct.rsnd_dai, ptr %12, i32 %11, i32 2
  %108 = getelementptr %struct.rsnd_dai, ptr %12, i32 %11, i32 2, i32 4
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.rsnd_dai, ptr %109, i32 0, i32 3
  %111 = load ptr, ptr %110, align 4
  %112 = load ptr, ptr %111, align 4
  %113 = getelementptr inbounds %struct.platform_device, ptr %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.rsnd_dai, ptr %109, i32 0, i32 1
  %115 = icmp eq ptr %114, %107
  %116 = zext i1 %115 to i32
  %117 = getelementptr [2 x [13 x i32]], ptr @rsnd_mod_sequence, i32 0, i32 %116
  %118 = icmp eq ptr %117, null
  br label %119

119:                                              ; preds = %191, %104
  %120 = phi i32 [ 0, %104 ], [ %193, %191 ]
  %121 = phi i32 [ 0, %104 ], [ %194, %191 ]
  br label %122

122:                                              ; preds = %134, %119
  %123 = phi i32 [ %135, %134 ], [ %121, %119 ]
  br i1 %118, label %127, label %124

124:                                              ; preds = %122
  %125 = getelementptr i32, ptr %117, i32 %123
  %126 = load i32, ptr %125, align 4
  br label %127

127:                                              ; preds = %124, %122
  %128 = phi i32 [ %126, %124 ], [ %123, %122 ]
  %129 = icmp ult i32 %128, 13
  br i1 %129, label %130, label %134

130:                                              ; preds = %127
  %131 = getelementptr %struct.rsnd_dai, ptr %12, i32 %11, i32 2, i32 2, i32 %128
  %132 = load ptr, ptr %131, align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %130, %127
  %135 = add i32 %123, 1
  %136 = icmp eq i32 %135, 13
  br i1 %136, label %196, label %122

137:                                              ; preds = %130
  %138 = getelementptr i32, ptr %117, i32 %123
  %139 = load i32, ptr %138, align 4
  %140 = getelementptr inbounds %struct.rsnd_mod, ptr %132, i32 0, i32 2
  %141 = load ptr, ptr %140, align 4
  %142 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %141, i32 0, i32 16
  %143 = load ptr, ptr %142, align 4
  %144 = tail call ptr %143(ptr noundef nonnull %132, ptr noundef %107, i32 noundef %139) #19
  %145 = load ptr, ptr %140, align 4
  %146 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %145, i32 0, i32 3
  %147 = load ptr, ptr %146, align 4
  %148 = icmp eq ptr %147, null
  br i1 %148, label %191, label %149

149:                                              ; preds = %137
  %150 = tail call i32 %147(ptr noundef nonnull %132, ptr noundef %107, ptr noundef %4) #19
  switch i32 %150, label %151 [
    i32 -517, label %191
    i32 0, label %191
  ]

151:                                              ; preds = %149
  %152 = load i32, ptr @rsnd_mod_name.num, align 4
  %153 = getelementptr [5 x [16 x i8]], ptr @rsnd_mod_name.names, i32 0, i32 %152
  %154 = add i32 %152, 1
  %155 = icmp sgt i32 %154, 4
  %156 = select i1 %155, i32 0, i32 %154
  store i32 %156, ptr @rsnd_mod_name.num, align 4
  %157 = load ptr, ptr %140, align 4
  %158 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %157, i32 0, i32 18
  %159 = load ptr, ptr %158, align 4
  %160 = icmp eq ptr %159, null
  %161 = load ptr, ptr %157, align 4
  %162 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %157, i32 0, i32 17
  %163 = load ptr, ptr %162, align 4
  %164 = icmp eq ptr %163, null
  br i1 %160, label %182, label %165

165:                                              ; preds = %151
  br i1 %164, label %166, label %168

166:                                              ; preds = %165
  %167 = load i32, ptr %132, align 4
  br label %174

168:                                              ; preds = %165
  %169 = tail call i32 %163(ptr noundef nonnull %132) #19
  %170 = load ptr, ptr %140, align 4
  %171 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %170, i32 0, i32 18
  %172 = load ptr, ptr %171, align 4
  %173 = icmp eq ptr %172, null
  br i1 %173, label %178, label %174

174:                                              ; preds = %168, %166
  %175 = phi i32 [ %167, %166 ], [ %169, %168 ]
  %176 = phi ptr [ %159, %166 ], [ %172, %168 ]
  %177 = tail call i32 %176(ptr noundef nonnull %132) #19
  br label %178

178:                                              ; preds = %174, %168
  %179 = phi i32 [ %175, %174 ], [ %169, %168 ]
  %180 = phi i32 [ %177, %174 ], [ 0, %168 ]
  %181 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %153, i32 noundef 16, ptr noundef nonnull @.str.1, ptr noundef %161, i32 noundef %179, i32 noundef %180) #19
  br label %190

182:                                              ; preds = %151
  br i1 %164, label %185, label %183

183:                                              ; preds = %182
  %184 = tail call i32 %163(ptr noundef nonnull %132) #19
  br label %187

185:                                              ; preds = %182
  %186 = load i32, ptr %132, align 4
  br label %187

187:                                              ; preds = %185, %183
  %188 = phi i32 [ %184, %183 ], [ %186, %185 ]
  %189 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %153, i32 noundef 16, ptr noundef nonnull @.str.2, ptr noundef %161, i32 noundef %188) #19
  br label %190

190:                                              ; preds = %187, %178
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %113, ptr noundef nonnull @.str.37, ptr noundef %153, ptr noundef nonnull @.str.38, i32 noundef %150, i32 noundef 1) #20
  br label %191

191:                                              ; preds = %190, %149, %149, %137
  %192 = phi i32 [ %150, %149 ], [ %150, %149 ], [ %150, %190 ], [ 0, %137 ]
  %193 = or i32 %192, %120
  %194 = add i32 %123, 1
  %195 = icmp slt i32 %194, 13
  br i1 %195, label %119, label %196

196:                                              ; preds = %191, %134
  %197 = phi i32 [ %120, %134 ], [ %193, %191 ]
  %198 = or i32 %106, %197
  %199 = add nuw nsw i32 %11, 1
  %200 = load i32, ptr %6, align 4
  %201 = icmp slt i32 %199, %200
  br i1 %201, label %9, label %202

202:                                              ; preds = %196, %9, %1
  %203 = phi i32 [ 0, %1 ], [ %10, %9 ], [ %198, %196 ]
  tail call void @rsnd_ssi_remove(ptr noundef %4) #19
  tail call void @rsnd_ssiu_remove(ptr noundef %4) #19
  tail call void @rsnd_src_remove(ptr noundef %4) #19
  tail call void @rsnd_ctu_remove(ptr noundef %4) #19
  tail call void @rsnd_mix_remove(ptr noundef %4) #19
  tail call void @rsnd_dvc_remove(ptr noundef %4) #19
  tail call void @rsnd_cmd_remove(ptr noundef %4) #19
  tail call void @rsnd_adg_remove(ptr noundef %4) #19
  ret i32 %203
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_gen_probe(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_dma_probe(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_ssi_probe(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_ssiu_probe(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_src_probe(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_ctu_probe(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_mix_probe(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_dvc_probe(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_cmd_probe(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_adg_probe(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rsnd_dai_probe(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr @of_get_child_by_name(ptr noundef %5, ptr noundef nonnull @.str.39) #19
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void @of_node_put(ptr noundef nonnull %6) #19
  br label %14

9:                                                ; preds = %1
  %10 = tail call ptr @of_graph_get_next_endpoint(ptr noundef %5, ptr noundef null) #19
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  tail call void @of_node_put(ptr noundef nonnull %10) #19
  %13 = tail call i32 @of_graph_get_endpoint_count(ptr noundef %5) #19
  br label %23

14:                                               ; preds = %9, %8
  %15 = tail call ptr @of_get_next_child(ptr noundef %6, ptr noundef null) #19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %111, label %17

17:                                               ; preds = %17, %14
  %18 = phi i32 [ %20, %17 ], [ 0, %14 ]
  %19 = phi ptr [ %21, %17 ], [ %15, %14 ]
  %20 = add i32 %18, 1
  %21 = tail call ptr @of_get_next_child(ptr noundef %6, ptr noundef nonnull %19) #19
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %17

23:                                               ; preds = %17, %12
  %24 = phi i1 [ false, %12 ], [ true, %17 ]
  %25 = phi ptr [ %5, %12 ], [ %6, %17 ]
  %26 = phi i32 [ %13, %12 ], [ %20, %17 ]
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %111, label %28

28:                                               ; preds = %23
  %29 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %26, i32 168) #19
  %30 = extractvalue { i32, i1 } %29, 1
  br i1 %30, label %34, label %31, !prof !8

31:                                               ; preds = %28
  %32 = extractvalue { i32, i1 } %29, 0
  %33 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %32, i32 noundef 3520) #19
  br label %34

34:                                               ; preds = %31, %28
  %35 = phi ptr [ %33, %31 ], [ null, %28 ]
  %36 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %26, i32 248) #19
  %37 = extractvalue { i32, i1 } %36, 1
  br i1 %37, label %111, label %38, !prof !8

38:                                               ; preds = %34
  %39 = extractvalue { i32, i1 } %36, 0
  %40 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %39, i32 noundef 3520) #19
  %41 = icmp ne ptr %35, null
  %42 = icmp ne ptr %40, null
  %43 = select i1 %41, i1 %42, i1 false
  br i1 %43, label %44, label %111

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 22
  store i32 %26, ptr %45, align 4
  %46 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 20
  store ptr %35, ptr %46, align 4
  %47 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 21
  store ptr %40, ptr %47, align 4
  br i1 %24, label %75, label %48

48:                                               ; preds = %44
  %49 = tail call ptr @of_graph_get_next_endpoint(ptr noundef %25, ptr noundef null) #19
  %50 = icmp eq ptr %49, null
  br i1 %50, label %111, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 2
  br label %53

53:                                               ; preds = %71, %51
  %54 = phi i32 [ 0, %51 ], [ %72, %71 ]
  %55 = phi ptr [ %49, %51 ], [ %73, %71 ]
  tail call fastcc void @__rsnd_dai_probe(ptr noundef %0, ptr noundef nonnull %55, i32 noundef %54)
  %56 = load i32, ptr %52, align 4
  %57 = and i32 %56, 15
  %58 = icmp eq i32 %57, 3
  br i1 %58, label %59, label %71

59:                                               ; preds = %53
  %60 = icmp slt i32 %54, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %59
  %62 = load i32, ptr %45, align 4
  %63 = icmp sgt i32 %62, %54
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load ptr, ptr %47, align 4
  %66 = getelementptr %struct.rsnd_dai, ptr %65, i32 %54
  br label %67

67:                                               ; preds = %64, %61, %59
  %68 = phi ptr [ %66, %64 ], [ null, %61 ], [ null, %59 ]
  %69 = getelementptr inbounds %struct.rsnd_dai, ptr %68, i32 0, i32 1
  tail call fastcc void @rsnd_parse_connect_graph(ptr noundef %0, ptr noundef %69, ptr noundef nonnull %55)
  %70 = getelementptr inbounds %struct.rsnd_dai, ptr %68, i32 0, i32 2
  tail call fastcc void @rsnd_parse_connect_graph(ptr noundef %0, ptr noundef %70, ptr noundef nonnull %55)
  br label %71

71:                                               ; preds = %67, %53
  %72 = add i32 %54, 1
  %73 = tail call ptr @of_graph_get_next_endpoint(ptr noundef %25, ptr noundef nonnull %55) #19
  %74 = icmp eq ptr %73, null
  br i1 %74, label %111, label %53

75:                                               ; preds = %44
  %76 = tail call ptr @of_get_next_child(ptr noundef %25, ptr noundef null) #19
  %77 = icmp eq ptr %76, null
  br i1 %77, label %111, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 2
  br label %80

80:                                               ; preds = %107, %78
  %81 = phi i32 [ 0, %78 ], [ %108, %107 ]
  %82 = phi ptr [ %76, %78 ], [ %109, %107 ]
  tail call fastcc void @__rsnd_dai_probe(ptr noundef %0, ptr noundef nonnull %82, i32 noundef %81)
  %83 = load i32, ptr %79, align 4
  %84 = and i32 %83, 15
  %85 = icmp eq i32 %84, 3
  br i1 %85, label %86, label %107

86:                                               ; preds = %80
  %87 = icmp slt i32 %81, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %86
  %89 = load i32, ptr %45, align 4
  %90 = icmp sgt i32 %89, %81
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load ptr, ptr %47, align 4
  %93 = getelementptr %struct.rsnd_dai, ptr %92, i32 %81
  br label %94

94:                                               ; preds = %91, %88, %86
  %95 = phi ptr [ %93, %91 ], [ null, %88 ], [ null, %86 ]
  %96 = getelementptr %struct.rsnd_dai, ptr %95, i32 0, i32 1, i32 2, i32 11
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %101, label %99

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.rsnd_dai, ptr %95, i32 0, i32 1
  tail call fastcc void @rsnd_parse_tdm_split_mode(ptr noundef %0, ptr noundef %100, ptr noundef nonnull %82) #19
  br label %101

101:                                              ; preds = %99, %94
  %102 = getelementptr %struct.rsnd_dai, ptr %95, i32 0, i32 2, i32 2, i32 11
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %107, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.rsnd_dai, ptr %95, i32 0, i32 2
  tail call fastcc void @rsnd_parse_tdm_split_mode(ptr noundef %0, ptr noundef %106, ptr noundef nonnull %82) #19
  br label %107

107:                                              ; preds = %105, %101, %80
  %108 = add i32 %81, 1
  %109 = tail call ptr @of_get_next_child(ptr noundef %25, ptr noundef nonnull %82) #19
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %80

111:                                              ; preds = %107, %75, %71, %48, %38, %34, %23, %14
  %112 = phi i32 [ -22, %23 ], [ -12, %38 ], [ -22, %14 ], [ -12, %34 ], [ 0, %75 ], [ 0, %48 ], [ 0, %107 ], [ 0, %71 ]
  ret i32 %112
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #16

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rsnd_rdai_continuance_probe(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rsnd_dai, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.rsnd_dai, ptr %4, i32 0, i32 1
  %10 = icmp eq ptr %9, %1
  %11 = zext i1 %10 to i32
  %12 = getelementptr [2 x [13 x i32]], ptr @rsnd_mod_sequence, i32 0, i32 %11
  %13 = icmp eq ptr %12, null
  br label %14

14:                                               ; preds = %86, %2
  %15 = phi i32 [ 0, %2 ], [ %88, %86 ]
  %16 = phi i32 [ 0, %2 ], [ %89, %86 ]
  br label %17

17:                                               ; preds = %29, %14
  %18 = phi i32 [ %30, %29 ], [ %16, %14 ]
  br i1 %13, label %22, label %19

19:                                               ; preds = %17
  %20 = getelementptr i32, ptr %12, i32 %18
  %21 = load i32, ptr %20, align 4
  br label %22

22:                                               ; preds = %19, %17
  %23 = phi i32 [ %21, %19 ], [ %18, %17 ]
  %24 = icmp ult i32 %23, 13
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = getelementptr %struct.rsnd_dai_stream, ptr %1, i32 0, i32 2, i32 %23
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %25, %22
  %30 = add i32 %18, 1
  %31 = icmp eq i32 %30, 13
  br i1 %31, label %91, label %17

32:                                               ; preds = %25
  %33 = getelementptr i32, ptr %12, i32 %18
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.rsnd_mod, ptr %27, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %36, i32 0, i32 16
  %38 = load ptr, ptr %37, align 4
  %39 = tail call ptr %38(ptr noundef nonnull %27, ptr noundef %1, i32 noundef %34) #19
  %40 = load ptr, ptr %35, align 4
  %41 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %40, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %86, label %44

44:                                               ; preds = %32
  %45 = tail call i32 %42(ptr noundef nonnull %27, ptr noundef %1, ptr noundef %0) #19
  switch i32 %45, label %46 [
    i32 -517, label %86
    i32 0, label %86
  ]

46:                                               ; preds = %44
  %47 = load i32, ptr @rsnd_mod_name.num, align 4
  %48 = getelementptr [5 x [16 x i8]], ptr @rsnd_mod_name.names, i32 0, i32 %47
  %49 = add i32 %47, 1
  %50 = icmp sgt i32 %49, 4
  %51 = select i1 %50, i32 0, i32 %49
  store i32 %51, ptr @rsnd_mod_name.num, align 4
  %52 = load ptr, ptr %35, align 4
  %53 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %52, i32 0, i32 18
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  %56 = load ptr, ptr %52, align 4
  %57 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %52, i32 0, i32 17
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %55, label %77, label %60

60:                                               ; preds = %46
  br i1 %59, label %61, label %63

61:                                               ; preds = %60
  %62 = load i32, ptr %27, align 4
  br label %69

63:                                               ; preds = %60
  %64 = tail call i32 %58(ptr noundef nonnull %27) #19
  %65 = load ptr, ptr %35, align 4
  %66 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %65, i32 0, i32 18
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %73, label %69

69:                                               ; preds = %63, %61
  %70 = phi i32 [ %62, %61 ], [ %64, %63 ]
  %71 = phi ptr [ %54, %61 ], [ %67, %63 ]
  %72 = tail call i32 %71(ptr noundef nonnull %27) #19
  br label %73

73:                                               ; preds = %69, %63
  %74 = phi i32 [ %70, %69 ], [ %64, %63 ]
  %75 = phi i32 [ %72, %69 ], [ 0, %63 ]
  %76 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %48, i32 noundef 16, ptr noundef nonnull @.str.1, ptr noundef %56, i32 noundef %74, i32 noundef %75) #19
  br label %85

77:                                               ; preds = %46
  br i1 %59, label %80, label %78

78:                                               ; preds = %77
  %79 = tail call i32 %58(ptr noundef nonnull %27) #19
  br label %82

80:                                               ; preds = %77
  %81 = load i32, ptr %27, align 4
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i32 [ %79, %78 ], [ %81, %80 ]
  %84 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %48, i32 noundef 16, ptr noundef nonnull @.str.2, ptr noundef %56, i32 noundef %83) #19
  br label %85

85:                                               ; preds = %82, %73
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.37, ptr noundef %48, ptr noundef nonnull @.str.65, i32 noundef %45, i32 noundef 1) #20
  br label %86

86:                                               ; preds = %85, %44, %44, %32
  %87 = phi i32 [ %45, %44 ], [ %45, %44 ], [ %45, %85 ], [ 0, %32 ]
  %88 = or i32 %87, %15
  %89 = add i32 %18, 1
  %90 = icmp slt i32 %89, 13
  br i1 %90, label %14, label %91

91:                                               ; preds = %86, %29
  %92 = phi i32 [ %15, %29 ], [ %88, %86 ]
  %93 = icmp eq i32 %92, -11
  br i1 %93, label %94, label %376

94:                                               ; preds = %91
  %95 = getelementptr %struct.rsnd_dai_stream, ptr %1, i32 0, i32 2, i32 11
  %96 = load ptr, ptr %95, align 4
  %97 = load ptr, ptr %3, align 4
  %98 = getelementptr inbounds %struct.rsnd_dai, ptr %97, i32 0, i32 3
  %99 = load ptr, ptr %98, align 4
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.platform_device, ptr %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.rsnd_dai, ptr %97, i32 0, i32 1
  %103 = icmp eq ptr %102, %1
  %104 = zext i1 %103 to i32
  %105 = getelementptr [2 x [13 x i32]], ptr @rsnd_mod_sequence, i32 0, i32 %104
  %106 = icmp eq ptr %105, null
  br label %107

107:                                              ; preds = %122, %94
  %108 = phi i32 [ 0, %94 ], [ %123, %122 ]
  br i1 %106, label %112, label %109

109:                                              ; preds = %107
  %110 = getelementptr i32, ptr %105, i32 %108
  %111 = load i32, ptr %110, align 4
  br label %112

112:                                              ; preds = %109, %107
  %113 = phi i32 [ %111, %109 ], [ %108, %107 ]
  %114 = icmp ult i32 %113, 13
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = getelementptr %struct.rsnd_dai_stream, ptr %1, i32 0, i32 2, i32 %113
  %117 = load ptr, ptr %116, align 4
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %124

119:                                              ; preds = %115, %112
  %120 = add i32 %108, 1
  %121 = icmp eq i32 %120, 13
  br i1 %121, label %181, label %122

122:                                              ; preds = %178, %119
  %123 = phi i32 [ %120, %119 ], [ %179, %178 ]
  br label %107

124:                                              ; preds = %115
  %125 = getelementptr i32, ptr %105, i32 %108
  %126 = load i32, ptr %125, align 4
  %127 = getelementptr inbounds %struct.rsnd_mod, ptr %117, i32 0, i32 2
  %128 = load ptr, ptr %127, align 4
  %129 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %128, i32 0, i32 16
  %130 = load ptr, ptr %129, align 4
  %131 = tail call ptr %130(ptr noundef nonnull %117, ptr noundef %1, i32 noundef %126) #19
  %132 = load ptr, ptr %127, align 4
  %133 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %132, i32 0, i32 3
  %134 = load ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %178, label %136

136:                                              ; preds = %124
  %137 = tail call i32 %134(ptr noundef nonnull %117, ptr noundef %1, ptr noundef %0) #19
  switch i32 %137, label %138 [
    i32 -517, label %178
    i32 0, label %178
  ]

138:                                              ; preds = %136
  %139 = load i32, ptr @rsnd_mod_name.num, align 4
  %140 = getelementptr [5 x [16 x i8]], ptr @rsnd_mod_name.names, i32 0, i32 %139
  %141 = add i32 %139, 1
  %142 = icmp sgt i32 %141, 4
  %143 = select i1 %142, i32 0, i32 %141
  store i32 %143, ptr @rsnd_mod_name.num, align 4
  %144 = load ptr, ptr %127, align 4
  %145 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %144, i32 0, i32 18
  %146 = load ptr, ptr %145, align 4
  %147 = icmp eq ptr %146, null
  %148 = load ptr, ptr %144, align 4
  %149 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %144, i32 0, i32 17
  %150 = load ptr, ptr %149, align 4
  %151 = icmp eq ptr %150, null
  br i1 %147, label %169, label %152

152:                                              ; preds = %138
  br i1 %151, label %153, label %155

153:                                              ; preds = %152
  %154 = load i32, ptr %117, align 4
  br label %161

155:                                              ; preds = %152
  %156 = tail call i32 %150(ptr noundef nonnull %117) #19
  %157 = load ptr, ptr %127, align 4
  %158 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %157, i32 0, i32 18
  %159 = load ptr, ptr %158, align 4
  %160 = icmp eq ptr %159, null
  br i1 %160, label %165, label %161

161:                                              ; preds = %155, %153
  %162 = phi i32 [ %154, %153 ], [ %156, %155 ]
  %163 = phi ptr [ %146, %153 ], [ %159, %155 ]
  %164 = tail call i32 %163(ptr noundef nonnull %117) #19
  br label %165

165:                                              ; preds = %161, %155
  %166 = phi i32 [ %162, %161 ], [ %156, %155 ]
  %167 = phi i32 [ %164, %161 ], [ 0, %155 ]
  %168 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %140, i32 noundef 16, ptr noundef nonnull @.str.1, ptr noundef %148, i32 noundef %166, i32 noundef %167) #19
  br label %177

169:                                              ; preds = %138
  br i1 %151, label %172, label %170

170:                                              ; preds = %169
  %171 = tail call i32 %150(ptr noundef nonnull %117) #19
  br label %174

172:                                              ; preds = %169
  %173 = load i32, ptr %117, align 4
  br label %174

174:                                              ; preds = %172, %170
  %175 = phi i32 [ %171, %170 ], [ %173, %172 ]
  %176 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %140, i32 noundef 16, ptr noundef nonnull @.str.2, ptr noundef %148, i32 noundef %175) #19
  br label %177

177:                                              ; preds = %174, %165
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %101, ptr noundef nonnull @.str.37, ptr noundef %140, ptr noundef nonnull @.str.38, i32 noundef %137, i32 noundef 1) #20
  br label %178

178:                                              ; preds = %177, %136, %136, %124
  %179 = add i32 %108, 1
  %180 = icmp slt i32 %179, 13
  br i1 %180, label %122, label %181

181:                                              ; preds = %178, %119
  br label %182

182:                                              ; preds = %192, %181
  %183 = phi i32 [ 0, %181 ], [ %193, %192 ]
  %184 = icmp ult i32 %183, 13
  br i1 %184, label %185, label %189

185:                                              ; preds = %182
  %186 = getelementptr %struct.rsnd_dai_stream, ptr %1, i32 0, i32 2, i32 %183
  %187 = load ptr, ptr %186, align 4
  %188 = icmp eq ptr %187, null
  br i1 %188, label %189, label %194

189:                                              ; preds = %185, %182
  %190 = add i32 %183, 1
  %191 = icmp eq i32 %190, 13
  br i1 %191, label %197, label %192

192:                                              ; preds = %194, %189
  %193 = phi i32 [ %190, %189 ], [ %195, %194 ]
  br label %182

194:                                              ; preds = %185
  store ptr null, ptr %186, align 4
  %195 = add i32 %183, 1
  %196 = icmp slt i32 %195, 13
  br i1 %196, label %192, label %197

197:                                              ; preds = %194, %189
  %198 = icmp eq ptr %96, null
  br i1 %198, label %203, label %199

199:                                              ; preds = %197
  %200 = load ptr, ptr %95, align 4
  %201 = icmp eq ptr %200, null
  br i1 %201, label %202, label %203

202:                                              ; preds = %199
  store ptr %96, ptr %95, align 4
  br label %203

203:                                              ; preds = %202, %199, %197
  %204 = load ptr, ptr %3, align 4
  %205 = getelementptr inbounds %struct.rsnd_dai, ptr %204, i32 0, i32 3
  %206 = load ptr, ptr %205, align 4
  %207 = load ptr, ptr %206, align 4
  %208 = getelementptr inbounds %struct.platform_device, ptr %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.rsnd_dai, ptr %204, i32 0, i32 1
  %210 = icmp eq ptr %209, %1
  %211 = zext i1 %210 to i32
  %212 = getelementptr [2 x [13 x i32]], ptr @rsnd_mod_sequence, i32 0, i32 %211
  %213 = icmp eq ptr %212, null
  br label %214

214:                                              ; preds = %229, %203
  %215 = phi i32 [ 0, %203 ], [ %230, %229 ]
  br i1 %213, label %219, label %216

216:                                              ; preds = %214
  %217 = getelementptr i32, ptr %212, i32 %215
  %218 = load i32, ptr %217, align 4
  br label %219

219:                                              ; preds = %216, %214
  %220 = phi i32 [ %218, %216 ], [ %215, %214 ]
  %221 = icmp ult i32 %220, 13
  br i1 %221, label %222, label %226

222:                                              ; preds = %219
  %223 = getelementptr %struct.rsnd_dai_stream, ptr %1, i32 0, i32 2, i32 %220
  %224 = load ptr, ptr %223, align 4
  %225 = icmp eq ptr %224, null
  br i1 %225, label %226, label %231

226:                                              ; preds = %222, %219
  %227 = add i32 %215, 1
  %228 = icmp eq i32 %227, 13
  br i1 %228, label %288, label %229

229:                                              ; preds = %285, %226
  %230 = phi i32 [ %227, %226 ], [ %286, %285 ]
  br label %214

231:                                              ; preds = %222
  %232 = getelementptr i32, ptr %212, i32 %215
  %233 = load i32, ptr %232, align 4
  %234 = getelementptr inbounds %struct.rsnd_mod, ptr %224, i32 0, i32 2
  %235 = load ptr, ptr %234, align 4
  %236 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %235, i32 0, i32 16
  %237 = load ptr, ptr %236, align 4
  %238 = tail call ptr %237(ptr noundef nonnull %224, ptr noundef %1, i32 noundef %233) #19
  %239 = load ptr, ptr %234, align 4
  %240 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %239, i32 0, i32 12
  %241 = load ptr, ptr %240, align 4
  %242 = icmp eq ptr %241, null
  br i1 %242, label %285, label %243

243:                                              ; preds = %231
  %244 = tail call i32 %241(ptr noundef nonnull %224, ptr noundef %1, ptr noundef %0) #19
  switch i32 %244, label %245 [
    i32 -517, label %285
    i32 0, label %285
  ]

245:                                              ; preds = %243
  %246 = load i32, ptr @rsnd_mod_name.num, align 4
  %247 = getelementptr [5 x [16 x i8]], ptr @rsnd_mod_name.names, i32 0, i32 %246
  %248 = add i32 %246, 1
  %249 = icmp sgt i32 %248, 4
  %250 = select i1 %249, i32 0, i32 %248
  store i32 %250, ptr @rsnd_mod_name.num, align 4
  %251 = load ptr, ptr %234, align 4
  %252 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %251, i32 0, i32 18
  %253 = load ptr, ptr %252, align 4
  %254 = icmp eq ptr %253, null
  %255 = load ptr, ptr %251, align 4
  %256 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %251, i32 0, i32 17
  %257 = load ptr, ptr %256, align 4
  %258 = icmp eq ptr %257, null
  br i1 %254, label %276, label %259

259:                                              ; preds = %245
  br i1 %258, label %260, label %262

260:                                              ; preds = %259
  %261 = load i32, ptr %224, align 4
  br label %268

262:                                              ; preds = %259
  %263 = tail call i32 %257(ptr noundef nonnull %224) #19
  %264 = load ptr, ptr %234, align 4
  %265 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %264, i32 0, i32 18
  %266 = load ptr, ptr %265, align 4
  %267 = icmp eq ptr %266, null
  br i1 %267, label %272, label %268

268:                                              ; preds = %262, %260
  %269 = phi i32 [ %261, %260 ], [ %263, %262 ]
  %270 = phi ptr [ %253, %260 ], [ %266, %262 ]
  %271 = tail call i32 %270(ptr noundef nonnull %224) #19
  br label %272

272:                                              ; preds = %268, %262
  %273 = phi i32 [ %269, %268 ], [ %263, %262 ]
  %274 = phi i32 [ %271, %268 ], [ 0, %262 ]
  %275 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %247, i32 noundef 16, ptr noundef nonnull @.str.1, ptr noundef %255, i32 noundef %273, i32 noundef %274) #19
  br label %284

276:                                              ; preds = %245
  br i1 %258, label %279, label %277

277:                                              ; preds = %276
  %278 = tail call i32 %257(ptr noundef nonnull %224) #19
  br label %281

279:                                              ; preds = %276
  %280 = load i32, ptr %224, align 4
  br label %281

281:                                              ; preds = %279, %277
  %282 = phi i32 [ %278, %277 ], [ %280, %279 ]
  %283 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %247, i32 noundef 16, ptr noundef nonnull @.str.2, ptr noundef %255, i32 noundef %282) #19
  br label %284

284:                                              ; preds = %281, %272
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %208, ptr noundef nonnull @.str.37, ptr noundef %247, ptr noundef nonnull @.str.66, i32 noundef %244, i32 noundef 1) #20
  br label %285

285:                                              ; preds = %284, %243, %243, %231
  %286 = add i32 %215, 1
  %287 = icmp slt i32 %286, 13
  br i1 %287, label %229, label %288

288:                                              ; preds = %285, %226
  %289 = load ptr, ptr %3, align 4
  %290 = getelementptr inbounds %struct.rsnd_dai, ptr %289, i32 0, i32 3
  %291 = load ptr, ptr %290, align 4
  %292 = load ptr, ptr %291, align 4
  %293 = getelementptr inbounds %struct.platform_device, ptr %292, i32 0, i32 3
  %294 = getelementptr inbounds %struct.rsnd_dai, ptr %289, i32 0, i32 1
  %295 = icmp eq ptr %294, %1
  %296 = zext i1 %295 to i32
  %297 = getelementptr [2 x [13 x i32]], ptr @rsnd_mod_sequence, i32 0, i32 %296
  %298 = icmp eq ptr %297, null
  br label %299

299:                                              ; preds = %371, %288
  %300 = phi i32 [ 0, %288 ], [ %373, %371 ]
  %301 = phi i32 [ 0, %288 ], [ %374, %371 ]
  br label %302

302:                                              ; preds = %314, %299
  %303 = phi i32 [ %315, %314 ], [ %301, %299 ]
  br i1 %298, label %307, label %304

304:                                              ; preds = %302
  %305 = getelementptr i32, ptr %297, i32 %303
  %306 = load i32, ptr %305, align 4
  br label %307

307:                                              ; preds = %304, %302
  %308 = phi i32 [ %306, %304 ], [ %303, %302 ]
  %309 = icmp ult i32 %308, 13
  br i1 %309, label %310, label %314

310:                                              ; preds = %307
  %311 = getelementptr %struct.rsnd_dai_stream, ptr %1, i32 0, i32 2, i32 %308
  %312 = load ptr, ptr %311, align 4
  %313 = icmp eq ptr %312, null
  br i1 %313, label %314, label %317

314:                                              ; preds = %310, %307
  %315 = add i32 %303, 1
  %316 = icmp eq i32 %315, 13
  br i1 %316, label %376, label %302

317:                                              ; preds = %310
  %318 = getelementptr i32, ptr %297, i32 %303
  %319 = load i32, ptr %318, align 4
  %320 = getelementptr inbounds %struct.rsnd_mod, ptr %312, i32 0, i32 2
  %321 = load ptr, ptr %320, align 4
  %322 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %321, i32 0, i32 16
  %323 = load ptr, ptr %322, align 4
  %324 = tail call ptr %323(ptr noundef nonnull %312, ptr noundef %1, i32 noundef %319) #19
  %325 = load ptr, ptr %320, align 4
  %326 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %325, i32 0, i32 2
  %327 = load ptr, ptr %326, align 4
  %328 = icmp eq ptr %327, null
  br i1 %328, label %371, label %329

329:                                              ; preds = %317
  %330 = tail call i32 %327(ptr noundef nonnull %312, ptr noundef %1, ptr noundef %0) #19
  switch i32 %330, label %331 [
    i32 -517, label %371
    i32 0, label %371
  ]

331:                                              ; preds = %329
  %332 = load i32, ptr @rsnd_mod_name.num, align 4
  %333 = getelementptr [5 x [16 x i8]], ptr @rsnd_mod_name.names, i32 0, i32 %332
  %334 = add i32 %332, 1
  %335 = icmp sgt i32 %334, 4
  %336 = select i1 %335, i32 0, i32 %334
  store i32 %336, ptr @rsnd_mod_name.num, align 4
  %337 = load ptr, ptr %320, align 4
  %338 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %337, i32 0, i32 18
  %339 = load ptr, ptr %338, align 4
  %340 = icmp eq ptr %339, null
  %341 = load ptr, ptr %337, align 4
  %342 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %337, i32 0, i32 17
  %343 = load ptr, ptr %342, align 4
  %344 = icmp eq ptr %343, null
  br i1 %340, label %362, label %345

345:                                              ; preds = %331
  br i1 %344, label %346, label %348

346:                                              ; preds = %345
  %347 = load i32, ptr %312, align 4
  br label %354

348:                                              ; preds = %345
  %349 = tail call i32 %343(ptr noundef nonnull %312) #19
  %350 = load ptr, ptr %320, align 4
  %351 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %350, i32 0, i32 18
  %352 = load ptr, ptr %351, align 4
  %353 = icmp eq ptr %352, null
  br i1 %353, label %358, label %354

354:                                              ; preds = %348, %346
  %355 = phi i32 [ %347, %346 ], [ %349, %348 ]
  %356 = phi ptr [ %339, %346 ], [ %352, %348 ]
  %357 = tail call i32 %356(ptr noundef nonnull %312) #19
  br label %358

358:                                              ; preds = %354, %348
  %359 = phi i32 [ %355, %354 ], [ %349, %348 ]
  %360 = phi i32 [ %357, %354 ], [ 0, %348 ]
  %361 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %333, i32 noundef 16, ptr noundef nonnull @.str.1, ptr noundef %341, i32 noundef %359, i32 noundef %360) #19
  br label %370

362:                                              ; preds = %331
  br i1 %344, label %365, label %363

363:                                              ; preds = %362
  %364 = tail call i32 %343(ptr noundef nonnull %312) #19
  br label %367

365:                                              ; preds = %362
  %366 = load i32, ptr %312, align 4
  br label %367

367:                                              ; preds = %365, %363
  %368 = phi i32 [ %364, %363 ], [ %366, %365 ]
  %369 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %333, i32 noundef 16, ptr noundef nonnull @.str.2, ptr noundef %341, i32 noundef %368) #19
  br label %370

370:                                              ; preds = %367, %358
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %293, ptr noundef nonnull @.str.37, ptr noundef %333, ptr noundef nonnull @.str.65, i32 noundef %330, i32 noundef 1) #20
  br label %371

371:                                              ; preds = %370, %329, %329, %317
  %372 = phi i32 [ %330, %329 ], [ %330, %329 ], [ %330, %370 ], [ 0, %317 ]
  %373 = or i32 %372, %300
  %374 = add i32 %303, 1
  %375 = icmp slt i32 %374, 13
  br i1 %375, label %299, label %376

376:                                              ; preds = %371, %314, %91
  %377 = phi i32 [ %92, %91 ], [ %300, %314 ], [ %373, %371 ]
  ret i32 %377
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_adg_remove(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_graph_get_endpoint_count(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__rsnd_dai_probe(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca [16 x i8], align 1
  %5 = alloca [16 x i8], align 1
  %6 = alloca [16 x i8], align 1
  %7 = alloca [16 x i8], align 1
  %8 = alloca %struct.of_phandle_args, align 4
  %9 = alloca %struct.of_phandle_args, align 4
  %10 = icmp slt i32 %2, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 22
  %13 = load i32, ptr %12, align 4
  %14 = icmp sgt i32 %13, %2
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 21
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr %struct.rsnd_dai, ptr %17, i32 %2
  %19 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 20
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr %struct.snd_soc_dai_driver, ptr %20, i32 %2
  br label %22

22:                                               ; preds = %15, %11, %3
  %23 = phi ptr [ %18, %15 ], [ null, %3 ], [ null, %11 ]
  %24 = phi ptr [ %21, %15 ], [ null, %3 ], [ null, %11 ]
  %25 = getelementptr inbounds %struct.rsnd_dai, ptr %23, i32 0, i32 1
  %26 = getelementptr inbounds %struct.rsnd_dai, ptr %23, i32 0, i32 2
  %27 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %23, i32 noundef 16, ptr noundef nonnull @.str.40, i32 noundef %2)
  %28 = getelementptr inbounds %struct.rsnd_dai, ptr %23, i32 0, i32 3
  store ptr %0, ptr %28, align 4
  store ptr %23, ptr %24, align 8
  %29 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %24, i32 0, i32 8
  store ptr @rsnd_soc_dai_ops, ptr %29, align 8
  %30 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %24, i32 0, i32 7
  store ptr @rsnd_pcm_new, ptr %30, align 4
  %31 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %25, i32 noundef 16, ptr noundef nonnull @.str.41, i32 noundef %2)
  %32 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %24, i32 0, i32 11
  %33 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %24, i32 0, i32 11, i32 2
  store i32 8190, ptr %33, align 8
  %34 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %24, i32 0, i32 11, i32 1
  store i64 69, ptr %34, align 8
  %35 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %24, i32 0, i32 11, i32 5
  store i32 2, ptr %35, align 4
  %36 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %24, i32 0, i32 11, i32 6
  store i32 8, ptr %36, align 8
  store ptr %25, ptr %32, align 8
  %37 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %26, i32 noundef 16, ptr noundef nonnull @.str.42, i32 noundef %2)
  %38 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %24, i32 0, i32 10
  %39 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %24, i32 0, i32 10, i32 2
  store i32 8190, ptr %39, align 8
  %40 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %24, i32 0, i32 10, i32 1
  store i64 69, ptr %40, align 8
  %41 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %24, i32 0, i32 10, i32 5
  store i32 2, ptr %41, align 4
  %42 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %24, i32 0, i32 10, i32 6
  store i32 8, ptr %42, align 8
  store ptr %26, ptr %38, align 8
  %43 = getelementptr inbounds %struct.rsnd_dai, ptr %23, i32 0, i32 1, i32 4
  store ptr %23, ptr %43, align 4
  %44 = getelementptr inbounds %struct.rsnd_dai, ptr %23, i32 0, i32 2, i32 4
  store ptr %23, ptr %44, align 4
  %45 = getelementptr inbounds %struct.rsnd_dai, ptr %23, i32 0, i32 5
  store i32 2, ptr %45, align 4
  %46 = getelementptr inbounds %struct.rsnd_dai, ptr %23, i32 0, i32 6
  store i32 1, ptr %46, align 4
  %47 = getelementptr inbounds %struct.rsnd_dai, ptr %23, i32 0, i32 7
  store i32 32, ptr %47, align 4
  br label %48

48:                                               ; preds = %284, %22
  %49 = phi i32 [ 0, %22 ], [ %285, %284 ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %9) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %9, i8 0, i32 72, i1 false) #19, !annotation !9
  %50 = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.43, ptr noundef null, i32 noundef 0, i32 noundef %49, ptr noundef nonnull %9) #19
  %51 = icmp eq i32 %50, 0
  %52 = load ptr, ptr %9, align 4
  %53 = select i1 %51, ptr %52, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %8) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %8, i8 0, i32 72, i1 false) #19, !annotation !9
  %54 = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.44, ptr noundef null, i32 noundef 0, i32 noundef %49, ptr noundef nonnull %8) #19
  %55 = icmp eq i32 %54, 0
  %56 = load ptr, ptr %8, align 4
  %57 = select i1 %55, ptr %56, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %8) #19
  %58 = icmp ne ptr %53, null
  %59 = icmp ne ptr %57, null
  %60 = select i1 %58, i1 true, i1 %59
  br i1 %60, label %61, label %286

61:                                               ; preds = %48
  call void @rsnd_parse_connect_ssi(ptr noundef %23, ptr noundef %53, ptr noundef %57) #19
  call void @rsnd_parse_connect_ssiu(ptr noundef %23, ptr noundef %53, ptr noundef %57) #19
  %62 = load ptr, ptr %28, align 4
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.platform_device, ptr %63, i32 0, i32 3, i32 25
  %65 = load ptr, ptr %64, align 8
  %66 = call ptr @of_get_child_by_name(ptr noundef %65, ptr noundef nonnull @.str.46) #19
  %67 = load ptr, ptr %28, align 4
  %68 = icmp eq ptr %66, null
  br i1 %68, label %117, label %69

69:                                               ; preds = %61
  %70 = call ptr @of_get_next_child(ptr noundef nonnull %66, ptr noundef null) #19
  %71 = icmp eq ptr %70, null
  br i1 %71, label %115, label %72

72:                                               ; preds = %111, %69
  %73 = phi i32 [ %112, %111 ], [ 0, %69 ]
  %74 = phi ptr [ %113, %111 ], [ %70, %69 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %7, i8 0, i32 16, i1 false) #19, !annotation !9
  %75 = icmp slt i32 %73, 64
  br i1 %75, label %76, label %87

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.device_node, ptr %74, i32 0, i32 2
  br label %78

78:                                               ; preds = %84, %76
  %79 = phi i32 [ %73, %76 ], [ %85, %84 ]
  %80 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %7, i32 noundef 16, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.45, i32 noundef %79) #19
  %81 = load ptr, ptr %77, align 4
  %82 = call i32 @strncmp(ptr noundef nonnull %7, ptr noundef %81, i32 noundef 16) #19
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %78
  %85 = add i32 %79, 1
  %86 = icmp eq i32 %85, 64
  br i1 %86, label %87, label %78

87:                                               ; preds = %84, %78, %72
  %88 = phi i32 [ -22, %72 ], [ -22, %84 ], [ %79, %78 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #19
  %89 = call ptr @rsnd_src_mod_get(ptr noundef %67, i32 noundef %88) #19
  %90 = icmp eq ptr %74, %53
  br i1 %90, label %91, label %100

91:                                               ; preds = %87
  %92 = icmp eq ptr %89, null
  br i1 %92, label %111, label %93

93:                                               ; preds = %91
  %94 = getelementptr inbounds %struct.rsnd_mod, ptr %89, i32 0, i32 1
  %95 = load i32, ptr %94, align 4
  %96 = getelementptr %struct.rsnd_dai, ptr %23, i32 0, i32 1, i32 2, i32 %95
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  store ptr %89, ptr %96, align 4
  br label %100

100:                                              ; preds = %99, %93, %87
  %101 = icmp ne ptr %74, %57
  %102 = icmp eq ptr %89, null
  %103 = select i1 %101, i1 true, i1 %102
  br i1 %103, label %111, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.rsnd_mod, ptr %89, i32 0, i32 1
  %106 = load i32, ptr %105, align 4
  %107 = getelementptr %struct.rsnd_dai, ptr %23, i32 0, i32 2, i32 2, i32 %106
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  store ptr %89, ptr %107, align 4
  br label %111

111:                                              ; preds = %110, %104, %100, %91
  %112 = add i32 %88, 1
  %113 = call ptr @of_get_next_child(ptr noundef nonnull %66, ptr noundef nonnull %74) #19
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %72

115:                                              ; preds = %111, %69
  call void @of_node_put(ptr noundef nonnull %66) #19
  %116 = load ptr, ptr %28, align 4
  br label %117

117:                                              ; preds = %115, %61
  %118 = phi ptr [ %67, %61 ], [ %116, %115 ]
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr inbounds %struct.platform_device, ptr %119, i32 0, i32 3, i32 25
  %121 = load ptr, ptr %120, align 8
  %122 = call ptr @of_get_child_by_name(ptr noundef %121, ptr noundef nonnull @.str.48) #19
  %123 = load ptr, ptr %28, align 4
  %124 = icmp eq ptr %122, null
  br i1 %124, label %173, label %125

125:                                              ; preds = %117
  %126 = call ptr @of_get_next_child(ptr noundef nonnull %122, ptr noundef null) #19
  %127 = icmp eq ptr %126, null
  br i1 %127, label %171, label %128

128:                                              ; preds = %167, %125
  %129 = phi i32 [ %168, %167 ], [ 0, %125 ]
  %130 = phi ptr [ %169, %167 ], [ %126, %125 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %6, i8 0, i32 16, i1 false) #19, !annotation !9
  %131 = icmp slt i32 %129, 64
  br i1 %131, label %132, label %143

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.device_node, ptr %130, i32 0, i32 2
  br label %134

134:                                              ; preds = %140, %132
  %135 = phi i32 [ %129, %132 ], [ %141, %140 ]
  %136 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %6, i32 noundef 16, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.47, i32 noundef %135) #19
  %137 = load ptr, ptr %133, align 4
  %138 = call i32 @strncmp(ptr noundef nonnull %6, ptr noundef %137, i32 noundef 16) #19
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %134
  %141 = add i32 %135, 1
  %142 = icmp eq i32 %141, 64
  br i1 %142, label %143, label %134

143:                                              ; preds = %140, %134, %128
  %144 = phi i32 [ -22, %128 ], [ -22, %140 ], [ %135, %134 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #19
  %145 = call ptr @rsnd_ctu_mod_get(ptr noundef %123, i32 noundef %144) #19
  %146 = icmp eq ptr %130, %53
  br i1 %146, label %147, label %156

147:                                              ; preds = %143
  %148 = icmp eq ptr %145, null
  br i1 %148, label %167, label %149

149:                                              ; preds = %147
  %150 = getelementptr inbounds %struct.rsnd_mod, ptr %145, i32 0, i32 1
  %151 = load i32, ptr %150, align 4
  %152 = getelementptr %struct.rsnd_dai, ptr %23, i32 0, i32 1, i32 2, i32 %151
  %153 = load ptr, ptr %152, align 4
  %154 = icmp eq ptr %153, null
  br i1 %154, label %155, label %156

155:                                              ; preds = %149
  store ptr %145, ptr %152, align 4
  br label %156

156:                                              ; preds = %155, %149, %143
  %157 = icmp ne ptr %130, %57
  %158 = icmp eq ptr %145, null
  %159 = select i1 %157, i1 true, i1 %158
  br i1 %159, label %167, label %160

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.rsnd_mod, ptr %145, i32 0, i32 1
  %162 = load i32, ptr %161, align 4
  %163 = getelementptr %struct.rsnd_dai, ptr %23, i32 0, i32 2, i32 2, i32 %162
  %164 = load ptr, ptr %163, align 4
  %165 = icmp eq ptr %164, null
  br i1 %165, label %166, label %167

166:                                              ; preds = %160
  store ptr %145, ptr %163, align 4
  br label %167

167:                                              ; preds = %166, %160, %156, %147
  %168 = add i32 %144, 1
  %169 = call ptr @of_get_next_child(ptr noundef nonnull %122, ptr noundef nonnull %130) #19
  %170 = icmp eq ptr %169, null
  br i1 %170, label %171, label %128

171:                                              ; preds = %167, %125
  call void @of_node_put(ptr noundef nonnull %122) #19
  %172 = load ptr, ptr %28, align 4
  br label %173

173:                                              ; preds = %171, %117
  %174 = phi ptr [ %123, %117 ], [ %172, %171 ]
  %175 = load ptr, ptr %174, align 4
  %176 = getelementptr inbounds %struct.platform_device, ptr %175, i32 0, i32 3, i32 25
  %177 = load ptr, ptr %176, align 8
  %178 = call ptr @of_get_child_by_name(ptr noundef %177, ptr noundef nonnull @.str.50) #19
  %179 = load ptr, ptr %28, align 4
  %180 = icmp eq ptr %178, null
  br i1 %180, label %229, label %181

181:                                              ; preds = %173
  %182 = call ptr @of_get_next_child(ptr noundef nonnull %178, ptr noundef null) #19
  %183 = icmp eq ptr %182, null
  br i1 %183, label %227, label %184

184:                                              ; preds = %223, %181
  %185 = phi i32 [ %224, %223 ], [ 0, %181 ]
  %186 = phi ptr [ %225, %223 ], [ %182, %181 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %5, i8 0, i32 16, i1 false) #19, !annotation !9
  %187 = icmp slt i32 %185, 64
  br i1 %187, label %188, label %199

188:                                              ; preds = %184
  %189 = getelementptr inbounds %struct.device_node, ptr %186, i32 0, i32 2
  br label %190

190:                                              ; preds = %196, %188
  %191 = phi i32 [ %185, %188 ], [ %197, %196 ]
  %192 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 16, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.49, i32 noundef %191) #19
  %193 = load ptr, ptr %189, align 4
  %194 = call i32 @strncmp(ptr noundef nonnull %5, ptr noundef %193, i32 noundef 16) #19
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %199, label %196

196:                                              ; preds = %190
  %197 = add i32 %191, 1
  %198 = icmp eq i32 %197, 64
  br i1 %198, label %199, label %190

199:                                              ; preds = %196, %190, %184
  %200 = phi i32 [ -22, %184 ], [ -22, %196 ], [ %191, %190 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #19
  %201 = call ptr @rsnd_mix_mod_get(ptr noundef %179, i32 noundef %200) #19
  %202 = icmp eq ptr %186, %53
  br i1 %202, label %203, label %212

203:                                              ; preds = %199
  %204 = icmp eq ptr %201, null
  br i1 %204, label %223, label %205

205:                                              ; preds = %203
  %206 = getelementptr inbounds %struct.rsnd_mod, ptr %201, i32 0, i32 1
  %207 = load i32, ptr %206, align 4
  %208 = getelementptr %struct.rsnd_dai, ptr %23, i32 0, i32 1, i32 2, i32 %207
  %209 = load ptr, ptr %208, align 4
  %210 = icmp eq ptr %209, null
  br i1 %210, label %211, label %212

211:                                              ; preds = %205
  store ptr %201, ptr %208, align 4
  br label %212

212:                                              ; preds = %211, %205, %199
  %213 = icmp ne ptr %186, %57
  %214 = icmp eq ptr %201, null
  %215 = select i1 %213, i1 true, i1 %214
  br i1 %215, label %223, label %216

216:                                              ; preds = %212
  %217 = getelementptr inbounds %struct.rsnd_mod, ptr %201, i32 0, i32 1
  %218 = load i32, ptr %217, align 4
  %219 = getelementptr %struct.rsnd_dai, ptr %23, i32 0, i32 2, i32 2, i32 %218
  %220 = load ptr, ptr %219, align 4
  %221 = icmp eq ptr %220, null
  br i1 %221, label %222, label %223

222:                                              ; preds = %216
  store ptr %201, ptr %219, align 4
  br label %223

223:                                              ; preds = %222, %216, %212, %203
  %224 = add i32 %200, 1
  %225 = call ptr @of_get_next_child(ptr noundef nonnull %178, ptr noundef nonnull %186) #19
  %226 = icmp eq ptr %225, null
  br i1 %226, label %227, label %184

227:                                              ; preds = %223, %181
  call void @of_node_put(ptr noundef nonnull %178) #19
  %228 = load ptr, ptr %28, align 4
  br label %229

229:                                              ; preds = %227, %173
  %230 = phi ptr [ %179, %173 ], [ %228, %227 ]
  %231 = load ptr, ptr %230, align 4
  %232 = getelementptr inbounds %struct.platform_device, ptr %231, i32 0, i32 3, i32 25
  %233 = load ptr, ptr %232, align 8
  %234 = call ptr @of_get_child_by_name(ptr noundef %233, ptr noundef nonnull @.str.52) #19
  %235 = load ptr, ptr %28, align 4
  %236 = icmp eq ptr %234, null
  br i1 %236, label %284, label %237

237:                                              ; preds = %229
  %238 = call ptr @of_get_next_child(ptr noundef nonnull %234, ptr noundef null) #19
  %239 = icmp eq ptr %238, null
  br i1 %239, label %283, label %240

240:                                              ; preds = %279, %237
  %241 = phi i32 [ %280, %279 ], [ 0, %237 ]
  %242 = phi ptr [ %281, %279 ], [ %238, %237 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %4, i8 0, i32 16, i1 false) #19, !annotation !9
  %243 = icmp slt i32 %241, 64
  br i1 %243, label %244, label %255

244:                                              ; preds = %240
  %245 = getelementptr inbounds %struct.device_node, ptr %242, i32 0, i32 2
  br label %246

246:                                              ; preds = %252, %244
  %247 = phi i32 [ %241, %244 ], [ %253, %252 ]
  %248 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 16, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.51, i32 noundef %247) #19
  %249 = load ptr, ptr %245, align 4
  %250 = call i32 @strncmp(ptr noundef nonnull %4, ptr noundef %249, i32 noundef 16) #19
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %255, label %252

252:                                              ; preds = %246
  %253 = add i32 %247, 1
  %254 = icmp eq i32 %253, 64
  br i1 %254, label %255, label %246

255:                                              ; preds = %252, %246, %240
  %256 = phi i32 [ -22, %240 ], [ -22, %252 ], [ %247, %246 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  %257 = call ptr @rsnd_dvc_mod_get(ptr noundef %235, i32 noundef %256) #19
  %258 = icmp eq ptr %242, %53
  br i1 %258, label %259, label %268

259:                                              ; preds = %255
  %260 = icmp eq ptr %257, null
  br i1 %260, label %279, label %261

261:                                              ; preds = %259
  %262 = getelementptr inbounds %struct.rsnd_mod, ptr %257, i32 0, i32 1
  %263 = load i32, ptr %262, align 4
  %264 = getelementptr %struct.rsnd_dai, ptr %23, i32 0, i32 1, i32 2, i32 %263
  %265 = load ptr, ptr %264, align 4
  %266 = icmp eq ptr %265, null
  br i1 %266, label %267, label %268

267:                                              ; preds = %261
  store ptr %257, ptr %264, align 4
  br label %268

268:                                              ; preds = %267, %261, %255
  %269 = icmp ne ptr %242, %57
  %270 = icmp eq ptr %257, null
  %271 = select i1 %269, i1 true, i1 %270
  br i1 %271, label %279, label %272

272:                                              ; preds = %268
  %273 = getelementptr inbounds %struct.rsnd_mod, ptr %257, i32 0, i32 1
  %274 = load i32, ptr %273, align 4
  %275 = getelementptr %struct.rsnd_dai, ptr %23, i32 0, i32 2, i32 2, i32 %274
  %276 = load ptr, ptr %275, align 4
  %277 = icmp eq ptr %276, null
  br i1 %277, label %278, label %279

278:                                              ; preds = %272
  store ptr %257, ptr %275, align 4
  br label %279

279:                                              ; preds = %278, %272, %268, %259
  %280 = add i32 %256, 1
  %281 = call ptr @of_get_next_child(ptr noundef nonnull %234, ptr noundef nonnull %242) #19
  %282 = icmp eq ptr %281, null
  br i1 %282, label %283, label %240

283:                                              ; preds = %279, %237
  call void @of_node_put(ptr noundef nonnull %234) #19
  br label %284

284:                                              ; preds = %283, %229
  call void @of_node_put(ptr noundef %53) #19
  call void @of_node_put(ptr noundef %57) #19
  %285 = add i32 %49, 1
  br label %48

286:                                              ; preds = %48
  %287 = getelementptr %struct.rsnd_dai, ptr %23, i32 0, i32 2, i32 2, i32 11
  %288 = load ptr, ptr %287, align 4
  %289 = call i32 @__rsnd_ssi_is_pin_sharing(ptr noundef %288) #19
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %296

291:                                              ; preds = %286
  %292 = getelementptr %struct.rsnd_dai, ptr %23, i32 0, i32 1, i32 2, i32 11
  %293 = load ptr, ptr %292, align 4
  %294 = call i32 @__rsnd_ssi_is_pin_sharing(ptr noundef %293) #19
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %300, label %296

296:                                              ; preds = %291, %286
  %297 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %24, i32 0, i32 12
  %298 = load i8, ptr %297, align 8
  %299 = or i8 %298, 1
  store i8 %299, ptr %297, align 8
  br label %300

300:                                              ; preds = %296, %291
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rsnd_parse_connect_graph(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr %struct.rsnd_dai_stream, ptr %1, i32 0, i32 2, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @of_graph_get_remote_port_parent(ptr noundef %2) #19
  %9 = getelementptr inbounds %struct.device_node, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = tail call ptr @strstr(ptr noundef %10, ptr noundef nonnull @.str.62)
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %1, i32 0, i32 9
  %15 = load i32, ptr %14, align 4
  %16 = or i32 %15, 1
  store i32 %16, ptr %14, align 4
  %17 = load ptr, ptr %9, align 4
  br label %18

18:                                               ; preds = %13, %7
  %19 = phi ptr [ %17, %13 ], [ %10, %7 ]
  %20 = tail call ptr @strstr(ptr noundef %19, ptr noundef nonnull @.str.63)
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %1, i32 0, i32 9
  %24 = load i32, ptr %23, align 4
  %25 = or i32 %24, 2
  store i32 %25, ptr %23, align 4
  br label %26

26:                                               ; preds = %22, %18
  tail call fastcc void @rsnd_parse_tdm_split_mode(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  tail call void @of_node_put(ptr noundef %8) #19
  br label %27

27:                                               ; preds = %26, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #17

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_pcm_new(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.rsnd_priv, ptr %6, i32 0, i32 22
  %12 = load i32, ptr %11, align 4
  %13 = icmp sgt i32 %12, %8
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.rsnd_priv, ptr %6, i32 0, i32 21
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr %struct.rsnd_dai, ptr %16, i32 %8
  br label %18

18:                                               ; preds = %14, %10, %2
  %19 = phi ptr [ %17, %14 ], [ null, %10 ], [ null, %2 ]
  %20 = getelementptr inbounds %struct.rsnd_dai, ptr %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.rsnd_dai, ptr %19, i32 0, i32 1, i32 4
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.rsnd_dai, ptr %22, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.platform_device, ptr %25, i32 0, i32 3
  %27 = icmp eq ptr %22, %19
  %28 = zext i1 %27 to i32
  %29 = getelementptr [2 x [13 x i32]], ptr @rsnd_mod_sequence, i32 0, i32 %28
  %30 = icmp eq ptr %29, null
  br label %31

31:                                               ; preds = %103, %18
  %32 = phi i32 [ 0, %18 ], [ %105, %103 ]
  %33 = phi i32 [ 0, %18 ], [ %106, %103 ]
  br label %34

34:                                               ; preds = %46, %31
  %35 = phi i32 [ %47, %46 ], [ %33, %31 ]
  br i1 %30, label %39, label %36

36:                                               ; preds = %34
  %37 = getelementptr i32, ptr %29, i32 %35
  %38 = load i32, ptr %37, align 4
  br label %39

39:                                               ; preds = %36, %34
  %40 = phi i32 [ %38, %36 ], [ %35, %34 ]
  %41 = icmp ult i32 %40, 13
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = getelementptr %struct.rsnd_dai, ptr %19, i32 0, i32 1, i32 2, i32 %40
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %42, %39
  %47 = add i32 %35, 1
  %48 = icmp eq i32 %47, 13
  br i1 %48, label %108, label %34

49:                                               ; preds = %42
  %50 = getelementptr i32, ptr %29, i32 %35
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.rsnd_mod, ptr %44, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %53, i32 0, i32 16
  %55 = load ptr, ptr %54, align 4
  %56 = tail call ptr %55(ptr noundef nonnull %44, ptr noundef %20, i32 noundef %51) #19
  %57 = load ptr, ptr %52, align 4
  %58 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %57, i32 0, i32 9
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %103, label %61

61:                                               ; preds = %49
  %62 = tail call i32 %59(ptr noundef nonnull %44, ptr noundef %20, ptr noundef %0) #19
  switch i32 %62, label %63 [
    i32 -517, label %103
    i32 0, label %103
  ]

63:                                               ; preds = %61
  %64 = load i32, ptr @rsnd_mod_name.num, align 4
  %65 = getelementptr [5 x [16 x i8]], ptr @rsnd_mod_name.names, i32 0, i32 %64
  %66 = add i32 %64, 1
  %67 = icmp sgt i32 %66, 4
  %68 = select i1 %67, i32 0, i32 %66
  store i32 %68, ptr @rsnd_mod_name.num, align 4
  %69 = load ptr, ptr %52, align 4
  %70 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %69, i32 0, i32 18
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  %73 = load ptr, ptr %69, align 4
  %74 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %69, i32 0, i32 17
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %72, label %94, label %77

77:                                               ; preds = %63
  br i1 %76, label %78, label %80

78:                                               ; preds = %77
  %79 = load i32, ptr %44, align 4
  br label %86

80:                                               ; preds = %77
  %81 = tail call i32 %75(ptr noundef nonnull %44) #19
  %82 = load ptr, ptr %52, align 4
  %83 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %82, i32 0, i32 18
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %90, label %86

86:                                               ; preds = %80, %78
  %87 = phi i32 [ %79, %78 ], [ %81, %80 ]
  %88 = phi ptr [ %71, %78 ], [ %84, %80 ]
  %89 = tail call i32 %88(ptr noundef nonnull %44) #19
  br label %90

90:                                               ; preds = %86, %80
  %91 = phi i32 [ %87, %86 ], [ %81, %80 ]
  %92 = phi i32 [ %89, %86 ], [ 0, %80 ]
  %93 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %65, i32 noundef 16, ptr noundef nonnull @.str.1, ptr noundef %73, i32 noundef %91, i32 noundef %92) #19
  br label %102

94:                                               ; preds = %63
  br i1 %76, label %97, label %95

95:                                               ; preds = %94
  %96 = tail call i32 %75(ptr noundef nonnull %44) #19
  br label %99

97:                                               ; preds = %94
  %98 = load i32, ptr %44, align 4
  br label %99

99:                                               ; preds = %97, %95
  %100 = phi i32 [ %96, %95 ], [ %98, %97 ]
  %101 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %65, i32 noundef 16, ptr noundef nonnull @.str.2, ptr noundef %73, i32 noundef %100) #19
  br label %102

102:                                              ; preds = %99, %90
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.37, ptr noundef %65, ptr noundef nonnull @.str.61, i32 noundef %62, i32 noundef 1) #20
  br label %103

103:                                              ; preds = %102, %61, %61, %49
  %104 = phi i32 [ %62, %61 ], [ %62, %61 ], [ %62, %102 ], [ 0, %49 ]
  %105 = or i32 %104, %32
  %106 = add i32 %35, 1
  %107 = icmp slt i32 %106, 13
  br i1 %107, label %31, label %108

108:                                              ; preds = %103, %46
  %109 = phi i32 [ %32, %46 ], [ %105, %103 ]
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %247

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.rsnd_dai, ptr %19, i32 0, i32 2
  %113 = getelementptr inbounds %struct.rsnd_dai, ptr %19, i32 0, i32 2, i32 4
  %114 = load ptr, ptr %113, align 4
  %115 = getelementptr inbounds %struct.rsnd_dai, ptr %114, i32 0, i32 3
  %116 = load ptr, ptr %115, align 4
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr inbounds %struct.platform_device, ptr %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.rsnd_dai, ptr %114, i32 0, i32 1
  %120 = icmp eq ptr %119, %112
  %121 = zext i1 %120 to i32
  %122 = getelementptr [2 x [13 x i32]], ptr @rsnd_mod_sequence, i32 0, i32 %121
  %123 = icmp eq ptr %122, null
  br label %124

124:                                              ; preds = %196, %111
  %125 = phi i32 [ 0, %111 ], [ %198, %196 ]
  %126 = phi i32 [ 0, %111 ], [ %199, %196 ]
  br label %127

127:                                              ; preds = %139, %124
  %128 = phi i32 [ %140, %139 ], [ %126, %124 ]
  br i1 %123, label %132, label %129

129:                                              ; preds = %127
  %130 = getelementptr i32, ptr %122, i32 %128
  %131 = load i32, ptr %130, align 4
  br label %132

132:                                              ; preds = %129, %127
  %133 = phi i32 [ %131, %129 ], [ %128, %127 ]
  %134 = icmp ult i32 %133, 13
  br i1 %134, label %135, label %139

135:                                              ; preds = %132
  %136 = getelementptr %struct.rsnd_dai, ptr %19, i32 0, i32 2, i32 2, i32 %133
  %137 = load ptr, ptr %136, align 4
  %138 = icmp eq ptr %137, null
  br i1 %138, label %139, label %142

139:                                              ; preds = %135, %132
  %140 = add i32 %128, 1
  %141 = icmp eq i32 %140, 13
  br i1 %141, label %201, label %127

142:                                              ; preds = %135
  %143 = getelementptr i32, ptr %122, i32 %128
  %144 = load i32, ptr %143, align 4
  %145 = getelementptr inbounds %struct.rsnd_mod, ptr %137, i32 0, i32 2
  %146 = load ptr, ptr %145, align 4
  %147 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %146, i32 0, i32 16
  %148 = load ptr, ptr %147, align 4
  %149 = tail call ptr %148(ptr noundef nonnull %137, ptr noundef %112, i32 noundef %144) #19
  %150 = load ptr, ptr %145, align 4
  %151 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %150, i32 0, i32 9
  %152 = load ptr, ptr %151, align 4
  %153 = icmp eq ptr %152, null
  br i1 %153, label %196, label %154

154:                                              ; preds = %142
  %155 = tail call i32 %152(ptr noundef nonnull %137, ptr noundef %112, ptr noundef %0) #19
  switch i32 %155, label %156 [
    i32 -517, label %196
    i32 0, label %196
  ]

156:                                              ; preds = %154
  %157 = load i32, ptr @rsnd_mod_name.num, align 4
  %158 = getelementptr [5 x [16 x i8]], ptr @rsnd_mod_name.names, i32 0, i32 %157
  %159 = add i32 %157, 1
  %160 = icmp sgt i32 %159, 4
  %161 = select i1 %160, i32 0, i32 %159
  store i32 %161, ptr @rsnd_mod_name.num, align 4
  %162 = load ptr, ptr %145, align 4
  %163 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %162, i32 0, i32 18
  %164 = load ptr, ptr %163, align 4
  %165 = icmp eq ptr %164, null
  %166 = load ptr, ptr %162, align 4
  %167 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %162, i32 0, i32 17
  %168 = load ptr, ptr %167, align 4
  %169 = icmp eq ptr %168, null
  br i1 %165, label %187, label %170

170:                                              ; preds = %156
  br i1 %169, label %171, label %173

171:                                              ; preds = %170
  %172 = load i32, ptr %137, align 4
  br label %179

173:                                              ; preds = %170
  %174 = tail call i32 %168(ptr noundef nonnull %137) #19
  %175 = load ptr, ptr %145, align 4
  %176 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %175, i32 0, i32 18
  %177 = load ptr, ptr %176, align 4
  %178 = icmp eq ptr %177, null
  br i1 %178, label %183, label %179

179:                                              ; preds = %173, %171
  %180 = phi i32 [ %172, %171 ], [ %174, %173 ]
  %181 = phi ptr [ %164, %171 ], [ %177, %173 ]
  %182 = tail call i32 %181(ptr noundef nonnull %137) #19
  br label %183

183:                                              ; preds = %179, %173
  %184 = phi i32 [ %180, %179 ], [ %174, %173 ]
  %185 = phi i32 [ %182, %179 ], [ 0, %173 ]
  %186 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %158, i32 noundef 16, ptr noundef nonnull @.str.1, ptr noundef %166, i32 noundef %184, i32 noundef %185) #19
  br label %195

187:                                              ; preds = %156
  br i1 %169, label %190, label %188

188:                                              ; preds = %187
  %189 = tail call i32 %168(ptr noundef nonnull %137) #19
  br label %192

190:                                              ; preds = %187
  %191 = load i32, ptr %137, align 4
  br label %192

192:                                              ; preds = %190, %188
  %193 = phi i32 [ %189, %188 ], [ %191, %190 ]
  %194 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %158, i32 noundef 16, ptr noundef nonnull @.str.2, ptr noundef %166, i32 noundef %193) #19
  br label %195

195:                                              ; preds = %192, %183
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %118, ptr noundef nonnull @.str.37, ptr noundef %158, ptr noundef nonnull @.str.61, i32 noundef %155, i32 noundef 1) #20
  br label %196

196:                                              ; preds = %195, %154, %154, %142
  %197 = phi i32 [ %155, %154 ], [ %155, %154 ], [ %155, %195 ], [ 0, %142 ]
  %198 = or i32 %197, %125
  %199 = add i32 %128, 1
  %200 = icmp slt i32 %199, 13
  br i1 %200, label %124, label %201

201:                                              ; preds = %196, %139
  %202 = phi i32 [ %125, %139 ], [ %198, %196 ]
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %247

204:                                              ; preds = %201
  %205 = load ptr, ptr %21, align 4
  %206 = getelementptr inbounds %struct.rsnd_dai, ptr %205, i32 0, i32 3
  %207 = load ptr, ptr %206, align 4
  %208 = load ptr, ptr %207, align 4
  %209 = getelementptr inbounds %struct.platform_device, ptr %208, i32 0, i32 3
  %210 = getelementptr inbounds %struct.rsnd_dai, ptr %19, i32 0, i32 1, i32 5
  %211 = load ptr, ptr %210, align 4
  %212 = icmp eq ptr %211, null
  %213 = select i1 %212, ptr %209, ptr %211
  %214 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %0, i32 0, i32 7
  %215 = load ptr, ptr %214, align 4
  %216 = getelementptr %struct.snd_pcm, ptr %215, i32 0, i32 8, i32 0, i32 4
  %217 = load ptr, ptr %216, align 4
  %218 = icmp eq ptr %217, null
  br i1 %218, label %227, label %219

219:                                              ; preds = %219, %204
  %220 = phi ptr [ %223, %219 ], [ %217, %204 ]
  %221 = tail call i32 @snd_pcm_set_managed_buffer(ptr noundef nonnull %220, i32 noundef 2, ptr noundef %213, i32 noundef 32768, i32 noundef 32768) #19
  %222 = getelementptr inbounds %struct.snd_pcm_substream, ptr %220, i32 0, i32 15
  %223 = load ptr, ptr %222, align 4
  %224 = icmp eq ptr %223, null
  br i1 %224, label %225, label %219

225:                                              ; preds = %219
  %226 = load ptr, ptr %214, align 4
  br label %227

227:                                              ; preds = %225, %204
  %228 = phi ptr [ %226, %225 ], [ %215, %204 ]
  %229 = load ptr, ptr %113, align 4
  %230 = getelementptr inbounds %struct.rsnd_dai, ptr %229, i32 0, i32 3
  %231 = load ptr, ptr %230, align 4
  %232 = load ptr, ptr %231, align 4
  %233 = getelementptr inbounds %struct.platform_device, ptr %232, i32 0, i32 3
  %234 = getelementptr inbounds %struct.rsnd_dai, ptr %19, i32 0, i32 2, i32 5
  %235 = load ptr, ptr %234, align 4
  %236 = icmp eq ptr %235, null
  %237 = select i1 %236, ptr %233, ptr %235
  %238 = getelementptr %struct.snd_pcm, ptr %228, i32 0, i32 8, i32 1, i32 4
  %239 = load ptr, ptr %238, align 4
  %240 = icmp eq ptr %239, null
  br i1 %240, label %247, label %241

241:                                              ; preds = %241, %227
  %242 = phi ptr [ %245, %241 ], [ %239, %227 ]
  %243 = tail call i32 @snd_pcm_set_managed_buffer(ptr noundef nonnull %242, i32 noundef 2, ptr noundef %237, i32 noundef 32768, i32 noundef 32768) #19
  %244 = getelementptr inbounds %struct.snd_pcm_substream, ptr %242, i32 0, i32 15
  %245 = load ptr, ptr %244, align 4
  %246 = icmp eq ptr %245, null
  br i1 %246, label %247, label %241

247:                                              ; preds = %241, %227, %201, %108
  %248 = phi i32 [ %109, %108 ], [ %202, %201 ], [ 0, %227 ], [ 0, %241 ]
  ret i32 %248
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_parse_connect_ssi(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_parse_connect_ssiu(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsnd_src_mod_get(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsnd_ctu_mod_get(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsnd_mix_mod_get(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsnd_dvc_mod_get(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__rsnd_ssi_is_pin_sharing(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @rsnd_soc_dai_set_fmt(ptr nocapture noundef readonly %0, i32 noundef %1) #18 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.rsnd_priv, ptr %6, i32 0, i32 22
  %12 = load i32, ptr %11, align 4
  %13 = icmp sgt i32 %12, %8
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.rsnd_priv, ptr %6, i32 0, i32 21
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr %struct.rsnd_dai, ptr %16, i32 %8
  br label %18

18:                                               ; preds = %14, %10, %2
  %19 = phi ptr [ %17, %14 ], [ null, %10 ], [ null, %2 ]
  %20 = trunc i32 %1 to i16
  %21 = and i16 %20, -4096
  switch i16 %21, label %60 [
    i16 4096, label %22
    i16 16384, label %26
  ]

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.rsnd_dai, ptr %19, i32 0, i32 8
  %24 = load i8, ptr %23, align 4
  %25 = and i8 %24, -2
  store i8 %25, ptr %23, align 4
  br label %30

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.rsnd_dai, ptr %19, i32 0, i32 8
  %28 = load i8, ptr %27, align 4
  %29 = or i8 %28, 1
  store i8 %29, ptr %27, align 4
  br label %30

30:                                               ; preds = %26, %22
  %31 = phi i8 [ %29, %26 ], [ %25, %22 ]
  %32 = getelementptr inbounds %struct.rsnd_dai, ptr %19, i32 0, i32 8
  %33 = and i8 %31, -3
  store i8 %33, ptr %32, align 4
  %34 = and i32 %1, 15
  switch i32 %34, label %48 [
    i32 1, label %35
    i32 3, label %37
    i32 5, label %37
    i32 2, label %40
    i32 4, label %43
  ]

35:                                               ; preds = %30
  %36 = and i8 %31, -31
  br label %46

37:                                               ; preds = %30, %30
  %38 = and i8 %31, -31
  %39 = or i8 %38, 12
  br label %46

40:                                               ; preds = %30
  %41 = and i8 %31, -31
  %42 = or i8 %41, 28
  br label %46

43:                                               ; preds = %30
  %44 = and i8 %31, -31
  %45 = or i8 %44, 4
  br label %46

46:                                               ; preds = %43, %40, %37, %35
  %47 = phi i8 [ %45, %43 ], [ %42, %40 ], [ %39, %37 ], [ %36, %35 ]
  store i8 %47, ptr %32, align 4
  br label %48

48:                                               ; preds = %46, %30
  %49 = phi i8 [ %33, %30 ], [ %47, %46 ]
  %50 = lshr i32 %1, 8
  %51 = and i32 %50, 15
  %52 = add nsw i32 %51, -2
  %53 = icmp ult i32 %52, 3
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = trunc i32 %52 to i24
  %56 = shl i24 %55, 3
  %57 = lshr i24 393732, %56
  %58 = trunc i24 %57 to i8
  %59 = xor i8 %49, %58
  store i8 %59, ptr %32, align 4
  br label %60

60:                                               ; preds = %54, %48, %18
  %61 = phi i32 [ -22, %18 ], [ 0, %48 ], [ 0, %54 ]
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_soc_set_dai_tdm_slot(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.rsnd_priv, ptr %9, i32 0, i32 22
  %15 = load i32, ptr %14, align 4
  %16 = icmp sgt i32 %15, %11
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.rsnd_priv, ptr %9, i32 0, i32 21
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr %struct.rsnd_dai, ptr %19, i32 %11
  br label %21

21:                                               ; preds = %17, %13, %5
  %22 = phi ptr [ %20, %17 ], [ null, %13 ], [ null, %5 ]
  %23 = load ptr, ptr %9, align 4
  %24 = getelementptr inbounds %struct.platform_device, ptr %23, i32 0, i32 3
  switch i32 %4, label %25 [
    i32 16, label %26
    i32 24, label %26
    i32 32, label %26
  ]

25:                                               ; preds = %21
  br label %26

26:                                               ; preds = %25, %21, %21, %21
  %27 = phi i32 [ 32, %25 ], [ %4, %21 ], [ %4, %21 ], [ %4, %21 ]
  switch i32 %3, label %32 [
    i32 2, label %28
    i32 6, label %28
    i32 8, label %28
  ]

28:                                               ; preds = %26, %26, %26
  %29 = getelementptr inbounds %struct.rsnd_dai, ptr %22, i32 0, i32 5
  store i32 %3, ptr %29, align 4
  %30 = getelementptr inbounds %struct.rsnd_dai, ptr %22, i32 0, i32 6
  store i32 1, ptr %30, align 4
  %31 = getelementptr inbounds %struct.rsnd_dai, ptr %22, i32 0, i32 7
  store i32 %27, ptr %31, align 4
  br label %33

32:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.53, i32 noundef %3) #20
  br label %33

33:                                               ; preds = %32, %28
  %34 = phi i32 [ -22, %32 ], [ 0, %28 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_soc_dai_startup(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.rsnd_priv, ptr %6, i32 0, i32 22
  %12 = load i32, ptr %11, align 4
  %13 = icmp sgt i32 %12, %8
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.rsnd_priv, ptr %6, i32 0, i32 21
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr %struct.rsnd_dai, ptr %16, i32 %8
  br label %18

18:                                               ; preds = %14, %10, %2
  %19 = phi ptr [ %17, %14 ], [ null, %10 ], [ null, %2 ]
  %20 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  %23 = getelementptr inbounds %struct.rsnd_dai, ptr %19, i32 0, i32 1
  %24 = getelementptr inbounds %struct.rsnd_dai, ptr %19, i32 0, i32 2
  %25 = select i1 %22, ptr %23, ptr %24
  %26 = getelementptr inbounds %struct.rsnd_dai, ptr %19, i32 0, i32 4
  %27 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.rsnd_dai, ptr %19, i32 0, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %25, i32 0, i32 1
  store ptr %0, ptr %31, align 4
  store ptr @rsnd_soc_hw_channels_list, ptr %26, align 4
  %32 = getelementptr inbounds %struct.rsnd_dai, ptr %19, i32 0, i32 4, i32 1
  store i32 0, ptr %32, align 4
  %33 = getelementptr inbounds %struct.rsnd_dai, ptr %19, i32 0, i32 4, i32 2
  store i32 0, ptr %33, align 4
  %34 = load i32, ptr @rsnd_soc_hw_channels_list, align 4
  %35 = icmp ugt i32 %34, %30
  br i1 %35, label %43, label %36

36:                                               ; preds = %18
  store i32 1, ptr %32, align 4
  %37 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @rsnd_soc_hw_channels_list, i32 0, i32 1), align 4
  %38 = icmp ugt i32 %37, %30
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  store i32 2, ptr %32, align 4
  %40 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @rsnd_soc_hw_channels_list, i32 0, i32 2), align 4
  %41 = icmp ugt i32 %40, %30
  %42 = select i1 %41, i32 2, i32 3
  store i32 %42, ptr %32, align 4
  br label %43

43:                                               ; preds = %39, %36, %18
  %44 = tail call i32 @snd_soc_set_runtime_hwparams(ptr noundef %0, ptr noundef nonnull @rsnd_pcm_hardware) #19
  %45 = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %28, i32 noundef 0, i32 noundef 10, ptr noundef %26) #19
  %46 = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %28, i32 noundef 15) #19
  %47 = getelementptr inbounds %struct.rsnd_dai, ptr %19, i32 0, i32 8
  %48 = load i8, ptr %47, align 4
  %49 = and i8 %48, 1
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %43
  %52 = load i32, ptr %20, align 4
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %53, ptr %23, ptr %24
  %55 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %28, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @rsnd_soc_hw_rule_rate, ptr noundef %54, i32 noundef 10, i32 noundef -1) #19
  %56 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %28, i32 noundef 0, i32 noundef 10, ptr noundef nonnull @rsnd_soc_hw_rule_channels, ptr noundef %54, i32 noundef 11, i32 noundef -1) #19
  br label %57

57:                                               ; preds = %51, %43
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rsnd_soc_dai_shutdown(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.rsnd_priv, ptr %6, i32 0, i32 22
  %12 = load i32, ptr %11, align 4
  %13 = icmp sgt i32 %12, %8
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.rsnd_priv, ptr %6, i32 0, i32 21
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr %struct.rsnd_dai, ptr %16, i32 %8
  br label %18

18:                                               ; preds = %14, %10, %2
  %19 = phi ptr [ %17, %14 ], [ null, %10 ], [ null, %2 ]
  %20 = getelementptr inbounds %struct.rsnd_dai, ptr %19, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds %struct.rsnd_dai, ptr %19, i32 0, i32 1
  %26 = getelementptr inbounds %struct.rsnd_dai, ptr %19, i32 0, i32 2
  %27 = select i1 %24, ptr %25, ptr %26
  %28 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %27, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.rsnd_dai, ptr %29, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.platform_device, ptr %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.rsnd_dai, ptr %29, i32 0, i32 1
  %35 = icmp eq ptr %34, %27
  %36 = zext i1 %35 to i32
  %37 = getelementptr [2 x [13 x i32]], ptr @rsnd_mod_sequence, i32 0, i32 %36
  %38 = icmp eq ptr %37, null
  br label %39

39:                                               ; preds = %54, %18
  %40 = phi i32 [ 0, %18 ], [ %55, %54 ]
  br i1 %38, label %44, label %41

41:                                               ; preds = %39
  %42 = getelementptr i32, ptr %37, i32 %40
  %43 = load i32, ptr %42, align 4
  br label %44

44:                                               ; preds = %41, %39
  %45 = phi i32 [ %43, %41 ], [ %40, %39 ]
  %46 = icmp ult i32 %45, 13
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = getelementptr %struct.rsnd_dai_stream, ptr %27, i32 0, i32 2, i32 %45
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %47, %44
  %52 = add i32 %40, 1
  %53 = icmp eq i32 %52, 13
  br i1 %53, label %113, label %54

54:                                               ; preds = %110, %51
  %55 = phi i32 [ %52, %51 ], [ %111, %110 ]
  br label %39

56:                                               ; preds = %47
  %57 = getelementptr i32, ptr %37, i32 %40
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.rsnd_mod, ptr %49, i32 0, i32 2
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %60, i32 0, i32 16
  %62 = load ptr, ptr %61, align 4
  %63 = tail call ptr %62(ptr noundef nonnull %49, ptr noundef %27, i32 noundef %58) #19
  %64 = load ptr, ptr %59, align 4
  %65 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %64, i32 0, i32 14
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %110, label %68

68:                                               ; preds = %56
  %69 = tail call i32 %66(ptr noundef nonnull %49, ptr noundef %27, ptr noundef %21) #19
  switch i32 %69, label %70 [
    i32 -517, label %110
    i32 0, label %110
  ]

70:                                               ; preds = %68
  %71 = load i32, ptr @rsnd_mod_name.num, align 4
  %72 = getelementptr [5 x [16 x i8]], ptr @rsnd_mod_name.names, i32 0, i32 %71
  %73 = add i32 %71, 1
  %74 = icmp sgt i32 %73, 4
  %75 = select i1 %74, i32 0, i32 %73
  store i32 %75, ptr @rsnd_mod_name.num, align 4
  %76 = load ptr, ptr %59, align 4
  %77 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %76, i32 0, i32 18
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  %80 = load ptr, ptr %76, align 4
  %81 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %76, i32 0, i32 17
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %79, label %101, label %84

84:                                               ; preds = %70
  br i1 %83, label %85, label %87

85:                                               ; preds = %84
  %86 = load i32, ptr %49, align 4
  br label %93

87:                                               ; preds = %84
  %88 = tail call i32 %82(ptr noundef nonnull %49) #19
  %89 = load ptr, ptr %59, align 4
  %90 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %89, i32 0, i32 18
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %97, label %93

93:                                               ; preds = %87, %85
  %94 = phi i32 [ %86, %85 ], [ %88, %87 ]
  %95 = phi ptr [ %78, %85 ], [ %91, %87 ]
  %96 = tail call i32 %95(ptr noundef nonnull %49) #19
  br label %97

97:                                               ; preds = %93, %87
  %98 = phi i32 [ %94, %93 ], [ %88, %87 ]
  %99 = phi i32 [ %96, %93 ], [ 0, %87 ]
  %100 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %72, i32 noundef 16, ptr noundef nonnull @.str.1, ptr noundef %80, i32 noundef %98, i32 noundef %99) #19
  br label %109

101:                                              ; preds = %70
  br i1 %83, label %104, label %102

102:                                              ; preds = %101
  %103 = tail call i32 %82(ptr noundef nonnull %49) #19
  br label %106

104:                                              ; preds = %101
  %105 = load i32, ptr %49, align 4
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi i32 [ %103, %102 ], [ %105, %104 ]
  %108 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %72, i32 noundef 16, ptr noundef nonnull @.str.2, ptr noundef %80, i32 noundef %107) #19
  br label %109

109:                                              ; preds = %106, %97
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.37, ptr noundef %72, ptr noundef nonnull @.str.54, i32 noundef %69, i32 noundef 1) #20
  br label %110

110:                                              ; preds = %109, %68, %68, %56
  %111 = add i32 %40, 1
  %112 = icmp slt i32 %111, 13
  br i1 %112, label %54, label %113

113:                                              ; preds = %110, %51
  %114 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %27, i32 0, i32 1
  store ptr null, ptr %114, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_soc_dai_prepare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.rsnd_priv, ptr %6, i32 0, i32 22
  %12 = load i32, ptr %11, align 4
  %13 = icmp sgt i32 %12, %8
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.rsnd_priv, ptr %6, i32 0, i32 21
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr %struct.rsnd_dai, ptr %16, i32 %8
  br label %18

18:                                               ; preds = %14, %10, %2
  %19 = phi ptr [ %17, %14 ], [ null, %10 ], [ null, %2 ]
  %20 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  %23 = getelementptr inbounds %struct.rsnd_dai, ptr %19, i32 0, i32 1
  %24 = getelementptr inbounds %struct.rsnd_dai, ptr %19, i32 0, i32 2
  %25 = select i1 %22, ptr %23, ptr %24
  %26 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %25, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.rsnd_dai, ptr %27, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.platform_device, ptr %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.rsnd_dai, ptr %27, i32 0, i32 1
  %33 = icmp eq ptr %32, %25
  %34 = zext i1 %33 to i32
  %35 = getelementptr [2 x [13 x i32]], ptr @rsnd_mod_sequence, i32 0, i32 %34
  %36 = icmp eq ptr %35, null
  br label %37

37:                                               ; preds = %109, %18
  %38 = phi i32 [ 0, %18 ], [ %111, %109 ]
  %39 = phi i32 [ 0, %18 ], [ %112, %109 ]
  br label %40

40:                                               ; preds = %52, %37
  %41 = phi i32 [ %53, %52 ], [ %39, %37 ]
  br i1 %36, label %45, label %42

42:                                               ; preds = %40
  %43 = getelementptr i32, ptr %35, i32 %41
  %44 = load i32, ptr %43, align 4
  br label %45

45:                                               ; preds = %42, %40
  %46 = phi i32 [ %44, %42 ], [ %41, %40 ]
  %47 = icmp ult i32 %46, 13
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = getelementptr %struct.rsnd_dai_stream, ptr %25, i32 0, i32 2, i32 %46
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %48, %45
  %53 = add i32 %41, 1
  %54 = icmp eq i32 %53, 13
  br i1 %54, label %114, label %40

55:                                               ; preds = %48
  %56 = getelementptr i32, ptr %35, i32 %41
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.rsnd_mod, ptr %50, i32 0, i32 2
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %59, i32 0, i32 16
  %61 = load ptr, ptr %60, align 4
  %62 = tail call ptr %61(ptr noundef nonnull %50, ptr noundef %25, i32 noundef %57) #19
  %63 = load ptr, ptr %58, align 4
  %64 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %63, i32 0, i32 13
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %109, label %67

67:                                               ; preds = %55
  %68 = tail call i32 %65(ptr noundef nonnull %50, ptr noundef %25, ptr noundef %6) #19
  switch i32 %68, label %69 [
    i32 -517, label %109
    i32 0, label %109
  ]

69:                                               ; preds = %67
  %70 = load i32, ptr @rsnd_mod_name.num, align 4
  %71 = getelementptr [5 x [16 x i8]], ptr @rsnd_mod_name.names, i32 0, i32 %70
  %72 = add i32 %70, 1
  %73 = icmp sgt i32 %72, 4
  %74 = select i1 %73, i32 0, i32 %72
  store i32 %74, ptr @rsnd_mod_name.num, align 4
  %75 = load ptr, ptr %58, align 4
  %76 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %75, i32 0, i32 18
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  %79 = load ptr, ptr %75, align 4
  %80 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %75, i32 0, i32 17
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %78, label %100, label %83

83:                                               ; preds = %69
  br i1 %82, label %84, label %86

84:                                               ; preds = %83
  %85 = load i32, ptr %50, align 4
  br label %92

86:                                               ; preds = %83
  %87 = tail call i32 %81(ptr noundef nonnull %50) #19
  %88 = load ptr, ptr %58, align 4
  %89 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %88, i32 0, i32 18
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %96, label %92

92:                                               ; preds = %86, %84
  %93 = phi i32 [ %85, %84 ], [ %87, %86 ]
  %94 = phi ptr [ %77, %84 ], [ %90, %86 ]
  %95 = tail call i32 %94(ptr noundef nonnull %50) #19
  br label %96

96:                                               ; preds = %92, %86
  %97 = phi i32 [ %93, %92 ], [ %87, %86 ]
  %98 = phi i32 [ %95, %92 ], [ 0, %86 ]
  %99 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %71, i32 noundef 16, ptr noundef nonnull @.str.1, ptr noundef %79, i32 noundef %97, i32 noundef %98) #19
  br label %108

100:                                              ; preds = %69
  br i1 %82, label %103, label %101

101:                                              ; preds = %100
  %102 = tail call i32 %81(ptr noundef nonnull %50) #19
  br label %105

103:                                              ; preds = %100
  %104 = load i32, ptr %50, align 4
  br label %105

105:                                              ; preds = %103, %101
  %106 = phi i32 [ %102, %101 ], [ %104, %103 ]
  %107 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %71, i32 noundef 16, ptr noundef nonnull @.str.2, ptr noundef %79, i32 noundef %106) #19
  br label %108

108:                                              ; preds = %105, %96
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.37, ptr noundef %71, ptr noundef nonnull @.str.55, i32 noundef %68, i32 noundef 1) #20
  br label %109

109:                                              ; preds = %108, %67, %67, %55
  %110 = phi i32 [ %68, %67 ], [ %68, %67 ], [ %68, %108 ], [ 0, %55 ]
  %111 = or i32 %110, %38
  %112 = add i32 %41, 1
  %113 = icmp slt i32 %112, 13
  br i1 %113, label %37, label %114

114:                                              ; preds = %109, %52
  %115 = phi i32 [ %38, %52 ], [ %111, %109 ]
  ret i32 %115
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_soc_dai_trigger(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.rsnd_priv, ptr %7, i32 0, i32 22
  %13 = load i32, ptr %12, align 4
  %14 = icmp sgt i32 %13, %9
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.rsnd_priv, ptr %7, i32 0, i32 21
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr %struct.rsnd_dai, ptr %17, i32 %9
  br label %19

19:                                               ; preds = %15, %11, %3
  %20 = phi ptr [ %18, %15 ], [ null, %11 ], [ null, %3 ]
  %21 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  %24 = getelementptr inbounds %struct.rsnd_dai, ptr %20, i32 0, i32 1
  %25 = getelementptr inbounds %struct.rsnd_dai, ptr %20, i32 0, i32 2
  %26 = select i1 %23, ptr %24, ptr %25
  %27 = getelementptr inbounds %struct.rsnd_priv, ptr %7, i32 0, i32 1
  %28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %27) #19
  switch i32 %1, label %627 [
    i32 1, label %29
    i32 6, label %29
    i32 0, label %328
    i32 5, label %328
  ]

29:                                               ; preds = %19, %19
  %30 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %26, i32 0, i32 4
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.rsnd_dai, ptr %31, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.platform_device, ptr %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.rsnd_dai, ptr %31, i32 0, i32 1
  %37 = icmp eq ptr %36, %26
  %38 = zext i1 %37 to i32
  %39 = getelementptr [2 x [13 x i32]], ptr @rsnd_mod_sequence, i32 0, i32 %38
  %40 = icmp eq ptr %39, null
  br label %41

41:                                               ; preds = %127, %29
  %42 = phi i32 [ 0, %29 ], [ %129, %127 ]
  %43 = phi i32 [ 0, %29 ], [ %130, %127 ]
  br label %44

44:                                               ; preds = %56, %41
  %45 = phi i32 [ %57, %56 ], [ %43, %41 ]
  br i1 %40, label %49, label %46

46:                                               ; preds = %44
  %47 = getelementptr i32, ptr %39, i32 %45
  %48 = load i32, ptr %47, align 4
  br label %49

49:                                               ; preds = %46, %44
  %50 = phi i32 [ %48, %46 ], [ %45, %44 ]
  %51 = icmp ult i32 %50, 13
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = getelementptr %struct.rsnd_dai_stream, ptr %26, i32 0, i32 2, i32 %50
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %52, %49
  %57 = add i32 %45, 1
  %58 = icmp eq i32 %57, 13
  br i1 %58, label %132, label %44

59:                                               ; preds = %52
  %60 = getelementptr i32, ptr %39, i32 %45
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr inbounds %struct.rsnd_mod, ptr %54, i32 0, i32 2
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %63, i32 0, i32 16
  %65 = load ptr, ptr %64, align 4
  %66 = tail call ptr %65(ptr noundef nonnull %54, ptr noundef %26, i32 noundef %61) #19
  %67 = load i32, ptr %66, align 4
  %68 = lshr i32 %67, 4
  %69 = add nuw nsw i32 %68, 1
  %70 = and i32 %69, 15
  %71 = icmp eq i32 %70, 15
  br i1 %71, label %85, label %72

72:                                               ; preds = %59
  %73 = and i32 %67, 240
  %74 = icmp eq i32 %73, 0
  %75 = and i32 %67, -241
  %76 = shl nuw nsw i32 %70, 4
  %77 = or i32 %76, %75
  store i32 %77, ptr %66, align 4
  br i1 %74, label %78, label %127

78:                                               ; preds = %72
  %79 = load ptr, ptr %62, align 4
  %80 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %79, i32 0, i32 4
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %127, label %83

83:                                               ; preds = %78
  %84 = tail call i32 %81(ptr noundef nonnull %54, ptr noundef %26, ptr noundef %7) #19
  switch i32 %84, label %85 [
    i32 -517, label %127
    i32 0, label %127
  ]

85:                                               ; preds = %83, %59
  %86 = phi i32 [ %84, %83 ], [ 0, %59 ]
  %87 = phi i32 [ 1, %83 ], [ -1, %59 ]
  %88 = load i32, ptr @rsnd_mod_name.num, align 4
  %89 = getelementptr [5 x [16 x i8]], ptr @rsnd_mod_name.names, i32 0, i32 %88
  %90 = add i32 %88, 1
  %91 = icmp sgt i32 %90, 4
  %92 = select i1 %91, i32 0, i32 %90
  store i32 %92, ptr @rsnd_mod_name.num, align 4
  %93 = load ptr, ptr %62, align 4
  %94 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %93, i32 0, i32 18
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  %97 = load ptr, ptr %93, align 4
  %98 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %93, i32 0, i32 17
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %96, label %118, label %101

101:                                              ; preds = %85
  br i1 %100, label %102, label %104

102:                                              ; preds = %101
  %103 = load i32, ptr %54, align 4
  br label %110

104:                                              ; preds = %101
  %105 = tail call i32 %99(ptr noundef nonnull %54) #19
  %106 = load ptr, ptr %62, align 4
  %107 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %106, i32 0, i32 18
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %114, label %110

110:                                              ; preds = %104, %102
  %111 = phi i32 [ %103, %102 ], [ %105, %104 ]
  %112 = phi ptr [ %95, %102 ], [ %108, %104 ]
  %113 = tail call i32 %112(ptr noundef nonnull %54) #19
  br label %114

114:                                              ; preds = %110, %104
  %115 = phi i32 [ %111, %110 ], [ %105, %104 ]
  %116 = phi i32 [ %113, %110 ], [ 0, %104 ]
  %117 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %89, i32 noundef 16, ptr noundef nonnull @.str.1, ptr noundef %97, i32 noundef %115, i32 noundef %116) #19
  br label %126

118:                                              ; preds = %85
  br i1 %100, label %121, label %119

119:                                              ; preds = %118
  %120 = tail call i32 %99(ptr noundef nonnull %54) #19
  br label %123

121:                                              ; preds = %118
  %122 = load i32, ptr %54, align 4
  br label %123

123:                                              ; preds = %121, %119
  %124 = phi i32 [ %120, %119 ], [ %122, %121 ]
  %125 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %89, i32 noundef 16, ptr noundef nonnull @.str.2, ptr noundef %97, i32 noundef %124) #19
  br label %126

126:                                              ; preds = %123, %114
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.37, ptr noundef %89, ptr noundef nonnull @.str.56, i32 noundef %86, i32 noundef %87) #20
  br label %127

127:                                              ; preds = %126, %83, %83, %78, %72
  %128 = phi i32 [ %84, %83 ], [ %84, %83 ], [ %86, %126 ], [ 0, %72 ], [ 0, %78 ]
  %129 = or i32 %128, %42
  %130 = add i32 %45, 1
  %131 = icmp slt i32 %130, 13
  br i1 %131, label %41, label %132

132:                                              ; preds = %127, %56
  %133 = phi i32 [ %42, %56 ], [ %129, %127 ]
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %627, label %135

135:                                              ; preds = %132
  %136 = load ptr, ptr %30, align 4
  %137 = getelementptr inbounds %struct.rsnd_dai, ptr %136, i32 0, i32 3
  %138 = load ptr, ptr %137, align 4
  %139 = load ptr, ptr %138, align 4
  %140 = getelementptr inbounds %struct.platform_device, ptr %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.rsnd_dai, ptr %136, i32 0, i32 1
  %142 = icmp eq ptr %141, %26
  %143 = zext i1 %142 to i32
  %144 = getelementptr [2 x [13 x i32]], ptr @rsnd_mod_sequence, i32 0, i32 %143
  %145 = icmp eq ptr %144, null
  br label %146

146:                                              ; preds = %232, %135
  %147 = phi i32 [ 0, %135 ], [ %234, %232 ]
  %148 = phi i32 [ 0, %135 ], [ %235, %232 ]
  br label %149

149:                                              ; preds = %161, %146
  %150 = phi i32 [ %162, %161 ], [ %148, %146 ]
  br i1 %145, label %154, label %151

151:                                              ; preds = %149
  %152 = getelementptr i32, ptr %144, i32 %150
  %153 = load i32, ptr %152, align 4
  br label %154

154:                                              ; preds = %151, %149
  %155 = phi i32 [ %153, %151 ], [ %150, %149 ]
  %156 = icmp ult i32 %155, 13
  br i1 %156, label %157, label %161

157:                                              ; preds = %154
  %158 = getelementptr %struct.rsnd_dai_stream, ptr %26, i32 0, i32 2, i32 %155
  %159 = load ptr, ptr %158, align 4
  %160 = icmp eq ptr %159, null
  br i1 %160, label %161, label %164

161:                                              ; preds = %157, %154
  %162 = add i32 %150, 1
  %163 = icmp eq i32 %162, 13
  br i1 %163, label %237, label %149

164:                                              ; preds = %157
  %165 = getelementptr i32, ptr %144, i32 %150
  %166 = load i32, ptr %165, align 4
  %167 = getelementptr inbounds %struct.rsnd_mod, ptr %159, i32 0, i32 2
  %168 = load ptr, ptr %167, align 4
  %169 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %168, i32 0, i32 16
  %170 = load ptr, ptr %169, align 4
  %171 = tail call ptr %170(ptr noundef nonnull %159, ptr noundef %26, i32 noundef %166) #19
  %172 = load i32, ptr %171, align 4
  %173 = lshr i32 %172, 8
  %174 = add nuw nsw i32 %173, 1
  %175 = and i32 %174, 15
  %176 = icmp eq i32 %175, 15
  br i1 %176, label %190, label %177

177:                                              ; preds = %164
  %178 = and i32 %172, 3840
  %179 = icmp eq i32 %178, 0
  %180 = and i32 %172, -3841
  %181 = shl nuw nsw i32 %175, 8
  %182 = or i32 %181, %180
  store i32 %182, ptr %171, align 4
  br i1 %179, label %183, label %232

183:                                              ; preds = %177
  %184 = load ptr, ptr %167, align 4
  %185 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %184, i32 0, i32 6
  %186 = load ptr, ptr %185, align 4
  %187 = icmp eq ptr %186, null
  br i1 %187, label %232, label %188

188:                                              ; preds = %183
  %189 = tail call i32 %186(ptr noundef nonnull %159, ptr noundef %26, ptr noundef %7) #19
  switch i32 %189, label %190 [
    i32 -517, label %232
    i32 0, label %232
  ]

190:                                              ; preds = %188, %164
  %191 = phi i32 [ %189, %188 ], [ 0, %164 ]
  %192 = phi i32 [ 1, %188 ], [ -1, %164 ]
  %193 = load i32, ptr @rsnd_mod_name.num, align 4
  %194 = getelementptr [5 x [16 x i8]], ptr @rsnd_mod_name.names, i32 0, i32 %193
  %195 = add i32 %193, 1
  %196 = icmp sgt i32 %195, 4
  %197 = select i1 %196, i32 0, i32 %195
  store i32 %197, ptr @rsnd_mod_name.num, align 4
  %198 = load ptr, ptr %167, align 4
  %199 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %198, i32 0, i32 18
  %200 = load ptr, ptr %199, align 4
  %201 = icmp eq ptr %200, null
  %202 = load ptr, ptr %198, align 4
  %203 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %198, i32 0, i32 17
  %204 = load ptr, ptr %203, align 4
  %205 = icmp eq ptr %204, null
  br i1 %201, label %223, label %206

206:                                              ; preds = %190
  br i1 %205, label %207, label %209

207:                                              ; preds = %206
  %208 = load i32, ptr %159, align 4
  br label %215

209:                                              ; preds = %206
  %210 = tail call i32 %204(ptr noundef nonnull %159) #19
  %211 = load ptr, ptr %167, align 4
  %212 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %211, i32 0, i32 18
  %213 = load ptr, ptr %212, align 4
  %214 = icmp eq ptr %213, null
  br i1 %214, label %219, label %215

215:                                              ; preds = %209, %207
  %216 = phi i32 [ %208, %207 ], [ %210, %209 ]
  %217 = phi ptr [ %200, %207 ], [ %213, %209 ]
  %218 = tail call i32 %217(ptr noundef nonnull %159) #19
  br label %219

219:                                              ; preds = %215, %209
  %220 = phi i32 [ %216, %215 ], [ %210, %209 ]
  %221 = phi i32 [ %218, %215 ], [ 0, %209 ]
  %222 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %194, i32 noundef 16, ptr noundef nonnull @.str.1, ptr noundef %202, i32 noundef %220, i32 noundef %221) #19
  br label %231

223:                                              ; preds = %190
  br i1 %205, label %226, label %224

224:                                              ; preds = %223
  %225 = tail call i32 %204(ptr noundef nonnull %159) #19
  br label %228

226:                                              ; preds = %223
  %227 = load i32, ptr %159, align 4
  br label %228

228:                                              ; preds = %226, %224
  %229 = phi i32 [ %225, %224 ], [ %227, %226 ]
  %230 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %194, i32 noundef 16, ptr noundef nonnull @.str.2, ptr noundef %202, i32 noundef %229) #19
  br label %231

231:                                              ; preds = %228, %219
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %140, ptr noundef nonnull @.str.37, ptr noundef %194, ptr noundef nonnull @.str.57, i32 noundef %191, i32 noundef %192) #20
  br label %232

232:                                              ; preds = %231, %188, %188, %183, %177
  %233 = phi i32 [ %189, %188 ], [ %189, %188 ], [ %191, %231 ], [ 0, %177 ], [ 0, %183 ]
  %234 = or i32 %233, %147
  %235 = add i32 %150, 1
  %236 = icmp slt i32 %235, 13
  br i1 %236, label %146, label %237

237:                                              ; preds = %232, %161
  %238 = phi i32 [ %147, %161 ], [ %234, %232 ]
  %239 = icmp slt i32 %238, 0
  br i1 %239, label %627, label %240

240:                                              ; preds = %237
  %241 = load ptr, ptr %30, align 4
  %242 = getelementptr inbounds %struct.rsnd_dai, ptr %241, i32 0, i32 3
  %243 = load ptr, ptr %242, align 4
  %244 = load ptr, ptr %243, align 4
  %245 = getelementptr inbounds %struct.platform_device, ptr %244, i32 0, i32 3
  %246 = getelementptr inbounds %struct.rsnd_dai, ptr %241, i32 0, i32 1
  %247 = icmp eq ptr %246, %26
  %248 = zext i1 %247 to i32
  %249 = getelementptr [2 x [13 x i32]], ptr @rsnd_mod_sequence, i32 0, i32 %248
  %250 = icmp eq ptr %249, null
  br label %251

251:                                              ; preds = %323, %240
  %252 = phi i32 [ 0, %240 ], [ %325, %323 ]
  %253 = phi i32 [ 0, %240 ], [ %326, %323 ]
  br label %254

254:                                              ; preds = %266, %251
  %255 = phi i32 [ %267, %266 ], [ %253, %251 ]
  br i1 %250, label %259, label %256

256:                                              ; preds = %254
  %257 = getelementptr i32, ptr %249, i32 %255
  %258 = load i32, ptr %257, align 4
  br label %259

259:                                              ; preds = %256, %254
  %260 = phi i32 [ %258, %256 ], [ %255, %254 ]
  %261 = icmp ult i32 %260, 13
  br i1 %261, label %262, label %266

262:                                              ; preds = %259
  %263 = getelementptr %struct.rsnd_dai_stream, ptr %26, i32 0, i32 2, i32 %260
  %264 = load ptr, ptr %263, align 4
  %265 = icmp eq ptr %264, null
  br i1 %265, label %266, label %269

266:                                              ; preds = %262, %259
  %267 = add i32 %255, 1
  %268 = icmp eq i32 %267, 13
  br i1 %268, label %627, label %254

269:                                              ; preds = %262
  %270 = getelementptr i32, ptr %249, i32 %255
  %271 = load i32, ptr %270, align 4
  %272 = getelementptr inbounds %struct.rsnd_mod, ptr %264, i32 0, i32 2
  %273 = load ptr, ptr %272, align 4
  %274 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %273, i32 0, i32 16
  %275 = load ptr, ptr %274, align 4
  %276 = tail call ptr %275(ptr noundef nonnull %264, ptr noundef %26, i32 noundef %271) #19
  %277 = load ptr, ptr %272, align 4
  %278 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %277, i32 0, i32 8
  %279 = load ptr, ptr %278, align 4
  %280 = icmp eq ptr %279, null
  br i1 %280, label %323, label %281

281:                                              ; preds = %269
  %282 = tail call i32 %279(ptr noundef nonnull %264, ptr noundef %26, ptr noundef %7, i32 noundef 1) #19
  switch i32 %282, label %283 [
    i32 -517, label %323
    i32 0, label %323
  ]

283:                                              ; preds = %281
  %284 = load i32, ptr @rsnd_mod_name.num, align 4
  %285 = getelementptr [5 x [16 x i8]], ptr @rsnd_mod_name.names, i32 0, i32 %284
  %286 = add i32 %284, 1
  %287 = icmp sgt i32 %286, 4
  %288 = select i1 %287, i32 0, i32 %286
  store i32 %288, ptr @rsnd_mod_name.num, align 4
  %289 = load ptr, ptr %272, align 4
  %290 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %289, i32 0, i32 18
  %291 = load ptr, ptr %290, align 4
  %292 = icmp eq ptr %291, null
  %293 = load ptr, ptr %289, align 4
  %294 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %289, i32 0, i32 17
  %295 = load ptr, ptr %294, align 4
  %296 = icmp eq ptr %295, null
  br i1 %292, label %314, label %297

297:                                              ; preds = %283
  br i1 %296, label %298, label %300

298:                                              ; preds = %297
  %299 = load i32, ptr %264, align 4
  br label %306

300:                                              ; preds = %297
  %301 = tail call i32 %295(ptr noundef nonnull %264) #19
  %302 = load ptr, ptr %272, align 4
  %303 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %302, i32 0, i32 18
  %304 = load ptr, ptr %303, align 4
  %305 = icmp eq ptr %304, null
  br i1 %305, label %310, label %306

306:                                              ; preds = %300, %298
  %307 = phi i32 [ %299, %298 ], [ %301, %300 ]
  %308 = phi ptr [ %291, %298 ], [ %304, %300 ]
  %309 = tail call i32 %308(ptr noundef nonnull %264) #19
  br label %310

310:                                              ; preds = %306, %300
  %311 = phi i32 [ %307, %306 ], [ %301, %300 ]
  %312 = phi i32 [ %309, %306 ], [ 0, %300 ]
  %313 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %285, i32 noundef 16, ptr noundef nonnull @.str.1, ptr noundef %293, i32 noundef %311, i32 noundef %312) #19
  br label %322

314:                                              ; preds = %283
  br i1 %296, label %317, label %315

315:                                              ; preds = %314
  %316 = tail call i32 %295(ptr noundef nonnull %264) #19
  br label %319

317:                                              ; preds = %314
  %318 = load i32, ptr %264, align 4
  br label %319

319:                                              ; preds = %317, %315
  %320 = phi i32 [ %316, %315 ], [ %318, %317 ]
  %321 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %285, i32 noundef 16, ptr noundef nonnull @.str.2, ptr noundef %293, i32 noundef %320) #19
  br label %322

322:                                              ; preds = %319, %310
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %245, ptr noundef nonnull @.str.37, ptr noundef %285, ptr noundef nonnull @.str.58, i32 noundef %282, i32 noundef 1) #20
  br label %323

323:                                              ; preds = %322, %281, %281, %269
  %324 = phi i32 [ %282, %281 ], [ %282, %281 ], [ %282, %322 ], [ 0, %269 ]
  %325 = or i32 %324, %252
  %326 = add i32 %255, 1
  %327 = icmp slt i32 %326, 13
  br i1 %327, label %251, label %627

328:                                              ; preds = %19, %19
  %329 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %26, i32 0, i32 4
  %330 = load ptr, ptr %329, align 4
  %331 = getelementptr inbounds %struct.rsnd_dai, ptr %330, i32 0, i32 3
  %332 = load ptr, ptr %331, align 4
  %333 = load ptr, ptr %332, align 4
  %334 = getelementptr inbounds %struct.platform_device, ptr %333, i32 0, i32 3
  %335 = getelementptr inbounds %struct.rsnd_dai, ptr %330, i32 0, i32 1
  %336 = icmp eq ptr %335, %26
  %337 = zext i1 %336 to i32
  %338 = getelementptr [2 x [13 x i32]], ptr @rsnd_mod_sequence, i32 0, i32 %337
  %339 = icmp eq ptr %338, null
  br label %340

340:                                              ; preds = %412, %328
  %341 = phi i32 [ 0, %328 ], [ %414, %412 ]
  %342 = phi i32 [ 0, %328 ], [ %415, %412 ]
  br label %343

343:                                              ; preds = %355, %340
  %344 = phi i32 [ %356, %355 ], [ %342, %340 ]
  br i1 %339, label %348, label %345

345:                                              ; preds = %343
  %346 = getelementptr i32, ptr %338, i32 %344
  %347 = load i32, ptr %346, align 4
  br label %348

348:                                              ; preds = %345, %343
  %349 = phi i32 [ %347, %345 ], [ %344, %343 ]
  %350 = icmp ult i32 %349, 13
  br i1 %350, label %351, label %355

351:                                              ; preds = %348
  %352 = getelementptr %struct.rsnd_dai_stream, ptr %26, i32 0, i32 2, i32 %349
  %353 = load ptr, ptr %352, align 4
  %354 = icmp eq ptr %353, null
  br i1 %354, label %355, label %358

355:                                              ; preds = %351, %348
  %356 = add i32 %344, 1
  %357 = icmp eq i32 %356, 13
  br i1 %357, label %417, label %343

358:                                              ; preds = %351
  %359 = getelementptr i32, ptr %338, i32 %344
  %360 = load i32, ptr %359, align 4
  %361 = getelementptr inbounds %struct.rsnd_mod, ptr %353, i32 0, i32 2
  %362 = load ptr, ptr %361, align 4
  %363 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %362, i32 0, i32 16
  %364 = load ptr, ptr %363, align 4
  %365 = tail call ptr %364(ptr noundef nonnull %353, ptr noundef %26, i32 noundef %360) #19
  %366 = load ptr, ptr %361, align 4
  %367 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %366, i32 0, i32 8
  %368 = load ptr, ptr %367, align 4
  %369 = icmp eq ptr %368, null
  br i1 %369, label %412, label %370

370:                                              ; preds = %358
  %371 = tail call i32 %368(ptr noundef nonnull %353, ptr noundef %26, ptr noundef %7, i32 noundef 0) #19
  switch i32 %371, label %372 [
    i32 -517, label %412
    i32 0, label %412
  ]

372:                                              ; preds = %370
  %373 = load i32, ptr @rsnd_mod_name.num, align 4
  %374 = getelementptr [5 x [16 x i8]], ptr @rsnd_mod_name.names, i32 0, i32 %373
  %375 = add i32 %373, 1
  %376 = icmp sgt i32 %375, 4
  %377 = select i1 %376, i32 0, i32 %375
  store i32 %377, ptr @rsnd_mod_name.num, align 4
  %378 = load ptr, ptr %361, align 4
  %379 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %378, i32 0, i32 18
  %380 = load ptr, ptr %379, align 4
  %381 = icmp eq ptr %380, null
  %382 = load ptr, ptr %378, align 4
  %383 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %378, i32 0, i32 17
  %384 = load ptr, ptr %383, align 4
  %385 = icmp eq ptr %384, null
  br i1 %381, label %403, label %386

386:                                              ; preds = %372
  br i1 %385, label %387, label %389

387:                                              ; preds = %386
  %388 = load i32, ptr %353, align 4
  br label %395

389:                                              ; preds = %386
  %390 = tail call i32 %384(ptr noundef nonnull %353) #19
  %391 = load ptr, ptr %361, align 4
  %392 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %391, i32 0, i32 18
  %393 = load ptr, ptr %392, align 4
  %394 = icmp eq ptr %393, null
  br i1 %394, label %399, label %395

395:                                              ; preds = %389, %387
  %396 = phi i32 [ %388, %387 ], [ %390, %389 ]
  %397 = phi ptr [ %380, %387 ], [ %393, %389 ]
  %398 = tail call i32 %397(ptr noundef nonnull %353) #19
  br label %399

399:                                              ; preds = %395, %389
  %400 = phi i32 [ %396, %395 ], [ %390, %389 ]
  %401 = phi i32 [ %398, %395 ], [ 0, %389 ]
  %402 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %374, i32 noundef 16, ptr noundef nonnull @.str.1, ptr noundef %382, i32 noundef %400, i32 noundef %401) #19
  br label %411

403:                                              ; preds = %372
  br i1 %385, label %406, label %404

404:                                              ; preds = %403
  %405 = tail call i32 %384(ptr noundef nonnull %353) #19
  br label %408

406:                                              ; preds = %403
  %407 = load i32, ptr %353, align 4
  br label %408

408:                                              ; preds = %406, %404
  %409 = phi i32 [ %405, %404 ], [ %407, %406 ]
  %410 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %374, i32 noundef 16, ptr noundef nonnull @.str.2, ptr noundef %382, i32 noundef %409) #19
  br label %411

411:                                              ; preds = %408, %399
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %334, ptr noundef nonnull @.str.37, ptr noundef %374, ptr noundef nonnull @.str.58, i32 noundef %371, i32 noundef 1) #20
  br label %412

412:                                              ; preds = %411, %370, %370, %358
  %413 = phi i32 [ %371, %370 ], [ %371, %370 ], [ %371, %411 ], [ 0, %358 ]
  %414 = or i32 %413, %341
  %415 = add i32 %344, 1
  %416 = icmp slt i32 %415, 13
  br i1 %416, label %340, label %417

417:                                              ; preds = %412, %355
  %418 = phi i32 [ %341, %355 ], [ %414, %412 ]
  %419 = load ptr, ptr %329, align 4
  %420 = getelementptr inbounds %struct.rsnd_dai, ptr %419, i32 0, i32 3
  %421 = load ptr, ptr %420, align 4
  %422 = load ptr, ptr %421, align 4
  %423 = getelementptr inbounds %struct.platform_device, ptr %422, i32 0, i32 3
  %424 = getelementptr inbounds %struct.rsnd_dai, ptr %419, i32 0, i32 1
  %425 = icmp eq ptr %424, %26
  %426 = zext i1 %425 to i32
  %427 = getelementptr [2 x [13 x i32]], ptr @rsnd_mod_sequence, i32 0, i32 %426
  %428 = icmp eq ptr %427, null
  br label %429

429:                                              ; preds = %515, %417
  %430 = phi i32 [ 0, %417 ], [ %517, %515 ]
  %431 = phi i32 [ 0, %417 ], [ %518, %515 ]
  br label %432

432:                                              ; preds = %444, %429
  %433 = phi i32 [ %445, %444 ], [ %431, %429 ]
  br i1 %428, label %437, label %434

434:                                              ; preds = %432
  %435 = getelementptr i32, ptr %427, i32 %433
  %436 = load i32, ptr %435, align 4
  br label %437

437:                                              ; preds = %434, %432
  %438 = phi i32 [ %436, %434 ], [ %433, %432 ]
  %439 = icmp ult i32 %438, 13
  br i1 %439, label %440, label %444

440:                                              ; preds = %437
  %441 = getelementptr %struct.rsnd_dai_stream, ptr %26, i32 0, i32 2, i32 %438
  %442 = load ptr, ptr %441, align 4
  %443 = icmp eq ptr %442, null
  br i1 %443, label %444, label %447

444:                                              ; preds = %440, %437
  %445 = add i32 %433, 1
  %446 = icmp eq i32 %445, 13
  br i1 %446, label %520, label %432

447:                                              ; preds = %440
  %448 = getelementptr i32, ptr %427, i32 %433
  %449 = load i32, ptr %448, align 4
  %450 = getelementptr inbounds %struct.rsnd_mod, ptr %442, i32 0, i32 2
  %451 = load ptr, ptr %450, align 4
  %452 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %451, i32 0, i32 16
  %453 = load ptr, ptr %452, align 4
  %454 = tail call ptr %453(ptr noundef nonnull %442, ptr noundef %26, i32 noundef %449) #19
  %455 = load i32, ptr %454, align 4
  %456 = lshr i32 %455, 8
  %457 = add nuw nsw i32 %456, 15
  %458 = and i32 %457, 15
  %459 = icmp eq i32 %458, 15
  br i1 %459, label %473, label %460

460:                                              ; preds = %447
  %461 = and i32 %455, 3840
  %462 = icmp eq i32 %461, 256
  %463 = and i32 %455, -3841
  %464 = shl nuw nsw i32 %458, 8
  %465 = or i32 %464, %463
  store i32 %465, ptr %454, align 4
  br i1 %462, label %466, label %515

466:                                              ; preds = %460
  %467 = load ptr, ptr %450, align 4
  %468 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %467, i32 0, i32 7
  %469 = load ptr, ptr %468, align 4
  %470 = icmp eq ptr %469, null
  br i1 %470, label %515, label %471

471:                                              ; preds = %466
  %472 = tail call i32 %469(ptr noundef nonnull %442, ptr noundef %26, ptr noundef %7) #19
  switch i32 %472, label %473 [
    i32 -517, label %515
    i32 0, label %515
  ]

473:                                              ; preds = %471, %447
  %474 = phi i32 [ %472, %471 ], [ 0, %447 ]
  %475 = phi i32 [ 1, %471 ], [ -1, %447 ]
  %476 = load i32, ptr @rsnd_mod_name.num, align 4
  %477 = getelementptr [5 x [16 x i8]], ptr @rsnd_mod_name.names, i32 0, i32 %476
  %478 = add i32 %476, 1
  %479 = icmp sgt i32 %478, 4
  %480 = select i1 %479, i32 0, i32 %478
  store i32 %480, ptr @rsnd_mod_name.num, align 4
  %481 = load ptr, ptr %450, align 4
  %482 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %481, i32 0, i32 18
  %483 = load ptr, ptr %482, align 4
  %484 = icmp eq ptr %483, null
  %485 = load ptr, ptr %481, align 4
  %486 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %481, i32 0, i32 17
  %487 = load ptr, ptr %486, align 4
  %488 = icmp eq ptr %487, null
  br i1 %484, label %506, label %489

489:                                              ; preds = %473
  br i1 %488, label %490, label %492

490:                                              ; preds = %489
  %491 = load i32, ptr %442, align 4
  br label %498

492:                                              ; preds = %489
  %493 = tail call i32 %487(ptr noundef nonnull %442) #19
  %494 = load ptr, ptr %450, align 4
  %495 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %494, i32 0, i32 18
  %496 = load ptr, ptr %495, align 4
  %497 = icmp eq ptr %496, null
  br i1 %497, label %502, label %498

498:                                              ; preds = %492, %490
  %499 = phi i32 [ %491, %490 ], [ %493, %492 ]
  %500 = phi ptr [ %483, %490 ], [ %496, %492 ]
  %501 = tail call i32 %500(ptr noundef nonnull %442) #19
  br label %502

502:                                              ; preds = %498, %492
  %503 = phi i32 [ %499, %498 ], [ %493, %492 ]
  %504 = phi i32 [ %501, %498 ], [ 0, %492 ]
  %505 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %477, i32 noundef 16, ptr noundef nonnull @.str.1, ptr noundef %485, i32 noundef %503, i32 noundef %504) #19
  br label %514

506:                                              ; preds = %473
  br i1 %488, label %509, label %507

507:                                              ; preds = %506
  %508 = tail call i32 %487(ptr noundef nonnull %442) #19
  br label %511

509:                                              ; preds = %506
  %510 = load i32, ptr %442, align 4
  br label %511

511:                                              ; preds = %509, %507
  %512 = phi i32 [ %508, %507 ], [ %510, %509 ]
  %513 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %477, i32 noundef 16, ptr noundef nonnull @.str.2, ptr noundef %485, i32 noundef %512) #19
  br label %514

514:                                              ; preds = %511, %502
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %423, ptr noundef nonnull @.str.37, ptr noundef %477, ptr noundef nonnull @.str.59, i32 noundef %474, i32 noundef %475) #20
  br label %515

515:                                              ; preds = %514, %471, %471, %466, %460
  %516 = phi i32 [ %472, %471 ], [ %472, %471 ], [ %474, %514 ], [ 0, %460 ], [ 0, %466 ]
  %517 = or i32 %516, %430
  %518 = add i32 %433, 1
  %519 = icmp slt i32 %518, 13
  br i1 %519, label %429, label %520

520:                                              ; preds = %515, %444
  %521 = phi i32 [ %430, %444 ], [ %517, %515 ]
  %522 = or i32 %521, %418
  %523 = load ptr, ptr %329, align 4
  %524 = getelementptr inbounds %struct.rsnd_dai, ptr %523, i32 0, i32 3
  %525 = load ptr, ptr %524, align 4
  %526 = load ptr, ptr %525, align 4
  %527 = getelementptr inbounds %struct.platform_device, ptr %526, i32 0, i32 3
  %528 = getelementptr inbounds %struct.rsnd_dai, ptr %523, i32 0, i32 1
  %529 = icmp eq ptr %528, %26
  %530 = zext i1 %529 to i32
  %531 = getelementptr [2 x [13 x i32]], ptr @rsnd_mod_sequence, i32 0, i32 %530
  %532 = icmp eq ptr %531, null
  br label %533

533:                                              ; preds = %619, %520
  %534 = phi i32 [ 0, %520 ], [ %621, %619 ]
  %535 = phi i32 [ 0, %520 ], [ %622, %619 ]
  br label %536

536:                                              ; preds = %548, %533
  %537 = phi i32 [ %549, %548 ], [ %535, %533 ]
  br i1 %532, label %541, label %538

538:                                              ; preds = %536
  %539 = getelementptr i32, ptr %531, i32 %537
  %540 = load i32, ptr %539, align 4
  br label %541

541:                                              ; preds = %538, %536
  %542 = phi i32 [ %540, %538 ], [ %537, %536 ]
  %543 = icmp ult i32 %542, 13
  br i1 %543, label %544, label %548

544:                                              ; preds = %541
  %545 = getelementptr %struct.rsnd_dai_stream, ptr %26, i32 0, i32 2, i32 %542
  %546 = load ptr, ptr %545, align 4
  %547 = icmp eq ptr %546, null
  br i1 %547, label %548, label %551

548:                                              ; preds = %544, %541
  %549 = add i32 %537, 1
  %550 = icmp eq i32 %549, 13
  br i1 %550, label %624, label %536

551:                                              ; preds = %544
  %552 = getelementptr i32, ptr %531, i32 %537
  %553 = load i32, ptr %552, align 4
  %554 = getelementptr inbounds %struct.rsnd_mod, ptr %546, i32 0, i32 2
  %555 = load ptr, ptr %554, align 4
  %556 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %555, i32 0, i32 16
  %557 = load ptr, ptr %556, align 4
  %558 = tail call ptr %557(ptr noundef nonnull %546, ptr noundef %26, i32 noundef %553) #19
  %559 = load i32, ptr %558, align 4
  %560 = lshr i32 %559, 4
  %561 = add nuw nsw i32 %560, 15
  %562 = and i32 %561, 15
  %563 = icmp eq i32 %562, 15
  br i1 %563, label %577, label %564

564:                                              ; preds = %551
  %565 = and i32 %559, 240
  %566 = icmp eq i32 %565, 16
  %567 = and i32 %559, -241
  %568 = shl nuw nsw i32 %562, 4
  %569 = or i32 %568, %567
  store i32 %569, ptr %558, align 4
  br i1 %566, label %570, label %619

570:                                              ; preds = %564
  %571 = load ptr, ptr %554, align 4
  %572 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %571, i32 0, i32 5
  %573 = load ptr, ptr %572, align 4
  %574 = icmp eq ptr %573, null
  br i1 %574, label %619, label %575

575:                                              ; preds = %570
  %576 = tail call i32 %573(ptr noundef nonnull %546, ptr noundef %26, ptr noundef %7) #19
  switch i32 %576, label %577 [
    i32 -517, label %619
    i32 0, label %619
  ]

577:                                              ; preds = %575, %551
  %578 = phi i32 [ %576, %575 ], [ 0, %551 ]
  %579 = phi i32 [ 1, %575 ], [ -1, %551 ]
  %580 = load i32, ptr @rsnd_mod_name.num, align 4
  %581 = getelementptr [5 x [16 x i8]], ptr @rsnd_mod_name.names, i32 0, i32 %580
  %582 = add i32 %580, 1
  %583 = icmp sgt i32 %582, 4
  %584 = select i1 %583, i32 0, i32 %582
  store i32 %584, ptr @rsnd_mod_name.num, align 4
  %585 = load ptr, ptr %554, align 4
  %586 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %585, i32 0, i32 18
  %587 = load ptr, ptr %586, align 4
  %588 = icmp eq ptr %587, null
  %589 = load ptr, ptr %585, align 4
  %590 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %585, i32 0, i32 17
  %591 = load ptr, ptr %590, align 4
  %592 = icmp eq ptr %591, null
  br i1 %588, label %610, label %593

593:                                              ; preds = %577
  br i1 %592, label %594, label %596

594:                                              ; preds = %593
  %595 = load i32, ptr %546, align 4
  br label %602

596:                                              ; preds = %593
  %597 = tail call i32 %591(ptr noundef nonnull %546) #19
  %598 = load ptr, ptr %554, align 4
  %599 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %598, i32 0, i32 18
  %600 = load ptr, ptr %599, align 4
  %601 = icmp eq ptr %600, null
  br i1 %601, label %606, label %602

602:                                              ; preds = %596, %594
  %603 = phi i32 [ %595, %594 ], [ %597, %596 ]
  %604 = phi ptr [ %587, %594 ], [ %600, %596 ]
  %605 = tail call i32 %604(ptr noundef nonnull %546) #19
  br label %606

606:                                              ; preds = %602, %596
  %607 = phi i32 [ %603, %602 ], [ %597, %596 ]
  %608 = phi i32 [ %605, %602 ], [ 0, %596 ]
  %609 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %581, i32 noundef 16, ptr noundef nonnull @.str.1, ptr noundef %589, i32 noundef %607, i32 noundef %608) #19
  br label %618

610:                                              ; preds = %577
  br i1 %592, label %613, label %611

611:                                              ; preds = %610
  %612 = tail call i32 %591(ptr noundef nonnull %546) #19
  br label %615

613:                                              ; preds = %610
  %614 = load i32, ptr %546, align 4
  br label %615

615:                                              ; preds = %613, %611
  %616 = phi i32 [ %612, %611 ], [ %614, %613 ]
  %617 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %581, i32 noundef 16, ptr noundef nonnull @.str.2, ptr noundef %589, i32 noundef %616) #19
  br label %618

618:                                              ; preds = %615, %606
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %527, ptr noundef nonnull @.str.37, ptr noundef %581, ptr noundef nonnull @.str.60, i32 noundef %578, i32 noundef %579) #20
  br label %619

619:                                              ; preds = %618, %575, %575, %570, %564
  %620 = phi i32 [ %576, %575 ], [ %576, %575 ], [ %578, %618 ], [ 0, %564 ], [ 0, %570 ]
  %621 = or i32 %620, %534
  %622 = add i32 %537, 1
  %623 = icmp slt i32 %622, 13
  br i1 %623, label %533, label %624

624:                                              ; preds = %619, %548
  %625 = phi i32 [ %534, %548 ], [ %621, %619 ]
  %626 = or i32 %522, %625
  br label %627

627:                                              ; preds = %624, %323, %266, %237, %132, %19
  %628 = phi i32 [ %626, %624 ], [ %133, %132 ], [ %238, %237 ], [ -22, %19 ], [ %252, %266 ], [ %325, %323 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %27, i32 noundef %28) #19
  ret i32 %628
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_set_runtime_hwparams(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_list(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_integer(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_rule_add(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_soc_hw_rule_rate(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.snd_interval, align 4
  %4 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 2
  %5 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #19
  %6 = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %1, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef align 4 dereferenceable(12) %4, i32 12, i1 false)
  %10 = tail call i32 @rsnd_runtime_channel_for_ssi_with_params(ptr noundef %7, ptr noundef %0)
  %11 = getelementptr inbounds %struct.snd_interval, ptr %3, i32 0, i32 1
  store i32 %10, ptr %11, align 4
  store i32 %10, ptr %3, align 4
  %12 = call fastcc i32 @rsnd_soc_hw_rule(ptr noundef %9, ptr noundef nonnull @rsnd_soc_hw_rate_list, i32 noundef 12, ptr noundef nonnull %3, ptr noundef %5)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #19
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_soc_hw_rule_channels(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.snd_interval, align 4
  %4 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 2
  %5 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #19
  %6 = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %1, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef align 4 dereferenceable(12) %4, i32 12, i1 false)
  %10 = tail call i32 @rsnd_runtime_channel_for_ssi_with_params(ptr noundef %7, ptr noundef %0)
  %11 = getelementptr inbounds %struct.snd_interval, ptr %3, i32 0, i32 1
  store i32 %10, ptr %11, align 4
  store i32 %10, ptr %3, align 4
  %12 = call fastcc i32 @rsnd_soc_hw_rule(ptr noundef %9, ptr noundef nonnull @rsnd_soc_hw_channels_list, i32 noundef 3, ptr noundef %5, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #19
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rsnd_soc_hw_rule(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.snd_interval, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #19
  %7 = getelementptr inbounds i8, ptr %6, i32 8
  store i32 0, ptr %7, align 4
  %8 = icmp sgt i32 %2, 0
  br i1 %8, label %9, label %57

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.snd_interval, ptr %4, i32 0, i32 2
  %11 = getelementptr inbounds %struct.snd_interval, ptr %4, i32 0, i32 1
  %12 = getelementptr inbounds %struct.snd_interval, ptr %3, i32 0, i32 1
  br label %13

13:                                               ; preds = %52, %9
  %14 = phi i32 [ 0, %9 ], [ %55, %52 ]
  %15 = phi i32 [ -1, %9 ], [ %54, %52 ]
  %16 = phi i32 [ 0, %9 ], [ %53, %52 ]
  %17 = getelementptr i32, ptr %1, i32 %14
  %18 = load i32, ptr %17, align 4
  %19 = load i32, ptr %4, align 4
  %20 = icmp ugt i32 %19, %18
  br i1 %20, label %52, label %21

21:                                               ; preds = %13
  %22 = icmp eq i32 %19, %18
  br i1 %22, label %23, label %27

23:                                               ; preds = %21
  %24 = load i8, ptr %10, align 4
  %25 = and i8 %24, 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %52

27:                                               ; preds = %23, %21
  %28 = load i32, ptr %11, align 4
  %29 = icmp ult i32 %28, %18
  br i1 %29, label %52, label %30

30:                                               ; preds = %27
  %31 = icmp eq i32 %28, %18
  br i1 %31, label %32, label %36

32:                                               ; preds = %30
  %33 = load i8, ptr %10, align 4
  %34 = and i8 %33, 2
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %32, %30
  %37 = load i32, ptr %3, align 4
  %38 = tail call i32 @rsnd_ssi_clk_query(ptr noundef %0, i32 noundef %37, i32 noundef %18, ptr noundef null) #19
  %39 = icmp eq i32 %38, 0
  %40 = load i32, ptr %17, align 4
  %41 = tail call i32 @llvm.umin.i32(i32 %15, i32 %40)
  %42 = tail call i32 @llvm.umax.i32(i32 %16, i32 %40)
  %43 = select i1 %39, i32 %16, i32 %42
  %44 = select i1 %39, i32 %15, i32 %41
  %45 = load i32, ptr %12, align 4
  %46 = tail call i32 @rsnd_ssi_clk_query(ptr noundef %0, i32 noundef %45, i32 noundef %40, ptr noundef null) #19
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %36
  %49 = load i32, ptr %17, align 4
  %50 = tail call i32 @llvm.umin.i32(i32 %44, i32 %49)
  %51 = tail call i32 @llvm.umax.i32(i32 %43, i32 %49)
  br label %52

52:                                               ; preds = %48, %36, %32, %27, %23, %13
  %53 = phi i32 [ %16, %13 ], [ %16, %23 ], [ %16, %27 ], [ %43, %36 ], [ %51, %48 ], [ %16, %32 ]
  %54 = phi i32 [ %15, %13 ], [ %15, %23 ], [ %15, %27 ], [ %44, %36 ], [ %50, %48 ], [ %15, %32 ]
  %55 = add nuw nsw i32 %14, 1
  %56 = icmp eq i32 %55, %2
  br i1 %56, label %57, label %13

57:                                               ; preds = %52, %5
  %58 = phi i32 [ 0, %5 ], [ %53, %52 ]
  %59 = phi i32 [ -1, %5 ], [ %54, %52 ]
  %60 = getelementptr inbounds %struct.snd_interval, ptr %6, i32 0, i32 1
  store i32 %59, ptr %6, align 4
  store i32 %58, ptr %60, align 4
  %61 = call i32 @snd_interval_refine(ptr noundef %4, ptr noundef nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #19
  ret i32 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_ssi_clk_query(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_interval_refine(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_port_parent(ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rsnd_parse_tdm_split_mode(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.of_phandle_args, align 4
  %5 = alloca %struct.of_phandle_args, align 4
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = tail call ptr @of_get_child_by_name(ptr noundef %8, ptr noundef nonnull @.str.64) #19
  %10 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %1, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.rsnd_dai, ptr %11, i32 0, i32 1
  %13 = icmp eq ptr %12, %1
  %14 = icmp eq ptr %9, null
  br i1 %14, label %45, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %1, i32 0, i32 9
  br label %17

17:                                               ; preds = %42, %15
  %18 = phi i32 [ %43, %42 ], [ 0, %15 ]
  br i1 %13, label %19, label %23

19:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %5, i8 0, i32 72, i1 false) #19, !annotation !9
  %20 = call i32 @__of_parse_phandle_with_args(ptr noundef %2, ptr noundef nonnull @.str.43, ptr noundef null, i32 noundef 0, i32 noundef %18, ptr noundef nonnull %5) #19
  %21 = icmp eq i32 %20, 0
  %22 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #19
  br i1 %21, label %27, label %44

23:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #19, !annotation !9
  %24 = call i32 @__of_parse_phandle_with_args(ptr noundef %2, ptr noundef nonnull @.str.44, ptr noundef null, i32 noundef 0, i32 noundef %18, ptr noundef nonnull %4) #19
  %25 = icmp eq i32 %24, 0
  %26 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #19
  br i1 %25, label %27, label %44

27:                                               ; preds = %23, %19
  %28 = phi ptr [ %22, %19 ], [ %26, %23 ]
  %29 = icmp eq ptr %28, null
  br i1 %29, label %44, label %30

30:                                               ; preds = %27
  %31 = call ptr @of_get_next_child(ptr noundef nonnull %9, ptr noundef null) #19
  %32 = icmp eq ptr %31, null
  br i1 %32, label %42, label %33

33:                                               ; preds = %39, %30
  %34 = phi ptr [ %40, %39 ], [ %31, %30 ]
  %35 = icmp eq ptr %34, %28
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, ptr %16, align 4
  %38 = or i32 %37, 4
  store i32 %38, ptr %16, align 4
  br label %39

39:                                               ; preds = %36, %33
  %40 = call ptr @of_get_next_child(ptr noundef nonnull %9, ptr noundef nonnull %34) #19
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %33

42:                                               ; preds = %39, %30
  call void @of_node_put(ptr noundef nonnull %28) #19
  %43 = add i32 %18, 1
  br label %17

44:                                               ; preds = %27, %23, %19
  call void @of_node_put(ptr noundef nonnull %9) #19
  br label %45

45:                                               ; preds = %44, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_debugfs_probe(ptr noundef) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_hw_params(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.snd_soc_dai, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 8
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dai, ptr %8, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.rsnd_priv, ptr %12, i32 0, i32 22
  %18 = load i32, ptr %17, align 4
  %19 = icmp sgt i32 %18, %14
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.rsnd_priv, ptr %12, i32 0, i32 21
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr %struct.rsnd_dai, ptr %22, i32 %14
  br label %24

24:                                               ; preds = %20, %16, %3
  %25 = phi ptr [ %23, %20 ], [ null, %16 ], [ null, %3 ]
  %26 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  %29 = getelementptr inbounds %struct.rsnd_dai, ptr %25, i32 0, i32 1
  %30 = getelementptr inbounds %struct.rsnd_dai, ptr %25, i32 0, i32 2
  %31 = select i1 %28, ptr %29, ptr %30
  %32 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %31, i32 0, i32 6
  store i32 0, ptr %32, align 4
  %33 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %31, i32 0, i32 7
  store i32 0, ptr %33, align 4
  %34 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %5, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %35, i32 0, i32 18
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, 256
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %122, label %40

40:                                               ; preds = %24
  %41 = load i32, ptr %26, align 4
  %42 = getelementptr %struct.snd_soc_pcm_runtime, ptr %5, i32 0, i32 5, i32 %41
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, %42
  br i1 %44, label %122, label %45

45:                                               ; preds = %40
  %46 = getelementptr %struct.snd_pcm_hw_params, ptr %2, i32 0, i32 3, i32 2
  %47 = getelementptr %struct.snd_pcm_hw_params, ptr %2, i32 0, i32 3, i32 3
  br label %48

48:                                               ; preds = %64, %45
  %49 = phi i32 [ 0, %45 ], [ %58, %64 ]
  %50 = phi i32 [ 0, %45 ], [ %65, %64 ]
  %51 = phi ptr [ %43, %45 ], [ %66, %64 ]
  %52 = load i32, ptr %46, align 4
  %53 = getelementptr i8, ptr %51, i32 300
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %57, label %56

56:                                               ; preds = %48
  store i32 %54, ptr %33, align 4
  br label %57

57:                                               ; preds = %56, %48
  %58 = phi i32 [ %54, %56 ], [ %49, %48 ]
  %59 = load i32, ptr %47, align 4
  %60 = getelementptr i8, ptr %51, i32 312
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %64, label %63

63:                                               ; preds = %57
  store i32 %61, ptr %32, align 4
  br label %64

64:                                               ; preds = %63, %57
  %65 = phi i32 [ %61, %63 ], [ %50, %57 ]
  %66 = load ptr, ptr %51, align 4
  %67 = icmp eq ptr %66, %42
  br i1 %67, label %68, label %48

68:                                               ; preds = %64
  %69 = icmp eq i32 %65, 0
  br i1 %69, label %122, label %70

70:                                               ; preds = %68
  %71 = getelementptr %struct.rsnd_dai_stream, ptr %31, i32 0, i32 2, i32 6
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq i32 %58, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = getelementptr %struct.snd_pcm_hw_params, ptr %2, i32 0, i32 3, i32 2
  %76 = load i32, ptr %75, align 4
  br label %77

77:                                               ; preds = %74, %70
  %78 = phi i32 [ %76, %74 ], [ %58, %70 ]
  %79 = getelementptr inbounds %struct.rsnd_mod, ptr %72, i32 0, i32 2
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %80, i32 0, i32 17
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %77
  %85 = tail call i32 %82(ptr noundef %72) #19
  br label %88

86:                                               ; preds = %77
  %87 = load i32, ptr %72, align 4
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi i32 [ %85, %84 ], [ %87, %86 ]
  switch i32 %89, label %95 [
    i32 1, label %90
    i32 3, label %90
    i32 4, label %90
    i32 0, label %92
  ]

90:                                               ; preds = %88, %88, %88
  %91 = icmp sgt i32 %78, 4
  br i1 %91, label %97, label %92

92:                                               ; preds = %90, %88
  %93 = icmp sgt i32 %78, 2
  %94 = select i1 %93, i32 4, i32 6
  br label %97

95:                                               ; preds = %88
  %96 = icmp sgt i32 %78, 2
  br i1 %96, label %124, label %97

97:                                               ; preds = %95, %92, %90
  %98 = phi i32 [ 6, %95 ], [ 2, %90 ], [ %94, %92 ]
  %99 = getelementptr %struct.snd_pcm_hw_params, ptr %2, i32 0, i32 3, i32 3
  %100 = load i32, ptr %99, align 4
  %101 = load i32, ptr %32, align 4
  %102 = mul i32 %101, %98
  %103 = icmp ugt i32 %100, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %97
  store i32 %102, ptr %99, align 4
  %105 = load i32, ptr %32, align 4
  %106 = mul i32 %105, %98
  br label %116

107:                                              ; preds = %97
  %108 = mul i32 %100, 6
  %109 = icmp ult i32 %108, %101
  br i1 %109, label %110, label %122

110:                                              ; preds = %107
  %111 = add i32 %101, 5
  %112 = udiv i32 %111, 6
  store i32 %112, ptr %99, align 4
  %113 = load i32, ptr %32, align 4
  %114 = add i32 %113, 5
  %115 = udiv i32 %114, 6
  br label %116

116:                                              ; preds = %110, %104
  %117 = phi i32 [ %115, %110 ], [ %106, %104 ]
  %118 = getelementptr %struct.snd_pcm_hw_params, ptr %2, i32 0, i32 3, i32 3, i32 1
  store i32 %117, ptr %118, align 4
  %119 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %2, i32 0, i32 6
  %120 = load i32, ptr %119, align 4
  %121 = or i32 %120, 11
  store i32 %121, ptr %119, align 4
  br label %122

122:                                              ; preds = %116, %107, %68, %40, %24
  %123 = tail call fastcc i32 @rsnd_hw_update(ptr noundef %1, ptr noundef %2)
  br label %124

124:                                              ; preds = %122, %95
  %125 = phi i32 [ %123, %122 ], [ -22, %95 ]
  ret i32 %125
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_hw_free(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = tail call fastcc i32 @rsnd_hw_update(ptr noundef %1, ptr noundef null)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_pointer(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.snd_soc_dai, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 8
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dai, ptr %8, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.rsnd_priv, ptr %12, i32 0, i32 22
  %18 = load i32, ptr %17, align 4
  %19 = icmp sgt i32 %18, %14
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.rsnd_priv, ptr %12, i32 0, i32 21
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr %struct.rsnd_dai, ptr %22, i32 %14
  br label %24

24:                                               ; preds = %20, %16, %2
  %25 = phi ptr [ %23, %20 ], [ null, %16 ], [ null, %2 ]
  %26 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  %29 = getelementptr inbounds %struct.rsnd_dai, ptr %25, i32 0, i32 1
  %30 = getelementptr inbounds %struct.rsnd_dai, ptr %25, i32 0, i32 2
  %31 = select i1 %28, ptr %29, ptr %30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #19
  store i32 0, ptr %3, align 4
  %32 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %31, i32 0, i32 4
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.rsnd_dai, ptr %33, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.platform_device, ptr %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.rsnd_dai, ptr %33, i32 0, i32 1
  %39 = icmp eq ptr %38, %31
  %40 = zext i1 %39 to i32
  %41 = getelementptr [2 x [13 x i32]], ptr @rsnd_mod_sequence, i32 0, i32 %40
  %42 = icmp eq ptr %41, null
  br label %43

43:                                               ; preds = %58, %24
  %44 = phi i32 [ 0, %24 ], [ %59, %58 ]
  br i1 %42, label %48, label %45

45:                                               ; preds = %43
  %46 = getelementptr i32, ptr %41, i32 %44
  %47 = load i32, ptr %46, align 4
  br label %48

48:                                               ; preds = %45, %43
  %49 = phi i32 [ %47, %45 ], [ %44, %43 ]
  %50 = icmp ult i32 %49, 13
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = getelementptr %struct.rsnd_dai_stream, ptr %31, i32 0, i32 2, i32 %49
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %51, %48
  %56 = add i32 %44, 1
  %57 = icmp eq i32 %56, 13
  br i1 %57, label %117, label %58

58:                                               ; preds = %114, %55
  %59 = phi i32 [ %56, %55 ], [ %115, %114 ]
  br label %43

60:                                               ; preds = %51
  %61 = getelementptr i32, ptr %41, i32 %44
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds %struct.rsnd_mod, ptr %53, i32 0, i32 2
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %64, i32 0, i32 16
  %66 = load ptr, ptr %65, align 4
  %67 = call ptr %66(ptr noundef nonnull %53, ptr noundef %31, i32 noundef %62) #19
  %68 = load ptr, ptr %63, align 4
  %69 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %68, i32 0, i32 11
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %114, label %72

72:                                               ; preds = %60
  %73 = call i32 %70(ptr noundef nonnull %53, ptr noundef %31, ptr noundef nonnull %3) #19
  switch i32 %73, label %74 [
    i32 -517, label %114
    i32 0, label %114
  ]

74:                                               ; preds = %72
  %75 = load i32, ptr @rsnd_mod_name.num, align 4
  %76 = getelementptr [5 x [16 x i8]], ptr @rsnd_mod_name.names, i32 0, i32 %75
  %77 = add i32 %75, 1
  %78 = icmp sgt i32 %77, 4
  %79 = select i1 %78, i32 0, i32 %77
  store i32 %79, ptr @rsnd_mod_name.num, align 4
  %80 = load ptr, ptr %63, align 4
  %81 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %80, i32 0, i32 18
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  %84 = load ptr, ptr %80, align 4
  %85 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %80, i32 0, i32 17
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %83, label %105, label %88

88:                                               ; preds = %74
  br i1 %87, label %89, label %91

89:                                               ; preds = %88
  %90 = load i32, ptr %53, align 4
  br label %97

91:                                               ; preds = %88
  %92 = call i32 %86(ptr noundef nonnull %53) #19
  %93 = load ptr, ptr %63, align 4
  %94 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %93, i32 0, i32 18
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %101, label %97

97:                                               ; preds = %91, %89
  %98 = phi i32 [ %90, %89 ], [ %92, %91 ]
  %99 = phi ptr [ %82, %89 ], [ %95, %91 ]
  %100 = call i32 %99(ptr noundef nonnull %53) #19
  br label %101

101:                                              ; preds = %97, %91
  %102 = phi i32 [ %98, %97 ], [ %92, %91 ]
  %103 = phi i32 [ %100, %97 ], [ 0, %91 ]
  %104 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %76, i32 noundef 16, ptr noundef nonnull @.str.1, ptr noundef %84, i32 noundef %102, i32 noundef %103) #19
  br label %113

105:                                              ; preds = %74
  br i1 %87, label %108, label %106

106:                                              ; preds = %105
  %107 = call i32 %86(ptr noundef nonnull %53) #19
  br label %110

108:                                              ; preds = %105
  %109 = load i32, ptr %53, align 4
  br label %110

110:                                              ; preds = %108, %106
  %111 = phi i32 [ %107, %106 ], [ %109, %108 ]
  %112 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %76, i32 noundef 16, ptr noundef nonnull @.str.2, ptr noundef %84, i32 noundef %111) #19
  br label %113

113:                                              ; preds = %110, %101
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.37, ptr noundef %76, ptr noundef nonnull @.str.70, i32 noundef %73, i32 noundef 1) #20
  br label %114

114:                                              ; preds = %113, %72, %72, %60
  %115 = add i32 %44, 1
  %116 = icmp slt i32 %115, 13
  br i1 %116, label %58, label %117

117:                                              ; preds = %114, %55
  %118 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #19
  ret i32 %118
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rsnd_hw_update(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %4, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_soc_dai, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dai, ptr %7, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.rsnd_priv, ptr %11, i32 0, i32 22
  %17 = load i32, ptr %16, align 4
  %18 = icmp sgt i32 %17, %13
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.rsnd_priv, ptr %11, i32 0, i32 21
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr %struct.rsnd_dai, ptr %21, i32 %13
  br label %23

23:                                               ; preds = %19, %15, %2
  %24 = phi ptr [ %22, %19 ], [ null, %15 ], [ null, %2 ]
  %25 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  %28 = getelementptr inbounds %struct.rsnd_dai, ptr %24, i32 0, i32 1
  %29 = getelementptr inbounds %struct.rsnd_dai, ptr %24, i32 0, i32 2
  %30 = select i1 %27, ptr %28, ptr %29
  %31 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %30, i32 0, i32 4
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.rsnd_dai, ptr %32, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.rsnd_priv, ptr %34, i32 0, i32 1
  %36 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %35) #19
  %37 = icmp eq ptr %1, null
  %38 = load ptr, ptr %31, align 4
  %39 = getelementptr inbounds %struct.rsnd_dai, ptr %38, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.platform_device, ptr %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.rsnd_dai, ptr %38, i32 0, i32 1
  %44 = icmp eq ptr %43, %30
  %45 = zext i1 %44 to i32
  %46 = getelementptr [2 x [13 x i32]], ptr @rsnd_mod_sequence, i32 0, i32 %45
  %47 = icmp eq ptr %46, null
  br i1 %37, label %139, label %48

48:                                               ; preds = %134, %23
  %49 = phi i32 [ %136, %134 ], [ 0, %23 ]
  %50 = phi i32 [ %137, %134 ], [ 0, %23 ]
  br label %51

51:                                               ; preds = %63, %48
  %52 = phi i32 [ %64, %63 ], [ %50, %48 ]
  br i1 %47, label %56, label %53

53:                                               ; preds = %51
  %54 = getelementptr i32, ptr %46, i32 %52
  %55 = load i32, ptr %54, align 4
  br label %56

56:                                               ; preds = %53, %51
  %57 = phi i32 [ %55, %53 ], [ %52, %51 ]
  %58 = icmp ult i32 %57, 13
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = getelementptr %struct.rsnd_dai_stream, ptr %30, i32 0, i32 2, i32 %57
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %59, %56
  %64 = add i32 %52, 1
  %65 = icmp eq i32 %64, 13
  br i1 %65, label %230, label %51

66:                                               ; preds = %59
  %67 = getelementptr i32, ptr %46, i32 %52
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr inbounds %struct.rsnd_mod, ptr %61, i32 0, i32 2
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %70, i32 0, i32 16
  %72 = load ptr, ptr %71, align 4
  %73 = tail call ptr %72(ptr noundef nonnull %61, ptr noundef %30, i32 noundef %68) #19
  %74 = load i32, ptr %73, align 4
  %75 = lshr i32 %74, 12
  %76 = add nuw nsw i32 %75, 1
  %77 = and i32 %76, 15
  %78 = icmp eq i32 %77, 15
  br i1 %78, label %92, label %79

79:                                               ; preds = %66
  %80 = and i32 %74, 61440
  %81 = icmp eq i32 %80, 0
  %82 = and i32 %74, -61441
  %83 = shl nuw nsw i32 %77, 12
  %84 = or i32 %83, %82
  store i32 %84, ptr %73, align 4
  br i1 %81, label %85, label %134

85:                                               ; preds = %79
  %86 = load ptr, ptr %69, align 4
  %87 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %86, i32 0, i32 10
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %134, label %90

90:                                               ; preds = %85
  %91 = tail call i32 %88(ptr noundef nonnull %61, ptr noundef %30, ptr noundef %0, ptr noundef nonnull %1) #19
  switch i32 %91, label %92 [
    i32 -517, label %134
    i32 0, label %134
  ]

92:                                               ; preds = %90, %66
  %93 = phi i32 [ %91, %90 ], [ 0, %66 ]
  %94 = phi i32 [ 1, %90 ], [ -1, %66 ]
  %95 = load i32, ptr @rsnd_mod_name.num, align 4
  %96 = getelementptr [5 x [16 x i8]], ptr @rsnd_mod_name.names, i32 0, i32 %95
  %97 = add i32 %95, 1
  %98 = icmp sgt i32 %97, 4
  %99 = select i1 %98, i32 0, i32 %97
  store i32 %99, ptr @rsnd_mod_name.num, align 4
  %100 = load ptr, ptr %69, align 4
  %101 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %100, i32 0, i32 18
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  %104 = load ptr, ptr %100, align 4
  %105 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %100, i32 0, i32 17
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %103, label %125, label %108

108:                                              ; preds = %92
  br i1 %107, label %109, label %111

109:                                              ; preds = %108
  %110 = load i32, ptr %61, align 4
  br label %117

111:                                              ; preds = %108
  %112 = tail call i32 %106(ptr noundef nonnull %61) #19
  %113 = load ptr, ptr %69, align 4
  %114 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %113, i32 0, i32 18
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %121, label %117

117:                                              ; preds = %111, %109
  %118 = phi i32 [ %110, %109 ], [ %112, %111 ]
  %119 = phi ptr [ %102, %109 ], [ %115, %111 ]
  %120 = tail call i32 %119(ptr noundef nonnull %61) #19
  br label %121

121:                                              ; preds = %117, %111
  %122 = phi i32 [ %118, %117 ], [ %112, %111 ]
  %123 = phi i32 [ %120, %117 ], [ 0, %111 ]
  %124 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %96, i32 noundef 16, ptr noundef nonnull @.str.1, ptr noundef %104, i32 noundef %122, i32 noundef %123) #19
  br label %133

125:                                              ; preds = %92
  br i1 %107, label %128, label %126

126:                                              ; preds = %125
  %127 = tail call i32 %106(ptr noundef nonnull %61) #19
  br label %130

128:                                              ; preds = %125
  %129 = load i32, ptr %61, align 4
  br label %130

130:                                              ; preds = %128, %126
  %131 = phi i32 [ %127, %126 ], [ %129, %128 ]
  %132 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %96, i32 noundef 16, ptr noundef nonnull @.str.2, ptr noundef %104, i32 noundef %131) #19
  br label %133

133:                                              ; preds = %130, %121
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.37, ptr noundef %96, ptr noundef nonnull @.str.68, i32 noundef %93, i32 noundef %94) #20
  br label %134

134:                                              ; preds = %133, %90, %90, %85, %79
  %135 = phi i32 [ %91, %90 ], [ %91, %90 ], [ %93, %133 ], [ 0, %79 ], [ 0, %85 ]
  %136 = or i32 %135, %49
  %137 = add i32 %52, 1
  %138 = icmp slt i32 %137, 13
  br i1 %138, label %48, label %230

139:                                              ; preds = %225, %23
  %140 = phi i32 [ %227, %225 ], [ 0, %23 ]
  %141 = phi i32 [ %228, %225 ], [ 0, %23 ]
  br label %142

142:                                              ; preds = %154, %139
  %143 = phi i32 [ %155, %154 ], [ %141, %139 ]
  br i1 %47, label %147, label %144

144:                                              ; preds = %142
  %145 = getelementptr i32, ptr %46, i32 %143
  %146 = load i32, ptr %145, align 4
  br label %147

147:                                              ; preds = %144, %142
  %148 = phi i32 [ %146, %144 ], [ %143, %142 ]
  %149 = icmp ult i32 %148, 13
  br i1 %149, label %150, label %154

150:                                              ; preds = %147
  %151 = getelementptr %struct.rsnd_dai_stream, ptr %30, i32 0, i32 2, i32 %148
  %152 = load ptr, ptr %151, align 4
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %157

154:                                              ; preds = %150, %147
  %155 = add i32 %143, 1
  %156 = icmp eq i32 %155, 13
  br i1 %156, label %230, label %142

157:                                              ; preds = %150
  %158 = getelementptr i32, ptr %46, i32 %143
  %159 = load i32, ptr %158, align 4
  %160 = getelementptr inbounds %struct.rsnd_mod, ptr %152, i32 0, i32 2
  %161 = load ptr, ptr %160, align 4
  %162 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %161, i32 0, i32 16
  %163 = load ptr, ptr %162, align 4
  %164 = tail call ptr %163(ptr noundef nonnull %152, ptr noundef %30, i32 noundef %159) #19
  %165 = load i32, ptr %164, align 4
  %166 = lshr i32 %165, 12
  %167 = add nuw nsw i32 %166, 15
  %168 = and i32 %167, 15
  %169 = icmp eq i32 %168, 15
  br i1 %169, label %183, label %170

170:                                              ; preds = %157
  %171 = and i32 %165, 61440
  %172 = icmp eq i32 %171, 4096
  %173 = and i32 %165, -61441
  %174 = shl nuw nsw i32 %168, 12
  %175 = or i32 %174, %173
  store i32 %175, ptr %164, align 4
  br i1 %172, label %176, label %225

176:                                              ; preds = %170
  %177 = load ptr, ptr %160, align 4
  %178 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %177, i32 0, i32 15
  %179 = load ptr, ptr %178, align 4
  %180 = icmp eq ptr %179, null
  br i1 %180, label %225, label %181

181:                                              ; preds = %176
  %182 = tail call i32 %179(ptr noundef nonnull %152, ptr noundef %30, ptr noundef %0) #19
  switch i32 %182, label %183 [
    i32 -517, label %225
    i32 0, label %225
  ]

183:                                              ; preds = %181, %157
  %184 = phi i32 [ %182, %181 ], [ 0, %157 ]
  %185 = phi i32 [ 1, %181 ], [ -1, %157 ]
  %186 = load i32, ptr @rsnd_mod_name.num, align 4
  %187 = getelementptr [5 x [16 x i8]], ptr @rsnd_mod_name.names, i32 0, i32 %186
  %188 = add i32 %186, 1
  %189 = icmp sgt i32 %188, 4
  %190 = select i1 %189, i32 0, i32 %188
  store i32 %190, ptr @rsnd_mod_name.num, align 4
  %191 = load ptr, ptr %160, align 4
  %192 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %191, i32 0, i32 18
  %193 = load ptr, ptr %192, align 4
  %194 = icmp eq ptr %193, null
  %195 = load ptr, ptr %191, align 4
  %196 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %191, i32 0, i32 17
  %197 = load ptr, ptr %196, align 4
  %198 = icmp eq ptr %197, null
  br i1 %194, label %216, label %199

199:                                              ; preds = %183
  br i1 %198, label %200, label %202

200:                                              ; preds = %199
  %201 = load i32, ptr %152, align 4
  br label %208

202:                                              ; preds = %199
  %203 = tail call i32 %197(ptr noundef nonnull %152) #19
  %204 = load ptr, ptr %160, align 4
  %205 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %204, i32 0, i32 18
  %206 = load ptr, ptr %205, align 4
  %207 = icmp eq ptr %206, null
  br i1 %207, label %212, label %208

208:                                              ; preds = %202, %200
  %209 = phi i32 [ %201, %200 ], [ %203, %202 ]
  %210 = phi ptr [ %193, %200 ], [ %206, %202 ]
  %211 = tail call i32 %210(ptr noundef nonnull %152) #19
  br label %212

212:                                              ; preds = %208, %202
  %213 = phi i32 [ %209, %208 ], [ %203, %202 ]
  %214 = phi i32 [ %211, %208 ], [ 0, %202 ]
  %215 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %187, i32 noundef 16, ptr noundef nonnull @.str.1, ptr noundef %195, i32 noundef %213, i32 noundef %214) #19
  br label %224

216:                                              ; preds = %183
  br i1 %198, label %219, label %217

217:                                              ; preds = %216
  %218 = tail call i32 %197(ptr noundef nonnull %152) #19
  br label %221

219:                                              ; preds = %216
  %220 = load i32, ptr %152, align 4
  br label %221

221:                                              ; preds = %219, %217
  %222 = phi i32 [ %218, %217 ], [ %220, %219 ]
  %223 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %187, i32 noundef 16, ptr noundef nonnull @.str.2, ptr noundef %195, i32 noundef %222) #19
  br label %224

224:                                              ; preds = %221, %212
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.37, ptr noundef %187, ptr noundef nonnull @.str.69, i32 noundef %184, i32 noundef %185) #20
  br label %225

225:                                              ; preds = %224, %181, %181, %176, %170
  %226 = phi i32 [ %182, %181 ], [ %182, %181 ], [ %184, %224 ], [ 0, %170 ], [ 0, %176 ]
  %227 = or i32 %226, %140
  %228 = add i32 %143, 1
  %229 = icmp slt i32 %228, 13
  br i1 %229, label %139, label %230

230:                                              ; preds = %225, %154, %134, %63
  %231 = phi i32 [ %140, %154 ], [ %227, %225 ], [ %49, %63 ], [ %136, %134 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %35, i32 noundef %36) #19
  ret i32 %231
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_ssi_remove(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_ssiu_remove(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_src_remove(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_ctu_remove(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_mix_remove(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_dvc_remove(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_cmd_remove(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @rsnd_adg_clk_control(ptr noundef %3, i32 noundef 0) #19
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @rsnd_adg_clk_control(ptr noundef %3, i32 noundef 1) #19
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_adg_clk_control(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #17

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly nofree nounwind willreturn writeonly }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { argmemonly nofree nounwind willreturn }
attributes #17 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #18 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #19 = { nounwind }
attributes #20 = { cold nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"auto-init"}
