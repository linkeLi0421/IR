; ModuleID = '/llk/IR/drivers/irqchip/irq-gic-v3-its-platform-msi.c_pt.bc'
source_filename = "../drivers/irqchip/irq-gic-v3-its-platform-msi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.msi_domain_info = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.msi_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.msi_alloc_info = type { ptr, i32, i32, [2 x %union.anon.11] }
%union.anon.11 = type { i32 }

@__initcall__kmod_irq_gic_v3_its_platform_msi__168_163_its_pmsi_initearly = internal global ptr @its_pmsi_init, section ".initcallearly.init", align 4
@its_device_id = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,gic-v3-its\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str = private unnamed_addr constant [15 x i8] c"msi-controller\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"\013%s: unable to locate ITS domain\0A\00", align 1
@its_pmsi_domain_info = internal global %struct.msi_domain_info { i32 3, ptr @its_pmsi_ops, ptr @its_pmsi_irq_chip, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"\013%s: unable to create platform domain\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"\016Platform MSI: %s domain created\0A\00", align 1
@its_pmsi_ops = internal global %struct.msi_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr @its_pmsi_prepare, ptr null, ptr null, ptr null }, align 4
@its_pmsi_irq_chip = internal global %struct.irq_chip { ptr null, ptr @.str.7, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"msi-parent\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"#msi-cells\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"drivers/irqchip/irq-gic-v3-its-platform-msi.c\00", align 1
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"ITS-pMSI\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_irq_gic_v3_its_platform_msi__168_163_its_pmsi_initearly], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local i32 @iort_pmsi_get_dev_id(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  ret i32 -1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @its_pmsi_init() #1 section ".init.text" {
  tail call fastcc void @its_pmsi_of_init() #7
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @its_pmsi_of_init() unnamed_addr #1 section ".init.text" {
  %1 = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @its_device_id, ptr noundef null) #8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %13, %0
  %4 = phi ptr [ %14, %13 ], [ %1, %0 ]
  %5 = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %4) #8
  br i1 %5, label %6, label %13

6:                                                ; preds = %3
  %7 = tail call ptr @of_find_property(ptr noundef nonnull %4, ptr noundef nonnull @.str, ptr noundef null) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.device_node, ptr %4, i32 0, i32 3
  %11 = getelementptr inbounds %struct.device_node, ptr %4, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  tail call fastcc void @its_pmsi_init_one(ptr noundef %10, ptr noundef %12) #7
  br label %13

13:                                               ; preds = %9, %6, %3
  %14 = tail call ptr @of_find_matching_node_and_match(ptr noundef nonnull %4, ptr noundef nonnull @its_device_id, ptr noundef null) #8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %3

16:                                               ; preds = %13, %0
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @its_pmsi_init_one(ptr noundef %0, ptr noundef %1) unnamed_addr #1 section ".init.text" {
  %3 = alloca %struct.irq_fwspec, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #8
  %4 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %4, i8 0, i64 68, i1 false) #8
  store ptr %0, ptr %3, align 4
  %5 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %3, i32 noundef 5) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = call ptr @msi_get_domain_info(ptr noundef nonnull %5) #8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %7
  %11 = call ptr @platform_msi_create_irq_domain(ptr noundef %0, ptr noundef nonnull @its_pmsi_domain_info, ptr noundef nonnull %5) #8
  %12 = icmp eq ptr %11, null
  %13 = select i1 %12, ptr @.str.2, ptr @.str.3
  br label %14

14:                                               ; preds = %10, %7, %2
  %15 = phi ptr [ @.str.1, %2 ], [ @.str.1, %7 ], [ %13, %10 ]
  %16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %15, ptr noundef %1) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msi_get_domain_info(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_msi_create_irq_domain(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_find_matching_fwspec(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @its_pmsi_prepare(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca %struct.of_phandle_args, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr @msi_get_domain_info(ptr noundef %8) #8
  %10 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 25
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %46, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 6
  br label %15

15:                                               ; preds = %43, %13
  %16 = phi ptr [ %11, %13 ], [ %45, %43 ]
  %17 = phi i32 [ 0, %13 ], [ %44, %43 ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %5, i8 0, i32 72, i1 false) #8, !annotation !8
  %18 = call i32 @__of_parse_phandle_with_args(ptr noundef %16, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef -1, i32 noundef %17, ptr noundef nonnull %5) #8
  %19 = load ptr, ptr %5, align 4
  %20 = load ptr, ptr %14, align 4
  %21 = icmp eq ptr %20, null
  %22 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  %23 = or i1 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.fwnode_handle, ptr %20, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, @of_fwnode_ops
  %28 = getelementptr i8, ptr %20, i32 -12
  %29 = select i1 %27, ptr %28, ptr null
  br label %30

30:                                               ; preds = %24, %15
  %31 = phi ptr [ null, %15 ], [ %29, %24 ]
  %32 = icmp eq ptr %19, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.of_phandle_args, ptr %5, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %38, label %37, !prof !9

37:                                               ; preds = %33
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 30, i32 noundef 9, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #8
  br label %67

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.of_phandle_args, ptr %5, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  store i32 %40, ptr %6, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #8
  br label %48

41:                                               ; preds = %30
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #8
  %42 = icmp eq i32 %18, 0
  br i1 %42, label %43, label %67

43:                                               ; preds = %41
  %44 = add i32 %17, 1
  %45 = load ptr, ptr %10, align 8
  br label %15

46:                                               ; preds = %4
  %47 = call i32 @iort_pmsi_get_dev_id(ptr noundef %1, ptr noundef nonnull %6)
  br label %48

48:                                               ; preds = %46, %38
  %49 = phi i32 [ %47, %46 ], [ %18, %38 ]
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %48
  %52 = load i32, ptr %6, align 4
  %53 = getelementptr inbounds %struct.msi_alloc_info, ptr %3, i32 0, i32 3
  store i32 %52, ptr %53, align 4
  %54 = add i32 %2, -1
  %55 = icmp eq i32 %54, 0
  %56 = call i32 @llvm.ctlz.i32(i32 %54, i1 false) #8, !range !10
  %57 = sub nuw nsw i32 32, %56
  %58 = shl nuw i32 1, %57
  %59 = call i32 @llvm.smax.i32(i32 %58, i32 32)
  %60 = select i1 %55, i32 32, i32 %59
  %61 = getelementptr inbounds %struct.msi_domain_info, ptr %9, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.msi_domain_ops, ptr %62, i32 0, i32 4
  %64 = load ptr, ptr %63, align 4
  %65 = load ptr, ptr %7, align 4
  %66 = call i32 %64(ptr noundef %65, ptr noundef %1, i32 noundef %60, ptr noundef %3) #8
  br label %67

67:                                               ; preds = %51, %48, %41, %37
  %68 = phi i32 [ %66, %51 ], [ %49, %48 ], [ -22, %37 ], [ %18, %41 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  ret i32 %68
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { cold }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i32 0, i32 33}
