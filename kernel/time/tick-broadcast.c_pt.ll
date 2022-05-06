; ModuleID = '/llk/IR/kernel/time/tick-broadcast.c_pt.bc'
source_filename = "../kernel/time/tick-broadcast.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tick_broadcast_control:\09\09\09\09\09"
module asm "\09.asciz \09\22tick_broadcast_control\22\09\09\09\09\09"
module asm "__kstrtabns_tick_broadcast_control:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.tick_device = type { ptr, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [60 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@tick_broadcast_device = internal global %struct.tick_device zeroinitializer, align 4
@tick_broadcast_mask = internal global [1 x %struct.cpumask] zeroinitializer, align 4
@tick_broadcast_lock = internal global %struct.raw_spinlock zeroinitializer, section ".data..cacheline_aligned", align 64
@tick_broadcast_on = internal global [1 x %struct.cpumask] zeroinitializer, align 4
@tick_cpu_device = external dso_local global %struct.tick_device, section ".data..percpu", align 4
@tick_broadcast_forced = internal unnamed_addr global i1 false, align 4
@__kstrtab_tick_broadcast_control = external dso_local constant [0 x i8], align 1
@__kstrtabns_tick_broadcast_control = external dso_local constant [0 x i8], align 1
@__ksymtab_tick_broadcast_control = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tick_broadcast_control to i32), ptr @__kstrtab_tick_broadcast_control, ptr @__kstrtabns_tick_broadcast_control }, section "___ksymtab_gpl+tick_broadcast_control", align 4
@tick_broadcast_oneshot_mask = internal global [1 x %struct.cpumask] zeroinitializer, align 4
@tick_broadcast_force_mask = internal global [1 x %struct.cpumask] zeroinitializer, align 4
@tmpmask = internal global [1 x %struct.cpumask] zeroinitializer, align 4
@tick_broadcast_pending_mask = internal global [1 x %struct.cpumask] zeroinitializer, align 4
@tick_oneshot_wakeup_device = internal global ptr null, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@__cpu_online_mask = external dso_local local_unnamed_addr global %struct.cpumask, align 4
@___tick_broadcast_oneshot_control.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"kernel/time/tick-broadcast.c\00", align 1
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@tick_handle_oneshot_broadcast.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@jiffies_lock = external dso_local global %struct.raw_spinlock, align 4
@tick_next_period = external dso_local local_unnamed_addr global i64, align 8
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_tick_broadcast_control], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @tick_get_broadcast_device() local_unnamed_addr #0 {
  ret ptr @tick_broadcast_device
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @tick_get_broadcast_mask() local_unnamed_addr #0 {
  ret ptr @tick_broadcast_mask
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @tick_get_wakeup_device(i32 noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @tick_oneshot_wakeup_device to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = load ptr, ptr %5, align 4
  ret ptr %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tick_install_broadcast_device(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = load ptr, ptr @tick_broadcast_device, align 4
  %4 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %1
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, ptrtoint (ptr @tick_oneshot_wakeup_device to i32)
  %7 = inttoptr i32 %6 to ptr
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %0, null
  br i1 %9, label %44, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 9
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 90
  %14 = icmp eq i32 %13, 66
  br i1 %14, label %15, label %48

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 25
  %17 = load ptr, ptr %16, align 4
  %18 = and i32 %1, 31
  %19 = add nuw nsw i32 %18, 1
  %20 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %19
  %21 = lshr i32 %1, 5
  %22 = sub nsw i32 0, %21
  %23 = getelementptr i32, ptr %20, i32 %22
  %24 = load i32, ptr %17, align 4
  %25 = load i32, ptr %23, align 4
  %26 = xor i32 %25, %24
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %15
  %30 = icmp eq ptr %8, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 22
  %33 = load i32, ptr %32, align 8
  %34 = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 22
  %35 = load i32, ptr %34, align 8
  %36 = icmp sgt i32 %33, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %31, %29
  %38 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 27
  %39 = load ptr, ptr %38, align 64
  %40 = tail call zeroext i1 @try_module_get(ptr noundef %39) #11
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = load i32, ptr %11, align 4
  br label %48

43:                                               ; preds = %37
  store ptr @tick_oneshot_wakeup_handler, ptr %0, align 64
  br label %44

44:                                               ; preds = %43, %2
  tail call void @clockevents_exchange_device(ptr noundef %8, ptr noundef %0) #11
  %45 = load i32, ptr %4, align 4
  %46 = add i32 %45, ptrtoint (ptr @tick_oneshot_wakeup_device to i32)
  %47 = inttoptr i32 %46 to ptr
  store ptr %0, ptr %47, align 4
  br label %91

48:                                               ; preds = %41, %31, %15, %10
  %49 = phi i32 [ %42, %41 ], [ %12, %10 ], [ %12, %15 ], [ %12, %31 ]
  %50 = and i32 %49, 88
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %91

52:                                               ; preds = %48
  %53 = load i32, ptr getelementptr inbounds (%struct.tick_device, ptr @tick_broadcast_device, i32 0, i32 1), align 4
  %54 = icmp eq i32 %53, 1
  %55 = and i32 %49, 2
  %56 = icmp eq i32 %55, 0
  %57 = select i1 %54, i1 %56, i1 false
  br i1 %57, label %91, label %58

58:                                               ; preds = %52
  %59 = icmp eq ptr %3, null
  br i1 %59, label %66, label %60

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 22
  %62 = load i32, ptr %61, align 8
  %63 = getelementptr inbounds %struct.clock_event_device, ptr %3, i32 0, i32 22
  %64 = load i32, ptr %63, align 8
  %65 = icmp sgt i32 %62, %64
  br i1 %65, label %66, label %91

66:                                               ; preds = %60, %58
  %67 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 27
  %68 = load ptr, ptr %67, align 64
  %69 = tail call zeroext i1 @try_module_get(ptr noundef %68) #11
  br i1 %69, label %70, label %91

70:                                               ; preds = %66
  tail call void @clockevents_exchange_device(ptr noundef %3, ptr noundef nonnull %0) #11
  br i1 %59, label %72, label %71

71:                                               ; preds = %70
  store ptr @clockevents_handle_noop, ptr %3, align 64
  br label %72

72:                                               ; preds = %71, %70
  store ptr %0, ptr @tick_broadcast_device, align 4
  %73 = load i32, ptr @tick_broadcast_mask, align 4
  %74 = and i32 %73, 65535
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %72
  tail call void @tick_setup_periodic(ptr noundef nonnull %0, i32 noundef 1) #11
  br label %77

77:                                               ; preds = %76, %72
  %78 = load i32, ptr %11, align 4
  %79 = and i32 %78, 2
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %91, label %81

81:                                               ; preds = %77
  %82 = load i32, ptr getelementptr inbounds (%struct.tick_device, ptr @tick_broadcast_device, i32 0, i32 1), align 4
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @tick_broadcast_lock) #11
  store i32 1, ptr getelementptr inbounds (%struct.tick_device, ptr @tick_broadcast_device, i32 0, i32 1), align 4
  %86 = load ptr, ptr @tick_broadcast_device, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %84
  tail call fastcc void @tick_broadcast_setup_oneshot(ptr noundef nonnull %86) #11
  br label %89

89:                                               ; preds = %88, %84
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @tick_broadcast_lock, i32 noundef %85) #11
  br label %91

90:                                               ; preds = %81
  tail call void @tick_clock_notify() #11
  br label %91

91:                                               ; preds = %90, %89, %77, %66, %60, %52, %48, %44
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_exchange_device(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_handle_noop(ptr noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @tick_broadcast_oneshot_active() local_unnamed_addr #1 {
  %1 = load i32, ptr getelementptr inbounds (%struct.tick_device, ptr @tick_broadcast_device, i32 0, i32 1), align 4
  %2 = icmp eq i32 %1, 1
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tick_broadcast_switch_to_oneshot() local_unnamed_addr #2 {
  %1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @tick_broadcast_lock) #11
  store i32 1, ptr getelementptr inbounds (%struct.tick_device, ptr @tick_broadcast_device, i32 0, i32 1), align 4
  %2 = load ptr, ptr @tick_broadcast_device, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  tail call fastcc void @tick_broadcast_setup_oneshot(ptr noundef nonnull %2)
  br label %5

5:                                                ; preds = %4, %0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @tick_broadcast_lock, i32 noundef %1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_clock_notify() local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @tick_is_broadcast_device(ptr noundef readnone %0) local_unnamed_addr #1 {
  %2 = icmp ne ptr %0, null
  %3 = load ptr, ptr @tick_broadcast_device, align 4
  %4 = icmp eq ptr %3, %0
  %5 = select i1 %2, i1 %4, i1 false
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tick_broadcast_update_freq(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %0, null
  %4 = load ptr, ptr @tick_broadcast_device, align 4
  %5 = icmp ne ptr %4, %0
  %6 = select i1 %3, i1 true, i1 %5
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  tail call void @_raw_spin_lock(ptr noundef nonnull @tick_broadcast_lock) #11
  %8 = tail call i32 @__clockevents_update_freq(ptr noundef nonnull %0, i32 noundef %1) #11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !9
  %9 = load i16, ptr @tick_broadcast_lock, align 64
  %10 = add i16 %9, 1
  store i16 %10, ptr @tick_broadcast_lock, align 64
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !12
  br label %11

11:                                               ; preds = %7, %2
  %12 = phi i32 [ %8, %7 ], [ -19, %2 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clockevents_update_freq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tick_device_uses_broadcast(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = load ptr, ptr @tick_broadcast_device, align 4
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @tick_broadcast_lock) #11
  %5 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 9
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %2
  store ptr @tick_handle_periodic, ptr %0, align 64
  %10 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 16
  %11 = load ptr, ptr %10, align 16
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store ptr @tick_broadcast, ptr %10, align 16
  br label %14

14:                                               ; preds = %13, %9
  tail call void @_set_bit(i32 noundef %1, ptr noundef nonnull @tick_broadcast_mask) #11
  %15 = load i32, ptr getelementptr inbounds (%struct.tick_device, ptr @tick_broadcast_device, i32 0, i32 1), align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = icmp eq ptr %3, null
  br i1 %18, label %60, label %19

19:                                               ; preds = %17
  tail call void @tick_setup_periodic(ptr noundef nonnull %3, i32 noundef 1) #11
  br label %60

20:                                               ; preds = %14
  tail call fastcc void @tick_broadcast_setup_oneshot(ptr noundef %3)
  br label %60

21:                                               ; preds = %2
  %22 = and i32 %6, 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  tail call void @_clear_bit(i32 noundef %1, ptr noundef nonnull @tick_broadcast_mask) #11
  br label %30

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 16
  %27 = load ptr, ptr %26, align 16
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store ptr @tick_broadcast, ptr %26, align 16
  br label %30

30:                                               ; preds = %29, %25, %24
  %31 = lshr i32 %1, 5
  %32 = getelementptr i32, ptr @tick_broadcast_on, i32 %31
  %33 = load volatile i32, ptr %32, align 4
  %34 = and i32 %1, 31
  %35 = shl nuw i32 1, %34
  %36 = and i32 %33, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  tail call void @_clear_bit(i32 noundef %1, ptr noundef nonnull @tick_broadcast_mask) #11
  br label %39

39:                                               ; preds = %38, %30
  %40 = load i32, ptr getelementptr inbounds (%struct.tick_device, ptr @tick_broadcast_device, i32 0, i32 1), align 4
  switch i32 %40, label %60 [
    i32 1, label %41
    i32 0, label %42
  ]

41:                                               ; preds = %39
  tail call void @_clear_bit(i32 noundef %1, ptr noundef nonnull @tick_broadcast_oneshot_mask) #11
  tail call void @_clear_bit(i32 noundef %1, ptr noundef nonnull @tick_broadcast_pending_mask) #11
  br label %60

42:                                               ; preds = %39
  %43 = load i32, ptr @tick_broadcast_mask, align 4
  %44 = and i32 %43, 65535
  %45 = icmp eq i32 %44, 0
  %46 = icmp ne ptr %3, null
  %47 = select i1 %45, i1 %46, i1 false
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  tail call void @clockevents_shutdown(ptr noundef nonnull %3) #11
  br label %49

49:                                               ; preds = %48, %42
  br i1 %46, label %50, label %60

50:                                               ; preds = %49
  %51 = getelementptr inbounds %struct.clock_event_device, ptr %3, i32 0, i32 9
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, 128
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = getelementptr i32, ptr @tick_broadcast_mask, i32 %31
  %57 = load volatile i32, ptr %56, align 4
  %58 = lshr i32 %57, %34
  %59 = and i32 %58, 1
  br label %60

60:                                               ; preds = %55, %50, %49, %41, %39, %20, %19, %17
  %61 = phi i32 [ 0, %39 ], [ 0, %50 ], [ %59, %55 ], [ 0, %49 ], [ 0, %41 ], [ 1, %20 ], [ 1, %17 ], [ 1, %19 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @tick_broadcast_lock, i32 noundef %4) #11
  ret i32 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_handle_periodic(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tick_broadcast_setup_oneshot(ptr noundef %0) unnamed_addr #2 {
  %2 = tail call ptr @llvm.thread.pointer() #11
  %3 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq ptr %0, null
  br i1 %5, label %71, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 64
  %8 = icmp eq ptr %7, @tick_handle_oneshot_broadcast
  br i1 %8, label %70, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 8
  %11 = load i32, ptr %10, align 16
  %12 = icmp ne i32 %11, 2
  store ptr @tick_handle_oneshot_broadcast, ptr %0, align 64
  %13 = load i32, ptr @tick_broadcast_mask, align 4
  store i32 %13, ptr @tmpmask, align 4
  tail call void @_clear_bit(i32 noundef %4, ptr noundef nonnull @tmpmask) #11
  %14 = load i32, ptr @tick_broadcast_oneshot_mask, align 4
  %15 = load i32, ptr @tmpmask, align 4
  %16 = or i32 %15, %14
  store i32 %16, ptr @tick_broadcast_oneshot_mask, align 4
  %17 = and i32 %15, 65535
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %12, i1 true, i1 %18
  br i1 %19, label %68, label %20

20:                                               ; preds = %9
  tail call void @_raw_spin_lock(ptr noundef nonnull @jiffies_lock) #11
  %21 = load i64, ptr @tick_next_period, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !9
  %22 = load i16, ptr @jiffies_lock, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr @jiffies_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !12
  tail call void @clockevents_switch_state(ptr noundef nonnull %0, i32 noundef 3) #11
  %24 = load i32, ptr @nr_cpu_ids, align 4
  %25 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @tmpmask) #12
  %26 = icmp ult i32 %25, %24
  br i1 %26, label %27, label %40

27:                                               ; preds = %37, %20
  %28 = phi i32 [ %38, %37 ], [ %25, %20 ]
  %29 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %28
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, ptrtoint (ptr @tick_cpu_device to i32)
  %32 = inttoptr i32 %31 to ptr
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.clock_event_device, ptr %33, i32 0, i32 3
  store i64 %21, ptr %36, align 16
  br label %37

37:                                               ; preds = %35, %27
  %38 = tail call i32 @cpumask_next(i32 noundef %28, ptr noundef nonnull @tmpmask) #12
  %39 = icmp ult i32 %38, %24
  br i1 %39, label %27, label %40

40:                                               ; preds = %37, %20
  %41 = load i32, ptr %10, align 16
  %42 = icmp eq i32 %41, 3
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  tail call void @clockevents_switch_state(ptr noundef nonnull %0, i32 noundef 3) #11
  br label %44

44:                                               ; preds = %43, %40
  %45 = tail call i32 @clockevents_program_event(ptr noundef nonnull %0, i64 noundef %21, i1 noundef zeroext true) #11
  %46 = and i32 %4, 31
  %47 = add nuw nsw i32 %46, 1
  %48 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %47
  %49 = lshr i32 %4, 5
  %50 = sub nsw i32 0, %49
  %51 = getelementptr i32, ptr %48, i32 %50
  %52 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 9
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %53, 32
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %71, label %56

56:                                               ; preds = %44
  %57 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 25
  %58 = load ptr, ptr %57, align 4
  %59 = load i32, ptr %58, align 4
  %60 = load i32, ptr %51, align 4
  %61 = xor i32 %60, %59
  %62 = and i32 %61, 65535
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %56
  store ptr %51, ptr %57, align 4
  %65 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 23
  %66 = load i32, ptr %65, align 4
  %67 = tail call i32 @irq_set_affinity(i32 noundef %66, ptr noundef %51) #11
  br label %71

68:                                               ; preds = %9
  %69 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 3
  store i64 9223372036854775807, ptr %69, align 16
  br label %71

70:                                               ; preds = %6
  tail call void @_clear_bit(i32 noundef %4, ptr noundef nonnull @tick_broadcast_oneshot_mask) #11
  tail call void @_clear_bit(i32 noundef %4, ptr noundef nonnull @tick_broadcast_pending_mask) #11
  br label %71

71:                                               ; preds = %70, %68, %64, %56, %44, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_shutdown(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tick_receive_broadcast() local_unnamed_addr #2 {
  %1 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %2 = inttoptr i32 %1 to ptr
  %3 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %2) #7, !srcloc !13
  %4 = add i32 %3, ptrtoint (ptr @tick_cpu_device to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %0
  %9 = load ptr, ptr %6, align 64
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void %9(ptr noundef nonnull %6) #11
  br label %12

12:                                               ; preds = %11, %8, %0
  %13 = phi i32 [ 0, %11 ], [ -19, %0 ], [ -22, %8 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tick_broadcast_control(i32 noundef %0) #2 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @tick_broadcast_lock) #11
  %3 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %4 = inttoptr i32 %3 to ptr
  %5 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %4) #7, !srcloc !13
  %6 = add i32 %5, ptrtoint (ptr @tick_cpu_device to i32)
  %7 = inttoptr i32 %6 to ptr
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %61, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 9
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 24
  %14 = icmp eq i32 %13, 8
  br i1 %14, label %15, label %61

15:                                               ; preds = %10
  %16 = tail call ptr @llvm.thread.pointer() #11
  %17 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %18 = load i32, ptr %17, align 8
  %19 = load ptr, ptr @tick_broadcast_device, align 4
  %20 = load i32, ptr @tick_broadcast_mask, align 4
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 0
  switch i32 %0, label %47 [
    i32 2, label %23
    i32 1, label %24
    i32 0, label %38
  ]

23:                                               ; preds = %15
  store i1 true, ptr @tick_broadcast_forced, align 4
  br label %24

24:                                               ; preds = %23, %15
  tail call void @_set_bit(i32 noundef %18, ptr noundef nonnull @tick_broadcast_on) #11
  %25 = tail call i32 @_test_and_set_bit(i32 noundef %18, ptr noundef nonnull @tick_broadcast_mask) #11
  %26 = icmp eq i32 %25, 0
  %27 = icmp ne ptr %19, null
  %28 = select i1 %26, i1 %27, i1 false
  br i1 %28, label %29, label %47

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.clock_event_device, ptr %19, i32 0, i32 9
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 128
  %33 = icmp eq i32 %32, 0
  %34 = load i32, ptr getelementptr inbounds (%struct.tick_device, ptr @tick_broadcast_device, i32 0, i32 1), align 4
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %33, i1 %35, i1 false
  br i1 %36, label %37, label %49

37:                                               ; preds = %29
  tail call void @clockevents_shutdown(ptr noundef nonnull %8) #11
  br label %49

38:                                               ; preds = %15
  %39 = load i1, ptr @tick_broadcast_forced, align 4
  br i1 %39, label %47, label %40

40:                                               ; preds = %38
  tail call void @_clear_bit(i32 noundef %18, ptr noundef nonnull @tick_broadcast_on) #11
  %41 = tail call i32 @_test_and_clear_bit(i32 noundef %18, ptr noundef nonnull @tick_broadcast_mask) #11
  %42 = icmp ne i32 %41, 0
  %43 = load i32, ptr getelementptr inbounds (%struct.tick_device, ptr @tick_broadcast_device, i32 0, i32 1), align 4
  %44 = icmp eq i32 %43, 0
  %45 = select i1 %42, i1 %44, i1 false
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  tail call void @tick_setup_periodic(ptr noundef nonnull %8, i32 noundef 0) #11
  br label %47

47:                                               ; preds = %46, %40, %38, %24, %15
  %48 = icmp eq ptr %19, null
  br i1 %48, label %61, label %49

49:                                               ; preds = %47, %37, %29
  %50 = load i32, ptr @tick_broadcast_mask, align 4
  %51 = and i32 %50, 65535
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  br i1 %22, label %61, label %54

54:                                               ; preds = %53
  tail call void @clockevents_shutdown(ptr noundef nonnull %19) #11
  br label %61

55:                                               ; preds = %49
  br i1 %22, label %56, label %61

56:                                               ; preds = %55
  %57 = load i32, ptr getelementptr inbounds (%struct.tick_device, ptr @tick_broadcast_device, i32 0, i32 1), align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  tail call void @tick_setup_periodic(ptr noundef nonnull %19, i32 noundef 1) #11
  br label %61

60:                                               ; preds = %56
  tail call fastcc void @tick_broadcast_setup_oneshot(ptr noundef nonnull %19)
  br label %61

61:                                               ; preds = %60, %59, %55, %54, %53, %47, %10, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @tick_broadcast_lock, i32 noundef %2) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_setup_periodic(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @tick_set_periodic_handler(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq i32 %1, 0
  %4 = select i1 %3, ptr @tick_handle_periodic, ptr @tick_handle_periodic_broadcast
  store ptr %4, ptr %0, align 64
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tick_handle_periodic_broadcast(ptr noundef %0) #2 {
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %3) #7, !srcloc !13
  %5 = add i32 %4, ptrtoint (ptr @tick_cpu_device to i32)
  %6 = inttoptr i32 %5 to ptr
  tail call void @_raw_spin_lock(ptr noundef nonnull @tick_broadcast_lock) #11
  %7 = load ptr, ptr @tick_broadcast_device, align 4
  %8 = getelementptr inbounds %struct.clock_event_device, ptr %7, i32 0, i32 8
  %9 = load i32, ptr %8, align 16
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !9
  %12 = load i16, ptr @tick_broadcast_lock, align 64
  %13 = add i16 %12, 1
  store i16 %13, ptr @tick_broadcast_lock, align 64
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !12
  br label %64

14:                                               ; preds = %1
  %15 = load i32, ptr @__cpu_online_mask, align 4
  %16 = load i32, ptr @tick_broadcast_mask, align 4
  %17 = and i32 %15, 65535
  %18 = and i32 %17, %16
  store i32 %18, ptr @tmpmask, align 4
  %19 = tail call ptr @llvm.thread.pointer() #11
  %20 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %21 = load i32, ptr %20, align 8
  %22 = lshr i32 %21, 5
  %23 = getelementptr i32, ptr @tmpmask, i32 %22
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %21, 31
  %26 = shl nuw i32 1, %25
  %27 = and i32 %26, %24
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %14
  tail call void @_clear_bit(i32 noundef %21, ptr noundef nonnull @tmpmask) #11
  %30 = getelementptr inbounds %struct.clock_event_device, ptr %7, i32 0, i32 9
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 128
  %33 = icmp eq i32 %32, 0
  %34 = load i32, ptr @tmpmask, align 4
  br label %35

35:                                               ; preds = %29, %14
  %36 = phi i32 [ %34, %29 ], [ %18, %14 ]
  %37 = phi i1 [ %33, %29 ], [ false, %14 ]
  %38 = and i32 %36, 65535
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %35
  %41 = tail call i32 @_find_first_bit_le(ptr noundef nonnull @tmpmask, i32 noundef 16) #11
  %42 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %41
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, ptrtoint (ptr @tick_cpu_device to i32)
  %45 = inttoptr i32 %44 to ptr
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.clock_event_device, ptr %46, i32 0, i32 16
  %48 = load ptr, ptr %47, align 16
  tail call void %48(ptr noundef nonnull @tmpmask) #11
  br label %49

49:                                               ; preds = %40, %35
  %50 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 8
  %51 = load i32, ptr %50, align 16
  %52 = icmp eq i32 %51, 3
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 3
  %55 = load i64, ptr %54, align 16
  %56 = add i64 %55, 10000000
  %57 = tail call i32 @clockevents_program_event(ptr noundef %0, i64 noundef %56, i1 noundef zeroext true) #11
  br label %58

58:                                               ; preds = %53, %49
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !9
  %59 = load i16, ptr @tick_broadcast_lock, align 64
  %60 = add i16 %59, 1
  store i16 %60, ptr @tick_broadcast_lock, align 64
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !12
  br i1 %37, label %61, label %64

61:                                               ; preds = %58
  %62 = load ptr, ptr %6, align 4
  %63 = load ptr, ptr %62, align 64
  tail call void %63(ptr noundef %62) #11
  br label %64

64:                                               ; preds = %61, %58, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tick_broadcast_offline(i32 noundef %0) local_unnamed_addr #2 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @tick_broadcast_lock) #11
  tail call void @_clear_bit(i32 noundef %0, ptr noundef nonnull @tick_broadcast_mask) #11
  tail call void @_clear_bit(i32 noundef %0, ptr noundef nonnull @tick_broadcast_on) #11
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @tick_oneshot_wakeup_device to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  tail call void @clockevents_exchange_device(ptr noundef nonnull %6, ptr noundef null) #11
  %9 = load i32, ptr %2, align 4
  %10 = add i32 %9, ptrtoint (ptr @tick_oneshot_wakeup_device to i32)
  %11 = inttoptr i32 %10 to ptr
  store ptr null, ptr %11, align 4
  br label %12

12:                                               ; preds = %8, %1
  tail call void @_clear_bit(i32 noundef %0, ptr noundef nonnull @tick_broadcast_oneshot_mask) #11
  tail call void @_clear_bit(i32 noundef %0, ptr noundef nonnull @tick_broadcast_pending_mask) #11
  tail call void @_clear_bit(i32 noundef %0, ptr noundef nonnull @tick_broadcast_force_mask) #11
  %13 = load ptr, ptr @tick_broadcast_device, align 4
  %14 = load i32, ptr getelementptr inbounds (%struct.tick_device, ptr @tick_broadcast_device, i32 0, i32 1), align 4
  %15 = icmp eq i32 %14, 0
  %16 = icmp ne ptr %13, null
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = load i32, ptr @tick_broadcast_mask, align 4
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  tail call void @clockevents_shutdown(ptr noundef nonnull %13) #11
  br label %23

23:                                               ; preds = %22, %18, %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !9
  %24 = load i16, ptr @tick_broadcast_lock, align 64
  %25 = add i16 %24, 1
  store i16 %25, ptr @tick_broadcast_lock, align 64
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tick_suspend_broadcast() local_unnamed_addr #2 {
  %1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @tick_broadcast_lock) #11
  %2 = load ptr, ptr @tick_broadcast_device, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  tail call void @clockevents_shutdown(ptr noundef nonnull %2) #11
  br label %5

5:                                                ; preds = %4, %0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @tick_broadcast_lock, i32 noundef %1) #11
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @tick_resume_check_broadcast() local_unnamed_addr #5 {
  %1 = load i32, ptr getelementptr inbounds (%struct.tick_device, ptr @tick_broadcast_device, i32 0, i32 1), align 4
  %2 = icmp eq i32 %1, 1
  br i1 %2, label %14, label %3

3:                                                ; preds = %0
  %4 = tail call ptr @llvm.thread.pointer() #11
  %5 = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = lshr i32 %6, 5
  %8 = getelementptr i32, ptr @tick_broadcast_mask, i32 %7
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %6, 31
  %11 = shl nuw i32 1, %10
  %12 = and i32 %11, %9
  %13 = icmp ne i32 %12, 0
  br label %14

14:                                               ; preds = %3, %0
  %15 = phi i1 [ %13, %3 ], [ false, %0 ]
  ret i1 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tick_resume_broadcast() local_unnamed_addr #2 {
  %1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @tick_broadcast_lock) #11
  %2 = load ptr, ptr @tick_broadcast_device, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %0
  %5 = tail call i32 @clockevents_tick_resume(ptr noundef nonnull %2) #11
  %6 = load i32, ptr getelementptr inbounds (%struct.tick_device, ptr @tick_broadcast_device, i32 0, i32 1), align 4
  switch i32 %6, label %17 [
    i32 0, label %7
    i32 1, label %12
  ]

7:                                                ; preds = %4
  %8 = load i32, ptr @tick_broadcast_mask, align 4
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  tail call void @tick_setup_periodic(ptr noundef nonnull %2, i32 noundef 1) #11
  br label %17

12:                                               ; preds = %4
  %13 = load i32, ptr @tick_broadcast_mask, align 4
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @clockevents_switch_state(ptr noundef nonnull %2, i32 noundef 3) #11
  br label %17

17:                                               ; preds = %16, %12, %11, %7, %4, %0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @tick_broadcast_lock, i32 noundef %1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clockevents_tick_resume(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @tick_get_broadcast_oneshot_mask() local_unnamed_addr #0 {
  ret ptr @tick_broadcast_oneshot_mask
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @tick_check_broadcast_expired() local_unnamed_addr #5 {
  %1 = tail call ptr @llvm.thread.pointer() #11
  %2 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %3 = load i32, ptr %2, align 8
  %4 = lshr i32 %3, 5
  %5 = getelementptr i32, ptr @tick_broadcast_force_mask, i32 %4
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %3, 31
  %8 = lshr i32 %6, %7
  %9 = and i32 %8, 1
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tick_check_oneshot_broadcast_this_cpu() local_unnamed_addr #2 {
  %1 = tail call ptr @llvm.thread.pointer() #11
  %2 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %3 = load i32, ptr %2, align 8
  %4 = lshr i32 %3, 5
  %5 = getelementptr i32, ptr @tick_broadcast_oneshot_mask, i32 %4
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %3, 31
  %8 = shl nuw i32 1, %7
  %9 = and i32 %8, %6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %0
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %13) #7, !srcloc !13
  %15 = add i32 %14, ptrtoint (ptr @tick_cpu_device to i32)
  %16 = inttoptr i32 %15 to ptr
  %17 = getelementptr inbounds %struct.tick_device, ptr %16, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %22

20:                                               ; preds = %11
  %21 = load ptr, ptr %16, align 4
  tail call void @clockevents_switch_state(ptr noundef %21, i32 noundef 3) #11
  br label %22

22:                                               ; preds = %20, %11, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_switch_state(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__tick_broadcast_oneshot_control(i32 noundef %0) local_unnamed_addr #2 {
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %3) #7, !srcloc !13
  %5 = add i32 %4, ptrtoint (ptr @tick_cpu_device to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = tail call ptr @llvm.thread.pointer() #11
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr inbounds %struct.tick_device, ptr %6, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %30

14:                                               ; preds = %1
  %15 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, ptrtoint (ptr @tick_oneshot_wakeup_device to i32)
  %18 = inttoptr i32 %17 to ptr
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %14
  switch i32 %0, label %158 [
    i32 1, label %22
    i32 0, label %26
  ]

22:                                               ; preds = %21
  tail call void @clockevents_switch_state(ptr noundef %10, i32 noundef 4) #11
  tail call void @clockevents_switch_state(ptr noundef nonnull %19, i32 noundef 3) #11
  %23 = getelementptr inbounds %struct.clock_event_device, ptr %10, i32 0, i32 3
  %24 = load i64, ptr %23, align 16
  %25 = tail call i32 @clockevents_program_event(ptr noundef nonnull %19, i64 noundef %24, i1 noundef zeroext true) #11
  br label %158

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.clock_event_device, ptr %19, i32 0, i32 8
  %28 = load i32, ptr %27, align 16
  %29 = icmp eq i32 %28, 3
  br i1 %29, label %158, label %30

30:                                               ; preds = %26, %14, %1
  %31 = load ptr, ptr @tick_broadcast_device, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %158, label %33

33:                                               ; preds = %30
  tail call void @_raw_spin_lock(ptr noundef nonnull @tick_broadcast_lock) #11
  %34 = load ptr, ptr @tick_broadcast_device, align 4
  %35 = icmp eq i32 %0, 1
  br i1 %35, label %36, label %137

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.clock_event_device, ptr %34, i32 0, i32 9
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, 128
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.clock_event_device, ptr %34, i32 0, i32 3
  %43 = load i64, ptr %42, align 16
  %44 = icmp eq i64 %43, 9223372036854775807
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.clock_event_device, ptr %34, i32 0, i32 24
  %47 = load i32, ptr %46, align 16
  %48 = icmp eq i32 %47, %9
  br i1 %48, label %154, label %49

49:                                               ; preds = %45, %41, %36
  %50 = load i32, ptr getelementptr inbounds (%struct.tick_device, ptr @tick_broadcast_device, i32 0, i32 1), align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = select i1 %40, i32 0, i32 -16
  br label %154

54:                                               ; preds = %49
  %55 = tail call i32 @_test_and_set_bit(i32 noundef %9, ptr noundef nonnull @tick_broadcast_oneshot_mask) #11
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %154

57:                                               ; preds = %54
  %58 = lshr i32 %9, 5
  %59 = getelementptr i32, ptr @tick_broadcast_pending_mask, i32 %58
  %60 = load volatile i32, ptr %59, align 4
  %61 = and i32 %9, 31
  %62 = shl nuw i32 1, %61
  %63 = and i32 %60, %62
  %64 = icmp ne i32 %63, 0
  %65 = load i1, ptr @___tick_broadcast_oneshot_control.__already_done, align 1
  %66 = xor i1 %65, true
  %67 = select i1 %64, i1 %66, i1 false
  br i1 %67, label %68, label %69, !prof !14

68:                                               ; preds = %57
  store i1 true, ptr @___tick_broadcast_oneshot_control.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 826, i32 noundef 9, ptr noundef null) #11
  br label %69

69:                                               ; preds = %68, %57
  %70 = load i32, ptr %37, align 4
  %71 = and i32 %70, 128
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %86, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.clock_event_device, ptr %34, i32 0, i32 3
  %75 = load i64, ptr %74, align 16
  %76 = icmp eq i64 %75, 9223372036854775807
  br i1 %76, label %82, label %77

77:                                               ; preds = %73
  %78 = load i32, ptr %8, align 8
  %79 = getelementptr inbounds %struct.clock_event_device, ptr %34, i32 0, i32 24
  %80 = load i32, ptr %79, align 16
  %81 = icmp eq i32 %80, %78
  br i1 %81, label %87, label %82

82:                                               ; preds = %77, %73
  %83 = getelementptr inbounds %struct.clock_event_device, ptr %10, i32 0, i32 3
  %84 = load i64, ptr %83, align 16
  %85 = icmp slt i64 %84, %75
  br i1 %85, label %87, label %86

86:                                               ; preds = %82, %69
  tail call void @clockevents_switch_state(ptr noundef %10, i32 noundef 1) #11
  br label %87

87:                                               ; preds = %86, %82, %77
  %88 = getelementptr i32, ptr @tick_broadcast_force_mask, i32 %58
  %89 = load volatile i32, ptr %88, align 4
  %90 = and i32 %89, %62
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %154

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.clock_event_device, ptr %10, i32 0, i32 3
  %94 = load i64, ptr %93, align 16
  %95 = getelementptr inbounds %struct.clock_event_device, ptr %34, i32 0, i32 3
  %96 = load i64, ptr %95, align 16
  %97 = icmp slt i64 %94, %96
  br i1 %97, label %98, label %154

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.clock_event_device, ptr %34, i32 0, i32 8
  %100 = load i32, ptr %99, align 16
  %101 = icmp eq i32 %100, 3
  br i1 %101, label %103, label %102

102:                                              ; preds = %98
  tail call void @clockevents_switch_state(ptr noundef %34, i32 noundef 3) #11
  br label %103

103:                                              ; preds = %102, %98
  %104 = tail call i32 @clockevents_program_event(ptr noundef %34, i64 noundef %94, i1 noundef zeroext true) #11
  %105 = add nuw nsw i32 %61, 1
  %106 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %105
  %107 = sub nsw i32 0, %58
  %108 = getelementptr i32, ptr %106, i32 %107
  %109 = load i32, ptr %37, align 4
  %110 = and i32 %109, 32
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %125, label %112

112:                                              ; preds = %103
  %113 = getelementptr inbounds %struct.clock_event_device, ptr %34, i32 0, i32 25
  %114 = load ptr, ptr %113, align 4
  %115 = load i32, ptr %114, align 4
  %116 = load i32, ptr %108, align 4
  %117 = xor i32 %116, %115
  %118 = and i32 %117, 65535
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %112
  store ptr %108, ptr %113, align 4
  %121 = getelementptr inbounds %struct.clock_event_device, ptr %34, i32 0, i32 23
  %122 = load i32, ptr %121, align 4
  %123 = tail call i32 @irq_set_affinity(i32 noundef %122, ptr noundef %108) #11
  %124 = load i32, ptr %37, align 4
  br label %125

125:                                              ; preds = %120, %112, %103
  %126 = phi i32 [ %109, %103 ], [ %109, %112 ], [ %124, %120 ]
  %127 = and i32 %126, 128
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %154, label %129

129:                                              ; preds = %125
  %130 = load i64, ptr %95, align 16
  %131 = icmp eq i64 %130, 9223372036854775807
  br i1 %131, label %154, label %132

132:                                              ; preds = %129
  %133 = getelementptr inbounds %struct.clock_event_device, ptr %34, i32 0, i32 24
  %134 = load i32, ptr %133, align 16
  %135 = icmp eq i32 %134, %9
  br i1 %135, label %136, label %154

136:                                              ; preds = %132
  tail call void @_clear_bit(i32 noundef %9, ptr noundef nonnull @tick_broadcast_oneshot_mask) #11
  br label %154

137:                                              ; preds = %33
  %138 = tail call i32 @_test_and_clear_bit(i32 noundef %9, ptr noundef nonnull @tick_broadcast_oneshot_mask) #11
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %154, label %140

140:                                              ; preds = %137
  tail call void @clockevents_switch_state(ptr noundef %10, i32 noundef 3) #11
  %141 = tail call i32 @_test_and_clear_bit(i32 noundef %9, ptr noundef nonnull @tick_broadcast_pending_mask) #11
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %154

143:                                              ; preds = %140
  %144 = getelementptr inbounds %struct.clock_event_device, ptr %10, i32 0, i32 3
  %145 = load i64, ptr %144, align 16
  %146 = icmp eq i64 %145, 9223372036854775807
  br i1 %146, label %154, label %147

147:                                              ; preds = %143
  %148 = tail call i64 @ktime_get() #11
  %149 = load i64, ptr %144, align 16
  %150 = icmp sgt i64 %149, %148
  br i1 %150, label %152, label %151

151:                                              ; preds = %147
  tail call void @_set_bit(i32 noundef %9, ptr noundef nonnull @tick_broadcast_force_mask) #11
  br label %154

152:                                              ; preds = %147
  %153 = tail call i32 @tick_program_event(i64 noundef %149, i32 noundef 1) #11
  br label %154

154:                                              ; preds = %152, %151, %143, %140, %137, %136, %132, %129, %125, %92, %87, %54, %52, %45
  %155 = phi i32 [ 0, %54 ], [ -16, %136 ], [ 0, %92 ], [ 0, %140 ], [ 0, %143 ], [ 0, %151 ], [ 0, %152 ], [ 0, %137 ], [ %53, %52 ], [ -16, %87 ], [ -16, %45 ], [ 0, %132 ], [ 0, %125 ], [ 0, %129 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !9
  %156 = load i16, ptr @tick_broadcast_lock, align 64
  %157 = add i16 %156, 1
  store i16 %157, ptr @tick_broadcast_lock, align 64
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !12
  br label %158

158:                                              ; preds = %154, %30, %26, %22, %21
  %159 = phi i32 [ %155, %154 ], [ -16, %30 ], [ 0, %21 ], [ 0, %22 ], [ 0, %26 ]
  ret i32 %159
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hotplug_cpu__broadcast_tick_pull(i32 noundef %0) local_unnamed_addr #2 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @tick_broadcast_lock) #11
  %3 = load ptr, ptr @tick_broadcast_device, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.clock_event_device, ptr %3, i32 0, i32 9
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 128
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.clock_event_device, ptr %3, i32 0, i32 3
  %12 = load i64, ptr %11, align 16
  %13 = icmp eq i64 %12, 9223372036854775807
  br i1 %13, label %20, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.clock_event_device, ptr %3, i32 0, i32 24
  %16 = load i32, ptr %15, align 16
  %17 = icmp eq i32 %16, %0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = tail call i32 @clockevents_program_event(ptr noundef nonnull %3, i64 noundef %12, i1 noundef zeroext true) #11
  br label %20

20:                                               ; preds = %18, %14, %10, %5, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @tick_broadcast_lock, i32 noundef %2) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clockevents_program_event(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @tick_broadcast_oneshot_available() local_unnamed_addr #1 {
  %1 = load ptr, ptr @tick_broadcast_device, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 9
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 2
  %7 = icmp ne i32 %6, 0
  br label %8

8:                                                ; preds = %3, %0
  %9 = phi i1 [ %7, %3 ], [ false, %0 ]
  ret i1 %9
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync)
define dso_local void @tick_broadcast_init() local_unnamed_addr #6 section ".init.text" {
  store i32 0, ptr @tick_broadcast_mask, align 4
  store i32 0, ptr @tick_broadcast_on, align 4
  store i32 0, ptr @tmpmask, align 4
  store i32 0, ptr @tick_broadcast_oneshot_mask, align 4
  store i32 0, ptr @tick_broadcast_pending_mask, align 4
  store i32 0, ptr @tick_broadcast_force_mask, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tick_oneshot_wakeup_handler(ptr nocapture noundef readnone %0) #2 {
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %3) #7, !srcloc !13
  %5 = add i32 %4, ptrtoint (ptr @tick_cpu_device to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr %7, align 64
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void %10(ptr noundef nonnull %7) #11
  br label %13

13:                                               ; preds = %12, %9, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_broadcast(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tick_program_event(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_affinity(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tick_handle_oneshot_broadcast(ptr noundef %0) #2 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @tick_broadcast_lock) #11
  %2 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 3
  store i64 9223372036854775807, ptr %2, align 16
  store i32 0, ptr @tmpmask, align 4
  %3 = tail call i64 @ktime_get() #11
  %4 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @tick_broadcast_oneshot_mask) #12
  %5 = load i32, ptr @nr_cpu_ids, align 4
  %6 = icmp ult i32 %4, %5
  br i1 %6, label %7, label %32

7:                                                ; preds = %26, %1
  %8 = phi i32 [ %27, %26 ], [ %5, %1 ]
  %9 = phi i32 [ %30, %26 ], [ %4, %1 ]
  %10 = phi i64 [ %29, %26 ], [ 9223372036854775807, %1 ]
  %11 = phi i32 [ %28, %26 ], [ 0, %1 ]
  %12 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, ptrtoint (ptr @tick_cpu_device to i32)
  %15 = inttoptr i32 %14 to ptr
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.clock_event_device, ptr %16, i32 0, i32 3
  %18 = load i64, ptr %17, align 16
  %19 = icmp sgt i64 %18, %3
  br i1 %19, label %22, label %20

20:                                               ; preds = %7
  tail call void @_set_bit(i32 noundef %9, ptr noundef nonnull @tmpmask) #11
  tail call void @_set_bit(i32 noundef %9, ptr noundef nonnull @tick_broadcast_pending_mask) #11
  %21 = load i32, ptr @nr_cpu_ids, align 4
  br label %26

22:                                               ; preds = %7
  %23 = icmp slt i64 %18, %10
  %24 = select i1 %23, i32 %9, i32 %11
  %25 = tail call i64 @llvm.smin.i64(i64 %18, i64 %10)
  br label %26

26:                                               ; preds = %22, %20
  %27 = phi i32 [ %21, %20 ], [ %8, %22 ]
  %28 = phi i32 [ %11, %20 ], [ %24, %22 ]
  %29 = phi i64 [ %10, %20 ], [ %25, %22 ]
  %30 = tail call i32 @cpumask_next(i32 noundef %9, ptr noundef nonnull @tick_broadcast_oneshot_mask) #12
  %31 = icmp ult i32 %30, %27
  br i1 %31, label %7, label %32

32:                                               ; preds = %26, %1
  %33 = phi i32 [ 0, %1 ], [ %28, %26 ]
  %34 = phi i64 [ 9223372036854775807, %1 ], [ %29, %26 ]
  %35 = tail call ptr @llvm.thread.pointer() #11
  %36 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 2
  %37 = load i32, ptr %36, align 8
  tail call void @_clear_bit(i32 noundef %37, ptr noundef nonnull @tick_broadcast_pending_mask) #11
  %38 = load i32, ptr @tmpmask, align 4
  %39 = load i32, ptr @tick_broadcast_force_mask, align 4
  %40 = or i32 %39, %38
  store i32 %40, ptr @tmpmask, align 4
  store i32 0, ptr @tick_broadcast_force_mask, align 4
  %41 = load i32, ptr @__cpu_online_mask, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %40, 65535
  %44 = and i32 %43, %42
  %45 = icmp ne i32 %44, 0
  %46 = load i1, ptr @tick_handle_oneshot_broadcast.__already_done, align 1
  %47 = xor i1 %46, true
  %48 = select i1 %45, i1 %47, i1 false
  br i1 %48, label %49, label %50, !prof !14

49:                                               ; preds = %32
  store i1 true, ptr @tick_handle_oneshot_broadcast.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 736, i32 noundef 9, ptr noundef null) #11
  br label %50

50:                                               ; preds = %49, %32
  br i1 %45, label %51, label %56

51:                                               ; preds = %50
  %52 = load i32, ptr @tmpmask, align 4
  %53 = load i32, ptr @__cpu_online_mask, align 4
  %54 = and i32 %52, 65535
  %55 = and i32 %54, %53
  store i32 %55, ptr @tmpmask, align 4
  br label %56

56:                                               ; preds = %51, %50
  %57 = load i32, ptr %36, align 8
  %58 = lshr i32 %57, 5
  %59 = getelementptr i32, ptr @tmpmask, i32 %58
  %60 = load volatile i32, ptr %59, align 4
  %61 = and i32 %57, 31
  %62 = shl nuw i32 1, %61
  %63 = and i32 %62, %60
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %56
  %66 = load ptr, ptr @tick_broadcast_device, align 4
  tail call void @_clear_bit(i32 noundef %57, ptr noundef nonnull @tmpmask) #11
  %67 = getelementptr inbounds %struct.clock_event_device, ptr %66, i32 0, i32 9
  %68 = load i32, ptr %67, align 4
  %69 = and i32 %68, 128
  %70 = icmp eq i32 %69, 0
  br label %71

71:                                               ; preds = %65, %56
  %72 = phi i1 [ %70, %65 ], [ false, %56 ]
  %73 = load i32, ptr @tmpmask, align 4
  %74 = and i32 %73, 65535
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %85, label %76

76:                                               ; preds = %71
  %77 = tail call i32 @_find_first_bit_le(ptr noundef nonnull @tmpmask, i32 noundef 16) #11
  %78 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %77
  %79 = load i32, ptr %78, align 4
  %80 = add i32 %79, ptrtoint (ptr @tick_cpu_device to i32)
  %81 = inttoptr i32 %80 to ptr
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.clock_event_device, ptr %82, i32 0, i32 16
  %84 = load ptr, ptr %83, align 16
  tail call void %84(ptr noundef nonnull @tmpmask) #11
  br label %85

85:                                               ; preds = %76, %71
  %86 = icmp eq i64 %34, 9223372036854775807
  br i1 %86, label %116, label %87

87:                                               ; preds = %85
  %88 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 8
  %89 = load i32, ptr %88, align 16
  %90 = icmp eq i32 %89, 3
  br i1 %90, label %92, label %91

91:                                               ; preds = %87
  tail call void @clockevents_switch_state(ptr noundef %0, i32 noundef 3) #11
  br label %92

92:                                               ; preds = %91, %87
  %93 = tail call i32 @clockevents_program_event(ptr noundef %0, i64 noundef %34, i1 noundef zeroext true) #11
  %94 = and i32 %33, 31
  %95 = add nuw nsw i32 %94, 1
  %96 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %95
  %97 = lshr i32 %33, 5
  %98 = sub nsw i32 0, %97
  %99 = getelementptr i32, ptr %96, i32 %98
  %100 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 9
  %101 = load i32, ptr %100, align 4
  %102 = and i32 %101, 32
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %116, label %104

104:                                              ; preds = %92
  %105 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 25
  %106 = load ptr, ptr %105, align 4
  %107 = load i32, ptr %106, align 4
  %108 = load i32, ptr %99, align 4
  %109 = xor i32 %108, %107
  %110 = and i32 %109, 65535
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %104
  store ptr %99, ptr %105, align 4
  %113 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 23
  %114 = load i32, ptr %113, align 4
  %115 = tail call i32 @irq_set_affinity(i32 noundef %114, ptr noundef %99) #11
  br label %116

116:                                              ; preds = %112, %104, %92, %85
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !9
  %117 = load i16, ptr @tick_broadcast_lock, align 64
  %118 = add i16 %117, 1
  store i16 %118, ptr @tick_broadcast_lock, align 64
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !12
  br i1 %72, label %119, label %127

119:                                              ; preds = %116
  %120 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %121 = inttoptr i32 %120 to ptr
  %122 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %121) #7, !srcloc !13
  %123 = add i32 %122, ptrtoint (ptr @tick_cpu_device to i32)
  %124 = inttoptr i32 %123 to ptr
  %125 = load ptr, ptr %124, align 4
  %126 = load ptr, ptr %125, align 64
  tail call void %126(ptr noundef %125) #11
  br label %127

127:                                              ; preds = %119, %116
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind readonly willreturn }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{i64 2149251055}
!10 = !{i64 2149246879}
!11 = !{i64 2149246954, i64 2149246981, i64 2149247028, i64 2149247050, i64 2149247078, i64 2149247098}
!12 = !{i64 2149274058}
!13 = !{i64 649966}
!14 = !{!"branch_weights", i32 1, i32 2000}
