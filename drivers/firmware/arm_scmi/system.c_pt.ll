; ModuleID = '/llk/IR/drivers/firmware/arm_scmi/system.c_pt.bc'
source_filename = "../drivers/firmware/arm_scmi/system.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.scmi_protocol = type { i8, ptr, ptr, ptr, ptr, ptr }
%struct.scmi_protocol_events = type { i32, ptr, ptr, i32, i32 }
%struct.scmi_event_ops = type { ptr, ptr, ptr }
%struct.scmi_event = type { i8, i32, i32 }
%struct.scmi_protocol_handle = type { ptr, ptr, ptr, ptr }
%struct.scmi_xfer_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scmi_xfer = type { i32, %struct.scmi_msg_hdr, %struct.scmi_msg, %struct.scmi_msg, %struct.completion, ptr, i8, %struct.hlist_node, %struct.refcount_struct, %struct.atomic_t, i32, %struct.spinlock, ptr }
%struct.scmi_msg_hdr = type { i8, i8, i8, i16, i32, i8 }
%struct.scmi_msg = type { ptr, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.scmi_system_power_state_notifier_report = type { i64, i32, i32, i32 }
%struct.scmi_system_power_state_notifier_payld = type { i32, i32, i32 }

@scmi_system = internal constant %struct.scmi_protocol { i8 18, ptr null, ptr @scmi_system_protocol_init, ptr null, ptr null, ptr @system_protocol_events }, align 4
@system_protocol_events = internal constant %struct.scmi_protocol_events { i32 4096, ptr @system_event_ops, ptr @system_events, i32 1, i32 1 }, align 4
@system_event_ops = internal constant %struct.scmi_event_ops { ptr null, ptr @scmi_system_set_notify_enabled, ptr @scmi_system_fill_custom_report }, align 4
@system_events = internal constant [1 x %struct.scmi_event] [%struct.scmi_event { i8 0, i32 12, i32 24 }], align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @scmi_system_unregister], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @scmi_system_register() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @scmi_protocol_register(ptr noundef nonnull @scmi_system) #5
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scmi_protocol_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @scmi_system_unregister() #0 section ".exit.text" {
  tail call void @scmi_protocol_unregister(ptr noundef nonnull @scmi_system) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmi_protocol_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_system_protocol_init(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = call i32 %5(ptr noundef %0, ptr noundef nonnull %2) #5
  %7 = load ptr, ptr %0, align 4
  %8 = call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef 4, i32 noundef 3520) #5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load i32, ptr %2, align 4
  store i32 %11, ptr %8, align 4
  %12 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = call i32 %13(ptr noundef %0, ptr noundef nonnull %8) #5
  br label %15

15:                                               ; preds = %10, %1
  %16 = phi i32 [ %14, %10 ], [ -12, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  ret i32 %16
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_system_set_notify_enabled(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2, i1 noundef zeroext %3) #2 {
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #5
  store ptr null, ptr %5, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = call i32 %9(ptr noundef %0, i8 noundef zeroext 5, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %5) #5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %4
  %13 = load ptr, ptr %5, align 4
  %14 = getelementptr inbounds %struct.scmi_xfer, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = zext i1 %3 to i32
  store i32 %16, ptr %15, align 4
  %17 = load ptr, ptr %6, align 4
  %18 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %17, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr %5, align 4
  %21 = call i32 %19(ptr noundef %0, ptr noundef %20) #5
  %22 = load ptr, ptr %6, align 4
  %23 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %22, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %5, align 4
  call void %24(ptr noundef %0, ptr noundef %25) #5
  br label %26

26:                                               ; preds = %12, %4
  %27 = phi i32 [ %21, %12 ], [ %10, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #5
  ret i32 %27
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal ptr @scmi_system_fill_custom_report(ptr nocapture noundef readnone %0, i8 noundef zeroext %1, i64 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, ptr noundef writeonly %5, ptr nocapture noundef writeonly %6) #4 {
  %8 = icmp ne i8 %1, 0
  %9 = icmp ne i32 %4, 12
  %10 = or i1 %8, %9
  br i1 %10, label %20, label %11

11:                                               ; preds = %7
  store i64 %2, ptr %5, align 8
  %12 = load i32, ptr %3, align 4
  %13 = getelementptr inbounds %struct.scmi_system_power_state_notifier_report, ptr %5, i32 0, i32 1
  store i32 %12, ptr %13, align 8
  %14 = getelementptr inbounds %struct.scmi_system_power_state_notifier_payld, ptr %3, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.scmi_system_power_state_notifier_report, ptr %5, i32 0, i32 2
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.scmi_system_power_state_notifier_payld, ptr %3, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.scmi_system_power_state_notifier_report, ptr %5, i32 0, i32 3
  store i32 %18, ptr %19, align 8
  store i32 0, ptr %6, align 4
  br label %20

20:                                               ; preds = %11, %7
  %21 = phi ptr [ %5, %11 ], [ null, %7 ]
  ret ptr %21
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }

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
