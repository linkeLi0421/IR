; ModuleID = '/llk/IR/sound/soc/atmel/atmel-i2s.c_pt.bc'
source_filename = "../sound/soc/atmel/atmel-i2s.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.atmel_i2s_caps = type { ptr }
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
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.88, ptr }
%union.anon.88 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.atmel_i2s_gck_param = type { i32, i32, i32, i32 }
%struct.atmel_i2s_dev = type { ptr, ptr, ptr, ptr, %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data, i32, ptr, ptr, i32 }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
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

@atmel_i2s_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-i2s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @atmel_i2s_sama5d2_caps }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description232 = internal constant [40 x i8] c"description=Atmel I2S Controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author233 = internal constant [51 x i8] c"author=Cyrille Pitchen <cyrille.pitchen@atmel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@atmel_i2s_sama5d2_caps = internal constant %struct.atmel_i2s_caps { ptr @atmel_i2s_sama5d2_mck_init }, align 4
@.str = private unnamed_addr constant [7 x i8] c"muxclk\00", align 1
@atmel_i2s_driver = internal global %struct.platform_driver { ptr @atmel_i2s_probe, ptr @atmel_i2s_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @atmel_i2s_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.1 = private unnamed_addr constant [10 x i8] c"atmel_i2s\00", align 1
@atmel_i2s_regmap_config = internal constant %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 40, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"failed to get the peripheral clock: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"gclk\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"hw version: %#x\0A\00", align 1
@atmel_i2s_component = internal constant %struct.snd_soc_component_driver { ptr @.str.12, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@atmel_i2s_dai = internal global %struct.snd_soc_dai_driver { ptr null, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @atmel_i2s_dai_probe, ptr null, ptr null, ptr null, ptr @atmel_i2s_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr null, i64 1172526072901, i32 8190, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr null, i64 1172526072901, i32 8190, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 5, i32 0, i32 0 }, align 8
@.str.6 = private unnamed_addr constant [28 x i8] c"failed to register DAI: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"dma-names\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"rx-tx\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"failed to register PCM: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"RX overrun on channel %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"TX underrun on channel %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"atmel-i2s\00", align 1
@atmel_i2s_dai_ops = internal constant %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr @atmel_i2s_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atmel_i2s_hw_params, ptr null, ptr @atmel_i2s_prepare, ptr @atmel_i2s_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, align 4
@.str.13 = private unnamed_addr constant [24 x i8] c"unsupported bus format\0A\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"unsupported master/slave mode\0A\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"unsupported number of audio channels\0A\00", align 1
@.str.16 = private unnamed_addr constant [47 x i8] c"unsupported size/endianness for audio samples\0A\00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c"cannot generate the I2S Master Clock\0A\00", align 1
@gck_params = internal constant [13 x %struct.atmel_i2s_gck_param] [%struct.atmel_i2s_gck_param { i32 8000, i32 12288000, i32 0, i32 47 }, %struct.atmel_i2s_gck_param { i32 16000, i32 12288000, i32 1, i32 47 }, %struct.atmel_i2s_gck_param { i32 24000, i32 12288000, i32 3, i32 63 }, %struct.atmel_i2s_gck_param { i32 32000, i32 12288000, i32 3, i32 47 }, %struct.atmel_i2s_gck_param { i32 48000, i32 12288000, i32 7, i32 63 }, %struct.atmel_i2s_gck_param { i32 64000, i32 12288000, i32 7, i32 47 }, %struct.atmel_i2s_gck_param { i32 96000, i32 12288000, i32 7, i32 31 }, %struct.atmel_i2s_gck_param { i32 192000, i32 12288000, i32 7, i32 15 }, %struct.atmel_i2s_gck_param { i32 11025, i32 11289600, i32 1, i32 63 }, %struct.atmel_i2s_gck_param { i32 22050, i32 11289600, i32 3, i32 63 }, %struct.atmel_i2s_gck_param { i32 44100, i32 11289600, i32 7, i32 63 }, %struct.atmel_i2s_gck_param { i32 88200, i32 11289600, i32 7, i32 31 }, %struct.atmel_i2s_gck_param { i32 176400, i32 11289600, i32 7, i32 15 }], align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_license234], section "llvm.metadata"

@__mod_of__atmel_i2s_dt_ids_device_table = dso_local alias [2 x %struct.of_device_id], ptr @atmel_i2s_dt_ids

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @atmel_i2s_driver, ptr noundef nonnull @__this_module) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @atmel_i2s_driver) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_i2s_sama5d2_mck_init(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #1 {
  %3 = getelementptr inbounds %struct.atmel_i2s_dev, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 4
  %8 = tail call ptr @devm_clk_get(ptr noundef %7, ptr noundef nonnull @.str) #8
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = icmp eq ptr %8, inttoptr (i32 -517 to ptr)
  %12 = select i1 %11, i32 -517, i32 0
  br label %16

13:                                               ; preds = %6
  %14 = load ptr, ptr %3, align 4
  %15 = tail call i32 @clk_set_parent(ptr noundef %8, ptr noundef %14) #8
  br label %16

16:                                               ; preds = %13, %10, %2
  %17 = phi i32 [ %15, %13 ], [ 0, %2 ], [ %12, %10 ]
  ret i32 %17
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_i2s_probe(ptr noundef %0) #1 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store ptr null, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 104, i32 noundef 3520) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %95, label %9

9:                                                ; preds = %1
  %10 = tail call ptr @of_match_node(ptr noundef nonnull @atmel_i2s_dt_ids, ptr noundef %6) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.of_device_id, ptr %10, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.atmel_i2s_dev, ptr %7, i32 0, i32 8
  store ptr %14, ptr %15, align 4
  br label %16

16:                                               ; preds = %12, %9
  %17 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #8
  %18 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = ptrtoint ptr %17 to i32
  br label %95

21:                                               ; preds = %16
  %22 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %4, ptr noundef null, ptr noundef %17, ptr noundef nonnull @atmel_i2s_regmap_config, ptr noundef null, ptr noundef null) #8
  %23 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = ptrtoint ptr %22 to i32
  br label %95

26:                                               ; preds = %21
  %27 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #8
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %95, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load ptr, ptr %4, align 4
  br label %35

35:                                               ; preds = %33, %29
  %36 = phi ptr [ %34, %33 ], [ %31, %29 ]
  %37 = call i32 @devm_request_threaded_irq(ptr noundef %4, i32 noundef %27, ptr noundef nonnull @atmel_i2s_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %36, ptr noundef nonnull %7) #8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %95

39:                                               ; preds = %35
  %40 = call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull @.str.2) #8
  %41 = getelementptr inbounds %struct.atmel_i2s_dev, ptr %7, i32 0, i32 2
  store ptr %40, ptr %41, align 4
  %42 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = ptrtoint ptr %40 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.3, i32 noundef %44) #9
  br label %95

45:                                               ; preds = %39
  %46 = call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull @.str.4) #8
  %47 = getelementptr inbounds %struct.atmel_i2s_dev, ptr %7, i32 0, i32 3
  store ptr %46, ptr %47, align 4
  %48 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = icmp eq ptr %46, inttoptr (i32 -517 to ptr)
  br i1 %50, label %95, label %51

51:                                               ; preds = %49
  store ptr null, ptr %47, align 4
  br label %52

52:                                               ; preds = %51, %45
  store ptr %4, ptr %7, align 4
  %53 = getelementptr inbounds %struct.atmel_i2s_dev, ptr %7, i32 0, i32 1
  store ptr %22, ptr %53, align 4
  %54 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %7, ptr %54, align 8
  %55 = getelementptr inbounds %struct.atmel_i2s_dev, ptr %7, i32 0, i32 8
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %64, label %58

58:                                               ; preds = %52
  %59 = load ptr, ptr %56, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = call i32 %59(ptr noundef nonnull %7, ptr noundef %6) #8
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %95

64:                                               ; preds = %61, %58, %52
  %65 = load ptr, ptr %41, align 4
  %66 = call fastcc i32 @clk_prepare_enable(ptr noundef %65)
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %95

68:                                               ; preds = %64
  %69 = load ptr, ptr %53, align 4
  %70 = call i32 @regmap_read(ptr noundef %69, i32 noundef 40, ptr noundef nonnull %3) #8
  %71 = load i32, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.5, i32 noundef %71) #9
  %72 = load ptr, ptr %53, align 4
  %73 = call i32 @regmap_write(ptr noundef %72, i32 noundef 20, i32 noundef 68) #8
  %74 = call i32 @devm_snd_soc_register_component(ptr noundef %4, ptr noundef nonnull @atmel_i2s_component, ptr noundef nonnull @atmel_i2s_dai, i32 noundef 1) #8
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %68
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.6, i32 noundef %74) #9
  %77 = load ptr, ptr %41, align 4
  call void @clk_disable(ptr noundef %77) #8
  call void @clk_unprepare(ptr noundef %77) #8
  br label %95

78:                                               ; preds = %68
  %79 = load ptr, ptr %2, align 4
  %80 = load i32, ptr %79, align 4
  %81 = add i32 %80, 36
  %82 = getelementptr inbounds %struct.atmel_i2s_dev, ptr %7, i32 0, i32 4
  store i32 %81, ptr %82, align 4
  %83 = getelementptr inbounds %struct.atmel_i2s_dev, ptr %7, i32 0, i32 4, i32 2
  store i32 1, ptr %83, align 4
  %84 = load i32, ptr %79, align 4
  %85 = add i32 %84, 32
  %86 = getelementptr inbounds %struct.atmel_i2s_dev, ptr %7, i32 0, i32 5
  store i32 %85, ptr %86, align 4
  %87 = getelementptr inbounds %struct.atmel_i2s_dev, ptr %7, i32 0, i32 5, i32 2
  store i32 1, ptr %87, align 4
  %88 = call i32 @of_property_match_string(ptr noundef %6, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #8
  %89 = icmp eq i32 %88, 0
  %90 = select i1 %89, i32 8, i32 0
  %91 = call i32 @devm_snd_dmaengine_pcm_register(ptr noundef %4, ptr noundef null, i32 noundef %90) #8
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %78
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.9, i32 noundef %91) #9
  %94 = load ptr, ptr %41, align 4
  call void @clk_disable(ptr noundef %94) #8
  call void @clk_unprepare(ptr noundef %94) #8
  br label %95

95:                                               ; preds = %93, %78, %76, %64, %61, %49, %43, %35, %26, %24, %19, %1
  %96 = phi i32 [ %20, %19 ], [ %25, %24 ], [ %44, %43 ], [ %74, %76 ], [ %91, %93 ], [ -12, %1 ], [ %27, %26 ], [ %37, %35 ], [ -517, %49 ], [ %62, %61 ], [ %66, %64 ], [ 0, %78 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 %96
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_i2s_remove(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.atmel_i2s_dev, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_i2s_interrupt(i32 noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.atmel_i2s_dev, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = call i32 @regmap_read(ptr noundef %6, i32 noundef 8, ptr noundef nonnull %3) #8
  %8 = load ptr, ptr %5, align 4
  %9 = call i32 @regmap_read(ptr noundef %8, i32 noundef 28, ptr noundef nonnull %4) #8
  %10 = load i32, ptr %3, align 4
  %11 = load i32, ptr %4, align 4
  %12 = and i32 %11, %10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %166, label %14

14:                                               ; preds = %2
  %15 = and i32 %12, 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %89, label %17

17:                                               ; preds = %14
  %18 = and i32 %10, 256
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.10, i32 noundef 0) #9
  %22 = load i32, ptr %3, align 4
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi i32 [ %22, %20 ], [ %10, %17 ]
  %25 = phi i32 [ 260, %20 ], [ 4, %17 ]
  %26 = and i32 %24, 512
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = or i32 %25, 512
  %30 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.10, i32 noundef 1) #9
  %31 = load i32, ptr %3, align 4
  br label %32

32:                                               ; preds = %28, %23
  %33 = phi i32 [ %31, %28 ], [ %24, %23 ]
  %34 = phi i32 [ %29, %28 ], [ %25, %23 ]
  %35 = and i32 %33, 1024
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = or i32 %34, 1024
  %39 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.10, i32 noundef 2) #9
  %40 = load i32, ptr %3, align 4
  br label %41

41:                                               ; preds = %37, %32
  %42 = phi i32 [ %40, %37 ], [ %33, %32 ]
  %43 = phi i32 [ %38, %37 ], [ %34, %32 ]
  %44 = and i32 %42, 2048
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = or i32 %43, 2048
  %48 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.10, i32 noundef 3) #9
  %49 = load i32, ptr %3, align 4
  br label %50

50:                                               ; preds = %46, %41
  %51 = phi i32 [ %49, %46 ], [ %42, %41 ]
  %52 = phi i32 [ %47, %46 ], [ %43, %41 ]
  %53 = and i32 %51, 4096
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %50
  %56 = or i32 %52, 4096
  %57 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.10, i32 noundef 4) #9
  %58 = load i32, ptr %3, align 4
  br label %59

59:                                               ; preds = %55, %50
  %60 = phi i32 [ %58, %55 ], [ %51, %50 ]
  %61 = phi i32 [ %56, %55 ], [ %52, %50 ]
  %62 = and i32 %60, 8192
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %59
  %65 = or i32 %61, 8192
  %66 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.10, i32 noundef 5) #9
  %67 = load i32, ptr %3, align 4
  br label %68

68:                                               ; preds = %64, %59
  %69 = phi i32 [ %67, %64 ], [ %60, %59 ]
  %70 = phi i32 [ %65, %64 ], [ %61, %59 ]
  %71 = and i32 %69, 16384
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %68
  %74 = or i32 %70, 16384
  %75 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.10, i32 noundef 6) #9
  %76 = load i32, ptr %3, align 4
  br label %77

77:                                               ; preds = %73, %68
  %78 = phi i32 [ %76, %73 ], [ %69, %68 ]
  %79 = phi i32 [ %74, %73 ], [ %70, %68 ]
  %80 = and i32 %78, 32768
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %77
  %83 = or i32 %79, 32768
  %84 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.10, i32 noundef 7) #9
  br label %85

85:                                               ; preds = %82, %77
  %86 = phi i32 [ %83, %82 ], [ %79, %77 ]
  %87 = load ptr, ptr %5, align 4
  %88 = call i32 @regmap_write(ptr noundef %87, i32 noundef 12, i32 noundef %86) #8
  br label %89

89:                                               ; preds = %85, %14
  %90 = phi i32 [ 1, %85 ], [ 0, %14 ]
  %91 = and i32 %12, 64
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %166, label %93

93:                                               ; preds = %89
  %94 = load i32, ptr %3, align 4
  %95 = and i32 %94, 1048576
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %93
  %98 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %98, ptr noundef nonnull @.str.11, i32 noundef 0) #9
  %99 = load i32, ptr %3, align 4
  br label %100

100:                                              ; preds = %97, %93
  %101 = phi i32 [ %99, %97 ], [ %94, %93 ]
  %102 = phi i32 [ 1048640, %97 ], [ 64, %93 ]
  %103 = and i32 %101, 2097152
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %100
  %106 = or i32 %102, 2097152
  %107 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %107, ptr noundef nonnull @.str.11, i32 noundef 1) #9
  %108 = load i32, ptr %3, align 4
  br label %109

109:                                              ; preds = %105, %100
  %110 = phi i32 [ %108, %105 ], [ %101, %100 ]
  %111 = phi i32 [ %106, %105 ], [ %102, %100 ]
  %112 = and i32 %110, 4194304
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %109
  %115 = or i32 %111, 4194304
  %116 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %116, ptr noundef nonnull @.str.11, i32 noundef 2) #9
  %117 = load i32, ptr %3, align 4
  br label %118

118:                                              ; preds = %114, %109
  %119 = phi i32 [ %117, %114 ], [ %110, %109 ]
  %120 = phi i32 [ %115, %114 ], [ %111, %109 ]
  %121 = and i32 %119, 8388608
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %118
  %124 = or i32 %120, 8388608
  %125 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %125, ptr noundef nonnull @.str.11, i32 noundef 3) #9
  %126 = load i32, ptr %3, align 4
  br label %127

127:                                              ; preds = %123, %118
  %128 = phi i32 [ %126, %123 ], [ %119, %118 ]
  %129 = phi i32 [ %124, %123 ], [ %120, %118 ]
  %130 = and i32 %128, 16777216
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %127
  %133 = or i32 %129, 16777216
  %134 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %134, ptr noundef nonnull @.str.11, i32 noundef 4) #9
  %135 = load i32, ptr %3, align 4
  br label %136

136:                                              ; preds = %132, %127
  %137 = phi i32 [ %135, %132 ], [ %128, %127 ]
  %138 = phi i32 [ %133, %132 ], [ %129, %127 ]
  %139 = and i32 %137, 33554432
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %136
  %142 = or i32 %138, 33554432
  %143 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %143, ptr noundef nonnull @.str.11, i32 noundef 5) #9
  %144 = load i32, ptr %3, align 4
  br label %145

145:                                              ; preds = %141, %136
  %146 = phi i32 [ %144, %141 ], [ %137, %136 ]
  %147 = phi i32 [ %142, %141 ], [ %138, %136 ]
  %148 = and i32 %146, 67108864
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %154, label %150

150:                                              ; preds = %145
  %151 = or i32 %147, 67108864
  %152 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %152, ptr noundef nonnull @.str.11, i32 noundef 6) #9
  %153 = load i32, ptr %3, align 4
  br label %154

154:                                              ; preds = %150, %145
  %155 = phi i32 [ %153, %150 ], [ %146, %145 ]
  %156 = phi i32 [ %151, %150 ], [ %147, %145 ]
  %157 = and i32 %155, 134217728
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %154
  %160 = or i32 %156, 134217728
  %161 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %161, ptr noundef nonnull @.str.11, i32 noundef 7) #9
  br label %162

162:                                              ; preds = %159, %154
  %163 = phi i32 [ %160, %159 ], [ %156, %154 ]
  %164 = load ptr, ptr %5, align 4
  %165 = call i32 @regmap_write(ptr noundef %164, i32 noundef 12, i32 noundef %163) #8
  br label %166

166:                                              ; preds = %162, %89, %2
  %167 = phi i32 [ 0, %2 ], [ 1, %162 ], [ %90, %89 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %167
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %0) unnamed_addr #5 {
  %2 = tail call i32 @clk_prepare(ptr noundef %0) #8
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @clk_enable(ptr noundef %0) #8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @clk_unprepare(ptr noundef %0) #8
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi i32 [ %2, %1 ], [ %5, %7 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_dmaengine_pcm_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @atmel_i2s_dai_probe(ptr nocapture noundef %0) #6 {
  %2 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.atmel_i2s_dev, ptr %5, i32 0, i32 4
  %7 = getelementptr inbounds %struct.atmel_i2s_dev, ptr %5, i32 0, i32 5
  %8 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 7
  store ptr %6, ptr %8, align 4
  %9 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 8
  store ptr %7, ptr %9, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @atmel_i2s_set_dai_fmt(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.atmel_i2s_dev, ptr %6, i32 0, i32 6
  store i32 %1, ptr %7, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_i2s_hw_params(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #1 {
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i32 4317, i32 477
  %12 = getelementptr inbounds %struct.atmel_i2s_dev, ptr %7, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 15
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = trunc i32 %13 to i16
  %18 = and i16 %17, -4096
  switch i16 %18, label %96 [
    i16 16384, label %21
    i16 4096, label %94
  ]

19:                                               ; preds = %3
  %20 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.13) #9
  br label %142

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.atmel_i2s_dev, ptr %7, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %92, label %25

25:                                               ; preds = %21
  %26 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.atmel_i2s_dev, ptr %7, i32 0, i32 7
  %29 = add i32 %27, -8000
  %30 = tail call i32 @llvm.abs.i32(i32 %29, i1 false) #8
  %31 = icmp eq i32 %30, 2147483647
  %32 = select i1 %31, ptr null, ptr @gck_params
  %33 = add i32 %27, -16000
  %34 = tail call i32 @llvm.abs.i32(i32 %33, i1 false) #8
  %35 = icmp slt i32 %34, %30
  %36 = select i1 %35, ptr getelementptr inbounds ([13 x %struct.atmel_i2s_gck_param], ptr @gck_params, i32 0, i32 1), ptr %32
  %37 = tail call i32 @llvm.smin.i32(i32 %34, i32 %30) #8
  %38 = add i32 %27, -24000
  %39 = tail call i32 @llvm.abs.i32(i32 %38, i1 false) #8
  %40 = icmp slt i32 %39, %37
  %41 = select i1 %40, ptr getelementptr inbounds ([13 x %struct.atmel_i2s_gck_param], ptr @gck_params, i32 0, i32 2), ptr %36
  %42 = tail call i32 @llvm.smin.i32(i32 %39, i32 %37) #8
  %43 = add i32 %27, -32000
  %44 = tail call i32 @llvm.abs.i32(i32 %43, i1 false) #8
  %45 = icmp slt i32 %44, %42
  %46 = select i1 %45, ptr getelementptr inbounds ([13 x %struct.atmel_i2s_gck_param], ptr @gck_params, i32 0, i32 3), ptr %41
  %47 = tail call i32 @llvm.smin.i32(i32 %44, i32 %42) #8
  %48 = add i32 %27, -48000
  %49 = tail call i32 @llvm.abs.i32(i32 %48, i1 false) #8
  %50 = icmp slt i32 %49, %47
  %51 = select i1 %50, ptr getelementptr inbounds ([13 x %struct.atmel_i2s_gck_param], ptr @gck_params, i32 0, i32 4), ptr %46
  %52 = tail call i32 @llvm.smin.i32(i32 %49, i32 %47) #8
  %53 = add i32 %27, -64000
  %54 = tail call i32 @llvm.abs.i32(i32 %53, i1 false) #8
  %55 = icmp slt i32 %54, %52
  %56 = select i1 %55, ptr getelementptr inbounds ([13 x %struct.atmel_i2s_gck_param], ptr @gck_params, i32 0, i32 5), ptr %51
  %57 = tail call i32 @llvm.smin.i32(i32 %54, i32 %52) #8
  %58 = add i32 %27, -96000
  %59 = tail call i32 @llvm.abs.i32(i32 %58, i1 false) #8
  %60 = icmp slt i32 %59, %57
  %61 = select i1 %60, ptr getelementptr inbounds ([13 x %struct.atmel_i2s_gck_param], ptr @gck_params, i32 0, i32 6), ptr %56
  %62 = tail call i32 @llvm.smin.i32(i32 %59, i32 %57) #8
  %63 = add i32 %27, -192000
  %64 = tail call i32 @llvm.abs.i32(i32 %63, i1 false) #8
  %65 = icmp slt i32 %64, %62
  %66 = select i1 %65, ptr getelementptr inbounds ([13 x %struct.atmel_i2s_gck_param], ptr @gck_params, i32 0, i32 7), ptr %61
  %67 = tail call i32 @llvm.smin.i32(i32 %64, i32 %62) #8
  %68 = add i32 %27, -11025
  %69 = tail call i32 @llvm.abs.i32(i32 %68, i1 false) #8
  %70 = icmp slt i32 %69, %67
  %71 = select i1 %70, ptr getelementptr inbounds ([13 x %struct.atmel_i2s_gck_param], ptr @gck_params, i32 0, i32 8), ptr %66
  %72 = tail call i32 @llvm.smin.i32(i32 %69, i32 %67) #8
  %73 = add i32 %27, -22050
  %74 = tail call i32 @llvm.abs.i32(i32 %73, i1 false) #8
  %75 = icmp slt i32 %74, %72
  %76 = select i1 %75, ptr getelementptr inbounds ([13 x %struct.atmel_i2s_gck_param], ptr @gck_params, i32 0, i32 9), ptr %71
  %77 = tail call i32 @llvm.smin.i32(i32 %74, i32 %72) #8
  %78 = add i32 %27, -44100
  %79 = tail call i32 @llvm.abs.i32(i32 %78, i1 false) #8
  %80 = icmp slt i32 %79, %77
  %81 = select i1 %80, ptr getelementptr inbounds ([13 x %struct.atmel_i2s_gck_param], ptr @gck_params, i32 0, i32 10), ptr %76
  %82 = tail call i32 @llvm.smin.i32(i32 %79, i32 %77) #8
  %83 = add i32 %27, -88200
  %84 = tail call i32 @llvm.abs.i32(i32 %83, i1 false) #8
  %85 = icmp slt i32 %84, %82
  %86 = select i1 %85, ptr getelementptr inbounds ([13 x %struct.atmel_i2s_gck_param], ptr @gck_params, i32 0, i32 11), ptr %81
  %87 = tail call i32 @llvm.smin.i32(i32 %84, i32 %82) #8
  %88 = add i32 %27, -176400
  %89 = tail call i32 @llvm.abs.i32(i32 %88, i1 false) #8
  %90 = icmp slt i32 %89, %87
  %91 = select i1 %90, ptr getelementptr inbounds ([13 x %struct.atmel_i2s_gck_param], ptr @gck_params, i32 0, i32 12), ptr %86
  store ptr %91, ptr %28, align 4
  br label %98

92:                                               ; preds = %21
  %93 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.17) #9
  br label %142

94:                                               ; preds = %16
  %95 = getelementptr inbounds %struct.atmel_i2s_dev, ptr %7, i32 0, i32 7
  store ptr null, ptr %95, align 4
  br label %98

96:                                               ; preds = %16
  %97 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str.14) #9
  br label %142

98:                                               ; preds = %94, %25
  %99 = phi i32 [ 0, %94 ], [ 1, %25 ]
  %100 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 2
  %101 = load i32, ptr %100, align 4
  switch i32 %101, label %107 [
    i32 1, label %102
    i32 2, label %109
  ]

102:                                              ; preds = %98
  br i1 %10, label %103, label %105

103:                                              ; preds = %102
  %104 = or i32 %99, 4096
  br label %109

105:                                              ; preds = %102
  %106 = or i32 %99, 256
  br label %109

107:                                              ; preds = %98
  %108 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %108, ptr noundef nonnull @.str.15) #9
  br label %142

109:                                              ; preds = %105, %103, %98
  %110 = phi i32 [ %99, %98 ], [ %104, %103 ], [ %106, %105 ]
  %111 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1
  %112 = load i32, ptr %111, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 1
  %116 = load i32, ptr %115, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %114, %109
  %119 = phi i32 [ 0, %109 ], [ 32, %114 ]
  %120 = phi i32 [ %112, %109 ], [ %116, %114 ]
  %121 = tail call i32 @llvm.cttz.i32(i32 %120, i1 true) #8, !range !9
  %122 = or i32 %121, %119
  switch i32 %122, label %135 [
    i32 0, label %123
    i32 2, label %125
    i32 40, label %127
    i32 36, label %129
    i32 32, label %131
    i32 6, label %133
    i32 10, label %137
  ]

123:                                              ; preds = %118, %114
  %124 = or i32 %110, 24
  br label %137

125:                                              ; preds = %118
  %126 = or i32 %110, 16
  br label %137

127:                                              ; preds = %118
  %128 = or i32 %110, -2147483636
  br label %137

129:                                              ; preds = %118
  %130 = or i32 %110, -2147483640
  br label %137

131:                                              ; preds = %118
  %132 = or i32 %110, -2147483644
  br label %137

133:                                              ; preds = %118
  %134 = or i32 %110, 4
  br label %137

135:                                              ; preds = %118
  %136 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %136, ptr noundef nonnull @.str.16) #9
  br label %142

137:                                              ; preds = %133, %131, %129, %127, %125, %123, %118
  %138 = phi i32 [ %134, %133 ], [ %132, %131 ], [ %130, %129 ], [ %128, %127 ], [ %126, %125 ], [ %124, %123 ], [ %110, %118 ]
  %139 = getelementptr inbounds %struct.atmel_i2s_dev, ptr %7, i32 0, i32 1
  %140 = load ptr, ptr %139, align 4
  %141 = tail call i32 @regmap_update_bits_base(ptr noundef %140, i32 noundef 4, i32 noundef %11, i32 noundef %138, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %142

142:                                              ; preds = %137, %135, %107, %96, %92, %19
  %143 = phi i32 [ -22, %96 ], [ -22, %107 ], [ -22, %135 ], [ %141, %137 ], [ -22, %19 ], [ -22, %92 ]
  ret i32 %143
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_i2s_prepare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.atmel_i2s_dev, ptr %8, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = call i32 @regmap_read(ptr noundef %14, i32 noundef 8, ptr noundef nonnull %4) #8
  %16 = load i32, ptr %4, align 4
  %17 = and i32 %16, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %12
  %20 = load ptr, ptr %13, align 4
  %21 = call i32 @regmap_read(ptr noundef %20, i32 noundef 32, ptr noundef nonnull %3) #8
  br label %22

22:                                               ; preds = %19, %12, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_i2s_trigger(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !8
  switch i32 %1, label %66 [
    i32 1, label %12
    i32 6, label %12
    i32 4, label %12
    i32 0, label %14
    i32 5, label %14
    i32 3, label %14
  ]

12:                                               ; preds = %3, %3, %3
  %13 = select i1 %11, i32 16, i32 1
  br label %16

14:                                               ; preds = %3, %3, %3
  %15 = select i1 %11, i32 32, i32 2
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i1 [ false, %14 ], [ true, %12 ]
  %18 = phi i32 [ %15, %14 ], [ %13, %12 ]
  %19 = getelementptr inbounds %struct.atmel_i2s_dev, ptr %8, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = call i32 @regmap_read(ptr noundef %20, i32 noundef 4, ptr noundef nonnull %4) #8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %66

23:                                               ; preds = %16
  %24 = load i32, ptr %4, align 4
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  %27 = xor i1 %17, true
  %28 = or i1 %26, %27
  br i1 %28, label %41, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.atmel_i2s_dev, ptr %8, i32 0, i32 9
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = call fastcc i32 @atmel_i2s_switch_mck_generator(ptr noundef %8, i1 noundef zeroext true)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %66

36:                                               ; preds = %33
  %37 = load i32, ptr %30, align 4
  br label %38

38:                                               ; preds = %36, %29
  %39 = phi i32 [ %37, %36 ], [ %31, %29 ]
  %40 = add i32 %39, 1
  store i32 %40, ptr %30, align 4
  br label %41

41:                                               ; preds = %38, %23
  %42 = load ptr, ptr %19, align 4
  %43 = call i32 @regmap_write(ptr noundef %42, i32 noundef 0, i32 noundef %18) #8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %66

45:                                               ; preds = %41
  %46 = or i1 %17, %26
  br i1 %46, label %66, label %47

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.atmel_i2s_dev, ptr %8, i32 0, i32 9
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %63

51:                                               ; preds = %47
  %52 = load ptr, ptr %19, align 4
  %53 = call i32 @regmap_write(ptr noundef %52, i32 noundef 0, i32 noundef 8) #8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %51
  %56 = load ptr, ptr %19, align 4
  %57 = call i32 @regmap_update_bits_base(ptr noundef %56, i32 noundef 4, i32 noundef 2134835200, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.atmel_i2s_dev, ptr %8, i32 0, i32 3
  %61 = load ptr, ptr %60, align 4
  call void @clk_disable(ptr noundef %61) #8
  call void @clk_unprepare(ptr noundef %61) #8
  %62 = load i32, ptr %48, align 4
  br label %63

63:                                               ; preds = %59, %47
  %64 = phi i32 [ %62, %59 ], [ %49, %47 ]
  %65 = add i32 %64, -1
  store i32 %65, ptr %48, align 4
  br label %66

66:                                               ; preds = %63, %55, %51, %45, %41, %33, %16, %3
  %67 = phi i32 [ -22, %3 ], [ %21, %16 ], [ %34, %33 ], [ %43, %41 ], [ 0, %45 ], [ 0, %63 ], [ %57, %55 ], [ %53, %51 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret i32 %67
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @atmel_i2s_switch_mck_generator(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #1 {
  br i1 %1, label %15, label %3

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.atmel_i2s_dev, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 0, i32 noundef 8) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %57

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 4
  %10 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 4, i32 noundef 2134835200, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %57

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.atmel_i2s_dev, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  tail call void @clk_disable(ptr noundef %14) #8
  tail call void @clk_unprepare(ptr noundef %14) #8
  br label %57

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.atmel_i2s_dev, ptr %0, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %57, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.atmel_i2s_gck_param, ptr %17, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.atmel_i2s_gck_param, ptr %17, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, 1
  %25 = mul i32 %24, %21
  %26 = getelementptr inbounds %struct.atmel_i2s_dev, ptr %0, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 @clk_set_rate(ptr noundef %27, i32 noundef %25) #8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %57

30:                                               ; preds = %19
  %31 = load ptr, ptr %26, align 4
  %32 = tail call i32 @clk_prepare(ptr noundef %31) #8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %57

34:                                               ; preds = %30
  %35 = tail call i32 @clk_enable(ptr noundef %31) #8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  tail call void @clk_unprepare(ptr noundef %31) #8
  br label %57

38:                                               ; preds = %34
  %39 = load ptr, ptr %16, align 4
  %40 = getelementptr inbounds %struct.atmel_i2s_gck_param, ptr %39, i32 0, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = shl i32 %41, 16
  %43 = and i32 %42, 4128768
  %44 = getelementptr inbounds %struct.atmel_i2s_gck_param, ptr %39, i32 0, i32 3
  %45 = load i32, ptr %44, align 4
  %46 = shl i32 %45, 24
  %47 = and i32 %46, 1056964608
  %48 = or i32 %43, %47
  %49 = or i32 %48, 1073741824
  %50 = getelementptr inbounds %struct.atmel_i2s_dev, ptr %0, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = tail call i32 @regmap_update_bits_base(ptr noundef %51, i32 noundef 4, i32 noundef 2134835200, i32 noundef %49, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %38
  %55 = load ptr, ptr %50, align 4
  %56 = tail call i32 @regmap_write(ptr noundef %55, i32 noundef 0, i32 noundef 4) #8
  br label %57

57:                                               ; preds = %54, %38, %37, %30, %19, %15, %12, %8, %3
  %58 = phi i32 [ %56, %54 ], [ 0, %12 ], [ %6, %3 ], [ %10, %8 ], [ -22, %15 ], [ %28, %19 ], [ %52, %38 ], [ %35, %37 ], [ %32, %30 ]
  ret i32 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
