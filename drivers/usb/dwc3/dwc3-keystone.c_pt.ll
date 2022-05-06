; ModuleID = '/llk/IR/drivers/usb/dwc3/dwc3-keystone.c_pt.bc'
source_filename = "../drivers/usb/dwc3/dwc3-keystone.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.dwc3_keystone = type { ptr, ptr, ptr }

@__initcall__kmod_dwc3_keystone__250_221_kdwc3_driver_init6 = internal global ptr @kdwc3_driver_init, section ".initcall6.init", align 4
@kdwc3_driver = internal global %struct.platform_driver { ptr @kdwc3_probe, ptr @kdwc3_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @kdwc3_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_kdwc3_driver_exit = internal global ptr @kdwc3_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias251 = internal constant [43 x i8] c"dwc3_keystone.alias=platform:keystone-dwc3\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [51 x i8] c"dwc3_keystone.author=WingMan Kwok <w-kwok2@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file253 = internal constant [50 x i8] c"dwc3_keystone.file=drivers/usb/dwc3/dwc3-keystone\00", section ".modinfo", align 1
@__UNIQUE_ID_license254 = internal constant [29 x i8] c"dwc3_keystone.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description255 = internal constant [62 x i8] c"dwc3_keystone.description=DesignWare USB3 KEYSTONE Glue Layer\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [14 x i8] c"keystone-dwc3\00", align 1
@kdwc3_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,keystone-dwc3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am654-dwc3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"usb3-phy\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"couldn't get usb3 phy\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"usb3 phy reset failed: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"usb3 phy init failed: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"usb3 phy power on failed: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"pm_runtime_get_sync failed, error %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"ti,am654-dwc3\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"failed to request IRQ #%d --> %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"failed to create dwc3 core\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias251, ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_description255, ptr @__UNIQUE_ID_file253, ptr @__UNIQUE_ID_license254, ptr @__exitcall_kdwc3_driver_exit, ptr @__initcall__kmod_dwc3_keystone__250_221_kdwc3_driver_init6, ptr @kdwc3_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @kdwc3_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @kdwc3_driver, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @kdwc3_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @kdwc3_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kdwc3_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 12, i32 noundef 3520) #4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %85, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %8, align 8
  store ptr %2, ptr %5, align 4
  %9 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #4
  %10 = getelementptr inbounds %struct.dwc3_keystone, ptr %5, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  %11 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = ptrtoint ptr %9 to i32
  br label %85

14:                                               ; preds = %7
  %15 = tail call ptr @devm_phy_optional_get(ptr noundef %2, ptr noundef nonnull @.str.1) #4
  %16 = getelementptr inbounds %struct.dwc3_keystone, ptr %5, i32 0, i32 2
  store ptr %15, ptr %16, align 4
  %17 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = ptrtoint ptr %15 to i32
  %20 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %2, i32 noundef %19, ptr noundef nonnull @.str.2) #4
  br label %85

21:                                               ; preds = %14
  %22 = tail call i32 @phy_pm_runtime_get_sync(ptr noundef %15) #4
  %23 = load ptr, ptr %16, align 4
  %24 = tail call i32 @phy_reset(ptr noundef %23) #4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %24) #5
  br label %85

27:                                               ; preds = %21
  %28 = load ptr, ptr %16, align 4
  %29 = tail call i32 @phy_init(ptr noundef %28) #4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef %29) #5
  br label %85

32:                                               ; preds = %27
  %33 = load ptr, ptr %16, align 4
  %34 = tail call i32 @phy_power_on(ptr noundef %33) #4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef %34) #5
  %37 = load ptr, ptr %16, align 4
  %38 = tail call i32 @phy_exit(ptr noundef %37) #4
  br label %85

39:                                               ; preds = %32
  %40 = load ptr, ptr %5, align 4
  tail call void @pm_runtime_enable(ptr noundef %40) #4
  %41 = load ptr, ptr %5, align 4
  %42 = tail call i32 @__pm_runtime_resume(ptr noundef %41, i32 noundef 4) #4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.6, i32 noundef %42) #5
  br label %74

46:                                               ; preds = %39
  %47 = tail call i32 @of_device_is_compatible(ptr noundef %4, ptr noundef nonnull @.str.7) #4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %70

49:                                               ; preds = %46
  %50 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %74, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load ptr, ptr %2, align 4
  br label %58

58:                                               ; preds = %56, %52
  %59 = phi ptr [ %57, %56 ], [ %54, %52 ]
  %60 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %50, ptr noundef nonnull @dwc3_keystone_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %59, ptr noundef nonnull %5) #4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %58
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef %50, i32 noundef %60) #5
  br label %74

63:                                               ; preds = %58
  %64 = load ptr, ptr %10, align 4
  %65 = getelementptr i8, ptr %64, i32 40
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %67 = or i32 %66, 1
  %68 = load ptr, ptr %10, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %69 = getelementptr i8, ptr %68, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %67) #4, !srcloc !11
  br label %70

70:                                               ; preds = %63, %46
  %71 = tail call i32 @of_platform_populate(ptr noundef %4, ptr noundef null, ptr noundef null, ptr noundef %2) #4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %85, label %73

73:                                               ; preds = %70
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.9) #5
  tail call fastcc void @kdwc3_disable_irqs(ptr noundef nonnull %5)
  br label %74

74:                                               ; preds = %73, %62, %49, %44
  %75 = phi i32 [ %42, %44 ], [ %71, %73 ], [ %60, %62 ], [ %50, %49 ]
  %76 = load ptr, ptr %5, align 4
  %77 = tail call i32 @__pm_runtime_idle(ptr noundef %76, i32 noundef 4) #4
  %78 = load ptr, ptr %5, align 4
  tail call void @__pm_runtime_disable(ptr noundef %78, i1 noundef zeroext true) #4
  %79 = load ptr, ptr %16, align 4
  %80 = tail call i32 @phy_power_off(ptr noundef %79) #4
  %81 = load ptr, ptr %16, align 4
  %82 = tail call i32 @phy_exit(ptr noundef %81) #4
  %83 = load ptr, ptr %16, align 4
  %84 = tail call i32 @phy_pm_runtime_put_sync(ptr noundef %83) #4
  br label %85

85:                                               ; preds = %74, %70, %36, %31, %26, %18, %12, %1
  %86 = phi i32 [ %13, %12 ], [ %20, %18 ], [ %24, %26 ], [ %29, %31 ], [ %34, %36 ], [ %75, %74 ], [ -12, %1 ], [ 0, %70 ]
  ret i32 %86
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kdwc3_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @of_device_is_compatible(ptr noundef %5, ptr noundef nonnull @.str.7) #4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dwc3_keystone, ptr %3, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 40
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %13 = and i32 %12, -2
  %14 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %15 = getelementptr i8, ptr %14, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #4, !srcloc !11
  br label %16

16:                                               ; preds = %8, %1
  %17 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %18 = tail call i32 @device_for_each_child(ptr noundef %17, ptr noundef null, ptr noundef nonnull @kdwc3_remove_core) #4
  %19 = load ptr, ptr %3, align 4
  %20 = tail call i32 @__pm_runtime_idle(ptr noundef %19, i32 noundef 4) #4
  %21 = load ptr, ptr %3, align 4
  tail call void @__pm_runtime_disable(ptr noundef %21, i1 noundef zeroext true) #4
  %22 = getelementptr inbounds %struct.dwc3_keystone, ptr %3, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @phy_power_off(ptr noundef %23) #4
  %25 = load ptr, ptr %22, align 4
  %26 = tail call i32 @phy_exit(ptr noundef %25) #4
  %27 = load ptr, ptr %22, align 4
  %28 = tail call i32 @phy_pm_runtime_put_sync(ptr noundef %27) #4
  store ptr null, ptr %2, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_optional_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_pm_runtime_get_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_keystone_interrupt(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.dwc3_keystone, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %5 = getelementptr i8, ptr %4, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 1) #4, !srcloc !11
  %6 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %7 = getelementptr i8, ptr %6, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 1) #4, !srcloc !11
  %8 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %9 = getelementptr i8, ptr %8, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 1) #4, !srcloc !11
  %10 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %11 = getelementptr i8, ptr %10, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 1) #4, !srcloc !11
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @kdwc3_disable_irqs(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.dwc3_keystone, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 40
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %6 = and i32 %5, -2
  %7 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %8 = getelementptr i8, ptr %7, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #4, !srcloc !11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_pm_runtime_put_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kdwc3_remove_core(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -16
  tail call void @platform_device_unregister(ptr noundef %3) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

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
!8 = !{i64 3462524}
!9 = !{i64 2153633978}
!10 = !{i64 2153634330}
!11 = !{i64 3462106}
