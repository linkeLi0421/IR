; ModuleID = '/llk/IR/drivers/char/hw_random/omap3-rom-rng.c_pt.bc'
source_filename = "../drivers/char/hw_random/omap3-rom-rng.c"
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
%struct.omap_rom_rng = type { ptr, ptr, %struct.hwrng, ptr }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }

@__initcall__kmod_omap3_rom_rng__163_177_omap3_rom_rng_driver_init6 = internal global ptr @omap3_rom_rng_driver_init, section ".initcall6.init", align 4
@omap3_rom_rng_driver = internal global %struct.platform_driver { ptr @omap3_rom_rng_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @omap_rom_rng_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_rom_rng_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_omap3_rom_rng_driver_exit = internal global ptr @omap3_rom_rng_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias164 = internal constant [43 x i8] c"omap3_rom_rng.alias=platform:omap3-rom-rng\00", section ".modinfo", align 1
@__UNIQUE_ID_author165 = internal constant [33 x i8] c"omap3_rom_rng.author=Juha Yrjola\00", section ".modinfo", align 1
@__UNIQUE_ID_author166 = internal constant [51 x i8] c"omap3_rom_rng.author=Pali Roh\C3\A1r <pali@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file167 = internal constant [56 x i8] c"omap3_rom_rng.file=drivers/char/hw_random/omap3-rom-rng\00", section ".modinfo", align 1
@__UNIQUE_ID_license168 = internal constant [26 x i8] c"omap3_rom_rng.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [14 x i8] c"omap3-rom-rng\00", align 1
@omap_rom_rng_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nokia,n900-rom-rng\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap3_rom_rng_read }, %struct.of_device_id zeroinitializer], align 4
@omap_rom_rng_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @omap_rom_rng_runtime_suspend, ptr @omap_rom_rng_runtime_resume, ptr @omap_rom_rng_runtime_suspend, ptr @omap_rom_rng_runtime_resume, ptr @omap_rom_rng_runtime_suspend, ptr @omap_rom_rng_runtime_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"omap3-rom\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"missing rom code handler\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"rom_rng_call is NULL\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"ick\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"unable to get RNG clock\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"reset failed: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"HW init failed: %d\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias164, ptr @__UNIQUE_ID_author165, ptr @__UNIQUE_ID_author166, ptr @__UNIQUE_ID_file167, ptr @__UNIQUE_ID_license168, ptr @__exitcall_omap3_rom_rng_driver_exit, ptr @__initcall__kmod_omap3_rom_rng__163_177_omap3_rom_rng_driver_init6, ptr @omap3_rom_rng_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @omap3_rom_rng_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @omap3_rom_rng_driver, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @omap3_rom_rng_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @omap3_rom_rng_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap3_rom_rng_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 72, i32 noundef 3520) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %40, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.omap_rom_rng, ptr %3, i32 0, i32 1
  store ptr %2, ptr %6, align 4
  %7 = ptrtoint ptr %3 to i32
  %8 = getelementptr inbounds %struct.omap_rom_rng, ptr %3, i32 0, i32 2
  %9 = getelementptr inbounds %struct.omap_rom_rng, ptr %3, i32 0, i32 2, i32 6
  store i32 %7, ptr %9, align 4
  store ptr @.str.1, ptr %8, align 4
  %10 = tail call ptr @of_device_get_match_data(ptr noundef %2) #4
  %11 = getelementptr inbounds %struct.omap_rom_rng, ptr %3, i32 0, i32 2, i32 5
  store ptr %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.omap_rom_rng, ptr %3, i32 0, i32 2, i32 7
  store i16 900, ptr %12, align 4
  %13 = icmp eq ptr %10, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #5
  br label %40

15:                                               ; preds = %5
  %16 = load ptr, ptr %6, align 4
  %17 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 8
  store ptr %3, ptr %17, align 8
  %18 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.omap_rom_rng, ptr %3, i32 0, i32 3
  store ptr %19, ptr %20, align 4
  %21 = icmp eq ptr %19, null
  %22 = load ptr, ptr %6, align 4
  br i1 %21, label %23, label %24

23:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.3) #5
  br label %40

24:                                               ; preds = %15
  %25 = tail call ptr @devm_clk_get(ptr noundef %22, ptr noundef nonnull @.str.4) #4
  store ptr %25, ptr %3, align 4
  %26 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.5) #5
  %29 = load ptr, ptr %3, align 4
  %30 = ptrtoint ptr %29 to i32
  br label %40

31:                                               ; preds = %24
  tail call void @pm_runtime_enable(ptr noundef %2) #4
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %2, i32 noundef 500) #4
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %2, i1 noundef zeroext true) #4
  %32 = load ptr, ptr %6, align 4
  %33 = tail call i32 @devm_add_action(ptr noundef %32, ptr noundef nonnull @omap_rom_rng_finish, ptr noundef nonnull %3) #4
  %34 = icmp eq i32 %33, 0
  %35 = load ptr, ptr %6, align 4
  br i1 %34, label %38, label %36

36:                                               ; preds = %31
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %35, i1 noundef zeroext false) #4
  %37 = load ptr, ptr %6, align 4
  tail call void @__pm_runtime_disable(ptr noundef %37, i1 noundef zeroext true) #4
  br label %40

38:                                               ; preds = %31
  %39 = tail call i32 @devm_hwrng_register(ptr noundef %35, ptr noundef %8) #4
  br label %40

40:                                               ; preds = %38, %36, %27, %23, %14, %1
  %41 = phi i32 [ %30, %27 ], [ %39, %38 ], [ -22, %23 ], [ -19, %14 ], [ -12, %1 ], [ %33, %36 ]
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap_rom_rng_finish(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.omap_rom_rng, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %3, i1 noundef zeroext false) #4
  %4 = load ptr, ptr %2, align 4
  tail call void @__pm_runtime_disable(ptr noundef %4, i1 noundef zeroext true) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_hwrng_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap3_rom_rng_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) #2 {
  %5 = getelementptr inbounds %struct.hwrng, ptr %0, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = inttoptr i32 %6 to ptr
  %8 = getelementptr inbounds %struct.omap_rom_rng, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %4
  %13 = load ptr, ptr %8, align 4
  %14 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #4, !srcloc !9
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 0, i32 -1, ptr elementtype(i32) %14) #4, !srcloc !10
  %16 = extractvalue { i32, i32, i32 } %15, 0
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %32, label %18

18:                                               ; preds = %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !11
  br label %32

19:                                               ; preds = %4
  %20 = ptrtoint ptr %1 to i32
  %21 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %20, i32 -2130706432, i32 8454144) #6, !srcloc !12
  %22 = getelementptr inbounds %struct.omap_rom_rng, ptr %7, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 %23(i32 noundef %21, i32 noundef 4, i32 noundef 8) #4
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i32 4, i32 -22
  %27 = load ptr, ptr %8, align 4
  %28 = tail call i64 @ktime_get_mono_fast_ns() #4
  %29 = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 11, i32 22
  store volatile i64 %28, ptr %29, align 8
  %30 = load ptr, ptr %8, align 4
  %31 = tail call i32 @__pm_runtime_suspend(ptr noundef %30, i32 noundef 13) #4
  br label %32

32:                                               ; preds = %19, %18, %12
  %33 = phi i32 [ %26, %19 ], [ %10, %12 ], [ %10, %18 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_rom_rng_runtime_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.omap_rom_rng, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 %5(i32 noundef 0, i32 noundef 0, i32 noundef 1) #4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %6) #5
  br label %9

9:                                                ; preds = %8, %1
  %10 = load ptr, ptr %3, align 4
  tail call void @clk_disable(ptr noundef %10) #4
  tail call void @clk_unprepare(ptr noundef %10) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_rom_rng_runtime_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @clk_prepare(ptr noundef %4) #4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = tail call i32 @clk_enable(ptr noundef %4) #4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %7
  tail call void @clk_unprepare(ptr noundef %4) #4
  br label %11

11:                                               ; preds = %10, %1
  %12 = phi i32 [ %5, %1 ], [ %8, %10 ]
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %11, %7
  %15 = getelementptr inbounds %struct.omap_rom_rng, ptr %3, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 %16(i32 noundef 0, i32 noundef 0, i32 noundef 2) #4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = load ptr, ptr %3, align 4
  tail call void @clk_disable(ptr noundef %20) #4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %17) #5
  br label %21

21:                                               ; preds = %19, %14, %11
  %22 = phi i32 [ -5, %19 ], [ %12, %11 ], [ 0, %14 ]
  ret i32 %22
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
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }
attributes #6 = { nounwind readnone }

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
!8 = !{i64 2148044846}
!9 = !{i64 543953, i64 2148033924, i64 2148033950, i64 2148033997, i64 2148034019, i64 2148034047, i64 2148034067}
!10 = !{i64 530522, i64 530547, i64 530569, i64 530585, i64 530597, i64 530617, i64 530641, i64 530657, i64 530669}
!11 = !{i64 2148044972}
!12 = !{i64 2148784548, i64 2148784571, i64 2148784603, i64 2148784635, i64 2148784673, i64 2148784703}
