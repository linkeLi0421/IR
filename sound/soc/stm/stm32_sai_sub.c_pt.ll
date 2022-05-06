; ModuleID = '/llk/IR/sound/soc/stm/stm32_sai_sub.c_pt.bc'
source_filename = "../sound/soc/stm/stm32_sai_sub.c"
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
%struct.snd_dmaengine_pcm_config = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], ptr, i32 }
%struct.lock_class_key = type {}
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.88, ptr }
%union.anon.88 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.80, i32 }
%union.anon.80 = type { ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.stm32_sai_sub_data = type { ptr, ptr, ptr, %struct.snd_dmaengine_dai_dma_data, %struct.snd_soc_dai_driver, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.snd_aes_iec958, %struct.mutex, %struct.spinlock }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.snd_aes_iec958 = type { [24 x i8], [147 x i8], i8, [4 x i8] }
%struct.stm32_sai_data = type { ptr, ptr, ptr, ptr, ptr, %struct.stm32_sai_conf, i32, ptr, i32 }
%struct.stm32_sai_conf = type { i32, i32, i8 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.stm32_sai_mclk_data = type { %struct.clk_hw, i32, ptr }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8 }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, ptr, ptr, %struct.device }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.70, [64 x i8] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.70 = type { %struct.anon.73, [40 x i8] }
%struct.anon.73 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.79, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%union.anon.79 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.74, [128 x i8] }
%union.anon.74 = type { %union.anon.76 }
%union.anon.76 = type { [64 x i64] }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64 }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }

@stm32_sai_sub_ids = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32-sai-sub-a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32-sai-sub-b\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description238 = internal constant [46 x i8] c"description=STM32 Soc SAI sub-block Interface\00", section ".modinfo", align 1
@__UNIQUE_ID_author239 = internal constant [46 x i8] c"author=Olivier Moysan <olivier.moysan@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias240 = internal constant [32 x i8] c"alias=platform:st,stm32-sai-sub\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@stm32_sai_sub_driver = internal global %struct.platform_driver { ptr @stm32_sai_sub_probe, ptr @stm32_sai_sub_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_sai_sub_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_sai_sub_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [17 x i8] c"st,stm32-sai-sub\00", align 1
@stm32_sai_sub_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @stm32_sai_sub_suspend, ptr @stm32_sai_sub_resume, ptr @stm32_sai_sub_suspend, ptr @stm32_sai_sub_resume, ptr @stm32_sai_sub_suspend, ptr @stm32_sai_sub_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@stm32_sai_pcm_config = internal constant %struct.snd_dmaengine_pcm_config { ptr @snd_dmaengine_pcm_prepare_slave_config, ptr null, ptr null, ptr null, ptr null, [2 x ptr] zeroinitializer, ptr @stm32_sai_pcm_hw, i32 0 }, align 4
@stm32_sai_sub_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"&sai->ctrl_lock\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Parent device data not available\0A\00", align 1
@stm32_sai_playback_dai = internal unnamed_addr constant %struct.snd_soc_dai_driver { ptr null, i32 1, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @stm32_sai_dai_probe, ptr null, ptr null, ptr @stm32_sai_pcm_new, ptr @stm32_sai_pcm_dai_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr null, i64 1029, i32 1073741824, i32 8000, i32 192000, i32 1, i32 16, i32 0 }, i8 0, i32 0, i32 0 }, align 8
@stm32_sai_capture_dai = internal unnamed_addr constant %struct.snd_soc_dai_driver { ptr null, i32 1, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @stm32_sai_dai_probe, ptr null, ptr null, ptr null, ptr @stm32_sai_pcm_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr null, i64 1029, i32 1073741824, i32 8000, i32 192000, i32 1, i32 16, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"IRQ request returned %d\0A\00", align 1
@stm32_sai_pcm_config_spdif = internal constant %struct.snd_dmaengine_pcm_config { ptr @snd_dmaengine_pcm_prepare_slave_config, ptr null, ptr @stm32_sai_pcm_process_spdif, ptr null, ptr null, [2 x ptr] zeroinitializer, ptr @stm32_sai_pcm_hw_spdif, i32 0 }, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Could not register pcm dma\0A\00", align 1
@stm32_component = internal constant %struct.snd_soc_component_driver { ptr @.str.53, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@stm32_sai_pcm_hw = internal constant %struct.snd_pcm_hardware { i32 257, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 32768, i32 1024, i32 4096, i32 2, i32 8, i32 0 }, align 8
@stm32_sai_sub_regmap_config_f4 = internal constant %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr @stm32_sai_sub_writeable_reg, ptr @stm32_sai_sub_readable_reg, ptr @stm32_sai_sub_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 28, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 3, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@stm32_sai_sub_regmap_config_h7 = internal constant %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr @stm32_sai_sub_writeable_reg, ptr @stm32_sai_sub_readable_reg, ptr @stm32_sai_sub_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 68, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 3, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"Regmap init error\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"dma-names\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"Unsupported direction\0A\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"st,iec60958\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"S/PDIF IEC60958 not supported\0A\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"st,sync\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"Failed to get st,sync property\0A\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"%pOFn sync own reference\0A\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"%pOFn parent node not found\0A\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"External synchro not supported\0A\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"Wrong SAI index\0A\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"st,stm32-sai-sub-a\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"st,stm32-sai-sub-b\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"Unknown SAI sub-block\0A\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"sai_ck\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"Missing kernel clock sai_ck\0A\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"#clock-cells\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"MCLK\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"a_mclk\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"b_mclk\00", align 1
@mclk_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @stm32_sai_mclk_enable, ptr @stm32_sai_mclk_disable, ptr null, ptr null, ptr null, ptr null, ptr @stm32_sai_mclk_recalc_rate, ptr @stm32_sai_mclk_round_rate, ptr null, ptr null, ptr null, ptr @stm32_sai_mclk_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.28 = private unnamed_addr constant [27 x i8] c"mclk register returned %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"Divider %d out of range\0A\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"Failed to update CR1 register\0A\00", align 1
@stm32_sai_pcm_dai_ops = internal constant %struct.snd_soc_dai_ops { ptr @stm32_sai_set_sysclk, ptr null, ptr null, ptr null, ptr @stm32_sai_set_dai_fmt, ptr null, ptr @stm32_sai_set_dai_tdm_slot, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_sai_startup, ptr @stm32_sai_shutdown, ptr @stm32_sai_hw_params, ptr null, ptr null, ptr @stm32_sai_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, align 4
@iec958_ctls = internal unnamed_addr constant %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.31, i32 0, i32 7, i32 0, ptr @snd_pcm_iec958_info, ptr @snd_pcm_iec958_get, ptr @snd_pcm_iec958_put, %union.anon.80 zeroinitializer, i32 0 }, align 4
@.str.31 = private unnamed_addr constant [24 x i8] c"IEC958 Playback Default\00", align 1
@.str.32 = private unnamed_addr constant [39 x i8] c"Active streams have incompatible rates\00", align 1
@.str.33 = private unnamed_addr constant [25 x i8] c"Could not set mclk rate\0A\00", align 1
@.str.34 = private unnamed_addr constant [42 x i8] c" Error %d setting sai_ck parent clock. %s\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"Active stream rates conflict\0A\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.37 = private unnamed_addr constant [26 x i8] c"Unsupported protocol %#x\0A\00", align 1
@.str.38 = private unnamed_addr constant [26 x i8] c"Unsupported strobing %#x\0A\00", align 1
@.str.39 = private unnamed_addr constant [22 x i8] c"Unsupported mode %#x\0A\00", align 1
@.str.40 = private unnamed_addr constant [36 x i8] c"Slot setting relevant only for TDM\0A\00", align 1
@.str.41 = private unnamed_addr constant [28 x i8] c"Failed to enable clock: %d\0A\00", align 1
@.str.42 = private unnamed_addr constant [37 x i8] c"Data size %d larger than slot width\0A\00", align 1
@.str.43 = private unnamed_addr constant [27 x i8] c"Data format not supported\0A\00", align 1
@.str.44 = private unnamed_addr constant [21 x i8] c"Wrong mclk ratio %d\0A\00", align 1
@.str.45 = private unnamed_addr constant [35 x i8] c"Device stopped. Spurious IRQ 0x%x\0A\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"IRQ %s\0A\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"underrun\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"overrun\00", align 1
@.str.49 = private unnamed_addr constant [31 x i8] c"IRQ wrong clock configuration\0A\00", align 1
@.str.50 = private unnamed_addr constant [21 x i8] c"IRQ Codec not ready\0A\00", align 1
@.str.51 = private unnamed_addr constant [31 x i8] c"IRQ Anticipated frame synchro\0A\00", align 1
@.str.52 = private unnamed_addr constant [24 x i8] c"IRQ Late frame synchro\0A\00", align 1
@stm32_sai_pcm_hw_spdif = internal constant %struct.snd_pcm_hardware { i32 256, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 32768, i32 1024, i32 4096, i32 2, i32 8, i32 0 }, align 8
@.str.53 = private unnamed_addr constant [10 x i8] c"stm32-sai\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias240, ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_license241], section "llvm.metadata"
@switch.table.stm32_sai_set_dai_fmt = private unnamed_addr constant [5 x i32] [i32 524800, i32 524288, i32 524288, i32 524288, i32 524288], align 4
@switch.table.stm32_sai_set_dai_fmt.54 = private unnamed_addr constant [5 x i32] [i32 327680, i32 196608, i32 196608, i32 393216, i32 131072], align 4

@__mod_of__stm32_sai_sub_ids_device_table = dso_local alias [3 x %struct.of_device_id], ptr @stm32_sai_sub_ids

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_sai_sub_driver, ptr noundef nonnull @__this_module) #14
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_sai_sub_driver) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_sai_sub_probe(ptr noundef %0) #2 {
  %2 = alloca ptr, align 4
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 504, i32 noundef 3520) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %218, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @of_match_device(ptr noundef nonnull @stm32_sai_sub_ids, ptr noundef %4) #14
  %9 = icmp eq ptr %8, null
  br i1 %9, label %218, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.of_device_id, ptr %8, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %5, i32 0, i32 13
  store i32 %13, ptr %14, align 8
  store ptr %0, ptr %5, align 8
  %15 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %5, i32 0, i32 28
  tail call void @__mutex_init(ptr noundef %15, ptr noundef nonnull @.str.1, ptr noundef nonnull @stm32_sai_sub_probe.__key) #14
  %16 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %5, i32 0, i32 29
  store i32 0, ptr %16, align 8
  %17 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %17, align 8
  %18 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 8
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %5, i32 0, i32 7
  store ptr %21, ptr %22, align 8
  %23 = icmp eq ptr %21, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2) #15
  br label %218

25:                                               ; preds = %10
  %26 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %27 = load ptr, ptr %26, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store ptr null, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #14, !annotation !8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %173, label %29

29:                                               ; preds = %25
  %30 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #14
  %31 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = ptrtoint ptr %30 to i32
  br label %176

34:                                               ; preds = %29
  %35 = load ptr, ptr %2, align 4
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %5, i32 0, i32 11
  store i32 %36, ptr %37, align 8
  %38 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %5, i32 0, i32 2
  store ptr @stm32_sai_sub_regmap_config_f4, ptr %38, align 8
  %39 = load ptr, ptr %22, align 8
  %40 = getelementptr inbounds %struct.stm32_sai_data, ptr %39, i32 0, i32 5, i32 2
  %41 = load i8, ptr %40, align 4, !range !9
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %34
  %44 = load i32, ptr %14, align 8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store ptr @stm32_sai_sub_regmap_config_h7, ptr %38, align 8
  br label %47

47:                                               ; preds = %46, %43, %34
  %48 = phi ptr [ @stm32_sai_sub_regmap_config_h7, %46 ], [ @stm32_sai_sub_regmap_config_f4, %43 ], [ @stm32_sai_sub_regmap_config_f4, %34 ]
  %49 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %4, ptr noundef null, ptr noundef %30, ptr noundef nonnull %48, ptr noundef null, ptr noundef null) #14
  %50 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %5, i32 0, i32 1
  store ptr %49, ptr %50, align 4
  %51 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = ptrtoint ptr %49 to i32
  %54 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %4, i32 noundef %53, ptr noundef nonnull @.str.5) #14
  br label %176

55:                                               ; preds = %47
  %56 = call i32 @of_property_match_string(ptr noundef nonnull %27, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #14
  %57 = icmp sgt i32 %56, -1
  br i1 %57, label %62, label %58

58:                                               ; preds = %55
  %59 = call i32 @of_property_match_string(ptr noundef nonnull %27, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.8) #14
  %60 = icmp sgt i32 %59, -1
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.9) #15
  br label %173

62:                                               ; preds = %58, %55
  %63 = phi i32 [ 0, %55 ], [ 1, %58 ]
  %64 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %5, i32 0, i32 14
  store i32 %63, ptr %64, align 4
  %65 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %5, i32 0, i32 16
  store i8 0, ptr %65, align 1
  %66 = call ptr @of_get_property(ptr noundef nonnull %27, ptr noundef nonnull @.str.10, ptr noundef null) #14
  %67 = icmp eq ptr %66, null
  br i1 %67, label %83, label %68

68:                                               ; preds = %62
  %69 = load ptr, ptr %22, align 8
  %70 = getelementptr inbounds %struct.stm32_sai_data, ptr %69, i32 0, i32 5, i32 2
  %71 = load i8, ptr %70, align 4, !range !9
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %68
  %74 = load i32, ptr %64, align 4
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %77

76:                                               ; preds = %73, %68
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.11) #15
  br label %173

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %5, i32 0, i32 27
  store i8 4, ptr %78, align 1
  %79 = getelementptr %struct.stm32_sai_sub_data, ptr %5, i32 0, i32 27, i32 0, i32 1
  store i8 0, ptr %79, align 1
  %80 = getelementptr %struct.stm32_sai_sub_data, ptr %5, i32 0, i32 27, i32 0, i32 2
  store i8 0, ptr %80, align 1
  %81 = getelementptr %struct.stm32_sai_sub_data, ptr %5, i32 0, i32 27, i32 0, i32 3
  store i8 1, ptr %81, align 1
  store i8 1, ptr %65, align 1
  %82 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %5, i32 0, i32 15
  store i8 1, ptr %82, align 8
  br label %83

83:                                               ; preds = %77, %62
  store ptr null, ptr %3, align 4
  %84 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %27, ptr noundef nonnull @.str.12, ptr noundef null, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %3) #14
  %85 = icmp slt i32 %84, 0
  %86 = icmp ne i32 %84, -2
  %87 = and i1 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.13) #15
  br label %173

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %5, i32 0, i32 18
  store i32 0, ptr %90, align 8
  %91 = load ptr, ptr %3, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %140, label %93

93:                                               ; preds = %89
  %94 = icmp eq ptr %91, %27
  br i1 %94, label %95, label %97

95:                                               ; preds = %93
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.14, ptr noundef nonnull %27) #15
  %96 = load ptr, ptr %3, align 4
  call void @of_node_put(ptr noundef %96) #14
  br label %173

97:                                               ; preds = %93
  %98 = call ptr @of_get_parent(ptr noundef nonnull %91) #14
  %99 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %5, i32 0, i32 8
  store ptr %98, ptr %99, align 4
  %100 = icmp eq ptr %98, null
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.15, ptr noundef nonnull %27) #15
  %102 = load ptr, ptr %3, align 4
  call void @of_node_put(ptr noundef %102) #14
  br label %173

103:                                              ; preds = %97
  store i32 1, ptr %90, align 8
  %104 = load ptr, ptr %22, align 8
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.platform_device, ptr %105, i32 0, i32 3, i32 25
  %107 = load ptr, ptr %106, align 8
  %108 = icmp eq ptr %98, %107
  br i1 %108, label %140, label %109

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.stm32_sai_data, ptr %104, i32 0, i32 5
  %111 = load i32, ptr %110, align 4
  %112 = icmp eq i32 %111, 16
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.16) #15
  %114 = load ptr, ptr %3, align 4
  call void @of_node_put(ptr noundef %114) #14
  br label %173

115:                                              ; preds = %109
  store i32 2, ptr %90, align 8
  %116 = getelementptr inbounds %struct.of_phandle_args, ptr %3, i32 0, i32 2
  %117 = load i32, ptr %116, align 4
  %118 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %5, i32 0, i32 20
  store i32 %117, ptr %118, align 8
  %119 = add i32 %117, -5
  %120 = icmp ult i32 %119, -4
  br i1 %120, label %121, label %123

121:                                              ; preds = %115
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.17) #15
  %122 = load ptr, ptr %3, align 4
  call void @of_node_put(ptr noundef %122) #14
  br label %173

123:                                              ; preds = %115
  %124 = load ptr, ptr %3, align 4
  %125 = call i32 @of_property_match_string(ptr noundef %124, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #14
  %126 = icmp sgt i32 %125, -1
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %5, i32 0, i32 19
  store i32 1, ptr %128, align 4
  br label %129

129:                                              ; preds = %127, %123
  %130 = load ptr, ptr %3, align 4
  %131 = call i32 @of_property_match_string(ptr noundef %130, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.20) #14
  %132 = icmp sgt i32 %131, -1
  %133 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %5, i32 0, i32 19
  br i1 %132, label %134, label %135

134:                                              ; preds = %129
  store i32 2, ptr %133, align 4
  br label %140

135:                                              ; preds = %129
  %136 = load i32, ptr %133, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.21) #15
  %139 = load ptr, ptr %3, align 4
  call void @of_node_put(ptr noundef %139) #14
  br label %173

140:                                              ; preds = %135, %134, %103, %89
  %141 = load ptr, ptr %3, align 4
  call void @of_node_put(ptr noundef %141) #14
  %142 = call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull @.str.22) #14
  %143 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %5, i32 0, i32 9
  store ptr %142, ptr %143, align 8
  %144 = icmp ugt ptr %142, inttoptr (i32 -4096 to ptr)
  br i1 %144, label %145, label %148

145:                                              ; preds = %140
  %146 = ptrtoint ptr %142 to i32
  %147 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %4, i32 noundef %146, ptr noundef nonnull @.str.23) #14
  br label %176

148:                                              ; preds = %140
  %149 = load ptr, ptr %22, align 8
  %150 = getelementptr inbounds %struct.stm32_sai_data, ptr %149, i32 0, i32 2
  %151 = load ptr, ptr %150, align 4
  %152 = call i32 @clk_prepare(ptr noundef %151) #14
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %173, label %154

154:                                              ; preds = %148
  %155 = load ptr, ptr %22, align 8
  %156 = getelementptr inbounds %struct.stm32_sai_data, ptr %155, i32 0, i32 5
  %157 = load i32, ptr %156, align 4
  %158 = icmp eq i32 %157, 16
  br i1 %158, label %175, label %159

159:                                              ; preds = %154
  %160 = call ptr @of_find_property(ptr noundef nonnull %27, ptr noundef nonnull @.str.24, ptr noundef null) #14
  %161 = icmp eq ptr %160, null
  br i1 %161, label %165, label %162

162:                                              ; preds = %159
  %163 = call fastcc i32 @stm32_sai_add_mclk_provider(ptr noundef nonnull %5) #14
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %173, label %175

165:                                              ; preds = %159
  %166 = call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull @.str.25) #14
  %167 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %5, i32 0, i32 10
  store ptr %166, ptr %167, align 4
  %168 = icmp ugt ptr %166, inttoptr (i32 -4096 to ptr)
  br i1 %168, label %169, label %175

169:                                              ; preds = %165
  %170 = ptrtoint ptr %166 to i32
  %171 = icmp eq ptr %166, inttoptr (i32 -2 to ptr)
  br i1 %171, label %172, label %176

172:                                              ; preds = %169
  store ptr null, ptr %167, align 4
  br label %175

173:                                              ; preds = %162, %148, %138, %121, %113, %101, %95, %88, %76, %61, %25
  %174 = phi i32 [ %163, %162 ], [ %152, %148 ], [ -19, %25 ], [ -22, %61 ], [ -19, %101 ], [ -22, %138 ], [ -22, %121 ], [ -22, %113 ], [ -22, %95 ], [ %84, %88 ], [ -22, %76 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  br label %218

175:                                              ; preds = %172, %165, %162, %154
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  br label %179

176:                                              ; preds = %169, %145, %52, %32
  %177 = phi i32 [ %33, %32 ], [ %54, %52 ], [ %147, %145 ], [ %170, %169 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %218

179:                                              ; preds = %176, %175
  %180 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %5, i32 0, i32 14
  %181 = load i32, ptr %180, align 4
  %182 = icmp eq i32 %181, 0
  %183 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %5, i32 0, i32 4
  br i1 %182, label %184, label %185

184:                                              ; preds = %179
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(168) %183, ptr noundef nonnull align 8 dereferenceable(168) @stm32_sai_playback_dai, i32 168, i1 false)
  br label %186

185:                                              ; preds = %179
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(168) %183, ptr noundef nonnull align 8 dereferenceable(168) @stm32_sai_capture_dai, i32 168, i1 false)
  br label %186

186:                                              ; preds = %185, %184
  %187 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %188 = load ptr, ptr %187, align 4
  %189 = icmp eq ptr %188, null
  br i1 %189, label %192, label %190

190:                                              ; preds = %186
  %191 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %5, i32 0, i32 4
  store ptr %188, ptr %191, align 8
  br label %195

192:                                              ; preds = %186
  %193 = load ptr, ptr %4, align 4
  %194 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %5, i32 0, i32 4
  store ptr %193, ptr %194, align 8
  br label %195

195:                                              ; preds = %192, %190
  %196 = phi ptr [ %194, %192 ], [ %191, %190 ]
  %197 = phi ptr [ %193, %192 ], [ %188, %190 ]
  %198 = load ptr, ptr %22, align 8
  %199 = getelementptr inbounds %struct.stm32_sai_data, ptr %198, i32 0, i32 6
  %200 = load i32, ptr %199, align 4
  %201 = call i32 @devm_request_threaded_irq(ptr noundef %4, i32 noundef %200, ptr noundef nonnull @stm32_sai_isr, ptr noundef null, i32 noundef 128, ptr noundef %197, ptr noundef nonnull %5) #14
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %204, label %203

203:                                              ; preds = %195
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.3, i32 noundef %201) #15
  br label %218

204:                                              ; preds = %195
  %205 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %5, i32 0, i32 16
  %206 = load i8, ptr %205, align 1, !range !9
  %207 = icmp eq i8 %206, 0
  %208 = select i1 %207, ptr @stm32_sai_pcm_config, ptr @stm32_sai_pcm_config_spdif
  %209 = call i32 @snd_dmaengine_pcm_register(ptr noundef %4, ptr noundef nonnull %208, i32 noundef 0) #14
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %213, label %211

211:                                              ; preds = %204
  %212 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %4, i32 noundef %209, ptr noundef nonnull @.str.4) #14
  br label %218

213:                                              ; preds = %204
  %214 = call i32 @snd_soc_register_component(ptr noundef %4, ptr noundef nonnull @stm32_component, ptr noundef %196, i32 noundef 1) #14
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %217, label %216

216:                                              ; preds = %213
  call void @snd_dmaengine_pcm_unregister(ptr noundef %4) #14
  br label %218

217:                                              ; preds = %213
  call void @pm_runtime_enable(ptr noundef %4) #14
  br label %218

218:                                              ; preds = %217, %216, %211, %203, %176, %173, %24, %7, %1
  %219 = phi i32 [ %201, %203 ], [ %212, %211 ], [ %214, %216 ], [ 0, %217 ], [ -22, %24 ], [ -12, %1 ], [ -22, %7 ], [ %177, %176 ], [ %174, %173 ]
  ret i32 %219
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_sai_sub_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %4, i32 0, i32 7
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.stm32_sai_data, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  tail call void @clk_unprepare(ptr noundef %8) #14
  tail call void @snd_dmaengine_pcm_unregister(ptr noundef %2) #14
  tail call void @snd_soc_unregister_component(ptr noundef %2) #14
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #14
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_sai_isr(i32 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %1, i32 0, i32 7
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.stm32_sai_data, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @clk_enable(ptr noundef %9) #14
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %1, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = call i32 @regmap_read(ptr noundef %14, i32 noundef 16, ptr noundef nonnull %4) #14
  %16 = load ptr, ptr %6, align 8
  %17 = getelementptr inbounds %struct.stm32_sai_data, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  call void @clk_disable(ptr noundef %18) #14
  br label %19

19:                                               ; preds = %12, %2
  %20 = load ptr, ptr %6, align 8
  %21 = getelementptr inbounds %struct.stm32_sai_data, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = call i32 @clk_enable(ptr noundef %22) #14
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %1, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = call i32 @regmap_read(ptr noundef %27, i32 noundef 20, ptr noundef nonnull %3) #14
  %29 = load ptr, ptr %6, align 8
  %30 = getelementptr inbounds %struct.stm32_sai_data, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  call void @clk_disable(ptr noundef %31) #14
  %32 = load i32, ptr %3, align 4
  br label %33

33:                                               ; preds = %25, %19
  %34 = phi i32 [ 0, %19 ], [ %32, %25 ]
  %35 = load i32, ptr %4, align 4
  %36 = and i32 %35, %34
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %104, label %38

38:                                               ; preds = %33
  %39 = load ptr, ptr %6, align 8
  %40 = getelementptr inbounds %struct.stm32_sai_data, ptr %39, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = call i32 @clk_enable(ptr noundef %41) #14
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %1, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef 24, i32 noundef 127, i32 noundef 127, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #14
  %48 = load ptr, ptr %6, align 8
  %49 = getelementptr inbounds %struct.stm32_sai_data, ptr %48, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  call void @clk_disable(ptr noundef %50) #14
  br label %51

51:                                               ; preds = %44, %38
  %52 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %1, i32 0, i32 6
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %57 = load i32, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.45, i32 noundef %57) #15
  br label %104

58:                                               ; preds = %51
  %59 = and i32 %36, 1
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %63 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %1, i32 0, i32 14
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 0
  %66 = select i1 %65, ptr @.str.47, ptr @.str.48
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.46, ptr noundef nonnull %66) #15
  br label %67

67:                                               ; preds = %61, %58
  %68 = phi i32 [ 4, %61 ], [ 3, %58 ]
  %69 = and i32 %36, 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.49) #15
  br label %73

73:                                               ; preds = %71, %67
  %74 = phi i32 [ 8, %71 ], [ %68, %67 ]
  %75 = and i32 %36, 16
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.50) #15
  br label %79

79:                                               ; preds = %77, %73
  %80 = and i32 %36, 32
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.51) #15
  br label %84

84:                                               ; preds = %82, %79
  %85 = phi i32 [ 4, %82 ], [ %74, %79 ]
  %86 = and i32 %36, 64
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.52) #15
  %90 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %1, i32 0, i32 29
  call void @_raw_spin_lock(ptr noundef %90) #14
  br label %94

91:                                               ; preds = %84
  %92 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %1, i32 0, i32 29
  call void @_raw_spin_lock(ptr noundef %92) #14
  %93 = icmp eq i32 %85, 3
  br i1 %93, label %100, label %94

94:                                               ; preds = %91, %88
  %95 = phi ptr [ %90, %88 ], [ %92, %91 ]
  %96 = load ptr, ptr %52, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %100, label %98

98:                                               ; preds = %94
  %99 = call i32 @snd_pcm_stop_xrun(ptr noundef nonnull %96) #14
  br label %100

100:                                              ; preds = %98, %94, %91
  %101 = phi ptr [ %95, %98 ], [ %95, %94 ], [ %92, %91 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !10
  %102 = load i16, ptr %101, align 4
  %103 = add i16 %102, 1
  store i16 %103, ptr %101, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  br label %104

104:                                              ; preds = %100, %55, %33
  %105 = phi i32 [ 1, %100 ], [ 0, %55 ], [ 0, %33 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret i32 %105
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dmaengine_pcm_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_dmaengine_pcm_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dmaengine_pcm_prepare_slave_config(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stm32_sai_add_mclk_provider(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca %struct.clk_init_data, align 4
  %3 = alloca [1 x ptr], align 4
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %0, i32 0, i32 9
  %7 = load ptr, ptr %6, align 8
  %8 = tail call ptr @__clk_get_name(ptr noundef %7) #14
  %9 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 20, i32 noundef 3520) #14
  %10 = icmp eq ptr %9, null
  br i1 %10, label %59, label %11

11:                                               ; preds = %1
  %12 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 32, i32 noundef 3520) #14
  %13 = icmp eq ptr %12, null
  br i1 %13, label %59, label %14

14:                                               ; preds = %11
  %15 = load i8, ptr %8, align 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %25, %14
  %18 = phi i8 [ %29, %25 ], [ %15, %14 ]
  %19 = phi i32 [ %28, %25 ], [ 0, %14 ]
  %20 = phi ptr [ %26, %25 ], [ %8, %14 ]
  %21 = phi ptr [ %27, %25 ], [ %12, %14 ]
  %22 = icmp ne i8 %18, 95
  %23 = icmp ult i32 %19, 25
  %24 = select i1 %22, i1 %23, i1 false
  br i1 %24, label %25, label %31

25:                                               ; preds = %17
  %26 = getelementptr i8, ptr %20, i32 1
  %27 = getelementptr i8, ptr %21, i32 1
  store i8 %18, ptr %21, align 1
  %28 = add nuw nsw i32 %19, 1
  %29 = load i8, ptr %26, align 1
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %17

31:                                               ; preds = %25, %17, %14
  %32 = phi ptr [ %12, %14 ], [ %27, %25 ], [ %21, %17 ]
  %33 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %0, i32 0, i32 13
  %34 = load i32, ptr %33, align 8
  %35 = icmp eq i32 %34, 0
  %36 = tail call i32 @strlen(ptr noundef %32)
  %37 = getelementptr i8, ptr %32, i32 %36
  br i1 %35, label %38, label %39

38:                                               ; preds = %31
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(7) %37, ptr noundef nonnull align 1 dereferenceable(7) @.str.26, i32 7, i1 false)
  br label %40

39:                                               ; preds = %31
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(7) %37, ptr noundef nonnull align 1 dereferenceable(7) @.str.27, i32 7, i1 false)
  br label %40

40:                                               ; preds = %39, %38
  store ptr %12, ptr %2, align 4
  %41 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 1
  store ptr @mclk_ops, ptr %41, align 4
  %42 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 2
  store ptr %8, ptr %3, align 4
  store ptr %3, ptr %42, align 4
  %43 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 3
  store ptr null, ptr %43, align 4
  %44 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 4
  store ptr null, ptr %44, align 4
  %45 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 5
  store i8 1, ptr %45, align 4
  %46 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 6
  store i32 0, ptr %46, align 4
  %47 = getelementptr inbounds %struct.clk_hw, ptr %9, i32 0, i32 2
  store ptr %2, ptr %47, align 4
  %48 = getelementptr inbounds %struct.stm32_sai_mclk_data, ptr %9, i32 0, i32 2
  store ptr %0, ptr %48, align 4
  %49 = load ptr, ptr %0, align 8
  %50 = getelementptr inbounds %struct.platform_device, ptr %49, i32 0, i32 3
  %51 = call i32 @devm_clk_hw_register(ptr noundef %50, ptr noundef nonnull %9) #14
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %40
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.28, i32 noundef %51) #15
  br label %59

54:                                               ; preds = %40
  %55 = getelementptr inbounds %struct.clk_hw, ptr %9, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %0, i32 0, i32 10
  store ptr %56, ptr %57, align 4
  %58 = call i32 @devm_of_clk_add_hw_provider(ptr noundef %5, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef nonnull %9) #14
  br label %59

59:                                               ; preds = %54, %53, %11, %1
  %60 = phi i32 [ %51, %53 ], [ %58, %54 ], [ -12, %1 ], [ -12, %11 ]
  ret i32 %60
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @stm32_sai_sub_writeable_reg(ptr nocapture noundef readnone %0, i32 noundef %1) #7 {
  %3 = tail call i32 @llvm.fshl.i32(i32 %1, i32 %1, i32 30)
  %4 = icmp ult i32 %3, 18
  %5 = trunc i32 %3 to i18
  %6 = lshr i18 -65313, %5
  %7 = and i18 %6, 1
  %8 = icmp ne i18 %7, 0
  %9 = select i1 %4, i1 %8, i1 false
  ret i1 %9
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @stm32_sai_sub_readable_reg(ptr nocapture noundef readnone %0, i32 noundef %1) #7 {
  %3 = tail call i32 @llvm.fshl.i32(i32 %1, i32 %1, i32 30)
  %4 = icmp ult i32 %3, 18
  %5 = trunc i32 %3 to i18
  %6 = lshr i18 -65281, %5
  %7 = and i18 %6, 1
  %8 = icmp ne i18 %7, 0
  %9 = select i1 %4, i1 %8, i1 false
  ret i1 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @stm32_sai_sub_volatile_reg(ptr nocapture noundef readnone %0, i32 noundef %1) #8 {
  %3 = add i32 %1, -20
  %4 = and i32 %3, -9
  %5 = icmp eq i32 %4, 0
  ret i1 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_simple_get(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_sai_mclk_enable(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.stm32_sai_mclk_data, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.stm32_sai_data, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @clk_enable(ptr noundef %7) #14
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 0, i32 noundef 134217728, i32 noundef 134217728, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #14
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr inbounds %struct.stm32_sai_data, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  tail call void @clk_disable(ptr noundef %16) #14
  br label %17

17:                                               ; preds = %10, %1
  %18 = phi i32 [ %13, %10 ], [ %8, %1 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_sai_mclk_disable(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.stm32_sai_mclk_data, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.stm32_sai_data, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @clk_enable(ptr noundef %7) #14
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 0, i32 noundef 134217728, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #14
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr inbounds %struct.stm32_sai_data, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  tail call void @clk_disable(ptr noundef %16) #14
  br label %17

17:                                               ; preds = %10, %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @stm32_sai_mclk_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.stm32_sai_mclk_data, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_sai_mclk_round_rate(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = getelementptr inbounds %struct.stm32_sai_mclk_data, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %2, align 4
  %7 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %5, i32 0, i32 7
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.stm32_sai_data, ptr %8, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = lshr i32 %1, 1
  %12 = add i32 %6, %11
  %13 = udiv i32 %12, %1
  %14 = icmp eq i32 %10, 16
  %15 = select i1 %14, i32 15, i32 63
  %16 = icmp sgt i32 %13, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load ptr, ptr %5, align 8
  %19 = getelementptr inbounds %struct.platform_device, ptr %18, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.29, i32 noundef %13) #15
  br label %25

20:                                               ; preds = %3
  %21 = icmp slt i32 %13, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %20
  %23 = udiv i32 %6, %13
  %24 = getelementptr inbounds %struct.stm32_sai_mclk_data, ptr %0, i32 0, i32 1
  store i32 %23, ptr %24, align 4
  br label %25

25:                                               ; preds = %22, %20, %17
  %26 = phi i32 [ %23, %22 ], [ %13, %20 ], [ -22, %17 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_sai_mclk_set_rate(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.stm32_sai_mclk_data, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %5, i32 0, i32 7
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.stm32_sai_data, ptr %7, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = lshr i32 %1, 1
  %11 = add i32 %10, %2
  %12 = udiv i32 %11, %1
  %13 = icmp eq i32 %9, 16
  %14 = select i1 %13, i32 15, i32 63
  %15 = icmp sgt i32 %12, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load ptr, ptr %5, align 8
  %18 = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.29, i32 noundef %12) #15
  br label %26

19:                                               ; preds = %3
  %20 = icmp slt i32 %12, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %19
  %22 = tail call fastcc i32 @stm32_sai_set_clk_div(ptr noundef %5, i32 noundef %12)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.stm32_sai_mclk_data, ptr %0, i32 0, i32 1
  store i32 %1, ptr %25, align 4
  br label %26

26:                                               ; preds = %24, %21, %19, %16
  %27 = phi i32 [ 0, %24 ], [ %12, %19 ], [ %22, %21 ], [ -22, %16 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stm32_sai_set_clk_div(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.stm32_sai_data, ptr %4, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 16
  %8 = select i1 %7, i32 4, i32 6
  %9 = lshr i32 %1, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.29, i32 noundef %1) #15
  br label %35

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.stm32_sai_data, ptr %4, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @clk_enable(ptr noundef %16) #14
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %14
  %20 = shl i32 %1, 20
  %21 = sub nuw nsw i32 12, %8
  %22 = lshr i32 -1, %21
  %23 = and i32 %22, -1048576
  %24 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %0, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 0, i32 noundef %23, i32 noundef %20, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #14
  %27 = load ptr, ptr %3, align 8
  %28 = getelementptr inbounds %struct.stm32_sai_data, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  tail call void @clk_disable(ptr noundef %29) #14
  %30 = icmp slt i32 %26, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %19, %14
  %32 = phi i32 [ %26, %19 ], [ %17, %14 ]
  %33 = load ptr, ptr %0, align 8
  %34 = getelementptr inbounds %struct.platform_device, ptr %33, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.30) #15
  br label %35

35:                                               ; preds = %31, %19, %11
  %36 = phi i32 [ -22, %11 ], [ %32, %31 ], [ %26, %19 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_sai_dai_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %5, i32 0, i32 5
  store ptr %0, ptr %6, align 8
  %7 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %5, i32 0, i32 11
  %8 = load i32, ptr %7, align 8
  %9 = add i32 %8, 28
  %10 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %5, i32 0, i32 3
  store i32 %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %5, i32 0, i32 3, i32 2
  store i32 4, ptr %11, align 4
  %12 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %5, i32 0, i32 7
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.stm32_sai_data, ptr %13, i32 0, i32 5, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp ult i32 %15, 8
  %17 = select i1 %16, i32 1, i32 4
  store i32 %17, ptr %11, align 4
  %18 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %5, i32 0, i32 3, i32 1
  store i32 0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %5, i32 0, i32 14
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, ptr %10, ptr null
  %23 = select i1 %21, ptr null, ptr %10
  %24 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 7
  store ptr %22, ptr %24, align 4
  %25 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 8
  store ptr %23, ptr %25, align 4
  %26 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %5, i32 0, i32 16
  %27 = load i8, ptr %26, align 1, !range !9
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %66

29:                                               ; preds = %1
  %30 = load i32, ptr %19, align 4
  %31 = icmp eq i32 %30, 1
  %32 = zext i1 %31 to i32
  %33 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %5, i32 0, i32 18
  %34 = load i32, ptr %33, align 8
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %50

36:                                               ; preds = %29
  %37 = load ptr, ptr %12, align 8
  %38 = getelementptr inbounds %struct.stm32_sai_data, ptr %37, i32 0, i32 7
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %5, i32 0, i32 8
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %5, i32 0, i32 19
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %5, i32 0, i32 20
  %45 = load i32, ptr %44, align 8
  %46 = tail call i32 %39(ptr noundef %37, ptr noundef %41, i32 noundef %43, i32 noundef %45) #14
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %36
  %49 = load i32, ptr %33, align 8
  br label %50

50:                                               ; preds = %48, %29
  %51 = phi i32 [ %49, %48 ], [ %34, %29 ]
  %52 = load ptr, ptr %12, align 8
  %53 = getelementptr inbounds %struct.stm32_sai_data, ptr %52, i32 0, i32 2
  %54 = load ptr, ptr %53, align 4
  %55 = tail call i32 @clk_enable(ptr noundef %54) #14
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %50
  %58 = shl i32 %51, 10
  %59 = or i32 %58, %32
  %60 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %5, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = tail call i32 @regmap_update_bits_base(ptr noundef %61, i32 noundef 0, i32 noundef 3073, i32 noundef %59, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #14
  %63 = load ptr, ptr %12, align 8
  %64 = getelementptr inbounds %struct.stm32_sai_data, ptr %63, i32 0, i32 2
  %65 = load ptr, ptr %64, align 4
  tail call void @clk_disable(ptr noundef %65) #14
  br label %66

66:                                               ; preds = %57, %50, %36, %1
  %67 = phi i32 [ 0, %1 ], [ %46, %36 ], [ %62, %57 ], [ %55, %50 ]
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_sai_pcm_new(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca %struct.snd_kcontrol_new, align 4
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #14
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %3, ptr noundef nonnull align 4 dereferenceable(48) @iec958_ctls, i32 48, i1 false)
  %8 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %7, i32 0, i32 16
  %9 = load i8, ptr %8, align 1, !range !9
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %0, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.snd_pcm, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %3, i32 0, i32 1
  store i32 %15, ptr %16, align 4
  %17 = load ptr, ptr %13, align 8
  %18 = call ptr @snd_ctl_new1(ptr noundef nonnull %3, ptr noundef %7) #14
  %19 = call i32 @snd_ctl_add(ptr noundef %17, ptr noundef %18) #14
  br label %20

20:                                               ; preds = %11, %2
  %21 = phi i32 [ %19, %11 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #14
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_pcm_iec958_info(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #10 {
  %3 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 1
  store i32 5, ptr %3, align 8
  %4 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 3
  store i32 1, ptr %4, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_pcm_iec958_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %4, i32 0, i32 28
  tail call void @mutex_lock(ptr noundef %5) #14
  %6 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %7 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %4, i32 0, i32 27
  %8 = load i32, ptr %7, align 4
  store i32 %8, ptr %6, align 8
  tail call void @mutex_unlock(ptr noundef %5) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_pcm_iec958_put(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %4, i32 0, i32 28
  tail call void @mutex_lock(ptr noundef %5) #14
  %6 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %4, i32 0, i32 27
  %7 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  store i32 %8, ptr %6, align 4
  tail call void @mutex_unlock(ptr noundef %5) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_sai_set_sysclk(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq i32 %3, 1
  br i1 %9, label %10, label %65

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %8, i32 0, i32 10
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %65, label %14

14:                                               ; preds = %10
  %15 = icmp eq i32 %2, 0
  %16 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %8, i32 0, i32 7
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.stm32_sai_data, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 @clk_enable(ptr noundef %19) #14
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %65, label %22

22:                                               ; preds = %14
  %23 = select i1 %15, i32 524288, i32 0
  %24 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %8, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 0, i32 noundef 524288, i32 noundef %23, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #14
  %27 = load ptr, ptr %16, align 8
  %28 = getelementptr inbounds %struct.stm32_sai_data, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  tail call void @clk_disable(ptr noundef %29) #14
  %30 = icmp slt i32 %26, 0
  br i1 %30, label %65, label %31

31:                                               ; preds = %22
  br i1 %15, label %32, label %38

32:                                               ; preds = %31
  %33 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %8, i32 0, i32 12
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %65, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr %11, align 4
  tail call void @clk_rate_exclusive_put(ptr noundef %37) #14
  store i32 0, ptr %33, align 4
  br label %65

38:                                               ; preds = %31
  %39 = load ptr, ptr %8, align 8
  %40 = load ptr, ptr %16, align 8
  %41 = getelementptr inbounds %struct.stm32_sai_data, ptr %40, i32 0, i32 3
  %42 = urem i32 %2, 11025
  %43 = icmp eq i32 %42, 0
  %44 = getelementptr inbounds %struct.stm32_sai_data, ptr %40, i32 0, i32 4
  %45 = select i1 %43, ptr %44, ptr %41
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %8, i32 0, i32 9
  %48 = load ptr, ptr %47, align 8
  %49 = tail call i32 @clk_set_parent(ptr noundef %48, ptr noundef %46) #14
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %38
  %52 = getelementptr inbounds %struct.platform_device, ptr %39, i32 0, i32 3
  %53 = icmp eq i32 %49, -16
  %54 = select i1 %53, ptr @.str.35, ptr @.str.36
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.34, i32 noundef %49, ptr noundef nonnull %54) #15
  br label %65

55:                                               ; preds = %38
  %56 = load ptr, ptr %11, align 4
  %57 = tail call i32 @clk_set_rate_exclusive(ptr noundef %56, i32 noundef %2) #14
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr %5, align 4
  %61 = icmp eq i32 %57, -16
  %62 = select i1 %61, ptr @.str.32, ptr @.str.33
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull %62) #15
  br label %65

63:                                               ; preds = %55
  %64 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %8, i32 0, i32 12
  store i32 %2, ptr %64, align 4
  br label %65

65:                                               ; preds = %63, %59, %51, %36, %32, %22, %14, %10, %4
  %66 = phi i32 [ %57, %59 ], [ %26, %22 ], [ 0, %36 ], [ 0, %32 ], [ %49, %51 ], [ 0, %63 ], [ 0, %10 ], [ 0, %4 ], [ %20, %14 ]
  ret i32 %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_sai_set_dai_fmt(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %6, i32 0, i32 16
  %8 = load i8, ptr %7, align 1, !range !9
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %63

10:                                               ; preds = %2
  %11 = and i32 %1, 15
  %12 = add nsw i32 %11, -1
  %13 = icmp ult i32 %12, 5
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.37, i32 noundef %11) #15
  br label %85

15:                                               ; preds = %10
  %16 = getelementptr inbounds [5 x i32], ptr @switch.table.stm32_sai_set_dai_fmt, i32 0, i32 %12
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds [5 x i32], ptr @switch.table.stm32_sai_set_dai_fmt.54, i32 0, i32 %12
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %1, 3840
  %21 = lshr exact i32 %20, 8
  switch i32 %21, label %29 [
    i32 0, label %30
    i32 3, label %22
    i32 2, label %24
    i32 4, label %26
  ]

22:                                               ; preds = %15
  %23 = xor i32 %17, 512
  br label %30

24:                                               ; preds = %15
  %25 = xor i32 %19, 131072
  br label %30

26:                                               ; preds = %15
  %27 = xor i32 %17, 512
  %28 = xor i32 %19, 131072
  br label %30

29:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.38, i32 noundef %20) #15
  br label %85

30:                                               ; preds = %26, %24, %22, %15
  %31 = phi i32 [ %27, %26 ], [ %17, %24 ], [ %23, %22 ], [ %17, %15 ]
  %32 = phi i32 [ %28, %26 ], [ %25, %24 ], [ %19, %22 ], [ %19, %15 ]
  %33 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %6, i32 0, i32 7
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.stm32_sai_data, ptr %34, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 @clk_enable(ptr noundef %36) #14
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %6, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = tail call i32 @regmap_update_bits_base(ptr noundef %41, i32 noundef 8, i32 noundef 458752, i32 noundef %32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #14
  %43 = load ptr, ptr %33, align 8
  %44 = getelementptr inbounds %struct.stm32_sai_data, ptr %43, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  tail call void @clk_disable(ptr noundef %45) #14
  br label %46

46:                                               ; preds = %39, %30
  %47 = and i32 %1, 61440
  %48 = trunc i32 %47 to i16
  switch i16 %48, label %51 [
    i16 4096, label %49
    i16 16384, label %53
  ]

49:                                               ; preds = %46
  %50 = or i32 %31, 2
  br label %53

51:                                               ; preds = %46
  %52 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.39, i32 noundef %47) #15
  br label %85

53:                                               ; preds = %49, %46
  %54 = phi i8 [ 0, %49 ], [ 1, %46 ]
  %55 = phi i32 [ %50, %49 ], [ %31, %46 ]
  %56 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %6, i32 0, i32 15
  store i8 %54, ptr %56, align 8
  %57 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %6, i32 0, i32 18
  %58 = load i32, ptr %57, align 8
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %53
  %61 = or i32 %55, 2
  %62 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %6, i32 0, i32 15
  store i8 0, ptr %62, align 8
  br label %63

63:                                               ; preds = %60, %53, %2
  %64 = phi i32 [ 524292, %2 ], [ %61, %60 ], [ %55, %53 ]
  %65 = phi i32 [ 524300, %2 ], [ 524814, %60 ], [ 524814, %53 ]
  %66 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %6, i32 0, i32 7
  %67 = load ptr, ptr %66, align 8
  %68 = getelementptr inbounds %struct.stm32_sai_data, ptr %67, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  %70 = tail call i32 @clk_enable(ptr noundef %69) #14
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %63
  %73 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %6, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = tail call i32 @regmap_update_bits_base(ptr noundef %74, i32 noundef 0, i32 noundef %65, i32 noundef %64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #14
  %76 = load ptr, ptr %66, align 8
  %77 = getelementptr inbounds %struct.stm32_sai_data, ptr %76, i32 0, i32 2
  %78 = load ptr, ptr %77, align 4
  tail call void @clk_disable(ptr noundef %78) #14
  %79 = icmp slt i32 %75, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %72, %63
  %81 = phi i32 [ %75, %72 ], [ %70, %63 ]
  %82 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %82, ptr noundef nonnull @.str.30) #15
  br label %85

83:                                               ; preds = %72
  %84 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %6, i32 0, i32 17
  store i32 %1, ptr %84, align 4
  br label %85

85:                                               ; preds = %83, %80, %51, %29, %14
  %86 = phi i32 [ %81, %80 ], [ 0, %83 ], [ -22, %14 ], [ -22, %29 ], [ -22, %51 ]
  ret i32 %86
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_sai_set_dai_tdm_slot(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %9, i32 0, i32 16
  %11 = load i8, ptr %10, align 1, !range !9
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.40) #15
  br label %48

14:                                               ; preds = %5
  %15 = icmp eq i32 %4, 32
  %16 = select i1 %15, i32 128, i32 0
  %17 = icmp eq i32 %4, 16
  %18 = select i1 %17, i32 64, i32 %16
  %19 = shl i32 %3, 8
  %20 = add i32 %19, -256
  %21 = or i32 %18, %20
  %22 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %9, i32 0, i32 14
  %23 = load i32, ptr %22, align 4
  switch i32 %23, label %30 [
    i32 0, label %25
    i32 1, label %24
  ]

24:                                               ; preds = %14
  br label %25

25:                                               ; preds = %24, %14
  %26 = phi i32 [ %2, %24 ], [ %1, %14 ]
  %27 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %9, i32 0, i32 24
  store i32 %26, ptr %27, align 8
  %28 = shl i32 %26, 16
  %29 = or i32 %21, %28
  br label %30

30:                                               ; preds = %25, %14
  %31 = phi i32 [ %21, %14 ], [ %29, %25 ]
  %32 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %9, i32 0, i32 7
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.stm32_sai_data, ptr %33, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 @clk_enable(ptr noundef %35) #14
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %9, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = tail call i32 @regmap_update_bits_base(ptr noundef %40, i32 noundef 12, i32 noundef -61504, i32 noundef %31, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #14
  %42 = load ptr, ptr %32, align 8
  %43 = getelementptr inbounds %struct.stm32_sai_data, ptr %42, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  tail call void @clk_disable(ptr noundef %44) #14
  br label %45

45:                                               ; preds = %38, %30
  %46 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %9, i32 0, i32 23
  store i32 %4, ptr %46, align 4
  %47 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %9, i32 0, i32 22
  store i32 %3, ptr %47, align 8
  br label %48

48:                                               ; preds = %45, %13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_sai_startup(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %7, i32 0, i32 29
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #14
  %10 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %7, i32 0, i32 6
  store ptr %0, ptr %10, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #14
  %11 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %7, i32 0, i32 16
  %12 = load i8, ptr %11, align 1, !range !9
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @snd_pcm_hw_constraint_mask64(ptr noundef %16, i32 noundef 1, i64 noundef 1024) #14
  %18 = load ptr, ptr %15, align 4
  %19 = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %18, i32 noundef 10, i32 noundef 2, i32 noundef 2) #14
  br label %20

20:                                               ; preds = %14, %2
  %21 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %7, i32 0, i32 9
  %22 = load ptr, ptr %21, align 8
  %23 = tail call i32 @clk_prepare(ptr noundef %22) #14
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = tail call i32 @clk_enable(ptr noundef %22) #14
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  tail call void @clk_unprepare(ptr noundef %22) #14
  br label %29

29:                                               ; preds = %28, %20
  %30 = phi i32 [ %23, %20 ], [ %26, %28 ]
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.41, i32 noundef %30) #15
  br label %88

34:                                               ; preds = %29, %25
  %35 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %7, i32 0, i32 7
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.stm32_sai_data, ptr %36, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 @clk_enable(ptr noundef %38) #14
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %7, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 @regmap_update_bits_base(ptr noundef %43, i32 noundef 24, i32 noundef 127, i32 noundef 127, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #14
  %45 = load ptr, ptr %35, align 8
  %46 = getelementptr inbounds %struct.stm32_sai_data, ptr %45, i32 0, i32 2
  %47 = load ptr, ptr %46, align 4
  tail call void @clk_disable(ptr noundef %47) #14
  br label %48

48:                                               ; preds = %41, %34
  %49 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %7, i32 0, i32 14
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %69

52:                                               ; preds = %48
  %53 = load ptr, ptr %35, align 8
  %54 = getelementptr inbounds %struct.stm32_sai_data, ptr %53, i32 0, i32 2
  %55 = load ptr, ptr %54, align 4
  %56 = tail call i32 @clk_enable(ptr noundef %55) #14
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %69, label %58

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %7, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = call i32 @regmap_read(ptr noundef %60, i32 noundef 4, ptr noundef nonnull %3) #14
  %62 = load ptr, ptr %35, align 8
  %63 = getelementptr inbounds %struct.stm32_sai_data, ptr %62, i32 0, i32 2
  %64 = load ptr, ptr %63, align 4
  call void @clk_disable(ptr noundef %64) #14
  %65 = load i32, ptr %3, align 4
  %66 = and i32 %65, 8064
  %67 = icmp eq i32 %66, 0
  %68 = select i1 %67, i32 1, i32 3
  br label %69

69:                                               ; preds = %58, %52, %48
  %70 = phi i32 [ 1, %48 ], [ 1, %52 ], [ %68, %58 ]
  %71 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %7, i32 0, i32 15
  %72 = load i8, ptr %71, align 8, !range !9
  %73 = load ptr, ptr %35, align 8
  %74 = getelementptr inbounds %struct.stm32_sai_data, ptr %73, i32 0, i32 2
  %75 = load ptr, ptr %74, align 4
  %76 = call i32 @clk_enable(ptr noundef %75) #14
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %88, label %78

78:                                               ; preds = %69
  %79 = icmp eq i8 %72, 0
  %80 = select i1 %79, i32 96, i32 4
  %81 = or i32 %80, %70
  %82 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %7, i32 0, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = call i32 @regmap_update_bits_base(ptr noundef %83, i32 noundef 16, i32 noundef 127, i32 noundef %81, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #14
  %85 = load ptr, ptr %35, align 8
  %86 = getelementptr inbounds %struct.stm32_sai_data, ptr %85, i32 0, i32 2
  %87 = load ptr, ptr %86, align 4
  call void @clk_disable(ptr noundef %87) #14
  br label %88

88:                                               ; preds = %78, %69, %32
  %89 = phi i32 [ %30, %32 ], [ 0, %69 ], [ 0, %78 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret i32 %89
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_sai_shutdown(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %6, i32 0, i32 7
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.stm32_sai_data, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @clk_enable(ptr noundef %10) #14
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %6, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 16, i32 noundef 127, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #14
  %17 = load ptr, ptr %7, align 8
  %18 = getelementptr inbounds %struct.stm32_sai_data, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  tail call void @clk_disable(ptr noundef %19) #14
  br label %20

20:                                               ; preds = %13, %2
  %21 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %6, i32 0, i32 9
  %22 = load ptr, ptr %21, align 8
  tail call void @clk_disable(ptr noundef %22) #14
  tail call void @clk_unprepare(ptr noundef %22) #14
  %23 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %6, i32 0, i32 29
  %24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %23) #14
  %25 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %6, i32 0, i32 6
  store ptr null, ptr %25, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %23, i32 noundef %24) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_sai_hw_params(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #2 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %17, %3
  %13 = phi i32 [ 0, %3 ], [ 32, %17 ]
  %14 = phi i32 [ %10, %3 ], [ %19, %17 ]
  %15 = tail call i32 @llvm.cttz.i32(i32 %14, i1 true) #14, !range !14
  %16 = or i32 %15, %13
  br label %21

17:                                               ; preds = %3
  %18 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %12

21:                                               ; preds = %17, %12
  %22 = phi i32 [ %16, %12 ], [ 0, %17 ]
  %23 = tail call i32 @snd_pcm_format_width(i32 noundef %22) #14
  %24 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %8, i32 0, i32 25
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %8, i32 0, i32 16
  %26 = load i8, ptr %25, align 1, !range !9
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %52, label %28

28:                                               ; preds = %21
  %29 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %32, i32 0, i32 14
  store i32 %30, ptr %33, align 4
  %34 = load ptr, ptr %31, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %180, label %36

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %8, i32 0, i32 28
  tail call void @mutex_lock(ptr noundef %37) #14
  %38 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %34, i32 0, i32 14
  %39 = load i32, ptr %38, align 4
  switch i32 %39, label %48 [
    i32 22050, label %49
    i32 44100, label %40
    i32 88200, label %41
    i32 176400, label %42
    i32 24000, label %43
    i32 48000, label %44
    i32 96000, label %45
    i32 192000, label %46
    i32 32000, label %47
  ]

40:                                               ; preds = %36
  br label %49

41:                                               ; preds = %36
  br label %49

42:                                               ; preds = %36
  br label %49

43:                                               ; preds = %36
  br label %49

44:                                               ; preds = %36
  br label %49

45:                                               ; preds = %36
  br label %49

46:                                               ; preds = %36
  br label %49

47:                                               ; preds = %36
  br label %49

48:                                               ; preds = %36
  br label %49

49:                                               ; preds = %48, %47, %46, %45, %44, %43, %42, %41, %40, %36
  %50 = phi i8 [ 1, %48 ], [ 3, %47 ], [ 14, %46 ], [ 10, %45 ], [ 2, %44 ], [ 6, %43 ], [ 12, %42 ], [ 8, %41 ], [ 0, %40 ], [ 4, %36 ]
  %51 = getelementptr %struct.stm32_sai_sub_data, ptr %8, i32 0, i32 27, i32 0, i32 3
  store i8 %50, ptr %51, align 1
  tail call void @mutex_unlock(ptr noundef %37) #14
  br label %180

52:                                               ; preds = %21
  %53 = load ptr, ptr %5, align 4
  %54 = getelementptr inbounds %struct.device, ptr %53, i32 0, i32 8
  %55 = load ptr, ptr %54, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4, !annotation !8
  %56 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %55, i32 0, i32 7
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr inbounds %struct.stm32_sai_data, ptr %57, i32 0, i32 2
  %59 = load ptr, ptr %58, align 4
  %60 = tail call i32 @clk_enable(ptr noundef %59) #14
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %72, label %62

62:                                               ; preds = %52
  %63 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %55, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = call i32 @regmap_read(ptr noundef %64, i32 noundef 12, ptr noundef nonnull %4) #14
  %66 = load ptr, ptr %56, align 8
  %67 = getelementptr inbounds %struct.stm32_sai_data, ptr %66, i32 0, i32 2
  %68 = load ptr, ptr %67, align 4
  call void @clk_disable(ptr noundef %68) #14
  %69 = load i32, ptr %4, align 4
  %70 = and i32 %69, 192
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %62, %52
  %73 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %55, i32 0, i32 25
  %74 = load i32, ptr %73, align 4
  %75 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %55, i32 0, i32 23
  store i32 %74, ptr %75, align 4
  br label %82

76:                                               ; preds = %62
  %77 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %55, i32 0, i32 23
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %55, i32 0, i32 25
  %80 = load i32, ptr %79, align 4
  %81 = icmp slt i32 %78, %80
  br i1 %81, label %124, label %82

82:                                               ; preds = %76, %72
  %83 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %55, i32 0, i32 22
  %84 = load i32, ptr %83, align 8
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  store i32 2, ptr %83, align 8
  br label %87

87:                                               ; preds = %86, %82
  %88 = phi i32 [ 2, %86 ], [ %84, %82 ]
  %89 = load ptr, ptr %56, align 8
  %90 = getelementptr inbounds %struct.stm32_sai_data, ptr %89, i32 0, i32 2
  %91 = load ptr, ptr %90, align 4
  %92 = call i32 @clk_enable(ptr noundef %91) #14
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %103, label %94

94:                                               ; preds = %87
  %95 = shl i32 %88, 8
  %96 = add i32 %95, -256
  %97 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %55, i32 0, i32 1
  %98 = load ptr, ptr %97, align 4
  %99 = call i32 @regmap_update_bits_base(ptr noundef %98, i32 noundef 12, i32 noundef 3840, i32 noundef %96, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #14
  %100 = load ptr, ptr %56, align 8
  %101 = getelementptr inbounds %struct.stm32_sai_data, ptr %100, i32 0, i32 2
  %102 = load ptr, ptr %101, align 4
  call void @clk_disable(ptr noundef %102) #14
  br label %103

103:                                              ; preds = %94, %87
  %104 = load i32, ptr %4, align 4
  %105 = icmp ult i32 %104, 65536
  br i1 %105, label %106, label %126

106:                                              ; preds = %103
  %107 = load i32, ptr %83, align 8
  %108 = shl nsw i32 -1, %107
  %109 = xor i32 %108, -1
  %110 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %55, i32 0, i32 24
  store i32 %109, ptr %110, align 8
  %111 = load ptr, ptr %56, align 8
  %112 = getelementptr inbounds %struct.stm32_sai_data, ptr %111, i32 0, i32 2
  %113 = load ptr, ptr %112, align 4
  %114 = call i32 @clk_enable(ptr noundef %113) #14
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %126, label %116

116:                                              ; preds = %106
  %117 = shl i32 %109, 16
  %118 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %55, i32 0, i32 1
  %119 = load ptr, ptr %118, align 4
  %120 = call i32 @regmap_update_bits_base(ptr noundef %119, i32 noundef 12, i32 noundef -65536, i32 noundef %117, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #14
  %121 = load ptr, ptr %56, align 8
  %122 = getelementptr inbounds %struct.stm32_sai_data, ptr %121, i32 0, i32 2
  %123 = load ptr, ptr %122, align 4
  call void @clk_disable(ptr noundef %123) #14
  br label %126

124:                                              ; preds = %76
  %125 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %125, ptr noundef nonnull @.str.42, i32 noundef %80) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  br label %377

126:                                              ; preds = %116, %106, %103
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  %127 = load ptr, ptr %5, align 4
  %128 = getelementptr inbounds %struct.device, ptr %127, i32 0, i32 8
  %129 = load ptr, ptr %128, align 8
  %130 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %129, i32 0, i32 17
  %131 = load i32, ptr %130, align 4
  %132 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %129, i32 0, i32 23
  %133 = load i32, ptr %132, align 4
  %134 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %129, i32 0, i32 22
  %135 = load i32, ptr %134, align 8
  %136 = mul i32 %135, %133
  %137 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %129, i32 0, i32 21
  store i32 %136, ptr %137, align 4
  %138 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %129, i32 0, i32 7
  %139 = load ptr, ptr %138, align 8
  %140 = getelementptr inbounds %struct.stm32_sai_data, ptr %139, i32 0, i32 2
  %141 = load ptr, ptr %140, align 4
  %142 = call i32 @clk_enable(ptr noundef %141) #14
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %159, label %144

144:                                              ; preds = %126
  %145 = add i32 %136, -1
  %146 = and i32 %131, 14
  %147 = icmp eq i32 %146, 4
  %148 = sdiv i32 %136, 2
  %149 = shl i32 %148, 8
  %150 = add i32 %149, -256
  %151 = select i1 %147, i32 0, i32 %150
  %152 = or i32 %151, %145
  %153 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %129, i32 0, i32 1
  %154 = load ptr, ptr %153, align 4
  %155 = call i32 @regmap_update_bits_base(ptr noundef %154, i32 noundef 8, i32 noundef 32767, i32 noundef %152, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #14
  %156 = load ptr, ptr %138, align 8
  %157 = getelementptr inbounds %struct.stm32_sai_data, ptr %156, i32 0, i32 2
  %158 = load ptr, ptr %157, align 4
  call void @clk_disable(ptr noundef %158) #14
  br label %159

159:                                              ; preds = %144, %126
  %160 = load i32, ptr %130, align 4
  %161 = and i32 %160, 15
  %162 = icmp eq i32 %161, 2
  br i1 %162, label %163, label %180

163:                                              ; preds = %159
  %164 = load i32, ptr %132, align 4
  %165 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %129, i32 0, i32 25
  %166 = load i32, ptr %165, align 4
  %167 = load ptr, ptr %138, align 8
  %168 = getelementptr inbounds %struct.stm32_sai_data, ptr %167, i32 0, i32 2
  %169 = load ptr, ptr %168, align 4
  %170 = call i32 @clk_enable(ptr noundef %169) #14
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %180, label %172

172:                                              ; preds = %163
  %173 = sub i32 %164, %166
  %174 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %129, i32 0, i32 1
  %175 = load ptr, ptr %174, align 4
  %176 = call i32 @regmap_update_bits_base(ptr noundef %175, i32 noundef 12, i32 noundef 31, i32 noundef %173, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #14
  %177 = load ptr, ptr %138, align 8
  %178 = getelementptr inbounds %struct.stm32_sai_data, ptr %177, i32 0, i32 2
  %179 = load ptr, ptr %178, align 4
  call void @clk_disable(ptr noundef %179) #14
  br label %180

180:                                              ; preds = %172, %163, %159, %49, %28
  %181 = load ptr, ptr %5, align 4
  %182 = getelementptr inbounds %struct.device, ptr %181, i32 0, i32 8
  %183 = load ptr, ptr %182, align 8
  %184 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %183, i32 0, i32 7
  %185 = load ptr, ptr %184, align 8
  %186 = getelementptr inbounds %struct.stm32_sai_data, ptr %185, i32 0, i32 2
  %187 = load ptr, ptr %186, align 4
  %188 = call i32 @clk_enable(ptr noundef %187) #14
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %197, label %190

190:                                              ; preds = %180
  %191 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %183, i32 0, i32 1
  %192 = load ptr, ptr %191, align 4
  %193 = call i32 @regmap_update_bits_base(ptr noundef %192, i32 noundef 4, i32 noundef 15, i32 noundef 10, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #14
  %194 = load ptr, ptr %184, align 8
  %195 = getelementptr inbounds %struct.stm32_sai_data, ptr %194, i32 0, i32 2
  %196 = load ptr, ptr %195, align 4
  call void @clk_disable(ptr noundef %196) #14
  br label %197

197:                                              ; preds = %190, %180
  %198 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %183, i32 0, i32 16
  %199 = load i8, ptr %198, align 1, !range !9
  %200 = icmp eq i8 %199, 0
  br i1 %200, label %203, label %201

201:                                              ; preds = %197
  %202 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %183, i32 0, i32 26
  store i32 0, ptr %202, align 8
  br label %248

203:                                              ; preds = %197
  %204 = load i32, ptr %9, align 4
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %203
  %207 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 1
  %208 = load i32, ptr %207, align 4
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %219, label %210

210:                                              ; preds = %206, %203
  %211 = phi i32 [ 0, %203 ], [ 32, %206 ]
  %212 = phi i32 [ %204, %203 ], [ %208, %206 ]
  %213 = call i32 @llvm.cttz.i32(i32 %212, i1 true) #14, !range !14
  %214 = or i32 %213, %211
  switch i32 %214, label %217 [
    i32 0, label %219
    i32 2, label %215
    i32 10, label %216
  ]

215:                                              ; preds = %210
  br label %219

216:                                              ; preds = %210
  br label %219

217:                                              ; preds = %210
  %218 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %218, ptr noundef nonnull @.str.43) #15
  br label %377

219:                                              ; preds = %216, %215, %210, %206
  %220 = phi i32 [ 224, %216 ], [ 128, %215 ], [ 64, %210 ], [ 64, %206 ]
  %221 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %183, i32 0, i32 22
  %222 = load i32, ptr %221, align 8
  %223 = icmp eq i32 %222, 2
  br i1 %223, label %224, label %230

224:                                              ; preds = %219
  %225 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 2
  %226 = load i32, ptr %225, align 4
  %227 = icmp eq i32 %226, 1
  %228 = or i32 %220, 4096
  %229 = select i1 %227, i32 %228, i32 %220
  br label %230

230:                                              ; preds = %224, %219
  %231 = phi i32 [ %220, %219 ], [ %229, %224 ]
  %232 = load ptr, ptr %184, align 8
  %233 = getelementptr inbounds %struct.stm32_sai_data, ptr %232, i32 0, i32 2
  %234 = load ptr, ptr %233, align 4
  %235 = call i32 @clk_enable(ptr noundef %234) #14
  %236 = icmp slt i32 %235, 0
  br i1 %236, label %245, label %237

237:                                              ; preds = %230
  %238 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %183, i32 0, i32 1
  %239 = load ptr, ptr %238, align 4
  %240 = call i32 @regmap_update_bits_base(ptr noundef %239, i32 noundef 0, i32 noundef 4320, i32 noundef %231, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #14
  %241 = load ptr, ptr %184, align 8
  %242 = getelementptr inbounds %struct.stm32_sai_data, ptr %241, i32 0, i32 2
  %243 = load ptr, ptr %242, align 4
  call void @clk_disable(ptr noundef %243) #14
  %244 = icmp slt i32 %240, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %237, %230
  %246 = phi i32 [ %240, %237 ], [ %235, %230 ]
  %247 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %247, ptr noundef nonnull @.str.30) #15
  br label %377

248:                                              ; preds = %237, %201
  %249 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %8, i32 0, i32 15
  %250 = load i8, ptr %249, align 8, !range !9
  %251 = icmp eq i8 %250, 0
  br i1 %251, label %377, label %252

252:                                              ; preds = %248
  %253 = load ptr, ptr %5, align 4
  %254 = getelementptr inbounds %struct.device, ptr %253, i32 0, i32 8
  %255 = load ptr, ptr %254, align 8
  %256 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 3
  %257 = load i32, ptr %256, align 4
  %258 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %255, i32 0, i32 10
  %259 = load ptr, ptr %258, align 4
  %260 = icmp eq ptr %259, null
  br i1 %260, label %261, label %279

261:                                              ; preds = %252
  %262 = load ptr, ptr %255, align 8
  %263 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %255, i32 0, i32 7
  %264 = load ptr, ptr %263, align 8
  %265 = getelementptr inbounds %struct.stm32_sai_data, ptr %264, i32 0, i32 3
  %266 = urem i32 %257, 11025
  %267 = icmp eq i32 %266, 0
  %268 = getelementptr inbounds %struct.stm32_sai_data, ptr %264, i32 0, i32 4
  %269 = select i1 %267, ptr %268, ptr %265
  %270 = load ptr, ptr %269, align 4
  %271 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %255, i32 0, i32 9
  %272 = load ptr, ptr %271, align 8
  %273 = call i32 @clk_set_parent(ptr noundef %272, ptr noundef %270) #14
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %279, label %275

275:                                              ; preds = %261
  %276 = getelementptr inbounds %struct.platform_device, ptr %262, i32 0, i32 3
  %277 = icmp eq i32 %273, -16
  %278 = select i1 %277, ptr @.str.35, ptr @.str.36
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %276, ptr noundef nonnull @.str.34, i32 noundef %273, ptr noundef nonnull %278) #15
  br label %377

279:                                              ; preds = %261, %252
  %280 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %255, i32 0, i32 9
  %281 = load ptr, ptr %280, align 8
  %282 = call i32 @clk_get_rate(ptr noundef %281) #14
  %283 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %255, i32 0, i32 7
  %284 = load ptr, ptr %283, align 8
  %285 = getelementptr inbounds %struct.stm32_sai_data, ptr %284, i32 0, i32 5
  %286 = load i32, ptr %285, align 4
  %287 = icmp eq i32 %286, 16
  br i1 %287, label %288, label %307

288:                                              ; preds = %279
  %289 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %255, i32 0, i32 12
  %290 = load i32, ptr %289, align 4
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %377, label %292

292:                                              ; preds = %288
  %293 = shl i32 %282, 1
  %294 = mul i32 %290, 3
  %295 = icmp ult i32 %293, %294
  br i1 %295, label %374, label %296

296:                                              ; preds = %292
  %297 = shl i32 %290, 1
  %298 = and i32 %290, 2147483647
  %299 = add i32 %298, %282
  %300 = udiv i32 %299, %297
  %301 = icmp sgt i32 %300, 15
  br i1 %301, label %302, label %305

302:                                              ; preds = %296
  %303 = load ptr, ptr %255, align 8
  %304 = getelementptr inbounds %struct.platform_device, ptr %303, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %304, ptr noundef nonnull @.str.29, i32 noundef %300) #15
  br label %377

305:                                              ; preds = %296
  %306 = icmp slt i32 %300, 0
  br i1 %306, label %377, label %374

307:                                              ; preds = %279
  %308 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %255, i32 0, i32 16
  %309 = load i8, ptr %308, align 1, !range !9
  %310 = icmp eq i8 %309, 0
  br i1 %310, label %322, label %311

311:                                              ; preds = %307
  %312 = shl i32 %257, 7
  %313 = lshr exact i32 %312, 1
  %314 = add i32 %282, %313
  %315 = udiv i32 %314, %312
  %316 = icmp sgt i32 %315, 63
  br i1 %316, label %317, label %320

317:                                              ; preds = %311
  %318 = load ptr, ptr %255, align 8
  %319 = getelementptr inbounds %struct.platform_device, ptr %318, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %319, ptr noundef nonnull @.str.29, i32 noundef %315) #15
  br label %377

320:                                              ; preds = %311
  %321 = icmp slt i32 %315, 0
  br i1 %321, label %377, label %374

322:                                              ; preds = %307
  %323 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %255, i32 0, i32 12
  %324 = load i32, ptr %323, align 4
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %360, label %326

326:                                              ; preds = %322
  %327 = udiv i32 %324, %257
  switch i32 %327, label %328 [
    i32 512, label %331
    i32 256, label %330
  ]

328:                                              ; preds = %326
  %329 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %329, ptr noundef nonnull @.str.44, i32 noundef %327) #15
  br label %377

330:                                              ; preds = %326
  br label %331

331:                                              ; preds = %330, %326
  %332 = phi i32 [ 67108864, %326 ], [ 0, %330 ]
  %333 = getelementptr inbounds %struct.stm32_sai_data, ptr %284, i32 0, i32 2
  %334 = load ptr, ptr %333, align 4
  %335 = call i32 @clk_enable(ptr noundef %334) #14
  %336 = icmp slt i32 %335, 0
  br i1 %336, label %344, label %337

337:                                              ; preds = %331
  %338 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %255, i32 0, i32 1
  %339 = load ptr, ptr %338, align 4
  %340 = call i32 @regmap_update_bits_base(ptr noundef %339, i32 noundef 0, i32 noundef 67108864, i32 noundef %332, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #14
  %341 = load ptr, ptr %283, align 8
  %342 = getelementptr inbounds %struct.stm32_sai_data, ptr %341, i32 0, i32 2
  %343 = load ptr, ptr %342, align 4
  call void @clk_disable(ptr noundef %343) #14
  br label %344

344:                                              ; preds = %337, %331
  %345 = load i32, ptr %323, align 4
  %346 = load ptr, ptr %283, align 8
  %347 = getelementptr inbounds %struct.stm32_sai_data, ptr %346, i32 0, i32 5
  %348 = load i32, ptr %347, align 4
  %349 = lshr i32 %345, 1
  %350 = add i32 %349, %282
  %351 = udiv i32 %350, %345
  %352 = icmp eq i32 %348, 16
  %353 = select i1 %352, i32 15, i32 63
  %354 = icmp sgt i32 %351, %353
  br i1 %354, label %355, label %358

355:                                              ; preds = %344
  %356 = load ptr, ptr %255, align 8
  %357 = getelementptr inbounds %struct.platform_device, ptr %356, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %357, ptr noundef nonnull @.str.29, i32 noundef %351) #15
  br label %377

358:                                              ; preds = %344
  %359 = icmp slt i32 %351, 0
  br i1 %359, label %377, label %374

360:                                              ; preds = %322
  %361 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %255, i32 0, i32 21
  %362 = load i32, ptr %361, align 4
  %363 = load i32, ptr %256, align 4
  %364 = mul i32 %363, %362
  %365 = lshr i32 %364, 1
  %366 = add i32 %365, %282
  %367 = udiv i32 %366, %364
  %368 = icmp sgt i32 %367, 63
  br i1 %368, label %369, label %372

369:                                              ; preds = %360
  %370 = load ptr, ptr %255, align 8
  %371 = getelementptr inbounds %struct.platform_device, ptr %370, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %371, ptr noundef nonnull @.str.29, i32 noundef %367) #15
  br label %377

372:                                              ; preds = %360
  %373 = icmp slt i32 %367, 0
  br i1 %373, label %377, label %374

374:                                              ; preds = %372, %358, %320, %305, %292
  %375 = phi i32 [ %300, %305 ], [ 0, %292 ], [ %315, %320 ], [ %351, %358 ], [ %367, %372 ]
  %376 = call fastcc i32 @stm32_sai_set_clk_div(ptr noundef %255, i32 noundef %375) #14
  br label %377

377:                                              ; preds = %374, %372, %369, %358, %355, %328, %320, %317, %305, %302, %288, %275, %248, %245, %217, %124
  %378 = phi i32 [ -22, %124 ], [ 0, %248 ], [ -22, %217 ], [ %246, %245 ], [ %376, %374 ], [ -22, %328 ], [ %273, %275 ], [ 0, %288 ], [ %300, %305 ], [ %315, %320 ], [ %351, %358 ], [ %367, %372 ], [ -22, %302 ], [ -22, %317 ], [ -22, %355 ], [ -22, %369 ]
  ret i32 %378
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_sai_trigger(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  switch i32 %1, label %90 [
    i32 1, label %8
    i32 6, label %8
    i32 4, label %8
    i32 5, label %39
    i32 3, label %39
    i32 0, label %39
  ]

8:                                                ; preds = %3, %3, %3
  %9 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %7, i32 0, i32 7
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.stm32_sai_data, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @clk_enable(ptr noundef %12) #14
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %7, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 0, i32 noundef 131072, i32 noundef 131072, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #14
  %19 = load ptr, ptr %9, align 8
  %20 = getelementptr inbounds %struct.stm32_sai_data, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  tail call void @clk_disable(ptr noundef %21) #14
  br label %22

22:                                               ; preds = %15, %8
  %23 = load ptr, ptr %9, align 8
  %24 = getelementptr inbounds %struct.stm32_sai_data, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @clk_enable(ptr noundef %25) #14
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %7, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 0, i32 noundef 65536, i32 noundef 65536, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #14
  %32 = load ptr, ptr %9, align 8
  %33 = getelementptr inbounds %struct.stm32_sai_data, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  tail call void @clk_disable(ptr noundef %34) #14
  %35 = icmp slt i32 %31, 0
  br i1 %35, label %36, label %90

36:                                               ; preds = %28, %22
  %37 = phi i32 [ %31, %28 ], [ %26, %22 ]
  %38 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.30) #15
  br label %90

39:                                               ; preds = %3, %3, %3
  %40 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %7, i32 0, i32 7
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.stm32_sai_data, ptr %41, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 @clk_enable(ptr noundef %43) #14
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %7, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = tail call i32 @regmap_update_bits_base(ptr noundef %48, i32 noundef 16, i32 noundef 127, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #14
  %50 = load ptr, ptr %40, align 8
  %51 = getelementptr inbounds %struct.stm32_sai_data, ptr %50, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  tail call void @clk_disable(ptr noundef %52) #14
  br label %53

53:                                               ; preds = %46, %39
  %54 = load ptr, ptr %40, align 8
  %55 = getelementptr inbounds %struct.stm32_sai_data, ptr %54, i32 0, i32 2
  %56 = load ptr, ptr %55, align 4
  %57 = tail call i32 @clk_enable(ptr noundef %56) #14
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %7, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = tail call i32 @regmap_update_bits_base(ptr noundef %61, i32 noundef 0, i32 noundef 65536, i32 noundef -65537, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #14
  %63 = load ptr, ptr %40, align 8
  %64 = getelementptr inbounds %struct.stm32_sai_data, ptr %63, i32 0, i32 2
  %65 = load ptr, ptr %64, align 4
  tail call void @clk_disable(ptr noundef %65) #14
  br label %66

66:                                               ; preds = %59, %53
  %67 = load ptr, ptr %40, align 8
  %68 = getelementptr inbounds %struct.stm32_sai_data, ptr %67, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  %70 = tail call i32 @clk_enable(ptr noundef %69) #14
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %7, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = tail call i32 @regmap_update_bits_base(ptr noundef %74, i32 noundef 0, i32 noundef 131072, i32 noundef -131073, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #14
  %76 = load ptr, ptr %40, align 8
  %77 = getelementptr inbounds %struct.stm32_sai_data, ptr %76, i32 0, i32 2
  %78 = load ptr, ptr %77, align 4
  tail call void @clk_disable(ptr noundef %78) #14
  %79 = icmp slt i32 %75, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %72, %66
  %81 = phi i32 [ %75, %72 ], [ %70, %66 ]
  %82 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %82, ptr noundef nonnull @.str.30) #15
  br label %83

83:                                               ; preds = %80, %72
  %84 = phi i32 [ %81, %80 ], [ %75, %72 ]
  %85 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %7, i32 0, i32 16
  %86 = load i8, ptr %85, align 1, !range !9
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %7, i32 0, i32 26
  store i32 0, ptr %89, align 8
  br label %90

90:                                               ; preds = %88, %83, %36, %28, %3
  %91 = phi i32 [ -22, %3 ], [ %84, %88 ], [ %84, %83 ], [ %37, %36 ], [ %31, %28 ]
  ret i32 %91
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_rate_exclusive_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate_exclusive(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_mask64(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_minmax(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_stop_xrun(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_sai_pcm_process_spdif(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3, i32 noundef %4) #12 {
  %6 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %9, i32 0, i32 9
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.snd_soc_dai, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 8
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 50
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 %2
  %20 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 52
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 15
  %23 = load i32, ptr %22, align 8
  %24 = udiv i32 %21, %23
  %25 = mul i32 %24, %1
  %26 = getelementptr i8, ptr %19, i32 %25
  %27 = shl i32 %4, 3
  %28 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 22
  %29 = load i32, ptr %28, align 4
  %30 = udiv i32 %27, %29
  %31 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %16, i32 0, i32 26
  %32 = load i32, ptr %31, align 8
  %33 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %16, i32 0, i32 27
  br label %34

34:                                               ; preds = %50, %5
  %35 = phi ptr [ %26, %5 ], [ %51, %50 ]
  %36 = phi i32 [ %30, %5 ], [ %57, %50 ]
  %37 = phi i32 [ %32, %5 ], [ %56, %50 ]
  %38 = load i32, ptr %35, align 4
  %39 = lshr i32 %38, 8
  store i32 %39, ptr %35, align 4
  %40 = lshr i32 %37, 3
  %41 = and i32 %37, 7
  %42 = shl nuw nsw i32 1, %41
  %43 = getelementptr [24 x i8], ptr %33, i32 0, i32 %40
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i32
  %46 = and i32 %42, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %34
  %49 = or i32 %39, 67108864
  store i32 %49, ptr %35, align 4
  br label %50

50:                                               ; preds = %48, %34
  %51 = getelementptr i32, ptr %35, i32 1
  %52 = and i32 %36, 1
  %53 = xor i32 %52, 1
  %54 = add i32 %53, %37
  %55 = icmp eq i32 %54, 192
  %56 = select i1 %55, i32 0, i32 %54
  %57 = add i32 %36, -1
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %34

59:                                               ; preds = %50
  store i32 %56, ptr %31, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_unregister_component(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_sai_sub_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.stm32_sai_data, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @clk_enable(ptr noundef %7) #14
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void @regcache_cache_only(ptr noundef %12, i1 noundef zeroext true) #14
  %13 = load ptr, ptr %11, align 4
  tail call void @regcache_mark_dirty(ptr noundef %13) #14
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr inbounds %struct.stm32_sai_data, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  tail call void @clk_disable(ptr noundef %16) #14
  br label %17

17:                                               ; preds = %10, %1
  %18 = phi i32 [ 0, %10 ], [ %8, %1 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_sai_sub_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.stm32_sai_data, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @clk_enable(ptr noundef %7) #14
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.stm32_sai_sub_data, ptr %3, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void @regcache_cache_only(ptr noundef %12, i1 noundef zeroext false) #14
  %13 = load ptr, ptr %11, align 4
  %14 = tail call i32 @regcache_sync(ptr noundef %13) #14
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr inbounds %struct.stm32_sai_data, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  tail call void @clk_disable(ptr noundef %17) #14
  br label %18

18:                                               ; preds = %10, %1
  %19 = phi i32 [ %14, %10 ], [ %8, %1 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strlen(ptr nocapture) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #11

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nounwind }
attributes #15 = { cold nounwind }

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
!10 = !{i64 2148919672}
!11 = !{i64 2148915496}
!12 = !{i64 2148915571, i64 2148915598, i64 2148915645, i64 2148915667, i64 2148915695, i64 2148915715}
!13 = !{i64 2148942675}
!14 = !{i32 0, i32 33}
