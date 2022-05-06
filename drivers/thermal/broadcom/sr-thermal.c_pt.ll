; ModuleID = '/llk/IR/drivers/thermal/broadcom/sr-thermal.c_pt.bc'
source_filename = "../drivers/thermal/broadcom/sr-thermal.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.thermal_zone_of_device_ops = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.sr_thermal = type { ptr, i32, [6 x %struct.sr_tmon] }
%struct.sr_tmon = type { ptr, i32, i32, ptr }

@__initcall__kmod_sr_thermal__162_109_sr_thermal_driver_init6 = internal global ptr @sr_thermal_driver_init, section ".initcall6.init", align 4
@sr_thermal_driver = internal global %struct.platform_driver { ptr @sr_thermal_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sr_thermal_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_sr_thermal_driver_exit = internal global ptr @sr_thermal_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author163 = internal constant [59 x i8] c"sr_thermal.author=Pramod Kumar <pramod.kumar@broadcom.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description164 = internal constant [47 x i8] c"sr_thermal.description=Stingray thermal driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file165 = internal constant [52 x i8] c"sr_thermal.file=drivers/thermal/broadcom/sr-thermal\00", section ".modinfo", align 1
@__UNIQUE_ID_license166 = internal constant [26 x i8] c"sr_thermal.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [11 x i8] c"sr-thermal\00", align 1
@sr_thermal_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,sr-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to get io address\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"brcm,tmon-mask\00", align 1
@sr_tz_ops = internal constant %struct.thermal_zone_of_device_ops { ptr @sr_get_temp, ptr null, ptr null, ptr null, ptr null }, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author163, ptr @__UNIQUE_ID_description164, ptr @__UNIQUE_ID_file165, ptr @__UNIQUE_ID_license166, ptr @__exitcall_sr_thermal_driver_exit, ptr @__initcall__kmod_sr_thermal__162_109_sr_thermal_driver_init6, ptr @sr_thermal_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sr_thermal_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sr_thermal_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sr_thermal_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sr_thermal_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sr_thermal_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 104, i32 noundef 3520) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %105, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #5
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.resource, ptr %7, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = sub i32 1, %8
  %12 = add i32 %11, %10
  %13 = tail call ptr @devm_memremap(ptr noundef %3, i32 noundef %8, i32 noundef %12, i32 noundef 1) #5
  store ptr %13, ptr %4, align 4
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %17

15:                                               ; preds = %6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #6
  %16 = ptrtoint ptr %13 to i32
  br label %105

17:                                               ; preds = %6
  %18 = call i32 @device_property_read_u32_array(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull %2, i32 noundef 1) #5
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %105

20:                                               ; preds = %17
  %21 = load i32, ptr %2, align 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.sr_thermal, ptr %4, i32 0, i32 2
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  call void @arm_heavy_mb() #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 0) #5, !srcloc !9
  %26 = getelementptr inbounds %struct.sr_thermal, ptr %4, i32 0, i32 2, i32 0, i32 2
  store i32 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.sr_thermal, ptr %4, i32 0, i32 2, i32 0, i32 3
  store ptr %4, ptr %27, align 4
  %28 = call ptr @devm_thermal_zone_of_sensor_register(ptr noundef %3, i32 noundef 0, ptr noundef %25, ptr noundef nonnull @sr_tz_ops) #5
  store ptr %28, ptr %25, align 4
  %29 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %32, label %30

30:                                               ; preds = %24
  %31 = load i32, ptr %2, align 4
  br label %35

32:                                               ; preds = %95, %81, %67, %53, %39, %24
  %33 = phi ptr [ %28, %24 ], [ %45, %39 ], [ %59, %53 ], [ %73, %67 ], [ %87, %81 ], [ %101, %95 ]
  %34 = ptrtoint ptr %33 to i32
  br label %105

35:                                               ; preds = %30, %20
  %36 = phi i32 [ %31, %30 ], [ %21, %20 ]
  %37 = and i32 %36, 2
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %35
  %40 = getelementptr %struct.sr_thermal, ptr %4, i32 0, i32 2, i32 1
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  call void @arm_heavy_mb() #5
  %41 = load ptr, ptr %4, align 4
  %42 = getelementptr i8, ptr %41, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 0) #5, !srcloc !9
  %43 = getelementptr %struct.sr_thermal, ptr %4, i32 0, i32 2, i32 1, i32 2
  store i32 1, ptr %43, align 4
  %44 = getelementptr %struct.sr_thermal, ptr %4, i32 0, i32 2, i32 1, i32 3
  store ptr %4, ptr %44, align 4
  %45 = call ptr @devm_thermal_zone_of_sensor_register(ptr noundef %3, i32 noundef 1, ptr noundef %40, ptr noundef nonnull @sr_tz_ops) #5
  store ptr %45, ptr %40, align 4
  %46 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %32, label %47

47:                                               ; preds = %39
  %48 = load i32, ptr %2, align 4
  br label %49

49:                                               ; preds = %47, %35
  %50 = phi i32 [ %48, %47 ], [ %36, %35 ]
  %51 = and i32 %50, 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %49
  %54 = getelementptr %struct.sr_thermal, ptr %4, i32 0, i32 2, i32 2
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  call void @arm_heavy_mb() #5
  %55 = load ptr, ptr %4, align 4
  %56 = getelementptr i8, ptr %55, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 0) #5, !srcloc !9
  %57 = getelementptr %struct.sr_thermal, ptr %4, i32 0, i32 2, i32 2, i32 2
  store i32 2, ptr %57, align 4
  %58 = getelementptr %struct.sr_thermal, ptr %4, i32 0, i32 2, i32 2, i32 3
  store ptr %4, ptr %58, align 4
  %59 = call ptr @devm_thermal_zone_of_sensor_register(ptr noundef %3, i32 noundef 2, ptr noundef %54, ptr noundef nonnull @sr_tz_ops) #5
  store ptr %59, ptr %54, align 4
  %60 = icmp ugt ptr %59, inttoptr (i32 -4096 to ptr)
  br i1 %60, label %32, label %61

61:                                               ; preds = %53
  %62 = load i32, ptr %2, align 4
  br label %63

63:                                               ; preds = %61, %49
  %64 = phi i32 [ %62, %61 ], [ %50, %49 ]
  %65 = and i32 %64, 8
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %77, label %67

67:                                               ; preds = %63
  %68 = getelementptr %struct.sr_thermal, ptr %4, i32 0, i32 2, i32 3
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  call void @arm_heavy_mb() #5
  %69 = load ptr, ptr %4, align 4
  %70 = getelementptr i8, ptr %69, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 0) #5, !srcloc !9
  %71 = getelementptr %struct.sr_thermal, ptr %4, i32 0, i32 2, i32 3, i32 2
  store i32 3, ptr %71, align 4
  %72 = getelementptr %struct.sr_thermal, ptr %4, i32 0, i32 2, i32 3, i32 3
  store ptr %4, ptr %72, align 4
  %73 = call ptr @devm_thermal_zone_of_sensor_register(ptr noundef %3, i32 noundef 3, ptr noundef %68, ptr noundef nonnull @sr_tz_ops) #5
  store ptr %73, ptr %68, align 4
  %74 = icmp ugt ptr %73, inttoptr (i32 -4096 to ptr)
  br i1 %74, label %32, label %75

75:                                               ; preds = %67
  %76 = load i32, ptr %2, align 4
  br label %77

77:                                               ; preds = %75, %63
  %78 = phi i32 [ %76, %75 ], [ %64, %63 ]
  %79 = and i32 %78, 16
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %91, label %81

81:                                               ; preds = %77
  %82 = getelementptr %struct.sr_thermal, ptr %4, i32 0, i32 2, i32 4
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  call void @arm_heavy_mb() #5
  %83 = load ptr, ptr %4, align 4
  %84 = getelementptr i8, ptr %83, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 0) #5, !srcloc !9
  %85 = getelementptr %struct.sr_thermal, ptr %4, i32 0, i32 2, i32 4, i32 2
  store i32 4, ptr %85, align 4
  %86 = getelementptr %struct.sr_thermal, ptr %4, i32 0, i32 2, i32 4, i32 3
  store ptr %4, ptr %86, align 4
  %87 = call ptr @devm_thermal_zone_of_sensor_register(ptr noundef %3, i32 noundef 4, ptr noundef %82, ptr noundef nonnull @sr_tz_ops) #5
  store ptr %87, ptr %82, align 4
  %88 = icmp ugt ptr %87, inttoptr (i32 -4096 to ptr)
  br i1 %88, label %32, label %89

89:                                               ; preds = %81
  %90 = load i32, ptr %2, align 4
  br label %91

91:                                               ; preds = %89, %77
  %92 = phi i32 [ %90, %89 ], [ %78, %77 ]
  %93 = and i32 %92, 32
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %103, label %95

95:                                               ; preds = %91
  %96 = getelementptr %struct.sr_thermal, ptr %4, i32 0, i32 2, i32 5
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  call void @arm_heavy_mb() #5
  %97 = load ptr, ptr %4, align 4
  %98 = getelementptr i8, ptr %97, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 0) #5, !srcloc !9
  %99 = getelementptr %struct.sr_thermal, ptr %4, i32 0, i32 2, i32 5, i32 2
  store i32 5, ptr %99, align 4
  %100 = getelementptr %struct.sr_thermal, ptr %4, i32 0, i32 2, i32 5, i32 3
  store ptr %4, ptr %100, align 4
  %101 = call ptr @devm_thermal_zone_of_sensor_register(ptr noundef %3, i32 noundef 5, ptr noundef %96, ptr noundef nonnull @sr_tz_ops) #5
  store ptr %101, ptr %96, align 4
  %102 = icmp ugt ptr %101, inttoptr (i32 -4096 to ptr)
  br i1 %102, label %32, label %103

103:                                              ; preds = %95, %91
  %104 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %104, align 8
  br label %105

105:                                              ; preds = %103, %32, %17, %15, %1
  %106 = phi i32 [ %16, %15 ], [ %34, %32 ], [ 0, %103 ], [ -12, %1 ], [ %18, %17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  ret i32 %106
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_memremap(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_thermal_zone_of_sensor_register(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sr_get_temp(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.sr_tmon, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sr_tmon, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = shl i32 %7, 2
  %9 = getelementptr i8, ptr %5, i32 %8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  store i32 %10, ptr %1, align 4
  ret i32 0
}

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
!8 = !{i64 2151309252}
!9 = !{i64 3014391}
!10 = !{i64 3014809}
!11 = !{i64 2151308221}
