; ModuleID = '/llk/IR/sound/soc/samsung/idma.c_pt.bc'
source_filename = "../sound/soc/samsung/idma.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_idma_reg_addr_init:\09\09\09\09\09"
module asm "\09.asciz \09\22idma_reg_addr_init\22\09\09\09\09\09"
module asm "__kstrtabns_idma_reg_addr_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.idma_info = type { %struct.spinlock, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [80 x i8], [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8 }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, ptr, ptr, %struct.device }
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
%struct.idma_ctrl = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.9, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}

@idma = internal global %struct.idma_info zeroinitializer, align 4
@__kstrtab_idma_reg_addr_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_idma_reg_addr_init = external dso_local constant [0 x i8], align 1
@__ksymtab_idma_reg_addr_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @idma_reg_addr_init to i32), ptr @__kstrtab_idma_reg_addr_init, ptr @__kstrtabns_idma_reg_addr_init }, section "___ksymtab_gpl+idma_reg_addr_init", align 4
@__UNIQUE_ID_author232 = internal constant [51 x i8] c"author=Jaswinder Singh, <jassisinghbrar@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description233 = internal constant [37 x i8] c"description=Samsung ASoC IDMA Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@asoc_idma_driver = internal global %struct.platform_driver { ptr @asoc_idma_platform_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [13 x i8] c"samsung-idma\00", align 1
@idma_irq = internal unnamed_addr global i32 0, align 4
@asoc_idma_platform = internal constant %struct.snd_soc_component_driver { ptr null, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @idma_new, ptr @idma_free, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @idma_open, ptr @idma_close, ptr null, ptr @idma_hw_params, ptr @idma_hw_free, ptr @idma_prepare, ptr @idma_trigger, ptr null, ptr @idma_pointer, ptr null, ptr null, ptr null, ptr @idma_mmap, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@idma_hardware = internal constant %struct.snd_pcm_hardware { i32 852227, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 163840, i32 128, i32 131072, i32 1, i32 2, i32 0 }, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"i2s\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"\013fail to claim i2s irq , ret = %d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"\013idma_close called with prtd == NULL\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_description233, ptr @__UNIQUE_ID_license234, ptr @__ksymtab_idma_reg_addr_init], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @idma_reg_addr_init(ptr noundef %0, i32 noundef %1) #0 {
  store i32 0, ptr @idma, align 4
  store ptr %0, ptr getelementptr inbounds (%struct.idma_info, ptr @idma, i32 0, i32 1), align 4
  store i32 %1, ptr getelementptr inbounds (%struct.idma_info, ptr @idma, i32 0, i32 2), align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #1 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @asoc_idma_driver, ptr noundef nonnull @__this_module) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #1 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @asoc_idma_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @asoc_idma_platform_probe(ptr noundef %0) #3 {
  %2 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #8
  store i32 %2, ptr @idma_irq, align 4
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = tail call i32 @devm_snd_soc_register_component(ptr noundef %5, ptr noundef nonnull @asoc_idma_platform, ptr noundef null, i32 noundef 0) #8
  br label %7

7:                                                ; preds = %4, %1
  %8 = phi i32 [ %6, %4 ], [ %2, %1 ]
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @idma_new(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_card, ptr %4, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.snd_card, ptr %6, i32 0, i32 27
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 17
  %12 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 16
  store ptr %11, ptr %12, align 4
  %13 = tail call i32 @dma_set_mask(ptr noundef %10, i64 noundef 4294967295) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %2
  %16 = tail call i32 @dma_set_coherent_mask(ptr noundef %10, i64 noundef 4294967295) #8
  %17 = getelementptr inbounds %struct.snd_pcm, ptr %8, i32 0, i32 8, i32 0, i32 4
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %34, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.snd_pcm_substream, ptr %18, i32 0, i32 8
  %22 = load ptr, ptr %8, align 8
  %23 = getelementptr inbounds %struct.snd_card, ptr %22, i32 0, i32 27
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_substream, ptr %18, i32 0, i32 8, i32 0, i32 3
  store ptr %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.snd_pcm_substream, ptr %18, i32 0, i32 8, i32 4
  store ptr null, ptr %26, align 4
  store i32 1, ptr %21, align 4
  %27 = load i32, ptr getelementptr inbounds (%struct.idma_info, ptr @idma, i32 0, i32 2), align 4
  %28 = getelementptr inbounds %struct.snd_pcm_substream, ptr %18, i32 0, i32 8, i32 2
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.snd_pcm_substream, ptr %18, i32 0, i32 8, i32 3
  store i32 163840, ptr %29, align 4
  %30 = tail call ptr @ioremap(i32 noundef %27, i32 noundef 163840) #8
  %31 = getelementptr inbounds %struct.snd_pcm_substream, ptr %18, i32 0, i32 8, i32 1
  store ptr %30, ptr %31, align 4
  %32 = icmp eq ptr %30, null
  %33 = select i1 %32, i32 -12, i32 0
  br label %34

34:                                               ; preds = %20, %15, %2
  %35 = phi i32 [ %33, %20 ], [ 0, %15 ], [ %13, %2 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @idma_free(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.snd_pcm, ptr %1, i32 0, i32 8, i32 0, i32 4
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.snd_pcm_substream, ptr %4, i32 0, i32 8, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  tail call void @iounmap(ptr noundef nonnull %8) #8
  store ptr null, ptr %7, align 4
  %11 = getelementptr inbounds %struct.snd_pcm_substream, ptr %4, i32 0, i32 8, i32 2
  store i32 0, ptr %11, align 4
  br label %12

12:                                               ; preds = %10, %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @idma_open(ptr nocapture noundef readnone %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @snd_soc_set_runtime_hwparams(ptr noundef %1, ptr noundef nonnull @idma_hardware) #8
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 36) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  %10 = load i32, ptr @idma_irq, align 4
  %11 = tail call i32 @request_threaded_irq(i32 noundef %10, ptr noundef nonnull @iis_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull %7) #8
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %11) #10
  tail call void @kfree(ptr noundef nonnull %7) #8
  br label %17

15:                                               ; preds = %9
  store i32 0, ptr %7, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 44
  store ptr %7, ptr %16, align 8
  br label %17

17:                                               ; preds = %15, %13, %2
  %18 = phi i32 [ %11, %13 ], [ 0, %15 ], [ -12, %2 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @idma_close(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 44
  %6 = load ptr, ptr %5, align 8
  %7 = load i32, ptr @idma_irq, align 4
  %8 = tail call ptr @free_irq(i32 noundef %7, ptr noundef %6) #8
  %9 = icmp eq ptr %6, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #10
  br label %12

12:                                               ; preds = %10, %2
  tail call void @kfree(ptr noundef %6) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @idma_hw_params(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #3 {
  %4 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 44
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr getelementptr inbounds (%struct.idma_info, ptr @idma, i32 0, i32 1), align 4
  %9 = getelementptr i8, ptr %8, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %11 = load ptr, ptr getelementptr inbounds (%struct.idma_info, ptr @idma, i32 0, i32 1), align 4
  %12 = getelementptr i8, ptr %11, i32 32
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %14 = or i32 %13, 40
  %15 = or i32 %10, 268435456
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %16 = load ptr, ptr getelementptr inbounds (%struct.idma_info, ptr @idma, i32 0, i32 1), align 4
  %17 = getelementptr i8, ptr %16, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %14) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %18 = load ptr, ptr getelementptr inbounds (%struct.idma_info, ptr @idma, i32 0, i32 1), align 4
  %19 = getelementptr i8, ptr %18, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %15) #8, !srcloc !12
  %20 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 8
  %21 = load ptr, ptr %4, align 4
  %22 = icmp eq ptr %20, null
  %23 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %21, i32 0, i32 53
  br i1 %22, label %33, label %24

24:                                               ; preds = %3
  store ptr %20, ptr %23, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 8, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %21, i32 0, i32 50
  store ptr %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 8, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %21, i32 0, i32 51
  store i32 %29, ptr %30, align 8
  %31 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 8, i32 3
  %32 = load i32, ptr %31, align 4
  br label %36

33:                                               ; preds = %3
  store ptr null, ptr %23, align 8
  %34 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %21, i32 0, i32 50
  store ptr null, ptr %34, align 4
  %35 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %21, i32 0, i32 51
  store i32 0, ptr %35, align 8
  br label %36

36:                                               ; preds = %33, %24
  %37 = phi i32 [ 0, %33 ], [ %32, %24 ]
  %38 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %21, i32 0, i32 52
  store i32 %37, ptr %38, align 4
  %39 = getelementptr %struct.snd_pcm_hw_params, ptr %2, i32 0, i32 3, i32 10
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 52
  store i32 %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 51
  %43 = load i32, ptr %42, align 8
  %44 = getelementptr inbounds %struct.idma_ctrl, ptr %7, i32 0, i32 3
  store i32 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.idma_ctrl, ptr %7, i32 0, i32 2
  store i32 %43, ptr %45, align 4
  %46 = getelementptr %struct.snd_pcm_hw_params, ptr %2, i32 0, i32 3, i32 7
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.idma_ctrl, ptr %7, i32 0, i32 5
  store i32 %47, ptr %48, align 4
  %49 = getelementptr %struct.snd_pcm_hw_params, ptr %2, i32 0, i32 3, i32 6
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.idma_ctrl, ptr %7, i32 0, i32 6
  store i32 %50, ptr %51, align 4
  %52 = load i32, ptr %42, align 8
  %53 = load i32, ptr %41, align 4
  %54 = add i32 %53, %52
  %55 = getelementptr inbounds %struct.idma_ctrl, ptr %7, i32 0, i32 4
  store i32 %54, ptr %55, align 4
  %56 = load ptr, ptr %4, align 4
  %57 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %56, i32 0, i32 44
  %58 = load ptr, ptr %57, align 8
  tail call void @_raw_spin_lock(ptr noundef %58) #8
  %59 = getelementptr inbounds %struct.idma_ctrl, ptr %58, i32 0, i32 8
  store ptr @idma_done, ptr %59, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  %60 = load i16, ptr %58, align 4
  %61 = add i16 %60, 1
  store i16 %61, ptr %58, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @idma_hw_free(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 50
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @idma_prepare(ptr nocapture noundef readnone %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 44
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.idma_ctrl, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.idma_ctrl, ptr %6, i32 0, i32 3
  store i32 %8, ptr %9, align 4
  %10 = load ptr, ptr getelementptr inbounds (%struct.idma_info, ptr @idma, i32 0, i32 1), align 4
  %11 = getelementptr i8, ptr %10, i32 32
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !18
  tail call void @_raw_spin_lock(ptr noundef nonnull @idma) #8
  %13 = and i32 %12, -16777218
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  %14 = load ptr, ptr getelementptr inbounds (%struct.idma_info, ptr @idma, i32 0, i32 1), align 4
  %15 = getelementptr i8, ptr %14, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #8, !srcloc !12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  %16 = load i16, ptr @idma, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr @idma, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  %18 = load ptr, ptr %3, align 4
  %19 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %18, i32 0, i32 44
  %20 = load ptr, ptr %19, align 8
  tail call void @_raw_spin_lock(ptr noundef %20) #8
  %21 = getelementptr inbounds %struct.idma_ctrl, ptr %20, i32 0, i32 7
  store ptr %1, ptr %21, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  %22 = load i16, ptr %20, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr %20, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  %24 = load i32, ptr getelementptr inbounds (%struct.idma_info, ptr @idma, i32 0, i32 2), align 4
  %25 = getelementptr inbounds %struct.idma_ctrl, ptr %20, i32 0, i32 6
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, %24
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %28 = load ptr, ptr getelementptr inbounds (%struct.idma_info, ptr @idma, i32 0, i32 1), align 4
  %29 = getelementptr i8, ptr %28, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #8, !srcloc !12
  %30 = load i32, ptr getelementptr inbounds (%struct.idma_info, ptr @idma, i32 0, i32 2), align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !21
  tail call void @arm_heavy_mb() #8
  %31 = load ptr, ptr getelementptr inbounds (%struct.idma_info, ptr @idma, i32 0, i32 1), align 4
  %32 = getelementptr i8, ptr %31, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #8, !srcloc !12
  %33 = load ptr, ptr getelementptr inbounds (%struct.idma_info, ptr @idma, i32 0, i32 1), align 4
  %34 = getelementptr i8, ptr %33, i32 40
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !22
  %36 = and i32 %35, 65535
  %37 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %18, i32 0, i32 52
  %38 = load i32, ptr %37, align 4
  %39 = shl i32 %38, 14
  %40 = and i32 %39, -65536
  %41 = or i32 %40, %36
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  %42 = load ptr, ptr getelementptr inbounds (%struct.idma_info, ptr @idma, i32 0, i32 1), align 4
  %43 = getelementptr i8, ptr %42, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %41) #8, !srcloc !12
  %44 = load ptr, ptr getelementptr inbounds (%struct.idma_info, ptr @idma, i32 0, i32 1), align 4
  %45 = getelementptr i8, ptr %44, i32 32
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !24
  %47 = or i32 %46, 16777216
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !25
  tail call void @arm_heavy_mb() #8
  %48 = load ptr, ptr getelementptr inbounds (%struct.idma_info, ptr @idma, i32 0, i32 1), align 4
  %49 = getelementptr i8, ptr %48, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %47) #8, !srcloc !12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @idma_trigger(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2) #3 {
  %4 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 44
  %7 = load ptr, ptr %6, align 8
  tail call void @_raw_spin_lock(ptr noundef %7) #8
  switch i32 %2, label %32 [
    i32 6, label %8
    i32 1, label %8
    i32 4, label %8
    i32 5, label %20
    i32 0, label %20
    i32 3, label %20
  ]

8:                                                ; preds = %3, %3, %3
  %9 = getelementptr inbounds %struct.idma_ctrl, ptr %7, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = or i32 %10, 1
  store i32 %11, ptr %9, align 4
  %12 = load ptr, ptr getelementptr inbounds (%struct.idma_info, ptr @idma, i32 0, i32 1), align 4
  %13 = getelementptr i8, ptr %12, i32 32
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !18
  tail call void @_raw_spin_lock(ptr noundef nonnull @idma) #8
  %15 = or i32 %14, 16777217
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  %16 = load ptr, ptr getelementptr inbounds (%struct.idma_info, ptr @idma, i32 0, i32 1), align 4
  %17 = getelementptr i8, ptr %16, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #8, !srcloc !12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  %18 = load i16, ptr @idma, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr @idma, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  br label %32

20:                                               ; preds = %3, %3, %3
  %21 = getelementptr inbounds %struct.idma_ctrl, ptr %7, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, -2
  store i32 %23, ptr %21, align 4
  %24 = load ptr, ptr getelementptr inbounds (%struct.idma_info, ptr @idma, i32 0, i32 1), align 4
  %25 = getelementptr i8, ptr %24, i32 32
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !18
  tail call void @_raw_spin_lock(ptr noundef nonnull @idma) #8
  %27 = and i32 %26, -16777218
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  %28 = load ptr, ptr getelementptr inbounds (%struct.idma_info, ptr @idma, i32 0, i32 1), align 4
  %29 = getelementptr i8, ptr %28, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #8, !srcloc !12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  %30 = load i16, ptr @idma, align 4
  %31 = add i16 %30, 1
  store i16 %31, ptr @idma, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  br label %32

32:                                               ; preds = %20, %8, %3
  %33 = phi i32 [ 0, %20 ], [ 0, %8 ], [ -22, %3 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  %34 = load i16, ptr %7, align 4
  %35 = add i16 %34, 1
  store i16 %35, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @idma_pointer(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 44
  %6 = load ptr, ptr %5, align 8
  tail call void @_raw_spin_lock(ptr noundef %6) #8
  %7 = load i32, ptr getelementptr inbounds (%struct.idma_info, ptr @idma, i32 0, i32 2), align 4
  %8 = load ptr, ptr getelementptr inbounds (%struct.idma_info, ptr @idma, i32 0, i32 1), align 4
  %9 = getelementptr i8, ptr %8, i32 44
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !26
  %11 = shl i32 %10, 2
  %12 = and i32 %11, 67108860
  %13 = add i32 %12, %7
  %14 = getelementptr inbounds %struct.idma_ctrl, ptr %6, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = sub i32 %13, %15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  %17 = load i16, ptr %6, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  %19 = load ptr, ptr %3, align 4
  %20 = shl i32 %16, 3
  %21 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %19, i32 0, i32 21
  %22 = load i32, ptr %21, align 8
  %23 = udiv i32 %20, %22
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @idma_mmap(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #3 {
  %4 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, -61
  store i32 %8, ptr %6, align 4
  %9 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = load i32, ptr %2, align 4
  %12 = sub i32 %10, %11
  %13 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 13
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 51
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 12
  %18 = add i32 %17, %14
  %19 = and i32 %18, 1048575
  %20 = tail call i32 @remap_pfn_range(ptr noundef %2, i32 noundef %11, i32 noundef %19, i32 noundef %12, i32 noundef %8) #8
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_set_runtime_hwparams(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iis_irq(i32 noundef %0, ptr nocapture noundef readonly %1) #3 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.idma_info, ptr @idma, i32 0, i32 1), align 4
  %4 = getelementptr i8, ptr %3, i32 32
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !27
  %6 = and i32 %5, 1048576
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %37, label %8

8:                                                ; preds = %2
  %9 = or i32 %5, 65536
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !28
  tail call void @arm_heavy_mb() #8
  %10 = load ptr, ptr getelementptr inbounds (%struct.idma_info, ptr @idma, i32 0, i32 1), align 4
  %11 = getelementptr i8, ptr %10, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #8, !srcloc !12
  %12 = load ptr, ptr getelementptr inbounds (%struct.idma_info, ptr @idma, i32 0, i32 1), align 4
  %13 = getelementptr i8, ptr %12, i32 48
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !29
  %15 = load i32, ptr getelementptr inbounds (%struct.idma_info, ptr @idma, i32 0, i32 2), align 4
  %16 = sub i32 %14, %15
  %17 = getelementptr inbounds %struct.idma_ctrl, ptr %1, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %16, %18
  %20 = getelementptr inbounds %struct.idma_ctrl, ptr %1, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.idma_ctrl, ptr %1, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = sub i32 %21, %23
  %25 = urem i32 %19, %24
  %26 = add i32 %25, %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !30
  tail call void @arm_heavy_mb() #8
  %27 = load ptr, ptr getelementptr inbounds (%struct.idma_info, ptr @idma, i32 0, i32 1), align 4
  %28 = getelementptr i8, ptr %27, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #8, !srcloc !12
  %29 = getelementptr inbounds %struct.idma_ctrl, ptr %1, i32 0, i32 8
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %8
  %33 = getelementptr inbounds %struct.idma_ctrl, ptr %1, i32 0, i32 7
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.idma_ctrl, ptr %1, i32 0, i32 5
  %36 = load i32, ptr %35, align 4
  tail call void %30(ptr noundef %34, i32 noundef %36) #8
  br label %37

37:                                               ; preds = %32, %8, %2
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @idma_done(ptr noundef %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 44
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.idma_ctrl, ptr %6, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @snd_pcm_period_elapsed(ptr noundef %0) #8
  br label %14

14:                                               ; preds = %13, %8, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_pfn_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }
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
!8 = !{i64 3058133}
!9 = !{i64 2153554358}
!10 = !{i64 2153554694}
!11 = !{i64 2153554911}
!12 = !{i64 3057715}
!13 = !{i64 2153555226}
!14 = !{i64 2149239468}
!15 = !{i64 2149235292}
!16 = !{i64 2149235367, i64 2149235394, i64 2149235441, i64 2149235463, i64 2149235491, i64 2149235511}
!17 = !{i64 2149262471}
!18 = !{i64 2153553660}
!19 = !{i64 2153553891}
!20 = !{i64 2153551535}
!21 = !{i64 2153551852}
!22 = !{i64 2153552316}
!23 = !{i64 2153552533}
!24 = !{i64 2153552997}
!25 = !{i64 2153553196}
!26 = !{i64 2153551346}
!27 = !{i64 2153556170}
!28 = !{i64 2153556382}
!29 = !{i64 2153556852}
!30 = !{i64 2153557042}
