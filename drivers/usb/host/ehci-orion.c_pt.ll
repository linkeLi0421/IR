; ModuleID = '/llk/IR/drivers/usb/host/ehci-orion.c_pt.bc'
source_filename = "../drivers/usb/host/ehci-orion.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ehci_driver_overrides = type { i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.71, i32 }
%union.anon.71 = type { ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.mbus_dram_target_info = type { i8, i32, [4 x %struct.mbus_dram_window] }
%struct.mbus_dram_window = type { i8, i8, i64, i64 }

@__initcall__kmod_ehci_orion__254_369_ehci_orion_init6 = internal global ptr @ehci_orion_init, section ".initcall6.init", align 4
@ehci_orion_driver = internal global %struct.platform_driver { ptr @ehci_orion_drv_probe, ptr @ehci_orion_drv_remove, ptr @usb_hcd_platform_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ehci_orion_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ehci_orion_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_ehci_orion_cleanup = internal global ptr @ehci_orion_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_description255 = internal constant [41 x i8] c"ehci_orion.description=EHCI orion driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias256 = internal constant [37 x i8] c"ehci_orion.alias=platform:orion-ehci\00", section ".modinfo", align 1
@__UNIQUE_ID_author257 = internal constant [36 x i8] c"ehci_orion.author=Tzachi Perelstein\00", section ".modinfo", align 1
@__UNIQUE_ID_file258 = internal constant [44 x i8] c"ehci_orion.file=drivers/usb/host/ehci-orion\00", section ".modinfo", align 1
@__UNIQUE_ID_license259 = internal constant [26 x i8] c"ehci_orion.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [25 x i8] c"\016%s: EHCI orion driver\0A\00", align 1
@hcd_name = internal constant [11 x i8] c"ehci-orion\00", align 1
@ehci_orion_hc_driver = internal global %struct.hc_driver zeroinitializer, section ".data..read_mostly", align 4
@orion_overrides = internal constant %struct.ehci_driver_overrides { i32 8, ptr @ehci_orion_drv_reset, ptr null }, section ".init.rodata", align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"marvell,armada-3700-ehci\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"orion-ehci\00", align 1
@ehci_orion_dt_ids = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,orion-ehci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-3700-ehci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@ehci_orion_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @ehci_orion_drv_suspend, ptr @ehci_orion_drv_resume, ptr @ehci_orion_drv_suspend, ptr @ehci_orion_drv_resume, ptr @ehci_orion_drv_suspend, ptr @ehci_orion_drv_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"usb\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"USB phy version isn't supported.\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"init %s fail, %d\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias256, ptr @__UNIQUE_ID_author257, ptr @__UNIQUE_ID_description255, ptr @__UNIQUE_ID_file258, ptr @__UNIQUE_ID_license259, ptr @__exitcall_ehci_orion_cleanup, ptr @__initcall__kmod_ehci_orion__254_369_ehci_orion_init6, ptr @ehci_orion_cleanup], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ehci_orion_init() #0 section ".init.text" {
  %1 = tail call i32 @usb_disabled() #4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @hcd_name) #5
  tail call void @ehci_init_driver(ptr noundef nonnull @ehci_orion_hc_driver, ptr noundef nonnull @orion_overrides) #4
  %5 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ehci_orion_driver, ptr noundef null) #4
  br label %6

6:                                                ; preds = %3, %0
  %7 = phi i32 [ %5, %3 ], [ -19, %0 ]
  ret i32 %7
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @ehci_orion_cleanup() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @ehci_orion_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_disabled() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ehci_init_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ehci_orion_drv_reset(ptr noundef %0) #3 {
  %2 = load ptr, ptr %0, align 8
  %3 = tail call i32 @ehci_setup(ptr noundef %0) #4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @of_device_is_compatible(ptr noundef %7, ptr noundef nonnull @.str.1) #4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 16
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr i8, ptr %12, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 219) #4, !srcloc !8
  br label %14

14:                                               ; preds = %10, %5, %1
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ehci_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ehci_orion_drv_probe(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @usb_disabled() #4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %230

7:                                                ; preds = %1
  %8 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #4
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %221, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 17
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 16
  store ptr %11, ptr %12, align 4
  %13 = tail call i32 @dma_set_mask(ptr noundef %2, i64 noundef 4294967295) #4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %221

15:                                               ; preds = %10
  %16 = tail call i32 @dma_set_coherent_mask(ptr noundef %2, i64 noundef 4294967295) #4
  %17 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #4
  %18 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %17) #4
  %19 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = ptrtoint ptr %18 to i32
  br label %221

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load ptr, ptr %2, align 4
  br label %28

28:                                               ; preds = %26, %22
  %29 = phi ptr [ %27, %26 ], [ %24, %22 ]
  %30 = tail call ptr @usb_create_hcd(ptr noundef nonnull @ehci_orion_hc_driver, ptr noundef %2, ptr noundef %29) #4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %221, label %32

32:                                               ; preds = %28
  %33 = load i32, ptr %17, align 4
  %34 = getelementptr inbounds %struct.usb_hcd, ptr %30, i32 0, i32 17
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.resource, ptr %17, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = load i32, ptr %17, align 4
  %38 = add i32 %36, 1
  %39 = sub i32 %38, %37
  %40 = getelementptr inbounds %struct.usb_hcd, ptr %30, i32 0, i32 18
  store i32 %39, ptr %40, align 8
  %41 = getelementptr inbounds %struct.usb_hcd, ptr %30, i32 0, i32 16
  store ptr %18, ptr %41, align 8
  %42 = getelementptr i8, ptr %18, i32 256
  %43 = getelementptr inbounds %struct.usb_hcd, ptr %30, i32 1, i32 8
  store ptr %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.usb_hcd, ptr %30, i32 0, i32 14
  %45 = load i16, ptr %44, align 8
  %46 = or i16 %45, 128
  store i16 %46, ptr %44, align 8
  %47 = getelementptr inbounds %struct.usb_hcd, ptr %30, i32 2, i32 20, i32 3, i32 4
  %48 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #4
  store ptr %48, ptr %47, align 4
  %49 = icmp ugt ptr %48, inttoptr (i32 -4096 to ptr)
  br i1 %49, label %56, label %50

50:                                               ; preds = %32
  %51 = tail call i32 @clk_prepare(ptr noundef %48) #4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %219

53:                                               ; preds = %50
  %54 = tail call i32 @clk_enable(ptr noundef %48) #4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %216

56:                                               ; preds = %53, %32
  %57 = tail call ptr @devm_phy_optional_get(ptr noundef %2, ptr noundef nonnull @.str.3) #4
  %58 = getelementptr inbounds %struct.usb_hcd, ptr %30, i32 2, i32 20, i32 3, i32 5
  store ptr %57, ptr %58, align 4
  %59 = icmp ule ptr %57, inttoptr (i32 -4096 to ptr)
  %60 = ptrtoint ptr %57 to i32
  %61 = icmp eq ptr %57, inttoptr (i32 -38 to ptr)
  %62 = or i1 %59, %61
  br i1 %62, label %63, label %211

63:                                               ; preds = %56
  %64 = tail call ptr @mv_mbus_dram_info() #4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %118, label %66

66:                                               ; preds = %63
  %67 = load ptr, ptr %41, align 8
  %68 = getelementptr i8, ptr %67, i32 800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 0) #4, !srcloc !8
  %69 = load ptr, ptr %41, align 8
  %70 = getelementptr i8, ptr %69, i32 804
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 0) #4, !srcloc !8
  %71 = load ptr, ptr %41, align 8
  %72 = getelementptr i8, ptr %71, i32 816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 0) #4, !srcloc !8
  %73 = load ptr, ptr %41, align 8
  %74 = getelementptr i8, ptr %73, i32 820
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 0) #4, !srcloc !8
  %75 = load ptr, ptr %41, align 8
  %76 = getelementptr i8, ptr %75, i32 832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 0) #4, !srcloc !8
  %77 = load ptr, ptr %41, align 8
  %78 = getelementptr i8, ptr %77, i32 836
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 0) #4, !srcloc !8
  %79 = load ptr, ptr %41, align 8
  %80 = getelementptr i8, ptr %79, i32 848
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 0) #4, !srcloc !8
  %81 = load ptr, ptr %41, align 8
  %82 = getelementptr i8, ptr %81, i32 852
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 0) #4, !srcloc !8
  %83 = getelementptr inbounds %struct.mbus_dram_target_info, ptr %64, i32 0, i32 1
  %84 = load i32, ptr %83, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %118

86:                                               ; preds = %66
  %87 = getelementptr inbounds %struct.mbus_dram_target_info, ptr %64, i32 0, i32 2
  br label %88

88:                                               ; preds = %88, %86
  %89 = phi i32 [ 0, %86 ], [ %115, %88 ]
  %90 = getelementptr %struct.mbus_dram_window, ptr %87, i32 %89, i32 3
  %91 = load i64, ptr %90, align 8
  %92 = getelementptr %struct.mbus_dram_window, ptr %87, i32 %89, i32 1
  %93 = load i8, ptr %92, align 1
  %94 = zext i8 %93 to i32
  %95 = shl nuw nsw i32 %94, 8
  %96 = load i8, ptr %64, align 8
  %97 = zext i8 %96 to i32
  %98 = shl nuw nsw i32 %97, 4
  %99 = trunc i64 %91 to i32
  %100 = add i32 %99, -1
  %101 = and i32 %100, -65536
  %102 = or i32 %101, %95
  %103 = or i32 %102, %98
  %104 = or i32 %103, 1
  %105 = load ptr, ptr %41, align 8
  %106 = shl i32 %89, 4
  %107 = add i32 %106, 800
  %108 = getelementptr i8, ptr %105, i32 %107
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %108, i32 %104) #4, !srcloc !8
  %109 = getelementptr %struct.mbus_dram_window, ptr %87, i32 %89, i32 2
  %110 = load i64, ptr %109, align 8
  %111 = trunc i64 %110 to i32
  %112 = load ptr, ptr %41, align 8
  %113 = add i32 %106, 804
  %114 = getelementptr i8, ptr %112, i32 %113
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %114, i32 %111) #4, !srcloc !8
  %115 = add nuw nsw i32 %89, 1
  %116 = load i32, ptr %83, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %88, label %118

118:                                              ; preds = %88, %66, %63
  %119 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %120 = load ptr, ptr %119, align 8
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %205

122:                                              ; preds = %118
  %123 = load i32, ptr %4, align 4
  switch i32 %123, label %204 [
    i32 3, label %205
    i32 0, label %124
  ]

124:                                              ; preds = %122
  %125 = load ptr, ptr %41, align 8
  %126 = getelementptr i8, ptr %125, i32 784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %126, i32 0) #4, !srcloc !8
  %127 = load ptr, ptr %41, align 8
  %128 = getelementptr i8, ptr %127, i32 788
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 0) #4, !srcloc !8
  %129 = load ptr, ptr %41, align 8
  %130 = getelementptr i8, ptr %129, i32 320
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %130) #4, !srcloc !9
  %132 = or i32 %131, 2
  %133 = load ptr, ptr %41, align 8
  %134 = getelementptr i8, ptr %133, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %134, i32 %132) #4, !srcloc !8
  br label %135

135:                                              ; preds = %135, %124
  %136 = load ptr, ptr %41, align 8
  %137 = getelementptr i8, ptr %136, i32 320
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %137) #4, !srcloc !9
  %139 = and i32 %138, 2
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %135

141:                                              ; preds = %135
  %142 = load ptr, ptr %41, align 8
  %143 = getelementptr i8, ptr %142, i32 864
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %143) #4, !srcloc !9
  %145 = and i32 %144, -32513
  %146 = or i32 %145, 3072
  %147 = load ptr, ptr %41, align 8
  %148 = getelementptr i8, ptr %147, i32 864
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %148, i32 %146) #4, !srcloc !8
  %149 = load ptr, ptr %41, align 8
  %150 = getelementptr i8, ptr %149, i32 1024
  %151 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %150) #4, !srcloc !9
  %152 = and i32 %151, -193
  %153 = or i32 %152, 64
  %154 = load ptr, ptr %41, align 8
  %155 = getelementptr i8, ptr %154, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %155, i32 %153) #4, !srcloc !8
  %156 = load ptr, ptr %41, align 8
  %157 = getelementptr i8, ptr %156, i32 1056
  %158 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %157) #4, !srcloc !9
  %159 = and i32 %158, -2105465
  %160 = or i32 %159, 2105408
  %161 = load ptr, ptr %41, align 8
  %162 = getelementptr i8, ptr %161, i32 1056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %162, i32 %160) #4, !srcloc !8
  %163 = load ptr, ptr %41, align 8
  %164 = getelementptr i8, ptr %163, i32 1072
  %165 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %164) #4, !srcloc !9
  %166 = and i32 %165, 870317071
  %167 = or i32 %166, -1073741808
  %168 = load ptr, ptr %41, align 8
  %169 = getelementptr i8, ptr %168, i32 1072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %169, i32 %167) #4, !srcloc !8
  %170 = load ptr, ptr %41, align 8
  %171 = getelementptr i8, ptr %170, i32 1088
  %172 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %171) #4, !srcloc !9
  %173 = and i32 %172, -524340
  %174 = or i32 %173, 50
  %175 = load ptr, ptr %41, align 8
  %176 = getelementptr i8, ptr %175, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %176, i32 %174) #4, !srcloc !8
  %177 = load ptr, ptr %41, align 8
  %178 = getelementptr i8, ptr %177, i32 1104
  %179 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %178) #4, !srcloc !9
  %180 = and i32 %179, -32769
  %181 = load ptr, ptr %41, align 8
  %182 = getelementptr i8, ptr %181, i32 1104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %182, i32 %180) #4, !srcloc !8
  %183 = load ptr, ptr %41, align 8
  %184 = getelementptr i8, ptr %183, i32 320
  %185 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %184) #4, !srcloc !9
  %186 = and i32 %185, -2
  %187 = load ptr, ptr %41, align 8
  %188 = getelementptr i8, ptr %187, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %188, i32 %186) #4, !srcloc !8
  %189 = load ptr, ptr %41, align 8
  %190 = getelementptr i8, ptr %189, i32 320
  %191 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %190) #4, !srcloc !9
  %192 = or i32 %191, 2
  %193 = load ptr, ptr %41, align 8
  %194 = getelementptr i8, ptr %193, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %194, i32 %192) #4, !srcloc !8
  br label %195

195:                                              ; preds = %195, %141
  %196 = load ptr, ptr %41, align 8
  %197 = getelementptr i8, ptr %196, i32 320
  %198 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %197) #4, !srcloc !9
  %199 = and i32 %198, 2
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %195

201:                                              ; preds = %195
  %202 = load ptr, ptr %41, align 8
  %203 = getelementptr i8, ptr %202, i32 424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %203, i32 19) #4, !srcloc !8
  br label %205

204:                                              ; preds = %122
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.4) #5
  br label %205

205:                                              ; preds = %204, %201, %122, %118
  %206 = tail call i32 @usb_add_hcd(ptr noundef nonnull %30, i32 noundef %8, i32 noundef 128) #4
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %205
  %209 = load ptr, ptr %30, align 8
  %210 = tail call i32 @device_wakeup_enable(ptr noundef %209) #4
  br label %230

211:                                              ; preds = %205, %56
  %212 = phi i32 [ %206, %205 ], [ %60, %56 ]
  %213 = load ptr, ptr %47, align 4
  %214 = icmp ugt ptr %213, inttoptr (i32 -4096 to ptr)
  br i1 %214, label %219, label %215

215:                                              ; preds = %211
  tail call void @clk_disable(ptr noundef %213) #4
  br label %216

216:                                              ; preds = %215, %53
  %217 = phi ptr [ %213, %215 ], [ %48, %53 ]
  %218 = phi i32 [ %212, %215 ], [ %54, %53 ]
  tail call void @clk_unprepare(ptr noundef %217) #4
  br label %219

219:                                              ; preds = %216, %211, %50
  %220 = phi i32 [ %212, %211 ], [ %51, %50 ], [ %218, %216 ]
  tail call void @usb_put_hcd(ptr noundef nonnull %30) #4
  br label %221

221:                                              ; preds = %219, %28, %20, %10, %7
  %222 = phi i32 [ %21, %20 ], [ %220, %219 ], [ -19, %7 ], [ -12, %28 ], [ %13, %10 ]
  %223 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %224 = load ptr, ptr %223, align 4
  %225 = icmp eq ptr %224, null
  br i1 %225, label %226, label %228

226:                                              ; preds = %221
  %227 = load ptr, ptr %2, align 4
  br label %228

228:                                              ; preds = %226, %221
  %229 = phi ptr [ %227, %226 ], [ %224, %221 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5, ptr noundef %229, i32 noundef %222) #5
  br label %230

230:                                              ; preds = %228, %208, %1
  %231 = phi i32 [ %222, %228 ], [ 0, %208 ], [ -19, %1 ]
  ret i32 %231
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ehci_orion_drv_remove(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 20, i32 3, i32 4
  tail call void @usb_remove_hcd(ptr noundef %3) #4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @clk_disable(ptr noundef %5) #4
  tail call void @clk_unprepare(ptr noundef %5) #4
  br label %8

8:                                                ; preds = %7, %1
  tail call void @usb_put_hcd(ptr noundef %3) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_platform_shutdown(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_create_hcd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_optional_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mv_mbus_dram_info() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_hcd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ehci_orion_drv_suspend(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %5 = load i16, ptr %4, align 4
  %6 = and i16 %5, 1
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %10 = load ptr, ptr %9, align 8
  %11 = icmp ne ptr %10, null
  br label %12

12:                                               ; preds = %8, %1
  %13 = phi i1 [ false, %1 ], [ %11, %8 ]
  %14 = tail call i32 @ehci_suspend(ptr noundef %3, i1 noundef zeroext %13) #4
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ehci_orion_drv_resume(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @ehci_resume(ptr noundef %3, i1 noundef zeroext false) #4
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ehci_suspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ehci_resume(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 4790782}
!9 = !{i64 4791200}
