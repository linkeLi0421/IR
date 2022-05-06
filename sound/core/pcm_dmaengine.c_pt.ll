; ModuleID = '/llk/IR/sound/core/pcm_dmaengine.c_pt.bc'
source_filename = "../sound/core/pcm_dmaengine.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_dmaengine_pcm_get_chan:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_dmaengine_pcm_get_chan\22\09\09\09\09\09"
module asm "__kstrtabns_snd_dmaengine_pcm_get_chan:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hwparams_to_dma_slave_config:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hwparams_to_dma_slave_config\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hwparams_to_dma_slave_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_dmaengine_pcm_set_config_from_dai_data:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_dmaengine_pcm_set_config_from_dai_data\22\09\09\09\09\09"
module asm "__kstrtabns_snd_dmaengine_pcm_set_config_from_dai_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_dmaengine_pcm_trigger:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_dmaengine_pcm_trigger\22\09\09\09\09\09"
module asm "__kstrtabns_snd_dmaengine_pcm_trigger:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_dmaengine_pcm_pointer_no_residue:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_dmaengine_pcm_pointer_no_residue\22\09\09\09\09\09"
module asm "__kstrtabns_snd_dmaengine_pcm_pointer_no_residue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_dmaengine_pcm_pointer:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_dmaengine_pcm_pointer\22\09\09\09\09\09"
module asm "__kstrtabns_snd_dmaengine_pcm_pointer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_dmaengine_pcm_request_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_dmaengine_pcm_request_channel\22\09\09\09\09\09"
module asm "__kstrtabns_snd_dmaengine_pcm_request_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_dmaengine_pcm_open:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_dmaengine_pcm_open\22\09\09\09\09\09"
module asm "__kstrtabns_snd_dmaengine_pcm_open:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_dmaengine_pcm_open_request_chan:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_dmaengine_pcm_open_request_chan\22\09\09\09\09\09"
module asm "__kstrtabns_snd_dmaengine_pcm_open_request_chan:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_dmaengine_pcm_close:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_dmaengine_pcm_close\22\09\09\09\09\09"
module asm "__kstrtabns_snd_dmaengine_pcm_close:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_dmaengine_pcm_close_release_chan:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_dmaengine_pcm_close_release_chan\22\09\09\09\09\09"
module asm "__kstrtabns_snd_dmaengine_pcm_close_release_chan:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_dmaengine_pcm_refine_runtime_hwparams:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_dmaengine_pcm_refine_runtime_hwparams\22\09\09\09\09\09"
module asm "__kstrtabns_snd_dmaengine_pcm_refine_runtime_hwparams:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.list_head = type { ptr, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64 }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.dmaengine_pcm_runtime_data = type { ptr, i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.dma_slave_caps = type { i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i8 }

@__kstrtab_snd_dmaengine_pcm_get_chan = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_dmaengine_pcm_get_chan = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_dmaengine_pcm_get_chan = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_dmaengine_pcm_get_chan to i32), ptr @__kstrtab_snd_dmaengine_pcm_get_chan, ptr @__kstrtabns_snd_dmaengine_pcm_get_chan }, section "___ksymtab_gpl+snd_dmaengine_pcm_get_chan", align 4
@__kstrtab_snd_hwparams_to_dma_slave_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hwparams_to_dma_slave_config = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hwparams_to_dma_slave_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hwparams_to_dma_slave_config to i32), ptr @__kstrtab_snd_hwparams_to_dma_slave_config, ptr @__kstrtabns_snd_hwparams_to_dma_slave_config }, section "___ksymtab_gpl+snd_hwparams_to_dma_slave_config", align 4
@__kstrtab_snd_dmaengine_pcm_set_config_from_dai_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_dmaengine_pcm_set_config_from_dai_data = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_dmaengine_pcm_set_config_from_dai_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_dmaengine_pcm_set_config_from_dai_data to i32), ptr @__kstrtab_snd_dmaengine_pcm_set_config_from_dai_data, ptr @__kstrtabns_snd_dmaengine_pcm_set_config_from_dai_data }, section "___ksymtab_gpl+snd_dmaengine_pcm_set_config_from_dai_data", align 4
@__kstrtab_snd_dmaengine_pcm_trigger = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_dmaengine_pcm_trigger = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_dmaengine_pcm_trigger = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_dmaengine_pcm_trigger to i32), ptr @__kstrtab_snd_dmaengine_pcm_trigger, ptr @__kstrtabns_snd_dmaengine_pcm_trigger }, section "___ksymtab_gpl+snd_dmaengine_pcm_trigger", align 4
@__kstrtab_snd_dmaengine_pcm_pointer_no_residue = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_dmaengine_pcm_pointer_no_residue = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_dmaengine_pcm_pointer_no_residue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_dmaengine_pcm_pointer_no_residue to i32), ptr @__kstrtab_snd_dmaengine_pcm_pointer_no_residue, ptr @__kstrtabns_snd_dmaengine_pcm_pointer_no_residue }, section "___ksymtab_gpl+snd_dmaengine_pcm_pointer_no_residue", align 4
@__kstrtab_snd_dmaengine_pcm_pointer = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_dmaengine_pcm_pointer = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_dmaengine_pcm_pointer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_dmaengine_pcm_pointer to i32), ptr @__kstrtab_snd_dmaengine_pcm_pointer, ptr @__kstrtabns_snd_dmaengine_pcm_pointer }, section "___ksymtab_gpl+snd_dmaengine_pcm_pointer", align 4
@__kstrtab_snd_dmaengine_pcm_request_channel = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_dmaengine_pcm_request_channel = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_dmaengine_pcm_request_channel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_dmaengine_pcm_request_channel to i32), ptr @__kstrtab_snd_dmaengine_pcm_request_channel, ptr @__kstrtabns_snd_dmaengine_pcm_request_channel }, section "___ksymtab_gpl+snd_dmaengine_pcm_request_channel", align 4
@__kstrtab_snd_dmaengine_pcm_open = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_dmaengine_pcm_open = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_dmaengine_pcm_open = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_dmaengine_pcm_open to i32), ptr @__kstrtab_snd_dmaengine_pcm_open, ptr @__kstrtabns_snd_dmaengine_pcm_open }, section "___ksymtab_gpl+snd_dmaengine_pcm_open", align 4
@__kstrtab_snd_dmaengine_pcm_open_request_chan = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_dmaengine_pcm_open_request_chan = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_dmaengine_pcm_open_request_chan = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_dmaengine_pcm_open_request_chan to i32), ptr @__kstrtab_snd_dmaengine_pcm_open_request_chan, ptr @__kstrtabns_snd_dmaengine_pcm_open_request_chan }, section "___ksymtab_gpl+snd_dmaengine_pcm_open_request_chan", align 4
@__kstrtab_snd_dmaengine_pcm_close = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_dmaengine_pcm_close = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_dmaengine_pcm_close = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_dmaengine_pcm_close to i32), ptr @__kstrtab_snd_dmaengine_pcm_close, ptr @__kstrtabns_snd_dmaengine_pcm_close }, section "___ksymtab_gpl+snd_dmaengine_pcm_close", align 4
@__kstrtab_snd_dmaengine_pcm_close_release_chan = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_dmaengine_pcm_close_release_chan = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_dmaengine_pcm_close_release_chan = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_dmaengine_pcm_close_release_chan to i32), ptr @__kstrtab_snd_dmaengine_pcm_close_release_chan, ptr @__kstrtabns_snd_dmaengine_pcm_close_release_chan }, section "___ksymtab_gpl+snd_dmaengine_pcm_close_release_chan", align 4
@__kstrtab_snd_dmaengine_pcm_refine_runtime_hwparams = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_dmaengine_pcm_refine_runtime_hwparams = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_dmaengine_pcm_refine_runtime_hwparams = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_dmaengine_pcm_refine_runtime_hwparams to i32), ptr @__kstrtab_snd_dmaengine_pcm_refine_runtime_hwparams, ptr @__kstrtabns_snd_dmaengine_pcm_refine_runtime_hwparams }, section "___ksymtab_gpl+snd_dmaengine_pcm_refine_runtime_hwparams", align 4
@__UNIQUE_ID_license232 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_license232, ptr @__ksymtab_snd_dmaengine_pcm_close, ptr @__ksymtab_snd_dmaengine_pcm_close_release_chan, ptr @__ksymtab_snd_dmaengine_pcm_get_chan, ptr @__ksymtab_snd_dmaengine_pcm_open, ptr @__ksymtab_snd_dmaengine_pcm_open_request_chan, ptr @__ksymtab_snd_dmaengine_pcm_pointer, ptr @__ksymtab_snd_dmaengine_pcm_pointer_no_residue, ptr @__ksymtab_snd_dmaengine_pcm_refine_runtime_hwparams, ptr @__ksymtab_snd_dmaengine_pcm_request_channel, ptr @__ksymtab_snd_dmaengine_pcm_set_config_from_dai_data, ptr @__ksymtab_snd_dmaengine_pcm_trigger, ptr @__ksymtab_snd_hwparams_to_dma_slave_config], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @snd_dmaengine_pcm_get_chan(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  ret ptr %6
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_hwparams_to_dma_slave_config(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %12, %3
  %8 = phi i32 [ 0, %3 ], [ 32, %12 ]
  %9 = phi i32 [ %5, %3 ], [ %14, %12 ]
  %10 = tail call i32 @llvm.cttz.i32(i32 %9, i1 true) #8, !range !8
  %11 = or i32 %10, %8
  br label %16

12:                                               ; preds = %3
  %13 = getelementptr %struct.snd_pcm_hw_params, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %7

16:                                               ; preds = %12, %7
  %17 = phi i32 [ %11, %7 ], [ 0, %12 ]
  %18 = tail call i32 @snd_pcm_format_physical_width(i32 noundef %17) #8
  %19 = add i32 %18, -65
  %20 = icmp ult i32 %19, -57
  br i1 %20, label %39, label %21

21:                                               ; preds = %16
  switch i32 %18, label %24 [
    i32 8, label %27
    i32 16, label %22
    i32 24, label %23
  ]

22:                                               ; preds = %21
  br label %27

23:                                               ; preds = %21
  br label %27

24:                                               ; preds = %21
  %25 = icmp ult i32 %18, 33
  %26 = select i1 %25, i32 4, i32 8
  br label %27

27:                                               ; preds = %24, %23, %22, %21
  %28 = phi i32 [ 2, %22 ], [ 3, %23 ], [ 1, %21 ], [ %26, %24 ]
  %29 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  store i32 1, ptr %2, align 4
  %33 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 4
  br label %36

34:                                               ; preds = %27
  store i32 2, ptr %2, align 4
  %35 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 3
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi ptr [ %35, %34 ], [ %33, %32 ]
  store i32 %28, ptr %37, align 4
  %38 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 9
  store i8 0, ptr %38, align 4
  br label %39

39:                                               ; preds = %36, %16
  %40 = phi i32 [ 0, %36 ], [ -22, %16 ]
  ret i32 %40
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @snd_dmaengine_pcm_set_config_from_dai_data(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  %7 = load i32, ptr %1, align 4
  br i1 %6, label %8, label %25

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 2
  store i32 %7, ptr %9, align 4
  %10 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, ptr %1, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 6
  store i32 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, ptr %1, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 4
  store i32 0, ptr %18, align 4
  br label %19

19:                                               ; preds = %17, %8
  %20 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, ptr %1, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %42, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 4
  store i32 %21, ptr %24, align 4
  br label %42

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 1
  store i32 %7, ptr %26, align 4
  %27 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, ptr %1, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 5
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, ptr %1, i32 0, i32 6
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 3
  store i32 0, ptr %35, align 4
  br label %36

36:                                               ; preds = %34, %25
  %37 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, ptr %1, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 3
  store i32 %38, ptr %41, align 4
  br label %42

42:                                               ; preds = %40, %36, %23, %19
  %43 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, ptr %1, i32 0, i32 7
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 10
  store ptr %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, ptr %1, i32 0, i32 8
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 11
  store i32 %47, ptr %48, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_dmaengine_pcm_trigger(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 44
  %6 = load ptr, ptr %5, align 8
  switch i32 %1, label %97 [
    i32 1, label %7
    i32 6, label %54
    i32 4, label %54
    i32 5, label %62
    i32 3, label %81
    i32 0, label %89
  ]

7:                                                ; preds = %2
  %8 = load ptr, ptr %6, align 4
  %9 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i32 1, i32 2
  %13 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 26
  %14 = load i8, ptr %13, align 4
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  %17 = select i1 %16, i32 3, i32 2
  %18 = getelementptr inbounds %struct.dmaengine_pcm_runtime_data, ptr %6, i32 0, i32 2
  store i32 0, ptr %18, align 4
  %19 = load ptr, ptr %3, align 4
  %20 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %19, i32 0, i32 51
  %21 = load i32, ptr %20, align 8
  %22 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %19, i32 0, i32 18
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %19, i32 0, i32 21
  %25 = load i32, ptr %24, align 8
  %26 = mul i32 %25, %23
  %27 = lshr i32 %26, 3
  %28 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %19, i32 0, i32 16
  %29 = load i32, ptr %28, align 4
  %30 = mul i32 %29, %25
  %31 = lshr i32 %30, 3
  %32 = icmp eq ptr %8, null
  br i1 %32, label %97, label %33

33:                                               ; preds = %7
  %34 = load ptr, ptr %8, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %97, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.dma_device, ptr %34, i32 0, i32 40
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %97, label %40

40:                                               ; preds = %36
  %41 = tail call ptr %38(ptr noundef nonnull %8, i32 noundef %21, i32 noundef %27, i32 noundef %31, i32 noundef %12, i32 noundef %17) #8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %97, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %41, i32 0, i32 6
  store ptr @dmaengine_pcm_dma_complete, ptr %44, align 4
  %45 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %41, i32 0, i32 8
  store ptr %0, ptr %45, align 4
  %46 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %41, i32 0, i32 4
  %47 = load ptr, ptr %46, align 4
  %48 = tail call i32 %47(ptr noundef nonnull %41) #8
  %49 = getelementptr inbounds %struct.dmaengine_pcm_runtime_data, ptr %6, i32 0, i32 1
  store i32 %48, ptr %49, align 4
  %50 = load ptr, ptr %6, align 4
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.dma_device, ptr %51, i32 0, i32 50
  %53 = load ptr, ptr %52, align 4
  tail call void %53(ptr noundef %50) #8
  br label %97

54:                                               ; preds = %2, %2
  %55 = load ptr, ptr %6, align 4
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.dma_device, ptr %56, i32 0, i32 46
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %97, label %60

60:                                               ; preds = %54
  %61 = tail call i32 %58(ptr noundef %55) #8
  br label %97

62:                                               ; preds = %2
  %63 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 23
  %64 = load i32, ptr %63, align 8
  %65 = and i32 %64, 524288
  %66 = icmp eq i32 %65, 0
  %67 = load ptr, ptr %6, align 4
  %68 = load ptr, ptr %67, align 4
  br i1 %66, label %75, label %69

69:                                               ; preds = %62
  %70 = getelementptr inbounds %struct.dma_device, ptr %68, i32 0, i32 45
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %97, label %73

73:                                               ; preds = %69
  %74 = tail call i32 %71(ptr noundef %67) #8
  br label %97

75:                                               ; preds = %62
  %76 = getelementptr inbounds %struct.dma_device, ptr %68, i32 0, i32 47
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %97, label %79

79:                                               ; preds = %75
  %80 = tail call i32 %77(ptr noundef %67) #8
  br label %97

81:                                               ; preds = %2
  %82 = load ptr, ptr %6, align 4
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.dma_device, ptr %83, i32 0, i32 45
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %97, label %87

87:                                               ; preds = %81
  %88 = tail call i32 %85(ptr noundef %82) #8
  br label %97

89:                                               ; preds = %2
  %90 = load ptr, ptr %6, align 4
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.dma_device, ptr %91, i32 0, i32 47
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %97, label %95

95:                                               ; preds = %89
  %96 = tail call i32 %93(ptr noundef %90) #8
  br label %97

97:                                               ; preds = %95, %89, %87, %81, %79, %75, %73, %69, %60, %54, %43, %40, %36, %33, %7, %2
  %98 = phi i32 [ -22, %2 ], [ 0, %43 ], [ 0, %54 ], [ 0, %60 ], [ 0, %69 ], [ 0, %73 ], [ 0, %75 ], [ 0, %79 ], [ 0, %81 ], [ 0, %87 ], [ 0, %89 ], [ 0, %95 ], [ -12, %40 ], [ -12, %36 ], [ -12, %33 ], [ -12, %7 ]
  ret i32 %98
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @snd_dmaengine_pcm_pointer_no_residue(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.dmaengine_pcm_runtime_data, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = shl i32 %7, 3
  %9 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 21
  %10 = load i32, ptr %9, align 8
  %11 = udiv i32 %8, %10
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_dmaengine_pcm_pointer(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca %struct.dma_tx_state, align 4
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 44
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dmaengine_pcm_runtime_data, ptr %6, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr inbounds %struct.dma_device, ptr %10, i32 0, i32 49
  %12 = load ptr, ptr %11, align 4
  %13 = call i32 %12(ptr noundef %7, i32 noundef %9, ptr noundef nonnull %2) #8
  %14 = add i32 %13, -1
  %15 = icmp ult i32 %14, 2
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 21
  %18 = load i32, ptr %17, align 8
  br label %42

19:                                               ; preds = %1
  %20 = load ptr, ptr %3, align 4
  %21 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %20, i32 0, i32 18
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %20, i32 0, i32 21
  %24 = load i32, ptr %23, align 8
  %25 = mul i32 %24, %22
  %26 = lshr i32 %25, 3
  %27 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  %30 = icmp ult i32 %26, %28
  %31 = select i1 %29, i1 true, i1 %30
  %32 = sub i32 %26, %28
  %33 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = shl i32 %34, 3
  %36 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 21
  %37 = load i32, ptr %36, align 8
  %38 = udiv i32 %35, %37
  %39 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 9
  store i32 %38, ptr %39, align 4
  %40 = shl i32 %32, 3
  %41 = select i1 %31, i32 0, i32 %40
  br label %42

42:                                               ; preds = %19, %16
  %43 = phi i32 [ %37, %19 ], [ %18, %16 ]
  %44 = phi i32 [ %41, %19 ], [ 0, %16 ]
  %45 = udiv i32 %44, %43
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8
  ret i32 %45
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @snd_dmaengine_pcm_request_channel(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca %struct.dma_cap_mask_t, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4
  call void @_set_bit(i32 noundef 11, ptr noundef nonnull %3) #8
  call void @_set_bit(i32 noundef 12, ptr noundef nonnull %3) #8
  %4 = call ptr @__dma_request_channel(ptr noundef nonnull %3, ptr noundef %0, ptr noundef %1, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret ptr %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_dmaengine_pcm_open(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %6, i32 noundef 15) #8
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 12) #9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  store ptr %1, ptr %11, align 8
  %14 = load ptr, ptr %5, align 4
  %15 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %14, i32 0, i32 44
  store ptr %11, ptr %15, align 8
  br label %16

16:                                               ; preds = %13, %9, %4, %2
  %17 = phi i32 [ 0, %13 ], [ -6, %2 ], [ %7, %4 ], [ -12, %9 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_integer(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_dmaengine_pcm_open_request_chan(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = alloca %struct.dma_cap_mask_t, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4
  call void @_set_bit(i32 noundef 11, ptr noundef nonnull %4) #8
  call void @_set_bit(i32 noundef 12, ptr noundef nonnull %4) #8
  %5 = call ptr @__dma_request_channel(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = call i32 @snd_pcm_hw_constraint_integer(ptr noundef %9, i32 noundef 15) #8
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %14 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 12) #9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  store ptr %5, ptr %14, align 8
  %17 = load ptr, ptr %8, align 4
  %18 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %17, i32 0, i32 44
  store ptr %14, ptr %18, align 8
  br label %19

19:                                               ; preds = %16, %12, %7, %3
  %20 = phi i32 [ 0, %16 ], [ -6, %3 ], [ %10, %7 ], [ -12, %12 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_dmaengine_pcm_close(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 48
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  tail call void %9(ptr noundef %6) #8
  br label %12

12:                                               ; preds = %11, %1
  tail call void @kfree(ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_dmaengine_pcm_close_release_chan(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 48
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  tail call void %9(ptr noundef %6) #8
  %12 = load ptr, ptr %5, align 4
  br label %13

13:                                               ; preds = %11, %1
  %14 = phi ptr [ %6, %1 ], [ %12, %11 ]
  tail call void @dma_release_channel(ptr noundef %14) #8
  tail call void @kfree(ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_dmaengine_pcm_refine_runtime_hwparams(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef %2, ptr noundef %3) #2 {
  %5 = alloca %struct.dma_slave_caps, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %5, i8 0, i32 36, i1 false), !annotation !9
  %6 = icmp ne ptr %2, null
  %7 = icmp ne ptr %3, null
  %8 = and i1 %6, %7
  %9 = icmp ne ptr %1, null
  %10 = and i1 %9, %8
  br i1 %10, label %11, label %67

11:                                               ; preds = %4
  %12 = call i32 @dma_get_slave_caps(ptr noundef nonnull %3, ptr noundef nonnull %5) #8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %41

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.dma_slave_caps, ptr %5, i32 0, i32 6
  %16 = load i8, ptr %15, align 4, !range !10
  %17 = icmp eq i8 %16, 0
  %18 = getelementptr inbounds %struct.dma_slave_caps, ptr %5, i32 0, i32 7
  %19 = load i8, ptr %18, align 1
  %20 = icmp eq i8 %19, 0
  %21 = select i1 %17, i1 true, i1 %20
  br i1 %21, label %25, label %22

22:                                               ; preds = %14
  %23 = load i32, ptr %2, align 8
  %24 = or i32 %23, 786432
  store i32 %24, ptr %2, align 8
  br label %25

25:                                               ; preds = %22, %14
  %26 = getelementptr inbounds %struct.dma_slave_caps, ptr %5, i32 0, i32 9
  %27 = load i32, ptr %26, align 4
  %28 = icmp ult i32 %27, 2
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, ptr %2, align 8
  %31 = or i32 %30, 16
  store i32 %31, ptr %2, align 8
  br label %32

32:                                               ; preds = %29, %25
  %33 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.dma_slave_caps, ptr %5, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  br label %41

39:                                               ; preds = %32
  %40 = load i32, ptr %5, align 4
  br label %41

41:                                               ; preds = %39, %36, %11
  %42 = phi i32 [ %38, %36 ], [ %40, %39 ], [ 22, %11 ]
  %43 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, ptr %1, i32 0, i32 6
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %67

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.snd_pcm_hardware, ptr %2, i32 0, i32 1
  br label %49

49:                                               ; preds = %64, %47
  %50 = phi i32 [ 0, %47 ], [ %65, %64 ]
  %51 = call i32 @snd_pcm_format_physical_width(i32 noundef %50) #8
  %52 = add i32 %51, -8
  %53 = call i32 @llvm.fshl.i32(i32 %52, i32 %52, i32 29)
  switch i32 %53, label %64 [
    i32 0, label %54
    i32 1, label %54
    i32 2, label %54
    i32 3, label %54
    i32 7, label %54
  ]

54:                                               ; preds = %49, %49, %49, %49, %49
  %55 = sdiv i32 %51, 8
  %56 = shl nuw i32 1, %55
  %57 = and i32 %56, %42
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = zext i32 %50 to i64
  %61 = shl nuw i64 1, %60
  %62 = load i64, ptr %48, align 8
  %63 = or i64 %62, %61
  store i64 %63, ptr %48, align 8
  br label %64

64:                                               ; preds = %59, %54, %49
  %65 = add nuw nsw i32 %50, 1
  %66 = icmp eq i32 %65, 53
  br i1 %66, label %67, label %49

67:                                               ; preds = %64, %41, %4
  %68 = phi i32 [ -22, %4 ], [ %12, %41 ], [ %12, %64 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #8
  ret i32 %68
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_get_slave_caps(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_physical_width(i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dmaengine_pcm_dma_complete(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 16
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 21
  %9 = load i32, ptr %8, align 8
  %10 = mul i32 %9, %7
  %11 = lshr i32 %10, 3
  %12 = getelementptr inbounds %struct.dmaengine_pcm_runtime_data, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %11, %13
  store i32 %14, ptr %12, align 4
  %15 = load ptr, ptr %2, align 4
  %16 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %15, i32 0, i32 18
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %15, i32 0, i32 21
  %19 = load i32, ptr %18, align 8
  %20 = mul i32 %19, %17
  %21 = lshr i32 %20, 3
  %22 = icmp ult i32 %14, %21
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  store i32 0, ptr %12, align 4
  br label %24

24:                                               ; preds = %23, %1
  tail call void @snd_pcm_period_elapsed(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }

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
!8 = !{i32 0, i32 33}
!9 = !{!"auto-init"}
!10 = !{i8 0, i8 2}
