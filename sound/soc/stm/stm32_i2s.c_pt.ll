; ModuleID = '/llk/IR/sound/soc/stm/stm32_i2s.c_pt.bc'
source_filename = "../sound/soc/stm/stm32_i2s.c"
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
%struct.snd_dmaengine_pcm_config = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], ptr, i32 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.stm32_i2s_data = type { ptr, ptr, ptr, ptr, %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i8, i32, i32 }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.88, ptr }
%union.anon.88 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.stm32_i2smclk_data = type { %struct.clk_hw, i32, ptr }
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

@stm32_i2s_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32h7-i2s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32_h7_i2s_regmap_conf }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description253 = internal constant [36 x i8] c"description=STM32 Soc i2s Interface\00", section ".modinfo", align 1
@__UNIQUE_ID_author254 = internal constant [47 x i8] c"author=Olivier Moysan, <olivier.moysan@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias255 = internal constant [25 x i8] c"alias=platform:stm32-i2s\00", section ".modinfo", align 1
@__UNIQUE_ID_license256 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@stm32_h7_i2s_regmap_conf = internal constant %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr @stm32_i2s_writeable_reg, ptr @stm32_i2s_readable_reg, ptr @stm32_i2s_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 1020, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 3, ptr null, i32 256, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@stm32_i2s_driver = internal global %struct.platform_driver { ptr @stm32_i2s_probe, ptr @stm32_i2s_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_i2s_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_i2s_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [13 x i8] c"st,stm32-i2s\00", align 1
@stm32_i2s_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @stm32_i2s_suspend, ptr @stm32_i2s_resume, ptr @stm32_i2s_suspend, ptr @stm32_i2s_resume, ptr @stm32_i2s_suspend, ptr @stm32_i2s_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Regmap init error\0A\00", align 1
@stm32_i2s_pcm_config = internal constant %struct.snd_dmaengine_pcm_config { ptr @snd_dmaengine_pcm_prepare_slave_config, ptr null, ptr null, ptr null, ptr null, [2 x ptr] zeroinitializer, ptr @stm32_i2s_pcm_hw, i32 32768 }, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"PCM DMA register error\0A\00", align 1
@stm32_i2s_component = internal constant %struct.snd_soc_component_driver { ptr @.str.31, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Device does not support i2s mode\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Could not get pclk\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"i2sclk\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Could not get i2sclk\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"x8k\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"Could not get x8k parent clock\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"x11k\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"Could not get x11k parent clock\0A\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"#clock-cells\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"irq request returned %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"Reset controller error\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.15 = private unnamed_addr constant [6 x i8] c"_mclk\00", align 1
@mclk_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @stm32_i2smclk_enable, ptr @stm32_i2smclk_disable, ptr null, ptr null, ptr null, ptr null, ptr @stm32_i2smclk_recalc_rate, ptr @stm32_i2smclk_round_rate, ptr null, ptr null, ptr null, ptr @stm32_i2smclk_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.16 = private unnamed_addr constant [35 x i8] c"mclk register fails with error %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"Wrong divider setting\0A\00", align 1
@stm32_i2s_pcm_dai_ops = internal constant %struct.snd_soc_dai_ops { ptr @stm32_i2s_set_sysclk, ptr null, ptr null, ptr null, ptr @stm32_i2s_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_i2s_startup, ptr @stm32_i2s_shutdown, ptr @stm32_i2s_hw_params, ptr null, ptr null, ptr @stm32_i2s_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, align 4
@.str.18 = private unnamed_addr constant [9 x i8] c"playback\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"capture\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"Could not set mclk rate\0A\00", align 1
@.str.21 = private unnamed_addr constant [38 x i8] c"Error %d setting i2sclk parent clock\0A\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"Unsupported protocol %#x\0A\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"Unsupported strobing %#x\0A\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"Unsupported mode %#x\0A\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"Failed to enable clock: %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [33 x i8] c"Configuration returned error %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"Unexpected format %d\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"Error %d enabling I2S\0A\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"Error %d starting I2S\0A\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"Error %d disabling I2S\0A\00", align 1
@stm32_i2s_pcm_hw = internal constant %struct.snd_pcm_hardware { i32 257, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 32768, i32 1024, i32 16384, i32 2, i32 8, i32 0 }, align 8
@.str.31 = private unnamed_addr constant [10 x i8] c"stm32-i2s\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias255, ptr @__UNIQUE_ID_author254, ptr @__UNIQUE_ID_description253, ptr @__UNIQUE_ID_license256], section "llvm.metadata"
@switch.table.stm32_i2s_set_dai_fmt = private unnamed_addr constant [4 x i32] [i32 0, i32 32, i32 16, i32 48], align 4

@__mod_of__stm32_i2s_ids_device_table = dso_local alias [2 x %struct.of_device_id], ptr @stm32_i2s_ids

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_i2s_driver, ptr noundef nonnull @__this_module) #11
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_i2s_driver) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @stm32_i2s_writeable_reg(ptr nocapture noundef readnone %0, i32 noundef %1) #1 {
  switch i32 %1, label %3 [
    i32 0, label %4
    i32 8, label %4
    i32 12, label %4
    i32 16, label %4
    i32 24, label %4
    i32 32, label %4
    i32 80, label %4
  ]

3:                                                ; preds = %2
  br label %4

4:                                                ; preds = %3, %2, %2, %2, %2, %2, %2, %2
  %5 = phi i1 [ false, %3 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ]
  ret i1 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @stm32_i2s_readable_reg(ptr nocapture noundef readnone %0, i32 noundef %1) #1 {
  switch i32 %1, label %3 [
    i32 0, label %4
    i32 8, label %4
    i32 12, label %4
    i32 16, label %4
    i32 20, label %4
    i32 48, label %4
    i32 80, label %4
    i32 1008, label %4
    i32 1012, label %4
    i32 1016, label %4
    i32 1020, label %4
  ]

3:                                                ; preds = %2
  br label %4

4:                                                ; preds = %3, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %5 = phi i1 [ false, %3 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ]
  ret i1 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @stm32_i2s_volatile_reg(ptr nocapture noundef readnone %0, i32 noundef %1) #1 {
  %3 = icmp eq i32 %1, 20
  %4 = icmp eq i32 %1, 48
  %5 = or i1 %3, %4
  ret i1 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_i2s_probe(ptr noundef %0) #3 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 156, i32 noundef 3520) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %156, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.stm32_i2s_data, ptr %5, i32 0, i32 2
  store ptr %0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.stm32_i2s_data, ptr %5, i32 0, i32 22
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.stm32_i2s_data, ptr %5, i32 0, i32 14
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.stm32_i2s_data, ptr %5, i32 0, i32 15
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %12, align 8
  %13 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %14 = load ptr, ptr %13, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store ptr null, ptr %2, align 4, !annotation !8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %88, label %16

16:                                               ; preds = %7
  %17 = tail call ptr @of_match_device(ptr noundef nonnull @stm32_i2s_ids, ptr noundef %4) #11
  %18 = icmp eq ptr %17, null
  br i1 %18, label %88, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.of_device_id, ptr %17, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  store ptr %21, ptr %5, align 4
  %22 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #11
  %23 = getelementptr inbounds %struct.stm32_i2s_data, ptr %5, i32 0, i32 12
  store ptr %22, ptr %23, align 4
  %24 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = ptrtoint ptr %22 to i32
  br label %90

27:                                               ; preds = %19
  %28 = load ptr, ptr %2, align 4
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.stm32_i2s_data, ptr %5, i32 0, i32 13
  store i32 %29, ptr %30, align 4
  %31 = call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull @.str.1) #11
  %32 = getelementptr inbounds %struct.stm32_i2s_data, ptr %5, i32 0, i32 9
  store ptr %31, ptr %32, align 4
  %33 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = ptrtoint ptr %31 to i32
  %36 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %4, i32 noundef %35, ptr noundef nonnull @.str.5) #11
  br label %90

37:                                               ; preds = %27
  %38 = call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull @.str.6) #11
  %39 = getelementptr inbounds %struct.stm32_i2s_data, ptr %5, i32 0, i32 7
  store ptr %38, ptr %39, align 4
  %40 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = ptrtoint ptr %38 to i32
  %43 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %4, i32 noundef %42, ptr noundef nonnull @.str.7) #11
  br label %90

44:                                               ; preds = %37
  %45 = call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull @.str.8) #11
  %46 = getelementptr inbounds %struct.stm32_i2s_data, ptr %5, i32 0, i32 10
  store ptr %45, ptr %46, align 4
  %47 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = ptrtoint ptr %45 to i32
  %50 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %4, i32 noundef %49, ptr noundef nonnull @.str.9) #11
  br label %90

51:                                               ; preds = %44
  %52 = call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull @.str.10) #11
  %53 = getelementptr inbounds %struct.stm32_i2s_data, ptr %5, i32 0, i32 11
  store ptr %52, ptr %53, align 4
  %54 = icmp ugt ptr %52, inttoptr (i32 -4096 to ptr)
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = ptrtoint ptr %52 to i32
  %57 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %4, i32 noundef %56, ptr noundef nonnull @.str.11) #11
  br label %90

58:                                               ; preds = %51
  %59 = call ptr @of_find_property(ptr noundef nonnull %14, ptr noundef nonnull @.str.12, ptr noundef null) #11
  %60 = icmp eq ptr %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = call fastcc i32 @stm32_i2s_add_mclk_provider(ptr noundef nonnull %5) #11
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %88, label %64

64:                                               ; preds = %61, %58
  %65 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #11
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %88, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load ptr, ptr %4, align 4
  br label %73

73:                                               ; preds = %71, %67
  %74 = phi ptr [ %72, %71 ], [ %69, %67 ]
  %75 = call i32 @devm_request_threaded_irq(ptr noundef %4, i32 noundef %65, ptr noundef nonnull @stm32_i2s_isr, ptr noundef null, i32 noundef 8192, ptr noundef %74, ptr noundef nonnull %5) #11
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %73
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.13, i32 noundef %75) #12
  br label %88

78:                                               ; preds = %73
  %79 = call ptr @__devm_reset_control_get(ptr noundef %4, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #11
  %80 = icmp ugt ptr %79, inttoptr (i32 -4096 to ptr)
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = ptrtoint ptr %79 to i32
  %83 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %4, i32 noundef %82, ptr noundef nonnull @.str.14) #11
  br label %90

84:                                               ; preds = %78
  %85 = call i32 @reset_control_assert(ptr noundef %79) #11
  %86 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %86(i32 noundef 429496) #11
  %87 = call i32 @reset_control_deassert(ptr noundef %79) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  br label %93

88:                                               ; preds = %77, %64, %61, %16, %7
  %89 = phi i32 [ %65, %64 ], [ %62, %61 ], [ -22, %16 ], [ -19, %7 ], [ %75, %77 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  br label %156

90:                                               ; preds = %81, %55, %48, %41, %34, %25
  %91 = phi i32 [ %26, %25 ], [ %36, %34 ], [ %43, %41 ], [ %50, %48 ], [ %57, %55 ], [ %83, %81 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %156

93:                                               ; preds = %90, %84
  %94 = call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 168, i32 noundef 3520) #11
  %95 = icmp eq ptr %94, null
  br i1 %95, label %156, label %96

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %94, i32 0, i32 4
  store ptr @stm32_i2s_dai_probe, ptr %97, align 8
  %98 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %94, i32 0, i32 8
  store ptr @stm32_i2s_pcm_dai_ops, ptr %98, align 8
  %99 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %94, i32 0, i32 1
  store i32 1, ptr %99, align 4
  %100 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %94, i32 0, i32 11
  store ptr @.str.18, ptr %100, align 8
  %101 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %94, i32 0, i32 11, i32 5
  store i32 1, ptr %101, align 4
  %102 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %94, i32 0, i32 11, i32 6
  store i32 2, ptr %102, align 8
  %103 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %94, i32 0, i32 11, i32 2
  store i32 8190, ptr %103, align 8
  %104 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %94, i32 0, i32 11, i32 1
  store i64 1028, ptr %104, align 8
  %105 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %94, i32 0, i32 10
  store ptr @.str.19, ptr %105, align 8
  %106 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %94, i32 0, i32 10, i32 5
  store i32 1, ptr %106, align 4
  %107 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %94, i32 0, i32 10, i32 6
  store i32 2, ptr %107, align 8
  %108 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %94, i32 0, i32 10, i32 2
  store i32 8190, ptr %108, align 8
  %109 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %94, i32 0, i32 10, i32 1
  store i64 1028, ptr %109, align 8
  %110 = getelementptr inbounds %struct.stm32_i2s_data, ptr %5, i32 0, i32 3
  store ptr %94, ptr %110, align 4
  %111 = load ptr, ptr %23, align 4
  %112 = load ptr, ptr %5, align 4
  %113 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %4, ptr noundef nonnull @.str.1, ptr noundef %111, ptr noundef %112, ptr noundef null, ptr noundef null) #11
  %114 = getelementptr inbounds %struct.stm32_i2s_data, ptr %5, i32 0, i32 1
  store ptr %113, ptr %114, align 4
  %115 = icmp ugt ptr %113, inttoptr (i32 -4096 to ptr)
  br i1 %115, label %116, label %119

116:                                              ; preds = %96
  %117 = ptrtoint ptr %113 to i32
  %118 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %4, i32 noundef %117, ptr noundef nonnull @.str.2) #11
  br label %156

119:                                              ; preds = %96
  call void @pm_runtime_enable(ptr noundef %4) #11
  %120 = call i32 @snd_dmaengine_pcm_register(ptr noundef %4, ptr noundef nonnull @stm32_i2s_pcm_config, i32 noundef 0) #11
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %119
  %123 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %4, i32 noundef %120, ptr noundef nonnull @.str.3) #11
  br label %156

124:                                              ; preds = %119
  %125 = load ptr, ptr %110, align 4
  %126 = call i32 @snd_soc_register_component(ptr noundef %4, ptr noundef nonnull @stm32_i2s_component, ptr noundef %125, i32 noundef 1) #11
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %124
  call void @snd_dmaengine_pcm_unregister(ptr noundef %4) #11
  br label %156

129:                                              ; preds = %124
  %130 = load ptr, ptr %114, align 4
  %131 = call i32 @regmap_update_bits_base(ptr noundef %130, i32 noundef 80, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %153

133:                                              ; preds = %129
  %134 = load ptr, ptr %114, align 4
  %135 = call i32 @regmap_read(ptr noundef %134, i32 noundef 1016, ptr noundef nonnull %3) #11
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %153

137:                                              ; preds = %133
  %138 = load i32, ptr %3, align 4
  %139 = icmp eq i32 %138, 1245218
  br i1 %139, label %140, label %156

140:                                              ; preds = %137
  %141 = load ptr, ptr %114, align 4
  %142 = call i32 @regmap_read(ptr noundef %141, i32 noundef 1008, ptr noundef nonnull %3) #11
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %153

144:                                              ; preds = %140
  %145 = load i32, ptr %3, align 4
  %146 = and i32 %145, 61440
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %144
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.4) #12
  br label %153

149:                                              ; preds = %144
  %150 = load ptr, ptr %114, align 4
  %151 = call i32 @regmap_read(ptr noundef %150, i32 noundef 1012, ptr noundef nonnull %3) #11
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %149, %148, %140, %133, %129
  %154 = phi i32 [ %131, %129 ], [ %135, %133 ], [ %142, %140 ], [ %151, %149 ], [ -1, %148 ]
  %155 = call i32 @stm32_i2s_remove(ptr noundef %0)
  br label %156

156:                                              ; preds = %153, %149, %137, %128, %122, %116, %93, %90, %88, %1
  %157 = phi i32 [ %118, %116 ], [ %123, %122 ], [ %126, %128 ], [ %154, %153 ], [ -12, %1 ], [ %91, %90 ], [ 0, %149 ], [ 0, %137 ], [ %89, %88 ], [ -12, %93 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i32 %157
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_i2s_remove(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @snd_dmaengine_pcm_unregister(ptr noundef %2) #11
  tail call void @snd_soc_unregister_component(ptr noundef %2) #11
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dmaengine_pcm_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_dmaengine_pcm_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stm32_i2s_add_mclk_provider(ptr noundef %0) unnamed_addr #3 {
  %2 = alloca %struct.clk_init_data, align 4
  %3 = alloca [1 x ptr], align 4
  %4 = getelementptr inbounds %struct.stm32_i2s_data, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.stm32_i2s_data, ptr %0, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr @__clk_get_name(ptr noundef %8) #11
  %10 = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 20, i32 noundef 3520) #11
  %11 = icmp eq ptr %10, null
  br i1 %11, label %54, label %12

12:                                               ; preds = %1
  %13 = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 32, i32 noundef 3520) #11
  %14 = icmp eq ptr %13, null
  br i1 %14, label %54, label %15

15:                                               ; preds = %12
  %16 = load i8, ptr %9, align 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %32, label %18

18:                                               ; preds = %26, %15
  %19 = phi i8 [ %30, %26 ], [ %16, %15 ]
  %20 = phi i32 [ %29, %26 ], [ 0, %15 ]
  %21 = phi ptr [ %27, %26 ], [ %9, %15 ]
  %22 = phi ptr [ %28, %26 ], [ %13, %15 ]
  %23 = icmp ne i8 %19, 95
  %24 = icmp ult i32 %20, 25
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %26, label %32

26:                                               ; preds = %18
  %27 = getelementptr i8, ptr %21, i32 1
  %28 = getelementptr i8, ptr %22, i32 1
  store i8 %19, ptr %22, align 1
  %29 = add nuw nsw i32 %20, 1
  %30 = load i8, ptr %27, align 1
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %18

32:                                               ; preds = %26, %18, %15
  %33 = phi ptr [ %13, %15 ], [ %28, %26 ], [ %22, %18 ]
  %34 = tail call i32 @strlen(ptr noundef %33)
  %35 = getelementptr i8, ptr %33, i32 %34
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %35, ptr noundef nonnull align 1 dereferenceable(6) @.str.15, i32 6, i1 false)
  store ptr %13, ptr %2, align 4
  %36 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 1
  store ptr @mclk_ops, ptr %36, align 4
  %37 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 2
  store ptr %9, ptr %3, align 4
  store ptr %3, ptr %37, align 4
  %38 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 3
  store ptr null, ptr %38, align 4
  %39 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 4
  store ptr null, ptr %39, align 4
  %40 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 5
  store i8 1, ptr %40, align 4
  %41 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 6
  store i32 0, ptr %41, align 4
  %42 = getelementptr inbounds %struct.clk_hw, ptr %10, i32 0, i32 2
  store ptr %2, ptr %42, align 4
  %43 = getelementptr inbounds %struct.stm32_i2smclk_data, ptr %10, i32 0, i32 2
  store ptr %0, ptr %43, align 4
  %44 = load ptr, ptr %4, align 4
  %45 = getelementptr inbounds %struct.platform_device, ptr %44, i32 0, i32 3
  %46 = call i32 @devm_clk_hw_register(ptr noundef %45, ptr noundef nonnull %10) #11
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.16, i32 noundef %46) #12
  br label %54

49:                                               ; preds = %32
  %50 = getelementptr inbounds %struct.clk_hw, ptr %10, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.stm32_i2s_data, ptr %0, i32 0, i32 8
  store ptr %51, ptr %52, align 4
  %53 = call i32 @devm_of_clk_add_hw_provider(ptr noundef %6, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef nonnull %10) #11
  br label %54

54:                                               ; preds = %49, %48, %12, %1
  %55 = phi i32 [ %46, %48 ], [ %53, %49 ], [ -12, %1 ], [ -12, %12 ]
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_i2s_isr(i32 noundef %0, ptr noundef %1) #3 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.stm32_i2s_data, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = call i32 @regmap_read(ptr noundef %6, i32 noundef 20, ptr noundef nonnull %3) #11
  %8 = load ptr, ptr %5, align 4
  %9 = call i32 @regmap_read(ptr noundef %8, i32 noundef 16, ptr noundef nonnull %4) #11
  %10 = load i32, ptr %3, align 4
  %11 = load i32, ptr %4, align 4
  %12 = and i32 %11, %10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %2
  %15 = load ptr, ptr %5, align 4
  %16 = call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 24, i32 noundef 4088, i32 noundef %12, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #11
  %17 = and i32 %12, 96
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds %struct.stm32_i2s_data, ptr %1, i32 0, i32 15
  call void @_raw_spin_lock(ptr noundef %19) #11
  br i1 %18, label %26, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.stm32_i2s_data, ptr %1, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = call i32 @snd_pcm_stop_xrun(ptr noundef nonnull %22) #11
  br label %26

26:                                               ; preds = %24, %20, %14
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !9
  %27 = load i16, ptr %19, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr %19, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !12
  br label %29

29:                                               ; preds = %26, %2
  %30 = phi i32 [ 1, %26 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_simple_get(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_i2smclk_enable(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.stm32_i2smclk_data, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.stm32_i2s_data, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 80, i32 noundef 33554432, i32 noundef 33554432, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_i2smclk_disable(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.stm32_i2smclk_data, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.stm32_i2s_data, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 80, i32 noundef 33554432, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @stm32_i2smclk_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.stm32_i2smclk_data, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_i2smclk_round_rate(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #3 {
  %4 = getelementptr inbounds %struct.stm32_i2smclk_data, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %2, align 4
  %7 = lshr i32 %1, 1
  %8 = add i32 %6, %7
  %9 = udiv i32 %8, %1
  %10 = and i32 %9, 1
  %11 = trunc i32 %10 to i8
  %12 = lshr i32 %9, 1
  %13 = tail call i32 @llvm.umax.i32(i32 %9, i32 1) #11
  %14 = icmp eq i32 %12, 1
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = icmp eq i32 %10, 0
  br i1 %16, label %23, label %19

17:                                               ; preds = %3
  %18 = icmp ugt i32 %9, 255
  br i1 %18, label %19, label %23

19:                                               ; preds = %17, %15
  %20 = getelementptr inbounds %struct.stm32_i2s_data, ptr %5, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.platform_device, ptr %21, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.17) #12
  br label %30

23:                                               ; preds = %17, %15
  %24 = getelementptr inbounds %struct.stm32_i2s_data, ptr %5, i32 0, i32 19
  store i32 %12, ptr %24, align 4
  %25 = getelementptr inbounds %struct.stm32_i2s_data, ptr %5, i32 0, i32 20
  store i8 %11, ptr %25, align 4
  %26 = getelementptr inbounds %struct.stm32_i2s_data, ptr %5, i32 0, i32 18
  store i32 %13, ptr %26, align 4
  %27 = load i32, ptr %2, align 4
  %28 = udiv i32 %27, %13
  %29 = getelementptr inbounds %struct.stm32_i2smclk_data, ptr %0, i32 0, i32 1
  store i32 %28, ptr %29, align 4
  br label %30

30:                                               ; preds = %23, %19
  %31 = phi i32 [ %28, %23 ], [ -22, %19 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_i2smclk_set_rate(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #3 {
  %4 = getelementptr inbounds %struct.stm32_i2smclk_data, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = lshr i32 %1, 1
  %7 = add i32 %6, %2
  %8 = udiv i32 %7, %1
  %9 = and i32 %8, 1
  %10 = trunc i32 %9 to i8
  %11 = lshr i32 %8, 1
  %12 = tail call i32 @llvm.umax.i32(i32 %8, i32 1) #11
  %13 = icmp eq i32 %11, 1
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = icmp eq i32 %9, 0
  br i1 %15, label %22, label %18

16:                                               ; preds = %3
  %17 = icmp ugt i32 %8, 255
  br i1 %17, label %18, label %22

18:                                               ; preds = %16, %14
  %19 = getelementptr inbounds %struct.stm32_i2s_data, ptr %5, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.platform_device, ptr %20, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.17) #12
  br label %35

22:                                               ; preds = %16, %14
  %23 = getelementptr inbounds %struct.stm32_i2s_data, ptr %5, i32 0, i32 19
  store i32 %11, ptr %23, align 4
  %24 = getelementptr inbounds %struct.stm32_i2s_data, ptr %5, i32 0, i32 20
  store i8 %10, ptr %24, align 4
  %25 = getelementptr inbounds %struct.stm32_i2s_data, ptr %5, i32 0, i32 18
  store i32 %12, ptr %25, align 4
  %26 = shl i32 %11, 16
  %27 = shl nuw nsw i32 %9, 24
  %28 = or i32 %27, %26
  %29 = getelementptr inbounds %struct.stm32_i2s_data, ptr %5, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 80, i32 noundef 33488896, i32 noundef %28, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.stm32_i2smclk_data, ptr %0, i32 0, i32 1
  store i32 %1, ptr %34, align 4
  br label %35

35:                                               ; preds = %33, %22, %18
  %36 = phi i32 [ 0, %33 ], [ -22, %18 ], [ %31, %22 ]
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_stop_xrun(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @stm32_i2s_dai_probe(ptr nocapture noundef %0) #7 {
  %2 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.stm32_i2s_data, ptr %5, i32 0, i32 4
  %7 = getelementptr inbounds %struct.stm32_i2s_data, ptr %5, i32 0, i32 5
  %8 = getelementptr inbounds %struct.stm32_i2s_data, ptr %5, i32 0, i32 4, i32 1
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.stm32_i2s_data, ptr %5, i32 0, i32 13
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, 32
  store i32 %11, ptr %6, align 4
  %12 = getelementptr inbounds %struct.stm32_i2s_data, ptr %5, i32 0, i32 4, i32 2
  store i32 1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.stm32_i2s_data, ptr %5, i32 0, i32 5, i32 1
  store i32 0, ptr %13, align 4
  %14 = add i32 %10, 48
  store i32 %14, ptr %7, align 4
  %15 = getelementptr inbounds %struct.stm32_i2s_data, ptr %5, i32 0, i32 5, i32 2
  store i32 1, ptr %15, align 4
  %16 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 7
  store ptr %6, ptr %16, align 4
  %17 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 8
  store ptr %7, ptr %17, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_i2s_set_sysclk(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #3 {
  %5 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq i32 %3, 1
  br i1 %9, label %10, label %57

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.stm32_i2s_data, ptr %8, i32 0, i32 22
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %57

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.stm32_i2s_data, ptr %8, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %57, label %18

18:                                               ; preds = %14
  %19 = icmp eq i32 %2, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.stm32_i2s_data, ptr %8, i32 0, i32 16
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @clk_rate_exclusive_put(ptr noundef nonnull %16) #11
  store i32 0, ptr %21, align 4
  br label %25

25:                                               ; preds = %24, %20
  %26 = getelementptr inbounds %struct.stm32_i2s_data, ptr %8, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 80, i32 noundef 33554432, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %57

29:                                               ; preds = %18
  %30 = getelementptr inbounds %struct.stm32_i2s_data, ptr %8, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = urem i32 %2, 11025
  %33 = icmp eq i32 %32, 0
  %34 = getelementptr inbounds %struct.stm32_i2s_data, ptr %8, i32 0, i32 10
  %35 = getelementptr inbounds %struct.stm32_i2s_data, ptr %8, i32 0, i32 11
  %36 = select i1 %33, ptr %35, ptr %34
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.stm32_i2s_data, ptr %8, i32 0, i32 7
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 @clk_set_parent(ptr noundef %39, ptr noundef %37) #11
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %29
  %43 = getelementptr inbounds %struct.platform_device, ptr %31, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.21, i32 noundef %40) #12
  br label %57

44:                                               ; preds = %29
  %45 = load ptr, ptr %15, align 4
  %46 = tail call i32 @clk_set_rate_exclusive(ptr noundef %45, i32 noundef %2) #11
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.20) #12
  br label %57

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.stm32_i2s_data, ptr %8, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = tail call i32 @regmap_update_bits_base(ptr noundef %52, i32 noundef 80, i32 noundef 33554432, i32 noundef 33554432, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.stm32_i2s_data, ptr %8, i32 0, i32 16
  store i32 %2, ptr %56, align 4
  br label %57

57:                                               ; preds = %55, %50, %48, %42, %25, %14, %10, %4
  %58 = phi i32 [ %46, %48 ], [ %28, %25 ], [ 0, %14 ], [ %40, %42 ], [ %53, %50 ], [ 0, %55 ], [ 0, %10 ], [ 0, %4 ]
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_i2s_set_dai_fmt(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = and i32 %1, 15
  %8 = add nsw i32 %7, -1
  %9 = icmp ult i32 %8, 4
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.22, i32 noundef %7) #12
  br label %36

11:                                               ; preds = %2
  %12 = getelementptr inbounds [4 x i32], ptr @switch.table.stm32_i2s_set_dai_fmt, i32 0, i32 %8
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %1, 3840
  %15 = lshr exact i32 %14, 8
  switch i32 %15, label %22 [
    i32 0, label %23
    i32 3, label %16
    i32 2, label %18
    i32 4, label %20
  ]

16:                                               ; preds = %11
  %17 = or i32 %13, 2048
  br label %23

18:                                               ; preds = %11
  %19 = or i32 %13, 8192
  br label %23

20:                                               ; preds = %11
  %21 = or i32 %13, 10240
  br label %23

22:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.23, i32 noundef %14) #12
  br label %36

23:                                               ; preds = %20, %18, %16, %11
  %24 = phi i32 [ %21, %20 ], [ %19, %18 ], [ %17, %16 ], [ %13, %11 ]
  %25 = and i32 %1, 61440
  %26 = trunc i32 %25 to i16
  switch i16 %26, label %28 [
    i16 4096, label %29
    i16 16384, label %27
  ]

27:                                               ; preds = %23
  br label %29

28:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.24, i32 noundef %25) #12
  br label %36

29:                                               ; preds = %27, %23
  %30 = phi i32 [ 1, %27 ], [ 2, %23 ]
  %31 = getelementptr inbounds %struct.stm32_i2s_data, ptr %6, i32 0, i32 22
  store i32 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.stm32_i2s_data, ptr %6, i32 0, i32 17
  store i32 %1, ptr %32, align 4
  %33 = getelementptr inbounds %struct.stm32_i2s_data, ptr %6, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef 80, i32 noundef 10302, i32 noundef %24, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %36

36:                                               ; preds = %29, %28, %22, %10
  %37 = phi i32 [ -22, %10 ], [ -22, %22 ], [ -22, %28 ], [ %35, %29 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_i2s_startup(ptr noundef %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.stm32_i2s_data, ptr %6, i32 0, i32 15
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #11
  %9 = getelementptr inbounds %struct.stm32_i2s_data, ptr %6, i32 0, i32 6
  store ptr %0, ptr %9, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #11
  %10 = getelementptr inbounds %struct.stm32_i2s_data, ptr %6, i32 0, i32 17
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 15
  %13 = icmp eq i32 %12, 4
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %16, i32 noundef 10, i32 noundef 2, i32 noundef 2) #11
  br label %18

18:                                               ; preds = %14, %2
  %19 = getelementptr inbounds %struct.stm32_i2s_data, ptr %6, i32 0, i32 7
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @clk_prepare(ptr noundef %20) #11
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = tail call i32 @clk_enable(ptr noundef %20) #11
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %23
  tail call void @clk_unprepare(ptr noundef %20) #11
  br label %27

27:                                               ; preds = %26, %18
  %28 = phi i32 [ %21, %18 ], [ %24, %26 ]
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.25, i32 noundef %28) #12
  br label %36

32:                                               ; preds = %27, %23
  %33 = getelementptr inbounds %struct.stm32_i2s_data, ptr %6, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef 24, i32 noundef 4088, i32 noundef 4088, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #11
  br label %36

36:                                               ; preds = %32, %30
  %37 = phi i32 [ %28, %30 ], [ %35, %32 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_i2s_shutdown(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.stm32_i2s_data, ptr %6, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  tail call void @clk_disable(ptr noundef %8) #11
  tail call void @clk_unprepare(ptr noundef %8) #11
  %9 = getelementptr inbounds %struct.stm32_i2s_data, ptr %6, i32 0, i32 15
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #11
  %11 = getelementptr inbounds %struct.stm32_i2s_data, ptr %6, i32 0, i32 6
  store ptr null, ptr %11, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_i2s_hw_params(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #3 {
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
  %15 = tail call i32 @llvm.cttz.i32(i32 %14, i1 true) #11, !range !13
  %16 = or i32 %15, %13
  br label %21

17:                                               ; preds = %3
  %18 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %12

21:                                               ; preds = %17, %12
  %22 = phi i32 [ %16, %12 ], [ 0, %17 ]
  %23 = tail call i32 @snd_pcm_format_width(i32 noundef %22) #11
  switch i32 %23, label %25 [
    i32 16, label %27
    i32 32, label %24
  ]

24:                                               ; preds = %21
  br label %27

25:                                               ; preds = %21
  %26 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.27, i32 noundef %23) #12
  br label %43

27:                                               ; preds = %24, %21
  %28 = phi i32 [ 1536, %24 ], [ 0, %21 ]
  %29 = getelementptr inbounds %struct.stm32_i2s_data, ptr %8, i32 0, i32 22
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 2
  %32 = select i1 %31, i32 4104, i32 10
  %33 = or i32 %32, %28
  %34 = select i1 %31, i32 5902, i32 1806
  %35 = getelementptr inbounds %struct.stm32_i2s_data, ptr %8, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef 80, i32 noundef %34, i32 noundef %33, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %27
  %40 = load ptr, ptr %35, align 4
  %41 = tail call i32 @regmap_update_bits_base(ptr noundef %40, i32 noundef 8, i32 noundef 480, i32 noundef 96, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39, %27, %25
  %44 = phi i32 [ %41, %39 ], [ %37, %27 ], [ -22, %25 ]
  %45 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.26, i32 noundef %44) #12
  br label %137

46:                                               ; preds = %39
  %47 = load i32, ptr %29, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %137

49:                                               ; preds = %46
  %50 = load ptr, ptr %5, align 4
  %51 = getelementptr inbounds %struct.device, ptr %50, i32 0, i32 8
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 3
  %54 = load i32, ptr %53, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !8
  %55 = urem i32 %54, 11025
  %56 = icmp eq i32 %55, 0
  %57 = getelementptr inbounds %struct.stm32_i2s_data, ptr %52, i32 0, i32 7
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.stm32_i2s_data, ptr %52, i32 0, i32 10
  %60 = getelementptr inbounds %struct.stm32_i2s_data, ptr %52, i32 0, i32 11
  %61 = select i1 %56, ptr %60, ptr %59
  %62 = load ptr, ptr %61, align 4
  %63 = tail call i32 @clk_set_parent(ptr noundef %58, ptr noundef %62) #11
  %64 = load ptr, ptr %57, align 4
  %65 = tail call i32 @clk_get_rate(ptr noundef %64) #11
  %66 = getelementptr inbounds %struct.stm32_i2s_data, ptr %52, i32 0, i32 16
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %85, label %69

69:                                               ; preds = %49
  %70 = lshr i32 %67, 1
  %71 = add i32 %70, %65
  %72 = udiv i32 %71, %67
  %73 = and i32 %72, 1
  %74 = lshr i32 %72, 1
  %75 = tail call i32 @llvm.umax.i32(i32 %72, i32 1) #11
  %76 = icmp eq i32 %74, 1
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = icmp eq i32 %73, 0
  br i1 %78, label %117, label %81

79:                                               ; preds = %69
  %80 = icmp ugt i32 %72, 255
  br i1 %80, label %81, label %117

81:                                               ; preds = %79, %77
  %82 = getelementptr inbounds %struct.stm32_i2s_data, ptr %52, i32 0, i32 2
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.platform_device, ptr %83, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.17) #12
  br label %135

85:                                               ; preds = %49
  %86 = getelementptr inbounds %struct.stm32_i2s_data, ptr %52, i32 0, i32 17
  %87 = load i32, ptr %86, align 4
  %88 = getelementptr inbounds %struct.stm32_i2s_data, ptr %52, i32 0, i32 1
  %89 = load ptr, ptr %88, align 4
  %90 = call i32 @regmap_read(ptr noundef %89, i32 noundef 80, ptr noundef nonnull %4) #11
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %135, label %92

92:                                               ; preds = %85
  %93 = and i32 %87, 15
  %94 = icmp eq i32 %93, 4
  %95 = select i1 %94, i32 16, i32 32
  %96 = load i32, ptr %4, align 4
  %97 = lshr i32 %96, 10
  %98 = and i32 %97, 1
  %99 = add nuw nsw i32 %98, 1
  %100 = mul i32 %95, %54
  %101 = mul i32 %100, %99
  %102 = lshr exact i32 %101, 1
  %103 = add i32 %102, %65
  %104 = udiv i32 %103, %101
  %105 = and i32 %104, 1
  %106 = lshr i32 %104, 1
  %107 = call i32 @llvm.umax.i32(i32 %104, i32 1) #11
  %108 = icmp eq i32 %106, 1
  br i1 %108, label %109, label %111

109:                                              ; preds = %92
  %110 = icmp eq i32 %105, 0
  br i1 %110, label %117, label %113

111:                                              ; preds = %92
  %112 = icmp ugt i32 %104, 255
  br i1 %112, label %113, label %117

113:                                              ; preds = %111, %109
  %114 = getelementptr inbounds %struct.stm32_i2s_data, ptr %52, i32 0, i32 2
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr inbounds %struct.platform_device, ptr %115, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %116, ptr noundef nonnull @.str.17) #12
  br label %135

117:                                              ; preds = %111, %109, %79, %77
  %118 = phi i32 [ 1, %77 ], [ %74, %79 ], [ 1, %109 ], [ %106, %111 ]
  %119 = phi i32 [ %75, %77 ], [ %75, %79 ], [ %107, %109 ], [ %107, %111 ]
  %120 = phi i32 [ 0, %77 ], [ %73, %79 ], [ 0, %109 ], [ %105, %111 ]
  %121 = trunc i32 %120 to i8
  %122 = getelementptr inbounds %struct.stm32_i2s_data, ptr %52, i32 0, i32 19
  store i32 %118, ptr %122, align 4
  %123 = getelementptr inbounds %struct.stm32_i2s_data, ptr %52, i32 0, i32 20
  store i8 %121, ptr %123, align 4
  %124 = getelementptr inbounds %struct.stm32_i2s_data, ptr %52, i32 0, i32 18
  store i32 %119, ptr %124, align 4
  %125 = shl i32 %118, 16
  %126 = shl nuw nsw i32 %120, 24
  %127 = or i32 %126, %125
  %128 = getelementptr inbounds %struct.stm32_i2s_data, ptr %52, i32 0, i32 1
  %129 = load ptr, ptr %128, align 4
  %130 = call i32 @regmap_update_bits_base(ptr noundef %129, i32 noundef 80, i32 noundef 33488896, i32 noundef %127, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %117
  %133 = load ptr, ptr %128, align 4
  %134 = call i32 @regmap_update_bits_base(ptr noundef %133, i32 noundef 12, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %135

135:                                              ; preds = %132, %117, %113, %85, %81
  %136 = phi i32 [ %134, %132 ], [ -22, %81 ], [ %90, %85 ], [ -22, %113 ], [ %130, %117 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  br label %137

137:                                              ; preds = %135, %46, %43
  %138 = phi i32 [ %44, %43 ], [ %136, %135 ], [ %41, %46 ]
  ret i32 %138
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_i2s_trigger(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #3 {
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  switch i32 %1, label %83 [
    i32 1, label %11
    i32 6, label %11
    i32 4, label %11
    i32 0, label %53
    i32 5, label %53
    i32 3, label %53
  ]

11:                                               ; preds = %3, %3, %3
  %12 = getelementptr inbounds %struct.stm32_i2s_data, ptr %7, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 8, i32 noundef 49152, i32 noundef 49152, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %15 = load ptr, ptr %12, align 4
  %16 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.28, i32 noundef %16) #12
  br label %83

20:                                               ; preds = %11
  %21 = load ptr, ptr %12, align 4
  %22 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 0, i32 noundef 512, i32 noundef 512, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #11
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.29, i32 noundef %22) #12
  br label %83

26:                                               ; preds = %20
  %27 = load ptr, ptr %12, align 4
  %28 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 24, i32 noundef 4088, i32 noundef 4088, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #11
  %29 = getelementptr inbounds %struct.stm32_i2s_data, ptr %7, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %29) #11
  %30 = getelementptr inbounds %struct.stm32_i2s_data, ptr %7, i32 0, i32 21
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, 1
  store i32 %32, ptr %30, align 4
  br i1 %10, label %42, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.stm32_i2s_data, ptr %7, i32 0, i32 22
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 1
  %37 = icmp eq i32 %31, 0
  %38 = select i1 %36, i1 %37, i1 false
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load ptr, ptr %12, align 4
  %41 = tail call i32 @regmap_write(ptr noundef %40, i32 noundef 32, i32 noundef 0) #11
  br label %42

42:                                               ; preds = %39, %33, %26
  %43 = phi i32 [ 64, %39 ], [ 64, %33 ], [ 32, %26 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !9
  %44 = load i16, ptr %29, align 4
  %45 = add i16 %44, 1
  store i16 %45, ptr %29, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !12
  %46 = getelementptr inbounds %struct.stm32_i2s_data, ptr %7, i32 0, i32 22
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 2
  %49 = or i32 %43, 256
  %50 = select i1 %48, i32 %49, i32 %43
  %51 = load ptr, ptr %12, align 4
  %52 = tail call i32 @regmap_update_bits_base(ptr noundef %51, i32 noundef 16, i32 noundef %50, i32 noundef %50, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %83

53:                                               ; preds = %3, %3, %3
  %54 = getelementptr inbounds %struct.stm32_i2s_data, ptr %7, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  br i1 %10, label %56, label %58

56:                                               ; preds = %53
  %57 = tail call i32 @regmap_update_bits_base(ptr noundef %55, i32 noundef 16, i32 noundef 32, i32 noundef -33, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %60

58:                                               ; preds = %53
  %59 = tail call i32 @regmap_update_bits_base(ptr noundef %55, i32 noundef 16, i32 noundef 64, i32 noundef -65, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %60

60:                                               ; preds = %58, %56
  %61 = getelementptr inbounds %struct.stm32_i2s_data, ptr %7, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %61) #11
  %62 = getelementptr inbounds %struct.stm32_i2s_data, ptr %7, i32 0, i32 21
  %63 = load i32, ptr %62, align 4
  %64 = add i32 %63, -1
  store i32 %64, ptr %62, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %60
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !9
  %67 = load i16, ptr %61, align 4
  %68 = add i16 %67, 1
  store i16 %68, ptr %61, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !12
  br label %83

69:                                               ; preds = %60
  %70 = getelementptr inbounds %struct.stm32_i2s_data, ptr %7, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = tail call i32 @regmap_update_bits_base(ptr noundef %71, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.30, i32 noundef %72) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !9
  %76 = load i16, ptr %61, align 4
  %77 = add i16 %76, 1
  store i16 %77, ptr %61, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !12
  br label %83

78:                                               ; preds = %69
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !9
  %79 = load i16, ptr %61, align 4
  %80 = add i16 %79, 1
  store i16 %80, ptr %61, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !12
  %81 = load ptr, ptr %70, align 4
  %82 = tail call i32 @regmap_update_bits_base(ptr noundef %81, i32 noundef 8, i32 noundef 49152, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %83

83:                                               ; preds = %78, %74, %66, %42, %24, %18, %3
  %84 = phi i32 [ %72, %74 ], [ %16, %18 ], [ %22, %24 ], [ -22, %3 ], [ 0, %78 ], [ 0, %66 ], [ 0, %42 ]
  ret i32 %84
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_rate_exclusive_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate_exclusive(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_minmax(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dmaengine_pcm_prepare_slave_config(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_unregister_component(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_i2s_suspend(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stm32_i2s_data, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @regcache_cache_only(ptr noundef %5, i1 noundef zeroext true) #11
  %6 = load ptr, ptr %4, align 4
  tail call void @regcache_mark_dirty(ptr noundef %6) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_i2s_resume(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stm32_i2s_data, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @regcache_cache_only(ptr noundef %5, i1 noundef zeroext false) #11
  %6 = load ptr, ptr %4, align 4
  %7 = tail call i32 @regcache_sync(ptr noundef %6) #11
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strlen(ptr nocapture) local_unnamed_addr #9

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { argmemonly nofree nounwind willreturn }
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
!9 = !{i64 2148936125}
!10 = !{i64 2148931949}
!11 = !{i64 2148932024, i64 2148932051, i64 2148932098, i64 2148932120, i64 2148932148, i64 2148932168}
!12 = !{i64 2148959128}
!13 = !{i32 0, i32 33}
