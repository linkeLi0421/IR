; ModuleID = '/llk/IR/drivers/rtc/rtc-sa1100.c_pt.bc'
source_filename = "../drivers/rtc/rtc-sa1100.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sa1100_rtc_init:\09\09\09\09\09"
module asm "\09.asciz \09\22sa1100_rtc_init\22\09\09\09\09\09"
module asm "__kstrtabns_sa1100_rtc_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.sa1100_rtc = type { %struct.spinlock, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"failed to find rtc clock source\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"warning: initializing default clock divider/trim value\0A\00", align 1
@sa1100_rtc_ops = internal constant %struct.rtc_class_ops { ptr null, ptr @sa1100_rtc_read_time, ptr @sa1100_rtc_set_time, ptr @sa1100_rtc_read_alarm, ptr @sa1100_rtc_set_alarm, ptr @sa1100_rtc_proc, ptr @sa1100_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, align 4
@__this_module = external dso_local global %struct.module, align 64
@__kstrtab_sa1100_rtc_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_sa1100_rtc_init = external dso_local constant [0 x i8], align 1
@__ksymtab_sa1100_rtc_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sa1100_rtc_init to i32), ptr @__kstrtab_sa1100_rtc_init, ptr @__kstrtabns_sa1100_rtc_init }, section "___ksymtab_gpl+sa1100_rtc_init", align 4
@sa1100_rtc_dt_ids = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mrvl,sa1100-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mrvl,mmp-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author210 = internal constant [42 x i8] c"author=Richard Purdie <rpurdie@rpsys.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description211 = internal constant [54 x i8] c"description=SA11x0/PXA2xx Realtime Clock Driver (RTC)\00", section ".modinfo", align 1
@__UNIQUE_ID_license212 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias213 = internal constant [26 x i8] c"alias=platform:sa1100-rtc\00", section ".modinfo", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"trim/divider\09\09: 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"RTSR\09\09\09: 0x%08x\0A\00", align 1
@sa1100_rtc_driver = internal global %struct.platform_driver { ptr @sa1100_rtc_probe, ptr @sa1100_rtc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.4, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sa1100_rtc_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sa1100_rtc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"sa1100-rtc\00", align 1
@sa1100_rtc_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @sa1100_rtc_suspend, ptr @sa1100_rtc_resume, ptr @sa1100_rtc_suspend, ptr @sa1100_rtc_resume, ptr @sa1100_rtc_suspend, ptr @sa1100_rtc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"rtc 1Hz\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"rtc alarm\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"IRQ %d already in use.\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"rtc Alrm\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"mrvl,sa1100-rtc\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_alias213, ptr @__UNIQUE_ID_author210, ptr @__UNIQUE_ID_description211, ptr @__UNIQUE_ID_license212, ptr @__ksymtab_sa1100_rtc_init], section "llvm.metadata"

@__mod_of__sa1100_rtc_dt_ids_device_table = dso_local alias [3 x %struct.of_device_id], ptr @sa1100_rtc_dt_ids

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sa1100_rtc_init(ptr noundef %0, ptr nocapture noundef %1) #0 {
  store i32 0, ptr %1, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef null) #4
  %5 = getelementptr inbounds %struct.sa1100_rtc, ptr %1, i32 0, i32 8
  store ptr %4, ptr %5, align 4
  %6 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str) #5
  %8 = load ptr, ptr %5, align 4
  %9 = ptrtoint ptr %8 to i32
  br label %42

10:                                               ; preds = %2
  %11 = tail call i32 @clk_prepare(ptr noundef %4) #4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %42

13:                                               ; preds = %10
  %14 = tail call i32 @clk_enable(ptr noundef %4) #4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  tail call void @clk_unprepare(ptr noundef %4) #4
  br label %42

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.sa1100_rtc, ptr %1, i32 0, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #4, !srcloc !8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load ptr, ptr %18, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 32767) #4, !srcloc !9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.1) #5
  %24 = getelementptr inbounds %struct.sa1100_rtc, ptr %1, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 0) #4, !srcloc !9
  br label %26

26:                                               ; preds = %22, %17
  %27 = getelementptr inbounds %struct.sa1100_rtc, ptr %1, i32 0, i32 7
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.rtc_device, ptr %28, i32 0, i32 3
  store ptr @sa1100_rtc_ops, ptr %29, align 8
  %30 = load ptr, ptr %27, align 4
  %31 = getelementptr inbounds %struct.rtc_device, ptr %30, i32 0, i32 12
  store i32 1024, ptr %31, align 4
  %32 = load ptr, ptr %27, align 4
  %33 = getelementptr inbounds %struct.rtc_device, ptr %32, i32 0, i32 23
  store i64 4294967295, ptr %33, align 8
  %34 = load ptr, ptr %27, align 4
  %35 = tail call i32 @__devm_rtc_register_device(ptr noundef nonnull @__this_module, ptr noundef %34) #4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %26
  %38 = load ptr, ptr %5, align 4
  tail call void @clk_disable(ptr noundef %38) #4
  tail call void @clk_unprepare(ptr noundef %38) #4
  br label %42

39:                                               ; preds = %26
  %40 = getelementptr inbounds %struct.sa1100_rtc, ptr %1, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 3) #4, !srcloc !9
  br label %42

42:                                               ; preds = %39, %37, %16, %10, %7
  %43 = phi i32 [ %9, %7 ], [ %35, %37 ], [ 0, %39 ], [ %14, %16 ], [ %11, %10 ]
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #3 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sa1100_rtc_driver, ptr noundef nonnull @__this_module) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #3 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sa1100_rtc_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sa1100_rtc_read_time(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sa1100_rtc, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #4, !srcloc !8
  %8 = zext i32 %7 to i64
  tail call void @rtc_time64_to_tm(i64 noundef %8, ptr noundef %1) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sa1100_rtc_set_time(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i64 @rtc_tm_to_time64(ptr noundef %1) #4
  %6 = trunc i64 %5 to i32
  %7 = getelementptr inbounds %struct.sa1100_rtc, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #4, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sa1100_rtc_read_alarm(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sa1100_rtc, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #4, !srcloc !8
  %8 = trunc i32 %7 to i8
  %9 = lshr i8 %8, 2
  %10 = and i8 %9, 1
  store i8 %10, ptr %1, align 4
  %11 = and i8 %8, 1
  %12 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 1
  store i8 %11, ptr %12, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sa1100_rtc_set_alarm(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  tail call void @_raw_spin_lock_irq(ptr noundef %4) #4
  %5 = getelementptr inbounds %struct.sa1100_rtc, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #4, !srcloc !8
  %8 = and i32 %7, 13
  %9 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %8) #4, !srcloc !9
  %10 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  %11 = tail call i64 @rtc_tm_to_time64(ptr noundef %10) #4
  %12 = trunc i64 %11 to i32
  %13 = getelementptr inbounds %struct.sa1100_rtc, ptr %4, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #4, !srcloc !9
  %15 = load i8, ptr %1, align 4
  %16 = icmp eq i8 %15, 0
  %17 = load ptr, ptr %5, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #4
  br i1 %16, label %22, label %19

19:                                               ; preds = %2
  %20 = or i32 %18, 4
  %21 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %20) #4, !srcloc !9
  br label %25

22:                                               ; preds = %2
  %23 = and i32 %18, -5
  %24 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %23) #4, !srcloc !9
  br label %25

25:                                               ; preds = %22, %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !10
  %26 = load i16, ptr %4, align 4
  %27 = add i16 %26, 1
  store i16 %27, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #4, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sa1100_rtc_proc(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sa1100_rtc, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #4, !srcloc !8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %7) #4
  %8 = getelementptr inbounds %struct.sa1100_rtc, ptr %4, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #4, !srcloc !8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef %10) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sa1100_rtc_alarm_irq_enable(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  tail call void @_raw_spin_lock_irq(ptr noundef %4) #4
  %5 = getelementptr inbounds %struct.sa1100_rtc, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #4, !srcloc !8
  %8 = icmp eq i32 %1, 0
  %9 = and i32 %7, -5
  %10 = select i1 %8, i32 0, i32 4
  %11 = or i32 %9, %10
  %12 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %11) #4, !srcloc !9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !10
  %13 = load i16, ptr %4, align 4
  %14 = add i16 %13, 1
  store i16 %14, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #4, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_time64_to_tm(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sa1100_rtc_probe(ptr noundef %0) #0 {
  %2 = tail call i32 @platform_get_irq_byname(ptr noundef %0, ptr noundef nonnull @.str.5) #4
  %3 = tail call i32 @platform_get_irq_byname(ptr noundef %0, ptr noundef nonnull @.str.6) #4
  %4 = icmp slt i32 %2, 0
  %5 = icmp slt i32 %3, 0
  %6 = select i1 %4, i1 true, i1 %5
  br i1 %6, label %56, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %9 = tail call noalias ptr @devm_kmalloc(ptr noundef %8, i32 noundef 36, i32 noundef 3520) #4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %56, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.sa1100_rtc, ptr %9, i32 0, i32 5
  store i32 %2, ptr %12, align 4
  %13 = getelementptr inbounds %struct.sa1100_rtc, ptr %9, i32 0, i32 6
  store i32 %3, ptr %13, align 4
  %14 = tail call ptr @devm_rtc_allocate_device(ptr noundef %8) #4
  %15 = getelementptr inbounds %struct.sa1100_rtc, ptr %9, i32 0, i32 7
  store ptr %14, ptr %15, align 4
  %16 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = ptrtoint ptr %14 to i32
  br label %56

19:                                               ; preds = %11
  %20 = tail call i32 @devm_request_threaded_irq(ptr noundef %8, i32 noundef %2, ptr noundef nonnull @sa1100_rtc_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef %8) #4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.7, i32 noundef %2) #5
  br label %56

23:                                               ; preds = %19
  %24 = tail call i32 @devm_request_threaded_irq(ptr noundef %8, i32 noundef %3, ptr noundef nonnull @sa1100_rtc_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef %8) #4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.7, i32 noundef %3) #5
  br label %56

27:                                               ; preds = %23
  %28 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #4
  %29 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = ptrtoint ptr %28 to i32
  br label %56

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %34 = load ptr, ptr %33, align 8
  %35 = tail call i32 @of_device_is_compatible(ptr noundef %34, ptr noundef nonnull @.str.9) #4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = getelementptr i8, ptr %28, i32 4
  %39 = getelementptr i8, ptr %28, i32 16
  br label %43

40:                                               ; preds = %32
  %41 = getelementptr i8, ptr %28, i32 8
  %42 = getelementptr i8, ptr %28, i32 4
  br label %43

43:                                               ; preds = %40, %37
  %44 = phi i32 [ 12, %40 ], [ 8, %37 ]
  %45 = phi ptr [ %28, %40 ], [ %38, %37 ]
  %46 = phi ptr [ %41, %40 ], [ %39, %37 ]
  %47 = phi ptr [ %42, %40 ], [ %28, %37 ]
  %48 = getelementptr i8, ptr %28, i32 %44
  %49 = getelementptr inbounds %struct.sa1100_rtc, ptr %9, i32 0, i32 1
  store ptr %45, ptr %49, align 4
  %50 = getelementptr inbounds %struct.sa1100_rtc, ptr %9, i32 0, i32 3
  store ptr %46, ptr %50, align 4
  %51 = getelementptr inbounds %struct.sa1100_rtc, ptr %9, i32 0, i32 2
  store ptr %47, ptr %51, align 4
  %52 = getelementptr inbounds %struct.sa1100_rtc, ptr %9, i32 0, i32 4
  store ptr %48, ptr %52, align 4
  %53 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %9, ptr %53, align 8
  %54 = tail call i32 @device_init_wakeup(ptr noundef %8, i1 noundef zeroext true) #4
  %55 = tail call i32 @sa1100_rtc_init(ptr noundef %0, ptr noundef nonnull %9)
  br label %56

56:                                               ; preds = %43, %30, %26, %22, %17, %7, %1
  %57 = phi i32 [ %18, %17 ], [ %20, %22 ], [ %24, %26 ], [ %31, %30 ], [ %55, %43 ], [ -19, %1 ], [ -12, %7 ]
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sa1100_rtc_remove(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull %3) #4
  %6 = getelementptr inbounds %struct.sa1100_rtc, ptr %3, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #4, !srcloc !9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !10
  %8 = load i16, ptr %3, align 4
  %9 = add i16 %8, 1
  store i16 %9, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #4, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !14
  %10 = getelementptr inbounds %struct.sa1100_rtc, ptr %3, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  tail call void @clk_disable(ptr noundef %11) #4
  tail call void @clk_unprepare(ptr noundef %11) #4
  br label %12

12:                                               ; preds = %5, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sa1100_rtc_interrupt(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sa1100_rtc, ptr %4, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  tail call void @_raw_spin_lock(ptr noundef %4) #4
  %7 = getelementptr inbounds %struct.sa1100_rtc, ptr %4, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #4, !srcloc !8
  %10 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 0) #4, !srcloc !9
  %11 = and i32 %9, 12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = lshr i32 %9, 2
  %15 = and i32 %14, 3
  %16 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %15) #4, !srcloc !9
  br label %19

17:                                               ; preds = %2
  %18 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 3) #4, !srcloc !9
  br label %19

19:                                               ; preds = %17, %13
  %20 = and i32 %9, 1
  %21 = icmp eq i32 %20, 0
  %22 = and i32 %9, -5
  %23 = select i1 %21, i32 %9, i32 %22
  %24 = and i32 %23, 12
  %25 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %24) #4, !srcloc !9
  %26 = and i32 %23, 1
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, i32 0, i32 160
  %29 = and i32 %23, 2
  %30 = icmp eq i32 %29, 0
  %31 = or i32 %28, 144
  %32 = select i1 %30, i32 %28, i32 %31
  tail call void @rtc_update_irq(ptr noundef %6, i32 noundef 1, i32 noundef %32) #4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !10
  %33 = load i16, ptr %4, align 4
  %34 = add i16 %33, 1
  store i16 %34, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !15
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sa1100_rtc_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %5 = load i16, ptr %4, align 4
  %6 = and i16 %5, 1
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.sa1100_rtc, ptr %3, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @irq_set_irq_wake(i32 noundef %14, i32 noundef 1) #4
  br label %16

16:                                               ; preds = %12, %8, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sa1100_rtc_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %5 = load i16, ptr %4, align 4
  %6 = and i16 %5, 1
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.sa1100_rtc, ptr %3, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @irq_set_irq_wake(i32 noundef %14, i32 noundef 0) #4
  br label %16

16:                                               ; preds = %12, %8, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 3756117}
!9 = !{i64 3755699}
!10 = !{i64 2149229844}
!11 = !{i64 2149225668}
!12 = !{i64 2149225743, i64 2149225770, i64 2149225817, i64 2149225839, i64 2149225867, i64 2149225887}
!13 = !{i64 622279}
!14 = !{i64 2149253988}
!15 = !{i64 2149252847}
