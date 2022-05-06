; ModuleID = '/llk/IR/sound/soc/generic/audio-graph-card.c_pt.bc'
source_filename = "../sound/soc/generic/audio-graph-card.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_audio_graph_parse_of:\09\09\09\09\09"
module asm "\09.asciz \09\22audio_graph_parse_of\22\09\09\09\09\09"
module asm "__kstrtabns_audio_graph_parse_of:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

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
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.snd_soc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.85, ptr }
%union.anon.85 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [80 x i8], [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
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
%struct.of_phandle_iterator = type { ptr, i32, ptr, ptr, ptr, ptr, i32, i32, ptr }
%struct.asoc_simple_data = type { i32, i32 }
%struct.link_info = type { i32, i32, [512 x %struct.prop_nums] }
%struct.prop_nums = type { i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.snd_soc_dai_link = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i24 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.simple_dai_props = type { ptr, ptr, ptr, ptr, ptr, %struct.asoc_simple_data, ptr, ptr, %struct.prop_nums, i32 }
%struct.of_endpoint = type { i32, i32, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.asoc_simple_dai = type { ptr, i32, i32, i32, i32, i32, i32, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }

@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [3 x i8] c"pa\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to get amplifier gpio: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"parse error\0A\00", align 1
@__kstrtab_audio_graph_parse_of = external dso_local constant [0 x i8], align 1
@__kstrtabns_audio_graph_parse_of = external dso_local constant [0 x i8], align 1
@__ksymtab_audio_graph_parse_of = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @audio_graph_parse_of to i32), ptr @__kstrtab_audio_graph_parse_of, ptr @__kstrtabns_audio_graph_parse_of }, section "___ksymtab_gpl+audio_graph_parse_of", align 4
@graph_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"audio-graph-card\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"audio-graph-scu-card\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_alias230 = internal constant [37 x i8] c"alias=platform:asoc-audio-graph-card\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description232 = internal constant [40 x i8] c"description=ASoC Audio Graph Sound Card\00", section ".modinfo", align 1
@__UNIQUE_ID_author233 = internal constant [60 x i8] c"author=Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>\00", section ".modinfo", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"dais\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"ports\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"mclk-fs\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@graph_ops = internal constant %struct.snd_soc_ops { ptr @asoc_simple_startup, ptr @asoc_simple_shutdown, ptr @asoc_simple_hw_params, ptr null, ptr null, ptr null }, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"fe.%pOFP.%s\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"be.%pOFP.%s\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"prefix\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"too many links\0A\00", align 1
@graph_card = internal global %struct.platform_driver { ptr @graph_probe, ptr @asoc_simple_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.12, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @graph_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_soc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str.12 = private unnamed_addr constant [22 x i8] c"asoc-audio-graph-card\00", align 1
@snd_soc_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@.str.13 = private unnamed_addr constant [10 x i8] c"Amplifier\00", align 1
@graph_dapm_widgets = internal constant [1 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 7, ptr @.str.13, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @graph_outdrv_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_alias230, ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_license231, ptr @__ksymtab_audio_graph_parse_of], section "llvm.metadata"

@__mod_of__graph_of_match_device_table = dso_local alias [3 x %struct.of_device_id], ptr @graph_of_match

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @audio_graph_parse_of(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 8200, i32 noundef 3520) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %43, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 8
  store ptr @__this_module, ptr %6, align 4
  %7 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 6
  store ptr %1, ptr %7, align 4
  %8 = tail call fastcc i32 @graph_for_each_link(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull @graph_count_noml, ptr noundef nonnull @graph_count_dpcm) #8
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %43, label %10

10:                                               ; preds = %5
  %11 = load i32, ptr %3, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %43, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @asoc_simple_init_priv(ptr noundef %0, ptr noundef nonnull %3) #8
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %43, label %16

16:                                               ; preds = %13
  %17 = tail call ptr @devm_gpiod_get_optional(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef 3) #8
  %18 = getelementptr inbounds %struct.asoc_simple_priv, ptr %0, i32 0, i32 10
  store ptr %17, ptr %18, align 4
  %19 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = ptrtoint ptr %17 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef %21) #9
  br label %43

22:                                               ; preds = %16
  %23 = tail call i32 @asoc_simple_parse_widgets(ptr noundef %0, ptr noundef null) #8
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %43, label %25

25:                                               ; preds = %22
  %26 = tail call i32 @asoc_simple_parse_routing(ptr noundef %0, ptr noundef null) #8
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %43, label %28

28:                                               ; preds = %25
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(8200) %3, i8 0, i32 8200, i1 false)
  %29 = tail call fastcc i32 @graph_for_each_link(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull @graph_dai_link_of, ptr noundef nonnull @graph_dai_link_of_dpcm)
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %28
  %32 = tail call i32 @asoc_simple_parse_card_name(ptr noundef %0, ptr noundef null) #8
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 58
  store ptr %0, ptr %35, align 4
  %36 = tail call i32 @devm_snd_soc_register_card(ptr noundef %1, ptr noundef %0) #8
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  tail call void @devm_kfree(ptr noundef %1, ptr noundef nonnull %3) #8
  br label %43

39:                                               ; preds = %34, %31, %28
  %40 = phi i32 [ %29, %28 ], [ %32, %31 ], [ %36, %34 ]
  %41 = tail call i32 @asoc_simple_clean_reference(ptr noundef %0) #8
  %42 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %1, i32 noundef %40, ptr noundef nonnull @.str.2) #8
  br label %43

43:                                               ; preds = %39, %38, %25, %22, %20, %13, %10, %5, %2
  %44 = phi i32 [ %21, %20 ], [ %42, %39 ], [ 0, %38 ], [ -12, %2 ], [ %8, %5 ], [ -22, %10 ], [ %14, %13 ], [ %23, %22 ], [ %26, %25 ]
  ret i32 %44
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_init_priv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_parse_widgets(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_parse_routing(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @graph_for_each_link(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = alloca %struct.of_phandle_iterator, align 4
  %6 = alloca %struct.asoc_simple_data, align 8
  %7 = getelementptr inbounds %struct.link_info, ptr %1, i32 0, i32 1
  %8 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 6
  store i32 1, ptr %7, align 4
  %9 = getelementptr inbounds %struct.of_phandle_iterator, ptr %5, i32 0, i32 8
  %10 = getelementptr inbounds %struct.asoc_simple_priv, ptr %0, i32 0, i32 12
  %11 = getelementptr inbounds %struct.asoc_simple_data, ptr %6, i32 0, i32 1
  br label %12

12:                                               ; preds = %78, %4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %5, i8 0, i32 36, i1 false) #8, !annotation !8
  %13 = load ptr, ptr %8, align 4
  %14 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 25
  %15 = load ptr, ptr %14, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  store i64 0, ptr %6, align 8, !annotation !8
  %16 = call i32 @of_phandle_iterator_init(ptr noundef nonnull %5, ptr noundef %15, ptr noundef nonnull @.str.3, ptr noundef null, i32 noundef 0) #8
  %17 = call i32 @of_phandle_iterator_next(ptr noundef nonnull %5) #8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %78

19:                                               ; preds = %74, %12
  %20 = phi i32 [ %26, %74 ], [ 0, %12 ]
  %21 = phi ptr [ %25, %74 ], [ null, %12 ]
  %22 = load ptr, ptr %9, align 4
  br label %23

23:                                               ; preds = %71, %19
  %24 = phi ptr [ null, %19 ], [ %27, %71 ]
  %25 = phi ptr [ %21, %19 ], [ %31, %71 ]
  %26 = phi i32 [ %20, %19 ], [ %72, %71 ]
  %27 = call ptr @of_get_next_child(ptr noundef %22, ptr noundef %24) #8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %74, label %29

29:                                               ; preds = %23
  %30 = call ptr @of_graph_get_remote_endpoint(ptr noundef nonnull %27) #8
  %31 = call ptr @of_get_parent(ptr noundef %30) #8
  store i64 0, ptr %6, align 8
  call fastcc void @graph_parse_convert(ptr noundef %13, ptr noundef %30, ptr noundef nonnull %6) #8
  call fastcc void @graph_parse_convert(ptr noundef %13, ptr noundef nonnull %27, ptr noundef nonnull %6) #8
  %32 = load i8, ptr %10, align 4
  %33 = and i8 %32, 2
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %58

35:                                               ; preds = %29
  %36 = and i8 %32, 1
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %65, label %38

38:                                               ; preds = %35
  %39 = call ptr @of_get_next_child(ptr noundef %31, ptr noundef null) #8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %52, label %41

41:                                               ; preds = %41, %38
  %42 = phi i32 [ %44, %41 ], [ 0, %38 ]
  %43 = phi ptr [ %45, %41 ], [ %39, %38 ]
  %44 = add i32 %42, 1
  %45 = call ptr @of_get_next_child(ptr noundef %31, ptr noundef nonnull %43) #8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %41

47:                                               ; preds = %41
  %48 = icmp slt i32 %44, 2
  %49 = load i32, ptr %6, align 8
  %50 = icmp eq i32 %49, 0
  %51 = select i1 %48, i1 %50, i1 false
  br i1 %51, label %55, label %58

52:                                               ; preds = %38
  %53 = load i32, ptr %6, align 8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52, %47
  %56 = load i32, ptr %11, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %55, %52, %47, %29
  %59 = load i32, ptr %7, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = icmp ne ptr %25, %31
  %63 = icmp ne ptr %30, null
  %64 = and i1 %63, %62
  br i1 %64, label %68, label %71

65:                                               ; preds = %55, %35
  %66 = load i32, ptr %7, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %65, %61, %58
  %69 = phi ptr [ %3, %61 ], [ %3, %58 ], [ %2, %65 ]
  %70 = call i32 %69(ptr noundef %0, ptr noundef nonnull %27, ptr noundef %30, ptr noundef %1) #8
  br label %71

71:                                               ; preds = %68, %65, %61
  %72 = phi i32 [ %26, %61 ], [ %26, %65 ], [ %70, %68 ]
  call void @of_node_put(ptr noundef %30) #8
  call void @of_node_put(ptr noundef %31) #8
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %77, label %23

74:                                               ; preds = %23
  %75 = call i32 @of_phandle_iterator_next(ptr noundef nonnull %5) #8
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %19, label %78

77:                                               ; preds = %71
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #8
  br label %82

78:                                               ; preds = %74, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #8
  %79 = load i32, ptr %7, align 4
  %80 = add i32 %79, -1
  store i32 %80, ptr %7, align 4
  %81 = icmp sgt i32 %80, -1
  br i1 %81, label %12, label %82

82:                                               ; preds = %78, %77
  %83 = phi i32 [ %72, %77 ], [ 0, %78 ]
  ret i32 %83
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @graph_dai_link_of(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) #0 {
  %5 = alloca [64 x i8], align 1
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 25
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %3, align 4
  %10 = getelementptr %struct.snd_soc_dai_link, ptr %8, i32 %9, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr %struct.snd_soc_dai_link, ptr %8, i32 %9, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr %struct.snd_soc_dai_link, ptr %8, i32 %9, i32 6
  %15 = load ptr, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %5, i8 0, i32 64, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4
  %16 = call fastcc i32 @graph_parse_node(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef nonnull %6)
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %48, label %18

18:                                               ; preds = %4
  %19 = call fastcc i32 @graph_parse_node(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef null)
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %48, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %11, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %13, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 64, ptr noundef nonnull @.str.5, ptr noundef %23, ptr noundef %25)
  %27 = load i32, ptr %6, align 4
  call void @asoc_simple_canonicalize_cpu(ptr noundef %11, i32 noundef %27) #8
  call void @asoc_simple_canonicalize_platform(ptr noundef %15, ptr noundef %11) #8
  %28 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 6
  %29 = load ptr, ptr %28, align 4
  %30 = load ptr, ptr %7, align 4
  %31 = load i32, ptr %3, align 4
  %32 = getelementptr %struct.snd_soc_dai_link, ptr %30, i32 %31, i32 11
  %33 = call i32 @asoc_simple_parse_daifmt(ptr noundef %29, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef %32) #8
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %48, label %35

35:                                               ; preds = %21
  %36 = getelementptr %struct.snd_soc_dai_link, ptr %30, i32 %31
  %37 = getelementptr %struct.snd_soc_dai_link, ptr %30, i32 %31, i32 13
  store ptr @asoc_simple_dai_init, ptr %37, align 4
  %38 = getelementptr %struct.snd_soc_dai_link, ptr %30, i32 %31, i32 16
  store ptr @graph_ops, ptr %38, align 4
  %39 = getelementptr inbounds %struct.asoc_simple_priv, ptr %0, i32 0, i32 11
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  %42 = select i1 %41, ptr @graph_ops, ptr %40
  store ptr %42, ptr %38, align 4
  %43 = call i32 (ptr, ptr, ptr, ...) @asoc_simple_set_dailink_name(ptr noundef %29, ptr noundef %36, ptr noundef nonnull %5) #8
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %35
  %46 = load i32, ptr %3, align 4
  %47 = add i32 %46, 1
  store i32 %47, ptr %3, align 4
  br label %48

48:                                               ; preds = %45, %35, %21, %18, %4
  %49 = phi i32 [ 0, %45 ], [ %16, %4 ], [ %19, %18 ], [ %43, %35 ], [ %33, %21 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #8
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @graph_dai_link_of_dpcm(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) #0 {
  %5 = alloca [64 x i8], align 1
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 25
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %3, align 4
  %12 = getelementptr %struct.snd_soc_dai_link, ptr %10, i32 %11
  %13 = getelementptr inbounds %struct.asoc_simple_priv, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 25
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.link_info, ptr %3, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, ptr %2, ptr %1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %5, i8 0, i32 64, i1 false), !annotation !8
  br i1 %19, label %64, label %21

21:                                               ; preds = %4
  %22 = getelementptr %struct.snd_soc_dai_link, ptr %10, i32 %11, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr %struct.snd_soc_dai_link, ptr %10, i32 %11, i32 6
  %25 = load ptr, ptr %24, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4
  %26 = getelementptr %struct.snd_soc_dai_link, ptr %10, i32 %11, i32 18
  %27 = load i32, ptr %26, align 4
  %28 = or i32 %27, 2304
  store i32 %28, ptr %26, align 4
  %29 = call fastcc i32 @graph_parse_node(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef nonnull %6)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %110

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %23, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %23, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 64, ptr noundef nonnull @.str.8, ptr noundef %33, ptr noundef %35)
  %37 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 57
  %38 = load i8, ptr %37, align 4
  %39 = and i8 %38, 32
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %62, label %41

41:                                               ; preds = %31
  %42 = call ptr @snd_soc_find_dai_with_mutex(ptr noundef %23) #8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %58, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.snd_soc_dai, ptr %42, i32 0, i32 12
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.snd_soc_component, ptr %46, i32 0, i32 10
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.snd_soc_component_driver, ptr %48, i32 0, i32 13
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %62

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.snd_soc_dai, ptr %42, i32 0, i32 3
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %54, i32 0, i32 7
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %52, %41
  %59 = load i32, ptr %26, align 4
  %60 = or i32 %59, 128
  store i32 %60, ptr %26, align 4
  %61 = getelementptr %struct.snd_soc_dai_link, ptr %10, i32 %11, i32 15
  store ptr @asoc_simple_be_hw_params_fixup, ptr %61, align 4
  br label %62

62:                                               ; preds = %58, %52, %44, %31
  %63 = load i32, ptr %6, align 4
  call void @asoc_simple_canonicalize_cpu(ptr noundef %23, i32 noundef %63) #8
  call void @asoc_simple_canonicalize_platform(ptr noundef %25, ptr noundef %23) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  br label %89

64:                                               ; preds = %4
  %65 = getelementptr %struct.simple_dai_props, ptr %14, i32 %11, i32 6
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr %struct.snd_soc_dai_link, ptr %10, i32 %11, i32 4
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr %struct.snd_soc_dai_link, ptr %10, i32 %11, i32 18
  %70 = load i32, ptr %69, align 4
  %71 = or i32 %70, 128
  store i32 %71, ptr %69, align 4
  %72 = getelementptr %struct.snd_soc_dai_link, ptr %10, i32 %11, i32 15
  store ptr @asoc_simple_be_hw_params_fixup, ptr %72, align 4
  %73 = tail call fastcc i32 @graph_parse_node(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef null)
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %111, label %75

75:                                               ; preds = %64
  %76 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %68, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %68, i32 0, i32 2
  %79 = load ptr, ptr %78, align 4
  %80 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 64, ptr noundef nonnull @.str.9, ptr noundef %77, ptr noundef %79)
  %81 = tail call ptr @of_get_parent(ptr noundef %20) #8
  %82 = tail call ptr @of_get_parent(ptr noundef %81) #8
  %83 = load ptr, ptr %76, align 4
  tail call void @snd_soc_of_parse_node_prefix(ptr noundef %16, ptr noundef %66, ptr noundef %83, ptr noundef nonnull @.str.10) #8
  %84 = tail call zeroext i1 @of_node_name_eq(ptr noundef %82, ptr noundef nonnull @.str.4) #8
  br i1 %84, label %85, label %87

85:                                               ; preds = %75
  %86 = load ptr, ptr %76, align 4
  tail call void @snd_soc_of_parse_node_prefix(ptr noundef %82, ptr noundef %66, ptr noundef %86, ptr noundef nonnull @.str.10) #8
  br label %87

87:                                               ; preds = %85, %75
  %88 = load ptr, ptr %76, align 4
  tail call void @snd_soc_of_parse_node_prefix(ptr noundef %81, ptr noundef %66, ptr noundef %88, ptr noundef nonnull @.str.10) #8
  tail call void @of_node_put(ptr noundef %82) #8
  tail call void @of_node_put(ptr noundef %81) #8
  br label %89

89:                                               ; preds = %87, %62
  %90 = getelementptr %struct.simple_dai_props, ptr %14, i32 %11, i32 5
  call fastcc void @graph_parse_convert(ptr noundef %8, ptr noundef %20, ptr noundef %90)
  call void @snd_soc_dai_link_set_capabilities(ptr noundef %12) #8
  %91 = load ptr, ptr %7, align 4
  %92 = load ptr, ptr %9, align 4
  %93 = load i32, ptr %3, align 4
  %94 = getelementptr %struct.snd_soc_dai_link, ptr %92, i32 %93, i32 11
  %95 = call i32 @asoc_simple_parse_daifmt(ptr noundef %91, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef %94) #8
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %106, label %97

97:                                               ; preds = %89
  %98 = getelementptr %struct.snd_soc_dai_link, ptr %92, i32 %93
  %99 = getelementptr %struct.snd_soc_dai_link, ptr %92, i32 %93, i32 13
  store ptr @asoc_simple_dai_init, ptr %99, align 4
  %100 = getelementptr %struct.snd_soc_dai_link, ptr %92, i32 %93, i32 16
  store ptr @graph_ops, ptr %100, align 4
  %101 = getelementptr inbounds %struct.asoc_simple_priv, ptr %0, i32 0, i32 11
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  %104 = select i1 %103, ptr @graph_ops, ptr %102
  store ptr %104, ptr %100, align 4
  %105 = call i32 (ptr, ptr, ptr, ...) @asoc_simple_set_dailink_name(ptr noundef %91, ptr noundef %98, ptr noundef nonnull %5) #8
  br label %106

106:                                              ; preds = %97, %89
  %107 = phi i32 [ %105, %97 ], [ %95, %89 ]
  %108 = load i32, ptr %3, align 4
  %109 = add i32 %108, 1
  store i32 %109, ptr %3, align 4
  br label %111

110:                                              ; preds = %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  br label %111

111:                                              ; preds = %110, %106, %64
  %112 = phi i32 [ %107, %106 ], [ %29, %110 ], [ %73, %64 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #8
  ret i32 %112
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_parse_card_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_card(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_clean_reference(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #5 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @graph_card, ptr noundef nonnull @__this_module) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #5 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @graph_card) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_phandle_iterator_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_phandle_iterator_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_endpoint(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @graph_parse_convert(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr @of_get_parent(ptr noundef %1) #8
  %7 = tail call ptr @of_get_parent(ptr noundef %6) #8
  %8 = tail call ptr @of_graph_get_port_parent(ptr noundef %1) #8
  tail call void @asoc_simple_parse_convert(ptr noundef %5, ptr noundef null, ptr noundef %2) #8
  %9 = tail call zeroext i1 @of_node_name_eq(ptr noundef %7, ptr noundef nonnull @.str.4) #8
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  tail call void @asoc_simple_parse_convert(ptr noundef %7, ptr noundef null, ptr noundef %2) #8
  br label %11

11:                                               ; preds = %10, %3
  tail call void @asoc_simple_parse_convert(ptr noundef %6, ptr noundef null, ptr noundef %2) #8
  tail call void @asoc_simple_parse_convert(ptr noundef %1, ptr noundef null, ptr noundef %2) #8
  tail call void @of_node_put(ptr noundef %6) #8
  tail call void @of_node_put(ptr noundef %7) #8
  tail call void @of_node_put(ptr noundef %8) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_port_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @asoc_simple_parse_convert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_node_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @graph_parse_node(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef writeonly %3) unnamed_addr #0 {
  %5 = alloca %struct.of_endpoint, align 4
  %6 = alloca %struct.of_phandle_args, align 4
  %7 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 25
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 25
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr %2, align 4
  %14 = getelementptr inbounds %struct.asoc_simple_priv, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %3, null
  %17 = getelementptr %struct.simple_dai_props, ptr %15, i32 %13
  %18 = getelementptr %struct.snd_soc_dai_link, ptr %12, i32 %13, i32 2
  %19 = getelementptr %struct.snd_soc_dai_link, ptr %12, i32 %13, i32 4
  %20 = getelementptr %struct.simple_dai_props, ptr %15, i32 %13, i32 1
  %21 = select i1 %16, ptr %19, ptr %18
  %22 = select i1 %16, ptr %20, ptr %17
  %23 = load ptr, ptr %21, align 4
  %24 = load ptr, ptr %22, align 4
  %25 = tail call ptr @of_get_parent(ptr noundef %1) #8
  %26 = tail call ptr @of_get_parent(ptr noundef %25) #8
  %27 = getelementptr %struct.simple_dai_props, ptr %15, i32 %13, i32 9
  %28 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %10, ptr noundef nonnull @.str.6, ptr noundef %27, i32 noundef 1, i32 noundef 0) #8
  %29 = tail call zeroext i1 @of_node_name_eq(ptr noundef %26, ptr noundef nonnull @.str.4) #8
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %26, ptr noundef nonnull @.str.6, ptr noundef %27, i32 noundef 1, i32 noundef 0) #8
  br label %32

32:                                               ; preds = %30, %4
  %33 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %25, ptr noundef nonnull @.str.6, ptr noundef %27, i32 noundef 1, i32 noundef 0) #8
  %34 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef %27, i32 noundef 1, i32 noundef 0) #8
  tail call void @of_node_put(ptr noundef %25) #8
  tail call void @of_node_put(ptr noundef %26) #8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #8
  %35 = getelementptr inbounds i8, ptr %6, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %35, i8 0, i32 60, i1 false) #8, !annotation !8
  %36 = icmp eq ptr %1, null
  br i1 %36, label %90, label %37

37:                                               ; preds = %32
  %38 = tail call ptr @of_graph_get_port_parent(ptr noundef nonnull %1) #8
  store ptr %38, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i32 12, i1 false) #8, !annotation !8
  %39 = tail call i32 @snd_soc_get_dai_id(ptr noundef nonnull %1) #8
  %40 = icmp eq i32 %39, -524
  br i1 %40, label %41, label %73

41:                                               ; preds = %37
  %42 = call i32 @of_graph_parse_endpoint(ptr noundef nonnull %1, ptr noundef nonnull %5) #8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %41
  %45 = call ptr @of_get_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.7, ptr noundef null) #8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.of_endpoint, ptr %5, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  br label %73

50:                                               ; preds = %44
  %51 = call ptr @of_get_parent(ptr noundef nonnull %1) #8
  %52 = call ptr @of_get_property(ptr noundef %51, ptr noundef nonnull @.str.7, ptr noundef null) #8
  call void @of_node_put(ptr noundef %51) #8
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = load i32, ptr %5, align 4
  br label %73

56:                                               ; preds = %50, %41
  %57 = call ptr @of_graph_get_port_parent(ptr noundef nonnull %1) #8
  %58 = call ptr @of_graph_get_next_endpoint(ptr noundef %57, ptr noundef null) #8
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  call void @of_node_put(ptr noundef %57) #8
  br label %72

61:                                               ; preds = %61, %56
  %62 = phi i32 [ %66, %61 ], [ -1, %56 ]
  %63 = phi i32 [ %67, %61 ], [ 0, %56 ]
  %64 = phi ptr [ %68, %61 ], [ %58, %56 ]
  %65 = icmp eq ptr %64, %1
  %66 = select i1 %65, i32 %63, i32 %62
  %67 = add i32 %63, 1
  %68 = call ptr @of_graph_get_next_endpoint(ptr noundef %57, ptr noundef nonnull %64) #8
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %61

70:                                               ; preds = %61
  call void @of_node_put(ptr noundef %57) #8
  %71 = icmp slt i32 %66, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %70, %60
  br label %73

73:                                               ; preds = %72, %70, %54, %47, %37
  %74 = phi i32 [ %49, %47 ], [ %55, %54 ], [ %39, %37 ], [ -19, %72 ], [ %66, %70 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #8
  %75 = getelementptr inbounds %struct.of_phandle_args, ptr %6, i32 0, i32 2
  store i32 %74, ptr %75, align 4
  %76 = call i32 @of_graph_get_endpoint_count(ptr noundef %38) #8
  %77 = icmp sgt i32 %76, 1
  %78 = zext i1 %77 to i32
  %79 = getelementptr inbounds %struct.of_phandle_args, ptr %6, i32 0, i32 1
  store i32 %78, ptr %79, align 4
  %80 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %23, i32 0, i32 2
  %81 = call i32 @snd_soc_get_dai_name(ptr noundef nonnull %6, ptr noundef %80) #8
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %73
  %84 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %23, i32 0, i32 1
  store ptr %38, ptr %84, align 4
  br i1 %16, label %90, label %85

85:                                               ; preds = %83
  %86 = call i32 @of_graph_get_endpoint_count(ptr noundef %38) #8
  %87 = icmp eq i32 %86, 1
  %88 = zext i1 %87 to i32
  store i32 %88, ptr %3, align 4
  br label %90

89:                                               ; preds = %73
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #8
  br label %100

90:                                               ; preds = %85, %83, %32
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #8
  %91 = getelementptr inbounds %struct.asoc_simple_dai, ptr %24, i32 0, i32 5
  %92 = getelementptr inbounds %struct.asoc_simple_dai, ptr %24, i32 0, i32 6
  %93 = getelementptr inbounds %struct.asoc_simple_dai, ptr %24, i32 0, i32 3
  %94 = getelementptr inbounds %struct.asoc_simple_dai, ptr %24, i32 0, i32 4
  %95 = call i32 @snd_soc_of_parse_tdm_slot(ptr noundef %1, ptr noundef %91, ptr noundef %92, ptr noundef %93, ptr noundef %94) #8
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %90
  %98 = call i32 @asoc_simple_parse_clk(ptr noundef %8, ptr noundef %1, ptr noundef %24, ptr noundef %23) #8
  %99 = call i32 @llvm.smin.i32(i32 %98, i32 0)
  br label %100

100:                                              ; preds = %97, %90, %89
  %101 = phi i32 [ %81, %89 ], [ %95, %90 ], [ %99, %97 ]
  ret i32 %101
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @asoc_simple_canonicalize_cpu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @asoc_simple_canonicalize_platform(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_of_parse_tdm_slot(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_parse_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_graph_get_endpoint_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_dai_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_dai_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_graph_parse_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_parse_daifmt(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_dai_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_set_dailink_name(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_startup(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @asoc_simple_shutdown(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_hw_params(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_be_hw_params_fixup(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_of_parse_node_prefix(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_dai_link_set_capabilities(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_find_dai_with_mutex(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @graph_count_noml(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef %3) #0 {
  %5 = load i32, ptr %3, align 4
  %6 = icmp sgt i32 %5, 511
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.11) #9
  br label %16

10:                                               ; preds = %4
  %11 = getelementptr %struct.link_info, ptr %3, i32 0, i32 2, i32 %5
  store i32 1, ptr %11, align 4
  %12 = getelementptr %struct.link_info, ptr %3, i32 0, i32 2, i32 %5, i32 1
  store i32 1, ptr %12, align 4
  %13 = getelementptr %struct.link_info, ptr %3, i32 0, i32 2, i32 %5, i32 2
  store i32 1, ptr %13, align 4
  %14 = load i32, ptr %3, align 4
  %15 = add i32 %14, 1
  store i32 %15, ptr %3, align 4
  br label %16

16:                                               ; preds = %10, %7
  %17 = phi i32 [ -22, %7 ], [ 0, %10 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @graph_count_dpcm(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef %3) #0 {
  %5 = load i32, ptr %3, align 4
  %6 = icmp sgt i32 %5, 511
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.11) #9
  br label %23

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.link_info, ptr %3, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr %struct.link_info, ptr %3, i32 0, i32 2, i32 %5
  store i32 1, ptr %15, align 4
  %16 = getelementptr %struct.link_info, ptr %3, i32 0, i32 2, i32 %5, i32 2
  store i32 1, ptr %16, align 4
  %17 = load i32, ptr %3, align 4
  br label %20

18:                                               ; preds = %10
  %19 = getelementptr %struct.link_info, ptr %3, i32 0, i32 2, i32 %5, i32 1
  store i32 1, ptr %19, align 4
  br label %20

20:                                               ; preds = %18, %14
  %21 = phi i32 [ %5, %18 ], [ %17, %14 ]
  %22 = add i32 %21, 1
  store i32 %22, ptr %3, align 4
  br label %23

23:                                               ; preds = %20, %7
  %24 = phi i32 [ -22, %7 ], [ 0, %20 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @graph_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 932, i32 noundef 3520) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 36
  store ptr @graph_dapm_widgets, ptr %6, align 4
  %7 = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 37
  store i32 1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 13
  store ptr @asoc_graph_card_probe, ptr %8, align 4
  %9 = tail call ptr @of_device_get_match_data(ptr noundef %2) #8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.asoc_simple_priv, ptr %3, i32 0, i32 12
  %13 = load i8, ptr %12, align 4
  %14 = or i8 %13, 1
  store i8 %14, ptr %12, align 4
  br label %15

15:                                               ; preds = %11, %5
  %16 = tail call i32 @audio_graph_parse_of(ptr noundef nonnull %3, ptr noundef %2)
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi i32 [ %16, %15 ], [ -12, %1 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_remove(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_graph_card_probe(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @graph_outdrv_event(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_soc_card, ptr %7, i32 0, i32 58
  %9 = load ptr, ptr %8, align 4
  switch i32 %2, label %15 [
    i32 2, label %11
    i32 4, label %10
  ]

10:                                               ; preds = %3
  br label %11

11:                                               ; preds = %10, %3
  %12 = phi i32 [ 0, %10 ], [ 1, %3 ]
  %13 = getelementptr inbounds %struct.asoc_simple_priv, ptr %9, i32 0, i32 10
  %14 = load ptr, ptr %13, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %14, i32 noundef %12) #8
  br label %15

15:                                               ; preds = %11, %3
  %16 = phi i32 [ -22, %3 ], [ 0, %11 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
