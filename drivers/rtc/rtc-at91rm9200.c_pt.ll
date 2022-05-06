; ModuleID = '/llk/IR/drivers/rtc/rtc-at91rm9200.c_pt.bc'
source_filename = "../drivers/rtc/rtc-at91rm9200.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.at91_rtc_config = type { i8, i8 }
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
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@at91_rtc_dt_ids = internal constant [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91rm9200-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91rm9200_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9x5-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9x5_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d4-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sama5d4_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sama5d4_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sam9x60-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sama5d4_config }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author357 = internal constant [20 x i8] c"author=Rick Bronson\00", section ".modinfo", align 1
@__UNIQUE_ID_description358 = internal constant [44 x i8] c"description=RTC driver for Atmel AT91RM9200\00", section ".modinfo", align 1
@__UNIQUE_ID_license359 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias360 = internal constant [24 x i8] c"alias=platform:at91_rtc\00", section ".modinfo", align 1
@at91rm9200_config = internal constant %struct.at91_rtc_config zeroinitializer, align 1
@at91sam9x5_config = internal constant %struct.at91_rtc_config { i8 1, i8 0 }, align 1
@sama5d4_config = internal constant %struct.at91_rtc_config { i8 0, i8 1 }, align 1
@at91_rtc_driver = internal global %struct.platform_driver { ptr null, ptr @at91_rtc_remove, ptr @at91_rtc_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @at91_rtc_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @at91_rtc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [9 x i8] c"at91_rtc\00", align 1
@at91_rtc_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @at91_rtc_suspend, ptr @at91_rtc_resume, ptr @at91_rtc_suspend, ptr @at91_rtc_resume, ptr @at91_rtc_suspend, ptr @at91_rtc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@sclk = internal unnamed_addr global ptr null, align 4
@at91_rtc_lock = internal global %struct.spinlock zeroinitializer, align 4
@at91_rtc_regs = internal unnamed_addr global ptr null, align 4
@at91_rtc_shadow_imr = internal unnamed_addr global i32 0, align 4
@at91_rtc_imr = internal unnamed_addr global i32 0, align 4
@irq = internal unnamed_addr global i32 0, align 4
@suspended_lock = internal global %struct.spinlock zeroinitializer, align 4
@suspended = internal unnamed_addr global i1 false, align 1
@at91_rtc_config = internal unnamed_addr global ptr null, align 4
@cached_events = internal unnamed_addr global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"no mmio resource defined\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"failed to map registers, aborting.\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Could not enable slow clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"IRQ %d already in use.\0A\00", align 1
@sama5d4_rtc_ops = internal constant %struct.rtc_class_ops { ptr null, ptr @at91_rtc_readtime, ptr @at91_rtc_settime, ptr @at91_rtc_readalarm, ptr @at91_rtc_setalarm, ptr null, ptr @at91_rtc_alarm_irq_enable, ptr @at91_rtc_readoffset, ptr @at91_rtc_setoffset, ptr null, ptr null }, align 4
@at91_rtc_ops = internal constant %struct.rtc_class_ops { ptr null, ptr @at91_rtc_readtime, ptr @at91_rtc_settime, ptr @at91_rtc_readalarm, ptr @at91_rtc_setalarm, ptr null, ptr @at91_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"AT91 Real Time Clock driver.\0A\00", align 1
@at91_rtc_upd_rdy = internal global %struct.completion { i32 0, %struct.swait_queue_head { %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @at91_rtc_upd_rdy, i64 8), ptr getelementptr (i8, ptr @at91_rtc_upd_rdy, i64 8) } } }, align 4
@at91_rtc_updated = internal global %struct.completion { i32 0, %struct.swait_queue_head { %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @at91_rtc_updated, i64 8), ptr getelementptr (i8, ptr @at91_rtc_updated, i64 8) } } }, align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias360, ptr @__UNIQUE_ID_author357, ptr @__UNIQUE_ID_description358, ptr @__UNIQUE_ID_license359], section "llvm.metadata"

@__mod_of__at91_rtc_dt_ids_device_table = dso_local alias [6 x %struct.of_device_id], ptr @at91_rtc_dt_ids

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_probe(ptr noundef nonnull @at91_rtc_driver, ptr noundef nonnull @at91_rtc_probe, ptr noundef nonnull @__this_module) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @at91_rtc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @at91_rtc_probe(ptr noundef %0) #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @of_device_get_match_data(ptr noundef %2) #6
  store ptr %3, ptr @at91_rtc_config, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %76, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #7
  br label %76

9:                                                ; preds = %5
  %10 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #6
  store i32 %10, ptr @irq, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %76, label %12

12:                                               ; preds = %9
  %13 = load i32, ptr %6, align 4
  %14 = getelementptr inbounds %struct.resource, ptr %6, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = sub i32 1, %13
  %17 = add i32 %16, %15
  %18 = tail call ptr @devm_ioremap(ptr noundef %2, i32 noundef %13, i32 noundef %17) #6
  store ptr %18, ptr @at91_rtc_regs, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #7
  br label %76

21:                                               ; preds = %12
  %22 = tail call ptr @devm_rtc_allocate_device(ptr noundef %2) #6
  %23 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = ptrtoint ptr %22 to i32
  br label %76

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %22, ptr %27, align 8
  %28 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #6
  store ptr %28, ptr @sclk, align 4
  %29 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = ptrtoint ptr %28 to i32
  br label %76

32:                                               ; preds = %26
  %33 = tail call i32 @clk_prepare(ptr noundef %28) #6
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = tail call i32 @clk_enable(ptr noundef %28) #6
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  tail call void @clk_unprepare(ptr noundef %28) #6
  br label %39

39:                                               ; preds = %38, %32
  %40 = phi i32 [ %36, %38 ], [ %33, %32 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3) #7
  br label %76

41:                                               ; preds = %35
  %42 = load ptr, ptr @at91_rtc_regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 0) #6, !srcloc !8
  %43 = load ptr, ptr @at91_rtc_regs, align 4
  %44 = getelementptr i8, ptr %43, i32 4
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #6, !srcloc !9
  %46 = and i32 %45, -2
  %47 = load ptr, ptr @at91_rtc_regs, align 4
  %48 = getelementptr i8, ptr %47, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %46) #6, !srcloc !8
  tail call fastcc void @at91_rtc_write_idr(i32 noundef 31)
  %49 = load i32, ptr @irq, align 4
  %50 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %49, ptr noundef nonnull @at91_rtc_interrupt, ptr noundef null, i32 noundef 262272, ptr noundef nonnull @.str, ptr noundef %0) #6
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %41
  %53 = load i32, ptr @irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef %53) #7
  br label %73

54:                                               ; preds = %41
  %55 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 1
  %56 = load i16, ptr %55, align 4
  %57 = and i16 %56, 1
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = tail call i32 @device_init_wakeup(ptr noundef %2, i1 noundef zeroext true) #6
  br label %61

61:                                               ; preds = %59, %54
  %62 = load ptr, ptr @at91_rtc_config, align 4
  %63 = getelementptr inbounds %struct.at91_rtc_config, ptr %62, i32 0, i32 1
  %64 = load i8, ptr %63, align 1, !range !10
  %65 = icmp eq i8 %64, 0
  %66 = select i1 %65, ptr @at91_rtc_ops, ptr @sama5d4_rtc_ops
  %67 = getelementptr inbounds %struct.rtc_device, ptr %22, i32 0, i32 3
  store ptr %66, ptr %67, align 8
  %68 = getelementptr inbounds %struct.rtc_device, ptr %22, i32 0, i32 22
  store i64 -2208988800, ptr %68, align 8
  %69 = getelementptr inbounds %struct.rtc_device, ptr %22, i32 0, i32 23
  store i64 4102444799, ptr %69, align 8
  %70 = tail call i32 @__devm_rtc_register_device(ptr noundef nonnull @__this_module, ptr noundef %22) #6
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %61
  tail call fastcc void @at91_rtc_write_ier(i32 noundef 4)
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.5) #7
  br label %76

73:                                               ; preds = %61, %52
  %74 = phi i32 [ %50, %52 ], [ %70, %61 ]
  %75 = load ptr, ptr @sclk, align 4
  tail call void @clk_disable(ptr noundef %75) #6
  tail call void @clk_unprepare(ptr noundef %75) #6
  br label %76

76:                                               ; preds = %73, %72, %39, %30, %24, %20, %9, %8, %1
  %77 = phi i32 [ %25, %24 ], [ %31, %30 ], [ %40, %39 ], [ %74, %73 ], [ 0, %72 ], [ -12, %20 ], [ -6, %8 ], [ -19, %1 ], [ -6, %9 ]
  ret i32 %77
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @at91_rtc_remove(ptr nocapture noundef readnone %0) #0 section ".exit.text" {
  tail call fastcc void @at91_rtc_write_idr(i32 noundef 31)
  %2 = load ptr, ptr @sclk, align 4
  tail call void @clk_disable(ptr noundef %2) #6
  tail call void @clk_unprepare(ptr noundef %2) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @at91_rtc_shutdown(ptr nocapture noundef readnone %0) #2 {
  %2 = load ptr, ptr @at91_rtc_regs, align 4
  %3 = getelementptr i8, ptr %2, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 31) #6, !srcloc !8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @at91_rtc_write_idr(i32 noundef %0) unnamed_addr #2 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @at91_rtc_lock) #6
  %3 = load ptr, ptr @at91_rtc_regs, align 4
  %4 = getelementptr i8, ptr %3, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %0) #6, !srcloc !8
  %5 = load ptr, ptr @at91_rtc_regs, align 4
  %6 = getelementptr i8, ptr %5, i32 24
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #6, !srcloc !9
  %8 = xor i32 %0, -1
  %9 = load i32, ptr @at91_rtc_shadow_imr, align 4
  %10 = and i32 %9, %8
  store i32 %10, ptr @at91_rtc_shadow_imr, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @at91_rtc_lock, i32 noundef %2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_rtc_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr @at91_rtc_regs, align 4
  %3 = getelementptr i8, ptr %2, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 2) #6, !srcloc !8
  %4 = load ptr, ptr @at91_rtc_config, align 4
  %5 = load i8, ptr %4, align 1, !range !10
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @at91_rtc_lock) #6
  %9 = load i32, ptr @at91_rtc_shadow_imr, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @at91_rtc_lock, i32 noundef %8) #6
  br label %14

10:                                               ; preds = %1
  %11 = load ptr, ptr @at91_rtc_regs, align 4
  %12 = getelementptr i8, ptr %11, i32 40
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #6, !srcloc !9
  br label %14

14:                                               ; preds = %10, %7
  %15 = phi i32 [ %9, %7 ], [ %13, %10 ]
  %16 = and i32 %15, 6
  store i32 %16, ptr @at91_rtc_imr, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %41, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %20 = load i16, ptr %19, align 4
  %21 = and i16 %20, 1
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32, ptr @irq, align 4
  %29 = tail call i32 @irq_set_irq_wake(i32 noundef %28, i32 noundef 1) #6
  %30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @suspended_lock) #6
  store i1 true, ptr @suspended, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @suspended_lock, i32 noundef %30) #6
  br label %41

31:                                               ; preds = %23, %18
  %32 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @at91_rtc_lock) #6
  %33 = load ptr, ptr @at91_rtc_regs, align 4
  %34 = getelementptr i8, ptr %33, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %16) #6, !srcloc !8
  %35 = load ptr, ptr @at91_rtc_regs, align 4
  %36 = getelementptr i8, ptr %35, i32 24
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #6, !srcloc !9
  %38 = xor i32 %16, -1
  %39 = load i32, ptr @at91_rtc_shadow_imr, align 4
  %40 = and i32 %39, %38
  store i32 %40, ptr @at91_rtc_shadow_imr, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @at91_rtc_lock, i32 noundef %32) #6
  br label %41

41:                                               ; preds = %31, %27, %14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_rtc_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load i32, ptr @at91_rtc_imr, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %31, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %8 = load i16, ptr %7, align 4
  %9 = and i16 %8, 1
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  %16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @suspended_lock) #6
  %17 = load i32, ptr @cached_events, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @rtc_update_irq(ptr noundef %3, i32 noundef 1, i32 noundef %17) #6
  store i32 0, ptr @cached_events, align 4
  br label %20

20:                                               ; preds = %19, %15
  store i1 false, ptr @suspended, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @suspended_lock, i32 noundef %16) #6
  %21 = load i32, ptr @irq, align 4
  %22 = tail call i32 @irq_set_irq_wake(i32 noundef %21, i32 noundef 0) #6
  %23 = load i32, ptr @at91_rtc_imr, align 4
  br label %24

24:                                               ; preds = %20, %11, %6
  %25 = phi i32 [ %4, %6 ], [ %23, %20 ], [ %4, %11 ]
  %26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @at91_rtc_lock) #6
  %27 = load i32, ptr @at91_rtc_shadow_imr, align 4
  %28 = or i32 %27, %25
  store i32 %28, ptr @at91_rtc_shadow_imr, align 4
  %29 = load ptr, ptr @at91_rtc_regs, align 4
  %30 = getelementptr i8, ptr %29, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %25) #6, !srcloc !8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @at91_rtc_lock, i32 noundef %26) #6
  br label %31

31:                                               ; preds = %24, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @at91_rtc_write_ier(i32 noundef %0) unnamed_addr #2 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @at91_rtc_lock) #6
  %3 = load i32, ptr @at91_rtc_shadow_imr, align 4
  %4 = or i32 %3, %0
  store i32 %4, ptr @at91_rtc_shadow_imr, align 4
  %5 = load ptr, ptr @at91_rtc_regs, align 4
  %6 = getelementptr i8, ptr %5, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %0) #6, !srcloc !8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @at91_rtc_lock, i32 noundef %2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_rtc_interrupt(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 8
  %4 = load ptr, ptr %3, align 8
  tail call void @_raw_spin_lock(ptr noundef nonnull @suspended_lock) #6
  %5 = load ptr, ptr @at91_rtc_regs, align 4
  %6 = getelementptr i8, ptr %5, i32 24
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #6, !srcloc !9
  %8 = load ptr, ptr @at91_rtc_config, align 4
  %9 = load i8, ptr %8, align 1, !range !10
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @at91_rtc_lock) #6
  %13 = load i32, ptr @at91_rtc_shadow_imr, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @at91_rtc_lock, i32 noundef %12) #6
  br label %18

14:                                               ; preds = %2
  %15 = load ptr, ptr @at91_rtc_regs, align 4
  %16 = getelementptr i8, ptr %15, i32 40
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #6, !srcloc !9
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi i32 [ %13, %11 ], [ %17, %14 ]
  %20 = and i32 %19, %7
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %59, label %22

22:                                               ; preds = %18
  %23 = and i32 %20, 2
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, i32 0, i32 160
  %26 = and i32 %20, 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %22
  tail call void @complete(ptr noundef nonnull @at91_rtc_upd_rdy) #6
  %29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @at91_rtc_lock) #6
  %30 = load ptr, ptr @at91_rtc_regs, align 4
  %31 = getelementptr i8, ptr %30, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 4) #6, !srcloc !8
  %32 = load ptr, ptr @at91_rtc_regs, align 4
  %33 = getelementptr i8, ptr %32, i32 24
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #6, !srcloc !9
  %35 = load i32, ptr @at91_rtc_shadow_imr, align 4
  %36 = and i32 %35, -5
  store i32 %36, ptr @at91_rtc_shadow_imr, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @at91_rtc_lock, i32 noundef %29) #6
  br label %37

37:                                               ; preds = %28, %22
  %38 = and i32 %20, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  tail call void @complete(ptr noundef nonnull @at91_rtc_updated) #6
  br label %41

41:                                               ; preds = %40, %37
  %42 = load ptr, ptr @at91_rtc_regs, align 4
  %43 = getelementptr i8, ptr %42, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %20) #6, !srcloc !8
  %44 = load i1, ptr @suspended, align 1
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  tail call void @rtc_update_irq(ptr noundef %4, i32 noundef 1, i32 noundef %25) #6
  br label %59

46:                                               ; preds = %41
  %47 = load i32, ptr @cached_events, align 4
  %48 = or i32 %47, %25
  store i32 %48, ptr @cached_events, align 4
  %49 = load i32, ptr @at91_rtc_imr, align 4
  %50 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @at91_rtc_lock) #6
  %51 = load ptr, ptr @at91_rtc_regs, align 4
  %52 = getelementptr i8, ptr %51, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %49) #6, !srcloc !8
  %53 = load ptr, ptr @at91_rtc_regs, align 4
  %54 = getelementptr i8, ptr %53, i32 24
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #6, !srcloc !9
  %56 = xor i32 %49, -1
  %57 = load i32, ptr @at91_rtc_shadow_imr, align 4
  %58 = and i32 %57, %56
  store i32 %58, ptr @at91_rtc_shadow_imr, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @at91_rtc_lock, i32 noundef %50) #6
  tail call void @pm_system_wakeup() #6
  br label %59

59:                                               ; preds = %46, %45, %18
  %60 = phi i32 [ 0, %18 ], [ 1, %46 ], [ 1, %45 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !11
  %61 = load i16, ptr @suspended_lock, align 4
  %62 = add i16 %61, 1
  store i16 %62, ptr @suspended_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !14
  ret i32 %60
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_system_wakeup() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_rtc_readtime(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) #2 {
  tail call fastcc void @at91_rtc_decodetime(i32 noundef 8, i32 noundef 12, ptr noundef %1)
  %3 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = tail call i32 @rtc_year_days(i32 noundef %4, i32 noundef %6, i32 noundef %8) #6
  %10 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 7
  store i32 %9, ptr %10, align 4
  %11 = load i32, ptr %7, align 4
  %12 = add i32 %11, -1900
  store i32 %12, ptr %7, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_rtc_settime(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #2 {
  tail call void @wait_for_completion(ptr noundef nonnull @at91_rtc_upd_rdy) #6
  %3 = load ptr, ptr @at91_rtc_regs, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !9
  %5 = or i32 %4, 3
  %6 = load ptr, ptr @at91_rtc_regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %5) #6, !srcloc !8
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @at91_rtc_lock) #6
  %8 = load i32, ptr @at91_rtc_shadow_imr, align 4
  %9 = or i32 %8, 1
  store i32 %9, ptr @at91_rtc_shadow_imr, align 4
  %10 = load ptr, ptr @at91_rtc_regs, align 4
  %11 = getelementptr i8, ptr %10, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 1) #6, !srcloc !8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @at91_rtc_lock, i32 noundef %7) #6
  tail call void @wait_for_completion(ptr noundef nonnull @at91_rtc_updated) #6
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @at91_rtc_lock) #6
  %13 = load ptr, ptr @at91_rtc_regs, align 4
  %14 = getelementptr i8, ptr %13, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 1) #6, !srcloc !8
  %15 = load ptr, ptr @at91_rtc_regs, align 4
  %16 = getelementptr i8, ptr %15, i32 24
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #6, !srcloc !9
  %18 = load i32, ptr @at91_rtc_shadow_imr, align 4
  %19 = and i32 %18, -2
  store i32 %19, ptr @at91_rtc_shadow_imr, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @at91_rtc_lock, i32 noundef %12) #6
  %20 = load i32, ptr %1, align 4
  %21 = tail call zeroext i8 @_bin2bcd(i32 noundef %20) #8
  %22 = and i8 %21, 127
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = tail call zeroext i8 @_bin2bcd(i32 noundef %25) #8
  %27 = zext i8 %26 to i32
  %28 = shl nuw nsw i32 %27, 8
  %29 = and i32 %28, 32512
  %30 = or i32 %29, %23
  %31 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = tail call zeroext i8 @_bin2bcd(i32 noundef %32) #8
  %34 = zext i8 %33 to i32
  %35 = shl nuw nsw i32 %34, 16
  %36 = and i32 %35, 4128768
  %37 = or i32 %30, %36
  %38 = load ptr, ptr @at91_rtc_regs, align 4
  %39 = getelementptr i8, ptr %38, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #6, !srcloc !8
  %40 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 5
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 4
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 6
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = tail call zeroext i8 @_bin2bcd(i32 noundef %47) #8
  %49 = zext i8 %48 to i32
  %50 = add i32 %45, 1
  %51 = tail call zeroext i8 @_bin2bcd(i32 noundef %50) #8
  %52 = zext i8 %51 to i32
  %53 = add i32 %43, 1
  %54 = tail call zeroext i8 @_bin2bcd(i32 noundef %53) #8
  %55 = zext i8 %54 to i32
  %56 = srem i32 %41, 100
  %57 = tail call zeroext i8 @_bin2bcd(i32 noundef %56) #8
  %58 = zext i8 %57 to i32
  %59 = add i32 %41, 1900
  %60 = sdiv i32 %59, 100
  %61 = tail call zeroext i8 @_bin2bcd(i32 noundef %60) #8
  %62 = and i8 %61, 127
  %63 = zext i8 %62 to i32
  %64 = shl nuw nsw i32 %58, 8
  %65 = or i32 %64, %63
  %66 = shl nuw nsw i32 %55, 16
  %67 = and i32 %66, 2031616
  %68 = or i32 %65, %67
  %69 = shl nuw nsw i32 %52, 21
  %70 = and i32 %69, 14680064
  %71 = or i32 %68, %70
  %72 = shl nuw i32 %49, 24
  %73 = and i32 %72, 1056964608
  %74 = or i32 %71, %73
  %75 = load ptr, ptr @at91_rtc_regs, align 4
  %76 = getelementptr i8, ptr %75, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %74) #6, !srcloc !8
  %77 = load ptr, ptr @at91_rtc_regs, align 4
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #6, !srcloc !9
  %79 = load ptr, ptr @at91_rtc_regs, align 4
  %80 = getelementptr i8, ptr %79, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 4) #6, !srcloc !8
  %81 = and i32 %78, -4
  %82 = load ptr, ptr @at91_rtc_regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 %81) #6, !srcloc !8
  %83 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @at91_rtc_lock) #6
  %84 = load i32, ptr @at91_rtc_shadow_imr, align 4
  %85 = or i32 %84, 4
  store i32 %85, ptr @at91_rtc_shadow_imr, align 4
  %86 = load ptr, ptr @at91_rtc_regs, align 4
  %87 = getelementptr i8, ptr %86, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 4) #6, !srcloc !8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @at91_rtc_lock, i32 noundef %83) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_rtc_readalarm(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  tail call fastcc void @at91_rtc_decodetime(i32 noundef 16, i32 noundef 20, ptr noundef %3)
  %4 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 5
  store i32 -1, ptr %4, align 4
  %5 = load ptr, ptr @at91_rtc_config, align 4
  %6 = load i8, ptr %5, align 1, !range !10
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @at91_rtc_lock) #6
  %10 = load i32, ptr @at91_rtc_shadow_imr, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @at91_rtc_lock, i32 noundef %9) #6
  br label %15

11:                                               ; preds = %2
  %12 = load ptr, ptr @at91_rtc_regs, align 4
  %13 = getelementptr i8, ptr %12, i32 40
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #6, !srcloc !9
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  %17 = trunc i32 %16 to i8
  %18 = lshr i8 %17, 1
  %19 = and i8 %18, 1
  store i8 %19, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_rtc_setalarm(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @at91_rtc_lock) #6
  %5 = load ptr, ptr @at91_rtc_regs, align 4
  %6 = getelementptr i8, ptr %5, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 2) #6, !srcloc !8
  %7 = load ptr, ptr @at91_rtc_regs, align 4
  %8 = getelementptr i8, ptr %7, i32 24
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #6, !srcloc !9
  %10 = load i32, ptr @at91_rtc_shadow_imr, align 4
  %11 = and i32 %10, -3
  store i32 %11, ptr @at91_rtc_shadow_imr, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @at91_rtc_lock, i32 noundef %4) #6
  %12 = load i32, ptr %3, align 4
  %13 = tail call zeroext i8 @_bin2bcd(i32 noundef %12) #8
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = tail call zeroext i8 @_bin2bcd(i32 noundef %16) #8
  %18 = zext i8 %17 to i32
  %19 = shl nuw nsw i32 %18, 8
  %20 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = tail call zeroext i8 @_bin2bcd(i32 noundef %21) #8
  %23 = zext i8 %22 to i32
  %24 = shl nuw nsw i32 %23, 16
  %25 = and i32 %24, 4128768
  %26 = or i32 %19, %14
  %27 = or i32 %26, %25
  %28 = or i32 %27, 8421504
  %29 = load ptr, ptr @at91_rtc_regs, align 4
  %30 = getelementptr i8, ptr %29, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #6, !srcloc !8
  %31 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, 1
  %34 = tail call zeroext i8 @_bin2bcd(i32 noundef %33) #8
  %35 = zext i8 %34 to i32
  %36 = shl nuw nsw i32 %35, 16
  %37 = and i32 %36, 2031616
  %38 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 3
  %39 = load i32, ptr %38, align 4
  %40 = tail call zeroext i8 @_bin2bcd(i32 noundef %39) #8
  %41 = zext i8 %40 to i32
  %42 = shl nuw i32 %41, 24
  %43 = and i32 %42, 1056964608
  %44 = or i32 %37, %43
  %45 = or i32 %44, -2139095040
  %46 = load ptr, ptr @at91_rtc_regs, align 4
  %47 = getelementptr i8, ptr %46, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %45) #6, !srcloc !8
  %48 = load i8, ptr %1, align 4
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %2
  %51 = load ptr, ptr @at91_rtc_regs, align 4
  %52 = getelementptr i8, ptr %51, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 2) #6, !srcloc !8
  %53 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @at91_rtc_lock) #6
  %54 = load i32, ptr @at91_rtc_shadow_imr, align 4
  %55 = or i32 %54, 2
  store i32 %55, ptr @at91_rtc_shadow_imr, align 4
  %56 = load ptr, ptr @at91_rtc_regs, align 4
  %57 = getelementptr i8, ptr %56, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 2) #6, !srcloc !8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @at91_rtc_lock, i32 noundef %53) #6
  br label %58

58:                                               ; preds = %50, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_rtc_alarm_irq_enable(ptr nocapture noundef readnone %0, i32 noundef %1) #2 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr @at91_rtc_regs, align 4
  %6 = getelementptr i8, ptr %5, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 2) #6, !srcloc !8
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @at91_rtc_lock) #6
  %8 = load i32, ptr @at91_rtc_shadow_imr, align 4
  %9 = or i32 %8, 2
  store i32 %9, ptr @at91_rtc_shadow_imr, align 4
  %10 = load ptr, ptr @at91_rtc_regs, align 4
  %11 = getelementptr i8, ptr %10, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 2) #6, !srcloc !8
  br label %21

12:                                               ; preds = %2
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @at91_rtc_lock) #6
  %14 = load ptr, ptr @at91_rtc_regs, align 4
  %15 = getelementptr i8, ptr %14, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 2) #6, !srcloc !8
  %16 = load ptr, ptr @at91_rtc_regs, align 4
  %17 = getelementptr i8, ptr %16, i32 24
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #6, !srcloc !9
  %19 = load i32, ptr @at91_rtc_shadow_imr, align 4
  %20 = and i32 %19, -3
  store i32 %20, ptr @at91_rtc_shadow_imr, align 4
  br label %21

21:                                               ; preds = %12, %4
  %22 = phi i32 [ %13, %12 ], [ %7, %4 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @at91_rtc_lock, i32 noundef %22) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_rtc_readoffset(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = load ptr, ptr @at91_rtc_regs, align 4
  %4 = getelementptr i8, ptr %3, i32 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #6, !srcloc !9
  %6 = lshr i32 %5, 8
  %7 = and i32 %6, 127
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %2
  %10 = add nuw nsw i32 %7, 1
  %11 = and i32 %5, 16
  %12 = icmp eq i32 %11, 0
  %13 = xor i32 %7, -1
  %14 = select i1 %12, i32 %13, i32 %10
  %15 = and i32 %5, 32768
  %16 = icmp eq i32 %15, 0
  %17 = mul nsw i32 %14, 20
  %18 = select i1 %16, i32 %17, i32 %14
  %19 = icmp sgt i32 %18, 0
  %20 = select i1 %19, i32 2, i32 -2
  %21 = sdiv i32 %18, %20
  %22 = add nsw i32 %21, 3906000
  %23 = sdiv i32 %22, %18
  br label %24

24:                                               ; preds = %9, %2
  %25 = phi i32 [ %23, %9 ], [ 0, %2 ]
  store i32 %25, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_rtc_setoffset(ptr nocapture noundef readnone %0, i32 noundef %1) #2 {
  %3 = add i32 %1, -1953001
  %4 = icmp ult i32 %3, -3906001
  br i1 %4, label %40, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr @at91_rtc_regs, align 4
  %7 = getelementptr i8, ptr %6, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !9
  %9 = and i32 %8, -65297
  %10 = icmp sgt i32 %1, 0
  %11 = or i32 %9, 16
  %12 = select i1 %10, i32 %11, i32 %9
  %13 = tail call i32 @llvm.abs.i32(i32 %1, i1 true)
  %14 = icmp ult i32 %13, 764
  br i1 %14, label %15, label %18

15:                                               ; preds = %5
  %16 = load ptr, ptr @at91_rtc_regs, align 4
  %17 = getelementptr i8, ptr %16, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %9) #6, !srcloc !8
  br label %40

18:                                               ; preds = %5
  %19 = icmp ult i32 %13, 29208
  br i1 %19, label %20, label %25

20:                                               ; preds = %18
  %21 = mul nuw nsw i32 %13, 20
  %22 = mul nuw nsw i32 %13, 10
  %23 = add nuw nsw i32 %22, 3906000
  %24 = udiv i32 %23, %21
  br label %30

25:                                               ; preds = %18
  %26 = lshr i32 %13, 1
  %27 = add nuw nsw i32 %26, 3906000
  %28 = udiv i32 %27, %13
  %29 = or i32 %12, 32768
  br label %30

30:                                               ; preds = %25, %20
  %31 = phi i32 [ %12, %20 ], [ %29, %25 ]
  %32 = phi i32 [ %24, %20 ], [ %28, %25 ]
  %33 = tail call i32 @llvm.smin.i32(i32 %32, i32 128)
  %34 = shl nuw nsw i32 %33, 8
  %35 = add nuw nsw i32 %34, 32512
  %36 = and i32 %35, 32512
  %37 = or i32 %36, %31
  %38 = load ptr, ptr @at91_rtc_regs, align 4
  %39 = getelementptr i8, ptr %38, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #6, !srcloc !8
  br label %40

40:                                               ; preds = %30, %15, %2
  %41 = phi i32 [ 0, %15 ], [ 0, %30 ], [ -34, %2 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @at91_rtc_decodetime(i32 noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #2 {
  br label %4

4:                                                ; preds = %20, %3
  %5 = load ptr, ptr @at91_rtc_regs, align 4
  %6 = getelementptr i8, ptr %5, i32 %0
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #6, !srcloc !9
  %8 = load ptr, ptr @at91_rtc_regs, align 4
  %9 = getelementptr i8, ptr %8, i32 %1
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !9
  %11 = load ptr, ptr @at91_rtc_regs, align 4
  %12 = getelementptr i8, ptr %11, i32 %0
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #6, !srcloc !9
  %14 = icmp eq i32 %7, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %4
  %16 = load ptr, ptr @at91_rtc_regs, align 4
  %17 = getelementptr i8, ptr %16, i32 %1
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #6, !srcloc !9
  %19 = icmp eq i32 %10, %18
  br i1 %19, label %21, label %20

20:                                               ; preds = %15, %4
  br label %4

21:                                               ; preds = %15
  %22 = trunc i32 %7 to i8
  %23 = and i8 %22, 127
  %24 = tail call i32 @_bcd2bin(i8 noundef zeroext %23) #8
  store i32 %24, ptr %2, align 4
  %25 = lshr i32 %7, 8
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 127
  %28 = tail call i32 @_bcd2bin(i8 noundef zeroext %27) #8
  %29 = getelementptr inbounds %struct.rtc_time, ptr %2, i32 0, i32 1
  store i32 %28, ptr %29, align 4
  %30 = lshr i32 %7, 16
  %31 = trunc i32 %30 to i8
  %32 = and i8 %31, 63
  %33 = tail call i32 @_bcd2bin(i8 noundef zeroext %32) #8
  %34 = getelementptr inbounds %struct.rtc_time, ptr %2, i32 0, i32 2
  store i32 %33, ptr %34, align 4
  %35 = trunc i32 %10 to i8
  %36 = and i8 %35, 127
  %37 = tail call i32 @_bcd2bin(i8 noundef zeroext %36) #8
  %38 = mul i32 %37, 100
  %39 = getelementptr inbounds %struct.rtc_time, ptr %2, i32 0, i32 5
  %40 = lshr i32 %10, 8
  %41 = trunc i32 %40 to i8
  %42 = tail call i32 @_bcd2bin(i8 noundef zeroext %41) #8
  %43 = add i32 %38, %42
  store i32 %43, ptr %39, align 4
  %44 = lshr i32 %10, 21
  %45 = trunc i32 %44 to i8
  %46 = and i8 %45, 7
  %47 = tail call i32 @_bcd2bin(i8 noundef zeroext %46) #8
  %48 = add i32 %47, -1
  %49 = getelementptr inbounds %struct.rtc_time, ptr %2, i32 0, i32 6
  store i32 %48, ptr %49, align 4
  %50 = lshr i32 %10, 16
  %51 = trunc i32 %50 to i8
  %52 = and i8 %51, 31
  %53 = tail call i32 @_bcd2bin(i8 noundef zeroext %52) #8
  %54 = add i32 %53, -1
  %55 = getelementptr inbounds %struct.rtc_time, ptr %2, i32 0, i32 4
  store i32 %54, ptr %55, align 4
  %56 = lshr i32 %10, 24
  %57 = trunc i32 %56 to i8
  %58 = and i8 %57, 63
  %59 = tail call i32 @_bcd2bin(i8 noundef zeroext %58) #8
  %60 = getelementptr inbounds %struct.rtc_time, ptr %2, i32 0, i32 3
  store i32 %59, ptr %60, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_year_days(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind readnone willreturn }

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
!8 = !{i64 3124746}
!9 = !{i64 3125164}
!10 = !{i8 0, i8 2}
!11 = !{i64 2148922205}
!12 = !{i64 2148918029}
!13 = !{i64 2148918104, i64 2148918131, i64 2148918178, i64 2148918200, i64 2148918228, i64 2148918248}
!14 = !{i64 2148945208}
