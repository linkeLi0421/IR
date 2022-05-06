; ModuleID = '/llk/IR/drivers/firmware/arm_scmi/scmi_pm_domain.c_pt.bc'
source_filename = "../drivers/firmware/arm_scmi/scmi_pm_domain.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.scmi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scmi_device_id = type { i8, ptr }
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
%struct.scmi_power_proto_ops = type { ptr, ptr, ptr, ptr }
%struct.scmi_pm_domain = type { %struct.generic_pm_domain, ptr, ptr, i32 }
%struct.generic_pm_domain = type { %struct.device, %struct.dev_pm_domain, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i8, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, [1 x %struct.cpumask], ptr, ptr, %struct.raw_notifier_head, ptr, ptr, ptr, %struct.gpd_dev_ops, i64, i64, i8, i8, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i64, i64, ptr, %union.anon.5 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.raw_notifier_head = type { ptr }
%struct.gpd_dev_ops = type { ptr, ptr }
%union.anon.5 = type { %struct.mutex }
%struct.genpd_onecell_data = type { ptr, i32, ptr }

@__initcall__kmod_scmi_pm_domain__162_155_scmi_power_domain_driver_init6 = internal global ptr @scmi_power_domain_driver_init, section ".initcall6.init", align 4
@scmi_power_domain_driver = internal global %struct.scmi_driver { ptr @.str.1, ptr @scmi_pm_domain_probe, ptr null, ptr @scmi_id_table, %struct.device_driver zeroinitializer }, align 4
@__exitcall_scmi_power_domain_driver_exit = internal global ptr @scmi_power_domain_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author163 = internal constant [58 x i8] c"scmi_pm_domain.author=Sudeep Holla <sudeep.holla@arm.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description164 = internal constant [56 x i8] c"scmi_pm_domain.description=ARM SCMI power domain driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file165 = internal constant [61 x i8] c"scmi_pm_domain.file=drivers/firmware/arm_scmi/scmi_pm_domain\00", section ".modinfo", align 1
@__UNIQUE_ID_license166 = internal constant [30 x i8] c"scmi_pm_domain.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [15 x i8] c"scmi_pm_domain\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"scmi-power-domain\00", align 1
@scmi_id_table = internal constant [2 x %struct.scmi_device_id] [%struct.scmi_device_id { i8 17, ptr @.str.4 }, %struct.scmi_device_id zeroinitializer], align 4
@power_ops = internal unnamed_addr global ptr null, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"number of domains not found\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"failed to get state for domain %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"genpd\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author163, ptr @__UNIQUE_ID_description164, ptr @__UNIQUE_ID_file165, ptr @__UNIQUE_ID_license166, ptr @__exitcall_scmi_power_domain_driver_exit, ptr @__initcall__kmod_scmi_pm_domain__162_155_scmi_power_domain_driver_init6, ptr @scmi_power_domain_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @scmi_power_domain_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @scmi_driver_register(ptr noundef nonnull @scmi_power_domain_driver, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @scmi_power_domain_driver_exit() #0 section ".exit.text" {
  tail call void @scmi_driver_unregister(ptr noundef nonnull @scmi_power_domain_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scmi_driver_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_pm_domain_probe(ptr noundef %0) #2 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.scmi_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.scmi_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.scmi_device, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store ptr null, ptr %2, align 4, !annotation !8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %75, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.scmi_handle, ptr %8, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = call ptr %12(ptr noundef %0, i8 noundef zeroext 17, ptr noundef nonnull %2) #6
  store ptr %13, ptr @power_ops, align 4
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = ptrtoint ptr %13 to i32
  br label %75

17:                                               ; preds = %10
  %18 = load ptr, ptr %13, align 4
  %19 = load ptr, ptr %2, align 4
  %20 = call i32 %18(ptr noundef %19) #6
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2) #7
  br label %75

23:                                               ; preds = %17
  %24 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %20, i32 816) #6
  %25 = extractvalue { i32, i1 } %24, 1
  br i1 %25, label %75, label %26, !prof !9

26:                                               ; preds = %23
  %27 = extractvalue { i32, i1 } %24, 0
  %28 = call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef %27, i32 noundef 3520) #6
  %29 = icmp eq ptr %28, null
  br i1 %29, label %75, label %30

30:                                               ; preds = %26
  %31 = call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 12, i32 noundef 3520) #6
  %32 = icmp eq ptr %31, null
  br i1 %32, label %75, label %33

33:                                               ; preds = %30
  %34 = shl nuw nsw i32 %20, 2
  %35 = call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef %34, i32 noundef 3520) #6
  %36 = icmp eq ptr %35, null
  br i1 %36, label %75, label %37

37:                                               ; preds = %33
  %38 = icmp eq i32 %20, 0
  br i1 %38, label %72, label %39

39:                                               ; preds = %68, %37
  %40 = phi ptr [ %70, %68 ], [ %28, %37 ]
  %41 = phi i32 [ %69, %68 ], [ 0, %37 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  %42 = load ptr, ptr @power_ops, align 4
  %43 = getelementptr inbounds %struct.scmi_power_proto_ops, ptr %42, i32 0, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = load ptr, ptr %2, align 4
  %46 = call i32 %44(ptr noundef %45, i32 noundef %41, ptr noundef nonnull %3) #6
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %39
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.3, i32 noundef %41) #7
  br label %68

49:                                               ; preds = %39
  %50 = getelementptr inbounds %struct.scmi_pm_domain, ptr %40, i32 0, i32 3
  store i32 %41, ptr %50, align 8
  %51 = load ptr, ptr %2, align 4
  %52 = getelementptr inbounds %struct.scmi_pm_domain, ptr %40, i32 0, i32 1
  store ptr %51, ptr %52, align 8
  %53 = load ptr, ptr @power_ops, align 4
  %54 = getelementptr inbounds %struct.scmi_power_proto_ops, ptr %53, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = call ptr %55(ptr noundef %51, i32 noundef %41) #6
  %57 = getelementptr inbounds %struct.scmi_pm_domain, ptr %40, i32 0, i32 2
  store ptr %56, ptr %57, align 4
  %58 = getelementptr inbounds %struct.generic_pm_domain, ptr %40, i32 0, i32 10
  store ptr %56, ptr %58, align 4
  %59 = getelementptr inbounds %struct.generic_pm_domain, ptr %40, i32 0, i32 18
  store ptr @scmi_pd_power_off, ptr %59, align 4
  %60 = getelementptr inbounds %struct.generic_pm_domain, ptr %40, i32 0, i32 19
  store ptr @scmi_pd_power_on, ptr %60, align 8
  %61 = getelementptr inbounds %struct.generic_pm_domain, ptr %40, i32 0, i32 30
  store ptr @scmi_pd_attach_dev, ptr %61, align 4
  %62 = getelementptr inbounds %struct.generic_pm_domain, ptr %40, i32 0, i32 31
  store ptr @scmi_pd_detach_dev, ptr %62, align 8
  %63 = getelementptr inbounds %struct.generic_pm_domain, ptr %40, i32 0, i32 32
  store i32 9, ptr %63, align 4
  %64 = load i32, ptr %3, align 4
  %65 = icmp eq i32 %64, 1073741824
  %66 = call i32 @pm_genpd_init(ptr noundef %40, ptr noundef null, i1 noundef zeroext %65) #6
  %67 = getelementptr ptr, ptr %35, i32 %41
  store ptr %40, ptr %67, align 4
  br label %68

68:                                               ; preds = %49, %48
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %69 = add nuw nsw i32 %41, 1
  %70 = getelementptr %struct.scmi_pm_domain, ptr %40, i32 1
  %71 = icmp eq i32 %69, %20
  br i1 %71, label %72, label %39

72:                                               ; preds = %68, %37
  store ptr %35, ptr %31, align 4
  %73 = getelementptr inbounds %struct.genpd_onecell_data, ptr %31, i32 0, i32 1
  store i32 %20, ptr %73, align 4
  %74 = call i32 @of_genpd_add_provider_onecell(ptr noundef %6, ptr noundef nonnull %31) #6
  br label %75

75:                                               ; preds = %72, %33, %30, %26, %23, %22, %15, %1
  %76 = phi i32 [ %16, %15 ], [ %20, %22 ], [ %74, %72 ], [ -19, %1 ], [ -12, %26 ], [ -12, %30 ], [ -12, %33 ], [ -12, %23 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %76
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_pd_power_off(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = load ptr, ptr @power_ops, align 4
  %4 = getelementptr inbounds %struct.scmi_power_proto_ops, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.scmi_pm_domain, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.scmi_pm_domain, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 8
  %10 = tail call i32 %5(ptr noundef %7, i32 noundef %9, i32 noundef 1073741824) #6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load ptr, ptr @power_ops, align 4
  %14 = getelementptr inbounds %struct.scmi_power_proto_ops, ptr %13, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %6, align 8
  %17 = load i32, ptr %8, align 8
  %18 = call i32 %15(ptr noundef %16, i32 noundef %17, ptr noundef nonnull %2) #6
  %19 = load i32, ptr %2, align 4
  %20 = icmp eq i32 %19, 1073741824
  br label %21

21:                                               ; preds = %12, %1
  %22 = phi i1 [ false, %1 ], [ %20, %12 ]
  %23 = phi i32 [ %10, %1 ], [ %18, %12 ]
  %24 = icmp ne i32 %23, 0
  %25 = select i1 %24, i1 true, i1 %22
  %26 = select i1 %25, i32 %23, i32 -5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_pd_power_on(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = load ptr, ptr @power_ops, align 4
  %4 = getelementptr inbounds %struct.scmi_power_proto_ops, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.scmi_pm_domain, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.scmi_pm_domain, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 8
  %10 = tail call i32 %5(ptr noundef %7, i32 noundef %9, i32 noundef 0) #6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load ptr, ptr @power_ops, align 4
  %14 = getelementptr inbounds %struct.scmi_power_proto_ops, ptr %13, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %6, align 8
  %17 = load i32, ptr %8, align 8
  %18 = call i32 %15(ptr noundef %16, i32 noundef %17, ptr noundef nonnull %2) #6
  %19 = load i32, ptr %2, align 4
  %20 = icmp eq i32 %19, 0
  br label %21

21:                                               ; preds = %12, %1
  %22 = phi i1 [ true, %1 ], [ %20, %12 ]
  %23 = phi i32 [ %10, %1 ], [ %18, %12 ]
  %24 = icmp ne i32 %23, 0
  %25 = select i1 %24, i1 true, i1 %22
  %26 = select i1 %25, i32 %23, i32 -5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_pd_attach_dev(ptr nocapture noundef readnone %0, ptr noundef %1) #2 {
  %3 = tail call i32 @pm_clk_create(ptr noundef %1) #6
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = tail call i32 @of_pm_clk_add_clks(ptr noundef %1) #6
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  tail call void @pm_clk_destroy(ptr noundef %1) #6
  br label %9

9:                                                ; preds = %8, %5, %2
  %10 = phi i32 [ %6, %8 ], [ %3, %2 ], [ 0, %5 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @scmi_pd_detach_dev(ptr nocapture noundef readnone %0, ptr noundef %1) #2 {
  tail call void @pm_clk_destroy(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_genpd_add_provider_onecell(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_clk_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_pm_clk_add_clks(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_clk_destroy(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
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
!9 = !{!"branch_weights", i32 1, i32 2000}
