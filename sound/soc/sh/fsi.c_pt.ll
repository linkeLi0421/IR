; ModuleID = '/llk/IR/sound/soc/sh/fsi.c_pt.bc'
source_filename = "../sound/soc/sh/fsi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.fsi_core = type { i32, i32, i32, i32, i32, i32 }
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
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.88, ptr }
%union.anon.88 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.fsi_stream_handler = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.fsi_master = type { ptr, %struct.fsi_priv, %struct.fsi_priv, ptr, %struct.spinlock }
%struct.fsi_priv = type { ptr, i32, ptr, %struct.fsi_stream, %struct.fsi_stream, %struct.fsi_clk, i32, i24 }
%struct.fsi_stream = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32 }
%struct.fsi_clk = type { ptr, ptr, ptr, ptr, ptr, i32, i32 }
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
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [80 x i8], [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }

@fsi_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sh_fsi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fsi1_core }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sh_fsi2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fsi2_core }, %struct.of_device_id zeroinitializer], align 4
@fsi_id_table = internal constant [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"sh_fsi\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @fsi1_core to i32) }, %struct.platform_device_id zeroinitializer], align 4
@__UNIQUE_ID_license239 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description240 = internal constant [43 x i8] c"description=SuperH onchip FSI audio driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author241 = internal constant [57 x i8] c"author=Kuninori Morimoto <morimoto.kuninori@renesas.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias242 = internal constant [29 x i8] c"alias=platform:fsi-pcm-audio\00", section ".modinfo", align 1
@fsi1_core = internal constant %struct.fsi_core { i32 1, i32 512, i32 516, i32 520, i32 0, i32 0 }, align 4
@fsi2_core = internal constant %struct.fsi_core { i32 2, i32 500, i32 504, i32 508, i32 384, i32 416 }, align 4
@fsi_driver = internal global %struct.platform_driver { ptr @fsi_probe, ptr @fsi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @fsi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsi_pm_ops, ptr null, ptr null }, ptr @fsi_id_table, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [14 x i8] c"fsi-pcm-audio\00", align 1
@fsi_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @fsi_suspend, ptr @fsi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"fsia\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"fsib\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"unknown fsi device\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Not enough FSI platform resources.\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Unable to ioremap FSI registers.\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"FSIA stream probe failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"FSIB stream probe failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"irq request err\0A\00", align 1
@fsi_soc_component = internal constant %struct.snd_soc_component_driver { ptr @.str.19, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsi_pcm_new, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsi_pcm_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsi_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@fsi_soc_dai = internal global [2 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.20, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @fsi_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr null, i64 68, i32 2046, i32 0, i32 0, i32 2, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr null, i64 68, i32 2046, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.21, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @fsi_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr null, i64 68, i32 2046, i32 0, i32 0, i32 2, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr null, i64 68, i32 2046, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 0, i32 0, i32 0 }], align 8
@.str.9 = private unnamed_addr constant [31 x i8] c"cannot snd component register\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"spdif-connection\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"stream-mode-support\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"use-internal-clock\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"%s,%s\00", align 1
@fsi_pio_push_handler = internal global %struct.fsi_stream_handler { ptr @fsi_pio_push_init, ptr null, ptr null, ptr @fsi_pio_push, ptr null, ptr @fsi_pio_start_stop }, align 4
@fsi_pio_pop_handler = internal global %struct.fsi_stream_handler { ptr @fsi_pio_pop_init, ptr null, ptr null, ptr @fsi_pio_pop, ptr null, ptr @fsi_pio_start_stop }, align 4
@fsi_dma_push_handler = internal global %struct.fsi_stream_handler { ptr @fsi_dma_init, ptr null, ptr @fsi_dma_probe, ptr @fsi_dma_transfer, ptr @fsi_dma_remove, ptr @fsi_dma_push_start_stop }, align 4
@.str.14 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"switch handler (dma => pio)\0A\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"dmaengine_prep_dma_cyclic() fail\0A\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"tx_submit() fail\0A\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"fsi\00", align 1
@fsi_pcm_hardware = internal constant %struct.snd_pcm_hardware { i32 259, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 65536, i32 32, i32 8192, i32 1, i32 32, i32 256 }, align 8
@.str.20 = private unnamed_addr constant [9 x i8] c"fsia-dai\00", align 1
@fsi_dai_ops = internal constant %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr @fsi_dai_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsi_dai_startup, ptr @fsi_dai_shutdown, ptr @fsi_dai_hw_params, ptr null, ptr null, ptr @fsi_dai_trigger, ptr null, ptr null, ptr @fsi_dai_formats, i32 1, i8 0 }, align 4
@.str.21 = private unnamed_addr constant [9 x i8] c"fsib-dai\00", align 1
@fsi_dai_formats = internal global i64 64424509450, align 8
@.str.22 = private unnamed_addr constant [5 x i8] c"xcka\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"xckb\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"can't get xck clock\0A\00", align 1
@.str.25 = private unnamed_addr constant [31 x i8] c"cpu doesn't support xck clock\0A\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"icka\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"ickb\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"can't get ick clock\0A\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"cpu doesn't support ick clock\0A\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"diva\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"divb\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"can't get div clock\0A\00", align 1
@.str.33 = private unnamed_addr constant [31 x i8] c"cpu doesn't support div clock\0A\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"unsupported rate\0A\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"%s failed\00", align 1
@__func__.fsi_clk_set_rate_cpg = private unnamed_addr constant [21 x i8] c"fsi_clk_set_rate_cpg\00", align 1
@.str.36 = private unnamed_addr constant [18 x i8] c"ick clock failed\0A\00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c"div clock failed\0A\00", align 1
@.str.38 = private unnamed_addr constant [26 x i8] c"unsupported rate (%d/%d)\0A\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"unsupported ackmd (%d)\0A\00", align 1
@.str.40 = private unnamed_addr constant [24 x i8] c"unsupported bpfmd (%d)\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.41 = private unnamed_addr constant [24 x i8] c"unsupported clock rate\0A\00", align 1
@__func__.fsi_clk_set_rate_external = private unnamed_addr constant [26 x i8] c"fsi_clk_set_rate_external\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"over_run = %d\0A\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"under_run = %d\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias242, ptr @__UNIQUE_ID_author241, ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_license239], section "llvm.metadata"

@__mod_of__fsi_of_match_device_table = dso_local alias [3 x %struct.of_device_id], ptr @fsi_of_match
@__mod_platform__fsi_id_table_device_table = dso_local alias [2 x %struct.platform_device_id], ptr @fsi_id_table

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @fsi_driver, ptr noundef nonnull @__this_module) #12
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @fsi_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsi_probe(ptr noundef %0) #2 {
  %2 = alloca [128 x i8], align 1
  %3 = alloca [128 x i8], align 1
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %38, label %8

8:                                                ; preds = %1
  %9 = tail call ptr @of_device_get_match_data(ptr noundef %4) #12
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %3, i8 0, i32 128, i1 false) #12, !annotation !8
  %10 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.10) #12
  %11 = call ptr @of_get_property(ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef null) #12
  %12 = icmp ne ptr %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.11) #12
  %15 = call ptr @of_get_property(ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef null) #12
  %16 = icmp eq ptr %15, null
  %17 = or i32 %13, 2
  %18 = select i1 %16, i32 %13, i32 %17
  %19 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.12) #12
  %20 = call ptr @of_get_property(ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef null) #12
  %21 = icmp eq ptr %20, null
  %22 = or i32 %18, 4
  %23 = select i1 %21, i32 %18, i32 %22
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %2, i8 0, i32 128, i1 false) #12, !annotation !8
  %24 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.10) #12
  %25 = call ptr @of_get_property(ptr noundef nonnull %6, ptr noundef nonnull %2, ptr noundef null) #12
  %26 = icmp ne ptr %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.11) #12
  %29 = call ptr @of_get_property(ptr noundef nonnull %6, ptr noundef nonnull %2, ptr noundef null) #12
  %30 = icmp eq ptr %29, null
  %31 = or i32 %27, 2
  %32 = select i1 %30, i32 %27, i32 %31
  %33 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.12) #12
  %34 = call ptr @of_get_property(ptr noundef nonnull %6, ptr noundef nonnull %2, ptr noundef null) #12
  %35 = icmp eq ptr %34, null
  %36 = or i32 %32, 4
  %37 = select i1 %35, i32 %32, i32 %36
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #12
  br label %59

38:                                               ; preds = %1
  %39 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 8
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.platform_device_id, ptr %40, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = inttoptr i32 %44 to ptr
  br label %46

46:                                               ; preds = %42, %38
  %47 = phi ptr [ %45, %42 ], [ null, %38 ]
  %48 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %59, label %51

51:                                               ; preds = %46
  %52 = load i32, ptr %49, align 1
  %53 = getelementptr inbounds i8, ptr %49, i32 4
  %54 = load i32, ptr %53, align 1
  %55 = getelementptr inbounds i8, ptr %49, i32 12
  %56 = load i32, ptr %55, align 1
  %57 = getelementptr inbounds i8, ptr %49, i32 16
  %58 = load i32, ptr %57, align 1
  br label %59

59:                                               ; preds = %51, %46, %8
  %60 = phi i32 [ 0, %46 ], [ %52, %51 ], [ %23, %8 ]
  %61 = phi i32 [ 0, %46 ], [ %54, %51 ], [ 0, %8 ]
  %62 = phi i32 [ 0, %46 ], [ %56, %51 ], [ %37, %8 ]
  %63 = phi i32 [ 0, %46 ], [ %58, %51 ], [ 0, %8 ]
  %64 = phi ptr [ %47, %46 ], [ %47, %51 ], [ %9, %8 ]
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.3) #13
  br label %252

67:                                               ; preds = %59
  %68 = call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #12
  %69 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #12
  %70 = icmp eq ptr %68, null
  %71 = icmp slt i32 %69, 1
  %72 = select i1 %70, i1 true, i1 %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.4) #13
  br label %252

74:                                               ; preds = %67
  %75 = call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 332, i32 noundef 3520) #12
  %76 = icmp eq ptr %75, null
  br i1 %76, label %252, label %77

77:                                               ; preds = %74
  %78 = load i32, ptr %68, align 4
  %79 = getelementptr inbounds %struct.resource, ptr %68, i32 0, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = sub i32 1, %78
  %82 = add i32 %81, %80
  %83 = call ptr @devm_ioremap(ptr noundef %4, i32 noundef %78, i32 noundef %82) #12
  store ptr %83, ptr %75, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.5) #13
  br label %252

86:                                               ; preds = %77
  %87 = getelementptr inbounds %struct.fsi_master, ptr %75, i32 0, i32 3
  store ptr %64, ptr %87, align 4
  %88 = getelementptr inbounds %struct.fsi_master, ptr %75, i32 0, i32 4
  store i32 0, ptr %88, align 4
  %89 = getelementptr inbounds %struct.fsi_master, ptr %75, i32 0, i32 1
  store ptr %83, ptr %89, align 4
  %90 = load i32, ptr %68, align 4
  %91 = getelementptr inbounds %struct.fsi_master, ptr %75, i32 0, i32 1, i32 1
  store i32 %90, ptr %91, align 4
  %92 = getelementptr inbounds %struct.fsi_master, ptr %75, i32 0, i32 1, i32 2
  store ptr %75, ptr %92, align 4
  %93 = and i32 %60, 1
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %86
  %96 = getelementptr inbounds %struct.fsi_master, ptr %75, i32 0, i32 1, i32 7
  %97 = load i32, ptr %96, align 4
  %98 = or i32 %97, 262144
  store i32 %98, ptr %96, align 4
  br label %99

99:                                               ; preds = %95, %86
  %100 = and i32 %60, 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.fsi_master, ptr %75, i32 0, i32 1, i32 7
  %104 = load i32, ptr %103, align 4
  %105 = or i32 %104, 131072
  store i32 %105, ptr %103, align 4
  br label %106

106:                                              ; preds = %102, %99
  %107 = and i32 %60, 2
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.fsi_master, ptr %75, i32 0, i32 1, i32 7
  %111 = load i32, ptr %110, align 4
  %112 = or i32 %111, 524288
  store i32 %112, ptr %110, align 4
  br label %113

113:                                              ; preds = %109, %106
  %114 = getelementptr inbounds %struct.fsi_master, ptr %75, i32 0, i32 1, i32 3, i32 10
  store ptr @fsi_pio_push_handler, ptr %114, align 4
  %115 = getelementptr inbounds %struct.fsi_master, ptr %75, i32 0, i32 1, i32 3, i32 11
  store ptr %89, ptr %115, align 4
  %116 = getelementptr inbounds %struct.fsi_master, ptr %75, i32 0, i32 1, i32 4, i32 10
  store ptr @fsi_pio_pop_handler, ptr %116, align 4
  %117 = getelementptr inbounds %struct.fsi_master, ptr %75, i32 0, i32 1, i32 4, i32 11
  store ptr %89, ptr %117, align 4
  %118 = icmp eq i32 %61, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.fsi_master, ptr %75, i32 0, i32 1, i32 3, i32 13
  store i32 %61, ptr %120, align 4
  store ptr @fsi_dma_push_handler, ptr %114, align 4
  br label %121

121:                                              ; preds = %119, %113
  %122 = phi ptr [ @fsi_pio_push_handler, %113 ], [ @fsi_dma_push_handler, %119 ]
  %123 = getelementptr inbounds %struct.fsi_master, ptr %75, i32 0, i32 1, i32 3
  %124 = getelementptr inbounds %struct.fsi_stream_handler, ptr %122, i32 0, i32 2
  %125 = load ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %130, label %127

127:                                              ; preds = %121
  %128 = call i32 %125(ptr noundef %89, ptr noundef nonnull %123, ptr noundef %4) #12
  %129 = load ptr, ptr %116, align 4
  br label %130

130:                                              ; preds = %127, %121
  %131 = phi ptr [ %129, %127 ], [ @fsi_pio_pop_handler, %121 ]
  %132 = phi i32 [ %128, %127 ], [ 0, %121 ]
  %133 = getelementptr inbounds %struct.fsi_master, ptr %75, i32 0, i32 1, i32 4
  %134 = getelementptr inbounds %struct.fsi_stream_handler, ptr %131, i32 0, i32 2
  %135 = load ptr, ptr %134, align 4
  %136 = icmp eq ptr %135, null
  br i1 %136, label %140, label %137

137:                                              ; preds = %130
  %138 = call i32 %135(ptr noundef %89, ptr noundef nonnull %133, ptr noundef %4) #12
  %139 = call i32 @llvm.smin.i32(i32 %138, i32 0)
  br label %140

140:                                              ; preds = %137, %130
  %141 = phi i32 [ %139, %137 ], [ 0, %130 ]
  %142 = icmp slt i32 %132, 0
  %143 = select i1 %142, i32 %132, i32 %141
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %140
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.6) #13
  br label %252

146:                                              ; preds = %140
  %147 = getelementptr inbounds %struct.fsi_master, ptr %75, i32 0, i32 2
  %148 = load ptr, ptr %75, align 4
  %149 = getelementptr i8, ptr %148, i32 64
  store ptr %149, ptr %147, align 4
  %150 = load i32, ptr %68, align 4
  %151 = add i32 %150, 64
  %152 = getelementptr inbounds %struct.fsi_master, ptr %75, i32 0, i32 2, i32 1
  store i32 %151, ptr %152, align 4
  %153 = getelementptr inbounds %struct.fsi_master, ptr %75, i32 0, i32 2, i32 2
  store ptr %75, ptr %153, align 4
  %154 = and i32 %62, 1
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %160, label %156

156:                                              ; preds = %146
  %157 = getelementptr inbounds %struct.fsi_master, ptr %75, i32 0, i32 2, i32 7
  %158 = load i32, ptr %157, align 4
  %159 = or i32 %158, 262144
  store i32 %159, ptr %157, align 4
  br label %160

160:                                              ; preds = %156, %146
  %161 = and i32 %62, 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %167, label %163

163:                                              ; preds = %160
  %164 = getelementptr inbounds %struct.fsi_master, ptr %75, i32 0, i32 2, i32 7
  %165 = load i32, ptr %164, align 4
  %166 = or i32 %165, 131072
  store i32 %166, ptr %164, align 4
  br label %167

167:                                              ; preds = %163, %160
  %168 = and i32 %62, 2
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %174, label %170

170:                                              ; preds = %167
  %171 = getelementptr inbounds %struct.fsi_master, ptr %75, i32 0, i32 2, i32 7
  %172 = load i32, ptr %171, align 4
  %173 = or i32 %172, 524288
  store i32 %173, ptr %171, align 4
  br label %174

174:                                              ; preds = %170, %167
  %175 = getelementptr inbounds %struct.fsi_master, ptr %75, i32 0, i32 2, i32 3, i32 10
  store ptr @fsi_pio_push_handler, ptr %175, align 4
  %176 = getelementptr inbounds %struct.fsi_master, ptr %75, i32 0, i32 2, i32 3, i32 11
  store ptr %147, ptr %176, align 4
  %177 = getelementptr inbounds %struct.fsi_master, ptr %75, i32 0, i32 2, i32 4, i32 10
  store ptr @fsi_pio_pop_handler, ptr %177, align 4
  %178 = getelementptr inbounds %struct.fsi_master, ptr %75, i32 0, i32 2, i32 4, i32 11
  store ptr %147, ptr %178, align 4
  %179 = icmp eq i32 %63, 0
  br i1 %179, label %182, label %180

180:                                              ; preds = %174
  %181 = getelementptr inbounds %struct.fsi_master, ptr %75, i32 0, i32 2, i32 3, i32 13
  store i32 %63, ptr %181, align 4
  store ptr @fsi_dma_push_handler, ptr %175, align 4
  br label %182

182:                                              ; preds = %180, %174
  %183 = phi ptr [ @fsi_pio_push_handler, %174 ], [ @fsi_dma_push_handler, %180 ]
  %184 = getelementptr inbounds %struct.fsi_master, ptr %75, i32 0, i32 2, i32 3
  %185 = getelementptr inbounds %struct.fsi_stream_handler, ptr %183, i32 0, i32 2
  %186 = load ptr, ptr %185, align 4
  %187 = icmp eq ptr %186, null
  br i1 %187, label %191, label %188

188:                                              ; preds = %182
  %189 = call i32 %186(ptr noundef %147, ptr noundef nonnull %184, ptr noundef %4) #12
  %190 = load ptr, ptr %177, align 4
  br label %191

191:                                              ; preds = %188, %182
  %192 = phi ptr [ %190, %188 ], [ @fsi_pio_pop_handler, %182 ]
  %193 = phi i32 [ %189, %188 ], [ 0, %182 ]
  %194 = getelementptr inbounds %struct.fsi_master, ptr %75, i32 0, i32 2, i32 4
  %195 = getelementptr inbounds %struct.fsi_stream_handler, ptr %192, i32 0, i32 2
  %196 = load ptr, ptr %195, align 4
  %197 = icmp eq ptr %196, null
  br i1 %197, label %201, label %198

198:                                              ; preds = %191
  %199 = call i32 %196(ptr noundef %147, ptr noundef nonnull %194, ptr noundef %4) #12
  %200 = call i32 @llvm.smin.i32(i32 %199, i32 0)
  br label %201

201:                                              ; preds = %198, %191
  %202 = phi i32 [ %200, %198 ], [ 0, %191 ]
  %203 = icmp slt i32 %193, 0
  %204 = select i1 %203, i32 %193, i32 %202
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %201
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.7) #13
  br label %237

207:                                              ; preds = %201
  call void @pm_runtime_enable(ptr noundef %4) #12
  %208 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %75, ptr %208, align 8
  %209 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %210 = load ptr, ptr %209, align 4
  %211 = icmp eq ptr %210, null
  br i1 %211, label %212, label %214

212:                                              ; preds = %207
  %213 = load ptr, ptr %4, align 4
  br label %214

214:                                              ; preds = %212, %207
  %215 = phi ptr [ %213, %212 ], [ %210, %207 ]
  %216 = call i32 @devm_request_threaded_irq(ptr noundef %4, i32 noundef %69, ptr noundef nonnull @fsi_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %215, ptr noundef nonnull %75) #12
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %214
  %219 = call i32 @devm_snd_soc_register_component(ptr noundef %4, ptr noundef nonnull @fsi_soc_component, ptr noundef nonnull @fsi_soc_dai, i32 noundef 2) #12
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %221, label %252

221:                                              ; preds = %218, %214
  %222 = phi ptr [ @.str.8, %214 ], [ @.str.9, %218 ]
  %223 = phi i32 [ %216, %214 ], [ %219, %218 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull %222) #13
  call void @__pm_runtime_disable(ptr noundef %4, i1 noundef zeroext true) #12
  %224 = load ptr, ptr %175, align 4
  %225 = getelementptr inbounds %struct.fsi_stream_handler, ptr %224, i32 0, i32 4
  %226 = load ptr, ptr %225, align 4
  %227 = icmp eq ptr %226, null
  br i1 %227, label %230, label %228

228:                                              ; preds = %221
  %229 = call i32 %226(ptr noundef %147, ptr noundef nonnull %184) #12
  br label %230

230:                                              ; preds = %228, %221
  %231 = load ptr, ptr %177, align 4
  %232 = getelementptr inbounds %struct.fsi_stream_handler, ptr %231, i32 0, i32 4
  %233 = load ptr, ptr %232, align 4
  %234 = icmp eq ptr %233, null
  br i1 %234, label %237, label %235

235:                                              ; preds = %230
  %236 = call i32 %233(ptr noundef %147, ptr noundef nonnull %194) #12
  br label %237

237:                                              ; preds = %235, %230, %206
  %238 = phi i32 [ %204, %206 ], [ %223, %230 ], [ %223, %235 ]
  %239 = load ptr, ptr %114, align 4
  %240 = getelementptr inbounds %struct.fsi_stream_handler, ptr %239, i32 0, i32 4
  %241 = load ptr, ptr %240, align 4
  %242 = icmp eq ptr %241, null
  br i1 %242, label %245, label %243

243:                                              ; preds = %237
  %244 = call i32 %241(ptr noundef %89, ptr noundef nonnull %123) #12
  br label %245

245:                                              ; preds = %243, %237
  %246 = load ptr, ptr %116, align 4
  %247 = getelementptr inbounds %struct.fsi_stream_handler, ptr %246, i32 0, i32 4
  %248 = load ptr, ptr %247, align 4
  %249 = icmp eq ptr %248, null
  br i1 %249, label %252, label %250

250:                                              ; preds = %245
  %251 = call i32 %248(ptr noundef %89, ptr noundef nonnull %133) #12
  br label %252

252:                                              ; preds = %250, %245, %218, %145, %85, %74, %73, %66
  %253 = phi i32 [ -19, %73 ], [ %143, %145 ], [ -6, %85 ], [ -19, %66 ], [ -12, %74 ], [ %219, %218 ], [ %238, %245 ], [ %238, %250 ]
  ret i32 %253
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsi_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %4 = load ptr, ptr %3, align 8
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #12
  %5 = getelementptr inbounds %struct.fsi_master, ptr %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.fsi_master, ptr %4, i32 0, i32 1, i32 3, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.fsi_stream_handler, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.fsi_master, ptr %4, i32 0, i32 1, i32 3
  %13 = tail call i32 %9(ptr noundef %5, ptr noundef nonnull %12) #12
  br label %14

14:                                               ; preds = %11, %1
  %15 = getelementptr inbounds %struct.fsi_master, ptr %4, i32 0, i32 1, i32 4, i32 10
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.fsi_stream_handler, ptr %16, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.fsi_master, ptr %4, i32 0, i32 1, i32 4
  %22 = tail call i32 %18(ptr noundef %5, ptr noundef nonnull %21) #12
  br label %23

23:                                               ; preds = %20, %14
  %24 = getelementptr inbounds %struct.fsi_master, ptr %4, i32 0, i32 2
  %25 = getelementptr inbounds %struct.fsi_master, ptr %4, i32 0, i32 2, i32 3, i32 10
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.fsi_stream_handler, ptr %26, i32 0, i32 4
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.fsi_master, ptr %4, i32 0, i32 2, i32 3
  %32 = tail call i32 %28(ptr noundef %24, ptr noundef nonnull %31) #12
  br label %33

33:                                               ; preds = %30, %23
  %34 = getelementptr inbounds %struct.fsi_master, ptr %4, i32 0, i32 2, i32 4, i32 10
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.fsi_stream_handler, ptr %35, i32 0, i32 4
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.fsi_master, ptr %4, i32 0, i32 2, i32 4
  %41 = tail call i32 %37(ptr noundef %24, ptr noundef nonnull %40) #12
  br label %42

42:                                               ; preds = %39, %33
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsi_interrupt(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.fsi_core, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 4
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #12
  %9 = load ptr, ptr %1, align 4
  %10 = getelementptr i8, ptr %9, i32 %6
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #12, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #12
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #12
  %13 = load ptr, ptr %1, align 4
  %14 = getelementptr i8, ptr %13, i32 532
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #12, !srcloc !9
  %16 = and i32 %15, 16777199
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %16) #12, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %12) #12
  %17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #12
  %18 = load ptr, ptr %1, align 4
  %19 = getelementptr i8, ptr %18, i32 532
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #12, !srcloc !9
  %21 = and i32 %20, 16777199
  %22 = or i32 %21, 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %22) #12, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %17) #12
  %23 = and i32 %11, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %40, label %25

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 1, i32 3
  %27 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 1, i32 3, i32 11
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  %30 = icmp eq ptr %26, null
  %31 = select i1 %29, i1 true, i1 %30
  br i1 %31, label %40, label %32

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 1, i32 3, i32 10
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.fsi_stream_handler, ptr %34, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %32
  %39 = tail call i32 %36(ptr noundef nonnull %28, ptr noundef nonnull %26) #12
  br label %40

40:                                               ; preds = %38, %32, %25, %2
  %41 = and i32 %11, 256
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %58, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 2, i32 3
  %45 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 2, i32 3, i32 11
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  %48 = icmp eq ptr %44, null
  %49 = select i1 %47, i1 true, i1 %48
  br i1 %49, label %58, label %50

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 2, i32 3, i32 10
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.fsi_stream_handler, ptr %52, i32 0, i32 3
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %50
  %57 = tail call i32 %54(ptr noundef nonnull %46, ptr noundef nonnull %44) #12
  br label %58

58:                                               ; preds = %56, %50, %43, %40
  %59 = and i32 %11, 16
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %76, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 1, i32 4
  %63 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 1, i32 4, i32 11
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  %66 = icmp eq ptr %62, null
  %67 = select i1 %65, i1 true, i1 %66
  br i1 %67, label %76, label %68

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 1, i32 4, i32 10
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.fsi_stream_handler, ptr %70, i32 0, i32 3
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %68
  %75 = tail call i32 %72(ptr noundef nonnull %64, ptr noundef nonnull %62) #12
  br label %76

76:                                               ; preds = %74, %68, %61, %58
  %77 = and i32 %11, 4096
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %94, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 2, i32 4
  %81 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 2, i32 4, i32 11
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  %84 = icmp eq ptr %80, null
  %85 = select i1 %83, i1 true, i1 %84
  br i1 %85, label %94, label %86

86:                                               ; preds = %79
  %87 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 2, i32 4, i32 10
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.fsi_stream_handler, ptr %88, i32 0, i32 3
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %94, label %92

92:                                               ; preds = %86
  %93 = tail call i32 %90(ptr noundef nonnull %82, ptr noundef nonnull %80) #12
  br label %94

94:                                               ; preds = %92, %86, %79, %76
  %95 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 1
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr i8, ptr %96, i32 8
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %97) #12, !srcloc !9
  %99 = load ptr, ptr %95, align 4
  %100 = getelementptr i8, ptr %99, i32 20
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %100) #12, !srcloc !9
  %102 = and i32 %98, 16
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %94
  %105 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 1, i32 3, i32 8
  %106 = load i32, ptr %105, align 4
  %107 = add i32 %106, 1
  store i32 %107, ptr %105, align 4
  br label %108

108:                                              ; preds = %104, %94
  %109 = and i32 %98, 1
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 1, i32 3, i32 7
  %113 = load i32, ptr %112, align 4
  %114 = add i32 %113, 1
  store i32 %114, ptr %112, align 4
  br label %115

115:                                              ; preds = %111, %108
  %116 = and i32 %101, 16
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %115
  %119 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 1, i32 4, i32 8
  %120 = load i32, ptr %119, align 4
  %121 = add i32 %120, 1
  store i32 %121, ptr %119, align 4
  br label %122

122:                                              ; preds = %118, %115
  %123 = and i32 %101, 1
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %122
  %126 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 1, i32 4, i32 7
  %127 = load i32, ptr %126, align 4
  %128 = add i32 %127, 1
  store i32 %128, ptr %126, align 4
  br label %129

129:                                              ; preds = %125, %122
  %130 = load ptr, ptr %95, align 4
  %131 = getelementptr i8, ptr %130, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 0) #12, !srcloc !10
  %132 = load ptr, ptr %95, align 4
  %133 = getelementptr i8, ptr %132, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %133, i32 0) #12, !srcloc !10
  %134 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 2
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr i8, ptr %135, i32 8
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %136) #12, !srcloc !9
  %138 = load ptr, ptr %134, align 4
  %139 = getelementptr i8, ptr %138, i32 20
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %139) #12, !srcloc !9
  %141 = and i32 %137, 16
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %147, label %143

143:                                              ; preds = %129
  %144 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 2, i32 3, i32 8
  %145 = load i32, ptr %144, align 4
  %146 = add i32 %145, 1
  store i32 %146, ptr %144, align 4
  br label %147

147:                                              ; preds = %143, %129
  %148 = and i32 %137, 1
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %154, label %150

150:                                              ; preds = %147
  %151 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 2, i32 3, i32 7
  %152 = load i32, ptr %151, align 4
  %153 = add i32 %152, 1
  store i32 %153, ptr %151, align 4
  br label %154

154:                                              ; preds = %150, %147
  %155 = and i32 %140, 16
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %161, label %157

157:                                              ; preds = %154
  %158 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 2, i32 4, i32 8
  %159 = load i32, ptr %158, align 4
  %160 = add i32 %159, 1
  store i32 %160, ptr %158, align 4
  br label %161

161:                                              ; preds = %157, %154
  %162 = and i32 %140, 1
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %168, label %164

164:                                              ; preds = %161
  %165 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 2, i32 4, i32 7
  %166 = load i32, ptr %165, align 4
  %167 = add i32 %166, 1
  store i32 %167, ptr %165, align 4
  br label %168

168:                                              ; preds = %164, %161
  %169 = load ptr, ptr %134, align 4
  %170 = getelementptr i8, ptr %169, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %170, i32 0) #12, !srcloc !10
  %171 = load ptr, ptr %134, align 4
  %172 = getelementptr i8, ptr %171, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %172, i32 0) #12, !srcloc !10
  %173 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 1, i32 2
  %174 = load ptr, ptr %173, align 4
  %175 = load ptr, ptr %174, align 4
  %176 = load ptr, ptr %95, align 4
  %177 = icmp eq ptr %175, %176
  %178 = getelementptr inbounds %struct.fsi_master, ptr %174, i32 0, i32 3
  %179 = load ptr, ptr %178, align 4
  %180 = getelementptr inbounds %struct.fsi_core, ptr %179, i32 0, i32 1
  %181 = load i32, ptr %180, align 4
  %182 = getelementptr inbounds %struct.fsi_master, ptr %174, i32 0, i32 4
  %183 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %182) #12
  %184 = load ptr, ptr %174, align 4
  %185 = getelementptr i8, ptr %184, i32 %181
  %186 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %185) #12, !srcloc !9
  %187 = select i1 %177, i32 16777198, i32 16772863
  %188 = and i32 %186, %187
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %185, i32 %188) #12, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %182, i32 noundef %183) #12
  %189 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 2, i32 2
  %190 = load ptr, ptr %189, align 4
  %191 = load ptr, ptr %190, align 4
  %192 = load ptr, ptr %134, align 4
  %193 = icmp eq ptr %191, %192
  %194 = getelementptr inbounds %struct.fsi_master, ptr %190, i32 0, i32 3
  %195 = load ptr, ptr %194, align 4
  %196 = getelementptr inbounds %struct.fsi_core, ptr %195, i32 0, i32 1
  %197 = load i32, ptr %196, align 4
  %198 = getelementptr inbounds %struct.fsi_master, ptr %190, i32 0, i32 4
  %199 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %198) #12
  %200 = load ptr, ptr %190, align 4
  %201 = getelementptr i8, ptr %200, i32 %197
  %202 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %201) #12, !srcloc !9
  %203 = select i1 %193, i32 16777198, i32 16772863
  %204 = and i32 %202, %203
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %201, i32 %204) #12, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %198, i32 noundef %199) #12
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @fsi_pio_push_init(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.fsi_priv, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = lshr i32 %4, 18
  %6 = and i32 %5, 2
  %7 = getelementptr inbounds %struct.fsi_stream, ptr %1, i32 0, i32 9
  store i32 %6, ptr %7, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsi_pio_push(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.fsi_stream, ptr %1, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.fsi_stream, ptr %1, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.fsi_stream, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.fsi_priv, ptr %0, i32 0, i32 3
  %10 = icmp eq ptr %9, %1
  %11 = load ptr, ptr %0, align 4
  br i1 %10, label %12, label %15

12:                                               ; preds = %2
  %13 = getelementptr i8, ptr %11, i32 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #12, !srcloc !9
  br label %18

15:                                               ; preds = %2
  %16 = getelementptr i8, ptr %11, i32 20
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #12, !srcloc !9
  br label %18

18:                                               ; preds = %15, %12
  %19 = phi i32 [ %14, %12 ], [ %17, %15 ]
  %20 = sub i32 %4, %6
  %21 = lshr i32 %19, 8
  %22 = and i32 %21, 511
  %23 = getelementptr inbounds %struct.fsi_priv, ptr %0, i32 0, i32 7
  %24 = load i32, ptr %23, align 4
  %25 = shl i32 %24, 16
  %26 = ashr exact i32 %25, 16
  %27 = mul nsw i32 %26, %22
  %28 = sub i32 %8, %27
  %29 = tail call i32 @llvm.smin.i32(i32 %20, i32 %28)
  %30 = tail call fastcc i32 @fsi_pio_transfer(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @fsi_pio_push16, ptr noundef nonnull @fsi_pio_push32, i32 noundef %29)
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsi_pio_start_stop(ptr noundef readonly %0, ptr noundef readnone %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.fsi_priv, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %0, align 4
  %8 = icmp eq ptr %6, %7
  %9 = select i1 %8, i32 1, i32 16
  %10 = icmp eq i32 %2, 0
  %11 = getelementptr inbounds %struct.fsi_priv, ptr %0, i32 0, i32 3
  %12 = icmp eq ptr %11, %1
  %13 = select i1 %12, i32 0, i32 4
  %14 = select i1 %12, i32 8, i32 12
  %15 = select i1 %8, i32 %13, i32 %14
  %16 = shl nuw nsw i32 1, %15
  %17 = getelementptr inbounds %struct.fsi_master, ptr %5, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.fsi_core, ptr %18, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.fsi_master, ptr %5, i32 0, i32 4
  %22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %21) #12
  %23 = load ptr, ptr %5, align 4
  %24 = getelementptr i8, ptr %23, i32 %20
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #12
  br i1 %10, label %38, label %26

26:                                               ; preds = %3
  %27 = and i32 %25, 16777215
  %28 = or i32 %27, %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %28) #12, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %22) #12
  %29 = load ptr, ptr %17, align 4
  %30 = getelementptr inbounds %struct.fsi_core, ptr %29, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %21) #12
  %33 = load ptr, ptr %5, align 4
  %34 = getelementptr i8, ptr %33, i32 %31
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #12, !srcloc !9
  %36 = and i32 %35, 16777215
  %37 = or i32 %36, %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %37) #12, !srcloc !10
  br label %49

38:                                               ; preds = %3
  %39 = xor i32 %16, 16777215
  %40 = and i32 %25, %39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %40) #12, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %22) #12
  %41 = load ptr, ptr %17, align 4
  %42 = getelementptr inbounds %struct.fsi_core, ptr %41, i32 0, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %21) #12
  %45 = load ptr, ptr %5, align 4
  %46 = getelementptr i8, ptr %45, i32 %43
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #12, !srcloc !9
  %48 = and i32 %47, %39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %48) #12, !srcloc !10
  br label %49

49:                                               ; preds = %38, %26
  %50 = phi i32 [ %44, %38 ], [ %32, %26 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %50) #12
  %51 = getelementptr inbounds %struct.fsi_priv, ptr %0, i32 0, i32 7
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, 65536
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %65, label %55

55:                                               ; preds = %49
  %56 = select i1 %10, i32 0, i32 %9
  %57 = getelementptr inbounds %struct.fsi_master, ptr %5, i32 0, i32 4
  %58 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %57) #12
  %59 = load ptr, ptr %5, align 4
  %60 = getelementptr i8, ptr %59, i32 528
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #12, !srcloc !9
  %62 = xor i32 %9, 16777215
  %63 = and i32 %62, %61
  %64 = or i32 %63, %56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %64) #12, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %57, i32 noundef %58) #12
  br label %65

65:                                               ; preds = %55, %49
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fsi_pio_transfer(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4) unnamed_addr #2 {
  %6 = getelementptr inbounds %struct.fsi_priv, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.fsi_master, ptr %7, i32 0, i32 4
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #12
  %10 = load ptr, ptr %1, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #12
  br label %53

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.snd_pcm_substream, ptr %10, i32 0, i32 11
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #12
  br i1 %16, label %53, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %1, align 4
  %19 = getelementptr inbounds %struct.snd_pcm_substream, ptr %18, i32 0, i32 11
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %20, i32 0, i32 50
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.fsi_stream, ptr %1, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %20, i32 0, i32 22
  %26 = load i32, ptr %25, align 4
  %27 = mul i32 %26, %24
  %28 = lshr i32 %27, 3
  %29 = getelementptr i8, ptr %22, i32 %28
  %30 = getelementptr inbounds %struct.fsi_stream, ptr %1, i32 0, i32 6
  %31 = load i32, ptr %30, align 4
  switch i32 %31, label %53 [
    i32 2, label %33
    i32 4, label %32
  ]

32:                                               ; preds = %17
  br label %33

33:                                               ; preds = %32, %17
  %34 = phi ptr [ %3, %32 ], [ %2, %17 ]
  tail call void %34(ptr noundef %0, ptr noundef %29, i32 noundef %4) #12
  %35 = load i32, ptr %23, align 4
  %36 = add i32 %35, %4
  store i32 %36, ptr %23, align 4
  %37 = getelementptr inbounds %struct.fsi_stream, ptr %1, i32 0, i32 4
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.fsi_stream, ptr %1, i32 0, i32 5
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, 1
  %42 = mul i32 %41, %38
  %43 = icmp slt i32 %36, %42
  br i1 %43, label %53, label %44

44:                                               ; preds = %33
  %45 = load ptr, ptr %1, align 4
  %46 = getelementptr inbounds %struct.snd_pcm_substream, ptr %45, i32 0, i32 11
  %47 = load ptr, ptr %46, align 4
  store i32 %41, ptr %39, align 4
  %48 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %47, i32 0, i32 17
  %49 = load i32, ptr %48, align 8
  %50 = icmp ult i32 %41, %49
  br i1 %50, label %52, label %51

51:                                               ; preds = %44
  store i32 0, ptr %23, align 4
  store i32 0, ptr %39, align 4
  br label %52

52:                                               ; preds = %51, %44
  tail call void @snd_pcm_period_elapsed(ptr noundef %45) #12
  br label %53

53:                                               ; preds = %52, %33, %17, %13, %12
  %54 = phi i32 [ -22, %13 ], [ -22, %17 ], [ -22, %12 ], [ 0, %33 ], [ 0, %52 ]
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fsi_pio_push16(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.fsi_priv, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 524288
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = sdiv i32 %2, 2
  %10 = icmp sgt i32 %2, 1
  br i1 %10, label %13, label %32

11:                                               ; preds = %3
  %12 = icmp sgt i32 %2, 0
  br i1 %12, label %22, label %32

13:                                               ; preds = %13, %8
  %14 = phi i32 [ %20, %13 ], [ 0, %8 ]
  %15 = load ptr, ptr %0, align 4
  %16 = getelementptr i8, ptr %15, i32 36
  %17 = getelementptr i32, ptr %1, i32 %14
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 16777215
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %19) #12, !srcloc !10
  %20 = add nuw nsw i32 %14, 1
  %21 = icmp eq i32 %20, %9
  br i1 %21, label %32, label %13

22:                                               ; preds = %22, %11
  %23 = phi i32 [ %30, %22 ], [ 0, %11 ]
  %24 = load ptr, ptr %0, align 4
  %25 = getelementptr i8, ptr %24, i32 36
  %26 = getelementptr i16, ptr %1, i32 %23
  %27 = load i16, ptr %26, align 2
  %28 = zext i16 %27 to i32
  %29 = shl nuw nsw i32 %28, 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %29) #12, !srcloc !10
  %30 = add nuw nsw i32 %23, 1
  %31 = icmp eq i32 %30, %2
  br i1 %31, label %32, label %22

32:                                               ; preds = %22, %13, %11, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fsi_pio_push32(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #2 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %14

5:                                                ; preds = %5, %3
  %6 = phi i32 [ %12, %5 ], [ 0, %3 ]
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr i8, ptr %7, i32 36
  %9 = getelementptr i32, ptr %1, i32 %6
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 16777215
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %11) #12, !srcloc !10
  %12 = add nuw nsw i32 %6, 1
  %13 = icmp eq i32 %12, %2
  br i1 %13, label %14, label %5

14:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @fsi_pio_pop_init(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #8 {
  %3 = getelementptr inbounds %struct.fsi_stream, ptr %1, i32 0, i32 9
  store i32 0, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsi_pio_pop(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.fsi_priv, ptr %0, i32 0, i32 3
  %4 = icmp eq ptr %3, %1
  %5 = load ptr, ptr %0, align 4
  br i1 %4, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %5, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #12, !srcloc !9
  br label %12

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %5, i32 20
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #12, !srcloc !9
  br label %12

12:                                               ; preds = %9, %6
  %13 = phi i32 [ %8, %6 ], [ %11, %9 ]
  %14 = lshr i32 %13, 8
  %15 = and i32 %14, 511
  %16 = getelementptr inbounds %struct.fsi_priv, ptr %0, i32 0, i32 7
  %17 = load i32, ptr %16, align 4
  %18 = shl i32 %17, 16
  %19 = ashr exact i32 %18, 16
  %20 = mul nsw i32 %19, %15
  %21 = getelementptr inbounds %struct.fsi_stream, ptr %1, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.fsi_stream, ptr %1, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = sub i32 %22, %24
  %26 = tail call i32 @llvm.smin.i32(i32 %20, i32 %25)
  %27 = tail call fastcc i32 @fsi_pio_transfer(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @fsi_pio_pop16, ptr noundef nonnull @fsi_pio_pop32, i32 noundef %26)
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fsi_pio_pop16(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #2 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %5, %3
  %6 = phi i32 [ %13, %5 ], [ 0, %3 ]
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr i8, ptr %7, i32 32
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #12, !srcloc !9
  %10 = lshr i32 %9, 8
  %11 = trunc i32 %10 to i16
  %12 = getelementptr i16, ptr %1, i32 %6
  store i16 %11, ptr %12, align 2
  %13 = add nuw nsw i32 %6, 1
  %14 = icmp eq i32 %13, %2
  br i1 %14, label %15, label %5

15:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fsi_pio_pop32(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #2 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %5, %3
  %6 = phi i32 [ %11, %5 ], [ 0, %3 ]
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr i8, ptr %7, i32 32
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #12, !srcloc !9
  %10 = getelementptr i32, ptr %1, i32 %6
  store i32 %9, ptr %10, align 4
  %11 = add nuw nsw i32 %6, 1
  %12 = icmp eq i32 %11, %2
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @fsi_dma_init(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #8 {
  %3 = getelementptr inbounds %struct.fsi_stream, ptr %1, i32 0, i32 9
  store i32 2, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsi_dma_probe(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = alloca %struct.dma_slave_config, align 4
  %5 = getelementptr inbounds %struct.fsi_priv, ptr %0, i32 0, i32 3
  %6 = icmp eq ptr %5, %1
  %7 = select i1 %6, ptr @.str.14, ptr @.str.15
  %8 = tail call ptr @dma_request_chan(ptr noundef %2, ptr noundef nonnull %7) #12
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  %10 = select i1 %9, ptr null, ptr %8
  %11 = getelementptr inbounds %struct.fsi_stream, ptr %1, i32 0, i32 12
  store ptr %10, ptr %11, align 4
  %12 = icmp eq ptr %10, null
  br i1 %12, label %40, label %13

13:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #12
  %14 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %14, i8 0, i32 44, i1 false)
  %15 = getelementptr inbounds %struct.fsi_priv, ptr %0, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  br i1 %6, label %17, label %21

17:                                               ; preds = %13
  %18 = add i32 %16, 36
  %19 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 2
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 4
  br label %25

21:                                               ; preds = %13
  %22 = add i32 %16, 32
  %23 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 1
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 3
  br label %25

25:                                               ; preds = %21, %17
  %26 = phi ptr [ %24, %21 ], [ %20, %17 ]
  %27 = phi i32 [ 2, %21 ], [ 1, %17 ]
  store i32 4, ptr %26, align 4
  store i32 %27, ptr %4, align 4
  %28 = load ptr, ptr %10, align 4
  %29 = getelementptr inbounds %struct.dma_device, ptr %28, i32 0, i32 44
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %25
  %33 = call i32 %30(ptr noundef nonnull %10, ptr noundef nonnull %4) #12
  %34 = icmp slt i32 %33, 0
  %35 = load ptr, ptr %11, align 4
  br i1 %34, label %36, label %38

36:                                               ; preds = %32, %25
  %37 = phi ptr [ %8, %25 ], [ %35, %32 ]
  call void @dma_release_channel(ptr noundef %37) #12
  store ptr null, ptr %11, align 4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #12
  br label %40

38:                                               ; preds = %32
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #12
  %39 = icmp eq ptr %35, null
  br i1 %39, label %40, label %68

40:                                               ; preds = %38, %36, %3
  br i1 %6, label %41, label %43

41:                                               ; preds = %40
  %42 = getelementptr inbounds %struct.fsi_priv, ptr %0, i32 0, i32 3, i32 10
  store ptr @fsi_pio_push_handler, ptr %42, align 4
  br label %45

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.fsi_priv, ptr %0, i32 0, i32 4, i32 10
  store ptr @fsi_pio_pop_handler, ptr %44, align 4
  br label %45

45:                                               ; preds = %43, %41
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.16) #13
  %46 = getelementptr inbounds %struct.fsi_priv, ptr %0, i32 0, i32 3, i32 10
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.fsi_stream_handler, ptr %47, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %45
  %52 = call i32 %49(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %2) #12
  br label %53

53:                                               ; preds = %51, %45
  %54 = phi i32 [ %52, %51 ], [ 0, %45 ]
  %55 = getelementptr inbounds %struct.fsi_priv, ptr %0, i32 0, i32 4, i32 10
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.fsi_stream_handler, ptr %56, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.fsi_priv, ptr %0, i32 0, i32 4
  %62 = call i32 %58(ptr noundef %0, ptr noundef nonnull %61, ptr noundef %2) #12
  %63 = call i32 @llvm.smin.i32(i32 %62, i32 0)
  br label %64

64:                                               ; preds = %60, %53
  %65 = phi i32 [ %63, %60 ], [ 0, %53 ]
  %66 = icmp slt i32 %54, 0
  %67 = select i1 %66, i32 %54, i32 %65
  br label %68

68:                                               ; preds = %64, %38
  %69 = phi i32 [ %67, %64 ], [ 0, %38 ]
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsi_dma_transfer(ptr noundef readonly %0, ptr noundef %1) #2 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.snd_pcm_substream, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.fsi_priv, ptr %0, i32 0, i32 3
  %10 = icmp eq ptr %9, %1
  %11 = select i1 %10, i32 1, i32 2
  %12 = getelementptr inbounds %struct.fsi_stream, ptr %1, i32 0, i32 12
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.snd_pcm_substream, ptr %3, i32 0, i32 11
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %15, i32 0, i32 51
  %17 = load i32, ptr %16, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %15, i32 0, i32 18
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %15, i32 0, i32 21
  %21 = load i32, ptr %20, align 8
  %22 = mul i32 %21, %19
  %23 = lshr i32 %22, 3
  %24 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %15, i32 0, i32 16
  %25 = load i32, ptr %24, align 4
  %26 = mul i32 %25, %21
  %27 = lshr i32 %26, 3
  %28 = icmp eq ptr %13, null
  br i1 %28, label %39, label %29

29:                                               ; preds = %2
  %30 = load ptr, ptr %13, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.dma_device, ptr %30, i32 0, i32 40
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = tail call ptr %34(ptr noundef nonnull %13, i32 noundef %17, i32 noundef %23, i32 noundef %27, i32 noundef %11, i32 noundef 3) #12
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36, %32, %29, %2
  %40 = getelementptr inbounds %struct.snd_soc_dai, ptr %8, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.17) #13
  br label %71

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %37, i32 0, i32 6
  store ptr @fsi_dma_complete, ptr %43, align 4
  %44 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %37, i32 0, i32 8
  store ptr %1, ptr %44, align 4
  %45 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %37, i32 0, i32 4
  %46 = load ptr, ptr %45, align 4
  %47 = tail call i32 %46(ptr noundef nonnull %37) #12
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.snd_soc_dai, ptr %8, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.18) #13
  br label %71

52:                                               ; preds = %42
  %53 = load ptr, ptr %12, align 4
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.dma_device, ptr %54, i32 0, i32 50
  %56 = load ptr, ptr %55, align 4
  tail call void %56(ptr noundef %53) #12
  br i1 %10, label %71, label %57

57:                                               ; preds = %52
  %58 = load ptr, ptr %0, align 4
  %59 = getelementptr i8, ptr %58, i32 20
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #12, !srcloc !9
  %61 = and i32 %60, 16
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %57
  %64 = load ptr, ptr %0, align 4
  %65 = getelementptr i8, ptr %64, i32 16
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #12, !srcloc !9
  %67 = and i32 %66, 16777214
  %68 = or i32 %67, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %68) #12, !srcloc !10
  %69 = load ptr, ptr %0, align 4
  %70 = getelementptr i8, ptr %69, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 0) #12, !srcloc !10
  br label %71

71:                                               ; preds = %63, %57, %52, %49, %39
  %72 = phi i32 [ -5, %49 ], [ -5, %39 ], [ 0, %57 ], [ 0, %63 ], [ 0, %52 ]
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsi_dma_remove(ptr noundef %0, ptr noundef %1) #2 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.fsi_stream, ptr %1, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.fsi_stream_handler, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = tail call i32 %8(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 0) #12
  br label %12

12:                                               ; preds = %10, %4, %2
  %13 = getelementptr inbounds %struct.fsi_stream, ptr %1, i32 0, i32 12
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @dma_release_channel(ptr noundef nonnull %14) #12
  br label %17

17:                                               ; preds = %16, %12
  store ptr null, ptr %13, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsi_dma_push_start_stop(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.fsi_priv, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %0, align 4
  %8 = icmp eq ptr %6, %7
  %9 = icmp eq i32 %2, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = getelementptr i8, ptr %7, i32 44
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #12, !srcloc !9
  %14 = and i32 %13, 16777214
  %15 = or i32 %14, %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %15) #12, !srcloc !10
  %16 = getelementptr inbounds %struct.fsi_stream, ptr %1, i32 0, i32 12
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.dma_device, ptr %18, i32 0, i32 47
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %3
  %23 = tail call i32 %20(ptr noundef %17) #12
  br label %24

24:                                               ; preds = %22, %3
  %25 = getelementptr inbounds %struct.fsi_priv, ptr %0, i32 0, i32 7
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 65536
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %24
  %30 = select i1 %8, i32 1, i32 16
  %31 = select i1 %9, i32 0, i32 %30
  %32 = getelementptr inbounds %struct.fsi_master, ptr %5, i32 0, i32 4
  %33 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %32) #12
  %34 = load ptr, ptr %5, align 4
  %35 = getelementptr i8, ptr %34, i32 528
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #12, !srcloc !9
  %37 = xor i32 %30, 16777215
  %38 = and i32 %37, %36
  %39 = or i32 %38, %31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %39) #12, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %32, i32 noundef %33) #12
  br label %40

40:                                               ; preds = %29, %24
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fsi_dma_complete(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.fsi_stream, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.fsi_stream, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.fsi_stream, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, %5
  store i32 %8, ptr %6, align 4
  %9 = getelementptr inbounds %struct.fsi_stream, ptr %0, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, 1
  %12 = mul i32 %11, %5
  %13 = icmp slt i32 %8, %12
  br i1 %13, label %23, label %14

14:                                               ; preds = %1
  %15 = load ptr, ptr %0, align 4
  %16 = getelementptr inbounds %struct.snd_pcm_substream, ptr %15, i32 0, i32 11
  %17 = load ptr, ptr %16, align 4
  store i32 %11, ptr %9, align 4
  %18 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %17, i32 0, i32 17
  %19 = load i32, ptr %18, align 8
  %20 = icmp ult i32 %11, %19
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  store i32 0, ptr %6, align 4
  store i32 0, ptr %9, align 4
  br label %22

22:                                               ; preds = %21, %14
  tail call void @snd_pcm_period_elapsed(ptr noundef %15) #12
  br label %23

23:                                               ; preds = %22, %1
  %24 = load ptr, ptr %3, align 4
  %25 = getelementptr i8, ptr %24, i32 8
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #12, !srcloc !9
  %27 = load ptr, ptr %3, align 4
  %28 = getelementptr i8, ptr %27, i32 20
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #12, !srcloc !9
  %30 = and i32 %26, 16
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.fsi_priv, ptr %3, i32 0, i32 3, i32 8
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, 1
  store i32 %35, ptr %33, align 4
  br label %36

36:                                               ; preds = %32, %23
  %37 = and i32 %26, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.fsi_priv, ptr %3, i32 0, i32 3, i32 7
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, 1
  store i32 %42, ptr %40, align 4
  br label %43

43:                                               ; preds = %39, %36
  %44 = and i32 %29, 16
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.fsi_priv, ptr %3, i32 0, i32 4, i32 8
  %48 = load i32, ptr %47, align 4
  %49 = add i32 %48, 1
  store i32 %49, ptr %47, align 4
  br label %50

50:                                               ; preds = %46, %43
  %51 = and i32 %29, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.fsi_priv, ptr %3, i32 0, i32 4, i32 7
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %55, 1
  store i32 %56, ptr %54, align 4
  br label %57

57:                                               ; preds = %53, %50
  %58 = load ptr, ptr %3, align 4
  %59 = getelementptr i8, ptr %58, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 0) #12, !srcloc !10
  %60 = load ptr, ptr %3, align 4
  %61 = getelementptr i8, ptr %60, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 0) #12, !srcloc !10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsi_pcm_new(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_soc_card, ptr %6, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.snd_card, ptr %8, i32 0, i32 27
  %10 = load ptr, ptr %9, align 8
  %11 = tail call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %4, i32 noundef 2, ptr noundef %10, i32 noundef 32768, i32 noundef 32768) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsi_pcm_open(ptr nocapture noundef readnone %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @snd_soc_set_runtime_hwparams(ptr noundef %1, ptr noundef nonnull @fsi_pcm_hardware) #12
  %6 = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %4, i32 noundef 15) #12
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @fsi_pointer(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #9 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 2
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
  %14 = icmp eq i32 %13, 0
  %15 = getelementptr inbounds %struct.fsi_master, ptr %11, i32 0, i32 1
  %16 = getelementptr inbounds %struct.fsi_master, ptr %11, i32 0, i32 2
  %17 = select i1 %14, ptr %15, ptr %16
  %18 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  %21 = getelementptr inbounds %struct.fsi_priv, ptr %17, i32 0, i32 3
  %22 = getelementptr inbounds %struct.fsi_priv, ptr %17, i32 0, i32 4
  %23 = select i1 %20, ptr %21, ptr %22
  %24 = getelementptr inbounds %struct.fsi_stream, ptr %23, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.fsi_priv, ptr %17, i32 0, i32 7
  %27 = load i32, ptr %26, align 4
  %28 = shl i32 %27, 16
  %29 = ashr exact i32 %28, 16
  %30 = sdiv i32 %25, %29
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_set_runtime_hwparams(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_integer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsi_dai_set_fmt(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.fsi_master, ptr %6, i32 0, i32 1
  %11 = getelementptr inbounds %struct.fsi_master, ptr %6, i32 0, i32 2
  %12 = select i1 %9, ptr %10, ptr %11
  %13 = trunc i32 %1 to i16
  %14 = and i16 %13, -4096
  switch i16 %14, label %70 [
    i16 4096, label %19
    i16 16384, label %15
  ]

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.fsi_priv, ptr %12, i32 0, i32 7
  %17 = load i32, ptr %16, align 4
  %18 = or i32 %17, 65536
  store i32 %18, ptr %16, align 4
  br label %19

19:                                               ; preds = %15, %2
  %20 = lshr i32 %1, 8
  %21 = and i32 %20, 15
  switch i32 %21, label %36 [
    i32 2, label %22
    i32 3, label %27
    i32 4, label %32
  ]

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.fsi_priv, ptr %12, i32 0, i32 7
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, -3145729
  %26 = or i32 %25, 2097152
  store i32 %26, ptr %23, align 4
  br label %40

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.fsi_priv, ptr %12, i32 0, i32 7
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, -3145729
  %31 = or i32 %30, 1048576
  store i32 %31, ptr %28, align 4
  br label %40

32:                                               ; preds = %19
  %33 = getelementptr inbounds %struct.fsi_priv, ptr %12, i32 0, i32 7
  %34 = load i32, ptr %33, align 4
  %35 = or i32 %34, 3145728
  store i32 %35, ptr %33, align 4
  br label %40

36:                                               ; preds = %19
  %37 = getelementptr inbounds %struct.fsi_priv, ptr %12, i32 0, i32 7
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, -3145729
  store i32 %39, ptr %37, align 4
  br label %40

40:                                               ; preds = %36, %32, %27, %22
  %41 = phi i32 [ %39, %36 ], [ %35, %32 ], [ %31, %27 ], [ %26, %22 ]
  %42 = getelementptr inbounds %struct.fsi_priv, ptr %12, i32 0, i32 7
  %43 = and i32 %41, 65536
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %40
  %46 = and i32 %41, 131072
  %47 = icmp eq i32 %46, 0
  %48 = load ptr, ptr %3, align 4
  br i1 %47, label %50, label %49

49:                                               ; preds = %45
  tail call fastcc void @fsi_clk_init(ptr noundef %48, ptr noundef %12, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @fsi_clk_set_rate_cpg)
  br label %51

50:                                               ; preds = %45
  tail call fastcc void @fsi_clk_init(ptr noundef %48, ptr noundef %12, i32 noundef 1, i32 noundef 0, ptr noundef nonnull @fsi_clk_set_rate_external)
  br label %51

51:                                               ; preds = %50, %49, %40
  %52 = load i32, ptr %42, align 4
  %53 = and i32 %52, 262144
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.fsi_priv, ptr %12, i32 0, i32 2
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.fsi_master, ptr %57, i32 0, i32 3
  %59 = load ptr, ptr %58, align 4
  %60 = load i32, ptr %59, align 4
  %61 = icmp slt i32 %60, 2
  br i1 %61, label %70, label %65

62:                                               ; preds = %51
  %63 = and i32 %1, 15
  switch i32 %63, label %70 [
    i32 1, label %65
    i32 3, label %64
  ]

64:                                               ; preds = %62
  br label %65

65:                                               ; preds = %64, %62, %55
  %66 = phi i32 [ 288, %55 ], [ 32, %64 ], [ 48, %62 ]
  %67 = getelementptr inbounds %struct.fsi_priv, ptr %12, i32 0, i32 6
  store i32 %66, ptr %67, align 4
  %68 = and i32 %52, -65536
  %69 = or i32 %68, 2
  store i32 %69, ptr %42, align 4
  br label %70

70:                                               ; preds = %65, %62, %55, %2
  %71 = phi i32 [ -22, %2 ], [ -22, %55 ], [ -22, %62 ], [ 0, %65 ]
  ret i32 %71
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @fsi_dai_startup(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #10 {
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
  %14 = icmp eq i32 %13, 0
  %15 = getelementptr inbounds %struct.fsi_master, ptr %11, i32 0, i32 1
  %16 = getelementptr inbounds %struct.fsi_master, ptr %11, i32 0, i32 2
  %17 = select i1 %14, ptr %15, ptr %16
  %18 = getelementptr inbounds %struct.fsi_priv, ptr %17, i32 0, i32 5, i32 5
  store i32 0, ptr %18, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @fsi_dai_shutdown(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #10 {
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
  %14 = icmp eq i32 %13, 0
  %15 = getelementptr inbounds %struct.fsi_master, ptr %11, i32 0, i32 1
  %16 = getelementptr inbounds %struct.fsi_master, ptr %11, i32 0, i32 2
  %17 = select i1 %14, ptr %15, ptr %16
  %18 = getelementptr inbounds %struct.fsi_priv, ptr %17, i32 0, i32 5, i32 5
  store i32 0, ptr %18, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @fsi_dai_hw_params(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #10 {
  %4 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 2
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
  %15 = icmp eq i32 %14, 0
  %16 = getelementptr inbounds %struct.fsi_master, ptr %12, i32 0, i32 1
  %17 = getelementptr inbounds %struct.fsi_master, ptr %12, i32 0, i32 2
  %18 = select i1 %15, ptr %16, ptr %17
  %19 = getelementptr inbounds %struct.fsi_priv, ptr %18, i32 0, i32 7
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 65536
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %3
  %24 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.fsi_priv, ptr %18, i32 0, i32 5, i32 5
  store i32 %25, ptr %26, align 4
  br label %27

27:                                               ; preds = %23, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsi_dai_trigger(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 2
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
  %15 = icmp eq i32 %14, 0
  %16 = getelementptr inbounds %struct.fsi_master, ptr %12, i32 0, i32 1
  %17 = getelementptr inbounds %struct.fsi_master, ptr %12, i32 0, i32 2
  %18 = select i1 %15, ptr %16, ptr %17
  %19 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr inbounds %struct.fsi_priv, ptr %18, i32 0, i32 3
  %23 = getelementptr inbounds %struct.fsi_priv, ptr %18, i32 0, i32 4
  %24 = select i1 %21, ptr %22, ptr %23
  switch i32 %1, label %162 [
    i32 1, label %25
    i32 0, label %91
  ]

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.fsi_priv, ptr %18, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.fsi_master, ptr %29, i32 0, i32 4
  %31 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %30) #12
  store ptr %0, ptr %24, align 4
  %32 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %27, i32 0, i32 18
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.fsi_priv, ptr %18, i32 0, i32 7
  %35 = load i32, ptr %34, align 4
  %36 = shl i32 %35, 16
  %37 = ashr exact i32 %36, 16
  %38 = mul i32 %37, %33
  %39 = getelementptr inbounds %struct.fsi_stream, ptr %24, i32 0, i32 2
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.fsi_stream, ptr %24, i32 0, i32 3
  store i32 0, ptr %40, align 4
  %41 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %27, i32 0, i32 16
  %42 = load i32, ptr %41, align 4
  %43 = load i32, ptr %34, align 4
  %44 = shl i32 %43, 16
  %45 = ashr exact i32 %44, 16
  %46 = mul i32 %45, %42
  %47 = getelementptr inbounds %struct.fsi_stream, ptr %24, i32 0, i32 4
  store i32 %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.fsi_stream, ptr %24, i32 0, i32 5
  store i32 0, ptr %48, align 4
  %49 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %27, i32 0, i32 22
  %50 = load i32, ptr %49, align 4
  %51 = lshr i32 %50, 3
  %52 = getelementptr inbounds %struct.fsi_stream, ptr %24, i32 0, i32 6
  store i32 %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.fsi_stream, ptr %24, i32 0, i32 9
  store i32 0, ptr %53, align 4
  %54 = getelementptr inbounds %struct.fsi_stream, ptr %24, i32 0, i32 8
  store i32 -1, ptr %54, align 4
  %55 = getelementptr inbounds %struct.fsi_stream, ptr %24, i32 0, i32 7
  store i32 -1, ptr %55, align 4
  %56 = icmp eq ptr %24, null
  br i1 %56, label %64, label %57

57:                                               ; preds = %25
  %58 = getelementptr inbounds %struct.fsi_stream, ptr %24, i32 0, i32 10
  %59 = load ptr, ptr %58, align 4
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %57
  %63 = tail call i32 %60(ptr noundef %18, ptr noundef nonnull %24) #12
  br label %64

64:                                               ; preds = %62, %57, %25
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %30, i32 noundef %31) #12
  %65 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 2
  %66 = load ptr, ptr %65, align 4
  %67 = tail call fastcc i32 @fsi_hw_startup(ptr noundef %18, ptr noundef %24, ptr noundef %66)
  %68 = icmp ne i32 %67, 0
  %69 = select i1 %68, i1 true, i1 %56
  %70 = select i1 %68, i32 %67, i32 -19
  br i1 %69, label %162, label %71

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.fsi_stream, ptr %24, i32 0, i32 10
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.fsi_stream_handler, ptr %73, i32 0, i32 5
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %71
  %78 = tail call i32 %75(ptr noundef %18, ptr noundef nonnull %24, i32 noundef 1) #12
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %162

80:                                               ; preds = %77, %71
  %81 = getelementptr inbounds %struct.fsi_stream, ptr %24, i32 0, i32 11
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %162, label %84

84:                                               ; preds = %80
  %85 = load ptr, ptr %72, align 4
  %86 = getelementptr inbounds %struct.fsi_stream_handler, ptr %85, i32 0, i32 3
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %162, label %89

89:                                               ; preds = %84
  %90 = tail call i32 %87(ptr noundef nonnull %82, ptr noundef nonnull %24) #12
  br label %162

91:                                               ; preds = %3
  %92 = getelementptr inbounds %struct.fsi_priv, ptr %18, i32 0, i32 7
  %93 = load i32, ptr %92, align 4
  %94 = and i32 %93, 65536
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %116, label %96

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.fsi_priv, ptr %18, i32 0, i32 5, i32 4
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %116, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.fsi_priv, ptr %18, i32 0, i32 5, i32 5
  %102 = load i32, ptr %101, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %116, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.fsi_priv, ptr %18, i32 0, i32 5, i32 6
  %106 = load i32, ptr %105, align 4
  %107 = add i32 %106, -1
  store i32 %107, ptr %105, align 4
  %108 = icmp eq i32 %106, 1
  br i1 %108, label %109, label %116

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.fsi_priv, ptr %18, i32 0, i32 5, i32 1
  %111 = load ptr, ptr %110, align 4
  tail call void @clk_disable(ptr noundef %111) #12
  %112 = getelementptr inbounds %struct.fsi_priv, ptr %18, i32 0, i32 5, i32 2
  %113 = load ptr, ptr %112, align 4
  tail call void @clk_disable(ptr noundef %113) #12
  %114 = getelementptr inbounds %struct.fsi_priv, ptr %18, i32 0, i32 5, i32 3
  %115 = load ptr, ptr %114, align 4
  tail call void @clk_disable(ptr noundef %115) #12
  br label %116

116:                                              ; preds = %109, %104, %100, %96, %91
  %117 = phi i32 [ 0, %91 ], [ -22, %100 ], [ 0, %109 ], [ 0, %104 ], [ -22, %96 ]
  %118 = icmp eq ptr %24, null
  br i1 %118, label %127, label %119

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.fsi_stream, ptr %24, i32 0, i32 10
  %121 = load ptr, ptr %120, align 4
  %122 = getelementptr inbounds %struct.fsi_stream_handler, ptr %121, i32 0, i32 5
  %123 = load ptr, ptr %122, align 4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %127, label %125

125:                                              ; preds = %119
  %126 = tail call i32 %123(ptr noundef %18, ptr noundef nonnull %24, i32 noundef 0) #12
  br label %127

127:                                              ; preds = %125, %119, %116
  %128 = load ptr, ptr %24, align 4
  %129 = getelementptr inbounds %struct.snd_pcm_substream, ptr %128, i32 0, i32 2
  %130 = load ptr, ptr %129, align 4
  %131 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %130, i32 0, i32 9
  %132 = load ptr, ptr %131, align 4
  %133 = load ptr, ptr %132, align 4
  %134 = getelementptr inbounds %struct.fsi_priv, ptr %18, i32 0, i32 2
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr inbounds %struct.fsi_master, ptr %135, i32 0, i32 4
  %137 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %136) #12
  %138 = getelementptr inbounds %struct.fsi_stream, ptr %24, i32 0, i32 8
  %139 = load i32, ptr %138, align 4
  %140 = icmp sgt i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %127
  %142 = getelementptr inbounds %struct.snd_soc_dai, ptr %133, i32 0, i32 2
  %143 = load ptr, ptr %142, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %143, ptr noundef nonnull @.str.42, i32 noundef %139) #13
  br label %144

144:                                              ; preds = %141, %127
  %145 = getelementptr inbounds %struct.fsi_stream, ptr %24, i32 0, i32 7
  %146 = load i32, ptr %145, align 4
  %147 = icmp sgt i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.snd_soc_dai, ptr %133, i32 0, i32 2
  %150 = load ptr, ptr %149, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %150, ptr noundef nonnull @.str.43, i32 noundef %146) #13
  br label %151

151:                                              ; preds = %148, %144
  br i1 %118, label %160, label %152

152:                                              ; preds = %151
  %153 = getelementptr inbounds %struct.fsi_stream, ptr %24, i32 0, i32 10
  %154 = load ptr, ptr %153, align 4
  %155 = getelementptr inbounds %struct.fsi_stream_handler, ptr %154, i32 0, i32 1
  %156 = load ptr, ptr %155, align 4
  %157 = icmp eq ptr %156, null
  br i1 %157, label %160, label %158

158:                                              ; preds = %152
  %159 = tail call i32 %156(ptr noundef %18, ptr noundef nonnull %24) #12
  br label %160

160:                                              ; preds = %158, %152, %151
  store ptr null, ptr %24, align 4
  %161 = getelementptr inbounds %struct.fsi_stream, ptr %24, i32 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(32) %161, i8 0, i64 32, i1 false) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %136, i32 noundef %137) #12
  br label %162

162:                                              ; preds = %160, %89, %84, %80, %77, %64, %3
  %163 = phi i32 [ 0, %3 ], [ %117, %160 ], [ %78, %77 ], [ -5, %80 ], [ %90, %89 ], [ 0, %84 ], [ %70, %64 ]
  ret i32 %163
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fsi_clk_init(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 {
  %6 = getelementptr inbounds %struct.fsi_priv, ptr %1, i32 0, i32 5
  %7 = getelementptr inbounds %struct.fsi_priv, ptr %1, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %1, align 4
  %11 = icmp eq ptr %9, %10
  %12 = getelementptr inbounds %struct.fsi_priv, ptr %1, i32 0, i32 5, i32 1
  store ptr null, ptr %12, align 4
  %13 = getelementptr inbounds %struct.fsi_priv, ptr %1, i32 0, i32 5, i32 2
  store ptr null, ptr %13, align 4
  %14 = getelementptr inbounds %struct.fsi_priv, ptr %1, i32 0, i32 5, i32 3
  store ptr null, ptr %14, align 4
  %15 = getelementptr inbounds %struct.fsi_priv, ptr %1, i32 0, i32 5, i32 5
  store i32 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.fsi_priv, ptr %1, i32 0, i32 5, i32 6
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.fsi_priv, ptr %1, i32 0, i32 5, i32 4
  store ptr %4, ptr %17, align 4
  %18 = tail call ptr @devm_clk_get(ptr noundef %0, ptr noundef null) #12
  store ptr %18, ptr %6, align 4
  %19 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %47, label %20

20:                                               ; preds = %5
  %21 = icmp eq i32 %2, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %20
  %23 = select i1 %11, ptr @.str.22, ptr @.str.23
  %24 = tail call ptr @devm_clk_get(ptr noundef %0, ptr noundef nonnull %23) #12
  store ptr %24, ptr %12, align 4
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %45, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %6, align 4
  %28 = icmp eq ptr %24, %27
  br i1 %28, label %45, label %29

29:                                               ; preds = %26, %20
  %30 = select i1 %11, ptr @.str.26, ptr @.str.27
  %31 = tail call ptr @devm_clk_get(ptr noundef %0, ptr noundef nonnull %30) #12
  store ptr %31, ptr %13, align 4
  %32 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %45, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %6, align 4
  %35 = icmp eq ptr %31, %34
  br i1 %35, label %45, label %36

36:                                               ; preds = %33
  %37 = icmp eq i32 %3, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %36
  %39 = select i1 %11, ptr @.str.30, ptr @.str.31
  %40 = tail call ptr @devm_clk_get(ptr noundef %0, ptr noundef nonnull %39) #12
  store ptr %40, ptr %14, align 4
  %41 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr %6, align 4
  %44 = icmp eq ptr %40, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %42, %38, %33, %29, %26, %22
  %46 = phi ptr [ @.str.24, %22 ], [ @.str.25, %26 ], [ @.str.28, %29 ], [ @.str.29, %33 ], [ @.str.32, %38 ], [ @.str.33, %42 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull %46) #13
  br label %47

47:                                               ; preds = %45, %42, %36, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsi_clk_set_rate_cpg(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.fsi_priv, ptr %1, i32 0, i32 5, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.fsi_priv, ptr %1, i32 0, i32 5, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.fsi_priv, ptr %1, i32 0, i32 5, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = urem i32 12288000, %8
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i32 12288000, i32 0
  %12 = urem i32 11289600, %8
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 11289600, i32 %11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.34) #13
  br label %55

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.fsi_priv, ptr %1, i32 0, i32 7
  %19 = load i32, ptr %18, align 4
  %20 = shl i32 %19, 16
  %21 = ashr exact i32 %20, 11
  %22 = udiv i32 %14, %8
  %23 = tail call fastcc i32 @fsi_clk_set_ackbpf(ptr noundef %0, ptr noundef %1, i32 noundef %22, i32 noundef %21)
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.fsi_clk_set_rate_cpg) #13
  br label %55

26:                                               ; preds = %33, %17
  %27 = phi i32 [ %42, %33 ], [ 1, %17 ]
  %28 = phi i32 [ %41, %33 ], [ 0, %17 ]
  %29 = phi i32 [ %40, %33 ], [ 0, %17 ]
  %30 = phi i32 [ %39, %33 ], [ -1, %17 ]
  %31 = mul i32 %27, %14
  %32 = icmp ugt i32 %31, 100000000
  br i1 %32, label %44, label %33

33:                                               ; preds = %26
  %34 = tail call i32 @clk_round_rate(ptr noundef %4, i32 noundef %31) #12
  %35 = udiv i32 %34, %27
  %36 = sub i32 %35, %14
  %37 = tail call i32 @llvm.abs.i32(i32 %36, i1 false)
  %38 = icmp ult i32 %37, %30
  %39 = tail call i32 @llvm.umin.i32(i32 %37, i32 %30)
  %40 = select i1 %38, i32 %34, i32 %29
  %41 = select i1 %38, i32 %35, i32 %28
  %42 = add nuw nsw i32 %27, 1
  %43 = icmp eq i32 %42, 65535
  br i1 %43, label %44, label %26

44:                                               ; preds = %33, %26
  %45 = phi i32 [ %29, %26 ], [ %40, %33 ]
  %46 = phi i32 [ %28, %26 ], [ %41, %33 ]
  %47 = tail call i32 @clk_set_rate(ptr noundef %4, i32 noundef %45) #12
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.36) #13
  br label %55

50:                                               ; preds = %44
  %51 = tail call i32 @clk_round_rate(ptr noundef %6, i32 noundef %46) #12
  %52 = tail call i32 @clk_set_rate(ptr noundef %6, i32 noundef %51) #12
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.37) #13
  br label %55

55:                                               ; preds = %54, %50, %49, %25, %16
  %56 = phi i32 [ %23, %25 ], [ -5, %49 ], [ -5, %54 ], [ -22, %16 ], [ %52, %50 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsi_clk_set_rate_external(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.fsi_priv, ptr %1, i32 0, i32 5, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.fsi_priv, ptr %1, i32 0, i32 5, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.fsi_priv, ptr %1, i32 0, i32 5, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = tail call i32 @clk_get_rate(ptr noundef %4) #12
  %10 = freeze i32 %9
  %11 = freeze i32 %8
  %12 = udiv i32 %10, %11
  %13 = mul i32 %12, %11
  %14 = sub i32 %10, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.41) #13
  br label %27

17:                                               ; preds = %2
  %18 = tail call i32 @clk_set_parent(ptr noundef %6, ptr noundef %4) #12
  %19 = tail call i32 @clk_set_rate(ptr noundef %6, i32 noundef %9) #12
  %20 = getelementptr inbounds %struct.fsi_priv, ptr %1, i32 0, i32 7
  %21 = load i32, ptr %20, align 4
  %22 = shl i32 %21, 16
  %23 = ashr exact i32 %22, 11
  %24 = tail call fastcc i32 @fsi_clk_set_ackbpf(ptr noundef %0, ptr noundef %1, i32 noundef %12, i32 noundef %23)
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.fsi_clk_set_rate_external) #13
  br label %27

27:                                               ; preds = %26, %17, %16
  %28 = phi i32 [ -22, %16 ], [ %24, %26 ], [ %24, %17 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fsi_clk_set_ackbpf(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = icmp sgt i32 %3, %2
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.38, i32 noundef %2, i32 noundef %3) #13
  br label %35

7:                                                ; preds = %4
  switch i32 %2, label %12 [
    i32 512, label %13
    i32 256, label %8
    i32 128, label %9
    i32 64, label %10
    i32 32, label %11
  ]

8:                                                ; preds = %7
  br label %13

9:                                                ; preds = %7
  br label %13

10:                                               ; preds = %7
  br label %13

11:                                               ; preds = %7
  br label %13

12:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.39, i32 noundef %2) #13
  br label %35

13:                                               ; preds = %11, %10, %9, %8, %7
  %14 = phi i32 [ 16384, %11 ], [ 12288, %10 ], [ 8192, %9 ], [ 4096, %8 ], [ 0, %7 ]
  switch i32 %3, label %25 [
    i32 32, label %26
    i32 64, label %15
    i32 128, label %17
    i32 256, label %19
    i32 512, label %21
    i32 16, label %23
  ]

15:                                               ; preds = %13
  %16 = or i32 %14, 256
  br label %26

17:                                               ; preds = %13
  %18 = or i32 %14, 512
  br label %26

19:                                               ; preds = %13
  %20 = or i32 %14, 768
  br label %26

21:                                               ; preds = %13
  %22 = or i32 %14, 1024
  br label %26

23:                                               ; preds = %13
  %24 = or i32 %14, 1792
  br label %26

25:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.40, i32 noundef %3) #13
  br label %35

26:                                               ; preds = %23, %21, %19, %17, %15, %13
  %27 = phi i32 [ %24, %23 ], [ %22, %21 ], [ %20, %19 ], [ %18, %17 ], [ %16, %15 ], [ %14, %13 ]
  %28 = load ptr, ptr %1, align 4
  %29 = getelementptr i8, ptr %28, i32 24
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #12, !srcloc !9
  %31 = and i32 %30, 16746751
  %32 = and i32 %27, 30464
  %33 = or i32 %31, %32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %33) #12, !srcloc !10
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 2147480) #12
  br label %35

35:                                               ; preds = %26, %25, %12, %6
  %36 = phi i32 [ -22, %6 ], [ -22, %12 ], [ -22, %25 ], [ 0, %26 ]
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fsi_hw_startup(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.fsi_priv, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 65536
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 0, i32 17
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr i8, ptr %9, i32 24
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #12, !srcloc !9
  %12 = and i32 %11, 16777198
  %13 = or i32 %12, %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %13) #12, !srcloc !10
  %14 = load i32, ptr %4, align 4
  %15 = lshr i32 %14, 20
  %16 = and i32 %15, 1
  %17 = lshr i32 %14, 17
  %18 = and i32 %17, 16
  %19 = or i32 %18, %16
  %20 = and i32 %14, 65536
  %21 = icmp eq i32 %20, 0
  %22 = shl nuw nsw i32 %19, 8
  %23 = select i1 %21, i32 %19, i32 %22
  %24 = load ptr, ptr %0, align 4
  %25 = getelementptr i8, ptr %24, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #12, !srcloc !10
  %26 = load i32, ptr %4, align 4
  %27 = and i32 %26, 262144
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %63, label %29

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.fsi_priv, ptr %0, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = load ptr, ptr %31, align 4
  %33 = load ptr, ptr %0, align 4
  %34 = icmp eq ptr %32, %33
  %35 = getelementptr inbounds %struct.fsi_master, ptr %31, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  br i1 %34, label %37, label %47

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.fsi_core, ptr %36, i32 0, i32 4
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.fsi_master, ptr %31, i32 0, i32 4
  %41 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %40) #12
  %42 = load ptr, ptr %31, align 4
  %43 = getelementptr i8, ptr %42, i32 %39
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #12, !srcloc !9
  %45 = and i32 %44, 16777198
  %46 = or i32 %45, 17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %46) #12, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %40, i32 noundef %41) #12
  br label %57

47:                                               ; preds = %29
  %48 = getelementptr inbounds %struct.fsi_core, ptr %36, i32 0, i32 5
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.fsi_master, ptr %31, i32 0, i32 4
  %51 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %50) #12
  %52 = load ptr, ptr %31, align 4
  %53 = getelementptr i8, ptr %52, i32 %49
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #12, !srcloc !9
  %55 = and i32 %54, 16777198
  %56 = or i32 %55, 17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %56) #12, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %50, i32 noundef %51) #12
  br label %57

57:                                               ; preds = %47, %37
  %58 = load ptr, ptr %0, align 4
  %59 = getelementptr i8, ptr %58, i32 48
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #12, !srcloc !9
  %61 = and i32 %60, 16777199
  %62 = or i32 %61, 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %62) #12, !srcloc !10
  br label %63

63:                                               ; preds = %57, %3
  %64 = getelementptr inbounds %struct.fsi_stream, ptr %1, i32 0, i32 6
  %65 = load i32, ptr %64, align 4
  switch i32 %65, label %75 [
    i32 2, label %66
    i32 4, label %70
  ]

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.fsi_stream, ptr %1, i32 0, i32 9
  %68 = load i32, ptr %67, align 4
  %69 = and i32 %68, 15
  br label %75

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.fsi_stream, ptr %1, i32 0, i32 9
  %72 = load i32, ptr %71, align 4
  %73 = lshr i32 %72, 4
  %74 = and i32 %73, 15
  br label %75

75:                                               ; preds = %70, %66, %63
  %76 = phi i32 [ 0, %63 ], [ %74, %70 ], [ %69, %66 ]
  %77 = getelementptr inbounds %struct.fsi_priv, ptr %0, i32 0, i32 2
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.fsi_priv, ptr %0, i32 0, i32 3
  %80 = icmp eq ptr %79, %1
  %81 = getelementptr inbounds %struct.fsi_priv, ptr %0, i32 0, i32 6
  %82 = load i32, ptr %81, align 4
  %83 = getelementptr inbounds %struct.fsi_master, ptr %78, i32 0, i32 3
  %84 = load ptr, ptr %83, align 4
  %85 = load i32, ptr %84, align 4
  %86 = icmp sgt i32 %85, 1
  br i1 %86, label %87, label %99

87:                                               ; preds = %75
  switch i32 %76, label %90 [
    i32 1, label %91
    i32 2, label %88
  ]

88:                                               ; preds = %87
  %89 = or i32 %82, 1048576
  br label %91

90:                                               ; preds = %87
  br label %91

91:                                               ; preds = %90, %88, %87
  %92 = phi i32 [ %82, %90 ], [ %89, %88 ], [ %82, %87 ]
  %93 = phi i32 [ 16, %90 ], [ 32, %88 ], [ 0, %87 ]
  %94 = load ptr, ptr %0, align 4
  br i1 %80, label %95, label %97

95:                                               ; preds = %91
  %96 = getelementptr i8, ptr %94, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 %93) #12, !srcloc !10
  br label %100

97:                                               ; preds = %91
  %98 = getelementptr i8, ptr %94, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 %93) #12, !srcloc !10
  br label %104

99:                                               ; preds = %75
  br i1 %80, label %100, label %104

100:                                              ; preds = %99, %95
  %101 = phi i32 [ %92, %95 ], [ %82, %99 ]
  %102 = load ptr, ptr %0, align 4
  %103 = and i32 %101, 16777215
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 %103) #12, !srcloc !10
  br label %109

104:                                              ; preds = %99, %97
  %105 = phi i32 [ %92, %97 ], [ %82, %99 ]
  %106 = load ptr, ptr %0, align 4
  %107 = getelementptr i8, ptr %106, i32 12
  %108 = and i32 %105, 16777215
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 %108) #12, !srcloc !10
  br label %109

109:                                              ; preds = %104, %100
  %110 = load ptr, ptr %77, align 4
  %111 = load ptr, ptr %110, align 4
  %112 = load ptr, ptr %0, align 4
  %113 = icmp eq ptr %111, %112
  %114 = select i1 %80, i32 0, i32 4
  %115 = select i1 %80, i32 8, i32 12
  %116 = select i1 %113, i32 %114, i32 %115
  %117 = shl nuw nsw i32 1, %116
  %118 = getelementptr inbounds %struct.fsi_master, ptr %110, i32 0, i32 3
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr inbounds %struct.fsi_core, ptr %119, i32 0, i32 3
  %121 = load i32, ptr %120, align 4
  %122 = getelementptr inbounds %struct.fsi_master, ptr %110, i32 0, i32 4
  %123 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %122) #12
  %124 = load ptr, ptr %110, align 4
  %125 = getelementptr i8, ptr %124, i32 %121
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %125) #12, !srcloc !9
  %127 = xor i32 %117, 16777215
  %128 = and i32 %126, %127
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %125, i32 %128) #12, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %122, i32 noundef %123) #12
  %129 = load ptr, ptr %118, align 4
  %130 = getelementptr inbounds %struct.fsi_core, ptr %129, i32 0, i32 2
  %131 = load i32, ptr %130, align 4
  %132 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %122) #12
  %133 = load ptr, ptr %110, align 4
  %134 = getelementptr i8, ptr %133, i32 %131
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %134) #12, !srcloc !9
  %136 = and i32 %135, %127
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %134, i32 %136) #12, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %122, i32 noundef %132) #12
  %137 = load ptr, ptr %77, align 4
  %138 = load ptr, ptr %137, align 4
  %139 = load ptr, ptr %0, align 4
  %140 = icmp eq ptr %138, %139
  %141 = getelementptr inbounds %struct.fsi_master, ptr %137, i32 0, i32 3
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr inbounds %struct.fsi_core, ptr %142, i32 0, i32 1
  %144 = load i32, ptr %143, align 4
  %145 = getelementptr inbounds %struct.fsi_master, ptr %137, i32 0, i32 4
  %146 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %145) #12
  %147 = load ptr, ptr %137, align 4
  %148 = getelementptr i8, ptr %147, i32 %144
  %149 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %148) #12, !srcloc !9
  %150 = select i1 %140, i32 16777198, i32 16772863
  %151 = and i32 %149, %150
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %148, i32 %151) #12, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %145, i32 noundef %146) #12
  %152 = load ptr, ptr %77, align 4
  %153 = getelementptr inbounds %struct.fsi_master, ptr %152, i32 0, i32 4
  %154 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %153) #12
  %155 = load ptr, ptr %152, align 4
  %156 = getelementptr i8, ptr %155, i32 536
  %157 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %156) #12, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %153, i32 noundef %154) #12
  %158 = load ptr, ptr %77, align 4
  %159 = load ptr, ptr %158, align 4
  %160 = load ptr, ptr %0, align 4
  %161 = icmp eq ptr %159, %160
  %162 = select i1 %161, i32 %114, i32 %115
  %163 = lshr i32 %157, %162
  %164 = and i32 %163, 7
  %165 = shl nuw nsw i32 256, %164
  %166 = load i32, ptr %4, align 4
  %167 = shl i32 %166, 16
  %168 = ashr exact i32 %167, 16
  %169 = icmp ugt i32 %167, 65536
  br i1 %169, label %170, label %176

170:                                              ; preds = %170, %109
  %171 = phi i32 [ %173, %170 ], [ %165, %109 ]
  %172 = phi i32 [ %174, %170 ], [ 1, %109 ]
  %173 = lshr i32 %171, 1
  %174 = shl i32 %172, 1
  %175 = icmp ult i32 %174, %168
  br i1 %175, label %170, label %176

176:                                              ; preds = %170, %109
  %177 = phi i32 [ %165, %109 ], [ %173, %170 ]
  %178 = mul nsw i32 %177, %168
  %179 = getelementptr inbounds %struct.fsi_stream, ptr %1, i32 0, i32 1
  store i32 %178, ptr %179, align 4
  %180 = load ptr, ptr %0, align 4
  br i1 %80, label %181, label %188

181:                                              ; preds = %176
  %182 = getelementptr i8, ptr %180, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %182, i32 1048576) #12, !srcloc !10
  %183 = load ptr, ptr %0, align 4
  %184 = getelementptr i8, ptr %183, i32 4
  %185 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %184) #12, !srcloc !9
  %186 = and i32 %185, 16777214
  %187 = or i32 %186, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %184, i32 %187) #12, !srcloc !10
  br label %195

188:                                              ; preds = %176
  %189 = getelementptr i8, ptr %180, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %189, i32 1048576) #12, !srcloc !10
  %190 = load ptr, ptr %0, align 4
  %191 = getelementptr i8, ptr %190, i32 16
  %192 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %191) #12, !srcloc !9
  %193 = and i32 %192, 16777214
  %194 = or i32 %193, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %191, i32 %194) #12, !srcloc !10
  br label %195

195:                                              ; preds = %188, %181
  %196 = load i32, ptr %4, align 4
  %197 = and i32 %196, 65536
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %227, label %199

199:                                              ; preds = %195
  %200 = getelementptr inbounds %struct.fsi_priv, ptr %0, i32 0, i32 5, i32 4
  %201 = load ptr, ptr %200, align 4
  %202 = icmp eq ptr %201, null
  br i1 %202, label %227, label %203

203:                                              ; preds = %199
  %204 = getelementptr inbounds %struct.fsi_priv, ptr %0, i32 0, i32 5, i32 5
  %205 = load i32, ptr %204, align 4
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %227, label %207

207:                                              ; preds = %203
  %208 = getelementptr inbounds %struct.fsi_priv, ptr %0, i32 0, i32 5, i32 6
  %209 = load i32, ptr %208, align 4
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %227

211:                                              ; preds = %207
  %212 = tail call i32 %201(ptr noundef %2, ptr noundef %0) #12
  %213 = icmp slt i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %211
  store i32 0, ptr %204, align 4
  br label %227

215:                                              ; preds = %211
  %216 = getelementptr inbounds %struct.fsi_priv, ptr %0, i32 0, i32 5, i32 1
  %217 = load ptr, ptr %216, align 4
  %218 = tail call i32 @clk_enable(ptr noundef %217) #12
  %219 = getelementptr inbounds %struct.fsi_priv, ptr %0, i32 0, i32 5, i32 2
  %220 = load ptr, ptr %219, align 4
  %221 = tail call i32 @clk_enable(ptr noundef %220) #12
  %222 = getelementptr inbounds %struct.fsi_priv, ptr %0, i32 0, i32 5, i32 3
  %223 = load ptr, ptr %222, align 4
  %224 = tail call i32 @clk_enable(ptr noundef %223) #12
  %225 = load i32, ptr %208, align 4
  %226 = add i32 %225, 1
  store i32 %226, ptr %208, align 4
  br label %227

227:                                              ; preds = %215, %214, %207, %203, %199, %195
  %228 = phi i32 [ 0, %195 ], [ %212, %214 ], [ -22, %203 ], [ %212, %215 ], [ -22, %207 ], [ -22, %199 ]
  ret i32 %228
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsi_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.fsi_master, ptr %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.fsi_master, ptr %3, i32 0, i32 2
  %6 = getelementptr inbounds %struct.fsi_master, ptr %3, i32 0, i32 1, i32 3
  tail call fastcc void @__fsi_suspend(ptr noundef %4, ptr noundef %6)
  %7 = getelementptr inbounds %struct.fsi_master, ptr %3, i32 0, i32 1, i32 4
  tail call fastcc void @__fsi_suspend(ptr noundef %4, ptr noundef %7)
  %8 = getelementptr inbounds %struct.fsi_master, ptr %3, i32 0, i32 2, i32 3
  tail call fastcc void @__fsi_suspend(ptr noundef %5, ptr noundef %8)
  %9 = getelementptr inbounds %struct.fsi_master, ptr %3, i32 0, i32 2, i32 4
  tail call fastcc void @__fsi_suspend(ptr noundef %5, ptr noundef %9)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsi_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.fsi_master, ptr %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.fsi_master, ptr %3, i32 0, i32 2
  %6 = getelementptr inbounds %struct.fsi_master, ptr %3, i32 0, i32 1, i32 3
  %7 = getelementptr inbounds %struct.fsi_master, ptr %3, i32 0, i32 1, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.fsi_master, ptr %8, i32 0, i32 4
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #12
  %11 = load ptr, ptr %6, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #12
  br label %29

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.snd_pcm_substream, ptr %11, i32 0, i32 11
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #12
  br i1 %17, label %29, label %18

18:                                               ; preds = %14
  %19 = tail call fastcc i32 @fsi_hw_startup(ptr noundef %4, ptr noundef %6, ptr noundef %0) #12
  %20 = icmp eq ptr %6, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.fsi_master, ptr %3, i32 0, i32 1, i32 3, i32 10
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.fsi_stream_handler, ptr %23, i32 0, i32 5
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %21
  %28 = tail call i32 %25(ptr noundef %4, ptr noundef nonnull %6, i32 noundef 1) #12
  br label %29

29:                                               ; preds = %27, %21, %18, %14, %13
  %30 = getelementptr inbounds %struct.fsi_master, ptr %3, i32 0, i32 1, i32 4
  %31 = load ptr, ptr %7, align 4
  %32 = getelementptr inbounds %struct.fsi_master, ptr %31, i32 0, i32 4
  %33 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %32) #12
  %34 = load ptr, ptr %30, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %32, i32 noundef %33) #12
  br label %52

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.snd_pcm_substream, ptr %34, i32 0, i32 11
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %32, i32 noundef %33) #12
  br i1 %40, label %52, label %41

41:                                               ; preds = %37
  %42 = tail call fastcc i32 @fsi_hw_startup(ptr noundef %4, ptr noundef %30, ptr noundef %0) #12
  %43 = icmp eq ptr %30, null
  br i1 %43, label %52, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.fsi_master, ptr %3, i32 0, i32 1, i32 4, i32 10
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.fsi_stream_handler, ptr %46, i32 0, i32 5
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %44
  %51 = tail call i32 %48(ptr noundef %4, ptr noundef nonnull %30, i32 noundef 1) #12
  br label %52

52:                                               ; preds = %50, %44, %41, %37, %36
  %53 = getelementptr inbounds %struct.fsi_master, ptr %3, i32 0, i32 2, i32 3
  %54 = getelementptr inbounds %struct.fsi_master, ptr %3, i32 0, i32 2, i32 2
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.fsi_master, ptr %55, i32 0, i32 4
  %57 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %56) #12
  %58 = load ptr, ptr %53, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %56, i32 noundef %57) #12
  br label %76

61:                                               ; preds = %52
  %62 = getelementptr inbounds %struct.snd_pcm_substream, ptr %58, i32 0, i32 11
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %56, i32 noundef %57) #12
  br i1 %64, label %76, label %65

65:                                               ; preds = %61
  %66 = tail call fastcc i32 @fsi_hw_startup(ptr noundef %5, ptr noundef %53, ptr noundef %0) #12
  %67 = icmp eq ptr %53, null
  br i1 %67, label %76, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.fsi_master, ptr %3, i32 0, i32 2, i32 3, i32 10
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.fsi_stream_handler, ptr %70, i32 0, i32 5
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %68
  %75 = tail call i32 %72(ptr noundef %5, ptr noundef nonnull %53, i32 noundef 1) #12
  br label %76

76:                                               ; preds = %74, %68, %65, %61, %60
  %77 = getelementptr inbounds %struct.fsi_master, ptr %3, i32 0, i32 2, i32 4
  %78 = load ptr, ptr %54, align 4
  %79 = getelementptr inbounds %struct.fsi_master, ptr %78, i32 0, i32 4
  %80 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %79) #12
  %81 = load ptr, ptr %77, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %79, i32 noundef %80) #12
  br label %99

84:                                               ; preds = %76
  %85 = getelementptr inbounds %struct.snd_pcm_substream, ptr %81, i32 0, i32 11
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %79, i32 noundef %80) #12
  br i1 %87, label %99, label %88

88:                                               ; preds = %84
  %89 = tail call fastcc i32 @fsi_hw_startup(ptr noundef %5, ptr noundef %77, ptr noundef %0) #12
  %90 = icmp eq ptr %77, null
  br i1 %90, label %99, label %91

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.fsi_master, ptr %3, i32 0, i32 2, i32 4, i32 10
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.fsi_stream_handler, ptr %93, i32 0, i32 5
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %99, label %97

97:                                               ; preds = %91
  %98 = tail call i32 %95(ptr noundef %5, ptr noundef nonnull %77, i32 noundef 1) #12
  br label %99

99:                                               ; preds = %97, %91, %88, %84, %83
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__fsi_suspend(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.fsi_priv, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.fsi_master, ptr %4, i32 0, i32 4
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #12
  %7 = load ptr, ptr %1, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #12
  br label %49

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.snd_pcm_substream, ptr %7, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #12
  br i1 %13, label %49, label %14

14:                                               ; preds = %10
  %15 = icmp eq ptr %1, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.fsi_stream, ptr %1, i32 0, i32 10
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.fsi_stream_handler, ptr %18, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %16
  %23 = tail call i32 %20(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 0) #12
  br label %24

24:                                               ; preds = %22, %16, %14
  %25 = getelementptr inbounds %struct.fsi_priv, ptr %0, i32 0, i32 7
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 65536
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %49, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.fsi_priv, ptr %0, i32 0, i32 5, i32 4
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %49, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.fsi_priv, ptr %0, i32 0, i32 5, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.fsi_priv, ptr %0, i32 0, i32 5, i32 6
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, -1
  store i32 %40, ptr %38, align 4
  %41 = icmp eq i32 %39, 1
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.fsi_priv, ptr %0, i32 0, i32 5, i32 1
  %44 = load ptr, ptr %43, align 4
  tail call void @clk_disable(ptr noundef %44) #12
  %45 = getelementptr inbounds %struct.fsi_priv, ptr %0, i32 0, i32 5, i32 2
  %46 = load ptr, ptr %45, align 4
  tail call void @clk_disable(ptr noundef %46) #12
  %47 = getelementptr inbounds %struct.fsi_priv, ptr %0, i32 0, i32 5, i32 3
  %48 = load ptr, ptr %47, align 4
  tail call void @clk_disable(ptr noundef %48) #12
  br label %49

49:                                               ; preds = %42, %37, %33, %29, %24, %10, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }

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
!9 = !{i64 5005326}
!10 = !{i64 5004908}
