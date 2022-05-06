; ModuleID = '/llk/IR/drivers/pinctrl/samsung/pinctrl-exynos.c_pt.bc'
source_filename = "../drivers/pinctrl/samsung/pinctrl-exynos.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.exynos_irq_chip = type { %struct.irq_chip, i32, i32, i32, ptr, i32, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.samsung_pinctrl_drv_data = type { %struct.list_head, ptr, ptr, i32, %struct.pinctrl_desc, ptr, ptr, i32, ptr, i32, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
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
%struct.samsung_pin_bank = type { ptr, ptr, i32, i8, ptr, i8, i32, i32, i32, ptr, i32, ptr, ptr, ptr, ptr, %struct.gpio_chip, %struct.pinctrl_gpio_range, ptr, %struct.raw_spinlock, [7 x i32] }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.59, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%union.anon.59 = type { ptr }
%struct.pinctrl_gpio_range = type { %struct.list_head, ptr, i32, i32, i32, i32, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.exynos_weint_data = type { i32, ptr }
%struct.exynos_muxed_weint_data = type { i32, [0 x ptr] }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [1 x i32] }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.exynos_eint_gpio_save = type { i32, i32, i32, i32 }
%struct.samsung_retention_ctrl = type { ptr, i32, i32, ptr, ptr, ptr, ptr }
%struct.samsung_retention_data = type { ptr, i32, i32, ptr, ptr }
%struct.samsung_pin_bank_type = type { [6 x i8], [6 x i8] }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@.str = private unnamed_addr constant [26 x i8] c"irq number not available\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"irq request failed\0A\00", align 1
@exynos_gpio_irq_chip = internal constant %struct.exynos_irq_chip { %struct.irq_chip { ptr null, ptr @.str.7, ptr null, ptr null, ptr null, ptr null, ptr @exynos_irq_ack, ptr @exynos_irq_mask, ptr null, ptr @exynos_irq_unmask, ptr null, ptr null, ptr null, ptr @exynos_irq_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_irq_request_resources, ptr @exynos_irq_release_resources, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, i32 1792, i32 2304, i32 2560, ptr null, i32 0, ptr null }, section ".init.rodata", align 4
@exynos_eint_irqd_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr @exynos_eint_irq_map, ptr null, ptr @irq_domain_xlate_twocell, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"gpio irq domain add failed\0A\00", align 1
@exynos_wkup_irq_ids = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s5pv210-wakeup-eint\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s5pv210_wkup_irq_chip }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4210-wakeup-eint\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos4210_wkup_irq_chip }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos7-wakeup-eint\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos7_wkup_irq_chip }, %struct.of_device_id zeroinitializer], align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"wkup irq domain add failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"interrupts\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"irq number for eint-%s-%d not found\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"irq number for muxed EINTs not found\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"exynos_gpio_irq_chip\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"\013unsupported external interrupt type\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"unable to lock pin %s-%lu IRQ\0A\00", align 1
@s5pv210_wkup_irq_chip = internal constant %struct.exynos_irq_chip { %struct.irq_chip { ptr null, ptr @.str.10, ptr null, ptr null, ptr null, ptr null, ptr @exynos_irq_ack, ptr @exynos_irq_mask, ptr null, ptr @exynos_irq_unmask, ptr null, ptr null, ptr null, ptr @exynos_irq_set_type, ptr @exynos_wkup_irq_set_wake, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_irq_request_resources, ptr @exynos_irq_release_resources, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, i32 3584, i32 3840, i32 3904, ptr @eint_wake_mask_value, i32 49156, ptr @s5pv210_pinctrl_set_eint_wakeup_mask }, section ".init.rodata", align 4
@exynos4210_wkup_irq_chip = internal constant %struct.exynos_irq_chip { %struct.irq_chip { ptr null, ptr @.str.15, ptr null, ptr null, ptr null, ptr null, ptr @exynos_irq_ack, ptr @exynos_irq_mask, ptr null, ptr @exynos_irq_unmask, ptr null, ptr null, ptr null, ptr @exynos_irq_set_type, ptr @exynos_wkup_irq_set_wake, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_irq_request_resources, ptr @exynos_irq_release_resources, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, i32 3584, i32 3840, i32 3904, ptr @eint_wake_mask_value, i32 1540, ptr @exynos_pinctrl_set_eint_wakeup_mask }, section ".init.rodata", align 4
@exynos7_wkup_irq_chip = internal constant %struct.exynos_irq_chip { %struct.irq_chip { ptr null, ptr @.str.17, ptr null, ptr null, ptr null, ptr null, ptr @exynos_irq_ack, ptr @exynos_irq_mask, ptr null, ptr @exynos_irq_unmask, ptr null, ptr null, ptr null, ptr @exynos_irq_set_type, ptr @exynos_wkup_irq_set_wake, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_irq_request_resources, ptr @exynos_irq_release_resources, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, i32 1792, i32 2304, i32 2560, ptr @eint_wake_mask_value, i32 1548, ptr @exynos_pinctrl_set_eint_wakeup_mask }, section ".init.rodata", align 4
@.str.10 = private unnamed_addr constant [22 x i8] c"s5pv210_wkup_irq_chip\00", align 1
@eint_wake_mask_value = internal global i32 -1, align 4
@.str.11 = private unnamed_addr constant [22 x i8] c"\016wake %s for irq %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.14 = private unnamed_addr constant [97 x i8] c"No retention data configured bank with external wakeup interrupt. Wake-up mask will not be set.\0A\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"exynos4210_wkup_irq_chip\00", align 1
@.str.16 = private unnamed_addr constant [46 x i8] c"Setting external wakeup interrupt mask: 0x%x\0A\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"exynos7_wkup_irq_chip\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @exynos_eint_gpio_init(ptr noundef %0) local_unnamed_addr #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %83, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = load ptr, ptr %3, align 4
  br label %13

13:                                               ; preds = %11, %7
  %14 = phi ptr [ %12, %11 ], [ %9, %7 ]
  %15 = tail call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %5, ptr noundef nonnull @exynos_eint_gpio_irq, ptr noundef null, i32 noundef 0, ptr noundef %14, ptr noundef %0) #5
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %83

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %0, i32 0, i32 11
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %86, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %0, i32 0, i32 10
  %23 = load ptr, ptr %22, align 4
  br label %24

24:                                               ; preds = %61, %21
  %25 = phi i32 [ %62, %61 ], [ %19, %21 ]
  %26 = phi i32 [ %63, %61 ], [ 0, %21 ]
  %27 = phi ptr [ %64, %61 ], [ %23, %21 ]
  %28 = getelementptr inbounds %struct.samsung_pin_bank, ptr %27, i32 0, i32 6
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %61

31:                                               ; preds = %24
  %32 = tail call ptr @devm_kmemdup(ptr noundef %3, ptr noundef nonnull @exynos_gpio_irq_chip, i32 noundef 160, i32 noundef 3264) #5
  %33 = getelementptr inbounds %struct.samsung_pin_bank, ptr %27, i32 0, i32 17
  store ptr %32, ptr %33, align 4
  %34 = icmp eq ptr %32, null
  br i1 %34, label %66, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.samsung_pin_bank, ptr %27, i32 0, i32 9
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.irq_chip, ptr %32, i32 0, i32 1
  store ptr %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.samsung_pin_bank, ptr %27, i32 0, i32 12
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.samsung_pin_bank, ptr %27, i32 0, i32 3
  %42 = load i8, ptr %41, align 4
  %43 = zext i8 %42 to i32
  %44 = icmp eq ptr %40, null
  %45 = getelementptr inbounds %struct.device_node, ptr %40, i32 0, i32 3
  %46 = select i1 %44, ptr null, ptr %45
  %47 = tail call ptr @__irq_domain_add(ptr noundef %46, i32 noundef %43, i32 noundef %43, i32 noundef 0, ptr noundef nonnull @exynos_eint_irqd_ops, ptr noundef %27) #5
  %48 = getelementptr inbounds %struct.samsung_pin_bank, ptr %27, i32 0, i32 14
  store ptr %47, ptr %48, align 4
  %49 = icmp eq ptr %47, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %35
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #6
  br label %66

51:                                               ; preds = %35
  %52 = load ptr, ptr %2, align 4
  %53 = tail call noalias ptr @devm_kmalloc(ptr noundef %52, i32 noundef 16, i32 noundef 3520) #5
  %54 = getelementptr inbounds %struct.samsung_pin_bank, ptr %27, i32 0, i32 11
  store ptr %53, ptr %54, align 4
  %55 = icmp eq ptr %53, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %51
  %57 = load i32, ptr %18, align 4
  br label %61

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.samsung_pin_bank, ptr %27, i32 0, i32 14
  %60 = load ptr, ptr %59, align 4
  tail call void @irq_domain_remove(ptr noundef %60) #5
  br label %66

61:                                               ; preds = %56, %24
  %62 = phi i32 [ %57, %56 ], [ %25, %24 ]
  %63 = add nuw i32 %26, 1
  %64 = getelementptr %struct.samsung_pin_bank, ptr %27, i32 1
  %65 = icmp ult i32 %63, %62
  br i1 %65, label %24, label %86

66:                                               ; preds = %58, %50, %31
  %67 = phi i32 [ -12, %58 ], [ -6, %50 ], [ -12, %31 ]
  %68 = add i32 %26, -1
  %69 = icmp sgt i32 %68, -1
  br i1 %69, label %70, label %86

70:                                               ; preds = %80, %66
  %71 = phi i32 [ %81, %80 ], [ %68, %66 ]
  %72 = phi ptr [ %73, %80 ], [ %27, %66 ]
  %73 = getelementptr %struct.samsung_pin_bank, ptr %72, i32 -1
  %74 = getelementptr %struct.samsung_pin_bank, ptr %72, i32 -1, i32 6
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = getelementptr %struct.samsung_pin_bank, ptr %72, i32 -1, i32 14
  %79 = load ptr, ptr %78, align 4
  tail call void @irq_domain_remove(ptr noundef %79) #5
  br label %80

80:                                               ; preds = %77, %70
  %81 = add i32 %71, -1
  %82 = icmp sgt i32 %81, -1
  br i1 %82, label %70, label %86

83:                                               ; preds = %13, %1
  %84 = phi ptr [ @.str, %1 ], [ @.str.1, %13 ]
  %85 = phi i32 [ -22, %1 ], [ -6, %13 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull %84) #6
  br label %86

86:                                               ; preds = %83, %80, %66, %61, %17
  %87 = phi i32 [ %67, %66 ], [ 0, %17 ], [ %85, %83 ], [ %67, %80 ], [ 0, %61 ]
  ret i32 %87
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_eint_gpio_irq(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %1, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.samsung_pin_bank, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 2824
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %9 = lshr i32 %8, 3
  %10 = and i32 %9, 31
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %2
  %13 = and i32 %8, 7
  %14 = add nsw i32 %10, -1
  %15 = getelementptr %struct.samsung_pin_bank, ptr %4, i32 %14, i32 14
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @generic_handle_domain_irq(ptr noundef %16, i32 noundef %13) #5
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i32
  br label %20

20:                                               ; preds = %12, %2
  %21 = phi i32 [ 1, %2 ], [ %19, %12 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @exynos_eint_wkup_init(ptr nocapture noundef readonly %0) local_unnamed_addr #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr @of_get_next_child(ptr noundef %5, ptr noundef null) #5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %123, label %8

8:                                                ; preds = %12, %1
  %9 = phi ptr [ %14, %12 ], [ %6, %1 ]
  %10 = tail call ptr @of_match_node(ptr noundef nonnull @exynos_wkup_irq_ids, ptr noundef nonnull %9) #5
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = load ptr, ptr %4, align 8
  %14 = tail call ptr @of_get_next_child(ptr noundef %13, ptr noundef nonnull %9) #5
  %15 = icmp eq ptr %14, null
  br i1 %15, label %123, label %8

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.of_device_id, ptr %10, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %0, i32 0, i32 10
  %20 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %0, i32 0, i32 11
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %92, label %23

23:                                               ; preds = %16
  %24 = load ptr, ptr %19, align 4
  br label %25

25:                                               ; preds = %84, %23
  %26 = phi i32 [ %86, %84 ], [ 0, %23 ]
  %27 = phi i32 [ %85, %84 ], [ 0, %23 ]
  %28 = phi ptr [ %87, %84 ], [ %24, %23 ]
  %29 = getelementptr inbounds %struct.samsung_pin_bank, ptr %28, i32 0, i32 6
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %84

32:                                               ; preds = %25
  %33 = tail call ptr @devm_kmemdup(ptr noundef %3, ptr noundef %18, i32 noundef 160, i32 noundef 3264) #5
  %34 = getelementptr inbounds %struct.samsung_pin_bank, ptr %28, i32 0, i32 17
  store ptr %33, ptr %34, align 4
  %35 = icmp eq ptr %33, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  tail call void @of_node_put(ptr noundef nonnull %9) #5
  br label %123

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.samsung_pin_bank, ptr %28, i32 0, i32 9
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.irq_chip, ptr %33, i32 0, i32 1
  store ptr %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.samsung_pin_bank, ptr %28, i32 0, i32 12
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.samsung_pin_bank, ptr %28, i32 0, i32 3
  %44 = load i8, ptr %43, align 4
  %45 = zext i8 %44 to i32
  %46 = icmp eq ptr %42, null
  %47 = getelementptr inbounds %struct.device_node, ptr %42, i32 0, i32 3
  %48 = select i1 %46, ptr null, ptr %47
  %49 = tail call ptr @__irq_domain_add(ptr noundef %48, i32 noundef %45, i32 noundef %45, i32 noundef 0, ptr noundef nonnull @exynos_eint_irqd_ops, ptr noundef %28) #5
  %50 = getelementptr inbounds %struct.samsung_pin_bank, ptr %28, i32 0, i32 14
  store ptr %49, ptr %50, align 4
  %51 = icmp eq ptr %49, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %37
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3) #6
  tail call void @of_node_put(ptr noundef nonnull %9) #5
  br label %123

53:                                               ; preds = %37
  %54 = load ptr, ptr %41, align 4
  %55 = tail call ptr @of_find_property(ptr noundef %54, ptr noundef nonnull @.str.4, ptr noundef null) #5
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  store i32 3, ptr %29, align 4
  %58 = add i32 %27, 1
  br label %84

59:                                               ; preds = %53
  %60 = load i8, ptr %43, align 4
  %61 = zext i8 %60 to i32
  %62 = shl nuw nsw i32 %61, 3
  %63 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %62, i32 noundef 3520) #5
  %64 = icmp eq ptr %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %59
  %66 = load i8, ptr %43, align 4
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %84, label %69

68:                                               ; preds = %59
  tail call void @of_node_put(ptr noundef nonnull %9) #5
  br label %123

69:                                               ; preds = %79, %65
  %70 = phi i32 [ %80, %79 ], [ 0, %65 ]
  %71 = load ptr, ptr %41, align 4
  %72 = tail call i32 @irq_of_parse_and_map(ptr noundef %71, i32 noundef %70) #5
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load ptr, ptr %38, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5, ptr noundef %75, i32 noundef %70) #6
  br label %79

76:                                               ; preds = %69
  %77 = getelementptr %struct.exynos_weint_data, ptr %63, i32 %70
  store i32 %70, ptr %77, align 4
  %78 = getelementptr %struct.exynos_weint_data, ptr %63, i32 %70, i32 1
  store ptr %28, ptr %78, align 4
  tail call void @irq_set_chained_handler_and_data(i32 noundef %72, ptr noundef nonnull @exynos_irq_eint0_15, ptr noundef %77) #5
  br label %79

79:                                               ; preds = %76, %74
  %80 = add nuw nsw i32 %70, 1
  %81 = load i8, ptr %43, align 4
  %82 = zext i8 %81 to i32
  %83 = icmp ult i32 %80, %82
  br i1 %83, label %69, label %84

84:                                               ; preds = %79, %65, %57, %25
  %85 = phi i32 [ %27, %25 ], [ %58, %57 ], [ %27, %65 ], [ %27, %79 ]
  %86 = add nuw i32 %26, 1
  %87 = getelementptr %struct.samsung_pin_bank, ptr %28, i32 1
  %88 = load i32, ptr %20, align 4
  %89 = icmp ult i32 %86, %88
  br i1 %89, label %25, label %90

90:                                               ; preds = %84
  %91 = icmp eq i32 %85, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %90, %16
  tail call void @of_node_put(ptr noundef nonnull %9) #5
  br label %123

93:                                               ; preds = %90
  %94 = tail call i32 @irq_of_parse_and_map(ptr noundef nonnull %9, i32 noundef 0) #5
  tail call void @of_node_put(ptr noundef nonnull %9) #5
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6) #6
  br label %123

97:                                               ; preds = %93
  %98 = shl i32 %85, 2
  %99 = add i32 %98, 4
  %100 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %99, i32 noundef 3520) #5
  %101 = icmp eq ptr %100, null
  br i1 %101, label %123, label %102

102:                                              ; preds = %97
  tail call void @irq_set_chained_handler_and_data(i32 noundef %94, ptr noundef nonnull @exynos_irq_demux_eint16_31, ptr noundef nonnull %100) #5
  %103 = load i32, ptr %20, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %122, label %105

105:                                              ; preds = %102
  %106 = load ptr, ptr %19, align 4
  br label %107

107:                                              ; preds = %117, %105
  %108 = phi i32 [ %118, %117 ], [ 0, %105 ]
  %109 = phi i32 [ %119, %117 ], [ 0, %105 ]
  %110 = phi ptr [ %120, %117 ], [ %106, %105 ]
  %111 = getelementptr inbounds %struct.samsung_pin_bank, ptr %110, i32 0, i32 6
  %112 = load i32, ptr %111, align 4
  %113 = icmp eq i32 %112, 3
  br i1 %113, label %114, label %117

114:                                              ; preds = %107
  %115 = add i32 %108, 1
  %116 = getelementptr %struct.exynos_muxed_weint_data, ptr %100, i32 0, i32 1, i32 %108
  store ptr %110, ptr %116, align 4
  br label %117

117:                                              ; preds = %114, %107
  %118 = phi i32 [ %108, %107 ], [ %115, %114 ]
  %119 = add nuw i32 %109, 1
  %120 = getelementptr %struct.samsung_pin_bank, ptr %110, i32 1
  %121 = icmp eq i32 %119, %103
  br i1 %121, label %122, label %107

122:                                              ; preds = %117, %102
  store i32 %85, ptr %100, align 4
  br label %123

123:                                              ; preds = %122, %97, %96, %92, %68, %52, %36, %12, %1
  %124 = phi i32 [ -12, %68 ], [ -6, %52 ], [ -12, %36 ], [ 0, %122 ], [ 0, %96 ], [ 0, %92 ], [ -12, %97 ], [ -19, %1 ], [ -19, %12 ]
  ret i32 %124
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos_irq_eint0_15(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.irq_common_data, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.exynos_weint_data, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %13(ptr noundef %16) #5
  br label %25

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 7
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %19(ptr noundef %20) #5
  %21 = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  tail call void %22(ptr noundef %20) #5
  br label %25

25:                                               ; preds = %24, %17, %15, %1
  %26 = getelementptr inbounds %struct.samsung_pin_bank, ptr %5, i32 0, i32 14
  %27 = load ptr, ptr %26, align 4
  %28 = load i32, ptr %3, align 4
  %29 = tail call i32 @generic_handle_domain_irq(ptr noundef %27, i32 noundef %28) #5
  %30 = load ptr, ptr %8, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 9
  %34 = load ptr, ptr %33, align 4
  br label %35

35:                                               ; preds = %32, %25
  %36 = phi ptr [ %34, %32 ], [ %30, %25 ]
  %37 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %36(ptr noundef %37) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos_irq_demux_eint16_31(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.irq_common_data, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %11(ptr noundef %14) #5
  br label %23

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %17(ptr noundef %18) #5
  %19 = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  tail call void %20(ptr noundef %18) #5
  br label %23

23:                                               ; preds = %22, %15, %13, %1
  %24 = load i32, ptr %5, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %67, label %26

26:                                               ; preds = %63, %23
  %27 = phi i32 [ %64, %63 ], [ 0, %23 ]
  %28 = getelementptr %struct.exynos_muxed_weint_data, ptr %5, i32 0, i32 1, i32 %27
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.samsung_pin_bank, ptr %29, i32 0, i32 4
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.samsung_pin_bank, ptr %29, i32 0, i32 17
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.exynos_irq_chip, ptr %33, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr i8, ptr %31, i32 %35
  %37 = getelementptr inbounds %struct.samsung_pin_bank, ptr %29, i32 0, i32 8
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr i8, ptr %36, i32 %38
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %41 = load ptr, ptr %30, align 4
  %42 = load ptr, ptr %32, align 4
  %43 = getelementptr inbounds %struct.exynos_irq_chip, ptr %42, i32 0, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr i8, ptr %41, i32 %44
  %46 = load i32, ptr %37, align 4
  %47 = getelementptr i8, ptr %45, i32 %46
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %49 = xor i32 %48, -1
  %50 = and i32 %40, %49
  %51 = getelementptr inbounds %struct.samsung_pin_bank, ptr %29, i32 0, i32 14
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq i32 %50, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %54, %26
  %55 = phi i32 [ %61, %54 ], [ %50, %26 ]
  %56 = tail call i32 @llvm.ctlz.i32(i32 %55, i1 true) #5, !range !12
  %57 = xor i32 %56, 31
  %58 = tail call i32 @generic_handle_domain_irq(ptr noundef %52, i32 noundef %57) #5
  %59 = shl nuw i32 1, %57
  %60 = xor i32 %59, -1
  %61 = and i32 %55, %60
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %54

63:                                               ; preds = %54, %26
  %64 = add nuw i32 %27, 1
  %65 = load i32, ptr %5, align 4
  %66 = icmp ult i32 %64, %65
  br i1 %66, label %26, label %67

67:                                               ; preds = %63, %23
  %68 = load ptr, ptr %6, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 9
  %72 = load ptr, ptr %71, align 4
  br label %73

73:                                               ; preds = %70, %67
  %74 = phi ptr [ %72, %70 ], [ %68, %67 ]
  %75 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %74(ptr noundef %75) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exynos_pinctrl_suspend(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %0, i32 0, i32 11
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %61, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  br label %8

8:                                                ; preds = %55, %5
  %9 = phi i32 [ %57, %55 ], [ 0, %5 ]
  %10 = phi ptr [ %56, %55 ], [ null, %5 ]
  %11 = phi ptr [ %58, %55 ], [ %7, %5 ]
  %12 = getelementptr inbounds %struct.samsung_pin_bank, ptr %11, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %46

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.samsung_pin_bank, ptr %11, i32 0, i32 11
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.samsung_pin_bank, ptr %11, i32 0, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 1792
  %21 = getelementptr inbounds %struct.samsung_pin_bank, ptr %11, i32 0, i32 8
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr i8, ptr %20, i32 %22
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !13
  store i32 %24, ptr %17, align 4
  %25 = getelementptr i8, ptr %19, i32 2048
  %26 = load i32, ptr %21, align 4
  %27 = shl i32 %26, 1
  %28 = getelementptr i8, ptr %25, i32 %27
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !14
  %30 = getelementptr inbounds %struct.exynos_eint_gpio_save, ptr %17, i32 0, i32 1
  store i32 %29, ptr %30, align 4
  %31 = load i32, ptr %21, align 4
  %32 = shl i32 %31, 1
  %33 = getelementptr i8, ptr %19, i32 2052
  %34 = getelementptr i8, ptr %33, i32 %32
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !15
  %36 = getelementptr inbounds %struct.exynos_eint_gpio_save, ptr %17, i32 0, i32 2
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.samsung_pin_bank, ptr %11, i32 0, i32 17
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.exynos_irq_chip, ptr %38, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr i8, ptr %19, i32 %40
  %42 = load i32, ptr %21, align 4
  %43 = getelementptr i8, ptr %41, i32 %42
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !16
  %45 = getelementptr inbounds %struct.exynos_eint_gpio_save, ptr %17, i32 0, i32 3
  store i32 %44, ptr %45, align 4
  br label %55

46:                                               ; preds = %8
  %47 = icmp ne i32 %13, 2
  %48 = icmp ne ptr %10, null
  %49 = select i1 %47, i1 true, i1 %48
  br i1 %49, label %55, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.samsung_pin_bank, ptr %11, i32 0, i32 17
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.exynos_irq_chip, ptr %52, i32 0, i32 6
  %54 = load ptr, ptr %53, align 4
  tail call void %54(ptr noundef %0, ptr noundef %52) #5
  br label %55

55:                                               ; preds = %50, %46, %15
  %56 = phi ptr [ %10, %15 ], [ %10, %46 ], [ %52, %50 ]
  %57 = add nuw i32 %9, 1
  %58 = getelementptr %struct.samsung_pin_bank, ptr %11, i32 1
  %59 = load i32, ptr %2, align 4
  %60 = icmp ult i32 %57, %59
  br i1 %60, label %8, label %61

61:                                               ; preds = %55, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exynos_pinctrl_resume(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %0, i32 0, i32 11
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %52, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  br label %8

8:                                                ; preds = %47, %5
  %9 = phi i32 [ %48, %47 ], [ %3, %5 ]
  %10 = phi i32 [ %49, %47 ], [ 0, %5 ]
  %11 = phi ptr [ %50, %47 ], [ %7, %5 ]
  %12 = getelementptr inbounds %struct.samsung_pin_bank, ptr %11, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %47

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.samsung_pin_bank, ptr %11, i32 0, i32 11
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.samsung_pin_bank, ptr %11, i32 0, i32 4
  %19 = load ptr, ptr %18, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %20 = load i32, ptr %17, align 4
  %21 = getelementptr i8, ptr %19, i32 1792
  %22 = getelementptr inbounds %struct.samsung_pin_bank, ptr %11, i32 0, i32 8
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr i8, ptr %21, i32 %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %20) #5, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !19
  tail call void @arm_heavy_mb() #5
  %25 = getelementptr inbounds %struct.exynos_eint_gpio_save, ptr %17, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr i8, ptr %19, i32 2048
  %28 = load i32, ptr %22, align 4
  %29 = shl i32 %28, 1
  %30 = getelementptr i8, ptr %27, i32 %29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %26) #5, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !20
  tail call void @arm_heavy_mb() #5
  %31 = getelementptr inbounds %struct.exynos_eint_gpio_save, ptr %17, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = load i32, ptr %22, align 4
  %34 = shl i32 %33, 1
  %35 = getelementptr i8, ptr %19, i32 2052
  %36 = getelementptr i8, ptr %35, i32 %34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %32) #5, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !21
  tail call void @arm_heavy_mb() #5
  %37 = getelementptr inbounds %struct.exynos_eint_gpio_save, ptr %17, i32 0, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.samsung_pin_bank, ptr %11, i32 0, i32 17
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.exynos_irq_chip, ptr %40, i32 0, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr i8, ptr %19, i32 %42
  %44 = load i32, ptr %22, align 4
  %45 = getelementptr i8, ptr %43, i32 %44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %38) #5, !srcloc !18
  %46 = load i32, ptr %2, align 4
  br label %47

47:                                               ; preds = %15, %8
  %48 = phi i32 [ %9, %8 ], [ %46, %15 ]
  %49 = add nuw i32 %10, 1
  %50 = getelementptr %struct.samsung_pin_bank, ptr %11, i32 1
  %51 = icmp ult i32 %49, %48
  br i1 %51, label %8, label %52

52:                                               ; preds = %47, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @exynos_retention_init(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 28, i32 noundef 3520) #5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %32, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @exynos_get_pmu_regmap() #5
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %32, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.samsung_retention_ctrl, ptr %5, i32 0, i32 4
  store ptr %8, ptr %11, align 4
  %12 = load ptr, ptr %1, align 4
  store ptr %12, ptr %5, align 4
  %13 = getelementptr inbounds %struct.samsung_retention_data, ptr %1, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.samsung_retention_ctrl, ptr %5, i32 0, i32 1
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.samsung_retention_data, ptr %1, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.samsung_retention_ctrl, ptr %5, i32 0, i32 2
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.samsung_retention_data, ptr %1, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.samsung_retention_ctrl, ptr %5, i32 0, i32 3
  store ptr %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.samsung_retention_ctrl, ptr %5, i32 0, i32 5
  store ptr @exynos_retention_enable, ptr %22, align 4
  %23 = getelementptr inbounds %struct.samsung_retention_ctrl, ptr %5, i32 0, i32 6
  store ptr @exynos_retention_disable, ptr %23, align 4
  %24 = icmp sgt i32 %14, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %25, %10
  %26 = phi i32 [ %30, %25 ], [ 0, %10 ]
  %27 = getelementptr i32, ptr %12, i32 %26
  %28 = load i32, ptr %27, align 4
  %29 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef %28, i32 noundef %17) #5
  %30 = add nuw nsw i32 %26, 1
  %31 = icmp eq i32 %30, %14
  br i1 %31, label %32, label %25

32:                                               ; preds = %25, %10, %7, %2
  %33 = phi ptr [ inttoptr (i32 -12 to ptr), %2 ], [ %8, %7 ], [ %5, %10 ], [ %5, %25 ]
  ret ptr %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @exynos_get_pmu_regmap() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos_retention_enable(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.samsung_retention_ctrl, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %5) #5, !srcloc !22
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 1, ptr nonnull elementtype(i32) %5) #5, !srcloc !23
  br label %9

9:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos_retention_disable(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.samsung_retention_ctrl, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.samsung_retention_ctrl, ptr %3, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %7) #5, !srcloc !22
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %7, ptr nonnull %7, i32 1, ptr nonnull elementtype(i32) %7) #5, !srcloc !25
  %11 = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !26
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %9, %1
  %14 = getelementptr inbounds %struct.samsung_retention_ctrl, ptr %3, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.samsung_retention_ctrl, ptr %3, i32 0, i32 2
  br label %19

19:                                               ; preds = %19, %17
  %20 = phi i32 [ 0, %17 ], [ %26, %19 ]
  %21 = load ptr, ptr %3, align 4
  %22 = getelementptr i32, ptr %21, i32 %20
  %23 = load i32, ptr %22, align 4
  %24 = load i32, ptr %18, align 4
  %25 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %23, i32 noundef %24) #5
  %26 = add nuw nsw i32 %20, 1
  %27 = load i32, ptr %14, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %19, label %29

29:                                               ; preds = %19, %13, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos_irq_ack(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.exynos_irq_chip, ptr %3, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.samsung_pin_bank, ptr %5, i32 0, i32 8
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %11 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = shl nuw i32 1, %12
  %14 = getelementptr inbounds %struct.samsung_pin_bank, ptr %5, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %13) #5, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos_irq_mask(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.exynos_irq_chip, ptr %3, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.samsung_pin_bank, ptr %5, i32 0, i32 8
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, %7
  %11 = getelementptr inbounds %struct.samsung_pin_bank, ptr %5, i32 0, i32 18
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #5
  %13 = getelementptr inbounds %struct.samsung_pin_bank, ptr %5, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 %10
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !28
  %17 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = shl nuw i32 1, %18
  %20 = or i32 %19, %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !29
  tail call void @arm_heavy_mb() #5
  %21 = load ptr, ptr %13, align 4
  %22 = getelementptr i8, ptr %21, i32 %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #5, !srcloc !18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos_irq_unmask(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.exynos_irq_chip, ptr %3, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.samsung_pin_bank, ptr %5, i32 0, i32 8
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.exynos_irq_chip, ptr %3, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %19 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = shl nuw i32 1, %20
  %22 = getelementptr inbounds %struct.samsung_pin_bank, ptr %5, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %21) #5, !srcloc !18
  br label %25

25:                                               ; preds = %15, %1
  %26 = add i32 %9, %7
  %27 = getelementptr inbounds %struct.samsung_pin_bank, ptr %5, i32 0, i32 18
  %28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %27) #5
  %29 = getelementptr inbounds %struct.samsung_pin_bank, ptr %5, i32 0, i32 4
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %30, i32 %26
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !30
  %33 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = shl nuw i32 1, %34
  %36 = xor i32 %35, -1
  %37 = and i32 %32, %36
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  %38 = load ptr, ptr %29, align 4
  %39 = getelementptr i8, ptr %38, i32 %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #5, !srcloc !18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %27, i32 noundef %28) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_irq_set_type(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = shl i32 %8, 2
  %10 = getelementptr inbounds %struct.exynos_irq_chip, ptr %4, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.samsung_pin_bank, ptr %6, i32 0, i32 8
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, %11
  switch i32 %1, label %18 [
    i32 1, label %22
    i32 2, label %15
    i32 3, label %16
    i32 4, label %20
    i32 8, label %17
  ]

15:                                               ; preds = %2
  br label %22

16:                                               ; preds = %2
  br label %22

17:                                               ; preds = %2
  br label %20

18:                                               ; preds = %2
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #6
  br label %39

20:                                               ; preds = %17, %2
  %21 = phi i32 [ 0, %17 ], [ 1, %2 ]
  br label %22

22:                                               ; preds = %20, %16, %15, %2
  %23 = phi ptr [ @handle_level_irq, %20 ], [ @handle_edge_irq, %2 ], [ @handle_edge_irq, %16 ], [ @handle_edge_irq, %15 ]
  %24 = phi i32 [ %21, %20 ], [ 3, %2 ], [ 4, %16 ], [ 2, %15 ]
  %25 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.irq_desc, ptr %26, i32 0, i32 3
  store ptr %23, ptr %27, align 4
  %28 = getelementptr inbounds %struct.samsung_pin_bank, ptr %6, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %29, i32 %14
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !32
  %32 = shl i32 15, %9
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  %35 = shl i32 %24, %9
  %36 = or i32 %34, %35
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !33
  tail call void @arm_heavy_mb() #5
  %37 = load ptr, ptr %28, align 4
  %38 = getelementptr i8, ptr %37, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #5, !srcloc !18
  br label %39

39:                                               ; preds = %22, %18
  %40 = phi i32 [ -22, %18 ], [ 0, %22 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_irq_request_resources(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.samsung_pin_bank, ptr %3, i32 0, i32 15
  %6 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @gpiochip_lock_as_irq(ptr noundef %5, i32 noundef %7) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.samsung_pin_bank, ptr %3, i32 0, i32 15, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.samsung_pin_bank, ptr %3, i32 0, i32 9
  %14 = load ptr, ptr %13, align 4
  %15 = load i32, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.9, ptr noundef %14, i32 noundef %15) #6
  br label %42

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.samsung_pin_bank, ptr %3, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.samsung_pin_bank_type, ptr %4, i32 0, i32 1
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = add i32 %18, %21
  %23 = load i32, ptr %6, align 4
  %24 = load i8, ptr %4, align 1
  %25 = zext i8 %24 to i32
  %26 = mul i32 %23, %25
  %27 = shl nsw i32 -1, %25
  %28 = xor i32 %27, -1
  %29 = getelementptr inbounds %struct.samsung_pin_bank, ptr %3, i32 0, i32 18
  %30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %29) #5
  %31 = getelementptr inbounds %struct.samsung_pin_bank, ptr %3, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %32, i32 %22
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !34
  %35 = shl i32 %28, %26
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = shl i32 15, %26
  %39 = or i32 %37, %38
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !35
  tail call void @arm_heavy_mb() #5
  %40 = load ptr, ptr %31, align 4
  %41 = getelementptr i8, ptr %40, i32 %22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %39) #5, !srcloc !18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %29, i32 noundef %30) #5
  br label %42

42:                                               ; preds = %16, %10
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos_irq_release_resources(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.samsung_pin_bank, ptr %3, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.samsung_pin_bank_type, ptr %4, i32 0, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = add i32 %6, %9
  %11 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = load i8, ptr %4, align 1
  %14 = zext i8 %13 to i32
  %15 = mul i32 %12, %14
  %16 = shl nsw i32 -1, %14
  %17 = xor i32 %16, -1
  %18 = getelementptr inbounds %struct.samsung_pin_bank, ptr %3, i32 0, i32 18
  %19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %18) #5
  %20 = getelementptr inbounds %struct.samsung_pin_bank, ptr %3, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 %10
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !36
  %24 = shl i32 %17, %15
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !37
  tail call void @arm_heavy_mb() #5
  %27 = load ptr, ptr %20, align 4
  %28 = getelementptr i8, ptr %27, i32 %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #5, !srcloc !18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %19) #5
  %29 = getelementptr inbounds %struct.samsung_pin_bank, ptr %3, i32 0, i32 15
  %30 = load i32, ptr %11, align 4
  tail call void @gpiochip_unlock_as_irq(ptr noundef %29, i32 noundef %30) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_lock_as_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_unlock_as_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_eint_irq_map(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @irq_set_chip_data(i32 noundef %1, ptr noundef %5) #5
  %7 = getelementptr inbounds %struct.samsung_pin_bank, ptr %5, i32 0, i32 17
  %8 = load ptr, ptr %7, align 4
  tail call void @irq_set_chip_and_handler_name(i32 noundef %1, ptr noundef %8, ptr noundef nonnull @handle_level_irq, ptr noundef null) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_twocell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_wkup_irq_set_wake(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.samsung_pin_bank, ptr %6, i32 0, i32 8
  %8 = load i32, ptr %7, align 4
  %9 = shl i32 %8, 1
  %10 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %9, %11
  %13 = shl nuw i32 1, %12
  %14 = icmp eq i32 %1, 0
  %15 = select i1 %14, ptr @.str.13, ptr @.str.12
  %16 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull %15, i32 noundef %17) #6
  br i1 %14, label %19, label %24

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.exynos_irq_chip, ptr %4, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = load i32, ptr %21, align 4
  %23 = or i32 %22, %13
  store i32 %23, ptr %21, align 4
  br label %30

24:                                               ; preds = %2
  %25 = xor i32 %13, -1
  %26 = getelementptr inbounds %struct.exynos_irq_chip, ptr %4, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, %25
  store i32 %29, ptr %27, align 4
  br label %30

30:                                               ; preds = %24, %19
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @s5pv210_pinctrl_set_eint_wakeup_mask(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %0, i32 0, i32 14
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.samsung_retention_ctrl, ptr %4, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %6, %2
  %11 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.14) #6
  br label %20

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.exynos_irq_chip, ptr %1, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.exynos_irq_chip, ptr %1, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr i8, ptr %8, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %16) #5, !srcloc !18
  br label %20

20:                                               ; preds = %13, %10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos_pinctrl_set_eint_wakeup_mask(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %0, i32 0, i32 14
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.samsung_retention_ctrl, ptr %4, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %6, %2
  %11 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.14) #6
  br label %24

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.exynos_irq_chip, ptr %1, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = load i32, ptr %17, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %15, ptr noundef nonnull @.str.16, i32 noundef %18) #6
  %19 = getelementptr inbounds %struct.exynos_irq_chip, ptr %1, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = load ptr, ptr %16, align 4
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 @regmap_write(ptr noundef nonnull %8, i32 noundef %20, i32 noundef %22) #5
  br label %24

24:                                               ; preds = %13, %10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
!8 = !{i64 3714204}
!9 = !{i64 2152583106}
!10 = !{i64 2152589574}
!11 = !{i64 2152590031}
!12 = !{i32 0, i32 33}
!13 = !{i64 2152593182}
!14 = !{i64 2152593579}
!15 = !{i64 2152593988}
!16 = !{i64 2152594445}
!17 = !{i64 2152602721}
!18 = !{i64 3713786}
!19 = !{i64 2152603112}
!20 = !{i64 2152603519}
!21 = !{i64 2152603939}
!22 = !{i64 592516, i64 2148094082, i64 2148094108, i64 2148094155, i64 2148094177, i64 2148094205, i64 2148094225}
!23 = !{i64 2148157344, i64 2148157370, i64 2148157399, i64 2148157433, i64 2148157464, i64 2148157487}
!24 = !{i64 2148258023}
!25 = !{i64 2148160385, i64 2148160417, i64 2148160446, i64 2148160480, i64 2148160511, i64 2148160534}
!26 = !{i64 2148258226}
!27 = !{i64 2152577136}
!28 = !{i64 2152576352}
!29 = !{i64 2152576547}
!30 = !{i64 2152577897}
!31 = !{i64 2152578092}
!32 = !{i64 2152579317}
!33 = !{i64 2152579514}
!34 = !{i64 2152580907}
!35 = !{i64 2152581104}
!36 = !{i64 2152582077}
!37 = !{i64 2152582272}
