; ModuleID = '/llk/IR/drivers/usb/renesas_usbhs/mod.c_pt.bc'
source_filename = "../drivers/usb/renesas_usbhs/mod.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usbhs_priv = type { ptr, i32, ptr, %struct.renesas_usbhs_driver_param, %struct.delayed_work, ptr, ptr, %struct.spinlock, %struct.usbhs_mod_info, %struct.usbhs_pipe_info, %struct.usbhs_fifo_info, ptr, ptr, [2 x ptr] }
%struct.renesas_usbhs_driver_param = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.usbhs_mod_info = type { [2 x ptr], ptr, ptr, ptr }
%struct.usbhs_pipe_info = type { ptr, i32, ptr }
%struct.usbhs_fifo_info = type { %struct.usbhs_fifo, [4 x %struct.usbhs_fifo] }
%struct.usbhs_fifo = type { ptr, i32, i32, i32, ptr, ptr, ptr, %struct.sh_dmae_slave, %struct.sh_dmae_slave }
%struct.sh_dmae_slave = type { %struct.shdma_slave }
%struct.shdma_slave = type { i32 }
%struct.usbhs_mod = type { ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, i16, ptr, ptr, ptr, ptr, ptr }
%struct.renesas_usbhs_platform_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.usbhs_irq_state = type { i16, i16, i16, i16, i16 }

@.str = private unnamed_addr constant [17 x i8] c"irq request err\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usbhs_mod_autonomy_mode(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 8, i32 2
  store ptr @usbhsm_autonomy_irq_vbus, ptr %2, align 4
  %3 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 8, i32 3
  store ptr @usbhsm_autonomy_get_vbus, ptr %3, align 4
  tail call void @usbhs_irq_callback_update(ptr noundef %0, ptr noundef null)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhsm_autonomy_irq_vbus(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @usbhsc_schedule_notify_hotplug(ptr noundef %4) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhsm_autonomy_get_vbus(ptr noundef %0) #0 {
  %2 = tail call ptr @usbhs_pdev_to_priv(ptr noundef %0) #8
  %3 = tail call zeroext i16 @usbhs_read(ptr noundef %2, i32 noundef 64) #8
  %4 = and i16 %3, 128
  %5 = zext i16 %4 to i32
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usbhs_irq_callback_update(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  tail call void @usbhs_write(ptr noundef %0, i32 noundef 48, i16 noundef zeroext 0) #8
  %3 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 8, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %4
  br i1 %9, label %10, label %11

10:                                               ; preds = %6, %2
  tail call void @usbhs_write(ptr noundef %0, i32 noundef 50, i16 noundef zeroext 0) #8
  br label %11

11:                                               ; preds = %10, %6
  tail call void @usbhs_write(ptr noundef %0, i32 noundef 58, i16 noundef zeroext 0) #8
  tail call void @usbhs_write(ptr noundef %0, i32 noundef 54, i16 noundef zeroext 0) #8
  %12 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 8, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  %15 = select i1 %14, i16 0, i16 -32768
  %16 = icmp eq ptr %1, null
  br i1 %16, label %76, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.usbhs_mod, ptr %1, i32 0, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  %21 = or i16 %15, 2048
  %22 = select i1 %20, i16 %15, i16 %21
  %23 = getelementptr inbounds %struct.usbhs_mod, ptr %1, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  %26 = or i16 %22, 4096
  %27 = select i1 %25, i16 %22, i16 %26
  %28 = getelementptr inbounds %struct.usbhs_mod, ptr %1, i32 0, i32 5
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %17
  %32 = getelementptr inbounds %struct.usbhs_mod, ptr %1, i32 0, i32 6
  %33 = load i16, ptr %32, align 4
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  tail call void @usbhs_write(ptr noundef %0, i32 noundef 58, i16 noundef zeroext %33) #8
  %36 = or i16 %27, 1024
  br label %37

37:                                               ; preds = %35, %31, %17
  %38 = phi i16 [ %36, %35 ], [ %27, %31 ], [ %27, %17 ]
  %39 = getelementptr inbounds %struct.usbhs_mod, ptr %1, i32 0, i32 7
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.usbhs_mod, ptr %1, i32 0, i32 8
  %44 = load i16, ptr %43, align 4
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  tail call void @usbhs_write(ptr noundef %0, i32 noundef 54, i16 noundef zeroext %44) #8
  %47 = or i16 %38, 256
  br label %48

48:                                               ; preds = %46, %42, %37
  %49 = phi i16 [ %47, %46 ], [ %38, %42 ], [ %38, %37 ]
  %50 = load ptr, ptr %3, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 8
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, %50
  br i1 %55, label %56, label %76

56:                                               ; preds = %52, %48
  %57 = getelementptr inbounds %struct.usbhs_mod, ptr %1, i32 0, i32 9
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  %60 = select i1 %59, i16 0, i16 2048
  %61 = getelementptr inbounds %struct.usbhs_mod, ptr %1, i32 0, i32 10
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  %64 = or i16 %60, 4096
  %65 = select i1 %63, i16 %60, i16 %64
  %66 = getelementptr inbounds %struct.usbhs_mod, ptr %1, i32 0, i32 11
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  %69 = or i16 %65, 32
  %70 = select i1 %68, i16 %65, i16 %69
  %71 = getelementptr inbounds %struct.usbhs_mod, ptr %1, i32 0, i32 12
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  %74 = or i16 %70, 16
  %75 = select i1 %73, i16 %70, i16 %74
  br label %76

76:                                               ; preds = %56, %52, %11
  %77 = phi i16 [ %49, %52 ], [ %15, %11 ], [ %49, %56 ]
  %78 = phi i16 [ 0, %52 ], [ 0, %11 ], [ %75, %56 ]
  %79 = icmp eq i16 %77, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %76
  tail call void @usbhs_write(ptr noundef %0, i32 noundef 48, i16 noundef zeroext %77) #8
  br label %81

81:                                               ; preds = %80, %76
  %82 = load ptr, ptr %3, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %88, label %84

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 8
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, %82
  br label %88

88:                                               ; preds = %84, %81
  %89 = phi i1 [ %87, %84 ], [ true, %81 ]
  %90 = icmp ne i16 %78, 0
  %91 = select i1 %89, i1 %90, i1 false
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  tail call void @usbhs_write(ptr noundef %0, i32 noundef 50, i16 noundef zeroext %78) #8
  br label %93

93:                                               ; preds = %92, %88
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @usbhs_mod_non_autonomy_mode(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.renesas_usbhs_platform_callback, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 8, i32 3
  store ptr %5, ptr %6, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @usbhs_mod_register(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 8
  %5 = getelementptr [2 x ptr], ptr %4, i32 0, i32 %2
  store ptr %1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.usbhs_mod, ptr %1, i32 0, i32 13
  store ptr %0, ptr %6, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @usbhs_mod_get(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = icmp ult i32 %1, 2
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 8
  %6 = getelementptr [2 x ptr], ptr %5, i32 0, i32 %1
  %7 = load ptr, ptr %6, align 4
  br label %8

8:                                                ; preds = %4, %2
  %9 = phi ptr [ null, %2 ], [ %7, %4 ]
  ret ptr %9
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @usbhs_mod_is_host(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 8, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %3
  %9 = zext i1 %8 to i32
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ %9, %5 ], [ -22, %1 ]
  ret i32 %11
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @usbhs_mod_get_current(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 8, i32 1
  %3 = load ptr, ptr %2, align 4
  ret ptr %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @usbhs_mod_change(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = icmp ult i32 %1, 2
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 8
  %6 = getelementptr [2 x ptr], ptr %5, i32 0, i32 %1
  %7 = load ptr, ptr %6, align 4
  br label %8

8:                                                ; preds = %4, %2
  %9 = phi ptr [ %7, %4 ], [ null, %2 ]
  %10 = phi i32 [ 0, %4 ], [ -22, %2 ]
  %11 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 8, i32 1
  store ptr %9, ptr %11, align 4
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usbhs_mod_probe(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %5 = tail call i32 @usbhs_mod_gadget_probe(ptr noundef %0) #8
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %20, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = load ptr, ptr %4, align 4
  br label %15

15:                                               ; preds = %13, %7
  %16 = phi ptr [ %14, %13 ], [ %11, %7 ]
  %17 = tail call i32 @devm_request_threaded_irq(ptr noundef %4, i32 noundef %9, ptr noundef nonnull @usbhs_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %16, ptr noundef %0) #8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str) #9
  tail call void @usbhs_mod_gadget_remove(ptr noundef %0) #8
  br label %20

20:                                               ; preds = %19, %15, %1
  %21 = phi i32 [ 0, %15 ], [ %5, %1 ], [ %17, %19 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbhs_mod_gadget_probe(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhs_interrupt(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.usbhs_irq_state, align 2
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %3) #8
  %4 = getelementptr inbounds i8, ptr %3, i32 2
  store i64 0, ptr %4, align 2, !annotation !8
  %5 = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 8, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 7
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #8
  %9 = tail call zeroext i16 @usbhs_read(ptr noundef %1, i32 noundef 64) #8
  store i16 %9, ptr %3, align 2
  %10 = tail call zeroext i16 @usbhs_read(ptr noundef %1, i32 noundef 48) #8
  %11 = load ptr, ptr %5, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 8
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %11
  br i1 %16, label %17, label %21

17:                                               ; preds = %13, %2
  %18 = tail call zeroext i16 @usbhs_read(ptr noundef %1, i32 noundef 66) #8
  %19 = getelementptr inbounds %struct.usbhs_irq_state, ptr %3, i32 0, i32 1
  store i16 %18, ptr %19, align 2
  %20 = tail call zeroext i16 @usbhs_read(ptr noundef %1, i32 noundef 50) #8
  br label %23

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.usbhs_irq_state, ptr %3, i32 0, i32 1
  store i16 0, ptr %22, align 2
  br label %23

23:                                               ; preds = %21, %17
  %24 = phi i16 [ 0, %21 ], [ %18, %17 ]
  %25 = icmp eq ptr %6, null
  br i1 %25, label %39, label %26

26:                                               ; preds = %23
  %27 = tail call zeroext i16 @usbhs_read(ptr noundef %1, i32 noundef 70) #8
  %28 = getelementptr inbounds %struct.usbhs_irq_state, ptr %3, i32 0, i32 2
  %29 = tail call zeroext i16 @usbhs_read(ptr noundef %1, i32 noundef 72) #8
  %30 = getelementptr inbounds %struct.usbhs_irq_state, ptr %3, i32 0, i32 3
  store i16 %29, ptr %30, align 2
  %31 = tail call zeroext i16 @usbhs_read(ptr noundef %1, i32 noundef 74) #8
  %32 = getelementptr inbounds %struct.usbhs_irq_state, ptr %3, i32 0, i32 4
  %33 = getelementptr inbounds %struct.usbhs_mod, ptr %6, i32 0, i32 6
  %34 = load i16, ptr %33, align 4
  %35 = and i16 %34, %31
  store i16 %35, ptr %32, align 2
  %36 = getelementptr inbounds %struct.usbhs_mod, ptr %6, i32 0, i32 8
  %37 = load i16, ptr %36, align 4
  %38 = and i16 %27, %37
  store i16 %38, ptr %28, align 2
  br label %39

39:                                               ; preds = %26, %23
  %40 = phi i16 [ 0, %23 ], [ %35, %26 ]
  %41 = phi i16 [ 0, %23 ], [ %29, %26 ]
  %42 = phi i16 [ 0, %23 ], [ %38, %26 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #8
  %43 = and i16 %9, -2048
  %44 = xor i16 %43, -2048
  tail call void @usbhs_write(ptr noundef %1, i32 noundef 64, i16 noundef zeroext %44) #8
  %45 = load ptr, ptr %5, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 8
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, %45
  br i1 %50, label %51, label %54

51:                                               ; preds = %47, %39
  %52 = and i16 %24, -22416
  %53 = xor i16 %52, -22416
  tail call void @usbhs_write(ptr noundef %1, i32 noundef 66, i16 noundef zeroext %53) #8
  br label %54

54:                                               ; preds = %51, %47
  %55 = and i16 %9, 256
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = xor i16 %42, -1
  tail call void @usbhs_write(ptr noundef %1, i32 noundef 70, i16 noundef zeroext %58) #8
  br label %59

59:                                               ; preds = %57, %54
  %60 = xor i16 %41, -1
  tail call void @usbhs_write(ptr noundef %1, i32 noundef 72, i16 noundef zeroext %60) #8
  %61 = and i16 %9, 1024
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = xor i16 %40, -1
  tail call void @usbhs_write(ptr noundef %1, i32 noundef 74, i16 noundef zeroext %64) #8
  br label %65

65:                                               ; preds = %63, %59
  %66 = icmp sgt i16 %9, -1
  br i1 %66, label %74, label %67

67:                                               ; preds = %65
  %68 = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 8, i32 2
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %67
  %72 = call i32 %69(ptr noundef %1, ptr noundef nonnull %3) #8
  %73 = load i16, ptr %3, align 2
  br label %74

74:                                               ; preds = %71, %67, %65
  %75 = phi i16 [ %73, %71 ], [ %9, %67 ], [ %9, %65 ]
  %76 = and i16 %75, 4096
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %88, label %78

78:                                               ; preds = %74
  %79 = load ptr, ptr %5, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %88, label %81

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.usbhs_mod, ptr %79, i32 0, i32 3
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %81
  %86 = call i32 %83(ptr noundef %1, ptr noundef nonnull %3) #8
  %87 = load i16, ptr %3, align 2
  br label %88

88:                                               ; preds = %85, %81, %78, %74
  %89 = phi i16 [ %75, %78 ], [ %75, %81 ], [ %87, %85 ], [ %75, %74 ]
  %90 = and i16 %89, 2048
  %91 = icmp eq i16 %90, 0
  br i1 %91, label %102, label %92

92:                                               ; preds = %88
  %93 = load ptr, ptr %5, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %102, label %95

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.usbhs_mod, ptr %93, i32 0, i32 4
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %95
  %100 = call i32 %97(ptr noundef %1, ptr noundef nonnull %3) #8
  %101 = load i16, ptr %3, align 2
  br label %102

102:                                              ; preds = %99, %95, %92, %88
  %103 = phi i16 [ %89, %92 ], [ %89, %95 ], [ %101, %99 ], [ %89, %88 ]
  %104 = and i16 %103, 1024
  %105 = icmp eq i16 %104, 0
  br i1 %105, label %116, label %106

106:                                              ; preds = %102
  %107 = load ptr, ptr %5, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %116, label %109

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.usbhs_mod, ptr %107, i32 0, i32 5
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %109
  %114 = call i32 %111(ptr noundef %1, ptr noundef nonnull %3) #8
  %115 = load i16, ptr %3, align 2
  br label %116

116:                                              ; preds = %113, %109, %106, %102
  %117 = phi i16 [ %103, %106 ], [ %103, %109 ], [ %115, %113 ], [ %103, %102 ]
  %118 = and i16 %117, 256
  %119 = icmp eq i16 %118, 0
  br i1 %119, label %129, label %120

120:                                              ; preds = %116
  %121 = load ptr, ptr %5, align 4
  %122 = icmp eq ptr %121, null
  br i1 %122, label %136, label %123

123:                                              ; preds = %120
  %124 = getelementptr inbounds %struct.usbhs_mod, ptr %121, i32 0, i32 7
  %125 = load ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %129, label %127

127:                                              ; preds = %123
  %128 = call i32 %125(ptr noundef %1, ptr noundef nonnull %3) #8
  br label %129

129:                                              ; preds = %127, %123, %116
  %130 = load ptr, ptr %5, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %136, label %132

132:                                              ; preds = %129
  %133 = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 8
  %134 = load ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, %130
  br i1 %135, label %139, label %193

136:                                              ; preds = %129, %120
  %137 = getelementptr inbounds %struct.usbhs_irq_state, ptr %3, i32 0, i32 1
  %138 = load i16, ptr %137, align 2
  br label %151

139:                                              ; preds = %132
  %140 = getelementptr inbounds %struct.usbhs_irq_state, ptr %3, i32 0, i32 1
  %141 = load i16, ptr %140, align 2
  %142 = and i16 %141, 2048
  %143 = icmp eq i16 %142, 0
  br i1 %143, label %151, label %144

144:                                              ; preds = %139
  %145 = getelementptr inbounds %struct.usbhs_mod, ptr %130, i32 0, i32 9
  %146 = load ptr, ptr %145, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %151, label %148

148:                                              ; preds = %144
  %149 = call i32 %146(ptr noundef %1, ptr noundef nonnull %3) #8
  %150 = load i16, ptr %140, align 2
  br label %151

151:                                              ; preds = %148, %144, %139, %136
  %152 = phi ptr [ %140, %139 ], [ %140, %144 ], [ %140, %148 ], [ %137, %136 ]
  %153 = phi i16 [ %141, %139 ], [ %141, %144 ], [ %150, %148 ], [ %138, %136 ]
  %154 = and i16 %153, 4096
  %155 = icmp eq i16 %154, 0
  br i1 %155, label %166, label %156

156:                                              ; preds = %151
  %157 = load ptr, ptr %5, align 4
  %158 = icmp eq ptr %157, null
  br i1 %158, label %166, label %159

159:                                              ; preds = %156
  %160 = getelementptr inbounds %struct.usbhs_mod, ptr %157, i32 0, i32 10
  %161 = load ptr, ptr %160, align 4
  %162 = icmp eq ptr %161, null
  br i1 %162, label %166, label %163

163:                                              ; preds = %159
  %164 = call i32 %161(ptr noundef %1, ptr noundef nonnull %3) #8
  %165 = load i16, ptr %152, align 2
  br label %166

166:                                              ; preds = %163, %159, %156, %151
  %167 = phi i16 [ %153, %156 ], [ %153, %159 ], [ %165, %163 ], [ %153, %151 ]
  %168 = and i16 %167, 32
  %169 = icmp eq i16 %168, 0
  br i1 %169, label %180, label %170

170:                                              ; preds = %166
  %171 = load ptr, ptr %5, align 4
  %172 = icmp eq ptr %171, null
  br i1 %172, label %180, label %173

173:                                              ; preds = %170
  %174 = getelementptr inbounds %struct.usbhs_mod, ptr %171, i32 0, i32 11
  %175 = load ptr, ptr %174, align 4
  %176 = icmp eq ptr %175, null
  br i1 %176, label %180, label %177

177:                                              ; preds = %173
  %178 = call i32 %175(ptr noundef %1, ptr noundef nonnull %3) #8
  %179 = load i16, ptr %152, align 2
  br label %180

180:                                              ; preds = %177, %173, %170, %166
  %181 = phi i16 [ %167, %170 ], [ %167, %173 ], [ %179, %177 ], [ %167, %166 ]
  %182 = and i16 %181, 16
  %183 = icmp eq i16 %182, 0
  br i1 %183, label %193, label %184

184:                                              ; preds = %180
  %185 = load ptr, ptr %5, align 4
  %186 = icmp eq ptr %185, null
  br i1 %186, label %193, label %187

187:                                              ; preds = %184
  %188 = getelementptr inbounds %struct.usbhs_mod, ptr %185, i32 0, i32 12
  %189 = load ptr, ptr %188, align 4
  %190 = icmp eq ptr %189, null
  br i1 %190, label %193, label %191

191:                                              ; preds = %187
  %192 = call i32 %189(ptr noundef %1, ptr noundef nonnull %3) #8
  br label %193

193:                                              ; preds = %191, %187, %184, %180, %132
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %3) #8
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_mod_gadget_remove(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usbhs_mod_remove(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @usbhs_mod_gadget_remove(ptr noundef %0) #8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @usbhs_status_get_device_state(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = load i16, ptr %0, align 2
  %3 = and i16 %2, 112
  %4 = zext i16 %3 to i32
  ret i32 %4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @usbhs_status_get_ctrl_stage(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = load i16, ptr %0, align 2
  %3 = and i16 %2, 7
  %4 = zext i16 %3 to i32
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_write(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbhsc_schedule_notify_hotplug(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usbhs_pdev_to_priv(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @usbhs_read(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #6 section ".spinlock.text"

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
