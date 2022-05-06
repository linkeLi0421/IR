; ModuleID = '/llk/IR/sound/soc/atmel/atmel-pcm-pdc.c_pt.bc'
source_filename = "../sound/soc/atmel/atmel-pcm-pdc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_atmel_pcm_pdc_platform_register:\09\09\09\09\09"
module asm "\09.asciz \09\22atmel_pcm_pdc_platform_register\22\09\09\09\09\09"
module asm "__kstrtabns_atmel_pcm_pdc_platform_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [80 x i8], [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64 }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.atmel_pcm_dma_params = type { ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.atmel_runtime_data = type { ptr, i32, i32, i32, i32 }
%struct.atmel_ssc_mask = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ssc_device = type { %struct.list_head, i32, ptr, ptr, ptr, ptr, i32, i32, i8, i8 }
%struct.atmel_pdc_regs = type { i32, i32, i32, i32, i32 }

@atmel_soc_platform = internal constant %struct.snd_soc_component_driver { ptr null, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atmel_pcm_new, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atmel_pcm_open, ptr @atmel_pcm_close, ptr null, ptr @atmel_pcm_hw_params, ptr @atmel_pcm_hw_free, ptr @atmel_pcm_prepare, ptr @atmel_pcm_trigger, ptr null, ptr @atmel_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@__kstrtab_atmel_pcm_pdc_platform_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_atmel_pcm_pdc_platform_register = external dso_local constant [0 x i8], align 1
@__ksymtab_atmel_pcm_pdc_platform_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @atmel_pcm_pdc_platform_register to i32), ptr @__kstrtab_atmel_pcm_pdc_platform_register, ptr @__kstrtabns_atmel_pcm_pdc_platform_register }, section "___ksymtab+atmel_pcm_pdc_platform_register", align 4
@__UNIQUE_ID_author232 = internal constant [47 x i8] c"author=Sedji Gaouaou <sedji.gaouaou@atmel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description233 = internal constant [29 x i8] c"description=Atmel PCM module\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@atmel_pcm_hardware = internal constant %struct.snd_pcm_hardware { i32 524547, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 65536, i32 32, i32 8192, i32 2, i32 1024, i32 0 }, align 8
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@atmel_pcm_dma_irq.count = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"\014atmel-pcm: buffer %s on %s (SSC_SR=%#x, count=%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"underrun\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"overrun\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_description233, ptr @__UNIQUE_ID_license234, ptr @__ksymtab_atmel_pcm_pdc_platform_register], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @atmel_pcm_pdc_platform_register(ptr noundef %0) #0 {
  %2 = tail call i32 @devm_snd_soc_register_component(ptr noundef %0, ptr noundef nonnull @atmel_soc_platform, ptr noundef null, i32 noundef 0) #5
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_pcm_new(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_card, ptr %4, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_card, ptr %6, i32 0, i32 27
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 17
  %10 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 16
  store ptr %9, ptr %10, align 4
  %11 = tail call i32 @dma_set_mask(ptr noundef %8, i64 noundef 4294967295) #5
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = tail call i32 @dma_set_coherent_mask(ptr noundef %8, i64 noundef 4294967295) #5
  %15 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %7, align 8
  %18 = tail call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %16, i32 noundef 2, ptr noundef %17, i32 noundef 65536, i32 noundef 65536) #5
  br label %19

19:                                               ; preds = %13, %2
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_pcm_open(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @snd_soc_set_runtime_hwparams(ptr noundef %1, ptr noundef nonnull @atmel_pcm_hardware) #5
  %6 = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %4, i32 noundef 15) #5
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 20) #6
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 44
  store ptr %10, ptr %13, align 8
  br label %14

14:                                               ; preds = %12, %8, %2
  %15 = phi i32 [ %6, %2 ], [ %6, %12 ], [ -12, %8 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_pcm_close(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 44
  %6 = load ptr, ptr %5, align 8
  tail call void @kfree(ptr noundef %6) #5
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @atmel_pcm_hw_params(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #2 {
  %4 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 44
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %9, i32 0, i32 9
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  %16 = getelementptr inbounds %struct.snd_soc_dai, ptr %12, i32 0, i32 7
  %17 = getelementptr inbounds %struct.snd_soc_dai, ptr %12, i32 0, i32 8
  %18 = select i1 %15, ptr %16, ptr %17
  %19 = load ptr, ptr %18, align 4
  store ptr %19, ptr %7, align 4
  %20 = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %19, i32 0, i32 6
  store ptr @atmel_pcm_dma_irq, ptr %20, align 4
  %21 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 51
  %22 = load i32, ptr %21, align 8
  %23 = getelementptr inbounds %struct.atmel_runtime_data, ptr %7, i32 0, i32 1
  store i32 %22, ptr %23, align 4
  %24 = load i32, ptr %21, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 52
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, %24
  %28 = getelementptr inbounds %struct.atmel_runtime_data, ptr %7, i32 0, i32 2
  store i32 %27, ptr %28, align 4
  %29 = getelementptr %struct.snd_pcm_hw_params, ptr %2, i32 0, i32 3, i32 6
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.atmel_runtime_data, ptr %7, i32 0, i32 3
  store i32 %30, ptr %31, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_pcm_hw_free(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 44
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %7, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.atmel_ssc_mask, ptr %11, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %7, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ssc_device, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %13) #5, !srcloc !8
  %19 = load ptr, ptr %6, align 4
  %20 = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %19, i32 0, i32 6
  store ptr null, ptr %20, align 4
  br label %21

21:                                               ; preds = %9, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_pcm_prepare(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 44
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.atmel_ssc_mask, ptr %9, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.atmel_ssc_mask, ptr %9, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = or i32 %13, %11
  %15 = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %7, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.ssc_device, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %14) #5, !srcloc !8
  %20 = load ptr, ptr %8, align 4
  %21 = getelementptr inbounds %struct.atmel_ssc_mask, ptr %20, i32 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = load ptr, ptr %15, align 4
  %24 = getelementptr inbounds %struct.ssc_device, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %25, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %22) #5, !srcloc !8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_pcm_trigger(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 44
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %7, align 4
  switch i32 %2, label %91 [
    i32 1, label %9
    i32 0, label %71
    i32 5, label %71
    i32 3, label %71
    i32 6, label %81
    i32 4, label %81
  ]

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.atmel_runtime_data, ptr %7, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.atmel_runtime_data, ptr %7, i32 0, i32 4
  store i32 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %8, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ssc_device, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %8, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr i8, ptr %16, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %11) #5, !srcloc !8
  %21 = getelementptr inbounds %struct.atmel_runtime_data, ptr %7, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %8, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = udiv i32 %22, %24
  %26 = load ptr, ptr %13, align 4
  %27 = getelementptr inbounds %struct.ssc_device, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = load ptr, ptr %17, align 4
  %30 = getelementptr inbounds %struct.atmel_pdc_regs, ptr %29, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr i8, ptr %28, i32 %31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %25) #5, !srcloc !8
  %33 = load i32, ptr %21, align 4
  %34 = load i32, ptr %12, align 4
  %35 = add i32 %34, %33
  store i32 %35, ptr %12, align 4
  %36 = load ptr, ptr %13, align 4
  %37 = getelementptr inbounds %struct.ssc_device, ptr %36, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = load ptr, ptr %17, align 4
  %40 = getelementptr inbounds %struct.atmel_pdc_regs, ptr %39, i32 0, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr i8, ptr %38, i32 %41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %35) #5, !srcloc !8
  %43 = load i32, ptr %21, align 4
  %44 = load i32, ptr %23, align 4
  %45 = udiv i32 %43, %44
  %46 = load ptr, ptr %13, align 4
  %47 = getelementptr inbounds %struct.ssc_device, ptr %46, i32 0, i32 2
  %48 = load ptr, ptr %47, align 4
  %49 = load ptr, ptr %17, align 4
  %50 = getelementptr inbounds %struct.atmel_pdc_regs, ptr %49, i32 0, i32 3
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr i8, ptr %48, i32 %51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %45) #5, !srcloc !8
  %53 = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %8, i32 0, i32 4
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.atmel_ssc_mask, ptr %54, i32 0, i32 3
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.atmel_ssc_mask, ptr %54, i32 0, i32 4
  %58 = load i32, ptr %57, align 4
  %59 = or i32 %58, %56
  %60 = load ptr, ptr %13, align 4
  %61 = getelementptr inbounds %struct.ssc_device, ptr %60, i32 0, i32 2
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr i8, ptr %62, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %59) #5, !srcloc !8
  %64 = load ptr, ptr %53, align 4
  %65 = getelementptr inbounds %struct.atmel_ssc_mask, ptr %64, i32 0, i32 5
  %66 = load i32, ptr %65, align 4
  %67 = load ptr, ptr %13, align 4
  %68 = getelementptr inbounds %struct.ssc_device, ptr %67, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr i8, ptr %69, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %66) #5, !srcloc !8
  br label %91

71:                                               ; preds = %3, %3, %3
  %72 = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %8, i32 0, i32 4
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.atmel_ssc_mask, ptr %73, i32 0, i32 6
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %8, i32 0, i32 2
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.ssc_device, ptr %77, i32 0, i32 2
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr i8, ptr %79, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %75) #5, !srcloc !8
  br label %91

81:                                               ; preds = %3, %3
  %82 = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %8, i32 0, i32 4
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.atmel_ssc_mask, ptr %83, i32 0, i32 5
  %85 = load i32, ptr %84, align 4
  %86 = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %8, i32 0, i32 2
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.ssc_device, ptr %87, i32 0, i32 2
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr i8, ptr %89, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %85) #5, !srcloc !8
  br label %91

91:                                               ; preds = %81, %71, %9, %3
  %92 = phi i32 [ 0, %81 ], [ 0, %71 ], [ 0, %9 ], [ -22, %3 ]
  ret i32 %92
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_pcm_pointer(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 44
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ssc_device, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %7, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr i8, ptr %11, i32 %14
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #5, !srcloc !9
  %17 = getelementptr inbounds %struct.atmel_runtime_data, ptr %6, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = sub i32 %16, %18
  %20 = shl i32 %19, 3
  %21 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 21
  %22 = load i32, ptr %21, align 8
  %23 = udiv i32 %20, %22
  %24 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 18
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %23, %25
  %27 = select i1 %26, i32 0, i32 %23
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_set_runtime_hwparams(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_integer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_pcm_dma_irq(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 44
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr @atmel_pcm_dma_irq.count, align 4
  %9 = add i32 %8, 1
  store i32 %9, ptr @atmel_pcm_dma_irq.count, align 4
  %10 = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %7, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.atmel_ssc_mask, ptr %11, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, %0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %70, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, ptr @.str.1, ptr @.str.2
  %21 = load ptr, ptr %7, align 4
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull %20, ptr noundef %21, i32 noundef %0, i32 noundef %9) #7
  %23 = load ptr, ptr %10, align 4
  %24 = getelementptr inbounds %struct.atmel_ssc_mask, ptr %23, i32 0, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %7, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.ssc_device, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %29, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %25) #5, !srcloc !8
  %31 = getelementptr inbounds %struct.atmel_runtime_data, ptr %6, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.atmel_runtime_data, ptr %6, i32 0, i32 4
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, %32
  store i32 %35, ptr %33, align 4
  %36 = getelementptr inbounds %struct.atmel_runtime_data, ptr %6, i32 0, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = icmp ult i32 %35, %37
  br i1 %38, label %42, label %39

39:                                               ; preds = %16
  %40 = getelementptr inbounds %struct.atmel_runtime_data, ptr %6, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  store i32 %41, ptr %33, align 4
  br label %42

42:                                               ; preds = %39, %16
  %43 = phi i32 [ %41, %39 ], [ %35, %16 ]
  %44 = load ptr, ptr %26, align 4
  %45 = getelementptr inbounds %struct.ssc_device, ptr %44, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %7, i32 0, i32 3
  %48 = load ptr, ptr %47, align 4
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr i8, ptr %46, i32 %49
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %43) #5, !srcloc !8
  %51 = load i32, ptr %31, align 4
  %52 = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %7, i32 0, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = udiv i32 %51, %53
  %55 = load ptr, ptr %26, align 4
  %56 = getelementptr inbounds %struct.ssc_device, ptr %55, i32 0, i32 2
  %57 = load ptr, ptr %56, align 4
  %58 = load ptr, ptr %47, align 4
  %59 = getelementptr inbounds %struct.atmel_pdc_regs, ptr %58, i32 0, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr i8, ptr %57, i32 %60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %54) #5, !srcloc !8
  %62 = load ptr, ptr %10, align 4
  %63 = getelementptr inbounds %struct.atmel_ssc_mask, ptr %62, i32 0, i32 5
  %64 = load i32, ptr %63, align 4
  %65 = load ptr, ptr %26, align 4
  %66 = getelementptr inbounds %struct.ssc_device, ptr %65, i32 0, i32 2
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr i8, ptr %67, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %64) #5, !srcloc !8
  %69 = load ptr, ptr %10, align 4
  br label %70

70:                                               ; preds = %42, %2
  %71 = phi ptr [ %69, %42 ], [ %11, %2 ]
  %72 = getelementptr inbounds %struct.atmel_ssc_mask, ptr %71, i32 0, i32 3
  %73 = load i32, ptr %72, align 4
  %74 = and i32 %73, %0
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %110, label %76

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.atmel_runtime_data, ptr %6, i32 0, i32 3
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr inbounds %struct.atmel_runtime_data, ptr %6, i32 0, i32 4
  %80 = load i32, ptr %79, align 4
  %81 = add i32 %80, %78
  store i32 %81, ptr %79, align 4
  %82 = getelementptr inbounds %struct.atmel_runtime_data, ptr %6, i32 0, i32 2
  %83 = load i32, ptr %82, align 4
  %84 = icmp ult i32 %81, %83
  br i1 %84, label %88, label %85

85:                                               ; preds = %76
  %86 = getelementptr inbounds %struct.atmel_runtime_data, ptr %6, i32 0, i32 1
  %87 = load i32, ptr %86, align 4
  store i32 %87, ptr %79, align 4
  br label %88

88:                                               ; preds = %85, %76
  %89 = phi i32 [ %87, %85 ], [ %81, %76 ]
  %90 = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %7, i32 0, i32 2
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.ssc_device, ptr %91, i32 0, i32 2
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %7, i32 0, i32 3
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.atmel_pdc_regs, ptr %95, i32 0, i32 2
  %97 = load i32, ptr %96, align 4
  %98 = getelementptr i8, ptr %93, i32 %97
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 %89) #5, !srcloc !8
  %99 = load i32, ptr %77, align 4
  %100 = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %7, i32 0, i32 1
  %101 = load i32, ptr %100, align 4
  %102 = udiv i32 %99, %101
  %103 = load ptr, ptr %90, align 4
  %104 = getelementptr inbounds %struct.ssc_device, ptr %103, i32 0, i32 2
  %105 = load ptr, ptr %104, align 4
  %106 = load ptr, ptr %94, align 4
  %107 = getelementptr inbounds %struct.atmel_pdc_regs, ptr %106, i32 0, i32 3
  %108 = load i32, ptr %107, align 4
  %109 = getelementptr i8, ptr %105, i32 %108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %109, i32 %102) #5, !srcloc !8
  br label %110

110:                                              ; preds = %88, %70
  tail call void @snd_pcm_period_elapsed(ptr noundef %1) #5
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(2) }
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
!8 = !{i64 5019157}
!9 = !{i64 5019575}
