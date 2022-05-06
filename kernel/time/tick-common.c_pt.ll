; ModuleID = '/llk/IR/kernel/time/tick-common.c_pt.bc'
source_filename = "../kernel/time/tick-common.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tick_broadcast_oneshot_control:\09\09\09\09\09"
module asm "\09.asciz \09\22tick_broadcast_oneshot_control\22\09\09\09\09\09"
module asm "__kstrtabns_tick_broadcast_oneshot_control:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.tick_device = type { ptr, i32 }
%struct.seqcount_raw_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [60 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@tick_do_timer_cpu = dso_local local_unnamed_addr global i32 -2, section ".data..read_mostly", align 4
@tick_cpu_device = dso_local global %struct.tick_device zeroinitializer, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@jiffies_seq = external dso_local global %struct.seqcount_raw_spinlock, align 4
@tick_next_period = dso_local local_unnamed_addr global i64 0, align 8
@__kstrtab_tick_broadcast_oneshot_control = external dso_local constant [0 x i8], align 1
@__kstrtabns_tick_broadcast_oneshot_control = external dso_local constant [0 x i8], align 1
@__ksymtab_tick_broadcast_oneshot_control = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tick_broadcast_oneshot_control to i32), ptr @__kstrtab_tick_broadcast_oneshot_control, ptr @__kstrtabns_tick_broadcast_oneshot_control }, section "___ksymtab_gpl+tick_broadcast_oneshot_control", align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@tick_freeze_lock = internal global %struct.raw_spinlock zeroinitializer, align 4
@tick_freeze_depth = internal unnamed_addr global i32 0, align 4
@tick_freeze.___tp_str = internal global ptr @.str.1, section "__tracepoint_str", align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"timekeeping_freeze\00", align 1
@system_state = external dso_local local_unnamed_addr global i32, align 4
@tick_unfreeze.___tp_str = internal global ptr @.str.1, section "__tracepoint_str", align 4
@jiffies_lock = external dso_local global %struct.raw_spinlock, align 4
@__irq_regs = external dso_local global ptr, section ".data..percpu", align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@__tracepoint_suspend_resume = external dso_local global %struct.tracepoint, align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_tick_broadcast_oneshot_control, ptr @tick_freeze.___tp_str, ptr @tick_unfreeze.___tp_str], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @tick_get_device(i32 noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @tick_cpu_device to i32)
  %5 = inttoptr i32 %4 to ptr
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tick_is_oneshot_available() local_unnamed_addr #1 {
  %1 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %2 = inttoptr i32 %1 to ptr
  %3 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %2) #4, !srcloc !9
  %4 = add i32 %3, ptrtoint (ptr @tick_cpu_device to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %0
  %9 = getelementptr inbounds %struct.clock_event_device, ptr %6, i32 0, i32 9
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %8
  %14 = and i32 %10, 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = tail call zeroext i1 @tick_broadcast_oneshot_available() #6
  %18 = zext i1 %17 to i32
  br label %19

19:                                               ; preds = %16, %13, %8, %0
  %20 = phi i32 [ %18, %16 ], [ 0, %8 ], [ 0, %0 ], [ 1, %13 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tick_broadcast_oneshot_available() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tick_handle_periodic(ptr noundef %0) #1 {
  %2 = tail call ptr @llvm.thread.pointer() #6
  %3 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 3
  %6 = load i64, ptr %5, align 16
  tail call fastcc void @tick_periodic(i32 noundef %4)
  %7 = load ptr, ptr %0, align 64
  %8 = icmp eq ptr %7, @tick_handle_periodic
  br i1 %8, label %9, label %26

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 8
  %11 = load i32, ptr %10, align 16
  %12 = icmp eq i32 %11, 3
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = add i64 %6, 10000000
  %15 = tail call i32 @clockevents_program_event(ptr noundef %0, i64 noundef %14, i1 noundef zeroext false) #6
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %22, %13
  %18 = phi i64 [ %23, %22 ], [ %14, %13 ]
  %19 = tail call i32 @timekeeping_valid_for_hres() #6
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call fastcc void @tick_periodic(i32 noundef %4)
  br label %22

22:                                               ; preds = %21, %17
  %23 = add i64 %18, 10000000
  %24 = tail call i32 @clockevents_program_event(ptr noundef %0, i64 noundef %23, i1 noundef zeroext false) #6
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %17

26:                                               ; preds = %22, %13, %9, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tick_periodic(i32 noundef %0) unnamed_addr #1 {
  %2 = load i32, ptr @tick_do_timer_cpu, align 4
  %3 = icmp eq i32 %2, %0
  br i1 %3, label %4, label %13

4:                                                ; preds = %1
  tail call void @_raw_spin_lock(ptr noundef nonnull @jiffies_lock) #6
  %5 = load i32, ptr @jiffies_seq, align 4
  %6 = add i32 %5, 1
  store i32 %6, ptr @jiffies_seq, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #6, !srcloc !10
  %7 = load i64, ptr @tick_next_period, align 8
  %8 = add i64 %7, 10000000
  store i64 %8, ptr @tick_next_period, align 8
  tail call void @do_timer(i32 noundef 1) #6
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #6, !srcloc !11
  %9 = load i32, ptr @jiffies_seq, align 4
  %10 = add i32 %9, 1
  store i32 %10, ptr @jiffies_seq, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !12
  %11 = load i16, ptr @jiffies_lock, align 4
  %12 = add i16 %11, 1
  store i16 %12, ptr @jiffies_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !15
  tail call void @update_wall_time() #6
  br label %13

13:                                               ; preds = %4, %1
  %14 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %15 = inttoptr i32 %14 to ptr
  %16 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %15) #4, !srcloc !9
  %17 = add i32 %16, ptrtoint (ptr @__irq_regs to i32)
  %18 = inttoptr i32 %17 to ptr
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr [18 x i32], ptr %19, i32 0, i32 16
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 15
  %23 = icmp eq i32 %22, 0
  %24 = zext i1 %23 to i32
  tail call void @update_process_times(i32 noundef %24) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clockevents_program_event(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @timekeeping_valid_for_hres() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tick_setup_periodic(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  tail call void @tick_set_periodic_handler(ptr noundef %0, i32 noundef %1) #6
  %3 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 9
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 16
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %34

7:                                                ; preds = %2
  %8 = and i32 %4, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %11, %7
  br label %15

11:                                               ; preds = %7
  %12 = tail call i32 @tick_broadcast_oneshot_active() #6
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %10

14:                                               ; preds = %11
  tail call void @clockevents_switch_state(ptr noundef %0, i32 noundef 2) #6
  br label %34

15:                                               ; preds = %23, %10
  %16 = load volatile i32, ptr @jiffies_seq, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %19, %15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !16
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !17
  %20 = load volatile i32, ptr @jiffies_seq, align 4
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %19

23:                                               ; preds = %19, %15
  %24 = phi i32 [ %16, %15 ], [ %20, %19 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !18
  %25 = load i64, ptr @tick_next_period, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !19
  %26 = load volatile i32, ptr @jiffies_seq, align 4
  %27 = icmp eq i32 %26, %24
  br i1 %27, label %28, label %15

28:                                               ; preds = %23
  tail call void @clockevents_switch_state(ptr noundef %0, i32 noundef 3) #6
  br label %29

29:                                               ; preds = %29, %28
  %30 = phi i64 [ %25, %28 ], [ %33, %29 ]
  %31 = tail call i32 @clockevents_program_event(ptr noundef %0, i64 noundef %30, i1 noundef zeroext false) #6
  %32 = icmp eq i32 %31, 0
  %33 = add i64 %30, 10000000
  br i1 %32, label %34, label %29

34:                                               ; preds = %29, %14, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_set_periodic_handler(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tick_broadcast_oneshot_active() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_switch_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tick_install_replacement(ptr noundef %0) local_unnamed_addr #1 {
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %3) #4, !srcloc !9
  %5 = add i32 %4, ptrtoint (ptr @tick_cpu_device to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = tail call ptr @llvm.thread.pointer() #6
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = load ptr, ptr %6, align 4
  tail call void @clockevents_exchange_device(ptr noundef %10, ptr noundef %0) #6
  %11 = and i32 %9, 31
  %12 = add nuw nsw i32 %11, 1
  %13 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %12
  %14 = lshr i32 %9, 5
  %15 = sub nsw i32 0, %14
  %16 = getelementptr i32, ptr %13, i32 %15
  tail call fastcc void @tick_setup_device(ptr noundef %6, ptr noundef %0, i32 noundef %9, ptr noundef %16)
  %17 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 9
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  tail call void @tick_oneshot_notify() #6
  br label %22

22:                                               ; preds = %21, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_exchange_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tick_setup_device(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #1 {
  %5 = load ptr, ptr %0, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %4
  %8 = load i32, ptr @tick_do_timer_cpu, align 4
  %9 = icmp eq i32 %8, -2
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  store i32 %2, ptr @tick_do_timer_cpu, align 4
  %11 = tail call i64 @ktime_get() #6
  store i64 %11, ptr @tick_next_period, align 8
  br label %12

12:                                               ; preds = %10, %7
  %13 = getelementptr inbounds %struct.tick_device, ptr %0, i32 0, i32 1
  store i32 0, ptr %13, align 4
  br label %18

14:                                               ; preds = %4
  %15 = load ptr, ptr %5, align 64
  %16 = getelementptr inbounds %struct.clock_event_device, ptr %5, i32 0, i32 3
  %17 = load i64, ptr %16, align 16
  store ptr @clockevents_handle_noop, ptr %5, align 64
  br label %18

18:                                               ; preds = %14, %12
  %19 = phi ptr [ %15, %14 ], [ null, %12 ]
  %20 = phi i64 [ %17, %14 ], [ 0, %12 ]
  store ptr %1, ptr %0, align 4
  %21 = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 25
  %22 = load ptr, ptr %21, align 4
  %23 = load i32, ptr %22, align 4
  %24 = load i32, ptr %3, align 4
  %25 = xor i32 %24, %23
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 23
  %30 = load i32, ptr %29, align 4
  %31 = tail call i32 @irq_set_affinity(i32 noundef %30, ptr noundef %3) #6
  br label %32

32:                                               ; preds = %28, %18
  %33 = tail call i32 @tick_device_uses_broadcast(ptr noundef %1, i32 noundef %2) #6
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.tick_device, ptr %0, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  tail call void @tick_setup_periodic(ptr noundef %1, i32 noundef 0)
  br label %41

40:                                               ; preds = %35
  tail call void @tick_setup_oneshot(ptr noundef %1, ptr noundef %19, i64 noundef %20) #6
  br label %41

41:                                               ; preds = %40, %39, %32
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_oneshot_notify() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @tick_check_replacement(ptr noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = tail call ptr @llvm.thread.pointer() #6
  %4 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 25
  %7 = load ptr, ptr %6, align 4
  %8 = lshr i32 %5, 5
  %9 = getelementptr i32, ptr %7, i32 %8
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %5, 31
  %12 = shl nuw i32 1, %11
  %13 = and i32 %10, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %78, label %15

15:                                               ; preds = %2
  %16 = add nuw nsw i32 %11, 1
  %17 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %16
  %18 = sub nsw i32 0, %8
  %19 = getelementptr i32, ptr %17, i32 %18
  %20 = load i32, ptr %7, align 4
  %21 = load i32, ptr %19, align 4
  %22 = xor i32 %21, %20
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %41, label %25

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 23
  %27 = load i32, ptr %26, align 4
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = tail call i32 @irq_can_set_affinity(i32 noundef %27) #6
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %78, label %32

32:                                               ; preds = %29, %25
  %33 = icmp eq ptr %0, null
  br i1 %33, label %46, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 25
  %36 = load ptr, ptr %35, align 4
  %37 = load i32, ptr %36, align 4
  %38 = xor i32 %37, %21
  %39 = and i32 %38, 65535
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %78, label %41

41:                                               ; preds = %34, %15
  %42 = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 9
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, 2
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %51, label %61

46:                                               ; preds = %32
  %47 = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 9
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, 2
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %58, label %78

51:                                               ; preds = %41
  %52 = icmp eq ptr %0, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 9
  %55 = load i32, ptr %54, align 4
  %56 = and i32 %55, 2
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %78

58:                                               ; preds = %53, %51, %46
  %59 = tail call i32 @tick_oneshot_mode_active() #6
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %58, %41
  %62 = icmp eq ptr %0, null
  br i1 %62, label %78, label %63

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 22
  %65 = load i32, ptr %64, align 8
  %66 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 22
  %67 = load i32, ptr %66, align 8
  %68 = icmp sgt i32 %65, %67
  br i1 %68, label %78, label %69

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 25
  %71 = load ptr, ptr %70, align 4
  %72 = load ptr, ptr %6, align 4
  %73 = load i32, ptr %71, align 4
  %74 = load i32, ptr %72, align 4
  %75 = xor i32 %74, %73
  %76 = and i32 %75, 65535
  %77 = icmp ne i32 %76, 0
  br label %78

78:                                               ; preds = %69, %63, %61, %58, %53, %46, %34, %29, %2
  %79 = phi i1 [ false, %53 ], [ false, %58 ], [ true, %63 ], [ true, %61 ], [ %77, %69 ], [ false, %2 ], [ false, %29 ], [ false, %34 ], [ true, %46 ]
  ret i1 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tick_check_new_device(ptr noundef %0) local_unnamed_addr #1 {
  %2 = tail call ptr @llvm.thread.pointer() #6
  %3 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %4
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, ptrtoint (ptr @tick_cpu_device to i32)
  %8 = inttoptr i32 %7 to ptr
  %9 = load ptr, ptr %8, align 4
  %10 = tail call zeroext i1 @tick_check_replacement(ptr noundef %9, ptr noundef %0)
  br i1 %10, label %11, label %32

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 27
  %13 = load ptr, ptr %12, align 64
  %14 = tail call zeroext i1 @try_module_get(ptr noundef %13) #6
  br i1 %14, label %15, label %33

15:                                               ; preds = %11
  %16 = tail call i32 @tick_is_broadcast_device(ptr noundef %9) #6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  tail call void @clockevents_shutdown(ptr noundef %9) #6
  br label %19

19:                                               ; preds = %18, %15
  %20 = phi ptr [ null, %18 ], [ %9, %15 ]
  tail call void @clockevents_exchange_device(ptr noundef %20, ptr noundef %0) #6
  %21 = and i32 %4, 31
  %22 = add nuw nsw i32 %21, 1
  %23 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %22
  %24 = lshr i32 %4, 5
  %25 = sub nsw i32 0, %24
  %26 = getelementptr i32, ptr %23, i32 %25
  tail call fastcc void @tick_setup_device(ptr noundef %8, ptr noundef %0, i32 noundef %4, ptr noundef %26)
  %27 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 9
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 2
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %19
  tail call void @tick_oneshot_notify() #6
  br label %33

32:                                               ; preds = %1
  tail call void @tick_install_broadcast_device(ptr noundef %0, i32 noundef %4) #6
  br label %33

33:                                               ; preds = %32, %31, %19, %11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tick_is_broadcast_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_shutdown(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_install_broadcast_device(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tick_broadcast_oneshot_control(i32 noundef %0) #1 {
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %3) #4, !srcloc !9
  %5 = add i32 %4, ptrtoint (ptr @tick_cpu_device to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.clock_event_device, ptr %7, i32 0, i32 9
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = tail call i32 @__tick_broadcast_oneshot_control(i32 noundef %0) #6
  br label %14

14:                                               ; preds = %12, %1
  %15 = phi i32 [ %13, %12 ], [ 0, %1 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tick_broadcast_oneshot_control(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tick_handover_do_timer() local_unnamed_addr #1 {
  %1 = load i32, ptr @tick_do_timer_cpu, align 4
  %2 = tail call ptr @llvm.thread.pointer() #6
  %3 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %1, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = tail call i32 @_find_first_bit_le(ptr noundef nonnull @__cpu_online_mask, i32 noundef 16) #6
  store i32 %7, ptr @tick_do_timer_cpu, align 4
  br label %8

8:                                                ; preds = %6, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tick_shutdown(i32 noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @tick_cpu_device to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tick_device, ptr %5, i32 0, i32 1
  store i32 0, ptr %7, align 4
  %8 = icmp eq ptr %6, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.clock_event_device, ptr %6, i32 0, i32 8
  store i32 0, ptr %10, align 16
  tail call void @clockevents_exchange_device(ptr noundef nonnull %6, ptr noundef null) #6
  store ptr @clockevents_handle_noop, ptr %6, align 64
  store ptr null, ptr %5, align 4
  br label %11

11:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_handle_noop(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tick_suspend_local() local_unnamed_addr #1 {
  %1 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %2 = inttoptr i32 %1 to ptr
  %3 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %2) #4, !srcloc !9
  %4 = add i32 %3, ptrtoint (ptr @tick_cpu_device to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = load ptr, ptr %5, align 4
  tail call void @clockevents_shutdown(ptr noundef %6) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tick_resume_local() local_unnamed_addr #1 {
  %1 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %2 = inttoptr i32 %1 to ptr
  %3 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %2) #4, !srcloc !9
  %4 = add i32 %3, ptrtoint (ptr @tick_cpu_device to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = tail call zeroext i1 @tick_resume_check_broadcast() #6
  %7 = load ptr, ptr %5, align 4
  %8 = tail call i32 @clockevents_tick_resume(ptr noundef %7) #6
  br i1 %6, label %16, label %9

9:                                                ; preds = %0
  %10 = getelementptr inbounds %struct.tick_device, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load ptr, ptr %5, align 4
  tail call void @tick_setup_periodic(ptr noundef %14, i32 noundef 0)
  br label %16

15:                                               ; preds = %9
  tail call void @tick_resume_oneshot() #6
  br label %16

16:                                               ; preds = %15, %13, %0
  tail call void @hrtimers_resume_local() #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tick_resume_check_broadcast() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clockevents_tick_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_resume_oneshot() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimers_resume_local() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tick_suspend() local_unnamed_addr #1 {
  %1 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %2 = inttoptr i32 %1 to ptr
  %3 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %2) #4, !srcloc !9
  %4 = add i32 %3, ptrtoint (ptr @tick_cpu_device to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = load ptr, ptr %5, align 4
  tail call void @clockevents_shutdown(ptr noundef %6) #6
  tail call void @tick_suspend_broadcast() #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_suspend_broadcast() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tick_resume() local_unnamed_addr #1 {
  tail call void @tick_resume_broadcast() #6
  %1 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %2 = inttoptr i32 %1 to ptr
  %3 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %2) #4, !srcloc !9
  %4 = add i32 %3, ptrtoint (ptr @tick_cpu_device to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = tail call zeroext i1 @tick_resume_check_broadcast() #6
  %7 = load ptr, ptr %5, align 4
  %8 = tail call i32 @clockevents_tick_resume(ptr noundef %7) #6
  br i1 %6, label %16, label %9

9:                                                ; preds = %0
  %10 = getelementptr inbounds %struct.tick_device, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load ptr, ptr %5, align 4
  tail call void @tick_setup_periodic(ptr noundef %14, i32 noundef 0) #6
  br label %16

15:                                               ; preds = %9
  tail call void @tick_resume_oneshot() #6
  br label %16

16:                                               ; preds = %15, %13, %0
  tail call void @hrtimers_resume_local() #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_resume_broadcast() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tick_freeze() local_unnamed_addr #1 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @tick_freeze_lock) #6
  %1 = load i32, ptr @tick_freeze_depth, align 4
  %2 = add i32 %1, 1
  store i32 %2, ptr @tick_freeze_depth, align 4
  %3 = load volatile i32, ptr @__num_online_cpus, align 4
  %4 = icmp eq i32 %2, %3
  br i1 %4, label %5, label %25

5:                                                ; preds = %0
  %6 = load ptr, ptr @tick_freeze.___tp_str, align 4
  %7 = tail call ptr @llvm.thread.pointer() #6
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_suspend_resume, i32 0, i32 1), align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %5
  %13 = lshr i32 %9, 5
  %14 = getelementptr i32, ptr @__cpu_online_mask, i32 %13
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %9, 31
  %17 = shl nuw i32 1, %16
  %18 = and i32 %15, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %12
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !20
  %21 = tail call i32 @__traceiter_suspend_resume(ptr noundef null, ptr noundef %6, i32 noundef %9, i1 noundef zeroext true) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !21
  br label %22

22:                                               ; preds = %20, %12, %5
  store i32 7, ptr @system_state, align 4
  %23 = tail call i32 @sched_clock_suspend() #6
  %24 = tail call i32 @timekeeping_suspend() #6
  br label %32

25:                                               ; preds = %0
  %26 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %27 = inttoptr i32 %26 to ptr
  %28 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %27) #4, !srcloc !9
  %29 = add i32 %28, ptrtoint (ptr @tick_cpu_device to i32)
  %30 = inttoptr i32 %29 to ptr
  %31 = load ptr, ptr %30, align 4
  tail call void @clockevents_shutdown(ptr noundef %31) #6
  br label %32

32:                                               ; preds = %25, %22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !12
  %33 = load i16, ptr @tick_freeze_lock, align 4
  %34 = add i16 %33, 1
  store i16 %34, ptr @tick_freeze_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sched_clock_suspend() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @timekeeping_suspend() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tick_unfreeze() local_unnamed_addr #1 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @tick_freeze_lock) #6
  %1 = load i32, ptr @tick_freeze_depth, align 4
  %2 = load volatile i32, ptr @__num_online_cpus, align 4
  %3 = icmp eq i32 %1, %2
  br i1 %3, label %4, label %21

4:                                                ; preds = %0
  tail call void @timekeeping_resume() #6
  tail call void @sched_clock_resume() #6
  store i32 3, ptr @system_state, align 4
  %5 = load ptr, ptr @tick_unfreeze.___tp_str, align 4
  %6 = tail call ptr @llvm.thread.pointer() #6
  %7 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_suspend_resume, i32 0, i32 1), align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %38

11:                                               ; preds = %4
  %12 = lshr i32 %8, 5
  %13 = getelementptr i32, ptr @__cpu_online_mask, i32 %12
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %8, 31
  %16 = shl nuw i32 1, %15
  %17 = and i32 %14, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %38, label %19

19:                                               ; preds = %11
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !20
  %20 = tail call i32 @__traceiter_suspend_resume(ptr noundef null, ptr noundef %5, i32 noundef %8, i1 noundef zeroext false) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !21
  br label %38

21:                                               ; preds = %0
  %22 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %23 = inttoptr i32 %22 to ptr
  %24 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %23) #4, !srcloc !9
  %25 = add i32 %24, ptrtoint (ptr @tick_cpu_device to i32)
  %26 = inttoptr i32 %25 to ptr
  %27 = tail call zeroext i1 @tick_resume_check_broadcast() #6
  %28 = load ptr, ptr %26, align 4
  %29 = tail call i32 @clockevents_tick_resume(ptr noundef %28) #6
  br i1 %27, label %37, label %30

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.tick_device, ptr %26, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load ptr, ptr %26, align 4
  tail call void @tick_setup_periodic(ptr noundef %35, i32 noundef 0) #6
  br label %37

36:                                               ; preds = %30
  tail call void @tick_resume_oneshot() #6
  br label %37

37:                                               ; preds = %36, %34, %21
  tail call void @hrtimers_resume_local() #6
  br label %38

38:                                               ; preds = %37, %19, %11, %4
  %39 = load i32, ptr @tick_freeze_depth, align 4
  %40 = add i32 %39, -1
  store i32 %40, ptr @tick_freeze_depth, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !12
  %41 = load i16, ptr @tick_freeze_lock, align 4
  %42 = add i16 %41, 1
  store i16 %42, ptr @tick_freeze_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @timekeeping_resume() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_resume() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @tick_init() local_unnamed_addr #3 section ".init.text" {
  tail call void @tick_broadcast_init() #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_broadcast_init() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_timer(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_wall_time() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_process_times(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_affinity(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tick_device_uses_broadcast(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_setup_oneshot(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_can_set_affinity(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tick_oneshot_mode_active() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_suspend_resume(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind }

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
!9 = !{i64 634051}
!10 = !{i64 2149654502}
!11 = !{i64 2149654803}
!12 = !{i64 2149235140}
!13 = !{i64 2149230964}
!14 = !{i64 2149231039, i64 2149231066, i64 2149231113, i64 2149231135, i64 2149231163, i64 2149231183}
!15 = !{i64 2149258143}
!16 = !{i64 2154290310}
!17 = !{i64 2154290152}
!18 = !{i64 2154290454}
!19 = !{i64 2149654203}
!20 = !{i64 2153945477}
!21 = !{i64 2153945653}
