; ModuleID = '/llk/IR/drivers/media/platform/sti/delta/delta-ipc.c_pt.bc'
source_filename = "../drivers/media/platform/sti/delta/delta-ipc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rpmsg_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type {}
%struct.rpmsg_device_id = type { [32 x i8], i32 }
%struct.delta_ipc_open_msg = type { %struct.delta_ipc_header_msg, i32, i32, [32 x i8], i32, i32 }
%struct.delta_ipc_header_msg = type { i32, ptr, i32, i32 }
%struct.delta_ctx = type { i32, %struct.v4l2_fh, ptr, ptr, %struct.delta_ipc_ctx, i32, i32, i32, i32, %struct.delta_streaminfo, %struct.delta_frameinfo, i32, [21 x ptr], i32, i32, i32, i32, i32, i32, %struct.list_head, [100 x i8], %struct.work_struct, %struct.mutex, i8, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.delta_ipc_ctx = type { i32, i32, %struct.completion, %struct.delta_buf, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.delta_buf = type { i32, ptr, i32, ptr, i32 }
%struct.delta_streaminfo = type { i32, i32, i32, i32, i32, %struct.v4l2_rect, %struct.v4l2_fract, i32, [32 x i8], [32 x i8], [32 x i8], i32, i32, i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.delta_frameinfo = type { i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_rect, %struct.v4l2_fract, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delta_dev = type { %struct.v4l2_device, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, [10 x ptr], i32, [10 x i32], i32, [10 x i32], i32, i8, ptr, %struct.rpmsg_driver, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.delta_ipc_param = type { i32, ptr }
%struct.rpmsg_device = type { %struct.device, %struct.rpmsg_device_id, ptr, i32, i32, ptr, i8, i8, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.delta_ipc_set_stream_msg = type { %struct.delta_ipc_header_msg, i32, i32 }
%struct.delta_ipc_decode_msg = type { %struct.delta_ipc_header_msg, i32, i32, i32, i32 }
%struct.delta_ipc_close_msg = type { %struct.delta_ipc_header_msg }
%struct.delta_ipc_cb_msg = type { %struct.delta_ipc_header_msg, i32 }

@.str = private unnamed_addr constant [52 x i8] c"%s   ipc: failed to open, rpmsg is not initialized\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"%s   ipc: failed to open, no name given\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"%s  ipc: failed to open, empty parameter\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"%s   ipc: failed to open, no size given for ipc buffer\0A\00", align 1
@.str.4 = private unnamed_addr constant [84 x i8] c"%s   ipc: failed to open, too large ipc parameter (%d bytes while max %d expected)\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"ipc data buffer\00", align 1
@.str.6 = private unnamed_addr constant [97 x i8] c"%s   ipc: failed to open, rpmsg_send failed (%d) for DELTA_IPC_OPEN (name=%s, size=%d, data=%p)\0A\00", align 1
@.str.7 = private unnamed_addr constant [99 x i8] c"%s   ipc: failed to open, timeout waiting for DELTA_IPC_OPEN callback (name=%s, size=%d, data=%p)\0A\00", align 1
@.str.8 = private unnamed_addr constant [100 x i8] c"%s   ipc: failed to open, DELTA_IPC_OPEN completed but with error (%d) (name=%s, size=%d, data=%p)\0A\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"%s   ipc: failed to set stream, invalid ipc handle\0A\00", align 1
@.str.10 = private unnamed_addr constant [58 x i8] c"%s   ipc: failed to set stream, rpmsg is not initialized\0A\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"%s  ipc: failed to set stream, empty parameter\0A\00", align 1
@.str.12 = private unnamed_addr constant [89 x i8] c"%s   ipc: failed to set stream, too large ipc parameter(%d bytes while max %d expected)\0A\00", align 1
@.str.13 = private unnamed_addr constant [109 x i8] c"%s   ipc: failed to set stream, parameter is not in expected address range (size=%d, data=%p not in %p..%p)\0A\00", align 1
@.str.14 = private unnamed_addr constant [100 x i8] c"%s   ipc: failed to set stream, rpmsg_send failed (%d) for DELTA_IPC_SET_STREAM (size=%d, data=%p)\0A\00", align 1
@.str.15 = private unnamed_addr constant [102 x i8] c"%s   ipc: failed to set stream, timeout waiting for DELTA_IPC_SET_STREAM callback (size=%d, data=%p)\0A\00", align 1
@.str.16 = private unnamed_addr constant [103 x i8] c"%s   ipc: failed to set stream, DELTA_IPC_SET_STREAM completed but with error (%d) (size=%d, data=%p)\0A\00", align 1
@.str.17 = private unnamed_addr constant [48 x i8] c"%s   ipc: failed to decode, invalid ipc handle\0A\00", align 1
@.str.18 = private unnamed_addr constant [54 x i8] c"%s   ipc: failed to decode, rpmsg is not initialized\0A\00", align 1
@.str.19 = private unnamed_addr constant [44 x i8] c"%s  ipc: failed to decode, empty parameter\0A\00", align 1
@.str.20 = private unnamed_addr constant [41 x i8] c"%s  ipc: failed to decode, empty status\0A\00", align 1
@.str.21 = private unnamed_addr constant [114 x i8] c"%s   ipc: failed to decode, too large ipc parameter (%d bytes (param) + %d bytes (status) while max %d expected)\0A\00", align 1
@.str.22 = private unnamed_addr constant [105 x i8] c"%s   ipc: failed to decode, parameter is not in expected address range (size=%d, data=%p not in %p..%p)\0A\00", align 1
@.str.23 = private unnamed_addr constant [102 x i8] c"%s   ipc: failed to decode, status is not in expected address range (size=%d, data=%p not in %p..%p)\0A\00", align 1
@.str.24 = private unnamed_addr constant [92 x i8] c"%s   ipc: failed to decode, rpmsg_send failed (%d) for DELTA_IPC_DECODE (size=%d, data=%p)\0A\00", align 1
@.str.25 = private unnamed_addr constant [94 x i8] c"%s   ipc: failed to decode, timeout waiting for DELTA_IPC_DECODE callback (size=%d, data=%p)\0A\00", align 1
@.str.26 = private unnamed_addr constant [95 x i8] c"%s   ipc: failed to decode, DELTA_IPC_DECODE completed but with error (%d) (size=%d, data=%p)\0A\00", align 1
@.str.27 = private unnamed_addr constant [47 x i8] c"%s   ipc: failed to close, invalid ipc handle\0A\00", align 1
@.str.28 = private unnamed_addr constant [53 x i8] c"%s   ipc: failed to close, rpmsg is not initialized\0A\00", align 1
@.str.29 = private unnamed_addr constant [71 x i8] c"%s   ipc: failed to close, rpmsg_send failed (%d) for DELTA_IPC_CLOSE\0A\00", align 1
@.str.30 = private unnamed_addr constant [73 x i8] c"%s   ipc: failed to close, timeout waiting for DELTA_IPC_CLOSE callback\0A\00", align 1
@.str.31 = private unnamed_addr constant [74 x i8] c"%s   ipc: failed to close, DELTA_IPC_CLOSE completed but with error (%d)\0A\00", align 1
@delta_rpmsg_driver = internal unnamed_addr constant %struct.rpmsg_driver { %struct.device_driver { ptr @.str.33, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @delta_ipc_device_id_table, ptr @delta_ipc_probe, ptr @delta_ipc_remove, ptr @delta_ipc_cb }, align 4
@__this_module = external dso_local global %struct.module, align 64
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"st_delta\00", align 1
@delta_ipc_device_id_table = internal global [2 x %struct.rpmsg_device_id] [%struct.rpmsg_device_id { [32 x i8] c"rpmsg-delta\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.rpmsg_device_id zeroinitializer], align 4
@.str.34 = private unnamed_addr constant [15 x i8] c"rpdev is NULL\0A\00", align 1
@.str.35 = private unnamed_addr constant [47 x i8] c"unexpected empty message received from src=%d\0A\00", align 1
@.str.36 = private unnamed_addr constant [93 x i8] c"unexpected message length received from src=%d (received %d bytes while %zu bytes expected)\0A\00", align 1
@.str.37 = private unnamed_addr constant [81 x i8] c"unexpected message tag received from src=%d (received %x tag while %x expected)\0A\00", align 1
@.str.38 = private unnamed_addr constant [60 x i8] c"unexpected message with NULL host_hdl received from src=%d\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @delta_ipc_open(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, i32 noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = alloca %struct.delta_ipc_open_msg, align 4
  %8 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.delta_dev, ptr %9, i32 0, i32 18
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #7
  %13 = getelementptr inbounds i8, ptr %7, i32 24
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %13, i8 0, i32 40, i1 false), !annotation !8
  %14 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 4, i32 3
  %15 = icmp eq ptr %11, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.delta_dev, ptr %9, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str, ptr noundef %19) #8
  %20 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 18
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, 1
  store i32 %22, ptr %20, align 4
  br label %121

23:                                               ; preds = %6
  %24 = icmp eq ptr %1, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.delta_dev, ptr %9, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.1, ptr noundef %28) #8
  br label %121

29:                                               ; preds = %23
  %30 = icmp eq ptr %2, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.delta_ipc_param, ptr %2, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load i32, ptr %2, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35, %31, %29
  %39 = getelementptr inbounds %struct.delta_dev, ptr %9, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.2, ptr noundef %41) #8
  br label %121

42:                                               ; preds = %35
  %43 = icmp eq i32 %3, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.delta_dev, ptr %9, i32 0, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.3, ptr noundef %47) #8
  br label %121

48:                                               ; preds = %42
  %49 = icmp ugt i32 %36, %3
  br i1 %49, label %50, label %57

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.delta_dev, ptr %9, i32 0, i32 3
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 20
  %54 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 4, i32 4
  %55 = load ptr, ptr %54, align 4
  %56 = load i32, ptr %55, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.4, ptr noundef %53, i32 noundef %36, i32 noundef %56) #8
  br label %121

57:                                               ; preds = %48
  %58 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 4, i32 2
  store i32 0, ptr %58, align 4
  %59 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 4, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %59, ptr noundef nonnull @.str.32, ptr noundef nonnull @init_completion.__key) #7
  %60 = tail call i32 @hw_alloc(ptr noundef %0, i32 noundef %3, ptr noundef nonnull @.str.5, ptr noundef %14) #7
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %121

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 4, i32 4
  store ptr %14, ptr %63, align 4
  store i32 -559038737, ptr %7, align 4
  %64 = getelementptr inbounds %struct.delta_ipc_header_msg, ptr %7, i32 0, i32 1
  store ptr %12, ptr %64, align 4
  %65 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 4, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr inbounds %struct.delta_ipc_header_msg, ptr %7, i32 0, i32 2
  store i32 %66, ptr %67, align 4
  %68 = getelementptr inbounds %struct.delta_ipc_header_msg, ptr %7, i32 0, i32 3
  store i32 0, ptr %68, align 4
  %69 = getelementptr inbounds %struct.delta_ipc_open_msg, ptr %7, i32 0, i32 1
  store i32 %3, ptr %69, align 4
  %70 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 4, i32 3, i32 2
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr inbounds %struct.delta_ipc_open_msg, ptr %7, i32 0, i32 2
  store i32 %71, ptr %72, align 4
  %73 = getelementptr inbounds %struct.delta_ipc_open_msg, ptr %7, i32 0, i32 3
  %74 = call i32 @strscpy(ptr noundef %73, ptr noundef nonnull %1, i32 noundef 32) #7
  %75 = load i32, ptr %2, align 4
  %76 = getelementptr inbounds %struct.delta_ipc_open_msg, ptr %7, i32 0, i32 4
  store i32 %75, ptr %76, align 4
  %77 = load ptr, ptr %63, align 4
  %78 = getelementptr inbounds %struct.delta_buf, ptr %77, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = load ptr, ptr %32, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %79, ptr align 1 %80, i32 %75, i1 false)
  %81 = load ptr, ptr %63, align 4
  %82 = getelementptr inbounds %struct.delta_buf, ptr %81, i32 0, i32 2
  %83 = load i32, ptr %82, align 4
  %84 = getelementptr inbounds %struct.delta_ipc_open_msg, ptr %7, i32 0, i32 5
  store i32 %83, ptr %84, align 4
  %85 = getelementptr inbounds %struct.rpmsg_device, ptr %11, i32 0, i32 5
  %86 = load ptr, ptr %85, align 8
  %87 = call i32 @rpmsg_send(ptr noundef %86, ptr noundef nonnull %7, i32 noundef 64) #7
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %62
  %90 = getelementptr inbounds %struct.delta_dev, ptr %9, i32 0, i32 3
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 20
  %93 = load i32, ptr %2, align 4
  %94 = load ptr, ptr %32, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.6, ptr noundef %92, i32 noundef %87, ptr noundef nonnull %1, i32 noundef %93, ptr noundef %94) #8
  br label %115

95:                                               ; preds = %62
  %96 = call i32 @wait_for_completion_timeout(ptr noundef %58, i32 noundef 10) #7
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.delta_dev, ptr %9, i32 0, i32 3
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 20
  %102 = load i32, ptr %2, align 4
  %103 = load ptr, ptr %32, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %100, ptr noundef nonnull @.str.7, ptr noundef %101, ptr noundef nonnull %1, i32 noundef %102, ptr noundef %103) #8
  br label %115

104:                                              ; preds = %95
  %105 = load i32, ptr %12, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.delta_dev, ptr %9, i32 0, i32 3
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 20
  %111 = load i32, ptr %2, align 4
  %112 = load ptr, ptr %32, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %109, ptr noundef nonnull @.str.8, ptr noundef %110, i32 noundef %105, ptr noundef nonnull %1, i32 noundef %111, ptr noundef %112) #8
  br label %115

113:                                              ; preds = %104
  %114 = load ptr, ptr %63, align 4
  store ptr %114, ptr %4, align 4
  store ptr %12, ptr %5, align 4
  br label %121

115:                                              ; preds = %107, %98, %89
  %116 = phi i32 [ %87, %89 ], [ -5, %107 ], [ -110, %98 ]
  %117 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 18
  %118 = load i32, ptr %117, align 4
  %119 = add i32 %118, 1
  store i32 %119, ptr %117, align 4
  %120 = load ptr, ptr %63, align 4
  call void @hw_free(ptr noundef %0, ptr noundef %120) #7
  store ptr null, ptr %63, align 4
  br label %121

121:                                              ; preds = %115, %113, %57, %50, %44, %38, %25, %16
  %122 = phi i32 [ -22, %50 ], [ %116, %115 ], [ 0, %113 ], [ -22, %44 ], [ -22, %38 ], [ -22, %25 ], [ -22, %16 ], [ %60, %57 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #7
  ret i32 %122
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_alloc(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpmsg_send(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @delta_ipc_set_stream(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.delta_ipc_set_stream_msg, align 4
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.delta_dev, ptr %5, i32 0, i32 18
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #7
  %8 = icmp eq ptr %0, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.delta_dev, ptr %5, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.9, ptr noundef nonnull inttoptr (i32 416 to ptr)) #8
  br label %106

12:                                               ; preds = %2
  %13 = icmp eq ptr %7, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.delta_dev, ptr %5, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %0, i32 416
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.10, ptr noundef %17) #8
  br label %106

18:                                               ; preds = %12
  %19 = icmp eq ptr %1, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.delta_ipc_param, ptr %1, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i32, ptr %1, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24, %20, %18
  %28 = getelementptr inbounds %struct.delta_dev, ptr %5, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %0, i32 416
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.11, ptr noundef %30) #8
  br label %106

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.delta_ipc_ctx, ptr %0, i32 0, i32 4
  %33 = load ptr, ptr %32, align 4
  %34 = load i32, ptr %33, align 4
  %35 = icmp ugt i32 %25, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.delta_dev, ptr %5, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr i8, ptr %0, i32 416
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.12, ptr noundef %39, i32 noundef %25, i32 noundef %34) #8
  br label %106

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.delta_buf, ptr %33, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = icmp ule ptr %42, %22
  %44 = getelementptr i8, ptr %22, i32 %25
  %45 = getelementptr i8, ptr %42, i32 %34
  %46 = icmp ule ptr %44, %45
  %47 = select i1 %43, i1 %46, i1 false
  br i1 %47, label %53, label %48

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.delta_dev, ptr %5, i32 0, i32 3
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr i8, ptr %0, i32 416
  %52 = getelementptr i8, ptr %45, i32 -1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.13, ptr noundef %51, i32 noundef %25, ptr noundef nonnull %22, ptr noundef %42, ptr noundef %52) #8
  br label %106

53:                                               ; preds = %40
  store i32 -559038737, ptr %3, align 4
  %54 = getelementptr inbounds %struct.delta_ipc_header_msg, ptr %3, i32 0, i32 1
  store ptr %0, ptr %54, align 4
  %55 = getelementptr inbounds %struct.delta_ipc_ctx, ptr %0, i32 0, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.delta_ipc_header_msg, ptr %3, i32 0, i32 2
  store i32 %56, ptr %57, align 4
  %58 = getelementptr inbounds %struct.delta_ipc_header_msg, ptr %3, i32 0, i32 3
  store i32 1, ptr %58, align 4
  %59 = getelementptr inbounds %struct.delta_ipc_set_stream_msg, ptr %3, i32 0, i32 1
  store i32 %25, ptr %59, align 4
  %60 = getelementptr inbounds %struct.delta_buf, ptr %33, i32 0, i32 2
  %61 = load i32, ptr %60, align 4
  %62 = load ptr, ptr %41, align 4
  %63 = ptrtoint ptr %22 to i32
  %64 = ptrtoint ptr %62 to i32
  %65 = add i32 %61, %63
  %66 = sub i32 %65, %64
  %67 = getelementptr inbounds %struct.delta_ipc_set_stream_msg, ptr %3, i32 0, i32 2
  store i32 %66, ptr %67, align 4
  %68 = getelementptr inbounds %struct.rpmsg_device, ptr %7, i32 0, i32 5
  %69 = load ptr, ptr %68, align 8
  %70 = call i32 @rpmsg_send(ptr noundef %69, ptr noundef nonnull %3, i32 noundef 24) #7
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %81, label %72

72:                                               ; preds = %53
  %73 = getelementptr inbounds %struct.delta_dev, ptr %5, i32 0, i32 3
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr i8, ptr %0, i32 416
  %76 = load i32, ptr %1, align 4
  %77 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.14, ptr noundef %75, i32 noundef %70, i32 noundef %76, ptr noundef %77) #8
  %78 = getelementptr i8, ptr %0, i32 404
  %79 = load i32, ptr %78, align 4
  %80 = add i32 %79, 1
  store i32 %80, ptr %78, align 4
  br label %106

81:                                               ; preds = %53
  %82 = getelementptr inbounds %struct.delta_ipc_ctx, ptr %0, i32 0, i32 2
  %83 = call i32 @wait_for_completion_timeout(ptr noundef %82, i32 noundef 10) #7
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.delta_dev, ptr %5, i32 0, i32 3
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr i8, ptr %0, i32 416
  %89 = load i32, ptr %1, align 4
  %90 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %87, ptr noundef nonnull @.str.15, ptr noundef %88, i32 noundef %89, ptr noundef %90) #8
  %91 = getelementptr i8, ptr %0, i32 404
  %92 = load i32, ptr %91, align 4
  %93 = add i32 %92, 1
  store i32 %93, ptr %91, align 4
  br label %106

94:                                               ; preds = %81
  %95 = load i32, ptr %0, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %106, label %97

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.delta_dev, ptr %5, i32 0, i32 3
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr i8, ptr %0, i32 416
  %101 = load i32, ptr %1, align 4
  %102 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %99, ptr noundef nonnull @.str.16, ptr noundef %100, i32 noundef %95, i32 noundef %101, ptr noundef %102) #8
  %103 = getelementptr i8, ptr %0, i32 404
  %104 = load i32, ptr %103, align 4
  %105 = add i32 %104, 1
  store i32 %105, ptr %103, align 4
  br label %106

106:                                              ; preds = %97, %94, %85, %72, %48, %36, %27, %14, %9
  %107 = phi i32 [ -22, %36 ], [ %70, %72 ], [ -5, %97 ], [ -110, %85 ], [ -22, %48 ], [ -22, %27 ], [ -22, %14 ], [ -22, %9 ], [ 0, %94 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #7
  ret i32 %107
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @delta_ipc_decode(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.delta_ipc_decode_msg, align 4
  %5 = getelementptr i8, ptr %0, i32 -8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.delta_dev, ptr %6, i32 0, i32 18
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #7
  %9 = icmp eq ptr %0, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.delta_dev, ptr %6, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.17, ptr noundef nonnull inttoptr (i32 416 to ptr)) #8
  br label %139

13:                                               ; preds = %3
  %14 = icmp eq ptr %8, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.delta_dev, ptr %6, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %0, i32 416
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.18, ptr noundef %18) #8
  br label %139

19:                                               ; preds = %13
  %20 = icmp eq ptr %1, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.delta_ipc_param, ptr %1, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = load i32, ptr %1, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25, %21, %19
  %29 = getelementptr inbounds %struct.delta_dev, ptr %6, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %0, i32 416
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.19, ptr noundef %31) #8
  br label %139

32:                                               ; preds = %25
  %33 = icmp eq ptr %2, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.delta_ipc_param, ptr %2, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = load i32, ptr %2, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38, %34, %32
  %42 = getelementptr inbounds %struct.delta_dev, ptr %6, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr i8, ptr %0, i32 416
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.20, ptr noundef %44) #8
  br label %139

45:                                               ; preds = %38
  %46 = add i32 %39, %26
  %47 = getelementptr inbounds %struct.delta_ipc_ctx, ptr %0, i32 0, i32 4
  %48 = load ptr, ptr %47, align 4
  %49 = load i32, ptr %48, align 4
  %50 = icmp ugt i32 %46, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.delta_dev, ptr %6, i32 0, i32 3
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr i8, ptr %0, i32 416
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.21, ptr noundef %54, i32 noundef %26, i32 noundef %39, i32 noundef %49) #8
  br label %139

55:                                               ; preds = %45
  %56 = getelementptr inbounds %struct.delta_buf, ptr %48, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = icmp ule ptr %57, %23
  %59 = getelementptr i8, ptr %23, i32 %26
  %60 = getelementptr i8, ptr %57, i32 %49
  %61 = icmp ule ptr %59, %60
  %62 = select i1 %58, i1 %61, i1 false
  br i1 %62, label %68, label %63

63:                                               ; preds = %55
  %64 = getelementptr inbounds %struct.delta_dev, ptr %6, i32 0, i32 3
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr i8, ptr %0, i32 416
  %67 = getelementptr i8, ptr %60, i32 -1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.22, ptr noundef %66, i32 noundef %26, ptr noundef nonnull %23, ptr noundef %57, ptr noundef %67) #8
  br label %139

68:                                               ; preds = %55
  %69 = icmp ule ptr %57, %36
  %70 = getelementptr i8, ptr %36, i32 %39
  %71 = icmp ule ptr %70, %60
  %72 = select i1 %69, i1 %71, i1 false
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.delta_dev, ptr %6, i32 0, i32 3
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr i8, ptr %0, i32 416
  %77 = getelementptr i8, ptr %60, i32 -1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.23, ptr noundef %76, i32 noundef %39, ptr noundef nonnull %36, ptr noundef %57, ptr noundef %77) #8
  br label %139

78:                                               ; preds = %68
  store i32 -559038737, ptr %4, align 4
  %79 = getelementptr inbounds %struct.delta_ipc_header_msg, ptr %4, i32 0, i32 1
  store ptr %0, ptr %79, align 4
  %80 = getelementptr inbounds %struct.delta_ipc_ctx, ptr %0, i32 0, i32 1
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr inbounds %struct.delta_ipc_header_msg, ptr %4, i32 0, i32 2
  store i32 %81, ptr %82, align 4
  %83 = getelementptr inbounds %struct.delta_ipc_header_msg, ptr %4, i32 0, i32 3
  store i32 2, ptr %83, align 4
  %84 = getelementptr inbounds %struct.delta_ipc_decode_msg, ptr %4, i32 0, i32 1
  store i32 %26, ptr %84, align 4
  %85 = getelementptr inbounds %struct.delta_buf, ptr %48, i32 0, i32 2
  %86 = load i32, ptr %85, align 4
  %87 = load ptr, ptr %56, align 4
  %88 = ptrtoint ptr %23 to i32
  %89 = ptrtoint ptr %87 to i32
  %90 = add i32 %86, %88
  %91 = sub i32 %90, %89
  %92 = getelementptr inbounds %struct.delta_ipc_decode_msg, ptr %4, i32 0, i32 2
  store i32 %91, ptr %92, align 4
  %93 = getelementptr inbounds %struct.delta_ipc_decode_msg, ptr %4, i32 0, i32 3
  store i32 %39, ptr %93, align 4
  %94 = load i32, ptr %85, align 4
  %95 = load ptr, ptr %56, align 4
  %96 = ptrtoint ptr %36 to i32
  %97 = ptrtoint ptr %95 to i32
  %98 = add i32 %94, %96
  %99 = sub i32 %98, %97
  %100 = getelementptr inbounds %struct.delta_ipc_decode_msg, ptr %4, i32 0, i32 4
  store i32 %99, ptr %100, align 4
  %101 = getelementptr inbounds %struct.rpmsg_device, ptr %8, i32 0, i32 5
  %102 = load ptr, ptr %101, align 8
  %103 = call i32 @rpmsg_send(ptr noundef %102, ptr noundef nonnull %4, i32 noundef 32) #7
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %114, label %105

105:                                              ; preds = %78
  %106 = getelementptr inbounds %struct.delta_dev, ptr %6, i32 0, i32 3
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr i8, ptr %0, i32 416
  %109 = load i32, ptr %1, align 4
  %110 = load ptr, ptr %22, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %107, ptr noundef nonnull @.str.24, ptr noundef %108, i32 noundef %103, i32 noundef %109, ptr noundef %110) #8
  %111 = getelementptr i8, ptr %0, i32 404
  %112 = load i32, ptr %111, align 4
  %113 = add i32 %112, 1
  store i32 %113, ptr %111, align 4
  br label %139

114:                                              ; preds = %78
  %115 = getelementptr inbounds %struct.delta_ipc_ctx, ptr %0, i32 0, i32 2
  %116 = call i32 @wait_for_completion_timeout(ptr noundef %115, i32 noundef 10) #7
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.delta_dev, ptr %6, i32 0, i32 3
  %120 = load ptr, ptr %119, align 4
  %121 = getelementptr i8, ptr %0, i32 416
  %122 = load i32, ptr %1, align 4
  %123 = load ptr, ptr %22, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %120, ptr noundef nonnull @.str.25, ptr noundef %121, i32 noundef %122, ptr noundef %123) #8
  %124 = getelementptr i8, ptr %0, i32 404
  %125 = load i32, ptr %124, align 4
  %126 = add i32 %125, 1
  store i32 %126, ptr %124, align 4
  br label %139

127:                                              ; preds = %114
  %128 = load i32, ptr %0, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %139, label %130

130:                                              ; preds = %127
  %131 = getelementptr inbounds %struct.delta_dev, ptr %6, i32 0, i32 3
  %132 = load ptr, ptr %131, align 4
  %133 = getelementptr i8, ptr %0, i32 416
  %134 = load i32, ptr %1, align 4
  %135 = load ptr, ptr %22, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %132, ptr noundef nonnull @.str.26, ptr noundef %133, i32 noundef %128, i32 noundef %134, ptr noundef %135) #8
  %136 = getelementptr i8, ptr %0, i32 404
  %137 = load i32, ptr %136, align 4
  %138 = add i32 %137, 1
  store i32 %138, ptr %136, align 4
  br label %139

139:                                              ; preds = %130, %127, %118, %105, %73, %63, %51, %41, %28, %15, %10
  %140 = phi i32 [ -22, %51 ], [ %103, %105 ], [ -5, %130 ], [ -110, %118 ], [ -22, %73 ], [ -22, %63 ], [ -22, %41 ], [ -22, %28 ], [ -22, %15 ], [ -22, %10 ], [ 0, %127 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #7
  ret i32 %140
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @delta_ipc_close(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.delta_ipc_close_msg, align 4
  %3 = getelementptr i8, ptr %0, i32 -92
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.delta_dev, ptr %5, i32 0, i32 18
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7
  %8 = icmp eq ptr %0, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.delta_dev, ptr %5, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.27, ptr noundef nonnull inttoptr (i32 416 to ptr)) #8
  br label %61

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.delta_ipc_ctx, ptr %0, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @hw_free(ptr noundef %3, ptr noundef nonnull %14) #7
  store ptr null, ptr %13, align 4
  br label %17

17:                                               ; preds = %16, %12
  %18 = icmp eq ptr %7, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.delta_dev, ptr %5, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %0, i32 416
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.28, ptr noundef %22) #8
  br label %61

23:                                               ; preds = %17
  store i32 -559038737, ptr %2, align 4
  %24 = getelementptr inbounds %struct.delta_ipc_header_msg, ptr %2, i32 0, i32 1
  store ptr %0, ptr %24, align 4
  %25 = getelementptr inbounds %struct.delta_ipc_ctx, ptr %0, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.delta_ipc_header_msg, ptr %2, i32 0, i32 2
  store i32 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.delta_ipc_header_msg, ptr %2, i32 0, i32 3
  store i32 3, ptr %28, align 4
  %29 = getelementptr inbounds %struct.rpmsg_device, ptr %7, i32 0, i32 5
  %30 = load ptr, ptr %29, align 8
  %31 = call i32 @rpmsg_send(ptr noundef %30, ptr noundef nonnull %2, i32 noundef 16) #7
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.delta_dev, ptr %5, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr i8, ptr %0, i32 416
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.29, ptr noundef %36, i32 noundef %31) #8
  %37 = getelementptr i8, ptr %0, i32 404
  %38 = load i32, ptr %37, align 4
  %39 = add i32 %38, 1
  store i32 %39, ptr %37, align 4
  br label %61

40:                                               ; preds = %23
  %41 = getelementptr inbounds %struct.delta_ipc_ctx, ptr %0, i32 0, i32 2
  %42 = call i32 @wait_for_completion_timeout(ptr noundef %41, i32 noundef 10) #7
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.delta_dev, ptr %5, i32 0, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr i8, ptr %0, i32 416
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.30, ptr noundef %47) #8
  %48 = getelementptr i8, ptr %0, i32 404
  %49 = load i32, ptr %48, align 4
  %50 = add i32 %49, 1
  store i32 %50, ptr %48, align 4
  br label %61

51:                                               ; preds = %40
  %52 = load i32, ptr %0, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.delta_dev, ptr %5, i32 0, i32 3
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr i8, ptr %0, i32 416
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.31, ptr noundef %57, i32 noundef %52) #8
  %58 = getelementptr i8, ptr %0, i32 404
  %59 = load i32, ptr %58, align 4
  %60 = add i32 %59, 1
  store i32 %60, ptr %58, align 4
  br label %61

61:                                               ; preds = %54, %51, %44, %33, %19, %9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @delta_ipc_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.delta_dev, ptr %0, i32 0, i32 17
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(92) %2, ptr noundef nonnull align 4 dereferenceable(92) @delta_rpmsg_driver, i32 92, i1 false)
  %3 = tail call i32 @__register_rpmsg_driver(ptr noundef %2, ptr noundef nonnull @__this_module) #7
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_rpmsg_driver(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @delta_ipc_exit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.delta_dev, ptr %0, i32 0, i32 17
  tail call void @unregister_rpmsg_driver(ptr noundef %2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_rpmsg_driver(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @delta_ipc_probe(ptr noundef %0) #6 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 92
  store ptr %0, ptr %4, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @delta_ipc_remove(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 92
  store ptr null, ptr %4, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @delta_ipc_cb(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, ptr nocapture noundef readnone %3, i32 noundef %4) #0 {
  %6 = icmp eq ptr %0, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef null, ptr noundef nonnull @.str.34) #8
  br label %36

8:                                                ; preds = %5
  %9 = icmp ne ptr %1, null
  %10 = icmp ne i32 %2, 0
  %11 = and i1 %9, %10
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %0, ptr noundef nonnull @.str.35, i32 noundef %4) #8
  br label %36

13:                                               ; preds = %8
  %14 = icmp eq i32 %2, 20
  br i1 %14, label %16, label %15

15:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %0, ptr noundef nonnull @.str.36, i32 noundef %2, i32 noundef %4, i32 noundef 20) #8
  br label %36

16:                                               ; preds = %13
  %17 = load i32, ptr %1, align 4
  %18 = icmp eq i32 %17, -559038737
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %0, ptr noundef nonnull @.str.37, i32 noundef %4, i32 noundef %17, i32 noundef -559038737) #8
  br label %36

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.delta_ipc_header_msg, ptr %1, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %0, ptr noundef nonnull @.str.38, i32 noundef %4) #8
  br label %36

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.delta_ipc_ctx, ptr %22, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.delta_ipc_header_msg, ptr %1, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  store i32 %31, ptr %26, align 4
  br label %32

32:                                               ; preds = %29, %25
  %33 = getelementptr inbounds %struct.delta_ipc_cb_msg, ptr %1, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  store i32 %34, ptr %22, align 4
  %35 = getelementptr inbounds %struct.delta_ipc_ctx, ptr %22, i32 0, i32 2
  tail call void @complete(ptr noundef %35) #7
  br label %36

36:                                               ; preds = %32, %24, %19, %15, %12, %7
  %37 = phi i32 [ -22, %15 ], [ -22, %19 ], [ 0, %32 ], [ -22, %24 ], [ -22, %12 ], [ -22, %7 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
