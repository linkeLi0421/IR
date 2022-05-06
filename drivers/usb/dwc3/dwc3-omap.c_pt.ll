; ModuleID = '/llk/IR/drivers/usb/dwc3/dwc3-omap.c_pt.bc'
source_filename = "../drivers/usb/dwc3/dwc3-omap.c"
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
%struct.dwc3_omap = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, %struct.notifier_block, %struct.notifier_block, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }

@__initcall__kmod_dwc3_omap__254_622_dwc3_omap_driver_init6 = internal global ptr @dwc3_omap_driver_init, section ".initcall6.init", align 4
@dwc3_omap_driver = internal global %struct.platform_driver { ptr @dwc3_omap_probe, ptr @dwc3_omap_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_dwc3_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dwc3_omap_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_dwc3_omap_driver_exit = internal global ptr @dwc3_omap_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias255 = internal constant [35 x i8] c"dwc3_omap.alias=platform:omap-dwc3\00", section ".modinfo", align 1
@__UNIQUE_ID_author256 = internal constant [45 x i8] c"dwc3_omap.author=Felipe Balbi <balbi@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file257 = internal constant [42 x i8] c"dwc3_omap.file=drivers/usb/dwc3/dwc3-omap\00", section ".modinfo", align 1
@__UNIQUE_ID_license258 = internal constant [25 x i8] c"dwc3_omap.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description259 = internal constant [54 x i8] c"dwc3_omap.description=DesignWare USB3 OMAP Glue Layer\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"omap-dwc3\00", align 1
@of_dwc3_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dwc3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am437x-dwc3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@dwc3_omap_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr @dwc3_omap_complete, ptr @dwc3_omap_suspend, ptr @dwc3_omap_resume, ptr @dwc3_omap_suspend, ptr @dwc3_omap_resume, ptr @dwc3_omap_suspend, ptr @dwc3_omap_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"device node not found\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"vbus-supply\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"vbus\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"vbus init failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"get_sync failed with err %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"failed to create dwc3 core\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"dwc3-omap\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"failed to request IRQ #%d --> %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"ti,am437x-dwc3\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"utmi-mode\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"drivers/usb/dwc3/dwc3-omap.c\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"%s %s: UNKNOWN utmi mode %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"extcon\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"regulator enable failed\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias255, ptr @__UNIQUE_ID_author256, ptr @__UNIQUE_ID_description259, ptr @__UNIQUE_ID_file257, ptr @__UNIQUE_ID_license258, ptr @__exitcall_dwc3_omap_driver_exit, ptr @__initcall__kmod_dwc3_omap__254_622_dwc3_omap_driver_init6, ptr @dwc3_omap_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @dwc3_omap_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @dwc3_omap_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @dwc3_omap_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @dwc3_omap_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_omap_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #6
  br label %183

8:                                                ; preds = %1
  %9 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 68, i32 noundef 3520) #5
  %10 = icmp eq ptr %9, null
  br i1 %10, label %183, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %9, ptr %12, align 8
  %13 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #5
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %183, label %15

15:                                               ; preds = %11
  %16 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #5
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = ptrtoint ptr %16 to i32
  br label %183

20:                                               ; preds = %15
  %21 = tail call ptr @of_find_property(ptr noundef nonnull %5, ptr noundef nonnull @.str.2, ptr noundef null) #5
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  %24 = tail call ptr @devm_regulator_get(ptr noundef %3, ptr noundef nonnull @.str.3) #5
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4) #6
  %27 = ptrtoint ptr %24 to i32
  br label %183

28:                                               ; preds = %23, %20
  %29 = phi ptr [ %24, %23 ], [ null, %20 ]
  store ptr %3, ptr %9, align 4
  %30 = getelementptr inbounds %struct.dwc3_omap, ptr %9, i32 0, i32 1
  store i32 %13, ptr %30, align 4
  %31 = getelementptr inbounds %struct.dwc3_omap, ptr %9, i32 0, i32 2
  store ptr %16, ptr %31, align 4
  %32 = getelementptr inbounds %struct.dwc3_omap, ptr %9, i32 0, i32 12
  store ptr %29, ptr %32, align 4
  tail call void @pm_runtime_enable(ptr noundef %3) #5
  %33 = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #5
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef %33) #6
  br label %180

36:                                               ; preds = %28
  %37 = load ptr, ptr %9, align 4
  %38 = getelementptr inbounds %struct.device, ptr %37, i32 0, i32 25
  %39 = load ptr, ptr %38, align 8
  %40 = tail call i32 @of_device_is_compatible(ptr noundef %39, ptr noundef nonnull @.str.9) #5
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.dwc3_omap, ptr %9, i32 0, i32 4
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, 132
  br label %52

46:                                               ; preds = %36
  %47 = getelementptr inbounds %struct.dwc3_omap, ptr %9, i32 0, i32 6
  store i32 8, ptr %47, align 4
  %48 = getelementptr inbounds %struct.dwc3_omap, ptr %9, i32 0, i32 8
  store i32 4, ptr %48, align 4
  %49 = getelementptr inbounds %struct.dwc3_omap, ptr %9, i32 0, i32 5
  store i32 1020, ptr %49, align 4
  %50 = getelementptr inbounds %struct.dwc3_omap, ptr %9, i32 0, i32 4
  store i32 1152, ptr %50, align 4
  %51 = getelementptr inbounds %struct.dwc3_omap, ptr %9, i32 0, i32 7
  store i32 1536, ptr %51, align 4
  br label %52

52:                                               ; preds = %46, %42
  %53 = phi i32 [ %45, %42 ], [ 1284, %46 ]
  %54 = load ptr, ptr %9, align 4
  %55 = getelementptr inbounds %struct.device, ptr %54, i32 0, i32 25
  %56 = load ptr, ptr %55, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4
  %57 = load ptr, ptr %31, align 4
  %58 = getelementptr inbounds %struct.dwc3_omap, ptr %9, i32 0, i32 4
  %59 = getelementptr i8, ptr %57, i32 %53
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %61 = call i32 @of_property_read_variable_u32_array(ptr noundef %56, ptr noundef nonnull @.str.10, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #5
  %62 = load i32, ptr %2, align 4
  switch i32 %62, label %67 [
    i32 2, label %63
    i32 1, label %65
  ]

63:                                               ; preds = %52
  %64 = or i32 %60, -2147483648
  br label %79

65:                                               ; preds = %52
  %66 = and i32 %60, 2147483647
  br label %79

67:                                               ; preds = %52
  %68 = load ptr, ptr %9, align 4
  %69 = call ptr @dev_driver_string(ptr noundef %68) #5
  %70 = load ptr, ptr %9, align 4
  %71 = getelementptr inbounds %struct.device, ptr %70, i32 0, i32 3
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = load ptr, ptr %70, align 4
  br label %76

76:                                               ; preds = %74, %67
  %77 = phi ptr [ %75, %74 ], [ %72, %67 ]
  %78 = load i32, ptr %2, align 4
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 407, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef %69, ptr noundef %77, i32 noundef %78) #5
  br label %79

79:                                               ; preds = %76, %65, %63
  %80 = phi i32 [ %60, %76 ], [ %66, %65 ], [ %64, %63 ]
  %81 = load ptr, ptr %31, align 4
  %82 = load i32, ptr %58, align 4
  %83 = add i32 %82, 132
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %84 = getelementptr i8, ptr %81, i32 %83
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %80) #5, !srcloc !11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  %85 = load ptr, ptr %9, align 4
  %86 = getelementptr inbounds %struct.device, ptr %85, i32 0, i32 25
  %87 = load ptr, ptr %86, align 8
  %88 = call ptr @of_find_property(ptr noundef %87, ptr noundef nonnull @.str.13, ptr noundef null) #5
  %89 = icmp eq ptr %88, null
  br i1 %89, label %159, label %90

90:                                               ; preds = %79
  %91 = load ptr, ptr %9, align 4
  %92 = call ptr @extcon_get_edev_by_phandle(ptr noundef %91, i32 noundef 0) #5
  %93 = icmp ugt ptr %92, inttoptr (i32 -4096 to ptr)
  br i1 %93, label %180, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.dwc3_omap, ptr %9, i32 0, i32 10
  store ptr @dwc3_omap_vbus_notifier, ptr %95, align 4
  %96 = load ptr, ptr %9, align 4
  %97 = call i32 @devm_extcon_register_notifier(ptr noundef %96, ptr noundef %92, i32 noundef 1, ptr noundef %95) #5
  %98 = getelementptr inbounds %struct.dwc3_omap, ptr %9, i32 0, i32 11
  store ptr @dwc3_omap_id_notifier, ptr %98, align 4
  %99 = load ptr, ptr %9, align 4
  %100 = call i32 @devm_extcon_register_notifier(ptr noundef %99, ptr noundef %92, i32 noundef 2, ptr noundef %98) #5
  %101 = call i32 @extcon_get_state(ptr noundef %92, i32 noundef 1) #5
  %102 = icmp eq i32 %101, 1
  %103 = load ptr, ptr %31, align 4
  %104 = load i32, ptr %58, align 4
  %105 = add i32 %104, 132
  %106 = getelementptr i8, ptr %103, i32 %105
  %107 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %106) #5
  call void asm sideeffect "dsb ", "~{memory}"() #5
  %108 = and i32 %107, -15
  br i1 %102, label %109, label %115

109:                                              ; preds = %94
  %110 = or i32 %108, 6
  %111 = load ptr, ptr %31, align 4
  %112 = load i32, ptr %58, align 4
  %113 = add i32 %112, 132
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %114 = getelementptr i8, ptr %111, i32 %113
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %114, i32 %110) #5, !srcloc !11
  br label %121

115:                                              ; preds = %94
  %116 = or i32 %108, 8
  %117 = load ptr, ptr %31, align 4
  %118 = load i32, ptr %58, align 4
  %119 = add i32 %118, 132
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %120 = getelementptr i8, ptr %117, i32 %119
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 %116) #5, !srcloc !11
  br label %121

121:                                              ; preds = %115, %109
  %122 = call i32 @extcon_get_state(ptr noundef %92, i32 noundef 2) #5
  %123 = icmp eq i32 %122, 1
  %124 = load ptr, ptr %32, align 4
  %125 = icmp eq ptr %124, null
  br i1 %123, label %126, label %143

126:                                              ; preds = %121
  br i1 %125, label %132, label %127

127:                                              ; preds = %126
  %128 = call i32 @regulator_enable(ptr noundef nonnull %124) #5
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %127
  %131 = load ptr, ptr %9, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %131, ptr noundef nonnull @.str.14) #6
  br label %157

132:                                              ; preds = %127, %126
  %133 = load ptr, ptr %31, align 4
  %134 = load i32, ptr %58, align 4
  %135 = add i32 %134, 132
  %136 = getelementptr i8, ptr %133, i32 %135
  %137 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %136) #5, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %138 = and i32 %137, -17
  %139 = load ptr, ptr %31, align 4
  %140 = load i32, ptr %58, align 4
  %141 = add i32 %140, 132
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %142 = getelementptr i8, ptr %139, i32 %141
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %142, i32 %138) #5, !srcloc !11
  br label %157

143:                                              ; preds = %121
  br i1 %125, label %146, label %144

144:                                              ; preds = %143
  %145 = call i32 @regulator_disable(ptr noundef nonnull %124) #5
  br label %146

146:                                              ; preds = %144, %143
  %147 = load ptr, ptr %31, align 4
  %148 = load i32, ptr %58, align 4
  %149 = add i32 %148, 132
  %150 = getelementptr i8, ptr %147, i32 %149
  %151 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %150) #5, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %152 = or i32 %151, 16
  %153 = load ptr, ptr %31, align 4
  %154 = load i32, ptr %58, align 4
  %155 = add i32 %154, 132
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %156 = getelementptr i8, ptr %153, i32 %155
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %156, i32 %152) #5, !srcloc !11
  br label %157

157:                                              ; preds = %146, %132, %130
  %158 = getelementptr inbounds %struct.dwc3_omap, ptr %9, i32 0, i32 9
  store ptr %92, ptr %158, align 4
  br label %159

159:                                              ; preds = %157, %79
  %160 = call i32 @of_platform_populate(ptr noundef nonnull %5, ptr noundef null, ptr noundef null, ptr noundef %3) #5
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %163, label %162

162:                                              ; preds = %159
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6) #6
  br label %180

163:                                              ; preds = %159
  %164 = load i32, ptr %30, align 4
  %165 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %164, ptr noundef nonnull @dwc3_omap_interrupt, ptr noundef nonnull @dwc3_omap_interrupt_thread, i32 noundef 128, ptr noundef nonnull @.str.7, ptr noundef nonnull %9) #5
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %169, label %167

167:                                              ; preds = %163
  %168 = load i32, ptr %30, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.8, i32 noundef %168, i32 noundef %165) #6
  br label %180

169:                                              ; preds = %163
  %170 = load ptr, ptr %31, align 4
  %171 = getelementptr inbounds %struct.dwc3_omap, ptr %9, i32 0, i32 8
  %172 = load i32, ptr %171, align 4
  %173 = sub i32 44, %172
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %174 = getelementptr i8, ptr %170, i32 %173
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %174, i32 1) #5, !srcloc !11
  %175 = load ptr, ptr %31, align 4
  %176 = getelementptr inbounds %struct.dwc3_omap, ptr %9, i32 0, i32 5
  %177 = load i32, ptr %176, align 4
  %178 = add i32 %177, 60
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %179 = getelementptr i8, ptr %175, i32 %178
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %179, i32 80185) #5, !srcloc !11
  br label %183

180:                                              ; preds = %167, %162, %90, %35
  %181 = phi i32 [ %33, %35 ], [ %160, %162 ], [ %165, %167 ], [ -517, %90 ]
  %182 = call i32 @__pm_runtime_idle(ptr noundef %3, i32 noundef 4) #5
  call void @__pm_runtime_disable(ptr noundef %3, i1 noundef zeroext true) #5
  br label %183

183:                                              ; preds = %180, %169, %26, %18, %11, %8, %7
  %184 = phi i32 [ %19, %18 ], [ %27, %26 ], [ %181, %180 ], [ 0, %169 ], [ -22, %7 ], [ -12, %8 ], [ %13, %11 ]
  ret i32 %184
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_omap_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dwc3_omap, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dwc3_omap, ptr %3, i32 0, i32 8
  %7 = load i32, ptr %6, align 4
  %8 = sub i32 48, %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %9 = getelementptr i8, ptr %5, i32 %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 1) #5, !srcloc !11
  %10 = load ptr, ptr %4, align 4
  %11 = getelementptr inbounds %struct.dwc3_omap, ptr %3, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, 64
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %14 = getelementptr i8, ptr %10, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 80185) #5, !srcloc !11
  %15 = getelementptr inbounds %struct.dwc3_omap, ptr %3, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  tail call void @disable_irq(i32 noundef %16) #5
  %17 = load ptr, ptr %3, align 4
  tail call void @of_platform_depopulate(ptr noundef %17) #5
  %18 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %19 = tail call i32 @__pm_runtime_idle(ptr noundef %18, i32 noundef 4) #5
  tail call void @__pm_runtime_disable(ptr noundef %18, i1 noundef zeroext true) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_omap_interrupt(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.dwc3_omap, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dwc3_omap, ptr %1, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, 52
  %8 = getelementptr i8, ptr %4, i32 %7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr inbounds %struct.dwc3_omap, ptr %1, i32 0, i32 8
  %14 = load i32, ptr %13, align 4
  %15 = sub i32 36, %14
  %16 = getelementptr i8, ptr %12, i32 %15
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %11, %2
  %20 = load ptr, ptr %3, align 4
  %21 = getelementptr inbounds %struct.dwc3_omap, ptr %1, i32 0, i32 8
  %22 = load i32, ptr %21, align 4
  %23 = sub i32 48, %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %24 = getelementptr i8, ptr %20, i32 %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 1) #5, !srcloc !11
  %25 = load ptr, ptr %3, align 4
  %26 = load i32, ptr %5, align 4
  %27 = add i32 %26, 64
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %28 = getelementptr i8, ptr %25, i32 %27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 80185) #5, !srcloc !11
  br label %29

29:                                               ; preds = %19, %11
  %30 = phi i32 [ 2, %19 ], [ 0, %11 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_omap_interrupt_thread(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.dwc3_omap, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dwc3_omap, ptr %1, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, 52
  %8 = getelementptr i8, ptr %4, i32 %7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %10 = load ptr, ptr %3, align 4
  %11 = load i32, ptr %5, align 4
  %12 = add i32 %11, 56
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %13 = getelementptr i8, ptr %10, i32 %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %9) #5, !srcloc !11
  %14 = load ptr, ptr %3, align 4
  %15 = getelementptr inbounds %struct.dwc3_omap, ptr %1, i32 0, i32 8
  %16 = load i32, ptr %15, align 4
  %17 = sub i32 36, %16
  %18 = getelementptr i8, ptr %14, i32 %17
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %20 = load ptr, ptr %3, align 4
  %21 = load i32, ptr %15, align 4
  %22 = sub i32 40, %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %23 = getelementptr i8, ptr %20, i32 %22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %19) #5, !srcloc !11
  %24 = load ptr, ptr %3, align 4
  %25 = load i32, ptr %15, align 4
  %26 = sub i32 44, %25
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %27 = getelementptr i8, ptr %24, i32 %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 1) #5, !srcloc !11
  %28 = load ptr, ptr %3, align 4
  %29 = load i32, ptr %5, align 4
  %30 = add i32 %29, 60
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %31 = getelementptr i8, ptr %28, i32 %30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 80185) #5, !srcloc !11
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @extcon_get_edev_by_phandle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_omap_vbus_notifier(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readnone %2) #2 {
  %4 = icmp eq i32 %1, 0
  %5 = getelementptr i8, ptr %0, i32 -32
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %0, i32 -24
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 132
  %10 = getelementptr i8, ptr %6, i32 %9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #5
  tail call void asm sideeffect "dsb ", "~{memory}"() #5
  %12 = and i32 %11, -15
  br i1 %4, label %19, label %13

13:                                               ; preds = %3
  %14 = or i32 %12, 6
  %15 = load ptr, ptr %5, align 4
  %16 = load i32, ptr %7, align 4
  %17 = add i32 %16, 132
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %18 = getelementptr i8, ptr %15, i32 %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %14) #5, !srcloc !11
  br label %25

19:                                               ; preds = %3
  %20 = or i32 %12, 8
  %21 = load ptr, ptr %5, align 4
  %22 = load i32, ptr %7, align 4
  %23 = add i32 %22, 132
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %24 = getelementptr i8, ptr %21, i32 %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %20) #5, !srcloc !11
  br label %25

25:                                               ; preds = %19, %13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_extcon_register_notifier(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_omap_id_notifier(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readnone %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 -52
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr i8, ptr %0, i32 12
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %5, label %28, label %9

9:                                                ; preds = %3
  br i1 %8, label %15, label %10

10:                                               ; preds = %9
  %11 = tail call i32 @regulator_enable(ptr noundef nonnull %7) #5
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.14) #6
  br label %44

15:                                               ; preds = %10, %9
  %16 = getelementptr i8, ptr %0, i32 -44
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %0, i32 -36
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, 132
  %21 = getelementptr i8, ptr %17, i32 %20
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %23 = and i32 %22, -17
  %24 = load ptr, ptr %16, align 4
  %25 = load i32, ptr %18, align 4
  %26 = add i32 %25, 132
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %27 = getelementptr i8, ptr %24, i32 %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %23) #5, !srcloc !11
  br label %44

28:                                               ; preds = %3
  br i1 %8, label %31, label %29

29:                                               ; preds = %28
  %30 = tail call i32 @regulator_disable(ptr noundef nonnull %7) #5
  br label %31

31:                                               ; preds = %29, %28
  %32 = getelementptr i8, ptr %0, i32 -44
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %0, i32 -36
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, 132
  %37 = getelementptr i8, ptr %33, i32 %36
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %39 = or i32 %38, 16
  %40 = load ptr, ptr %32, align 4
  %41 = load i32, ptr %34, align 4
  %42 = add i32 %41, 132
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %43 = getelementptr i8, ptr %40, i32 %42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %39) #5, !srcloc !11
  br label %44

44:                                               ; preds = %31, %15, %13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_get_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_platform_depopulate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwc3_omap_complete(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dwc3_omap, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @extcon_get_state(ptr noundef %5, i32 noundef 1) #5
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds %struct.dwc3_omap, ptr %3, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dwc3_omap, ptr %3, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, 132
  %13 = getelementptr i8, ptr %9, i32 %12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #5
  tail call void asm sideeffect "dsb ", "~{memory}"() #5
  %15 = and i32 %14, -15
  br i1 %7, label %22, label %16

16:                                               ; preds = %1
  %17 = or i32 %15, 6
  %18 = load ptr, ptr %8, align 4
  %19 = load i32, ptr %10, align 4
  %20 = add i32 %19, 132
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %21 = getelementptr i8, ptr %18, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %17) #5, !srcloc !11
  br label %28

22:                                               ; preds = %1
  %23 = or i32 %15, 8
  %24 = load ptr, ptr %8, align 4
  %25 = load i32, ptr %10, align 4
  %26 = add i32 %25, 132
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %27 = getelementptr i8, ptr %24, i32 %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %23) #5, !srcloc !11
  br label %28

28:                                               ; preds = %22, %16
  %29 = load ptr, ptr %4, align 4
  %30 = tail call i32 @extcon_get_state(ptr noundef %29, i32 noundef 2) #5
  %31 = icmp eq i32 %30, 0
  %32 = getelementptr inbounds %struct.dwc3_omap, ptr %3, i32 0, i32 12
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %31, label %54, label %35

35:                                               ; preds = %28
  br i1 %34, label %41, label %36

36:                                               ; preds = %35
  %37 = tail call i32 @regulator_enable(ptr noundef nonnull %33) #5
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.14) #6
  br label %70

41:                                               ; preds = %36, %35
  %42 = getelementptr inbounds %struct.dwc3_omap, ptr %3, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.dwc3_omap, ptr %3, i32 0, i32 4
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, 132
  %47 = getelementptr i8, ptr %43, i32 %46
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %49 = and i32 %48, -17
  %50 = load ptr, ptr %42, align 4
  %51 = load i32, ptr %44, align 4
  %52 = add i32 %51, 132
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %53 = getelementptr i8, ptr %50, i32 %52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %49) #5, !srcloc !11
  br label %70

54:                                               ; preds = %28
  br i1 %34, label %57, label %55

55:                                               ; preds = %54
  %56 = tail call i32 @regulator_disable(ptr noundef nonnull %33) #5
  br label %57

57:                                               ; preds = %55, %54
  %58 = getelementptr inbounds %struct.dwc3_omap, ptr %3, i32 0, i32 2
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.dwc3_omap, ptr %3, i32 0, i32 4
  %61 = load i32, ptr %60, align 4
  %62 = add i32 %61, 132
  %63 = getelementptr i8, ptr %59, i32 %62
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %65 = or i32 %64, 16
  %66 = load ptr, ptr %58, align 4
  %67 = load i32, ptr %60, align 4
  %68 = add i32 %67, 132
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %69 = getelementptr i8, ptr %66, i32 %68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %65) #5, !srcloc !11
  br label %70

70:                                               ; preds = %57, %41, %39
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_omap_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dwc3_omap, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dwc3_omap, ptr %3, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, 132
  %9 = getelementptr i8, ptr %5, i32 %8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %11 = getelementptr inbounds %struct.dwc3_omap, ptr %3, i32 0, i32 3
  store i32 %10, ptr %11, align 4
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr inbounds %struct.dwc3_omap, ptr %3, i32 0, i32 8
  %14 = load i32, ptr %13, align 4
  %15 = sub i32 48, %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %16 = getelementptr i8, ptr %12, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 1) #5, !srcloc !11
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr inbounds %struct.dwc3_omap, ptr %3, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, 64
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %21 = getelementptr i8, ptr %17, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 80185) #5, !srcloc !11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_omap_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dwc3_omap, ptr %3, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dwc3_omap, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dwc3_omap, ptr %3, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, 132
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %11 = getelementptr i8, ptr %7, i32 %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %5) #5, !srcloc !11
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr inbounds %struct.dwc3_omap, ptr %3, i32 0, i32 8
  %14 = load i32, ptr %13, align 4
  %15 = sub i32 44, %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %16 = getelementptr i8, ptr %12, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 1) #5, !srcloc !11
  %17 = load ptr, ptr %6, align 4
  %18 = getelementptr inbounds %struct.dwc3_omap, ptr %3, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, 60
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %21 = getelementptr i8, ptr %17, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 80185) #5, !srcloc !11
  tail call void @__pm_runtime_disable(ptr noundef %0, i1 noundef zeroext true) #5
  %22 = tail call i32 @__pm_runtime_set_status(ptr noundef %0, i32 noundef 0) #5
  tail call void @pm_runtime_enable(ptr noundef %0) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{i64 3060102}
!9 = !{i64 2153822257}
!10 = !{i64 2153822609}
!11 = !{i64 3059684}
