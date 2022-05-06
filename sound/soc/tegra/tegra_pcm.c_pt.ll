; ModuleID = '/llk/IR/sound/soc/tegra/tegra_pcm.c_pt.bc'
source_filename = "../sound/soc/tegra/tegra_pcm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_pcm_platform_register:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_pcm_platform_register\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_pcm_platform_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_tegra_pcm_platform_register:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_tegra_pcm_platform_register\22\09\09\09\09\09"
module asm "__kstrtabns_devm_tegra_pcm_platform_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_pcm_platform_register_with_chan_names:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_pcm_platform_register_with_chan_names\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_pcm_platform_register_with_chan_names:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_pcm_platform_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_pcm_platform_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_pcm_platform_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_pcm_open:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_pcm_open\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_pcm_open:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_pcm_close:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_pcm_close\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_pcm_close:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_pcm_hw_params:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_pcm_hw_params\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_pcm_hw_params:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_pcm_pointer:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_pcm_pointer\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_pcm_pointer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_pcm_construct:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_pcm_construct\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_pcm_construct:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.snd_dmaengine_pcm_config = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.list_head = type { ptr, ptr }
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
%struct.snd_soc_dai_link = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i24 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [80 x i8], [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }

@tegra_dmaengine_pcm_config = internal constant %struct.snd_dmaengine_pcm_config { ptr @snd_dmaengine_pcm_prepare_slave_config, ptr null, ptr null, ptr null, ptr null, [2 x ptr] zeroinitializer, ptr @tegra_pcm_hardware, i32 32768 }, align 4
@__kstrtab_tegra_pcm_platform_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_pcm_platform_register = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_pcm_platform_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_pcm_platform_register to i32), ptr @__kstrtab_tegra_pcm_platform_register, ptr @__kstrtabns_tegra_pcm_platform_register }, section "___ksymtab_gpl+tegra_pcm_platform_register", align 4
@__kstrtab_devm_tegra_pcm_platform_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_tegra_pcm_platform_register = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_tegra_pcm_platform_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_tegra_pcm_platform_register to i32), ptr @__kstrtab_devm_tegra_pcm_platform_register, ptr @__kstrtabns_devm_tegra_pcm_platform_register }, section "___ksymtab_gpl+devm_tegra_pcm_platform_register", align 4
@__kstrtab_tegra_pcm_platform_register_with_chan_names = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_pcm_platform_register_with_chan_names = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_pcm_platform_register_with_chan_names = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_pcm_platform_register_with_chan_names to i32), ptr @__kstrtab_tegra_pcm_platform_register_with_chan_names, ptr @__kstrtabns_tegra_pcm_platform_register_with_chan_names }, section "___ksymtab_gpl+tegra_pcm_platform_register_with_chan_names", align 4
@__kstrtab_tegra_pcm_platform_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_pcm_platform_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_pcm_platform_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_pcm_platform_unregister to i32), ptr @__kstrtab_tegra_pcm_platform_unregister, ptr @__kstrtabns_tegra_pcm_platform_unregister }, section "___ksymtab_gpl+tegra_pcm_platform_unregister", align 4
@tegra_pcm_hardware = internal constant %struct.snd_pcm_hardware { i32 259, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 32768, i32 1024, i32 4096, i32 2, i32 8, i32 4 }, align 8
@.str = private unnamed_addr constant [29 x i8] c"failed to set constraint %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"dmaengine request slave channel failed! (%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"dmaengine pcm open failed with err %d (%s)\0A\00", align 1
@__kstrtab_tegra_pcm_open = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_pcm_open = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_pcm_open = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_pcm_open to i32), ptr @__kstrtab_tegra_pcm_open, ptr @__kstrtabns_tegra_pcm_open }, section "___ksymtab_gpl+tegra_pcm_open", align 4
@__kstrtab_tegra_pcm_close = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_pcm_close = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_pcm_close = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_pcm_close to i32), ptr @__kstrtab_tegra_pcm_close, ptr @__kstrtabns_tegra_pcm_close }, section "___ksymtab_gpl+tegra_pcm_close", align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"hw params config failed with err %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"dma slave config failed with err %d\0A\00", align 1
@__kstrtab_tegra_pcm_hw_params = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_pcm_hw_params = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_pcm_hw_params = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_pcm_hw_params to i32), ptr @__kstrtab_tegra_pcm_hw_params, ptr @__kstrtabns_tegra_pcm_hw_params }, section "___ksymtab_gpl+tegra_pcm_hw_params", align 4
@__kstrtab_tegra_pcm_pointer = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_pcm_pointer = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_pcm_pointer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_pcm_pointer to i32), ptr @__kstrtab_tegra_pcm_pointer, ptr @__kstrtabns_tegra_pcm_pointer }, section "___ksymtab_gpl+tegra_pcm_pointer", align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"iommus\00", align 1
@__kstrtab_tegra_pcm_construct = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_pcm_construct = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_pcm_construct = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_pcm_construct to i32), ptr @__kstrtab_tegra_pcm_construct, ptr @__kstrtabns_tegra_pcm_construct }, section "___ksymtab_gpl+tegra_pcm_construct", align 4
@__UNIQUE_ID_author234 = internal constant [43 x i8] c"author=Stephen Warren <swarren@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description235 = internal constant [34 x i8] c"description=Tegra PCM ASoC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_author234, ptr @__UNIQUE_ID_description235, ptr @__UNIQUE_ID_license236, ptr @__ksymtab_devm_tegra_pcm_platform_register, ptr @__ksymtab_tegra_pcm_close, ptr @__ksymtab_tegra_pcm_construct, ptr @__ksymtab_tegra_pcm_hw_params, ptr @__ksymtab_tegra_pcm_open, ptr @__ksymtab_tegra_pcm_platform_register, ptr @__ksymtab_tegra_pcm_platform_register_with_chan_names, ptr @__ksymtab_tegra_pcm_platform_unregister, ptr @__ksymtab_tegra_pcm_pointer], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_pcm_platform_register(ptr noundef %0) #0 {
  %2 = tail call i32 @snd_dmaengine_pcm_register(ptr noundef %0, ptr noundef nonnull @tegra_dmaengine_pcm_config, i32 noundef 0) #6
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dmaengine_pcm_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_tegra_pcm_platform_register(ptr noundef %0) #0 {
  %2 = tail call i32 @devm_snd_dmaengine_pcm_register(ptr noundef %0, ptr noundef nonnull @tegra_dmaengine_pcm_config, i32 noundef 0) #6
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_dmaengine_pcm_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_pcm_platform_register_with_chan_names(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(36) @tegra_dmaengine_pcm_config, i32 36, i1 false)
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_dmaengine_pcm_config, ptr %1, i32 0, i32 4
  store ptr %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.snd_dmaengine_pcm_config, ptr %1, i32 0, i32 5
  store ptr %2, ptr %8, align 4
  %9 = getelementptr %struct.snd_dmaengine_pcm_config, ptr %1, i32 0, i32 5, i32 1
  store ptr %3, ptr %9, align 4
  %10 = tail call i32 @snd_dmaengine_pcm_register(ptr noundef %0, ptr noundef %1, i32 noundef 0) #6
  ret i32 %10
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tegra_pcm_platform_unregister(ptr noundef %0) #0 {
  tail call void @snd_dmaengine_pcm_unregister(ptr noundef %0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_dmaengine_pcm_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_pcm_open(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %4, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %4, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %9, i32 0, i32 18
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 128
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %47

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  %18 = getelementptr inbounds %struct.snd_soc_dai, ptr %7, i32 0, i32 7
  %19 = getelementptr inbounds %struct.snd_soc_dai, ptr %7, i32 0, i32 8
  %20 = select i1 %17, ptr %18, ptr %19
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @snd_soc_set_runtime_hwparams(ptr noundef %1, ptr noundef nonnull @tegra_pcm_hardware) #6
  %23 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %24, i32 noundef 0, i32 noundef 14, i32 noundef 8) #6
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %14
  %28 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str, i32 noundef %25) #7
  br label %47

29:                                               ; preds = %14
  %30 = getelementptr inbounds %struct.snd_soc_dai, ptr %7, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, ptr %21, i32 0, i32 4
  %33 = load ptr, ptr %32, align 4
  %34 = tail call ptr @dma_request_chan(ptr noundef %31, ptr noundef %33) #6
  %35 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  %36 = icmp eq ptr %34, null
  %37 = or i1 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = load ptr, ptr %30, align 4
  %40 = load ptr, ptr %32, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.1, ptr noundef %40) #7
  br label %47

41:                                               ; preds = %29
  %42 = tail call i32 @snd_dmaengine_pcm_open(ptr noundef %1, ptr noundef nonnull %34) #6
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr %4, align 4
  %46 = load ptr, ptr %32, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.2, i32 noundef %42, ptr noundef %46) #7
  tail call void @dma_release_channel(ptr noundef nonnull %34) #6
  br label %47

47:                                               ; preds = %44, %41, %38, %27, %2
  %48 = phi i32 [ %25, %27 ], [ %42, %44 ], [ -19, %38 ], [ 0, %2 ], [ 0, %41 ]
  ret i32 %48
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_set_runtime_hwparams(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_step(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dmaengine_pcm_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_pcm_close(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %6, i32 0, i32 18
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 128
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = tail call i32 @snd_dmaengine_pcm_close_release_chan(ptr noundef %1) #6
  br label %13

13:                                               ; preds = %11, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dmaengine_pcm_close_release_chan(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_pcm_hw_params(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.dma_slave_config, align 4
  %5 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %4, i8 0, i32 48, i1 false), !annotation !8
  %7 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %8, i32 0, i32 18
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 128
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %56

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %6, i32 0, i32 9
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  %20 = getelementptr inbounds %struct.snd_soc_dai, ptr %16, i32 0, i32 7
  %21 = getelementptr inbounds %struct.snd_soc_dai, ptr %16, i32 0, i32 8
  %22 = select i1 %19, ptr %20, ptr %21
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %56, label %25

25:                                               ; preds = %13
  %26 = tail call ptr @snd_dmaengine_pcm_get_chan(ptr noundef %1) #6
  %27 = call i32 @snd_hwparams_to_dma_slave_config(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4) #6
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.3, i32 noundef %27) #7
  br label %56

31:                                               ; preds = %25
  %32 = load i32, ptr %17, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 4
  store i32 4, ptr %35, align 4
  %36 = load i32, ptr %23, align 4
  %37 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 2
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 6
  br label %44

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 3
  store i32 4, ptr %40, align 4
  %41 = load i32, ptr %23, align 4
  %42 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 1
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 5
  br label %44

44:                                               ; preds = %39, %34
  %45 = phi ptr [ %43, %39 ], [ %38, %34 ]
  store i32 8, ptr %45, align 4
  %46 = load ptr, ptr %26, align 4
  %47 = getelementptr inbounds %struct.dma_device, ptr %46, i32 0, i32 44
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %44
  %51 = call i32 %48(ptr noundef %26, ptr noundef nonnull %4) #6
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50, %44
  %54 = phi i32 [ %51, %50 ], [ -38, %44 ]
  %55 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.4, i32 noundef %54) #7
  br label %56

56:                                               ; preds = %53, %50, %29, %13, %3
  %57 = phi i32 [ %27, %29 ], [ %54, %53 ], [ 0, %3 ], [ 0, %13 ], [ 0, %50 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #6
  ret i32 %57
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_dmaengine_pcm_get_chan(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hwparams_to_dma_slave_config(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_pcm_pointer(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = tail call i32 @snd_dmaengine_pcm_pointer(ptr noundef %1) #6
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dmaengine_pcm_pointer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_pcm_construct(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = tail call ptr @of_get_property(ptr noundef %6, ptr noundef nonnull @.str.5, ptr noundef null) #6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.snd_soc_card, ptr %11, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.snd_card, ptr %13, i32 0, i32 27
  %15 = load ptr, ptr %14, align 8
  br label %16

16:                                               ; preds = %9, %2
  %17 = phi ptr [ %4, %2 ], [ %15, %9 ]
  %18 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 7
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 @dma_set_mask(ptr noundef %17, i64 noundef 4294967295) #6
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = tail call i32 @dma_set_coherent_mask(ptr noundef %17, i64 noundef 4294967295) #6
  br label %26

24:                                               ; preds = %16
  %25 = icmp slt i32 %20, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %24, %22
  %27 = tail call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %19, i32 noundef 5, ptr noundef %17, i32 noundef 32768, i32 noundef 0) #6
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %27, %26 ], [ %20, %24 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dmaengine_pcm_prepare_slave_config(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
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
!8 = !{!"auto-init"}
