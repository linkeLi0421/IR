; ModuleID = '/llk/IR/sound/soc/soc-generic-dmaengine-pcm.c_pt.bc'
source_filename = "../sound/soc/soc-generic-dmaengine-pcm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_dmaengine_pcm_prepare_slave_config:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_dmaengine_pcm_prepare_slave_config\22\09\09\09\09\09"
module asm "__kstrtabns_snd_dmaengine_pcm_prepare_slave_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_dmaengine_pcm_register:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_dmaengine_pcm_register\22\09\09\09\09\09"
module asm "__kstrtabns_snd_dmaengine_pcm_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_dmaengine_pcm_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_dmaengine_pcm_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_snd_dmaengine_pcm_unregister:\09\09\09\09\09"
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
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.63 }
%union.anon.63 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.dmaengine_pcm = type { [2 x ptr], ptr, %struct.snd_soc_component, i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
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
%struct.snd_dmaengine_pcm_config = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], ptr, i32 }
%struct.dma_slave_caps = type { i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i8 }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8 }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, ptr, ptr, %struct.device }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64 }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__param_str_prealloc_buffer_size_kbytes = internal constant [28 x i8] c"prealloc_buffer_size_kbytes\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@prealloc_buffer_size_kbytes = internal global i32 512, align 4
@__param_prealloc_buffer_size_kbytes = internal constant %struct.kernel_param { ptr @__param_str_prealloc_buffer_size_kbytes, ptr @__this_module, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.63 { ptr @prealloc_buffer_size_kbytes } }, section "__param", align 4
@__UNIQUE_ID_prealloc_buffer_size_kbytestype234 = internal constant [42 x i8] c"parmtype=prealloc_buffer_size_kbytes:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_prealloc_buffer_size_kbytes235 = internal constant [67 x i8] c"parm=prealloc_buffer_size_kbytes:Preallocate DMA buffer size (KB).\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [34 x i8] c"%s doesn't support Multi CPU yet\0A\00", align 1
@__func__.snd_dmaengine_pcm_prepare_slave_config = private unnamed_addr constant [39 x i8] c"snd_dmaengine_pcm_prepare_slave_config\00", align 1
@__kstrtab_snd_dmaengine_pcm_prepare_slave_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_dmaengine_pcm_prepare_slave_config = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_dmaengine_pcm_prepare_slave_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_dmaengine_pcm_prepare_slave_config to i32), ptr @__kstrtab_snd_dmaengine_pcm_prepare_slave_config, ptr @__kstrtabns_snd_dmaengine_pcm_prepare_slave_config }, section "___ksymtab_gpl+snd_dmaengine_pcm_prepare_slave_config", align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"dma\00", align 1
@dmaengine_pcm_component_process = internal constant %struct.snd_soc_component_driver { ptr @.str.2, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dmaengine_pcm_new, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dmaengine_pcm_open, ptr @dmaengine_pcm_close, ptr null, ptr @dmaengine_pcm_hw_params, ptr null, ptr null, ptr @dmaengine_pcm_trigger, ptr null, ptr @dmaengine_pcm_pointer, ptr null, ptr @dmaengine_copy_user, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@dmaengine_pcm_component = internal constant %struct.snd_soc_component_driver { ptr @.str.2, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dmaengine_pcm_new, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dmaengine_pcm_open, ptr @dmaengine_pcm_close, ptr null, ptr @dmaengine_pcm_hw_params, ptr null, ptr null, ptr @dmaengine_pcm_trigger, ptr null, ptr @dmaengine_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@__kstrtab_snd_dmaengine_pcm_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_dmaengine_pcm_register = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_dmaengine_pcm_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_dmaengine_pcm_register to i32), ptr @__kstrtab_snd_dmaengine_pcm_register, ptr @__kstrtabns_snd_dmaengine_pcm_register }, section "___ksymtab_gpl+snd_dmaengine_pcm_register", align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"snd_dmaengine_pcm\00", align 1
@__kstrtab_snd_dmaengine_pcm_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_dmaengine_pcm_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_dmaengine_pcm_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_dmaengine_pcm_unregister to i32), ptr @__kstrtab_snd_dmaengine_pcm_unregister, ptr @__kstrtabns_snd_dmaengine_pcm_unregister }, section "___ksymtab_gpl+snd_dmaengine_pcm_unregister", align 4
@__UNIQUE_ID_license236 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"DMA channels sourced from device %s\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"rx-tx\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Missing dma channel for stream: %d\0A\00", align 1
@__func__.dmaengine_pcm_compat_request_channel = private unnamed_addr constant [37 x i8] c"dmaengine_pcm_compat_request_channel\00", align 1
@.str.8 = private unnamed_addr constant [77 x i8] c"Failed to get DMA channel capabilities, falling back to period counting: %d\0A\00", align 1
@__func__.dmaengine_pcm_set_runtime_hwparams = private unnamed_addr constant [35 x i8] c"dmaengine_pcm_set_runtime_hwparams\00", align 1
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_license236, ptr @__UNIQUE_ID_prealloc_buffer_size_kbytes235, ptr @__UNIQUE_ID_prealloc_buffer_size_kbytestype234, ptr @__ksymtab_snd_dmaengine_pcm_prepare_slave_config, ptr @__ksymtab_snd_dmaengine_pcm_register, ptr @__ksymtab_snd_dmaengine_pcm_unregister, ptr @__param_prealloc_buffer_size_kbytes], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_dmaengine_pcm_prepare_slave_config(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %5, i32 0, i32 11
  %7 = load i32, ptr %6, align 4
  %8 = icmp ugt i32 %7, 1
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.snd_dmaengine_pcm_prepare_slave_config) #7
  br label %25

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %5, i32 0, i32 9
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  %18 = getelementptr inbounds %struct.snd_soc_dai, ptr %14, i32 0, i32 7
  %19 = getelementptr inbounds %struct.snd_soc_dai, ptr %14, i32 0, i32 8
  %20 = select i1 %17, ptr %18, ptr %19
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @snd_hwparams_to_dma_slave_config(ptr noundef %0, ptr noundef %1, ptr noundef %2) #8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %11
  tail call void @snd_dmaengine_pcm_set_config_from_dai_data(ptr noundef %0, ptr noundef %21, ptr noundef %2) #8
  br label %25

25:                                               ; preds = %24, %11, %9
  %26 = phi i32 [ -22, %9 ], [ 0, %24 ], [ %22, %11 ]
  ret i32 %26
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hwparams_to_dma_slave_config(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_dmaengine_pcm_set_config_from_dai_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_dmaengine_pcm_register(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 200) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %114, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.dmaengine_pcm, ptr %5, i32 0, i32 2
  %9 = getelementptr inbounds %struct.dmaengine_pcm, ptr %5, i32 0, i32 2, i32 26
  store ptr @.str.1, ptr %9, align 8
  %10 = getelementptr inbounds %struct.dmaengine_pcm, ptr %5, i32 0, i32 1
  store ptr %1, ptr %10, align 8
  %11 = getelementptr inbounds %struct.dmaengine_pcm, ptr %5, i32 0, i32 3
  store i32 %2, ptr %11, align 4
  %12 = and i32 %2, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %84

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  %18 = icmp eq ptr %1, null
  br i1 %17, label %19, label %28

19:                                               ; preds = %14
  br i1 %18, label %90, label %20

20:                                               ; preds = %19
  %21 = getelementptr inbounds %struct.snd_dmaengine_pcm_config, ptr %1, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %86, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 25
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %86, label %33

28:                                               ; preds = %14
  br i1 %18, label %44, label %29

29:                                               ; preds = %28
  %30 = getelementptr inbounds %struct.snd_dmaengine_pcm_config, ptr %1, i32 0, i32 4
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %60, label %33

33:                                               ; preds = %29, %24
  %34 = phi ptr [ %31, %29 ], [ %22, %24 ]
  %35 = getelementptr inbounds %struct.snd_dmaengine_pcm_config, ptr %1, i32 0, i32 4
  %36 = getelementptr inbounds %struct.device, ptr %34, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load ptr, ptr %34, align 4
  br label %41

41:                                               ; preds = %39, %33
  %42 = phi ptr [ %40, %39 ], [ %37, %33 ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %42) #7
  %43 = load ptr, ptr %35, align 4
  br label %60

44:                                               ; preds = %28
  %45 = and i32 %2, 8
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %46, ptr @.str.5, ptr @.str.4
  br label %69

48:                                               ; preds = %77
  br i1 %71, label %54, label %49

49:                                               ; preds = %48
  %50 = getelementptr %struct.snd_dmaengine_pcm_config, ptr %1, i32 0, i32 5, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  %53 = select i1 %52, ptr @.str.6, ptr %51
  br label %54

54:                                               ; preds = %49, %48
  %55 = phi ptr [ @.str.6, %48 ], [ %53, %49 ]
  %56 = tail call ptr @dma_request_chan(ptr noundef %70, ptr noundef %55) #8
  %57 = icmp ugt ptr %56, inttoptr (i32 -4096 to ptr)
  br i1 %57, label %58, label %81

58:                                               ; preds = %54
  %59 = icmp eq ptr %56, inttoptr (i32 -517 to ptr)
  br i1 %59, label %98, label %81

60:                                               ; preds = %41, %29
  %61 = phi ptr [ %0, %29 ], [ %43, %41 ]
  %62 = and i32 %2, 8
  %63 = icmp eq i32 %62, 0
  %64 = select i1 %63, ptr @.str.5, ptr @.str.4
  %65 = getelementptr %struct.snd_dmaengine_pcm_config, ptr %1, i32 0, i32 5, i32 0
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  %68 = select i1 %67, ptr %64, ptr %66
  br label %69

69:                                               ; preds = %60, %44
  %70 = phi ptr [ %0, %44 ], [ %61, %60 ]
  %71 = phi i1 [ true, %44 ], [ false, %60 ]
  %72 = phi ptr [ %47, %44 ], [ %68, %60 ]
  %73 = tail call ptr @dma_request_chan(ptr noundef %70, ptr noundef %72) #8
  %74 = icmp ugt ptr %73, inttoptr (i32 -4096 to ptr)
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = icmp eq ptr %73, inttoptr (i32 -517 to ptr)
  br i1 %76, label %98, label %77

77:                                               ; preds = %75, %69
  %78 = phi ptr [ null, %75 ], [ %73, %69 ]
  store ptr %78, ptr %5, align 8
  %79 = and i32 %2, 8
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %48, label %81

81:                                               ; preds = %77, %58, %54
  %82 = phi ptr [ %56, %54 ], [ null, %58 ], [ %78, %77 ]
  %83 = getelementptr [2 x ptr], ptr %5, i32 0, i32 1
  store ptr %82, ptr %83, align 4
  br label %84

84:                                               ; preds = %81, %7
  %85 = icmp eq ptr %1, null
  br i1 %85, label %90, label %86

86:                                               ; preds = %84, %24, %20
  %87 = getelementptr inbounds %struct.snd_dmaengine_pcm_config, ptr %1, i32 0, i32 2
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %86, %84, %19
  br label %91

91:                                               ; preds = %90, %86
  %92 = phi ptr [ @dmaengine_pcm_component, %90 ], [ @dmaengine_pcm_component_process, %86 ]
  %93 = tail call i32 @snd_soc_component_initialize(ptr noundef %8, ptr noundef nonnull %92, ptr noundef %0) #8
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = tail call i32 @snd_soc_add_component(ptr noundef %8, ptr noundef null, i32 noundef 0) #8
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %114, label %98

98:                                               ; preds = %95, %91, %75, %58
  %99 = phi i32 [ %93, %91 ], [ %96, %95 ], [ -517, %58 ], [ -517, %75 ]
  br label %100

100:                                              ; preds = %112, %98
  %101 = phi i1 [ true, %98 ], [ false, %112 ]
  %102 = phi i32 [ 0, %98 ], [ 1, %112 ]
  %103 = getelementptr [2 x ptr], ptr %5, i32 0, i32 %102
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %111, label %106

106:                                              ; preds = %100
  tail call void @dma_release_channel(ptr noundef nonnull %104) #8
  %107 = load i32, ptr %11, align 4
  %108 = and i32 %107, 8
  %109 = icmp eq i32 %108, 0
  %110 = and i1 %101, %109
  br i1 %110, label %112, label %113

111:                                              ; preds = %100
  br i1 %101, label %112, label %113

112:                                              ; preds = %111, %106
  br label %100

113:                                              ; preds = %111, %106
  tail call void @kfree(ptr noundef nonnull %5) #8
  br label %114

114:                                              ; preds = %113, %95, %3
  %115 = phi i32 [ %99, %113 ], [ -12, %3 ], [ 0, %95 ]
  ret i32 %115
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_initialize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_add_component(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_dmaengine_pcm_unregister(ptr noundef %0) #0 {
  %2 = tail call ptr @snd_soc_lookup_component(ptr noundef %0, ptr noundef nonnull @.str.2) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %1
  %5 = getelementptr i8, ptr %2, i32 -12
  %6 = getelementptr inbounds %struct.snd_soc_component, ptr %2, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  tail call void @snd_soc_unregister_component_by_driver(ptr noundef %0, ptr noundef %7) #8
  %8 = getelementptr i8, ptr %2, i32 184
  br label %9

9:                                                ; preds = %21, %4
  %10 = phi i1 [ true, %4 ], [ false, %21 ]
  %11 = phi i32 [ 0, %4 ], [ 1, %21 ]
  %12 = getelementptr [2 x ptr], ptr %5, i32 0, i32 %11
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %9
  tail call void @dma_release_channel(ptr noundef nonnull %13) #8
  %16 = load i32, ptr %8, align 4
  %17 = and i32 %16, 8
  %18 = icmp eq i32 %17, 0
  %19 = and i1 %10, %18
  br i1 %19, label %21, label %22

20:                                               ; preds = %9
  br i1 %10, label %21, label %22

21:                                               ; preds = %20, %15
  br label %9

22:                                               ; preds = %20, %15
  tail call void @kfree(ptr noundef %5) #8
  br label %23

23:                                               ; preds = %22, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_lookup_component(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_unregister_component_by_driver(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dmaengine_pcm_new(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.dma_slave_caps, align 4
  %4 = getelementptr i8, ptr %0, i32 -12
  %5 = getelementptr i8, ptr %0, i32 -4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp ne ptr %6, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.snd_dmaengine_pcm_config, ptr %6, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.snd_dmaengine_pcm_config, ptr %6, i32 0, i32 6
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.snd_pcm_hardware, ptr %16, i32 0, i32 7
  %18 = load i32, ptr %17, align 4
  br label %22

19:                                               ; preds = %10, %2
  %20 = load i32, ptr @prealloc_buffer_size_kbytes, align 4
  %21 = shl i32 %20, 10
  br label %22

22:                                               ; preds = %19, %14
  %23 = phi i32 [ %12, %14 ], [ %21, %19 ]
  %24 = phi i32 [ %18, %14 ], [ -1, %19 ]
  %25 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 7
  %26 = getelementptr i8, ptr %0, i32 184
  %27 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 11
  %28 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %29 = getelementptr inbounds %struct.dma_slave_caps, ptr %3, i32 0, i32 9
  br label %30

30:                                               ; preds = %133, %22
  %31 = phi i1 [ true, %22 ], [ false, %133 ]
  %32 = phi i32 [ 0, %22 ], [ 1, %133 ]
  %33 = load ptr, ptr %25, align 4
  %34 = getelementptr %struct.snd_pcm, ptr %33, i32 0, i32 8, i32 %32, i32 4
  %35 = load ptr, ptr %34, align 8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %133, label %37

37:                                               ; preds = %30
  %38 = getelementptr [2 x ptr], ptr %4, i32 0, i32 %32
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  %41 = select i1 %40, i1 %9, i1 false
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = getelementptr %struct.snd_dmaengine_pcm_config, ptr %6, i32 0, i32 5, i32 %32
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %53, label %46

46:                                               ; preds = %42
  %47 = call ptr @dma_request_chan(ptr noundef %8, ptr noundef nonnull %44) #8
  %48 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  %49 = select i1 %48, ptr null, ptr %47
  store ptr %49, ptr %38, align 4
  br label %50

50:                                               ; preds = %46, %37
  %51 = phi ptr [ %49, %46 ], [ %39, %37 ]
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %98

53:                                               ; preds = %50, %42
  %54 = load i32, ptr %26, align 4
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %131, label %57

57:                                               ; preds = %53
  %58 = load i32, ptr %27, align 4
  %59 = icmp ugt i32 %58, 1
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dmaengine_pcm_compat_request_channel) #7
  store ptr null, ptr %38, align 4
  br label %131

62:                                               ; preds = %57
  %63 = load ptr, ptr %28, align 4
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.snd_pcm_substream, ptr %35, i32 0, i32 5
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, 0
  %68 = getelementptr inbounds %struct.snd_soc_dai, ptr %64, i32 0, i32 7
  %69 = getelementptr inbounds %struct.snd_soc_dai, ptr %64, i32 0, i32 8
  %70 = select i1 %67, ptr %68, ptr %69
  %71 = load ptr, ptr %70, align 4
  %72 = and i32 %54, 8
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %62
  %75 = load ptr, ptr %4, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %74
  store ptr %75, ptr %38, align 4
  br label %98

78:                                               ; preds = %74, %62
  %79 = load ptr, ptr %5, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %90, label %81

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.snd_dmaengine_pcm_config, ptr %79, i32 0, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %81
  %86 = call ptr %83(ptr noundef %1, ptr noundef nonnull %35) #8
  br label %95

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.snd_dmaengine_pcm_config, ptr %79, i32 0, i32 3
  %89 = load ptr, ptr %88, align 4
  br label %90

90:                                               ; preds = %87, %78
  %91 = phi ptr [ %89, %87 ], [ null, %78 ]
  %92 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, ptr %71, i32 0, i32 3
  %93 = load ptr, ptr %92, align 4
  %94 = call ptr @snd_dmaengine_pcm_request_channel(ptr noundef %91, ptr noundef %93) #8
  br label %95

95:                                               ; preds = %90, %85
  %96 = phi ptr [ %86, %85 ], [ %94, %90 ]
  store ptr %96, ptr %38, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %131, label %98

98:                                               ; preds = %95, %77, %50
  %99 = getelementptr inbounds %struct.snd_pcm_substream, ptr %35, i32 0, i32 5
  %100 = load i32, ptr %99, align 4
  %101 = getelementptr [2 x ptr], ptr %4, i32 0, i32 %100
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %108, label %104

104:                                              ; preds = %98
  %105 = load ptr, ptr %102, align 4
  %106 = getelementptr inbounds %struct.dma_device, ptr %105, i32 0, i32 15
  %107 = load ptr, ptr %106, align 4
  br label %108

108:                                              ; preds = %104, %98
  %109 = phi ptr [ %107, %104 ], [ null, %98 ]
  %110 = call i32 @snd_pcm_set_managed_buffer(ptr noundef nonnull %35, i32 noundef 4, ptr noundef %109, i32 noundef %23, i32 noundef %24) #8
  %111 = load ptr, ptr %38, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %3, i8 0, i32 36, i1 false) #8, !annotation !8
  %112 = call i32 @dma_get_slave_caps(ptr noundef %111, ptr noundef nonnull %3) #8
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %108
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.8, i32 noundef %112) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #8
  br label %118

115:                                              ; preds = %108
  %116 = load i32, ptr %29, align 4
  %117 = icmp eq i32 %116, 0
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #8
  br i1 %117, label %118, label %121

118:                                              ; preds = %115, %114
  %119 = load i32, ptr %26, align 4
  %120 = or i32 %119, -2147483648
  store i32 %120, ptr %26, align 4
  br label %121

121:                                              ; preds = %118, %115
  %122 = load ptr, ptr %25, align 4
  %123 = getelementptr %struct.snd_pcm, ptr %122, i32 0, i32 8, i32 %32, i32 1
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr inbounds %struct.snd_pcm, ptr %124, i32 0, i32 7
  %126 = load i8, ptr %125, align 8
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %121
  %129 = getelementptr inbounds %struct.snd_pcm, ptr %124, i32 0, i32 6
  %130 = call i32 @strscpy_pad(ptr noundef %125, ptr noundef %129, i32 noundef 80) #8
  br label %133

131:                                              ; preds = %95, %60, %53
  %132 = load ptr, ptr %7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %132, ptr noundef nonnull @.str.7, i32 noundef %32) #7
  br label %134

133:                                              ; preds = %128, %121, %30
  br i1 %31, label %30, label %134

134:                                              ; preds = %133, %131
  %135 = phi i32 [ -22, %131 ], [ 0, %133 ]
  ret i32 %135
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dmaengine_pcm_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca %struct.snd_pcm_hardware, align 8
  %4 = getelementptr i8, ptr %0, i32 -12
  %5 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr [2 x ptr], ptr %4, i32 0, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %8, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr %8, align 4
  %14 = getelementptr inbounds %struct.dma_device, ptr %13, i32 0, i32 15
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %12, %2
  %17 = phi ptr [ %15, %12 ], [ null, %2 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #8
  %18 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %10, i32 0, i32 11
  %19 = load i32, ptr %18, align 4
  %20 = icmp ugt i32 %19, 1
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dmaengine_pcm_set_runtime_hwparams) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #8
  br label %71

23:                                               ; preds = %16
  %24 = getelementptr i8, ptr %0, i32 -4
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.snd_dmaengine_pcm_config, ptr %25, i32 0, i32 6
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = tail call i32 @snd_soc_set_runtime_hwparams(ptr noundef %1, ptr noundef nonnull %29) #8
  br label %66

33:                                               ; preds = %27, %23
  %34 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %10, i32 0, i32 9
  %35 = load ptr, ptr %34, align 4
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq i32 %6, 0
  %38 = getelementptr inbounds %struct.snd_soc_dai, ptr %36, i32 0, i32 7
  %39 = getelementptr inbounds %struct.snd_soc_dai, ptr %36, i32 0, i32 8
  %40 = select i1 %37, ptr %38, ptr %39
  %41 = load ptr, ptr %40, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %3, i8 0, i32 64, i1 false) #8
  store i32 259, ptr %3, align 8
  %42 = getelementptr inbounds %struct.snd_pcm_hardware, ptr %3, i32 0, i32 10
  store i32 2, ptr %42, align 8
  %43 = getelementptr inbounds %struct.snd_pcm_hardware, ptr %3, i32 0, i32 11
  store i32 -1, ptr %43, align 4
  %44 = getelementptr inbounds %struct.snd_pcm_hardware, ptr %3, i32 0, i32 8
  store i32 256, ptr %44, align 8
  %45 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 20
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %33
  %49 = load i32, ptr %46, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48, %33
  br label %52

52:                                               ; preds = %51, %48
  %53 = phi i32 [ 65536, %51 ], [ %49, %48 ]
  %54 = getelementptr inbounds %struct.snd_pcm_hardware, ptr %3, i32 0, i32 9
  store i32 %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.snd_pcm_hardware, ptr %3, i32 0, i32 7
  store i32 -1, ptr %55, align 4
  %56 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, ptr %41, i32 0, i32 5
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.snd_pcm_hardware, ptr %3, i32 0, i32 12
  store i32 %57, ptr %58, align 8
  %59 = getelementptr i8, ptr %0, i32 184
  %60 = load i32, ptr %59, align 4
  %61 = icmp sgt i32 %60, -1
  br i1 %61, label %63, label %62

62:                                               ; preds = %52
  store i32 275, ptr %3, align 8
  br label %63

63:                                               ; preds = %62, %52
  %64 = call i32 @snd_dmaengine_pcm_refine_runtime_hwparams(ptr noundef %1, ptr noundef %41, ptr noundef nonnull %3, ptr noundef %8) #8
  %65 = call i32 @snd_soc_set_runtime_hwparams(ptr noundef %1, ptr noundef nonnull %3) #8
  br label %66

66:                                               ; preds = %63, %31
  %67 = phi i32 [ %32, %31 ], [ %65, %63 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = call i32 @snd_dmaengine_pcm_open(ptr noundef %1, ptr noundef %8) #8
  br label %71

71:                                               ; preds = %69, %66, %21
  %72 = phi i32 [ %70, %69 ], [ %67, %66 ], [ -22, %21 ]
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dmaengine_pcm_close(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = tail call i32 @snd_dmaengine_pcm_close(ptr noundef %1) #8
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dmaengine_pcm_hw_params(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.dma_slave_config, align 4
  %5 = tail call ptr @snd_dmaengine_pcm_get_chan(ptr noundef %1) #8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #8
  %6 = getelementptr i8, ptr %0, i32 -4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %4, i8 0, i64 48, i1 false)
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr %7, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %24, label %12

12:                                               ; preds = %9, %3
  %13 = phi ptr [ %10, %9 ], [ @snd_dmaengine_pcm_prepare_slave_config, %3 ]
  %14 = call i32 %13(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4) #8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %12
  %17 = load ptr, ptr %5, align 4
  %18 = getelementptr inbounds %struct.dma_device, ptr %17, i32 0, i32 44
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = call i32 %19(ptr noundef %5, ptr noundef nonnull %4) #8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %9
  br label %25

25:                                               ; preds = %24, %21, %16, %12
  %26 = phi i32 [ 0, %24 ], [ %22, %21 ], [ %14, %12 ], [ -38, %16 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #8
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dmaengine_pcm_trigger(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call i32 @snd_dmaengine_pcm_trigger(ptr noundef %1, i32 noundef %2) #8
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dmaengine_pcm_pointer(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 184
  %4 = load i32, ptr %3, align 4
  %5 = icmp sgt i32 %4, -1
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @snd_dmaengine_pcm_pointer_no_residue(ptr noundef %1) #8
  br label %10

8:                                                ; preds = %2
  %9 = tail call i32 @snd_dmaengine_pcm_pointer(ptr noundef %1) #8
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dmaengine_copy_user(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %0, i32 -4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_dmaengine_pcm_config, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  %16 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 50
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 %3
  %19 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 52
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 15
  %22 = load i32, ptr %21, align 8
  %23 = udiv i32 %20, %22
  %24 = mul i32 %23, %2
  %25 = getelementptr i8, ptr %18, i32 %24
  br i1 %15, label %26, label %50

26:                                               ; preds = %6
  %27 = icmp slt i32 %5, 0
  %28 = load i1, ptr @check_copy_size.__already_done, align 1
  %29 = xor i1 %28, true
  %30 = select i1 %27, i1 %29, i1 false
  br i1 %30, label %31, label %32, !prof !9

31:                                               ; preds = %26
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 230, i32 noundef 9, ptr noundef null) #8
  br label %32

32:                                               ; preds = %31, %26
  br i1 %27, label %78, label %33, !prof !9

33:                                               ; preds = %32
  %34 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 %5, i32 -1090519040) #10, !srcloc !10
  %35 = extractvalue { i32, i32 } %34, 0
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %44, !prof !11

37:                                               ; preds = %33
  %38 = tail call ptr @llvm.thread.pointer() #8
  %39 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 3
  %40 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %39) #11, !srcloc !12
  %41 = and i32 %40, -13
  %42 = or i32 %41, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %42) #8, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !14
  %43 = tail call i32 @arm_copy_from_user(ptr noundef %25, ptr noundef %4, i32 noundef %5) #8
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %40) #8, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !14
  br label %44

44:                                               ; preds = %37, %33
  %45 = phi i32 [ %43, %37 ], [ %5, %33 ]
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %47, !prof !11

47:                                               ; preds = %44
  %48 = sub i32 %5, %45
  %49 = getelementptr i8, ptr %25, i32 %48
  tail call void @llvm.memset.p0.i32(ptr align 1 %49, i8 0, i32 %45, i1 false) #8
  br label %78

50:                                               ; preds = %44, %6
  %51 = icmp eq ptr %12, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %50
  %53 = tail call i32 %12(ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) #8
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %78, label %55

55:                                               ; preds = %52, %50
  br i1 %15, label %77, label %56

56:                                               ; preds = %55
  %57 = icmp slt i32 %5, 0
  %58 = load i1, ptr @check_copy_size.__already_done, align 1
  %59 = xor i1 %58, true
  %60 = select i1 %57, i1 %59, i1 false
  br i1 %60, label %61, label %62, !prof !9

61:                                               ; preds = %56
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 230, i32 noundef 9, ptr noundef null) #8
  br label %62

62:                                               ; preds = %61, %56
  br i1 %57, label %78, label %63, !prof !9

63:                                               ; preds = %62
  %64 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 %5, i32 -1090519040) #10, !srcloc !15
  %65 = extractvalue { i32, i32 } %64, 0
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %63
  %68 = tail call ptr @llvm.thread.pointer() #8
  %69 = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 3
  %70 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %69) #11, !srcloc !12
  %71 = and i32 %70, -13
  %72 = or i32 %71, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %72) #8, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !14
  %73 = tail call i32 @arm_copy_to_user(ptr noundef %4, ptr noundef %25, i32 noundef %5) #8
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %70) #8, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !14
  br label %74

74:                                               ; preds = %67, %63
  %75 = phi i32 [ %73, %67 ], [ %5, %63 ]
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74, %55
  br label %78

78:                                               ; preds = %77, %74, %62, %52, %47, %32
  %79 = phi i32 [ 0, %77 ], [ %53, %52 ], [ -14, %74 ], [ -14, %32 ], [ -14, %47 ], [ -14, %62 ]
  ret i32 %79
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy_pad(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_dmaengine_pcm_request_channel(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_get_slave_caps(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dmaengine_pcm_open(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_set_runtime_hwparams(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dmaengine_pcm_refine_runtime_hwparams(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dmaengine_pcm_close(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_dmaengine_pcm_get_chan(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dmaengine_pcm_trigger(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dmaengine_pcm_pointer_no_residue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dmaengine_pcm_pointer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind readnone }
attributes #11 = { nounwind readonly }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2152052271, i64 2152052296}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 4548383}
!13 = !{i64 4548580}
!14 = !{i64 2152033859}
!15 = !{i64 2152052849, i64 2152052874}
