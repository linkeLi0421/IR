; ModuleID = '/llk/IR/sound/soc/samsung/pcm.c_pt.bc'
source_filename = "../sound/soc/samsung/pcm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.s3c_pcm_info = type { %struct.spinlock, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.88, ptr }
%union.anon.88 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.s3c_audio_pdata = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.samsung_i2s_type }
%struct.samsung_i2s_type = type { i32, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }

@__UNIQUE_ID_author233 = internal constant [51 x i8] c"author=Jaswinder Singh, <jassisinghbrar@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description234 = internal constant [38 x i8] c"description=S3C PCM Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias236 = internal constant [27 x i8] c"alias=platform:samsung-pcm\00", section ".modinfo", align 1
@s3c_pcm_driver = internal global %struct.platform_driver { ptr @s3c_pcm_dev_probe, ptr @s3c_pcm_dev_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [12 x i8] c"samsung-pcm\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"id %d out of range\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Unable to configure gpio\0A\00", align 1
@s3c_pcm = internal global [2 x %struct.s3c_pcm_info] zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"audio-bus\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"failed to get audio-bus clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"pcm\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"failed to get pcm clock\0A\00", align 1
@s3c_pcm_stereo_in = internal global [2 x %struct.snd_dmaengine_dai_dma_data] [%struct.snd_dmaengine_dai_dma_data { i32 0, i32 4, i32 0, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0 }, %struct.snd_dmaengine_dai_dma_data { i32 0, i32 4, i32 0, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0 }], align 4
@s3c_pcm_stereo_out = internal global [2 x %struct.snd_dmaengine_dai_dma_data] [%struct.snd_dmaengine_dai_dma_data { i32 0, i32 4, i32 0, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0 }, %struct.snd_dmaengine_dai_dma_data { i32 0, i32 4, i32 0, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0 }], align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"failed to get register DMA: %d\0A\00", align 1
@s3c_pcm_component = internal constant %struct.snd_soc_component_driver { ptr @.str.9, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@s3c_pcm_dai = internal global [2 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.10, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @s3c_pcm_dai_probe, ptr null, ptr null, ptr null, ptr @s3c_pcm_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr null, i64 4, i32 2046, i32 0, i32 0, i32 2, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr null, i64 4, i32 2046, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 1, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.11, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @s3c_pcm_dai_probe, ptr null, ptr null, ptr null, ptr @s3c_pcm_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr null, i64 4, i32 2046, i32 0, i32 0, i32 2, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr null, i64 4, i32 2046, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 1, i32 0, i32 0 }], align 8
@.str.8 = private unnamed_addr constant [32 x i8] c"failed to get register DAI: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"s3c-pcm\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"samsung-pcm.0\00", align 1
@s3c_pcm_dai_ops = internal constant %struct.snd_soc_dai_ops { ptr @s3c_pcm_set_sysclk, ptr null, ptr @s3c_pcm_set_clkdiv, ptr null, ptr @s3c_pcm_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s3c_pcm_hw_params, ptr null, ptr null, ptr @s3c_pcm_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, align 4
@.str.11 = private unnamed_addr constant [14 x i8] c"samsung-pcm.1\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"Unsupported clock inversion!\0A\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"Unsupported master/slave format!\0A\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"Invalid Clock gating request!\0A\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"Unsupported data format!\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias236, ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_description234, ptr @__UNIQUE_ID_license235], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @s3c_pcm_driver, ptr noundef nonnull @__this_module) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @s3c_pcm_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3c_pcm_dev_probe(ptr noundef %0) #2 {
  %2 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store ptr null, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp ugt i32 %4, 1
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  br i1 %5, label %7, label %8

7:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.1, i32 noundef %4) #8
  br label %104

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %10, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = tail call i32 %13(ptr noundef %0) #7
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i32, ptr %3, align 4
  br label %21

20:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.2) #8
  br label %104

21:                                               ; preds = %18, %12, %8
  %22 = phi i32 [ %19, %18 ], [ %4, %12 ], [ %4, %8 ]
  %23 = getelementptr [2 x %struct.s3c_pcm_info], ptr @s3c_pcm, i32 0, i32 %22
  %24 = getelementptr [2 x %struct.s3c_pcm_info], ptr @s3c_pcm, i32 0, i32 %22, i32 1
  store ptr %6, ptr %24, align 4
  store i32 0, ptr %23, align 4
  %25 = getelementptr [2 x %struct.s3c_pcm_info], ptr @s3c_pcm, i32 0, i32 %22, i32 3
  store i32 128, ptr %25, align 4
  %26 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #7
  %27 = getelementptr [2 x %struct.s3c_pcm_info], ptr @s3c_pcm, i32 0, i32 %22, i32 2
  store ptr %26, ptr %27, align 4
  %28 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = ptrtoint ptr %26 to i32
  br label %104

31:                                               ; preds = %21
  %32 = call ptr @devm_clk_get(ptr noundef %6, ptr noundef nonnull @.str.3) #7
  %33 = getelementptr [2 x %struct.s3c_pcm_info], ptr @s3c_pcm, i32 0, i32 %22, i32 6
  store ptr %32, ptr %33, align 4
  %34 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.4) #8
  %36 = load ptr, ptr %33, align 4
  %37 = ptrtoint ptr %36 to i32
  br label %104

38:                                               ; preds = %31
  %39 = call i32 @clk_prepare(ptr noundef %32) #7
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %104

41:                                               ; preds = %38
  %42 = call i32 @clk_enable(ptr noundef %32) #7
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  call void @clk_unprepare(ptr noundef %32) #7
  br label %104

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %23, ptr %46, align 8
  %47 = call ptr @devm_clk_get(ptr noundef %6, ptr noundef nonnull @.str.5) #7
  %48 = getelementptr [2 x %struct.s3c_pcm_info], ptr @s3c_pcm, i32 0, i32 %22, i32 5
  store ptr %47, ptr %48, align 4
  %49 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.6) #8
  %51 = load ptr, ptr %48, align 4
  %52 = ptrtoint ptr %51 to i32
  br label %101

53:                                               ; preds = %45
  %54 = call i32 @clk_prepare(ptr noundef %47) #7
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %101

56:                                               ; preds = %53
  %57 = call i32 @clk_enable(ptr noundef %47) #7
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  call void @clk_unprepare(ptr noundef %47) #7
  br label %101

60:                                               ; preds = %56
  %61 = load ptr, ptr %2, align 4
  %62 = load i32, ptr %61, align 4
  %63 = add i32 %62, 12
  %64 = load i32, ptr %3, align 4
  %65 = getelementptr [2 x %struct.snd_dmaengine_dai_dma_data], ptr @s3c_pcm_stereo_in, i32 0, i32 %64
  store i32 %63, ptr %65, align 4
  %66 = load i32, ptr %61, align 4
  %67 = add i32 %66, 8
  %68 = load i32, ptr %3, align 4
  %69 = getelementptr [2 x %struct.snd_dmaengine_dai_dma_data], ptr @s3c_pcm_stereo_out, i32 0, i32 %68
  store i32 %67, ptr %69, align 4
  br i1 %11, label %81, label %70

70:                                               ; preds = %60
  %71 = getelementptr inbounds %struct.s3c_audio_pdata, ptr %10, i32 0, i32 3
  %72 = load ptr, ptr %71, align 4
  %73 = load i32, ptr %3, align 4
  %74 = getelementptr [2 x %struct.snd_dmaengine_dai_dma_data], ptr @s3c_pcm_stereo_in, i32 0, i32 %73, i32 3
  store ptr %72, ptr %74, align 4
  %75 = getelementptr inbounds %struct.s3c_audio_pdata, ptr %10, i32 0, i32 2
  %76 = load ptr, ptr %75, align 4
  %77 = load i32, ptr %3, align 4
  %78 = getelementptr [2 x %struct.snd_dmaengine_dai_dma_data], ptr @s3c_pcm_stereo_out, i32 0, i32 %77, i32 3
  store ptr %76, ptr %78, align 4
  %79 = getelementptr inbounds %struct.s3c_audio_pdata, ptr %10, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  br label %81

81:                                               ; preds = %70, %60
  %82 = phi ptr [ %80, %70 ], [ null, %60 ]
  %83 = load i32, ptr %3, align 4
  %84 = getelementptr [2 x %struct.snd_dmaengine_dai_dma_data], ptr @s3c_pcm_stereo_in, i32 0, i32 %83
  %85 = getelementptr [2 x %struct.s3c_pcm_info], ptr @s3c_pcm, i32 0, i32 %22, i32 8
  store ptr %84, ptr %85, align 4
  %86 = load i32, ptr %3, align 4
  %87 = getelementptr [2 x %struct.snd_dmaengine_dai_dma_data], ptr @s3c_pcm_stereo_out, i32 0, i32 %86
  %88 = getelementptr [2 x %struct.s3c_pcm_info], ptr @s3c_pcm, i32 0, i32 %22, i32 7
  store ptr %87, ptr %88, align 4
  %89 = call i32 @samsung_asoc_dma_platform_register(ptr noundef %6, ptr noundef %82, ptr noundef null, ptr noundef null, ptr noundef null) #7
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %81
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.7, i32 noundef %89) #8
  br label %98

92:                                               ; preds = %81
  call void @pm_runtime_enable(ptr noundef %6) #7
  %93 = load i32, ptr %3, align 4
  %94 = getelementptr [2 x %struct.snd_soc_dai_driver], ptr @s3c_pcm_dai, i32 0, i32 %93
  %95 = call i32 @devm_snd_soc_register_component(ptr noundef %6, ptr noundef nonnull @s3c_pcm_component, ptr noundef %94, i32 noundef 1) #7
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %104, label %97

97:                                               ; preds = %92
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.8, i32 noundef %95) #8
  call void @__pm_runtime_disable(ptr noundef %6, i1 noundef zeroext true) #7
  br label %98

98:                                               ; preds = %97, %91
  %99 = phi i32 [ %89, %91 ], [ %95, %97 ]
  %100 = load ptr, ptr %48, align 4
  call void @clk_disable(ptr noundef %100) #7
  call void @clk_unprepare(ptr noundef %100) #7
  br label %101

101:                                              ; preds = %98, %59, %53, %50
  %102 = phi i32 [ %52, %50 ], [ %99, %98 ], [ %57, %59 ], [ %54, %53 ]
  %103 = load ptr, ptr %33, align 4
  call void @clk_disable(ptr noundef %103) #7
  call void @clk_unprepare(ptr noundef %103) #7
  br label %104

104:                                              ; preds = %101, %92, %44, %38, %35, %29, %20, %7
  %105 = phi i32 [ -22, %7 ], [ -22, %20 ], [ %30, %29 ], [ %37, %35 ], [ %102, %101 ], [ 0, %92 ], [ %42, %44 ], [ %39, %38 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 %105
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3c_pcm_dev_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %4, i1 noundef zeroext true) #7
  %5 = getelementptr [2 x %struct.s3c_pcm_info], ptr @s3c_pcm, i32 0, i32 %3, i32 6
  %6 = load ptr, ptr %5, align 4
  tail call void @clk_disable(ptr noundef %6) #7
  tail call void @clk_unprepare(ptr noundef %6) #7
  %7 = getelementptr [2 x %struct.s3c_pcm_info], ptr @s3c_pcm, i32 0, i32 %3, i32 5
  %8 = load ptr, ptr %7, align 4
  tail call void @clk_disable(ptr noundef %8) #7
  tail call void @clk_unprepare(ptr noundef %8) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @samsung_asoc_dma_platform_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @s3c_pcm_dai_probe(ptr nocapture noundef %0) #5 {
  %2 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.s3c_pcm_info, ptr %5, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.s3c_pcm_info, ptr %5, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 7
  store ptr %7, ptr %10, align 4
  %11 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 8
  store ptr %9, ptr %11, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3c_pcm_set_sysclk(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.s3c_pcm_info, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  switch i32 %1, label %26 [
    i32 0, label %13
    i32 1, label %15
  ]

13:                                               ; preds = %4
  %14 = or i32 %12, 262144
  br label %24

15:                                               ; preds = %4
  %16 = and i32 %12, -262145
  %17 = getelementptr inbounds %struct.s3c_pcm_info, ptr %8, i32 0, i32 6
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @clk_get_rate(ptr noundef %18) #7
  %20 = icmp eq i32 %19, %2
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load ptr, ptr %17, align 4
  %23 = tail call i32 @clk_set_rate(ptr noundef %22, i32 noundef %2) #7
  br label %24

24:                                               ; preds = %21, %15, %13
  %25 = phi i32 [ %16, %21 ], [ %16, %15 ], [ %14, %13 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %25) #7, !srcloc !12
  br label %26

26:                                               ; preds = %24, %4
  %27 = phi i32 [ 0, %24 ], [ -22, %4 ]
  ret i32 %27
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @s3c_pcm_set_clkdiv(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #5 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.s3c_pcm_info, ptr %9, i32 0, i32 3
  store i32 %2, ptr %10, align 4
  br label %11

11:                                               ; preds = %5, %3
  %12 = phi i32 [ 0, %5 ], [ -22, %3 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3c_pcm_set_fmt(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.s3c_pcm_info, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #7
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  %11 = and i32 %1, 3840
  %12 = icmp eq i32 %11, 768
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.s3c_pcm_info, ptr %6, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.12) #8
  br label %42

16:                                               ; preds = %2
  %17 = and i32 %1, 61440
  %18 = icmp eq i32 %17, 16384
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.s3c_pcm_info, ptr %6, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.13) #8
  br label %42

22:                                               ; preds = %16
  %23 = trunc i32 %1 to i8
  %24 = and i8 %23, -16
  switch i8 %24, label %26 [
    i8 16, label %29
    i8 0, label %25
  ]

25:                                               ; preds = %22
  br label %29

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.s3c_pcm_info, ptr %6, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.14) #8
  br label %42

29:                                               ; preds = %25, %22
  %30 = phi i32 [ 0, %25 ], [ 1, %22 ]
  %31 = getelementptr inbounds %struct.s3c_pcm_info, ptr %6, i32 0, i32 4
  store i32 %30, ptr %31, align 4
  %32 = and i32 %1, 15
  switch i32 %32, label %37 [
    i32 4, label %33
    i32 5, label %35
  ]

33:                                               ; preds = %29
  %34 = or i32 %10, 24
  br label %40

35:                                               ; preds = %29
  %36 = and i32 %10, -25
  br label %40

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.s3c_pcm_info, ptr %6, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.15) #8
  br label %42

40:                                               ; preds = %35, %33
  %41 = phi i32 [ %36, %35 ], [ %34, %33 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %41) #7, !srcloc !12
  br label %42

42:                                               ; preds = %40, %37, %26, %19, %13
  %43 = phi i32 [ -22, %26 ], [ -22, %37 ], [ 0, %40 ], [ -22, %19 ], [ -22, %13 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %9) #7
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3c_pcm_hw_params(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #2 {
  %4 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.snd_soc_dai, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 8
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.s3c_pcm_info, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %23, %3
  %19 = phi i32 [ 0, %3 ], [ 32, %23 ]
  %20 = phi i32 [ %16, %3 ], [ %25, %23 ]
  %21 = tail call i32 @llvm.cttz.i32(i32 %20, i1 true) #7, !range !15
  %22 = or i32 %21, %19
  br label %27

23:                                               ; preds = %3
  %24 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %18

27:                                               ; preds = %23, %18
  %28 = phi i32 [ %22, %18 ], [ 0, %23 ]
  %29 = tail call i32 @snd_pcm_format_width(i32 noundef %28) #7
  %30 = icmp eq i32 %29, 16
  br i1 %30, label %31, label %56

31:                                               ; preds = %27
  %32 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #7
  %33 = getelementptr i8, ptr %14, i32 4
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !16
  %35 = and i32 %34, 262144
  %36 = icmp eq i32 %35, 0
  %37 = getelementptr inbounds %struct.s3c_pcm_info, ptr %12, i32 0, i32 5
  %38 = getelementptr inbounds %struct.s3c_pcm_info, ptr %12, i32 0, i32 6
  %39 = select i1 %36, ptr %38, ptr %37
  %40 = load ptr, ptr %39, align 4
  %41 = tail call i32 @clk_get_rate(ptr noundef %40) #7
  %42 = getelementptr inbounds %struct.s3c_pcm_info, ptr %12, i32 0, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = udiv i32 %41, %43
  %45 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 3
  %46 = load i32, ptr %45, align 4
  %47 = udiv i32 %44, %46
  %48 = and i32 %34, -262144
  %49 = shl i32 %47, 8
  %50 = add i32 %49, 261632
  %51 = and i32 %50, 261632
  %52 = add i32 %43, 511
  %53 = and i32 %52, 511
  %54 = or i32 %53, %48
  %55 = or i32 %54, %51
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !17
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %55) #7, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %32) #7
  br label %56

56:                                               ; preds = %31, %27
  %57 = phi i32 [ 0, %31 ], [ -22, %27 ]
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3c_pcm_trigger(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readnone %2) #2 {
  %4 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.snd_soc_dai, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 8
  %12 = load ptr, ptr %11, align 8
  switch i32 %1, label %77 [
    i32 1, label %13
    i32 6, label %13
    i32 4, label %13
    i32 0, label %34
    i32 5, label %34
    i32 3, label %34
  ]

13:                                               ; preds = %3, %3, %3
  %14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #7
  %15 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 1
  %18 = getelementptr inbounds %struct.s3c_pcm_info, ptr %12, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  br i1 %17, label %20, label %27

20:                                               ; preds = %13
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !18
  %22 = getelementptr i8, ptr %19, i32 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !19
  %24 = and i32 %21, -8100
  %25 = or i32 %24, 4131
  %26 = or i32 %23, 524288
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !20
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %26) #7, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %25) #7, !srcloc !12
  br label %75

27:                                               ; preds = %13
  %28 = getelementptr i8, ptr %19, i32 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !22
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !23
  %31 = and i32 %30, -516166
  %32 = or i32 %31, 32837
  %33 = or i32 %29, 524288
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !24
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %33) #7, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !25
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %32) #7, !srcloc !12
  br label %75

34:                                               ; preds = %3, %3, %3
  %35 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #7
  %36 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 1
  %39 = getelementptr inbounds %struct.s3c_pcm_info, ptr %12, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  br i1 %38, label %41, label %58

41:                                               ; preds = %34
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !18
  %43 = getelementptr i8, ptr %40, i32 4
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !19
  %45 = and i32 %42, -8099
  %46 = and i32 %42, 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %41
  %49 = and i32 %42, -8100
  %50 = getelementptr inbounds %struct.s3c_pcm_info, ptr %12, i32 0, i32 4
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  %53 = or i32 %44, 524288
  %54 = select i1 %52, i32 %53, i32 %44
  br label %55

55:                                               ; preds = %48, %41
  %56 = phi i32 [ %44, %41 ], [ %54, %48 ]
  %57 = phi i32 [ %45, %41 ], [ %49, %48 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !20
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %56) #7, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %57) #7, !srcloc !12
  br label %75

58:                                               ; preds = %34
  %59 = getelementptr i8, ptr %40, i32 4
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !22
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !23
  %62 = and i32 %61, -516165
  %63 = and i32 %61, 2
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %58
  %66 = and i32 %61, -516166
  %67 = getelementptr inbounds %struct.s3c_pcm_info, ptr %12, i32 0, i32 4
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, 0
  %70 = or i32 %60, 524288
  %71 = select i1 %69, i32 %70, i32 %60
  br label %72

72:                                               ; preds = %65, %58
  %73 = phi i32 [ %60, %58 ], [ %71, %65 ]
  %74 = phi i32 [ %62, %58 ], [ %66, %65 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !24
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %73) #7, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !25
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %74) #7, !srcloc !12
  br label %75

75:                                               ; preds = %72, %55, %27, %20
  %76 = phi i32 [ %14, %27 ], [ %14, %20 ], [ %35, %72 ], [ %35, %55 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %76) #7
  br label %77

77:                                               ; preds = %75, %3
  %78 = phi i32 [ -22, %3 ], [ 0, %75 ]
  ret i32 %78
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!9 = !{i64 1732533}
!10 = !{i64 2153684873}
!11 = !{i64 2153685091}
!12 = !{i64 1732115}
!13 = !{i64 2153681681}
!14 = !{i64 2153684424}
!15 = !{i32 0, i32 33}
!16 = !{i64 2153679254}
!17 = !{i64 2153679485}
!18 = !{i64 2153675493}
!19 = !{i64 2153675814}
!20 = !{i64 2153676111}
!21 = !{i64 2153676424}
!22 = !{i64 2153674116}
!23 = !{i64 2153674437}
!24 = !{i64 2153674736}
!25 = !{i64 2153675049}
