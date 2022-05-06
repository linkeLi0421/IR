; ModuleID = '/llk/IR/drivers/usb/renesas_usbhs/mod_gadget.c_pt.bc'
source_filename = "../drivers/usb/renesas_usbhs/mod_gadget.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_gadget_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_ep_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usbhs_pkt_handle = type { ptr, ptr, ptr }
%struct.usbhsg_recip_handle = type { ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.usbhsg_gpriv = type { %struct.usb_gadget, %struct.usbhs_mod, ptr, i32, ptr, ptr, i8, i32 }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.usbhs_mod = type { ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, i16, ptr, ptr, ptr, ptr, ptr }
%struct.usbhsg_uep = type { %struct.usb_ep, ptr, %struct.spinlock, [8 x i8], ptr }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.renesas_usbhs_driver_pipe_config = type { i8, i16, i8, i8 }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usbhs_pipe = type { i32, ptr, ptr, %struct.list_head, i32, i32, ptr, ptr }
%struct.usbhs_pkt = type { %struct.list_head, ptr, ptr, ptr, %struct.work_struct, i32, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.usbhsg_request = type { %struct.usb_request, %struct.usbhs_pkt }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>

@.str = private unnamed_addr constant [21 x i8] c"%stransceiver found\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"no \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"gadget\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"renesas_usbhs_udc\00", align 1
@usbhsg_gadget_ops = internal constant %struct.usb_gadget_ops { ptr @usbhsg_get_frame, ptr null, ptr @usbhsg_set_selfpowered, ptr @usbhsg_vbus_session, ptr null, ptr @usbhsg_pullup, ptr null, ptr null, ptr @usbhsg_gadget_start, ptr @usbhsg_gadget_stop, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"ep%d\00", align 1
@usbhsg_ep_ops = internal constant %struct.usb_ep_ops { ptr @usbhsg_ep_enable, ptr @usbhsg_ep_disable, ptr null, ptr @usbhsg_ep_alloc_request, ptr @usbhsg_ep_free_request, ptr @usbhsg_ep_queue, ptr @usbhsg_ep_dequeue, ptr @usbhsg_ep_set_halt, ptr @usbhsg_ep_set_wedge, ptr null, ptr null }, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"gadget probed\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.7 = private unnamed_addr constant [39 x i8] c"drivers/usb/renesas_usbhs/mod_gadget.c\00", align 1
@usbhs_fifo_pio_push_handler = external dso_local constant %struct.usbhs_pkt_handle, align 4
@usbhs_fifo_pio_pop_handler = external dso_local constant %struct.usbhs_pkt_handle, align 4
@usbhs_ctrl_stage_end_handler = external dso_local constant %struct.usbhs_pkt_handle, align 4
@req_clear_feature = internal unnamed_addr constant %struct.usbhsg_recip_handle { ptr @.str.8, ptr @usbhsg_recip_handler_std_control_done, ptr @usbhsg_recip_handler_std_control_done, ptr @usbhsg_recip_handler_std_clear_endpoint }, align 4
@req_set_feature = internal unnamed_addr constant %struct.usbhsg_recip_handle { ptr @.str.9, ptr @usbhsg_recip_handler_std_set_device, ptr @usbhsg_recip_handler_std_control_done, ptr @usbhsg_recip_handler_std_set_endpoint }, align 4
@req_get_status = internal unnamed_addr constant %struct.usbhsg_recip_handle { ptr @.str.10, ptr @usbhsg_recip_handler_std_get_device, ptr @usbhsg_recip_handler_std_get_interface, ptr @usbhsg_recip_handler_std_get_endpoint }, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"clear feature\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"set feature\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.10 = private unnamed_addr constant [11 x i8] c"get status\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"recip request allocation fail\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"wrong recip request\0A\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"unsupported RECIP(%d)\0A\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"%s: can't bind to transceiver\0A\00", align 1
@usbhs_fifo_dma_push_handler = external dso_local constant %struct.usbhs_pkt_handle, align 4
@usbhs_fifo_dma_pop_handler = external dso_local constant %struct.usbhs_pkt_handle, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usbhs_mod_gadget_probe(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %5 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 3, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 648) #9
  %11 = icmp eq ptr %10, null
  br i1 %11, label %119, label %12

12:                                               ; preds = %1
  %13 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %8, i32 64) #10
  %14 = extractvalue { i32, i1 } %13, 1
  br i1 %14, label %117, label %15, !prof !8

15:                                               ; preds = %12
  %16 = extractvalue { i32, i1 } %13, 0
  %17 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %16, i32 noundef 3520) #11
  %18 = icmp eq ptr %17, null
  br i1 %18, label %117, label %19

19:                                               ; preds = %15
  %20 = tail call ptr @usb_get_phy(i32 noundef 0) #10
  %21 = getelementptr inbounds %struct.usbhsg_gpriv, ptr %10, i32 0, i32 5
  store ptr %20, ptr %21, align 4
  %22 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  %23 = select i1 %22, ptr @.str.2, ptr @.str.1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull %23) #12
  %24 = getelementptr inbounds %struct.usbhsg_gpriv, ptr %10, i32 0, i32 1
  tail call void @usbhs_mod_register(ptr noundef %0, ptr noundef %24, i32 noundef 1) #10
  store ptr @.str.3, ptr %24, align 8
  %25 = getelementptr inbounds %struct.usbhsg_gpriv, ptr %10, i32 0, i32 1, i32 1
  store ptr @usbhsg_start, ptr %25, align 4
  %26 = getelementptr inbounds %struct.usbhsg_gpriv, ptr %10, i32 0, i32 1, i32 2
  store ptr @usbhsg_stop, ptr %26, align 8
  %27 = getelementptr inbounds %struct.usbhsg_gpriv, ptr %10, i32 0, i32 2
  store ptr %17, ptr %27, align 8
  %28 = getelementptr inbounds %struct.usbhsg_gpriv, ptr %10, i32 0, i32 3
  store i32 %8, ptr %28, align 4
  %29 = getelementptr inbounds %struct.usbhsg_gpriv, ptr %10, i32 0, i32 7
  store i32 0, ptr %29, align 4
  %30 = getelementptr inbounds %struct.usb_gadget, ptr %10, i32 0, i32 11, i32 1
  store ptr %4, ptr %30, align 4
  %31 = getelementptr inbounds %struct.usb_gadget, ptr %10, i32 0, i32 10
  store ptr @.str.4, ptr %31, align 8
  %32 = getelementptr inbounds %struct.usb_gadget, ptr %10, i32 0, i32 2
  store ptr @usbhsg_gadget_ops, ptr %32, align 4
  %33 = getelementptr inbounds %struct.usb_gadget, ptr %10, i32 0, i32 6
  store i32 3, ptr %33, align 8
  %34 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 3, i32 13
  %35 = load i8, ptr %34, align 4
  %36 = getelementptr inbounds %struct.usb_gadget, ptr %10, i32 0, i32 17
  %37 = load i32, ptr %36, align 4
  %38 = and i8 %35, 1
  %39 = zext i8 %38 to i32
  %40 = shl nuw nsw i32 %39, 12
  %41 = and i32 %37, -4097
  %42 = or i32 %40, %41
  store i32 %42, ptr %36, align 4
  %43 = getelementptr inbounds %struct.usb_gadget, ptr %10, i32 0, i32 4
  store volatile ptr %43, ptr %43, align 4
  %44 = getelementptr inbounds %struct.usb_gadget, ptr %10, i32 0, i32 4, i32 1
  store ptr %43, ptr %44, align 8
  %45 = icmp eq i32 %8, 0
  br i1 %45, label %111, label %46

46:                                               ; preds = %19
  %47 = getelementptr inbounds %struct.usb_gadget, ptr %10, i32 0, i32 3
  br label %48

48:                                               ; preds = %107, %46
  %49 = phi ptr [ %17, %46 ], [ %109, %107 ]
  %50 = phi i32 [ 0, %46 ], [ %104, %107 ]
  %51 = phi ptr [ %17, %46 ], [ %108, %107 ]
  %52 = getelementptr %struct.usbhsg_uep, ptr %51, i32 %50, i32 4
  store ptr %10, ptr %52, align 4
  %53 = getelementptr %struct.usbhsg_uep, ptr %51, i32 %50, i32 1
  store ptr null, ptr %53, align 4
  %54 = getelementptr %struct.usbhsg_uep, ptr %51, i32 %50, i32 3
  %55 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %54, i32 noundef 8, ptr noundef nonnull @.str.5, i32 noundef %50)
  %56 = getelementptr inbounds %struct.usb_ep, ptr %49, i32 0, i32 1
  store ptr %54, ptr %56, align 4
  %57 = getelementptr inbounds %struct.usb_ep, ptr %49, i32 0, i32 2
  store ptr @usbhsg_ep_ops, ptr %57, align 4
  %58 = getelementptr inbounds %struct.usb_ep, ptr %49, i32 0, i32 3
  store volatile ptr %58, ptr %58, align 4
  %59 = getelementptr inbounds %struct.usb_ep, ptr %49, i32 0, i32 3, i32 1
  store ptr %58, ptr %59, align 4
  %60 = getelementptr %struct.usbhsg_uep, ptr %51, i32 %50, i32 2
  store i32 0, ptr %60, align 4
  %61 = load ptr, ptr %52, align 4
  %62 = getelementptr inbounds %struct.usbhsg_gpriv, ptr %61, i32 0, i32 2
  %63 = load ptr, ptr %62, align 8
  %64 = icmp eq ptr %49, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %48
  store ptr %49, ptr %47, align 8
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef nonnull %49, i32 noundef 64) #10
  %66 = getelementptr inbounds %struct.usb_ep, ptr %49, i32 0, i32 4
  %67 = load i8, ptr %66, align 4
  %68 = or i8 %67, 1
  br label %100

69:                                               ; preds = %48
  %70 = getelementptr %struct.renesas_usbhs_driver_pipe_config, ptr %6, i32 %50
  %71 = load i8, ptr %70, align 2
  %72 = icmp eq i8 %71, 1
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.usb_ep, ptr %49, i32 0, i32 4
  %75 = load i8, ptr %74, align 4
  %76 = or i8 %75, 2
  store i8 %76, ptr %74, align 4
  %77 = load i8, ptr %70, align 2
  br label %78

78:                                               ; preds = %73, %69
  %79 = phi i8 [ %77, %73 ], [ %71, %69 ]
  %80 = icmp eq i8 %79, 2
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.usb_ep, ptr %49, i32 0, i32 4
  %83 = load i8, ptr %82, align 4
  %84 = or i8 %83, 4
  store i8 %84, ptr %82, align 4
  %85 = load i8, ptr %70, align 2
  br label %86

86:                                               ; preds = %81, %78
  %87 = phi i8 [ %85, %81 ], [ %79, %78 ]
  %88 = icmp eq i8 %87, 3
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.usb_ep, ptr %49, i32 0, i32 4
  %91 = load i8, ptr %90, align 4
  %92 = or i8 %91, 8
  store i8 %92, ptr %90, align 4
  br label %93

93:                                               ; preds = %89, %86
  %94 = getelementptr %struct.renesas_usbhs_driver_pipe_config, ptr %6, i32 %50, i32 1
  %95 = load i16, ptr %94, align 2
  %96 = zext i16 %95 to i32
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef nonnull %49, i32 noundef %96) #10
  %97 = load ptr, ptr %44, align 8
  store ptr %58, ptr %44, align 8
  store ptr %43, ptr %58, align 4
  store ptr %97, ptr %59, align 4
  store volatile ptr %58, ptr %97, align 4
  %98 = getelementptr inbounds %struct.usb_ep, ptr %49, i32 0, i32 4
  %99 = load i8, ptr %98, align 4
  br label %100

100:                                              ; preds = %93, %65
  %101 = phi i8 [ %99, %93 ], [ %68, %65 ]
  %102 = getelementptr inbounds %struct.usb_ep, ptr %49, i32 0, i32 4
  %103 = or i8 %101, 48
  store i8 %103, ptr %102, align 4
  %104 = add nuw nsw i32 %50, 1
  %105 = load i32, ptr %28, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %100
  %108 = load ptr, ptr %27, align 8
  %109 = getelementptr %struct.usbhsg_uep, ptr %108, i32 %104
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %48

111:                                              ; preds = %107, %100, %19
  %112 = tail call i32 @usb_add_gadget_udc(ptr noundef %4, ptr noundef nonnull %10) #10
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.6) #12
  br label %119

115:                                              ; preds = %111
  %116 = load ptr, ptr %27, align 8
  tail call void @kfree(ptr noundef %116) #10
  br label %117

117:                                              ; preds = %115, %15, %12
  %118 = phi i32 [ %112, %115 ], [ -12, %15 ], [ -12, %12 ]
  tail call void @kfree(ptr noundef nonnull %10) #10
  br label %119

119:                                              ; preds = %117, %114, %1
  %120 = phi i32 [ %118, %117 ], [ 0, %114 ], [ -12, %1 ]
  ret i32 %120
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_phy(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_mod_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhsg_start(ptr noundef %0) #0 {
  tail call fastcc void @usbhsg_try_start(ptr noundef %0, i32 noundef 1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhsg_stop(ptr noundef %0) #0 {
  %2 = tail call ptr @usbhs_mod_get(ptr noundef %0, i32 noundef 1) #10
  %3 = getelementptr i8, ptr %2, i32 -568
  %4 = getelementptr i8, ptr %2, i32 64
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.usb_gadget_driver, ptr %5, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void %9(ptr noundef %3) #10
  br label %12

12:                                               ; preds = %11, %7, %1
  tail call fastcc void @usbhsg_try_stop(ptr noundef %0, i32 noundef 1)
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_set_maxpacket_limit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_gadget_udc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usbhs_mod_gadget_remove(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @usbhs_mod_get(ptr noundef %0, i32 noundef 1) #10
  %3 = getelementptr i8, ptr %2, i32 -568
  tail call void @usb_del_gadget_udc(ptr noundef %3) #10
  %4 = getelementptr i8, ptr %2, i32 56
  %5 = load ptr, ptr %4, align 8
  tail call void @kfree(ptr noundef %5) #10
  tail call void @kfree(ptr noundef %3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usbhs_mod_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_del_gadget_udc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @usbhsg_try_start(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @usbhs_mod_get(ptr noundef %0, i32 noundef 1) #10
  %4 = getelementptr i8, ptr %3, i32 56
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr @usbhs_mod_get_current(ptr noundef %0) #10
  %7 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 7
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #10
  %9 = getelementptr i8, ptr %3, i32 76
  %10 = load i32, ptr %9, align 4
  %11 = or i32 %10, %1
  store i32 %11, ptr %9, align 4
  %12 = and i32 %11, 3
  %13 = icmp eq i32 %12, 3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #10
  br i1 %13, label %14, label %33

14:                                               ; preds = %2
  tail call void @usbhs_fifo_init(ptr noundef %0) #10
  tail call void @usbhs_pipe_init(ptr noundef %0, ptr noundef nonnull @usbhsg_dma_map_ctrl) #10
  %15 = tail call ptr @usbhs_dcp_malloc(ptr noundef %0) #10
  %16 = getelementptr inbounds %struct.usbhsg_uep, ptr %5, i32 0, i32 1
  store ptr %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.usbhs_pipe, ptr %15, i32 0, i32 7
  store ptr %5, ptr %17, align 4
  %18 = load ptr, ptr %16, align 4
  tail call void @usbhs_pipe_config_update(ptr noundef %18, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 64) #10
  tail call void @usbhs_sys_function_ctrl(ptr noundef %0, i32 noundef 1) #10
  %19 = tail call ptr @usbhs_mod_get(ptr noundef %0, i32 noundef 1) #10
  %20 = getelementptr i8, ptr %19, i32 64
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %14
  %24 = getelementptr i8, ptr %19, i32 76
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 16
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %14
  br label %29

29:                                               ; preds = %28, %23
  %30 = phi i32 [ 0, %28 ], [ 1, %23 ]
  tail call void @usbhs_sys_function_pullup(ptr noundef %0, i32 noundef %30) #10
  %31 = getelementptr inbounds %struct.usbhs_mod, ptr %6, i32 0, i32 3
  store ptr @usbhsg_irq_dev_state, ptr %31, align 4
  %32 = getelementptr inbounds %struct.usbhs_mod, ptr %6, i32 0, i32 4
  store ptr @usbhsg_irq_ctrl_stage, ptr %32, align 4
  tail call void @usbhs_irq_callback_update(ptr noundef %0, ptr noundef %6) #10
  br label %33

33:                                               ; preds = %29, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usbhs_mod_get_current(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_fifo_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_pipe_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhsg_dma_map_ctrl(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr i8, ptr %1, i32 -56
  %5 = getelementptr inbounds %struct.usbhs_pkt, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @usbhs_pipe_is_dir_host(ptr noundef %6) #10
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %3
  %10 = getelementptr i8, ptr %1, i32 -40
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13, !prof !9

13:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 200, i32 noundef 9, ptr noundef null) #10
  br label %14

14:                                               ; preds = %13, %9
  %15 = tail call i32 @usb_gadget_map_request_by_dev(ptr noundef %0, ptr noundef %4, i32 noundef %7) #10
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %14
  %18 = getelementptr i8, ptr %1, i32 -48
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.usbhs_pkt, ptr %1, i32 0, i32 5
  store i32 %19, ptr %20, align 4
  br label %22

21:                                               ; preds = %3
  tail call void @usb_gadget_unmap_request_by_dev(ptr noundef %0, ptr noundef %4, i32 noundef %7) #10
  br label %22

22:                                               ; preds = %21, %17, %14
  %23 = phi i32 [ %15, %14 ], [ %15, %17 ], [ 0, %21 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usbhs_dcp_malloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_pipe_config_update(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_sys_function_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhsg_irq_dev_state(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @usbhs_mod_get(ptr noundef %0, i32 noundef 1) #10
  %4 = getelementptr i8, ptr %3, i32 -568
  %5 = tail call i32 @usbhs_status_get_device_state(ptr noundef %1) #10
  %6 = tail call i32 @usbhs_bus_get_speed(ptr noundef %0) #10
  %7 = getelementptr i8, ptr %3, i32 -532
  store i32 %6, ptr %7, align 4
  %8 = icmp eq i32 %6, 0
  %9 = and i32 %5, 64
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %22, label %12

12:                                               ; preds = %2
  %13 = getelementptr i8, ptr %3, i32 64
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.usb_gadget_driver, ptr %14, i32 0, i32 6
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void %18(ptr noundef %4) #10
  br label %21

21:                                               ; preds = %20, %16, %12
  tail call void @usb_gadget_set_state(ptr noundef %4, i32 noundef 8) #10
  br label %22

22:                                               ; preds = %21, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhsg_irq_ctrl_stage(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.usb_ctrlrequest, align 8
  %4 = tail call ptr @usbhs_mod_get(ptr noundef %0, i32 noundef 1) #10
  %5 = getelementptr i8, ptr %4, i32 -568
  %6 = getelementptr i8, ptr %4, i32 56
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.usbhsg_uep, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  store i64 0, ptr %3, align 8, !annotation !10
  %10 = tail call i32 @usbhs_status_get_ctrl_stage(ptr noundef %1) #10
  switch i32 %10, label %72 [
    i32 1, label %14
    i32 3, label %11
    i32 5, label %12
    i32 2, label %13
    i32 4, label %13
  ]

11:                                               ; preds = %2
  br label %14

12:                                               ; preds = %2
  br label %14

13:                                               ; preds = %2, %2
  tail call void @usbhs_dcp_control_transfer_done(ptr noundef %9) #10
  br label %72

14:                                               ; preds = %12, %11, %2
  %15 = phi ptr [ @usbhs_ctrl_stage_end_handler, %12 ], [ @usbhs_fifo_pio_pop_handler, %11 ], [ @usbhs_fifo_pio_push_handler, %2 ]
  %16 = getelementptr inbounds %struct.usbhs_pipe, ptr %9, i32 0, i32 6
  store ptr %15, ptr %16, align 4
  call void @usbhs_usbreq_get_val(ptr noundef %0, ptr noundef nonnull %3) #10
  %17 = load i8, ptr %3, align 8
  %18 = and i8 %17, 96
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %61

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %3, i32 0, i32 1
  %22 = load i8, ptr %21, align 1
  switch i8 %22, label %61 [
    i8 1, label %25
    i8 3, label %23
    i8 0, label %24
  ]

23:                                               ; preds = %20
  br label %25

24:                                               ; preds = %20
  br label %25

25:                                               ; preds = %24, %23, %20
  %26 = phi ptr [ @req_get_status, %24 ], [ @req_set_feature, %23 ], [ @req_clear_feature, %20 ]
  %27 = call ptr @usbhs_mod_get(ptr noundef %0, i32 noundef 1) #10
  %28 = getelementptr inbounds %struct.usbhs_mod, ptr %27, i32 0, i32 13
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.usbhs_priv, ptr %29, i32 0, i32 5
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.platform_device, ptr %31, i32 0, i32 3
  %33 = load i8, ptr %3, align 8
  %34 = and i8 %33, 31
  %35 = zext i8 %34 to i32
  %36 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %3, i32 0, i32 3
  %37 = load i16, ptr %36, align 4
  %38 = and i16 %37, 15
  %39 = zext i16 %38 to i32
  %40 = getelementptr i8, ptr %27, i32 56
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr %struct.usbhsg_uep, ptr %41, i32 %39
  %43 = getelementptr %struct.usbhsg_uep, ptr %41, i32 %39, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %25
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.12) #12
  br label %70

47:                                               ; preds = %25
  switch i32 %35, label %54 [
    i32 0, label %48
    i32 1, label %50
    i32 2, label %52
  ]

48:                                               ; preds = %47
  %49 = getelementptr inbounds %struct.usbhsg_recip_handle, ptr %26, i32 0, i32 1
  br label %55

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.usbhsg_recip_handle, ptr %26, i32 0, i32 2
  br label %55

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.usbhsg_recip_handle, ptr %26, i32 0, i32 3
  br label %55

54:                                               ; preds = %47
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %32, ptr noundef nonnull @.str.16, i32 noundef %35) #12
  br label %70

55:                                               ; preds = %52, %50, %48
  %56 = phi ptr [ %53, %52 ], [ %51, %50 ], [ %49, %48 ]
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %72, label %59

59:                                               ; preds = %55
  %60 = call i32 %57(ptr noundef %0, ptr noundef %42, ptr noundef nonnull %3) #10
  br label %67

61:                                               ; preds = %20, %14
  %62 = getelementptr i8, ptr %4, i32 64
  %63 = load ptr, ptr %62, align 8
  %64 = getelementptr inbounds %struct.usb_gadget_driver, ptr %63, i32 0, i32 4
  %65 = load ptr, ptr %64, align 4
  %66 = call i32 %65(ptr noundef %5, ptr noundef nonnull %3) #10
  br label %67

67:                                               ; preds = %61, %59
  %68 = phi i32 [ %66, %61 ], [ %60, %59 ]
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67, %54, %46
  %71 = phi i32 [ %68, %67 ], [ -22, %46 ], [ -22, %54 ]
  call void @usbhs_pipe_stall(ptr noundef %9) #10
  br label %72

72:                                               ; preds = %70, %67, %55, %13, %2
  %73 = phi i32 [ 0, %2 ], [ 0, %13 ], [ %71, %70 ], [ %68, %67 ], [ 0, %55 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret i32 %73
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_irq_callback_update(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbhs_pipe_is_dir_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_map_request_by_dev(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_unmap_request_by_dev(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_sys_function_pullup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbhs_status_get_device_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbhs_bus_get_speed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_set_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbhs_status_get_ctrl_stage(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_dcp_control_transfer_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_usbreq_get_val(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_pipe_stall(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhsg_recip_handler_std_control_done(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #0 {
  %4 = tail call ptr @usbhs_mod_get(ptr noundef %0, i32 noundef 1) #10
  %5 = getelementptr i8, ptr %4, i32 56
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.usbhsg_uep, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  tail call void @usbhs_dcp_control_transfer_done(ptr noundef %8) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhsg_recip_handler_std_clear_endpoint(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.usbhsg_uep, ptr %1, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usbhsg_uep, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.usbhsg_gpriv, ptr %5, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  tail call void @usbhs_pipe_disable(ptr noundef %7) #10
  tail call void @usbhs_pipe_data_sequence(ptr noundef %7, i32 noundef 0) #10
  tail call void @usbhs_pipe_enable(ptr noundef %7) #10
  br label %13

13:                                               ; preds = %12, %3
  %14 = tail call ptr @usbhs_mod_get(ptr noundef %0, i32 noundef 1) #10
  %15 = getelementptr i8, ptr %14, i32 56
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.usbhsg_uep, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  tail call void @usbhs_dcp_control_transfer_done(ptr noundef %18) #10
  tail call void @usbhs_pkt_start(ptr noundef %7) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_pipe_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_pipe_data_sequence(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_pipe_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_pkt_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhsg_recip_handler_std_set_device(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %2, i32 0, i32 2
  %5 = load i16, ptr %4, align 1
  %6 = icmp eq i16 %5, 2
  %7 = tail call ptr @usbhs_mod_get(ptr noundef %0, i32 noundef 1) #10
  %8 = getelementptr i8, ptr %7, i32 56
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.usbhsg_uep, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void @usbhs_dcp_control_transfer_done(ptr noundef %11) #10
  br i1 %6, label %12, label %17

12:                                               ; preds = %3
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 21474800) #10
  %14 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %2, i32 0, i32 3
  %15 = load i16, ptr %14, align 1
  %16 = lshr i16 %15, 8
  tail call void @usbhs_sys_set_test_mode(ptr noundef %0, i16 noundef zeroext %16) #10
  br label %17

17:                                               ; preds = %12, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhsg_recip_handler_std_set_endpoint(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.usbhsg_uep, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @usbhs_pipe_stall(ptr noundef %5) #10
  %6 = tail call ptr @usbhs_mod_get(ptr noundef %0, i32 noundef 1) #10
  %7 = getelementptr i8, ptr %6, i32 56
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.usbhsg_uep, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void @usbhs_dcp_control_transfer_done(ptr noundef %10) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_sys_set_test_mode(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhsg_recip_handler_std_get_device(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.usbhsg_uep, ptr %1, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usbhsg_gpriv, ptr %5, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = trunc i32 %7 to i16
  %9 = lshr i16 %8, 3
  %10 = and i16 %9, 1
  tail call fastcc void @__usbhsg_recip_send_status(ptr noundef %5, i16 noundef zeroext %10)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhsg_recip_handler_std_get_interface(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.usbhsg_uep, ptr %1, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  tail call fastcc void @__usbhsg_recip_send_status(ptr noundef %5, i16 noundef zeroext 0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhsg_recip_handler_std_get_endpoint(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.usbhsg_uep, ptr %1, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usbhsg_uep, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @usbhs_pipe_is_stall(ptr noundef %7) #10
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i16
  tail call fastcc void @__usbhsg_recip_send_status(ptr noundef %5, i16 noundef zeroext %10)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__usbhsg_recip_send_status(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.usbhsg_gpriv, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.usbhsg_uep, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usbhsg_gpriv, ptr %0, i32 0, i32 1, i32 13
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.usbhs_priv, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = tail call ptr @usb_ep_alloc_request(ptr noundef %4, i32 noundef 2592) #10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.11) #12
  br label %36

15:                                               ; preds = %2
  %16 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %17 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 2592, i32 noundef 2) #9
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  tail call void @usb_ep_free_request(ptr noundef %4, ptr noundef nonnull %11) #10
  br label %36

20:                                               ; preds = %15
  store i16 %1, ptr %17, align 8
  %21 = getelementptr inbounds %struct.usb_request, ptr %11, i32 0, i32 7
  store ptr @__usbhsg_recip_send_complete, ptr %21, align 4
  store ptr %17, ptr %11, align 4
  %22 = getelementptr inbounds %struct.usb_request, ptr %11, i32 0, i32 1
  store i32 2, ptr %22, align 4
  %23 = getelementptr inbounds %struct.usb_request, ptr %11, i32 0, i32 6
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, -262145
  store i32 %25, ptr %23, align 4
  %26 = getelementptr inbounds %struct.usbhs_pipe, ptr %6, i32 0, i32 6
  store ptr @usbhs_fifo_pio_push_handler, ptr %26, align 4
  %27 = load ptr, ptr %5, align 4
  %28 = getelementptr inbounds %struct.usbhsg_request, ptr %11, i32 0, i32 1
  %29 = getelementptr inbounds %struct.usb_request, ptr %11, i32 0, i32 12
  store i32 0, ptr %29, align 4
  %30 = getelementptr inbounds %struct.usb_request, ptr %11, i32 0, i32 11
  store i32 -115, ptr %30, align 4
  %31 = load ptr, ptr %11, align 4
  %32 = load i32, ptr %22, align 4
  %33 = load i32, ptr %23, align 4
  %34 = lshr i32 %33, 18
  %35 = and i32 %34, 1
  tail call void @usbhs_pkt_push(ptr noundef %27, ptr noundef %28, ptr noundef nonnull @usbhsg_queue_done, ptr noundef %31, i32 noundef %32, i32 noundef %35, i32 noundef -1) #10
  tail call void @usbhs_pkt_start(ptr noundef %27) #10
  br label %36

36:                                               ; preds = %20, %19, %13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_alloc_request(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_free_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @__usbhsg_recip_send_complete(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.usbhsg_request, ptr %1, i32 0, i32 1, i32 7
  %4 = load ptr, ptr %3, align 4
  tail call void @kfree(ptr noundef %4) #10
  tail call void @usb_ep_free_request(ptr noundef %0, ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_pkt_push(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @usbhsg_queue_done(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.usbhs_pkt, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usbhs_pipe, ptr %4, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usbhs_pkt, ptr %1, i32 0, i32 10
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr i8, ptr %1, i32 -4
  store i32 %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 7
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #10
  %12 = icmp eq ptr %6, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %2
  %14 = getelementptr i8, ptr %1, i32 -56
  %15 = getelementptr inbounds %struct.usbhsg_uep, ptr %6, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.usbhsg_gpriv, ptr %16, i32 0, i32 1, i32 13
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %1, i32 -8
  store i32 0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.usbhs_priv, ptr %18, i32 0, i32 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !11
  %21 = load i16, ptr %20, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr %20, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  tail call void @usb_gadget_giveback_request(ptr noundef nonnull %6, ptr noundef %14) #10
  tail call void @_raw_spin_lock(ptr noundef %20) #10
  br label %23

23:                                               ; preds = %13, %2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_giveback_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbhs_pipe_is_stall(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @usbhsg_try_stop(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @usbhs_mod_get(ptr noundef %0, i32 noundef 1) #10
  %4 = tail call ptr @usbhs_mod_get_current(ptr noundef %0) #10
  %5 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 7
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #10
  %7 = xor i32 %1, -1
  %8 = getelementptr i8, ptr %3, i32 76
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, %7
  store i32 %10, ptr %8, align 4
  %11 = and i32 %10, 3
  %12 = icmp eq i32 %11, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #10
  br i1 %12, label %31, label %13

13:                                               ; preds = %2
  tail call void @usbhs_fifo_quit(ptr noundef %0) #10
  %14 = getelementptr inbounds %struct.usbhs_mod, ptr %4, i32 0, i32 3
  store ptr null, ptr %14, align 4
  %15 = getelementptr inbounds %struct.usbhs_mod, ptr %4, i32 0, i32 4
  store ptr null, ptr %15, align 4
  tail call void @usbhs_irq_callback_update(ptr noundef %0, ptr noundef %4) #10
  %16 = getelementptr i8, ptr %3, i32 -532
  store i32 0, ptr %16, align 4
  tail call void @usbhs_sys_set_test_mode(ptr noundef %0, i16 noundef zeroext 0) #10
  tail call void @usbhs_sys_function_ctrl(ptr noundef %0, i32 noundef 0) #10
  %17 = getelementptr i8, ptr %3, i32 56
  %18 = getelementptr i8, ptr %3, i32 60
  %19 = load i32, ptr %18, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %26, %13
  %22 = phi i32 [ %28, %26 ], [ 0, %13 ]
  %23 = load ptr, ptr %17, align 8
  %24 = getelementptr %struct.usbhsg_uep, ptr %23, i32 %22
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = tail call i32 @usbhsg_ep_disable(ptr noundef nonnull %24)
  %28 = add nuw nsw i32 %22, 1
  %29 = load i32, ptr %18, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %21, label %31

31:                                               ; preds = %26, %21, %13, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_fifo_quit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhsg_ep_disable(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usbhsg_uep, ptr %0, i32 0, i32 2
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #10
  %4 = getelementptr inbounds %struct.usbhsg_uep, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %32, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @usbhs_pkt_pop(ptr noundef nonnull %5, ptr noundef null) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %29, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.usbhsg_uep, ptr %0, i32 0, i32 4
  br label %12

12:                                               ; preds = %12, %10
  %13 = phi ptr [ %8, %10 ], [ %27, %12 ]
  %14 = getelementptr i8, ptr %13, i32 -56
  %15 = load ptr, ptr %11, align 4
  %16 = getelementptr inbounds %struct.usbhsg_gpriv, ptr %15, i32 0, i32 1, i32 13
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.usbhs_priv, ptr %17, i32 0, i32 7
  %19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %18) #10
  %20 = load ptr, ptr %11, align 4
  %21 = getelementptr inbounds %struct.usbhsg_gpriv, ptr %20, i32 0, i32 1, i32 13
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %13, i32 -8
  store i32 -108, ptr %23, align 4
  %24 = getelementptr inbounds %struct.usbhs_priv, ptr %22, i32 0, i32 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !11
  %25 = load i16, ptr %24, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr %24, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  tail call void @usb_gadget_giveback_request(ptr noundef %0, ptr noundef %14) #10
  tail call void @_raw_spin_lock(ptr noundef %24) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %19) #10
  %27 = tail call ptr @usbhs_pkt_pop(ptr noundef nonnull %5, ptr noundef null) #10
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %12

29:                                               ; preds = %12, %7
  tail call void @usbhs_pipe_disable(ptr noundef nonnull %5) #10
  tail call void @usbhs_pipe_free(ptr noundef nonnull %5) #10
  %30 = load ptr, ptr %4, align 4
  %31 = getelementptr inbounds %struct.usbhs_pipe, ptr %30, i32 0, i32 7
  store ptr null, ptr %31, align 4
  store ptr null, ptr %4, align 4
  br label %32

32:                                               ; preds = %29, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_pipe_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usbhs_pkt_pop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhsg_get_frame(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.usbhsg_gpriv, ptr %0, i32 0, i32 1, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @usbhs_frame_get_num(ptr noundef %3) #10
  ret i32 %4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @usbhsg_set_selfpowered(ptr nocapture noundef %0, i32 noundef %1) #8 {
  %3 = icmp eq i32 %1, 0
  %4 = getelementptr inbounds %struct.usbhsg_gpriv, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, -9
  %7 = select i1 %3, i32 0, i32 8
  %8 = or i32 %6, %7
  %9 = select i1 %3, i32 0, i32 8192
  store i32 %8, ptr %4, align 4
  %10 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 17
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, -8193
  %13 = or i32 %12, %9
  store i32 %13, ptr %10, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhsg_vbus_session(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.usbhsg_gpriv, ptr %0, i32 0, i32 1, i32 13
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usbhs_priv, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = icmp ne i32 %1, 0
  %8 = getelementptr inbounds %struct.usbhsg_gpriv, ptr %0, i32 0, i32 6
  %9 = zext i1 %7 to i8
  store i8 %9, ptr %8, align 8
  %10 = tail call i32 @usbhsc_schedule_notify_hotplug(ptr noundef %6) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhsg_pullup(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.usbhsg_gpriv, ptr %0, i32 0, i32 1, i32 13
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usbhs_priv, ptr %4, i32 0, i32 7
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #10
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.usbhsg_gpriv, ptr %0, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, -17
  %11 = select i1 %7, i32 0, i32 16
  %12 = or i32 %10, %11
  store i32 %12, ptr %8, align 4
  %13 = tail call ptr @usbhs_mod_get(ptr noundef %4, i32 noundef 1) #10
  %14 = getelementptr i8, ptr %13, i32 64
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %2
  %18 = getelementptr i8, ptr %13, i32 76
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 16
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17, %2
  br label %23

23:                                               ; preds = %22, %17
  %24 = phi i32 [ 0, %22 ], [ 1, %17 ]
  tail call void @usbhs_sys_function_pullup(ptr noundef %4, i32 noundef %24) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhsg_gadget_start(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.usbhsg_gpriv, ptr %0, i32 0, i32 1, i32 13
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usbhs_priv, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  %8 = icmp eq ptr %1, null
  br i1 %8, label %43, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.usb_gadget_driver, ptr %1, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %43, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.usb_gadget_driver, ptr %1, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp ult i32 %15, 2
  br i1 %16, label %43, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.usbhsg_gpriv, ptr %0, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  %21 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  %22 = or i1 %20, %21
  br i1 %22, label %41, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.usb_phy, ptr %19, i32 0, i32 5
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.usb_otg, ptr %25, i32 0, i32 7
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = tail call i32 %29(ptr noundef nonnull %25, ptr noundef %0) #10
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31, %27, %23
  %35 = phi i32 [ %32, %31 ], [ -524, %27 ], [ -524, %23 ]
  %36 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 10
  %37 = load ptr, ptr %36, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.17, ptr noundef %37) #12
  br label %43

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.usbhs_priv, ptr %4, i32 0, i32 8, i32 2
  store ptr null, ptr %39, align 4
  %40 = getelementptr inbounds %struct.usbhs_priv, ptr %4, i32 0, i32 8, i32 3
  store ptr @usbhsm_phy_get_vbus, ptr %40, align 4
  tail call void @usbhs_irq_callback_update(ptr noundef %4, ptr noundef null) #10
  br label %41

41:                                               ; preds = %38, %17
  %42 = getelementptr inbounds %struct.usbhsg_gpriv, ptr %0, i32 0, i32 4
  store ptr %1, ptr %42, align 8
  tail call fastcc void @usbhsg_try_start(ptr noundef %4, i32 noundef 2)
  br label %43

43:                                               ; preds = %41, %34, %13, %9, %2
  %44 = phi i32 [ 0, %41 ], [ %35, %34 ], [ -22, %13 ], [ -22, %9 ], [ -22, %2 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhsg_gadget_stop(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usbhsg_gpriv, ptr %0, i32 0, i32 1, i32 13
  %3 = load ptr, ptr %2, align 4
  tail call fastcc void @usbhsg_try_stop(ptr noundef %3, i32 noundef 2)
  %4 = getelementptr inbounds %struct.usbhsg_gpriv, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  %7 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %8 = or i1 %6, %7
  br i1 %8, label %19, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.usb_phy, ptr %5, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.usb_otg, ptr %11, i32 0, i32 7
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = tail call i32 %15(ptr noundef nonnull %11, ptr noundef null) #10
  br label %19

19:                                               ; preds = %17, %13, %9, %1
  %20 = getelementptr inbounds %struct.usbhsg_gpriv, ptr %0, i32 0, i32 4
  store ptr null, ptr %20, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbhs_frame_get_num(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbhsc_schedule_notify_hotplug(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhsm_phy_get_vbus(ptr noundef %0) #0 {
  %2 = tail call ptr @usbhs_pdev_to_priv(ptr noundef %0) #10
  %3 = tail call ptr @usbhs_mod_get(ptr noundef %2, i32 noundef 1) #10
  %4 = getelementptr i8, ptr %3, i32 72
  %5 = load i8, ptr %4, align 8, !range !15
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usbhs_pdev_to_priv(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhsg_ep_enable(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.usbhsg_uep, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usbhsg_gpriv, ptr %4, i32 0, i32 1, i32 13
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usbhs_priv, ptr %6, i32 0, i32 7
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #10
  %9 = getelementptr inbounds %struct.usbhsg_uep, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  tail call void @usbhs_pipe_clear(ptr noundef nonnull %10) #10
  %13 = load ptr, ptr %9, align 4
  tail call void @usbhs_pipe_data_sequence(ptr noundef %13, i32 noundef 0) #10
  br label %47

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 3
  %16 = load i8, ptr %15, align 1
  %17 = and i8 %16, 3
  %18 = zext i8 %17 to i32
  %19 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 2
  %20 = load i8, ptr %19, align 1
  %21 = lshr i8 %20, 7
  %22 = zext i8 %21 to i32
  %23 = tail call ptr @usbhs_pipe_malloc(ptr noundef %6, i32 noundef %18, i32 noundef %22) #10
  %24 = icmp eq ptr %23, null
  br i1 %24, label %47, label %25

25:                                               ; preds = %14
  store ptr %23, ptr %9, align 4
  %26 = getelementptr inbounds %struct.usbhs_pipe, ptr %23, i32 0, i32 7
  store ptr %0, ptr %26, align 4
  %27 = load i8, ptr %19, align 1
  %28 = and i8 %27, 15
  %29 = zext i8 %28 to i16
  %30 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 4
  %31 = load i16, ptr %30, align 1
  %32 = and i16 %31, 2047
  tail call void @usbhs_pipe_config_update(ptr noundef nonnull %23, i16 noundef zeroext 0, i16 noundef zeroext %29, i16 noundef zeroext %32) #10
  %33 = load i8, ptr %19, align 1
  %34 = icmp sgt i8 %33, -1
  %35 = getelementptr inbounds %struct.usbhs_pipe, ptr %23, i32 0, i32 6
  br i1 %34, label %37, label %36

36:                                               ; preds = %25
  store ptr @usbhs_fifo_dma_push_handler, ptr %35, align 4
  br label %47

37:                                               ; preds = %25
  store ptr @usbhs_fifo_dma_pop_handler, ptr %35, align 4
  %38 = getelementptr inbounds %struct.usbhs_pipe, ptr %23, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.usbhs_priv, ptr %39, i32 0, i32 9
  %41 = load ptr, ptr %40, align 4
  %42 = ptrtoint ptr %23 to i32
  %43 = ptrtoint ptr %41 to i32
  %44 = sub i32 %42, %43
  %45 = sdiv exact i32 %44, 36
  %46 = trunc i32 %45 to i16
  tail call void @usbhs_xxxsts_clear(ptr noundef %6, i16 noundef zeroext 70, i16 noundef zeroext %46) #10
  br label %47

47:                                               ; preds = %37, %36, %14, %12
  %48 = phi i32 [ 0, %12 ], [ -5, %14 ], [ 0, %37 ], [ 0, %36 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #10
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @usbhsg_ep_alloc_request(ptr nocapture noundef readnone %0, i32 noundef %1) #0 {
  %3 = or i32 %1, 256
  %4 = and i32 %1, 17
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6, !prof !9

6:                                                ; preds = %2
  %7 = and i32 %1, 1
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, i32 1, i32 2
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i32 [ 0, %2 ], [ %9, %6 ]
  %12 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %11, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef %3, i32 noundef 124) #9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.usbhsg_request, ptr %14, i32 0, i32 1
  tail call void @usbhs_pkt_init(ptr noundef %17) #10
  br label %18

18:                                               ; preds = %16, %10
  ret ptr %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @usbhsg_ep_free_request(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.usbhsg_request, ptr %1, i32 0, i32 1
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %7, label %6, !prof !9

6:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 678, i32 noundef 9, ptr noundef null) #10
  br label %7

7:                                                ; preds = %6, %2
  tail call void @kfree(ptr noundef %1) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhsg_ep_queue(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.usbhsg_uep, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usbhsg_uep, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.usb_gadget, ptr %5, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %28, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.usbhsg_gpriv, ptr %5, i32 0, i32 4
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  %15 = icmp eq ptr %7, null
  %16 = select i1 %14, i1 true, i1 %15
  br i1 %16, label %28, label %17, !prof !16

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.usbhsg_request, ptr %1, i32 0, i32 1
  %19 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 12
  store i32 0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 11
  store i32 -115, ptr %20, align 4
  %21 = load ptr, ptr %1, align 4
  %22 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = lshr i32 %25, 18
  %27 = and i32 %26, 1
  tail call void @usbhs_pkt_push(ptr noundef nonnull %7, ptr noundef %18, ptr noundef nonnull @usbhsg_queue_done, ptr noundef %21, i32 noundef %23, i32 noundef %27, i32 noundef -1) #10
  tail call void @usbhs_pkt_start(ptr noundef nonnull %7) #10
  br label %28

28:                                               ; preds = %17, %11, %3
  %29 = phi i32 [ 0, %17 ], [ -108, %11 ], [ -108, %3 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhsg_ep_dequeue(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.usbhsg_uep, ptr %0, i32 0, i32 2
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #10
  %5 = getelementptr inbounds %struct.usbhsg_uep, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.usbhsg_request, ptr %1, i32 0, i32 1
  %10 = tail call ptr @usbhs_pkt_pop(ptr noundef nonnull %6, ptr noundef %9) #10
  br label %11

11:                                               ; preds = %8, %2
  %12 = getelementptr inbounds %struct.usbhsg_uep, ptr %0, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.usbhsg_gpriv, ptr %13, i32 0, i32 1, i32 13
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.usbhs_priv, ptr %15, i32 0, i32 7
  %17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %16) #10
  %18 = load ptr, ptr %12, align 4
  %19 = getelementptr inbounds %struct.usbhsg_gpriv, ptr %18, i32 0, i32 1, i32 13
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 11
  store i32 -104, ptr %21, align 4
  %22 = getelementptr inbounds %struct.usbhs_priv, ptr %20, i32 0, i32 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !11
  %23 = load i16, ptr %22, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr %22, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  tail call void @usb_gadget_giveback_request(ptr noundef %0, ptr noundef %1) #10
  tail call void @_raw_spin_lock(ptr noundef %22) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %16, i32 noundef %17) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhsg_ep_set_halt(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = tail call fastcc i32 @__usbhsg_ep_set_halt_wedge(ptr noundef %0, i32 noundef %1, i32 noundef 0)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhsg_ep_set_wedge(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @__usbhsg_ep_set_halt_wedge(ptr noundef %0, i32 noundef 1, i32 noundef 1)
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_pipe_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usbhs_pipe_malloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_xxxsts_clear(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_pkt_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__usbhsg_ep_set_halt_wedge(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.usbhsg_uep, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usbhsg_uep, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.usbhsg_gpriv, ptr %7, i32 0, i32 1, i32 13
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.usbhs_priv, ptr %9, i32 0, i32 7
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #10
  %12 = tail call i32 @usbhs_pipe_is_dir_in(ptr noundef %5) #10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = tail call ptr @__usbhsf_pkt_get(ptr noundef %5) #10
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %32

17:                                               ; preds = %14
  %18 = tail call zeroext i1 @usbhs_pipe_contains_transmittable_data(ptr noundef %5) #10
  br i1 %18, label %32, label %19

19:                                               ; preds = %17, %3
  %20 = icmp eq i32 %1, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %19
  tail call void @usbhs_pipe_disable(ptr noundef %5) #10
  br label %28

22:                                               ; preds = %19
  tail call void @usbhs_pipe_stall(ptr noundef %5) #10
  %23 = icmp eq i32 %2, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.usbhsg_gpriv, ptr %7, i32 0, i32 7
  %26 = load i32, ptr %25, align 4
  %27 = or i32 %26, 4
  store i32 %27, ptr %25, align 4
  br label %32

28:                                               ; preds = %22, %21
  %29 = getelementptr inbounds %struct.usbhsg_gpriv, ptr %7, i32 0, i32 7
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, -5
  store i32 %31, ptr %29, align 4
  br label %32

32:                                               ; preds = %28, %24, %17, %14
  %33 = phi i32 [ 0, %24 ], [ 0, %28 ], [ -11, %17 ], [ -11, %14 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #10
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbhs_pipe_is_dir_in(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__usbhsf_pkt_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @usbhs_pipe_contains_transmittable_data(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{!"auto-init"}
!11 = !{i64 2149194133}
!12 = !{i64 2149189957}
!13 = !{i64 2149190032, i64 2149190059, i64 2149190106, i64 2149190128, i64 2149190156, i64 2149190176}
!14 = !{i64 2149217136}
!15 = !{i8 0, i8 2}
!16 = !{!"branch_weights", i32 4001, i32 4000000}
