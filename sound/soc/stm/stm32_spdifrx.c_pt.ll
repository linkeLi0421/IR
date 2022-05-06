; ModuleID = '/llk/IR/sound/soc/stm/stm32_spdifrx.c_pt.bc'
source_filename = "../sound/soc/stm/stm32_spdifrx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_dmaengine_pcm_config = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], ptr, i32 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.88, ptr }
%union.anon.88 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.lock_class_key = type {}
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.80, i32 }
%union.anon.80 = type { ptr }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8 }
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
%struct.stm32_spdifrx_data = type { ptr, ptr, ptr, ptr, %struct.completion, ptr, %struct.snd_dmaengine_dai_dma_data, ptr, ptr, ptr, ptr, %struct.dma_slave_config, i32, %struct.spinlock, %struct.spinlock, [24 x i8], [48 x i8], i32, i32 }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
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
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@stm32_spdifrx_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32h7-spdifrx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32_h7_spdifrx_regmap_conf }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description248 = internal constant [40 x i8] c"description=STM32 Soc spdifrx Interface\00", section ".modinfo", align 1
@__UNIQUE_ID_author249 = internal constant [47 x i8] c"author=Olivier Moysan, <olivier.moysan@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias250 = internal constant [29 x i8] c"alias=platform:stm32-spdifrx\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@stm32_h7_spdifrx_regmap_conf = internal constant %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr @stm32_spdifrx_writeable_reg, ptr @stm32_spdifrx_readable_reg, ptr @stm32_spdifrx_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 1020, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 3, ptr null, i32 256, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@stm32_spdifrx_driver = internal global %struct.platform_driver { ptr @stm32_spdifrx_probe, ptr @stm32_spdifrx_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_spdifrx_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_spdifrx_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [17 x i8] c"st,stm32-spdifrx\00", align 1
@stm32_spdifrx_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @stm32_spdifrx_suspend, ptr @stm32_spdifrx_resume, ptr @stm32_spdifrx_suspend, ptr @stm32_spdifrx_resume, ptr @stm32_spdifrx_suspend, ptr @stm32_spdifrx_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"kclk\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Regmap init error\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"IRQ request returned %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Reset controller error\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@stm32_spdifrx_pcm_config = internal constant %struct.snd_dmaengine_pcm_config { ptr @snd_dmaengine_pcm_prepare_slave_config, ptr null, ptr null, ptr null, ptr null, [2 x ptr] zeroinitializer, ptr @stm32_spdifrx_pcm_hw, i32 0 }, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"PCM DMA register error\0A\00", align 1
@stm32_spdifrx_component = internal constant %struct.snd_soc_component_driver { ptr @.str.9, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@stm32_spdifrx_dai = internal global [1 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr null, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @stm32_spdifrx_dai_probe, ptr null, ptr null, ptr null, ptr @stm32_spdifrx_pcm_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.10, i64 1028, i32 8190, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }], align 8
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Could not get kclk\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Unexpected IRQ. rflags=%#x, imr=%#x\0A\00", align 1
@stm32_spdifrx_pcm_hw = internal constant %struct.snd_pcm_hardware { i32 257, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 32768, i32 1024, i32 16384, i32 2, i32 8, i32 0 }, align 8
@.str.9 = private unnamed_addr constant [14 x i8] c"stm32-spdifrx\00", align 1
@stm32_spdifrx_pcm_dai_ops = internal constant %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_spdifrx_startup, ptr @stm32_spdifrx_shutdown, ptr @stm32_spdifrx_hw_params, ptr null, ptr null, ptr @stm32_spdifrx_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, align 4
@.str.10 = private unnamed_addr constant [12 x i8] c"CPU-Capture\00", align 1
@stm32_spdifrx_iec_ctrls = internal global [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.11, i32 0, i32 5, i32 0, ptr @stm32_spdifrx_info, ptr @stm32_spdifrx_capture_get, ptr null, %union.anon.80 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.12, i32 0, i32 5, i32 0, ptr @stm32_spdifrx_ub_info, ptr @stm32_spdif_user_bits_get, ptr null, %union.anon.80 zeroinitializer, i32 0 }], align 4
@stm32_spdifrx_ctrls = internal global [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.17, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @ctrl_enum_input to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.18, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.80 zeroinitializer, i32 ptrtoint (ptr @ctrl_enum_cs_channel to i32) }], align 4
@.str.11 = private unnamed_addr constant [23 x i8] c"IEC958 Capture Default\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"IEC958 User Bit Capture Default\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"Enable kclk failed: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"Start of S/PDIF block not found\0A\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"Failed to get channel status\0A\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"Failed to start synchronization\0A\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"SPDIFRX input\00", align 1
@ctrl_enum_input = internal constant %struct.soc_enum { i32 0, i8 16, i8 16, i32 4, i32 3, ptr @spdifrx_enum_input, ptr null, i8 0 }, align 4
@.str.18 = private unnamed_addr constant [19 x i8] c"SPDIFRX CS channel\00", align 1
@ctrl_enum_cs_channel = internal constant %struct.soc_enum { i32 0, i8 11, i8 11, i32 2, i32 1, ptr @spdifrx_enum_cs_channel, ptr null, i8 0 }, align 4
@spdifrx_enum_input = internal constant [4 x ptr] [ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], align 4
@.str.19 = private unnamed_addr constant [4 x i8] c"in0\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"in1\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"in2\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"in3\00", align 1
@spdifrx_enum_cs_channel = internal constant [2 x ptr] [ptr @.str.23, ptr @.str.24], align 4
@.str.23 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"Unexpected data format\0A\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"rx-ctrl\00", align 1
@.str.27 = private unnamed_addr constant [33 x i8] c"dma_request_slave_channel error\0A\00", align 1
@.str.28 = private unnamed_addr constant [39 x i8] c"snd_dma_alloc_pages returned error %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [42 x i8] c"dmaengine_slave_config returned error %d\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias250, ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_license251], section "llvm.metadata"

@__mod_of__stm32_spdifrx_ids_device_table = dso_local alias [2 x %struct.of_device_id], ptr @stm32_spdifrx_ids

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_spdifrx_driver, ptr noundef nonnull @__this_module) #10
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_spdifrx_driver) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @stm32_spdifrx_writeable_reg(ptr nocapture noundef readnone %0, i32 noundef %1) #1 {
  %3 = icmp ult i32 %1, 13
  %4 = trunc i32 %1 to i13
  %5 = lshr i13 -4079, %4
  %6 = and i13 %5, 1
  %7 = icmp ne i13 %6, 0
  %8 = select i1 %3, i1 %7, i1 false
  ret i1 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @stm32_spdifrx_readable_reg(ptr nocapture noundef readnone %0, i32 noundef %1) #1 {
  switch i32 %1, label %3 [
    i32 0, label %4
    i32 4, label %4
    i32 8, label %4
    i32 12, label %4
    i32 16, label %4
    i32 20, label %4
    i32 24, label %4
    i32 1012, label %4
    i32 1016, label %4
    i32 1020, label %4
  ]

3:                                                ; preds = %2
  br label %4

4:                                                ; preds = %3, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %5 = phi i1 [ false, %3 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ]
  ret i1 %5
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @stm32_spdifrx_volatile_reg(ptr nocapture noundef readnone %0, i32 noundef %1) #2 {
  %3 = add i32 %1, -8
  %4 = tail call i32 @llvm.fshl.i32(i32 %3, i32 %3, i32 30)
  %5 = icmp ult i32 %4, 5
  %6 = trunc i32 %4 to i5
  %7 = lshr i5 -3, %6
  %8 = and i5 %7, 1
  %9 = icmp ne i5 %8, 0
  %10 = select i1 %5, i1 %9, i1 false
  ret i1 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_spdifrx_probe(ptr noundef %0) #4 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 228, i32 noundef 3520) #10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %105, label %8

8:                                                ; preds = %1
  store ptr %0, ptr %6, align 4
  %9 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %6, i32 0, i32 4
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %6, i32 0, i32 4, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %10, ptr noundef nonnull @.str.6, ptr noundef nonnull @init_completion.__key) #10
  %11 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %6, i32 0, i32 13
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %6, i32 0, i32 14
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %6, ptr %13, align 8
  %14 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %15 = load ptr, ptr %14, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store ptr null, ptr %2, align 4, !annotation !8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %43, label %17

17:                                               ; preds = %8
  %18 = tail call ptr @of_match_device(ptr noundef nonnull @stm32_spdifrx_ids, ptr noundef %5) #10
  %19 = icmp eq ptr %18, null
  br i1 %19, label %43, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.of_device_id, ptr %18, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %6, i32 0, i32 3
  store ptr %22, ptr %23, align 4
  %24 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #10
  %25 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %6, i32 0, i32 1
  store ptr %24, ptr %25, align 4
  %26 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = ptrtoint ptr %24 to i32
  br label %45

29:                                               ; preds = %20
  %30 = load ptr, ptr %2, align 4
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %6, i32 0, i32 12
  store i32 %31, ptr %32, align 4
  %33 = call ptr @devm_clk_get(ptr noundef %5, ptr noundef nonnull @.str.1) #10
  %34 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %6, i32 0, i32 5
  store ptr %33, ptr %34, align 4
  %35 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = ptrtoint ptr %33 to i32
  %38 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %5, i32 noundef %37, ptr noundef nonnull @.str.7) #10
  br label %45

39:                                               ; preds = %29
  %40 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #10
  %41 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %6, i32 0, i32 17
  store i32 %40, ptr %41, align 4
  %42 = call i32 @llvm.smin.i32(i32 %40, i32 0) #10
  br label %45

43:                                               ; preds = %17, %8
  %44 = phi i32 [ -22, %17 ], [ -19, %8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  br label %105

45:                                               ; preds = %39, %36, %27
  %46 = phi i32 [ %28, %27 ], [ %38, %36 ], [ %42, %39 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %105

48:                                               ; preds = %45
  %49 = load ptr, ptr %25, align 4
  %50 = load ptr, ptr %23, align 4
  %51 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %5, ptr noundef nonnull @.str.1, ptr noundef %49, ptr noundef %50, ptr noundef null, ptr noundef null) #10
  %52 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %6, i32 0, i32 2
  store ptr %51, ptr %52, align 4
  %53 = icmp ugt ptr %51, inttoptr (i32 -4096 to ptr)
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = ptrtoint ptr %51 to i32
  %56 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %5, i32 noundef %55, ptr noundef nonnull @.str.2) #10
  br label %105

57:                                               ; preds = %48
  %58 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %6, i32 0, i32 17
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load ptr, ptr %5, align 4
  br label %65

65:                                               ; preds = %63, %57
  %66 = phi ptr [ %64, %63 ], [ %61, %57 ]
  %67 = call i32 @devm_request_threaded_irq(ptr noundef %5, i32 noundef %59, ptr noundef nonnull @stm32_spdifrx_isr, ptr noundef null, i32 noundef 0, ptr noundef %66, ptr noundef nonnull %6) #10
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.3, i32 noundef %67) #11
  br label %105

70:                                               ; preds = %65
  %71 = call ptr @__devm_reset_control_get(ptr noundef %5, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #10
  %72 = icmp ugt ptr %71, inttoptr (i32 -4096 to ptr)
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = ptrtoint ptr %71 to i32
  %75 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %5, i32 noundef %74, ptr noundef nonnull @.str.4) #10
  br label %105

76:                                               ; preds = %70
  %77 = call i32 @reset_control_assert(ptr noundef %71) #10
  %78 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %78(i32 noundef 429496) #10
  %79 = call i32 @reset_control_deassert(ptr noundef %71) #10
  call void @pm_runtime_enable(ptr noundef %5) #10
  %80 = call i32 @snd_dmaengine_pcm_register(ptr noundef %5, ptr noundef nonnull @stm32_spdifrx_pcm_config, i32 noundef 0) #10
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %76
  %83 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %5, i32 noundef %80, ptr noundef nonnull @.str.5) #10
  br label %105

84:                                               ; preds = %76
  %85 = call i32 @snd_soc_register_component(ptr noundef %5, ptr noundef nonnull @stm32_spdifrx_component, ptr noundef nonnull @stm32_spdifrx_dai, i32 noundef 1) #10
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %84
  call void @snd_dmaengine_pcm_unregister(ptr noundef %5) #10
  br label %105

88:                                               ; preds = %84
  %89 = call fastcc i32 @stm32_spdifrx_dma_ctrl_register(ptr noundef %5, ptr noundef nonnull %6)
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %88
  %92 = load ptr, ptr %52, align 4
  %93 = call i32 @regmap_read(ptr noundef %92, i32 noundef 1016, ptr noundef nonnull %4) #10
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %91
  %96 = load i32, ptr %4, align 4
  %97 = icmp eq i32 %96, 1245249
  br i1 %97, label %98, label %105

98:                                               ; preds = %95
  %99 = load ptr, ptr %52, align 4
  %100 = call i32 @regmap_read(ptr noundef %99, i32 noundef 1012, ptr noundef nonnull %3) #10
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %98, %91, %88
  %103 = phi i32 [ %89, %88 ], [ %93, %91 ], [ %100, %98 ]
  %104 = call i32 @stm32_spdifrx_remove(ptr noundef %0)
  br label %105

105:                                              ; preds = %102, %98, %95, %87, %82, %73, %69, %54, %45, %43, %1
  %106 = phi i32 [ %56, %54 ], [ %67, %69 ], [ %75, %73 ], [ %83, %82 ], [ %85, %87 ], [ %103, %102 ], [ -12, %1 ], [ %46, %45 ], [ 0, %98 ], [ 0, %95 ], [ %44, %43 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret i32 %106
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_spdifrx_remove(ptr noundef %0) #4 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @dma_release_channel(ptr noundef nonnull %5) #10
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %3, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @snd_dma_free_pages(ptr noundef nonnull %10) #10
  br label %13

13:                                               ; preds = %12, %8
  %14 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @snd_dmaengine_pcm_unregister(ptr noundef %14) #10
  tail call void @snd_soc_unregister_component(ptr noundef %14) #10
  tail call void @__pm_runtime_disable(ptr noundef %14, i1 noundef zeroext true) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_spdifrx_isr(i32 noundef %0, ptr noundef %1) #4 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %1, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = call i32 @regmap_read(ptr noundef %8, i32 noundef 8, ptr noundef nonnull %4) #10
  %10 = load ptr, ptr %7, align 4
  %11 = call i32 @regmap_read(ptr noundef %10, i32 noundef 4, ptr noundef nonnull %5) #10
  %12 = load i32, ptr %5, align 4
  %13 = and i32 %12, 127
  %14 = and i32 %12, 64
  %15 = icmp eq i32 %14, 0
  %16 = or i32 %13, 384
  %17 = select i1 %15, i32 %13, i32 %16
  %18 = load i32, ptr %4, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.8, i32 noundef %18, i32 noundef %12) #11
  br label %68

23:                                               ; preds = %2
  %24 = load ptr, ptr %7, align 4
  %25 = call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 12, i32 noundef 60, i32 noundef %19, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %26 = and i32 %19, 12
  %27 = icmp eq i32 %26, 0
  %28 = and i32 %19, 32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  store i32 3, ptr %3, align 4
  %31 = load ptr, ptr %7, align 4
  %32 = call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 0, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %33

33:                                               ; preds = %30, %23
  %34 = and i32 %19, 448
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %57, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr %7, align 4
  %38 = call i32 @regmap_read(ptr noundef %37, i32 noundef 0, ptr noundef nonnull %3) #10
  %39 = load i32, ptr %3, align 4
  %40 = and i32 %39, 3
  %41 = icmp eq i32 %40, 0
  store i32 0, ptr %3, align 4
  %42 = load ptr, ptr %7, align 4
  %43 = call i32 @regmap_update_bits_base(ptr noundef %42, i32 noundef 0, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br i1 %41, label %47, label %44

44:                                               ; preds = %36
  store i32 1, ptr %3, align 4
  %45 = load ptr, ptr %7, align 4
  %46 = call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef 0, i32 noundef 3, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %68

47:                                               ; preds = %36
  %48 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %1, i32 0, i32 14
  call void @_raw_spin_lock(ptr noundef %48) #10
  %49 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %1, i32 0, i32 7
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %47
  %53 = call i32 @snd_pcm_stop(ptr noundef nonnull %50, i32 noundef 8) #10
  br label %54

54:                                               ; preds = %52, %47
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %55 = load i16, ptr %48, align 4
  %56 = add i16 %55, 1
  store i16 %56, ptr %48, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  br label %68

57:                                               ; preds = %33
  %58 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %1, i32 0, i32 14
  call void @_raw_spin_lock(ptr noundef %58) #10
  br i1 %27, label %65, label %59

59:                                               ; preds = %57
  %60 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %1, i32 0, i32 7
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = call i32 @snd_pcm_stop_xrun(ptr noundef nonnull %61) #10
  br label %65

65:                                               ; preds = %63, %59, %57
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %66 = load i16, ptr %58, align 4
  %67 = add i16 %66, 1
  store i16 %67, ptr %58, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  br label %68

68:                                               ; preds = %65, %54, %44, %21
  %69 = phi i32 [ 1, %44 ], [ 1, %54 ], [ 1, %65 ], [ 0, %21 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret i32 %69
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dmaengine_pcm_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_dmaengine_pcm_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stm32_spdifrx_dma_ctrl_register(ptr noundef %0, ptr noundef %1) unnamed_addr #4 {
  %3 = tail call ptr @dma_request_chan(ptr noundef %0, ptr noundef nonnull @.str.26) #10
  %4 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %1, i32 0, i32 9
  store ptr %3, ptr %4, align 4
  %5 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = ptrtoint ptr %3 to i32
  %8 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %0, i32 noundef %7, ptr noundef nonnull @.str.27) #10
  br label %40

9:                                                ; preds = %2
  %10 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 32, i32 noundef 3520) #10
  %11 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %1, i32 0, i32 8
  store ptr %10, ptr %11, align 4
  %12 = icmp eq ptr %10, null
  br i1 %12, label %40, label %13

13:                                               ; preds = %9
  store i32 4, ptr %10, align 4
  %14 = getelementptr inbounds %struct.snd_dma_device, ptr %10, i32 0, i32 3
  store ptr %0, ptr %14, align 4
  %15 = tail call i32 @snd_dma_alloc_dir_pages(i32 noundef 4, ptr noundef %0, i32 noundef 0, i32 noundef 192, ptr noundef nonnull %10) #10
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.28, i32 noundef %15) #11
  br label %40

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %1, i32 0, i32 11
  store i32 2, ptr %19, align 4
  %20 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %1, i32 0, i32 12
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, 20
  %23 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %1, i32 0, i32 11, i32 1
  store i32 %22, ptr %23, align 4
  %24 = load ptr, ptr %11, align 4
  %25 = getelementptr inbounds %struct.snd_dma_buffer, ptr %24, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %1, i32 0, i32 11, i32 2
  store i32 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %1, i32 0, i32 11, i32 3
  store i32 4, ptr %28, align 4
  %29 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %1, i32 0, i32 11, i32 5
  store i32 1, ptr %29, align 4
  %30 = load ptr, ptr %4, align 4
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.dma_device, ptr %31, i32 0, i32 44
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %18
  %36 = tail call i32 %33(ptr noundef %30, ptr noundef %19) #10
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35, %18
  %39 = phi i32 [ %36, %35 ], [ -38, %18 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.29, i32 noundef %39) #11
  store ptr null, ptr %4, align 4
  br label %40

40:                                               ; preds = %38, %35, %17, %9, %6
  %41 = phi i32 [ %8, %6 ], [ %15, %17 ], [ -12, %9 ], [ %39, %38 ], [ %36, %35 ]
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_stop(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_stop_xrun(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dmaengine_pcm_prepare_slave_config(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_spdifrx_dai_probe(ptr noundef %0) #4 {
  %2 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %5, i32 0, i32 12
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, 16
  %9 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %5, i32 0, i32 6
  store i32 %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %5, i32 0, i32 6, i32 2
  store i32 1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 7
  store ptr null, ptr %11, align 4
  %12 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 8
  store ptr %9, ptr %12, align 4
  %13 = tail call i32 @snd_soc_add_dai_controls(ptr noundef %0, ptr noundef nonnull @stm32_spdifrx_iec_ctrls, i32 noundef 2) #10
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @snd_soc_add_component_controls(ptr noundef %17, ptr noundef nonnull @stm32_spdifrx_ctrls, i32 noundef 2) #10
  br label %19

19:                                               ; preds = %15, %1
  %20 = phi i32 [ %18, %15 ], [ %13, %1 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_add_dai_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_add_component_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @stm32_spdifrx_info(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 1
  store i32 5, ptr %3, align 8
  %4 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 3
  store i32 1, ptr %4, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_spdifrx_capture_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #4 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_dai, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  tail call fastcc void @stm32_spdifrx_get_ctrl_data(ptr noundef %8)
  %9 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %8, i32 0, i32 15
  %10 = load i8, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i8 %10, ptr %11, align 8
  %12 = getelementptr %struct.stm32_spdifrx_data, ptr %8, i32 0, i32 15, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = getelementptr [24 x i8], ptr %11, i32 0, i32 1
  store i8 %13, ptr %14, align 1
  %15 = getelementptr %struct.stm32_spdifrx_data, ptr %8, i32 0, i32 15, i32 2
  %16 = load i8, ptr %15, align 2
  %17 = getelementptr [24 x i8], ptr %11, i32 0, i32 2
  store i8 %16, ptr %17, align 2
  %18 = getelementptr %struct.stm32_spdifrx_data, ptr %8, i32 0, i32 15, i32 3
  %19 = load i8, ptr %18, align 1
  %20 = getelementptr [24 x i8], ptr %11, i32 0, i32 3
  store i8 %19, ptr %20, align 1
  %21 = getelementptr %struct.stm32_spdifrx_data, ptr %8, i32 0, i32 15, i32 4
  %22 = load i8, ptr %21, align 4
  %23 = getelementptr [24 x i8], ptr %11, i32 0, i32 4
  store i8 %22, ptr %23, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @stm32_spdifrx_ub_info(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 1
  store i32 5, ptr %3, align 8
  %4 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 3
  store i32 1, ptr %4, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_spdif_user_bits_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #4 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_dai, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  tail call fastcc void @stm32_spdifrx_get_ctrl_data(ptr noundef %8)
  %9 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %8, i32 0, i32 16
  %10 = load i8, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i8 %10, ptr %11, align 8
  %12 = getelementptr %struct.stm32_spdifrx_data, ptr %8, i32 0, i32 16, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = getelementptr [24 x i8], ptr %11, i32 0, i32 1
  store i8 %13, ptr %14, align 1
  %15 = getelementptr %struct.stm32_spdifrx_data, ptr %8, i32 0, i32 16, i32 2
  %16 = load i8, ptr %15, align 2
  %17 = getelementptr [24 x i8], ptr %11, i32 0, i32 2
  store i8 %16, ptr %17, align 2
  %18 = getelementptr %struct.stm32_spdifrx_data, ptr %8, i32 0, i32 16, i32 3
  %19 = load i8, ptr %18, align 1
  %20 = getelementptr [24 x i8], ptr %11, i32 0, i32 3
  store i8 %19, ptr %20, align 1
  %21 = getelementptr %struct.stm32_spdifrx_data, ptr %8, i32 0, i32 16, i32 4
  %22 = load i8, ptr %21, align 4
  %23 = getelementptr [24 x i8], ptr %11, i32 0, i32 4
  store i8 %22, ptr %23, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stm32_spdifrx_get_ctrl_data(ptr noundef %0) unnamed_addr #4 {
  %2 = alloca %struct.scatterlist, align 4
  %3 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %0, i32 0, i32 15
  %4 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %0, i32 0, i32 9
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(72) %3, i8 0, i64 72, i1 false)
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_dma_buffer, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false) #10, !annotation !8
  call void @sg_init_table(ptr noundef nonnull %2, i32 noundef 1) #10
  %10 = getelementptr inbounds %struct.scatterlist, ptr %2, i32 0, i32 3
  store i32 %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.scatterlist, ptr %2, i32 0, i32 4
  store i32 192, ptr %11, align 4
  %12 = icmp eq ptr %5, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %1
  %14 = load ptr, ptr %5, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.dma_device, ptr %14, i32 0, i32 39
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %16, %13, %1
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #10
  %21 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %0, i32 0, i32 10
  store ptr null, ptr %21, align 4
  br label %72

22:                                               ; preds = %16
  %23 = call ptr %18(ptr noundef nonnull %5, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 2, i32 noundef 2, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #10
  %24 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %0, i32 0, i32 10
  store ptr %23, ptr %24, align 4
  %25 = icmp eq ptr %23, null
  br i1 %25, label %72, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %23, i32 0, i32 6
  store ptr @stm32_spdifrx_dma_complete, ptr %27, align 4
  %28 = load ptr, ptr %24, align 4
  %29 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %28, i32 0, i32 8
  store ptr %0, ptr %29, align 4
  %30 = load ptr, ptr %24, align 4
  %31 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %30, i32 0, i32 4
  %32 = load ptr, ptr %31, align 4
  %33 = call i32 %32(ptr noundef %30) #10
  %34 = icmp sgt i32 %33, -1
  br i1 %34, label %35, label %72

35:                                               ; preds = %26
  %36 = load ptr, ptr %4, align 4
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.dma_device, ptr %37, i32 0, i32 50
  %39 = load ptr, ptr %38, align 4
  call void %39(ptr noundef %36) #10
  %40 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %0, i32 0, i32 5
  %41 = load ptr, ptr %40, align 4
  %42 = call i32 @clk_prepare(ptr noundef %41) #10
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %35
  %45 = call i32 @clk_enable(ptr noundef %41) #10
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %44
  call void @clk_unprepare(ptr noundef %41) #10
  br label %48

48:                                               ; preds = %47, %35
  %49 = phi i32 [ %45, %47 ], [ %42, %35 ]
  %50 = load ptr, ptr %0, align 4
  %51 = getelementptr inbounds %struct.platform_device, ptr %50, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.13, i32 noundef %49) #11
  br label %72

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %0, i32 0, i32 2
  %54 = load ptr, ptr %53, align 4
  %55 = call i32 @regmap_update_bits_base(ptr noundef %54, i32 noundef 0, i32 noundef 1024, i32 noundef 1024, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %70, label %57

57:                                               ; preds = %52
  %58 = call fastcc i32 @stm32_spdifrx_start_sync(ptr noundef %0)
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %0, i32 0, i32 4
  %62 = call i32 @wait_for_completion_interruptible_timeout(ptr noundef %61, i32 noundef 10) #10
  call fastcc void @stm32_spdifrx_stop(ptr noundef %0)
  %63 = load ptr, ptr %4, align 4
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.dma_device, ptr %64, i32 0, i32 47
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %60
  %69 = call i32 %66(ptr noundef %63) #10
  br label %70

70:                                               ; preds = %68, %60, %57, %52
  %71 = load ptr, ptr %40, align 4
  call void @clk_disable(ptr noundef %71) #10
  call void @clk_unprepare(ptr noundef %71) #10
  br label %72

72:                                               ; preds = %70, %48, %26, %22, %20
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stm32_spdifrx_start_sync(ptr noundef %0) unnamed_addr #4 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 4, i32 noundef 100, i32 noundef 100, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %27

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %0, i32 0, i32 13
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #10
  %10 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %0, i32 0, i32 18
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, 1
  store i32 %12, ptr %10, align 4
  %13 = load ptr, ptr %3, align 4
  %14 = call i32 @regmap_read(ptr noundef %13, i32 noundef 0, ptr noundef nonnull %2) #10
  %15 = load i32, ptr %2, align 4
  %16 = and i32 %15, 3
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %7
  store i32 29641, ptr %2, align 4
  %19 = load ptr, ptr %3, align 4
  %20 = call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 0, i32 noundef 29643, i32 noundef 29641, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load ptr, ptr %0, align 4
  %24 = getelementptr inbounds %struct.platform_device, ptr %23, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.16) #11
  br label %25

25:                                               ; preds = %22, %18, %7
  %26 = phi i32 [ 0, %7 ], [ %20, %22 ], [ %20, %18 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #10
  br label %27

27:                                               ; preds = %25, %1
  %28 = phi i32 [ %26, %25 ], [ %5, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stm32_spdifrx_stop(ptr noundef %0) unnamed_addr #4 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %0, i32 0, i32 13
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #10
  %5 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %0, i32 0, i32 18
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, -1
  store i32 %7, ptr %5, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #10
  br label %22

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 0, i32 noundef 7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %14 = load ptr, ptr %11, align 4
  %15 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 4, i32 noundef 127, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %16 = load ptr, ptr %11, align 4
  %17 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 12, i32 noundef 60, i32 noundef 60, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %18 = load ptr, ptr %11, align 4
  %19 = call i32 @regmap_read(ptr noundef %18, i32 noundef 16, ptr noundef nonnull %2) #10
  %20 = load ptr, ptr %11, align 4
  %21 = call i32 @regmap_read(ptr noundef %20, i32 noundef 20, ptr noundef nonnull %2) #10
  call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #10
  br label %22

22:                                               ; preds = %10, %9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_spdifrx_dma_complete(ptr noundef %0) #4 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_dma_buffer, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i32, ptr %6, i32 47
  %8 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %0, i32 0, i32 16
  %9 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 0, i32 noundef 1024, i32 noundef -1025, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr inbounds %struct.snd_dma_buffer, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %56, label %16

16:                                               ; preds = %1
  %17 = icmp ugt ptr %6, %7
  br i1 %17, label %34, label %18

18:                                               ; preds = %31, %16
  %19 = phi ptr [ %32, %31 ], [ %6, %16 ]
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 16777216
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %18
  %24 = lshr i32 %20, 16
  %25 = trunc i32 %24 to i8
  %26 = getelementptr %struct.stm32_spdifrx_data, ptr %0, i32 0, i32 15, i32 0
  store i8 %25, ptr %26, align 1
  %27 = getelementptr i32, ptr %19, i32 1
  %28 = load i32, ptr %19, align 4
  %29 = trunc i32 %28 to i16
  store i16 %29, ptr %8, align 2
  %30 = icmp ugt ptr %27, %7
  br i1 %30, label %36, label %38

31:                                               ; preds = %18
  %32 = getelementptr i32, ptr %19, i32 1
  %33 = icmp ugt ptr %32, %7
  br i1 %33, label %34, label %18

34:                                               ; preds = %31, %16
  %35 = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.14) #11
  br label %56

36:                                               ; preds = %44, %23
  %37 = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.15) #11
  br label %56

38:                                               ; preds = %44, %23
  %39 = phi ptr [ %50, %44 ], [ %27, %23 ]
  %40 = phi ptr [ %45, %44 ], [ %8, %23 ]
  %41 = phi i32 [ %42, %44 ], [ 0, %23 ]
  %42 = add nuw nsw i32 %41, 1
  %43 = icmp eq i32 %42, 24
  br i1 %43, label %54, label %44

44:                                               ; preds = %38
  %45 = getelementptr i16, ptr %40, i32 1
  %46 = load i32, ptr %39, align 4
  %47 = lshr i32 %46, 16
  %48 = trunc i32 %47 to i8
  %49 = getelementptr %struct.stm32_spdifrx_data, ptr %0, i32 0, i32 15, i32 %42
  store i8 %48, ptr %49, align 1
  %50 = getelementptr i32, ptr %39, i32 1
  %51 = load i32, ptr %39, align 4
  %52 = trunc i32 %51 to i16
  store i16 %52, ptr %45, align 2
  %53 = icmp ugt ptr %50, %7
  br i1 %53, label %36, label %38

54:                                               ; preds = %38
  %55 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %0, i32 0, i32 4
  tail call void @complete(ptr noundef %55) #10
  br label %56

56:                                               ; preds = %54, %36, %34, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_enum_double(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_enum_double(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_spdifrx_startup(ptr noundef %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %6, i32 0, i32 14
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #10
  %9 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %6, i32 0, i32 7
  store ptr %0, ptr %9, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #10
  %10 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %6, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @clk_prepare(ptr noundef %11) #10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = tail call i32 @clk_enable(ptr noundef %11) #10
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %14
  tail call void @clk_unprepare(ptr noundef %11) #10
  br label %18

18:                                               ; preds = %17, %2
  %19 = phi i32 [ %15, %17 ], [ %12, %2 ]
  %20 = load ptr, ptr %6, align 4
  %21 = getelementptr inbounds %struct.platform_device, ptr %20, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.13, i32 noundef %19) #11
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %19, %18 ], [ 0, %14 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_spdifrx_shutdown(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %6, i32 0, i32 14
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #10
  %9 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %6, i32 0, i32 7
  store ptr null, ptr %9, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #10
  %10 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %6, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  tail call void @clk_disable(ptr noundef %11) #10
  tail call void @clk_unprepare(ptr noundef %11) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_spdifrx_hw_params(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #4 {
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %16, %3
  %12 = phi i32 [ 0, %3 ], [ 32, %16 ]
  %13 = phi i32 [ %9, %3 ], [ %18, %16 ]
  %14 = tail call i32 @llvm.cttz.i32(i32 %13, i1 true) #10, !range !13
  %15 = or i32 %14, %12
  br label %20

16:                                               ; preds = %3
  %17 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %11

20:                                               ; preds = %16, %11
  %21 = phi i32 [ %15, %11 ], [ 0, %16 ]
  %22 = tail call i32 @snd_pcm_format_width(i32 noundef %21) #10
  switch i32 %22, label %24 [
    i32 16, label %27
    i32 32, label %23
  ]

23:                                               ; preds = %20
  br label %27

24:                                               ; preds = %20
  %25 = load ptr, ptr %7, align 4
  %26 = getelementptr inbounds %struct.platform_device, ptr %25, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.25) #11
  br label %36

27:                                               ; preds = %23, %20
  %28 = phi i32 [ 16, %23 ], [ 32, %20 ]
  %29 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %7, i32 0, i32 6
  %30 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %7, i32 0, i32 6, i32 1
  store i32 4, ptr %30, align 4
  %31 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 7
  store ptr null, ptr %31, align 4
  %32 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 8
  store ptr %29, ptr %32, align 4
  %33 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %7, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef 0, i32 noundef 48, i32 noundef %28, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %36

36:                                               ; preds = %27, %24
  %37 = phi i32 [ -22, %24 ], [ %35, %27 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_spdifrx_trigger(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #4 {
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  switch i32 %1, label %16 [
    i32 1, label %8
    i32 6, label %8
    i32 4, label %8
    i32 5, label %15
    i32 3, label %15
    i32 0, label %15
  ]

8:                                                ; preds = %3, %3, %3
  %9 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %7, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 4, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %12 = load ptr, ptr %9, align 4
  %13 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 0, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %14 = tail call fastcc i32 @stm32_spdifrx_start_sync(ptr noundef %7)
  br label %16

15:                                               ; preds = %3, %3, %3
  tail call fastcc void @stm32_spdifrx_stop(ptr noundef %7)
  br label %16

16:                                               ; preds = %15, %8, %3
  %17 = phi i32 [ -22, %3 ], [ 0, %15 ], [ %14, %8 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dma_alloc_dir_pages(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_dma_free_pages(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_unregister_component(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_spdifrx_suspend(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  tail call void @regcache_cache_only(ptr noundef %5, i1 noundef zeroext true) #10
  %6 = load ptr, ptr %4, align 4
  tail call void @regcache_mark_dirty(ptr noundef %6) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_spdifrx_resume(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  tail call void @regcache_cache_only(ptr noundef %5, i1 noundef zeroext false) #10
  %6 = load ptr, ptr %4, align 4
  %7 = tail call i32 @regcache_sync(ptr noundef %6) #10
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }

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
!9 = !{i64 2148934127}
!10 = !{i64 2148929951}
!11 = !{i64 2148930026, i64 2148930053, i64 2148930100, i64 2148930122, i64 2148930150, i64 2148930170}
!12 = !{i64 2148957130}
!13 = !{i32 0, i32 33}
