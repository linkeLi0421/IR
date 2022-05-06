; ModuleID = '/llk/IR/sound/soc/sti/uniperif_reader.c_pt.bc'
source_filename = "../sound/soc/sti/uniperif_reader.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_uni_reader_init:\09\09\09\09\09"
module asm "\09.asciz \09\22uni_reader_init\22\09\09\09\09\09"
module asm "__kstrtabns_uni_reader_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.uniperif = type { i32, i32, ptr, i32, i32, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.uniperif_iec958_settings, %struct.mutex, ptr, i32, i32, %struct.dai_tdm_slot, ptr }
%struct.uniperif_iec958_settings = type { i32, %struct.snd_aes_iec958 }
%struct.snd_aes_iec958 = type { [24 x i8], [147 x i8], i8, [4 x i8] }
%struct.dai_tdm_slot = type { i32, i32, i32, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.sti_uniperiph_data = type { ptr, ptr, %struct.sti_uniperiph_dai }
%struct.sti_uniperiph_dai = type { i32, ptr, %struct.snd_dmaengine_dai_dma_data }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64 }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }

@uni_reader_dai_ops = internal constant %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr @sti_uniperiph_dai_set_fmt, ptr null, ptr @sti_uniperiph_set_tdm_slot, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uni_reader_startup, ptr @uni_reader_shutdown, ptr @sti_uniperiph_dai_hw_params, ptr null, ptr @uni_reader_prepare, ptr @uni_reader_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, align 4
@uni_tdm_hw = internal constant %struct.snd_pcm_hardware { i32 590083, i64 1028, i32 1073741824, i32 8000, i32 48000, i32 1, i32 32, i32 1048576, i32 128, i32 262144, i32 2, i32 10, i32 0 }, align 8
@uni_reader_pcm_hw = internal constant %struct.snd_pcm_hardware { i32 590083, i64 1028, i32 1073741824, i32 8000, i32 96000, i32 2, i32 8, i32 1048576, i32 128, i32 262144, i32 2, i32 48, i32 0 }, align 8
@.str = private unnamed_addr constant [23 x i8] c"Failed to request IRQ\0A\00", align 1
@__kstrtab_uni_reader_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_uni_reader_init = external dso_local constant [0 x i8], align 1
@__ksymtab_uni_reader_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @uni_reader_init to i32), ptr @__kstrtab_uni_reader_init, ptr @__kstrtabns_uni_reader_init }, section "___ksymtab_gpl+uni_reader_init", align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"%s: invalid reader state\0A\00", align 1
@__func__.uni_reader_stop = private unnamed_addr constant [16 x i8] c"uni_reader_stop\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"%s: invalid reader state %d\0A\00", align 1
@__func__.uni_reader_prepare = private unnamed_addr constant [19 x i8] c"uni_reader_prepare\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"invalid trigger limit %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"format not supported\0A\00", align 1
@__const.uni_reader_prepare_tdm.word_pos = private unnamed_addr constant [4 x i32] [i32 67502082, i32 202246154, i32 336990226, i32 471734298], align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"%s: invalid nb of channels\0A\00", align 1
@__func__.uni_reader_prepare_pcm = private unnamed_addr constant [23 x i8] c"uni_reader_prepare_pcm\00", align 1
@__func__.uni_reader_start = private unnamed_addr constant [17 x i8] c"uni_reader_start\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"unexpected IRQ\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"FIFO error detected\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_uni_reader_init], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uni_reader_init(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.uniperif, ptr %1, i32 0, i32 2
  store ptr %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.uniperif, ptr %1, i32 0, i32 16
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.uniperif, ptr %1, i32 0, i32 24
  store ptr @uni_reader_dai_ops, ptr %6, align 4
  %7 = load i32, ptr %1, align 4
  %8 = icmp eq i32 %7, 8
  %9 = select i1 %8, ptr @uni_tdm_hw, ptr @uni_reader_pcm_hw
  %10 = getelementptr inbounds %struct.uniperif, ptr %1, i32 0, i32 8
  store ptr %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.uniperif, ptr %1, i32 0, i32 12
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load ptr, ptr %3, align 4
  br label %18

18:                                               ; preds = %16, %2
  %19 = phi ptr [ %17, %16 ], [ %14, %2 ]
  %20 = tail call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %12, ptr noundef nonnull @uni_reader_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef %19, ptr noundef %1) #5
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str) #6
  br label %25

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.uniperif, ptr %1, i32 0, i32 7
  store i32 0, ptr %24, align 4
  br label %25

25:                                               ; preds = %23, %22
  %26 = phi i32 [ -16, %22 ], [ 0, %23 ]
  ret i32 %26
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uni_reader_irq_handler(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.uniperif, ptr %1, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %3) #5
  %4 = getelementptr inbounds %struct.uniperif, ptr %1, i32 0, i32 17
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %35, label %7

7:                                                ; preds = %2
  tail call void @snd_pcm_stream_lock(ptr noundef nonnull %5) #5
  %8 = getelementptr inbounds %struct.uniperif, ptr %1, i32 0, i32 16
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.uniperif, ptr %1, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.7) #6
  br label %32

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.uniperif, ptr %1, i32 0, i32 10
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 12
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #5, !srcloc !8
  %19 = load ptr, ptr %15, align 4
  %20 = getelementptr i8, ptr %19, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #5, !srcloc !9
  %21 = getelementptr inbounds %struct.uniperif, ptr %1, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = icmp slt i32 %22, 5
  %24 = select i1 %23, i32 1, i32 256
  %25 = and i32 %24, %18
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %32, label %27, !prof !10

27:                                               ; preds = %14
  %28 = getelementptr inbounds %struct.uniperif, ptr %1, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.8) #6
  %30 = load ptr, ptr %4, align 4
  %31 = tail call i32 @snd_pcm_stop_xrun(ptr noundef %30) #5
  br label %32

32:                                               ; preds = %27, %14, %11
  %33 = phi i32 [ 0, %11 ], [ 1, %27 ], [ 0, %14 ]
  %34 = load ptr, ptr %4, align 4
  tail call void @snd_pcm_stream_unlock(ptr noundef %34) #5
  br label %35

35:                                               ; preds = %32, %2
  %36 = phi i32 [ %33, %32 ], [ 0, %2 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !11
  %37 = load i16, ptr %3, align 4
  %38 = add i16 %37, 1
  store i16 %38, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !14
  ret i32 %36
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_uniperiph_dai_set_fmt(ptr noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_uniperiph_set_tdm_slot(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uni_reader_startup(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.sti_uniperiph_data, ptr %6, i32 0, i32 2, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.uniperif, ptr %8, i32 0, i32 7
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #5
  %11 = getelementptr inbounds %struct.uniperif, ptr %8, i32 0, i32 17
  store ptr %0, ptr %11, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #5
  %12 = load i32, ptr %8, align 4
  %13 = icmp eq i32 %12, 8
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %16, i32 noundef 0, i32 noundef 10, ptr noundef nonnull @sti_uniperiph_fix_tdm_chan, ptr noundef %8, i32 noundef 10, i32 noundef -1) #5
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load ptr, ptr %15, align 4
  %21 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %20, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @sti_uniperiph_fix_tdm_format, ptr noundef %8, i32 noundef 1, i32 noundef -1) #5
  br label %22

22:                                               ; preds = %19, %14, %2
  %23 = phi i32 [ %21, %19 ], [ 0, %2 ], [ %17, %14 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uni_reader_shutdown(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.sti_uniperiph_data, ptr %6, i32 0, i32 2, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.uniperif, ptr %8, i32 0, i32 7
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #5
  %11 = getelementptr inbounds %struct.uniperif, ptr %8, i32 0, i32 16
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.uniperif, ptr %8, i32 0, i32 10
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 68
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #5, !srcloc !8
  %19 = and i32 %18, -8
  %20 = load ptr, ptr %15, align 4
  %21 = getelementptr i8, ptr %20, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #5, !srcloc !9
  %22 = load ptr, ptr %15, align 4
  %23 = getelementptr i8, ptr %22, i32 24
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #5, !srcloc !8
  %25 = load ptr, ptr %15, align 4
  %26 = getelementptr i8, ptr %25, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #5, !srcloc !9
  store i32 0, ptr %11, align 4
  br label %27

27:                                               ; preds = %14, %2
  %28 = getelementptr inbounds %struct.uniperif, ptr %8, i32 0, i32 17
  store ptr null, ptr %28, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_uniperiph_dai_hw_params(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uni_reader_prepare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [4 x i32], align 4
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.sti_uniperiph_data, ptr %7, i32 0, i32 2, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.uniperif, ptr %9, i32 0, i32 16
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.uniperif, ptr %9, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.uni_reader_prepare, i32 noundef %13) #6
  br label %345

18:                                               ; preds = %2
  %19 = load i32, ptr %9, align 4
  %20 = icmp eq i32 %19, 8
  %21 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 15
  %22 = load i32, ptr %21, align 8
  br i1 %20, label %23, label %29

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 12
  %25 = load i32, ptr %24, align 4
  %26 = tail call i32 @snd_pcm_format_width(i32 noundef %25) #5
  %27 = mul i32 %26, %22
  %28 = lshr i32 %27, 5
  br label %31

29:                                               ; preds = %18
  %30 = shl i32 %22, 2
  br label %31

31:                                               ; preds = %29, %23
  %32 = phi i32 [ %28, %23 ], [ %30, %29 ]
  %33 = getelementptr inbounds %struct.uniperif, ptr %9, i32 0, i32 4
  %34 = load i32, ptr %33, align 4
  %35 = icmp slt i32 %34, 5
  %36 = sub i32 70, %32
  %37 = select i1 %35, i32 %36, i32 %32
  switch i32 %37, label %38 [
    i32 0, label %43
    i32 1, label %46
  ]

38:                                               ; preds = %31
  %39 = and i32 %32, 1
  %40 = icmp ne i32 %39, 0
  %41 = icmp sgt i32 %37, 127
  %42 = select i1 %40, i1 true, i1 %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %38, %31
  %44 = getelementptr inbounds %struct.uniperif, ptr %9, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.3, i32 noundef %37) #6
  br label %345

46:                                               ; preds = %38, %31
  %47 = getelementptr inbounds %struct.uniperif, ptr %9, i32 0, i32 10
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr i8, ptr %48, i32 64
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #5, !srcloc !8
  %51 = and i32 %50, -32513
  %52 = shl i32 %37, 8
  %53 = and i32 %52, 32512
  %54 = or i32 %51, %53
  %55 = load ptr, ptr %47, align 4
  %56 = getelementptr i8, ptr %55, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %54) #5, !srcloc !9
  %57 = load i32, ptr %9, align 4
  %58 = icmp eq i32 %57, 8
  br i1 %58, label %59, label %122

59:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) @__const.uni_reader_prepare_tdm.word_pos, i32 16, i1 false) #5
  %60 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 15
  %61 = load i32, ptr %60, align 8
  %62 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 12
  %63 = load i32, ptr %62, align 4
  %64 = tail call i32 @snd_pcm_format_width(i32 noundef %63) #5
  %65 = load ptr, ptr %47, align 4
  %66 = getelementptr i8, ptr %65, i32 64
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #5, !srcloc !8
  %68 = and i32 %67, -33
  %69 = load ptr, ptr %47, align 4
  %70 = getelementptr i8, ptr %69, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %68) #5, !srcloc !9
  %71 = load ptr, ptr %47, align 4
  %72 = getelementptr i8, ptr %71, i32 72
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #5, !srcloc !8
  %74 = and i32 %73, -15
  %75 = or i32 %74, 10
  %76 = load ptr, ptr %47, align 4
  %77 = getelementptr i8, ptr %76, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %75) #5, !srcloc !9
  %78 = load ptr, ptr %47, align 4
  %79 = getelementptr i8, ptr %78, i32 72
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #5, !srcloc !8
  %81 = and i32 %80, -3585
  %82 = shl i32 %61, 3
  %83 = mul i32 %82, %64
  %84 = and i32 %83, 3584
  %85 = or i32 %81, %84
  %86 = load ptr, ptr %47, align 4
  %87 = getelementptr i8, ptr %86, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %85) #5, !srcloc !9
  %88 = load ptr, ptr %47, align 4
  %89 = getelementptr i8, ptr %88, i32 72
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #5, !srcloc !8
  %91 = or i32 %90, 256
  %92 = load ptr, ptr %47, align 4
  %93 = getelementptr i8, ptr %92, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 %91) #5, !srcloc !9
  %94 = load ptr, ptr %47, align 4
  %95 = getelementptr i8, ptr %94, i32 72
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %95) #5, !srcloc !8
  %97 = and i32 %96, -129
  %98 = load ptr, ptr %47, align 4
  %99 = getelementptr i8, ptr %98, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 %97) #5, !srcloc !9
  %100 = load ptr, ptr %47, align 4
  %101 = getelementptr i8, ptr %100, i32 280
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #5, !srcloc !8
  %103 = or i32 %102, 1
  %104 = load ptr, ptr %47, align 4
  %105 = getelementptr i8, ptr %104, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 %103) #5, !srcloc !9
  %106 = call i32 @sti_uniperiph_get_tdm_word_pos(ptr noundef %9, ptr noundef nonnull %3) #5
  %107 = load i32, ptr %3, align 4
  %108 = load ptr, ptr %47, align 4
  %109 = getelementptr i8, ptr %108, i32 316
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %109, i32 %107) #5, !srcloc !9
  %110 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 1
  %111 = load i32, ptr %110, align 4
  %112 = load ptr, ptr %47, align 4
  %113 = getelementptr i8, ptr %112, i32 320
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %113, i32 %111) #5, !srcloc !9
  %114 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 2
  %115 = load i32, ptr %114, align 4
  %116 = load ptr, ptr %47, align 4
  %117 = getelementptr i8, ptr %116, i32 324
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 %115) #5, !srcloc !9
  %118 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 3
  %119 = load i32, ptr %118, align 4
  %120 = load ptr, ptr %47, align 4
  %121 = getelementptr i8, ptr %120, i32 328
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 %119) #5, !srcloc !9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #5
  br label %206

122:                                              ; preds = %46
  %123 = getelementptr inbounds %struct.uniperif, ptr %9, i32 0, i32 22
  %124 = load i32, ptr %123, align 4
  %125 = and i32 %124, 15
  %126 = icmp eq i32 %125, 1
  br i1 %126, label %131, label %127

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 12
  %129 = load i32, ptr %128, align 4
  %130 = icmp eq i32 %129, 2
  br i1 %130, label %145, label %131

131:                                              ; preds = %127, %122
  %132 = load ptr, ptr %47, align 4
  %133 = getelementptr i8, ptr %132, i32 72
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %133) #5, !srcloc !8
  %135 = and i32 %134, -2
  %136 = load ptr, ptr %47, align 4
  %137 = getelementptr i8, ptr %136, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %137, i32 %135) #5, !srcloc !9
  %138 = load ptr, ptr %47, align 4
  %139 = getelementptr i8, ptr %138, i32 72
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %139) #5, !srcloc !8
  %141 = and i32 %140, -15
  %142 = or i32 %141, 10
  %143 = load ptr, ptr %47, align 4
  %144 = getelementptr i8, ptr %143, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %144, i32 %142) #5, !srcloc !9
  br label %158

145:                                              ; preds = %127
  %146 = load ptr, ptr %47, align 4
  %147 = getelementptr i8, ptr %146, i32 72
  %148 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %147) #5, !srcloc !8
  %149 = or i32 %148, 1
  %150 = load ptr, ptr %47, align 4
  %151 = getelementptr i8, ptr %150, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %151, i32 %149) #5, !srcloc !9
  %152 = load ptr, ptr %47, align 4
  %153 = getelementptr i8, ptr %152, i32 72
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %153) #5, !srcloc !8
  %155 = and i32 %154, -15
  %156 = load ptr, ptr %47, align 4
  %157 = getelementptr i8, ptr %156, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %157, i32 %155) #5, !srcloc !9
  br label %158

158:                                              ; preds = %145, %131
  %159 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 12
  %160 = load i32, ptr %159, align 4
  switch i32 %160, label %175 [
    i32 2, label %161
    i32 10, label %168
  ]

161:                                              ; preds = %158
  %162 = load ptr, ptr %47, align 4
  %163 = getelementptr i8, ptr %162, i32 64
  %164 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %163) #5, !srcloc !8
  %165 = or i32 %164, 32
  %166 = load ptr, ptr %47, align 4
  %167 = getelementptr i8, ptr %166, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %167, i32 %165) #5, !srcloc !9
  br label %178

168:                                              ; preds = %158
  %169 = load ptr, ptr %47, align 4
  %170 = getelementptr i8, ptr %169, i32 64
  %171 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %170) #5, !srcloc !8
  %172 = and i32 %171, -33
  %173 = load ptr, ptr %47, align 4
  %174 = getelementptr i8, ptr %173, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %174, i32 %172) #5, !srcloc !9
  br label %178

175:                                              ; preds = %158
  %176 = getelementptr inbounds %struct.uniperif, ptr %9, i32 0, i32 2
  %177 = load ptr, ptr %176, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %177, ptr noundef nonnull @.str.4) #6
  br label %345

178:                                              ; preds = %168, %161
  %179 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 15
  %180 = load i32, ptr %179, align 8
  %181 = and i32 %180, 1
  %182 = icmp ne i32 %181, 0
  %183 = add i32 %180, -11
  %184 = icmp ult i32 %183, -9
  %185 = or i1 %184, %182
  br i1 %185, label %186, label %189

186:                                              ; preds = %178
  %187 = getelementptr inbounds %struct.uniperif, ptr %9, i32 0, i32 2
  %188 = load ptr, ptr %187, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %188, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.uni_reader_prepare_pcm) #6
  br label %345

189:                                              ; preds = %178
  %190 = load ptr, ptr %47, align 4
  %191 = getelementptr i8, ptr %190, i32 72
  %192 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %191) #5, !srcloc !8
  %193 = and i32 %192, -3585
  %194 = load i32, ptr %179, align 8
  %195 = shl i32 %194, 8
  %196 = and i32 %195, 3584
  %197 = or i32 %196, %193
  %198 = load ptr, ptr %47, align 4
  %199 = getelementptr i8, ptr %198, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %199, i32 %197) #5, !srcloc !9
  %200 = load ptr, ptr %47, align 4
  %201 = getelementptr i8, ptr %200, i32 72
  %202 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %201) #5, !srcloc !8
  %203 = or i32 %202, 256
  %204 = load ptr, ptr %47, align 4
  %205 = getelementptr i8, ptr %204, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %205, i32 %203) #5, !srcloc !9
  br label %206

206:                                              ; preds = %189, %59
  %207 = getelementptr inbounds %struct.uniperif, ptr %9, i32 0, i32 22
  %208 = load i32, ptr %207, align 4
  %209 = and i32 %208, 15
  switch i32 %209, label %249 [
    i32 1, label %210
    i32 3, label %223
    i32 2, label %236
  ]

210:                                              ; preds = %206
  %211 = load ptr, ptr %47, align 4
  %212 = getelementptr i8, ptr %211, i32 72
  %213 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %212) #5, !srcloc !8
  %214 = and i32 %213, -129
  %215 = load ptr, ptr %47, align 4
  %216 = getelementptr i8, ptr %215, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %216, i32 %214) #5, !srcloc !9
  %217 = load ptr, ptr %47, align 4
  %218 = getelementptr i8, ptr %217, i32 72
  %219 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %218) #5, !srcloc !8
  %220 = and i32 %219, -65
  %221 = load ptr, ptr %47, align 4
  %222 = getelementptr i8, ptr %221, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %222, i32 %220) #5, !srcloc !9
  br label %252

223:                                              ; preds = %206
  %224 = load ptr, ptr %47, align 4
  %225 = getelementptr i8, ptr %224, i32 72
  %226 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %225) #5, !srcloc !8
  %227 = and i32 %226, -129
  %228 = load ptr, ptr %47, align 4
  %229 = getelementptr i8, ptr %228, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %229, i32 %227) #5, !srcloc !9
  %230 = load ptr, ptr %47, align 4
  %231 = getelementptr i8, ptr %230, i32 72
  %232 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %231) #5, !srcloc !8
  %233 = or i32 %232, 64
  %234 = load ptr, ptr %47, align 4
  %235 = getelementptr i8, ptr %234, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %235, i32 %233) #5, !srcloc !9
  br label %252

236:                                              ; preds = %206
  %237 = load ptr, ptr %47, align 4
  %238 = getelementptr i8, ptr %237, i32 72
  %239 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %238) #5, !srcloc !8
  %240 = or i32 %239, 128
  %241 = load ptr, ptr %47, align 4
  %242 = getelementptr i8, ptr %241, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %242, i32 %240) #5, !srcloc !9
  %243 = load ptr, ptr %47, align 4
  %244 = getelementptr i8, ptr %243, i32 72
  %245 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %244) #5, !srcloc !8
  %246 = or i32 %245, 64
  %247 = load ptr, ptr %47, align 4
  %248 = getelementptr i8, ptr %247, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %248, i32 %246) #5, !srcloc !9
  br label %252

249:                                              ; preds = %206
  %250 = getelementptr inbounds %struct.uniperif, ptr %9, i32 0, i32 2
  %251 = load ptr, ptr %250, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %251, ptr noundef nonnull @.str.4) #6
  br label %345

252:                                              ; preds = %236, %223, %210
  %253 = load i32, ptr %207, align 4
  %254 = lshr i32 %253, 8
  %255 = and i32 %254, 15
  switch i32 %255, label %308 [
    i32 0, label %256
    i32 2, label %269
    i32 3, label %282
    i32 4, label %295
  ]

256:                                              ; preds = %252
  %257 = load ptr, ptr %47, align 4
  %258 = getelementptr i8, ptr %257, i32 72
  %259 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %258) #5, !srcloc !8
  %260 = and i32 %259, -17
  %261 = load ptr, ptr %47, align 4
  %262 = getelementptr i8, ptr %261, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %262, i32 %260) #5, !srcloc !9
  %263 = load ptr, ptr %47, align 4
  %264 = getelementptr i8, ptr %263, i32 72
  %265 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %264) #5, !srcloc !8
  %266 = and i32 %265, -33
  %267 = load ptr, ptr %47, align 4
  %268 = getelementptr i8, ptr %267, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %268, i32 %266) #5, !srcloc !9
  br label %308

269:                                              ; preds = %252
  %270 = load ptr, ptr %47, align 4
  %271 = getelementptr i8, ptr %270, i32 72
  %272 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %271) #5, !srcloc !8
  %273 = or i32 %272, 16
  %274 = load ptr, ptr %47, align 4
  %275 = getelementptr i8, ptr %274, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %275, i32 %273) #5, !srcloc !9
  %276 = load ptr, ptr %47, align 4
  %277 = getelementptr i8, ptr %276, i32 72
  %278 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %277) #5, !srcloc !8
  %279 = and i32 %278, -33
  %280 = load ptr, ptr %47, align 4
  %281 = getelementptr i8, ptr %280, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %281, i32 %279) #5, !srcloc !9
  br label %308

282:                                              ; preds = %252
  %283 = load ptr, ptr %47, align 4
  %284 = getelementptr i8, ptr %283, i32 72
  %285 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %284) #5, !srcloc !8
  %286 = and i32 %285, -17
  %287 = load ptr, ptr %47, align 4
  %288 = getelementptr i8, ptr %287, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %288, i32 %286) #5, !srcloc !9
  %289 = load ptr, ptr %47, align 4
  %290 = getelementptr i8, ptr %289, i32 72
  %291 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %290) #5, !srcloc !8
  %292 = or i32 %291, 32
  %293 = load ptr, ptr %47, align 4
  %294 = getelementptr i8, ptr %293, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %294, i32 %292) #5, !srcloc !9
  br label %308

295:                                              ; preds = %252
  %296 = load ptr, ptr %47, align 4
  %297 = getelementptr i8, ptr %296, i32 72
  %298 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %297) #5, !srcloc !8
  %299 = or i32 %298, 16
  %300 = load ptr, ptr %47, align 4
  %301 = getelementptr i8, ptr %300, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %301, i32 %299) #5, !srcloc !9
  %302 = load ptr, ptr %47, align 4
  %303 = getelementptr i8, ptr %302, i32 72
  %304 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %303) #5, !srcloc !8
  %305 = or i32 %304, 32
  %306 = load ptr, ptr %47, align 4
  %307 = getelementptr i8, ptr %306, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %307, i32 %305) #5, !srcloc !9
  br label %308

308:                                              ; preds = %295, %282, %269, %256, %252
  %309 = load ptr, ptr %47, align 4
  %310 = getelementptr i8, ptr %309, i32 12
  %311 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %310) #5, !srcloc !8
  %312 = load ptr, ptr %47, align 4
  %313 = getelementptr i8, ptr %312, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %313, i32 %311) #5, !srcloc !9
  %314 = load ptr, ptr %47, align 4
  %315 = getelementptr i8, ptr %314, i32 72
  %316 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %315) #5, !srcloc !8
  %317 = and i32 %316, 4095
  %318 = load ptr, ptr %47, align 4
  %319 = getelementptr i8, ptr %318, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %319, i32 %317) #5, !srcloc !9
  %320 = load ptr, ptr %47, align 4
  %321 = getelementptr i8, ptr %320, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %321, i32 512) #5, !srcloc !9
  %322 = load i32, ptr %33, align 4
  %323 = icmp slt i32 %322, 5
  %324 = select i1 %323, i32 1, i32 256
  %325 = load ptr, ptr %47, align 4
  %326 = getelementptr i8, ptr %325, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %326, i32 %324) #5, !srcloc !9
  %327 = load ptr, ptr %47, align 4
  %328 = getelementptr i8, ptr %327, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %328, i32 32) #5, !srcloc !9
  %329 = getelementptr inbounds %struct.uniperif, ptr %9, i32 0, i32 1
  %330 = load i32, ptr %329, align 4
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %343, label %332

332:                                              ; preds = %308
  %333 = load i32, ptr %33, align 4
  %334 = icmp slt i32 %333, 5
  %335 = select i1 %334, i32 0, i32 4096
  %336 = load ptr, ptr %47, align 4
  %337 = getelementptr i8, ptr %336, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %337, i32 %335) #5, !srcloc !9
  %338 = load i32, ptr %33, align 4
  %339 = icmp slt i32 %338, 5
  %340 = select i1 %339, i32 0, i32 8192
  %341 = load ptr, ptr %47, align 4
  %342 = getelementptr i8, ptr %341, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %342, i32 %340) #5, !srcloc !9
  br label %343

343:                                              ; preds = %332, %308
  %344 = call i32 @sti_uniperiph_reset(ptr noundef %9) #5
  br label %345

345:                                              ; preds = %343, %249, %186, %175, %43, %15
  %346 = phi i32 [ -22, %15 ], [ -22, %43 ], [ -22, %249 ], [ %344, %343 ], [ -22, %175 ], [ -22, %186 ]
  ret i32 %346
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uni_reader_trigger(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.sti_uniperiph_data, ptr %7, i32 0, i32 2, i32 1
  %9 = load ptr, ptr %8, align 4
  switch i32 %1, label %57 [
    i32 1, label %10
    i32 0, label %37
  ]

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.uniperif, ptr %9, i32 0, i32 16
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.uniperif, ptr %9, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.uni_reader_start) #6
  br label %57

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.uniperif, ptr %9, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = icmp slt i32 %19, 5
  %21 = select i1 %20, i32 1, i32 256
  %22 = getelementptr inbounds %struct.uniperif, ptr %9, i32 0, i32 10
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %21) #5, !srcloc !9
  %25 = load i32, ptr %18, align 4
  %26 = icmp slt i32 %25, 5
  %27 = select i1 %26, i32 1, i32 256
  %28 = load ptr, ptr %22, align 4
  %29 = getelementptr i8, ptr %28, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #5, !srcloc !9
  %30 = load ptr, ptr %22, align 4
  %31 = getelementptr i8, ptr %30, i32 68
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #5, !srcloc !8
  %33 = and i32 %32, -8
  %34 = or i32 %33, 3
  %35 = load ptr, ptr %22, align 4
  %36 = getelementptr i8, ptr %35, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #5, !srcloc !9
  store i32 1, ptr %11, align 4
  br label %57

37:                                               ; preds = %3
  %38 = getelementptr inbounds %struct.uniperif, ptr %9, i32 0, i32 16
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.uniperif, ptr %9, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.uni_reader_stop) #6
  br label %57

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.uniperif, ptr %9, i32 0, i32 10
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr i8, ptr %46, i32 68
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #5, !srcloc !8
  %49 = and i32 %48, -8
  %50 = load ptr, ptr %45, align 4
  %51 = getelementptr i8, ptr %50, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #5, !srcloc !9
  %52 = load ptr, ptr %45, align 4
  %53 = getelementptr i8, ptr %52, i32 24
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #5, !srcloc !8
  %55 = load ptr, ptr %45, align 4
  %56 = getelementptr i8, ptr %55, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %54) #5, !srcloc !9
  store i32 0, ptr %38, align 4
  br label %57

57:                                               ; preds = %44, %41, %17, %14, %3
  %58 = phi i32 [ -22, %3 ], [ -22, %14 ], [ 0, %17 ], [ -22, %41 ], [ 0, %44 ]
  ret i32 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_rule_add(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_uniperiph_fix_tdm_chan(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_uniperiph_fix_tdm_format(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_uniperiph_reset(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_uniperiph_get_tdm_word_pos(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_stream_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_stop_xrun(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_stream_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
!8 = !{i64 3879603}
!9 = !{i64 3879185}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2149085548}
!12 = !{i64 2149081372}
!13 = !{i64 2149081447, i64 2149081474, i64 2149081521, i64 2149081543, i64 2149081571, i64 2149081591}
!14 = !{i64 2149108551}
