; ModuleID = '/llk/IR/drivers/usb/renesas_usbhs/pipe.c_pt.bc'
source_filename = "../drivers/usb/renesas_usbhs/pipe.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.usbhs_pipe = type { i32, ptr, ptr, %struct.list_head, i32, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.usbhs_priv = type { ptr, i32, ptr, %struct.renesas_usbhs_driver_param, %struct.delayed_work, ptr, ptr, %struct.spinlock, %struct.usbhs_mod_info, %struct.usbhs_pipe_info, %struct.usbhs_fifo_info, ptr, ptr, [2 x ptr] }
%struct.renesas_usbhs_driver_param = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
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
%struct.renesas_usbhs_driver_pipe_config = type { i8, i16, i8, i8 }

@usbhsp_pipe_name = internal unnamed_addr constant [4 x ptr] [ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = private unnamed_addr constant [17 x i8] c"devsel error %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"can't get pipe (%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"pipe setup failed %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"can't setup pipe\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"drivers/usb/renesas_usbhs/pipe.c\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"1st PIPE is not DCP\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"DCP\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"ISO\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"BULK\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"INT\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"unknown pipe (%d)\0A\00", align 1
@usbhsp_setup_pipecfg.type_array = internal unnamed_addr constant [4 x i16] [i16 0, i16 -16384, i16 16384, i16 -32768], align 2
@switch.table.usbhs_pipe_set_trans_count_if_bulk.11 = private unnamed_addr constant [15 x i32] [i32 146, i32 150, i32 154, i32 158, i32 162, i32 146, i32 146, i32 146, i32 186, i32 190, i32 166, i32 170, i32 174, i32 178, i32 182], align 4
@switch.table.usbhs_pipe_set_trans_count_if_bulk.12 = private unnamed_addr constant [15 x i32] [i32 144, i32 148, i32 152, i32 156, i32 160, i32 144, i32 144, i32 144, i32 184, i32 188, i32 164, i32 168, i32 172, i32 176, i32 180], align 4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @usbhs_pipe_name(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i32, ptr %0, align 4
  %3 = getelementptr [4 x ptr], ptr @usbhsp_pipe_name, i32 0, i32 %2
  %4 = load ptr, ptr %3, align 4
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usbhs_pipe_is_accessible(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.usbhs_pipe, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %0
  %7 = ptrtoint ptr %0 to i32
  %8 = ptrtoint ptr %5 to i32
  %9 = sub i32 %7, %8
  %10 = sdiv exact i32 %9, 36
  %11 = shl nsw i32 %10, 1
  %12 = add nsw i32 %11, 110
  %13 = select i1 %6, i32 96, i32 %12
  %14 = tail call zeroext i16 @usbhs_read(ptr noundef %3, i32 noundef %13) #9
  %15 = icmp sgt i16 %14, -1
  %16 = select i1 %15, i32 -16, i32 0
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @usbhs_pipe_contains_transmittable_data(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.usbhs_pipe, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %17, label %7

7:                                                ; preds = %1
  %8 = ptrtoint ptr %0 to i32
  %9 = ptrtoint ptr %5 to i32
  %10 = sub i32 %8, %9
  %11 = sdiv exact i32 %10, 36
  %12 = shl nsw i32 %11, 1
  %13 = add nsw i32 %12, 110
  %14 = tail call zeroext i16 @usbhs_read(ptr noundef %3, i32 noundef %13) #9
  %15 = and i16 %14, 16384
  %16 = icmp ne i16 %15, 0
  br label %17

17:                                               ; preds = %7, %1
  %18 = phi i1 [ false, %1 ], [ %16, %7 ]
  ret i1 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usbhs_pipe_disable(ptr noundef %0) local_unnamed_addr #1 {
  tail call fastcc void @__usbhsp_pid_try_nak_if_stall(ptr noundef %0)
  %2 = getelementptr inbounds %struct.usbhs_pipe, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %0
  %7 = ptrtoint ptr %0 to i32
  %8 = ptrtoint ptr %5 to i32
  %9 = sub i32 %7, %8
  %10 = sdiv exact i32 %9, 36
  %11 = shl nsw i32 %10, 1
  %12 = add nsw i32 %11, 110
  %13 = select i1 %6, i32 96, i32 %12
  tail call void @usbhs_bset(ptr noundef %3, i32 noundef %13, i16 noundef zeroext 3, i16 noundef zeroext 0) #9
  br label %14

14:                                               ; preds = %29, %1
  %15 = phi i32 [ 1024, %1 ], [ %31, %29 ]
  %16 = load ptr, ptr %2, align 4
  %17 = getelementptr inbounds %struct.usbhs_priv, ptr %16, i32 0, i32 9
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %0
  %20 = ptrtoint ptr %18 to i32
  %21 = sub i32 %7, %20
  %22 = sdiv exact i32 %21, 36
  %23 = shl nsw i32 %22, 1
  %24 = add nsw i32 %23, 110
  %25 = select i1 %19, i32 96, i32 %24
  %26 = tail call zeroext i16 @usbhs_read(ptr noundef %16, i32 noundef %25) #9
  %27 = and i16 %26, 32
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %14
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 2147480) #9
  %31 = add nsw i32 %15, -1
  %32 = icmp eq i32 %15, 0
  br i1 %32, label %33, label %14

33:                                               ; preds = %29, %14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__usbhsp_pid_try_nak_if_stall(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.usbhs_pipe, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %0
  %7 = ptrtoint ptr %0 to i32
  %8 = ptrtoint ptr %5 to i32
  %9 = sub i32 %7, %8
  %10 = sdiv exact i32 %9, 36
  %11 = shl nsw i32 %10, 1
  %12 = add nsw i32 %11, 110
  %13 = select i1 %6, i32 96, i32 %12
  %14 = tail call zeroext i16 @usbhs_read(ptr noundef %3, i32 noundef %13) #9
  %15 = and i16 %14, 3
  %16 = zext i16 %15 to i32
  switch i32 %16, label %39 [
    i32 3, label %17
    i32 2, label %28
  ]

17:                                               ; preds = %1
  %18 = load ptr, ptr %2, align 4
  %19 = getelementptr inbounds %struct.usbhs_priv, ptr %18, i32 0, i32 9
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %0
  %22 = ptrtoint ptr %20 to i32
  %23 = sub i32 %7, %22
  %24 = sdiv exact i32 %23, 36
  %25 = shl nsw i32 %24, 1
  %26 = add nsw i32 %25, 110
  %27 = select i1 %21, i32 96, i32 %26
  tail call void @usbhs_bset(ptr noundef %18, i32 noundef %27, i16 noundef zeroext 3, i16 noundef zeroext 2) #9
  br label %28

28:                                               ; preds = %17, %1
  %29 = load ptr, ptr %2, align 4
  %30 = getelementptr inbounds %struct.usbhs_priv, ptr %29, i32 0, i32 9
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, %0
  %33 = ptrtoint ptr %31 to i32
  %34 = sub i32 %7, %33
  %35 = sdiv exact i32 %34, 36
  %36 = shl nsw i32 %35, 1
  %37 = add nsw i32 %36, 110
  %38 = select i1 %32, i32 96, i32 %37
  tail call void @usbhs_bset(ptr noundef %29, i32 noundef %38, i16 noundef zeroext 3, i16 noundef zeroext 0) #9
  br label %39

39:                                               ; preds = %28, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usbhs_pipe_enable(ptr noundef %0) local_unnamed_addr #1 {
  tail call fastcc void @__usbhsp_pid_try_nak_if_stall(ptr noundef %0)
  %2 = getelementptr inbounds %struct.usbhs_pipe, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %0
  %7 = ptrtoint ptr %0 to i32
  %8 = ptrtoint ptr %5 to i32
  %9 = sub i32 %7, %8
  %10 = sdiv exact i32 %9, 36
  %11 = shl nsw i32 %10, 1
  %12 = add nsw i32 %11, 110
  %13 = select i1 %6, i32 96, i32 %12
  tail call void @usbhs_bset(ptr noundef %3, i32 noundef %13, i16 noundef zeroext 3, i16 noundef zeroext 1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usbhs_pipe_stall(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.usbhs_pipe, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %0
  %7 = ptrtoint ptr %0 to i32
  %8 = ptrtoint ptr %5 to i32
  %9 = sub i32 %7, %8
  %10 = sdiv exact i32 %9, 36
  %11 = shl nsw i32 %10, 1
  %12 = add nsw i32 %11, 110
  %13 = select i1 %6, i32 96, i32 %12
  %14 = tail call zeroext i16 @usbhs_read(ptr noundef %3, i32 noundef %13) #9
  %15 = and i16 %14, 3
  %16 = zext i16 %15 to i32
  switch i32 %16, label %39 [
    i32 0, label %17
    i32 1, label %28
  ]

17:                                               ; preds = %1
  %18 = load ptr, ptr %2, align 4
  %19 = getelementptr inbounds %struct.usbhs_priv, ptr %18, i32 0, i32 9
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %0
  %22 = ptrtoint ptr %20 to i32
  %23 = sub i32 %7, %22
  %24 = sdiv exact i32 %23, 36
  %25 = shl nsw i32 %24, 1
  %26 = add nsw i32 %25, 110
  %27 = select i1 %21, i32 96, i32 %26
  tail call void @usbhs_bset(ptr noundef %18, i32 noundef %27, i16 noundef zeroext 3, i16 noundef zeroext 2) #9
  br label %39

28:                                               ; preds = %1
  %29 = load ptr, ptr %2, align 4
  %30 = getelementptr inbounds %struct.usbhs_priv, ptr %29, i32 0, i32 9
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, %0
  %33 = ptrtoint ptr %31 to i32
  %34 = sub i32 %7, %33
  %35 = sdiv exact i32 %34, 36
  %36 = shl nsw i32 %35, 1
  %37 = add nsw i32 %36, 110
  %38 = select i1 %32, i32 96, i32 %37
  tail call void @usbhs_bset(ptr noundef %29, i32 noundef %38, i16 noundef zeroext 3, i16 noundef zeroext 3) #9
  br label %39

39:                                               ; preds = %28, %17, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usbhs_pipe_is_stall(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.usbhs_pipe, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %0
  %7 = ptrtoint ptr %0 to i32
  %8 = ptrtoint ptr %5 to i32
  %9 = sub i32 %7, %8
  %10 = sdiv exact i32 %9, 36
  %11 = shl nsw i32 %10, 1
  %12 = add nsw i32 %11, 110
  %13 = select i1 %6, i32 96, i32 %12
  %14 = tail call zeroext i16 @usbhs_read(ptr noundef %3, i32 noundef %13) #9
  %15 = lshr i16 %14, 1
  %16 = and i16 %15, 1
  %17 = zext i16 %16 to i32
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usbhs_pipe_set_trans_count_if_bulk(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = load i32, ptr %0, align 4
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %5, label %87

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.usbhs_pipe, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.usbhs_priv, ptr %7, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = ptrtoint ptr %0 to i32
  %11 = ptrtoint ptr %9 to i32
  %12 = sub i32 %10, %11
  %13 = sdiv exact i32 %12, 36
  %14 = add nsw i32 %13, -1
  %15 = icmp ult i32 %14, 15
  br i1 %15, label %20, label %16

16:                                               ; preds = %20, %5
  %17 = getelementptr inbounds %struct.usbhs_priv, ptr %7, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.platform_device, ptr %18, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.10, i32 noundef %13) #10
  br label %30

20:                                               ; preds = %5
  %21 = trunc i32 %14 to i16
  %22 = lshr i16 32543, %21
  %23 = and i16 %22, 1
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %16, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds [15 x i32], ptr @switch.table.usbhs_pipe_set_trans_count_if_bulk.12, i32 0, i32 %14
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq ptr %9, %0
  %29 = select i1 %28, i32 0, i32 %27
  tail call void @usbhs_bset(ptr noundef %7, i32 noundef %29, i16 noundef zeroext 768, i16 noundef zeroext 256) #9
  br label %30

30:                                               ; preds = %25, %16
  %31 = getelementptr inbounds %struct.usbhs_pipe, ptr %0, i32 0, i32 5
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 2
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %87, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.usbhs_pipe, ptr %0, i32 0, i32 4
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %1, -1
  %39 = add i32 %38, %37
  %40 = sdiv i32 %39, %37
  %41 = trunc i32 %40 to i16
  %42 = load ptr, ptr %6, align 4
  %43 = getelementptr inbounds %struct.usbhs_priv, ptr %42, i32 0, i32 9
  %44 = load ptr, ptr %43, align 4
  %45 = ptrtoint ptr %44 to i32
  %46 = sub i32 %10, %45
  %47 = sdiv exact i32 %46, 36
  %48 = add nsw i32 %47, -1
  %49 = icmp ult i32 %48, 15
  br i1 %49, label %54, label %50

50:                                               ; preds = %54, %35
  %51 = getelementptr inbounds %struct.usbhs_priv, ptr %42, i32 0, i32 5
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.platform_device, ptr %52, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.10, i32 noundef %47) #10
  br label %64

54:                                               ; preds = %35
  %55 = trunc i32 %48 to i16
  %56 = lshr i16 32543, %55
  %57 = and i16 %56, 1
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %50, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds [15 x i32], ptr @switch.table.usbhs_pipe_set_trans_count_if_bulk.11, i32 0, i32 %48
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq ptr %44, %0
  %63 = select i1 %62, i32 0, i32 %61
  tail call void @usbhs_bset(ptr noundef %42, i32 noundef %63, i16 noundef zeroext -1, i16 noundef zeroext %41) #9
  br label %64

64:                                               ; preds = %59, %50
  %65 = load ptr, ptr %6, align 4
  %66 = getelementptr inbounds %struct.usbhs_priv, ptr %65, i32 0, i32 9
  %67 = load ptr, ptr %66, align 4
  %68 = ptrtoint ptr %67 to i32
  %69 = sub i32 %10, %68
  %70 = sdiv exact i32 %69, 36
  %71 = add nsw i32 %70, -1
  %72 = icmp ult i32 %71, 15
  br i1 %72, label %77, label %73

73:                                               ; preds = %77, %64
  %74 = getelementptr inbounds %struct.usbhs_priv, ptr %65, i32 0, i32 5
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.platform_device, ptr %75, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.10, i32 noundef %70) #10
  br label %87

77:                                               ; preds = %64
  %78 = trunc i32 %71 to i16
  %79 = lshr i16 32543, %78
  %80 = and i16 %79, 1
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %73, label %82

82:                                               ; preds = %77
  %83 = getelementptr inbounds [15 x i32], ptr @switch.table.usbhs_pipe_set_trans_count_if_bulk.12, i32 0, i32 %71
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq ptr %67, %0
  %86 = select i1 %85, i32 0, i32 %84
  tail call void @usbhs_bset(ptr noundef %65, i32 noundef %86, i16 noundef zeroext 512, i16 noundef zeroext 512) #9
  br label %87

87:                                               ; preds = %82, %73, %30, %2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @usbhs_pipe_is_dir_in(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.usbhs_pipe, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 2
  ret i32 %4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @usbhs_pipe_get_maxpacket(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.usbhs_pipe, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usbhs_pipe_config_update(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.usbhs_pipe, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usbhs_priv, ptr %6, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %0 to i32
  %10 = ptrtoint ptr %8 to i32
  %11 = sub i32 %9, %10
  %12 = sdiv exact i32 %11, 36
  %13 = getelementptr inbounds %struct.usbhs_priv, ptr %6, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr %struct.renesas_usbhs_driver_pipe_config, ptr %14, i32 %12, i32 3
  %16 = load i8, ptr %15, align 1, !range !8
  %17 = icmp eq i8 %16, 0
  %18 = icmp ugt i16 %1, 10
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = zext i16 %1 to i32
  %21 = getelementptr inbounds %struct.usbhs_priv, ptr %6, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.platform_device, ptr %22, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str, i32 noundef %20) #10
  br label %24

24:                                               ; preds = %19, %4
  %25 = phi i16 [ 0, %19 ], [ %1, %4 ]
  %26 = tail call fastcc i32 @usbhsp_pipe_barrier(ptr noundef %0)
  %27 = zext i16 %3 to i32
  %28 = getelementptr inbounds %struct.usbhs_pipe, ptr %0, i32 0, i32 4
  store i32 %27, ptr %28, align 4
  %29 = load ptr, ptr %5, align 4
  %30 = getelementptr inbounds %struct.usbhs_priv, ptr %29, i32 0, i32 9
  %31 = load ptr, ptr %30, align 4
  %32 = ptrtoint ptr %31 to i32
  %33 = sub i32 %9, %32
  %34 = sdiv exact i32 %33, 36
  %35 = trunc i32 %34 to i16
  %36 = and i16 %35, 15
  tail call void @usbhs_write(ptr noundef %29, i32 noundef 100, i16 noundef zeroext %36) #9
  %37 = shl nuw i16 %25, 12
  %38 = or i16 %37, %3
  %39 = load ptr, ptr %5, align 4
  %40 = getelementptr inbounds %struct.usbhs_priv, ptr %39, i32 0, i32 9
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, %0
  %43 = select i1 %42, i32 94, i32 108
  tail call void @usbhs_bset(ptr noundef %39, i32 noundef %43, i16 noundef zeroext -1, i16 noundef zeroext %38) #9
  %44 = load ptr, ptr %5, align 4
  %45 = getelementptr inbounds %struct.usbhs_priv, ptr %44, i32 0, i32 9
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, %0
  br i1 %47, label %51, label %48

48:                                               ; preds = %24
  %49 = select i1 %17, i16 0, i16 512
  %50 = or i16 %49, %2
  tail call void @usbhs_bset(ptr noundef %44, i32 noundef 104, i16 noundef zeroext 527, i16 noundef zeroext %50) #9
  br label %51

51:                                               ; preds = %48, %24
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @usbhsp_pipe_barrier(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.usbhs_pipe, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @usbhs_mod_is_host(ptr noundef %3) #9
  %5 = icmp eq i32 %4, 0
  tail call void @usbhs_write(ptr noundef %3, i32 noundef 32, i16 noundef zeroext 0) #9
  tail call fastcc void @__usbhsp_pid_try_nak_if_stall(ptr noundef %0) #9
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr inbounds %struct.usbhs_priv, ptr %6, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %0
  %10 = ptrtoint ptr %0 to i32
  %11 = ptrtoint ptr %8 to i32
  %12 = sub i32 %10, %11
  %13 = sdiv exact i32 %12, 36
  %14 = shl nsw i32 %13, 1
  %15 = add nsw i32 %14, 110
  %16 = select i1 %9, i32 96, i32 %15
  tail call void @usbhs_bset(ptr noundef %6, i32 noundef %16, i16 noundef zeroext 3, i16 noundef zeroext 0) #9
  br label %17

17:                                               ; preds = %32, %1
  %18 = phi i32 [ 1024, %1 ], [ %34, %32 ]
  %19 = load ptr, ptr %2, align 4
  %20 = getelementptr inbounds %struct.usbhs_priv, ptr %19, i32 0, i32 9
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %0
  %23 = ptrtoint ptr %21 to i32
  %24 = sub i32 %10, %23
  %25 = sdiv exact i32 %24, 36
  %26 = shl nsw i32 %25, 1
  %27 = add nsw i32 %26, 110
  %28 = select i1 %22, i32 96, i32 %27
  %29 = tail call zeroext i16 @usbhs_read(ptr noundef %19, i32 noundef %28) #9
  %30 = and i16 %29, 32
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %17
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 2147480) #9
  %34 = add nsw i32 %18, -1
  %35 = icmp eq i32 %18, 0
  br i1 %35, label %36, label %17

36:                                               ; preds = %32, %17
  %37 = select i1 %5, i32 3, i32 4099
  br label %38

38:                                               ; preds = %54, %36
  %39 = phi i32 [ 1024, %36 ], [ %56, %54 ]
  %40 = load ptr, ptr %2, align 4
  %41 = getelementptr inbounds %struct.usbhs_priv, ptr %40, i32 0, i32 9
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, %0
  %44 = ptrtoint ptr %42 to i32
  %45 = sub i32 %10, %44
  %46 = sdiv exact i32 %45, 36
  %47 = shl nsw i32 %46, 1
  %48 = add nsw i32 %47, 110
  %49 = select i1 %43, i32 96, i32 %48
  %50 = tail call zeroext i16 @usbhs_read(ptr noundef %40, i32 noundef %49) #9
  %51 = zext i16 %50 to i32
  %52 = and i32 %37, %51
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %38
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 2147480) #9
  %56 = add nsw i32 %39, -1
  %57 = icmp eq i32 %39, 0
  br i1 %57, label %58, label %38

58:                                               ; preds = %54, %38
  %59 = phi i32 [ 0, %38 ], [ -16, %54 ]
  ret i32 %59
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @usbhs_pipe_is_dir_host(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.usbhs_pipe, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 4
  ret i32 %4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @usbhs_pipe_is_running(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.usbhs_pipe, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 8
  ret i32 %4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @usbhs_pipe_running(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = icmp eq i32 %1, 0
  %4 = getelementptr inbounds %struct.usbhs_pipe, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, -9
  %7 = select i1 %3, i32 0, i32 8
  %8 = or i32 %6, %7
  store i32 %8, ptr %4, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usbhs_pipe_data_sequence(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  switch i32 %1, label %18 [
    i32 0, label %4
    i32 1, label %3
  ]

3:                                                ; preds = %2
  br label %4

4:                                                ; preds = %3, %2
  %5 = phi i16 [ 128, %3 ], [ 256, %2 ]
  %6 = getelementptr inbounds %struct.usbhs_pipe, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.usbhs_priv, ptr %7, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %0
  %11 = ptrtoint ptr %0 to i32
  %12 = ptrtoint ptr %9 to i32
  %13 = sub i32 %11, %12
  %14 = sdiv exact i32 %13, 36
  %15 = shl nsw i32 %14, 1
  %16 = add nsw i32 %15, 110
  %17 = select i1 %10, i32 96, i32 %16
  tail call void @usbhs_bset(ptr noundef %7, i32 noundef %17, i16 noundef zeroext 384, i16 noundef zeroext %5) #9
  br label %18

18:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usbhs_pipe_clear(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.usbhs_pipe, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @usbhs_fifo_clear_dcp(ptr noundef %0) #9
  br label %25

8:                                                ; preds = %1
  %9 = ptrtoint ptr %0 to i32
  %10 = ptrtoint ptr %5 to i32
  %11 = sub i32 %9, %10
  %12 = sdiv exact i32 %11, 36
  %13 = shl nsw i32 %12, 1
  %14 = add nsw i32 %13, 110
  tail call void @usbhs_bset(ptr noundef %3, i32 noundef %14, i16 noundef zeroext 512, i16 noundef zeroext 512) #9
  %15 = load ptr, ptr %2, align 4
  %16 = getelementptr inbounds %struct.usbhs_priv, ptr %15, i32 0, i32 9
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %0
  %19 = ptrtoint ptr %17 to i32
  %20 = sub i32 %9, %19
  %21 = sdiv exact i32 %20, 36
  %22 = shl nsw i32 %21, 1
  %23 = add nsw i32 %22, 110
  %24 = select i1 %18, i32 96, i32 %23
  tail call void @usbhs_bset(ptr noundef %15, i32 noundef %24, i16 noundef zeroext 512, i16 noundef zeroext 0) #9
  br label %25

25:                                               ; preds = %8, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_fifo_clear_dcp(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usbhs_pipe_clear_without_sequence(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.usbhs_pipe, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usbhs_priv, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %0 to i32
  %9 = ptrtoint ptr %7 to i32
  %10 = sub i32 %8, %9
  %11 = sdiv exact i32 %10, 36
  %12 = trunc i32 %11 to i16
  %13 = and i16 %12, 15
  tail call void @usbhs_write(ptr noundef %5, i32 noundef 100, i16 noundef zeroext %13) #9
  %14 = load ptr, ptr %4, align 4
  %15 = getelementptr inbounds %struct.usbhs_priv, ptr %14, i32 0, i32 9
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %0
  %18 = ptrtoint ptr %16 to i32
  %19 = sub i32 %8, %18
  %20 = sdiv exact i32 %19, 36
  %21 = shl nsw i32 %20, 1
  %22 = add nsw i32 %21, 110
  %23 = select i1 %17, i32 96, i32 %22
  %24 = tail call zeroext i16 @usbhs_read(ptr noundef %14, i32 noundef %23) #9
  %25 = icmp eq i32 %1, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %3
  %27 = icmp eq i32 %2, 0
  %28 = select i1 %27, i16 0, i16 1024
  %29 = load ptr, ptr %4, align 4
  %30 = getelementptr inbounds %struct.usbhs_priv, ptr %29, i32 0, i32 9
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, %0
  %33 = select i1 %32, i32 92, i32 104
  tail call void @usbhs_bset(ptr noundef %29, i32 noundef %33, i16 noundef zeroext 1024, i16 noundef zeroext %28) #9
  br label %34

34:                                               ; preds = %26, %3
  %35 = load ptr, ptr %4, align 4
  %36 = getelementptr inbounds %struct.usbhs_priv, ptr %35, i32 0, i32 9
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, %0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  tail call void @usbhs_fifo_clear_dcp(ptr noundef %0) #9
  br label %56

40:                                               ; preds = %34
  %41 = ptrtoint ptr %37 to i32
  %42 = sub i32 %8, %41
  %43 = sdiv exact i32 %42, 36
  %44 = shl nsw i32 %43, 1
  %45 = add nsw i32 %44, 110
  tail call void @usbhs_bset(ptr noundef %35, i32 noundef %45, i16 noundef zeroext 512, i16 noundef zeroext 512) #9
  %46 = load ptr, ptr %4, align 4
  %47 = getelementptr inbounds %struct.usbhs_priv, ptr %46, i32 0, i32 9
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, %0
  %50 = ptrtoint ptr %48 to i32
  %51 = sub i32 %8, %50
  %52 = sdiv exact i32 %51, 36
  %53 = shl nsw i32 %52, 1
  %54 = add nsw i32 %53, 110
  %55 = select i1 %49, i32 96, i32 %54
  tail call void @usbhs_bset(ptr noundef %46, i32 noundef %55, i16 noundef zeroext 512, i16 noundef zeroext 0) #9
  br label %56

56:                                               ; preds = %40, %39
  %57 = and i16 %24, 64
  %58 = icmp eq i16 %57, 0
  %59 = select i1 %58, i16 256, i16 128
  %60 = load ptr, ptr %4, align 4
  %61 = getelementptr inbounds %struct.usbhs_priv, ptr %60, i32 0, i32 9
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, %0
  %64 = ptrtoint ptr %62 to i32
  %65 = sub i32 %8, %64
  %66 = sdiv exact i32 %65, 36
  %67 = shl nsw i32 %66, 1
  %68 = add nsw i32 %67, 110
  %69 = select i1 %63, i32 96, i32 %68
  tail call void @usbhs_bset(ptr noundef %60, i32 noundef %69, i16 noundef zeroext 384, i16 noundef zeroext %59) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usbhs_pipe_config_change_bfre(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.usbhs_pipe, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usbhs_priv, ptr %4, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %26, label %8

8:                                                ; preds = %2
  %9 = ptrtoint ptr %0 to i32
  %10 = ptrtoint ptr %6 to i32
  %11 = sub i32 %9, %10
  %12 = sdiv exact i32 %11, 36
  %13 = trunc i32 %12 to i16
  %14 = and i16 %13, 15
  tail call void @usbhs_write(ptr noundef %4, i32 noundef 100, i16 noundef zeroext %14) #9
  %15 = load ptr, ptr %3, align 4
  %16 = getelementptr inbounds %struct.usbhs_priv, ptr %15, i32 0, i32 9
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %0
  %19 = select i1 %18, i32 92, i32 104
  %20 = tail call zeroext i16 @usbhs_read(ptr noundef %15, i32 noundef %19) #9
  %21 = lshr i16 %20, 10
  %22 = and i16 %21, 1
  %23 = zext i16 %22 to i32
  %24 = icmp eq i32 %23, %1
  br i1 %24, label %26, label %25

25:                                               ; preds = %8
  tail call void @usbhs_pipe_clear_without_sequence(ptr noundef %0, i32 noundef 1, i32 noundef %1)
  br label %26

26:                                               ; preds = %25, %8, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usbhs_pipe_init(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 9
  %4 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 9, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %45

7:                                                ; preds = %41, %2
  %8 = phi i32 [ %42, %41 ], [ 0, %2 ]
  %9 = load ptr, ptr %3, align 4
  %10 = getelementptr %struct.usbhs_pipe, ptr %9, i32 %8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %45, label %12

12:                                               ; preds = %7
  %13 = getelementptr %struct.usbhs_pipe, ptr %9, i32 %8, i32 5
  store i32 0, ptr %13, align 4
  %14 = getelementptr %struct.usbhs_pipe, ptr %9, i32 %8, i32 2
  store ptr null, ptr %14, align 4
  %15 = getelementptr %struct.usbhs_pipe, ptr %9, i32 %8, i32 7
  store ptr null, ptr %15, align 4
  %16 = getelementptr %struct.usbhs_pipe, ptr %9, i32 %8, i32 3
  store volatile ptr %16, ptr %16, align 4
  %17 = getelementptr %struct.usbhs_pipe, ptr %9, i32 %8, i32 3, i32 1
  store ptr %16, ptr %17, align 4
  %18 = getelementptr %struct.usbhs_pipe, ptr %9, i32 %8, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.usbhs_priv, ptr %19, i32 0, i32 9
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %10
  br i1 %22, label %23, label %24

23:                                               ; preds = %12
  tail call void @usbhs_fifo_clear_dcp(ptr noundef nonnull %10) #9
  br label %41

24:                                               ; preds = %12
  %25 = ptrtoint ptr %10 to i32
  %26 = ptrtoint ptr %21 to i32
  %27 = sub i32 %25, %26
  %28 = sdiv exact i32 %27, 36
  %29 = shl nsw i32 %28, 1
  %30 = add nsw i32 %29, 110
  tail call void @usbhs_bset(ptr noundef %19, i32 noundef %30, i16 noundef zeroext 512, i16 noundef zeroext 512) #9
  %31 = load ptr, ptr %18, align 4
  %32 = getelementptr inbounds %struct.usbhs_priv, ptr %31, i32 0, i32 9
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, %10
  %35 = ptrtoint ptr %33 to i32
  %36 = sub i32 %25, %35
  %37 = sdiv exact i32 %36, 36
  %38 = shl nsw i32 %37, 1
  %39 = add nsw i32 %38, 110
  %40 = select i1 %34, i32 96, i32 %39
  tail call void @usbhs_bset(ptr noundef %31, i32 noundef %40, i16 noundef zeroext 512, i16 noundef zeroext 0) #9
  br label %41

41:                                               ; preds = %24, %23
  %42 = add nuw nsw i32 %8, 1
  %43 = load i32, ptr %4, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %7, label %45

45:                                               ; preds = %41, %7, %2
  %46 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 9, i32 2
  store ptr %1, ptr %46, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @usbhs_pipe_malloc(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %7 = tail call i32 @usbhs_mod_is_host(ptr noundef %0) #9
  %8 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 9, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 9
  %13 = load ptr, ptr %12, align 4
  br label %14

14:                                               ; preds = %26, %11
  %15 = phi i32 [ 0, %11 ], [ %27, %26 ]
  %16 = getelementptr %struct.usbhs_pipe, ptr %13, i32 %15
  %17 = icmp eq ptr %16, null
  br i1 %17, label %29, label %18

18:                                               ; preds = %14
  %19 = load i32, ptr %16, align 4
  %20 = icmp eq i32 %19, %1
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = getelementptr %struct.usbhs_pipe, ptr %13, i32 %15, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %21, %18
  %27 = add nuw nsw i32 %15, 1
  %28 = icmp eq i32 %27, %9
  br i1 %28, label %29, label %14

29:                                               ; preds = %26, %14, %3
  %30 = getelementptr [4 x ptr], ptr @usbhsp_pipe_name, i32 0, i32 %1
  %31 = load ptr, ptr %30, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.1, ptr noundef %31) #10
  br label %159

32:                                               ; preds = %21
  store i32 1, ptr %22, align 4
  %33 = getelementptr %struct.usbhs_pipe, ptr %13, i32 %15, i32 3
  store volatile ptr %33, ptr %33, align 4
  %34 = getelementptr %struct.usbhs_pipe, ptr %13, i32 %15, i32 3, i32 1
  store ptr %33, ptr %34, align 4
  tail call fastcc void @__usbhsp_pid_try_nak_if_stall(ptr noundef nonnull %16) #9
  %35 = getelementptr %struct.usbhs_pipe, ptr %13, i32 %15, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.usbhs_priv, ptr %36, i32 0, i32 9
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, %16
  %40 = ptrtoint ptr %16 to i32
  %41 = ptrtoint ptr %38 to i32
  %42 = sub i32 %40, %41
  %43 = sdiv exact i32 %42, 36
  %44 = shl nsw i32 %43, 1
  %45 = add nsw i32 %44, 110
  %46 = select i1 %39, i32 96, i32 %45
  tail call void @usbhs_bset(ptr noundef %36, i32 noundef %46, i16 noundef zeroext 3, i16 noundef zeroext 0) #9
  br label %47

47:                                               ; preds = %62, %32
  %48 = phi i32 [ 1024, %32 ], [ %64, %62 ]
  %49 = load ptr, ptr %35, align 4
  %50 = getelementptr inbounds %struct.usbhs_priv, ptr %49, i32 0, i32 9
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, %16
  %53 = ptrtoint ptr %51 to i32
  %54 = sub i32 %40, %53
  %55 = sdiv exact i32 %54, 36
  %56 = shl nsw i32 %55, 1
  %57 = add nsw i32 %56, 110
  %58 = select i1 %52, i32 96, i32 %57
  %59 = tail call zeroext i16 @usbhs_read(ptr noundef %49, i32 noundef %58) #9
  %60 = and i16 %59, 32
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %47
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 2147480) #9
  %64 = add nsw i32 %48, -1
  %65 = icmp eq i32 %48, 0
  br i1 %65, label %66, label %47

66:                                               ; preds = %62, %47
  %67 = tail call fastcc i32 @usbhsp_pipe_barrier(ptr noundef nonnull %16)
  %68 = icmp slt i32 %67, 0
  %69 = load ptr, ptr %35, align 4
  %70 = getelementptr inbounds %struct.usbhs_priv, ptr %69, i32 0, i32 9
  %71 = load ptr, ptr %70, align 4
  br i1 %68, label %72, label %76

72:                                               ; preds = %66
  %73 = ptrtoint ptr %71 to i32
  %74 = sub i32 %40, %73
  %75 = sdiv exact i32 %74, 36
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.2, i32 noundef %75) #10
  br label %159

76:                                               ; preds = %66
  %77 = icmp eq ptr %71, %16
  br i1 %77, label %93, label %78

78:                                               ; preds = %76
  %79 = load i32, ptr %16, align 4
  %80 = getelementptr [4 x i16], ptr @usbhsp_setup_pipecfg.type_array, i32 0, i32 %79
  %81 = load i16, ptr %80, align 2
  %82 = icmp ne i32 %2, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i32, ptr %22, align 4
  %85 = or i32 %84, 4
  store i32 %85, ptr %22, align 4
  br label %86

86:                                               ; preds = %83, %78
  %87 = icmp ne i32 %7, 0
  %88 = xor i1 %82, %87
  %89 = select i1 %88, i16 16, i16 0
  br i1 %88, label %94, label %90

90:                                               ; preds = %86
  %91 = load i32, ptr %22, align 4
  %92 = or i32 %91, 2
  store i32 %92, ptr %22, align 4
  br label %94

93:                                               ; preds = %76
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.3) #10
  br label %159

94:                                               ; preds = %90, %86
  %95 = icmp ne i32 %79, 2
  %96 = or i1 %88, %95
  %97 = select i1 %96, i16 0, i16 128
  %98 = or i16 %81, %89
  %99 = or i16 %98, %97
  %100 = load ptr, ptr %70, align 4
  %101 = ptrtoint ptr %100 to i32
  %102 = sub i32 %40, %101
  %103 = sdiv exact i32 %102, 36
  %104 = getelementptr inbounds %struct.usbhs_priv, ptr %69, i32 0, i32 3
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr %struct.renesas_usbhs_driver_pipe_config, ptr %105, i32 %103, i32 1
  %107 = load i16, ptr %106, align 2
  %108 = getelementptr %struct.renesas_usbhs_driver_pipe_config, ptr %105, i32 %103, i32 2
  %109 = load i8, ptr %108, align 2
  %110 = trunc i32 %103 to i16
  %111 = and i16 %110, 15
  tail call void @usbhs_write(ptr noundef %69, i32 noundef 100, i16 noundef zeroext %111) #9
  %112 = load ptr, ptr %35, align 4
  %113 = getelementptr inbounds %struct.usbhs_priv, ptr %112, i32 0, i32 9
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, %16
  %116 = select i1 %115, i32 92, i32 104
  tail call void @usbhs_bset(ptr noundef %112, i32 noundef %116, i16 noundef zeroext -1, i16 noundef zeroext %99) #9
  %117 = load ptr, ptr %35, align 4
  %118 = getelementptr inbounds %struct.usbhs_priv, ptr %117, i32 0, i32 9
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, %16
  br i1 %120, label %131, label %121

121:                                              ; preds = %94
  %122 = shl i16 %107, 4
  %123 = add i16 %122, 31744
  %124 = and i16 %123, 31744
  %125 = zext i8 %109 to i16
  %126 = or i16 %124, %125
  tail call void @usbhs_bset(ptr noundef %117, i32 noundef 106, i16 noundef zeroext -1, i16 noundef zeroext %126) #9
  %127 = load ptr, ptr %35, align 4
  %128 = getelementptr inbounds %struct.usbhs_priv, ptr %127, i32 0, i32 9
  %129 = load ptr, ptr %128, align 4
  %130 = icmp eq ptr %129, %16
  br i1 %130, label %131, label %132

131:                                              ; preds = %121, %94
  tail call void @usbhs_fifo_clear_dcp(ptr noundef nonnull %16) #9
  br label %148

132:                                              ; preds = %121
  %133 = ptrtoint ptr %129 to i32
  %134 = sub i32 %40, %133
  %135 = sdiv exact i32 %134, 36
  %136 = shl nsw i32 %135, 1
  %137 = add nsw i32 %136, 110
  tail call void @usbhs_bset(ptr noundef %127, i32 noundef %137, i16 noundef zeroext 512, i16 noundef zeroext 512) #9
  %138 = load ptr, ptr %35, align 4
  %139 = getelementptr inbounds %struct.usbhs_priv, ptr %138, i32 0, i32 9
  %140 = load ptr, ptr %139, align 4
  %141 = icmp eq ptr %140, %16
  %142 = ptrtoint ptr %140 to i32
  %143 = sub i32 %40, %142
  %144 = sdiv exact i32 %143, 36
  %145 = shl nsw i32 %144, 1
  %146 = add nsw i32 %145, 110
  %147 = select i1 %141, i32 96, i32 %146
  tail call void @usbhs_bset(ptr noundef %138, i32 noundef %147, i16 noundef zeroext 512, i16 noundef zeroext 0) #9
  br label %148

148:                                              ; preds = %132, %131
  %149 = load ptr, ptr %35, align 4
  %150 = getelementptr inbounds %struct.usbhs_priv, ptr %149, i32 0, i32 9
  %151 = load ptr, ptr %150, align 4
  %152 = icmp eq ptr %151, %16
  %153 = ptrtoint ptr %151 to i32
  %154 = sub i32 %40, %153
  %155 = sdiv exact i32 %154, 36
  %156 = shl nsw i32 %155, 1
  %157 = add nsw i32 %156, 110
  %158 = select i1 %152, i32 96, i32 %157
  tail call void @usbhs_bset(ptr noundef %149, i32 noundef %158, i16 noundef zeroext 384, i16 noundef zeroext 256) #9
  br label %159

159:                                              ; preds = %148, %93, %72, %29
  %160 = phi ptr [ null, %72 ], [ null, %93 ], [ %16, %148 ], [ null, %29 ]
  ret ptr %160
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbhs_mod_is_host(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usbhs_pipe_free(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.usbhs_pipe, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = ptrtoint ptr %0 to i32
  %7 = ptrtoint ptr %5 to i32
  %8 = sub i32 %6, %7
  %9 = sdiv exact i32 %8, 36
  %10 = trunc i32 %9 to i16
  %11 = and i16 %10, 15
  tail call void @usbhs_write(ptr noundef %3, i32 noundef 100, i16 noundef zeroext %11) #9
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr inbounds %struct.usbhs_priv, ptr %12, i32 0, i32 9
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %0
  %16 = select i1 %15, i32 92, i32 104
  tail call void @usbhs_bset(ptr noundef %12, i32 noundef %16, i16 noundef zeroext -1, i16 noundef zeroext 0) #9
  %17 = getelementptr inbounds %struct.usbhs_pipe, ptr %0, i32 0, i32 5
  store i32 0, ptr %17, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @usbhs_pipe_select_fifo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.usbhs_pipe, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.usbhs_fifo, ptr %4, i32 0, i32 4
  store ptr null, ptr %7, align 4
  br label %8

8:                                                ; preds = %6, %2
  store ptr %1, ptr %3, align 4
  %9 = icmp eq ptr %1, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.usbhs_fifo, ptr %1, i32 0, i32 4
  store ptr %0, ptr %11, align 4
  br label %12

12:                                               ; preds = %10, %8
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @usbhs_dcp_malloc(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 9, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %26

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  br label %8

8:                                                ; preds = %20, %5
  %9 = phi i32 [ 0, %5 ], [ %21, %20 ]
  %10 = getelementptr %struct.usbhs_pipe, ptr %7, i32 %9
  %11 = icmp eq ptr %10, null
  br i1 %11, label %26, label %12

12:                                               ; preds = %8
  %13 = load i32, ptr %10, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = getelementptr %struct.usbhs_pipe, ptr %7, i32 %9, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15, %12
  %21 = add nuw nsw i32 %9, 1
  %22 = icmp eq i32 %21, %3
  br i1 %22, label %26, label %8

23:                                               ; preds = %15
  store i32 1, ptr %16, align 4
  %24 = getelementptr %struct.usbhs_pipe, ptr %7, i32 %9, i32 3
  store volatile ptr %24, ptr %24, align 4
  %25 = getelementptr %struct.usbhs_pipe, ptr %7, i32 %9, i32 3, i32 1
  store ptr %24, ptr %25, align 4
  br label %26

26:                                               ; preds = %23, %20, %8, %1
  %27 = phi ptr [ %10, %23 ], [ null, %1 ], [ null, %20 ], [ null, %8 ]
  ret ptr %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usbhs_dcp_control_transfer_done(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.usbhs_pipe, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %8, label %7, !prof !9

7:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 790, i32 noundef 9, ptr noundef null) #9
  br label %8

8:                                                ; preds = %7, %1
  tail call fastcc void @__usbhsp_pid_try_nak_if_stall(ptr noundef %0) #9
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr inbounds %struct.usbhs_priv, ptr %9, i32 0, i32 9
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %0
  %13 = ptrtoint ptr %0 to i32
  %14 = ptrtoint ptr %11 to i32
  %15 = sub i32 %13, %14
  %16 = sdiv exact i32 %15, 36
  %17 = shl nsw i32 %16, 1
  %18 = add nsw i32 %17, 110
  %19 = select i1 %12, i32 96, i32 %18
  tail call void @usbhs_bset(ptr noundef %9, i32 noundef %19, i16 noundef zeroext 3, i16 noundef zeroext 1) #9
  %20 = tail call i32 @usbhs_mod_is_host(ptr noundef %3) #9
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %8
  %23 = load ptr, ptr %2, align 4
  %24 = getelementptr inbounds %struct.usbhs_priv, ptr %23, i32 0, i32 9
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %0
  %27 = ptrtoint ptr %25 to i32
  %28 = sub i32 %13, %27
  %29 = sdiv exact i32 %28, 36
  %30 = shl nsw i32 %29, 1
  %31 = add nsw i32 %30, 110
  %32 = select i1 %26, i32 96, i32 %31
  tail call void @usbhs_bset(ptr noundef %23, i32 noundef %32, i16 noundef zeroext 4, i16 noundef zeroext 4) #9
  br label %33

33:                                               ; preds = %22, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usbhs_dcp_dir_for_host(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = icmp eq i32 %1, 0
  %4 = select i1 %3, i16 0, i16 16
  %5 = getelementptr inbounds %struct.usbhs_pipe, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usbhs_priv, ptr %6, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %0
  %10 = select i1 %9, i32 92, i32 104
  tail call void @usbhs_bset(ptr noundef %6, i32 noundef %10, i16 noundef zeroext 16, i16 noundef zeroext %4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usbhs_pipe_probe(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 9
  %3 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 3, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = load i8, ptr %4, align 2
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.5) #10
  br label %40

13:                                               ; preds = %1
  %14 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %6, i32 36) #9
  %15 = extractvalue { i32, i1 } %14, 1
  br i1 %15, label %16, label %17, !prof !10

16:                                               ; preds = %13
  store ptr null, ptr %2, align 4
  br label %40

17:                                               ; preds = %13
  %18 = extractvalue { i32, i1 } %14, 0
  %19 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %18, i32 noundef 3520) #11
  store ptr %19, ptr %2, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %40, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 9, i32 1
  store i32 %6, ptr %22, align 4
  %23 = icmp eq i32 %6, 0
  br i1 %23, label %40, label %24

24:                                               ; preds = %36, %21
  %25 = phi ptr [ %38, %36 ], [ %19, %21 ]
  %26 = phi i32 [ %33, %36 ], [ 0, %21 ]
  %27 = phi ptr [ %37, %36 ], [ %19, %21 ]
  %28 = getelementptr %struct.usbhs_pipe, ptr %27, i32 %26, i32 1
  store ptr %0, ptr %28, align 4
  %29 = getelementptr %struct.renesas_usbhs_driver_pipe_config, ptr %4, i32 %26
  %30 = load i8, ptr %29, align 2
  %31 = and i8 %30, 3
  %32 = zext i8 %31 to i32
  store i32 %32, ptr %25, align 4
  %33 = add nuw nsw i32 %26, 1
  %34 = load i32, ptr %22, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %24
  %37 = load ptr, ptr %2, align 4
  %38 = getelementptr %struct.usbhs_pipe, ptr %37, i32 %33
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %24

40:                                               ; preds = %36, %24, %21, %17, %16, %9
  %41 = phi i32 [ -22, %9 ], [ -12, %17 ], [ -12, %16 ], [ 0, %21 ], [ 0, %24 ], [ 0, %36 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usbhs_pipe_remove(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @usbhs_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_bset(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_write(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

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
!8 = !{i8 0, i8 2}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{!"branch_weights", i32 1, i32 2000}
