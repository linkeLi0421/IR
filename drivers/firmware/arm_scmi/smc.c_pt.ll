; ModuleID = '/llk/IR/drivers/firmware/arm_scmi/smc.c_pt.bc'
source_filename = "../drivers/firmware/arm_scmi/smc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.scmi_transport_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scmi_desc = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.lock_class_key = type {}
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.scmi_smc = type { ptr, ptr, %struct.mutex, i32, i32, %struct.completion }
%struct.scmi_chan_info = type { ptr, ptr, ptr }

@scmi_smc_ops = internal constant %struct.scmi_transport_ops { ptr null, ptr @smc_chan_available, ptr @smc_chan_setup, ptr @smc_chan_free, ptr null, ptr @smc_send_message, ptr null, ptr @smc_fetch_response, ptr null, ptr null, ptr @smc_poll_done }, align 4
@scmi_smc_desc = dso_local local_unnamed_addr constant %struct.scmi_desc { ptr null, ptr null, ptr @scmi_smc_ops, i32 30, i32 20, i32 128 }, align 4
@.str = private unnamed_addr constant [6 x i8] c"shmem\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"arm,scmi-shmem\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"failed to get SCMI Tx shared memory\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"failed to ioremap SCMI Tx shared memory\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"arm,smc-id\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"a2p\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"failed to setup SCMI smc irq\0A\00", align 1
@smc_chan_setup.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"&scmi_info->shmem_lock\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @smc_chan_available(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #6, !annotation !8
  %6 = call i32 @__of_parse_phandle_with_args(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #6
  %7 = icmp ne i32 %6, 0
  %8 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #6
  %9 = icmp eq ptr %8, null
  %10 = select i1 %7, i1 true, i1 %9
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  call void @of_node_put(ptr noundef nonnull %8) #6
  br label %12

12:                                               ; preds = %11, %2
  %13 = xor i1 %10, true
  ret i1 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smc_chan_setup(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) #0 {
  %4 = alloca %struct.of_phandle_args, align 4
  %5 = alloca %struct.resource, align 4
  %6 = alloca i32, align 4
  %7 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %5, i8 0, i32 32, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store i32 0, ptr %6, align 4, !annotation !8
  br i1 %2, label %8, label %64

8:                                                ; preds = %3
  %9 = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 52, i32 noundef 3520) #6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %64, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 25
  %13 = load ptr, ptr %12, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #6, !annotation !8
  %14 = call i32 @__of_parse_phandle_with_args(ptr noundef %13, ptr noundef nonnull @.str, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4) #6
  %15 = icmp eq i32 %14, 0
  %16 = load ptr, ptr %4, align 4
  %17 = select i1 %15, ptr %16, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #6
  %18 = call i32 @of_device_is_compatible(ptr noundef %17, ptr noundef nonnull @.str.1) #6
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %64, label %20

20:                                               ; preds = %11
  %21 = call i32 @of_address_to_resource(ptr noundef %17, i32 noundef 0, ptr noundef nonnull %5) #6
  call void @of_node_put(ptr noundef %17) #6
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.2) #7
  br label %64

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.resource, ptr %5, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = load i32, ptr %5, align 4
  %28 = add i32 %26, 1
  %29 = sub i32 %28, %27
  %30 = call ptr @devm_ioremap(ptr noundef %1, i32 noundef %27, i32 noundef %29) #6
  %31 = getelementptr inbounds %struct.scmi_smc, ptr %9, i32 0, i32 1
  store ptr %30, ptr %31, align 4
  %32 = icmp eq ptr %30, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.3) #7
  br label %64

34:                                               ; preds = %24
  %35 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 25
  %36 = load ptr, ptr %35, align 8
  %37 = call i32 @of_property_read_variable_u32_array(ptr noundef %36, ptr noundef nonnull @.str.4, ptr noundef nonnull %6, i32 noundef 1, i32 noundef 0) #6
  %38 = call i32 @llvm.smin.i32(i32 %37, i32 0) #6
  %39 = icmp slt i32 %37, 0
  br i1 %39, label %64, label %40

40:                                               ; preds = %34
  %41 = load ptr, ptr %12, align 8
  %42 = call i32 @of_irq_get_byname(ptr noundef %41, ptr noundef nonnull @.str.5) #6
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load ptr, ptr %1, align 4
  br label %50

50:                                               ; preds = %48, %44
  %51 = phi ptr [ %49, %48 ], [ %46, %44 ]
  %52 = call i32 @devm_request_threaded_irq(ptr noundef %1, i32 noundef %42, ptr noundef nonnull @smc_msg_done_isr, ptr noundef null, i32 noundef 16384, ptr noundef %51, ptr noundef nonnull %9) #6
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.6) #7
  br label %64

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.scmi_smc, ptr %9, i32 0, i32 5
  store i32 0, ptr %56, align 4
  %57 = getelementptr inbounds %struct.scmi_smc, ptr %9, i32 0, i32 5, i32 1
  call void @__init_swait_queue_head(ptr noundef %57, ptr noundef nonnull @.str.8, ptr noundef nonnull @init_completion.__key) #6
  %58 = getelementptr inbounds %struct.scmi_smc, ptr %9, i32 0, i32 4
  store i32 %42, ptr %58, align 4
  br label %59

59:                                               ; preds = %55, %40
  %60 = load i32, ptr %6, align 4
  %61 = getelementptr inbounds %struct.scmi_smc, ptr %9, i32 0, i32 3
  store i32 %60, ptr %61, align 4
  store ptr %0, ptr %9, align 4
  %62 = getelementptr inbounds %struct.scmi_smc, ptr %9, i32 0, i32 2
  call void @__mutex_init(ptr noundef %62, ptr noundef nonnull @.str.7, ptr noundef nonnull @smc_chan_setup.__key) #6
  %63 = getelementptr inbounds %struct.scmi_chan_info, ptr %0, i32 0, i32 2
  store ptr %9, ptr %63, align 4
  br label %64

64:                                               ; preds = %59, %54, %34, %33, %23, %11, %8, %3
  %65 = phi i32 [ %21, %23 ], [ %52, %54 ], [ 0, %59 ], [ -99, %33 ], [ -19, %3 ], [ -12, %8 ], [ -6, %11 ], [ %38, %34 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #6
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smc_chan_free(i32 noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.scmi_chan_info, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  store ptr null, ptr %4, align 4
  store ptr null, ptr %5, align 4
  tail call void @scmi_free_channel(ptr noundef %1, ptr noundef %2, i32 noundef %0) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smc_send_message(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.scmi_chan_info, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.scmi_smc, ptr %4, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %5) #6
  %6 = getelementptr inbounds %struct.scmi_smc, ptr %4, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  tail call void @shmem_tx_prepare(ptr noundef %7, ptr noundef %1) #6
  %8 = getelementptr inbounds %struct.scmi_smc, ptr %4, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.scmi_smc, ptr %4, i32 0, i32 5
  store i32 0, ptr %12, align 4
  br label %13

13:                                               ; preds = %11, %2
  %14 = tail call i32 @arm_smccc_1_1_get_conduit() #6
  switch i32 %14, label %25 [
    i32 2, label %15
    i32 1, label %20
  ]

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.scmi_smc, ptr %4, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = tail call { i32, i32, i32, i32 } asm sideeffect ".long ((0xE1400070 | (((0) & 0xFFF0) << 4) | ((0) & 0x000F)) & 0xFFFFFFFF)\0A\09\0A", "={r0},={r1},={r2},={r3},{r0},{r1},{r2},{r3},{r4},{r5},{r6},{r7},~{memory}"(i32 %17, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #6, !srcloc !9
  %19 = extractvalue { i32, i32, i32, i32 } %18, 0
  br label %28

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.scmi_smc, ptr %4, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = tail call { i32, i32, i32, i32 } asm sideeffect ".long ((0xE1600070 | (((0) & 0xF) << 0)) & 0xFFFFFFFF)\0A\09\0A", "={r0},={r1},={r2},={r3},{r0},{r1},{r2},{r3},{r4},{r5},{r6},{r7},~{memory}"(i32 %22, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #6, !srcloc !10
  %24 = extractvalue { i32, i32, i32, i32 } %23, 0
  br label %28

25:                                               ; preds = %13
  %26 = getelementptr inbounds %struct.scmi_smc, ptr %4, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  tail call void asm sideeffect "", "{r0},{r1},{r2},{r3},{r4},{r5},{r6},{r7},~{memory}"(i32 %27, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #6, !srcloc !11
  br label %28

28:                                               ; preds = %25, %20, %15
  %29 = phi i32 [ -1, %25 ], [ %24, %20 ], [ %19, %15 ]
  %30 = load i32, ptr %8, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.scmi_smc, ptr %4, i32 0, i32 5
  tail call void @wait_for_completion(ptr noundef %33) #6
  br label %34

34:                                               ; preds = %32, %28
  %35 = load ptr, ptr %4, align 4
  %36 = load ptr, ptr %6, align 4
  %37 = tail call i32 @shmem_read_header(ptr noundef %36) #6
  tail call void @scmi_rx_callback(ptr noundef %35, i32 noundef %37, ptr noundef null) #6
  tail call void @mutex_unlock(ptr noundef %5) #6
  %38 = icmp eq i32 %29, 0
  %39 = select i1 %38, i32 0, i32 -95
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @smc_fetch_response(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.scmi_chan_info, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.scmi_smc, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  tail call void @shmem_fetch_response(ptr noundef %6, ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @smc_poll_done(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.scmi_chan_info, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.scmi_smc, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call zeroext i1 @shmem_poll_done(ptr noundef %6, ptr noundef %1) #6
  ret i1 %7
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get_byname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smc_msg_done_isr(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.scmi_smc, ptr %1, i32 0, i32 5
  tail call void @complete(ptr noundef %3) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmi_free_channel(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @shmem_tx_prepare(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_smccc_1_1_get_conduit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmi_rx_callback(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shmem_read_header(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @shmem_fetch_response(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @shmem_poll_done(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
!9 = !{i64 2152064497, i64 2152064580}
!10 = !{i64 2152067634, i64 2152067697}
!11 = !{i64 2152069571}
