; ModuleID = '/llk/IR/drivers/char/hw_random/mtk-rng.c_pt.bc'
source_filename = "../drivers/char/hw_random/mtk-rng.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.mtk_rng = type { ptr, ptr, %struct.hwrng }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }

@__initcall__kmod_mtk_rng__163_196_mtk_rng_driver_init6 = internal global ptr @mtk_rng_driver_init, section ".initcall6.init", align 4
@mtk_rng_driver = internal global %struct.platform_driver { ptr @mtk_rng_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mtk_rng_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_rng_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_mtk_rng_driver_exit = internal global ptr @mtk_rng_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description164 = internal constant [60 x i8] c"mtk_rng.description=Mediatek Random Number Generator Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author165 = internal constant [50 x i8] c"mtk_rng.author=Sean Wang <sean.wang@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file166 = internal constant [44 x i8] c"mtk_rng.file=drivers/char/hw_random/mtk-rng\00", section ".modinfo", align 1
@__UNIQUE_ID_license167 = internal constant [20 x i8] c"mtk_rng.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [8 x i8] c"mtk_rng\00", align 1
@mtk_rng_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7623-rng\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@mtk_rng_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_rng_runtime_suspend, ptr @mtk_rng_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"rng\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"no clock for device: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"failed to register rng device: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"registered RNG driver\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author165, ptr @__UNIQUE_ID_description164, ptr @__UNIQUE_ID_file166, ptr @__UNIQUE_ID_license167, ptr @__exitcall_mtk_rng_driver_exit, ptr @__initcall__kmod_mtk_rng__163_196_mtk_rng_driver_init6, ptr @mtk_rng_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mtk_rng_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @mtk_rng_driver, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @mtk_rng_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @mtk_rng_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_rng_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 68, i32 noundef 3520) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds %struct.mtk_rng, ptr %3, i32 0, i32 2
  store ptr %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.mtk_rng, ptr %3, i32 0, i32 2, i32 5
  store ptr @mtk_rng_read, ptr %8, align 4
  %9 = ptrtoint ptr %2 to i32
  %10 = getelementptr inbounds %struct.mtk_rng, ptr %3, i32 0, i32 2, i32 6
  store i32 %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.mtk_rng, ptr %3, i32 0, i32 2, i32 7
  store i16 900, ptr %11, align 4
  %12 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.1) #4
  %13 = getelementptr inbounds %struct.mtk_rng, ptr %3, i32 0, i32 1
  store ptr %12, ptr %13, align 4
  %14 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %17

15:                                               ; preds = %5
  %16 = ptrtoint ptr %12 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef %16) #5
  br label %28

17:                                               ; preds = %5
  %18 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #4
  store ptr %18, ptr %3, align 4
  %19 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = ptrtoint ptr %18 to i32
  br label %28

22:                                               ; preds = %17
  %23 = tail call i32 @devm_hwrng_register(ptr noundef %2, ptr noundef %7) #4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %23) #5
  br label %28

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %27, align 8
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %2, i32 noundef 100) #4
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %2, i1 noundef zeroext true) #4
  tail call void @pm_runtime_enable(ptr noundef %2) #4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.4) #5
  br label %28

28:                                               ; preds = %26, %25, %20, %15, %1
  %29 = phi i32 [ %16, %15 ], [ %21, %20 ], [ %23, %25 ], [ 0, %26 ], [ -12, %1 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_rng_read(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i1 noundef zeroext %3) #2 {
  %5 = getelementptr i8, ptr %0, i32 -8
  %6 = getelementptr inbounds %struct.hwrng, ptr %0, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = inttoptr i32 %7 to ptr
  %9 = tail call i32 @__pm_runtime_resume(ptr noundef %8, i32 noundef 4) #4
  %10 = icmp ugt i32 %2, 3
  br i1 %10, label %11, label %50

11:                                               ; preds = %4
  %12 = and i32 %2, -4
  br label %13

13:                                               ; preds = %42, %11
  %14 = phi ptr [ %47, %42 ], [ %1, %11 ]
  %15 = phi i32 [ %48, %42 ], [ %2, %11 ]
  %16 = phi i32 [ %46, %42 ], [ 0, %11 ]
  %17 = load ptr, ptr %5, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %19 = and i32 %18, -2147483648
  %20 = icmp eq i32 %19, 0
  %21 = and i1 %20, %3
  br i1 %21, label %22, label %39

22:                                               ; preds = %13
  %23 = tail call i64 @ktime_get() #4
  %24 = add i64 %23, 20000
  %25 = load ptr, ptr %5, align 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %28, label %42

28:                                               ; preds = %34, %22
  %29 = tail call i64 @ktime_get() #4
  %30 = icmp sgt i64 %29, %24
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load ptr, ptr %5, align 4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !11
  br label %39

34:                                               ; preds = %28
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 429496) #4
  %36 = load ptr, ptr %5, align 4
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %38 = icmp sgt i32 %37, -1
  br i1 %38, label %28, label %42

39:                                               ; preds = %31, %13
  %40 = phi i32 [ %19, %13 ], [ %33, %31 ]
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %39, %34, %22
  %43 = load ptr, ptr %5, align 4
  %44 = getelementptr i8, ptr %43, i32 8
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !12
  store i32 %45, ptr %14, align 4
  %46 = add i32 %16, 4
  %47 = getelementptr i8, ptr %14, i32 4
  %48 = add i32 %15, -4
  %49 = icmp ugt i32 %48, 3
  br i1 %49, label %13, label %50

50:                                               ; preds = %42, %39, %4
  %51 = phi i32 [ 0, %4 ], [ %16, %39 ], [ %12, %42 ]
  %52 = load i32, ptr %6, align 4
  %53 = inttoptr i32 %52 to ptr
  %54 = tail call i64 @ktime_get_mono_fast_ns() #4
  %55 = getelementptr inbounds %struct.device, ptr %53, i32 0, i32 11, i32 22
  store volatile i64 %54, ptr %55, align 8
  %56 = load i32, ptr %6, align 4
  %57 = inttoptr i32 %56 to ptr
  %58 = tail call i32 @__pm_runtime_suspend(ptr noundef %57, i32 noundef 12) #4
  %59 = icmp eq i32 %51, 0
  %60 = and i1 %59, %3
  %61 = select i1 %60, i32 -5, i32 %51
  ret i32 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_hwrng_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_rng_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !13
  %6 = and i32 %5, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  %7 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %6) #4, !srcloc !15
  %8 = getelementptr %struct.mtk_rng, ptr %3, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void @clk_disable(ptr noundef %9) #4
  tail call void @clk_unprepare(ptr noundef %9) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_rng_runtime_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr %struct.mtk_rng, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @clk_unprepare(ptr noundef %5) #4
  br label %17

12:                                               ; preds = %8
  %13 = load ptr, ptr %3, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !16
  %15 = or i32 %14, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  %16 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %15) #4, !srcloc !15
  br label %17

17:                                               ; preds = %12, %11, %1
  %18 = phi i32 [ 0, %12 ], [ %9, %11 ], [ %6, %1 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

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
!8 = !{i64 2486199}
!9 = !{i64 2151368619}
!10 = !{i64 2151370625}
!11 = !{i64 2151370959}
!12 = !{i64 2151373044}
!13 = !{i64 2151366727}
!14 = !{i64 2151366999}
!15 = !{i64 2485781}
!16 = !{i64 2151364835}
!17 = !{i64 2151365107}
