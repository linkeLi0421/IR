; ModuleID = '/llk/IR/drivers/edac/highbank_l2_edac.c_pt.bc'
source_filename = "../drivers/edac/highbank_l2_edac.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.edac_device_ctl_info = type { %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.completion, [32 x i8], i32, ptr, %struct.edac_device_counter, %struct.kobject }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.edac_device_counter = type { i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.hb_l2_drvdata = type { ptr, i32, i32 }

@__initcall__kmod_highbank_l2_edac__228_138_highbank_l2_edac_driver_init6 = internal global ptr @highbank_l2_edac_driver_init, section ".initcall6.init", align 4
@highbank_l2_edac_driver = internal global %struct.platform_driver { ptr @highbank_l2_err_probe, ptr @highbank_l2_err_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hb_l2_err_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_highbank_l2_edac_driver_exit = internal global ptr @highbank_l2_edac_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file229 = internal constant [52 x i8] c"highbank_l2_edac.file=drivers/edac/highbank_l2_edac\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [32 x i8] c"highbank_l2_edac.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author231 = internal constant [38 x i8] c"highbank_l2_edac.author=Calxeda, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description232 = internal constant [71 x i8] c"highbank_l2_edac.description=EDAC Driver for Calxeda Highbank L2 Cache\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [11 x i8] c"hb_l2_edac\00", align 1
@hb_l2_err_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"calxeda,hb-sregs-l2-ecc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Unable to get mem resource\0A\00", align 1
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"Error while requesting mem region\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Unable to map regs\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__exitcall_highbank_l2_edac_driver_exit, ptr @__initcall__kmod_highbank_l2_edac__228_138_highbank_l2_edac_driver_init6, ptr @highbank_l2_edac_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @highbank_l2_edac_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @highbank_l2_edac_driver, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @highbank_l2_edac_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @highbank_l2_edac_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @highbank_l2_err_probe(ptr noundef %0) #2 {
  %2 = tail call ptr @edac_device_alloc_ctl_info(i32 noundef 12, ptr noundef nonnull @.str.1, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 0) #4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %88, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %2, i32 0, i32 17
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %8 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %2, i32 0, i32 13
  store ptr %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %2, ptr %9, align 8
  %10 = tail call ptr @devres_open_group(ptr noundef %7, ptr noundef null, i32 noundef 3264) #4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %88, label %12

12:                                               ; preds = %4
  %13 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.3) #5
  br label %85

16:                                               ; preds = %12
  %17 = load i32, ptr %13, align 4
  %18 = getelementptr inbounds %struct.resource, ptr %13, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = sub i32 1, %17
  %21 = add i32 %20, %19
  %22 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load ptr, ptr %7, align 4
  br label %27

27:                                               ; preds = %25, %16
  %28 = phi ptr [ %26, %25 ], [ %23, %16 ]
  %29 = tail call ptr @__devm_request_region(ptr noundef %7, ptr noundef nonnull @iomem_resource, i32 noundef %17, i32 noundef %21, ptr noundef %28) #4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.4) #5
  br label %85

32:                                               ; preds = %27
  %33 = load i32, ptr %13, align 4
  %34 = load i32, ptr %18, align 4
  %35 = sub i32 1, %33
  %36 = add i32 %35, %34
  %37 = tail call ptr @devm_ioremap(ptr noundef %7, i32 noundef %33, i32 noundef %36) #4
  store ptr %37, ptr %6, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.5) #5
  br label %85

40:                                               ; preds = %32
  %41 = tail call ptr @of_match_device(ptr noundef nonnull @hb_l2_err_of_match, ptr noundef %7) #4
  %42 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 6
  %43 = load ptr, ptr %42, align 8
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %2, i32 0, i32 14
  store ptr %44, ptr %45, align 4
  %46 = icmp eq ptr %41, null
  %47 = getelementptr inbounds %struct.of_device_id, ptr %41, i32 0, i32 2
  %48 = select i1 %46, ptr @.str.6, ptr %47
  %49 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %2, i32 0, i32 15
  store ptr %48, ptr %49, align 4
  %50 = load ptr, ptr %22, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %40
  %53 = load ptr, ptr %7, align 4
  br label %54

54:                                               ; preds = %52, %40
  %55 = phi ptr [ %53, %52 ], [ %50, %40 ]
  %56 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %2, i32 0, i32 16
  store ptr %55, ptr %56, align 4
  %57 = tail call i32 @edac_device_add_device(ptr noundef nonnull %2) #4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %85

59:                                               ; preds = %54
  %60 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #4
  %61 = getelementptr inbounds %struct.hb_l2_drvdata, ptr %6, i32 0, i32 2
  store i32 %60, ptr %61, align 4
  %62 = load ptr, ptr %22, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load ptr, ptr %7, align 4
  br label %66

66:                                               ; preds = %64, %59
  %67 = phi ptr [ %65, %64 ], [ %62, %59 ]
  %68 = tail call i32 @devm_request_threaded_irq(ptr noundef %7, i32 noundef %60, ptr noundef nonnull @highbank_l2_err_handler, ptr noundef null, i32 noundef 0, ptr noundef %67, ptr noundef nonnull %2) #4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %82, label %70

70:                                               ; preds = %66
  %71 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 1) #4
  %72 = getelementptr inbounds %struct.hb_l2_drvdata, ptr %6, i32 0, i32 1
  store i32 %71, ptr %72, align 4
  %73 = load ptr, ptr %22, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load ptr, ptr %7, align 4
  br label %77

77:                                               ; preds = %75, %70
  %78 = phi ptr [ %76, %75 ], [ %73, %70 ]
  %79 = tail call i32 @devm_request_threaded_irq(ptr noundef %7, i32 noundef %71, ptr noundef nonnull @highbank_l2_err_handler, ptr noundef null, i32 noundef 0, ptr noundef %78, ptr noundef nonnull %2) #4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %77
  tail call void @devres_close_group(ptr noundef %7, ptr noundef null) #4
  br label %88

82:                                               ; preds = %77, %66
  %83 = phi i32 [ %68, %66 ], [ %79, %77 ]
  %84 = tail call ptr @edac_device_del_device(ptr noundef %7) #4
  br label %85

85:                                               ; preds = %82, %54, %39, %31, %15
  %86 = phi i32 [ 0, %54 ], [ %83, %82 ], [ -12, %39 ], [ -16, %31 ], [ -19, %15 ]
  %87 = tail call i32 @devres_release_group(ptr noundef %7, ptr noundef null) #4
  tail call void @edac_device_free_ctl_info(ptr noundef nonnull %2) #4
  br label %88

88:                                               ; preds = %85, %81, %4, %1
  %89 = phi i32 [ %86, %85 ], [ 0, %81 ], [ -12, %1 ], [ -12, %4 ]
  ret i32 %89
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @highbank_l2_err_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call ptr @edac_device_del_device(ptr noundef %4) #4
  tail call void @edac_device_free_ctl_info(ptr noundef %3) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @edac_device_alloc_ctl_info(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devres_open_group(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @edac_device_add_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @highbank_l2_err_handler(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %1, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.hb_l2_drvdata, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, %0
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  %9 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 1) #4, !srcloc !9
  %10 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %1, i32 0, i32 15
  %11 = load ptr, ptr %10, align 4
  tail call void @edac_device_handle_ce_count(ptr noundef %1, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef %11) #4
  br label %12

12:                                               ; preds = %8, %2
  %13 = getelementptr inbounds %struct.hb_l2_drvdata, ptr %4, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, %0
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr i8, ptr %17, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 1) #4, !srcloc !9
  %19 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %1, i32 0, i32 15
  %20 = load ptr, ptr %19, align 4
  tail call void @edac_device_handle_ue_count(ptr noundef %1, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef %20) #4
  br label %21

21:                                               ; preds = %16, %12
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_close_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @edac_device_del_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @edac_device_free_ctl_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @edac_device_handle_ce_count(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @edac_device_handle_ue_count(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
!8 = !{i64 2153372352}
!9 = !{i64 4456392}
!10 = !{i64 2153372668}
