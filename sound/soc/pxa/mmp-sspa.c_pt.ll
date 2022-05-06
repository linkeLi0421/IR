; ModuleID = '/llk/IR/sound/soc/pxa/mmp-sspa.c_pt.bc'
source_filename = "../sound/soc/pxa/mmp-sspa.c"
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
%struct.snd_dmaengine_pcm_config = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], ptr, i32 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.88, ptr }
%union.anon.88 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.sspa_priv = type { ptr, ptr, %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data, ptr, ptr, ptr, i32, i32, i32 }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.9, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@mmp_sspa_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,mmp-sspa\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author233 = internal constant [34 x i8] c"author=Leo Yan <leoy@marvell.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description234 = internal constant [35 x i8] c"description=MMP SSPA SoC Interface\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias236 = internal constant [28 x i8] c"alias=platform:mmp-sspa-dai\00", section ".modinfo", align 1
@asoc_mmp_sspa_driver = internal global %struct.platform_driver { ptr @asoc_mmp_sspa_probe, ptr @asoc_mmp_sspa_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mmp_sspa_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [13 x i8] c"mmp-sspa-dai\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"bitclk\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"audio\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"mmp-audio\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"mmp-sysclk\00", align 1
@mmp_pcm_config = internal constant %struct.snd_dmaengine_pcm_config { ptr @snd_dmaengine_pcm_prepare_slave_config, ptr null, ptr null, ptr null, ptr null, [2 x ptr] zeroinitializer, ptr @mmp_pcm_hardware, i32 4096 }, align 4
@mmp_sspa_component = internal constant %struct.snd_soc_component_driver { ptr @.str.5, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mmp_sspa_open, ptr @mmp_sspa_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mmp_pcm_mmap, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@mmp_sspa_dai = internal global %struct.snd_soc_dai_driver { ptr null, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @mmp_sspa_probe, ptr null, ptr null, ptr null, ptr @mmp_sspa_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr null, i64 4294968325, i32 8190, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr null, i64 4294968325, i32 8190, i32 0, i32 0, i32 1, i32 128, i32 0 }, i8 0, i32 0, i32 0 }, align 8
@mmp_pcm_hardware = internal constant [2 x %struct.snd_pcm_hardware] [%struct.snd_pcm_hardware { i32 9175299, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 1024, i32 2048, i32 2, i32 32, i32 32 }, %struct.snd_pcm_hardware { i32 9175299, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 1024, i32 2048, i32 2, i32 32, i32 32 }], align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"mmp-sspa\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"can't change hardware dai format: stream is in use\0A\00", align 1
@mmp_sspa_dai_ops = internal constant %struct.snd_soc_dai_ops { ptr @mmp_sspa_set_dai_sysclk, ptr @mmp_sspa_set_dai_pll, ptr null, ptr null, ptr @mmp_sspa_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mmp_sspa_startup, ptr @mmp_sspa_shutdown, ptr @mmp_sspa_hw_params, ptr null, ptr null, ptr @mmp_sspa_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias236, ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_description234, ptr @__UNIQUE_ID_license235], section "llvm.metadata"

@__mod_of__mmp_sspa_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @mmp_sspa_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @asoc_mmp_sspa_driver, ptr noundef nonnull @__this_module) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @asoc_mmp_sspa_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @asoc_mmp_sspa_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 104, i32 noundef 3520) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %86, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %32, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #6
  %11 = getelementptr inbounds %struct.sspa_priv, ptr %3, i32 0, i32 1
  store ptr %10, ptr %11, align 4
  %12 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = ptrtoint ptr %10 to i32
  br label %86

15:                                               ; preds = %9
  %16 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 1) #6
  store ptr %16, ptr %3, align 4
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = ptrtoint ptr %16 to i32
  br label %86

20:                                               ; preds = %15
  %21 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.1) #6
  %22 = getelementptr inbounds %struct.sspa_priv, ptr %3, i32 0, i32 4
  store ptr %21, ptr %22, align 4
  %23 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = ptrtoint ptr %21 to i32
  br label %86

26:                                               ; preds = %20
  %27 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.2) #6
  %28 = getelementptr inbounds %struct.sspa_priv, ptr %3, i32 0, i32 5
  store ptr %27, ptr %28, align 4
  %29 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %30, label %63

30:                                               ; preds = %26
  %31 = ptrtoint ptr %27 to i32
  br label %86

32:                                               ; preds = %5
  %33 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 256, i32 noundef 0) #6
  %34 = icmp eq ptr %33, null
  br i1 %34, label %86, label %35

35:                                               ; preds = %32
  %36 = load i32, ptr %33, align 4
  %37 = tail call ptr @devm_ioremap(ptr noundef %2, i32 noundef %36, i32 noundef 48) #6
  %38 = getelementptr inbounds %struct.sspa_priv, ptr %3, i32 0, i32 1
  store ptr %37, ptr %38, align 4
  %39 = icmp eq ptr %37, null
  br i1 %39, label %86, label %40

40:                                               ; preds = %35
  %41 = load i32, ptr %33, align 4
  %42 = add i32 %41, 128
  %43 = tail call ptr @devm_ioremap(ptr noundef %2, i32 noundef %42, i32 noundef 48) #6
  store ptr %43, ptr %3, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %86, label %45

45:                                               ; preds = %40
  %46 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #6
  %47 = getelementptr inbounds %struct.sspa_priv, ptr %3, i32 0, i32 4
  store ptr %46, ptr %47, align 4
  %48 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = ptrtoint ptr %46 to i32
  br label %86

51:                                               ; preds = %45
  %52 = tail call ptr @clk_get(ptr noundef null, ptr noundef nonnull @.str.3) #6
  %53 = getelementptr inbounds %struct.sspa_priv, ptr %3, i32 0, i32 5
  store ptr %52, ptr %53, align 4
  %54 = icmp ugt ptr %52, inttoptr (i32 -4096 to ptr)
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = ptrtoint ptr %52 to i32
  br label %86

57:                                               ; preds = %51
  %58 = tail call ptr @clk_get(ptr noundef null, ptr noundef nonnull @.str.4) #6
  %59 = getelementptr inbounds %struct.sspa_priv, ptr %3, i32 0, i32 6
  store ptr %58, ptr %59, align 4
  %60 = icmp ugt ptr %58, inttoptr (i32 -4096 to ptr)
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  tail call void @clk_put(ptr noundef %52) #6
  %62 = ptrtoint ptr %58 to i32
  br label %86

63:                                               ; preds = %57, %26
  %64 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %64, align 8
  %65 = getelementptr inbounds %struct.sspa_priv, ptr %3, i32 0, i32 2
  %66 = getelementptr inbounds %struct.sspa_priv, ptr %3, i32 0, i32 2, i32 2
  store i32 4, ptr %66, align 4
  %67 = getelementptr inbounds %struct.sspa_priv, ptr %3, i32 0, i32 3
  %68 = getelementptr inbounds %struct.sspa_priv, ptr %3, i32 0, i32 3, i32 2
  store i32 4, ptr %68, align 4
  store i32 0, ptr %67, align 4
  store i32 128, ptr %65, align 4
  %69 = load ptr, ptr %6, align 8
  %70 = icmp eq ptr %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %63
  %72 = tail call i32 @devm_snd_dmaengine_pcm_register(ptr noundef %2, ptr noundef nonnull @mmp_pcm_config, i32 noundef 0) #6
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %71, %63
  %75 = tail call i32 @devm_snd_soc_register_component(ptr noundef %2, ptr noundef nonnull @mmp_sspa_component, ptr noundef nonnull @mmp_sspa_dai, i32 noundef 1) #6
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %74
  tail call void @pm_runtime_enable(ptr noundef %2) #6
  %78 = getelementptr inbounds %struct.sspa_priv, ptr %3, i32 0, i32 5
  %79 = load ptr, ptr %78, align 4
  %80 = tail call i32 @clk_prepare(ptr noundef %79) #6
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = tail call i32 @clk_enable(ptr noundef %79) #6
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %82
  tail call void @clk_unprepare(ptr noundef %79) #6
  br label %86

86:                                               ; preds = %85, %82, %77, %74, %71, %61, %55, %49, %40, %35, %32, %30, %24, %18, %13, %1
  %87 = phi i32 [ %14, %13 ], [ %19, %18 ], [ %25, %24 ], [ %31, %30 ], [ -12, %1 ], [ %72, %71 ], [ %75, %74 ], [ 0, %77 ], [ 0, %82 ], [ 0, %85 ], [ -12, %40 ], [ -12, %35 ], [ -19, %32 ], [ %62, %61 ], [ %56, %55 ], [ %50, %49 ]
  ret i32 %87
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @asoc_mmp_sspa_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sspa_priv, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %6, i1 noundef zeroext true) #6
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load ptr, ptr %4, align 4
  tail call void @clk_put(ptr noundef %11) #6
  %12 = getelementptr inbounds %struct.sspa_priv, ptr %3, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  tail call void @clk_put(ptr noundef %13) #6
  br label %14

14:                                               ; preds = %10, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_dmaengine_pcm_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dmaengine_pcm_prepare_slave_config(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmp_sspa_open(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #6
  %8 = load ptr, ptr %6, align 4
  %9 = getelementptr i8, ptr %8, i32 12
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !8
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.sspa_priv, ptr %6, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 12
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #6, !srcloc !8
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %13, %2
  %21 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.6) #7
  br label %48

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.sspa_priv, ptr %6, i32 0, i32 8
  %24 = load i32, ptr %23, align 4
  %25 = load ptr, ptr %6, align 4
  %26 = getelementptr i8, ptr %25, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #6, !srcloc !9
  %27 = load i32, ptr %23, align 4
  %28 = load ptr, ptr %14, align 4
  %29 = getelementptr i8, ptr %28, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #6, !srcloc !9
  %30 = load i32, ptr %23, align 4
  %31 = and i32 %30, -7
  store i32 %31, ptr %23, align 4
  %32 = load ptr, ptr %6, align 4
  %33 = getelementptr i8, ptr %32, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #6, !srcloc !9
  %34 = load i32, ptr %23, align 4
  %35 = load ptr, ptr %14, align 4
  %36 = getelementptr i8, ptr %35, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #6, !srcloc !9
  %37 = load i32, ptr %23, align 4
  %38 = and i32 %37, -262145
  %39 = load ptr, ptr %6, align 4
  %40 = getelementptr i8, ptr %39, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #6, !srcloc !9
  %41 = getelementptr inbounds %struct.sspa_priv, ptr %6, i32 0, i32 9
  %42 = load i32, ptr %41, align 4
  %43 = load ptr, ptr %6, align 4
  %44 = getelementptr i8, ptr %43, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %42) #6, !srcloc !9
  %45 = load i32, ptr %41, align 4
  %46 = load ptr, ptr %14, align 4
  %47 = getelementptr i8, ptr %46, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %45) #6, !srcloc !9
  br label %48

48:                                               ; preds = %22, %20
  %49 = phi i32 [ -16, %20 ], [ 0, %22 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmp_sspa_close(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @__pm_runtime_idle(ptr noundef %4, i32 noundef 4) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmp_pcm_mmap(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 8
  %5 = load i32, ptr %4, align 4
  %6 = or i32 %5, 67371008
  store i32 %6, ptr %4, align 4
  %7 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, -61
  store i32 %9, ptr %7, align 4
  %10 = load i32, ptr %2, align 4
  %11 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 8, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = lshr i32 %12, 12
  %14 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = sub i32 %15, %10
  %17 = tail call i32 @remap_pfn_range(ptr noundef %2, i32 noundef %10, i32 noundef %13, i32 noundef %16, i32 noundef %9) #6
  ret i32 %17
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_pfn_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @mmp_sspa_probe(ptr nocapture noundef %0) #4 {
  %2 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sspa_priv, ptr %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.sspa_priv, ptr %5, i32 0, i32 3
  %8 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 7
  store ptr %6, ptr %8, align 4
  %9 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 8
  store ptr %7, ptr %9, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmp_sspa_set_dai_sysclk(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_soc_component, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 25
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = icmp eq i32 %1, 3
  br i1 %17, label %18, label %22

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.sspa_priv, ptr %8, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @clk_set_rate(ptr noundef %20, i32 noundef %2) #6
  br label %22

22:                                               ; preds = %18, %16, %4
  %23 = phi i32 [ -524, %4 ], [ %21, %18 ], [ -22, %16 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmp_sspa_set_dai_pll(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 12
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.snd_soc_component, ptr %11, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 25
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %5
  switch i32 %1, label %29 [
    i32 0, label %18
    i32 1, label %23
  ]

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.sspa_priv, ptr %9, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @clk_set_rate(ptr noundef %20, i32 noundef %4) #6
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %29

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.sspa_priv, ptr %9, i32 0, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @clk_set_rate(ptr noundef %25, i32 noundef %4) #6
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %18
  br label %29

29:                                               ; preds = %28, %23, %18, %17, %5
  %30 = phi i32 [ 0, %28 ], [ -524, %5 ], [ %21, %18 ], [ %26, %23 ], [ -19, %17 ]
  ret i32 %30
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @mmp_sspa_set_dai_fmt(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.sspa_priv, ptr %6, i32 0, i32 8
  store i32 -2147483642, ptr %7, align 4
  %8 = getelementptr inbounds %struct.sspa_priv, ptr %6, i32 0, i32 9
  store i32 0, ptr %8, align 4
  %9 = trunc i32 %1 to i16
  %10 = and i16 %9, -4096
  switch i16 %10, label %20 [
    i16 16384, label %11
    i16 4096, label %12
  ]

11:                                               ; preds = %2
  store i32 -2147221498, ptr %7, align 4
  br label %12

12:                                               ; preds = %11, %2
  %13 = phi i32 [ -2147418106, %2 ], [ -2147155962, %11 ]
  %14 = and i32 %1, 3840
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  store i32 %13, ptr %7, align 4
  %17 = and i32 %1, 15
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 524288, ptr %8, align 4
  br label %20

20:                                               ; preds = %19, %16, %12, %2
  %21 = phi i32 [ 0, %19 ], [ -22, %2 ], [ -22, %12 ], [ -22, %16 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmp_sspa_startup(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.sspa_priv, ptr %6, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @clk_prepare(ptr noundef %8) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = tail call i32 @clk_enable(ptr noundef %8) #6
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call void @clk_unprepare(ptr noundef %8) #6
  br label %15

15:                                               ; preds = %14, %11, %2
  %16 = getelementptr inbounds %struct.sspa_priv, ptr %6, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @clk_prepare(ptr noundef %17) #6
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = tail call i32 @clk_enable(ptr noundef %17) #6
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  tail call void @clk_unprepare(ptr noundef %17) #6
  br label %24

24:                                               ; preds = %23, %20, %15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mmp_sspa_shutdown(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.sspa_priv, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  tail call void @clk_disable(ptr noundef %8) #6
  tail call void @clk_unprepare(ptr noundef %8) #6
  %9 = getelementptr inbounds %struct.sspa_priv, ptr %6, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  tail call void @clk_disable(ptr noundef %10) #6
  tail call void @clk_unprepare(ptr noundef %10) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmp_sspa_hw_params(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #2 {
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 12
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.snd_soc_component, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.sspa_priv, ptr %7, i32 0, i32 9
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %17, %3
  %22 = phi i32 [ 0, %3 ], [ 32, %17 ]
  %23 = phi i32 [ %15, %3 ], [ %19, %17 ]
  %24 = tail call i32 @llvm.cttz.i32(i32 %23, i1 true) #6, !range !10
  %25 = or i32 %24, %22
  switch i32 %25, label %88 [
    i32 0, label %29
    i32 2, label %26
    i32 32, label %27
    i32 10, label %28
  ]

26:                                               ; preds = %21
  br label %29

27:                                               ; preds = %21
  br label %29

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28, %27, %26, %21, %17
  %30 = phi i32 [ 32, %28 ], [ 24, %27 ], [ 16, %26 ], [ 8, %21 ], [ 8, %17 ]
  %31 = phi i32 [ 5, %28 ], [ 4, %27 ], [ 2, %26 ], [ %25, %21 ], [ 0, %17 ]
  %32 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 25
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = and i32 %13, 2147483647
  %37 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 2
  br i1 %39, label %40, label %42

40:                                               ; preds = %35, %29
  %41 = or i32 %13, -2147483648
  br label %42

42:                                               ; preds = %40, %35
  %43 = phi i32 [ %41, %40 ], [ %36, %35 ]
  %44 = and i32 %43, -15139048
  %45 = shl nuw nsw i32 %31, 5
  %46 = or i32 %44, %45
  %47 = shl nuw nsw i32 %31, 21
  %48 = or i32 %46, %47
  %49 = or i32 %48, %31
  %50 = shl nuw nsw i32 %31, 16
  %51 = or i32 %49, %50
  %52 = getelementptr inbounds %struct.sspa_priv, ptr %7, i32 0, i32 8
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %53, -66061297
  %55 = shl nuw nsw i32 %30, 20
  %56 = add nsw i32 %55, -1048576
  %57 = shl nuw nsw i32 %30, 5
  %58 = add nsw i32 %57, -16
  %59 = or i32 %58, %56
  %60 = or i32 %59, %54
  store i32 %60, ptr %52, align 4
  %61 = load ptr, ptr %32, align 8
  %62 = icmp eq ptr %61, null
  br i1 %62, label %73, label %63

63:                                               ; preds = %42
  %64 = getelementptr inbounds %struct.sspa_priv, ptr %7, i32 0, i32 4
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 3
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 2
  %69 = load i32, ptr %68, align 4
  %70 = mul i32 %67, %30
  %71 = mul i32 %70, %69
  %72 = tail call i32 @clk_set_rate(ptr noundef %65, i32 noundef %71) #6
  br label %73

73:                                               ; preds = %63, %42
  %74 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = load ptr, ptr %7, align 4
  %79 = getelementptr i8, ptr %78, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %51) #6, !srcloc !9
  %80 = load ptr, ptr %7, align 4
  %81 = getelementptr i8, ptr %80, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 1) #6, !srcloc !9
  br label %88

82:                                               ; preds = %73
  %83 = getelementptr inbounds %struct.sspa_priv, ptr %7, i32 0, i32 1
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr i8, ptr %84, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 %51) #6, !srcloc !9
  %86 = load ptr, ptr %83, align 4
  %87 = getelementptr i8, ptr %86, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 0) #6, !srcloc !9
  br label %88

88:                                               ; preds = %82, %77, %21
  %89 = phi i32 [ -22, %21 ], [ 0, %82 ], [ 0, %77 ]
  ret i32 %89
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmp_sspa_trigger(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  switch i32 %1, label %59 [
    i32 1, label %8
    i32 6, label %8
    i32 4, label %8
    i32 0, label %33
    i32 5, label %33
    i32 3, label %33
  ]

8:                                                ; preds = %3, %3, %3
  %9 = getelementptr inbounds %struct.sspa_priv, ptr %7, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.sspa_priv, ptr %7, i32 0, i32 8
  %14 = load i32, ptr %13, align 4
  %15 = or i32 %14, -2147483647
  %16 = getelementptr inbounds %struct.sspa_priv, ptr %7, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %15) #6, !srcloc !9
  br label %19

19:                                               ; preds = %12, %8
  %20 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.sspa_priv, ptr %7, i32 0, i32 8
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 2147221502
  %27 = or i32 %26, -2147483647
  %28 = load ptr, ptr %7, align 4
  %29 = getelementptr i8, ptr %28, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #6, !srcloc !9
  br label %30

30:                                               ; preds = %23, %19
  %31 = load i32, ptr %9, align 4
  %32 = add i32 %31, 1
  store i32 %32, ptr %9, align 4
  br label %59

33:                                               ; preds = %3, %3, %3
  %34 = getelementptr inbounds %struct.sspa_priv, ptr %7, i32 0, i32 7
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, -1
  store i32 %36, ptr %34, align 4
  %37 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.sspa_priv, ptr %7, i32 0, i32 8
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, 2147221502
  %44 = or i32 %43, -2147483648
  %45 = load ptr, ptr %7, align 4
  %46 = getelementptr i8, ptr %45, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %44) #6, !srcloc !9
  %47 = load i32, ptr %34, align 4
  br label %48

48:                                               ; preds = %40, %33
  %49 = phi i32 [ %47, %40 ], [ %36, %33 ]
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.sspa_priv, ptr %7, i32 0, i32 8
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %53, 2147483646
  %55 = or i32 %54, -2147483648
  %56 = getelementptr inbounds %struct.sspa_priv, ptr %7, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr i8, ptr %57, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %55) #6, !srcloc !9
  br label %59

59:                                               ; preds = %51, %48, %30, %3
  %60 = phi i32 [ 0, %48 ], [ 0, %51 ], [ 0, %30 ], [ -22, %3 ]
  ret i32 %60
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
!8 = !{i64 3783965}
!9 = !{i64 3783547}
!10 = !{i32 0, i32 33}
