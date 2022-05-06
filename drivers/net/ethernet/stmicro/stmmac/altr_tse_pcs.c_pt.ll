; ModuleID = '/llk/IR/drivers/net/ethernet/stmicro/stmmac/altr_tse_pcs.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/altr_tse_pcs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.tse_pcs = type { ptr, ptr, ptr, %struct.timer_list, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = private unnamed_addr constant [35 x i8] c"PCS could not get out of sw reset\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Adapter does not support Half Duplex\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Adapter: Invalid Partner Speed and Duplex\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tse_pcs_init(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !8
  tail call void @arm_heavy_mb() #3
  %3 = getelementptr i8, ptr %0, i32 40
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %3, i16 3) #3, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %0, i16 4416) #3, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %4 = getelementptr i8, ptr %0, i32 36
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %4, i16 3392) #3, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !12
  tail call void @arm_heavy_mb() #3
  %5 = getelementptr i8, ptr %0, i32 38
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %5, i16 3) #3, !srcloc !9
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %0) #3, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !14
  %7 = or i16 %6, -32768
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %0, i16 %7) #3, !srcloc !9
  br label %8

8:                                                ; preds = %12, %2
  %9 = phi i32 [ 0, %2 ], [ %13, %12 ]
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %0) #3, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !16
  %11 = icmp sgt i16 %10, -1
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  %13 = add nuw nsw i32 %9, 1
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #3
  %15 = icmp eq i32 %13, 100
  br i1 %15, label %16, label %8

16:                                               ; preds = %12
  %17 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str) #4
  br label %21

18:                                               ; preds = %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !17
  tail call void @arm_heavy_mb() #3
  %19 = getelementptr inbounds %struct.tse_pcs, ptr %1, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %20, i16 0) #3, !srcloc !9
  br label %21

21:                                               ; preds = %18, %16
  %22 = phi i32 [ 0, %18 ], [ -110, %16 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tse_pcs_fix_mac_speed(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.tse_pcs, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tse_pcs, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !18
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %7, i16 0) #3, !srcloc !9
  %8 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 4
  %9 = load i16, ptr %8, align 8
  %10 = lshr i16 %9, 12
  %11 = and i16 %10, 1
  %12 = zext i16 %11 to i32
  %13 = getelementptr inbounds %struct.tse_pcs, ptr %0, i32 0, i32 4
  store i32 %12, ptr %13, align 4
  %14 = load i16, ptr %8, align 8
  %15 = and i16 %14, 4096
  %16 = icmp eq i16 %15, 0
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %5) #3
  tail call void asm sideeffect "dsb ", "~{memory}"() #3
  br i1 %16, label %34, label %18

18:                                               ; preds = %3
  %19 = or i16 %17, 4096
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !19
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %5, i16 %19) #3, !srcloc !9
  %20 = getelementptr i8, ptr %5, i32 40
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %20) #3, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !20
  %22 = or i16 %21, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !21
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %20, i16 %22) #3, !srcloc !9
  %23 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %5) #3, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !22
  %24 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %5) #3, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !14
  %25 = or i16 %24, -32768
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %5, i16 %25) #3, !srcloc !9
  br label %26

26:                                               ; preds = %30, %18
  %27 = phi i32 [ 0, %18 ], [ %31, %30 ]
  %28 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %5) #3, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !16
  %29 = icmp sgt i16 %28, -1
  br i1 %29, label %59, label %30

30:                                               ; preds = %26
  %31 = add nuw nsw i32 %27, 1
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748) #3
  %33 = icmp eq i32 %31, 100
  br i1 %33, label %57, label %26

34:                                               ; preds = %3
  %35 = and i16 %17, -4097
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %5, i16 %35) #3, !srcloc !9
  %36 = getelementptr i8, ptr %5, i32 40
  %37 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %36) #3, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !24
  %38 = and i16 %37, -3
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !25
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %36, i16 %38) #3, !srcloc !9
  %39 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %36) #3, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !26
  %40 = and i16 %39, -13
  switch i32 %2, label %64 [
    i32 1000, label %41
    i32 100, label %43
    i32 10, label %45
  ]

41:                                               ; preds = %34
  %42 = or i16 %40, 8
  br label %45

43:                                               ; preds = %34
  %44 = or i16 %40, 4
  br label %45

45:                                               ; preds = %43, %41, %34
  %46 = phi i16 [ %44, %43 ], [ %42, %41 ], [ %40, %34 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !27
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %36, i16 %46) #3, !srcloc !9
  %47 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %5) #3, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !14
  %48 = or i16 %47, -32768
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %5, i16 %48) #3, !srcloc !9
  br label %49

49:                                               ; preds = %53, %45
  %50 = phi i32 [ 0, %45 ], [ %54, %53 ]
  %51 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %5) #3, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !16
  %52 = icmp sgt i16 %51, -1
  br i1 %52, label %59, label %53

53:                                               ; preds = %49
  %54 = add nuw nsw i32 %50, 1
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 214748) #3
  %56 = icmp eq i32 %54, 100
  br i1 %56, label %57, label %49

57:                                               ; preds = %53, %30
  %58 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str) #4
  br label %59

59:                                               ; preds = %57, %49, %26
  %60 = getelementptr inbounds %struct.tse_pcs, ptr %0, i32 0, i32 3
  tail call void @init_timer_key(ptr noundef %60, ptr noundef nonnull @aneg_link_timer_callback, i32 noundef 0, ptr noundef null, ptr noundef null) #3
  %61 = load volatile i32, ptr @jiffies, align 64
  %62 = add i32 %61, 2
  %63 = tail call i32 @mod_timer(ptr noundef %60, i32 noundef %62) #3
  br label %64

64:                                               ; preds = %59, %34
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aneg_link_timer_callback(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -12
  %3 = getelementptr i8, ptr %0, i32 20
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %66 [
    i32 1, label %5
    i32 0, label %52
  ]

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 -8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %0, i32 -4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %7, i32 2
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %10) #3, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !28
  %12 = and i16 %11, 32
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %33, label %14

14:                                               ; preds = %5
  %15 = getelementptr i8, ptr %7, i32 10
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %15) #3, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !29
  %17 = and i16 %16, 3072
  %18 = and i16 %16, 4096
  %19 = icmp eq i16 %18, 0
  %20 = lshr i16 %16, 10
  %21 = trunc i16 %20 to i3
  switch i3 %21, label %22 [
    i3 -2, label %26
    i3 -3, label %26
    i3 -4, label %26
    i3 0, label %23
    i3 1, label %23
    i3 2, label %23
  ]

22:                                               ; preds = %14
  br label %23

23:                                               ; preds = %22, %14, %14, %14
  %24 = phi ptr [ @.str.2, %22 ], [ @.str.1, %14 ], [ @.str.1, %14 ], [ @.str.1, %14 ]
  %25 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull %24) #4
  br label %26

26:                                               ; preds = %23, %14, %14, %14
  br i1 %19, label %66, label %27

27:                                               ; preds = %26
  %28 = and i16 %16, 2048
  %29 = icmp eq i16 %28, 0
  %30 = icmp eq i16 %17, 2048
  %31 = or i1 %29, %30
  br i1 %31, label %32, label %66

32:                                               ; preds = %27
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !30
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %9, i16 0) #3, !srcloc !9
  br label %66

33:                                               ; preds = %5
  %34 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %7) #3, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !31
  %35 = or i16 %34, 512
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !32
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %7, i16 %35) #3, !srcloc !9
  %36 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %7) #3, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !14
  %37 = or i16 %36, -32768
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %7, i16 %37) #3, !srcloc !9
  br label %38

38:                                               ; preds = %42, %33
  %39 = phi i32 [ 0, %33 ], [ %43, %42 ]
  %40 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %7) #3, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !16
  %41 = icmp sgt i16 %40, -1
  br i1 %41, label %48, label %42

42:                                               ; preds = %38
  %43 = add nuw nsw i32 %39, 1
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748) #3
  %45 = icmp eq i32 %43, 100
  br i1 %45, label %46, label %38

46:                                               ; preds = %42
  %47 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str) #4
  br label %48

48:                                               ; preds = %46, %38
  %49 = load volatile i32, ptr @jiffies, align 64
  %50 = add i32 %49, 2
  %51 = tail call i32 @mod_timer(ptr noundef %0, i32 noundef %50) #3
  br label %66

52:                                               ; preds = %1
  %53 = getelementptr i8, ptr %0, i32 -8
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr i8, ptr %0, i32 -4
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr i8, ptr %54, i32 2
  %58 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %57) #3, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !33
  %59 = and i16 %58, 4
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %52
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !34
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %56, i16 0) #3, !srcloc !9
  br label %66

62:                                               ; preds = %52
  %63 = load volatile i32, ptr @jiffies, align 64
  %64 = add i32 %63, 2
  %65 = tail call i32 @mod_timer(ptr noundef %0, i32 noundef %64) #3
  br label %66

66:                                               ; preds = %62, %61, %48, %32, %27, %26, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { cold nounwind }

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
!8 = !{i64 2156138363}
!9 = !{i64 2813078}
!10 = !{i64 2156138682}
!11 = !{i64 2156139005}
!12 = !{i64 2156139328}
!13 = !{i64 2813278}
!14 = !{i64 2156136373}
!15 = !{i64 2156136564}
!16 = !{i64 2156137012}
!17 = !{i64 2156139670}
!18 = !{i64 2156151003}
!19 = !{i64 2156151772}
!20 = !{i64 2156152248}
!21 = !{i64 2156152522}
!22 = !{i64 2156152998}
!23 = !{i64 2156153940}
!24 = !{i64 2156154416}
!25 = !{i64 2156154690}
!26 = !{i64 2156155166}
!27 = !{i64 2156156200}
!28 = !{i64 2156141482}
!29 = !{i64 2156142582}
!30 = !{i64 2156148624}
!31 = !{i64 2156149112}
!32 = !{i64 2156149386}
!33 = !{i64 2156140163}
!34 = !{i64 2156140991}
