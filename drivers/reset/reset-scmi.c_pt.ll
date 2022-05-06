; ModuleID = '/llk/IR/drivers/reset/reset-scmi.c_pt.bc'
source_filename = "../drivers/reset/reset-scmi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.scmi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scmi_device_id = type { i8, ptr }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.scmi_device = type { i32, i8, ptr, %struct.device, ptr }
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
%struct.scmi_handle = type { ptr, ptr, ptr, ptr, ptr }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.scmi_reset_data = type { %struct.reset_controller_dev, ptr }
%struct.scmi_reset_proto_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_reset_scmi__162_128_scmi_reset_driver_init6 = internal global ptr @scmi_reset_driver_init, section ".initcall6.init", align 4
@scmi_reset_driver = internal global %struct.scmi_driver { ptr @.str.1, ptr @scmi_reset_probe, ptr null, ptr @scmi_id_table, %struct.device_driver zeroinitializer }, align 4
@__exitcall_scmi_reset_driver_exit = internal global ptr @scmi_reset_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author163 = internal constant [54 x i8] c"reset_scmi.author=Sudeep Holla <sudeep.holla@arm.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description164 = internal constant [56 x i8] c"reset_scmi.description=ARM SCMI reset controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file165 = internal constant [41 x i8] c"reset_scmi.file=drivers/reset/reset-scmi\00", section ".modinfo", align 1
@__UNIQUE_ID_license166 = internal constant [26 x i8] c"reset_scmi.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [11 x i8] c"reset_scmi\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"scmi-reset\00", align 1
@scmi_id_table = internal constant [2 x %struct.scmi_device_id] [%struct.scmi_device_id { i8 22, ptr @.str.2 }, %struct.scmi_device_id zeroinitializer], align 4
@reset_ops = internal unnamed_addr global ptr null, align 4
@scmi_reset_ops = internal constant %struct.reset_control_ops { ptr @scmi_reset_reset, ptr @scmi_reset_assert, ptr @scmi_reset_deassert, ptr null }, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author163, ptr @__UNIQUE_ID_description164, ptr @__UNIQUE_ID_file165, ptr @__UNIQUE_ID_license166, ptr @__exitcall_scmi_reset_driver_exit, ptr @__initcall__kmod_reset_scmi__162_128_scmi_reset_driver_init6, ptr @scmi_reset_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @scmi_reset_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @scmi_driver_register(ptr noundef nonnull @scmi_reset_driver, ptr noundef null, ptr noundef nonnull @.str) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @scmi_reset_driver_exit() #0 section ".exit.text" {
  tail call void @scmi_driver_unregister(ptr noundef nonnull @scmi_reset_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scmi_driver_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_reset_probe(ptr noundef %0) #2 {
  %2 = alloca ptr, align 4
  %3 = getelementptr inbounds %struct.scmi_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.scmi_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.scmi_device, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #4
  store ptr null, ptr %2, align 4, !annotation !8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %30, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.scmi_handle, ptr %7, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = call ptr %11(ptr noundef %0, i8 noundef zeroext 22, ptr noundef nonnull %2) #4
  store ptr %12, ptr @reset_ops, align 4
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = ptrtoint ptr %12 to i32
  br label %30

16:                                               ; preds = %9
  %17 = call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 48, i32 noundef 3520) #4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %30, label %19

19:                                               ; preds = %16
  store ptr @scmi_reset_ops, ptr %17, align 4
  %20 = getelementptr inbounds %struct.reset_controller_dev, ptr %17, i32 0, i32 1
  store ptr null, ptr %20, align 4
  %21 = getelementptr inbounds %struct.reset_controller_dev, ptr %17, i32 0, i32 5
  store ptr %5, ptr %21, align 4
  %22 = load ptr, ptr @reset_ops, align 4
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %2, align 4
  %25 = call i32 %23(ptr noundef %24) #4
  %26 = getelementptr inbounds %struct.reset_controller_dev, ptr %17, i32 0, i32 8
  store i32 %25, ptr %26, align 4
  %27 = load ptr, ptr %2, align 4
  %28 = getelementptr inbounds %struct.scmi_reset_data, ptr %17, i32 0, i32 1
  store ptr %27, ptr %28, align 4
  %29 = call i32 @devm_reset_controller_register(ptr noundef %3, ptr noundef nonnull %17) #4
  br label %30

30:                                               ; preds = %19, %16, %14, %1
  %31 = phi i32 [ %15, %14 ], [ %29, %19 ], [ -19, %1 ], [ -12, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #4
  ret i32 %31
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_reset_controller_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_reset_reset(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.scmi_reset_data, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr @reset_ops, align 4
  %6 = getelementptr inbounds %struct.scmi_reset_proto_ops, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %4, i32 noundef %1) #4
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_reset_assert(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.scmi_reset_data, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr @reset_ops, align 4
  %6 = getelementptr inbounds %struct.scmi_reset_proto_ops, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %4, i32 noundef %1) #4
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_reset_deassert(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.scmi_reset_data, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr @reset_ops, align 4
  %6 = getelementptr inbounds %struct.scmi_reset_proto_ops, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %4, i32 noundef %1) #4
  ret i32 %8
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }

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
