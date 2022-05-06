; ModuleID = '/llk/IR/drivers/bcma/driver_gpio.c_pt.bc'
source_filename = "../drivers/bcma/driver_gpio.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.bcma_drv_cc = type { ptr, i32, i32, i32, i8, i16, %struct.bcma_chipcommon_pmu, %struct.bcma_sflash, i32, ptr, %struct.spinlock, %struct.gpio_chip }
%struct.bcma_chipcommon_pmu = type { ptr, i8, i32 }
%struct.bcma_sflash = type { i8, i32, i16, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.61, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.61 = type { ptr }
%struct.bcma_device = type { ptr, %struct.bcma_device_id, %struct.device, ptr, i32, i8, i8, i8, i32, [8 x i32], i32, ptr, ptr, ptr, %struct.list_head }
%struct.bcma_device_id = type { i16, i16, i8, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.list_head = type { ptr, ptr }
%struct.bcma_bus = type { ptr, ptr, ptr, i32, i8, ptr, %struct.bcma_chipinfo, %struct.bcma_boardinfo, ptr, %struct.list_head, i8, i8, %struct.bcma_drv_cc, %struct.bcma_drv_cc_b, [2 x %struct.bcma_drv_pci], %struct.bcma_drv_pcie2, %struct.bcma_drv_mips, %struct.bcma_drv_gmac_cmn, %struct.ssb_sprom }
%struct.bcma_chipinfo = type { i16, i8, i8 }
%struct.bcma_boardinfo = type { i16, i16 }
%struct.bcma_drv_cc_b = type { ptr, i8, ptr }
%struct.bcma_drv_pci = type { ptr, i8 }
%struct.bcma_drv_pcie2 = type { ptr, i16 }
%struct.bcma_drv_mips = type { ptr, i8 }
%struct.bcma_drv_gmac_cmn = type { ptr, %struct.mutex }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.66, %struct.anon.67, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.66 = type { i8, i8, i8, i8 }
%struct.anon.67 = type { %struct.anon.68, %struct.anon.69 }
%struct.anon.68 = type { i8, i8, i8, i8, i8 }
%struct.anon.69 = type { i8, i8, i8, i8, i8 }
%struct.bcma_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [10 x i8] c"bcma_gpio\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@bcma_gpio_irq_chip = internal global %struct.irq_chip { ptr null, ptr @.str.2, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcma_gpio_irq_mask, ptr null, ptr @bcma_gpio_irq_unmask, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"BCMA-GPIO\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bcma_gpio_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 11
  store ptr @.str, ptr %4, align 4
  %5 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 11, i32 4
  %6 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 11, i32 5
  store ptr @bcma_gpio_request, ptr %6, align 4
  %7 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 11, i32 6
  store ptr @bcma_gpio_free, ptr %7, align 4
  %8 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 11, i32 10
  store ptr @bcma_gpio_get_value, ptr %8, align 4
  %9 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 11, i32 12
  store ptr @bcma_gpio_set_value, ptr %9, align 4
  %10 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 11, i32 8
  store ptr @bcma_gpio_direction_input, ptr %10, align 4
  %11 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 11, i32 9
  store ptr @bcma_gpio_direction_output, ptr %11, align 4
  store ptr null, ptr %5, align 4
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 11, i32 2
  store ptr %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.bcma_device, ptr %2, i32 0, i32 2, i32 25
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 11, i32 39
  store ptr %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 6
  %18 = load i16, ptr %17, align 4
  switch i16 %18, label %19 [
    i16 -12526, label %20
    i16 21335, label %20
    i16 -11964, label %20
    i16 -11963, label %20
    i16 -12506, label %20
  ]

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %19, %1, %1, %1, %1, %1
  %21 = phi i16 [ 16, %19 ], [ 32, %1 ], [ 32, %1 ], [ 32, %1 ], [ 32, %1 ], [ 32, %1 ]
  %22 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 11, i32 20
  store i16 %21, ptr %22, align 4
  %23 = load ptr, ptr %2, align 8
  %24 = getelementptr inbounds %struct.bcma_bus, ptr %23, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 11
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i32
  %31 = shl nuw nsw i32 %30, 5
  br label %32

32:                                               ; preds = %27, %20
  %33 = phi i32 [ %31, %27 ], [ -1, %20 ]
  %34 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 11, i32 19
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 11, i32 37
  %36 = load ptr, ptr %2, align 8
  %37 = getelementptr inbounds %struct.bcma_bus, ptr %36, i32 0, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 2
  br i1 %39, label %40, label %64

40:                                               ; preds = %32
  %41 = tail call i32 @bcma_core_irq(ptr noundef %2, i32 noundef 0) #3
  %42 = tail call i32 @request_threaded_irq(i32 noundef %41, ptr noundef nonnull @bcma_gpio_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.1, ptr noundef %0) #3
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %88

44:                                               ; preds = %40
  %45 = tail call i32 @bcma_chipco_gpio_intmask(ptr noundef %0, i32 noundef -1, i32 noundef 0) #3
  %46 = load ptr, ptr %0, align 4
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.bcma_bus, ptr %47, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.bcma_host_ops, ptr %49, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  %52 = tail call i32 %51(ptr noundef %46, i16 noundef zeroext 36) #3
  %53 = or i32 %52, 1
  %54 = load ptr, ptr %46, align 8
  %55 = getelementptr inbounds %struct.bcma_bus, ptr %54, i32 0, i32 2
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.bcma_host_ops, ptr %56, i32 0, i32 5
  %58 = load ptr, ptr %57, align 4
  tail call void %58(ptr noundef %46, i16 noundef zeroext 36, i32 noundef %53) #3
  store ptr @bcma_gpio_irq_chip, ptr %35, align 4
  %59 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 11, i32 37, i32 13
  store ptr null, ptr %59, align 4
  %60 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 11, i32 37, i32 15
  store i32 0, ptr %60, align 4
  %61 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 11, i32 37, i32 16
  store ptr null, ptr %61, align 4
  %62 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 11, i32 37, i32 10
  store i32 0, ptr %62, align 4
  %63 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 11, i32 37, i32 9
  store ptr @handle_simple_irq, ptr %63, align 4
  br label %64

64:                                               ; preds = %44, %32
  %65 = tail call i32 @gpiochip_add_data_with_key(ptr noundef %4, ptr noundef %0, ptr noundef null, ptr noundef null) #3
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %88, label %67

67:                                               ; preds = %64
  %68 = load ptr, ptr %0, align 4
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr inbounds %struct.bcma_bus, ptr %69, i32 0, i32 3
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, 2
  br i1 %72, label %73, label %88

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.bcma_bus, ptr %69, i32 0, i32 2
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.bcma_host_ops, ptr %75, i32 0, i32 2
  %77 = load ptr, ptr %76, align 4
  %78 = tail call i32 %77(ptr noundef %68, i16 noundef zeroext 36) #3
  %79 = and i32 %78, -2
  %80 = load ptr, ptr %68, align 8
  %81 = getelementptr inbounds %struct.bcma_bus, ptr %80, i32 0, i32 2
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.bcma_host_ops, ptr %82, i32 0, i32 5
  %84 = load ptr, ptr %83, align 4
  tail call void %84(ptr noundef %68, i16 noundef zeroext 36, i32 noundef %79) #3
  %85 = load ptr, ptr %0, align 4
  %86 = tail call i32 @bcma_core_irq(ptr noundef %85, i32 noundef 0) #3
  %87 = tail call ptr @free_irq(i32 noundef %86, ptr noundef %0) #3
  br label %88

88:                                               ; preds = %73, %67, %64, %40
  %89 = phi i32 [ 0, %64 ], [ %42, %40 ], [ %65, %67 ], [ %65, %73 ]
  ret i32 %89
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcma_gpio_request(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #3
  %4 = shl nuw i32 1, %1
  %5 = tail call i32 @bcma_chipco_gpio_control(ptr noundef %3, i32 noundef %4, i32 noundef 0) #3
  %6 = tail call i32 @bcma_chipco_gpio_pulldown(ptr noundef %3, i32 noundef %4, i32 noundef 0) #3
  %7 = tail call i32 @bcma_chipco_gpio_pullup(ptr noundef %3, i32 noundef %4, i32 noundef %4) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcma_gpio_free(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #3
  %4 = shl nuw i32 1, %1
  %5 = tail call i32 @bcma_chipco_gpio_pullup(ptr noundef %3, i32 noundef %4, i32 noundef 0) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcma_gpio_get_value(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #3
  %4 = shl nuw i32 1, %1
  %5 = tail call i32 @bcma_chipco_gpio_in(ptr noundef %3, i32 noundef %4) #3
  %6 = icmp ne i32 %5, 0
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcma_gpio_set_value(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #3
  %5 = shl nuw i32 1, %1
  %6 = icmp eq i32 %2, 0
  %7 = select i1 %6, i32 0, i32 %5
  %8 = tail call i32 @bcma_chipco_gpio_out(ptr noundef %4, i32 noundef %5, i32 noundef %7) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcma_gpio_direction_input(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #3
  %4 = shl nuw i32 1, %1
  %5 = tail call i32 @bcma_chipco_gpio_outen(ptr noundef %3, i32 noundef %4, i32 noundef 0) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcma_gpio_direction_output(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #3
  %5 = shl nuw i32 1, %1
  %6 = tail call i32 @bcma_chipco_gpio_outen(ptr noundef %4, i32 noundef %5, i32 noundef %5) #3
  %7 = icmp eq i32 %2, 0
  %8 = select i1 %7, i32 0, i32 %5
  %9 = tail call i32 @bcma_chipco_gpio_out(ptr noundef %4, i32 noundef %5, i32 noundef %8) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bcma_gpio_unregister(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %22

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.bcma_host_ops, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %2, i16 noundef zeroext 36) #3
  %13 = and i32 %12, -2
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr inbounds %struct.bcma_bus, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.bcma_host_ops, ptr %16, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  tail call void %18(ptr noundef %2, i16 noundef zeroext 36, i32 noundef %13) #3
  %19 = load ptr, ptr %0, align 4
  %20 = tail call i32 @bcma_core_irq(ptr noundef %19, i32 noundef 0) #3
  %21 = tail call ptr @free_irq(i32 noundef %20, ptr noundef %0) #3
  br label %22

22:                                               ; preds = %7, %1
  %23 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 11
  tail call void @gpiochip_remove(ptr noundef %23) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_chipco_gpio_control(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_chipco_gpio_pulldown(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_chipco_gpio_pullup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_chipco_gpio_in(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_chipco_gpio_out(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_chipco_gpio_outen(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_core_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcma_gpio_irq_handler(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load ptr, ptr %1, align 4
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.bcma_bus, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.bcma_host_ops, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef %5, i16 noundef zeroext 96) #3
  %12 = load ptr, ptr %1, align 4
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.bcma_bus, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.bcma_host_ops, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 %17(ptr noundef %12, i16 noundef zeroext 116) #3
  %19 = load ptr, ptr %1, align 4
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.bcma_bus, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.bcma_host_ops, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 %24(ptr noundef %19, i16 noundef zeroext 112) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #3
  %26 = xor i32 %25, %11
  %27 = and i32 %26, %18
  store i32 %27, ptr %4, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %58, label %29

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.bcma_drv_cc, ptr %1, i32 0, i32 11, i32 20
  %31 = load i16, ptr %30, align 4
  %32 = zext i16 %31 to i32
  %33 = call i32 @_find_next_bit_le(ptr noundef nonnull %4, i32 noundef %32, i32 noundef 0) #3
  %34 = load i16, ptr %30, align 4
  %35 = zext i16 %34 to i32
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %54

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.bcma_drv_cc, ptr %1, i32 0, i32 11, i32 37, i32 1
  br label %39

39:                                               ; preds = %39, %37
  %40 = phi i32 [ %33, %37 ], [ %50, %39 ]
  %41 = load ptr, ptr %38, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #3
  store i32 0, ptr %3, align 4, !annotation !8
  %42 = call ptr @__irq_resolve_mapping(ptr noundef %41, i32 noundef %40, ptr noundef nonnull %3) #3
  %43 = icmp eq ptr %42, null
  %44 = load i32, ptr %3, align 4
  %45 = select i1 %43, i32 0, i32 %44
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #3
  %46 = call i32 @generic_handle_irq(i32 noundef %45) #3
  %47 = load i16, ptr %30, align 4
  %48 = zext i16 %47 to i32
  %49 = add nsw i32 %40, 1
  %50 = call i32 @_find_next_bit_le(ptr noundef nonnull %4, i32 noundef %48, i32 noundef %49) #3
  %51 = load i16, ptr %30, align 4
  %52 = zext i16 %51 to i32
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %39, label %54

54:                                               ; preds = %39, %29
  %55 = load i32, ptr %4, align 4
  %56 = and i32 %55, %11
  %57 = call i32 @bcma_chipco_gpio_polarity(ptr noundef %1, i32 noundef %55, i32 noundef %56) #3
  br label %58

58:                                               ; preds = %54, %2
  %59 = phi i32 [ 1, %54 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #3
  ret i32 %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_chipco_gpio_intmask(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_chipco_gpio_polarity(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcma_gpio_irq_mask(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %3) #3
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = shl nuw i32 1, %6
  %8 = tail call i32 @bcma_chipco_gpio_intmask(ptr noundef %4, i32 noundef %7, i32 noundef 0) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcma_gpio_irq_unmask(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %3) #3
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = shl nuw i32 1, %6
  %8 = tail call i32 @bcma_chipco_gpio_in(ptr noundef %4, i32 noundef %7) #3
  %9 = tail call i32 @bcma_chipco_gpio_polarity(ptr noundef %4, i32 noundef %7, i32 noundef %8) #3
  %10 = tail call i32 @bcma_chipco_gpio_intmask(ptr noundef %4, i32 noundef %7, i32 noundef %7) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }

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
