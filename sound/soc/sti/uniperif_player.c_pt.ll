; ModuleID = '/llk/IR/sound/soc/sti/uniperif_player.c_pt.bc'
source_filename = "../sound/soc/sti/uniperif_player.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_uni_player_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22uni_player_resume\22\09\09\09\09\09"
module asm "__kstrtabns_uni_player_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_uni_player_init:\09\09\09\09\09"
module asm "\09.asciz \09\22uni_player_init\22\09\09\09\09\09"
module asm "__kstrtabns_uni_player_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lock_class_key = type {}
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.80, i32 }
%union.anon.80 = type { ptr }
%struct.uniperif = type { i32, i32, ptr, i32, i32, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.uniperif_iec958_settings, %struct.mutex, ptr, i32, i32, %struct.dai_tdm_slot, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.uniperif_iec958_settings = type { i32, %struct.snd_aes_iec958 }
%struct.snd_aes_iec958 = type { [24 x i8], [147 x i8], i8, [4 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.dai_tdm_slot = type { i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
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
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.70, [64 x i8] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.70 = type { %struct.anon.73, [40 x i8] }
%struct.anon.73 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.79, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%union.anon.79 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.74, [128 x i8] }
%union.anon.74 = type { %union.anon.76 }
%union.anon.76 = type { [64 x i64] }

@.str = private unnamed_addr constant [39 x i8] c"%s: Failed to select freq synth clock\0A\00", align 1
@__func__.uni_player_resume = private unnamed_addr constant [18 x i8] c"uni_player_resume\00", align 1
@__kstrtab_uni_player_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_uni_player_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_uni_player_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @uni_player_resume to i32), ptr @__kstrtab_uni_player_resume, ptr @__kstrtabns_uni_player_resume }, section "___ksymtab_gpl+uni_player_resume", align 4
@uni_player_dai_ops = internal constant %struct.snd_soc_dai_ops { ptr @uni_player_set_sysclk, ptr null, ptr null, ptr null, ptr @sti_uniperiph_dai_set_fmt, ptr null, ptr @sti_uniperiph_set_tdm_slot, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uni_player_startup, ptr @uni_player_shutdown, ptr @sti_uniperiph_dai_hw_params, ptr null, ptr @uni_player_prepare, ptr @uni_player_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to parse DeviceTree\0A\00", align 1
@uni_tdm_hw = internal constant %struct.snd_pcm_hardware { i32 590083, i64 1028, i32 1073741824, i32 8000, i32 48000, i32 1, i32 32, i32 1048576, i32 128, i32 262144, i32 2, i32 10, i32 0 }, align 8
@uni_player_pcm_hw = internal constant %struct.snd_pcm_hardware { i32 590083, i64 1028, i32 1073741824, i32 8000, i32 192000, i32 2, i32 8, i32 1048576, i32 128, i32 262144, i32 2, i32 48, i32 0 }, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"Failed to get clock\0A\00", align 1
@__func__.uni_player_init = private unnamed_addr constant [16 x i8] c"uni_player_init\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"%s: unable to connect to tdm bus\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"unable to request IRQ %d\0A\00", align 1
@uni_player_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"&player->ctrl_lock\00", align 1
@__kstrtab_uni_player_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_uni_player_init = external dso_local constant [0 x i8], align 1
@__ksymtab_uni_player_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @uni_player_init to i32), ptr @__kstrtab_uni_player_init, ptr @__kstrtabns_uni_player_init }, section "___ksymtab_gpl+uni_player_init", align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"%s: invalid player state\0A\00", align 1
@__func__.uni_player_stop = private unnamed_addr constant [16 x i8] c"uni_player_stop\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"%s: invalid player state %d\0A\00", align 1
@__func__.uni_player_prepare = private unnamed_addr constant [19 x i8] c"uni_player_prepare\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"invalid trigger limit %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"invalid player type\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"format not supported\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"%s: invalid clk_div %d\0A\00", align 1
@__func__.uni_player_prepare_iec958 = private unnamed_addr constant [26 x i8] c"uni_player_prepare_iec958\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"%s: invalid clk_div\0A\00", align 1
@__func__.uni_player_prepare_pcm = private unnamed_addr constant [23 x i8] c"uni_player_prepare_pcm\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"subframe format not supported\0A\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"%s: invalid nb of channels\0A\00", align 1
@__const.uni_player_prepare_tdm.word_pos = private unnamed_addr constant [4 x i32] [i32 67502082, i32 202246154, i32 336990226, i32 471734298], align 4
@__func__.uni_player_start = private unnamed_addr constant [17 x i8] c"uni_player_start\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"%s: Failed to enable clock\0A\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"st,syscfg\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"sti-audio-clk-glue syscf not found\0A\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"FIFO underflow error detected\0A\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"DMA error detected\0A\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"unexpected Underflow recovering\0A\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"Underflow recovery failed\0A\00", align 1
@uni_player_iec958_ctl = internal global %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.22, i32 0, i32 0, i32 0, ptr @uni_player_ctl_iec958_info, ptr @uni_player_ctl_iec958_get, ptr @uni_player_ctl_iec958_put, %union.anon.80 zeroinitializer, i32 0 }, align 4
@uni_player_clk_adj_ctl = internal global %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.23, i32 0, i32 0, i32 0, ptr @snd_sti_clk_adjustment_info, ptr @snd_sti_clk_adjustment_get, ptr @snd_sti_clk_adjustment_put, %union.anon.80 zeroinitializer, i32 0 }, align 4
@.str.22 = private unnamed_addr constant [24 x i8] c"IEC958 Playback Default\00", align 1
@.str.23 = private unnamed_addr constant [43 x i8] c"PCM Playback Oversampling Freq. Adjustment\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_uni_player_init, ptr @__ksymtab_uni_player_resume], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uni_player_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.uniperif, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @regmap_field_update_bits_base(ptr noundef nonnull %3, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.uniperif, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.uni_player_resume) #8
  br label %37

11:                                               ; preds = %5, %1
  %12 = getelementptr inbounds %struct.uniperif, ptr %0, i32 0, i32 10
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 64
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #7, !srcloc !8
  %16 = and i32 %15, -129
  %17 = load ptr, ptr %12, align 4
  %18 = getelementptr i8, ptr %17, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #7, !srcloc !9
  %19 = load ptr, ptr %12, align 4
  %20 = getelementptr i8, ptr %19, i32 68
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #7, !srcloc !8
  %22 = and i32 %21, -17
  %23 = load ptr, ptr %12, align 4
  %24 = getelementptr i8, ptr %23, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #7, !srcloc !9
  %25 = load ptr, ptr %12, align 4
  %26 = getelementptr i8, ptr %25, i32 68
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #7, !srcloc !8
  %28 = and i32 %27, -65537
  %29 = load ptr, ptr %12, align 4
  %30 = getelementptr i8, ptr %29, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #7, !srcloc !9
  %31 = load ptr, ptr %12, align 4
  %32 = getelementptr i8, ptr %31, i32 64
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #7, !srcloc !8
  %34 = and i32 %33, -262145
  %35 = load ptr, ptr %12, align 4
  %36 = getelementptr i8, ptr %35, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #7, !srcloc !9
  br label %37

37:                                               ; preds = %11, %8
  %38 = phi i32 [ %6, %8 ], [ 0, %11 ]
  ret i32 %38
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uni_player_init(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.uniperif, ptr %1, i32 0, i32 2
  store ptr %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.uniperif, ptr %1, i32 0, i32 16
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.uniperif, ptr %1, i32 0, i32 24
  store ptr @uni_player_dai_ops, ptr %6, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.uniperif, ptr %1, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %8, ptr noundef nonnull @.str.16) #7
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %23, label %13

13:                                               ; preds = %2
  %14 = add i32 %10, 8
  %15 = insertvalue [5 x i32] [i32 164, i32 poison, i32 poison, i32 poison, i32 poison], i32 %14, 1
  %16 = insertvalue [5 x i32] %15, i32 %14, 2
  %17 = insertvalue [5 x i32] %16, i32 0, 3
  %18 = insertvalue [5 x i32] %17, i32 0, 4
  %19 = tail call ptr @regmap_field_alloc(ptr noundef %11, [5 x i32] %18) #7
  %20 = getelementptr inbounds %struct.uniperif, ptr %1, i32 0, i32 5
  store ptr %19, ptr %20, align 4
  %21 = tail call ptr @regmap_field_alloc(ptr noundef %11, [5 x i32] [i32 164, i32 0, i32 1, i32 0, i32 0]) #7
  %22 = getelementptr inbounds %struct.uniperif, ptr %1, i32 0, i32 6
  store ptr %21, ptr %22, align 4
  br label %28

23:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.17) #8
  %24 = icmp slt ptr %11, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  %26 = ptrtoint ptr %11 to i32
  %27 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.1) #8
  br label %123

28:                                               ; preds = %23, %13
  %29 = getelementptr inbounds %struct.uniperif, ptr %1, i32 0, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = icmp sgt i32 %30, 4
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.uniperif, ptr %1, i32 0, i32 1
  store i32 1, ptr %33, align 4
  br label %34

34:                                               ; preds = %32, %28
  %35 = load i32, ptr %1, align 4
  %36 = icmp eq i32 %35, 8
  %37 = select i1 %36, ptr @uni_tdm_hw, ptr @uni_player_pcm_hw
  %38 = getelementptr inbounds %struct.uniperif, ptr %1, i32 0, i32 8
  store ptr %37, ptr %38, align 4
  %39 = load ptr, ptr %7, align 8
  %40 = tail call ptr @of_clk_get(ptr noundef %39, i32 noundef 0) #7
  %41 = getelementptr inbounds %struct.uniperif, ptr %1, i32 0, i32 13
  store ptr %40, ptr %41, align 4
  %42 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %43, label %47

43:                                               ; preds = %34
  %44 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.2) #8
  %45 = load ptr, ptr %41, align 4
  %46 = ptrtoint ptr %45 to i32
  br label %123

47:                                               ; preds = %34
  %48 = getelementptr inbounds %struct.uniperif, ptr %1, i32 0, i32 5
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %47
  %52 = tail call i32 @regmap_field_update_bits_base(ptr noundef nonnull %49, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.uni_player_init) #8
  br label %123

56:                                               ; preds = %51, %47
  %57 = getelementptr inbounds %struct.uniperif, ptr %1, i32 0, i32 6
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %68, label %60

60:                                               ; preds = %56
  %61 = load i32, ptr %9, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = tail call i32 @regmap_field_update_bits_base(ptr noundef nonnull %58, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  %67 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.uni_player_init) #8
  br label %123

68:                                               ; preds = %63, %60, %56
  %69 = getelementptr inbounds %struct.uniperif, ptr %1, i32 0, i32 12
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load ptr, ptr %3, align 4
  br label %76

76:                                               ; preds = %74, %68
  %77 = phi ptr [ %75, %74 ], [ %72, %68 ]
  %78 = tail call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %70, ptr noundef nonnull @uni_player_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef %77, ptr noundef %1) #7
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load ptr, ptr %4, align 4
  %82 = load i32, ptr %69, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.4, i32 noundef %82) #8
  br label %123

83:                                               ; preds = %76
  %84 = getelementptr inbounds %struct.uniperif, ptr %1, i32 0, i32 19
  tail call void @__mutex_init(ptr noundef %84, ptr noundef nonnull @.str.5, ptr noundef nonnull @uni_player_init.__key) #7
  %85 = getelementptr inbounds %struct.uniperif, ptr %1, i32 0, i32 7
  store i32 0, ptr %85, align 4
  %86 = getelementptr inbounds %struct.uniperif, ptr %1, i32 0, i32 10
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr i8, ptr %87, i32 64
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %88) #7, !srcloc !8
  %90 = and i32 %89, -129
  %91 = load ptr, ptr %86, align 4
  %92 = getelementptr i8, ptr %91, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %90) #7, !srcloc !9
  %93 = load ptr, ptr %86, align 4
  %94 = getelementptr i8, ptr %93, i32 68
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %94) #7, !srcloc !8
  %96 = and i32 %95, -17
  %97 = load ptr, ptr %86, align 4
  %98 = getelementptr i8, ptr %97, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 %96) #7, !srcloc !9
  %99 = load ptr, ptr %86, align 4
  %100 = getelementptr i8, ptr %99, i32 68
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %100) #7, !srcloc !8
  %102 = and i32 %101, -65537
  %103 = load ptr, ptr %86, align 4
  %104 = getelementptr i8, ptr %103, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 %102) #7, !srcloc !9
  %105 = load ptr, ptr %86, align 4
  %106 = getelementptr i8, ptr %105, i32 64
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %106) #7, !srcloc !8
  %108 = and i32 %107, -262145
  %109 = load ptr, ptr %86, align 4
  %110 = getelementptr i8, ptr %109, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 %108) #7, !srcloc !9
  %111 = load i32, ptr %1, align 4
  switch i32 %111, label %120 [
    i32 1, label %112
    i32 4, label %112
  ]

112:                                              ; preds = %83, %83
  %113 = getelementptr inbounds %struct.uniperif, ptr %1, i32 0, i32 18, i32 1
  store i8 0, ptr %113, align 4
  %114 = getelementptr %struct.uniperif, ptr %1, i32 0, i32 18, i32 1, i32 0, i32 1
  store i8 0, ptr %114, align 1
  %115 = getelementptr %struct.uniperif, ptr %1, i32 0, i32 18, i32 1, i32 0, i32 2
  store i8 0, ptr %115, align 2
  %116 = getelementptr %struct.uniperif, ptr %1, i32 0, i32 18, i32 1, i32 0, i32 3
  store i8 1, ptr %116, align 1
  %117 = getelementptr %struct.uniperif, ptr %1, i32 0, i32 18, i32 1, i32 0, i32 4
  store i8 11, ptr %117, align 4
  %118 = getelementptr inbounds %struct.uniperif, ptr %1, i32 0, i32 21
  store i32 2, ptr %118, align 4
  %119 = getelementptr inbounds %struct.uniperif, ptr %1, i32 0, i32 20
  store ptr @uni_player_iec958_ctl, ptr %119, align 4
  br label %123

120:                                              ; preds = %83
  %121 = getelementptr inbounds %struct.uniperif, ptr %1, i32 0, i32 21
  store i32 1, ptr %121, align 4
  %122 = getelementptr inbounds %struct.uniperif, ptr %1, i32 0, i32 20
  store ptr @uni_player_clk_adj_ctl, ptr %122, align 4
  br label %123

123:                                              ; preds = %120, %112, %80, %66, %54, %43, %25
  %124 = phi i32 [ %26, %25 ], [ %46, %43 ], [ %52, %54 ], [ %64, %66 ], [ %78, %80 ], [ 0, %120 ], [ 0, %112 ]
  ret i32 %124
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uni_player_irq_handler(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.uniperif, ptr %1, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %3) #7
  %4 = getelementptr inbounds %struct.uniperif, ptr %1, i32 0, i32 17
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %96, label %7

7:                                                ; preds = %2
  tail call void @snd_pcm_stream_lock(ptr noundef nonnull %5) #7
  %8 = getelementptr inbounds %struct.uniperif, ptr %1, i32 0, i32 16
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %93, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.uniperif, ptr %1, i32 0, i32 10
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 12
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #7, !srcloc !8
  %16 = load ptr, ptr %12, align 4
  %17 = getelementptr i8, ptr %16, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #7, !srcloc !9
  %18 = getelementptr inbounds %struct.uniperif, ptr %1, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = icmp slt i32 %19, 5
  %21 = select i1 %20, i32 1, i32 256
  %22 = and i32 %21, %15
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %39, label %24, !prof !10

24:                                               ; preds = %11
  %25 = getelementptr inbounds %struct.uniperif, ptr %1, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.18) #8
  %27 = getelementptr inbounds %struct.uniperif, ptr %1, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  store i32 3, ptr %8, align 4
  br label %39

31:                                               ; preds = %24
  %32 = load i32, ptr %18, align 4
  %33 = icmp slt i32 %32, 5
  %34 = select i1 %33, i32 1, i32 256
  %35 = load ptr, ptr %12, align 4
  %36 = getelementptr i8, ptr %35, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #7, !srcloc !9
  %37 = load ptr, ptr %4, align 4
  %38 = tail call i32 @snd_pcm_stop_xrun(ptr noundef %37) #7
  br label %39

39:                                               ; preds = %31, %30, %11
  %40 = phi i32 [ 0, %11 ], [ 1, %31 ], [ 1, %30 ]
  %41 = and i32 %15, 512
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %50, label %43, !prof !10

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.uniperif, ptr %1, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.19) #8
  %46 = load ptr, ptr %12, align 4
  %47 = getelementptr i8, ptr %46, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 512) #7, !srcloc !9
  %48 = load ptr, ptr %4, align 4
  %49 = tail call i32 @snd_pcm_stop_xrun(ptr noundef %48) #7
  br label %50

50:                                               ; preds = %43, %39
  %51 = phi i32 [ 1, %43 ], [ %40, %39 ]
  %52 = load i32, ptr %18, align 4
  %53 = icmp slt i32 %52, 5
  %54 = select i1 %53, i32 0, i32 4096
  %55 = and i32 %54, %15
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %81, label %57, !prof !10

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.uniperif, ptr %1, i32 0, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.uniperif, ptr %1, i32 0, i32 2
  %63 = load ptr, ptr %62, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.20) #8
  br label %93

64:                                               ; preds = %57
  %65 = load ptr, ptr %12, align 4
  %66 = getelementptr i8, ptr %65, i32 80
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #7, !srcloc !8
  %68 = load i32, ptr %18, align 4
  %69 = icmp slt i32 %68, 5
  %70 = load ptr, ptr %12, align 4
  %71 = select i1 %69, i32 -1, i32 76
  %72 = getelementptr i8, ptr %70, i32 %71
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #7, !srcloc !8
  %74 = or i32 %73, 1
  %75 = load ptr, ptr %12, align 4
  %76 = load i32, ptr %18, align 4
  %77 = icmp slt i32 %76, 5
  %78 = select i1 %77, i32 -1, i32 76
  %79 = getelementptr i8, ptr %75, i32 %78
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %74) #7, !srcloc !9
  store i32 1, ptr %8, align 4
  %80 = load i32, ptr %18, align 4
  br label %81

81:                                               ; preds = %64, %50
  %82 = phi i32 [ %80, %64 ], [ %52, %50 ]
  %83 = phi i32 [ 1, %64 ], [ %51, %50 ]
  %84 = icmp slt i32 %82, 5
  %85 = select i1 %84, i32 0, i32 8192
  %86 = and i32 %85, %15
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %93, label %88, !prof !10

88:                                               ; preds = %81
  %89 = getelementptr inbounds %struct.uniperif, ptr %1, i32 0, i32 2
  %90 = load ptr, ptr %89, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.21) #8
  %91 = load ptr, ptr %4, align 4
  %92 = tail call i32 @snd_pcm_stop_xrun(ptr noundef %91) #7
  br label %93

93:                                               ; preds = %88, %81, %61, %7
  %94 = phi i32 [ 0, %7 ], [ 1, %88 ], [ %83, %81 ], [ -1, %61 ]
  %95 = load ptr, ptr %4, align 4
  tail call void @snd_pcm_stream_unlock(ptr noundef %95) #7
  br label %96

96:                                               ; preds = %93, %2
  %97 = phi i32 [ %94, %93 ], [ 0, %2 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  %98 = load i16, ptr %3, align 4
  %99 = add i16 %98, 1
  store i16 %99, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !14
  ret i32 %97
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_update_bits_base(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uni_player_set_sysclk(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.sti_uniperiph_data, ptr %8, i32 0, i32 2, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 8
  %13 = icmp eq i32 %3, 0
  %14 = or i1 %13, %12
  br i1 %14, label %24, label %15

15:                                               ; preds = %4
  %16 = icmp eq i32 %1, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.uniperif, ptr %10, i32 0, i32 19
  tail call void @mutex_lock(ptr noundef %18) #7
  %19 = tail call fastcc i32 @uni_player_clk_set_rate(ptr noundef %10, i32 noundef %2)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.uniperif, ptr %10, i32 0, i32 14
  store i32 %2, ptr %22, align 4
  br label %23

23:                                               ; preds = %21, %17
  tail call void @mutex_unlock(ptr noundef %18) #7
  br label %24

24:                                               ; preds = %23, %15, %4
  %25 = phi i32 [ %19, %23 ], [ 0, %4 ], [ -22, %15 ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_uniperiph_dai_set_fmt(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_uniperiph_set_tdm_slot(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uni_player_startup(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.sti_uniperiph_data, ptr %6, i32 0, i32 2, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.uniperif, ptr %8, i32 0, i32 7
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #7
  %11 = getelementptr inbounds %struct.uniperif, ptr %8, i32 0, i32 17
  store ptr %0, ptr %11, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #7
  %12 = getelementptr inbounds %struct.uniperif, ptr %8, i32 0, i32 15
  store i32 0, ptr %12, align 4
  %13 = load i32, ptr %8, align 4
  %14 = icmp eq i32 %13, 8
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %17, i32 noundef 0, i32 noundef 10, ptr noundef nonnull @sti_uniperiph_fix_tdm_chan, ptr noundef %8, i32 noundef 10, i32 noundef -1) #7
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %16, align 4
  %22 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %21, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @sti_uniperiph_fix_tdm_format, ptr noundef %8, i32 noundef 1, i32 noundef -1) #7
  br label %23

23:                                               ; preds = %20, %15, %2
  %24 = phi i32 [ %22, %20 ], [ 0, %2 ], [ %18, %15 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uni_player_shutdown(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.sti_uniperiph_data, ptr %6, i32 0, i32 2, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.uniperif, ptr %8, i32 0, i32 7
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #7
  %11 = getelementptr inbounds %struct.uniperif, ptr %8, i32 0, i32 16
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = tail call fastcc i32 @uni_player_stop(ptr noundef %8)
  br label %16

16:                                               ; preds = %14, %2
  %17 = getelementptr inbounds %struct.uniperif, ptr %8, i32 0, i32 17
  store ptr null, ptr %17, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_uniperiph_dai_hw_params(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uni_player_prepare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.uni_player_prepare, i32 noundef %13) #8
  br label %402

18:                                               ; preds = %2
  %19 = load i32, ptr %9, align 4
  %20 = icmp eq i32 %19, 8
  %21 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 15
  %22 = load i32, ptr %21, align 8
  br i1 %20, label %23, label %29

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 12
  %25 = load i32, ptr %24, align 4
  %26 = tail call i32 @snd_pcm_format_width(i32 noundef %25) #7
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.8, i32 noundef %37) #8
  br label %402

46:                                               ; preds = %38, %31
  %47 = getelementptr inbounds %struct.uniperif, ptr %9, i32 0, i32 10
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr i8, ptr %48, i32 64
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #7, !srcloc !8
  %51 = and i32 %50, -32513
  %52 = shl i32 %37, 8
  %53 = and i32 %52, 32512
  %54 = or i32 %51, %53
  %55 = load ptr, ptr %47, align 4
  %56 = getelementptr i8, ptr %55, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %54) #7, !srcloc !9
  %57 = load i32, ptr %9, align 4
  switch i32 %57, label %286 [
    i32 1, label %289
    i32 2, label %58
    i32 4, label %289
    i32 8, label %199
  ]

58:                                               ; preds = %46
  %59 = getelementptr inbounds %struct.uniperif, ptr %9, i32 0, i32 22
  %60 = load i32, ptr %59, align 4
  %61 = and i32 %60, 15
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %67, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 12
  %65 = load i32, ptr %64, align 4
  %66 = tail call i32 @snd_pcm_format_width(i32 noundef %65) #7
  br label %67

67:                                               ; preds = %63, %58
  %68 = phi i32 [ %66, %63 ], [ 32, %58 ]
  %69 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 15
  %70 = load i32, ptr %69, align 8
  %71 = getelementptr inbounds %struct.uniperif, ptr %9, i32 0, i32 14
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 14
  %74 = load i32, ptr %73, align 4
  %75 = udiv i32 %72, %74
  %76 = icmp ne i32 %68, 32
  %77 = and i32 %75, 127
  %78 = icmp eq i32 %77, 0
  %79 = select i1 %76, i1 true, i1 %78
  br i1 %79, label %83, label %80

80:                                               ; preds = %67
  %81 = getelementptr inbounds %struct.uniperif, ptr %9, i32 0, i32 2
  %82 = load ptr, ptr %81, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %82, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.uni_player_prepare_pcm) #8
  br label %402

83:                                               ; preds = %67
  %84 = icmp ne i32 %68, 16
  %85 = and i32 %75, 63
  %86 = icmp eq i32 %85, 0
  %87 = select i1 %84, i1 true, i1 %86
  br i1 %87, label %91, label %88

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.uniperif, ptr %9, i32 0, i32 2
  %90 = load ptr, ptr %89, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.uni_player_prepare_pcm) #8
  br label %402

91:                                               ; preds = %83
  switch i32 %68, label %119 [
    i32 32, label %92
    i32 16, label %106
  ]

92:                                               ; preds = %91
  %93 = load ptr, ptr %47, align 4
  %94 = getelementptr i8, ptr %93, i32 72
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %94) #7, !srcloc !8
  %96 = and i32 %95, -2
  %97 = load ptr, ptr %47, align 4
  %98 = getelementptr i8, ptr %97, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 %96) #7, !srcloc !9
  %99 = load ptr, ptr %47, align 4
  %100 = getelementptr i8, ptr %99, i32 72
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %100) #7, !srcloc !8
  %102 = and i32 %101, -15
  %103 = or i32 %102, 10
  %104 = load ptr, ptr %47, align 4
  %105 = getelementptr i8, ptr %104, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 %103) #7, !srcloc !9
  br label %122

106:                                              ; preds = %91
  %107 = load ptr, ptr %47, align 4
  %108 = getelementptr i8, ptr %107, i32 72
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %108) #7, !srcloc !8
  %110 = or i32 %109, 1
  %111 = load ptr, ptr %47, align 4
  %112 = getelementptr i8, ptr %111, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %112, i32 %110) #7, !srcloc !9
  %113 = load ptr, ptr %47, align 4
  %114 = getelementptr i8, ptr %113, i32 72
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %114) #7, !srcloc !8
  %116 = and i32 %115, -15
  %117 = load ptr, ptr %47, align 4
  %118 = getelementptr i8, ptr %117, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 %116) #7, !srcloc !9
  br label %122

119:                                              ; preds = %91
  %120 = getelementptr inbounds %struct.uniperif, ptr %9, i32 0, i32 2
  %121 = load ptr, ptr %120, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %121, ptr noundef nonnull @.str.13) #8
  br label %402

122:                                              ; preds = %106, %92
  %123 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 12
  %124 = load i32, ptr %123, align 4
  switch i32 %124, label %139 [
    i32 2, label %125
    i32 10, label %132
  ]

125:                                              ; preds = %122
  %126 = load ptr, ptr %47, align 4
  %127 = getelementptr i8, ptr %126, i32 64
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %127) #7, !srcloc !8
  %129 = or i32 %128, 32
  %130 = load ptr, ptr %47, align 4
  %131 = getelementptr i8, ptr %130, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 %129) #7, !srcloc !9
  br label %142

132:                                              ; preds = %122
  %133 = load ptr, ptr %47, align 4
  %134 = getelementptr i8, ptr %133, i32 64
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %134) #7, !srcloc !8
  %136 = and i32 %135, -33
  %137 = load ptr, ptr %47, align 4
  %138 = getelementptr i8, ptr %137, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %138, i32 %136) #7, !srcloc !9
  br label %142

139:                                              ; preds = %122
  %140 = getelementptr inbounds %struct.uniperif, ptr %9, i32 0, i32 2
  %141 = load ptr, ptr %140, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %141, ptr noundef nonnull @.str.10) #8
  br label %402

142:                                              ; preds = %132, %125
  %143 = load ptr, ptr %47, align 4
  %144 = getelementptr i8, ptr %143, i32 68
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %144) #7, !srcloc !8
  %146 = and i32 %145, -17
  %147 = load ptr, ptr %47, align 4
  %148 = getelementptr i8, ptr %147, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %148, i32 %146) #7, !srcloc !9
  %149 = load ptr, ptr %47, align 4
  %150 = getelementptr i8, ptr %149, i32 68
  %151 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %150) #7, !srcloc !8
  %152 = and i32 %151, -8161
  %153 = shl nuw nsw i32 %68, 1
  %154 = mul i32 %153, %70
  %155 = sdiv i32 %75, %154
  %156 = shl i32 %155, 5
  %157 = and i32 %156, 8160
  %158 = or i32 %157, %152
  %159 = load ptr, ptr %47, align 4
  %160 = getelementptr i8, ptr %159, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %160, i32 %158) #7, !srcloc !9
  %161 = load i32, ptr %69, align 8
  %162 = and i32 %161, 1
  %163 = icmp ne i32 %162, 0
  %164 = add i32 %161, -11
  %165 = icmp ult i32 %164, -9
  %166 = or i1 %165, %163
  br i1 %166, label %167, label %170

167:                                              ; preds = %142
  %168 = getelementptr inbounds %struct.uniperif, ptr %9, i32 0, i32 2
  %169 = load ptr, ptr %168, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %169, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.uni_player_prepare_pcm) #8
  br label %402

170:                                              ; preds = %142
  %171 = load ptr, ptr %47, align 4
  %172 = getelementptr i8, ptr %171, i32 72
  %173 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %172) #7, !srcloc !8
  %174 = and i32 %173, -3585
  %175 = load i32, ptr %69, align 8
  %176 = shl i32 %175, 8
  %177 = and i32 %176, 3584
  %178 = or i32 %177, %174
  %179 = load ptr, ptr %47, align 4
  %180 = getelementptr i8, ptr %179, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %180, i32 %178) #7, !srcloc !9
  %181 = load ptr, ptr %47, align 4
  %182 = getelementptr i8, ptr %181, i32 64
  %183 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %182) #7, !srcloc !8
  %184 = and i32 %183, -17
  %185 = load ptr, ptr %47, align 4
  %186 = getelementptr i8, ptr %185, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %186, i32 %184) #7, !srcloc !9
  %187 = load ptr, ptr %47, align 4
  %188 = getelementptr i8, ptr %187, i32 72
  %189 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %188) #7, !srcloc !8
  %190 = or i32 %189, 256
  %191 = load ptr, ptr %47, align 4
  %192 = getelementptr i8, ptr %191, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %192, i32 %190) #7, !srcloc !9
  %193 = load ptr, ptr %47, align 4
  %194 = getelementptr i8, ptr %193, i32 68
  %195 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %194) #7, !srcloc !8
  %196 = and i32 %195, -131073
  %197 = load ptr, ptr %47, align 4
  %198 = getelementptr i8, ptr %197, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %198, i32 %196) #7, !srcloc !9
  br label %292

199:                                              ; preds = %46
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) @__const.uni_player_prepare_tdm.word_pos, i32 16, i1 false) #7
  %200 = getelementptr inbounds %struct.uniperif, ptr %9, i32 0, i32 23, i32 1
  %201 = load i32, ptr %200, align 4
  %202 = getelementptr inbounds %struct.uniperif, ptr %9, i32 0, i32 23, i32 2
  %203 = load i32, ptr %202, align 4
  %204 = mul i32 %203, %201
  %205 = sdiv i32 %204, 8
  %206 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 15
  %207 = load i32, ptr %206, align 8
  %208 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 12
  %209 = load i32, ptr %208, align 4
  %210 = tail call i32 @snd_pcm_format_width(i32 noundef %209) #7
  %211 = load ptr, ptr %47, align 4
  %212 = getelementptr i8, ptr %211, i32 64
  %213 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %212) #7, !srcloc !8
  %214 = and i32 %213, -33
  %215 = load ptr, ptr %47, align 4
  %216 = getelementptr i8, ptr %215, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %216, i32 %214) #7, !srcloc !9
  %217 = load ptr, ptr %47, align 4
  %218 = getelementptr i8, ptr %217, i32 72
  %219 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %218) #7, !srcloc !8
  %220 = and i32 %219, -15
  %221 = or i32 %220, 10
  %222 = load ptr, ptr %47, align 4
  %223 = getelementptr i8, ptr %222, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %223, i32 %221) #7, !srcloc !9
  %224 = load ptr, ptr %47, align 4
  %225 = getelementptr i8, ptr %224, i32 72
  %226 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %225) #7, !srcloc !8
  %227 = and i32 %226, -3585
  %228 = shl i32 %207, 3
  %229 = mul i32 %228, %210
  %230 = and i32 %229, 3584
  %231 = or i32 %227, %230
  %232 = load ptr, ptr %47, align 4
  %233 = getelementptr i8, ptr %232, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %233, i32 %231) #7, !srcloc !9
  %234 = load ptr, ptr %47, align 4
  %235 = getelementptr i8, ptr %234, i32 72
  %236 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %235) #7, !srcloc !8
  %237 = or i32 %236, 256
  %238 = load ptr, ptr %47, align 4
  %239 = getelementptr i8, ptr %238, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %239, i32 %237) #7, !srcloc !9
  %240 = load ptr, ptr %47, align 4
  %241 = getelementptr i8, ptr %240, i32 72
  %242 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %241) #7, !srcloc !8
  %243 = and i32 %242, -129
  %244 = load ptr, ptr %47, align 4
  %245 = getelementptr i8, ptr %244, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %245, i32 %243) #7, !srcloc !9
  %246 = load ptr, ptr %47, align 4
  %247 = getelementptr i8, ptr %246, i32 280
  %248 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %247) #7, !srcloc !8
  %249 = or i32 %248, 1
  %250 = load ptr, ptr %47, align 4
  %251 = getelementptr i8, ptr %250, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %251, i32 %249) #7, !srcloc !9
  %252 = load ptr, ptr %47, align 4
  %253 = getelementptr i8, ptr %252, i32 288
  %254 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %253) #7, !srcloc !8
  %255 = and i32 %254, -256
  %256 = and i32 %205, 255
  %257 = or i32 %255, %256
  %258 = load ptr, ptr %47, align 4
  %259 = getelementptr i8, ptr %258, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %259, i32 %257) #7, !srcloc !9
  %260 = call i32 @sti_uniperiph_get_tdm_word_pos(ptr noundef %9, ptr noundef nonnull %3) #7
  %261 = load i32, ptr %3, align 4
  %262 = load ptr, ptr %47, align 4
  %263 = getelementptr i8, ptr %262, i32 316
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %263, i32 %261) #7, !srcloc !9
  %264 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 1
  %265 = load i32, ptr %264, align 4
  %266 = load ptr, ptr %47, align 4
  %267 = getelementptr i8, ptr %266, i32 320
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %267, i32 %265) #7, !srcloc !9
  %268 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 2
  %269 = load i32, ptr %268, align 4
  %270 = load ptr, ptr %47, align 4
  %271 = getelementptr i8, ptr %270, i32 324
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %271, i32 %269) #7, !srcloc !9
  %272 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 3
  %273 = load i32, ptr %272, align 4
  %274 = load ptr, ptr %47, align 4
  %275 = getelementptr i8, ptr %274, i32 328
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %275, i32 %273) #7, !srcloc !9
  %276 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 14
  %277 = load i32, ptr %276, align 4
  %278 = shl nsw i32 %205, 3
  %279 = mul i32 %277, %278
  %280 = getelementptr inbounds %struct.uniperif, ptr %9, i32 0, i32 19
  call void @mutex_lock(ptr noundef %280) #7
  %281 = call fastcc i32 @uni_player_clk_set_rate(ptr noundef %9, i32 noundef %279) #7
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %285

283:                                              ; preds = %199
  %284 = getelementptr inbounds %struct.uniperif, ptr %9, i32 0, i32 14
  store i32 %279, ptr %284, align 4
  br label %285

285:                                              ; preds = %283, %199
  call void @mutex_unlock(ptr noundef %280) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  br label %292

286:                                              ; preds = %46
  %287 = getelementptr inbounds %struct.uniperif, ptr %9, i32 0, i32 2
  %288 = load ptr, ptr %287, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %288, ptr noundef nonnull @.str.9) #8
  br label %402

289:                                              ; preds = %46, %46
  %290 = tail call fastcc i32 @uni_player_prepare_iec958(ptr noundef %9, ptr noundef %11)
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %292, label %402

292:                                              ; preds = %289, %285, %170
  %293 = getelementptr inbounds %struct.uniperif, ptr %9, i32 0, i32 22
  %294 = load i32, ptr %293, align 4
  %295 = lshr i32 %294, 8
  %296 = and i32 %295, 15
  switch i32 %296, label %349 [
    i32 0, label %297
    i32 2, label %310
    i32 3, label %323
    i32 4, label %336
  ]

297:                                              ; preds = %292
  %298 = load ptr, ptr %47, align 4
  %299 = getelementptr i8, ptr %298, i32 72
  %300 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %299) #7, !srcloc !8
  %301 = and i32 %300, -17
  %302 = load ptr, ptr %47, align 4
  %303 = getelementptr i8, ptr %302, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %303, i32 %301) #7, !srcloc !9
  %304 = load ptr, ptr %47, align 4
  %305 = getelementptr i8, ptr %304, i32 72
  %306 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %305) #7, !srcloc !8
  %307 = and i32 %306, -33
  %308 = load ptr, ptr %47, align 4
  %309 = getelementptr i8, ptr %308, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %309, i32 %307) #7, !srcloc !9
  br label %349

310:                                              ; preds = %292
  %311 = load ptr, ptr %47, align 4
  %312 = getelementptr i8, ptr %311, i32 72
  %313 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %312) #7, !srcloc !8
  %314 = or i32 %313, 16
  %315 = load ptr, ptr %47, align 4
  %316 = getelementptr i8, ptr %315, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %316, i32 %314) #7, !srcloc !9
  %317 = load ptr, ptr %47, align 4
  %318 = getelementptr i8, ptr %317, i32 72
  %319 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %318) #7, !srcloc !8
  %320 = and i32 %319, -33
  %321 = load ptr, ptr %47, align 4
  %322 = getelementptr i8, ptr %321, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %322, i32 %320) #7, !srcloc !9
  br label %349

323:                                              ; preds = %292
  %324 = load ptr, ptr %47, align 4
  %325 = getelementptr i8, ptr %324, i32 72
  %326 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %325) #7, !srcloc !8
  %327 = and i32 %326, -17
  %328 = load ptr, ptr %47, align 4
  %329 = getelementptr i8, ptr %328, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %329, i32 %327) #7, !srcloc !9
  %330 = load ptr, ptr %47, align 4
  %331 = getelementptr i8, ptr %330, i32 72
  %332 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %331) #7, !srcloc !8
  %333 = or i32 %332, 32
  %334 = load ptr, ptr %47, align 4
  %335 = getelementptr i8, ptr %334, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %335, i32 %333) #7, !srcloc !9
  br label %349

336:                                              ; preds = %292
  %337 = load ptr, ptr %47, align 4
  %338 = getelementptr i8, ptr %337, i32 72
  %339 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %338) #7, !srcloc !8
  %340 = or i32 %339, 16
  %341 = load ptr, ptr %47, align 4
  %342 = getelementptr i8, ptr %341, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %342, i32 %340) #7, !srcloc !9
  %343 = load ptr, ptr %47, align 4
  %344 = getelementptr i8, ptr %343, i32 72
  %345 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %344) #7, !srcloc !8
  %346 = or i32 %345, 32
  %347 = load ptr, ptr %47, align 4
  %348 = getelementptr i8, ptr %347, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %348, i32 %346) #7, !srcloc !9
  br label %349

349:                                              ; preds = %336, %323, %310, %297, %292
  %350 = load i32, ptr %293, align 4
  %351 = and i32 %350, 15
  switch i32 %351, label %391 [
    i32 1, label %352
    i32 3, label %365
    i32 2, label %378
  ]

352:                                              ; preds = %349
  %353 = load ptr, ptr %47, align 4
  %354 = getelementptr i8, ptr %353, i32 72
  %355 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %354) #7, !srcloc !8
  %356 = and i32 %355, -129
  %357 = load ptr, ptr %47, align 4
  %358 = getelementptr i8, ptr %357, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %358, i32 %356) #7, !srcloc !9
  %359 = load ptr, ptr %47, align 4
  %360 = getelementptr i8, ptr %359, i32 72
  %361 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %360) #7, !srcloc !8
  %362 = and i32 %361, -65
  %363 = load ptr, ptr %47, align 4
  %364 = getelementptr i8, ptr %363, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %364, i32 %362) #7, !srcloc !9
  br label %394

365:                                              ; preds = %349
  %366 = load ptr, ptr %47, align 4
  %367 = getelementptr i8, ptr %366, i32 72
  %368 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %367) #7, !srcloc !8
  %369 = and i32 %368, -129
  %370 = load ptr, ptr %47, align 4
  %371 = getelementptr i8, ptr %370, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %371, i32 %369) #7, !srcloc !9
  %372 = load ptr, ptr %47, align 4
  %373 = getelementptr i8, ptr %372, i32 72
  %374 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %373) #7, !srcloc !8
  %375 = or i32 %374, 64
  %376 = load ptr, ptr %47, align 4
  %377 = getelementptr i8, ptr %376, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %377, i32 %375) #7, !srcloc !9
  br label %394

378:                                              ; preds = %349
  %379 = load ptr, ptr %47, align 4
  %380 = getelementptr i8, ptr %379, i32 72
  %381 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %380) #7, !srcloc !8
  %382 = or i32 %381, 128
  %383 = load ptr, ptr %47, align 4
  %384 = getelementptr i8, ptr %383, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %384, i32 %382) #7, !srcloc !9
  %385 = load ptr, ptr %47, align 4
  %386 = getelementptr i8, ptr %385, i32 72
  %387 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %386) #7, !srcloc !8
  %388 = or i32 %387, 64
  %389 = load ptr, ptr %47, align 4
  %390 = getelementptr i8, ptr %389, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %390, i32 %388) #7, !srcloc !9
  br label %394

391:                                              ; preds = %349
  %392 = getelementptr inbounds %struct.uniperif, ptr %9, i32 0, i32 2
  %393 = load ptr, ptr %392, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %393, ptr noundef nonnull @.str.10) #8
  br label %402

394:                                              ; preds = %378, %365, %352
  %395 = load ptr, ptr %47, align 4
  %396 = getelementptr i8, ptr %395, i32 72
  %397 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %396) #7, !srcloc !8
  %398 = and i32 %397, 4095
  %399 = load ptr, ptr %47, align 4
  %400 = getelementptr i8, ptr %399, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %400, i32 %398) #7, !srcloc !9
  %401 = call i32 @sti_uniperiph_reset(ptr noundef %9) #7
  br label %402

402:                                              ; preds = %394, %391, %289, %286, %167, %139, %119, %88, %80, %43, %15
  %403 = phi i32 [ -22, %15 ], [ -22, %43 ], [ -22, %286 ], [ -22, %391 ], [ %401, %394 ], [ %290, %289 ], [ -22, %80 ], [ -22, %88 ], [ -22, %119 ], [ -22, %139 ], [ -22, %167 ]
  ret i32 %403
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uni_player_trigger(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.snd_soc_dai, ptr %2, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.sti_uniperiph_data, ptr %7, i32 0, i32 2, i32 1
  %9 = load ptr, ptr %8, align 4
  switch i32 %1, label %100 [
    i32 1, label %10
    i32 0, label %96
    i32 6, label %98
  ]

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.uniperif, ptr %9, i32 0, i32 16
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.uniperif, ptr %9, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.uni_player_start) #8
  br label %100

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.uniperif, ptr %9, i32 0, i32 13
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 @clk_prepare(ptr noundef %19) #7
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = tail call i32 @clk_enable(ptr noundef %19) #7
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  tail call void @clk_unprepare(ptr noundef %19) #7
  br label %26

26:                                               ; preds = %25, %17
  %27 = phi i32 [ %23, %25 ], [ %20, %17 ]
  %28 = getelementptr inbounds %struct.uniperif, ptr %9, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.uni_player_start) #8
  br label %100

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.uniperif, ptr %9, i32 0, i32 10
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %32, i32 12
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #7, !srcloc !8
  %35 = load ptr, ptr %31, align 4
  %36 = getelementptr i8, ptr %35, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #7, !srcloc !9
  %37 = load ptr, ptr %31, align 4
  %38 = getelementptr i8, ptr %37, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 512) #7, !srcloc !9
  %39 = getelementptr inbounds %struct.uniperif, ptr %9, i32 0, i32 4
  %40 = load i32, ptr %39, align 4
  %41 = icmp slt i32 %40, 5
  %42 = select i1 %41, i32 1, i32 256
  %43 = load ptr, ptr %31, align 4
  %44 = getelementptr i8, ptr %43, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %42) #7, !srcloc !9
  %45 = getelementptr inbounds %struct.uniperif, ptr %9, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %30
  %49 = load i32, ptr %39, align 4
  %50 = icmp slt i32 %49, 5
  %51 = select i1 %50, i32 0, i32 4096
  %52 = load ptr, ptr %31, align 4
  %53 = getelementptr i8, ptr %52, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %51) #7, !srcloc !9
  %54 = load i32, ptr %39, align 4
  %55 = icmp slt i32 %54, 5
  %56 = select i1 %55, i32 0, i32 8192
  %57 = load ptr, ptr %31, align 4
  %58 = getelementptr i8, ptr %57, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %56) #7, !srcloc !9
  br label %59

59:                                               ; preds = %48, %30
  %60 = tail call i32 @sti_uniperiph_reset(ptr noundef %9) #7
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load ptr, ptr %18, align 4
  tail call void @clk_disable(ptr noundef %63) #7
  tail call void @clk_unprepare(ptr noundef %63) #7
  br label %100

64:                                               ; preds = %59
  %65 = load ptr, ptr %31, align 4
  %66 = getelementptr i8, ptr %65, i32 68
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #7, !srcloc !8
  %68 = and i32 %67, -8
  %69 = or i32 %68, 3
  %70 = load ptr, ptr %31, align 4
  %71 = getelementptr i8, ptr %70, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %69) #7, !srcloc !9
  %72 = load i32, ptr %39, align 4
  %73 = icmp slt i32 %72, 5
  br i1 %73, label %74, label %92

74:                                               ; preds = %64
  %75 = load i32, ptr %9, align 4
  switch i32 %75, label %85 [
    i32 1, label %76
    i32 4, label %76
  ]

76:                                               ; preds = %74, %74
  %77 = load ptr, ptr %31, align 4
  %78 = getelementptr i8, ptr %77, i32 68
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #7, !srcloc !8
  %80 = or i32 %79, 131072
  %81 = load ptr, ptr %31, align 4
  %82 = getelementptr i8, ptr %81, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 %80) #7, !srcloc !9
  %83 = load i32, ptr %39, align 4
  %84 = icmp slt i32 %83, 5
  br i1 %84, label %85, label %92

85:                                               ; preds = %76, %74
  %86 = load ptr, ptr %31, align 4
  %87 = getelementptr i8, ptr %86, i32 64
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #7, !srcloc !8
  %89 = or i32 %88, 65536
  %90 = load ptr, ptr %31, align 4
  %91 = getelementptr i8, ptr %90, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %89) #7, !srcloc !9
  br label %95

92:                                               ; preds = %76, %64
  %93 = load ptr, ptr %31, align 4
  %94 = getelementptr i8, ptr %93, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 2) #7, !srcloc !9
  br label %95

95:                                               ; preds = %92, %85
  store i32 1, ptr %11, align 4
  br label %100

96:                                               ; preds = %3
  %97 = tail call fastcc i32 @uni_player_stop(ptr noundef %9)
  br label %100

98:                                               ; preds = %3
  %99 = tail call i32 @uni_player_resume(ptr noundef %9)
  br label %100

100:                                              ; preds = %98, %96, %95, %62, %26, %14, %3
  %101 = phi i32 [ %99, %98 ], [ %97, %96 ], [ -22, %3 ], [ -22, %14 ], [ %27, %26 ], [ %60, %62 ], [ 0, %95 ]
  ret i32 %101
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @uni_player_clk_set_rate(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.uniperif, ptr %0, i32 0, i32 15
  %4 = load i32, ptr %3, align 4
  %5 = icmp slt i32 %4, 0
  %6 = tail call i32 @llvm.abs.i32(i32 %4, i1 false)
  %7 = zext i32 %1 to i64
  %8 = sext i32 %6 to i64
  %9 = mul nsw i64 %8, %7
  %10 = add nsw i64 %9, 500000
  %11 = tail call i64 @div64_u64(i64 noundef %10, i64 noundef 1000000) #7
  %12 = trunc i64 %11 to i32
  %13 = sub i32 0, %12
  %14 = select i1 %5, i32 %13, i32 %12
  %15 = add i32 %14, %1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %39, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.uniperif, ptr %0, i32 0, i32 13
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 @clk_set_rate(ptr noundef %19, i32 noundef %15) #7
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %39, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr %18, align 4
  %24 = tail call i32 @clk_get_rate(ptr noundef %23) #7
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %22
  %27 = sub i32 %24, %1
  %28 = tail call i32 @llvm.abs.i32(i32 %27, i1 false)
  %29 = sext i32 %28 to i64
  %30 = mul nsw i64 %29, 1000000
  %31 = lshr i32 %1, 1
  %32 = zext i32 %31 to i64
  %33 = add nsw i64 %30, %32
  %34 = tail call i64 @div64_u64(i64 noundef %33, i64 noundef %7) #7
  %35 = trunc i64 %34 to i32
  %36 = sub i32 0, %35
  %37 = icmp slt i32 %27, 0
  %38 = select i1 %37, i32 %36, i32 %35
  store i32 %38, ptr %3, align 4
  br label %39

39:                                               ; preds = %26, %22, %17, %2
  %40 = phi i32 [ 0, %26 ], [ -22, %2 ], [ %20, %17 ], [ -22, %22 ]
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_rule_add(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_uniperiph_fix_tdm_chan(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_uniperiph_fix_tdm_format(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @uni_player_stop(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.uniperif, ptr %0, i32 0, i32 16
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.uniperif, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.uni_player_stop) #8
  br label %26

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.uniperif, ptr %0, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 68
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #7, !srcloc !8
  %13 = and i32 %12, -8
  %14 = load ptr, ptr %9, align 4
  %15 = getelementptr i8, ptr %14, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #7, !srcloc !9
  %16 = tail call i32 @sti_uniperiph_reset(ptr noundef %0) #7
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %8
  %19 = load ptr, ptr %9, align 4
  %20 = getelementptr i8, ptr %19, i32 24
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #7, !srcloc !8
  %22 = load ptr, ptr %9, align 4
  %23 = getelementptr i8, ptr %22, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #7, !srcloc !9
  %24 = getelementptr inbounds %struct.uniperif, ptr %0, i32 0, i32 13
  %25 = load ptr, ptr %24, align 4
  tail call void @clk_disable(ptr noundef %25) #7
  tail call void @clk_unprepare(ptr noundef %25) #7
  store i32 0, ptr %2, align 4
  br label %26

26:                                               ; preds = %18, %8, %5
  %27 = phi i32 [ -22, %5 ], [ 0, %18 ], [ %16, %8 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_uniperiph_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @uni_player_prepare_iec958(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.uniperif, ptr %0, i32 0, i32 14
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 14
  %6 = load i32, ptr %5, align 4
  %7 = udiv i32 %4, %6
  %8 = and i32 %7, 127
  %9 = icmp ne i32 %8, 0
  %10 = icmp slt i32 %7, 1
  %11 = or i1 %10, %9
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.uniperif, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.uni_player_prepare_iec958, i32 noundef %7) #8
  br label %192

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 12
  %17 = load i32, ptr %16, align 4
  switch i32 %17, label %59 [
    i32 2, label %18
    i32 10, label %38
  ]

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.uniperif, ptr %0, i32 0, i32 10
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 64
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #7, !srcloc !8
  %23 = or i32 %22, 32
  %24 = load ptr, ptr %19, align 4
  %25 = getelementptr i8, ptr %24, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #7, !srcloc !9
  %26 = load ptr, ptr %19, align 4
  %27 = getelementptr i8, ptr %26, i32 72
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #7, !srcloc !8
  %29 = and i32 %28, -2
  %30 = load ptr, ptr %19, align 4
  %31 = getelementptr i8, ptr %30, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #7, !srcloc !9
  %32 = load ptr, ptr %19, align 4
  %33 = getelementptr i8, ptr %32, i32 72
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #7, !srcloc !8
  %35 = and i32 %34, -15
  %36 = load ptr, ptr %19, align 4
  %37 = getelementptr i8, ptr %36, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #7, !srcloc !9
  br label %62

38:                                               ; preds = %15
  %39 = getelementptr inbounds %struct.uniperif, ptr %0, i32 0, i32 10
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr i8, ptr %40, i32 64
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #7, !srcloc !8
  %43 = and i32 %42, -33
  %44 = load ptr, ptr %39, align 4
  %45 = getelementptr i8, ptr %44, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #7, !srcloc !9
  %46 = load ptr, ptr %39, align 4
  %47 = getelementptr i8, ptr %46, i32 72
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #7, !srcloc !8
  %49 = and i32 %48, -2
  %50 = load ptr, ptr %39, align 4
  %51 = getelementptr i8, ptr %50, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #7, !srcloc !9
  %52 = load ptr, ptr %39, align 4
  %53 = getelementptr i8, ptr %52, i32 72
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #7, !srcloc !8
  %55 = and i32 %54, -15
  %56 = or i32 %55, 6
  %57 = load ptr, ptr %39, align 4
  %58 = getelementptr i8, ptr %57, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %56) #7, !srcloc !9
  br label %62

59:                                               ; preds = %15
  %60 = getelementptr inbounds %struct.uniperif, ptr %0, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.10) #8
  br label %192

62:                                               ; preds = %38, %18
  %63 = getelementptr inbounds %struct.uniperif, ptr %0, i32 0, i32 10
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr i8, ptr %64, i32 64
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #7, !srcloc !8
  %67 = and i32 %66, -2
  %68 = load ptr, ptr %63, align 4
  %69 = getelementptr i8, ptr %68, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %67) #7, !srcloc !9
  %70 = load ptr, ptr %63, align 4
  %71 = getelementptr i8, ptr %70, i32 64
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #7, !srcloc !8
  %73 = or i32 %72, 2
  %74 = load ptr, ptr %63, align 4
  %75 = getelementptr i8, ptr %74, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %73) #7, !srcloc !9
  %76 = load ptr, ptr %63, align 4
  %77 = getelementptr i8, ptr %76, i32 64
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #7, !srcloc !8
  %79 = or i32 %78, 4
  %80 = load ptr, ptr %63, align 4
  %81 = getelementptr i8, ptr %80, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %79) #7, !srcloc !9
  %82 = load ptr, ptr %63, align 4
  %83 = getelementptr i8, ptr %82, i32 64
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #7, !srcloc !8
  %85 = or i32 %84, 8
  %86 = load ptr, ptr %63, align 4
  %87 = getelementptr i8, ptr %86, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %85) #7, !srcloc !9
  %88 = load ptr, ptr %63, align 4
  %89 = getelementptr i8, ptr %88, i32 64
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #7, !srcloc !8
  %91 = and i32 %90, -1048577
  %92 = load ptr, ptr %63, align 4
  %93 = getelementptr i8, ptr %92, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 %91) #7, !srcloc !9
  %94 = load ptr, ptr %63, align 4
  %95 = getelementptr i8, ptr %94, i32 68
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %95) #7, !srcloc !8
  %97 = getelementptr inbounds %struct.uniperif, ptr %0, i32 0, i32 4
  %98 = or i32 %96, 16384
  %99 = load ptr, ptr %63, align 4
  %100 = getelementptr i8, ptr %99, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 %98) #7, !srcloc !9
  %101 = getelementptr inbounds %struct.uniperif, ptr %0, i32 0, i32 19
  tail call void @mutex_lock(ptr noundef %101) #7
  tail call fastcc void @uni_player_set_channel_status(ptr noundef %0, ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %101) #7
  %102 = load ptr, ptr %63, align 4
  %103 = getelementptr i8, ptr %102, i32 144
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %103) #7, !srcloc !8
  %105 = and i32 %104, -4
  %106 = load ptr, ptr %63, align 4
  %107 = getelementptr i8, ptr %106, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 %105) #7, !srcloc !9
  %108 = load ptr, ptr %63, align 4
  %109 = getelementptr i8, ptr %108, i32 64
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %109) #7, !srcloc !8
  %111 = and i32 %110, -17
  %112 = load ptr, ptr %63, align 4
  %113 = getelementptr i8, ptr %112, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %113, i32 %111) #7, !srcloc !9
  %114 = load ptr, ptr %63, align 4
  %115 = getelementptr i8, ptr %114, i32 64
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %115) #7, !srcloc !8
  %117 = and i32 %116, -65
  %118 = load ptr, ptr %63, align 4
  %119 = getelementptr i8, ptr %118, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %119, i32 %117) #7, !srcloc !9
  %120 = load ptr, ptr %63, align 4
  %121 = getelementptr i8, ptr %120, i32 64
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %121) #7, !srcloc !8
  %123 = or i32 %122, 524288
  %124 = load ptr, ptr %63, align 4
  %125 = getelementptr i8, ptr %124, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %125, i32 %123) #7, !srcloc !9
  %126 = load ptr, ptr %63, align 4
  %127 = getelementptr i8, ptr %126, i32 72
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %127) #7, !srcloc !8
  %129 = or i32 %128, 256
  %130 = load ptr, ptr %63, align 4
  %131 = getelementptr i8, ptr %130, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 %129) #7, !srcloc !9
  %132 = getelementptr inbounds %struct.uniperif, ptr %0, i32 0, i32 18
  %133 = load i32, ptr %132, align 4
  %134 = icmp eq i32 %133, 1
  %135 = load ptr, ptr %63, align 4
  %136 = getelementptr i8, ptr %135, i32 68
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %136) #7
  br i1 %134, label %138, label %142

138:                                              ; preds = %62
  %139 = or i32 %137, 8
  %140 = load ptr, ptr %63, align 4
  %141 = getelementptr i8, ptr %140, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %141, i32 %139) #7, !srcloc !9
  br label %146

142:                                              ; preds = %62
  %143 = and i32 %137, -9
  %144 = load ptr, ptr %63, align 4
  %145 = getelementptr i8, ptr %144, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %145, i32 %143) #7, !srcloc !9
  br label %146

146:                                              ; preds = %142, %138
  %147 = load ptr, ptr %63, align 4
  %148 = getelementptr i8, ptr %147, i32 72
  %149 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %148) #7, !srcloc !8
  %150 = and i32 %149, -3585
  %151 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 15
  %152 = load i32, ptr %151, align 8
  %153 = shl i32 %152, 8
  %154 = and i32 %153, 3584
  %155 = or i32 %154, %150
  %156 = load ptr, ptr %63, align 4
  %157 = getelementptr i8, ptr %156, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %157, i32 %155) #7, !srcloc !9
  %158 = load ptr, ptr %63, align 4
  %159 = getelementptr i8, ptr %158, i32 68
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %159) #7, !srcloc !8
  %161 = and i32 %160, -17
  %162 = load ptr, ptr %63, align 4
  %163 = getelementptr i8, ptr %162, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %163, i32 %161) #7, !srcloc !9
  %164 = load ptr, ptr %63, align 4
  %165 = getelementptr i8, ptr %164, i32 68
  %166 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %165) #7, !srcloc !8
  %167 = and i32 %166, -8161
  %168 = lshr i32 %7, 2
  %169 = and i32 %168, 8160
  %170 = or i32 %167, %169
  %171 = load ptr, ptr %63, align 4
  %172 = getelementptr i8, ptr %171, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %172, i32 %170) #7, !srcloc !9
  %173 = load ptr, ptr %63, align 4
  %174 = getelementptr i8, ptr %173, i32 68
  %175 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %174) #7, !srcloc !8
  %176 = and i32 %175, -65537
  %177 = load ptr, ptr %63, align 4
  %178 = getelementptr i8, ptr %177, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %178, i32 %176) #7, !srcloc !9
  %179 = load i32, ptr %97, align 4
  %180 = icmp slt i32 %179, 5
  %181 = load ptr, ptr %63, align 4
  %182 = getelementptr i8, ptr %181, i32 68
  %183 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %182) #7
  br i1 %180, label %184, label %188

184:                                              ; preds = %146
  %185 = and i32 %183, -131073
  %186 = load ptr, ptr %63, align 4
  %187 = getelementptr i8, ptr %186, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %187, i32 %185) #7, !srcloc !9
  br label %192

188:                                              ; preds = %146
  %189 = or i32 %183, 131072
  %190 = load ptr, ptr %63, align 4
  %191 = getelementptr i8, ptr %190, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %191, i32 %189) #7, !srcloc !9
  br label %192

192:                                              ; preds = %188, %184, %59, %12
  %193 = phi i32 [ -22, %12 ], [ -22, %59 ], [ 0, %188 ], [ 0, %184 ]
  ret i32 %193
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @uni_player_set_channel_status(ptr nocapture noundef %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 14
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %15 [
    i32 22050, label %16
    i32 44100, label %7
    i32 88200, label %8
    i32 176400, label %9
    i32 24000, label %10
    i32 48000, label %11
    i32 96000, label %12
    i32 192000, label %13
    i32 32000, label %14
  ]

7:                                                ; preds = %4
  br label %16

8:                                                ; preds = %4
  br label %16

9:                                                ; preds = %4
  br label %16

10:                                               ; preds = %4
  br label %16

11:                                               ; preds = %4
  br label %16

12:                                               ; preds = %4
  br label %16

13:                                               ; preds = %4
  br label %16

14:                                               ; preds = %4
  br label %16

15:                                               ; preds = %4
  br label %16

16:                                               ; preds = %15, %14, %13, %12, %11, %10, %9, %8, %7, %4
  %17 = phi i8 [ 0, %7 ], [ 8, %8 ], [ 12, %9 ], [ 6, %10 ], [ 2, %11 ], [ 10, %12 ], [ 14, %13 ], [ 3, %14 ], [ 1, %15 ], [ 4, %4 ]
  %18 = getelementptr %struct.uniperif, ptr %0, i32 0, i32 18, i32 1, i32 0, i32 3
  store i8 %17, ptr %18, align 1
  br label %19

19:                                               ; preds = %16, %2
  %20 = getelementptr inbounds %struct.uniperif, ptr %0, i32 0, i32 18
  %21 = getelementptr inbounds %struct.uniperif, ptr %0, i32 0, i32 18, i32 1
  %22 = load i8, ptr %21, align 4
  %23 = and i8 %22, 2
  %24 = icmp eq i8 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, ptr %20, align 4
  %27 = getelementptr inbounds %struct.uniperif, ptr %0, i32 0, i32 10
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 144
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #7
  br i1 %24, label %31, label %35

31:                                               ; preds = %19
  %32 = and i32 %30, -4
  %33 = load ptr, ptr %27, align 4
  %34 = getelementptr i8, ptr %33, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #7, !srcloc !9
  br label %39

35:                                               ; preds = %19
  %36 = or i32 %30, 3
  %37 = load ptr, ptr %27, align 4
  %38 = getelementptr i8, ptr %37, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #7, !srcloc !9
  br label %39

39:                                               ; preds = %35, %31
  %40 = getelementptr inbounds %struct.uniperif, ptr %0, i32 0, i32 10
  %41 = load i8, ptr %21, align 1
  %42 = and i8 %41, 15
  %43 = zext i8 %42 to i32
  %44 = getelementptr %struct.uniperif, ptr %0, i32 0, i32 18, i32 1, i32 0, i32 1
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i32
  %47 = shl nuw nsw i32 %46, 8
  %48 = or i32 %47, %43
  %49 = getelementptr %struct.uniperif, ptr %0, i32 0, i32 18, i32 1, i32 0, i32 2
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i32
  %52 = shl nuw nsw i32 %51, 16
  %53 = or i32 %48, %52
  %54 = getelementptr %struct.uniperif, ptr %0, i32 0, i32 18, i32 1, i32 0, i32 3
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i32
  %57 = shl nuw i32 %56, 24
  %58 = or i32 %53, %57
  %59 = load ptr, ptr %40, align 4
  %60 = getelementptr i8, ptr %59, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %58) #7, !srcloc !9
  %61 = getelementptr %struct.uniperif, ptr %0, i32 0, i32 18, i32 1, i32 0, i32 4
  %62 = load i8, ptr %61, align 1
  %63 = and i8 %62, 15
  %64 = zext i8 %63 to i32
  %65 = getelementptr %struct.uniperif, ptr %0, i32 0, i32 18, i32 1, i32 0, i32 5
  %66 = load i8, ptr %65, align 1
  %67 = zext i8 %66 to i32
  %68 = shl nuw nsw i32 %67, 8
  %69 = or i32 %68, %64
  %70 = getelementptr %struct.uniperif, ptr %0, i32 0, i32 18, i32 1, i32 0, i32 6
  %71 = load i8, ptr %70, align 1
  %72 = zext i8 %71 to i32
  %73 = shl nuw nsw i32 %72, 16
  %74 = or i32 %69, %73
  %75 = getelementptr %struct.uniperif, ptr %0, i32 0, i32 18, i32 1, i32 0, i32 7
  %76 = load i8, ptr %75, align 1
  %77 = zext i8 %76 to i32
  %78 = shl nuw i32 %77, 24
  %79 = or i32 %74, %78
  %80 = load ptr, ptr %40, align 4
  %81 = getelementptr i8, ptr %80, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %79) #7, !srcloc !9
  %82 = getelementptr %struct.uniperif, ptr %0, i32 0, i32 18, i32 1, i32 0, i32 8
  %83 = load i8, ptr %82, align 1
  %84 = and i8 %83, 15
  %85 = zext i8 %84 to i32
  %86 = getelementptr %struct.uniperif, ptr %0, i32 0, i32 18, i32 1, i32 0, i32 9
  %87 = load i8, ptr %86, align 1
  %88 = zext i8 %87 to i32
  %89 = shl nuw nsw i32 %88, 8
  %90 = or i32 %89, %85
  %91 = getelementptr %struct.uniperif, ptr %0, i32 0, i32 18, i32 1, i32 0, i32 10
  %92 = load i8, ptr %91, align 1
  %93 = zext i8 %92 to i32
  %94 = shl nuw nsw i32 %93, 16
  %95 = or i32 %90, %94
  %96 = getelementptr %struct.uniperif, ptr %0, i32 0, i32 18, i32 1, i32 0, i32 11
  %97 = load i8, ptr %96, align 1
  %98 = zext i8 %97 to i32
  %99 = shl nuw i32 %98, 24
  %100 = or i32 %95, %99
  %101 = load ptr, ptr %40, align 4
  %102 = getelementptr i8, ptr %101, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 %100) #7, !srcloc !9
  %103 = getelementptr %struct.uniperif, ptr %0, i32 0, i32 18, i32 1, i32 0, i32 12
  %104 = load i8, ptr %103, align 1
  %105 = and i8 %104, 15
  %106 = zext i8 %105 to i32
  %107 = getelementptr %struct.uniperif, ptr %0, i32 0, i32 18, i32 1, i32 0, i32 13
  %108 = load i8, ptr %107, align 1
  %109 = zext i8 %108 to i32
  %110 = shl nuw nsw i32 %109, 8
  %111 = or i32 %110, %106
  %112 = getelementptr %struct.uniperif, ptr %0, i32 0, i32 18, i32 1, i32 0, i32 14
  %113 = load i8, ptr %112, align 1
  %114 = zext i8 %113 to i32
  %115 = shl nuw nsw i32 %114, 16
  %116 = or i32 %111, %115
  %117 = getelementptr %struct.uniperif, ptr %0, i32 0, i32 18, i32 1, i32 0, i32 15
  %118 = load i8, ptr %117, align 1
  %119 = zext i8 %118 to i32
  %120 = shl nuw i32 %119, 24
  %121 = or i32 %116, %120
  %122 = load ptr, ptr %40, align 4
  %123 = getelementptr i8, ptr %122, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %123, i32 %121) #7, !srcloc !9
  %124 = getelementptr %struct.uniperif, ptr %0, i32 0, i32 18, i32 1, i32 0, i32 16
  %125 = load i8, ptr %124, align 1
  %126 = and i8 %125, 15
  %127 = zext i8 %126 to i32
  %128 = getelementptr %struct.uniperif, ptr %0, i32 0, i32 18, i32 1, i32 0, i32 17
  %129 = load i8, ptr %128, align 1
  %130 = zext i8 %129 to i32
  %131 = shl nuw nsw i32 %130, 8
  %132 = or i32 %131, %127
  %133 = getelementptr %struct.uniperif, ptr %0, i32 0, i32 18, i32 1, i32 0, i32 18
  %134 = load i8, ptr %133, align 1
  %135 = zext i8 %134 to i32
  %136 = shl nuw nsw i32 %135, 16
  %137 = or i32 %132, %136
  %138 = getelementptr %struct.uniperif, ptr %0, i32 0, i32 18, i32 1, i32 0, i32 19
  %139 = load i8, ptr %138, align 1
  %140 = zext i8 %139 to i32
  %141 = shl nuw i32 %140, 24
  %142 = or i32 %137, %141
  %143 = load ptr, ptr %40, align 4
  %144 = getelementptr i8, ptr %143, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %144, i32 %142) #7, !srcloc !9
  %145 = getelementptr %struct.uniperif, ptr %0, i32 0, i32 18, i32 1, i32 0, i32 20
  %146 = load i8, ptr %145, align 1
  %147 = and i8 %146, 15
  %148 = zext i8 %147 to i32
  %149 = getelementptr %struct.uniperif, ptr %0, i32 0, i32 18, i32 1, i32 0, i32 21
  %150 = load i8, ptr %149, align 1
  %151 = zext i8 %150 to i32
  %152 = shl nuw nsw i32 %151, 8
  %153 = or i32 %152, %148
  %154 = getelementptr %struct.uniperif, ptr %0, i32 0, i32 18, i32 1, i32 0, i32 22
  %155 = load i8, ptr %154, align 1
  %156 = zext i8 %155 to i32
  %157 = shl nuw nsw i32 %156, 16
  %158 = or i32 %153, %157
  %159 = getelementptr %struct.uniperif, ptr %0, i32 0, i32 18, i32 1, i32 0, i32 23
  %160 = load i8, ptr %159, align 1
  %161 = zext i8 %160 to i32
  %162 = shl nuw i32 %161, 24
  %163 = or i32 %158, %162
  %164 = load ptr, ptr %40, align 4
  %165 = getelementptr i8, ptr %164, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %165, i32 %163) #7, !srcloc !9
  %166 = getelementptr inbounds %struct.uniperif, ptr %0, i32 0, i32 4
  %167 = load i32, ptr %166, align 4
  %168 = icmp slt i32 %167, 5
  %169 = load ptr, ptr %40, align 4
  br i1 %168, label %170, label %176

170:                                              ; preds = %39
  %171 = getelementptr i8, ptr %169, i32 64
  %172 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %171) #7, !srcloc !8
  %173 = or i32 %172, 65536
  %174 = load ptr, ptr %40, align 4
  %175 = getelementptr i8, ptr %174, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %175, i32 %173) #7, !srcloc !9
  br label %178

176:                                              ; preds = %39
  %177 = getelementptr i8, ptr %169, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %177, i32 2) #7, !srcloc !9
  br label %178

178:                                              ; preds = %176, %170
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_uniperiph_get_tdm_word_pos(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regmap_field_alloc(ptr noundef, [5 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_stream_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_stop_xrun(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_stream_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @uni_player_ctl_iec958_info(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 1
  store i32 5, ptr %3, align 8
  %4 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 3
  store i32 1, ptr %4, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uni_player_ctl_iec958_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_dai, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.sti_uniperiph_data, ptr %8, i32 0, i32 2, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.uniperif, ptr %10, i32 0, i32 18, i32 1
  %12 = getelementptr inbounds %struct.uniperif, ptr %10, i32 0, i32 19
  tail call void @mutex_lock(ptr noundef %12) #7
  %13 = load i8, ptr %11, align 1
  %14 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i8 %13, ptr %14, align 8
  %15 = getelementptr %struct.uniperif, ptr %10, i32 0, i32 18, i32 1, i32 0, i32 1
  %16 = load i8, ptr %15, align 1
  %17 = getelementptr [24 x i8], ptr %14, i32 0, i32 1
  store i8 %16, ptr %17, align 1
  %18 = getelementptr %struct.uniperif, ptr %10, i32 0, i32 18, i32 1, i32 0, i32 2
  %19 = load i8, ptr %18, align 1
  %20 = getelementptr [24 x i8], ptr %14, i32 0, i32 2
  store i8 %19, ptr %20, align 2
  %21 = getelementptr %struct.uniperif, ptr %10, i32 0, i32 18, i32 1, i32 0, i32 3
  %22 = load i8, ptr %21, align 1
  %23 = getelementptr [24 x i8], ptr %14, i32 0, i32 3
  store i8 %22, ptr %23, align 1
  tail call void @mutex_unlock(ptr noundef %12) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uni_player_ctl_iec958_put(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_dai, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.sti_uniperiph_data, ptr %8, i32 0, i32 2, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.uniperif, ptr %10, i32 0, i32 18, i32 1
  %12 = getelementptr inbounds %struct.uniperif, ptr %10, i32 0, i32 19
  tail call void @mutex_lock(ptr noundef %12) #7
  %13 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %14 = load i8, ptr %13, align 8
  store i8 %14, ptr %11, align 1
  %15 = getelementptr [24 x i8], ptr %13, i32 0, i32 1
  %16 = load i8, ptr %15, align 1
  %17 = getelementptr %struct.uniperif, ptr %10, i32 0, i32 18, i32 1, i32 0, i32 1
  store i8 %16, ptr %17, align 1
  %18 = getelementptr [24 x i8], ptr %13, i32 0, i32 2
  %19 = load i8, ptr %18, align 2
  %20 = getelementptr %struct.uniperif, ptr %10, i32 0, i32 18, i32 1, i32 0, i32 2
  store i8 %19, ptr %20, align 1
  %21 = getelementptr [24 x i8], ptr %13, i32 0, i32 3
  %22 = load i8, ptr %21, align 1
  %23 = getelementptr %struct.uniperif, ptr %10, i32 0, i32 18, i32 1, i32 0, i32 3
  store i8 %22, ptr %23, align 1
  %24 = getelementptr inbounds %struct.uniperif, ptr %10, i32 0, i32 7
  %25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %24) #7
  %26 = getelementptr inbounds %struct.uniperif, ptr %10, i32 0, i32 17
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.snd_pcm_substream, ptr %27, i32 0, i32 11
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  tail call fastcc void @uni_player_set_channel_status(ptr noundef %10, ptr noundef nonnull %31)
  br label %35

34:                                               ; preds = %29, %2
  tail call fastcc void @uni_player_set_channel_status(ptr noundef %10, ptr noundef null)
  br label %35

35:                                               ; preds = %34, %33
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %24, i32 noundef %25) #7
  tail call void @mutex_unlock(ptr noundef %12) #7
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_sti_clk_adjustment_info(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 1
  store i32 2, ptr %3, align 8
  %4 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 3
  store i32 1, ptr %4, align 8
  %5 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5
  store i32 -999999, ptr %5, align 8
  %6 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5, i32 0, i32 1
  store i32 1000000, ptr %6, align 4
  %7 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5, i32 0, i32 2
  store i32 1, ptr %7, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_sti_clk_adjustment_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_dai, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.sti_uniperiph_data, ptr %8, i32 0, i32 2, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.uniperif, ptr %10, i32 0, i32 19
  tail call void @mutex_lock(ptr noundef %11) #7
  %12 = getelementptr inbounds %struct.uniperif, ptr %10, i32 0, i32 15
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  store i32 %13, ptr %14, align 8
  tail call void @mutex_unlock(ptr noundef %11) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_sti_clk_adjustment_put(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_dai, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.sti_uniperiph_data, ptr %8, i32 0, i32 2, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = add i32 %12, -1000001
  %14 = icmp ult i32 %13, -2000000
  br i1 %14, label %26, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.uniperif, ptr %10, i32 0, i32 19
  tail call void @mutex_lock(ptr noundef %16) #7
  %17 = load i32, ptr %11, align 8
  %18 = getelementptr inbounds %struct.uniperif, ptr %10, i32 0, i32 15
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.uniperif, ptr %10, i32 0, i32 14
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %15
  %23 = tail call fastcc i32 @uni_player_clk_set_rate(ptr noundef %10, i32 noundef %20)
  br label %24

24:                                               ; preds = %22, %15
  %25 = phi i32 [ %23, %22 ], [ 0, %15 ]
  tail call void @mutex_unlock(ptr noundef %16) #7
  br label %26

26:                                               ; preds = %24, %2
  %27 = phi i32 [ %25, %24 ], [ -22, %2 ]
  ret i32 %27
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!8 = !{i64 3949303}
!9 = !{i64 3948885}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2148908812}
!12 = !{i64 2148904636}
!13 = !{i64 2148904711, i64 2148904738, i64 2148904785, i64 2148904807, i64 2148904835, i64 2148904855}
!14 = !{i64 2148931815}
