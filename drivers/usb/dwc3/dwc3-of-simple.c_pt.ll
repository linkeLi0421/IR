; ModuleID = '/llk/IR/drivers/usb/dwc3/dwc3-of-simple.c_pt.bc'
source_filename = "../drivers/usb/dwc3/dwc3-of-simple.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.dwc3_of_simple = type { ptr, ptr, i32, ptr, i8 }

@__initcall__kmod_dwc3_of_simple__223_195_dwc3_of_simple_driver_init6 = internal global ptr @dwc3_of_simple_driver_init, section ".initcall6.init", align 4
@dwc3_of_simple_driver = internal global %struct.platform_driver { ptr @dwc3_of_simple_probe, ptr @dwc3_of_simple_remove, ptr @dwc3_of_simple_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_dwc3_simple_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dwc3_of_simple_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_dwc3_of_simple_driver_exit = internal global ptr @dwc3_of_simple_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file224 = internal constant [52 x i8] c"dwc3_of_simple.file=drivers/usb/dwc3/dwc3-of-simple\00", section ".modinfo", align 1
@__UNIQUE_ID_license225 = internal constant [30 x i8] c"dwc3_of_simple.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description226 = internal constant [64 x i8] c"dwc3_of_simple.description=DesignWare USB3 OF Simple Glue Layer\00", section ".modinfo", align 1
@__UNIQUE_ID_author227 = internal constant [50 x i8] c"dwc3_of_simple.author=Felipe Balbi <balbi@ti.com>\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [15 x i8] c"dwc3-of-simple\00", align 1
@of_dwc3_simple_match = internal constant [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3399-dwc3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cavium,octeon-7130-usb-uctl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sprd,sc9860-dwc3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-h6-dwc3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3670-dwc3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,keembay-dwc3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@dwc3_of_simple_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @dwc3_of_simple_suspend, ptr @dwc3_of_simple_resume, ptr @dwc3_of_simple_suspend, ptr @dwc3_of_simple_resume, ptr @dwc3_of_simple_suspend, ptr @dwc3_of_simple_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dwc3_of_simple_runtime_suspend, ptr @dwc3_of_simple_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"rockchip,rk3399-dwc3\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"failed to get device resets, err=%d\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author227, ptr @__UNIQUE_ID_description226, ptr @__UNIQUE_ID_file224, ptr @__UNIQUE_ID_license225, ptr @__exitcall_dwc3_of_simple_driver_exit, ptr @__initcall__kmod_dwc3_of_simple__223_195_dwc3_of_simple_driver_init6, ptr @dwc3_of_simple_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @dwc3_of_simple_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @dwc3_of_simple_driver, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @dwc3_of_simple_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @dwc3_of_simple_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_of_simple_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 20, i32 noundef 3520) #4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %54, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %8, align 8
  store ptr %2, ptr %5, align 4
  %9 = tail call i32 @of_device_is_compatible(ptr noundef %4, ptr noundef nonnull @.str.1) #4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.dwc3_of_simple, ptr %5, i32 0, i32 4
  store i8 1, ptr %12, align 4
  br label %13

13:                                               ; preds = %11, %7
  %14 = tail call ptr @of_reset_control_array_get(ptr noundef %4, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #4
  %15 = getelementptr inbounds %struct.dwc3_of_simple, ptr %5, i32 0, i32 3
  store ptr %14, ptr %15, align 4
  %16 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = ptrtoint ptr %14 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef %18) #5
  br label %54

19:                                               ; preds = %13
  %20 = tail call i32 @reset_control_deassert(ptr noundef %14) #4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %51

22:                                               ; preds = %19
  %23 = load ptr, ptr %5, align 4
  %24 = getelementptr inbounds %struct.dwc3_of_simple, ptr %5, i32 0, i32 1
  %25 = tail call i32 @clk_bulk_get_all(ptr noundef %23, ptr noundef %24) #4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %47, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.dwc3_of_simple, ptr %5, i32 0, i32 2
  store i32 %25, ptr %28, align 4
  %29 = load ptr, ptr %24, align 4
  %30 = tail call i32 @clk_bulk_prepare(i32 noundef %25, ptr noundef %29) #4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %27
  %33 = tail call i32 @clk_bulk_enable(i32 noundef %25, ptr noundef %29) #4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  tail call void @clk_bulk_unprepare(i32 noundef %25, ptr noundef %29) #4
  br label %47

36:                                               ; preds = %32
  %37 = tail call i32 @of_platform_populate(ptr noundef %4, ptr noundef null, ptr noundef null, ptr noundef %2) #4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = tail call i32 @__pm_runtime_set_status(ptr noundef %2, i32 noundef 0) #4
  tail call void @pm_runtime_enable(ptr noundef %2) #4
  %41 = tail call i32 @__pm_runtime_resume(ptr noundef %2, i32 noundef 4) #4
  br label %54

42:                                               ; preds = %36
  %43 = load i32, ptr %28, align 4
  %44 = load ptr, ptr %24, align 4
  tail call void @clk_bulk_disable(i32 noundef %43, ptr noundef %44) #4
  tail call void @clk_bulk_unprepare(i32 noundef %43, ptr noundef %44) #4
  %45 = load i32, ptr %28, align 4
  %46 = load ptr, ptr %24, align 4
  tail call void @clk_bulk_put_all(i32 noundef %45, ptr noundef %46) #4
  br label %47

47:                                               ; preds = %42, %35, %27, %22
  %48 = phi i32 [ %25, %22 ], [ %37, %42 ], [ %33, %35 ], [ %30, %27 ]
  %49 = load ptr, ptr %15, align 4
  %50 = tail call i32 @reset_control_assert(ptr noundef %49) #4
  br label %51

51:                                               ; preds = %47, %19
  %52 = phi i32 [ %20, %19 ], [ %48, %47 ]
  %53 = load ptr, ptr %15, align 4
  tail call void @reset_control_put(ptr noundef %53) #4
  br label %54

54:                                               ; preds = %51, %39, %17, %1
  %55 = phi i32 [ %18, %17 ], [ %52, %51 ], [ 0, %39 ], [ -12, %1 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_of_simple_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call fastcc void @__dwc3_of_simple_teardown(ptr noundef %3)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwc3_of_simple_shutdown(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call fastcc void @__dwc3_of_simple_teardown(ptr noundef %3)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_reset_control_array_get(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_get_all(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_put_all(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @reset_control_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__dwc3_of_simple_teardown(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 4
  tail call void @of_platform_depopulate(ptr noundef %2) #4
  %3 = getelementptr inbounds %struct.dwc3_of_simple, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dwc3_of_simple, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  tail call void @clk_bulk_disable(i32 noundef %4, ptr noundef %6) #4
  tail call void @clk_bulk_unprepare(i32 noundef %4, ptr noundef %6) #4
  %7 = load i32, ptr %3, align 4
  %8 = load ptr, ptr %5, align 4
  tail call void @clk_bulk_put_all(i32 noundef %7, ptr noundef %8) #4
  store i32 0, ptr %3, align 4
  %9 = getelementptr inbounds %struct.dwc3_of_simple, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @reset_control_assert(ptr noundef %10) #4
  %12 = load ptr, ptr %9, align 4
  tail call void @reset_control_put(ptr noundef %12) #4
  %13 = load ptr, ptr %0, align 4
  tail call void @__pm_runtime_disable(ptr noundef %13, i1 noundef zeroext true) #4
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #4, !srcloc !9
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 0, i32 -1, ptr elementtype(i32) %15) #4, !srcloc !10
  %17 = extractvalue { i32, i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !11
  br label %20

20:                                               ; preds = %19, %1
  %21 = load ptr, ptr %0, align 4
  %22 = tail call i32 @__pm_runtime_set_status(ptr noundef %21, i32 noundef 2) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_platform_depopulate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_of_simple_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dwc3_of_simple, ptr %3, i32 0, i32 4
  %5 = load i8, ptr %4, align 4, !range !12
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.dwc3_of_simple, ptr %3, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @reset_control_assert(ptr noundef %9) #4
  br label %11

11:                                               ; preds = %7, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_of_simple_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dwc3_of_simple, ptr %3, i32 0, i32 4
  %5 = load i8, ptr %4, align 4, !range !12
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.dwc3_of_simple, ptr %3, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @reset_control_deassert(ptr noundef %9) #4
  br label %11

11:                                               ; preds = %7, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_of_simple_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dwc3_of_simple, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dwc3_of_simple, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_bulk_disable(i32 noundef %5, ptr noundef %7) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_of_simple_runtime_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dwc3_of_simple, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dwc3_of_simple, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @clk_bulk_enable(i32 noundef %5, ptr noundef %7) #4
  ret i32 %8
}

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
!8 = !{i64 2148045775}
!9 = !{i64 544882, i64 2148034853, i64 2148034879, i64 2148034926, i64 2148034948, i64 2148034976, i64 2148034996}
!10 = !{i64 531451, i64 531476, i64 531498, i64 531514, i64 531526, i64 531546, i64 531570, i64 531586, i64 531598}
!11 = !{i64 2148045901}
!12 = !{i8 0, i8 2}
