; ModuleID = '/llk/IR/drivers/char/hw_random/atmel-rng.c_pt.bc'
source_filename = "../drivers/char/hw_random/atmel-rng.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atmel_trng_data = type { i8 }
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
%struct.atmel_trng = type { ptr, ptr, %struct.hwrng }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }

@__initcall__kmod_atmel_rng__166_195_atmel_trng_driver_init6 = internal global ptr @atmel_trng_driver_init, section ".initcall6.init", align 4
@atmel_trng_driver = internal global %struct.platform_driver { ptr @atmel_trng_probe, ptr @atmel_trng_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @atmel_trng_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atmel_trng_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_atmel_trng_driver_exit = internal global ptr @atmel_trng_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file167 = internal constant [48 x i8] c"atmel_rng.file=drivers/char/hw_random/atmel-rng\00", section ".modinfo", align 1
@__UNIQUE_ID_license168 = internal constant [22 x i8] c"atmel_rng.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author169 = internal constant [53 x i8] c"atmel_rng.author=Peter Korsgaard <jacmet@sunsite.dk>\00", section ".modinfo", align 1
@__UNIQUE_ID_description170 = internal constant [64 x i8] c"atmel_rng.description=Atmel true random number generator driver\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [11 x i8] c"atmel-trng\00", align 1
@atmel_trng_dt_ids = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9g45-trng\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9g45_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sam9x60-trng\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sam9x60_config }, %struct.of_device_id zeroinitializer], align 4
@atmel_trng_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @atmel_trng_suspend, ptr @atmel_trng_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@at91sam9g45_config = internal constant %struct.atmel_trng_data zeroinitializer, align 1
@sam9x60_config = internal constant %struct.atmel_trng_data { i8 1 }, align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author169, ptr @__UNIQUE_ID_description170, ptr @__UNIQUE_ID_file167, ptr @__UNIQUE_ID_license168, ptr @__exitcall_atmel_trng_driver_exit, ptr @__initcall__kmod_atmel_rng__166_195_atmel_trng_driver_init6, ptr @atmel_trng_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @atmel_trng_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @atmel_trng_driver, ptr noundef null) #3
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @atmel_trng_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @atmel_trng_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_trng_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 68, i32 noundef 3520) #3
  %4 = icmp eq ptr %3, null
  br i1 %4, label %44, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #3
  %7 = getelementptr inbounds %struct.atmel_trng, ptr %3, i32 0, i32 1
  store ptr %6, ptr %7, align 4
  %8 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = ptrtoint ptr %6 to i32
  br label %44

11:                                               ; preds = %5
  %12 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #3
  store ptr %12, ptr %3, align 4
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = ptrtoint ptr %12 to i32
  br label %44

16:                                               ; preds = %11
  %17 = tail call ptr @of_device_get_match_data(ptr noundef %2) #3
  %18 = icmp eq ptr %17, null
  br i1 %18, label %44, label %19

19:                                               ; preds = %16
  %20 = load i8, ptr %17, align 1, !range !8
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %19
  %23 = tail call i32 @clk_get_rate(ptr noundef %12) #3
  %24 = icmp ugt i32 %23, 100000000
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %26 = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 1) #3, !srcloc !10
  br label %27

27:                                               ; preds = %25, %22, %19
  %28 = tail call i32 @clk_prepare(ptr noundef %12) #3
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %27
  %31 = tail call i32 @clk_enable(ptr noundef %12) #3
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  tail call void @clk_unprepare(ptr noundef %12) #3
  br label %44

34:                                               ; preds = %30
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 1380861697) #3, !srcloc !10
  %35 = load ptr, ptr %0, align 8
  %36 = getelementptr inbounds %struct.atmel_trng, ptr %3, i32 0, i32 2
  store ptr %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.atmel_trng, ptr %3, i32 0, i32 2, i32 5
  store ptr @atmel_trng_read, ptr %37, align 4
  %38 = tail call i32 @devm_hwrng_register(ptr noundef %2, ptr noundef %36) #3
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %41, align 8
  br label %44

42:                                               ; preds = %34
  %43 = load ptr, ptr %3, align 4
  tail call void @clk_disable(ptr noundef %43) #3
  tail call void @clk_unprepare(ptr noundef %43) #3
  br label %44

44:                                               ; preds = %42, %40, %33, %27, %16, %14, %9, %1
  %45 = phi i32 [ %10, %9 ], [ %15, %14 ], [ %38, %42 ], [ 0, %40 ], [ -12, %1 ], [ -19, %16 ], [ %31, %33 ], [ %28, %27 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_trng_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !12
  tail call void @arm_heavy_mb() #3
  %4 = getelementptr inbounds %struct.atmel_trng, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 1380861696) #3, !srcloc !10
  %6 = load ptr, ptr %3, align 4
  tail call void @clk_disable(ptr noundef %6) #3
  tail call void @clk_unprepare(ptr noundef %6) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_trng_read(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i1 noundef zeroext %3) #2 {
  %5 = getelementptr i8, ptr %0, i32 -4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 28
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #3, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !14
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %4
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr i8, ptr %12, i32 80
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #3, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !15
  store i32 %14, ptr %1, align 4
  %15 = load ptr, ptr %5, align 4
  %16 = getelementptr i8, ptr %15, i32 28
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #3, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !16
  br label %18

18:                                               ; preds = %11, %4
  %19 = phi i32 [ 4, %11 ], [ 0, %4 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_hwrng_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_trng_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !12
  tail call void @arm_heavy_mb() #3
  %4 = getelementptr inbounds %struct.atmel_trng, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 1380861696) #3, !srcloc !10
  %6 = load ptr, ptr %3, align 4
  tail call void @clk_disable(ptr noundef %6) #3
  tail call void @clk_unprepare(ptr noundef %6) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_trng_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @clk_prepare(ptr noundef %4) #3
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = tail call i32 @clk_enable(ptr noundef %4) #3
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void @clk_unprepare(ptr noundef %4) #3
  br label %14

11:                                               ; preds = %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %12 = getelementptr inbounds %struct.atmel_trng, ptr %3, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 1380861697) #3, !srcloc !10
  br label %14

14:                                               ; preds = %11, %10, %1
  %15 = phi i32 [ 0, %11 ], [ %8, %10 ], [ %5, %1 ]
  ret i32 %15
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i8 0, i8 2}
!9 = !{i64 2151482315}
!10 = !{i64 3064911}
!11 = !{i64 2151481318}
!12 = !{i64 2151481677}
!13 = !{i64 3065329}
!14 = !{i64 2151480428}
!15 = !{i64 2151480767}
!16 = !{i64 2151481106}
