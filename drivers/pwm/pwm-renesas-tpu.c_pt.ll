; ModuleID = '/llk/IR/drivers/pwm/pwm-renesas-tpu.c_pt.bc'
source_filename = "../drivers/pwm/pwm-renesas-tpu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pwm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.tpu_device = type { ptr, %struct.pwm_chip, %struct.spinlock, ptr, ptr }
%struct.pwm_chip = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }
%struct.tpu_pwm_device = type { i8, ptr, i32, i32, i32, i16, i16 }

@__initcall__kmod_pwm_renesas_tpu__167_457_tpu_driver_init6 = internal global ptr @tpu_driver_init, section ".initcall6.init", align 4
@tpu_driver = internal global %struct.platform_driver { ptr @tpu_probe, ptr @tpu_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tpu_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_tpu_driver_exit = internal global ptr @tpu_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author168 = internal constant [76 x i8] c"pwm_renesas_tpu.author=Laurent Pinchart <laurent.pinchart@ideasonboard.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description169 = internal constant [51 x i8] c"pwm_renesas_tpu.description=Renesas TPU PWM Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file170 = internal constant [49 x i8] c"pwm_renesas_tpu.file=drivers/pwm/pwm-renesas-tpu\00", section ".modinfo", align 1
@__UNIQUE_ID_license171 = internal constant [31 x i8] c"pwm_renesas_tpu.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias172 = internal constant [47 x i8] c"pwm_renesas_tpu.alias=platform:renesas-tpu-pwm\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [16 x i8] c"renesas-tpu-pwm\00", align 1
@tpu_of_table = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,tpu-r8a73a4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,tpu-r8a7740\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,tpu-r8a7790\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,tpu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"cannot get clock\0A\00", align 1
@tpu_pwm_ops = internal constant %struct.pwm_ops { ptr @tpu_pwm_request, ptr @tpu_pwm_free, ptr null, ptr null, ptr null, ptr null, ptr @tpu_pwm_config, ptr @tpu_pwm_set_polarity, ptr @tpu_pwm_enable, ptr @tpu_pwm_disable }, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to register PWM chip\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@tpu_pwm_config.prescalers = internal unnamed_addr constant [4 x i32] [i32 1, i32 4, i32 16, i32 64], align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"clock rate mismatch\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"cannot enable clock\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias172, ptr @__UNIQUE_ID_author168, ptr @__UNIQUE_ID_description169, ptr @__UNIQUE_ID_file170, ptr @__UNIQUE_ID_license171, ptr @__exitcall_tpu_driver_exit, ptr @__initcall__kmod_pwm_renesas_tpu__167_457_tpu_driver_init6, ptr @tpu_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tpu_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @tpu_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @tpu_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @tpu_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tpu_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 52, i32 noundef 3520) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tpu_device, ptr %3, i32 0, i32 2
  store i32 0, ptr %6, align 4
  store ptr %0, ptr %3, align 4
  %7 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #6
  %8 = getelementptr inbounds %struct.tpu_device, ptr %3, i32 0, i32 3
  store ptr %7, ptr %8, align 4
  %9 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = ptrtoint ptr %7 to i32
  br label %26

12:                                               ; preds = %5
  %13 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #6
  %14 = getelementptr inbounds %struct.tpu_device, ptr %3, i32 0, i32 4
  store ptr %13, ptr %14, align 4
  %15 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #7
  %17 = ptrtoint ptr %13 to i32
  br label %26

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %19, align 8
  %20 = getelementptr inbounds %struct.tpu_device, ptr %3, i32 0, i32 1
  store ptr %2, ptr %20, align 4
  %21 = getelementptr inbounds %struct.tpu_device, ptr %3, i32 0, i32 1, i32 1
  store ptr @tpu_pwm_ops, ptr %21, align 4
  %22 = getelementptr inbounds %struct.tpu_device, ptr %3, i32 0, i32 1, i32 3
  store i32 4, ptr %22, align 4
  tail call void @pm_runtime_enable(ptr noundef %2) #6
  %23 = tail call i32 @pwmchip_add(ptr noundef %20) #6
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #7
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #6
  br label %26

26:                                               ; preds = %25, %18, %16, %10, %1
  %27 = phi i32 [ %11, %10 ], [ %17, %16 ], [ %23, %25 ], [ -12, %1 ], [ 0, %18 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tpu_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tpu_device, ptr %3, i32 0, i32 1
  tail call void @pwmchip_remove(ptr noundef %4) #6
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %5, i1 noundef zeroext true) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwmchip_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tpu_pwm_request(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 2
  %5 = load i32, ptr %4, align 8
  %6 = icmp ugt i32 %5, 3
  br i1 %6, label %17, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 24) #8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.tpu_pwm_device, ptr %9, i32 0, i32 1
  store ptr %3, ptr %12, align 4
  %13 = load i32, ptr %4, align 8
  %14 = getelementptr inbounds %struct.tpu_pwm_device, ptr %9, i32 0, i32 2
  store i32 %13, ptr %14, align 8
  %15 = getelementptr inbounds %struct.tpu_pwm_device, ptr %9, i32 0, i32 3
  store i8 0, ptr %9, align 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(12) %15, i8 0, i64 12, i1 false)
  %16 = tail call i32 @pwm_set_chip_data(ptr noundef %1, ptr noundef nonnull %9) #6
  br label %17

17:                                               ; preds = %11, %7, %2
  %18 = phi i32 [ 0, %11 ], [ -22, %2 ], [ -12, %7 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tpu_pwm_free(ptr nocapture noundef readnone %0, ptr noundef %1) #2 {
  %3 = tail call ptr @pwm_get_chip_data(ptr noundef %1) #6
  tail call fastcc void @tpu_pwm_timer_stop(ptr noundef %3)
  tail call void @kfree(ptr noundef %3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tpu_pwm_config(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = tail call ptr @pwm_get_chip_data(ptr noundef %1) #6
  %6 = getelementptr i8, ptr %0, i32 -4
  %7 = getelementptr i8, ptr %0, i32 44
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @clk_get_rate(ptr noundef %8) #6
  %10 = sdiv i32 1000000000, %3
  %11 = udiv i32 %9, %10
  %12 = icmp ult i32 %11, 65536
  br i1 %12, label %25, label %13

13:                                               ; preds = %4
  %14 = lshr i32 %9, 2
  %15 = udiv i32 %14, %10
  %16 = icmp ult i32 %15, 65536
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  %18 = lshr i32 %9, 4
  %19 = udiv i32 %18, %10
  %20 = icmp ult i32 %19, 65536
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = lshr i32 %9, 6
  %23 = udiv i32 %22, %10
  %24 = icmp ult i32 %23, 65536
  br i1 %24, label %25, label %30

25:                                               ; preds = %21, %17, %13, %4
  %26 = phi i32 [ %9, %4 ], [ %14, %13 ], [ %18, %17 ], [ %22, %21 ]
  %27 = phi i32 [ %11, %4 ], [ %15, %13 ], [ %19, %17 ], [ %23, %21 ]
  %28 = phi i32 [ 0, %4 ], [ 1, %13 ], [ 2, %17 ], [ 3, %21 ]
  %29 = icmp ugt i32 %10, %26
  br i1 %29, label %30, label %33

30:                                               ; preds = %25, %21
  %31 = load ptr, ptr %6, align 4
  %32 = getelementptr inbounds %struct.platform_device, ptr %31, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.3) #7
  br label %90

33:                                               ; preds = %25
  %34 = icmp eq i32 %2, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %33
  %36 = getelementptr [4 x i32], ptr @tpu_pwm_config.prescalers, i32 0, i32 %28
  %37 = load i32, ptr %36, align 4
  %38 = udiv i32 %9, %37
  %39 = sdiv i32 1000000000, %2
  %40 = udiv i32 %38, %39
  %41 = icmp ugt i32 %40, %27
  br i1 %41, label %90, label %42

42:                                               ; preds = %35, %33
  %43 = phi i32 [ %40, %35 ], [ 0, %33 ]
  %44 = getelementptr inbounds %struct.tpu_pwm_device, ptr %5, i32 0, i32 4
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, %28
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.tpu_pwm_device, ptr %5, i32 0, i32 5
  %49 = load i16, ptr %48, align 4
  store i32 %28, ptr %44, align 4
  %50 = trunc i32 %27 to i16
  store i16 %50, ptr %48, align 4
  %51 = trunc i32 %43 to i16
  %52 = getelementptr inbounds %struct.tpu_pwm_device, ptr %5, i32 0, i32 6
  store i16 %51, ptr %52, align 2
  %53 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 7, i32 3
  %54 = load i8, ptr %53, align 4
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %90, label %64

56:                                               ; preds = %42
  store i32 %28, ptr %44, align 4
  %57 = trunc i32 %27 to i16
  %58 = getelementptr inbounds %struct.tpu_pwm_device, ptr %5, i32 0, i32 5
  store i16 %57, ptr %58, align 4
  %59 = trunc i32 %43 to i16
  %60 = getelementptr inbounds %struct.tpu_pwm_device, ptr %5, i32 0, i32 6
  store i16 %59, ptr %60, align 2
  %61 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 7, i32 3
  %62 = load i8, ptr %61, align 4
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %90, label %81

64:                                               ; preds = %47
  %65 = zext i16 %49 to i32
  %66 = icmp eq i32 %27, %65
  br i1 %66, label %67, label %81

67:                                               ; preds = %64
  %68 = load i8, ptr %5, align 4, !range !8
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %81, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.tpu_pwm_device, ptr %5, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.tpu_device, ptr %72, i32 0, i32 3
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr i8, ptr %74, i32 16
  %76 = getelementptr inbounds %struct.tpu_pwm_device, ptr %5, i32 0, i32 2
  %77 = load i32, ptr %76, align 4
  %78 = shl i32 %77, 6
  %79 = getelementptr i8, ptr %75, i32 %78
  %80 = getelementptr i8, ptr %79, i32 24
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %80, i16 %51) #6, !srcloc !10
  br label %84

81:                                               ; preds = %67, %64, %56
  %82 = tail call fastcc i32 @tpu_pwm_timer_start(ptr noundef %5)
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %81, %70
  %85 = icmp eq i32 %43, 0
  %86 = icmp eq i32 %43, %27
  %87 = select i1 %85, i1 true, i1 %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = select i1 %85, i32 0, i32 2
  tail call fastcc void @tpu_pwm_set_pin(ptr noundef %5, i32 noundef %89)
  tail call fastcc void @tpu_pwm_timer_stop(ptr noundef %5)
  br label %90

90:                                               ; preds = %88, %84, %81, %56, %47, %35, %30
  %91 = phi i32 [ -524, %30 ], [ -22, %35 ], [ 0, %47 ], [ %82, %81 ], [ 0, %84 ], [ 0, %88 ], [ 0, %56 ]
  ret i32 %91
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tpu_pwm_set_polarity(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @pwm_get_chip_data(ptr noundef %1) #6
  %5 = getelementptr inbounds %struct.tpu_pwm_device, ptr %4, i32 0, i32 3
  store i32 %2, ptr %5, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tpu_pwm_enable(ptr nocapture noundef readnone %0, ptr noundef %1) #2 {
  %3 = tail call ptr @pwm_get_chip_data(ptr noundef %1) #6
  %4 = tail call fastcc i32 @tpu_pwm_timer_start(ptr noundef %3)
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tpu_pwm_device, ptr %3, i32 0, i32 6
  %8 = load i16, ptr %7, align 2
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.tpu_pwm_device, ptr %3, i32 0, i32 5
  %12 = load i16, ptr %11, align 4
  %13 = icmp eq i16 %8, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10, %6
  %15 = phi i32 [ 2, %10 ], [ 0, %6 ]
  tail call fastcc void @tpu_pwm_set_pin(ptr noundef %3, i32 noundef %15)
  tail call fastcc void @tpu_pwm_timer_stop(ptr noundef %3)
  br label %16

16:                                               ; preds = %14, %10, %2
  %17 = phi i32 [ %4, %2 ], [ 0, %14 ], [ 0, %10 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tpu_pwm_disable(ptr nocapture noundef readnone %0, ptr noundef %1) #2 {
  %3 = tail call ptr @pwm_get_chip_data(ptr noundef %1) #6
  %4 = tail call fastcc i32 @tpu_pwm_timer_start(ptr noundef %3)
  %5 = getelementptr inbounds %struct.tpu_pwm_device, ptr %3, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 1
  %8 = select i1 %7, i16 4, i16 0
  %9 = getelementptr inbounds %struct.tpu_pwm_device, ptr %3, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tpu_device, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 16
  %14 = getelementptr inbounds %struct.tpu_pwm_device, ptr %3, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = shl i32 %15, 6
  %17 = getelementptr i8, ptr %13, i32 %16
  %18 = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %18, i16 %8) #6, !srcloc !10
  tail call fastcc void @tpu_pwm_timer_stop(ptr noundef %3)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwm_set_chip_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pwm_get_chip_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tpu_pwm_timer_stop(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = load i8, ptr %0, align 4, !range !8
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %31, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tpu_pwm_device, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tpu_device, ptr %6, i32 0, i32 2
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #6
  %9 = load ptr, ptr %5, align 4
  %10 = getelementptr inbounds %struct.tpu_device, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %11) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %13 = getelementptr inbounds %struct.tpu_pwm_device, ptr %0, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = shl nuw i32 1, %14
  %16 = trunc i32 %15 to i16
  %17 = xor i16 %16, -1
  %18 = and i16 %12, %17
  %19 = load ptr, ptr %5, align 4
  %20 = getelementptr inbounds %struct.tpu_device, ptr %19, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %21, i16 %18) #6, !srcloc !10
  %22 = load ptr, ptr %5, align 4
  %23 = getelementptr inbounds %struct.tpu_device, ptr %22, i32 0, i32 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %23, i32 noundef %8) #6
  %24 = load ptr, ptr %5, align 4
  %25 = getelementptr inbounds %struct.tpu_device, ptr %24, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  tail call void @clk_disable(ptr noundef %26) #6
  tail call void @clk_unprepare(ptr noundef %26) #6
  %27 = load ptr, ptr %5, align 4
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.platform_device, ptr %28, i32 0, i32 3
  %30 = tail call i32 @__pm_runtime_idle(ptr noundef %29, i32 noundef 5) #6
  store i8 0, ptr %0, align 4
  br label %31

31:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tpu_pwm_timer_start(ptr noundef %0) unnamed_addr #2 {
  %2 = load i8, ptr %0, align 4, !range !8
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %25

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tpu_pwm_device, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %9 = tail call i32 @__pm_runtime_resume(ptr noundef %8, i32 noundef 4) #6
  %10 = load ptr, ptr %5, align 4
  %11 = getelementptr inbounds %struct.tpu_device, ptr %10, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @clk_prepare(ptr noundef %12) #6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = tail call i32 @clk_enable(ptr noundef %12) #6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  tail call void @clk_unprepare(ptr noundef %12) #6
  br label %19

19:                                               ; preds = %18, %4
  %20 = phi i32 [ %16, %18 ], [ %13, %4 ]
  %21 = load ptr, ptr %5, align 4
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.platform_device, ptr %22, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.4) #7
  br label %123

24:                                               ; preds = %15
  store i8 1, ptr %0, align 4
  br label %25

25:                                               ; preds = %24, %1
  %26 = getelementptr inbounds %struct.tpu_pwm_device, ptr %0, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 1
  %29 = select i1 %28, i16 4, i16 0
  %30 = getelementptr inbounds %struct.tpu_pwm_device, ptr %0, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.tpu_device, ptr %31, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %33, i32 16
  %35 = getelementptr inbounds %struct.tpu_pwm_device, ptr %0, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = shl i32 %36, 6
  %38 = getelementptr i8, ptr %34, i32 %37
  %39 = getelementptr i8, ptr %38, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %39, i16 %29) #6, !srcloc !10
  %40 = load ptr, ptr %30, align 4
  %41 = getelementptr inbounds %struct.tpu_device, ptr %40, i32 0, i32 2
  %42 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %41) #6
  %43 = load ptr, ptr %30, align 4
  %44 = getelementptr inbounds %struct.tpu_device, ptr %43, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %45) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %47 = load i32, ptr %35, align 4
  %48 = shl nuw i32 1, %47
  %49 = trunc i32 %48 to i16
  %50 = xor i16 %49, -1
  %51 = and i16 %46, %50
  %52 = load ptr, ptr %30, align 4
  %53 = getelementptr inbounds %struct.tpu_device, ptr %52, i32 0, i32 3
  %54 = load ptr, ptr %53, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %54, i16 %51) #6, !srcloc !10
  %55 = load ptr, ptr %30, align 4
  %56 = getelementptr inbounds %struct.tpu_device, ptr %55, i32 0, i32 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %56, i32 noundef %42) #6
  %57 = getelementptr inbounds %struct.tpu_pwm_device, ptr %0, i32 0, i32 4
  %58 = load i32, ptr %57, align 4
  %59 = trunc i32 %58 to i16
  %60 = or i16 %59, 64
  %61 = load ptr, ptr %30, align 4
  %62 = getelementptr inbounds %struct.tpu_device, ptr %61, i32 0, i32 3
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr i8, ptr %63, i32 16
  %65 = load i32, ptr %35, align 4
  %66 = shl i32 %65, 6
  %67 = getelementptr i8, ptr %64, i32 %66
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %67, i16 %60) #6, !srcloc !10
  %68 = load ptr, ptr %30, align 4
  %69 = getelementptr inbounds %struct.tpu_device, ptr %68, i32 0, i32 3
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr i8, ptr %70, i32 16
  %72 = load i32, ptr %35, align 4
  %73 = shl i32 %72, 6
  %74 = getelementptr i8, ptr %71, i32 %73
  %75 = getelementptr i8, ptr %74, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %75, i16 2) #6, !srcloc !10
  %76 = load i32, ptr %26, align 4
  %77 = icmp eq i32 %76, 1
  %78 = select i1 %77, i16 2, i16 5
  %79 = load ptr, ptr %30, align 4
  %80 = getelementptr inbounds %struct.tpu_device, ptr %79, i32 0, i32 3
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr i8, ptr %81, i32 16
  %83 = load i32, ptr %35, align 4
  %84 = shl i32 %83, 6
  %85 = getelementptr i8, ptr %82, i32 %84
  %86 = getelementptr i8, ptr %85, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %86, i16 %78) #6, !srcloc !10
  %87 = getelementptr inbounds %struct.tpu_pwm_device, ptr %0, i32 0, i32 6
  %88 = load i16, ptr %87, align 2
  %89 = load ptr, ptr %30, align 4
  %90 = getelementptr inbounds %struct.tpu_device, ptr %89, i32 0, i32 3
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr i8, ptr %91, i32 16
  %93 = load i32, ptr %35, align 4
  %94 = shl i32 %93, 6
  %95 = getelementptr i8, ptr %92, i32 %94
  %96 = getelementptr i8, ptr %95, i32 24
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %96, i16 %88) #6, !srcloc !10
  %97 = getelementptr inbounds %struct.tpu_pwm_device, ptr %0, i32 0, i32 5
  %98 = load i16, ptr %97, align 4
  %99 = load ptr, ptr %30, align 4
  %100 = getelementptr inbounds %struct.tpu_device, ptr %99, i32 0, i32 3
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr i8, ptr %101, i32 16
  %103 = load i32, ptr %35, align 4
  %104 = shl i32 %103, 6
  %105 = getelementptr i8, ptr %102, i32 %104
  %106 = getelementptr i8, ptr %105, i32 28
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %106, i16 %98) #6, !srcloc !10
  %107 = load ptr, ptr %30, align 4
  %108 = getelementptr inbounds %struct.tpu_device, ptr %107, i32 0, i32 2
  %109 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %108) #6
  %110 = load ptr, ptr %30, align 4
  %111 = getelementptr inbounds %struct.tpu_device, ptr %110, i32 0, i32 3
  %112 = load ptr, ptr %111, align 4
  %113 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %112) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %114 = load i32, ptr %35, align 4
  %115 = shl nuw i32 1, %114
  %116 = trunc i32 %115 to i16
  %117 = or i16 %113, %116
  %118 = load ptr, ptr %30, align 4
  %119 = getelementptr inbounds %struct.tpu_device, ptr %118, i32 0, i32 3
  %120 = load ptr, ptr %119, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %120, i16 %117) #6, !srcloc !10
  %121 = load ptr, ptr %30, align 4
  %122 = getelementptr inbounds %struct.tpu_device, ptr %121, i32 0, i32 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %122, i32 noundef %109) #6
  br label %123

123:                                              ; preds = %25, %19
  %124 = phi i32 [ 0, %25 ], [ %20, %19 ]
  ret i32 %124
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tpu_pwm_set_pin(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  switch i32 %1, label %48 [
    i32 0, label %3
    i32 1, label %18
    i32 2, label %33
  ]

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.tpu_pwm_device, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 1
  %7 = select i1 %6, i16 4, i16 0
  %8 = getelementptr inbounds %struct.tpu_pwm_device, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tpu_device, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 16
  %13 = getelementptr inbounds %struct.tpu_pwm_device, ptr %0, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = shl i32 %14, 6
  %16 = getelementptr i8, ptr %12, i32 %15
  %17 = getelementptr i8, ptr %16, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %17, i16 %7) #6, !srcloc !10
  br label %48

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.tpu_pwm_device, ptr %0, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 1
  %22 = select i1 %21, i16 2, i16 5
  %23 = getelementptr inbounds %struct.tpu_pwm_device, ptr %0, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.tpu_device, ptr %24, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i8, ptr %26, i32 16
  %28 = getelementptr inbounds %struct.tpu_pwm_device, ptr %0, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = shl i32 %29, 6
  %31 = getelementptr i8, ptr %27, i32 %30
  %32 = getelementptr i8, ptr %31, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %32, i16 %22) #6, !srcloc !10
  br label %48

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.tpu_pwm_device, ptr %0, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 1
  %37 = select i1 %36, i16 0, i16 4
  %38 = getelementptr inbounds %struct.tpu_pwm_device, ptr %0, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.tpu_device, ptr %39, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr i8, ptr %41, i32 16
  %43 = getelementptr inbounds %struct.tpu_pwm_device, ptr %0, i32 0, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = shl i32 %44, 6
  %46 = getelementptr i8, ptr %42, i32 %45
  %47 = getelementptr i8, ptr %46, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %47, i16 %37) #6, !srcloc !10
  br label %48

48:                                               ; preds = %33, %18, %3, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pwmchip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind allocsize(2) }

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
!8 = !{i8 0, i8 2}
!9 = !{i64 2149269192}
!10 = !{i64 1727952}
!11 = !{i64 1728152}
!12 = !{i64 2149267970}
