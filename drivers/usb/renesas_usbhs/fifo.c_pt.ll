; ModuleID = '/llk/IR/drivers/usb/renesas_usbhs/fifo.c_pt.bc'
source_filename = "../drivers/usb/renesas_usbhs/fifo.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usbhs_pkt_handle = type { ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.usbhs_pipe = type { i32, ptr, ptr, %struct.list_head, i32, i32, ptr, ptr }
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
%struct.usbhs_pkt = type { %struct.list_head, ptr, ptr, ptr, %struct.work_struct, i32, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.usbhs_mod = type { ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, i16, ptr, ptr, ptr, ptr, ptr }
%struct.dmaengine_result = type { i32, i32 }
%struct.usbhs_irq_state = type { i16, i16, i16, i16, i16 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }

@.str = private unnamed_addr constant [18 x i8] c"no done function\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"no handler function\0A\00", align 1
@usbhsf_null_handler = internal constant %struct.usbhs_pkt_handle { ptr @usbhsf_null_handle, ptr @usbhsf_null_handle, ptr null }, align 4
@usbhs_dcp_status_stage_in_handler = dso_local constant %struct.usbhs_pkt_handle { ptr @usbhs_dcp_dir_switch_to_write, ptr @usbhs_dcp_dir_switch_done, ptr null }, align 4
@usbhs_dcp_status_stage_out_handler = dso_local local_unnamed_addr constant %struct.usbhs_pkt_handle { ptr @usbhs_dcp_dir_switch_to_read, ptr @usbhs_dcp_dir_switch_done, ptr null }, align 4
@usbhs_dcp_data_stage_out_handler = dso_local local_unnamed_addr constant %struct.usbhs_pkt_handle { ptr @usbhsf_dcp_data_stage_try_push, ptr null, ptr null }, align 4
@usbhs_dcp_data_stage_in_handler = dso_local local_unnamed_addr constant %struct.usbhs_pkt_handle { ptr @usbhsf_dcp_data_stage_prepare_pop, ptr null, ptr null }, align 4
@usbhs_fifo_pio_push_handler = dso_local constant %struct.usbhs_pkt_handle { ptr @usbhsf_pio_prepare_push, ptr @usbhsf_pio_try_push, ptr null }, align 4
@usbhs_fifo_pio_pop_handler = dso_local constant %struct.usbhs_pkt_handle { ptr @usbhsf_prepare_pop, ptr @usbhsf_pio_try_pop, ptr null }, align 4
@usbhs_ctrl_stage_end_handler = dso_local local_unnamed_addr constant %struct.usbhs_pkt_handle { ptr @usbhsf_ctrl_stage_end, ptr @usbhsf_ctrl_stage_end, ptr null }, align 4
@usbhs_fifo_dma_push_handler = dso_local constant %struct.usbhs_pkt_handle { ptr @usbhsf_dma_prepare_push, ptr null, ptr @usbhsf_dma_push_done }, align 4
@usbhs_fifo_dma_pop_handler = dso_local constant %struct.usbhs_pkt_handle { ptr @usbhsf_dma_prepare_pop, ptr @usbhsf_dma_try_pop, ptr @usbhsf_dma_pop_done }, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"CFIFO\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"D0FIFO\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"D1FIFO\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"D2FIFO\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"D3FIFO\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"null handler\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"unknown pkt handler\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"%s() failed\0A\00", align 1
@__func__.usbhs_dcp_dir_switch_to_write = private unnamed_addr constant [30 x i8] c"usbhs_dcp_dir_switch_to_write\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"%s() fail\0A\00", align 1
@__func__.usbhs_dcp_dir_switch_to_read = private unnamed_addr constant [29 x i8] c"usbhs_dcp_dir_switch_to_read\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"Failed to submit dma descriptor\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"dma_complete run_error %d : %d\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.13 = private unnamed_addr constant [19 x i8] c"fifo select error\0A\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"debug %s !!\0A\00", align 1
@__func__.usbhsf_irq_empty = private unnamed_addr constant [17 x i8] c"usbhsf_irq_empty\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"irq_empty run_error %d : %d\0A\00", align 1
@__func__.usbhsf_irq_ready = private unnamed_addr constant [17 x i8] c"usbhsf_irq_ready\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"irq_ready run_error %d : %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"ch%d\00", align 1

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usbhs_pkt_init(ptr noundef %0) local_unnamed_addr #0 {
  store volatile ptr %0, ptr %0, align 4
  %2 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr %0, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usbhs_pkt_push(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #1 {
  %8 = getelementptr inbounds %struct.usbhs_pipe, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.usbhs_priv, ptr %9, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  %13 = icmp eq ptr %2, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str) #11
  br label %39

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.usbhs_priv, ptr %9, i32 0, i32 7
  %17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %16) #12
  %18 = getelementptr inbounds %struct.usbhs_pipe, ptr %0, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.1) #11
  store ptr @usbhsf_null_handler, ptr %18, align 4
  br label %22

22:                                               ; preds = %21, %15
  %23 = getelementptr inbounds %struct.usbhs_pipe, ptr %0, i32 0, i32 3
  %24 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %1, align 4
  %27 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  store ptr %25, ptr %27, align 4
  store volatile ptr %26, ptr %25, align 4
  %28 = getelementptr inbounds %struct.usbhs_pipe, ptr %0, i32 0, i32 3, i32 1
  %29 = load ptr, ptr %28, align 4
  store ptr %1, ptr %28, align 4
  store ptr %23, ptr %1, align 4
  store ptr %29, ptr %24, align 4
  store volatile ptr %1, ptr %29, align 4
  %30 = getelementptr inbounds %struct.usbhs_pkt, ptr %1, i32 0, i32 1
  store ptr %0, ptr %30, align 4
  %31 = getelementptr inbounds %struct.usbhs_pkt, ptr %1, i32 0, i32 7
  store ptr %3, ptr %31, align 4
  %32 = load ptr, ptr %18, align 4
  %33 = getelementptr inbounds %struct.usbhs_pkt, ptr %1, i32 0, i32 2
  store ptr %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.usbhs_pkt, ptr %1, i32 0, i32 8
  store i32 %4, ptr %34, align 4
  %35 = getelementptr inbounds %struct.usbhs_pkt, ptr %1, i32 0, i32 11
  store i32 %5, ptr %35, align 4
  %36 = getelementptr inbounds %struct.usbhs_pkt, ptr %1, i32 0, i32 10
  store i32 0, ptr %36, align 4
  %37 = getelementptr inbounds %struct.usbhs_pkt, ptr %1, i32 0, i32 3
  store ptr %2, ptr %37, align 4
  %38 = getelementptr inbounds %struct.usbhs_pkt, ptr %1, i32 0, i32 12
  store i32 %6, ptr %38, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %16, i32 noundef %17) #12
  br label %39

39:                                               ; preds = %22, %14
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local ptr @__usbhsf_pkt_get(ptr noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.usbhs_pipe, ptr %0, i32 0, i32 3
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  %5 = select i1 %4, ptr null, ptr %3
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @usbhs_pkt_pop(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.usbhs_pipe, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usbhs_pipe, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usbhs_priv, ptr %4, i32 0, i32 7
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #12
  tail call void @usbhs_pipe_disable(ptr noundef %0) #12
  %9 = icmp eq ptr %1, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.usbhs_pipe, ptr %0, i32 0, i32 3
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  %14 = icmp eq ptr %12, null
  %15 = or i1 %13, %14
  br i1 %15, label %119, label %16

16:                                               ; preds = %10, %2
  %17 = phi ptr [ %1, %2 ], [ %12, %10 ]
  %18 = icmp eq ptr %6, null
  br i1 %18, label %67, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.usbhs_pkt, ptr %17, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, @usbhs_fifo_dma_push_handler
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.usbhs_fifo, ptr %6, i32 0, i32 5
  br label %29

25:                                               ; preds = %19
  %26 = icmp eq ptr %21, @usbhs_fifo_dma_pop_handler
  br i1 %26, label %27, label %67

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.usbhs_fifo, ptr %6, i32 0, i32 6
  br label %29

29:                                               ; preds = %27, %23
  %30 = phi ptr [ %28, %27 ], [ %24, %23 ]
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %67, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %31, align 4
  %35 = getelementptr inbounds %struct.dma_device, ptr %34, i32 0, i32 47
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = tail call i32 %36(ptr noundef nonnull %31) #12
  %40 = load ptr, ptr %20, align 4
  br label %41

41:                                               ; preds = %38, %33
  %42 = phi ptr [ %21, %33 ], [ %40, %38 ]
  %43 = getelementptr inbounds %struct.usbhs_pkt, ptr %17, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.usbhs_pipe, ptr %44, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.usbhs_pipe, ptr %44, i32 0, i32 2
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %42, @usbhs_fifo_dma_push_handler
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = getelementptr inbounds %struct.usbhs_fifo, ptr %48, i32 0, i32 5
  br label %56

52:                                               ; preds = %41
  %53 = icmp eq ptr %42, @usbhs_fifo_dma_pop_handler
  br i1 %53, label %54, label %59

54:                                               ; preds = %52
  %55 = getelementptr inbounds %struct.usbhs_fifo, ptr %48, i32 0, i32 6
  br label %56

56:                                               ; preds = %54, %50
  %57 = phi ptr [ %55, %54 ], [ %51, %50 ]
  %58 = load ptr, ptr %57, align 4
  br label %59

59:                                               ; preds = %56, %52
  %60 = phi ptr [ null, %52 ], [ %58, %56 ]
  %61 = getelementptr inbounds %struct.usbhs_priv, ptr %46, i32 0, i32 9, i32 2
  %62 = load ptr, ptr %61, align 4
  %63 = load ptr, ptr %60, align 4
  %64 = getelementptr inbounds %struct.dma_device, ptr %63, i32 0, i32 15
  %65 = load ptr, ptr %64, align 4
  %66 = tail call i32 %62(ptr noundef %65, ptr noundef nonnull %17, i32 noundef 0) #12
  br label %114

67:                                               ; preds = %29, %25, %16
  %68 = tail call i32 @usbhs_pipe_is_dir_in(ptr noundef %0) #12
  %69 = icmp eq i32 %68, 0
  %70 = load ptr, ptr %3, align 4
  br i1 %69, label %88, label %71

71:                                               ; preds = %67
  %72 = tail call ptr @usbhs_mod_get_current(ptr noundef %70) #12
  %73 = icmp eq ptr %72, null
  br i1 %73, label %114, label %74

74:                                               ; preds = %71
  %75 = ptrtoint ptr %0 to i32
  %76 = load ptr, ptr %3, align 4
  %77 = getelementptr inbounds %struct.usbhs_priv, ptr %76, i32 0, i32 9
  %78 = load ptr, ptr %77, align 4
  %79 = ptrtoint ptr %78 to i32
  %80 = sub i32 %75, %79
  %81 = sdiv exact i32 %80, 36
  %82 = shl nuw i32 1, %81
  %83 = getelementptr inbounds %struct.usbhs_mod, ptr %72, i32 0, i32 8
  %84 = load i16, ptr %83, align 4
  %85 = trunc i32 %82 to i16
  %86 = xor i16 %85, -1
  %87 = and i16 %84, %86
  store i16 %87, ptr %83, align 4
  tail call void @usbhs_irq_callback_update(ptr noundef %70, ptr noundef nonnull %72) #12
  br label %114

88:                                               ; preds = %67
  %89 = getelementptr inbounds %struct.usbhs_priv, ptr %70, i32 0, i32 9
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, %0
  %92 = tail call ptr @usbhs_mod_get_current(ptr noundef %70) #12
  %93 = load ptr, ptr %3, align 4
  %94 = getelementptr inbounds %struct.usbhs_priv, ptr %93, i32 0, i32 9
  %95 = load ptr, ptr %94, align 4
  %96 = ptrtoint ptr %0 to i32
  %97 = ptrtoint ptr %95 to i32
  %98 = sub i32 %96, %97
  %99 = sdiv exact i32 %98, 36
  %100 = shl nuw i32 1, %99
  %101 = icmp eq ptr %92, null
  br i1 %91, label %102, label %105

102:                                              ; preds = %88
  br i1 %101, label %114, label %103

103:                                              ; preds = %102
  %104 = getelementptr inbounds %struct.usbhs_mod, ptr %92, i32 0, i32 6
  br label %108

105:                                              ; preds = %88
  br i1 %101, label %114, label %106

106:                                              ; preds = %105
  %107 = getelementptr inbounds %struct.usbhs_mod, ptr %92, i32 0, i32 8
  br label %108

108:                                              ; preds = %106, %103
  %109 = phi ptr [ %107, %106 ], [ %104, %103 ]
  %110 = load i16, ptr %109, align 4
  %111 = trunc i32 %100 to i16
  %112 = xor i16 %111, -1
  %113 = and i16 %110, %112
  store i16 %113, ptr %109, align 4
  tail call void @usbhs_irq_callback_update(ptr noundef %70, ptr noundef nonnull %92) #12
  br label %114

114:                                              ; preds = %108, %105, %102, %74, %71, %59
  tail call void @usbhs_pipe_clear_without_sequence(ptr noundef %0, i32 noundef 0, i32 noundef 0) #12
  tail call void @usbhs_pipe_running(ptr noundef %0, i32 noundef 0) #12
  %115 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %116 = load ptr, ptr %115, align 4
  %117 = load ptr, ptr %17, align 4
  %118 = getelementptr inbounds %struct.list_head, ptr %117, i32 0, i32 1
  store ptr %116, ptr %118, align 4
  store volatile ptr %117, ptr %116, align 4
  store volatile ptr %17, ptr %17, align 4
  store ptr %17, ptr %115, align 4
  br label %119

119:                                              ; preds = %114, %10
  %120 = phi ptr [ %17, %114 ], [ null, %10 ]
  %121 = icmp eq ptr %6, null
  br i1 %121, label %126, label %122

122:                                              ; preds = %119
  %123 = load ptr, ptr %3, align 4
  tail call void @usbhs_pipe_select_fifo(ptr noundef %0, ptr noundef null) #12
  %124 = getelementptr inbounds %struct.usbhs_fifo, ptr %6, i32 0, i32 2
  %125 = load i32, ptr %124, align 4
  tail call void @usbhs_write(ptr noundef %123, i32 noundef %125, i16 noundef zeroext 0) #12
  br label %126

126:                                              ; preds = %122, %119
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #12
  ret ptr %120
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_pipe_disable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbhs_pipe_is_dir_in(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @usbhsf_rx_irq_ctrl(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.usbhs_pipe, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @usbhs_mod_get_current(ptr noundef %4) #12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %24, label %7

7:                                                ; preds = %2
  %8 = ptrtoint ptr %0 to i32
  %9 = load ptr, ptr %3, align 4
  %10 = getelementptr inbounds %struct.usbhs_priv, ptr %9, i32 0, i32 9
  %11 = load ptr, ptr %10, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = sub i32 %8, %12
  %14 = sdiv exact i32 %13, 36
  %15 = shl nuw i32 1, %14
  %16 = icmp eq i32 %1, 0
  %17 = getelementptr inbounds %struct.usbhs_mod, ptr %5, i32 0, i32 8
  %18 = load i16, ptr %17, align 4
  %19 = trunc i32 %15 to i16
  %20 = xor i16 %19, -1
  %21 = and i16 %18, %20
  %22 = or i16 %18, %19
  %23 = select i1 %16, i16 %21, i16 %22
  store i16 %23, ptr %17, align 4
  tail call void @usbhs_irq_callback_update(ptr noundef %4, ptr noundef nonnull %5) #12
  br label %24

24:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @usbhsf_tx_irq_ctrl(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.usbhs_pipe, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usbhs_priv, ptr %4, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %0
  %8 = tail call ptr @usbhs_mod_get_current(ptr noundef %4) #12
  %9 = load ptr, ptr %3, align 4
  %10 = getelementptr inbounds %struct.usbhs_priv, ptr %9, i32 0, i32 9
  %11 = load ptr, ptr %10, align 4
  %12 = ptrtoint ptr %0 to i32
  %13 = ptrtoint ptr %11 to i32
  %14 = sub i32 %12, %13
  %15 = sdiv exact i32 %14, 36
  %16 = shl nuw i32 1, %15
  %17 = icmp eq ptr %8, null
  br i1 %7, label %18, label %28

18:                                               ; preds = %2
  br i1 %17, label %39, label %19

19:                                               ; preds = %18
  %20 = icmp eq i32 %1, 0
  %21 = getelementptr inbounds %struct.usbhs_mod, ptr %8, i32 0, i32 6
  %22 = load i16, ptr %21, align 4
  %23 = trunc i32 %16 to i16
  %24 = xor i16 %23, -1
  %25 = and i16 %22, %24
  %26 = or i16 %22, %23
  %27 = select i1 %20, i16 %25, i16 %26
  store i16 %27, ptr %21, align 4
  br label %38

28:                                               ; preds = %2
  br i1 %17, label %39, label %29

29:                                               ; preds = %28
  %30 = icmp eq i32 %1, 0
  %31 = getelementptr inbounds %struct.usbhs_mod, ptr %8, i32 0, i32 8
  %32 = load i16, ptr %31, align 4
  %33 = trunc i32 %16 to i16
  %34 = xor i16 %33, -1
  %35 = and i16 %32, %34
  %36 = or i16 %32, %33
  %37 = select i1 %30, i16 %35, i16 %36
  store i16 %37, ptr %31, align 4
  br label %38

38:                                               ; preds = %29, %19
  tail call void @usbhs_irq_callback_update(ptr noundef %4, ptr noundef nonnull %8) #12
  br label %39

39:                                               ; preds = %38, %28, %18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_pipe_clear_without_sequence(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_pipe_running(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @usbhsf_fifo_unselect(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.usbhs_pipe, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  tail call void @usbhs_pipe_select_fifo(ptr noundef %0, ptr noundef null) #12
  %5 = getelementptr inbounds %struct.usbhs_fifo, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  tail call void @usbhs_write(ptr noundef %4, i32 noundef %6, i16 noundef zeroext 0) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usbhs_pkt_start(ptr noundef %0) local_unnamed_addr #1 {
  %2 = tail call fastcc i32 @usbhsf_pkt_handler(ptr noundef %0, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @usbhsf_pkt_handler(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.usbhs_pipe, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usbhs_priv, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4
  %9 = getelementptr inbounds %struct.usbhs_priv, ptr %5, i32 0, i32 7
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #12
  %11 = getelementptr inbounds %struct.usbhs_pipe, ptr %0, i32 0, i32 3
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  %14 = select i1 %13, ptr null, ptr %12
  %15 = icmp eq ptr %14, null
  br i1 %15, label %42, label %16

16:                                               ; preds = %2
  switch i32 %1, label %28 [
    i32 0, label %17
    i32 1, label %20
    i32 2, label %24
  ]

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.usbhs_pkt, ptr %14, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  br label %29

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.usbhs_pkt, ptr %14, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.usbhs_pkt_handle, ptr %22, i32 0, i32 1
  br label %29

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.usbhs_pkt, ptr %14, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.usbhs_pkt_handle, ptr %26, i32 0, i32 2
  br label %29

28:                                               ; preds = %16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.8) #11
  br label %42

29:                                               ; preds = %24, %20, %17
  %30 = phi ptr [ %27, %24 ], [ %23, %20 ], [ %19, %17 ]
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %42, label %33, !prof !8

33:                                               ; preds = %29
  %34 = call i32 %31(ptr noundef nonnull %14, ptr noundef nonnull %3) #12
  %35 = load i32, ptr %3, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = load ptr, ptr %14, align 4
  %41 = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  store ptr %39, ptr %41, align 4
  store volatile ptr %40, ptr %39, align 4
  store volatile ptr %14, ptr %14, align 4
  store ptr %14, ptr %38, align 4
  br label %42

42:                                               ; preds = %37, %33, %29, %28, %2
  %43 = phi i32 [ 0, %28 ], [ %34, %37 ], [ %34, %33 ], [ -22, %2 ], [ 0, %29 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #12
  %44 = load i32, ptr %3, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.usbhs_pkt, ptr %14, i32 0, i32 3
  %48 = load ptr, ptr %47, align 4
  call void %48(ptr noundef %5, ptr noundef %14) #12
  %49 = call fastcc i32 @usbhsf_pkt_handler(ptr noundef %0, i32 noundef 0) #12
  br label %50

50:                                               ; preds = %46, %42
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhs_dcp_dir_switch_to_write(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #1 {
  %3 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usbhs_pipe, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usbhs_priv, ptr %6, i32 0, i32 10
  %8 = getelementptr inbounds %struct.usbhs_priv, ptr %6, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  tail call void @usbhs_pipe_disable(ptr noundef %4) #12
  %10 = tail call fastcc i32 @usbhsf_fifo_select(ptr noundef %4, ptr noundef %7, i32 noundef 1)
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.usbhs_dcp_dir_switch_to_write) #11
  br label %67

14:                                               ; preds = %2
  tail call void @usbhs_pipe_data_sequence(ptr noundef %4, i32 noundef 1) #12
  %15 = load ptr, ptr %5, align 4
  %16 = getelementptr inbounds %struct.usbhs_priv, ptr %15, i32 0, i32 9
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %4
  br i1 %18, label %31, label %19

19:                                               ; preds = %14
  %20 = tail call i32 @usbhs_pipe_is_dir_in(ptr noundef %4) #12
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = tail call i32 @usbhs_pipe_is_accessible(ptr noundef %4) #12
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %22, %19
  %26 = getelementptr inbounds %struct.usbhs_priv, ptr %6, i32 0, i32 10, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = tail call zeroext i16 @usbhs_read(ptr noundef %15, i32 noundef %27) #12
  %29 = and i16 %28, 8192
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %25, %14
  %32 = getelementptr inbounds %struct.usbhs_priv, ptr %6, i32 0, i32 10, i32 0, i32 3
  %33 = load i32, ptr %32, align 4
  tail call void @usbhs_write(ptr noundef %15, i32 noundef %33, i16 noundef zeroext 16384) #12
  br label %34

34:                                               ; preds = %31, %25, %22
  %35 = load ptr, ptr %5, align 4
  %36 = getelementptr inbounds %struct.usbhs_priv, ptr %6, i32 0, i32 10, i32 0, i32 3
  %37 = load i32, ptr %36, align 4
  tail call void @usbhs_bset(ptr noundef %35, i32 noundef %37, i16 noundef zeroext -32768, i16 noundef zeroext -32768) #12
  %38 = load ptr, ptr %5, align 4
  tail call void @usbhs_pipe_select_fifo(ptr noundef %4, ptr noundef null) #12
  %39 = getelementptr inbounds %struct.usbhs_priv, ptr %6, i32 0, i32 10, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  tail call void @usbhs_write(ptr noundef %38, i32 noundef %40, i16 noundef zeroext 0) #12
  %41 = load ptr, ptr %5, align 4
  %42 = getelementptr inbounds %struct.usbhs_priv, ptr %41, i32 0, i32 9
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, %4
  %45 = tail call ptr @usbhs_mod_get_current(ptr noundef %41) #12
  %46 = load ptr, ptr %5, align 4
  %47 = getelementptr inbounds %struct.usbhs_priv, ptr %46, i32 0, i32 9
  %48 = load ptr, ptr %47, align 4
  %49 = ptrtoint ptr %4 to i32
  %50 = ptrtoint ptr %48 to i32
  %51 = sub i32 %49, %50
  %52 = sdiv exact i32 %51, 36
  %53 = shl nuw i32 1, %52
  %54 = icmp eq ptr %45, null
  br i1 %44, label %55, label %58

55:                                               ; preds = %34
  br i1 %54, label %66, label %56

56:                                               ; preds = %55
  %57 = getelementptr inbounds %struct.usbhs_mod, ptr %45, i32 0, i32 6
  br label %61

58:                                               ; preds = %34
  br i1 %54, label %66, label %59

59:                                               ; preds = %58
  %60 = getelementptr inbounds %struct.usbhs_mod, ptr %45, i32 0, i32 8
  br label %61

61:                                               ; preds = %59, %56
  %62 = phi ptr [ %60, %59 ], [ %57, %56 ]
  %63 = load i16, ptr %62, align 4
  %64 = trunc i32 %53 to i16
  %65 = or i16 %63, %64
  store i16 %65, ptr %62, align 4
  tail call void @usbhs_irq_callback_update(ptr noundef %41, ptr noundef nonnull %45) #12
  br label %66

66:                                               ; preds = %61, %58, %55
  tail call void @usbhs_pipe_enable(ptr noundef %4) #12
  br label %67

67:                                               ; preds = %66, %12
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhs_dcp_dir_switch_done(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, @usbhs_dcp_status_stage_in_handler
  %8 = getelementptr inbounds %struct.usbhs_pipe, ptr %4, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  br i1 %7, label %10, label %28

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.usbhs_priv, ptr %9, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %4
  %14 = tail call ptr @usbhs_mod_get_current(ptr noundef %9) #12
  %15 = load ptr, ptr %8, align 4
  %16 = getelementptr inbounds %struct.usbhs_priv, ptr %15, i32 0, i32 9
  %17 = load ptr, ptr %16, align 4
  %18 = ptrtoint ptr %4 to i32
  %19 = ptrtoint ptr %17 to i32
  %20 = sub i32 %18, %19
  %21 = icmp eq ptr %14, null
  br i1 %13, label %22, label %25

22:                                               ; preds = %10
  br i1 %21, label %49, label %23

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.usbhs_mod, ptr %14, i32 0, i32 6
  br label %39

25:                                               ; preds = %10
  br i1 %21, label %49, label %26

26:                                               ; preds = %25
  %27 = getelementptr inbounds %struct.usbhs_mod, ptr %14, i32 0, i32 8
  br label %39

28:                                               ; preds = %2
  %29 = tail call ptr @usbhs_mod_get_current(ptr noundef %9) #12
  %30 = icmp eq ptr %29, null
  br i1 %30, label %49, label %31

31:                                               ; preds = %28
  %32 = ptrtoint ptr %4 to i32
  %33 = load ptr, ptr %8, align 4
  %34 = getelementptr inbounds %struct.usbhs_priv, ptr %33, i32 0, i32 9
  %35 = load ptr, ptr %34, align 4
  %36 = ptrtoint ptr %35 to i32
  %37 = sub i32 %32, %36
  %38 = getelementptr inbounds %struct.usbhs_mod, ptr %29, i32 0, i32 8
  br label %39

39:                                               ; preds = %31, %26, %23
  %40 = phi ptr [ %38, %31 ], [ %27, %26 ], [ %24, %23 ]
  %41 = phi i32 [ %37, %31 ], [ %20, %26 ], [ %20, %23 ]
  %42 = phi ptr [ %29, %31 ], [ %14, %26 ], [ %14, %23 ]
  %43 = sdiv exact i32 %41, 36
  %44 = shl nuw i32 1, %43
  %45 = load i16, ptr %40, align 4
  %46 = trunc i32 %44 to i16
  %47 = xor i16 %46, -1
  %48 = and i16 %45, %47
  store i16 %48, ptr %40, align 4
  tail call void @usbhs_irq_callback_update(ptr noundef %9, ptr noundef nonnull %42) #12
  br label %49

49:                                               ; preds = %39, %28, %25, %22
  %50 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 8
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 10
  store i32 %51, ptr %52, align 4
  store i32 1, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhs_dcp_dir_switch_to_read(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #1 {
  %3 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usbhs_pipe, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usbhs_priv, ptr %6, i32 0, i32 10
  %8 = getelementptr inbounds %struct.usbhs_priv, ptr %6, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  tail call void @usbhs_pipe_disable(ptr noundef %4) #12
  %10 = tail call fastcc i32 @usbhsf_fifo_select(ptr noundef %4, ptr noundef %7, i32 noundef 0)
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.usbhs_dcp_dir_switch_to_read) #11
  br label %55

14:                                               ; preds = %2
  tail call void @usbhs_pipe_data_sequence(ptr noundef %4, i32 noundef 1) #12
  %15 = load ptr, ptr %5, align 4
  %16 = getelementptr inbounds %struct.usbhs_priv, ptr %15, i32 0, i32 9
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %4
  br i1 %18, label %31, label %19

19:                                               ; preds = %14
  %20 = tail call i32 @usbhs_pipe_is_dir_in(ptr noundef %4) #12
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = tail call i32 @usbhs_pipe_is_accessible(ptr noundef %4) #12
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %22, %19
  %26 = getelementptr inbounds %struct.usbhs_priv, ptr %6, i32 0, i32 10, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = tail call zeroext i16 @usbhs_read(ptr noundef %15, i32 noundef %27) #12
  %29 = and i16 %28, 8192
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %25, %14
  %32 = getelementptr inbounds %struct.usbhs_priv, ptr %6, i32 0, i32 10, i32 0, i32 3
  %33 = load i32, ptr %32, align 4
  tail call void @usbhs_write(ptr noundef %15, i32 noundef %33, i16 noundef zeroext 16384) #12
  br label %34

34:                                               ; preds = %31, %25, %22
  %35 = load ptr, ptr %5, align 4
  tail call void @usbhs_pipe_select_fifo(ptr noundef %4, ptr noundef null) #12
  %36 = getelementptr inbounds %struct.usbhs_priv, ptr %6, i32 0, i32 10, i32 0, i32 2
  %37 = load i32, ptr %36, align 4
  tail call void @usbhs_write(ptr noundef %35, i32 noundef %37, i16 noundef zeroext 0) #12
  %38 = load ptr, ptr %5, align 4
  %39 = tail call ptr @usbhs_mod_get_current(ptr noundef %38) #12
  %40 = icmp eq ptr %39, null
  br i1 %40, label %54, label %41

41:                                               ; preds = %34
  %42 = ptrtoint ptr %4 to i32
  %43 = load ptr, ptr %5, align 4
  %44 = getelementptr inbounds %struct.usbhs_priv, ptr %43, i32 0, i32 9
  %45 = load ptr, ptr %44, align 4
  %46 = ptrtoint ptr %45 to i32
  %47 = sub i32 %42, %46
  %48 = sdiv exact i32 %47, 36
  %49 = shl nuw i32 1, %48
  %50 = getelementptr inbounds %struct.usbhs_mod, ptr %39, i32 0, i32 8
  %51 = load i16, ptr %50, align 4
  %52 = trunc i32 %49 to i16
  %53 = or i16 %51, %52
  store i16 %53, ptr %50, align 4
  tail call void @usbhs_irq_callback_update(ptr noundef %38, ptr noundef nonnull %39) #12
  br label %54

54:                                               ; preds = %41, %34
  tail call void @usbhs_pipe_enable(ptr noundef %4) #12
  br label %55

55:                                               ; preds = %54, %12
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhsf_dcp_data_stage_try_push(ptr nocapture noundef %0, ptr nocapture noundef %1) #1 {
  %3 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  tail call void @usbhs_pipe_data_sequence(ptr noundef %4, i32 noundef 1) #12
  %5 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 2
  store ptr @usbhs_fifo_pio_push_handler, ptr %5, align 4
  %6 = load ptr, ptr %3, align 4
  %7 = tail call i32 @usbhs_pipe_is_running(ptr noundef %6) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = tail call i32 @usbhsf_pio_try_push(ptr noundef %0, ptr noundef %1) #12
  br label %11

11:                                               ; preds = %9, %2
  %12 = phi i32 [ %10, %9 ], [ 0, %2 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhsf_dcp_data_stage_prepare_pop(ptr nocapture noundef %0, ptr nocapture noundef readnone %1) #1 {
  %3 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usbhs_pipe, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %38

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.usbhs_pipe, ptr %4, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.usbhs_priv, ptr %10, i32 0, i32 10
  tail call void @usbhs_pipe_disable(ptr noundef %4) #12
  tail call void @usbhs_pipe_data_sequence(ptr noundef %4, i32 noundef 1) #12
  %12 = tail call fastcc i32 @usbhsf_fifo_select(ptr noundef %4, ptr noundef %11, i32 noundef 0)
  %13 = load ptr, ptr %9, align 4
  %14 = getelementptr inbounds %struct.usbhs_priv, ptr %13, i32 0, i32 9
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %4
  br i1 %16, label %29, label %17

17:                                               ; preds = %8
  %18 = tail call i32 @usbhs_pipe_is_dir_in(ptr noundef %4) #12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = tail call i32 @usbhs_pipe_is_accessible(ptr noundef %4) #12
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %20, %17
  %24 = getelementptr inbounds %struct.usbhs_priv, ptr %10, i32 0, i32 10, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = tail call zeroext i16 @usbhs_read(ptr noundef %13, i32 noundef %25) #12
  %27 = and i16 %26, 8192
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %23, %8
  %30 = getelementptr inbounds %struct.usbhs_priv, ptr %10, i32 0, i32 10, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  tail call void @usbhs_write(ptr noundef %13, i32 noundef %31, i16 noundef zeroext 16384) #12
  br label %32

32:                                               ; preds = %29, %23, %20
  %33 = load ptr, ptr %9, align 4
  tail call void @usbhs_pipe_select_fifo(ptr noundef %4, ptr noundef null) #12
  %34 = getelementptr inbounds %struct.usbhs_priv, ptr %10, i32 0, i32 10, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  tail call void @usbhs_write(ptr noundef %33, i32 noundef %35, i16 noundef zeroext 0) #12
  %36 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 2
  store ptr @usbhs_fifo_pio_pop_handler, ptr %36, align 4
  %37 = tail call i32 @usbhsf_prepare_pop(ptr noundef %0, ptr noundef %1)
  br label %38

38:                                               ; preds = %32, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhsf_pio_prepare_push(ptr nocapture noundef %0, ptr nocapture noundef %1) #1 {
  %3 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @usbhs_pipe_is_running(ptr noundef %4) #12
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call i32 @usbhsf_pio_try_push(ptr noundef %0, ptr noundef %1)
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi i32 [ %8, %7 ], [ 0, %2 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhsf_pio_try_push(ptr nocapture noundef %0, ptr nocapture noundef %1) #1 {
  %3 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usbhs_pipe, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usbhs_priv, ptr %6, i32 0, i32 10
  %8 = load ptr, ptr %6, align 4
  %9 = getelementptr inbounds %struct.usbhs_priv, ptr %6, i32 0, i32 10, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr i8, ptr %8, i32 %10
  %12 = tail call i32 @usbhs_pipe_get_maxpacket(ptr noundef %4) #12
  %13 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 12
  %14 = load i32, ptr %13, align 4
  tail call void @usbhs_pipe_data_sequence(ptr noundef %4, i32 noundef %14) #12
  store i32 -1, ptr %13, align 4
  %15 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 8
  %16 = load i32, ptr %15, align 4
  tail call void @usbhs_pipe_set_trans_count_if_bulk(ptr noundef %4, i32 noundef %16) #12
  %17 = tail call fastcc i32 @usbhsf_fifo_select(ptr noundef %4, ptr noundef %7, i32 noundef 1)
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %166, label %19

19:                                               ; preds = %2
  %20 = tail call i32 @usbhs_pipe_is_accessible(ptr noundef %4) #12
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %135, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.usbhs_priv, ptr %6, i32 0, i32 10, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = tail call zeroext i16 @usbhs_read(ptr noundef %6, i32 noundef %24) #12
  %26 = and i16 %25, 8192
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %135, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 7
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 10
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr i8, ptr %30, i32 %32
  %34 = load i32, ptr %15, align 4
  %35 = sub i32 %34, %32
  %36 = icmp slt i32 %35, %12
  %37 = tail call i32 @llvm.smin.i32(i32 %35, i32 %12)
  %38 = icmp sgt i32 %37, 3
  %39 = ptrtoint ptr %33 to i32
  %40 = and i32 %39, 3
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %38, i1 %41, i1 false
  br i1 %42, label %43, label %48

43:                                               ; preds = %28
  %44 = lshr i32 %37, 2
  tail call void @__raw_writesl(ptr noundef %11, ptr noundef %33, i32 noundef %44) #12
  %45 = and i32 %37, 3
  %46 = and i32 %37, -4
  %47 = getelementptr i8, ptr %33, i32 %46
  br label %48

48:                                               ; preds = %43, %28
  %49 = phi ptr [ %47, %43 ], [ %33, %28 ]
  %50 = phi i32 [ %45, %43 ], [ %37, %28 ]
  %51 = getelementptr inbounds %struct.usbhs_priv, ptr %6, i32 0, i32 3, i32 13
  %52 = load i8, ptr %51, align 4
  %53 = and i8 %52, 8
  %54 = icmp eq i8 %53, 0
  %55 = icmp sgt i32 %50, 0
  br i1 %54, label %57, label %56

56:                                               ; preds = %48
  br i1 %55, label %58, label %75

57:                                               ; preds = %48
  br i1 %55, label %66, label %75

58:                                               ; preds = %58, %56
  %59 = phi i32 [ %64, %58 ], [ 0, %56 ]
  %60 = getelementptr i8, ptr %49, i32 %59
  %61 = load i8, ptr %60, align 1
  %62 = and i32 %59, 3
  %63 = getelementptr i8, ptr %11, i32 %62
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !9
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %63, i8 %61) #12, !srcloc !10
  %64 = add nuw nsw i32 %59, 1
  %65 = icmp eq i32 %64, %50
  br i1 %65, label %75, label %58

66:                                               ; preds = %66, %57
  %67 = phi i32 [ %73, %66 ], [ 0, %57 ]
  %68 = getelementptr i8, ptr %49, i32 %67
  %69 = load i8, ptr %68, align 1
  %70 = and i32 %67, 3
  %71 = xor i32 %70, 3
  %72 = getelementptr i8, ptr %11, i32 %71
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !9
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %72, i8 %69) #12, !srcloc !10
  %73 = add nuw nsw i32 %67, 1
  %74 = icmp eq i32 %73, %50
  br i1 %74, label %75, label %66

75:                                               ; preds = %66, %58, %57, %56
  %76 = load i32, ptr %31, align 4
  %77 = add i32 %76, %37
  store i32 %77, ptr %31, align 4
  %78 = load i32, ptr %15, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  store i32 0, ptr %1, align 4
  br i1 %36, label %88, label %92

81:                                               ; preds = %75
  br i1 %36, label %82, label %83

82:                                               ; preds = %81
  store i32 1, ptr %1, align 4
  br label %88

83:                                               ; preds = %81
  %84 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 11
  %85 = load i32, ptr %84, align 4
  %86 = icmp eq i32 %85, 0
  %87 = zext i1 %86 to i32
  store i32 %87, ptr %1, align 4
  br label %92

88:                                               ; preds = %82, %80
  %89 = load ptr, ptr %5, align 4
  %90 = load i32, ptr %23, align 4
  tail call void @usbhs_bset(ptr noundef %89, i32 noundef %90, i16 noundef zeroext -32768, i16 noundef zeroext -32768) #12
  %91 = load i32, ptr %1, align 4
  br label %92

92:                                               ; preds = %88, %83, %80
  %93 = phi i32 [ %87, %83 ], [ %91, %88 ], [ 0, %80 ]
  %94 = icmp eq i32 %93, 0
  %95 = load ptr, ptr %5, align 4
  %96 = getelementptr inbounds %struct.usbhs_priv, ptr %95, i32 0, i32 9
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, %4
  %99 = tail call ptr @usbhs_mod_get_current(ptr noundef %95) #12
  %100 = load ptr, ptr %5, align 4
  %101 = getelementptr inbounds %struct.usbhs_priv, ptr %100, i32 0, i32 9
  %102 = load ptr, ptr %101, align 4
  %103 = ptrtoint ptr %4 to i32
  %104 = ptrtoint ptr %102 to i32
  %105 = sub i32 %103, %104
  %106 = sdiv exact i32 %105, 36
  %107 = shl nuw i32 1, %106
  %108 = icmp eq ptr %99, null
  br i1 %98, label %109, label %118

109:                                              ; preds = %92
  br i1 %108, label %128, label %110

110:                                              ; preds = %109
  %111 = getelementptr inbounds %struct.usbhs_mod, ptr %99, i32 0, i32 6
  %112 = load i16, ptr %111, align 4
  %113 = trunc i32 %107 to i16
  %114 = xor i16 %113, -1
  %115 = and i16 %112, %114
  %116 = or i16 %112, %113
  %117 = select i1 %94, i16 %116, i16 %115
  store i16 %117, ptr %111, align 4
  br label %127

118:                                              ; preds = %92
  br i1 %108, label %128, label %119

119:                                              ; preds = %118
  %120 = getelementptr inbounds %struct.usbhs_mod, ptr %99, i32 0, i32 8
  %121 = load i16, ptr %120, align 4
  %122 = trunc i32 %107 to i16
  %123 = xor i16 %122, -1
  %124 = and i16 %121, %123
  %125 = or i16 %121, %122
  %126 = select i1 %94, i16 %125, i16 %124
  store i16 %126, ptr %120, align 4
  br label %127

127:                                              ; preds = %119, %110
  tail call void @usbhs_irq_callback_update(ptr noundef %95, ptr noundef nonnull %99) #12
  br label %128

128:                                              ; preds = %127, %118, %109
  %129 = load i32, ptr %1, align 4
  %130 = icmp eq i32 %129, 0
  %131 = zext i1 %130 to i32
  tail call void @usbhs_pipe_running(ptr noundef %4, i32 noundef %131) #12
  tail call void @usbhs_pipe_enable(ptr noundef %4) #12
  %132 = load ptr, ptr %5, align 4
  tail call void @usbhs_pipe_select_fifo(ptr noundef %4, ptr noundef null) #12
  %133 = getelementptr inbounds %struct.usbhs_priv, ptr %6, i32 0, i32 10, i32 0, i32 2
  %134 = load i32, ptr %133, align 4
  tail call void @usbhs_write(ptr noundef %132, i32 noundef %134, i16 noundef zeroext 0) #12
  br label %166

135:                                              ; preds = %22, %19
  %136 = phi i32 [ -16, %22 ], [ 0, %19 ]
  %137 = load ptr, ptr %5, align 4
  tail call void @usbhs_pipe_select_fifo(ptr noundef %4, ptr noundef null) #12
  %138 = getelementptr inbounds %struct.usbhs_priv, ptr %6, i32 0, i32 10, i32 0, i32 2
  %139 = load i32, ptr %138, align 4
  tail call void @usbhs_write(ptr noundef %137, i32 noundef %139, i16 noundef zeroext 0) #12
  %140 = load ptr, ptr %5, align 4
  %141 = getelementptr inbounds %struct.usbhs_priv, ptr %140, i32 0, i32 9
  %142 = load ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, %4
  %144 = tail call ptr @usbhs_mod_get_current(ptr noundef %140) #12
  %145 = load ptr, ptr %5, align 4
  %146 = getelementptr inbounds %struct.usbhs_priv, ptr %145, i32 0, i32 9
  %147 = load ptr, ptr %146, align 4
  %148 = ptrtoint ptr %4 to i32
  %149 = ptrtoint ptr %147 to i32
  %150 = sub i32 %148, %149
  %151 = sdiv exact i32 %150, 36
  %152 = shl nuw i32 1, %151
  %153 = icmp eq ptr %144, null
  br i1 %143, label %154, label %157

154:                                              ; preds = %135
  br i1 %153, label %165, label %155

155:                                              ; preds = %154
  %156 = getelementptr inbounds %struct.usbhs_mod, ptr %144, i32 0, i32 6
  br label %160

157:                                              ; preds = %135
  br i1 %153, label %165, label %158

158:                                              ; preds = %157
  %159 = getelementptr inbounds %struct.usbhs_mod, ptr %144, i32 0, i32 8
  br label %160

160:                                              ; preds = %158, %155
  %161 = phi ptr [ %159, %158 ], [ %156, %155 ]
  %162 = load i16, ptr %161, align 4
  %163 = trunc i32 %152 to i16
  %164 = or i16 %162, %163
  store i16 %164, ptr %161, align 4
  tail call void @usbhs_irq_callback_update(ptr noundef %140, ptr noundef nonnull %144) #12
  br label %165

165:                                              ; preds = %160, %157, %154
  tail call void @usbhs_pipe_running(ptr noundef %4, i32 noundef 1) #12
  br label %166

166:                                              ; preds = %165, %128, %2
  %167 = phi i32 [ %136, %165 ], [ 0, %128 ], [ 0, %2 ]
  ret i32 %167
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhsf_prepare_pop(ptr nocapture noundef %0, ptr nocapture noundef readnone %1) #1 {
  %3 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usbhs_pipe, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usbhs_pipe, ptr %4, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %42

10:                                               ; preds = %2
  %11 = tail call i32 @usbhs_pipe_is_running(ptr noundef %4) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %42

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 12
  %15 = load i32, ptr %14, align 4
  tail call void @usbhs_pipe_data_sequence(ptr noundef %4, i32 noundef %15) #12
  store i32 -1, ptr %14, align 4
  %16 = load ptr, ptr %5, align 4
  %17 = getelementptr inbounds %struct.usbhs_priv, ptr %16, i32 0, i32 9
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %4
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.usbhs_priv, ptr %6, i32 0, i32 10, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  tail call void @usbhs_write(ptr noundef %16, i32 noundef %22, i16 noundef zeroext 16384) #12
  br label %23

23:                                               ; preds = %20, %13
  %24 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 8
  %25 = load i32, ptr %24, align 4
  tail call void @usbhs_pipe_set_trans_count_if_bulk(ptr noundef %4, i32 noundef %25) #12
  tail call void @usbhs_pipe_enable(ptr noundef %4) #12
  tail call void @usbhs_pipe_running(ptr noundef %4, i32 noundef 1) #12
  %26 = load ptr, ptr %5, align 4
  %27 = tail call ptr @usbhs_mod_get_current(ptr noundef %26) #12
  %28 = icmp eq ptr %27, null
  br i1 %28, label %42, label %29

29:                                               ; preds = %23
  %30 = ptrtoint ptr %4 to i32
  %31 = load ptr, ptr %5, align 4
  %32 = getelementptr inbounds %struct.usbhs_priv, ptr %31, i32 0, i32 9
  %33 = load ptr, ptr %32, align 4
  %34 = ptrtoint ptr %33 to i32
  %35 = sub i32 %30, %34
  %36 = sdiv exact i32 %35, 36
  %37 = shl nuw i32 1, %36
  %38 = getelementptr inbounds %struct.usbhs_mod, ptr %27, i32 0, i32 8
  %39 = load i16, ptr %38, align 4
  %40 = trunc i32 %37 to i16
  %41 = or i16 %39, %40
  store i16 %41, ptr %38, align 4
  tail call void @usbhs_irq_callback_update(ptr noundef %26, ptr noundef nonnull %27) #12
  br label %42

42:                                               ; preds = %29, %23, %10, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhsf_pio_try_pop(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usbhs_pipe, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usbhs_priv, ptr %6, i32 0, i32 10
  %8 = load ptr, ptr %6, align 4
  %9 = getelementptr inbounds %struct.usbhs_priv, ptr %6, i32 0, i32 10, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr i8, ptr %8, i32 %10
  %12 = tail call i32 @usbhs_pipe_get_maxpacket(ptr noundef %4) #12
  %13 = tail call fastcc i32 @usbhsf_fifo_select(ptr noundef %4, ptr noundef %7, i32 noundef 0)
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %122, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.usbhs_priv, ptr %6, i32 0, i32 10, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = tail call zeroext i16 @usbhs_read(ptr noundef %6, i32 noundef %17) #12
  %19 = and i16 %18, 8192
  %20 = icmp eq i16 %19, 0
  %21 = select i1 %20, i32 -16, i32 0
  br i1 %20, label %118, label %22

22:                                               ; preds = %15
  %23 = load i32, ptr %16, align 4
  %24 = tail call zeroext i16 @usbhs_read(ptr noundef %6, i32 noundef %23) #12
  %25 = and i16 %24, 4095
  %26 = zext i16 %25 to i32
  %27 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 7
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 10
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr i8, ptr %28, i32 %30
  %32 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 8
  %33 = load i32, ptr %32, align 4
  %34 = sub i32 %33, %30
  %35 = tail call i32 @llvm.smin.i32(i32 %34, i32 %26)
  %36 = add i32 %35, %30
  store i32 %36, ptr %29, align 4
  %37 = icmp eq i32 %36, %33
  %38 = icmp slt i32 %35, %12
  %39 = select i1 %37, i1 true, i1 %38
  br i1 %39, label %40, label %67

40:                                               ; preds = %22
  store i32 1, ptr %1, align 4
  %41 = load ptr, ptr %5, align 4
  %42 = tail call ptr @usbhs_mod_get_current(ptr noundef %41) #12
  %43 = icmp eq ptr %42, null
  br i1 %43, label %58, label %44

44:                                               ; preds = %40
  %45 = ptrtoint ptr %4 to i32
  %46 = load ptr, ptr %5, align 4
  %47 = getelementptr inbounds %struct.usbhs_priv, ptr %46, i32 0, i32 9
  %48 = load ptr, ptr %47, align 4
  %49 = ptrtoint ptr %48 to i32
  %50 = sub i32 %45, %49
  %51 = sdiv exact i32 %50, 36
  %52 = shl nuw i32 1, %51
  %53 = getelementptr inbounds %struct.usbhs_mod, ptr %42, i32 0, i32 8
  %54 = load i16, ptr %53, align 4
  %55 = trunc i32 %52 to i16
  %56 = xor i16 %55, -1
  %57 = and i16 %54, %56
  store i16 %57, ptr %53, align 4
  tail call void @usbhs_irq_callback_update(ptr noundef %41, ptr noundef nonnull %42) #12
  br label %58

58:                                               ; preds = %44, %40
  tail call void @usbhs_pipe_running(ptr noundef %4, i32 noundef 0) #12
  %59 = tail call i32 @usbhs_mod_is_host(ptr noundef %6) #12
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load ptr, ptr %5, align 4
  %63 = getelementptr inbounds %struct.usbhs_priv, ptr %62, i32 0, i32 9
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, %4
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  tail call void @usbhs_pipe_disable(ptr noundef %4) #12
  br label %67

67:                                               ; preds = %66, %61, %58, %22
  %68 = icmp eq i16 %25, 0
  br i1 %68, label %69, label %88

69:                                               ; preds = %67
  %70 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 11
  store i32 1, ptr %70, align 4
  %71 = load ptr, ptr %5, align 4
  %72 = getelementptr inbounds %struct.usbhs_priv, ptr %71, i32 0, i32 9
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, %4
  br i1 %74, label %86, label %75

75:                                               ; preds = %69
  %76 = tail call i32 @usbhs_pipe_is_dir_in(ptr noundef %4) #12
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = tail call i32 @usbhs_pipe_is_accessible(ptr noundef %4) #12
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %118

81:                                               ; preds = %78, %75
  %82 = load i32, ptr %16, align 4
  %83 = tail call zeroext i16 @usbhs_read(ptr noundef %71, i32 noundef %82) #12
  %84 = and i16 %83, 8192
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %118, label %86

86:                                               ; preds = %81, %69
  %87 = load i32, ptr %16, align 4
  tail call void @usbhs_write(ptr noundef %71, i32 noundef %87, i16 noundef zeroext 16384) #12
  br label %118

88:                                               ; preds = %67
  %89 = icmp sgt i32 %35, 3
  %90 = ptrtoint ptr %31 to i32
  %91 = and i32 %90, 3
  %92 = icmp eq i32 %91, 0
  %93 = select i1 %89, i1 %92, i1 false
  br i1 %93, label %94, label %99

94:                                               ; preds = %88
  %95 = lshr i32 %35, 2
  tail call void @__raw_readsl(ptr noundef %11, ptr noundef %31, i32 noundef %95) #12
  %96 = and i32 %35, 3
  %97 = and i32 %35, -4
  %98 = getelementptr i8, ptr %31, i32 %97
  br label %99

99:                                               ; preds = %94, %88
  %100 = phi ptr [ %98, %94 ], [ %31, %88 ]
  %101 = phi i32 [ %96, %94 ], [ %35, %88 ]
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %118

103:                                              ; preds = %110, %99
  %104 = phi i32 [ %116, %110 ], [ 0, %99 ]
  %105 = phi i32 [ %111, %110 ], [ 0, %99 ]
  %106 = and i32 %104, 3
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !12
  br label %110

110:                                              ; preds = %108, %103
  %111 = phi i32 [ %105, %103 ], [ %109, %108 ]
  %112 = shl nuw nsw i32 %106, 3
  %113 = lshr i32 %111, %112
  %114 = trunc i32 %113 to i8
  %115 = getelementptr i8, ptr %100, i32 %104
  store i8 %114, ptr %115, align 1
  %116 = add nuw nsw i32 %104, 1
  %117 = icmp eq i32 %116, %101
  br i1 %117, label %118, label %103

118:                                              ; preds = %110, %99, %86, %81, %78, %15
  %119 = load ptr, ptr %5, align 4
  tail call void @usbhs_pipe_select_fifo(ptr noundef %4, ptr noundef null) #12
  %120 = getelementptr inbounds %struct.usbhs_priv, ptr %6, i32 0, i32 10, i32 0, i32 2
  %121 = load i32, ptr %120, align 4
  tail call void @usbhs_write(ptr noundef %119, i32 noundef %121, i16 noundef zeroext 0) #12
  br label %122

122:                                              ; preds = %118, %2
  %123 = phi i32 [ %21, %118 ], [ 0, %2 ]
  ret i32 %123
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhsf_ctrl_stage_end(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  tail call void @usbhs_dcp_control_transfer_done(ptr noundef %4) #12
  store i32 1, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhsf_dma_prepare_push(ptr noundef %0, ptr nocapture noundef %1) #1 {
  %3 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usbhs_pipe, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 8
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 10
  %10 = load i32, ptr %9, align 4
  %11 = sub i32 %8, %10
  %12 = getelementptr inbounds %struct.usbhs_pipe, ptr %4, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %96

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.usbhs_priv, ptr %6, i32 0, i32 3, i32 12
  %17 = load i32, ptr %16, align 4
  %18 = icmp slt i32 %11, %17
  br i1 %18, label %89, label %19

19:                                               ; preds = %15
  %20 = load i32, ptr %4, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %89, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.usbhs_priv, ptr %6, i32 0, i32 3, i32 13
  %24 = load i8, ptr %23, align 4
  %25 = and i8 %24, 1
  %26 = icmp ne i8 %25, 0
  %27 = and i32 %11, 7
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %26, i1 true, i1 %28
  br i1 %29, label %30, label %89

30:                                               ; preds = %22
  %31 = icmp eq i8 %25, 0
  %32 = select i1 %31, i32 7, i32 31
  %33 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 7
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr i8, ptr %34, i32 %10
  %36 = ptrtoint ptr %35 to i32
  %37 = and i32 %32, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %89

39:                                               ; preds = %30
  %40 = tail call i32 @usbhs_pipe_is_running(ptr noundef %4) #12
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %96

42:                                               ; preds = %39
  %43 = tail call fastcc ptr @usbhsf_get_dma_fifo(ptr noundef %6, ptr noundef %0)
  %44 = icmp eq ptr %43, null
  br i1 %44, label %89, label %45

45:                                               ; preds = %42
  %46 = tail call fastcc i32 @usbhsf_fifo_select(ptr noundef %4, ptr noundef nonnull %43, i32 noundef 0)
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %89, label %48

48:                                               ; preds = %45
  %49 = load ptr, ptr %3, align 4
  %50 = getelementptr inbounds %struct.usbhs_pipe, ptr %49, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.usbhs_pipe, ptr %49, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 2
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, @usbhs_fifo_dma_push_handler
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = getelementptr inbounds %struct.usbhs_fifo, ptr %53, i32 0, i32 5
  br label %63

59:                                               ; preds = %48
  %60 = icmp eq ptr %55, @usbhs_fifo_dma_pop_handler
  br i1 %60, label %61, label %66

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.usbhs_fifo, ptr %53, i32 0, i32 6
  br label %63

63:                                               ; preds = %61, %57
  %64 = phi ptr [ %62, %61 ], [ %58, %57 ]
  %65 = load ptr, ptr %64, align 4
  br label %66

66:                                               ; preds = %63, %59
  %67 = phi ptr [ null, %59 ], [ %65, %63 ]
  %68 = getelementptr inbounds %struct.usbhs_priv, ptr %51, i32 0, i32 9, i32 2
  %69 = load ptr, ptr %68, align 4
  %70 = load ptr, ptr %67, align 4
  %71 = getelementptr inbounds %struct.dma_device, ptr %70, i32 0, i32 15
  %72 = load ptr, ptr %71, align 4
  %73 = tail call i32 %69(ptr noundef %72, ptr noundef %0, i32 noundef 1) #12
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %88, label %75

75:                                               ; preds = %66
  %76 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 9
  store i32 %11, ptr %76, align 4
  tail call fastcc void @usbhsf_tx_irq_ctrl(ptr noundef %4, i32 noundef 0)
  %77 = load i8, ptr %23, align 4
  %78 = and i8 %77, 1
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %75
  tail call fastcc void @usbhsf_dma_xfer_preparing(ptr noundef %0)
  br label %96

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 4
  store i32 -32, ptr %82, align 4
  %83 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 4, i32 1
  store volatile ptr %83, ptr %83, align 4
  %84 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 4, i32 1, i32 1
  store ptr %83, ptr %84, align 4
  %85 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 4, i32 2
  store ptr @xfer_work, ptr %85, align 4
  %86 = load ptr, ptr @system_wq, align 4
  %87 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %86, ptr noundef %82) #12
  br label %96

88:                                               ; preds = %66
  tail call fastcc void @usbhsf_fifo_unselect(ptr noundef %4, ptr noundef nonnull %43)
  br label %89

89:                                               ; preds = %88, %45, %42, %30, %22, %19, %15
  %90 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 2
  store ptr @usbhs_fifo_pio_push_handler, ptr %90, align 4
  %91 = load ptr, ptr %3, align 4
  %92 = tail call i32 @usbhs_pipe_is_running(ptr noundef %91) #12
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = tail call i32 @usbhsf_pio_try_push(ptr noundef %0, ptr noundef %1) #12
  br label %96

96:                                               ; preds = %94, %89, %81, %80, %39, %2
  %97 = phi i32 [ 0, %2 ], [ 0, %39 ], [ 0, %81 ], [ 0, %80 ], [ %95, %94 ], [ 0, %89 ]
  ret i32 %97
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhsf_dma_push_done(ptr noundef %0, ptr nocapture noundef %1) #1 {
  %3 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 9
  %6 = load i32, ptr %5, align 4
  %7 = tail call i32 @usbhs_pipe_get_maxpacket(ptr noundef %4) #12
  %8 = load i32, ptr %5, align 4
  %9 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 10
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, %8
  store i32 %11, ptr %9, align 4
  %12 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 8
  %13 = load i32, ptr %12, align 4
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, ptr %1, align 4
  br label %27

16:                                               ; preds = %2
  %17 = srem i32 %6, %7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  store i32 1, ptr %1, align 4
  br label %27

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 11
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  %24 = zext i1 %23 to i32
  store i32 %24, ptr %1, align 4
  %25 = xor i1 %23, true
  %26 = zext i1 %25 to i32
  br label %27

27:                                               ; preds = %20, %19, %15
  %28 = phi i32 [ 0, %19 ], [ %26, %20 ], [ 1, %15 ]
  tail call void @usbhs_pipe_running(ptr noundef %4, i32 noundef %28) #12
  %29 = getelementptr inbounds %struct.usbhs_pipe, ptr %4, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.usbhs_pipe, ptr %4, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.usbhs_fifo, ptr %30, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  tail call void @usbhs_bset(ptr noundef %32, i32 noundef %34, i16 noundef zeroext 4096, i16 noundef zeroext 0) #12
  %35 = load ptr, ptr %3, align 4
  %36 = getelementptr inbounds %struct.usbhs_pipe, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.usbhs_pipe, ptr %35, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, @usbhs_fifo_dma_push_handler
  br i1 %42, label %43, label %45

43:                                               ; preds = %27
  %44 = getelementptr inbounds %struct.usbhs_fifo, ptr %39, i32 0, i32 5
  br label %49

45:                                               ; preds = %27
  %46 = icmp eq ptr %41, @usbhs_fifo_dma_pop_handler
  br i1 %46, label %47, label %52

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.usbhs_fifo, ptr %39, i32 0, i32 6
  br label %49

49:                                               ; preds = %47, %43
  %50 = phi ptr [ %48, %47 ], [ %44, %43 ]
  %51 = load ptr, ptr %50, align 4
  br label %52

52:                                               ; preds = %49, %45
  %53 = phi ptr [ null, %45 ], [ %51, %49 ]
  %54 = getelementptr inbounds %struct.usbhs_priv, ptr %37, i32 0, i32 9, i32 2
  %55 = load ptr, ptr %54, align 4
  %56 = load ptr, ptr %53, align 4
  %57 = getelementptr inbounds %struct.dma_device, ptr %56, i32 0, i32 15
  %58 = load ptr, ptr %57, align 4
  %59 = tail call i32 %55(ptr noundef %58, ptr noundef %0, i32 noundef 0) #12
  %60 = load ptr, ptr %29, align 4
  %61 = load ptr, ptr %31, align 4
  tail call void @usbhs_pipe_select_fifo(ptr noundef %4, ptr noundef null) #12
  %62 = getelementptr inbounds %struct.usbhs_fifo, ptr %60, i32 0, i32 2
  %63 = load i32, ptr %62, align 4
  tail call void @usbhs_write(ptr noundef %61, i32 noundef %63, i16 noundef zeroext 0) #12
  %64 = load i32, ptr %1, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %52
  store ptr @usbhs_fifo_pio_push_handler, ptr %40, align 4
  %67 = tail call i32 @usbhsf_pio_try_push(ptr noundef %0, ptr noundef %1)
  br label %68

68:                                               ; preds = %66, %52
  %69 = phi i32 [ %67, %66 ], [ 0, %52 ]
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhsf_dma_prepare_pop(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usbhs_pipe, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usbhs_priv, ptr %6, i32 0, i32 3, i32 13
  %8 = load i8, ptr %7, align 4
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %170, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.usbhs_pipe, ptr %4, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %172

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 8
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.usbhs_priv, ptr %6, i32 0, i32 3, i32 12
  %19 = load i32, ptr %18, align 4
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %165, label %21

21:                                               ; preds = %15
  %22 = load i32, ptr %4, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %165, label %24

24:                                               ; preds = %21
  %25 = getelementptr %struct.usbhs_priv, ptr %6, i32 0, i32 10, i32 1, i32 0
  %26 = icmp eq ptr %25, null
  br i1 %26, label %165, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, @usbhs_fifo_dma_push_handler
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = getelementptr %struct.usbhs_priv, ptr %6, i32 0, i32 10, i32 1, i32 0, i32 5
  br label %37

33:                                               ; preds = %27
  %34 = icmp eq ptr %29, @usbhs_fifo_dma_pop_handler
  br i1 %34, label %35, label %48

35:                                               ; preds = %33
  %36 = getelementptr %struct.usbhs_priv, ptr %6, i32 0, i32 10, i32 1, i32 0, i32 6
  br label %37

37:                                               ; preds = %35, %31
  %38 = phi ptr [ %36, %35 ], [ %32, %31 ]
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = getelementptr %struct.usbhs_priv, ptr %6, i32 0, i32 10, i32 1, i32 0, i32 4
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %102, label %45

45:                                               ; preds = %41, %37
  %46 = getelementptr %struct.usbhs_priv, ptr %6, i32 0, i32 10, i32 1, i32 1
  %47 = icmp eq ptr %46, null
  br i1 %47, label %165, label %51

48:                                               ; preds = %33
  %49 = getelementptr %struct.usbhs_priv, ptr %6, i32 0, i32 10, i32 1, i32 1
  %50 = icmp eq ptr %49, null
  br i1 %50, label %165, label %66

51:                                               ; preds = %45
  br i1 %30, label %56, label %52

52:                                               ; preds = %51
  %53 = icmp eq ptr %29, @usbhs_fifo_dma_pop_handler
  br i1 %53, label %54, label %66

54:                                               ; preds = %52
  %55 = getelementptr %struct.usbhs_priv, ptr %6, i32 0, i32 10, i32 1, i32 1, i32 6
  br label %58

56:                                               ; preds = %51
  %57 = getelementptr %struct.usbhs_priv, ptr %6, i32 0, i32 10, i32 1, i32 1, i32 5
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi ptr [ %55, %54 ], [ %57, %56 ]
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = getelementptr %struct.usbhs_priv, ptr %6, i32 0, i32 10, i32 1, i32 1, i32 4
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %102, label %66

66:                                               ; preds = %62, %58, %52, %48
  %67 = getelementptr %struct.usbhs_priv, ptr %6, i32 0, i32 10, i32 1, i32 2
  %68 = icmp eq ptr %67, null
  br i1 %68, label %165, label %69

69:                                               ; preds = %66
  br i1 %30, label %74, label %70

70:                                               ; preds = %69
  %71 = icmp eq ptr %29, @usbhs_fifo_dma_pop_handler
  br i1 %71, label %72, label %165

72:                                               ; preds = %70
  %73 = getelementptr %struct.usbhs_priv, ptr %6, i32 0, i32 10, i32 1, i32 2, i32 6
  br label %76

74:                                               ; preds = %69
  %75 = getelementptr %struct.usbhs_priv, ptr %6, i32 0, i32 10, i32 1, i32 2, i32 5
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi ptr [ %73, %72 ], [ %75, %74 ]
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = getelementptr %struct.usbhs_priv, ptr %6, i32 0, i32 10, i32 1, i32 2, i32 4
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %102, label %84

84:                                               ; preds = %80, %76
  %85 = getelementptr %struct.usbhs_priv, ptr %6, i32 0, i32 10, i32 1, i32 3
  %86 = icmp eq ptr %85, null
  br i1 %86, label %165, label %87

87:                                               ; preds = %84
  br i1 %30, label %92, label %88

88:                                               ; preds = %87
  %89 = icmp eq ptr %29, @usbhs_fifo_dma_pop_handler
  br i1 %89, label %90, label %165

90:                                               ; preds = %88
  %91 = getelementptr %struct.usbhs_priv, ptr %6, i32 0, i32 10, i32 1, i32 3, i32 6
  br label %94

92:                                               ; preds = %87
  %93 = getelementptr %struct.usbhs_priv, ptr %6, i32 0, i32 10, i32 1, i32 3, i32 5
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi ptr [ %91, %90 ], [ %93, %92 ]
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %165, label %98

98:                                               ; preds = %94
  %99 = getelementptr %struct.usbhs_priv, ptr %6, i32 0, i32 10, i32 1, i32 3, i32 4
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %165

102:                                              ; preds = %98, %80, %62, %41
  %103 = phi ptr [ %25, %41 ], [ %46, %62 ], [ %67, %80 ], [ %85, %98 ]
  %104 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 7
  %105 = load ptr, ptr %104, align 4
  %106 = ptrtoint ptr %105 to i32
  %107 = and i32 %106, 31
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %165

109:                                              ; preds = %102
  %110 = tail call i32 @usbhs_pipe_is_running(ptr noundef %4) #12
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %172

112:                                              ; preds = %109
  tail call void @usbhs_pipe_config_change_bfre(ptr noundef %4, i32 noundef 1) #12
  %113 = tail call fastcc i32 @usbhsf_fifo_select(ptr noundef %4, ptr noundef nonnull %103, i32 noundef 0) #12
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %165, label %115

115:                                              ; preds = %112
  %116 = load ptr, ptr %3, align 4
  %117 = getelementptr inbounds %struct.usbhs_pipe, ptr %116, i32 0, i32 1
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.usbhs_pipe, ptr %116, i32 0, i32 2
  %120 = load ptr, ptr %119, align 4
  %121 = load ptr, ptr %28, align 4
  %122 = icmp eq ptr %121, @usbhs_fifo_dma_push_handler
  br i1 %122, label %123, label %125

123:                                              ; preds = %115
  %124 = getelementptr inbounds %struct.usbhs_fifo, ptr %120, i32 0, i32 5
  br label %129

125:                                              ; preds = %115
  %126 = icmp eq ptr %121, @usbhs_fifo_dma_pop_handler
  br i1 %126, label %127, label %132

127:                                              ; preds = %125
  %128 = getelementptr inbounds %struct.usbhs_fifo, ptr %120, i32 0, i32 6
  br label %129

129:                                              ; preds = %127, %123
  %130 = phi ptr [ %128, %127 ], [ %124, %123 ]
  %131 = load ptr, ptr %130, align 4
  br label %132

132:                                              ; preds = %129, %125
  %133 = phi ptr [ null, %125 ], [ %131, %129 ]
  %134 = getelementptr inbounds %struct.usbhs_priv, ptr %118, i32 0, i32 9, i32 2
  %135 = load ptr, ptr %134, align 4
  %136 = load ptr, ptr %133, align 4
  %137 = getelementptr inbounds %struct.dma_device, ptr %136, i32 0, i32 15
  %138 = load ptr, ptr %137, align 4
  %139 = tail call i32 %135(ptr noundef %138, ptr noundef %0, i32 noundef 1) #12
  %140 = icmp slt i32 %139, 0
  %141 = load ptr, ptr %5, align 4
  br i1 %140, label %162, label %142

142:                                              ; preds = %132
  %143 = tail call ptr @usbhs_mod_get_current(ptr noundef %141) #12
  %144 = icmp eq ptr %143, null
  br i1 %144, label %159, label %145

145:                                              ; preds = %142
  %146 = ptrtoint ptr %4 to i32
  %147 = load ptr, ptr %5, align 4
  %148 = getelementptr inbounds %struct.usbhs_priv, ptr %147, i32 0, i32 9
  %149 = load ptr, ptr %148, align 4
  %150 = ptrtoint ptr %149 to i32
  %151 = sub i32 %146, %150
  %152 = sdiv exact i32 %151, 36
  %153 = shl nuw i32 1, %152
  %154 = getelementptr inbounds %struct.usbhs_mod, ptr %143, i32 0, i32 8
  %155 = load i16, ptr %154, align 4
  %156 = trunc i32 %153 to i16
  %157 = xor i16 %156, -1
  %158 = and i16 %155, %157
  store i16 %158, ptr %154, align 4
  tail call void @usbhs_irq_callback_update(ptr noundef %141, ptr noundef nonnull %143) #12
  br label %159

159:                                              ; preds = %145, %142
  %160 = load i32, ptr %16, align 4
  %161 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 9
  store i32 %160, ptr %161, align 4
  tail call fastcc void @usbhsf_dma_xfer_preparing(ptr noundef %0) #12
  br label %172

162:                                              ; preds = %132
  tail call void @usbhs_pipe_select_fifo(ptr noundef %4, ptr noundef null) #12
  %163 = getelementptr inbounds %struct.usbhs_fifo, ptr %103, i32 0, i32 2
  %164 = load i32, ptr %163, align 4
  tail call void @usbhs_write(ptr noundef %141, i32 noundef %164, i16 noundef zeroext 0) #12
  br label %165

165:                                              ; preds = %162, %112, %102, %98, %94, %88, %84, %70, %66, %48, %45, %24, %21, %15
  %166 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 2
  store ptr @usbhs_fifo_pio_pop_handler, ptr %166, align 4
  tail call void @usbhs_pipe_config_change_bfre(ptr noundef %4, i32 noundef 0) #12
  %167 = load ptr, ptr %166, align 4
  %168 = load ptr, ptr %167, align 4
  %169 = tail call i32 %168(ptr noundef %0, ptr noundef %1) #12
  br label %172

170:                                              ; preds = %2
  %171 = tail call i32 @usbhsf_prepare_pop(ptr noundef %0, ptr noundef %1) #12
  br label %172

172:                                              ; preds = %170, %165, %159, %109, %11
  %173 = phi i32 [ 0, %170 ], [ %169, %165 ], [ 0, %159 ], [ 0, %11 ], [ 0, %109 ]
  ret i32 %173
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhsf_dma_try_pop(ptr noundef %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usbhs_pipe, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usbhs_priv, ptr %6, i32 0, i32 3, i32 13
  %8 = load i8, ptr %7, align 4
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %12, label %11, !prof !13

11:                                               ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/renesas_usbhs/fifo.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1134, 0\0A.popsection", ""() #12, !srcloc !14
  unreachable

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.usbhs_pipe, ptr %4, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %174

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.usbhs_priv, ptr %6, i32 0, i32 9
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %4
  br i1 %19, label %171, label %20

20:                                               ; preds = %16
  %21 = getelementptr %struct.usbhs_priv, ptr %6, i32 0, i32 10, i32 1, i32 0
  %22 = icmp eq ptr %21, null
  br i1 %22, label %171, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, @usbhs_fifo_dma_push_handler
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = getelementptr %struct.usbhs_priv, ptr %6, i32 0, i32 10, i32 1, i32 0, i32 5
  br label %33

29:                                               ; preds = %23
  %30 = icmp eq ptr %25, @usbhs_fifo_dma_pop_handler
  br i1 %30, label %31, label %44

31:                                               ; preds = %29
  %32 = getelementptr %struct.usbhs_priv, ptr %6, i32 0, i32 10, i32 1, i32 0, i32 6
  br label %33

33:                                               ; preds = %31, %27
  %34 = phi ptr [ %32, %31 ], [ %28, %27 ]
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = getelementptr %struct.usbhs_priv, ptr %6, i32 0, i32 10, i32 1, i32 0, i32 4
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %98, label %41

41:                                               ; preds = %37, %33
  %42 = getelementptr %struct.usbhs_priv, ptr %6, i32 0, i32 10, i32 1, i32 1
  %43 = icmp eq ptr %42, null
  br i1 %43, label %171, label %47

44:                                               ; preds = %29
  %45 = getelementptr %struct.usbhs_priv, ptr %6, i32 0, i32 10, i32 1, i32 1
  %46 = icmp eq ptr %45, null
  br i1 %46, label %171, label %62

47:                                               ; preds = %41
  br i1 %26, label %52, label %48

48:                                               ; preds = %47
  %49 = icmp eq ptr %25, @usbhs_fifo_dma_pop_handler
  br i1 %49, label %50, label %62

50:                                               ; preds = %48
  %51 = getelementptr %struct.usbhs_priv, ptr %6, i32 0, i32 10, i32 1, i32 1, i32 6
  br label %54

52:                                               ; preds = %47
  %53 = getelementptr %struct.usbhs_priv, ptr %6, i32 0, i32 10, i32 1, i32 1, i32 5
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi ptr [ %51, %50 ], [ %53, %52 ]
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = getelementptr %struct.usbhs_priv, ptr %6, i32 0, i32 10, i32 1, i32 1, i32 4
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %98, label %62

62:                                               ; preds = %58, %54, %48, %44
  %63 = getelementptr %struct.usbhs_priv, ptr %6, i32 0, i32 10, i32 1, i32 2
  %64 = icmp eq ptr %63, null
  br i1 %64, label %171, label %65

65:                                               ; preds = %62
  br i1 %26, label %70, label %66

66:                                               ; preds = %65
  %67 = icmp eq ptr %25, @usbhs_fifo_dma_pop_handler
  br i1 %67, label %68, label %171

68:                                               ; preds = %66
  %69 = getelementptr %struct.usbhs_priv, ptr %6, i32 0, i32 10, i32 1, i32 2, i32 6
  br label %72

70:                                               ; preds = %65
  %71 = getelementptr %struct.usbhs_priv, ptr %6, i32 0, i32 10, i32 1, i32 2, i32 5
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi ptr [ %69, %68 ], [ %71, %70 ]
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = getelementptr %struct.usbhs_priv, ptr %6, i32 0, i32 10, i32 1, i32 2, i32 4
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %98, label %80

80:                                               ; preds = %76, %72
  %81 = getelementptr %struct.usbhs_priv, ptr %6, i32 0, i32 10, i32 1, i32 3
  %82 = icmp eq ptr %81, null
  br i1 %82, label %171, label %83

83:                                               ; preds = %80
  br i1 %26, label %88, label %84

84:                                               ; preds = %83
  %85 = icmp eq ptr %25, @usbhs_fifo_dma_pop_handler
  br i1 %85, label %86, label %171

86:                                               ; preds = %84
  %87 = getelementptr %struct.usbhs_priv, ptr %6, i32 0, i32 10, i32 1, i32 3, i32 6
  br label %90

88:                                               ; preds = %83
  %89 = getelementptr %struct.usbhs_priv, ptr %6, i32 0, i32 10, i32 1, i32 3, i32 5
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi ptr [ %87, %86 ], [ %89, %88 ]
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %171, label %94

94:                                               ; preds = %90
  %95 = getelementptr %struct.usbhs_priv, ptr %6, i32 0, i32 10, i32 1, i32 3, i32 4
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %171

98:                                               ; preds = %94, %76, %58, %37
  %99 = phi ptr [ %21, %37 ], [ %42, %58 ], [ %63, %76 ], [ %81, %94 ]
  %100 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 7
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 10
  %103 = load i32, ptr %102, align 4
  %104 = getelementptr i8, ptr %101, i32 %103
  %105 = ptrtoint ptr %104 to i32
  %106 = and i32 %105, 7
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %171

108:                                              ; preds = %98
  %109 = tail call fastcc i32 @usbhsf_fifo_select(ptr noundef %4, ptr noundef nonnull %99, i32 noundef 0) #12
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %171, label %111

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.usbhs_fifo, ptr %99, i32 0, i32 3
  %113 = load i32, ptr %112, align 4
  %114 = tail call zeroext i16 @usbhs_read(ptr noundef %6, i32 noundef %113) #12
  %115 = and i16 %114, 4095
  %116 = zext i16 %115 to i32
  %117 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 8
  %118 = load i32, ptr %117, align 4
  %119 = load i32, ptr %102, align 4
  %120 = sub i32 %118, %119
  %121 = tail call i32 @llvm.smin.i32(i32 %120, i32 %116) #12
  %122 = and i32 %121, 7
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %167

124:                                              ; preds = %111
  %125 = getelementptr inbounds %struct.usbhs_priv, ptr %6, i32 0, i32 3, i32 12
  %126 = load i32, ptr %125, align 4
  %127 = icmp slt i32 %121, %126
  br i1 %127, label %167, label %128

128:                                              ; preds = %124
  %129 = load i32, ptr %112, align 4
  %130 = tail call zeroext i16 @usbhs_read(ptr noundef %6, i32 noundef %129) #12
  %131 = and i16 %130, 8192
  %132 = icmp eq i16 %131, 0
  br i1 %132, label %167, label %133

133:                                              ; preds = %128
  %134 = load ptr, ptr %3, align 4
  %135 = getelementptr inbounds %struct.usbhs_pipe, ptr %134, i32 0, i32 1
  %136 = load ptr, ptr %135, align 4
  %137 = getelementptr inbounds %struct.usbhs_pipe, ptr %134, i32 0, i32 2
  %138 = load ptr, ptr %137, align 4
  %139 = load ptr, ptr %24, align 4
  %140 = icmp eq ptr %139, @usbhs_fifo_dma_push_handler
  br i1 %140, label %141, label %143

141:                                              ; preds = %133
  %142 = getelementptr inbounds %struct.usbhs_fifo, ptr %138, i32 0, i32 5
  br label %147

143:                                              ; preds = %133
  %144 = icmp eq ptr %139, @usbhs_fifo_dma_pop_handler
  br i1 %144, label %145, label %150

145:                                              ; preds = %143
  %146 = getelementptr inbounds %struct.usbhs_fifo, ptr %138, i32 0, i32 6
  br label %147

147:                                              ; preds = %145, %141
  %148 = phi ptr [ %146, %145 ], [ %142, %141 ]
  %149 = load ptr, ptr %148, align 4
  br label %150

150:                                              ; preds = %147, %143
  %151 = phi ptr [ null, %143 ], [ %149, %147 ]
  %152 = getelementptr inbounds %struct.usbhs_priv, ptr %136, i32 0, i32 9, i32 2
  %153 = load ptr, ptr %152, align 4
  %154 = load ptr, ptr %151, align 4
  %155 = getelementptr inbounds %struct.dma_device, ptr %154, i32 0, i32 15
  %156 = load ptr, ptr %155, align 4
  %157 = tail call i32 %153(ptr noundef %156, ptr noundef %0, i32 noundef 1) #12
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %167, label %159

159:                                              ; preds = %150
  tail call fastcc void @usbhsf_rx_irq_ctrl(ptr noundef %4, i32 noundef 0) #12
  %160 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 9
  store i32 %121, ptr %160, align 4
  %161 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 4
  store i32 -32, ptr %161, align 4
  %162 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 4, i32 1
  store volatile ptr %162, ptr %162, align 4
  %163 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 4, i32 1, i32 1
  store ptr %162, ptr %163, align 4
  %164 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 4, i32 2
  store ptr @xfer_work, ptr %164, align 4
  %165 = load ptr, ptr @system_wq, align 4
  %166 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %165, ptr noundef %161) #12
  br label %174

167:                                              ; preds = %150, %128, %124, %111
  %168 = load ptr, ptr %5, align 4
  tail call void @usbhs_pipe_select_fifo(ptr noundef %4, ptr noundef null) #12
  %169 = getelementptr inbounds %struct.usbhs_fifo, ptr %99, i32 0, i32 2
  %170 = load i32, ptr %169, align 4
  tail call void @usbhs_write(ptr noundef %168, i32 noundef %170, i16 noundef zeroext 0) #12
  br label %171

171:                                              ; preds = %167, %108, %98, %94, %90, %84, %80, %66, %62, %44, %41, %20, %16
  %172 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 2
  store ptr @usbhs_fifo_pio_pop_handler, ptr %172, align 4
  %173 = tail call i32 @usbhsf_pio_try_pop(ptr noundef %0, ptr noundef %1) #12
  br label %174

174:                                              ; preds = %171, %159, %12
  %175 = phi i32 [ %173, %171 ], [ 0, %159 ], [ 0, %12 ]
  ret i32 %175
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhsf_dma_pop_done(ptr noundef %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usbhs_pipe, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usbhs_priv, ptr %6, i32 0, i32 3, i32 13
  %8 = load i8, ptr %7, align 4
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %92, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.usbhs_pipe, ptr %4, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 2
  %15 = getelementptr inbounds %struct.usbhs_priv, ptr %6, i32 0, i32 9
  %16 = load ptr, ptr %15, align 4
  %17 = ptrtoint ptr %4 to i32
  %18 = ptrtoint ptr %16 to i32
  %19 = sub i32 %17, %18
  %20 = sdiv exact i32 %19, 36
  %21 = trunc i32 %20 to i16
  tail call void @usbhs_xxxsts_clear(ptr noundef %6, i16 noundef zeroext 70, i16 noundef zeroext %21) #12
  %22 = getelementptr inbounds %struct.usbhs_fifo, ptr %13, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = tail call zeroext i16 @usbhs_read(ptr noundef %6, i32 noundef %23) #12
  %25 = and i16 %24, 4095
  %26 = zext i16 %25 to i32
  %27 = load ptr, ptr %5, align 4
  %28 = getelementptr inbounds %struct.usbhs_priv, ptr %27, i32 0, i32 9
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %4
  br i1 %30, label %42, label %31

31:                                               ; preds = %11
  %32 = tail call i32 @usbhs_pipe_is_dir_in(ptr noundef %4) #12
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = tail call i32 @usbhs_pipe_is_accessible(ptr noundef %4) #12
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %34, %31
  %38 = load i32, ptr %22, align 4
  %39 = tail call zeroext i16 @usbhs_read(ptr noundef %27, i32 noundef %38) #12
  %40 = and i16 %39, 8192
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %37, %11
  %43 = load i32, ptr %22, align 4
  tail call void @usbhs_write(ptr noundef %27, i32 noundef %43, i16 noundef zeroext 16384) #12
  br label %44

44:                                               ; preds = %42, %37, %34
  %45 = load ptr, ptr %3, align 4
  %46 = tail call i32 @usbhs_pipe_get_maxpacket(ptr noundef %45) #12
  %47 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 8
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 6
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.dmaengine_result, ptr %50, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = sub i32 %48, %52
  %54 = icmp eq i16 %25, 0
  %55 = add i32 %53, -32
  %56 = sub i32 0, %46
  %57 = and i32 %55, %56
  %58 = add i32 %57, %26
  %59 = select i1 %54, i32 %53, i32 %58
  %60 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 10
  store i32 %59, ptr %60, align 4
  tail call void @usbhs_pipe_running(ptr noundef %4, i32 noundef 0) #12
  %61 = load ptr, ptr %5, align 4
  %62 = getelementptr inbounds %struct.usbhs_fifo, ptr %13, i32 0, i32 2
  %63 = load i32, ptr %62, align 4
  tail call void @usbhs_bset(ptr noundef %61, i32 noundef %63, i16 noundef zeroext 4096, i16 noundef zeroext 0) #12
  %64 = load ptr, ptr %3, align 4
  %65 = getelementptr inbounds %struct.usbhs_pipe, ptr %64, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.usbhs_pipe, ptr %64, i32 0, i32 2
  %68 = load ptr, ptr %67, align 4
  %69 = load ptr, ptr %14, align 4
  %70 = icmp eq ptr %69, @usbhs_fifo_dma_push_handler
  br i1 %70, label %71, label %73

71:                                               ; preds = %44
  %72 = getelementptr inbounds %struct.usbhs_fifo, ptr %68, i32 0, i32 5
  br label %77

73:                                               ; preds = %44
  %74 = icmp eq ptr %69, @usbhs_fifo_dma_pop_handler
  br i1 %74, label %75, label %80

75:                                               ; preds = %73
  %76 = getelementptr inbounds %struct.usbhs_fifo, ptr %68, i32 0, i32 6
  br label %77

77:                                               ; preds = %75, %71
  %78 = phi ptr [ %76, %75 ], [ %72, %71 ]
  %79 = load ptr, ptr %78, align 4
  br label %80

80:                                               ; preds = %77, %73
  %81 = phi ptr [ null, %73 ], [ %79, %77 ]
  %82 = getelementptr inbounds %struct.usbhs_priv, ptr %66, i32 0, i32 9, i32 2
  %83 = load ptr, ptr %82, align 4
  %84 = load ptr, ptr %81, align 4
  %85 = getelementptr inbounds %struct.dma_device, ptr %84, i32 0, i32 15
  %86 = load ptr, ptr %85, align 4
  %87 = tail call i32 %83(ptr noundef %86, ptr noundef %0, i32 noundef 0) #12
  %88 = load ptr, ptr %12, align 4
  %89 = load ptr, ptr %5, align 4
  tail call void @usbhs_pipe_select_fifo(ptr noundef %4, ptr noundef null) #12
  %90 = getelementptr inbounds %struct.usbhs_fifo, ptr %88, i32 0, i32 2
  %91 = load i32, ptr %90, align 4
  tail call void @usbhs_write(ptr noundef %89, i32 noundef %91, i16 noundef zeroext 0) #12
  store i32 1, ptr %1, align 4
  br label %141

92:                                               ; preds = %2
  %93 = tail call i32 @usbhs_pipe_get_maxpacket(ptr noundef %4) #12
  %94 = getelementptr inbounds %struct.usbhs_pipe, ptr %4, i32 0, i32 2
  %95 = load ptr, ptr %94, align 4
  %96 = load ptr, ptr %5, align 4
  %97 = getelementptr inbounds %struct.usbhs_fifo, ptr %95, i32 0, i32 2
  %98 = load i32, ptr %97, align 4
  tail call void @usbhs_bset(ptr noundef %96, i32 noundef %98, i16 noundef zeroext 4096, i16 noundef zeroext 0) #12
  %99 = load ptr, ptr %3, align 4
  %100 = getelementptr inbounds %struct.usbhs_pipe, ptr %99, i32 0, i32 1
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.usbhs_pipe, ptr %99, i32 0, i32 2
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 2
  %105 = load ptr, ptr %104, align 4
  %106 = icmp eq ptr %105, @usbhs_fifo_dma_push_handler
  br i1 %106, label %107, label %109

107:                                              ; preds = %92
  %108 = getelementptr inbounds %struct.usbhs_fifo, ptr %103, i32 0, i32 5
  br label %113

109:                                              ; preds = %92
  %110 = icmp eq ptr %105, @usbhs_fifo_dma_pop_handler
  br i1 %110, label %111, label %116

111:                                              ; preds = %109
  %112 = getelementptr inbounds %struct.usbhs_fifo, ptr %103, i32 0, i32 6
  br label %113

113:                                              ; preds = %111, %107
  %114 = phi ptr [ %112, %111 ], [ %108, %107 ]
  %115 = load ptr, ptr %114, align 4
  br label %116

116:                                              ; preds = %113, %109
  %117 = phi ptr [ null, %109 ], [ %115, %113 ]
  %118 = getelementptr inbounds %struct.usbhs_priv, ptr %101, i32 0, i32 9, i32 2
  %119 = load ptr, ptr %118, align 4
  %120 = load ptr, ptr %117, align 4
  %121 = getelementptr inbounds %struct.dma_device, ptr %120, i32 0, i32 15
  %122 = load ptr, ptr %121, align 4
  %123 = tail call i32 %119(ptr noundef %122, ptr noundef %0, i32 noundef 0) #12
  %124 = load ptr, ptr %94, align 4
  %125 = load ptr, ptr %5, align 4
  tail call void @usbhs_pipe_select_fifo(ptr noundef %4, ptr noundef null) #12
  %126 = getelementptr inbounds %struct.usbhs_fifo, ptr %124, i32 0, i32 2
  %127 = load i32, ptr %126, align 4
  tail call void @usbhs_write(ptr noundef %125, i32 noundef %127, i16 noundef zeroext 0) #12
  %128 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 9
  %129 = load i32, ptr %128, align 4
  %130 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 10
  %131 = load i32, ptr %130, align 4
  %132 = add i32 %131, %129
  store i32 %132, ptr %130, align 4
  %133 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 8
  %134 = load i32, ptr %133, align 4
  %135 = icmp eq i32 %132, %134
  %136 = icmp slt i32 %129, %93
  %137 = select i1 %135, i1 true, i1 %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %116
  store i32 1, ptr %1, align 4
  tail call void @usbhs_pipe_running(ptr noundef %4, i32 noundef 0) #12
  br label %141

139:                                              ; preds = %116
  tail call void @usbhs_pipe_running(ptr noundef %4, i32 noundef 0) #12
  %140 = tail call i32 @usbhsf_prepare_pop(ptr noundef %0, ptr noundef %1) #12
  br label %141

141:                                              ; preds = %139, %138, %80
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usbhs_fifo_clear_dcp(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.usbhs_pipe, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 10
  %5 = tail call fastcc i32 @usbhsf_fifo_select(ptr noundef %0, ptr noundef %4, i32 noundef 1)
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %56, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 4
  %9 = getelementptr inbounds %struct.usbhs_priv, ptr %8, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %24, label %12

12:                                               ; preds = %7
  %13 = tail call i32 @usbhs_pipe_is_dir_in(ptr noundef %0) #12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = tail call i32 @usbhs_pipe_is_accessible(ptr noundef %0) #12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %15, %12
  %19 = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 10, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = tail call zeroext i16 @usbhs_read(ptr noundef %8, i32 noundef %20) #12
  %22 = and i16 %21, 8192
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %18, %7
  %25 = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 10, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  tail call void @usbhs_write(ptr noundef %8, i32 noundef %26, i16 noundef zeroext 16384) #12
  br label %27

27:                                               ; preds = %24, %18, %15
  %28 = load ptr, ptr %2, align 4
  tail call void @usbhs_pipe_select_fifo(ptr noundef %0, ptr noundef null) #12
  %29 = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 10, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  tail call void @usbhs_write(ptr noundef %28, i32 noundef %30, i16 noundef zeroext 0) #12
  %31 = tail call fastcc i32 @usbhsf_fifo_select(ptr noundef %0, ptr noundef %4, i32 noundef 0)
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %56, label %33

33:                                               ; preds = %27
  %34 = load ptr, ptr %2, align 4
  %35 = getelementptr inbounds %struct.usbhs_priv, ptr %34, i32 0, i32 9
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, %0
  br i1 %37, label %50, label %38

38:                                               ; preds = %33
  %39 = tail call i32 @usbhs_pipe_is_dir_in(ptr noundef %0) #12
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = tail call i32 @usbhs_pipe_is_accessible(ptr noundef %0) #12
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %41, %38
  %45 = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 10, i32 0, i32 3
  %46 = load i32, ptr %45, align 4
  %47 = tail call zeroext i16 @usbhs_read(ptr noundef %34, i32 noundef %46) #12
  %48 = and i16 %47, 8192
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %44, %33
  %51 = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 10, i32 0, i32 3
  %52 = load i32, ptr %51, align 4
  tail call void @usbhs_write(ptr noundef %34, i32 noundef %52, i16 noundef zeroext 16384) #12
  br label %53

53:                                               ; preds = %50, %44, %41
  %54 = load ptr, ptr %2, align 4
  tail call void @usbhs_pipe_select_fifo(ptr noundef %0, ptr noundef null) #12
  %55 = load i32, ptr %29, align 4
  tail call void @usbhs_write(ptr noundef %54, i32 noundef %55, i16 noundef zeroext 0) #12
  br label %56

56:                                               ; preds = %53, %27, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @usbhsf_fifo_select(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.usbhs_pipe, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usbhs_priv, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.usbhs_priv, ptr %5, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = ptrtoint ptr %0 to i32
  %12 = ptrtoint ptr %10 to i32
  %13 = sub i32 %11, %12
  %14 = sdiv exact i32 %13, 36
  %15 = getelementptr inbounds %struct.usbhs_pipe, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %50

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.usbhs_fifo, ptr %1, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %50

22:                                               ; preds = %18
  %23 = icmp eq ptr %10, %0
  br i1 %23, label %24, label %32

24:                                               ; preds = %22
  %25 = icmp eq i32 %2, 1
  %26 = select i1 %25, i32 32, i32 0
  %27 = and i32 %14, 65535
  %28 = or i32 %27, %26
  %29 = tail call i32 @usbhs_mod_is_host(ptr noundef %5) #12
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  tail call void @usbhs_dcp_dir_for_host(ptr noundef %0, i32 noundef %2) #12
  br label %32

32:                                               ; preds = %31, %24, %22
  %33 = phi i32 [ %28, %31 ], [ %28, %24 ], [ %14, %22 ]
  %34 = getelementptr inbounds %struct.usbhs_fifo, ptr %1, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = trunc i32 %33 to i16
  %37 = or i16 %36, 2048
  tail call void @usbhs_write(ptr noundef %5, i32 noundef %35, i16 noundef zeroext %37) #12
  br label %38

38:                                               ; preds = %45, %32
  %39 = phi i32 [ 1023, %32 ], [ %47, %45 ]
  %40 = load i32, ptr %34, align 4
  %41 = tail call zeroext i16 @usbhs_read(ptr noundef %5, i32 noundef %40) #12
  %42 = and i16 %41, 47
  %43 = icmp eq i16 %42, %36
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  tail call void @usbhs_pipe_select_fifo(ptr noundef %0, ptr noundef %1) #12
  br label %50

45:                                               ; preds = %38
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 2147480) #12
  %47 = add nsw i32 %39, -1
  %48 = icmp eq i32 %39, 0
  br i1 %48, label %49, label %38

49:                                               ; preds = %45
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.13) #11
  br label %50

50:                                               ; preds = %49, %44, %18, %3
  %51 = phi i32 [ 0, %44 ], [ -5, %49 ], [ -16, %18 ], [ -16, %3 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usbhs_fifo_init(ptr noundef %0) local_unnamed_addr #1 {
  %2 = tail call ptr @usbhs_mod_get_current(ptr noundef %0) #12
  %3 = getelementptr inbounds %struct.usbhs_mod, ptr %2, i32 0, i32 5
  store ptr @usbhsf_irq_empty, ptr %3, align 4
  %4 = getelementptr inbounds %struct.usbhs_mod, ptr %2, i32 0, i32 7
  store ptr @usbhsf_irq_ready, ptr %4, align 4
  %5 = getelementptr inbounds %struct.usbhs_mod, ptr %2, i32 0, i32 6
  store i16 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.usbhs_mod, ptr %2, i32 0, i32 8
  store i16 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 0, i32 4
  store ptr null, ptr %7, align 4
  %8 = getelementptr %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 1, i32 0
  %9 = icmp eq ptr %8, null
  br i1 %9, label %24, label %10

10:                                               ; preds = %1
  %11 = getelementptr %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 1, i32 0, i32 4
  store ptr null, ptr %11, align 4
  %12 = getelementptr %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 1, i32 1
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %10
  %15 = getelementptr %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 1, i32 1, i32 4
  store ptr null, ptr %15, align 4
  %16 = getelementptr %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 1, i32 2
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = getelementptr %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 1, i32 2, i32 4
  store ptr null, ptr %19, align 4
  %20 = getelementptr %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 1, i32 3
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = getelementptr %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 1, i32 3, i32 4
  store ptr null, ptr %23, align 4
  br label %24

24:                                               ; preds = %22, %18, %14, %10, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usbhs_mod_get_current(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhsf_irq_empty(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.usbhs_irq_state, ptr %1, i32 0, i32 4
  %7 = load i16, ptr %6, align 2
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 9
  %11 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 9, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %15, label %34

14:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.usbhsf_irq_empty) #11
  br label %34

15:                                               ; preds = %30, %9
  %16 = phi i32 [ %31, %30 ], [ 0, %9 ]
  %17 = load ptr, ptr %10, align 4
  %18 = getelementptr %struct.usbhs_pipe, ptr %17, i32 %16
  %19 = icmp eq ptr %18, null
  br i1 %19, label %34, label %20

20:                                               ; preds = %15
  %21 = load i16, ptr %6, align 2
  %22 = zext i16 %21 to i32
  %23 = shl nuw i32 1, %16
  %24 = and i32 %23, %22
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  %27 = tail call fastcc i32 @usbhsf_pkt_handler(ptr noundef nonnull %18, i32 noundef 1)
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.15, i32 noundef %16, i32 noundef %27) #11
  br label %30

30:                                               ; preds = %29, %26, %20
  %31 = add nuw nsw i32 %16, 1
  %32 = load i32, ptr %11, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %15, label %34

34:                                               ; preds = %30, %15, %14, %9
  %35 = phi i32 [ -5, %14 ], [ 0, %9 ], [ 0, %15 ], [ 0, %30 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhsf_irq_ready(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.usbhs_irq_state, ptr %1, i32 0, i32 2
  %7 = load i16, ptr %6, align 2
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 9
  %11 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 9, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %15, label %34

14:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.usbhsf_irq_ready) #11
  br label %34

15:                                               ; preds = %30, %9
  %16 = phi i32 [ %31, %30 ], [ 0, %9 ]
  %17 = load ptr, ptr %10, align 4
  %18 = getelementptr %struct.usbhs_pipe, ptr %17, i32 %16
  %19 = icmp eq ptr %18, null
  br i1 %19, label %34, label %20

20:                                               ; preds = %15
  %21 = load i16, ptr %6, align 2
  %22 = zext i16 %21 to i32
  %23 = shl nuw i32 1, %16
  %24 = and i32 %23, %22
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  %27 = tail call fastcc i32 @usbhsf_pkt_handler(ptr noundef nonnull %18, i32 noundef 1)
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.16, i32 noundef %16, i32 noundef %27) #11
  br label %30

30:                                               ; preds = %29, %26, %20
  %31 = add nuw nsw i32 %16, 1
  %32 = load i32, ptr %11, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %15, label %34

34:                                               ; preds = %30, %15, %14, %9
  %35 = phi i32 [ -5, %14 ], [ 0, %9 ], [ 0, %15 ], [ 0, %30 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usbhs_fifo_quit(ptr noundef %0) local_unnamed_addr #1 {
  %2 = tail call ptr @usbhs_mod_get_current(ptr noundef %0) #12
  %3 = getelementptr inbounds %struct.usbhs_mod, ptr %2, i32 0, i32 5
  store ptr null, ptr %3, align 4
  %4 = getelementptr inbounds %struct.usbhs_mod, ptr %2, i32 0, i32 7
  store ptr null, ptr %4, align 4
  %5 = getelementptr inbounds %struct.usbhs_mod, ptr %2, i32 0, i32 6
  store i16 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.usbhs_mod, ptr %2, i32 0, i32 8
  store i16 0, ptr %6, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usbhs_fifo_probe(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 10
  store ptr @.str.2, ptr %2, align 4
  %3 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 0, i32 1
  store i32 20, ptr %3, align 4
  %4 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 0, i32 2
  store i32 32, ptr %4, align 4
  %5 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 0, i32 3
  store i32 34, ptr %5, align 4
  %6 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 1
  store ptr @.str.3, ptr %6, align 4
  %7 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 1, i32 0, i32 1
  store i32 256, ptr %7, align 4
  %8 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 1, i32 0, i32 2
  store i32 40, ptr %8, align 4
  %9 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 1, i32 0, i32 3
  store i32 42, ptr %9, align 4
  %10 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 3, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 1, i32 0, i32 7
  store i32 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 3, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 1, i32 0, i32 8
  store i32 %14, ptr %15, align 4
  tail call fastcc void @usbhsf_dma_init(ptr noundef %0, ptr noundef %6, i32 noundef 0)
  %16 = getelementptr %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 1, i32 1
  store ptr @.str.4, ptr %16, align 4
  %17 = getelementptr %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 1, i32 1, i32 1
  store i32 288, ptr %17, align 4
  %18 = getelementptr %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 1, i32 1, i32 2
  store i32 44, ptr %18, align 4
  %19 = getelementptr %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 1, i32 1, i32 3
  store i32 46, ptr %19, align 4
  %20 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 3, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 1, i32 1, i32 7
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 3, i32 7
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 1, i32 1, i32 8
  store i32 %24, ptr %25, align 4
  tail call fastcc void @usbhsf_dma_init(ptr noundef %0, ptr noundef %16, i32 noundef 1)
  %26 = getelementptr %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 1, i32 2
  store ptr @.str.5, ptr %26, align 4
  %27 = getelementptr %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 1, i32 2, i32 1
  store i32 0, ptr %27, align 4
  %28 = getelementptr %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 1, i32 2, i32 2
  store i32 240, ptr %28, align 4
  %29 = getelementptr %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 1, i32 2, i32 3
  store i32 242, ptr %29, align 4
  %30 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 3, i32 8
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 1, i32 2, i32 7
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 3, i32 9
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 1, i32 2, i32 8
  store i32 %34, ptr %35, align 4
  tail call fastcc void @usbhsf_dma_init(ptr noundef %0, ptr noundef %26, i32 noundef 2)
  %36 = getelementptr %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 1, i32 3
  store ptr @.str.6, ptr %36, align 4
  %37 = getelementptr %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 1, i32 3, i32 1
  store i32 0, ptr %37, align 4
  %38 = getelementptr %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 1, i32 3, i32 2
  store i32 244, ptr %38, align 4
  %39 = getelementptr %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 1, i32 3, i32 3
  store i32 246, ptr %39, align 4
  %40 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 3, i32 10
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 1, i32 3, i32 7
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 3, i32 11
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 1, i32 3, i32 8
  store i32 %44, ptr %45, align 4
  tail call fastcc void @usbhsf_dma_init(ptr noundef %0, ptr noundef %36, i32 noundef 3)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @usbhsf_dma_init(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = alloca %struct.dma_cap_mask_t, align 4
  %5 = alloca [16 x i8], align 1
  %6 = getelementptr inbounds %struct.usbhs_priv, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %9 = icmp eq ptr %8, null
  br i1 %9, label %24, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3, i32 25
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %5, i8 0, i32 16, i1 false) #12, !annotation !15
  %15 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 16, ptr noundef nonnull @.str.17, i32 noundef %2) #12
  %16 = and i32 %2, 1
  %17 = icmp eq i32 %16, 0
  %18 = call ptr @dma_request_chan(ptr noundef nonnull %8, ptr noundef nonnull %5) #12
  %19 = getelementptr inbounds %struct.usbhs_fifo, ptr %1, i32 0, i32 6
  %20 = getelementptr inbounds %struct.usbhs_fifo, ptr %1, i32 0, i32 5
  %21 = select i1 %17, ptr %19, ptr %20
  %22 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  %23 = select i1 %22, ptr null, ptr %18
  store ptr %23, ptr %21, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  br label %31

24:                                               ; preds = %10, %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4
  call void @_set_bit(i32 noundef 11, ptr noundef nonnull %4) #12
  %25 = getelementptr inbounds %struct.usbhs_fifo, ptr %1, i32 0, i32 7
  %26 = call ptr @__dma_request_channel(ptr noundef nonnull %4, ptr noundef nonnull @usbhsf_dma_filter, ptr noundef %25, ptr noundef null) #12
  %27 = getelementptr inbounds %struct.usbhs_fifo, ptr %1, i32 0, i32 5
  store ptr %26, ptr %27, align 4
  store i32 0, ptr %4, align 4
  call void @_set_bit(i32 noundef 11, ptr noundef nonnull %4) #12
  %28 = getelementptr inbounds %struct.usbhs_fifo, ptr %1, i32 0, i32 8
  %29 = call ptr @__dma_request_channel(ptr noundef nonnull %4, ptr noundef nonnull @usbhsf_dma_filter, ptr noundef %28, ptr noundef null) #12
  %30 = getelementptr inbounds %struct.usbhs_fifo, ptr %1, i32 0, i32 6
  store ptr %29, ptr %30, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  br label %31

31:                                               ; preds = %24, %14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usbhs_fifo_remove(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 1, i32 0
  %3 = icmp eq ptr %2, null
  br i1 %3, label %54, label %4

4:                                                ; preds = %1
  %5 = getelementptr %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 1, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @dma_release_channel(ptr noundef nonnull %6) #12
  br label %9

9:                                                ; preds = %8, %4
  %10 = getelementptr %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 1, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @dma_release_channel(ptr noundef nonnull %11) #12
  br label %14

14:                                               ; preds = %13, %9
  store ptr null, ptr %5, align 4
  store ptr null, ptr %10, align 4
  %15 = getelementptr %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 1, i32 1
  %16 = icmp eq ptr %15, null
  br i1 %16, label %54, label %17

17:                                               ; preds = %14
  %18 = getelementptr %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 1, i32 1, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void @dma_release_channel(ptr noundef nonnull %19) #12
  br label %22

22:                                               ; preds = %21, %17
  %23 = getelementptr %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 1, i32 1, i32 6
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call void @dma_release_channel(ptr noundef nonnull %24) #12
  br label %27

27:                                               ; preds = %26, %22
  store ptr null, ptr %18, align 4
  store ptr null, ptr %23, align 4
  %28 = getelementptr %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 1, i32 2
  %29 = icmp eq ptr %28, null
  br i1 %29, label %54, label %30

30:                                               ; preds = %27
  %31 = getelementptr %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 1, i32 2, i32 5
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call void @dma_release_channel(ptr noundef nonnull %32) #12
  br label %35

35:                                               ; preds = %34, %30
  %36 = getelementptr %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 1, i32 2, i32 6
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  tail call void @dma_release_channel(ptr noundef nonnull %37) #12
  br label %40

40:                                               ; preds = %39, %35
  store ptr null, ptr %31, align 4
  store ptr null, ptr %36, align 4
  %41 = getelementptr %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 1, i32 3
  %42 = icmp eq ptr %41, null
  br i1 %42, label %54, label %43

43:                                               ; preds = %40
  %44 = getelementptr %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 1, i32 3, i32 5
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  tail call void @dma_release_channel(ptr noundef nonnull %45) #12
  br label %48

48:                                               ; preds = %47, %43
  %49 = getelementptr %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 1, i32 3, i32 6
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  tail call void @dma_release_channel(ptr noundef nonnull %50) #12
  br label %53

53:                                               ; preds = %52, %48
  store ptr null, ptr %44, align 4
  store ptr null, ptr %49, align 4
  br label %54

54:                                               ; preds = %53, %40, %27, %14, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbhsf_null_handle(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #1 {
  %3 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usbhs_pipe, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usbhs_priv, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.7) #11
  ret i32 -22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_irq_callback_update(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_pipe_select_fifo(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_write(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_pipe_data_sequence(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_pipe_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_bset(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbhs_pipe_is_running(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbhs_pipe_get_maxpacket(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_pipe_set_trans_count_if_bulk(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbhs_pipe_is_accessible(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @usbhs_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbhs_mod_is_host(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_dcp_control_transfer_done(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc ptr @usbhsf_get_dma_fifo(ptr noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = getelementptr %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 1, i32 0
  %4 = icmp eq ptr %3, null
  br i1 %4, label %84, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.usbhs_pkt, ptr %1, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, @usbhs_fifo_dma_push_handler
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = getelementptr %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 1, i32 0, i32 5
  br label %15

11:                                               ; preds = %5
  %12 = icmp eq ptr %7, @usbhs_fifo_dma_pop_handler
  br i1 %12, label %13, label %26

13:                                               ; preds = %11
  %14 = getelementptr %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 1, i32 0, i32 6
  br label %15

15:                                               ; preds = %13, %9
  %16 = phi ptr [ %14, %13 ], [ %10, %9 ]
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = getelementptr %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 1, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %84, label %23

23:                                               ; preds = %19, %15
  %24 = getelementptr %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 1, i32 1
  %25 = icmp eq ptr %24, null
  br i1 %25, label %84, label %29

26:                                               ; preds = %11
  %27 = getelementptr %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 1, i32 1
  %28 = icmp eq ptr %27, null
  br i1 %28, label %84, label %44

29:                                               ; preds = %23
  br i1 %8, label %34, label %30

30:                                               ; preds = %29
  %31 = icmp eq ptr %7, @usbhs_fifo_dma_pop_handler
  br i1 %31, label %32, label %44

32:                                               ; preds = %30
  %33 = getelementptr %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 1, i32 1, i32 6
  br label %36

34:                                               ; preds = %29
  %35 = getelementptr %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 1, i32 1, i32 5
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi ptr [ %33, %32 ], [ %35, %34 ]
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = getelementptr %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 1, i32 1, i32 4
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %84, label %44

44:                                               ; preds = %40, %36, %30, %26
  %45 = getelementptr %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 1, i32 2
  %46 = icmp eq ptr %45, null
  br i1 %46, label %84, label %47

47:                                               ; preds = %44
  br i1 %8, label %52, label %48

48:                                               ; preds = %47
  %49 = icmp eq ptr %7, @usbhs_fifo_dma_pop_handler
  br i1 %49, label %50, label %65

50:                                               ; preds = %48
  %51 = getelementptr %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 1, i32 2, i32 6
  br label %54

52:                                               ; preds = %47
  %53 = getelementptr %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 1, i32 2, i32 5
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi ptr [ %51, %50 ], [ %53, %52 ]
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = getelementptr %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 1, i32 2, i32 4
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %84, label %62

62:                                               ; preds = %58, %54
  %63 = getelementptr %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 1, i32 3
  %64 = icmp eq ptr %63, null
  br i1 %64, label %84, label %68

65:                                               ; preds = %48
  %66 = getelementptr %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 1, i32 3
  %67 = icmp eq ptr %66, null
  br i1 %67, label %84, label %83

68:                                               ; preds = %62
  br i1 %8, label %73, label %69

69:                                               ; preds = %68
  %70 = icmp eq ptr %7, @usbhs_fifo_dma_pop_handler
  br i1 %70, label %71, label %83

71:                                               ; preds = %69
  %72 = getelementptr %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 1, i32 3, i32 6
  br label %75

73:                                               ; preds = %68
  %74 = getelementptr %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 1, i32 3, i32 5
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi ptr [ %72, %71 ], [ %74, %73 ]
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = getelementptr %struct.usbhs_priv, ptr %0, i32 0, i32 10, i32 1, i32 3, i32 4
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %79, %75, %69, %65
  br label %84

84:                                               ; preds = %83, %79, %65, %62, %58, %44, %40, %26, %23, %19, %2
  %85 = phi ptr [ %3, %19 ], [ null, %2 ], [ null, %23 ], [ %24, %40 ], [ null, %44 ], [ %45, %58 ], [ null, %62 ], [ %63, %79 ], [ null, %83 ], [ null, %26 ], [ null, %65 ]
  ret ptr %85
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @usbhsf_dma_xfer_preparing(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca %struct.scatterlist, align 4
  %3 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usbhs_pipe, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usbhs_priv, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.usbhs_pipe, ptr %4, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %68, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, @usbhs_fifo_dma_push_handler
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.usbhs_fifo, ptr %11, i32 0, i32 5
  br label %23

19:                                               ; preds = %13
  %20 = icmp eq ptr %15, @usbhs_fifo_dma_pop_handler
  br i1 %20, label %21, label %26

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.usbhs_fifo, ptr %11, i32 0, i32 6
  br label %23

23:                                               ; preds = %21, %17
  %24 = phi ptr [ %22, %21 ], [ %18, %17 ]
  %25 = load ptr, ptr %24, align 4
  br label %26

26:                                               ; preds = %23, %19
  %27 = phi ptr [ null, %19 ], [ %25, %23 ]
  %28 = tail call i32 @usbhs_pipe_is_dir_in(ptr noundef %4) #12
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i32 1, i32 2
  %31 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 5
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 10
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, %32
  %36 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 9
  %37 = load i32, ptr %36, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false) #12, !annotation !15
  call void @sg_init_table(ptr noundef nonnull %2, i32 noundef 1) #12
  %38 = getelementptr inbounds %struct.scatterlist, ptr %2, i32 0, i32 3
  store i32 %35, ptr %38, align 4
  %39 = getelementptr inbounds %struct.scatterlist, ptr %2, i32 0, i32 4
  store i32 %37, ptr %39, align 4
  %40 = icmp eq ptr %27, null
  br i1 %40, label %48, label %41

41:                                               ; preds = %26
  %42 = load ptr, ptr %27, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.dma_device, ptr %42, i32 0, i32 39
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %44, %41, %26
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #12
  br label %68

49:                                               ; preds = %44
  %50 = call ptr %46(ptr noundef nonnull %27, ptr noundef nonnull %2, i32 noundef 1, i32 noundef %30, i32 noundef 3, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #12
  %51 = icmp eq ptr %50, null
  br i1 %51, label %68, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %50, i32 0, i32 7
  store ptr @usbhsf_dma_complete, ptr %53, align 4
  %54 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %50, i32 0, i32 8
  store ptr %0, ptr %54, align 4
  %55 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %50, i32 0, i32 4
  %56 = load ptr, ptr %55, align 4
  %57 = call i32 %56(ptr noundef nonnull %50) #12
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.11) #11
  br label %68

60:                                               ; preds = %52
  call void @usbhs_pipe_running(ptr noundef %4, i32 noundef 1) #12
  %61 = load i32, ptr %36, align 4
  call void @usbhs_pipe_set_trans_count_if_bulk(ptr noundef %4, i32 noundef %61) #12
  %62 = load ptr, ptr %27, align 4
  %63 = getelementptr inbounds %struct.dma_device, ptr %62, i32 0, i32 50
  %64 = load ptr, ptr %63, align 4
  call void %64(ptr noundef nonnull %27) #12
  %65 = load ptr, ptr %5, align 4
  %66 = getelementptr inbounds %struct.usbhs_fifo, ptr %11, i32 0, i32 2
  %67 = load i32, ptr %66, align 4
  call void @usbhs_bset(ptr noundef %65, i32 noundef %67, i16 noundef zeroext 4096, i16 noundef zeroext 4096) #12
  call void @usbhs_pipe_enable(ptr noundef %4) #12
  br label %68

68:                                               ; preds = %60, %59, %49, %48, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xfer_work(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 -20
  %3 = getelementptr i8, ptr %0, i32 -12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usbhs_pipe, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usbhs_priv, ptr %6, i32 0, i32 7
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #12
  tail call fastcc void @usbhsf_dma_xfer_preparing(ptr noundef %2)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @usbhsf_dma_complete(ptr nocapture noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usbhs_pipe, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usbhs_priv, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.usbhs_pkt, ptr %0, i32 0, i32 6
  store ptr %1, ptr %9, align 4
  %10 = tail call fastcc i32 @usbhsf_pkt_handler(ptr noundef %4, i32 noundef 2)
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3
  %14 = load ptr, ptr %5, align 4
  %15 = getelementptr inbounds %struct.usbhs_priv, ptr %14, i32 0, i32 9
  %16 = load ptr, ptr %15, align 4
  %17 = ptrtoint ptr %4 to i32
  %18 = ptrtoint ptr %16 to i32
  %19 = sub i32 %17, %18
  %20 = sdiv exact i32 %19, 36
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.12, i32 noundef %20, i32 noundef %10) #11
  br label %21

21:                                               ; preds = %12, %2
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_pipe_config_change_bfre(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_xxxsts_clear(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_dcp_dir_for_host(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal zeroext i1 @usbhsf_dma_filter(ptr nocapture noundef writeonly %0, ptr noundef %1) #9 {
  %3 = load i32, ptr %1, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 14
  store ptr %1, ptr %6, align 4
  br label %7

7:                                                ; preds = %5, %2
  %8 = xor i1 %4, true
  ret i1 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

attributes #0 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind }

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
!9 = !{i64 2149956536}
!10 = !{i64 2416116}
!11 = !{i64 2416731}
!12 = !{i64 2149956184}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2153119958, i64 2153120456, i64 2153119995, i64 2153120051, i64 2153120085, i64 2153120109, i64 2153120150, i64 2153120171, i64 2153120199, i64 2153120233}
!15 = !{!"auto-init"}
