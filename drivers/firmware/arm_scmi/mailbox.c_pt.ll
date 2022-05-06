; ModuleID = '/llk/IR/drivers/firmware/arm_scmi/mailbox.c_pt.bc'
source_filename = "../drivers/firmware/arm_scmi/mailbox.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.scmi_transport_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scmi_desc = type { ptr, ptr, ptr, i32, i32, i32 }
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
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.scmi_mailbox = type { %struct.mbox_client, ptr, ptr, ptr }
%struct.mbox_client = type { ptr, i8, i32, i8, ptr, ptr, ptr }
%struct.scmi_chan_info = type { ptr, ptr, ptr }

@scmi_mailbox_ops = internal constant %struct.scmi_transport_ops { ptr null, ptr @mailbox_chan_available, ptr @mailbox_chan_setup, ptr @mailbox_chan_free, ptr null, ptr @mailbox_send_message, ptr @mailbox_mark_txdone, ptr @mailbox_fetch_response, ptr @mailbox_fetch_notification, ptr @mailbox_clear_channel, ptr @mailbox_poll_done }, align 4
@scmi_mailbox_desc = dso_local local_unnamed_addr constant %struct.scmi_desc { ptr null, ptr null, ptr @scmi_mailbox_ops, i32 30, i32 20, i32 128 }, align 4
@.str = private unnamed_addr constant [7 x i8] c"mboxes\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"#mbox-cells\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"Tx\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"Rx\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"shmem\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"arm,scmi-shmem\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"failed to get SCMI %s shared memory\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"failed to ioremap SCMI %s shared memory\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"failed to request SCMI %s mailbox\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @mailbox_chan_available(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @__of_parse_phandle_with_args(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef -1, i32 noundef %1, ptr noundef null) #6
  %6 = icmp eq i32 %5, 0
  ret i1 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mailbox_chan_setup(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) #0 {
  %4 = alloca %struct.of_phandle_args, align 4
  %5 = alloca %struct.resource, align 4
  %6 = zext i1 %2 to i8
  %7 = select i1 %2, ptr @.str.2, ptr @.str.3
  %8 = load ptr, ptr %0, align 4
  %9 = xor i1 %2, true
  %10 = zext i1 %9 to i32
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %5, i8 0, i32 32, i1 false), !annotation !8
  %11 = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 40, i32 noundef 3520) #6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %52, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 25
  %15 = load ptr, ptr %14, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #6, !annotation !8
  %16 = call i32 @__of_parse_phandle_with_args(ptr noundef %15, ptr noundef nonnull @.str.4, ptr noundef null, i32 noundef 0, i32 noundef %10, ptr noundef nonnull %4) #6
  %17 = icmp eq i32 %16, 0
  %18 = load ptr, ptr %4, align 4
  %19 = select i1 %17, ptr %18, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #6
  %20 = call i32 @of_device_is_compatible(ptr noundef %19, ptr noundef nonnull @.str.5) #6
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %52, label %22

22:                                               ; preds = %13
  %23 = call i32 @of_address_to_resource(ptr noundef %19, i32 noundef 0, ptr noundef nonnull %5) #6
  call void @of_node_put(ptr noundef %19) #6
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.6, ptr noundef nonnull %7) #7
  br label %52

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.resource, ptr %5, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = load i32, ptr %5, align 4
  %30 = add i32 %28, 1
  %31 = sub i32 %30, %29
  %32 = call ptr @devm_ioremap(ptr noundef %1, i32 noundef %29, i32 noundef %31) #6
  %33 = getelementptr inbounds %struct.scmi_mailbox, ptr %11, i32 0, i32 3
  store ptr %32, ptr %33, align 4
  %34 = icmp eq ptr %32, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.7, ptr noundef nonnull %7) #7
  br label %52

36:                                               ; preds = %26
  store ptr %8, ptr %11, align 4
  %37 = select i1 %2, ptr @tx_prepare, ptr null
  %38 = getelementptr inbounds %struct.mbox_client, ptr %11, i32 0, i32 5
  store ptr %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.mbox_client, ptr %11, i32 0, i32 4
  store ptr @rx_callback, ptr %39, align 4
  %40 = getelementptr inbounds %struct.mbox_client, ptr %11, i32 0, i32 1
  store i8 0, ptr %40, align 4
  %41 = getelementptr inbounds %struct.mbox_client, ptr %11, i32 0, i32 3
  store i8 %6, ptr %41, align 4
  %42 = call ptr @mbox_request_channel(ptr noundef nonnull %11, i32 noundef %10) #6
  %43 = getelementptr inbounds %struct.scmi_mailbox, ptr %11, i32 0, i32 1
  store ptr %42, ptr %43, align 4
  %44 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %44, label %45, label %49

45:                                               ; preds = %36
  %46 = icmp eq ptr %42, inttoptr (i32 -517 to ptr)
  br i1 %46, label %52, label %47

47:                                               ; preds = %45
  %48 = ptrtoint ptr %42 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.8, ptr noundef nonnull %7) #7
  br label %52

49:                                               ; preds = %36
  %50 = getelementptr inbounds %struct.scmi_chan_info, ptr %0, i32 0, i32 2
  store ptr %11, ptr %50, align 4
  %51 = getelementptr inbounds %struct.scmi_mailbox, ptr %11, i32 0, i32 2
  store ptr %0, ptr %51, align 4
  br label %52

52:                                               ; preds = %49, %47, %45, %35, %25, %13, %3
  %53 = phi i32 [ %23, %25 ], [ 0, %49 ], [ -99, %35 ], [ -12, %3 ], [ -6, %13 ], [ %48, %47 ], [ -517, %45 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #6
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mailbox_chan_free(i32 noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.scmi_chan_info, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.scmi_mailbox, ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  tail call void @mbox_free_channel(ptr noundef %9) #6
  store ptr null, ptr %4, align 4
  store ptr null, ptr %8, align 4
  %12 = getelementptr inbounds %struct.scmi_mailbox, ptr %5, i32 0, i32 2
  store ptr null, ptr %12, align 4
  br label %13

13:                                               ; preds = %11, %7, %3
  tail call void @scmi_free_channel(ptr noundef %1, ptr noundef %2, i32 noundef %0) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mailbox_send_message(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.scmi_chan_info, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.scmi_mailbox, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @mbox_send_message(ptr noundef %6, ptr noundef %1) #6
  %8 = tail call i32 @llvm.smin.i32(i32 %7, i32 0)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mailbox_mark_txdone(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.scmi_chan_info, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.scmi_mailbox, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  tail call void @mbox_client_txdone(ptr noundef %6, i32 noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mailbox_fetch_response(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.scmi_chan_info, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.scmi_mailbox, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  tail call void @shmem_fetch_response(ptr noundef %6, ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mailbox_fetch_notification(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.scmi_chan_info, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.scmi_mailbox, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  tail call void @shmem_fetch_notification(ptr noundef %7, i32 noundef %1, ptr noundef %2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mailbox_clear_channel(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.scmi_chan_info, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.scmi_mailbox, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  tail call void @shmem_clear_channel(ptr noundef %5) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @mailbox_poll_done(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.scmi_chan_info, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.scmi_mailbox, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = tail call zeroext i1 @shmem_poll_done(ptr noundef %6, ptr noundef %1) #6
  ret i1 %7
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tx_prepare(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.scmi_mailbox, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  tail call void @shmem_tx_prepare(ptr noundef %4, ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rx_callback(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.scmi_mailbox, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.scmi_mailbox, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @shmem_read_header(ptr noundef %6) #6
  tail call void @scmi_rx_callback(ptr noundef %4, i32 noundef %7, ptr noundef null) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mbox_request_channel(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @shmem_tx_prepare(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmi_rx_callback(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shmem_read_header(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_free_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmi_free_channel(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mbox_send_message(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_client_txdone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @shmem_fetch_response(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @shmem_fetch_notification(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @shmem_clear_channel(ptr noundef) local_unnamed_addr #2

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
