; ModuleID = '/llk/IR/drivers/thermal/broadcom/brcmstb_thermal.c_pt.bc'
source_filename = "../drivers/thermal/broadcom/brcmstb_thermal.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.brcmstb_thermal_params = type { i32, i32, ptr }
%struct.thermal_zone_of_device_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.brcmstb_thermal_priv = type { ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@brcmstb_thermal_id_table = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,avs-tmon-bcm7216\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @brcmstb_16nm_params }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,avs-tmon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @brcmstb_28nm_params }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_license170 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author171 = internal constant [20 x i8] c"author=Brian Norris\00", section ".modinfo", align 1
@__UNIQUE_ID_description172 = internal constant [49 x i8] c"description=Broadcom STB AVS TMON thermal driver\00", section ".modinfo", align 1
@brcmstb_16nm_params = internal constant %struct.brcmstb_thermal_params { i32 457829, i32 557, ptr @brcmstb_16nm_of_ops }, align 4
@brcmstb_28nm_params = internal constant %struct.brcmstb_thermal_params { i32 410040, i32 487, ptr @brcmstb_28nm_of_ops }, align 4
@brcmstb_16nm_of_ops = internal constant %struct.thermal_zone_of_device_ops { ptr @brcmstb_get_temp, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [19 x i8] c"reading not valid\0A\00", align 1
@brcmstb_28nm_of_ops = internal constant %struct.thermal_zone_of_device_ops { ptr @brcmstb_get_temp, ptr null, ptr @brcmstb_set_trips, ptr null, ptr null }, align 4
@brcmstb_thermal_driver = internal global %struct.platform_driver { ptr @brcmstb_thermal_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @brcmstb_thermal_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.1 = private unnamed_addr constant [16 x i8] c"brcmstb_thermal\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"could not register sensor: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"could not request IRQ: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"registered AVS TMON of-sensor driver\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_license170], section "llvm.metadata"

@__mod_of__brcmstb_thermal_id_table_device_table = dso_local alias [3 x %struct.of_device_id], ptr @brcmstb_thermal_id_table

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @brcmstb_thermal_driver, ptr noundef nonnull @__this_module) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @brcmstb_thermal_driver) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmstb_get_temp(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = load ptr, ptr %0, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #5, !srcloc !8
  %5 = and i32 %4, 2048
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.brcmstb_thermal_priv, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str) #6
  br label %21

10:                                               ; preds = %2
  %11 = lshr i32 %4, 1
  %12 = and i32 %11, 1023
  %13 = getelementptr inbounds %struct.brcmstb_thermal_priv, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.brcmstb_thermal_params, ptr %14, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = mul i32 %17, %12
  %19 = sub i32 %15, %18
  %20 = tail call i32 @llvm.smax.i32(i32 %19, i32 0)
  store i32 %20, ptr %1, align 4
  br label %21

21:                                               ; preds = %10, %7
  %22 = phi i32 [ 0, %10 ], [ -5, %7 ]
  ret i32 %22
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmstb_set_trips(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = icmp slt i32 %1, -2147483646
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr i8, ptr %6, i32 20
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !8
  %9 = and i32 %8, -2
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr i8, ptr %10, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #5, !srcloc !9
  br label %43

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.brcmstb_thermal_priv, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.brcmstb_thermal_params, ptr %14, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp slt i32 %1, -88161
  br i1 %18, label %28, label %19

19:                                               ; preds = %12
  %20 = icmp sgt i32 %15, %1
  br i1 %20, label %21, label %28

21:                                               ; preds = %19
  %22 = xor i32 %1, -1
  %23 = add i32 %15, %22
  %24 = add i32 %23, %17
  %25 = sdiv i32 %24, %17
  %26 = shl i32 %25, 1
  %27 = and i32 %26, 2046
  br label %28

28:                                               ; preds = %21, %19, %12
  %29 = phi i32 [ 2046, %12 ], [ 0, %19 ], [ %27, %21 ]
  %30 = load ptr, ptr %0, align 4
  %31 = getelementptr i8, ptr %30, i32 24
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #5, !srcloc !8
  %33 = and i32 %32, -2047
  %34 = or i32 %33, %29
  %35 = load ptr, ptr %0, align 4
  %36 = getelementptr i8, ptr %35, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #5, !srcloc !9
  %37 = load ptr, ptr %0, align 4
  %38 = getelementptr i8, ptr %37, i32 20
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #5, !srcloc !8
  %40 = or i32 %39, 1
  %41 = load ptr, ptr %0, align 4
  %42 = getelementptr i8, ptr %41, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #5, !srcloc !9
  br label %43

43:                                               ; preds = %28, %5
  %44 = icmp eq i32 %2, 2147483647
  br i1 %44, label %45, label %52

45:                                               ; preds = %43
  %46 = load ptr, ptr %0, align 4
  %47 = getelementptr i8, ptr %46, i32 20
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #5, !srcloc !8
  %49 = and i32 %48, -3
  %50 = load ptr, ptr %0, align 4
  %51 = getelementptr i8, ptr %50, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #5, !srcloc !9
  br label %81

52:                                               ; preds = %43
  %53 = getelementptr inbounds %struct.brcmstb_thermal_priv, ptr %0, i32 0, i32 3
  %54 = load ptr, ptr %53, align 4
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.brcmstb_thermal_params, ptr %54, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = icmp slt i32 %2, -88161
  br i1 %58, label %66, label %59

59:                                               ; preds = %52
  %60 = icmp sgt i32 %55, %2
  br i1 %60, label %61, label %66

61:                                               ; preds = %59
  %62 = sub i32 %55, %2
  %63 = sdiv i32 %62, %57
  %64 = shl i32 %63, 17
  %65 = and i32 %64, 134086656
  br label %66

66:                                               ; preds = %61, %59, %52
  %67 = phi i32 [ 134086656, %52 ], [ 0, %59 ], [ %65, %61 ]
  %68 = load ptr, ptr %0, align 4
  %69 = getelementptr i8, ptr %68, i32 24
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #5, !srcloc !8
  %71 = and i32 %70, -134086657
  %72 = or i32 %71, %67
  %73 = load ptr, ptr %0, align 4
  %74 = getelementptr i8, ptr %73, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %72) #5, !srcloc !9
  %75 = load ptr, ptr %0, align 4
  %76 = getelementptr i8, ptr %75, i32 20
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #5, !srcloc !8
  %78 = or i32 %77, 2
  %79 = load ptr, ptr %0, align 4
  %80 = getelementptr i8, ptr %79, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %78) #5, !srcloc !9
  br label %81

81:                                               ; preds = %66, %45
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmstb_thermal_probe(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 16, i32 noundef 3520) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %33, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @of_device_get_match_data(ptr noundef %2) #5
  %7 = getelementptr inbounds %struct.brcmstb_thermal_priv, ptr %3, i32 0, i32 3
  store ptr %6, ptr %7, align 4
  %8 = icmp eq ptr %6, null
  br i1 %8, label %33, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #5
  %11 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %10) #5
  store ptr %11, ptr %3, align 4
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = ptrtoint ptr %11 to i32
  br label %33

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.brcmstb_thermal_priv, ptr %3, i32 0, i32 1
  store ptr %2, ptr %16, align 4
  %17 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %17, align 8
  %18 = getelementptr inbounds %struct.brcmstb_thermal_params, ptr %6, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = tail call ptr @devm_thermal_zone_of_sensor_register(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %3, ptr noundef %19) #5
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = ptrtoint ptr %20 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef %23) #6
  br label %33

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.brcmstb_thermal_priv, ptr %3, i32 0, i32 2
  store ptr %20, ptr %25, align 4
  %26 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #5
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %26, ptr noundef null, ptr noundef nonnull @brcmstb_tmon_irq_thread, i32 noundef 8192, ptr noundef nonnull @.str.1, ptr noundef nonnull %3) #5
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %29) #6
  br label %33

32:                                               ; preds = %28, %24
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.4) #6
  br label %33

33:                                               ; preds = %32, %31, %22, %13, %5, %1
  %34 = phi i32 [ %14, %13 ], [ %23, %22 ], [ %29, %31 ], [ 0, %32 ], [ -12, %1 ], [ -22, %5 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_thermal_zone_of_sensor_register(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmstb_tmon_irq_thread(i32 noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr i8, ptr %3, i32 24
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #5, !srcloc !8
  %6 = lshr i32 %5, 1
  %7 = and i32 %6, 1023
  %8 = getelementptr inbounds %struct.brcmstb_thermal_priv, ptr %1, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.brcmstb_thermal_params, ptr %9, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = mul i32 %12, %7
  %14 = sub i32 %10, %13
  %15 = load ptr, ptr %1, align 4
  %16 = getelementptr i8, ptr %15, i32 24
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #5, !srcloc !8
  %18 = lshr i32 %17, 17
  %19 = and i32 %18, 1023
  %20 = load ptr, ptr %8, align 4
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.brcmstb_thermal_params, ptr %20, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = mul i32 %23, %19
  %25 = sub i32 %21, %24
  %26 = load ptr, ptr %1, align 4
  %27 = getelementptr i8, ptr %26, i32 28
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #5, !srcloc !8
  %29 = load ptr, ptr %8, align 4
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.brcmstb_thermal_params, ptr %29, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %28, 1023
  %34 = mul i32 %32, %33
  %35 = sub i32 %30, %34
  %36 = icmp slt i32 %35, %25
  br i1 %36, label %44, label %37

37:                                               ; preds = %2
  %38 = load ptr, ptr %1, align 4
  %39 = getelementptr i8, ptr %38, i32 20
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #5, !srcloc !8
  %41 = and i32 %40, -3
  %42 = load ptr, ptr %1, align 4
  %43 = getelementptr i8, ptr %42, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %41) #5, !srcloc !9
  br label %44

44:                                               ; preds = %37, %2
  %45 = icmp sgt i32 %35, %14
  br i1 %45, label %53, label %46

46:                                               ; preds = %44
  %47 = load ptr, ptr %1, align 4
  %48 = getelementptr i8, ptr %47, i32 20
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #5, !srcloc !8
  %50 = and i32 %49, -2
  %51 = load ptr, ptr %1, align 4
  %52 = getelementptr i8, ptr %51, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %50) #5, !srcloc !9
  br label %53

53:                                               ; preds = %46, %44
  %54 = getelementptr inbounds %struct.brcmstb_thermal_priv, ptr %1, i32 0, i32 2
  %55 = load ptr, ptr %54, align 4
  tail call void @thermal_zone_device_update(ptr noundef %55, i32 noundef %35) #5
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_zone_device_update(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{i64 3614464}
!9 = !{i64 3614046}
