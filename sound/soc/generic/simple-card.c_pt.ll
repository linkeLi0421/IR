; ModuleID = '/llk/IR/sound/soc/generic/simple-card.c_pt.bc'
source_filename = "../sound/soc/generic/simple-card.c"
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
%struct.snd_soc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [80 x i8], [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.link_info = type { i32, i32, [512 x %struct.prop_nums] }
%struct.prop_nums = type { i32, i32, i32, i32 }
%struct.asoc_simple_priv = type { %struct.snd_soc_card, ptr, %struct.asoc_simple_jack, %struct.asoc_simple_jack, ptr, ptr, ptr, %struct.snd_soc_dai_link_component, ptr, ptr, ptr, ptr, i8 }
%struct.asoc_simple_jack = type { %struct.snd_soc_jack, %struct.snd_soc_jack_pin, %struct.snd_soc_jack_gpio }
%struct.snd_soc_jack = type { %struct.mutex, ptr, ptr, %struct.list_head, i32, %struct.blocking_notifier_head, %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.snd_soc_jack_pin = type { %struct.list_head, ptr, i32, i8 }
%struct.snd_soc_jack_gpio = type { i32, i32, ptr, ptr, i32, i32, i32, i8, ptr, %struct.delayed_work, %struct.notifier_block, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.snd_soc_dai_link_component = type { ptr, ptr, ptr }
%struct.asoc_simple_card_info = type { ptr, ptr, ptr, ptr, i32, %struct.asoc_simple_dai, %struct.asoc_simple_dai }
%struct.asoc_simple_dai = type { ptr, i32, i32, i32, i32, i32, i32, ptr }
%struct.snd_soc_dai_link = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i24 }
%struct.simple_dai_props = type { ptr, ptr, ptr, ptr, ptr, %struct.asoc_simple_data, ptr, ptr, %struct.prop_nums, i32 }
%struct.asoc_simple_data = type { i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@simple_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"simple-audio-card\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"simple-scu-audio-card\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_alias230 = internal constant [32 x i8] c"alias=platform:asoc-simple-card\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description232 = internal constant [35 x i8] c"description=ASoC Simple Sound Card\00", section ".modinfo", align 1
@__UNIQUE_ID_author233 = internal constant [60 x i8] c"author=Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>\00", section ".modinfo", align 1
@asoc_simple_card = internal global %struct.platform_driver { ptr @asoc_simple_probe, ptr @asoc_simple_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @simple_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_soc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [17 x i8] c"asoc-simple-card\00", align 1
@snd_soc_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"simple-card\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"parse error\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"no info for asoc-simple-card\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"insufficient asoc_simple_card_info settings\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"simple-audio-card,\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"simple-audio-card,dai-link\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"simple-audio-card,codec\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"codec\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"simple-audio-card,plat\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"plat\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"too many links\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"simple-audio-card,aux-devs\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"%splat\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"%smclk-fs\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"sound-dai\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"#sound-dai-cells\00", align 1
@simple_ops = internal constant %struct.snd_soc_ops { ptr @asoc_simple_startup, ptr @asoc_simple_shutdown, ptr @asoc_simple_hw_params, ptr null, ptr null, ptr null }, align 4
@.str.19 = private unnamed_addr constant [6 x i8] c"fe.%s\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"be.%s\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"simple-audio-card,prefix\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"prefix\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias230, ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_license231], section "llvm.metadata"

@__mod_of__simple_of_match_device_table = dso_local alias [3 x %struct.of_device_id], ptr @simple_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @asoc_simple_card, ptr noundef nonnull @__this_module) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @asoc_simple_card) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @asoc_simple_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 932, i32 noundef 3520) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %122, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.snd_soc_card, ptr %5, i32 0, i32 8
  store ptr @__this_module, ptr %8, align 4
  %9 = getelementptr inbounds %struct.snd_soc_card, ptr %5, i32 0, i32 6
  store ptr %2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.snd_soc_card, ptr %5, i32 0, i32 13
  store ptr @simple_soc_probe, ptr %10, align 4
  %11 = getelementptr inbounds %struct.snd_soc_card, ptr %5, i32 0, i32 2
  store ptr @.str.1, ptr %11, align 4
  %12 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 8200, i32 noundef 3520) #9
  %13 = icmp eq ptr %12, null
  br i1 %13, label %122, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.link_info, ptr %12, i32 0, i32 2
  store i32 1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.link_info, ptr %12, i32 0, i32 2, i32 0, i32 1
  store i32 1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.link_info, ptr %12, i32 0, i32 2, i32 0, i32 2
  store i32 1, ptr %21, align 4
  store i32 1, ptr %12, align 4
  br label %28

22:                                               ; preds = %14
  %23 = tail call fastcc i32 @simple_for_each_link(ptr noundef nonnull %5, ptr noundef nonnull %12, ptr noundef nonnull @simple_count_noml, ptr noundef nonnull @simple_count_dpcm) #9
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %122, label %25

25:                                               ; preds = %22
  %26 = load i32, ptr %12, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %122, label %28

28:                                               ; preds = %25, %18
  %29 = tail call i32 @asoc_simple_init_priv(ptr noundef nonnull %5, ptr noundef nonnull %12) #9
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %122, label %31

31:                                               ; preds = %28
  %32 = icmp eq ptr %4, null
  br i1 %32, label %56, label %33

33:                                               ; preds = %31
  %34 = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %4) #9
  br i1 %34, label %35, label %56

35:                                               ; preds = %33
  %36 = tail call i32 @asoc_simple_parse_widgets(ptr noundef nonnull %5, ptr noundef nonnull @.str.5) #9
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %53, label %38

38:                                               ; preds = %35
  %39 = tail call i32 @asoc_simple_parse_routing(ptr noundef nonnull %5, ptr noundef nonnull @.str.5) #9
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %38
  %42 = tail call i32 @asoc_simple_parse_pin_switches(ptr noundef nonnull %5, ptr noundef nonnull @.str.5) #9
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %41
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(8200) %12, i8 0, i32 8200, i1 false) #9
  %45 = tail call fastcc i32 @simple_for_each_link(ptr noundef nonnull %5, ptr noundef nonnull %12, ptr noundef nonnull @simple_dai_link_of, ptr noundef nonnull @simple_dai_link_of_dpcm) #9
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %44
  %48 = tail call i32 @asoc_simple_parse_card_name(ptr noundef nonnull %5, ptr noundef nonnull @.str.5) #9
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = tail call i32 @snd_soc_of_parse_aux_devs(ptr noundef nonnull %5, ptr noundef nonnull @.str.12) #9
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %114

53:                                               ; preds = %50, %47, %44, %41, %38, %35
  %54 = phi i32 [ %51, %50 ], [ %48, %47 ], [ %45, %44 ], [ %42, %41 ], [ %39, %38 ], [ %36, %35 ]
  %55 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %2, i32 noundef %54, ptr noundef nonnull @.str.2) #9
  br label %119

56:                                               ; preds = %33, %31
  %57 = getelementptr inbounds %struct.asoc_simple_priv, ptr %5, i32 0, i32 4
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.asoc_simple_priv, ptr %5, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3) #10
  br label %122

65:                                               ; preds = %56
  %66 = load ptr, ptr %62, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %84, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.asoc_simple_card_info, ptr %62, i32 0, i32 6
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %84, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.asoc_simple_card_info, ptr %62, i32 0, i32 2
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %84, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.asoc_simple_card_info, ptr %62, i32 0, i32 3
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.asoc_simple_card_info, ptr %62, i32 0, i32 5
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %80, %76, %72, %68, %65
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4) #10
  br label %122

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %58, i32 0, i32 2
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %87, i32 0, i32 2
  store ptr %82, ptr %88, align 4
  %89 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %58, i32 0, i32 4
  %90 = load ptr, ptr %89, align 4
  %91 = load ptr, ptr %73, align 4
  store ptr %91, ptr %90, align 4
  %92 = load ptr, ptr %69, align 4
  %93 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %90, i32 0, i32 2
  store ptr %92, ptr %93, align 4
  %94 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %58, i32 0, i32 6
  %95 = load ptr, ptr %94, align 4
  %96 = load ptr, ptr %77, align 4
  store ptr %96, ptr %95, align 4
  %97 = getelementptr inbounds %struct.asoc_simple_card_info, ptr %62, i32 0, i32 1
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %102

100:                                              ; preds = %85
  %101 = load ptr, ptr %62, align 4
  br label %102

102:                                              ; preds = %100, %85
  %103 = phi ptr [ %101, %100 ], [ %98, %85 ]
  store ptr %103, ptr %5, align 4
  %104 = load ptr, ptr %62, align 4
  store ptr %104, ptr %58, align 4
  %105 = load ptr, ptr %62, align 4
  %106 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %58, i32 0, i32 1
  store ptr %105, ptr %106, align 4
  %107 = getelementptr inbounds %struct.asoc_simple_card_info, ptr %62, i32 0, i32 4
  %108 = load i32, ptr %107, align 4
  %109 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %58, i32 0, i32 11
  store i32 %108, ptr %109, align 4
  %110 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %58, i32 0, i32 13
  store ptr @asoc_simple_dai_init, ptr %110, align 4
  %111 = load ptr, ptr %60, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(32) %111, ptr noundef align 4 dereferenceable(32) %81, i32 32, i1 false)
  %112 = getelementptr inbounds %struct.simple_dai_props, ptr %60, i32 0, i32 1
  %113 = load ptr, ptr %112, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(32) %113, ptr noundef align 4 dereferenceable(32) %69, i32 32, i1 false)
  br label %114

114:                                              ; preds = %102, %50
  %115 = getelementptr inbounds %struct.snd_soc_card, ptr %5, i32 0, i32 58
  store ptr %5, ptr %115, align 4
  %116 = tail call i32 @devm_snd_soc_register_card(ptr noundef %2, ptr noundef nonnull %5) #9
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %114
  tail call void @devm_kfree(ptr noundef %2, ptr noundef nonnull %12) #9
  br label %122

119:                                              ; preds = %114, %53
  %120 = phi i32 [ %54, %53 ], [ %116, %114 ]
  %121 = tail call i32 @asoc_simple_clean_reference(ptr noundef nonnull %5) #9
  br label %122

122:                                              ; preds = %119, %118, %84, %64, %28, %25, %22, %7, %1
  %123 = phi i32 [ %120, %119 ], [ 0, %118 ], [ -12, %1 ], [ -12, %7 ], [ %23, %22 ], [ -22, %25 ], [ %29, %28 ], [ -22, %84 ], [ -22, %64 ]
  ret i32 %123
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_remove(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @simple_soc_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 58
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.asoc_simple_priv, ptr %3, i32 0, i32 2
  %5 = tail call i32 @asoc_simple_init_jack(ptr noundef %0, ptr noundef %4, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef null) #9
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.asoc_simple_priv, ptr %3, i32 0, i32 3
  %9 = tail call i32 @asoc_simple_init_jack(ptr noundef %0, ptr noundef %8, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef null) #9
  %10 = tail call i32 @llvm.smin.i32(i32 %9, i32 0)
  br label %11

11:                                               ; preds = %7, %1
  %12 = phi i32 [ %5, %1 ], [ %10, %7 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_init_priv(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_dai_init(ptr noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_card(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_clean_reference(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_init_jack(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @simple_for_each_link(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #2 {
  %5 = alloca %struct.asoc_simple_data, align 8
  %6 = getelementptr inbounds %struct.link_info, ptr %1, i32 0, i32 1
  store i32 1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 6
  %8 = getelementptr inbounds %struct.asoc_simple_data, ptr %5, i32 0, i32 1
  br label %9

9:                                                ; preds = %96, %4
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 25
  %12 = load ptr, ptr %11, align 8
  %13 = call ptr @of_device_get_match_data(ptr noundef %10) #9
  %14 = call ptr @of_get_child_by_name(ptr noundef %12, ptr noundef nonnull @.str.6) #9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = call ptr @of_node_get(ptr noundef %12) #9
  br label %18

18:                                               ; preds = %16, %9
  %19 = phi ptr [ @.str.9, %16 ], [ @.str.10, %9 ]
  %20 = phi ptr [ @.str.7, %16 ], [ @.str.8, %9 ]
  %21 = phi ptr [ %17, %16 ], [ %14, %9 ]
  %22 = icmp eq ptr %13, null
  %23 = xor i1 %15, true
  br label %24

24:                                               ; preds = %89, %18
  %25 = phi ptr [ %21, %18 ], [ %91, %89 ]
  %26 = phi i32 [ 0, %18 ], [ %90, %89 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  store i64 0, ptr %5, align 8, !annotation !8
  %27 = call ptr @of_get_next_child(ptr noundef %25, ptr noundef null) #9
  %28 = icmp eq ptr %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %29, %24
  %30 = phi i32 [ %32, %29 ], [ 0, %24 ]
  %31 = phi ptr [ %33, %29 ], [ %27, %24 ]
  %32 = add i32 %30, 1
  %33 = call ptr @of_get_next_child(ptr noundef %25, ptr noundef nonnull %31) #9
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %29

35:                                               ; preds = %29, %24
  %36 = phi i32 [ 0, %24 ], [ %32, %29 ]
  %37 = call ptr @of_get_child_by_name(ptr noundef %25, ptr noundef nonnull %20) #9
  %38 = icmp eq ptr %37, null
  br i1 %38, label %87, label %39

39:                                               ; preds = %35
  %40 = call ptr @of_get_child_by_name(ptr noundef %25, ptr noundef nonnull %19) #9
  store i64 0, ptr %5, align 8
  %41 = call ptr @of_get_next_child(ptr noundef %25, ptr noundef null) #9
  %42 = icmp eq ptr %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %43, %39
  %44 = phi ptr [ %47, %43 ], [ %41, %39 ]
  %45 = load ptr, ptr %11, align 8
  %46 = call ptr @of_get_parent(ptr noundef nonnull %44) #9
  call void @asoc_simple_parse_convert(ptr noundef %45, ptr noundef nonnull @.str.5, ptr noundef nonnull %5) #9
  call void @asoc_simple_parse_convert(ptr noundef %46, ptr noundef nonnull @.str.5, ptr noundef nonnull %5) #9
  call void @asoc_simple_parse_convert(ptr noundef %46, ptr noundef null, ptr noundef nonnull %5) #9
  call void @asoc_simple_parse_convert(ptr noundef nonnull %44, ptr noundef null, ptr noundef nonnull %5) #9
  call void @of_node_put(ptr noundef %46) #9
  %47 = call ptr @of_get_next_child(ptr noundef %25, ptr noundef nonnull %44) #9
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %43

49:                                               ; preds = %43, %39
  %50 = call ptr @of_get_next_child(ptr noundef %25, ptr noundef null) #9
  %51 = icmp eq ptr %50, null
  br i1 %51, label %89, label %52

52:                                               ; preds = %49
  %53 = icmp sgt i32 %36, 2
  br label %54

54:                                               ; preds = %83, %52
  %55 = phi ptr [ %50, %52 ], [ %85, %83 ]
  %56 = phi i32 [ %26, %52 ], [ %84, %83 ]
  %57 = icmp eq ptr %40, %55
  br i1 %57, label %83, label %58

58:                                               ; preds = %54
  br i1 %22, label %71, label %59

59:                                               ; preds = %58
  %60 = load i32, ptr %5, align 8
  %61 = icmp ne i32 %60, 0
  %62 = select i1 %53, i1 true, i1 %61
  %63 = load i32, ptr %8, align 4
  %64 = icmp ne i32 %63, 0
  %65 = select i1 %62, i1 true, i1 %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %59
  %67 = load i32, ptr %6, align 4
  %68 = icmp eq ptr %55, %37
  %69 = zext i1 %68 to i32
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %79, label %76

71:                                               ; preds = %59, %58
  %72 = load i32, ptr %6, align 4
  %73 = icmp eq i32 %72, 0
  %74 = icmp eq ptr %55, %37
  %75 = select i1 %73, i1 true, i1 %74
  br i1 %75, label %79, label %76

76:                                               ; preds = %71, %66
  %77 = phi ptr [ %3, %66 ], [ %2, %71 ]
  %78 = call i32 %77(ptr noundef %0, ptr noundef nonnull %55, ptr noundef nonnull %37, ptr noundef %1, i1 noundef zeroext %15) #9
  br label %79

79:                                               ; preds = %76, %71, %66
  %80 = phi i32 [ %56, %66 ], [ %56, %71 ], [ %78, %76 ]
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  call void @of_node_put(ptr noundef nonnull %37) #9
  call void @of_node_put(ptr noundef nonnull %55) #9
  br label %87

83:                                               ; preds = %79, %54
  %84 = phi i32 [ %56, %54 ], [ %80, %79 ]
  %85 = call ptr @of_get_next_child(ptr noundef %25, ptr noundef nonnull %55) #9
  %86 = icmp eq ptr %85, null
  br i1 %86, label %89, label %54

87:                                               ; preds = %82, %35
  %88 = phi i32 [ %80, %82 ], [ -19, %35 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  call void @of_node_put(ptr noundef %25) #9
  br label %100

89:                                               ; preds = %83, %49
  %90 = phi i32 [ %26, %49 ], [ %84, %83 ]
  call void @of_node_put(ptr noundef nonnull %37) #9
  %91 = call ptr @of_get_next_child(ptr noundef %12, ptr noundef %25) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  %92 = icmp ne ptr %91, null
  %93 = select i1 %23, i1 %92, i1 false
  br i1 %93, label %24, label %94

94:                                               ; preds = %89
  call void @of_node_put(ptr noundef %91) #9
  %95 = icmp slt i32 %90, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %94
  %97 = load i32, ptr %6, align 4
  %98 = add i32 %97, -1
  store i32 %98, ptr %6, align 4
  %99 = icmp sgt i32 %98, -1
  br i1 %99, label %9, label %100

100:                                              ; preds = %96, %94, %87
  %101 = phi i32 [ %88, %87 ], [ %90, %96 ], [ %90, %94 ]
  ret i32 %101
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @simple_count_noml(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef %3, i1 noundef zeroext %4) #2 {
  %6 = load i32, ptr %3, align 4
  %7 = icmp sgt i32 %6, 511
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.11) #10
  br label %17

11:                                               ; preds = %5
  %12 = getelementptr %struct.link_info, ptr %3, i32 0, i32 2, i32 %6
  store i32 1, ptr %12, align 4
  %13 = getelementptr %struct.link_info, ptr %3, i32 0, i32 2, i32 %6, i32 1
  store i32 1, ptr %13, align 4
  %14 = getelementptr %struct.link_info, ptr %3, i32 0, i32 2, i32 %6, i32 2
  store i32 1, ptr %14, align 4
  %15 = load i32, ptr %3, align 4
  %16 = add i32 %15, 1
  store i32 %16, ptr %3, align 4
  br label %17

17:                                               ; preds = %11, %8
  %18 = phi i32 [ -22, %8 ], [ 0, %11 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @simple_count_dpcm(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef %3, i1 noundef zeroext %4) #2 {
  %6 = load i32, ptr %3, align 4
  %7 = icmp sgt i32 %6, 511
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.11) #10
  br label %24

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.link_info, ptr %3, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr %struct.link_info, ptr %3, i32 0, i32 2, i32 %6
  store i32 1, ptr %16, align 4
  %17 = getelementptr %struct.link_info, ptr %3, i32 0, i32 2, i32 %6, i32 2
  store i32 1, ptr %17, align 4
  %18 = load i32, ptr %3, align 4
  br label %21

19:                                               ; preds = %11
  %20 = getelementptr %struct.link_info, ptr %3, i32 0, i32 2, i32 %6, i32 1
  store i32 1, ptr %20, align 4
  br label %21

21:                                               ; preds = %19, %15
  %22 = phi i32 [ %6, %19 ], [ %18, %15 ]
  %23 = add i32 %22, 1
  store i32 %23, ptr %3, align 4
  br label %24

24:                                               ; preds = %21, %8
  %25 = phi i32 [ -22, %8 ], [ 0, %21 ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @asoc_simple_parse_convert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_parse_widgets(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_parse_routing(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_parse_pin_switches(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @simple_dai_link_of(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3, i1 noundef zeroext %4) #2 {
  %6 = alloca %struct.of_phandle_args, align 4
  %7 = alloca [64 x i8], align 1
  %8 = alloca [128 x i8], align 1
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 25
  %11 = load ptr, ptr %10, align 4
  %12 = load i32, ptr %3, align 4
  %13 = getelementptr %struct.snd_soc_dai_link, ptr %11, i32 %12, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr %struct.snd_soc_dai_link, ptr %11, i32 %12, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr %struct.snd_soc_dai_link, ptr %11, i32 %12, i32 6
  %18 = load ptr, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %7, i8 0, i32 64, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %8) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %8, i8 0, i32 128, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #9
  store i32 0, ptr %9, align 4
  %19 = tail call ptr @of_get_parent(ptr noundef %1) #9
  %20 = select i1 %4, ptr @.str.5, ptr @.str.13
  %21 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %8, i32 noundef 128, ptr noundef nonnull @.str.14, ptr noundef nonnull %20)
  %22 = call ptr @of_get_child_by_name(ptr noundef %19, ptr noundef nonnull %8) #9
  %23 = call fastcc i32 @simple_parse_node(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef nonnull %20, ptr noundef nonnull %9)
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %58, label %25

25:                                               ; preds = %5
  %26 = call fastcc i32 @simple_parse_node(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %20, ptr noundef null)
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %58, label %28

28:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %6, i8 0, i32 72, i1 false) #9, !annotation !8
  %29 = icmp eq ptr %22, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %28
  %31 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %22, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %6) #9
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load ptr, ptr %6, align 4
  %35 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %18, i32 0, i32 1
  store ptr %34, ptr %35, align 4
  br label %36

36:                                               ; preds = %33, %28
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #9
  br label %39

37:                                               ; preds = %30
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #9
  %38 = icmp slt i32 %31, 0
  br i1 %38, label %58, label %39

39:                                               ; preds = %37, %36
  %40 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %14, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %16, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %7, i32 noundef 64, ptr noundef nonnull @.str.15, ptr noundef %41, ptr noundef %43)
  %45 = load i32, ptr %9, align 4
  call void @asoc_simple_canonicalize_cpu(ptr noundef %14, i32 noundef %45) #9
  call void @asoc_simple_canonicalize_platform(ptr noundef %18, ptr noundef %14) #9
  %46 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 6
  %47 = load ptr, ptr %46, align 4
  %48 = load ptr, ptr %10, align 4
  %49 = load i32, ptr %3, align 4
  %50 = getelementptr %struct.snd_soc_dai_link, ptr %48, i32 %49, i32 11
  %51 = call i32 @asoc_simple_parse_daifmt(ptr noundef %47, ptr noundef %19, ptr noundef %2, ptr noundef nonnull %20, ptr noundef %50) #9
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %39
  %54 = getelementptr %struct.snd_soc_dai_link, ptr %48, i32 %49
  %55 = getelementptr %struct.snd_soc_dai_link, ptr %48, i32 %49, i32 13
  store ptr @asoc_simple_dai_init, ptr %55, align 4
  %56 = getelementptr %struct.snd_soc_dai_link, ptr %48, i32 %49, i32 16
  store ptr @simple_ops, ptr %56, align 4
  %57 = call i32 (ptr, ptr, ptr, ...) @asoc_simple_set_dailink_name(ptr noundef %47, ptr noundef %54, ptr noundef nonnull %7) #9
  br label %58

58:                                               ; preds = %53, %39, %37, %25, %5
  %59 = phi i32 [ %23, %5 ], [ %26, %25 ], [ %31, %37 ], [ %57, %53 ], [ 0, %39 ]
  call void @of_node_put(ptr noundef %22) #9
  call void @of_node_put(ptr noundef %19) #9
  %60 = load i32, ptr %3, align 4
  %61 = add i32 %60, 1
  store i32 %61, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #9
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @simple_dai_link_of_dpcm(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3, i1 noundef zeroext %4) #2 {
  %6 = alloca [64 x i8], align 1
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 25
  %11 = load ptr, ptr %10, align 4
  %12 = load i32, ptr %3, align 4
  %13 = getelementptr %struct.snd_soc_dai_link, ptr %11, i32 %12
  %14 = getelementptr inbounds %struct.asoc_simple_priv, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 25
  %17 = load ptr, ptr %16, align 8
  %18 = tail call ptr @of_get_parent(ptr noundef %1) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %6, i8 0, i32 64, i1 false), !annotation !8
  %19 = select i1 %4, ptr @.str.5, ptr @.str.13
  %20 = getelementptr inbounds %struct.link_info, ptr %3, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %39, label %23

23:                                               ; preds = %5
  %24 = getelementptr %struct.snd_soc_dai_link, ptr %11, i32 %12, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr %struct.snd_soc_dai_link, ptr %11, i32 %12, i32 6
  %27 = load ptr, ptr %26, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  store i32 0, ptr %7, align 4
  %28 = getelementptr %struct.snd_soc_dai_link, ptr %11, i32 %12, i32 18
  %29 = load i32, ptr %28, align 4
  %30 = or i32 %29, 2304
  store i32 %30, ptr %28, align 4
  %31 = call fastcc i32 @simple_parse_node(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef nonnull %19, ptr noundef nonnull %7)
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %25, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %6, i32 noundef 64, ptr noundef nonnull @.str.19, ptr noundef %35)
  %37 = load i32, ptr %7, align 4
  call void @asoc_simple_canonicalize_cpu(ptr noundef %25, i32 noundef %37) #9
  call void @asoc_simple_canonicalize_platform(ptr noundef %27, ptr noundef %25) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  br label %58

38:                                               ; preds = %23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  br label %73

39:                                               ; preds = %5
  %40 = getelementptr %struct.snd_soc_dai_link, ptr %11, i32 %12, i32 4
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr %struct.snd_soc_dai_link, ptr %11, i32 %12, i32 18
  %43 = load i32, ptr %42, align 4
  %44 = or i32 %43, 128
  store i32 %44, ptr %42, align 4
  %45 = getelementptr %struct.snd_soc_dai_link, ptr %11, i32 %12, i32 15
  store ptr @asoc_simple_be_hw_params_fixup, ptr %45, align 4
  %46 = getelementptr %struct.simple_dai_props, ptr %15, i32 %12, i32 6
  %47 = load ptr, ptr %46, align 4
  %48 = tail call fastcc i32 @simple_parse_node(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef nonnull %19, ptr noundef null)
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %73, label %50

50:                                               ; preds = %39
  %51 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %41, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  %53 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %6, i32 noundef 64, ptr noundef nonnull @.str.20, ptr noundef %52)
  %54 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %41, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  tail call void @snd_soc_of_parse_node_prefix(ptr noundef %17, ptr noundef %47, ptr noundef %55, ptr noundef nonnull @.str.21) #9
  %56 = load ptr, ptr %54, align 4
  tail call void @snd_soc_of_parse_node_prefix(ptr noundef %18, ptr noundef %47, ptr noundef %56, ptr noundef nonnull @.str.22) #9
  %57 = load ptr, ptr %54, align 4
  tail call void @snd_soc_of_parse_node_prefix(ptr noundef %1, ptr noundef %47, ptr noundef %57, ptr noundef nonnull @.str.22) #9
  br label %58

58:                                               ; preds = %50, %33
  %59 = getelementptr %struct.simple_dai_props, ptr %15, i32 %12, i32 5
  %60 = load ptr, ptr %16, align 8
  %61 = call ptr @of_get_parent(ptr noundef %1) #9
  call void @asoc_simple_parse_convert(ptr noundef %60, ptr noundef nonnull @.str.5, ptr noundef %59) #9
  call void @asoc_simple_parse_convert(ptr noundef %61, ptr noundef nonnull @.str.5, ptr noundef %59) #9
  call void @asoc_simple_parse_convert(ptr noundef %61, ptr noundef null, ptr noundef %59) #9
  call void @asoc_simple_parse_convert(ptr noundef %1, ptr noundef null, ptr noundef %59) #9
  call void @of_node_put(ptr noundef %61) #9
  call void @snd_soc_dai_link_set_capabilities(ptr noundef %13) #9
  %62 = load ptr, ptr %8, align 4
  %63 = load ptr, ptr %10, align 4
  %64 = load i32, ptr %3, align 4
  %65 = getelementptr %struct.snd_soc_dai_link, ptr %63, i32 %64, i32 11
  %66 = call i32 @asoc_simple_parse_daifmt(ptr noundef %62, ptr noundef %18, ptr noundef %2, ptr noundef nonnull %19, ptr noundef %65) #9
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %58
  %69 = getelementptr %struct.snd_soc_dai_link, ptr %63, i32 %64
  %70 = getelementptr %struct.snd_soc_dai_link, ptr %63, i32 %64, i32 13
  store ptr @asoc_simple_dai_init, ptr %70, align 4
  %71 = getelementptr %struct.snd_soc_dai_link, ptr %63, i32 %64, i32 16
  store ptr @simple_ops, ptr %71, align 4
  %72 = call i32 (ptr, ptr, ptr, ...) @asoc_simple_set_dailink_name(ptr noundef %62, ptr noundef %69, ptr noundef nonnull %6) #9
  br label %73

73:                                               ; preds = %68, %58, %39, %38
  %74 = phi i32 [ %31, %38 ], [ %48, %39 ], [ %72, %68 ], [ 0, %58 ]
  %75 = load i32, ptr %3, align 4
  %76 = add i32 %75, 1
  store i32 %76, ptr %3, align 4
  call void @of_node_put(ptr noundef %18) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #9
  ret i32 %74
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_parse_card_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_of_parse_aux_devs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @simple_parse_node(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef writeonly %4) unnamed_addr #2 {
  %6 = alloca %struct.of_phandle_args, align 4
  %7 = alloca [128 x i8], align 1
  %8 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 25
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 25
  %13 = load ptr, ptr %12, align 4
  %14 = load i32, ptr %2, align 4
  %15 = getelementptr inbounds %struct.asoc_simple_priv, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %4, null
  %18 = getelementptr %struct.simple_dai_props, ptr %16, i32 %14
  %19 = getelementptr %struct.snd_soc_dai_link, ptr %13, i32 %14, i32 2
  %20 = getelementptr %struct.snd_soc_dai_link, ptr %13, i32 %14, i32 4
  %21 = getelementptr %struct.simple_dai_props, ptr %16, i32 %14, i32 1
  %22 = select i1 %17, ptr %20, ptr %19
  %23 = select i1 %17, ptr %21, ptr %18
  %24 = load ptr, ptr %22, align 4
  %25 = load ptr, ptr %23, align 4
  %26 = tail call ptr @of_get_parent(ptr noundef %1) #9
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %7) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %7, i8 0, i32 128, i1 false) #9, !annotation !8
  %27 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %7, i32 noundef 128, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.5) #9
  %28 = getelementptr %struct.simple_dai_props, ptr %16, i32 %14, i32 9
  %29 = call i32 @of_property_read_variable_u32_array(ptr noundef %11, ptr noundef nonnull %7, ptr noundef %28, i32 noundef 1, i32 noundef 0) #9
  %30 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %7, i32 noundef 128, ptr noundef nonnull @.str.16, ptr noundef %3) #9
  %31 = call i32 @of_property_read_variable_u32_array(ptr noundef %26, ptr noundef nonnull %7, ptr noundef %28, i32 noundef 1, i32 noundef 0) #9
  %32 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull %7, ptr noundef %28, i32 noundef 1, i32 noundef 0) #9
  call void @of_node_put(ptr noundef %26) #9
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %6, i8 0, i32 72, i1 false) #9, !annotation !8
  %33 = icmp eq ptr %1, null
  br i1 %33, label %51, label %34

34:                                               ; preds = %5
  %35 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %1, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %6) #9
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %24, i32 0, i32 2
  %39 = call i32 @snd_soc_of_get_dai_name(ptr noundef nonnull %1, ptr noundef %38) #9
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr %6, align 4
  %43 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %24, i32 0, i32 1
  store ptr %42, ptr %43, align 4
  br i1 %17, label %51, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.of_phandle_args, ptr %6, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  %48 = zext i1 %47 to i32
  store i32 %48, ptr %4, align 4
  br label %51

49:                                               ; preds = %37, %34
  %50 = phi i32 [ %35, %34 ], [ %39, %37 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #9
  br label %60

51:                                               ; preds = %44, %41, %5
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #9
  %52 = call i32 @asoc_simple_parse_clk(ptr noundef %9, ptr noundef %1, ptr noundef %25, ptr noundef %24) #9
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.asoc_simple_dai, ptr %25, i32 0, i32 5
  %56 = getelementptr inbounds %struct.asoc_simple_dai, ptr %25, i32 0, i32 6
  %57 = getelementptr inbounds %struct.asoc_simple_dai, ptr %25, i32 0, i32 3
  %58 = getelementptr inbounds %struct.asoc_simple_dai, ptr %25, i32 0, i32 4
  %59 = call i32 @snd_soc_of_parse_tdm_slot(ptr noundef %1, ptr noundef %55, ptr noundef %56, ptr noundef %57, ptr noundef %58) #9
  br label %60

60:                                               ; preds = %54, %51, %49
  %61 = phi i32 [ %50, %49 ], [ %52, %51 ], [ %59, %54 ]
  ret i32 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @asoc_simple_canonicalize_cpu(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @asoc_simple_canonicalize_platform(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_parse_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_of_parse_tdm_slot(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_of_get_dai_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_parse_daifmt(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_set_dailink_name(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_startup(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @asoc_simple_shutdown(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_hw_params(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_be_hw_params_fixup(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_of_parse_node_prefix(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_dai_link_set_capabilities(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{!"auto-init"}
