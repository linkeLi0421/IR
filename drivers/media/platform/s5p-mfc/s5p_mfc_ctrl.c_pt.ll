; ModuleID = '/llk/IR/drivers/media/platform/s5p-mfc/s5p_mfc_ctrl.c_pt.bc'
source_filename = "../drivers/media/platform/s5p-mfc/s5p_mfc_ctrl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.s5p_mfc_dev = type { %struct.v4l2_device, ptr, ptr, ptr, [2 x ptr], ptr, i32, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.s5p_mfc_pm, ptr, i32, %struct.spinlock, %struct.spinlock, %struct.mutex, i32, i32, i32, %struct.wait_queue_head, %struct.s5p_mfc_priv_buf, i32, i32, ptr, ptr, [2 x i32], i32, [4 x ptr], i32, i32, %struct.atomic_t, %struct.timer_list, ptr, %struct.work_struct, i32, %struct.s5p_mfc_priv_buf, i32, ptr, ptr, ptr, i32, i8, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.s5p_mfc_pm = type { ptr, ptr, [4 x ptr], i32, i8, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.s5p_mfc_priv_buf = type { i32, ptr, i32, i32, i32 }
%struct.s5p_mfc_variant = type { i32, i32, i32, ptr, [2 x ptr], [4 x ptr], i32, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.s5p_mfc_hw_cmds = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.s5p_mfc_hw_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.s5p_mfc_ctx = type { ptr, %struct.v4l2_fh, i32, i32, i32, i32, %struct.wait_queue_head, ptr, ptr, %struct.vb2_queue, %struct.vb2_queue, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf, i32, i32, [32 x %struct.s5p_mfc_buf], i32, [32 x %struct.s5p_mfc_buf], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_enc_params, i32, i32, i32, i32, i32, i32, %struct.list_head, i32, i32, %union.anon.103, ptr, [128 x ptr], %struct.v4l2_ctrl_handler, i32 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8] }
%struct.s5p_mfc_buf = type { ptr, %struct.list_head, %union.anon.100, i32 }
%union.anon.100 = type { %struct.anon.101 }
%struct.anon.101 = type { i32, i32 }
%struct.s5p_mfc_enc_params = type { i16, i16, i32, i32, i16, i32, i16, i32, i16, i32, i8, i8, i8, i32, i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, %struct.anon.102 }
%struct.anon.102 = type { %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_mpeg4_enc_params, %struct.s5p_mfc_vp8_enc_params, %struct.s5p_mfc_hevc_enc_params }
%struct.s5p_mfc_h264_enc_params = type { i32, i32, i8, i8, i32, i8, i8, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i16, i8, i8, i8, i8, i8, i32, i32, i16, i32, i8, i8, i8, [7 x i8], i8, i8, i8, i8, i8, i8, i8, i32, [4 x i32], i8, [8 x i32] }
%struct.s5p_mfc_mpeg4_enc_params = type { i32, i32, i16, i16, i8, i8, i8, i8, i8, i32, i32 }
%struct.s5p_mfc_vp8_enc_params = type { i8, i32, i32, i8, i8, i32, i32, i8, [3 x i8], i8, i8, i8, i8, i8 }
%struct.s5p_mfc_hevc_enc_params = type { i32, i32, i32, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, [7 x i8], [7 x i32], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%union.anon.103 = type { i32 }

@.str = private unnamed_addr constant [82 x i8] c"\013%s:%d: Attempting to allocate firmware when it seems that it is already loaded\0A\00", align 1
@__func__.s5p_mfc_alloc_firmware = private unnamed_addr constant [23 x i8] c"s5p_mfc_alloc_firmware\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"\013%s:%d: Allocating bitprocessor buffer failed\0A\00", align 1
@mfc_debug_level = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"\017%s:%d: enter\0A\00", align 1
@__func__.s5p_mfc_load_firmware = private unnamed_addr constant [22 x i8] c"s5p_mfc_load_firmware\00", align 1
@.str.3 = private unnamed_addr constant [88 x i8] c"\013%s:%d: Firmware is not present in the /lib/firmware directory nor compiled in kernel\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"\013%s:%d: MFC firmware is too big to be loaded\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"\017%s:%d: leave\0A\00", align 1
@__func__.s5p_mfc_reset = private unnamed_addr constant [14 x i8] c"s5p_mfc_reset\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.6 = private unnamed_addr constant [38 x i8] c"\013%s:%d: Timeout while resetting MFC\0A\00", align 1
@__func__.s5p_mfc_init_hw = private unnamed_addr constant [16 x i8] c"s5p_mfc_init_hw\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"\013%s:%d: Firmware memory is not allocated.\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"\017%s:%d: MFC reset..\0A\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"\013%s:%d: Failed to reset MFC - timeout\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"\017%s:%d: Done MFC reset..\0A\00", align 1
@.str.11 = private unnamed_addr constant [60 x i8] c"\017%s:%d: Will now wait for completion of firmware transfer\0A\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"\013%s:%d: Failed to load firmware\0A\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"\013%s:%d: Failed to send command to MFC - timeout\0A\00", align 1
@.str.14 = private unnamed_addr constant [60 x i8] c"\017%s:%d: Ok, now will wait for completion of hardware init\0A\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"\013%s:%d: Failed to init hardware\0A\00", align 1
@.str.16 = private unnamed_addr constant [54 x i8] c"\013%s:%d: Failed to init firmware - error: %d int: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [51 x i8] c"\017%s:%d: MFC F/W version : %02xyy, %02xmm, %02xdd\0A\00", align 1
@__func__.s5p_mfc_sleep = private unnamed_addr constant [14 x i8] c"s5p_mfc_sleep\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"\013%s:%d: Failed to sleep\0A\00", align 1
@.str.19 = private unnamed_addr constant [46 x i8] c"\013%s:%d: Failed to sleep - error: %d int: %d\0A\00", align 1
@__func__.s5p_mfc_wakeup = private unnamed_addr constant [15 x i8] c"s5p_mfc_wakeup\00", align 1
@.str.20 = private unnamed_addr constant [47 x i8] c"\013%s:%d: Failed to wakeup - error: %d int: %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [44 x i8] c"\013%s:%d: Failed allocating instance buffer\0A\00", align 1
@__func__.s5p_mfc_open_mfc_inst = private unnamed_addr constant [22 x i8] c"s5p_mfc_open_mfc_inst\00", align 1
@.str.22 = private unnamed_addr constant [46 x i8] c"\013%s:%d: Failed allocating temporary buffers\0A\00", align 1
@.str.23 = private unnamed_addr constant [47 x i8] c"\013%s:%d: Error getting instance from hardware\0A\00", align 1
@.str.24 = private unnamed_addr constant [34 x i8] c"\017%s:%d: Got instance number: %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"\013%s:%d: Err returning instance\0A\00", align 1
@__func__.s5p_mfc_close_mfc_inst = private unnamed_addr constant [23 x i8] c"s5p_mfc_close_mfc_inst\00", align 1
@.str.26 = private unnamed_addr constant [39 x i8] c"\013%s:%d: Timeout while resetting MFC.\0A\00", align 1
@__func__.s5p_mfc_bus_reset = private unnamed_addr constant [18 x i8] c"s5p_mfc_bus_reset\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"\017%s:%d: Base Address : %pad\0A\00", align 1
@__func__.s5p_mfc_init_memctrl = private unnamed_addr constant [21 x i8] c"s5p_mfc_init_memctrl\00", align 1
@.str.28 = private unnamed_addr constant [35 x i8] c"\017%s:%d: Bank1: %pad, Bank2: %pad\0A\00", align 1
@.str.29 = private unnamed_addr constant [32 x i8] c"\013%s:%d: Failed to reset MFCV8\0A\00", align 1
@__func__.s5p_mfc_v8_wait_wakeup = private unnamed_addr constant [23 x i8] c"s5p_mfc_v8_wait_wakeup\00", align 1
@.str.30 = private unnamed_addr constant [40 x i8] c"\017%s:%d: Write command to wakeup MFCV8\0A\00", align 1
@.str.31 = private unnamed_addr constant [52 x i8] c"\013%s:%d: Failed to send command to MFCV8 - timeout\0A\00", align 1
@.str.32 = private unnamed_addr constant [31 x i8] c"\013%s:%d: Failed to wakeup MFC\0A\00", align 1
@__func__.s5p_mfc_wait_wakeup = private unnamed_addr constant [20 x i8] c"s5p_mfc_wait_wakeup\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @s5p_mfc_alloc_firmware(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.s5p_mfc_variant, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 19, i32 3
  store i32 %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 19, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.s5p_mfc_alloc_firmware, i32 noundef 31) #5
  br label %19

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 19
  %15 = tail call i32 @s5p_mfc_alloc_priv_buf(ptr noundef %0, i32 noundef 0, ptr noundef %14) #6
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.s5p_mfc_alloc_firmware, i32 noundef 37) #5
  br label %19

19:                                               ; preds = %17, %13, %11
  %20 = phi i32 [ -12, %11 ], [ %15, %17 ], [ 0, %13 ]
  ret i32 %20
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_mfc_alloc_priv_buf(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @s5p_mfc_load_firmware(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store ptr null, ptr %2, align 4, !annotation !8
  %3 = load i32, ptr @mfc_debug_level, align 4
  %4 = icmp sgt i32 %3, 4
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.s5p_mfc_load_firmware, i32 noundef 52) #5
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 40
  %9 = load i8, ptr %8, align 4, !range !9
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %58

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 10
  %13 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %12, align 4
  %15 = getelementptr %struct.s5p_mfc_variant, ptr %14, i32 0, i32 4, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %13, align 4
  %20 = getelementptr inbounds %struct.platform_device, ptr %19, i32 0, i32 3
  %21 = call i32 @request_firmware(ptr noundef nonnull %2, ptr noundef nonnull %16, ptr noundef %20) #6
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %37, label %23

23:                                               ; preds = %18
  %24 = load ptr, ptr %12, align 4
  br label %25

25:                                               ; preds = %23, %11
  %26 = phi ptr [ %24, %23 ], [ %14, %11 ]
  %27 = getelementptr %struct.s5p_mfc_variant, ptr %26, i32 0, i32 4, i32 0
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load ptr, ptr %13, align 4
  %32 = getelementptr inbounds %struct.platform_device, ptr %31, i32 0, i32 3
  %33 = call i32 @request_firmware(ptr noundef nonnull %2, ptr noundef nonnull %28, ptr noundef %32) #6
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %30, %25
  %36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.s5p_mfc_load_firmware, i32 noundef 69) #5
  br label %58

37:                                               ; preds = %30, %18
  %38 = phi i32 [ 1, %18 ], [ 0, %30 ]
  %39 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 39
  store i32 %38, ptr %39, align 4
  %40 = load ptr, ptr %2, align 4
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 19, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = icmp ugt i32 %41, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5p_mfc_load_firmware, i32 noundef 73) #5
  %47 = load ptr, ptr %2, align 4
  call void @release_firmware(ptr noundef %47) #6
  br label %58

48:                                               ; preds = %37
  %49 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 19, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.firmware, ptr %40, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %50, ptr align 1 %52, i32 %41, i1 false)
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  store i8 1, ptr %8, align 4
  %53 = load ptr, ptr %2, align 4
  call void @release_firmware(ptr noundef %53) #6
  %54 = load i32, ptr @mfc_debug_level, align 4
  %55 = icmp sgt i32 %54, 4
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.s5p_mfc_load_firmware, i32 noundef 81) #5
  br label %58

58:                                               ; preds = %56, %48, %45, %35, %7
  %59 = phi i32 [ -22, %35 ], [ -12, %45 ], [ 0, %7 ], [ 0, %56 ], [ 0, %48 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @s5p_mfc_release_firmware(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 19
  tail call void @s5p_mfc_release_priv_buf(ptr noundef %0, ptr noundef %2) #6
  %3 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 40
  store i8 0, ptr %3, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_mfc_release_priv_buf(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @s5p_mfc_reset(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @mfc_debug_level, align 4
  %3 = icmp sgt i32 %2, 4
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.s5p_mfc_reset, i32 noundef 121) #5
  br label %6

6:                                                ; preds = %4, %1
  %7 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %8, align 4
  %10 = icmp ugt i32 %9, 95
  tail call void asm sideeffect "dsb st", "~{memory}"() #6
  tail call void @arm_heavy_mb() #6
  %11 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  br i1 %10, label %13, label %62

13:                                               ; preds = %6
  %14 = getelementptr i8, ptr %12, i32 4356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 0) #6, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  %15 = load ptr, ptr %11, align 4
  %16 = getelementptr i8, ptr %15, i32 4352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 0) #6, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  %17 = load ptr, ptr %11, align 4
  %18 = getelementptr i8, ptr %17, i32 61440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 0) #6, !srcloc !11
  br label %19

19:                                               ; preds = %19, %13
  %20 = phi i32 [ 0, %13 ], [ %25, %19 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !14
  tail call void @arm_heavy_mb() #6
  %21 = load ptr, ptr %11, align 4
  %22 = shl i32 %20, 2
  %23 = add nuw nsw i32 %22, 61440
  %24 = getelementptr i8, ptr %21, i32 %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 0) #6, !srcloc !11
  %25 = add nuw nsw i32 %20, 1
  %26 = icmp eq i32 %25, 1024
  br i1 %26, label %27, label %19

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 41
  %29 = load i8, ptr %28, align 1, !range !9
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %55, label %31

31:                                               ; preds = %27
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !15
  tail call void @arm_heavy_mb() #6
  %32 = load ptr, ptr %11, align 4
  %33 = getelementptr i8, ptr %32, i32 28944
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 1) #6, !srcloc !11
  %34 = load volatile i32, ptr @jiffies, align 64
  %35 = add i32 %34, 50
  br label %36

36:                                               ; preds = %40, %31
  %37 = load volatile i32, ptr @jiffies, align 64
  %38 = sub i32 %35, %37
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr %11, align 4
  %42 = getelementptr i8, ptr %41, i32 28944
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #6, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !17
  %44 = and i32 %43, 2
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %36, label %48

46:                                               ; preds = %36
  %47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.s5p_mfc_bus_reset, i32 noundef 106) #5
  br label %96

48:                                               ; preds = %40
  %49 = load i8, ptr %28, align 1
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr %7, align 4
  %53 = load i32, ptr %52, align 4
  %54 = icmp ugt i32 %53, 111
  br i1 %54, label %57, label %55

55:                                               ; preds = %51, %48, %27
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !18
  tail call void @arm_heavy_mb() #6
  %56 = load ptr, ptr %11, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 0) #6, !srcloc !11
  br label %57

57:                                               ; preds = %55, %51
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !19
  tail call void @arm_heavy_mb() #6
  %58 = load ptr, ptr %11, align 4
  %59 = getelementptr i8, ptr %58, i32 4208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 8191) #6, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !20
  tail call void @arm_heavy_mb() #6
  %60 = load ptr, ptr %11, align 4
  %61 = getelementptr i8, ptr %60, i32 4208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 0) #6, !srcloc !11
  br label %91

62:                                               ; preds = %6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 1014) #6, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !21
  tail call void @arm_heavy_mb() #6
  %63 = load ptr, ptr %11, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 994) #6, !srcloc !11
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %64(i32 noundef 214748000) #6
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %65(i32 noundef 214748000) #6
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %66(i32 noundef 214748000) #6
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %67(i32 noundef 214748000) #6
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %68(i32 noundef 214748000) #6
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %69(i32 noundef 214748000) #6
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %70(i32 noundef 214748000) #6
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %71(i32 noundef 214748000) #6
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %72(i32 noundef 214748000) #6
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %73(i32 noundef 214748000) #6
  %74 = load volatile i32, ptr @jiffies, align 64
  %75 = add i32 %74, 50
  br label %76

76:                                               ; preds = %82, %62
  %77 = load volatile i32, ptr @jiffies, align 64
  %78 = sub i32 %75, %77
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.s5p_mfc_reset, i32 noundef 157) #5
  br label %96

82:                                               ; preds = %76
  %83 = load ptr, ptr %11, align 4
  %84 = getelementptr i8, ptr %83, i32 1296
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %84) #6, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !22
  %86 = and i32 %85, 3
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %76

88:                                               ; preds = %82
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !23
  tail call void @arm_heavy_mb() #6
  %89 = load ptr, ptr %11, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 0) #6, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !24
  tail call void @arm_heavy_mb() #6
  %90 = load ptr, ptr %11, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 1022) #6, !srcloc !11
  br label %91

91:                                               ; preds = %88, %57
  %92 = load i32, ptr @mfc_debug_level, align 4
  %93 = icmp sgt i32 %92, 4
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.s5p_mfc_reset, i32 noundef 169) #5
  br label %96

96:                                               ; preds = %94, %91, %80, %46
  %97 = phi i32 [ -5, %80 ], [ -5, %46 ], [ 0, %94 ], [ 0, %91 ]
  ret i32 %97
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @s5p_mfc_init_hw(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @mfc_debug_level, align 4
  %3 = icmp sgt i32 %2, 4
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.s5p_mfc_init_hw, i32 noundef 210) #5
  br label %6

6:                                                ; preds = %4, %1
  %7 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 19, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.s5p_mfc_init_hw, i32 noundef 212) #5
  br label %158

12:                                               ; preds = %6
  %13 = load i32, ptr @mfc_debug_level, align 4
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.s5p_mfc_init_hw, i32 noundef 217) #5
  br label %17

17:                                               ; preds = %15, %12
  %18 = tail call i32 @s5p_mfc_clock_on() #6
  %19 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 41
  store i8 0, ptr %19, align 1
  %20 = tail call i32 @s5p_mfc_reset(ptr noundef %0)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.s5p_mfc_init_hw, i32 noundef 222) #5
  br label %158

24:                                               ; preds = %17
  %25 = load i32, ptr @mfc_debug_level, align 4
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.s5p_mfc_init_hw, i32 noundef 225) #5
  br label %29

29:                                               ; preds = %27, %24
  %30 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 10
  %31 = load ptr, ptr %30, align 4
  %32 = load i32, ptr %31, align 4
  %33 = icmp ugt i32 %32, 95
  tail call void asm sideeffect "dsb st", "~{memory}"() #6
  tail call void @arm_heavy_mb() #6
  %34 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 24
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 5
  %37 = load ptr, ptr %36, align 4
  br i1 %33, label %38, label %44

38:                                               ; preds = %29
  %39 = getelementptr i8, ptr %37, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %35) #6, !srcloc !11
  %40 = load i32, ptr @mfc_debug_level, align 4
  %41 = icmp sgt i32 %40, 1
  br i1 %41, label %42, label %54

42:                                               ; preds = %38
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.s5p_mfc_init_memctrl, i32 noundef 179, ptr noundef %34) #5
  br label %54

44:                                               ; preds = %29
  %45 = getelementptr i8, ptr %37, i32 1288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %35) #6, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !25
  tail call void @arm_heavy_mb() #6
  %46 = getelementptr %struct.s5p_mfc_dev, ptr %0, i32 0, i32 24, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = load ptr, ptr %36, align 4
  %49 = getelementptr i8, ptr %48, i32 1292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %47) #6, !srcloc !11
  %50 = load i32, ptr @mfc_debug_level, align 4
  %51 = icmp sgt i32 %50, 1
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.s5p_mfc_init_memctrl, i32 noundef 187, ptr noundef %34, ptr noundef %46) #5
  br label %54

54:                                               ; preds = %52, %44, %42, %38
  %55 = load ptr, ptr %30, align 4
  %56 = load i32, ptr %55, align 4
  %57 = icmp ugt i32 %56, 95
  br i1 %57, label %67, label %58

58:                                               ; preds = %54
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !26
  tail call void @arm_heavy_mb() #6
  %59 = load ptr, ptr %36, align 4
  %60 = getelementptr i8, ptr %59, i32 8256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 -1) #6, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !27
  tail call void @arm_heavy_mb() #6
  %61 = load ptr, ptr %36, align 4
  %62 = getelementptr i8, ptr %61, i32 8320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 -1) #6, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !28
  tail call void @arm_heavy_mb() #6
  %63 = load ptr, ptr %36, align 4
  %64 = getelementptr i8, ptr %63, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 0) #6, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !29
  tail call void @arm_heavy_mb() #6
  %65 = load ptr, ptr %36, align 4
  %66 = getelementptr i8, ptr %65, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 0) #6, !srcloc !11
  br label %67

67:                                               ; preds = %58, %54
  tail call void @s5p_mfc_clean_dev_int_flags(ptr noundef %0) #6
  %68 = load ptr, ptr %30, align 4
  %69 = load i32, ptr %68, align 4
  %70 = icmp ugt i32 %69, 95
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  store i8 1, ptr %19, align 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !30
  tail call void @arm_heavy_mb() #6
  %72 = load ptr, ptr %36, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 1) #6, !srcloc !11
  br label %75

73:                                               ; preds = %67
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  %74 = load ptr, ptr %36, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 1023) #6, !srcloc !11
  br label %75

75:                                               ; preds = %73, %71
  %76 = load ptr, ptr %30, align 4
  %77 = load i32, ptr %76, align 4
  %78 = icmp ugt i32 %77, 159
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !32
  tail call void @arm_heavy_mb() #6
  %80 = load ptr, ptr %36, align 4
  %81 = getelementptr i8, ptr %80, i32 28960
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 0) #6, !srcloc !11
  br label %82

82:                                               ; preds = %79, %75
  %83 = load i32, ptr @mfc_debug_level, align 4
  %84 = icmp sgt i32 %83, 1
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.s5p_mfc_init_hw, i32 noundef 242) #5
  br label %87

87:                                               ; preds = %85, %82
  %88 = tail call i32 @s5p_mfc_wait_for_done_dev(ptr noundef %0, i32 noundef 12) #6
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %87
  %91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.s5p_mfc_init_hw, i32 noundef 244) #5
  %92 = tail call i32 @s5p_mfc_reset(ptr noundef %0)
  tail call void @s5p_mfc_clock_off() #6
  br label %158

93:                                               ; preds = %87
  tail call void @s5p_mfc_clean_dev_int_flags(ptr noundef %0) #6
  %94 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 37
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %104, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.s5p_mfc_hw_cmds, ptr %95, i32 0, i32 1
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %97
  %102 = tail call i32 %99(ptr noundef %0) #6
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %101, %97, %93
  %105 = phi i32 [ %102, %101 ], [ -19, %97 ], [ -19, %93 ]
  %106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.s5p_mfc_init_hw, i32 noundef 253) #5
  %107 = tail call i32 @s5p_mfc_reset(ptr noundef %0)
  tail call void @s5p_mfc_clock_off() #6
  br label %158

108:                                              ; preds = %101
  %109 = load i32, ptr @mfc_debug_level, align 4
  %110 = icmp sgt i32 %109, 1
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.s5p_mfc_init_hw, i32 noundef 258) #5
  br label %113

113:                                              ; preds = %111, %108
  %114 = tail call i32 @s5p_mfc_wait_for_done_dev(ptr noundef %0, i32 noundef 1) #6
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %113
  %117 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.s5p_mfc_init_hw, i32 noundef 260) #5
  %118 = tail call i32 @s5p_mfc_reset(ptr noundef %0)
  tail call void @s5p_mfc_clock_off() #6
  br label %158

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 15
  store i32 0, ptr %120, align 4
  %121 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 17
  %122 = load i32, ptr %121, align 4
  %123 = icmp eq i32 %122, 0
  %124 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 16
  %125 = load i32, ptr %124, align 4
  %126 = icmp eq i32 %125, 1
  %127 = select i1 %123, i1 %126, i1 false
  br i1 %127, label %131, label %128

128:                                              ; preds = %119
  %129 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.s5p_mfc_init_hw, i32 noundef 270, i32 noundef %122, i32 noundef %125) #5
  %130 = tail call i32 @s5p_mfc_reset(ptr noundef %0)
  tail call void @s5p_mfc_clock_off() #6
  br label %158

131:                                              ; preds = %119
  %132 = load ptr, ptr %30, align 4
  %133 = load i32, ptr %132, align 4
  %134 = icmp ugt i32 %133, 95
  %135 = load ptr, ptr %36, align 4
  br i1 %134, label %136, label %139

136:                                              ; preds = %131
  %137 = getelementptr i8, ptr %135, i32 61440
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %137) #6, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !33
  br label %142

139:                                              ; preds = %131
  %140 = getelementptr i8, ptr %135, i32 88
  %141 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %140) #6, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !34
  br label %142

142:                                              ; preds = %139, %136
  %143 = phi i32 [ %138, %136 ], [ %141, %139 ]
  %144 = load i32, ptr @mfc_debug_level, align 4
  %145 = icmp sgt i32 %144, 1
  br i1 %145, label %146, label %153

146:                                              ; preds = %142
  %147 = lshr i32 %143, 16
  %148 = and i32 %147, 255
  %149 = lshr i32 %143, 8
  %150 = and i32 %149, 255
  %151 = and i32 %143, 255
  %152 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.s5p_mfc_init_hw, i32 noundef 281, i32 noundef %148, i32 noundef %150, i32 noundef %151) #5
  br label %153

153:                                              ; preds = %146, %142
  tail call void @s5p_mfc_clock_off() #6
  %154 = load i32, ptr @mfc_debug_level, align 4
  %155 = icmp sgt i32 %154, 4
  br i1 %155, label %156, label %158

156:                                              ; preds = %153
  %157 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.s5p_mfc_init_hw, i32 noundef 283) #5
  br label %158

158:                                              ; preds = %156, %153, %128, %116, %104, %90, %22, %10
  %159 = phi i32 [ %20, %22 ], [ -5, %90 ], [ %105, %104 ], [ -5, %116 ], [ -5, %128 ], [ -22, %10 ], [ 0, %156 ], [ 0, %153 ]
  ret i32 %159
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_mfc_clock_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_mfc_clean_dev_int_flags(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_mfc_wait_for_done_dev(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_mfc_clock_off() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @s5p_mfc_deinit_hw(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @s5p_mfc_clock_on() #6
  %3 = tail call i32 @s5p_mfc_reset(ptr noundef %0)
  %4 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 36
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %5, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void %9(ptr noundef %0) #6
  br label %12

12:                                               ; preds = %11, %7, %1
  tail call void @s5p_mfc_clock_off() #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @s5p_mfc_sleep(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @mfc_debug_level, align 4
  %3 = icmp sgt i32 %2, 4
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.s5p_mfc_sleep, i32 noundef 303) #5
  br label %6

6:                                                ; preds = %4, %1
  %7 = tail call i32 @s5p_mfc_clock_on() #6
  tail call void @s5p_mfc_clean_dev_int_flags(ptr noundef %0) #6
  %8 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 37
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.s5p_mfc_hw_cmds, ptr %9, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = tail call i32 %13(ptr noundef %0) #6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15, %11, %6
  %19 = phi i32 [ %16, %15 ], [ -19, %11 ], [ -19, %6 ]
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.s5p_mfc_sleep, i32 noundef 308) #5
  br label %42

21:                                               ; preds = %15
  %22 = tail call i32 @s5p_mfc_wait_for_done_dev(ptr noundef %0, i32 noundef 7) #6
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.s5p_mfc_sleep, i32 noundef 312) #5
  br label %42

26:                                               ; preds = %21
  tail call void @s5p_mfc_clock_off() #6
  %27 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 15
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 17
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  %31 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 16
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 7
  %34 = select i1 %30, i1 %33, i1 false
  br i1 %34, label %37, label %35

35:                                               ; preds = %26
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.s5p_mfc_sleep, i32 noundef 321, i32 noundef %29, i32 noundef %32) #5
  br label %42

37:                                               ; preds = %26
  %38 = load i32, ptr @mfc_debug_level, align 4
  %39 = icmp sgt i32 %38, 4
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.s5p_mfc_sleep, i32 noundef 324) #5
  br label %42

42:                                               ; preds = %40, %37, %35, %24, %18
  %43 = phi i32 [ %19, %18 ], [ -5, %24 ], [ -5, %35 ], [ 0, %40 ], [ 0, %37 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @s5p_mfc_wakeup(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @mfc_debug_level, align 4
  %3 = icmp sgt i32 %2, 4
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.s5p_mfc_wakeup, i32 noundef 384) #5
  %6 = load i32, ptr @mfc_debug_level, align 4
  br label %7

7:                                                ; preds = %4, %1
  %8 = phi i32 [ %2, %1 ], [ %6, %4 ]
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.s5p_mfc_wakeup, i32 noundef 386) #5
  br label %12

12:                                               ; preds = %10, %7
  %13 = tail call i32 @s5p_mfc_clock_on() #6
  %14 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 41
  store i8 0, ptr %14, align 1
  %15 = tail call i32 @s5p_mfc_reset(ptr noundef %0)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.s5p_mfc_wakeup, i32 noundef 391) #5
  tail call void @s5p_mfc_clock_off() #6
  br label %141

19:                                               ; preds = %12
  %20 = load i32, ptr @mfc_debug_level, align 4
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.s5p_mfc_wakeup, i32 noundef 395) #5
  br label %24

24:                                               ; preds = %22, %19
  %25 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 10
  %26 = load ptr, ptr %25, align 4
  %27 = load i32, ptr %26, align 4
  %28 = icmp ugt i32 %27, 95
  tail call void asm sideeffect "dsb st", "~{memory}"() #6
  tail call void @arm_heavy_mb() #6
  %29 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 24
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 5
  %32 = load ptr, ptr %31, align 4
  br i1 %28, label %33, label %39

33:                                               ; preds = %24
  %34 = getelementptr i8, ptr %32, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %30) #6, !srcloc !11
  %35 = load i32, ptr @mfc_debug_level, align 4
  %36 = icmp sgt i32 %35, 1
  br i1 %36, label %37, label %49

37:                                               ; preds = %33
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.s5p_mfc_init_memctrl, i32 noundef 179, ptr noundef %29) #5
  br label %49

39:                                               ; preds = %24
  %40 = getelementptr i8, ptr %32, i32 1288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %30) #6, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !25
  tail call void @arm_heavy_mb() #6
  %41 = getelementptr %struct.s5p_mfc_dev, ptr %0, i32 0, i32 24, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = load ptr, ptr %31, align 4
  %44 = getelementptr i8, ptr %43, i32 1292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %42) #6, !srcloc !11
  %45 = load i32, ptr @mfc_debug_level, align 4
  %46 = icmp sgt i32 %45, 1
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.s5p_mfc_init_memctrl, i32 noundef 187, ptr noundef %29, ptr noundef %41) #5
  br label %49

49:                                               ; preds = %47, %39, %37, %33
  %50 = load ptr, ptr %25, align 4
  %51 = load i32, ptr %50, align 4
  %52 = icmp ugt i32 %51, 95
  br i1 %52, label %62, label %53

53:                                               ; preds = %49
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !26
  tail call void @arm_heavy_mb() #6
  %54 = load ptr, ptr %31, align 4
  %55 = getelementptr i8, ptr %54, i32 8256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 -1) #6, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !27
  tail call void @arm_heavy_mb() #6
  %56 = load ptr, ptr %31, align 4
  %57 = getelementptr i8, ptr %56, i32 8320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 -1) #6, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !28
  tail call void @arm_heavy_mb() #6
  %58 = load ptr, ptr %31, align 4
  %59 = getelementptr i8, ptr %58, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 0) #6, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !29
  tail call void @arm_heavy_mb() #6
  %60 = load ptr, ptr %31, align 4
  %61 = getelementptr i8, ptr %60, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 0) #6, !srcloc !11
  br label %62

62:                                               ; preds = %53, %49
  tail call void @s5p_mfc_clean_dev_int_flags(ptr noundef %0) #6
  %63 = load ptr, ptr %25, align 4
  %64 = load i32, ptr %63, align 4
  %65 = icmp ugt i32 %64, 127
  br i1 %65, label %66, label %96

66:                                               ; preds = %62
  store i8 1, ptr %14, align 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !35
  tail call void @arm_heavy_mb() #6
  %67 = load ptr, ptr %31, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 1) #6, !srcloc !11
  %68 = tail call i32 @s5p_mfc_wait_for_done_dev(ptr noundef %0, i32 noundef 12) #6
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %66
  %71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.s5p_mfc_v8_wait_wakeup, i32 noundef 337) #5
  br label %123

72:                                               ; preds = %66
  %73 = load i32, ptr @mfc_debug_level, align 4
  %74 = icmp sgt i32 %73, 1
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.s5p_mfc_v8_wait_wakeup, i32 noundef 340) #5
  br label %77

77:                                               ; preds = %75, %72
  %78 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 37
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %88, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.s5p_mfc_hw_cmds, ptr %79, i32 0, i32 3
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %81
  %86 = tail call i32 %83(ptr noundef %0) #6
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %85, %81, %77
  %89 = phi i32 [ %86, %85 ], [ -19, %81 ], [ -19, %77 ]
  %90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.s5p_mfc_v8_wait_wakeup, i32 noundef 343) #5
  br label %123

91:                                               ; preds = %85
  %92 = tail call i32 @s5p_mfc_wait_for_done_dev(ptr noundef %0, i32 noundef 8) #6
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %125, label %94

94:                                               ; preds = %91
  %95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.s5p_mfc_v8_wait_wakeup, i32 noundef 348) #5
  br label %123

96:                                               ; preds = %62
  %97 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 37
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %107, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.s5p_mfc_hw_cmds, ptr %98, i32 0, i32 3
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %100
  %105 = tail call i32 %102(ptr noundef %0) #6
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %104, %100, %96
  %108 = phi i32 [ %105, %104 ], [ -19, %100 ], [ -19, %96 ]
  %109 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.s5p_mfc_wait_wakeup, i32 noundef 361) #5
  br label %123

110:                                              ; preds = %104
  %111 = load ptr, ptr %25, align 4
  %112 = load i32, ptr %111, align 4
  %113 = icmp ugt i32 %112, 95
  br i1 %113, label %114, label %116

114:                                              ; preds = %110
  store i8 1, ptr %14, align 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !36
  tail call void @arm_heavy_mb() #6
  %115 = load ptr, ptr %31, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 1) #6, !srcloc !11
  br label %118

116:                                              ; preds = %110
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !37
  tail call void @arm_heavy_mb() #6
  %117 = load ptr, ptr %31, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 1023) #6, !srcloc !11
  br label %118

118:                                              ; preds = %116, %114
  %119 = tail call i32 @s5p_mfc_wait_for_done_dev(ptr noundef %0, i32 noundef 8) #6
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %118
  %122 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.s5p_mfc_wait_wakeup, i32 noundef 374) #5
  br label %123

123:                                              ; preds = %121, %107, %94, %88, %70
  %124 = phi i32 [ -5, %121 ], [ %108, %107 ], [ -5, %94 ], [ %89, %88 ], [ -5, %70 ]
  tail call void @s5p_mfc_clock_off() #6
  br label %141

125:                                              ; preds = %118, %91
  tail call void @s5p_mfc_clock_off() #6
  %126 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 15
  store i32 0, ptr %126, align 4
  %127 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 17
  %128 = load i32, ptr %127, align 4
  %129 = icmp eq i32 %128, 0
  %130 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 16
  %131 = load i32, ptr %130, align 4
  %132 = icmp eq i32 %131, 8
  %133 = select i1 %129, i1 %132, i1 false
  br i1 %133, label %136, label %134

134:                                              ; preds = %125
  %135 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.s5p_mfc_wakeup, i32 noundef 416, i32 noundef %128, i32 noundef %131) #5
  br label %141

136:                                              ; preds = %125
  %137 = load i32, ptr @mfc_debug_level, align 4
  %138 = icmp sgt i32 %137, 4
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  %140 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.s5p_mfc_wakeup, i32 noundef 419) #5
  br label %141

141:                                              ; preds = %139, %136, %134, %123, %17
  %142 = phi i32 [ %15, %17 ], [ -5, %134 ], [ 0, %139 ], [ 0, %136 ], [ %124, %123 ]
  ret i32 %142
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @s5p_mfc_open_mfc_inst(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 36
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %4, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = tail call i32 %8(ptr noundef %1) #6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10, %6, %2
  %14 = phi i32 [ %11, %10 ], [ -19, %6 ], [ -19, %2 ]
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.s5p_mfc_open_mfc_inst, i32 noundef 429) #5
  br label %71

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %1, i32 0, i32 15
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %32

20:                                               ; preds = %16
  %21 = load ptr, ptr %3, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %21, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = tail call i32 %24(ptr noundef %1) #6
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26, %23, %20
  %30 = phi i32 [ %27, %26 ], [ -19, %23 ], [ -19, %20 ]
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.s5p_mfc_open_mfc_inst, i32 noundef 437) #5
  br label %62

32:                                               ; preds = %26, %16
  tail call void @set_work_bit_irqsave(ptr noundef %1) #6
  %33 = load ptr, ptr %3, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %33, i32 0, i32 13
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  tail call void %37(ptr noundef %0) #6
  br label %40

40:                                               ; preds = %39, %35, %32
  %41 = tail call i32 @s5p_mfc_wait_for_done_ctx(ptr noundef %1, i32 noundef 2, i32 noundef 0) #6
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.s5p_mfc_open_mfc_inst, i32 noundef 447) #5
  %45 = load i32, ptr %17, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %54, label %62

47:                                               ; preds = %40
  %48 = load i32, ptr @mfc_debug_level, align 4
  %49 = icmp sgt i32 %48, 1
  br i1 %49, label %50, label %71

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %1, i32 0, i32 17
  %52 = load i32, ptr %51, align 4
  %53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.s5p_mfc_open_mfc_inst, i32 noundef 452, i32 noundef %52) #5
  br label %71

54:                                               ; preds = %43
  %55 = load ptr, ptr %3, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %71, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %55, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  tail call void %59(ptr noundef %1) #6
  br label %62

62:                                               ; preds = %61, %57, %43, %29
  %63 = phi i32 [ -5, %43 ], [ -5, %57 ], [ -5, %61 ], [ %30, %29 ]
  %64 = load ptr, ptr %3, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %64, i32 0, i32 5
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  tail call void %68(ptr noundef %1) #6
  br label %71

71:                                               ; preds = %70, %66, %62, %54, %50, %47, %13
  %72 = phi i32 [ 0, %50 ], [ 0, %47 ], [ %14, %13 ], [ %63, %70 ], [ %63, %66 ], [ %63, %62 ], [ -5, %54 ]
  ret i32 %72
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_work_bit_irqsave(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_mfc_wait_for_done_ctx(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @s5p_mfc_close_mfc_inst(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %1, i32 0, i32 16
  store i32 108, ptr %3, align 4
  tail call void @set_work_bit_irqsave(ptr noundef %1) #6
  %4 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 36
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %5, i32 0, i32 13
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void %9(ptr noundef %0) #6
  br label %12

12:                                               ; preds = %11, %7, %2
  %13 = tail call i32 @s5p_mfc_wait_for_done_ctx(ptr noundef %1, i32 noundef 6, i32 noundef 0) #6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.s5p_mfc_close_mfc_inst, i32 noundef 472) #5
  br label %17

17:                                               ; preds = %15, %12
  %18 = load ptr, ptr %4, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %33, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %18, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  tail call void %22(ptr noundef %1) #6
  %25 = load ptr, ptr %4, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %24, %20
  %28 = phi ptr [ %25, %24 ], [ %18, %20 ]
  %29 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %28, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  tail call void %30(ptr noundef %1) #6
  br label %33

33:                                               ; preds = %32, %27, %24, %17
  %34 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %1, i32 0, i32 15
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load ptr, ptr %4, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %38, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  tail call void %42(ptr noundef %1) #6
  br label %45

45:                                               ; preds = %44, %40, %37, %33
  %46 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %1, i32 0, i32 17
  store i32 -1, ptr %46, align 4
  store i32 0, ptr %3, align 4
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold nounwind }
attributes #6 = { nounwind }

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
!9 = !{i8 0, i8 2}
!10 = !{i64 2155014998}
!11 = !{i64 5920109}
!12 = !{i64 2155018486}
!13 = !{i64 2155018920}
!14 = !{i64 2155019375}
!15 = !{i64 2155015778}
!16 = !{i64 5920527}
!17 = !{i64 2155017233}
!18 = !{i64 2155019863}
!19 = !{i64 2155020307}
!20 = !{i64 2155020751}
!21 = !{i64 2155021643}
!22 = !{i64 2155024396}
!23 = !{i64 2155024680}
!24 = !{i64 2155025126}
!25 = !{i64 2155027932}
!26 = !{i64 2155029364}
!27 = !{i64 2155029834}
!28 = !{i64 2155030286}
!29 = !{i64 2155030720}
!30 = !{i64 2155033788}
!31 = !{i64 2155034234}
!32 = !{i64 2155034724}
!33 = !{i64 2155039077}
!34 = !{i64 2155039495}
!35 = !{i64 2155044111}
!36 = !{i64 2155047641}
!37 = !{i64 2155048087}
