; ModuleID = '/llk/IR/sound/soc/atmel/atmel_ssc_dai.c_pt.bc'
source_filename = "../sound/soc/atmel/atmel_ssc_dai.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_atmel_ssc_set_audio:\09\09\09\09\09"
module asm "\09.asciz \09\22atmel_ssc_set_audio\22\09\09\09\09\09"
module asm "__kstrtabns_atmel_ssc_set_audio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_atmel_ssc_put_audio:\09\09\09\09\09"
module asm "\09.asciz \09\22atmel_ssc_put_audio\22\09\09\09\09\09"
module asm "__kstrtabns_atmel_ssc_put_audio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atmel_ssc_info = type { ptr, ptr, i16, i16, i16, i16, i16, i16, i32, [2 x ptr], %struct.atmel_ssc_state, i32 }
%struct.atmel_ssc_state = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.85, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.85 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.atmel_pcm_dma_params = type { ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.snd_ratnum = type { i32, i32, i32, i32 }
%struct.atmel_pdc_regs = type { i32, i32, i32, i32, i32 }
%struct.atmel_ssc_mask = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ssc_device = type { %struct.list_head, i32, ptr, ptr, ptr, ptr, i32, i32, i8, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
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
%struct.atmel_ssc_platform_data = type { i32, i32 }
%struct.snd_pcm_hw_rule = type { i32, i32, [5 x i32], ptr, ptr }

@.str = private unnamed_addr constant [45 x i8] c"\013Unable to parent ASoC SSC DAI on SSC: %ld\0A\00", align 1
@ssc_info = internal global [3 x %struct.atmel_ssc_info] [%struct.atmel_ssc_info { ptr @.str.1, ptr null, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i32 0, [2 x ptr] zeroinitializer, %struct.atmel_ssc_state zeroinitializer, i32 0 }, %struct.atmel_ssc_info { ptr @.str.2, ptr null, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i32 0, [2 x ptr] zeroinitializer, %struct.atmel_ssc_state zeroinitializer, i32 0 }, %struct.atmel_ssc_info { ptr @.str.3, ptr null, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i32 0, [2 x ptr] zeroinitializer, %struct.atmel_ssc_state zeroinitializer, i32 0 }], align 4
@__kstrtab_atmel_ssc_set_audio = external dso_local constant [0 x i8], align 1
@__kstrtabns_atmel_ssc_set_audio = external dso_local constant [0 x i8], align 1
@__ksymtab_atmel_ssc_set_audio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @atmel_ssc_set_audio to i32), ptr @__kstrtab_atmel_ssc_set_audio, ptr @__kstrtabns_atmel_ssc_set_audio }, section "___ksymtab_gpl+atmel_ssc_set_audio", align 4
@__kstrtab_atmel_ssc_put_audio = external dso_local constant [0 x i8], align 1
@__kstrtabns_atmel_ssc_put_audio = external dso_local constant [0 x i8], align 1
@__ksymtab_atmel_ssc_put_audio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @atmel_ssc_put_audio to i32), ptr @__kstrtab_atmel_ssc_put_audio, ptr @__kstrtabns_atmel_ssc_put_audio }, section "___ksymtab_gpl+atmel_ssc_put_audio", align 4
@__UNIQUE_ID_author230 = internal constant [61 x i8] c"author=Sedji Gaouaou, sedji.gaouaou@atmel.com, www.atmel.com\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [37 x i8] c"description=ATMEL SSC ASoC Interface\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ssc0\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"ssc1\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"ssc2\00", align 1
@atmel_ssc_component = internal constant %struct.snd_soc_component_driver { ptr @.str.6, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @atmel_ssc_suspend, ptr @atmel_ssc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@atmel_ssc_dai = internal global %struct.snd_soc_dai_driver { ptr null, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @atmel_ssc_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr null, i64 1093, i32 1073741824, i32 8000, i32 384000, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr null, i64 1093, i32 1073741824, i32 8000, i32 384000, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"Could not register DAI: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Could not register PCM: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"atmel-ssc\00", align 1
@atmel_ssc_dai_ops = internal constant %struct.snd_soc_dai_ops { ptr null, ptr null, ptr @atmel_ssc_set_dai_clkdiv, ptr null, ptr @atmel_ssc_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atmel_ssc_startup, ptr @atmel_ssc_shutdown, ptr @atmel_ssc_hw_params, ptr null, ptr @atmel_ssc_prepare, ptr @atmel_ssc_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"Failed to specify rate rule: %d\0A\00", align 1
@ssc_dma_params = internal global [3 x [2 x %struct.atmel_pcm_dma_params]] [[2 x %struct.atmel_pcm_dma_params] [%struct.atmel_pcm_dma_params { ptr @.str.8, i32 0, ptr null, ptr @pdc_tx_reg, ptr @ssc_tx_mask, ptr null, ptr null }, %struct.atmel_pcm_dma_params { ptr @.str.9, i32 0, ptr null, ptr @pdc_rx_reg, ptr @ssc_rx_mask, ptr null, ptr null }], [2 x %struct.atmel_pcm_dma_params] [%struct.atmel_pcm_dma_params { ptr @.str.10, i32 0, ptr null, ptr @pdc_tx_reg, ptr @ssc_tx_mask, ptr null, ptr null }, %struct.atmel_pcm_dma_params { ptr @.str.11, i32 0, ptr null, ptr @pdc_rx_reg, ptr @ssc_rx_mask, ptr null, ptr null }], [2 x %struct.atmel_pcm_dma_params] [%struct.atmel_pcm_dma_params { ptr @.str.12, i32 0, ptr null, ptr @pdc_tx_reg, ptr @ssc_tx_mask, ptr null, ptr null }, %struct.atmel_pcm_dma_params { ptr @.str.13, i32 0, ptr null, ptr @pdc_rx_reg, ptr @ssc_rx_mask, ptr null, ptr null }]], align 4
@__const.atmel_ssc_hw_rule_rate.r = private unnamed_addr constant %struct.snd_ratnum { i32 0, i32 1, i32 4095, i32 1 }, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"SSC0 PCM out\00", align 1
@pdc_tx_reg = internal global %struct.atmel_pdc_regs { i32 264, i32 268, i32 280, i32 284, i32 0 }, align 4
@ssc_tx_mask = internal global %struct.atmel_ssc_mask { i32 256, i32 512, i32 32, i32 4, i32 8, i32 256, i32 512 }, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"SSC0 PCM in\00", align 1
@pdc_rx_reg = internal global %struct.atmel_pdc_regs { i32 256, i32 260, i32 272, i32 276, i32 0 }, align 4
@ssc_rx_mask = internal global %struct.atmel_ssc_mask { i32 1, i32 2, i32 32, i32 64, i32 128, i32 1, i32 2 }, align 4
@.str.10 = private unnamed_addr constant [13 x i8] c"SSC1 PCM out\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"SSC1 PCM in\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"SSC2 PCM out\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"SSC2 PCM in\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"unable to calculate cmr_div: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"unable to calculate tx/rx cmr_period: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"\014atmel_ssc_dai: unsupported PCM format\00", align 1
@.str.17 = private unnamed_addr constant [46 x i8] c"\014atmel_ssc_dai: unsupported DAI format 0x%x\0A\00", align 1
@.str.18 = private unnamed_addr constant [44 x i8] c"sample size %d is too large for SSC device\0A\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"\014atmel_ssc_dai: request_irq failure\0A\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_license232, ptr @__ksymtab_atmel_ssc_put_audio, ptr @__ksymtab_atmel_ssc_set_audio], section "llvm.metadata"
@switch.table.atmel_ssc_hw_params = private unnamed_addr constant [6 x i32] [i32 1, i32 2, i32 1, i32 4, i32 1, i32 4], align 4
@switch.table.atmel_ssc_hw_params.20 = private unnamed_addr constant [6 x i32] [i32 8, i32 16, i32 8, i32 24, i32 8, i32 32], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @atmel_ssc_set_audio(i32 noundef %0) #0 {
  %2 = tail call ptr @ssc_request(i32 noundef %0) #8
  %3 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = ptrtoint ptr %2 to i32
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %5) #9
  br label %30

7:                                                ; preds = %1
  %8 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %0, i32 1
  store ptr %2, ptr %8, align 4
  %9 = getelementptr inbounds %struct.ssc_device, ptr %2, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3, i32 8
  %13 = load ptr, ptr %12, align 8
  %14 = tail call i32 @devm_snd_soc_register_component(ptr noundef %11, ptr noundef nonnull @atmel_ssc_component, ptr noundef nonnull @atmel_ssc_dai, i32 noundef 1) #8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.4, i32 noundef %14) #9
  br label %30

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.ssc_device, ptr %13, i32 0, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = tail call i32 @atmel_pcm_dma_platform_register(ptr noundef %11) #8
  br label %26

24:                                               ; preds = %17
  %25 = tail call i32 @atmel_pcm_pdc_platform_register(ptr noundef %11) #8
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.5, i32 noundef %27) #9
  br label %30

30:                                               ; preds = %29, %26, %16, %4
  %31 = phi i32 [ %5, %4 ], [ %14, %16 ], [ %27, %29 ], [ 0, %26 ]
  ret i32 %31
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ssc_request(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @atmel_ssc_put_audio(i32 noundef %0) #0 {
  %2 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void @ssc_free(ptr noundef %3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ssc_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atmel_pcm_dma_platform_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atmel_pcm_pdc_platform_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_ssc_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %60, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 -12
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %9, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ssc_device, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 64
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #8, !srcloc !8
  %16 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %9, i32 10
  %17 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %9, i32 10, i32 5
  store i32 %15, ptr %17, align 4
  %18 = load ptr, ptr %10, align 4
  %19 = getelementptr inbounds %struct.ssc_device, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 514) #8, !srcloc !9
  %21 = load ptr, ptr %10, align 4
  %22 = getelementptr inbounds %struct.ssc_device, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 76
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #8, !srcloc !8
  %26 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %9, i32 10, i32 6
  store i32 %25, ptr %26, align 4
  %27 = load ptr, ptr %10, align 4
  %28 = getelementptr inbounds %struct.ssc_device, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %29, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %25) #8, !srcloc !9
  %31 = load ptr, ptr %10, align 4
  %32 = getelementptr inbounds %struct.ssc_device, ptr %31, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %33, i32 4
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #8, !srcloc !8
  store i32 %35, ptr %16, align 4
  %36 = load ptr, ptr %10, align 4
  %37 = getelementptr inbounds %struct.ssc_device, ptr %36, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr i8, ptr %38, i32 16
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #8, !srcloc !8
  %41 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %9, i32 10, i32 1
  store i32 %40, ptr %41, align 4
  %42 = load ptr, ptr %10, align 4
  %43 = getelementptr inbounds %struct.ssc_device, ptr %42, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr i8, ptr %44, i32 20
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #8, !srcloc !8
  %47 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %9, i32 10, i32 2
  store i32 %46, ptr %47, align 4
  %48 = load ptr, ptr %10, align 4
  %49 = getelementptr inbounds %struct.ssc_device, ptr %48, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr i8, ptr %50, i32 24
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #8, !srcloc !8
  %53 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %9, i32 10, i32 3
  store i32 %52, ptr %53, align 4
  %54 = load ptr, ptr %10, align 4
  %55 = getelementptr inbounds %struct.ssc_device, ptr %54, i32 0, i32 2
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr i8, ptr %56, i32 28
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #8, !srcloc !8
  %59 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %9, i32 10, i32 4
  store i32 %58, ptr %59, align 4
  br label %60

60:                                               ; preds = %5, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_ssc_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %57, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 -12
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %9, i32 10
  %11 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %9, i32 10, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %9, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ssc_device, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %12) #8, !srcloc !9
  %18 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %9, i32 10, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = load ptr, ptr %13, align 4
  %21 = getelementptr inbounds %struct.ssc_device, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %19) #8, !srcloc !9
  %24 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %9, i32 10, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = load ptr, ptr %13, align 4
  %27 = getelementptr inbounds %struct.ssc_device, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %25) #8, !srcloc !9
  %30 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %9, i32 10, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = load ptr, ptr %13, align 4
  %33 = getelementptr inbounds %struct.ssc_device, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr i8, ptr %34, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %31) #8, !srcloc !9
  %36 = load i32, ptr %10, align 4
  %37 = load ptr, ptr %13, align 4
  %38 = getelementptr inbounds %struct.ssc_device, ptr %37, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr i8, ptr %39, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %36) #8, !srcloc !9
  %41 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %9, i32 10, i32 6
  %42 = load i32, ptr %41, align 4
  %43 = load ptr, ptr %13, align 4
  %44 = getelementptr inbounds %struct.ssc_device, ptr %43, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr i8, ptr %45, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %42) #8, !srcloc !9
  %47 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %9, i32 10, i32 5
  %48 = load i32, ptr %47, align 4
  %49 = lshr i32 %48, 17
  %50 = and i32 %49, 1
  %51 = lshr i32 %48, 8
  %52 = and i32 %51, 256
  %53 = or i32 %50, %52
  %54 = load ptr, ptr %13, align 4
  %55 = getelementptr inbounds %struct.ssc_device, ptr %54, i32 0, i32 2
  %56 = load ptr, ptr %55, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %53) #8, !srcloc !9
  br label %57

57:                                               ; preds = %5, %1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @atmel_ssc_set_dai_clkdiv(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #4 {
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -12
  %7 = load i32, ptr %6, align 4
  switch i32 %1, label %35 [
    i32 0, label %8
    i32 1, label %24
    i32 2, label %27
  ]

8:                                                ; preds = %3
  %9 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %7, i32 2
  %10 = load i16, ptr %9, align 4
  %11 = icmp eq i16 %10, 3
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = trunc i32 %2 to i16
  %14 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %7, i32 5
  store i16 %13, ptr %14, align 2
  br label %30

15:                                               ; preds = %8
  %16 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %7, i32 5
  %17 = load i16, ptr %16, align 2
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = trunc i32 %2 to i16
  store i16 %20, ptr %16, align 2
  br label %30

21:                                               ; preds = %15
  %22 = zext i16 %17 to i32
  %23 = icmp eq i32 %22, %2
  br i1 %23, label %30, label %35

24:                                               ; preds = %3
  %25 = trunc i32 %2 to i16
  %26 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %7, i32 6
  store i16 %25, ptr %26, align 4
  br label %30

27:                                               ; preds = %3
  %28 = trunc i32 %2 to i16
  %29 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %7, i32 7
  store i16 %28, ptr %29, align 2
  br label %30

30:                                               ; preds = %27, %24, %21, %19, %12
  %31 = phi i32 [ 2, %24 ], [ 4, %27 ], [ 1, %19 ], [ 1, %21 ], [ 1, %12 ]
  %32 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %7, i32 8
  %33 = load i32, ptr %32, align 4
  %34 = or i32 %33, %31
  store i32 %34, ptr %32, align 4
  br label %35

35:                                               ; preds = %30, %21, %3
  %36 = phi i32 [ -16, %21 ], [ -22, %3 ], [ 0, %30 ]
  ret i32 %36
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @atmel_ssc_set_dai_fmt(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -12
  %6 = load i32, ptr %5, align 4
  %7 = trunc i32 %1 to i16
  %8 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %6, i32 4
  store i16 %7, ptr %8, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_ssc_startup(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -12
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %6
  %8 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %6, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ssc_device, ptr %9, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @clk_enable(ptr noundef %11) #8
  %13 = load ptr, ptr %8, align 4
  %14 = getelementptr inbounds %struct.ssc_device, ptr %13, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @clk_get_rate(ptr noundef %15) #8
  %17 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %6, i32 11
  store i32 %16, ptr %17, align 4
  %18 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %6, i32 3
  %19 = load i16, ptr %18, align 2
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load ptr, ptr %8, align 4
  %23 = getelementptr inbounds %struct.ssc_device, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 32768) #8, !srcloc !9
  br label %25

25:                                               ; preds = %21, %2
  %26 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, i32 1, i32 2
  %30 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %31, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @atmel_ssc_hw_rule_rate, ptr noundef %7, i32 noundef 9, i32 noundef 10, i32 noundef -1) #8
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.7, i32 noundef %32) #9
  br label %58

36:                                               ; preds = %25
  %37 = xor i1 %28, true
  %38 = zext i1 %37 to i32
  %39 = load i32, ptr %5, align 4
  %40 = getelementptr [3 x [2 x %struct.atmel_pcm_dma_params]], ptr @ssc_dma_params, i32 0, i32 %39, i32 %38
  %41 = load ptr, ptr %8, align 4
  %42 = getelementptr [3 x [2 x %struct.atmel_pcm_dma_params]], ptr @ssc_dma_params, i32 0, i32 %39, i32 %38, i32 2
  store ptr %41, ptr %42, align 4
  %43 = getelementptr [3 x [2 x %struct.atmel_pcm_dma_params]], ptr @ssc_dma_params, i32 0, i32 %39, i32 %38, i32 5
  store ptr %0, ptr %43, align 4
  %44 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %6, i32 9, i32 %38
  store ptr %40, ptr %44, align 4
  %45 = load i32, ptr %26, align 4
  %46 = icmp eq i32 %45, 0
  %47 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 8
  %48 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 7
  %49 = select i1 %46, ptr %48, ptr %47
  store ptr %40, ptr %49, align 4
  %50 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %6, i32 2
  %51 = load i16, ptr %50, align 4
  %52 = zext i16 %51 to i32
  %53 = and i32 %29, %52
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %36
  %56 = trunc i32 %29 to i16
  %57 = or i16 %51, %56
  store i16 %57, ptr %50, align 4
  br label %58

58:                                               ; preds = %55, %36, %34
  %59 = phi i32 [ %32, %34 ], [ 0, %55 ], [ -16, %36 ]
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_ssc_shutdown(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -12
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %6
  %8 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %6, i32 9, i32 %11
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %13, i32 0, i32 2
  store ptr null, ptr %16, align 4
  %17 = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %13, i32 0, i32 5
  store ptr null, ptr %17, align 4
  store ptr null, ptr %12, align 4
  br label %18

18:                                               ; preds = %15, %2
  %19 = shl nuw nsw i32 1, %11
  %20 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %6, i32 2
  %21 = load i16, ptr %20, align 4
  %22 = trunc i32 %19 to i16
  %23 = xor i16 %22, -1
  %24 = and i16 %21, %23
  store i16 %24, ptr %20, align 4
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %18
  %27 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %6, i32 3
  %28 = load i16, ptr %27, align 2
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %26
  %31 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %6, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.ssc_device, ptr %32, i32 0, i32 7
  %34 = load i32, ptr %33, align 4
  %35 = tail call ptr @free_irq(i32 noundef %34, ptr noundef %7) #8
  store i16 0, ptr %27, align 2
  br label %36

36:                                               ; preds = %30, %26
  %37 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %6, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.ssc_device, ptr %38, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 32768) #8, !srcloc !9
  %41 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %6, i32 5
  call void @llvm.memset.p0.i64(ptr noundef align 2 dereferenceable(10) %41, i8 0, i64 10, i1 false)
  br label %42

42:                                               ; preds = %36, %18
  %43 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %6, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.ssc_device, ptr %44, i32 0, i32 5
  %46 = load ptr, ptr %45, align 4
  tail call void @clk_disable(ptr noundef %46) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_ssc_hw_params(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -12
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %7
  %9 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %7, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %7, i32 5
  %16 = load i16, ptr %15, align 2
  %17 = zext i16 %16 to i32
  %18 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %7, i32 8
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %3
  %23 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %7, i32 4
  %24 = load i16, ptr %23, align 4
  %25 = add i16 %24, -8192
  %26 = and i16 %25, -12288
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %22
  %29 = tail call i32 @snd_soc_params_to_bclk(ptr noundef %1) #8
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.14, i32 noundef %29) #9
  br label %251

33:                                               ; preds = %28
  %34 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %7, i32 11
  %35 = load i32, ptr %34, align 4
  %36 = shl nuw i32 %29, 1
  %37 = sdiv i32 %36, 2
  %38 = add i32 %35, %37
  %39 = udiv i32 %38, %36
  br label %40

40:                                               ; preds = %33, %22, %3
  %41 = phi i32 [ %17, %3 ], [ %39, %33 ], [ %17, %22 ]
  %42 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %7, i32 6
  %43 = load i16, ptr %42, align 4
  %44 = zext i16 %43 to i32
  %45 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %7, i32 7
  %46 = load i16, ptr %45, align 2
  %47 = zext i16 %46 to i32
  %48 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %7, i32 4
  %49 = load i16, ptr %48, align 4
  %50 = add i16 %49, -20480
  %51 = icmp ult i16 %50, -8192
  br i1 %51, label %67, label %52

52:                                               ; preds = %40
  %53 = tail call i32 @snd_soc_params_to_frame_size(ptr noundef %1) #8
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.15, i32 noundef %53) #9
  br label %251

57:                                               ; preds = %52
  %58 = load i32, ptr %18, align 4
  %59 = and i32 %58, 2
  %60 = icmp eq i32 %59, 0
  %61 = lshr i32 %53, 1
  %62 = add nsw i32 %61, -1
  %63 = select i1 %60, i32 %62, i32 %44
  %64 = and i32 %58, 4
  %65 = icmp eq i32 %64, 0
  %66 = select i1 %65, i32 %62, i32 %47
  br label %67

67:                                               ; preds = %57, %40
  %68 = phi i32 [ %63, %57 ], [ %44, %40 ]
  %69 = phi i32 [ %66, %57 ], [ %47, %40 ]
  %70 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %7, i32 9, i32 %14
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 3, i32 2
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %82, %67
  %78 = phi i32 [ 0, %67 ], [ 32, %82 ]
  %79 = phi i32 [ %75, %67 ], [ %84, %82 ]
  %80 = tail call i32 @llvm.cttz.i32(i32 %79, i1 true) #8, !range !10
  %81 = or i32 %80, %78
  br label %86

82:                                               ; preds = %67
  %83 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 1
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %77

86:                                               ; preds = %82, %77
  %87 = phi i32 [ %81, %77 ], [ 0, %82 ]
  %88 = tail call i32 @llvm.fshl.i32(i32 %87, i32 %87, i32 31)
  %89 = icmp ult i32 %88, 6
  br i1 %89, label %92, label %90

90:                                               ; preds = %92, %86
  %91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #9
  br label %251

92:                                               ; preds = %86
  %93 = trunc i32 %88 to i8
  %94 = lshr i8 43, %93
  %95 = and i8 %94, 1
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %90, label %97

97:                                               ; preds = %92
  %98 = getelementptr inbounds [6 x i32], ptr @switch.table.atmel_ssc_hw_params, i32 0, i32 %88
  %99 = load i32, ptr %98, align 4
  %100 = getelementptr inbounds [6 x i32], ptr @switch.table.atmel_ssc_hw_params.20, i32 0, i32 %88
  %101 = load i32, ptr %100, align 4
  %102 = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %71, i32 0, i32 1
  store i32 %99, ptr %102, align 4
  %103 = add nsw i32 %101, -1
  %104 = lshr i32 %103, 4
  %105 = and i32 %103, 15
  %106 = load i16, ptr %48, align 4
  %107 = zext i16 %106 to i32
  %108 = and i32 %107, 15
  switch i32 %108, label %111 [
    i32 3, label %113
    i32 1, label %109
    i32 4, label %110
  ]

109:                                              ; preds = %97
  br label %113

110:                                              ; preds = %97
  br label %113

111:                                              ; preds = %97
  %112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %107) #9
  br label %251

113:                                              ; preds = %110, %109, %97
  %114 = phi i32 [ 65536, %110 ], [ 65536, %109 ], [ 0, %97 ]
  %115 = phi i32 [ 0, %110 ], [ %105, %109 ], [ %105, %97 ]
  %116 = phi i32 [ 0, %110 ], [ %104, %109 ], [ %104, %97 ]
  %117 = phi i32 [ 2097152, %110 ], [ 1048576, %109 ], [ 2097152, %97 ]
  %118 = phi i32 [ 1280, %110 ], [ 1024, %109 ], [ 1280, %97 ]
  %119 = add i16 %106, -20480
  %120 = icmp ult i16 %119, -8192
  br i1 %120, label %121, label %122

121:                                              ; preds = %113
  br label %122

122:                                              ; preds = %121, %113
  %123 = phi i32 [ %115, %113 ], [ 0, %121 ]
  %124 = phi i32 [ %116, %113 ], [ 0, %121 ]
  %125 = phi i32 [ %117, %113 ], [ 0, %121 ]
  %126 = phi i32 [ %68, %113 ], [ 0, %121 ]
  %127 = phi i32 [ %69, %113 ], [ 0, %121 ]
  %128 = or i32 %118, %114
  %129 = add i16 %106, -8192
  %130 = and i16 %129, -12288
  %131 = icmp eq i16 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %122
  %133 = or i32 %128, 4
  br label %142

134:                                              ; preds = %122
  %135 = getelementptr inbounds %struct.ssc_device, ptr %10, i32 0, i32 8
  %136 = load i8, ptr %135, align 4, !range !11
  %137 = icmp eq i8 %136, 0
  %138 = select i1 %137, i32 1, i32 2
  %139 = or i32 %138, %128
  %140 = select i1 %137, i32 2, i32 1
  %141 = or i32 %140, %128
  br label %142

142:                                              ; preds = %134, %132
  %143 = phi i32 [ %133, %132 ], [ %141, %134 ]
  %144 = phi i32 [ %128, %132 ], [ %139, %134 ]
  %145 = shl i32 %127, 24
  %146 = or i32 %145, 32
  %147 = or i32 %144, %146
  %148 = shl i32 %126, 24
  %149 = or i32 %143, %148
  %150 = shl nuw nsw i32 %124, 28
  %151 = and i32 %125, 15728640
  %152 = shl nuw nsw i32 %123, 16
  %153 = and i32 %152, 983040
  %154 = shl i32 %73, 8
  %155 = add i32 %154, 3840
  %156 = and i32 %155, 3840
  %157 = or i32 %156, %103
  %158 = or i32 %157, %150
  %159 = or i32 %158, %153
  %160 = or i32 %159, %151
  %161 = or i32 %160, 128
  %162 = and i32 %125, 7340032
  %163 = or i32 %159, %162
  %164 = or i32 %163, 128
  %165 = icmp eq i32 %124, 0
  br i1 %165, label %174, label %166

166:                                              ; preds = %142
  %167 = getelementptr inbounds %struct.ssc_device, ptr %10, i32 0, i32 4
  %168 = load ptr, ptr %167, align 4
  %169 = getelementptr inbounds %struct.atmel_ssc_platform_data, ptr %168, i32 0, i32 1
  %170 = load i32, ptr %169, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %166
  %173 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %173, ptr noundef nonnull @.str.18, i32 noundef %101) #9
  br label %251

174:                                              ; preds = %166, %142
  %175 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %7, i32 3
  %176 = load i16, ptr %175, align 2
  %177 = icmp eq i16 %176, 0
  br i1 %177, label %178, label %230

178:                                              ; preds = %174
  %179 = load ptr, ptr %9, align 4
  %180 = getelementptr inbounds %struct.ssc_device, ptr %179, i32 0, i32 4
  %181 = load ptr, ptr %180, align 4
  %182 = load i32, ptr %181, align 4
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %217

184:                                              ; preds = %178
  %185 = getelementptr inbounds %struct.ssc_device, ptr %179, i32 0, i32 2
  %186 = load ptr, ptr %185, align 4
  %187 = getelementptr i8, ptr %186, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %187, i32 0) #8, !srcloc !9
  %188 = load ptr, ptr %9, align 4
  %189 = getelementptr inbounds %struct.ssc_device, ptr %188, i32 0, i32 2
  %190 = load ptr, ptr %189, align 4
  %191 = getelementptr i8, ptr %190, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %191, i32 0) #8, !srcloc !9
  %192 = load ptr, ptr %9, align 4
  %193 = getelementptr inbounds %struct.ssc_device, ptr %192, i32 0, i32 2
  %194 = load ptr, ptr %193, align 4
  %195 = getelementptr i8, ptr %194, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %195, i32 0) #8, !srcloc !9
  %196 = load ptr, ptr %9, align 4
  %197 = getelementptr inbounds %struct.ssc_device, ptr %196, i32 0, i32 2
  %198 = load ptr, ptr %197, align 4
  %199 = getelementptr i8, ptr %198, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %199, i32 0) #8, !srcloc !9
  %200 = load ptr, ptr %9, align 4
  %201 = getelementptr inbounds %struct.ssc_device, ptr %200, i32 0, i32 2
  %202 = load ptr, ptr %201, align 4
  %203 = getelementptr i8, ptr %202, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %203, i32 0) #8, !srcloc !9
  %204 = load ptr, ptr %9, align 4
  %205 = getelementptr inbounds %struct.ssc_device, ptr %204, i32 0, i32 2
  %206 = load ptr, ptr %205, align 4
  %207 = getelementptr i8, ptr %206, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %207, i32 0) #8, !srcloc !9
  %208 = load ptr, ptr %9, align 4
  %209 = getelementptr inbounds %struct.ssc_device, ptr %208, i32 0, i32 2
  %210 = load ptr, ptr %209, align 4
  %211 = getelementptr i8, ptr %210, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %211, i32 0) #8, !srcloc !9
  %212 = load ptr, ptr %9, align 4
  %213 = getelementptr inbounds %struct.ssc_device, ptr %212, i32 0, i32 2
  %214 = load ptr, ptr %213, align 4
  %215 = getelementptr i8, ptr %214, i32 284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %215, i32 0) #8, !srcloc !9
  %216 = load ptr, ptr %9, align 4
  br label %217

217:                                              ; preds = %184, %178
  %218 = phi ptr [ %216, %184 ], [ %179, %178 ]
  %219 = getelementptr inbounds %struct.ssc_device, ptr %218, i32 0, i32 7
  %220 = load i32, ptr %219, align 4
  %221 = load ptr, ptr %8, align 4
  %222 = tail call i32 @request_threaded_irq(i32 noundef %220, ptr noundef nonnull @atmel_ssc_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %221, ptr noundef %8) #8
  %223 = icmp slt i32 %222, 0
  br i1 %223, label %224, label %229

224:                                              ; preds = %217
  %225 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #9
  %226 = load ptr, ptr %9, align 4
  %227 = getelementptr inbounds %struct.ssc_device, ptr %226, i32 0, i32 5
  %228 = load ptr, ptr %227, align 4
  tail call void @clk_disable(ptr noundef %228) #8
  br label %251

229:                                              ; preds = %217
  store i16 1, ptr %175, align 2
  br label %230

230:                                              ; preds = %229, %174
  %231 = load ptr, ptr %9, align 4
  %232 = getelementptr inbounds %struct.ssc_device, ptr %231, i32 0, i32 2
  %233 = load ptr, ptr %232, align 4
  %234 = getelementptr i8, ptr %233, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %234, i32 %41) #8, !srcloc !9
  %235 = load ptr, ptr %9, align 4
  %236 = getelementptr inbounds %struct.ssc_device, ptr %235, i32 0, i32 2
  %237 = load ptr, ptr %236, align 4
  %238 = getelementptr i8, ptr %237, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %238, i32 %147) #8, !srcloc !9
  %239 = load ptr, ptr %9, align 4
  %240 = getelementptr inbounds %struct.ssc_device, ptr %239, i32 0, i32 2
  %241 = load ptr, ptr %240, align 4
  %242 = getelementptr i8, ptr %241, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %242, i32 %161) #8, !srcloc !9
  %243 = load ptr, ptr %9, align 4
  %244 = getelementptr inbounds %struct.ssc_device, ptr %243, i32 0, i32 2
  %245 = load ptr, ptr %244, align 4
  %246 = getelementptr i8, ptr %245, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %246, i32 %149) #8, !srcloc !9
  %247 = load ptr, ptr %9, align 4
  %248 = getelementptr inbounds %struct.ssc_device, ptr %247, i32 0, i32 2
  %249 = load ptr, ptr %248, align 4
  %250 = getelementptr i8, ptr %249, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %250, i32 %164) #8, !srcloc !9
  br label %251

251:                                              ; preds = %230, %224, %172, %111, %90, %55, %31
  %252 = phi i32 [ -22, %90 ], [ -22, %111 ], [ 0, %230 ], [ %222, %224 ], [ -22, %172 ], [ %29, %31 ], [ %53, %55 ]
  ret i32 %252
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_ssc_prepare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -12
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i32
  %11 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %6, i32 9, i32 %10
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %12, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.atmel_ssc_mask, ptr %14, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %6, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ssc_device, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %16) #8, !srcloc !9
  %21 = load ptr, ptr %13, align 4
  %22 = getelementptr inbounds %struct.atmel_ssc_mask, ptr %21, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = load ptr, ptr %17, align 4
  %25 = getelementptr inbounds %struct.ssc_device, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i8, ptr %26, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %23) #8, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_ssc_trigger(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -12
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %7, i32 9, i32 %11
  %13 = load ptr, ptr %12, align 4
  switch i32 %1, label %22 [
    i32 1, label %14
    i32 6, label %14
    i32 4, label %14
  ]

14:                                               ; preds = %3, %3, %3
  %15 = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %13, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %7, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.ssc_device, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %17) #8, !srcloc !9
  br label %31

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %13, i32 0, i32 4
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.atmel_ssc_mask, ptr %24, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr [3 x %struct.atmel_ssc_info], ptr @ssc_info, i32 0, i32 %7, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.ssc_device, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %26) #8, !srcloc !9
  br label %31

31:                                               ; preds = %22, %14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_rule_add(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_ssc_hw_rule_rate(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.snd_interval, align 4
  %4 = alloca %struct.snd_ratnum, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %1, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.atmel_ssc_info, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %1, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, -8
  %14 = getelementptr %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 3, i32 %13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #8
  %15 = getelementptr inbounds i8, ptr %3, i32 8
  store i32 0, ptr %15, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) @__const.atmel_ssc_hw_rule_rate.r, i32 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4
  %16 = tail call i32 @snd_soc_params_to_frame_size(ptr noundef %0) #8
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %68, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.atmel_ssc_info, ptr %8, i32 0, i32 4
  %20 = load i16, ptr %19, align 4
  %21 = and i16 %20, -4096
  switch i16 %21, label %68 [
    i16 12288, label %22
    i16 4096, label %32
    i16 16384, label %42
  ]

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.atmel_ssc_info, ptr %8, i32 0, i32 2
  %24 = load i16, ptr %23, align 4
  %25 = and i16 %24, 2
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %59, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.ssc_device, ptr %10, i32 0, i32 8
  %29 = load i8, ptr %28, align 4, !range !11
  %30 = icmp eq i8 %29, 0
  %31 = select i1 %30, i32 2, i32 3
  br label %59

32:                                               ; preds = %18
  %33 = getelementptr inbounds %struct.atmel_ssc_info, ptr %8, i32 0, i32 2
  %34 = load i16, ptr %33, align 4
  %35 = and i16 %34, 1
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %59, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.ssc_device, ptr %10, i32 0, i32 8
  %39 = load i8, ptr %38, align 4, !range !11
  %40 = icmp eq i8 %39, 0
  %41 = select i1 %40, i32 6, i32 2
  br label %59

42:                                               ; preds = %18
  %43 = getelementptr inbounds %struct.atmel_ssc_info, ptr %8, i32 0, i32 11
  %44 = load i32, ptr %43, align 4
  %45 = lshr i32 %44, 1
  %46 = udiv i32 %45, %16
  store i32 %46, ptr %4, align 4
  %47 = call i32 @snd_interval_ratnum(ptr noundef %14, i32 noundef 1, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #8
  %48 = icmp sgt i32 %47, -1
  %49 = load i32, ptr %6, align 4
  %50 = icmp ne i32 %49, 0
  %51 = select i1 %48, i1 %50, i1 false
  br i1 %51, label %52, label %68

52:                                               ; preds = %42
  %53 = load i32, ptr %11, align 4
  %54 = icmp eq i32 %53, 11
  br i1 %54, label %55, label %68

55:                                               ; preds = %52
  %56 = load i32, ptr %5, align 4
  %57 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 9
  store i32 %56, ptr %57, align 4
  %58 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %0, i32 0, i32 10
  store i32 %49, ptr %58, align 4
  br label %68

59:                                               ; preds = %37, %32, %27, %22
  %60 = phi i32 [ %41, %37 ], [ %31, %27 ], [ 2, %22 ], [ 2, %32 ]
  store i32 8000, ptr %3, align 4
  %61 = getelementptr inbounds %struct.atmel_ssc_info, ptr %8, i32 0, i32 11
  %62 = load i32, ptr %61, align 4
  %63 = udiv i32 %62, %60
  %64 = udiv i32 %63, %16
  %65 = getelementptr inbounds %struct.snd_interval, ptr %3, i32 0, i32 1
  store i32 %64, ptr %65, align 4
  %66 = getelementptr inbounds %struct.snd_interval, ptr %3, i32 0, i32 2
  store i8 0, ptr %66, align 4
  %67 = call i32 @snd_interval_refine(ptr noundef %14, ptr noundef nonnull %3) #8
  br label %68

68:                                               ; preds = %59, %55, %52, %42, %18, %2
  %69 = phi i32 [ %16, %2 ], [ %67, %59 ], [ %47, %55 ], [ %47, %52 ], [ %47, %42 ], [ -22, %18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  ret i32 %69
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_params_to_frame_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_interval_ratnum(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_interval_refine(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_params_to_bclk(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_ssc_interrupt(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.atmel_ssc_info, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ssc_device, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 64
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #8, !srcloc !8
  %9 = load ptr, ptr %3, align 4
  %10 = getelementptr inbounds %struct.ssc_device, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 76
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #8, !srcloc !8
  %14 = and i32 %13, %8
  %15 = getelementptr %struct.atmel_ssc_info, ptr %1, i32 0, i32 9, i32 0
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %35, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %16, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %35, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %16, i32 0, i32 4
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.atmel_ssc_mask, ptr %24, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.atmel_ssc_mask, ptr %24, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = or i32 %28, %26
  %30 = and i32 %29, %14
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %16, i32 0, i32 5
  %34 = load ptr, ptr %33, align 4
  tail call void %20(i32 noundef %14, ptr noundef %34) #8
  br label %35

35:                                               ; preds = %32, %22, %18, %2
  %36 = getelementptr %struct.atmel_ssc_info, ptr %1, i32 0, i32 9, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %56, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %37, i32 0, i32 6
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %56, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %37, i32 0, i32 4
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.atmel_ssc_mask, ptr %45, i32 0, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.atmel_ssc_mask, ptr %45, i32 0, i32 4
  %49 = load i32, ptr %48, align 4
  %50 = or i32 %49, %47
  %51 = and i32 %50, %14
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %43
  %54 = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %37, i32 0, i32 5
  %55 = load ptr, ptr %54, align 4
  tail call void %41(i32 noundef %14, ptr noundef %55) #8
  br label %56

56:                                               ; preds = %53, %43, %39, %35
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
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
!8 = !{i64 3480077}
!9 = !{i64 3479659}
!10 = !{i32 0, i32 33}
!11 = !{i8 0, i8 2}
!12 = !{!"auto-init"}
