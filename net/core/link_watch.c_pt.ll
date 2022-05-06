; ModuleID = '/llk/IR/net/core/link_watch.c_pt.bc'
source_filename = "../net/core/link_watch.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_linkwatch_fire_event:\09\09\09\09\09"
module asm "\09.asciz \09\22linkwatch_fire_event\22\09\09\09\09\09"
module asm "__kstrtabns_linkwatch_fire_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.134, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.134 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.netdev_queue = type { ptr, %struct.netdevice_tracker, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, [4 x i8], %struct.spinlock, i32, i32, i32, [48 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [52 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [24 x i8] }

@lweventlist_lock = internal global %struct.spinlock zeroinitializer, align 4
@__kstrtab_linkwatch_fire_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_linkwatch_fire_event = external dso_local constant [0 x i8], align 1
@__ksymtab_linkwatch_fire_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @linkwatch_fire_event to i32), ptr @__kstrtab_linkwatch_fire_event, ptr @__kstrtabns_linkwatch_fire_event }, section "___ksymtab+linkwatch_fire_event", align 4
@dev_base_lock = external dso_local global %struct.rwlock_t, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@linkwatch_nextevent = internal unnamed_addr global i32 0, align 4
@linkwatch_flags = internal global i32 0, align 4
@lweventlist = internal global %struct.list_head { ptr @lweventlist, ptr @lweventlist }, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@linkwatch_work = internal global %struct.delayed_work { %struct.work_struct { %struct.atomic_t { i32 -32 }, %struct.list_head { ptr getelementptr (i8, ptr @linkwatch_work, i64 4), ptr getelementptr (i8, ptr @linkwatch_work, i64 4) }, ptr @linkwatch_event }, %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @delayed_work_timer_fn, i32 2097152 }, ptr null, i32 0 }, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_linkwatch_fire_event], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @linkwatch_init_dev(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = load volatile i32, ptr %2, align 4
  %8 = and i32 %7, 16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = load volatile i32, ptr %2, align 4
  %12 = and i32 %11, 32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %49, label %14

14:                                               ; preds = %10, %6, %1
  %15 = load volatile i32, ptr %2, align 4
  %16 = and i32 %15, 32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %14
  %19 = load volatile i32, ptr %2, align 4
  %20 = and i32 %19, 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 17
  %24 = load i32, ptr %23, align 4
  %25 = tail call i32 @dev_get_iflink(ptr noundef %0) #4
  %26 = icmp eq i32 %24, %25
  %27 = select i1 %26, i8 2, i8 3
  br label %33

28:                                               ; preds = %18
  %29 = load volatile i32, ptr %2, align 4
  %30 = and i32 %29, 16
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i8 6, i8 5
  br label %33

33:                                               ; preds = %28, %22, %14
  %34 = phi i8 [ %27, %22 ], [ 4, %14 ], [ %32, %28 ]
  %35 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 45
  %36 = load i8, ptr %35, align 4
  %37 = icmp eq i8 %34, %36
  br i1 %37, label %49, label %38

38:                                               ; preds = %33
  tail call void @_raw_write_lock(ptr noundef nonnull @dev_base_lock) #4
  %39 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 46
  %40 = load i8, ptr %39, align 1
  switch i8 %40, label %47 [
    i8 2, label %41
    i8 1, label %44
  ]

41:                                               ; preds = %38
  %42 = icmp eq i8 %34, 6
  %43 = select i1 %42, i8 4, i8 %34
  br label %47

44:                                               ; preds = %38
  %45 = icmp eq i8 %34, 6
  %46 = select i1 %45, i8 5, i8 %34
  br label %47

47:                                               ; preds = %44, %41, %38
  %48 = phi i8 [ %34, %38 ], [ %46, %44 ], [ %43, %41 ]
  store i8 %48, ptr %35, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !9
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @dev_base_lock, i32 0) #4, !srcloc !10
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !13
  br label %49

49:                                               ; preds = %47, %33, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @linkwatch_forget_dev(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @lweventlist_lock) #4
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 101
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 101, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %8, ptr %9, align 4
  store volatile ptr %4, ptr %8, align 4
  store volatile ptr %3, ptr %3, align 4
  store ptr %3, ptr %7, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @lweventlist_lock, i32 noundef %2) #4
  tail call fastcc void @linkwatch_do_dev(ptr noundef %0)
  br label %11

10:                                               ; preds = %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @lweventlist_lock, i32 noundef %2) #4
  br label %11

11:                                               ; preds = %10, %6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @linkwatch_do_dev(ptr noundef %0) unnamed_addr #0 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !14
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %2) #4
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %21

6:                                                ; preds = %1
  %7 = load volatile i32, ptr %2, align 4
  %8 = and i32 %7, 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 17
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @dev_get_iflink(ptr noundef %0) #4
  %14 = icmp eq i32 %12, %13
  %15 = select i1 %14, i8 2, i8 3
  br label %21

16:                                               ; preds = %6
  %17 = load volatile i32, ptr %2, align 4
  %18 = and i32 %17, 16
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i8 6, i8 5
  br label %21

21:                                               ; preds = %16, %10, %1
  %22 = phi i8 [ %15, %10 ], [ 4, %1 ], [ %20, %16 ]
  %23 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 45
  %24 = load i8, ptr %23, align 4
  %25 = icmp eq i8 %22, %24
  br i1 %25, label %37, label %26

26:                                               ; preds = %21
  tail call void @_raw_write_lock(ptr noundef nonnull @dev_base_lock) #4
  %27 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 46
  %28 = load i8, ptr %27, align 1
  switch i8 %28, label %35 [
    i8 2, label %29
    i8 1, label %32
  ]

29:                                               ; preds = %26
  %30 = icmp eq i8 %22, 6
  %31 = select i1 %30, i8 4, i8 %22
  br label %35

32:                                               ; preds = %26
  %33 = icmp eq i8 %22, 6
  %34 = select i1 %33, i8 5, i8 %22
  br label %35

35:                                               ; preds = %32, %29, %26
  %36 = phi i8 [ %22, %26 ], [ %34, %32 ], [ %31, %29 ]
  store i8 %36, ptr %23, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !9
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @dev_base_lock, i32 0) #4, !srcloc !10
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !13
  br label %37

37:                                               ; preds = %35, %21
  %38 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %37
  %43 = load volatile i32, ptr %2, align 4
  %44 = and i32 %43, 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  tail call void @dev_activate(ptr noundef %0) #4
  br label %48

47:                                               ; preds = %42
  tail call void @dev_deactivate(ptr noundef %0) #4
  br label %48

48:                                               ; preds = %47, %46
  tail call void @netdev_state_change(ptr noundef %0) #4
  br label %49

49:                                               ; preds = %48, %37
  %50 = icmp eq ptr %0, null
  br i1 %50, label %63, label %51

51:                                               ; preds = %49
  %52 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #4, !srcloc !15
  %53 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 99
  %54 = load ptr, ptr %53, align 8
  %55 = ptrtoint ptr %54 to i32
  %56 = tail call i32 @llvm.read_register.i32(metadata !0) #4
  %57 = inttoptr i32 %56 to ptr
  %58 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %57) #3, !srcloc !16
  %59 = add i32 %58, %55
  %60 = inttoptr i32 %59 to ptr
  %61 = load i32, ptr %60, align 4
  %62 = add i32 %61, -1
  store i32 %62, ptr %60, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %52) #4, !srcloc !17
  br label %63

63:                                               ; preds = %51, %49
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @linkwatch_run_queue() local_unnamed_addr #0 {
  tail call fastcc void @__linkwatch_run_queue(i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__linkwatch_run_queue(i32 noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #4
  store ptr %2, ptr %2, align 8
  %3 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  %4 = icmp eq i32 %0, 0
  %5 = select i1 %4, i32 100, i32 200
  %6 = load volatile i32, ptr @jiffies, align 64
  %7 = add i32 %6, 100
  br i1 %4, label %14, label %8

8:                                                ; preds = %1
  %9 = load i32, ptr @linkwatch_nextevent, align 4
  %10 = sub i32 %7, %9
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = load volatile i32, ptr @jiffies, align 64
  br label %14

14:                                               ; preds = %12, %1
  %15 = phi i32 [ %13, %12 ], [ %7, %1 ]
  store i32 %15, ptr @linkwatch_nextevent, align 4
  br label %16

16:                                               ; preds = %14, %8
  call void @_clear_bit(i32 noundef 0, ptr noundef nonnull @linkwatch_flags) #4
  call void @_raw_spin_lock_irq(ptr noundef nonnull @lweventlist_lock) #4
  %17 = load volatile ptr, ptr @lweventlist, align 4
  %18 = icmp eq ptr %17, @lweventlist
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %2, align 8
  %21 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @lweventlist, i32 0, i32 1), align 4
  %22 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  store ptr %2, ptr %22, align 4
  store ptr %17, ptr %2, align 8
  store ptr %20, ptr %21, align 4
  %23 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  store ptr %21, ptr %23, align 4
  store volatile ptr @lweventlist, ptr @lweventlist, align 4
  store ptr @lweventlist, ptr getelementptr inbounds (%struct.list_head, ptr @lweventlist, i32 0, i32 1), align 4
  br label %24

24:                                               ; preds = %19, %16
  %25 = load volatile ptr, ptr %2, align 8
  %26 = icmp eq ptr %25, %2
  br i1 %26, label %56, label %27

27:                                               ; preds = %48, %24
  %28 = phi ptr [ %53, %48 ], [ %25, %24 ]
  %29 = phi i32 [ %51, %48 ], [ %5, %24 ]
  br label %30

30:                                               ; preds = %44, %27
  %31 = phi ptr [ %28, %27 ], [ %46, %44 ]
  %32 = getelementptr i8, ptr %31, i32 -652
  %33 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = load ptr, ptr %31, align 4
  %36 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  store ptr %34, ptr %36, align 4
  store volatile ptr %35, ptr %34, align 4
  store volatile ptr %31, ptr %31, align 4
  store ptr %31, ptr %33, align 4
  %37 = getelementptr i8, ptr %31, i32 -616
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %38, 2
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %30
  br i1 %4, label %48, label %42

42:                                               ; preds = %41
  %43 = call fastcc zeroext i1 @linkwatch_urgent_event(ptr noundef %32)
  br i1 %43, label %48, label %44

44:                                               ; preds = %42, %30
  %45 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @lweventlist, i32 0, i32 1), align 4
  store ptr %31, ptr getelementptr inbounds (%struct.list_head, ptr @lweventlist, i32 0, i32 1), align 4
  store ptr @lweventlist, ptr %31, align 4
  store ptr %45, ptr %33, align 4
  store volatile ptr %31, ptr %45, align 4
  %46 = load volatile ptr, ptr %2, align 8
  %47 = icmp eq ptr %46, %2
  br i1 %47, label %56, label %30

48:                                               ; preds = %42, %41
  call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !18
  %49 = load i16, ptr @lweventlist_lock, align 4
  %50 = add i16 %49, 1
  store i16 %50, ptr @lweventlist_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !12
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #4, !srcloc !19
  call void asm sideeffect "", "~{memory}"() #4, !srcloc !20
  call fastcc void @linkwatch_do_dev(ptr noundef %32)
  %51 = add nsw i32 %29, -1
  call void @_raw_spin_lock_irq(ptr noundef nonnull @lweventlist_lock) #4
  %52 = icmp sgt i32 %29, 1
  %53 = load volatile ptr, ptr %2, align 8
  %54 = icmp ne ptr %53, %2
  %55 = select i1 %54, i1 %52, i1 false
  br i1 %55, label %27, label %56

56:                                               ; preds = %48, %44, %24
  %57 = load volatile ptr, ptr %2, align 8
  %58 = icmp eq ptr %57, %2
  br i1 %58, label %64, label %59

59:                                               ; preds = %56
  %60 = load ptr, ptr @lweventlist, align 4
  %61 = load ptr, ptr %3, align 4
  %62 = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  store ptr @lweventlist, ptr %62, align 4
  store ptr %57, ptr @lweventlist, align 4
  store ptr %60, ptr %61, align 4
  %63 = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  store ptr %61, ptr %63, align 4
  store volatile ptr %2, ptr %2, align 8
  store ptr %2, ptr %3, align 4
  br label %64

64:                                               ; preds = %59, %56
  %65 = load volatile ptr, ptr @lweventlist, align 4
  %66 = icmp eq ptr %65, @lweventlist
  br i1 %66, label %86, label %67

67:                                               ; preds = %64
  %68 = load i32, ptr @linkwatch_nextevent, align 4
  %69 = load volatile i32, ptr @jiffies, align 64
  %70 = load volatile i32, ptr @linkwatch_flags, align 4
  %71 = and i32 %70, 1
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %67
  %74 = load volatile i32, ptr @linkwatch_flags, align 4
  %75 = and i32 %74, 1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %73
  %78 = load ptr, ptr @system_wq, align 4
  %79 = call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %78, ptr noundef nonnull @linkwatch_work, i32 noundef 0) #4
  br label %86

80:                                               ; preds = %73
  %81 = sub i32 %68, %69
  %82 = icmp ugt i32 %81, 100
  %83 = select i1 %82, i32 0, i32 %81
  %84 = load ptr, ptr @system_wq, align 4
  %85 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %84, ptr noundef nonnull @linkwatch_work, i32 noundef %83) #4
  br label %86

86:                                               ; preds = %80, %77, %67, %64
  call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !18
  %87 = load i16, ptr @lweventlist_lock, align 4
  %88 = add i16 %87, 1
  store i16 %88, ptr @lweventlist_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !12
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #4, !srcloc !19
  call void asm sideeffect "", "~{memory}"() #4, !srcloc !20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @linkwatch_fire_event(ptr noundef %0) #0 {
  %2 = tail call fastcc zeroext i1 @linkwatch_urgent_event(ptr noundef %0)
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %4 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %3) #4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %27

6:                                                ; preds = %1
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @lweventlist_lock) #4
  %8 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 101
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %11, label %28

11:                                               ; preds = %6
  %12 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @lweventlist, i32 0, i32 1), align 4
  store ptr %8, ptr getelementptr inbounds (%struct.list_head, ptr @lweventlist, i32 0, i32 1), align 4
  store ptr @lweventlist, ptr %8, align 4
  %13 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 101, i32 1
  store ptr %12, ptr %13, align 4
  store volatile ptr %8, ptr %12, align 4
  %14 = icmp eq ptr %0, null
  br i1 %14, label %28, label %15

15:                                               ; preds = %11
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #4, !srcloc !15
  %17 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 99
  %18 = load ptr, ptr %17, align 8
  %19 = ptrtoint ptr %18 to i32
  %20 = tail call i32 @llvm.read_register.i32(metadata !0) #4
  %21 = inttoptr i32 %20 to ptr
  %22 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %21) #3, !srcloc !16
  %23 = add i32 %22, %19
  %24 = inttoptr i32 %23 to ptr
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, 1
  store i32 %26, ptr %24, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %16) #4, !srcloc !17
  br label %28

27:                                               ; preds = %1
  br i1 %2, label %34, label %57

28:                                               ; preds = %15, %11, %6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @lweventlist_lock, i32 noundef %7) #4
  %29 = load i32, ptr @linkwatch_nextevent, align 4
  %30 = load volatile i32, ptr @jiffies, align 64
  %31 = load volatile i32, ptr @linkwatch_flags, align 4
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %39, label %57

34:                                               ; preds = %27
  %35 = load volatile i32, ptr @jiffies, align 64
  %36 = load volatile i32, ptr @linkwatch_flags, align 4
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %57

39:                                               ; preds = %28
  %40 = sub i32 %29, %30
  br i1 %2, label %41, label %44

41:                                               ; preds = %39, %34
  %42 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef nonnull @linkwatch_flags) #4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %41, %39
  %45 = phi i32 [ %40, %39 ], [ 0, %41 ]
  %46 = load volatile i32, ptr @linkwatch_flags, align 4
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = load ptr, ptr @system_wq, align 4
  %51 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %50, ptr noundef nonnull @linkwatch_work, i32 noundef 0) #4
  br label %57

52:                                               ; preds = %44
  %53 = icmp ugt i32 %45, 100
  %54 = select i1 %53, i32 0, i32 %45
  %55 = load ptr, ptr @system_wq, align 4
  %56 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %55, ptr noundef nonnull @linkwatch_work, i32 noundef %54) #4
  br label %57

57:                                               ; preds = %52, %49, %41, %34, %28, %27
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @linkwatch_urgent_event(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %61, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 17
  %8 = load i32, ptr %7, align 4
  %9 = tail call i32 @dev_get_iflink(ptr noundef %0) #4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %61

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 2048
  %15 = icmp eq i32 %14, 0
  %16 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 15
  %17 = load i64, ptr %16, align 16
  %18 = and i64 %17, 4
  %19 = icmp eq i64 %18, 0
  %20 = select i1 %15, i1 true, i1 %19
  %21 = xor i1 %20, true
  %22 = and i64 %17, 8192
  %23 = icmp ne i64 %22, 0
  %24 = select i1 %21, i1 true, i1 %23
  br i1 %24, label %61, label %25

25:                                               ; preds = %11
  %26 = and i32 %13, 1024
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, i1 true, i1 %19
  %29 = xor i1 %28, true
  %30 = and i64 %17, 4194304
  %31 = icmp ne i64 %30, 0
  %32 = select i1 %29, i1 true, i1 %31
  br i1 %32, label %61, label %33

33:                                               ; preds = %25
  %34 = load volatile i32, ptr %2, align 4
  %35 = and i32 %34, 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %61

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 88
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %61, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %43 = load ptr, ptr %42, align 64
  %44 = getelementptr %struct.netdev_queue, ptr %43, i32 0, i32 2
  %45 = load volatile ptr, ptr %44, align 4
  %46 = getelementptr %struct.netdev_queue, ptr %43, i32 0, i32 3
  %47 = load ptr, ptr %46, align 8
  %48 = icmp eq ptr %45, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %53, %41
  %50 = phi i32 [ %51, %53 ], [ 0, %41 ]
  %51 = add nuw i32 %50, 1
  %52 = icmp eq i32 %51, %39
  br i1 %52, label %59, label %53

53:                                               ; preds = %49
  %54 = getelementptr %struct.netdev_queue, ptr %43, i32 %51, i32 2
  %55 = load volatile ptr, ptr %54, align 4
  %56 = getelementptr %struct.netdev_queue, ptr %43, i32 %51, i32 3
  %57 = load ptr, ptr %56, align 8
  %58 = icmp eq ptr %55, %57
  br i1 %58, label %49, label %59

59:                                               ; preds = %53, %49
  %60 = icmp ult i32 %51, %39
  br label %61

61:                                               ; preds = %59, %41, %37, %33, %25, %11, %6, %1
  %62 = phi i1 [ false, %1 ], [ true, %6 ], [ false, %33 ], [ false, %37 ], [ true, %11 ], [ true, %25 ], [ true, %41 ], [ %60, %59 ]
  ret i1 %62
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_get_iflink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_activate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_deactivate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_state_change(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @linkwatch_event(ptr nocapture noundef readnone %0) #0 {
  tail call void @rtnl_lock() #4
  %2 = load volatile i32, ptr @jiffies, align 64
  %3 = load i32, ptr @linkwatch_nextevent, align 4
  %4 = sub i32 %2, %3
  %5 = lshr i32 %4, 31
  tail call fastcc void @__linkwatch_run_queue(i32 noundef %5)
  tail call void @rtnl_unlock() #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }

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
!9 = !{i64 2148937664}
!10 = !{i64 1440878}
!11 = !{i64 2148926411}
!12 = !{i64 2148926486, i64 2148926513, i64 2148926560, i64 2148926582, i64 2148926610, i64 2148926630}
!13 = !{i64 2148975633}
!14 = !{i64 2155636237}
!15 = !{i64 451740, i64 451801}
!16 = !{i64 470440}
!17 = !{i64 454757}
!18 = !{i64 2148930587}
!19 = !{i64 451985}
!20 = !{i64 2148954731}
