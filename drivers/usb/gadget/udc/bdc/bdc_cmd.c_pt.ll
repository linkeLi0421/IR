; ModuleID = '/llk/IR/drivers/usb/gadget/udc/bdc/bdc_cmd.c_pt.bc'
source_filename = "../drivers/usb/gadget/udc/bdc/bdc_cmd.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.bdc_ep = type { %struct.usb_ep, %struct.list_head, ptr, i8, i8, i8, ptr, ptr, i32, [20 x i8], %struct.bd_list, i8 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.bd_list = type { ptr, i32, i32, i32, i32, i32 }
%struct.bdc = type { %struct.usb_gadget, ptr, ptr, %struct.spinlock, ptr, i32, i32, ptr, ptr, %struct.bdc_scratchpad, i32, %struct.srr, %struct.usb_ctrlrequest, %struct.bdc_req, %struct.bdc_req, i32, i8, i8, i8, i8, i32, i32, ptr, i32, ptr, i8, [2 x ptr], [3 x ptr], [6 x i8], %struct.delayed_work, ptr }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.bdc_scratchpad = type { i32, ptr, i32 }
%struct.srr = type { ptr, i16, i16, i32 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.bdc_req = type { %struct.usb_request, %struct.list_head, ptr, %struct.bd_transfer, i32 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.bd_transfer = type { ptr, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.bd_table = type { ptr, i32 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }

@.str = private unnamed_addr constant [19 x i8] c"UNKNOWN speed ERR\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"command failed :%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"command failed:%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"stop endpoint called for disabled ep\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"stop endpoint command didn't complete:%d ep:%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"command processor busy: %x\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"command parameter error\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Invalid device/ep state\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"Command failed?\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"BDC Internal error\0A\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"command timedout waited for %dusec\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.11 = private unnamed_addr constant [42 x i8] c"command operation timedout cmd_status=%d\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bdc_dconfig_ep(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bdc_ep, ptr %1, i32 0, i32 5
  %4 = load i8, ptr %3, align 2
  %5 = and i8 %4, 31
  %6 = zext i8 %5 to i32
  %7 = shl nuw nsw i32 %6, 10
  %8 = or i32 %7, 262146
  %9 = tail call fastcc i32 @bdc_submit_cmd(ptr noundef %0, i32 noundef %8, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @bdc_submit_cmd(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 28
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %10 = and i32 %9, 960
  %11 = icmp eq i32 %10, 960
  br i1 %11, label %12, label %15

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.5, i32 noundef 15) #6
  br label %53

15:                                               ; preds = %5
  %16 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %17 = getelementptr i8, ptr %16, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %2) #5, !srcloc !11
  %18 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %19 = getelementptr i8, ptr %18, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %3) #5, !srcloc !11
  %20 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %21 = getelementptr i8, ptr %20, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %4) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %22 = load ptr, ptr %6, align 4
  %23 = or i32 %1, 134217760
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %24 = getelementptr i8, ptr %22, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %23) #5, !srcloc !11
  br label %25

25:                                               ; preds = %32, %15
  %26 = phi i32 [ 1000, %15 ], [ %34, %32 ]
  %27 = load ptr, ptr %6, align 4
  %28 = getelementptr i8, ptr %27, i32 28
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %30 = lshr i32 %29, 6
  %31 = and i32 %30, 15
  switch i32 %31, label %52 [
    i32 15, label %32
    i32 1, label %53
    i32 3, label %40
    i32 4, label %43
    i32 5, label %46
    i32 6, label %49
  ]

32:                                               ; preds = %25
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748) #5
  %34 = add nsw i32 %26, -1
  %35 = icmp eq i32 %26, 0
  br i1 %35, label %36, label %25

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.11, i32 noundef 15) #6
  %39 = load ptr, ptr %37, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.10, i32 noundef 1000) #6
  br label %53

40:                                               ; preds = %25
  %41 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.6) #6
  br label %53

43:                                               ; preds = %25
  %44 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.7) #6
  br label %53

46:                                               ; preds = %25
  %47 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 2
  %48 = load ptr, ptr %47, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.8) #6
  br label %53

49:                                               ; preds = %25
  %50 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.9) #6
  br label %53

52:                                               ; preds = %25
  br label %53

53:                                               ; preds = %52, %49, %46, %43, %40, %36, %25, %12
  %54 = phi i32 [ -16, %12 ], [ -104, %36 ], [ -104, %49 ], [ -11, %46 ], [ -22, %43 ], [ -22, %40 ], [ %31, %52 ], [ 0, %25 ]
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bdc_config_ep(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bdc_ep, ptr %1, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.bdc_ep, ptr %1, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.bdc_ep, ptr %1, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.bd_table, ptr %9, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %4, i32 0, i32 5
  %13 = load i8, ptr %12, align 1
  %14 = tail call i8 @llvm.umax.i8(i8 %13, i8 1)
  %15 = tail call i8 @llvm.umin.i8(i8 %14, i8 16)
  %16 = zext i8 %15 to i32
  %17 = add nsw i32 %16, -1
  %18 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %4, i32 0, i32 4
  %19 = load i16, ptr %18, align 1
  %20 = and i16 %19, 2047
  %21 = zext i16 %20 to i32
  %22 = shl nuw nsw i32 %21, 10
  %23 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %4, i32 0, i32 3
  %24 = load i8, ptr %23, align 1
  %25 = and i8 %24, 3
  %26 = zext i8 %25 to i32
  %27 = shl nuw nsw i32 %26, 22
  %28 = or i32 %27, %22
  %29 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 5
  %30 = load i32, ptr %29, align 4
  switch i32 %30, label %81 [
    i32 5, label %31
    i32 3, label %57
    i32 2, label %66
    i32 1, label %66
  ]

31:                                               ; preds = %2
  %32 = trunc i8 %24 to i2
  switch i2 %32, label %44 [
    i2 -1, label %33
    i2 1, label %33
  ]

33:                                               ; preds = %31, %31
  %34 = or i32 %28, %17
  %35 = icmp eq i8 %25, 1
  %36 = icmp ne ptr %6, null
  %37 = select i1 %35, i1 %36, i1 false
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, ptr %6, i32 0, i32 3
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = shl nuw nsw i32 %41, 4
  %43 = or i32 %42, %34
  br label %47

44:                                               ; preds = %33, %31
  %45 = phi i32 [ %34, %33 ], [ %28, %31 ]
  %46 = icmp eq ptr %6, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %44, %38
  %48 = phi i32 [ %43, %38 ], [ %45, %44 ]
  %49 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, ptr %6, i32 0, i32 2
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i32
  %52 = shl nuw nsw i32 %51, 6
  br label %53

53:                                               ; preds = %47, %44
  %54 = phi i32 [ %48, %47 ], [ %45, %44 ]
  %55 = phi i32 [ %52, %47 ], [ 0, %44 ]
  %56 = or i32 %55, %54
  br label %84

57:                                               ; preds = %2
  %58 = trunc i8 %24 to i2
  switch i2 %58, label %84 [
    i2 1, label %59
    i2 -1, label %59
  ]

59:                                               ; preds = %57, %57
  %60 = lshr i16 %19, 5
  %61 = and i16 %60, 192
  %62 = add nuw nsw i16 %61, 64
  %63 = zext i16 %62 to i32
  %64 = or i32 %17, %63
  %65 = or i32 %64, %28
  br label %84

66:                                               ; preds = %2, %2
  %67 = icmp eq i8 %25, 1
  %68 = add nuw nsw i32 %16, 2
  %69 = select i1 %67, i32 %68, i32 %17
  %70 = icmp eq i8 %25, 3
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = zext i8 %13 to i32
  %73 = shl nuw nsw i32 %72, 3
  %74 = icmp eq i8 %13, 0
  %75 = tail call i32 @llvm.ctlz.i32(i32 %73, i1 false) #5, !range !13
  %76 = sub nsw i32 31, %75
  %77 = select i1 %74, i32 -1, i32 %76
  br label %78

78:                                               ; preds = %71, %66
  %79 = phi i32 [ %77, %71 ], [ %69, %66 ]
  %80 = or i32 %79, %28
  br label %84

81:                                               ; preds = %2
  %82 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 2
  %83 = load ptr, ptr %82, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str) #6
  br label %104

84:                                               ; preds = %78, %59, %57, %53
  %85 = phi i32 [ %80, %78 ], [ %65, %59 ], [ %56, %53 ], [ %28, %57 ]
  %86 = getelementptr inbounds %struct.bdc_ep, ptr %1, i32 0, i32 5
  %87 = load i8, ptr %86, align 2
  %88 = and i8 %87, 31
  %89 = zext i8 %88 to i32
  %90 = shl nuw nsw i32 %89, 10
  %91 = or i32 %90, 131074
  %92 = tail call fastcc i32 @bdc_submit_cmd(ptr noundef %0, i32 noundef %91, i32 noundef %11, i32 noundef 0, i32 noundef %85)
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %84
  %95 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 2
  %96 = load ptr, ptr %95, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %96, ptr noundef nonnull @.str.1, i32 noundef %92) #6
  br label %104

97:                                               ; preds = %84
  %98 = getelementptr inbounds %struct.bdc_ep, ptr %1, i32 0, i32 10, i32 3
  store i32 0, ptr %98, align 4
  %99 = getelementptr inbounds %struct.bdc_ep, ptr %1, i32 0, i32 10, i32 4
  store i32 0, ptr %99, align 4
  %100 = load ptr, ptr %7, align 4
  %101 = load ptr, ptr %100, align 4
  %102 = load ptr, ptr %101, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %102, i8 0, i32 12, i1 false) #5
  %103 = getelementptr [4 x i32], ptr %102, i32 0, i32 3
  store i32 -2147483648, ptr %103, align 4
  br label %104

104:                                              ; preds = %97, %94, %81
  %105 = phi i32 [ -22, %81 ], [ %92, %94 ], [ 0, %97 ]
  ret i32 %105
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bdc_ep_bla(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.bdc_ep, ptr %1, i32 0, i32 5
  %5 = load i8, ptr %4, align 2
  %6 = and i8 %5, 31
  %7 = zext i8 %6 to i32
  %8 = shl nuw nsw i32 %7, 10
  %9 = or i32 %8, 3
  %10 = tail call fastcc i32 @bdc_submit_cmd(ptr noundef %0, i32 noundef %9, i32 noundef %2, i32 noundef 0, i32 noundef 0)
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bdc_address_device(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = and i32 %1, 127
  %4 = tail call fastcc i32 @bdc_submit_cmd(ptr noundef %0, i32 noundef 131073, i32 noundef 0, i32 noundef 0, i32 noundef %3)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bdc_function_wake_fh(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 23
  %4 = load i32, ptr %3, align 8
  %5 = shl i32 %4, 25
  %6 = or i32 %5, 4
  %7 = tail call fastcc i32 @bdc_submit_cmd(ptr noundef %0, i32 noundef 14, i32 noundef %6, i32 noundef 22, i32 noundef 0)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bdc_function_wake(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = zext i8 %1 to i32
  %4 = tail call fastcc i32 @bdc_submit_cmd(ptr noundef %0, i32 noundef 524294, i32 noundef 0, i32 noundef 0, i32 noundef %3)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bdc_ep_set_stall(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = shl i32 %1, 10
  %4 = and i32 %3, 31744
  %5 = or i32 %4, 524292
  %6 = tail call fastcc i32 @bdc_submit_cmd(ptr noundef %0, i32 noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bdc_ep_clear_stall(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 1
  br i1 %3, label %19, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr ptr, ptr %6, i32 %1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.bdc_ep, ptr %8, i32 0, i32 8
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  %14 = shl i32 %1, 10
  %15 = and i32 %14, 31744
  %16 = or i32 %15, 524292
  %17 = tail call fastcc i32 @bdc_submit_cmd(ptr noundef %0, i32 noundef %16, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %13, %4, %2
  %20 = phi i32 [ 65536, %4 ], [ 65536, %13 ], [ 0, %2 ]
  %21 = shl i32 %1, 10
  %22 = and i32 %21, 31744
  %23 = or i32 %22, %20
  %24 = or i32 %23, 131076
  %25 = tail call fastcc i32 @bdc_submit_cmd(ptr noundef %0, i32 noundef %24, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.2, i32 noundef %25) #6
  br label %31

30:                                               ; preds = %19
  tail call void @bdc_notify_xfr(ptr noundef %0, i32 noundef %1) #5
  br label %31

31:                                               ; preds = %30, %27, %13
  %32 = phi i32 [ %25, %27 ], [ 0, %30 ], [ %17, %13 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bdc_notify_xfr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bdc_stop_ep(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr ptr, ptr %4, i32 %1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.bdc_ep, ptr %6, i32 0, i32 8
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.3) #6
  br label %30

14:                                               ; preds = %2
  %15 = and i32 %8, 6
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %14
  %18 = shl i32 %1, 10
  %19 = and i32 %18, 31744
  %20 = or i32 %19, 327684
  %21 = tail call fastcc i32 @bdc_submit_cmd(ptr noundef %0, i32 noundef %20, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.bdc_ep, ptr %6, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.4, i32 noundef %21, ptr noundef %26) #6
  br label %30

27:                                               ; preds = %17
  %28 = load i32, ptr %7, align 4
  %29 = or i32 %28, 4
  store i32 %29, ptr %7, align 4
  br label %30

30:                                               ; preds = %27, %23, %14, %11
  %31 = phi i32 [ %21, %23 ], [ 0, %27 ], [ -22, %11 ], [ 0, %14 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
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
!8 = !{i64 4533685}
!9 = !{i64 2153093971}
!10 = !{i64 2153094323}
!11 = !{i64 4533267}
!12 = !{i64 2153096828}
!13 = !{i32 0, i32 33}
