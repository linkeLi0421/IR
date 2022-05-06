; ModuleID = '/llk/IR/sound/hda/hdac_component.c_pt.bc'
source_filename = "../sound/hda/hdac_component.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hdac_set_codec_wakeup:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hdac_set_codec_wakeup\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hdac_set_codec_wakeup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hdac_display_power:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hdac_display_power\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hdac_display_power:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hdac_sync_audio_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hdac_sync_audio_rate\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hdac_sync_audio_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hdac_acomp_get_eld:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hdac_acomp_get_eld\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hdac_acomp_get_eld:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hdac_acomp_register_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hdac_acomp_register_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hdac_acomp_register_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hdac_acomp_init:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hdac_acomp_init\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hdac_acomp_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hdac_acomp_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hdac_acomp_exit\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hdac_acomp_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.component_master_ops = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.hdac_bus = type { ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, [16 x ptr], [128 x i32], i32, i32, %struct.work_struct, i32, i32, %struct.hdac_rb, %struct.hdac_rb, [8 x i32], %struct.wait_queue_head, %struct.snd_dma_buffer, %struct.snd_dma_buffer, i32, %struct.list_head, i16, i32, i32, i32, %struct.spinlock, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, i32, %struct.list_head, i8, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.hdac_rb = type { ptr, i32, i16, i16, [8 x i32], [8 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.drm_audio_component = type { ptr, ptr, ptr, %struct.completion }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.drm_audio_component_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hdac_device = type { %struct.device, i32, ptr, i32, %struct.list_head, i16, i16, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, i32, i16, i16, %struct.atomic_t, %struct.mutex, ptr, ptr, %struct.mutex, %struct.snd_array, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.snd_array = type { i32, i32, i32, i32, ptr }
%struct.drm_audio_component_audio_ops = type { ptr, ptr, ptr, ptr, ptr }

@__kstrtab_snd_hdac_set_codec_wakeup = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hdac_set_codec_wakeup = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hdac_set_codec_wakeup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hdac_set_codec_wakeup to i32), ptr @__kstrtab_snd_hdac_set_codec_wakeup, ptr @__kstrtabns_snd_hdac_set_codec_wakeup }, section "___ksymtab_gpl+snd_hdac_set_codec_wakeup", align 4
@__kstrtab_snd_hdac_display_power = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hdac_display_power = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hdac_display_power = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hdac_display_power to i32), ptr @__kstrtab_snd_hdac_display_power, ptr @__kstrtabns_snd_hdac_display_power }, section "___ksymtab_gpl+snd_hdac_display_power", align 4
@__kstrtab_snd_hdac_sync_audio_rate = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hdac_sync_audio_rate = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hdac_sync_audio_rate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hdac_sync_audio_rate to i32), ptr @__kstrtab_snd_hdac_sync_audio_rate, ptr @__kstrtabns_snd_hdac_sync_audio_rate }, section "___ksymtab_gpl+snd_hdac_sync_audio_rate", align 4
@__kstrtab_snd_hdac_acomp_get_eld = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hdac_acomp_get_eld = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hdac_acomp_get_eld = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hdac_acomp_get_eld to i32), ptr @__kstrtab_snd_hdac_acomp_get_eld, ptr @__kstrtabns_snd_hdac_acomp_get_eld }, section "___ksymtab_gpl+snd_hdac_acomp_get_eld", align 4
@__kstrtab_snd_hdac_acomp_register_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hdac_acomp_register_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hdac_acomp_register_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hdac_acomp_register_notifier to i32), ptr @__kstrtab_snd_hdac_acomp_register_notifier, ptr @__kstrtabns_snd_hdac_acomp_register_notifier }, section "___ksymtab_gpl+snd_hdac_acomp_register_notifier", align 4
@.str = private unnamed_addr constant [27 x i8] c"sound/hda/hdac_component.c\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"hdac_acomp_release\00", align 1
@hdac_component_master_ops = internal constant %struct.component_master_ops { ptr @hdac_component_master_bind, ptr @hdac_component_master_unbind }, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"failed to add audio component master (%d)\0A\00", align 1
@__kstrtab_snd_hdac_acomp_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hdac_acomp_init = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hdac_acomp_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hdac_acomp_init to i32), ptr @__kstrtab_snd_hdac_acomp_init, ptr @__kstrtabns_snd_hdac_acomp_init }, section "___ksymtab_gpl+snd_hdac_acomp_init", align 4
@__kstrtab_snd_hdac_acomp_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hdac_acomp_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hdac_acomp_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hdac_acomp_exit to i32), ptr @__kstrtab_snd_hdac_acomp_exit, ptr @__kstrtabns_snd_hdac_acomp_exit }, section "___ksymtab_gpl+snd_hdac_acomp_exit", align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_snd_hdac_acomp_exit, ptr @__ksymtab_snd_hdac_acomp_get_eld, ptr @__ksymtab_snd_hdac_acomp_init, ptr @__ksymtab_snd_hdac_acomp_register_notifier, ptr @__ksymtab_snd_hdac_display_power, ptr @__ksymtab_snd_hdac_set_codec_wakeup, ptr @__ksymtab_snd_hdac_sync_audio_rate], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_hdac_set_codec_wakeup(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 35
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.drm_audio_component, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.drm_audio_component_ops, ptr %8, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %4, align 4
  tail call void %12(ptr noundef %15, i1 noundef zeroext %1) #6
  br label %16

16:                                               ; preds = %14, %10, %6, %2
  %17 = phi i32 [ 0, %14 ], [ -19, %6 ], [ -19, %2 ], [ 0, %10 ]
  ret i32 %17
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_hdac_display_power(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 35
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 34
  tail call void @mutex_lock(ptr noundef %6) #6
  %7 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 36
  br i1 %2, label %8, label %9

8:                                                ; preds = %3
  tail call void @_set_bit(i32 noundef %1, ptr noundef %7) #6
  br label %10

9:                                                ; preds = %3
  tail call void @_clear_bit(i32 noundef %1, ptr noundef %7) #6
  br label %10

10:                                               ; preds = %9, %8
  %11 = icmp eq ptr %5, null
  br i1 %11, label %67, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.drm_audio_component, ptr %5, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %67, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 36
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  %20 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 37
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %19, label %58, label %23

23:                                               ; preds = %16
  br i1 %22, label %24, label %67

24:                                               ; preds = %23
  %25 = getelementptr inbounds %struct.drm_audio_component_ops, ptr %14, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr %5, align 4
  %30 = tail call i32 %26(ptr noundef %29) #6
  br label %31

31:                                               ; preds = %28, %24
  %32 = phi i32 [ %30, %28 ], [ -1, %24 ]
  %33 = load ptr, ptr %4, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %65, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.drm_audio_component, ptr %33, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %47, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.drm_audio_component_ops, ptr %37, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr %33, align 4
  tail call void %41(ptr noundef %44, i1 noundef zeroext true) #6
  %45 = load ptr, ptr %4, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %65, label %47

47:                                               ; preds = %43, %39, %35
  %48 = phi ptr [ %45, %43 ], [ %33, %35 ], [ %33, %39 ]
  %49 = getelementptr inbounds %struct.drm_audio_component, ptr %48, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %65, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.drm_audio_component_ops, ptr %50, i32 0, i32 3
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %65, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr %48, align 4
  tail call void %54(ptr noundef %57, i1 noundef zeroext false) #6
  br label %65

58:                                               ; preds = %16
  br i1 %22, label %67, label %59

59:                                               ; preds = %58
  %60 = getelementptr inbounds %struct.drm_audio_component_ops, ptr %14, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr %5, align 4
  tail call void %61(ptr noundef %64, i32 noundef %21) #6
  br label %65

65:                                               ; preds = %63, %59, %56, %52, %47, %43, %31
  %66 = phi i32 [ %32, %31 ], [ %32, %43 ], [ %32, %47 ], [ %32, %52 ], [ %32, %56 ], [ 0, %63 ], [ 0, %59 ]
  store i32 %66, ptr %20, align 4
  br label %67

67:                                               ; preds = %65, %58, %23, %12, %10
  tail call void @mutex_unlock(ptr noundef %6) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_hdac_sync_audio_rate(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.hdac_bus, ptr %6, i32 0, i32 35
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %39, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.drm_audio_component, ptr %8, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %39, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.drm_audio_component_ops, ptr %12, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %39, label %18

18:                                               ; preds = %14
  %19 = zext i16 %1 to i32
  %20 = getelementptr inbounds %struct.drm_audio_component, ptr %8, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %34, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.drm_audio_component_audio_ops, ptr %21, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %23
  %28 = tail call i32 %25(ptr noundef %0, i32 noundef %19) #6
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr %11, align 4
  %32 = getelementptr inbounds %struct.drm_audio_component_ops, ptr %31, i32 0, i32 5
  %33 = load ptr, ptr %32, align 4
  br label %34

34:                                               ; preds = %30, %23, %18
  %35 = phi ptr [ %33, %30 ], [ %16, %23 ], [ %16, %18 ]
  %36 = phi i32 [ %28, %30 ], [ %19, %23 ], [ %19, %18 ]
  %37 = load ptr, ptr %8, align 4
  %38 = tail call i32 %35(ptr noundef %37, i32 noundef %36, i32 noundef %2, i32 noundef %3) #6
  br label %39

39:                                               ; preds = %34, %27, %14, %10, %4
  %40 = phi i32 [ %38, %34 ], [ -19, %14 ], [ -19, %10 ], [ -19, %4 ], [ -22, %27 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_hdac_acomp_get_eld(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.hdac_bus, ptr %8, i32 0, i32 35
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %41, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.drm_audio_component, ptr %10, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %41, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.drm_audio_component_ops, ptr %14, i32 0, i32 6
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %41, label %20

20:                                               ; preds = %16
  %21 = zext i16 %1 to i32
  %22 = getelementptr inbounds %struct.drm_audio_component, ptr %10, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %36, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.drm_audio_component_audio_ops, ptr %23, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %25
  %30 = tail call i32 %27(ptr noundef %0, i32 noundef %21) #6
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr %13, align 4
  %34 = getelementptr inbounds %struct.drm_audio_component_ops, ptr %33, i32 0, i32 6
  %35 = load ptr, ptr %34, align 4
  br label %36

36:                                               ; preds = %32, %25, %20
  %37 = phi ptr [ %35, %32 ], [ %18, %25 ], [ %18, %20 ]
  %38 = phi i32 [ %30, %32 ], [ %21, %25 ], [ %21, %20 ]
  %39 = load ptr, ptr %10, align 4
  %40 = tail call i32 %37(ptr noundef %39, i32 noundef %38, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #6
  br label %41

41:                                               ; preds = %36, %29, %16, %12, %6
  %42 = phi i32 [ %40, %36 ], [ -19, %16 ], [ -19, %12 ], [ -19, %6 ], [ -22, %29 ]
  ret i32 %42
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @snd_hdac_acomp_register_notifier(ptr nocapture noundef readonly %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 35
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.drm_audio_component, ptr %4, i32 0, i32 2
  store ptr %1, ptr %7, align 4
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi i32 [ 0, %6 ], [ -19, %2 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_hdac_acomp_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store ptr null, ptr %5, align 4
  %6 = load ptr, ptr %0, align 4
  %7 = tail call ptr @devres_find(ptr noundef %6, ptr noundef nonnull @hdac_acomp_release, ptr noundef null, ptr noundef null) #6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9, !prof !8

9:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 293, i32 noundef 9, ptr noundef null) #6
  br label %24

10:                                               ; preds = %4
  %11 = add i32 %3, 28
  %12 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @hdac_acomp_release, i32 noundef %11, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.1) #6
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.drm_audio_component, ptr %12, i32 0, i32 2
  store ptr %1, ptr %15, align 4
  %16 = getelementptr inbounds %struct.drm_audio_component, ptr %12, i32 0, i32 3
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.drm_audio_component, ptr %12, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %17, ptr noundef nonnull @.str.3, ptr noundef nonnull @init_completion.__key) #6
  %18 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 35
  store ptr %12, ptr %18, align 4
  tail call void @devres_add(ptr noundef %6, ptr noundef nonnull %12) #6
  call void @component_match_add_typed(ptr noundef %6, ptr noundef nonnull %5, ptr noundef %2, ptr noundef %0) #6
  %19 = load ptr, ptr %5, align 4
  %20 = call i32 @component_master_add_with_match(ptr noundef %6, ptr noundef nonnull @hdac_component_master_ops, ptr noundef %19) #6
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  store ptr null, ptr %18, align 4
  %23 = call i32 @devres_destroy(ptr noundef %6, ptr noundef nonnull @hdac_acomp_release, ptr noundef null, ptr noundef null) #6
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %6, ptr noundef nonnull @.str.2, i32 noundef %20) #7
  br label %24

24:                                               ; preds = %22, %14, %10, %9
  %25 = phi i32 [ -16, %9 ], [ %20, %22 ], [ -12, %10 ], [ 0, %14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @hdac_acomp_release(ptr nocapture noundef %0, ptr nocapture noundef %1) #4 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_match_add_typed(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_master_add_with_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_destroy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_hdac_acomp_exit(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 35
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 37
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %19, label %10, !prof !8

10:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 341, i32 noundef 9, ptr noundef null) #6
  %11 = getelementptr inbounds %struct.drm_audio_component, ptr %4, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.drm_audio_component_ops, ptr %12, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %4, align 4
  %18 = load i32, ptr %7, align 4
  tail call void %16(ptr noundef %17, i32 noundef %18) #6
  br label %19

19:                                               ; preds = %14, %10, %6
  store i32 0, ptr %7, align 4
  %20 = getelementptr inbounds %struct.hdac_bus, ptr %0, i32 0, i32 36
  store i32 0, ptr %20, align 4
  tail call void @component_master_del(ptr noundef %2, ptr noundef nonnull @hdac_component_master_ops) #6
  store ptr null, ptr %3, align 4
  %21 = tail call i32 @devres_destroy(ptr noundef %2, ptr noundef nonnull @hdac_acomp_release, ptr noundef null, ptr noundef null) #6
  br label %22

22:                                               ; preds = %19, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_master_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devres_find(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hdac_component_master_bind(ptr noundef %0) #0 {
  %2 = tail call ptr @devres_find(ptr noundef %0, ptr noundef nonnull @hdac_acomp_release, ptr noundef null, ptr noundef null) #6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5, !prof !9

4:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 189, i32 noundef 9, ptr noundef null) #6
  br label %38

5:                                                ; preds = %1
  %6 = tail call i32 @component_bind_all(ptr noundef %0, ptr noundef nonnull %2) #6
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %38, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr %2, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.drm_audio_component, ptr %2, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16, !prof !9

15:                                               ; preds = %11, %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 196, i32 noundef 9, ptr noundef null) #6
  br label %35

16:                                               ; preds = %11
  %17 = load ptr, ptr %13, align 4
  %18 = tail call zeroext i1 @try_module_get(ptr noundef %17) #6
  br i1 %18, label %19, label %35

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.drm_audio_component, ptr %2, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.drm_audio_component_audio_ops, ptr %21, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = tail call i32 %25(ptr noundef %0, ptr noundef nonnull %2) #6
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27, %23, %19
  %31 = getelementptr inbounds %struct.drm_audio_component, ptr %2, i32 0, i32 3
  tail call void @complete_all(ptr noundef %31) #6
  br label %38

32:                                               ; preds = %27
  %33 = load ptr, ptr %12, align 4
  %34 = load ptr, ptr %33, align 4
  tail call void @module_put(ptr noundef %34) #6
  br label %35

35:                                               ; preds = %32, %16, %15
  %36 = phi i32 [ -22, %15 ], [ %28, %32 ], [ -19, %16 ]
  tail call void @component_unbind_all(ptr noundef %0, ptr noundef nonnull %2) #6
  %37 = getelementptr inbounds %struct.drm_audio_component, ptr %2, i32 0, i32 3
  tail call void @complete_all(ptr noundef %37) #6
  br label %38

38:                                               ; preds = %35, %30, %5, %4
  %39 = phi i32 [ -22, %4 ], [ %36, %35 ], [ 0, %30 ], [ %6, %5 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hdac_component_master_unbind(ptr noundef %0) #0 {
  %2 = tail call ptr @devres_find(ptr noundef %0, ptr noundef nonnull @hdac_acomp_release, ptr noundef null, ptr noundef null) #6
  %3 = getelementptr inbounds %struct.drm_audio_component, ptr %2, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.drm_audio_component_audio_ops, ptr %4, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void %8(ptr noundef %0, ptr noundef %2) #6
  br label %11

11:                                               ; preds = %10, %6, %1
  %12 = getelementptr inbounds %struct.drm_audio_component, ptr %2, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %13, align 4
  tail call void @module_put(ptr noundef %14) #6
  tail call void @component_unbind_all(ptr noundef %0, ptr noundef %2) #6
  %15 = load ptr, ptr %12, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load ptr, ptr %2, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20, !prof !8

20:                                               ; preds = %17, %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 233, i32 noundef 9, ptr noundef null) #6
  br label %21

21:                                               ; preds = %20, %17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_bind_all(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_unbind_all(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{!"branch_weights", i32 1, i32 2000}
