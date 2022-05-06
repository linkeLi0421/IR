; ModuleID = '/llk/IR/drivers/char/hw_random/stm32-rng.c_pt.bc'
source_filename = "../drivers/char/hw_random/stm32-rng.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.stm32_rng_private = type { %struct.hwrng, ptr, ptr, ptr, i8 }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }

@__initcall__kmod_stm32_rng__167_215_stm32_rng_driver_init6 = internal global ptr @stm32_rng_driver_init, section ".initcall6.init", align 4
@stm32_rng_driver = internal global %struct.platform_driver { ptr @stm32_rng_probe, ptr @stm32_rng_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_rng_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_rng_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_stm32_rng_driver_exit = internal global ptr @stm32_rng_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file168 = internal constant [48 x i8] c"stm32_rng.file=drivers/char/hw_random/stm32-rng\00", section ".modinfo", align 1
@__UNIQUE_ID_license169 = internal constant [22 x i8] c"stm32_rng.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author170 = internal constant [62 x i8] c"stm32_rng.author=Daniel Thompson <daniel.thompson@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description171 = internal constant [65 x i8] c"stm32_rng.description=STMicroelectronics STM32 RNG device driver\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"stm32-rng\00", align 1
@stm32_rng_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32-rng\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@stm32_rng_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_rng_runtime_suspend, ptr @stm32_rng_runtime_resume, ptr null }, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"clock-error-detect\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"%s: timeout %x!\0A\00", align 1
@__func__.stm32_rng_read = private unnamed_addr constant [15 x i8] c"stm32_rng_read\00", align 1
@stm32_rng_read.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"drivers/char/hw_random/stm32-rng.c\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"bad RNG status - %x\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author170, ptr @__UNIQUE_ID_description171, ptr @__UNIQUE_ID_file168, ptr @__UNIQUE_ID_license169, ptr @__exitcall_stm32_rng_driver_exit, ptr @__initcall__kmod_stm32_rng__167_215_stm32_rng_driver_init6, ptr @stm32_rng_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @stm32_rng_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_rng_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @stm32_rng_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_rng_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_rng_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.resource, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !8
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 76, i32 noundef 3520) #6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %43, label %8

8:                                                ; preds = %1
  %9 = call i32 @of_address_to_resource(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %2) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %43

11:                                               ; preds = %8
  %12 = call ptr @devm_ioremap_resource(ptr noundef %3, ptr noundef nonnull %2) #6
  %13 = getelementptr inbounds %struct.stm32_rng_private, ptr %6, i32 0, i32 1
  store ptr %12, ptr %13, align 4
  %14 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = ptrtoint ptr %12 to i32
  br label %43

17:                                               ; preds = %11
  %18 = call ptr @devm_clk_get(ptr noundef %3, ptr noundef null) #6
  %19 = getelementptr inbounds %struct.stm32_rng_private, ptr %6, i32 0, i32 2
  store ptr %18, ptr %19, align 4
  %20 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = ptrtoint ptr %18 to i32
  br label %43

23:                                               ; preds = %17
  %24 = call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %25 = getelementptr inbounds %struct.stm32_rng_private, ptr %6, i32 0, i32 3
  store ptr %24, ptr %25, align 4
  %26 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = call i32 @reset_control_assert(ptr noundef %24) #6
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %29(i32 noundef 429496) #6
  %30 = call i32 @reset_control_deassert(ptr noundef %24) #6
  br label %31

31:                                               ; preds = %27, %23
  %32 = call ptr @of_find_property(ptr noundef %5, ptr noundef nonnull @.str.1, ptr noundef null) #6
  %33 = icmp ne ptr %32, null
  %34 = getelementptr inbounds %struct.stm32_rng_private, ptr %6, i32 0, i32 4
  %35 = zext i1 %33 to i8
  store i8 %35, ptr %34, align 4
  %36 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %6, ptr %36, align 8
  %37 = call ptr @dev_driver_string(ptr noundef %3) #6
  store ptr %37, ptr %6, align 4
  %38 = getelementptr inbounds %struct.hwrng, ptr %6, i32 0, i32 5
  store ptr @stm32_rng_read, ptr %38, align 4
  %39 = ptrtoint ptr %3 to i32
  %40 = getelementptr inbounds %struct.hwrng, ptr %6, i32 0, i32 6
  store i32 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.hwrng, ptr %6, i32 0, i32 7
  store i16 900, ptr %41, align 4
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %3, i32 noundef 100) #6
  call void @__pm_runtime_use_autosuspend(ptr noundef %3, i1 noundef zeroext true) #6
  call void @pm_runtime_enable(ptr noundef %3) #6
  %42 = call i32 @devm_hwrng_register(ptr noundef %3, ptr noundef nonnull %6) #6
  br label %43

43:                                               ; preds = %31, %21, %15, %8, %1
  %44 = phi i32 [ %16, %15 ], [ %22, %21 ], [ %42, %31 ], [ -12, %1 ], [ %9, %8 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #6
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_rng_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_rng_read(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i1 noundef zeroext %3) #2 {
  %5 = getelementptr inbounds %struct.hwrng, ptr %0, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = inttoptr i32 %6 to ptr
  %8 = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #6
  %9 = icmp ugt i32 %2, 4
  br i1 %9, label %10, label %68

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.stm32_rng_private, ptr %0, i32 0, i32 1
  br label %12

12:                                               ; preds = %60, %10
  %13 = phi ptr [ %1, %10 ], [ %65, %60 ]
  %14 = phi i32 [ %2, %10 ], [ %66, %60 ]
  %15 = phi i32 [ 0, %10 ], [ %64, %60 ]
  %16 = load ptr, ptr %11, align 4
  %17 = getelementptr i8, ptr %16, i32 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #6, !srcloc !9
  %19 = icmp eq i32 %18, 0
  %20 = and i1 %19, %3
  br i1 %20, label %21, label %45

21:                                               ; preds = %12
  %22 = tail call i64 @ktime_get() #6
  %23 = add i64 %22, 50000000
  %24 = load ptr, ptr %11, align 4
  %25 = getelementptr i8, ptr %24, i32 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #6, !srcloc !9
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %31, %21
  %29 = tail call i64 @ktime_get() #6
  %30 = icmp sgt i64 %29, %23
  br i1 %30, label %37, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 2147480) #6
  %33 = load ptr, ptr %11, align 4
  %34 = getelementptr i8, ptr %33, i32 4
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #6, !srcloc !9
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %28, label %45

37:                                               ; preds = %28
  %38 = load ptr, ptr %11, align 4
  %39 = getelementptr i8, ptr %38, i32 4
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #6, !srcloc !9
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, ptr %5, align 4
  %44 = inttoptr i32 %43 to ptr
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.stm32_rng_read, i32 noundef 0) #7
  br label %68

45:                                               ; preds = %37, %31, %21, %12
  %46 = phi i32 [ %15, %12 ], [ 0, %37 ], [ 0, %21 ], [ 0, %31 ]
  %47 = phi i32 [ %18, %12 ], [ %40, %37 ], [ %26, %21 ], [ %35, %31 ]
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %60, label %49

49:                                               ; preds = %45
  %50 = and i32 %47, 96
  %51 = icmp ne i32 %50, 0
  %52 = load i1, ptr @stm32_rng_read.__already_done, align 1
  %53 = xor i1 %52, true
  %54 = select i1 %51, i1 %53, i1 false
  br i1 %54, label %55, label %56, !prof !10

55:                                               ; preds = %49
  store i1 true, ptr @stm32_rng_read.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 64, i32 noundef 9, ptr noundef nonnull @.str.4, i32 noundef %47) #6
  br label %57

56:                                               ; preds = %49
  br i1 %51, label %57, label %68

57:                                               ; preds = %56, %55
  %58 = load ptr, ptr %11, align 4
  %59 = getelementptr i8, ptr %58, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 0) #6, !srcloc !11
  br label %68

60:                                               ; preds = %45
  %61 = load ptr, ptr %11, align 4
  %62 = getelementptr i8, ptr %61, i32 8
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #6, !srcloc !9
  store i32 %63, ptr %13, align 4
  %64 = add i32 %46, 4
  %65 = getelementptr i8, ptr %13, i32 4
  %66 = add i32 %14, -4
  %67 = icmp ugt i32 %66, 4
  br i1 %67, label %12, label %68

68:                                               ; preds = %60, %57, %56, %42, %4
  %69 = phi i32 [ %46, %57 ], [ %46, %56 ], [ -110, %42 ], [ 0, %4 ], [ %64, %60 ]
  %70 = load i32, ptr %5, align 4
  %71 = inttoptr i32 %70 to ptr
  %72 = tail call i64 @ktime_get_mono_fast_ns() #6
  %73 = getelementptr inbounds %struct.device, ptr %71, i32 0, i32 11, i32 22
  store volatile i64 %72, ptr %73, align 8
  %74 = load i32, ptr %5, align 4
  %75 = inttoptr i32 %74 to ptr
  %76 = tail call i32 @__pm_runtime_suspend(ptr noundef %75, i32 noundef 12) #6
  %77 = icmp eq i32 %69, 0
  %78 = and i1 %77, %3
  %79 = select i1 %78, i32 -5, i32 %69
  ret i32 %79
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_hwrng_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_rng_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stm32_rng_private, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #6, !srcloc !11
  %6 = getelementptr inbounds %struct.stm32_rng_private, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %7) #6
  tail call void @clk_unprepare(ptr noundef %7) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_rng_runtime_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stm32_rng_private, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %23

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.stm32_rng_private, ptr %3, i32 0, i32 4
  %14 = load i8, ptr %13, align 4, !range !12
  %15 = icmp eq i8 %14, 0
  %16 = getelementptr inbounds %struct.stm32_rng_private, ptr %3, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  br i1 %15, label %19, label %18

18:                                               ; preds = %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 4) #6, !srcloc !11
  br label %20

19:                                               ; preds = %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 36) #6, !srcloc !11
  br label %20

20:                                               ; preds = %19, %18
  %21 = load ptr, ptr %16, align 4
  %22 = getelementptr i8, ptr %21, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 0) #6, !srcloc !11
  br label %23

23:                                               ; preds = %20, %11, %1
  %24 = phi i32 [ 0, %20 ], [ %9, %11 ], [ %6, %1 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
!9 = !{i64 2486789}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2486371}
!12 = !{i8 0, i8 2}
