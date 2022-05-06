; ModuleID = '/llk/IR/sound/soc/fsl/fsl_sai.c_pt.bc'
source_filename = "../sound/soc/fsl/fsl_sai.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.fsl_sai_soc_data = type { i8, i8, i8, i32, i32, i32 }
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
%struct.reg_default = type { i32, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.88, ptr }
%union.anon.88 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.fsl_sai = type { ptr, ptr, ptr, [4 x ptr], i8, i8, i8, [2 x i8], [2 x i32], i32, i32, i32, i32, ptr, %struct.snd_soc_dai_driver, %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data, %struct.fsl_sai_verid, %struct.fsl_sai_param, %struct.pm_qos_request }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.fsl_sai_verid = type { i32, i32, i32 }
%struct.fsl_sai_param = type { i32, i32, i32 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, ptr, i8 }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@fsl_sai_ids = internal constant [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,vf610-sai\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fsl_sai_vf610_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6sx-sai\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fsl_sai_imx6sx_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6ul-sai\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fsl_sai_imx6sx_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx7ulp-sai\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fsl_sai_imx7ulp_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8mq-sai\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fsl_sai_imx8mq_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8qm-sai\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fsl_sai_imx8qm_data }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description235 = internal constant [40 x i8] c"description=Freescale Soc SAI Interface\00", section ".modinfo", align 1
@__UNIQUE_ID_author236 = internal constant [42 x i8] c"author=Xiubo Li, <Li.Xiubo@freescale.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias237 = internal constant [23 x i8] c"alias=platform:fsl-sai\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@fsl_sai_vf610_data = internal constant %struct.fsl_sai_soc_data { i8 0, i8 0, i8 0, i32 32, i32 0, i32 0 }, align 4
@fsl_sai_imx6sx_data = internal constant %struct.fsl_sai_soc_data { i8 1, i8 0, i8 1, i32 32, i32 0, i32 0 }, align 4
@fsl_sai_imx7ulp_data = internal constant %struct.fsl_sai_soc_data { i8 1, i8 0, i8 0, i32 16, i32 8, i32 1 }, align 4
@fsl_sai_imx8mq_data = internal constant %struct.fsl_sai_soc_data { i8 1, i8 0, i8 0, i32 128, i32 8, i32 0 }, align 4
@fsl_sai_imx8qm_data = internal constant %struct.fsl_sai_soc_data { i8 1, i8 1, i8 0, i32 64, i32 0, i32 0 }, align 4
@fsl_sai_driver = internal global %struct.platform_driver { ptr @fsl_sai_probe, ptr @fsl_sai_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @fsl_sai_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsl_sai_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [8 x i8] c"fsl-sai\00", align 1
@fsl_sai_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsl_sai_runtime_suspend, ptr @fsl_sai_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"lsb-first\00", align 1
@fsl_sai_reg_defaults_ofs8 = internal global [22 x %struct.reg_default] [%struct.reg_default { i32 12, i32 0 }, %struct.reg_default { i32 16, i32 0 }, %struct.reg_default { i32 20, i32 0 }, %struct.reg_default { i32 24, i32 0 }, %struct.reg_default { i32 28, i32 0 }, %struct.reg_default { i32 32, i32 0 }, %struct.reg_default { i32 36, i32 0 }, %struct.reg_default { i32 40, i32 0 }, %struct.reg_default { i32 44, i32 0 }, %struct.reg_default { i32 48, i32 0 }, %struct.reg_default { i32 52, i32 0 }, %struct.reg_default { i32 56, i32 0 }, %struct.reg_default { i32 60, i32 0 }, %struct.reg_default { i32 96, i32 0 }, %struct.reg_default { i32 140, i32 0 }, %struct.reg_default { i32 144, i32 0 }, %struct.reg_default { i32 148, i32 0 }, %struct.reg_default { i32 152, i32 0 }, %struct.reg_default { i32 156, i32 0 }, %struct.reg_default { i32 224, i32 0 }, %struct.reg_default { i32 256, i32 0 }, %struct.reg_default { i32 260, i32 0 }], align 4
@fsl_sai_regmap_config = internal global %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr @fsl_sai_writeable_reg, ptr @fsl_sai_readable_reg, ptr @fsl_sai_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 224, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsl_sai_reg_defaults_ofs0, i32 20, i32 3, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"regmap init failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"sai\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"failed to get bus clock: %ld\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"mclk%d\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"failed to get mclk%d clock: %ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"failed to claim irq %u\0A\00", align 1
@fsl_sai_dai_template = internal unnamed_addr constant %struct.snd_soc_dai_driver { ptr null, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @fsl_sai_dai_probe, ptr null, ptr null, ptr null, ptr @fsl_sai_pcm_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.17, i64 68719477828, i32 -2147483648, i32 8000, i32 192000, i32 1, i32 32, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.18, i64 68719477828, i32 -2147483648, i32 8000, i32 192000, i32 1, i32 32, i32 0 }, i8 0, i32 0, i32 0 }, align 8
@.str.9 = private unnamed_addr constant [23 x i8] c"fsl,sai-synchronous-rx\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"fsl,sai-asynchronous\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"invalid binding for synchronous mode\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"fsl,sai-mclk-direction-output\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"fsl,imx6ul-sai\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"fsl,imx6ul-iomuxc-gpr\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"cannot find iomuxc registers\0A\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"Error reading SAI version: %d\0A\00", align 1
@fsl_component = internal constant %struct.snd_soc_component_driver { ptr @.str, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@fsl_sai_reg_defaults_ofs0 = internal global [20 x %struct.reg_default] [%struct.reg_default { i32 4, i32 0 }, %struct.reg_default { i32 8, i32 0 }, %struct.reg_default { i32 12, i32 0 }, %struct.reg_default { i32 16, i32 0 }, %struct.reg_default { i32 20, i32 0 }, %struct.reg_default { i32 32, i32 0 }, %struct.reg_default { i32 36, i32 0 }, %struct.reg_default { i32 40, i32 0 }, %struct.reg_default { i32 44, i32 0 }, %struct.reg_default { i32 48, i32 0 }, %struct.reg_default { i32 52, i32 0 }, %struct.reg_default { i32 56, i32 0 }, %struct.reg_default { i32 60, i32 0 }, %struct.reg_default { i32 96, i32 0 }, %struct.reg_default { i32 132, i32 0 }, %struct.reg_default { i32 136, i32 0 }, %struct.reg_default { i32 140, i32 0 }, %struct.reg_default { i32 144, i32 0 }, %struct.reg_default { i32 148, i32 0 }, %struct.reg_default { i32 224, i32 0 }], align 4
@fsl_sai_pcm_dai_ops = internal constant %struct.snd_soc_dai_ops { ptr @fsl_sai_set_dai_sysclk, ptr null, ptr null, ptr @fsl_sai_set_dai_bclk_ratio, ptr @fsl_sai_set_dai_fmt, ptr null, ptr @fsl_sai_set_dai_tdm_slot, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsl_sai_startup, ptr null, ptr @fsl_sai_hw_params, ptr @fsl_sai_hw_free, ptr null, ptr @fsl_sai_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, align 4
@.str.17 = private unnamed_addr constant [12 x i8] c"CPU-Capture\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"CPU-Playback\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"Cannot set tx sysclk: %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"Cannot set tx format: %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"Cannot set rx format: %d\0A\00", align 1
@fsl_sai_rate_constraints = internal constant %struct.snd_pcm_hw_constraint_list { ptr @fsl_sai_rates, i32 14, i32 0 }, align 4
@fsl_sai_rates = internal constant [14 x i32] [i32 8000, i32 11025, i32 12000, i32 16000, i32 22050, i32 24000, i32 32000, i32 44100, i32 48000, i32 64000, i32 88200, i32 96000, i32 176400, i32 192000], align 4
@.str.23 = private unnamed_addr constant [40 x i8] c"failed to derive required %cx rate: %d\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.24 = private unnamed_addr constant [32 x i8] c"failed to enable bus clock: %d\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias237, ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_description235, ptr @__UNIQUE_ID_license238], section "llvm.metadata"

@__mod_of__fsl_sai_ids_device_table = dso_local alias [7 x %struct.of_device_id], ptr @fsl_sai_ids

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @fsl_sai_driver, ptr noundef nonnull @__this_module) #11
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @fsl_sai_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsl_sai_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  %4 = alloca [8 x i8], align 8
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store ptr null, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  store i64 0, ptr %4, align 8, !annotation !8
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 352, i32 noundef 3520) #11
  %9 = icmp eq ptr %8, null
  br i1 %9, label %229, label %10

10:                                               ; preds = %1
  store ptr %0, ptr %8, align 8
  %11 = tail call ptr @of_device_get_match_data(ptr noundef %5) #11
  %12 = getelementptr inbounds %struct.fsl_sai, ptr %8, i32 0, i32 13
  store ptr %11, ptr %12, align 4
  %13 = tail call ptr @of_find_property(ptr noundef %7, ptr noundef nonnull @.str.1, ptr noundef null) #11
  %14 = icmp ne ptr %13, null
  %15 = getelementptr inbounds %struct.fsl_sai, ptr %8, i32 0, i32 5
  %16 = zext i1 %14 to i8
  store i8 %16, ptr %15, align 1
  %17 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %3) #11
  %18 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %21

19:                                               ; preds = %10
  %20 = ptrtoint ptr %17 to i32
  br label %229

21:                                               ; preds = %10
  %22 = load ptr, ptr %12, align 4
  %23 = getelementptr inbounds %struct.fsl_sai_soc_data, ptr %22, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 8
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store ptr @fsl_sai_reg_defaults_ofs8, ptr getelementptr inbounds (%struct.regmap_config, ptr @fsl_sai_regmap_config, i32 0, i32 26), align 4
  store i32 260, ptr getelementptr inbounds (%struct.regmap_config, ptr @fsl_sai_regmap_config, i32 0, i32 19), align 4
  store i32 22, ptr getelementptr inbounds (%struct.regmap_config, ptr @fsl_sai_regmap_config, i32 0, i32 27), align 4
  br label %27

27:                                               ; preds = %26, %21
  %28 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %5, ptr noundef null, ptr noundef %17, ptr noundef nonnull @fsl_sai_regmap_config, ptr noundef null, ptr noundef null) #11
  %29 = getelementptr inbounds %struct.fsl_sai, ptr %8, i32 0, i32 1
  store ptr %28, ptr %29, align 4
  %30 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.2) #12
  %32 = load ptr, ptr %29, align 4
  %33 = ptrtoint ptr %32 to i32
  br label %229

34:                                               ; preds = %27
  %35 = call ptr @devm_clk_get(ptr noundef %5, ptr noundef nonnull @.str.3) #11
  %36 = getelementptr inbounds %struct.fsl_sai, ptr %8, i32 0, i32 2
  store ptr %35, ptr %36, align 8
  %37 = icmp ule ptr %35, inttoptr (i32 -4096 to ptr)
  %38 = icmp eq ptr %35, inttoptr (i32 -517 to ptr)
  %39 = or i1 %37, %38
  br i1 %39, label %42, label %40

40:                                               ; preds = %34
  %41 = call ptr @devm_clk_get(ptr noundef %5, ptr noundef nonnull @.str.4) #11
  store ptr %41, ptr %36, align 8
  br label %42

42:                                               ; preds = %40, %34
  %43 = phi ptr [ %41, %40 ], [ %35, %34 ]
  %44 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  br i1 %44, label %50, label %45

45:                                               ; preds = %42
  %46 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.6, i32 noundef 1)
  %47 = call ptr @devm_clk_get(ptr noundef %5, ptr noundef nonnull %4) #11
  %48 = getelementptr %struct.fsl_sai, ptr %8, i32 0, i32 3, i32 1
  store ptr %47, ptr %48, align 4
  %49 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  br i1 %49, label %54, label %56

50:                                               ; preds = %42
  %51 = ptrtoint ptr %43 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.5, i32 noundef %51) #12
  %52 = load ptr, ptr %36, align 8
  %53 = ptrtoint ptr %52 to i32
  br label %229

54:                                               ; preds = %45
  %55 = ptrtoint ptr %47 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.7, i32 noundef 2, i32 noundef %55) #12
  store ptr null, ptr %48, align 4
  br label %56

56:                                               ; preds = %54, %45
  %57 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.6, i32 noundef 2)
  %58 = call ptr @devm_clk_get(ptr noundef %5, ptr noundef nonnull %4) #11
  %59 = getelementptr %struct.fsl_sai, ptr %8, i32 0, i32 3, i32 2
  store ptr %58, ptr %59, align 4
  %60 = icmp ugt ptr %58, inttoptr (i32 -4096 to ptr)
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = ptrtoint ptr %58 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.7, i32 noundef 3, i32 noundef %62) #12
  store ptr null, ptr %59, align 4
  br label %63

63:                                               ; preds = %61, %56
  %64 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.6, i32 noundef 3)
  %65 = call ptr @devm_clk_get(ptr noundef %5, ptr noundef nonnull %4) #11
  %66 = getelementptr %struct.fsl_sai, ptr %8, i32 0, i32 3, i32 3
  store ptr %65, ptr %66, align 4
  %67 = icmp ugt ptr %65, inttoptr (i32 -4096 to ptr)
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = ptrtoint ptr %65 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.7, i32 noundef 4, i32 noundef %69) #12
  store ptr null, ptr %66, align 4
  br label %70

70:                                               ; preds = %68, %63
  %71 = load ptr, ptr %12, align 4
  %72 = getelementptr inbounds %struct.fsl_sai_soc_data, ptr %71, i32 0, i32 2
  %73 = load i8, ptr %72, align 2, !range !9
  %74 = icmp eq i8 %73, 0
  %75 = select i1 %74, ptr %36, ptr %48
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.fsl_sai, ptr %8, i32 0, i32 3
  store ptr %76, ptr %77, align 4
  %78 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #11
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %229, label %80

80:                                               ; preds = %70
  %81 = load ptr, ptr %7, align 4
  %82 = call i32 @devm_request_threaded_irq(ptr noundef %5, i32 noundef %78, ptr noundef nonnull @fsl_sai_isr, ptr noundef null, i32 noundef 128, ptr noundef %81, ptr noundef nonnull %8) #11
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.8, i32 noundef %78) #12
  br label %229

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.fsl_sai, ptr %8, i32 0, i32 14
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(168) %86, ptr noundef nonnull align 8 dereferenceable(168) @fsl_sai_dai_template, i32 168, i1 false)
  %87 = getelementptr inbounds %struct.fsl_sai, ptr %8, i32 0, i32 7
  store i8 1, ptr %87, align 1
  %88 = getelementptr %struct.fsl_sai, ptr %8, i32 0, i32 7, i32 1
  store i8 0, ptr %88, align 1
  %89 = getelementptr inbounds %struct.fsl_sai, ptr %8, i32 0, i32 14, i32 12
  store i8 7, ptr %89, align 8
  %90 = call ptr @of_find_property(ptr noundef %7, ptr noundef nonnull @.str.9, ptr noundef null) #11
  %91 = icmp eq ptr %90, null
  br i1 %91, label %96, label %92

92:                                               ; preds = %85
  %93 = call ptr @of_find_property(ptr noundef %7, ptr noundef nonnull @.str.10, ptr noundef null) #11
  %94 = icmp eq ptr %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %92
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.11) #12
  br label %229

96:                                               ; preds = %92, %85
  %97 = call ptr @of_find_property(ptr noundef %7, ptr noundef nonnull @.str.9, ptr noundef null) #11
  %98 = icmp eq ptr %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %96
  store i8 0, ptr %87, align 1
  store i8 1, ptr %88, align 1
  br label %106

100:                                              ; preds = %96
  %101 = call ptr @of_find_property(ptr noundef %7, ptr noundef nonnull @.str.10, ptr noundef null) #11
  %102 = icmp eq ptr %101, null
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  store i8 0, ptr %87, align 1
  store i8 0, ptr %88, align 1
  %104 = load i8, ptr %89, align 8
  %105 = and i8 %104, -8
  store i8 %105, ptr %89, align 8
  br label %106

106:                                              ; preds = %103, %100, %99
  %107 = call ptr @of_find_property(ptr noundef %7, ptr noundef nonnull @.str.12, ptr noundef null) #11
  %108 = icmp eq ptr %107, null
  br i1 %108, label %126, label %109

109:                                              ; preds = %106
  %110 = call i32 @of_device_is_compatible(ptr noundef %7, ptr noundef nonnull @.str.13) #11
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %126, label %112

112:                                              ; preds = %109
  %113 = call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.14) #11
  %114 = icmp ugt ptr %113, inttoptr (i32 -4096 to ptr)
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.15) #12
  %116 = ptrtoint ptr %113 to i32
  br label %229

117:                                              ; preds = %112
  %118 = call i32 @of_alias_get_id(ptr noundef %7, ptr noundef nonnull @.str.4) #11
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %229, label %120

120:                                              ; preds = %117
  %121 = icmp eq i32 %118, 1
  %122 = icmp eq i32 %118, 2
  %123 = select i1 %122, i32 1048576, i32 2097152
  %124 = select i1 %121, i32 524288, i32 %123
  %125 = call i32 @regmap_update_bits_base(ptr noundef %113, i32 noundef 4, i32 noundef %124, i32 noundef %124, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %126

126:                                              ; preds = %120, %109, %106
  %127 = load ptr, ptr %3, align 4
  %128 = load i32, ptr %127, align 4
  %129 = add i32 %128, 160
  %130 = getelementptr inbounds %struct.fsl_sai, ptr %8, i32 0, i32 15
  store i32 %129, ptr %130, align 8
  %131 = load i32, ptr %127, align 4
  %132 = add i32 %131, 32
  %133 = getelementptr inbounds %struct.fsl_sai, ptr %8, i32 0, i32 16
  store i32 %132, ptr %133, align 4
  %134 = getelementptr inbounds %struct.fsl_sai, ptr %8, i32 0, i32 15, i32 2
  store i32 6, ptr %134, align 8
  %135 = getelementptr inbounds %struct.fsl_sai, ptr %8, i32 0, i32 16, i32 2
  store i32 6, ptr %135, align 4
  %136 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %8, ptr %136, align 8
  call void @pm_runtime_enable(ptr noundef %5) #11
  %137 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 15
  %138 = load i16, ptr %137, align 8
  %139 = and i16 %138, 7
  %140 = icmp eq i16 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %126
  %142 = call i32 @fsl_sai_runtime_resume(ptr noundef %5)
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %227

144:                                              ; preds = %141, %126
  %145 = call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #11
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %144
  %148 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !10
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %148) #11, !srcloc !11
  %149 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %148, ptr %148, i32 0, i32 -1, ptr elementtype(i32) %148) #11, !srcloc !12
  %150 = extractvalue { i32, i32, i32 } %149, 0
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %220, label %152

152:                                              ; preds = %147
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !13
  br label %220

153:                                              ; preds = %144
  %154 = load ptr, ptr %136, align 8
  %155 = getelementptr inbounds %struct.fsl_sai, ptr %154, i32 0, i32 13
  %156 = load ptr, ptr %155, align 4
  %157 = getelementptr inbounds %struct.fsl_sai_soc_data, ptr %156, i32 0, i32 4
  %158 = load i32, ptr %157, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !annotation !8
  %159 = and i32 %158, 255
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %190, label %161

161:                                              ; preds = %153
  %162 = getelementptr inbounds %struct.fsl_sai, ptr %154, i32 0, i32 1
  %163 = load ptr, ptr %162, align 4
  %164 = call i32 @regmap_read(ptr noundef %163, i32 noundef 0, ptr noundef nonnull %2) #11
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %191, label %166

166:                                              ; preds = %161
  %167 = load i32, ptr %2, align 4
  %168 = lshr i32 %167, 24
  %169 = getelementptr inbounds %struct.fsl_sai, ptr %154, i32 0, i32 17
  store i32 %168, ptr %169, align 8
  %170 = lshr i32 %167, 16
  %171 = and i32 %170, 255
  %172 = getelementptr inbounds %struct.fsl_sai, ptr %154, i32 0, i32 17, i32 1
  store i32 %171, ptr %172, align 4
  %173 = and i32 %167, 65535
  %174 = getelementptr inbounds %struct.fsl_sai, ptr %154, i32 0, i32 17, i32 2
  store i32 %173, ptr %174, align 8
  %175 = load ptr, ptr %162, align 4
  %176 = call i32 @regmap_read(ptr noundef %175, i32 noundef 4, ptr noundef nonnull %2) #11
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %191, label %178

178:                                              ; preds = %166
  %179 = load i32, ptr %2, align 4
  %180 = lshr i32 %179, 16
  %181 = and i32 %180, 15
  %182 = shl nuw nsw i32 1, %181
  %183 = getelementptr inbounds %struct.fsl_sai, ptr %154, i32 0, i32 18
  store i32 %182, ptr %183, align 4
  %184 = lshr i32 %179, 8
  %185 = and i32 %184, 15
  %186 = shl nuw nsw i32 1, %185
  %187 = getelementptr inbounds %struct.fsl_sai, ptr %154, i32 0, i32 18, i32 1
  store i32 %186, ptr %187, align 4
  %188 = and i32 %179, 15
  %189 = getelementptr inbounds %struct.fsl_sai, ptr %154, i32 0, i32 18, i32 2
  store i32 %188, ptr %189, align 4
  br label %190

190:                                              ; preds = %178, %153
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  br label %193

191:                                              ; preds = %166, %161
  %192 = phi i32 [ %176, %166 ], [ %164, %161 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.16, i32 noundef %192) #12
  br label %193

193:                                              ; preds = %191, %190
  %194 = call ptr @of_find_property(ptr noundef %7, ptr noundef nonnull @.str.12, ptr noundef null) #11
  %195 = icmp eq ptr %194, null
  br i1 %195, label %207, label %196

196:                                              ; preds = %193
  %197 = getelementptr inbounds %struct.fsl_sai, ptr %8, i32 0, i32 17
  %198 = load i32, ptr %197, align 8
  %199 = icmp ugt i32 %198, 2
  br i1 %199, label %200, label %207

200:                                              ; preds = %196
  %201 = getelementptr inbounds %struct.fsl_sai, ptr %8, i32 0, i32 17, i32 1
  %202 = load i32, ptr %201, align 4
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %207, label %204

204:                                              ; preds = %200
  %205 = load ptr, ptr %29, align 4
  %206 = call i32 @regmap_update_bits_base(ptr noundef %205, i32 noundef 256, i32 noundef 1073741824, i32 noundef 1073741824, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %207

207:                                              ; preds = %204, %200, %196, %193
  %208 = call i32 @__pm_runtime_idle(ptr noundef %5, i32 noundef 4) #11
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %220, label %210

210:                                              ; preds = %207
  %211 = load ptr, ptr %12, align 4
  %212 = load i8, ptr %211, align 4, !range !9
  %213 = icmp eq i8 %212, 0
  br i1 %213, label %214, label %220

214:                                              ; preds = %210
  %215 = call i32 @devm_snd_dmaengine_pcm_register(ptr noundef %5, ptr noundef null, i32 noundef 0) #11
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %214
  %218 = call i32 @devm_snd_soc_register_component(ptr noundef %5, ptr noundef nonnull @fsl_component, ptr noundef %86, i32 noundef 1) #11
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %229, label %220

220:                                              ; preds = %217, %214, %210, %207, %152, %147
  %221 = phi i32 [ %208, %207 ], [ %218, %217 ], [ %215, %214 ], [ %145, %147 ], [ %145, %152 ], [ -19, %210 ]
  %222 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 18
  %223 = load i32, ptr %222, align 4
  %224 = icmp eq i32 %223, 2
  br i1 %224, label %227, label %225

225:                                              ; preds = %220
  %226 = call i32 @fsl_sai_runtime_suspend(ptr noundef %5)
  br label %227

227:                                              ; preds = %225, %220, %141
  %228 = phi i32 [ %221, %220 ], [ %221, %225 ], [ %142, %141 ]
  call void @__pm_runtime_disable(ptr noundef %5, i1 noundef zeroext true) #11
  br label %229

229:                                              ; preds = %227, %217, %117, %115, %95, %84, %70, %50, %31, %19, %1
  %230 = phi i32 [ %20, %19 ], [ %33, %31 ], [ %53, %50 ], [ %82, %84 ], [ -22, %95 ], [ %116, %115 ], [ %228, %227 ], [ -12, %1 ], [ %78, %70 ], [ %118, %117 ], [ 0, %217 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i32 %230
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsl_sai_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #11
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 18
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @fsl_sai_runtime_suspend(ptr noundef %2)
  br label %8

8:                                                ; preds = %6, %1
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsl_sai_isr(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.fsl_sai, ptr %1, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.fsl_sai_soc_data, ptr %5, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.fsl_sai, ptr %1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = call i32 @regmap_read(ptr noundef %9, i32 noundef %7, ptr noundef nonnull %3) #11
  %11 = load i32, ptr %3, align 4
  %12 = and i32 %11, 786432
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %2
  %15 = shl i32 %11, 7
  %16 = and i32 %15, 33554432
  %17 = and i32 %11, -2031617
  %18 = or i32 %16, %17
  store i32 %18, ptr %3, align 4
  %19 = load ptr, ptr %8, align 4
  %20 = or i32 %18, %12
  %21 = call i32 @regmap_write(ptr noundef %19, i32 noundef %7, i32 noundef %20) #11
  br label %22

22:                                               ; preds = %14, %2
  %23 = load ptr, ptr %8, align 4
  %24 = add i32 %7, 128
  %25 = call i32 @regmap_read(ptr noundef %23, i32 noundef %24, ptr noundef nonnull %3) #11
  %26 = load i32, ptr %3, align 4
  %27 = and i32 %26, 786432
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %22
  %30 = shl i32 %26, 7
  %31 = and i32 %30, 33554432
  %32 = and i32 %26, -2031617
  %33 = or i32 %31, %32
  store i32 %33, ptr %3, align 4
  %34 = load ptr, ptr %8, align 4
  %35 = or i32 %33, %27
  %36 = call i32 @regmap_write(ptr noundef %34, i32 noundef %24, i32 noundef %35) #11
  br label %40

37:                                               ; preds = %22
  %38 = xor i1 %13, true
  %39 = zext i1 %38 to i32
  br label %40

40:                                               ; preds = %37, %29
  %41 = phi i32 [ 1, %29 ], [ %39, %37 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i32 %41
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsl_sai_runtime_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.fsl_sai, ptr %3, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.fsl_sai_soc_data, ptr %5, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.fsl_sai, ptr %3, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @clk_prepare(ptr noundef %9) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = tail call i32 @clk_enable(ptr noundef %9) #11
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  tail call void @clk_unprepare(ptr noundef %9) #11
  br label %16

16:                                               ; preds = %15, %1
  %17 = phi i32 [ %13, %15 ], [ %10, %1 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef %17) #12
  br label %101

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.fsl_sai, ptr %3, i32 0, i32 9
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %18
  %24 = getelementptr %struct.fsl_sai, ptr %3, i32 0, i32 8, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr %struct.fsl_sai, ptr %3, i32 0, i32 3, i32 %25
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 @clk_prepare(ptr noundef %27) #11
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %98

30:                                               ; preds = %23
  %31 = tail call i32 @clk_enable(ptr noundef %27) #11
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %95

33:                                               ; preds = %30
  %34 = load i32, ptr %19, align 4
  br label %35

35:                                               ; preds = %33, %18
  %36 = phi i32 [ %34, %33 ], [ %20, %18 ]
  %37 = and i32 %36, 2
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.fsl_sai, ptr %3, i32 0, i32 8
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr %struct.fsl_sai, ptr %3, i32 0, i32 3, i32 %41
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 @clk_prepare(ptr noundef %43) #11
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %85

46:                                               ; preds = %39
  %47 = tail call i32 @clk_enable(ptr noundef %43) #11
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %82

49:                                               ; preds = %46, %35
  %50 = load ptr, ptr %4, align 4
  %51 = getelementptr inbounds %struct.fsl_sai_soc_data, ptr %50, i32 0, i32 5
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, 1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.fsl_sai, ptr %3, i32 0, i32 19
  tail call void @cpu_latency_qos_add_request(ptr noundef %56, i32 noundef 0) #11
  br label %57

57:                                               ; preds = %55, %49
  %58 = getelementptr inbounds %struct.fsl_sai, ptr %3, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  tail call void @regcache_cache_only(ptr noundef %59, i1 noundef zeroext false) #11
  %60 = load ptr, ptr %58, align 4
  tail call void @regcache_mark_dirty(ptr noundef %60) #11
  %61 = load ptr, ptr %58, align 4
  %62 = tail call i32 @regmap_write(ptr noundef %61, i32 noundef %7, i32 noundef 16777216) #11
  %63 = load ptr, ptr %58, align 4
  %64 = add i32 %7, 128
  %65 = tail call i32 @regmap_write(ptr noundef %63, i32 noundef %64, i32 noundef 16777216) #11
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  %66 = load ptr, ptr %58, align 4
  %67 = tail call i32 @regmap_write(ptr noundef %66, i32 noundef %7, i32 noundef 0) #11
  %68 = load ptr, ptr %58, align 4
  %69 = tail call i32 @regmap_write(ptr noundef %68, i32 noundef %64, i32 noundef 0) #11
  %70 = load ptr, ptr %58, align 4
  %71 = tail call i32 @regcache_sync(ptr noundef %70) #11
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %101, label %73

73:                                               ; preds = %57
  %74 = load i32, ptr %19, align 4
  %75 = and i32 %74, 2
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %85, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.fsl_sai, ptr %3, i32 0, i32 8
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr %struct.fsl_sai, ptr %3, i32 0, i32 3, i32 %79
  %81 = load ptr, ptr %80, align 4
  tail call void @clk_disable(ptr noundef %81) #11
  br label %82

82:                                               ; preds = %77, %46
  %83 = phi ptr [ %81, %77 ], [ %43, %46 ]
  %84 = phi i32 [ %71, %77 ], [ %47, %46 ]
  tail call void @clk_unprepare(ptr noundef %83) #11
  br label %85

85:                                               ; preds = %82, %73, %39
  %86 = phi i32 [ %71, %73 ], [ %44, %39 ], [ %84, %82 ]
  %87 = load i32, ptr %19, align 4
  %88 = and i32 %87, 1
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %98, label %90

90:                                               ; preds = %85
  %91 = getelementptr %struct.fsl_sai, ptr %3, i32 0, i32 8, i32 1
  %92 = load i32, ptr %91, align 4
  %93 = getelementptr %struct.fsl_sai, ptr %3, i32 0, i32 3, i32 %92
  %94 = load ptr, ptr %93, align 4
  tail call void @clk_disable(ptr noundef %94) #11
  br label %95

95:                                               ; preds = %90, %30
  %96 = phi ptr [ %94, %90 ], [ %27, %30 ]
  %97 = phi i32 [ %86, %90 ], [ %31, %30 ]
  tail call void @clk_unprepare(ptr noundef %96) #11
  br label %98

98:                                               ; preds = %95, %85, %23
  %99 = phi i32 [ %86, %85 ], [ %28, %23 ], [ %97, %95 ]
  %100 = load ptr, ptr %8, align 8
  tail call void @clk_disable(ptr noundef %100) #11
  tail call void @clk_unprepare(ptr noundef %100) #11
  br label %101

101:                                              ; preds = %98, %57, %16
  %102 = phi i32 [ %17, %16 ], [ %99, %98 ], [ 0, %57 ]
  ret i32 %102
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_dmaengine_pcm_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsl_sai_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.fsl_sai, ptr %3, i32 0, i32 9
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.fsl_sai, ptr %3, i32 0, i32 8
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr %struct.fsl_sai, ptr %3, i32 0, i32 3, i32 %10
  %12 = load ptr, ptr %11, align 4
  tail call void @clk_disable(ptr noundef %12) #11
  tail call void @clk_unprepare(ptr noundef %12) #11
  %13 = load i32, ptr %4, align 4
  br label %14

14:                                               ; preds = %8, %1
  %15 = phi i32 [ %13, %8 ], [ %5, %1 ]
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = getelementptr %struct.fsl_sai, ptr %3, i32 0, i32 8, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr %struct.fsl_sai, ptr %3, i32 0, i32 3, i32 %20
  %22 = load ptr, ptr %21, align 4
  tail call void @clk_disable(ptr noundef %22) #11
  tail call void @clk_unprepare(ptr noundef %22) #11
  br label %23

23:                                               ; preds = %18, %14
  %24 = getelementptr inbounds %struct.fsl_sai, ptr %3, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8
  tail call void @clk_disable(ptr noundef %25) #11
  tail call void @clk_unprepare(ptr noundef %25) #11
  %26 = getelementptr inbounds %struct.fsl_sai, ptr %3, i32 0, i32 13
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.fsl_sai_soc_data, ptr %27, i32 0, i32 5
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.fsl_sai, ptr %3, i32 0, i32 19
  tail call void @cpu_latency_qos_remove_request(ptr noundef %33) #11
  br label %34

34:                                               ; preds = %32, %23
  %35 = getelementptr inbounds %struct.fsl_sai, ptr %3, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  tail call void @regcache_cache_only(ptr noundef %36, i1 noundef zeroext true) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @fsl_sai_writeable_reg(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.fsl_sai, ptr %4, i32 0, i32 13
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.fsl_sai_soc_data, ptr %6, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, %1
  %10 = add i32 %8, 20
  %11 = icmp ult i32 %10, %1
  %12 = or i1 %9, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = add i32 %8, 128
  %15 = icmp ugt i32 %14, %1
  %16 = add i32 %8, 148
  %17 = icmp ult i32 %16, %1
  %18 = or i1 %15, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  switch i32 %1, label %20 [
    i32 32, label %21
    i32 36, label %21
    i32 40, label %21
    i32 44, label %21
    i32 48, label %21
    i32 52, label %21
    i32 56, label %21
    i32 60, label %21
    i32 96, label %21
    i32 224, label %21
    i32 256, label %21
    i32 260, label %21
    i32 112, label %21
    i32 240, label %21
  ]

20:                                               ; preds = %19
  br label %21

21:                                               ; preds = %20, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %13, %2
  %22 = phi i1 [ false, %20 ], [ true, %2 ], [ true, %13 ], [ true, %19 ], [ true, %19 ], [ true, %19 ], [ true, %19 ], [ true, %19 ], [ true, %19 ], [ true, %19 ], [ true, %19 ], [ true, %19 ], [ true, %19 ], [ true, %19 ], [ true, %19 ], [ true, %19 ], [ true, %19 ]
  ret i1 %22
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @fsl_sai_readable_reg(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.fsl_sai, ptr %4, i32 0, i32 13
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.fsl_sai_soc_data, ptr %6, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, %1
  %10 = add i32 %8, 20
  %11 = icmp ult i32 %10, %1
  %12 = or i1 %9, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = add i32 %8, 128
  %15 = icmp ugt i32 %14, %1
  %16 = add i32 %8, 148
  %17 = icmp ult i32 %16, %1
  %18 = or i1 %15, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = tail call i32 @llvm.fshl.i32(i32 %1, i32 %1, i32 30)
  switch i32 %20, label %21 [
    i32 16, label %22
    i32 17, label %22
    i32 18, label %22
    i32 19, label %22
    i32 20, label %22
    i32 21, label %22
    i32 22, label %22
    i32 23, label %22
    i32 24, label %22
    i32 40, label %22
    i32 41, label %22
    i32 42, label %22
    i32 43, label %22
    i32 44, label %22
    i32 45, label %22
    i32 46, label %22
    i32 47, label %22
    i32 48, label %22
    i32 49, label %22
    i32 50, label %22
    i32 51, label %22
    i32 52, label %22
    i32 53, label %22
    i32 54, label %22
    i32 55, label %22
    i32 56, label %22
    i32 64, label %22
    i32 65, label %22
    i32 0, label %22
    i32 1, label %22
    i32 29, label %22
    i32 61, label %22
    i32 28, label %22
    i32 30, label %22
    i32 31, label %22
    i32 60, label %22
    i32 62, label %22
    i32 63, label %22
  ]

21:                                               ; preds = %19
  br label %22

22:                                               ; preds = %21, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %13, %2
  %23 = phi i1 [ false, %21 ], [ true, %2 ], [ true, %13 ], [ true, %19 ], [ true, %19 ], [ true, %19 ], [ true, %19 ], [ true, %19 ], [ true, %19 ], [ true, %19 ], [ true, %19 ], [ true, %19 ], [ true, %19 ], [ true, %19 ], [ true, %19 ], [ true, %19 ], [ true, %19 ], [ true, %19 ], [ true, %19 ], [ true, %19 ], [ true, %19 ], [ true, %19 ], [ true, %19 ], [ true, %19 ], [ true, %19 ], [ true, %19 ], [ true, %19 ], [ true, %19 ], [ true, %19 ], [ true, %19 ], [ true, %19 ], [ true, %19 ], [ true, %19 ], [ true, %19 ], [ true, %19 ], [ true, %19 ], [ true, %19 ], [ true, %19 ], [ true, %19 ], [ true, %19 ], [ true, %19 ]
  ret i1 %23
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @fsl_sai_volatile_reg(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.fsl_sai, ptr %4, i32 0, i32 13
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.fsl_sai_soc_data, ptr %6, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, %1
  %10 = add i32 %8, 128
  %11 = icmp eq i32 %10, %1
  %12 = or i1 %9, %11
  br i1 %12, label %22, label %13

13:                                               ; preds = %2
  %14 = icmp eq i32 %8, 8
  %15 = and i32 %1, -5
  %16 = icmp eq i32 %15, 0
  %17 = and i1 %16, %14
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = add i32 %1, -64
  %20 = tail call i32 @llvm.fshl.i32(i32 %19, i32 %19, i32 30)
  switch i32 %20, label %21 [
    i32 0, label %22
    i32 1, label %22
    i32 2, label %22
    i32 3, label %22
    i32 4, label %22
    i32 5, label %22
    i32 6, label %22
    i32 7, label %22
    i32 32, label %22
    i32 33, label %22
    i32 34, label %22
    i32 35, label %22
    i32 36, label %22
    i32 37, label %22
    i32 38, label %22
    i32 39, label %22
    i32 24, label %22
    i32 25, label %22
    i32 26, label %22
    i32 27, label %22
    i32 28, label %22
    i32 29, label %22
    i32 30, label %22
    i32 31, label %22
  ]

21:                                               ; preds = %18
  br label %22

22:                                               ; preds = %21, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %13, %2
  %23 = phi i1 [ false, %21 ], [ true, %2 ], [ true, %13 ], [ true, %18 ], [ true, %18 ], [ true, %18 ], [ true, %18 ], [ true, %18 ], [ true, %18 ], [ true, %18 ], [ true, %18 ], [ true, %18 ], [ true, %18 ], [ true, %18 ], [ true, %18 ], [ true, %18 ], [ true, %18 ], [ true, %18 ], [ true, %18 ], [ true, %18 ], [ true, %18 ], [ true, %18 ], [ true, %18 ], [ true, %18 ], [ true, %18 ], [ true, %18 ], [ true, %18 ]
  ret i1 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsl_sai_dai_probe(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.fsl_sai, ptr %5, i32 0, i32 13
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.fsl_sai_soc_data, ptr %7, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.fsl_sai, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef %9, i32 noundef 16777216) #11
  %13 = load ptr, ptr %10, align 4
  %14 = add i32 %9, 128
  %15 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef %14, i32 noundef 16777216) #11
  %16 = load ptr, ptr %10, align 4
  %17 = tail call i32 @regmap_write(ptr noundef %16, i32 noundef %9, i32 noundef 0) #11
  %18 = load ptr, ptr %10, align 4
  %19 = tail call i32 @regmap_write(ptr noundef %18, i32 noundef %14, i32 noundef 0) #11
  %20 = load ptr, ptr %10, align 4
  %21 = add i32 %9, 4
  %22 = load ptr, ptr %6, align 4
  %23 = getelementptr inbounds %struct.fsl_sai_soc_data, ptr %22, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, -1
  %26 = add i32 %24, -6
  %27 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef %21, i32 noundef %25, i32 noundef %26, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %28 = load ptr, ptr %10, align 4
  %29 = add i32 %9, 132
  %30 = load ptr, ptr %6, align 4
  %31 = getelementptr inbounds %struct.fsl_sai_soc_data, ptr %30, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, -1
  %34 = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef %29, i32 noundef %33, i32 noundef 5, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %35 = getelementptr inbounds %struct.fsl_sai, ptr %5, i32 0, i32 16
  %36 = getelementptr inbounds %struct.fsl_sai, ptr %5, i32 0, i32 15
  %37 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 7
  store ptr %35, ptr %37, align 4
  %38 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 8
  store ptr %36, ptr %38, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsl_sai_set_dai_sysclk(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %35, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp ult i32 %1, 4
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.19, i32 noundef -22) #12
  br label %35

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.fsl_sai, ptr %13, i32 0, i32 13
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.fsl_sai_soc_data, ptr %15, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = shl i32 %1, 26
  %19 = shl i32 %1, 26
  %20 = getelementptr inbounds %struct.fsl_sai, ptr %13, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = add i32 %17, 8
  %23 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef %22, i32 noundef 201326592, i32 noundef %18, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %24 = load ptr, ptr %7, align 4
  %25 = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 8
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.fsl_sai, ptr %26, i32 0, i32 13
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.fsl_sai_soc_data, ptr %28, i32 0, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.fsl_sai, ptr %26, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = add i32 %30, 136
  %34 = tail call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef %33, i32 noundef 201326592, i32 noundef %19, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %35

35:                                               ; preds = %11, %10, %4
  %36 = phi i32 [ -22, %10 ], [ 0, %4 ], [ 0, %11 ]
  ret i32 %36
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @fsl_sai_set_dai_bclk_ratio(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.fsl_sai, ptr %6, i32 0, i32 12
  store i32 %1, ptr %7, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsl_sai_set_dai_fmt(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = tail call fastcc i32 @fsl_sai_set_dai_fmt_tr(ptr noundef %0, i32 noundef %1, i32 noundef 0)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.21, i32 noundef %3) #12
  br label %14

8:                                                ; preds = %2
  %9 = tail call fastcc i32 @fsl_sai_set_dai_fmt_tr(ptr noundef %0, i32 noundef %1, i32 noundef 1)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.22, i32 noundef %9) #12
  br label %14

14:                                               ; preds = %11, %8, %5
  %15 = phi i32 [ %3, %5 ], [ %9, %11 ], [ 0, %8 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @fsl_sai_set_dai_tdm_slot(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #9 {
  %6 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.fsl_sai, ptr %9, i32 0, i32 10
  store i32 %3, ptr %10, align 8
  %11 = getelementptr inbounds %struct.fsl_sai, ptr %9, i32 0, i32 11
  store i32 %4, ptr %11, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsl_sai_startup(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.fsl_sai, ptr %6, i32 0, i32 13
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.fsl_sai_soc_data, ptr %8, i32 0, i32 1
  %10 = load i8, ptr %9, align 1, !range !9
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  %16 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.fsl_sai, ptr %6, i32 0, i32 16, i32 2
  %19 = getelementptr inbounds %struct.fsl_sai, ptr %6, i32 0, i32 15, i32 2
  %20 = select i1 %15, ptr %18, ptr %19
  %21 = load i32, ptr %20, align 4
  %22 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %17, i32 noundef 0, i32 noundef 13, i32 noundef %21) #11
  br label %23

23:                                               ; preds = %12, %2
  %24 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %25, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @fsl_sai_rate_constraints) #11
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsl_sai_hw_params(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #2 {
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.fsl_sai, ptr %7, i32 0, i32 13
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.fsl_sai_soc_data, ptr %9, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  %15 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %25, %3
  %21 = phi i32 [ 0, %3 ], [ 32, %25 ]
  %22 = phi i32 [ %18, %3 ], [ %27, %25 ]
  %23 = tail call i32 @llvm.cttz.i32(i32 %22, i1 true) #11, !range !14
  %24 = or i32 %23, %21
  br label %29

25:                                               ; preds = %3
  %26 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %20

29:                                               ; preds = %25, %20
  %30 = phi i32 [ %24, %20 ], [ 0, %25 ]
  %31 = tail call i32 @snd_pcm_format_width(i32 noundef %30) #11
  %32 = icmp eq i32 %16, 1
  %33 = select i1 %32, i32 2, i32 %16
  %34 = xor i1 %14, true
  %35 = zext i1 %34 to i32
  %36 = getelementptr inbounds %struct.fsl_sai, ptr %7, i32 0, i32 10
  %37 = load i32, ptr %36, align 8
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %38, i32 %33, i32 %37
  %40 = getelementptr inbounds %struct.fsl_sai, ptr %7, i32 0, i32 11
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %42, i32 %31, i32 %41
  %44 = add i32 %16, -1
  %45 = add i32 %44, %39
  %46 = udiv i32 %45, %39
  %47 = getelementptr inbounds %struct.fsl_sai, ptr %7, i32 0, i32 4
  %48 = load i8, ptr %47, align 4, !range !9
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %91

50:                                               ; preds = %29
  %51 = getelementptr inbounds %struct.fsl_sai, ptr %7, i32 0, i32 12
  %52 = load i32, ptr %51, align 8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  %55 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 3
  %56 = load i32, ptr %55, align 4
  br label %61

57:                                               ; preds = %50
  %58 = mul i32 %43, %39
  %59 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 3
  %60 = load i32, ptr %59, align 4
  br label %61

61:                                               ; preds = %57, %54
  %62 = phi i32 [ %60, %57 ], [ %52, %54 ]
  %63 = phi i32 [ %58, %57 ], [ %56, %54 ]
  %64 = mul i32 %63, %62
  %65 = tail call fastcc i32 @fsl_sai_set_bclk(ptr noundef %2, i1 noundef zeroext %14, i32 noundef %64)
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %157

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.fsl_sai, ptr %7, i32 0, i32 9
  %69 = load i32, ptr %68, align 4
  %70 = load i32, ptr %12, align 4
  %71 = shl nuw i32 1, %70
  %72 = and i32 %71, %69
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %91

74:                                               ; preds = %67
  %75 = zext i1 %14 to i32
  %76 = getelementptr %struct.fsl_sai, ptr %7, i32 0, i32 8, i32 %75
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr %struct.fsl_sai, ptr %7, i32 0, i32 3, i32 %77
  %79 = load ptr, ptr %78, align 4
  %80 = tail call i32 @clk_prepare(ptr noundef %79) #11
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %157

82:                                               ; preds = %74
  %83 = tail call i32 @clk_enable(ptr noundef %79) #11
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %82
  tail call void @clk_unprepare(ptr noundef %79) #11
  br label %157

86:                                               ; preds = %82
  %87 = load i32, ptr %12, align 4
  %88 = shl nuw i32 1, %87
  %89 = load i32, ptr %68, align 4
  %90 = or i32 %89, %88
  store i32 %90, ptr %68, align 4
  br label %91

91:                                               ; preds = %86, %67, %29
  %92 = getelementptr inbounds %struct.fsl_sai, ptr %7, i32 0, i32 6
  %93 = load i8, ptr %92, align 2, !range !9
  %94 = icmp eq i8 %93, 0
  %95 = shl i32 %43, 8
  %96 = add i32 %95, -256
  %97 = select i1 %94, i32 %96, i32 0
  %98 = add i32 %43, -1
  %99 = shl i32 %98, 24
  %100 = shl i32 %98, 16
  %101 = or i32 %99, %100
  %102 = getelementptr inbounds %struct.fsl_sai, ptr %7, i32 0, i32 5
  %103 = load i8, ptr %102, align 1, !range !9
  %104 = icmp eq i8 %103, 0
  %105 = shl i32 %31, 8
  %106 = add i32 %105, -256
  %107 = select i1 %104, i32 %106, i32 0
  %108 = or i32 %101, %107
  %109 = shl i32 %39, 16
  %110 = add i32 %109, -65536
  %111 = or i32 %97, %110
  %112 = or i32 %111, 32
  %113 = select i1 %14, i32 %112, i32 %111
  %114 = load i8, ptr %47, align 4, !range !9
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %116, label %135

116:                                              ; preds = %91
  %117 = getelementptr %struct.fsl_sai, ptr %7, i32 0, i32 7, i32 %35
  %118 = load i8, ptr %117, align 1, !range !9
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %120, label %135

120:                                              ; preds = %116
  %121 = zext i1 %14 to i32
  %122 = getelementptr %struct.fsl_sai, ptr %7, i32 0, i32 7, i32 %121
  %123 = load i8, ptr %122, align 1, !range !9
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %135, label %125

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.fsl_sai, ptr %7, i32 0, i32 1
  %127 = load ptr, ptr %126, align 4
  %128 = select i1 %14, i32 144, i32 16
  %129 = add i32 %128, %11
  %130 = tail call i32 @regmap_update_bits_base(ptr noundef %127, i32 noundef %129, i32 noundef 2039584, i32 noundef %113, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %131 = load ptr, ptr %126, align 4
  %132 = select i1 %14, i32 148, i32 20
  %133 = add i32 %132, %11
  %134 = tail call i32 @regmap_update_bits_base(ptr noundef %131, i32 noundef %133, i32 noundef 522133248, i32 noundef %108, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %135

135:                                              ; preds = %125, %120, %116, %91
  %136 = getelementptr inbounds %struct.fsl_sai, ptr %7, i32 0, i32 1
  %137 = load ptr, ptr %136, align 4
  %138 = select i1 %14, i32 12, i32 140
  %139 = add i32 %138, %11
  %140 = shl nsw i32 -1, %46
  %141 = xor i32 %140, -1
  %142 = shl i32 %141, 16
  %143 = tail call i32 @regmap_update_bits_base(ptr noundef %137, i32 noundef %139, i32 noundef 16711680, i32 noundef %142, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %144 = load ptr, ptr %136, align 4
  %145 = select i1 %14, i32 16, i32 144
  %146 = add i32 %145, %11
  %147 = tail call i32 @regmap_update_bits_base(ptr noundef %144, i32 noundef %146, i32 noundef 2039584, i32 noundef %113, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %148 = load ptr, ptr %136, align 4
  %149 = select i1 %14, i32 20, i32 148
  %150 = add i32 %149, %11
  %151 = tail call i32 @regmap_update_bits_base(ptr noundef %148, i32 noundef %150, i32 noundef 522133248, i32 noundef %108, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %152 = load ptr, ptr %136, align 4
  %153 = select i1 %14, i32 96, i32 224
  %154 = tail call i32 @llvm.umin.i32(i32 %16, i32 %39)
  %155 = shl nsw i32 -1, %154
  %156 = tail call i32 @regmap_write(ptr noundef %152, i32 noundef %153, i32 noundef %155) #11
  br label %157

157:                                              ; preds = %135, %85, %74, %61
  %158 = phi i32 [ 0, %135 ], [ %65, %61 ], [ %83, %85 ], [ %80, %74 ]
  ret i32 %158
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsl_sai_hw_free(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.fsl_sai, ptr %6, i32 0, i32 13
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.fsl_sai_soc_data, ptr %11, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.fsl_sai, ptr %6, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = select i1 %9, i32 12, i32 140
  %17 = add i32 %13, %16
  %18 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef %17, i32 noundef 16711680, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %19 = getelementptr inbounds %struct.fsl_sai, ptr %6, i32 0, i32 4
  %20 = load i8, ptr %19, align 4, !range !9
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.fsl_sai, ptr %6, i32 0, i32 9
  %24 = load i32, ptr %23, align 4
  %25 = load i32, ptr %7, align 4
  %26 = shl nuw i32 1, %25
  %27 = and i32 %26, %24
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %22
  %30 = zext i1 %9 to i32
  %31 = getelementptr %struct.fsl_sai, ptr %6, i32 0, i32 8, i32 %30
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr %struct.fsl_sai, ptr %6, i32 0, i32 3, i32 %32
  %34 = load ptr, ptr %33, align 4
  tail call void @clk_disable(ptr noundef %34) #11
  tail call void @clk_unprepare(ptr noundef %34) #11
  %35 = load i32, ptr %7, align 4
  %36 = shl nuw i32 1, %35
  %37 = xor i32 %36, -1
  %38 = load i32, ptr %23, align 4
  %39 = and i32 %38, %37
  store i32 %39, ptr %23, align 4
  br label %40

40:                                               ; preds = %29, %22, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsl_sai_trigger(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.fsl_sai, ptr %8, i32 0, i32 13
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.fsl_sai_soc_data, ptr %10, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = zext i1 %15 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !8
  %19 = getelementptr inbounds %struct.fsl_sai, ptr %8, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = add i32 %12, 8
  %22 = getelementptr inbounds %struct.fsl_sai, ptr %8, i32 0, i32 7
  %23 = getelementptr %struct.fsl_sai, ptr %8, i32 0, i32 7, i32 1
  %24 = load i8, ptr %23, align 1, !range !9
  %25 = icmp eq i8 %24, 0
  %26 = select i1 %25, i32 0, i32 1073741824
  %27 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef %21, i32 noundef 1073741824, i32 noundef %26, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %28 = load ptr, ptr %19, align 4
  %29 = add i32 %12, 136
  %30 = load i8, ptr %22, align 1, !range !9
  %31 = icmp eq i8 %30, 0
  %32 = select i1 %31, i32 0, i32 1073741824
  %33 = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef %29, i32 noundef 1073741824, i32 noundef %32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  switch i32 %1, label %89 [
    i32 1, label %34
    i32 6, label %34
    i32 4, label %34
    i32 0, label %55
    i32 5, label %55
    i32 3, label %55
  ]

34:                                               ; preds = %3, %3, %3
  %35 = load ptr, ptr %19, align 4
  %36 = add i32 %12, 128
  %37 = select i1 %15, i32 %12, i32 %36
  %38 = tail call i32 @regmap_update_bits_base(ptr noundef %35, i32 noundef %37, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %39 = load ptr, ptr %19, align 4
  %40 = tail call i32 @regmap_update_bits_base(ptr noundef %39, i32 noundef %37, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %41 = getelementptr %struct.fsl_sai, ptr %8, i32 0, i32 7, i32 %17
  %42 = load i8, ptr %41, align 1, !range !9
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %34
  %45 = getelementptr %struct.fsl_sai, ptr %8, i32 0, i32 7, i32 %18
  %46 = load i8, ptr %45, align 1, !range !9
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %19, align 4
  %50 = select i1 %15, i32 %36, i32 %12
  %51 = tail call i32 @regmap_update_bits_base(ptr noundef %49, i32 noundef %50, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %52

52:                                               ; preds = %48, %44, %34
  %53 = load ptr, ptr %19, align 4
  %54 = tail call i32 @regmap_update_bits_base(ptr noundef %53, i32 noundef %37, i32 noundef 7936, i32 noundef 3072, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %89

55:                                               ; preds = %3, %3, %3
  %56 = load ptr, ptr %19, align 4
  %57 = add i32 %12, 128
  %58 = select i1 %15, i32 %12, i32 %57
  %59 = tail call i32 @regmap_update_bits_base(ptr noundef %56, i32 noundef %58, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %60 = load ptr, ptr %19, align 4
  %61 = tail call i32 @regmap_update_bits_base(ptr noundef %60, i32 noundef %58, i32 noundef 7936, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %62 = load ptr, ptr %19, align 4
  %63 = select i1 %15, i32 %57, i32 %12
  %64 = call i32 @regmap_read(ptr noundef %62, i32 noundef %63, ptr noundef nonnull %4) #11
  %65 = getelementptr %struct.fsl_sai, ptr %8, i32 0, i32 7, i32 %17
  %66 = load i8, ptr %65, align 1, !range !9
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %55
  %69 = getelementptr %struct.fsl_sai, ptr %8, i32 0, i32 7, i32 %18
  %70 = load i8, ptr %69, align 1, !range !9
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %68
  %73 = load i32, ptr %4, align 4
  %74 = and i32 %73, 1
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  call fastcc void @fsl_sai_config_disable(ptr noundef %8, i32 noundef %17)
  br label %77

77:                                               ; preds = %76, %72, %68, %55
  %78 = getelementptr %struct.fsl_sai, ptr %8, i32 0, i32 7, i32 %18
  %79 = load i8, ptr %78, align 1, !range !9
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %77
  %82 = load i8, ptr %65, align 1, !range !9
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %81
  %85 = load i32, ptr %4, align 4
  %86 = and i32 %85, 1
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %84, %81, %77
  call fastcc void @fsl_sai_config_disable(ptr noundef %8, i32 noundef %18)
  br label %89

89:                                               ; preds = %88, %84, %52, %3
  %90 = phi i32 [ -22, %3 ], [ 0, %84 ], [ 0, %88 ], [ 0, %52 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret i32 %90
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fsl_sai_set_dai_fmt_tr(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.fsl_sai, ptr %7, i32 0, i32 13
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.fsl_sai_soc_data, ptr %9, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %2, 0
  %13 = getelementptr inbounds %struct.fsl_sai, ptr %7, i32 0, i32 5
  %14 = load i8, ptr %13, align 1, !range !9
  %15 = icmp eq i8 %14, 0
  %16 = select i1 %15, i32 16, i32 0
  %17 = and i32 %1, 15
  switch i32 %17, label %61 [
    i32 1, label %18
    i32 3, label %25
    i32 4, label %20
    i32 5, label %23
  ]

18:                                               ; preds = %3
  %19 = or i32 %16, 10
  br label %25

20:                                               ; preds = %3
  %21 = or i32 %16, 8
  %22 = getelementptr inbounds %struct.fsl_sai, ptr %7, i32 0, i32 6
  store i8 1, ptr %22, align 2
  br label %25

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.fsl_sai, ptr %7, i32 0, i32 6
  store i8 1, ptr %24, align 2
  br label %25

25:                                               ; preds = %23, %20, %18, %3
  %26 = phi i32 [ %16, %23 ], [ %21, %20 ], [ %19, %18 ], [ %16, %3 ]
  %27 = lshr i32 %1, 8
  %28 = and i32 %27, 15
  switch i32 %28, label %61 [
    i32 4, label %29
    i32 3, label %31
    i32 2, label %32
    i32 0, label %34
  ]

29:                                               ; preds = %25
  %30 = xor i32 %26, 2
  br label %34

31:                                               ; preds = %25
  br label %34

32:                                               ; preds = %25
  %33 = xor i32 %26, 2
  br label %34

34:                                               ; preds = %32, %31, %29, %25
  %35 = phi i32 [ 33554432, %25 ], [ 33554432, %32 ], [ 0, %31 ], [ 0, %29 ]
  %36 = phi i32 [ %26, %25 ], [ %33, %32 ], [ %26, %31 ], [ %30, %29 ]
  %37 = and i32 %1, 61440
  %38 = add nsw i32 %37, -4096
  %39 = lshr exact i32 %38, 12
  switch i32 %39, label %61 [
    i32 3, label %40
    i32 0, label %47
    i32 1, label %43
    i32 2, label %45
  ]

40:                                               ; preds = %34
  %41 = or i32 %35, 16777216
  %42 = or i32 %36, 1
  br label %47

43:                                               ; preds = %34
  %44 = or i32 %35, 16777216
  br label %47

45:                                               ; preds = %34
  %46 = or i32 %36, 1
  br label %47

47:                                               ; preds = %45, %43, %40, %34
  %48 = phi i8 [ 1, %45 ], [ 0, %43 ], [ 0, %40 ], [ 1, %34 ]
  %49 = phi i32 [ %35, %45 ], [ %44, %43 ], [ %41, %40 ], [ %35, %34 ]
  %50 = phi i32 [ %46, %45 ], [ %36, %43 ], [ %42, %40 ], [ %36, %34 ]
  %51 = getelementptr inbounds %struct.fsl_sai, ptr %7, i32 0, i32 4
  store i8 %48, ptr %51, align 4
  %52 = getelementptr inbounds %struct.fsl_sai, ptr %7, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = select i1 %12, i32 8, i32 136
  %55 = add i32 %11, %54
  %56 = tail call i32 @regmap_update_bits_base(ptr noundef %53, i32 noundef %55, i32 noundef 50331648, i32 noundef %49, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %57 = load ptr, ptr %52, align 4
  %58 = select i1 %12, i32 16, i32 144
  %59 = add i32 %11, %58
  %60 = tail call i32 @regmap_update_bits_base(ptr noundef %57, i32 noundef %59, i32 noundef 27, i32 noundef %50, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %61

61:                                               ; preds = %47, %34, %25, %3
  %62 = phi i32 [ 0, %47 ], [ -22, %3 ], [ -22, %25 ], [ -22, %34 ]
  ret i32 %62
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_step(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_list(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fsl_sai_set_bclk(ptr nocapture noundef readonly %0, i1 noundef zeroext %1, i32 noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.fsl_sai, ptr %7, i32 0, i32 13
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.fsl_sai_soc_data, ptr %9, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = xor i1 %1, true
  %13 = zext i1 %12 to i32
  %14 = zext i1 %1 to i32
  %15 = getelementptr inbounds %struct.fsl_sai, ptr %7, i32 0, i32 4
  %16 = load i8, ptr %15, align 4, !range !9
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %171

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.fsl_sai_soc_data, ptr %9, i32 0, i32 2
  %20 = load i8, ptr %19, align 2, !range !9
  %21 = zext i8 %20 to i32
  %22 = getelementptr %struct.fsl_sai, ptr %7, i32 0, i32 8, i32 %14
  %23 = getelementptr %struct.fsl_sai, ptr %7, i32 0, i32 3, i32 %21
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @clk_get_rate(ptr noundef %24) #11
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %48, label %27

27:                                               ; preds = %18
  %28 = udiv i32 %25, %2
  %29 = mul i32 %28, %2
  %30 = sub i32 %25, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = udiv i32 %25, %30
  %34 = icmp ult i32 %33, 1000
  br i1 %34, label %48, label %35

35:                                               ; preds = %32, %27
  %36 = and i32 %28, 1
  %37 = icmp eq i32 %36, 0
  %38 = add i32 %28, -2
  %39 = icmp ult i32 %38, 511
  %40 = and i1 %39, %37
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = icmp ult i32 %30, %2
  br i1 %42, label %43, label %45

43:                                               ; preds = %41
  %44 = lshr i32 %28, 1
  store i32 %21, ptr %22, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %44, %43 ], [ 0, %41 ]
  %47 = phi i32 [ %30, %43 ], [ %2, %41 ]
  br i1 %31, label %134, label %48

48:                                               ; preds = %45, %35, %32, %18
  %49 = phi i32 [ 0, %32 ], [ %46, %45 ], [ 0, %35 ], [ 0, %18 ]
  %50 = phi i32 [ %2, %32 ], [ %47, %45 ], [ %2, %35 ], [ %2, %18 ]
  %51 = add nuw nsw i32 %21, 1
  %52 = getelementptr %struct.fsl_sai, ptr %7, i32 0, i32 3, i32 %51
  %53 = load ptr, ptr %52, align 4
  %54 = tail call i32 @clk_get_rate(ptr noundef %53) #11
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %77, label %56

56:                                               ; preds = %48
  %57 = udiv i32 %54, %2
  %58 = mul i32 %57, %2
  %59 = sub i32 %54, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = udiv i32 %54, %59
  %63 = icmp ult i32 %62, 1000
  br i1 %63, label %77, label %64

64:                                               ; preds = %61, %56
  %65 = and i32 %57, 1
  %66 = icmp eq i32 %65, 0
  %67 = add i32 %57, -2
  %68 = icmp ult i32 %67, 511
  %69 = and i1 %68, %66
  br i1 %69, label %70, label %77

70:                                               ; preds = %64
  %71 = icmp ult i32 %59, %50
  br i1 %71, label %72, label %74

72:                                               ; preds = %70
  %73 = lshr i32 %57, 1
  store i32 %51, ptr %22, align 4
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi i32 [ %73, %72 ], [ %49, %70 ]
  %76 = phi i32 [ %59, %72 ], [ %50, %70 ]
  br i1 %60, label %134, label %77

77:                                               ; preds = %74, %64, %61, %48
  %78 = phi i32 [ %49, %61 ], [ %75, %74 ], [ %49, %64 ], [ %49, %48 ]
  %79 = phi i32 [ %50, %61 ], [ %76, %74 ], [ %50, %64 ], [ %50, %48 ]
  %80 = or i32 %21, 2
  %81 = getelementptr %struct.fsl_sai, ptr %7, i32 0, i32 3, i32 %80
  %82 = load ptr, ptr %81, align 4
  %83 = tail call i32 @clk_get_rate(ptr noundef %82) #11
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %106, label %85

85:                                               ; preds = %77
  %86 = udiv i32 %83, %2
  %87 = mul i32 %86, %2
  %88 = sub i32 %83, %87
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %85
  %91 = udiv i32 %83, %88
  %92 = icmp ult i32 %91, 1000
  br i1 %92, label %106, label %93

93:                                               ; preds = %90, %85
  %94 = and i32 %86, 1
  %95 = icmp eq i32 %94, 0
  %96 = add i32 %86, -2
  %97 = icmp ult i32 %96, 511
  %98 = and i1 %97, %95
  br i1 %98, label %99, label %106

99:                                               ; preds = %93
  %100 = icmp ult i32 %88, %79
  br i1 %100, label %101, label %103

101:                                              ; preds = %99
  %102 = lshr i32 %86, 1
  store i32 %80, ptr %22, align 4
  br label %103

103:                                              ; preds = %101, %99
  %104 = phi i32 [ %102, %101 ], [ %78, %99 ]
  %105 = phi i32 [ %88, %101 ], [ %79, %99 ]
  br i1 %89, label %134, label %106

106:                                              ; preds = %103, %93, %90, %77
  %107 = phi i32 [ %78, %90 ], [ %104, %103 ], [ %78, %93 ], [ %78, %77 ]
  %108 = phi i32 [ %79, %90 ], [ %105, %103 ], [ %79, %93 ], [ %79, %77 ]
  %109 = add nuw nsw i32 %21, 3
  %110 = icmp eq i32 %109, 4
  br i1 %110, label %134, label %111

111:                                              ; preds = %106
  %112 = getelementptr %struct.fsl_sai, ptr %7, i32 0, i32 3, i32 %109
  %113 = load ptr, ptr %112, align 4
  %114 = tail call i32 @clk_get_rate(ptr noundef %113) #11
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %134, label %116

116:                                              ; preds = %111
  %117 = udiv i32 %114, %2
  %118 = mul i32 %117, %2
  %119 = sub i32 %114, %118
  %120 = icmp eq i32 %114, %118
  br i1 %120, label %124, label %121

121:                                              ; preds = %116
  %122 = udiv i32 %114, %119
  %123 = icmp ult i32 %122, 1000
  br i1 %123, label %134, label %124

124:                                              ; preds = %121, %116
  %125 = and i32 %117, 1
  %126 = icmp eq i32 %125, 0
  %127 = add i32 %117, -2
  %128 = icmp ult i32 %127, 511
  %129 = and i1 %128, %126
  %130 = icmp ult i32 %119, %108
  %131 = select i1 %129, i1 %130, i1 false
  br i1 %131, label %132, label %134

132:                                              ; preds = %124
  %133 = lshr i32 %117, 1
  store i32 %109, ptr %22, align 4
  br label %134

134:                                              ; preds = %132, %124, %121, %111, %106, %103, %74, %45
  %135 = phi i32 [ %46, %45 ], [ %75, %74 ], [ %104, %103 ], [ %107, %106 ], [ %107, %121 ], [ %107, %124 ], [ %107, %111 ], [ %133, %132 ]
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load ptr, ptr %4, align 4
  %139 = select i1 %1, i32 84, i32 82
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %138, ptr noundef nonnull @.str.23, i32 noundef %139, i32 noundef %2) #12
  br label %171

140:                                              ; preds = %134
  %141 = getelementptr %struct.fsl_sai, ptr %7, i32 0, i32 7, i32 %13
  %142 = load i8, ptr %141, align 1, !range !9
  %143 = icmp eq i8 %142, 0
  %144 = getelementptr %struct.fsl_sai, ptr %7, i32 0, i32 7, i32 %14
  %145 = load i8, ptr %144, align 1, !range !9
  %146 = icmp eq i8 %145, 0
  br i1 %143, label %147, label %159

147:                                              ; preds = %140
  br i1 %146, label %160, label %148

148:                                              ; preds = %147
  %149 = getelementptr inbounds %struct.fsl_sai, ptr %7, i32 0, i32 1
  %150 = load ptr, ptr %149, align 4
  %151 = select i1 %1, i32 136, i32 8
  %152 = add i32 %11, %151
  %153 = load i32, ptr %22, align 4
  %154 = shl i32 %153, 26
  %155 = tail call i32 @regmap_update_bits_base(ptr noundef %150, i32 noundef %152, i32 noundef 201326592, i32 noundef %154, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %156 = load ptr, ptr %149, align 4
  %157 = add i32 %135, -1
  %158 = tail call i32 @regmap_update_bits_base(ptr noundef %156, i32 noundef %152, i32 noundef 255, i32 noundef %157, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %171

159:                                              ; preds = %140
  br i1 %146, label %160, label %171

160:                                              ; preds = %159, %147
  %161 = getelementptr inbounds %struct.fsl_sai, ptr %7, i32 0, i32 1
  %162 = load ptr, ptr %161, align 4
  %163 = select i1 %1, i32 8, i32 136
  %164 = add i32 %11, %163
  %165 = load i32, ptr %22, align 4
  %166 = shl i32 %165, 26
  %167 = tail call i32 @regmap_update_bits_base(ptr noundef %162, i32 noundef %164, i32 noundef 201326592, i32 noundef %166, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %168 = load ptr, ptr %161, align 4
  %169 = add i32 %135, -1
  %170 = tail call i32 @regmap_update_bits_base(ptr noundef %168, i32 noundef %164, i32 noundef 255, i32 noundef %169, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %171

171:                                              ; preds = %160, %159, %148, %137, %3
  %172 = phi i32 [ -22, %137 ], [ 0, %3 ], [ 0, %159 ], [ 0, %160 ], [ 0, %148 ]
  ret i32 %172
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fsl_sai_config_disable(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.fsl_sai, ptr %0, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.fsl_sai_soc_data, ptr %5, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %1, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !8
  %9 = getelementptr inbounds %struct.fsl_sai, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = add i32 %7, 128
  %12 = select i1 %8, i32 %7, i32 %11
  %13 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef %12, i32 noundef -2147483648, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %14

14:                                               ; preds = %14, %2
  %15 = phi i32 [ 100, %2 ], [ %19, %14 ]
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %16(i32 noundef 2147480) #11
  %17 = load ptr, ptr %9, align 4
  %18 = call i32 @regmap_read(ptr noundef %17, i32 noundef %12, ptr noundef nonnull %3) #11
  %19 = add nsw i32 %15, -1
  %20 = icmp ne i32 %19, 0
  %21 = load i32, ptr %3, align 4
  %22 = icmp slt i32 %21, 0
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %14, label %24

24:                                               ; preds = %14
  %25 = load ptr, ptr %9, align 4
  %26 = call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef %12, i32 noundef 33554432, i32 noundef 33554432, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %27 = getelementptr inbounds %struct.fsl_sai, ptr %0, i32 0, i32 4
  %28 = load i8, ptr %27, align 4, !range !9
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load ptr, ptr %9, align 4
  %32 = call i32 @regmap_write(ptr noundef %31, i32 noundef %12, i32 noundef 16777216) #11
  %33 = load ptr, ptr %9, align 4
  %34 = call i32 @regmap_write(ptr noundef %33, i32 noundef %12, i32 noundef 0) #11
  br label %35

35:                                               ; preds = %30, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_latency_qos_add_request(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_latency_qos_remove_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }

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
!10 = !{i64 2147976069}
!11 = !{i64 474379, i64 2147964350, i64 2147964376, i64 2147964423, i64 2147964445, i64 2147964473, i64 2147964493}
!12 = !{i64 460948, i64 460973, i64 460995, i64 461011, i64 461023, i64 461043, i64 461067, i64 461083, i64 461095}
!13 = !{i64 2147976195}
!14 = !{i32 0, i32 33}
