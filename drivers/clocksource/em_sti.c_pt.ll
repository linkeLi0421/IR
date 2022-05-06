; ModuleID = '/llk/IR/drivers/clocksource/em_sti.c_pt.bc'
source_filename = "../drivers/clocksource/em_sti.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.cpumask = type { [1 x i32] }
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
%struct.em_sti_priv = type { ptr, ptr, ptr, [2 x i32], i32, %struct.raw_spinlock, [36 x i8], %struct.clock_event_device, %struct.clocksource, [24 x i8] }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [60 x i8] }
%struct.clocksource = type { ptr, i64, i32, i32, i64, i32, i32, i64, ptr, %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@em_sti_device_driver = internal global %struct.platform_driver { ptr @em_sti_probe, ptr @em_sti_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @em_sti_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__initcall__kmod_em_sti__170_366_em_sti_init4 = internal global ptr @em_sti_init, section ".initcall4.init", align 4
@__exitcall_em_sti_exit = internal global ptr @em_sti_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author171 = internal constant [26 x i8] c"em_sti.author=Magnus Damm\00", section ".modinfo", align 1
@__UNIQUE_ID_description172 = internal constant [56 x i8] c"em_sti.description=Renesas Emma Mobile STI Timer Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [39 x i8] c"em_sti.file=drivers/clocksource/em_sti\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [22 x i8] c"em_sti.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [7 x i8] c"em_sti\00", align 1
@em_sti_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,em-sti\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to request low IRQ\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"sclk\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"cannot get clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"cannot prepare clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"cannot enable clock\0A\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"used for clock events\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"used for oneshot clock events\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"used as clock source\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_em_sti_exit, ptr @__initcall__kmod_em_sti__170_366_em_sti_init4, ptr @em_sti_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @em_sti_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @em_sti_device_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @em_sti_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @em_sti_device_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @em_sti_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 384, i32 noundef 3520) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %89, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.em_sti_priv, ptr %3, i32 0, i32 2
  store ptr %0, ptr %6, align 8
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %7, align 8
  %8 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #5
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %89, label %10

10:                                               ; preds = %5
  %11 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #5
  store ptr %11, ptr %3, align 64
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = ptrtoint ptr %11 to i32
  br label %89

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load ptr, ptr %2, align 4
  br label %21

21:                                               ; preds = %19, %15
  %22 = phi ptr [ %20, %19 ], [ %17, %15 ]
  %23 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %8, ptr noundef nonnull @em_sti_interrupt, ptr noundef null, i32 noundef 88576, ptr noundef %22, ptr noundef nonnull %3) #5
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #6
  br label %89

26:                                               ; preds = %21
  %27 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.2) #5
  %28 = getelementptr inbounds %struct.em_sti_priv, ptr %3, i32 0, i32 1
  store ptr %27, ptr %28, align 4
  %29 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3) #6
  %31 = load ptr, ptr %28, align 4
  %32 = ptrtoint ptr %31 to i32
  br label %89

33:                                               ; preds = %26
  %34 = tail call i32 @clk_prepare(ptr noundef %27) #5
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4) #6
  br label %89

37:                                               ; preds = %33
  %38 = load ptr, ptr %28, align 4
  %39 = tail call i32 @clk_enable(ptr noundef %38) #5
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load ptr, ptr %6, align 8
  %43 = getelementptr inbounds %struct.platform_device, ptr %42, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.5) #6
  %44 = load ptr, ptr %28, align 4
  tail call void @clk_unprepare(ptr noundef %44) #5
  br label %89

45:                                               ; preds = %37
  %46 = load ptr, ptr %28, align 4
  %47 = tail call i32 @clk_get_rate(ptr noundef %46) #5
  %48 = getelementptr inbounds %struct.em_sti_priv, ptr %3, i32 0, i32 4
  store i32 %47, ptr %48, align 4
  %49 = load ptr, ptr %28, align 4
  tail call void @clk_disable(ptr noundef %49) #5
  %50 = getelementptr inbounds %struct.em_sti_priv, ptr %3, i32 0, i32 5
  store i32 0, ptr %50, align 8
  %51 = load ptr, ptr %6, align 8
  %52 = getelementptr inbounds %struct.platform_device, ptr %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.platform_device, ptr %51, i32 0, i32 3, i32 3
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %45
  %57 = load ptr, ptr %52, align 4
  br label %58

58:                                               ; preds = %56, %45
  %59 = phi ptr [ %57, %56 ], [ %54, %45 ]
  %60 = getelementptr inbounds %struct.em_sti_priv, ptr %3, i32 0, i32 7
  %61 = getelementptr inbounds %struct.em_sti_priv, ptr %3, i32 0, i32 7, i32 21
  store ptr %59, ptr %61, align 4
  %62 = getelementptr inbounds %struct.em_sti_priv, ptr %3, i32 0, i32 7, i32 9
  store i32 2, ptr %62, align 4
  %63 = getelementptr inbounds %struct.em_sti_priv, ptr %3, i32 0, i32 7, i32 22
  store i32 200, ptr %63, align 8
  %64 = getelementptr inbounds %struct.em_sti_priv, ptr %3, i32 0, i32 7, i32 25
  store ptr @__cpu_possible_mask, ptr %64, align 4
  %65 = getelementptr inbounds %struct.em_sti_priv, ptr %3, i32 0, i32 7, i32 1
  store ptr @em_sti_clock_event_next, ptr %65, align 4
  %66 = getelementptr inbounds %struct.em_sti_priv, ptr %3, i32 0, i32 7, i32 14
  store ptr @em_sti_clock_event_shutdown, ptr %66, align 8
  %67 = getelementptr inbounds %struct.em_sti_priv, ptr %3, i32 0, i32 7, i32 12
  store ptr @em_sti_clock_event_set_oneshot, ptr %67, align 64
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %52, ptr noundef nonnull @.str.6) #6
  %68 = load i32, ptr %48, align 4
  tail call void @clockevents_config_and_register(ptr noundef %60, i32 noundef %68, i32 noundef 2, i32 noundef -1) #5
  %69 = load ptr, ptr %6, align 8
  %70 = getelementptr inbounds %struct.platform_device, ptr %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.platform_device, ptr %69, i32 0, i32 3, i32 3
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %58
  %75 = load ptr, ptr %70, align 4
  br label %76

76:                                               ; preds = %74, %58
  %77 = phi ptr [ %75, %74 ], [ %72, %58 ]
  %78 = getelementptr inbounds %struct.em_sti_priv, ptr %3, i32 0, i32 8
  %79 = getelementptr inbounds %struct.em_sti_priv, ptr %3, i32 0, i32 8, i32 8
  store ptr %77, ptr %79, align 8
  %80 = getelementptr inbounds %struct.em_sti_priv, ptr %3, i32 0, i32 8, i32 10
  store i32 200, ptr %80, align 4
  store ptr @em_sti_clocksource_read, ptr %78, align 8
  %81 = getelementptr inbounds %struct.em_sti_priv, ptr %3, i32 0, i32 8, i32 14
  store ptr @em_sti_clocksource_enable, ptr %81, align 4
  %82 = getelementptr inbounds %struct.em_sti_priv, ptr %3, i32 0, i32 8, i32 15
  store ptr @em_sti_clocksource_disable, ptr %82, align 8
  %83 = getelementptr inbounds %struct.em_sti_priv, ptr %3, i32 0, i32 8, i32 16
  store ptr @em_sti_clocksource_disable, ptr %83, align 4
  %84 = getelementptr inbounds %struct.em_sti_priv, ptr %3, i32 0, i32 8, i32 17
  store ptr @em_sti_clocksource_resume, ptr %84, align 8
  %85 = getelementptr inbounds %struct.em_sti_priv, ptr %3, i32 0, i32 8, i32 1
  store i64 281474976710655, ptr %85, align 8
  %86 = getelementptr inbounds %struct.em_sti_priv, ptr %3, i32 0, i32 8, i32 13
  store i32 1, ptr %86, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %70, ptr noundef nonnull @.str.8) #6
  %87 = load i32, ptr %48, align 4
  %88 = tail call i32 @__clocksource_register_scale(ptr noundef %78, i32 noundef 1, i32 noundef %87) #5
  br label %89

89:                                               ; preds = %76, %41, %36, %30, %25, %13, %5, %1
  %90 = phi i32 [ %14, %13 ], [ %23, %25 ], [ %32, %30 ], [ %34, %36 ], [ %39, %41 ], [ 0, %76 ], [ -12, %1 ], [ %8, %5 ]
  ret i32 %90
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @em_sti_remove(ptr nocapture noundef readnone %0) #3 {
  ret i32 -16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @em_sti_interrupt(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.em_sti_priv, ptr %1, i32 0, i32 7
  %4 = load ptr, ptr %3, align 64
  tail call void %4(ptr noundef %3) #5
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @em_sti_clock_event_next(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %1, i32 -64
  %4 = getelementptr i8, ptr %1, i32 -40
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #5
  %6 = load ptr, ptr %3, align 64
  %7 = getelementptr i8, ptr %6, i32 32
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %9 = and i32 %8, 65535
  %10 = zext i32 %9 to i64
  %11 = shl nuw nsw i64 %10, 32
  %12 = load ptr, ptr %3, align 64
  %13 = getelementptr i8, ptr %12, i32 36
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %15 = zext i32 %14 to i64
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #5
  %16 = zext i32 %0 to i64
  %17 = or i64 %11, %16
  %18 = add nuw nsw i64 %17, %15
  %19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #5
  %20 = load ptr, ptr %3, align 64
  %21 = getelementptr i8, ptr %20, i32 76
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 1) #5, !srcloc !11
  %22 = lshr i64 %18, 32
  %23 = trunc i64 %22 to i32
  %24 = load ptr, ptr %3, align 64
  %25 = getelementptr i8, ptr %24, i32 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #5, !srcloc !11
  %26 = trunc i64 %18 to i32
  %27 = load ptr, ptr %3, align 64
  %28 = getelementptr i8, ptr %27, i32 20
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #5, !srcloc !11
  %29 = load ptr, ptr %3, align 64
  %30 = getelementptr i8, ptr %29, i32 80
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 1) #5, !srcloc !11
  %31 = load ptr, ptr %3, align 64
  %32 = getelementptr i8, ptr %31, i32 72
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 1) #5, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %19) #5
  %33 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #5
  %34 = load ptr, ptr %3, align 64
  %35 = getelementptr i8, ptr %34, i32 32
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %37 = and i32 %36, 65535
  %38 = zext i32 %37 to i64
  %39 = shl nuw nsw i64 %38, 32
  %40 = load ptr, ptr %3, align 64
  %41 = getelementptr i8, ptr %40, i32 36
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %43 = zext i32 %42 to i64
  %44 = or i64 %39, %43
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %33) #5
  %45 = add nsw i64 %18, -1
  %46 = icmp uge i64 %44, %45
  %47 = zext i1 %46 to i32
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @em_sti_clock_event_shutdown(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -40
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #5
  %4 = getelementptr i8, ptr %0, i32 -52
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 -48
  %7 = load i32, ptr %6, align 4
  %8 = or i32 %7, %5
  store i32 0, ptr %6, align 4
  %9 = icmp eq i32 %8, 0
  %10 = icmp ne i32 %5, 0
  %11 = or i1 %10, %9
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = getelementptr i8, ptr %0, i32 -64
  %14 = load ptr, ptr %13, align 64
  %15 = getelementptr i8, ptr %14, i32 76
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 3) #5, !srcloc !11
  %16 = getelementptr i8, ptr %0, i32 -60
  %17 = load ptr, ptr %16, align 4
  tail call void @clk_disable(ptr noundef %17) #5
  br label %18

18:                                               ; preds = %12, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @em_sti_clock_event_set_oneshot(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -64
  %3 = getelementptr i8, ptr %0, i32 -56
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.7) #6
  %6 = tail call fastcc i32 @em_sti_start(ptr noundef %2, i32 noundef 1)
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @em_sti_start(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.em_sti_priv, ptr %0, i32 0, i32 5
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #5
  %5 = getelementptr inbounds %struct.em_sti_priv, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.em_sti_priv, ptr %0, i32 0, i32 3, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = or i32 %8, %6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.em_sti_priv, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @clk_enable(ptr noundef %13) #5
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %11
  %17 = load ptr, ptr %0, align 64
  %18 = getelementptr i8, ptr %17, i32 48
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 1073741824) #5, !srcloc !11
  %19 = load ptr, ptr %0, align 64
  %20 = getelementptr i8, ptr %19, i32 52
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 0) #5, !srcloc !11
  %21 = load ptr, ptr %0, align 64
  %22 = getelementptr i8, ptr %21, i32 76
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 3) #5, !srcloc !11
  %23 = load ptr, ptr %0, align 64
  %24 = getelementptr i8, ptr %23, i32 80
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 3) #5, !srcloc !11
  %25 = load ptr, ptr %0, align 64
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 1) #5, !srcloc !11
  br label %30

26:                                               ; preds = %11
  %27 = getelementptr inbounds %struct.em_sti_priv, ptr %0, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.platform_device, ptr %28, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.5) #6
  br label %32

30:                                               ; preds = %16, %2
  %31 = getelementptr %struct.em_sti_priv, ptr %0, i32 0, i32 3, i32 %1
  store i32 1, ptr %31, align 4
  br label %32

32:                                               ; preds = %30, %26
  %33 = phi i32 [ %14, %26 ], [ 0, %30 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #5
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @em_sti_clocksource_read(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -256
  %3 = getelementptr i8, ptr %0, i32 -232
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #5
  %5 = load ptr, ptr %2, align 64
  %6 = getelementptr i8, ptr %5, i32 32
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %8 = and i32 %7, 65535
  %9 = zext i32 %8 to i64
  %10 = shl nuw nsw i64 %9, 32
  %11 = load ptr, ptr %2, align 64
  %12 = getelementptr i8, ptr %11, i32 36
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %14 = zext i32 %13 to i64
  %15 = or i64 %10, %14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #5
  ret i64 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @em_sti_clocksource_enable(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -256
  %3 = tail call fastcc i32 @em_sti_start(ptr noundef %2, i32 noundef 0)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @em_sti_clocksource_disable(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -232
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #5
  %4 = getelementptr i8, ptr %0, i32 -244
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 -240
  %7 = load i32, ptr %6, align 4
  %8 = or i32 %7, %5
  store i32 0, ptr %4, align 4
  %9 = icmp eq i32 %8, 0
  %10 = icmp ne i32 %7, 0
  %11 = or i1 %10, %9
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = getelementptr i8, ptr %0, i32 -256
  %14 = load ptr, ptr %13, align 64
  %15 = getelementptr i8, ptr %14, i32 76
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 3) #5, !srcloc !11
  %16 = getelementptr i8, ptr %0, i32 -252
  %17 = load ptr, ptr %16, align 4
  tail call void @clk_disable(ptr noundef %17) #5
  br label %18

18:                                               ; preds = %12, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @em_sti_clocksource_resume(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -256
  %3 = tail call fastcc i32 @em_sti_start(ptr noundef %2, i32 noundef 0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clocksource_register_scale(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 3714714}
!9 = !{i64 2151254167}
!10 = !{i64 2151255389}
!11 = !{i64 3714296}
