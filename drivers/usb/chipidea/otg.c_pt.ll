; ModuleID = '/llk/IR/drivers/usb/chipidea/otg.c_pt.bc'
source_filename = "../drivers/usb/chipidea/otg.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ci_hdrc = type { ptr, %struct.spinlock, %struct.hw_bank, i32, [2 x ptr], i32, i8, %struct.usb_otg, %struct.otg_fsm, %struct.hrtimer, [12 x i64], i32, i32, ptr, %struct.work_struct, ptr, ptr, ptr, %struct.usb_gadget, ptr, i32, i32, [32 x %struct.ci_hw_ep], i32, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, i32, ptr, %struct.ulpi_ops, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.hw_bank = type { i32, i32, ptr, ptr, ptr, i32, [38 x ptr] }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.otg_fsm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, %struct.mutex, ptr, %struct.delayed_work, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.ci_hw_ep = type { %struct.usb_ep, i8, i8, i8, [16 x i8], %struct.anon.65, i32, ptr, ptr, ptr, ptr }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.anon.65 = type { %struct.list_head, ptr, i32 }
%struct.ulpi_ops = type { ptr, ptr }
%struct.ci_hdrc_platform_data = type { ptr, i32, i32, ptr, ptr, i32, i32, i32, ptr, ptr, %struct.usb_otg_caps, i8, i32, i32, i32, i32, %struct.ci_hdrc_cable, %struct.ci_hdrc_cable, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_otg_caps = type { i16, i8, i8, i8 }
%struct.ci_hdrc_cable = type { i8, i8, i8, ptr, ptr, %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.ci_role_driver = type { ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ci_otg\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"can't create workqueue\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.3 = private unnamed_addr constant [35 x i8] c"timeout waiting for %08x in OTGSC\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hw_read_otgsc(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 2, i32 6, i32 14
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %6 = and i32 %5, %1
  %7 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 32
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %8, i32 0, i32 16
  %10 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %8, i32 0, i32 16, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 13
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %35, label %17

17:                                               ; preds = %13, %2
  %18 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %8, i32 0, i32 16, i32 1
  %19 = load i8, ptr %18, align 1, !range !10
  %20 = icmp eq i8 %19, 0
  %21 = and i32 %6, -526337
  %22 = select i1 %20, i32 0, i32 524288
  %23 = or i32 %22, %21
  %24 = load i8, ptr %9, align 4, !range !10
  %25 = icmp eq i8 %24, 0
  %26 = select i1 %25, i32 0, i32 2048
  %27 = or i32 %23, %26
  %28 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %8, i32 0, i32 16, i32 2
  %29 = load i8, ptr %28, align 2, !range !10
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %17
  %32 = or i32 %27, 134217728
  br label %35

33:                                               ; preds = %17
  %34 = and i32 %27, -134217729
  br label %35

35:                                               ; preds = %33, %31, %13
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ], [ %6, %13 ]
  %37 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %8, i32 0, i32 17
  %38 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %8, i32 0, i32 17, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 13
  %43 = load ptr, ptr %42, align 8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %63, label %45

45:                                               ; preds = %41, %35
  %46 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %8, i32 0, i32 17, i32 1
  %47 = load i8, ptr %46, align 1, !range !10
  %48 = icmp eq i8 %47, 0
  %49 = and i32 %36, -65793
  %50 = select i1 %48, i32 0, i32 65536
  %51 = or i32 %50, %49
  %52 = load i8, ptr %37, align 4, !range !10
  %53 = icmp eq i8 %52, 0
  %54 = select i1 %53, i32 256, i32 0
  %55 = or i32 %51, %54
  %56 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %8, i32 0, i32 17, i32 2
  %57 = load i8, ptr %56, align 2, !range !10
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %45
  %60 = or i32 %55, 16777216
  br label %63

61:                                               ; preds = %45
  %62 = and i32 %55, -16777217
  br label %63

63:                                               ; preds = %61, %59, %41
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ], [ %36, %41 ]
  %65 = and i32 %64, %1
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hw_write_otgsc(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 32
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %5, i32 0, i32 16, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 13
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %30, label %13

13:                                               ; preds = %9, %3
  %14 = and i32 %2, %1
  %15 = and i32 %14, 524288
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %5, i32 0, i32 16, i32 1
  store i8 0, ptr %18, align 1
  br label %19

19:                                               ; preds = %17, %13
  %20 = and i32 %14, 134217728
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %5, i32 0, i32 16, i32 2
  store i8 1, ptr %23, align 2
  %24 = and i32 %2, -134217729
  br label %30

25:                                               ; preds = %19
  %26 = and i32 %1, 134217728
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %5, i32 0, i32 16, i32 2
  store i8 0, ptr %29, align 2
  br label %30

30:                                               ; preds = %28, %25, %22, %9
  %31 = phi i32 [ %24, %22 ], [ %2, %28 ], [ %2, %25 ], [ %2, %9 ]
  %32 = load ptr, ptr %4, align 4
  %33 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %32, i32 0, i32 17, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 13
  %38 = load ptr, ptr %37, align 8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %57, label %40

40:                                               ; preds = %36, %30
  %41 = and i32 %31, %1
  %42 = and i32 %41, 65536
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %32, i32 0, i32 17, i32 1
  store i8 0, ptr %45, align 1
  br label %46

46:                                               ; preds = %44, %40
  %47 = and i32 %41, 16777216
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %32, i32 0, i32 17, i32 2
  store i8 1, ptr %50, align 2
  %51 = and i32 %31, -16777217
  br label %57

52:                                               ; preds = %46
  %53 = and i32 %1, 16777216
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %32, i32 0, i32 17, i32 2
  store i8 0, ptr %56, align 2
  br label %57

57:                                               ; preds = %55, %52, %49, %36
  %58 = phi i32 [ %51, %49 ], [ %31, %55 ], [ %31, %52 ], [ %31, %36 ]
  %59 = or i32 %1, 8323072
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %69, label %61

61:                                               ; preds = %57
  %62 = xor i32 %59, -1
  %63 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 2, i32 6, i32 14
  %64 = load ptr, ptr %63, align 4
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %66 = and i32 %65, %62
  %67 = and i32 %58, %59
  %68 = or i32 %66, %67
  br label %69

69:                                               ; preds = %61, %57
  %70 = phi i32 [ %68, %61 ], [ %58, %57 ]
  %71 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 41
  %72 = load i8, ptr %71, align 2, !range !10
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 2, i32 6, i32 14
  %76 = load ptr, ptr %75, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %70) #3, !srcloc !12
  br label %77

77:                                               ; preds = %74, %69
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ci_otg_role(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 2, i32 6, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %5 = and i32 %4, 256
  %6 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 32
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %7, i32 0, i32 16
  %9 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %7, i32 0, i32 16, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 13
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %31, label %16

16:                                               ; preds = %12, %1
  %17 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %7, i32 0, i32 16, i32 1
  %18 = load i8, ptr %17, align 1, !range !10
  %19 = icmp eq i8 %18, 0
  %20 = select i1 %19, i32 0, i32 524288
  %21 = or i32 %20, %5
  %22 = load i8, ptr %8, align 4, !range !10
  %23 = icmp eq i8 %22, 0
  %24 = select i1 %23, i32 0, i32 2048
  %25 = or i32 %21, %24
  %26 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %7, i32 0, i32 16, i32 2
  %27 = load i8, ptr %26, align 2, !range !10
  %28 = icmp eq i8 %27, 0
  %29 = or i32 %25, 134217728
  %30 = select i1 %28, i32 %25, i32 %29
  br label %31

31:                                               ; preds = %16, %12
  %32 = phi i32 [ %5, %12 ], [ %30, %16 ]
  %33 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %7, i32 0, i32 17
  %34 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %7, i32 0, i32 17, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 13
  %39 = load ptr, ptr %38, align 8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %55, label %41

41:                                               ; preds = %37, %31
  %42 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %7, i32 0, i32 17, i32 1
  %43 = load i8, ptr %42, align 1, !range !10
  %44 = icmp eq i8 %43, 0
  %45 = select i1 %44, i32 0, i32 65536
  %46 = load i8, ptr %33, align 4, !range !10
  %47 = icmp eq i8 %46, 0
  %48 = select i1 %47, i32 256, i32 0
  %49 = or i32 %45, %48
  %50 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %7, i32 0, i32 17, i32 2
  %51 = load i8, ptr %50, align 2, !range !10
  %52 = icmp eq i8 %51, 0
  %53 = or i32 %49, 16777216
  %54 = select i1 %52, i32 %49, i32 %53
  br label %55

55:                                               ; preds = %41, %37
  %56 = phi i32 [ %32, %37 ], [ %54, %41 ]
  %57 = lshr i32 %56, 8
  %58 = and i32 %57, 1
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ci_handle_vbus_change(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 6
  %3 = load i8, ptr %2, align 8, !range !10
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %139, label %5

5:                                                ; preds = %1
  %6 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 2, i32 6, i32 14
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %9 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 32
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %10, i32 0, i32 16
  %12 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %10, i32 0, i32 16, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %20

15:                                               ; preds = %5
  %16 = and i32 %8, 2048
  %17 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 13
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %34, label %20

20:                                               ; preds = %15, %5
  %21 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %10, i32 0, i32 16, i32 1
  %22 = load i8, ptr %21, align 1, !range !10
  %23 = icmp eq i8 %22, 0
  %24 = select i1 %23, i32 0, i32 524288
  %25 = load i8, ptr %11, align 4, !range !10
  %26 = icmp eq i8 %25, 0
  %27 = select i1 %26, i32 0, i32 2048
  %28 = or i32 %27, %24
  %29 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %10, i32 0, i32 16, i32 2
  %30 = load i8, ptr %29, align 2, !range !10
  %31 = icmp eq i8 %30, 0
  %32 = or i32 %28, 134217728
  %33 = select i1 %31, i32 %28, i32 %32
  br label %34

34:                                               ; preds = %20, %15
  %35 = phi i32 [ %16, %15 ], [ %33, %20 ]
  %36 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %10, i32 0, i32 17
  %37 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %10, i32 0, i32 17, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 13
  %42 = load ptr, ptr %41, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %62, label %44

44:                                               ; preds = %40, %34
  %45 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %10, i32 0, i32 17, i32 1
  %46 = load i8, ptr %45, align 1, !range !10
  %47 = icmp eq i8 %46, 0
  %48 = and i32 %35, -65793
  %49 = select i1 %47, i32 0, i32 65536
  %50 = or i32 %49, %48
  %51 = load i8, ptr %36, align 4, !range !10
  %52 = icmp eq i8 %51, 0
  %53 = select i1 %52, i32 256, i32 0
  %54 = or i32 %50, %53
  %55 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %10, i32 0, i32 17, i32 2
  %56 = load i8, ptr %55, align 2, !range !10
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %44
  %59 = or i32 %54, 16777216
  br label %62

60:                                               ; preds = %44
  %61 = and i32 %54, -16777217
  br label %62

62:                                               ; preds = %60, %58, %40
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ], [ %35, %40 ]
  %64 = and i32 %63, 2048
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 33
  %68 = load i32, ptr %67, align 8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 18
  %72 = tail call i32 @usb_gadget_vbus_connect(ptr noundef %71) #3
  br label %139

73:                                               ; preds = %66, %62
  %74 = load ptr, ptr %6, align 4
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %76 = load ptr, ptr %9, align 4
  %77 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %76, i32 0, i32 16
  %78 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %76, i32 0, i32 16, i32 3
  %79 = load ptr, ptr %78, align 4
  %80 = icmp ugt ptr %79, inttoptr (i32 -4096 to ptr)
  br i1 %80, label %81, label %86

81:                                               ; preds = %73
  %82 = and i32 %75, 2048
  %83 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 13
  %84 = load ptr, ptr %83, align 8
  %85 = icmp eq ptr %84, null
  br i1 %85, label %100, label %86

86:                                               ; preds = %81, %73
  %87 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %76, i32 0, i32 16, i32 1
  %88 = load i8, ptr %87, align 1, !range !10
  %89 = icmp eq i8 %88, 0
  %90 = select i1 %89, i32 0, i32 524288
  %91 = load i8, ptr %77, align 4, !range !10
  %92 = icmp eq i8 %91, 0
  %93 = select i1 %92, i32 0, i32 2048
  %94 = or i32 %93, %90
  %95 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %76, i32 0, i32 16, i32 2
  %96 = load i8, ptr %95, align 2, !range !10
  %97 = icmp eq i8 %96, 0
  %98 = or i32 %94, 134217728
  %99 = select i1 %97, i32 %94, i32 %98
  br label %100

100:                                              ; preds = %86, %81
  %101 = phi i32 [ %82, %81 ], [ %99, %86 ]
  %102 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %76, i32 0, i32 17
  %103 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %76, i32 0, i32 17, i32 3
  %104 = load ptr, ptr %103, align 4
  %105 = icmp ugt ptr %104, inttoptr (i32 -4096 to ptr)
  br i1 %105, label %106, label %110

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 13
  %108 = load ptr, ptr %107, align 8
  %109 = icmp eq ptr %108, null
  br i1 %109, label %128, label %110

110:                                              ; preds = %106, %100
  %111 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %76, i32 0, i32 17, i32 1
  %112 = load i8, ptr %111, align 1, !range !10
  %113 = icmp eq i8 %112, 0
  %114 = and i32 %101, -65793
  %115 = select i1 %113, i32 0, i32 65536
  %116 = or i32 %115, %114
  %117 = load i8, ptr %102, align 4, !range !10
  %118 = icmp eq i8 %117, 0
  %119 = select i1 %118, i32 256, i32 0
  %120 = or i32 %116, %119
  %121 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %76, i32 0, i32 17, i32 2
  %122 = load i8, ptr %121, align 2, !range !10
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %110
  %125 = or i32 %120, 16777216
  br label %128

126:                                              ; preds = %110
  %127 = and i32 %120, -16777217
  br label %128

128:                                              ; preds = %126, %124, %106
  %129 = phi i32 [ %125, %124 ], [ %127, %126 ], [ %101, %106 ]
  %130 = and i32 %129, 2048
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 33
  %134 = load i32, ptr %133, align 8
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 18
  %138 = tail call i32 @usb_gadget_vbus_disconnect(ptr noundef %137) #3
  br label %139

139:                                              ; preds = %136, %132, %128, %70, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_vbus_connect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_vbus_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ci_hdrc_otg_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 14
  store i32 -32, ptr %2, align 4
  %3 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 14, i32 1
  store volatile ptr %3, ptr %3, align 4
  %4 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 14, i32 1, i32 1
  store ptr %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 14, i32 2
  store ptr @ci_otg_work, ptr %5, align 4
  %6 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str, i32 noundef 262158, i32 noundef 1, ptr noundef nonnull @.str.1) #3
  %7 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 15
  store ptr %6, ptr %7, align 4
  %8 = icmp eq ptr %6, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.2) #4
  br label %11

11:                                               ; preds = %9, %1
  %12 = phi i32 [ -19, %9 ], [ 0, %1 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ci_otg_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -652
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #3
  %5 = getelementptr i8, ptr %0, i32 3864
  %6 = load i8, ptr %5, align 4, !range !10
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %189, label %8

8:                                                ; preds = %1
  store i8 0, ptr %5, align 4
  %9 = getelementptr i8, ptr %0, i32 -564
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %12 = and i32 %11, 256
  %13 = getelementptr i8, ptr %0, i32 3832
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %14, i32 0, i32 16
  %16 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %14, i32 0, i32 16, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %23

19:                                               ; preds = %8
  %20 = getelementptr i8, ptr %0, i32 -4
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23

23:                                               ; preds = %19, %8
  %24 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %14, i32 0, i32 16, i32 1
  %25 = load i8, ptr %24, align 1, !range !10
  %26 = icmp eq i8 %25, 0
  %27 = select i1 %26, i32 0, i32 524288
  %28 = or i32 %27, %12
  %29 = load i8, ptr %15, align 4, !range !10
  %30 = icmp eq i8 %29, 0
  %31 = select i1 %30, i32 0, i32 2048
  %32 = or i32 %28, %31
  %33 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %14, i32 0, i32 16, i32 2
  %34 = load i8, ptr %33, align 2, !range !10
  %35 = icmp eq i8 %34, 0
  %36 = or i32 %32, 134217728
  %37 = select i1 %35, i32 %32, i32 %36
  br label %38

38:                                               ; preds = %23, %19
  %39 = phi i32 [ %12, %19 ], [ %37, %23 ]
  %40 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %14, i32 0, i32 17
  %41 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %14, i32 0, i32 17, i32 3
  %42 = load ptr, ptr %41, align 4
  %43 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = getelementptr i8, ptr %0, i32 -4
  %46 = load ptr, ptr %45, align 8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %62, label %48

48:                                               ; preds = %44, %38
  %49 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %14, i32 0, i32 17, i32 1
  %50 = load i8, ptr %49, align 1, !range !10
  %51 = icmp eq i8 %50, 0
  %52 = select i1 %51, i32 0, i32 65536
  %53 = load i8, ptr %40, align 4, !range !10
  %54 = icmp eq i8 %53, 0
  %55 = select i1 %54, i32 256, i32 0
  %56 = or i32 %55, %52
  %57 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %14, i32 0, i32 17, i32 2
  %58 = load i8, ptr %57, align 2, !range !10
  %59 = icmp eq i8 %58, 0
  %60 = or i32 %56, 16777216
  %61 = select i1 %59, i32 %56, i32 %60
  br label %62

62:                                               ; preds = %48, %44
  %63 = phi i32 [ %39, %44 ], [ %61, %48 ]
  %64 = lshr i32 %63, 8
  %65 = and i32 %64, 1
  %66 = getelementptr i8, ptr %0, i32 -456
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %189, label %69

69:                                               ; preds = %62
  %70 = getelementptr i8, ptr %0, i32 3836
  %71 = load i32, ptr %70, align 8
  %72 = icmp ne i32 %71, 0
  %73 = icmp eq i32 %67, 1
  %74 = select i1 %72, i1 %73, i1 false
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = getelementptr i8, ptr %0, i32 28
  %77 = tail call i32 @usb_gadget_vbus_disconnect(ptr noundef %76) #3
  %78 = load i32, ptr %66, align 4
  br label %79

79:                                               ; preds = %75, %69
  %80 = phi i32 [ %78, %75 ], [ %67, %69 ]
  %81 = icmp eq i32 %80, 2
  br i1 %81, label %87, label %82

82:                                               ; preds = %79
  store i32 2, ptr %66, align 4
  %83 = getelementptr %struct.ci_hdrc, ptr %2, i32 0, i32 4, i32 %80
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.ci_role_driver, ptr %84, i32 0, i32 1
  %86 = load ptr, ptr %85, align 4
  tail call void %86(ptr noundef %2) #3
  br label %87

87:                                               ; preds = %82, %79
  %88 = icmp eq i32 %65, 0
  br i1 %88, label %180, label %89

89:                                               ; preds = %87
  %90 = load ptr, ptr %13, align 4
  %91 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %90, i32 0, i32 16, i32 3
  %92 = load ptr, ptr %91, align 4
  %93 = icmp ugt ptr %92, inttoptr (i32 -4096 to ptr)
  br i1 %93, label %94, label %170

94:                                               ; preds = %89
  %95 = load volatile i32, ptr @jiffies, align 64
  %96 = add i32 %95, 500
  %97 = getelementptr i8, ptr %0, i32 -4
  br label %98

98:                                               ; preds = %161, %94
  %99 = load ptr, ptr %9, align 4
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %99) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %101 = load ptr, ptr %13, align 4
  %102 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %101, i32 0, i32 16
  %103 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %101, i32 0, i32 16, i32 3
  %104 = load ptr, ptr %103, align 4
  %105 = icmp ugt ptr %104, inttoptr (i32 -4096 to ptr)
  br i1 %105, label %106, label %110

106:                                              ; preds = %98
  %107 = and i32 %100, 2048
  %108 = load ptr, ptr %97, align 8
  %109 = icmp eq ptr %108, null
  br i1 %109, label %124, label %110

110:                                              ; preds = %106, %98
  %111 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %101, i32 0, i32 16, i32 1
  %112 = load i8, ptr %111, align 1, !range !10
  %113 = icmp eq i8 %112, 0
  %114 = select i1 %113, i32 0, i32 524288
  %115 = load i8, ptr %102, align 4, !range !10
  %116 = icmp eq i8 %115, 0
  %117 = select i1 %116, i32 0, i32 2048
  %118 = or i32 %117, %114
  %119 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %101, i32 0, i32 16, i32 2
  %120 = load i8, ptr %119, align 2, !range !10
  %121 = icmp eq i8 %120, 0
  %122 = or i32 %118, 134217728
  %123 = select i1 %121, i32 %118, i32 %122
  br label %124

124:                                              ; preds = %110, %106
  %125 = phi i32 [ %107, %106 ], [ %123, %110 ]
  %126 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %101, i32 0, i32 17
  %127 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %101, i32 0, i32 17, i32 3
  %128 = load ptr, ptr %127, align 4
  %129 = icmp ugt ptr %128, inttoptr (i32 -4096 to ptr)
  br i1 %129, label %130, label %133

130:                                              ; preds = %124
  %131 = load ptr, ptr %97, align 8
  %132 = icmp eq ptr %131, null
  br i1 %132, label %151, label %133

133:                                              ; preds = %130, %124
  %134 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %101, i32 0, i32 17, i32 1
  %135 = load i8, ptr %134, align 1, !range !10
  %136 = icmp eq i8 %135, 0
  %137 = and i32 %125, -65793
  %138 = select i1 %136, i32 0, i32 65536
  %139 = or i32 %138, %137
  %140 = load i8, ptr %126, align 4, !range !10
  %141 = icmp eq i8 %140, 0
  %142 = select i1 %141, i32 256, i32 0
  %143 = or i32 %139, %142
  %144 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %101, i32 0, i32 17, i32 2
  %145 = load i8, ptr %144, align 2, !range !10
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %149, label %147

147:                                              ; preds = %133
  %148 = or i32 %143, 16777216
  br label %151

149:                                              ; preds = %133
  %150 = and i32 %143, -16777217
  br label %151

151:                                              ; preds = %149, %147, %130
  %152 = phi i32 [ %148, %147 ], [ %150, %149 ], [ %125, %130 ]
  %153 = and i32 %152, 2048
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %162, label %155

155:                                              ; preds = %151
  %156 = load volatile i32, ptr @jiffies, align 64
  %157 = sub i32 %96, %156
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %155
  %160 = load ptr, ptr %2, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %160, ptr noundef nonnull @.str.3, i32 noundef 2048) #4
  br label %162

161:                                              ; preds = %155
  tail call void @msleep(i32 noundef 20) #3
  br label %98

162:                                              ; preds = %159, %151
  %163 = getelementptr %struct.ci_hdrc, ptr %2, i32 0, i32 4, i32 %65
  %164 = load ptr, ptr %163, align 4
  %165 = icmp eq ptr %164, null
  br i1 %165, label %179, label %166

166:                                              ; preds = %162
  %167 = load ptr, ptr %164, align 4
  %168 = tail call i32 %167(ptr noundef %2) #3
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %178, label %179

170:                                              ; preds = %89
  %171 = getelementptr %struct.ci_hdrc, ptr %2, i32 0, i32 4, i32 %65
  %172 = load ptr, ptr %171, align 4
  %173 = icmp eq ptr %172, null
  br i1 %173, label %179, label %174

174:                                              ; preds = %170
  %175 = load ptr, ptr %172, align 4
  %176 = tail call i32 %175(ptr noundef %2) #3
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %174, %166
  store i32 %65, ptr %66, align 4
  br label %179

179:                                              ; preds = %178, %174, %170, %166, %162
  tail call void @ci_handle_vbus_change(ptr noundef %2) #3
  br label %189

180:                                              ; preds = %87
  %181 = getelementptr i8, ptr %0, i32 -464
  %182 = load ptr, ptr %181, align 4
  %183 = icmp eq ptr %182, null
  br i1 %183, label %189, label %184

184:                                              ; preds = %180
  %185 = load ptr, ptr %182, align 4
  %186 = tail call i32 %185(ptr noundef %2) #3
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %184
  store i32 0, ptr %66, align 4
  br label %189

189:                                              ; preds = %188, %184, %180, %179, %62, %1
  %190 = getelementptr i8, ptr %0, i32 3865
  %191 = load i8, ptr %190, align 1, !range !10
  %192 = icmp eq i8 %191, 0
  br i1 %192, label %194, label %193

193:                                              ; preds = %189
  store i8 0, ptr %190, align 1
  tail call void @ci_handle_vbus_change(ptr noundef %2)
  br label %194

194:                                              ; preds = %193, %189
  %195 = load ptr, ptr %2, align 8
  %196 = tail call i32 @__pm_runtime_idle(ptr noundef %195, i32 noundef 4) #3
  %197 = getelementptr i8, ptr %0, i32 -468
  %198 = load i32, ptr %197, align 8
  tail call void @enable_irq(i32 noundef %198) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ci_hdrc_otg_destroy(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @destroy_workqueue(ptr noundef nonnull %3) #3
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 32
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %8, i32 0, i32 16, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %16

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 13
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %12, %6
  %17 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %8, i32 0, i32 16, i32 1
  store i8 0, ptr %17, align 1
  %18 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %8, i32 0, i32 16, i32 2
  store i8 0, ptr %18, align 2
  %19 = load ptr, ptr %7, align 4
  br label %20

20:                                               ; preds = %16, %12
  %21 = phi ptr [ %19, %16 ], [ %8, %12 ]
  %22 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %21, i32 0, i32 17, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 13
  %27 = load ptr, ptr %26, align 8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %25, %20
  %30 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %21, i32 0, i32 17, i32 1
  store i8 0, ptr %30, align 1
  %31 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %21, i32 0, i32 17, i32 2
  store i8 0, ptr %31, align 2
  br label %32

32:                                               ; preds = %29, %25
  %33 = getelementptr %struct.ci_hdrc, ptr %0, i32 0, i32 2, i32 6, i32 14
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %36 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 41
  %37 = load i8, ptr %36, align 2, !range !10
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = and i32 %35, -2139029505
  %41 = or i32 %40, 8323072
  %42 = load ptr, ptr %33, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %41) #3, !srcloc !12
  br label %43

43:                                               ; preds = %39, %32
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

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
!8 = !{i64 4742243}
!9 = !{i64 2152274206}
!10 = !{i8 0, i8 2}
!11 = !{i64 2152275428}
!12 = !{i64 4741825}
