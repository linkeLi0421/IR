; ModuleID = '/llk/IR/drivers/rtc/rtc-sh.c_pt.bc'
source_filename = "../drivers/rtc/rtc-sh.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.sh_rtc = type { ptr, i32, ptr, i32, i32, i32, ptr, ptr, %struct.spinlock, i32, i16 }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@sh_rtc_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sh-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description210 = internal constant [38 x i8] c"description=SuperH on-chip RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author211 = internal constant [119 x i8] c"author=Paul Mundt <lethal@linux-sh.org>, Jamie Lenehan <lenehan@twibble.org>, Angelo Castello <angelo.castello@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license212 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias213 = internal constant [22 x i8] c"alias=platform:sh-rtc\00", section ".modinfo", align 1
@sh_rtc_platform_driver = internal global %struct.platform_driver { ptr null, ptr @sh_rtc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sh_rtc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sh_rtc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [7 x i8] c"sh-rtc\00", align 1
@sh_rtc_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @sh_rtc_suspend, ptr @sh_rtc_resume, ptr @sh_rtc_suspend, ptr @sh_rtc_resume, ptr @sh_rtc_suspend, ptr @sh_rtc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"No IRQ resource\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"No IO resource\0A\00", align 1
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"rtc%d\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"request IRQ failed with %d, IRQ %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"sh-rtc period\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"request period IRQ failed with %d, IRQ %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"sh-rtc carry\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"request carry IRQ failed with %d, IRQ %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"sh-rtc alarm\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"request alarm IRQ failed with %d, IRQ %d\0A\00", align 1
@sh_rtc_ops = internal constant %struct.rtc_class_ops { ptr null, ptr @sh_rtc_read_time, ptr @sh_rtc_set_time, ptr @sh_rtc_read_alarm, ptr @sh_rtc_set_alarm, ptr @sh_rtc_proc, ptr @sh_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.12 = private unnamed_addr constant [16 x i8] c"carry_IRQ\09: %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"periodic_IRQ\09: %s\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias213, ptr @__UNIQUE_ID_author211, ptr @__UNIQUE_ID_description210, ptr @__UNIQUE_ID_license212], section "llvm.metadata"

@__mod_of__sh_rtc_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @sh_rtc_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_probe(ptr noundef nonnull @sh_rtc_platform_driver, ptr noundef nonnull @sh_rtc_probe, ptr noundef nonnull @__this_module) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sh_rtc_platform_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sh_rtc_probe(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca [6 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(6) %2, i8 0, i32 6, i1 false), !annotation !8
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 44, i32 noundef 3520) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %133, label %6, !prof !9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.sh_rtc, ptr %4, i32 0, i32 8
  store i32 0, ptr %7, align 4
  %8 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #9
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %10, label %11, !prof !9

10:                                               ; preds = %6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #10
  br label %133

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.sh_rtc, ptr %4, i32 0, i32 4
  store i32 %8, ptr %12, align 4
  %13 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 1) #9
  %14 = getelementptr inbounds %struct.sh_rtc, ptr %4, i32 0, i32 5
  store i32 %13, ptr %14, align 4
  %15 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 2) #9
  %16 = getelementptr inbounds %struct.sh_rtc, ptr %4, i32 0, i32 3
  store i32 %15, ptr %16, align 4
  %17 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 256, i32 noundef 0) #9
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %11
  %20 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #9
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23, !prof !9

22:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #10
  br label %133

23:                                               ; preds = %19, %11
  %24 = phi ptr [ %20, %19 ], [ %17, %11 ]
  %25 = getelementptr inbounds %struct.resource, ptr %24, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = load i32, ptr %24, align 4
  %28 = add i32 %26, 1
  %29 = sub i32 %28, %27
  %30 = getelementptr inbounds %struct.sh_rtc, ptr %4, i32 0, i32 1
  store i32 %29, ptr %30, align 4
  %31 = load i32, ptr %24, align 4
  %32 = load ptr, ptr %0, align 8
  %33 = tail call ptr @__devm_request_region(ptr noundef %3, ptr noundef nonnull @iomem_resource, i32 noundef %31, i32 noundef %29, ptr noundef %32) #9
  %34 = getelementptr inbounds %struct.sh_rtc, ptr %4, i32 0, i32 2
  store ptr %33, ptr %34, align 4
  %35 = icmp eq ptr %33, null
  br i1 %35, label %133, label %36, !prof !9

36:                                               ; preds = %23
  %37 = load i32, ptr %33, align 4
  %38 = tail call ptr @devm_ioremap(ptr noundef %3, i32 noundef %37, i32 noundef %29) #9
  store ptr %38, ptr %4, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %133, label %40, !prof !9

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %42 = load ptr, ptr %41, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = tail call i32 @llvm.smax.i32(i32 %46, i32 0)
  %48 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 6, ptr noundef nonnull @.str.3, i32 noundef %47)
  br label %50

49:                                               ; preds = %40
  store i32 7037798, ptr %2, align 4
  br label %50

50:                                               ; preds = %49, %44
  %51 = call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull %2) #9
  %52 = getelementptr inbounds %struct.sh_rtc, ptr %4, i32 0, i32 6
  %53 = icmp ugt ptr %51, inttoptr (i32 -4096 to ptr)
  %54 = select i1 %53, ptr null, ptr %51
  store ptr %54, ptr %52, align 4
  %55 = call ptr @devm_rtc_allocate_device(ptr noundef %3) #9
  %56 = getelementptr inbounds %struct.sh_rtc, ptr %4, i32 0, i32 7
  store ptr %55, ptr %56, align 4
  %57 = icmp ugt ptr %55, inttoptr (i32 -4096 to ptr)
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = ptrtoint ptr %55 to i32
  br label %133

60:                                               ; preds = %50
  %61 = call i32 @clk_enable(ptr noundef %54) #9
  %62 = getelementptr inbounds %struct.sh_rtc, ptr %4, i32 0, i32 9
  store i32 1, ptr %62, align 4
  %63 = icmp slt i32 %13, 1
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %8, ptr noundef nonnull @sh_rtc_shared, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull %4) #9
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %86, label %67, !prof !10

67:                                               ; preds = %64
  %68 = load i32, ptr %12, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef %65, i32 noundef %68) #10
  br label %130

69:                                               ; preds = %60
  %70 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %8, ptr noundef nonnull @sh_rtc_periodic, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull %4) #9
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %74, label %72, !prof !10

72:                                               ; preds = %69
  %73 = load i32, ptr %12, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7, i32 noundef %70, i32 noundef %73) #10
  br label %130

74:                                               ; preds = %69
  %75 = load i32, ptr %14, align 4
  %76 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %75, ptr noundef nonnull @sh_rtc_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull %4) #9
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %80, label %78, !prof !10

78:                                               ; preds = %74
  %79 = load i32, ptr %14, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.9, i32 noundef %76, i32 noundef %79) #10
  br label %130

80:                                               ; preds = %74
  %81 = load i32, ptr %16, align 4
  %82 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %81, ptr noundef nonnull @sh_rtc_alarm, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull %4) #9
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %86, label %84, !prof !10

84:                                               ; preds = %80
  %85 = load i32, ptr %16, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.11, i32 noundef %82, i32 noundef %85) #10
  br label %130

86:                                               ; preds = %80, %64
  %87 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %87, align 8
  call void @_raw_spin_lock_irq(ptr noundef %7) #9
  %88 = load ptr, ptr %4, align 4
  %89 = getelementptr i8, ptr %88, i32 28
  %90 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %89) #9, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %91 = and i8 %90, -9
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !13
  call void @arm_heavy_mb() #9
  %92 = load ptr, ptr %4, align 4
  %93 = getelementptr i8, ptr %92, i32 28
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %93, i8 %91) #9, !srcloc !14
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %94 = load i16, ptr %7, align 4
  %95 = add i16 %94, 1
  store i16 %95, ptr %7, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !16
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !17
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !18
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !19
  %96 = load ptr, ptr %87, align 8
  %97 = getelementptr inbounds %struct.sh_rtc, ptr %96, i32 0, i32 8
  call void @_raw_spin_lock_irq(ptr noundef %97) #9
  %98 = load ptr, ptr %96, align 4
  %99 = getelementptr i8, ptr %98, i32 28
  %100 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %99) #9, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !20
  %101 = and i8 %100, -17
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !21
  call void @arm_heavy_mb() #9
  %102 = load ptr, ptr %96, align 4
  %103 = getelementptr i8, ptr %102, i32 28
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %103, i8 %101) #9, !srcloc !14
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %104 = load i16, ptr %97, align 4
  %105 = add i16 %104, 1
  store i16 %105, ptr %97, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !16
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !17
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !18
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !19
  %106 = load ptr, ptr %56, align 4
  %107 = getelementptr inbounds %struct.rtc_device, ptr %106, i32 0, i32 3
  store ptr @sh_rtc_ops, ptr %107, align 8
  %108 = load ptr, ptr %56, align 4
  %109 = getelementptr inbounds %struct.rtc_device, ptr %108, i32 0, i32 12
  store i32 256, ptr %109, align 4
  %110 = load i32, ptr %62, align 4
  %111 = and i32 %110, 1
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %86
  %114 = load ptr, ptr %56, align 4
  %115 = getelementptr inbounds %struct.rtc_device, ptr %114, i32 0, i32 22
  store i64 -2208988800, ptr %115, align 8
  br label %121

116:                                              ; preds = %86
  %117 = call i64 @mktime64(i32 noundef 1999, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  %118 = load ptr, ptr %56, align 4
  %119 = getelementptr inbounds %struct.rtc_device, ptr %118, i32 0, i32 22
  store i64 %117, ptr %119, align 8
  %120 = call i64 @mktime64(i32 noundef 2098, i32 noundef 12, i32 noundef 31, i32 noundef 23, i32 noundef 59, i32 noundef 59) #9
  br label %121

121:                                              ; preds = %116, %113
  %122 = phi i64 [ %120, %116 ], [ 253402300799, %113 ]
  %123 = load ptr, ptr %56, align 4
  %124 = getelementptr inbounds %struct.rtc_device, ptr %123, i32 0, i32 23
  store i64 %122, ptr %124, align 8
  %125 = load ptr, ptr %56, align 4
  %126 = call i32 @__devm_rtc_register_device(ptr noundef nonnull @__this_module, ptr noundef %125) #9
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %121
  %129 = call i32 @device_init_wakeup(ptr noundef %3, i1 noundef zeroext true) #9
  br label %133

130:                                              ; preds = %121, %84, %78, %72, %67
  %131 = phi i32 [ %65, %67 ], [ %126, %121 ], [ %70, %72 ], [ %76, %78 ], [ %82, %84 ]
  %132 = load ptr, ptr %52, align 4
  call void @clk_disable(ptr noundef %132) #9
  br label %133

133:                                              ; preds = %130, %128, %58, %36, %23, %22, %10, %1
  %134 = phi i32 [ -2, %10 ], [ -2, %22 ], [ %59, %58 ], [ %131, %130 ], [ 0, %128 ], [ -12, %1 ], [ -16, %23 ], [ -22, %36 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #9
  ret i32 %134
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sh_rtc_remove(ptr nocapture noundef readonly %0) #0 section ".exit.text" {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sh_rtc, ptr %3, i32 0, i32 8
  tail call void @_raw_spin_lock_irq(ptr noundef %4) #9
  %5 = load ptr, ptr %3, align 4
  %6 = getelementptr i8, ptr %5, i32 28
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %6) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %8 = and i8 %7, -9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !13
  tail call void @arm_heavy_mb() #9
  %9 = load ptr, ptr %3, align 4
  %10 = getelementptr i8, ptr %9, i32 28
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %10, i8 %8) #9, !srcloc !14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %11 = load i16, ptr %4, align 4
  %12 = add i16 %11, 1
  store i16 %12, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !17
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !19
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds %struct.sh_rtc, ptr %13, i32 0, i32 8
  tail call void @_raw_spin_lock_irq(ptr noundef %14) #9
  %15 = load ptr, ptr %13, align 4
  %16 = getelementptr i8, ptr %15, i32 28
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %16) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !20
  %18 = and i8 %17, -17
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !21
  tail call void @arm_heavy_mb() #9
  %19 = load ptr, ptr %13, align 4
  %20 = getelementptr i8, ptr %19, i32 28
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %20, i8 %18) #9, !srcloc !14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %21 = load i16, ptr %14, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr %14, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !17
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !19
  %23 = getelementptr inbounds %struct.sh_rtc, ptr %3, i32 0, i32 6
  %24 = load ptr, ptr %23, align 4
  tail call void @clk_disable(ptr noundef %24) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_rtc_suspend(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %3 = load i16, ptr %2, align 4
  %4 = and i16 %3, 1
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %24, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %24, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.sh_rtc, ptr %12, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @irq_set_irq_wake(i32 noundef %14, i32 noundef 1) #9
  %16 = getelementptr inbounds %struct.sh_rtc, ptr %12, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %10
  %20 = tail call i32 @irq_set_irq_wake(i32 noundef %17, i32 noundef 1) #9
  %21 = getelementptr inbounds %struct.sh_rtc, ptr %12, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 @irq_set_irq_wake(i32 noundef %22, i32 noundef 1) #9
  br label %24

24:                                               ; preds = %19, %10, %6, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_rtc_resume(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %3 = load i16, ptr %2, align 4
  %4 = and i16 %3, 1
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %24, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %24, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.sh_rtc, ptr %12, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @irq_set_irq_wake(i32 noundef %14, i32 noundef 0) #9
  %16 = getelementptr inbounds %struct.sh_rtc, ptr %12, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %10
  %20 = tail call i32 @irq_set_irq_wake(i32 noundef %17, i32 noundef 0) #9
  %21 = getelementptr inbounds %struct.sh_rtc, ptr %12, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 @irq_set_irq_wake(i32 noundef %22, i32 noundef 0) #9
  br label %24

24:                                               ; preds = %19, %10, %6, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_rtc_shared(i32 noundef %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.sh_rtc, ptr %1, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %3) #9
  %4 = load ptr, ptr %1, align 4
  %5 = getelementptr i8, ptr %4, i32 28
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %5) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !22
  %7 = and i8 %6, -128
  %8 = and i8 %6, 127
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !23
  tail call void @arm_heavy_mb() #9
  %9 = load ptr, ptr %1, align 4
  %10 = getelementptr i8, ptr %9, i32 28
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %10, i8 %8) #9, !srcloc !14
  %11 = icmp eq i8 %7, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.sh_rtc, ptr %1, i32 0, i32 10
  %14 = load i16, ptr %13, align 4
  %15 = and i16 %14, 1024
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.sh_rtc, ptr %1, i32 0, i32 7
  %19 = load ptr, ptr %18, align 4
  tail call void @rtc_update_irq(ptr noundef %19, i32 noundef 1, i32 noundef 144) #9
  br label %20

20:                                               ; preds = %17, %12, %2
  %21 = load ptr, ptr %1, align 4
  %22 = getelementptr i8, ptr %21, i32 28
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %22) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !24
  %24 = and i8 %23, 1
  %25 = and i8 %23, -10
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !25
  tail call void @arm_heavy_mb() #9
  %26 = load ptr, ptr %1, align 4
  %27 = getelementptr i8, ptr %26, i32 28
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %27, i8 %25) #9, !srcloc !14
  %28 = icmp eq i8 %24, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.sh_rtc, ptr %1, i32 0, i32 7
  %31 = load ptr, ptr %30, align 4
  tail call void @rtc_update_irq(ptr noundef %31, i32 noundef 1, i32 noundef 160) #9
  br label %32

32:                                               ; preds = %29, %20
  %33 = load ptr, ptr %1, align 4
  %34 = getelementptr i8, ptr %33, i32 30
  %35 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %34) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !26
  %36 = and i8 %35, -128
  %37 = and i8 %35, 127
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !27
  tail call void @arm_heavy_mb() #9
  %38 = load ptr, ptr %1, align 4
  %39 = getelementptr i8, ptr %38, i32 30
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %39, i8 %37) #9, !srcloc !14
  %40 = icmp eq i8 %36, 0
  br i1 %40, label %56, label %41

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.sh_rtc, ptr %1, i32 0, i32 10
  %43 = load i16, ptr %42, align 4
  %44 = and i16 %43, 768
  %45 = icmp eq i16 %44, 768
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = and i16 %43, -513
  store i16 %47, ptr %42, align 4
  br label %56

48:                                               ; preds = %41
  %49 = and i16 %43, 256
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  %52 = or i16 %43, 512
  store i16 %52, ptr %42, align 4
  br label %53

53:                                               ; preds = %51, %48
  %54 = getelementptr inbounds %struct.sh_rtc, ptr %1, i32 0, i32 7
  %55 = load ptr, ptr %54, align 4
  tail call void @rtc_update_irq(ptr noundef %55, i32 noundef 1, i32 noundef 192) #9
  br label %56

56:                                               ; preds = %53, %46, %32
  %57 = or i8 %24, %7
  %58 = or i8 %57, %36
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %59 = load i16, ptr %3, align 4
  %60 = add i16 %59, 1
  store i16 %60, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !28
  %61 = icmp ne i8 %58, 0
  %62 = zext i1 %61 to i32
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_rtc_periodic(i32 noundef %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.sh_rtc, ptr %1, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %3) #9
  %4 = load ptr, ptr %1, align 4
  %5 = getelementptr i8, ptr %4, i32 30
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %5) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !26
  %7 = and i8 %6, 127
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !27
  tail call void @arm_heavy_mb() #9
  %8 = load ptr, ptr %1, align 4
  %9 = getelementptr i8, ptr %8, i32 30
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %9, i8 %7) #9, !srcloc !14
  %10 = icmp sgt i8 %6, -1
  br i1 %10, label %26, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.sh_rtc, ptr %1, i32 0, i32 10
  %13 = load i16, ptr %12, align 4
  %14 = and i16 %13, 768
  %15 = icmp eq i16 %14, 768
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = and i16 %13, -513
  store i16 %17, ptr %12, align 4
  br label %26

18:                                               ; preds = %11
  %19 = and i16 %13, 256
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = or i16 %13, 512
  store i16 %22, ptr %12, align 4
  br label %23

23:                                               ; preds = %21, %18
  %24 = getelementptr inbounds %struct.sh_rtc, ptr %1, i32 0, i32 7
  %25 = load ptr, ptr %24, align 4
  tail call void @rtc_update_irq(ptr noundef %25, i32 noundef 1, i32 noundef 192) #9
  br label %26

26:                                               ; preds = %23, %16, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %27 = load i16, ptr %3, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !28
  %29 = lshr i8 %6, 7
  %30 = zext i8 %29 to i32
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_rtc_interrupt(i32 noundef %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.sh_rtc, ptr %1, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %3) #9
  %4 = load ptr, ptr %1, align 4
  %5 = getelementptr i8, ptr %4, i32 28
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %5) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !22
  %7 = and i8 %6, 127
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !23
  tail call void @arm_heavy_mb() #9
  %8 = load ptr, ptr %1, align 4
  %9 = getelementptr i8, ptr %8, i32 28
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %9, i8 %7) #9, !srcloc !14
  %10 = icmp sgt i8 %6, -1
  br i1 %10, label %19, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.sh_rtc, ptr %1, i32 0, i32 10
  %13 = load i16, ptr %12, align 4
  %14 = and i16 %13, 1024
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.sh_rtc, ptr %1, i32 0, i32 7
  %18 = load ptr, ptr %17, align 4
  tail call void @rtc_update_irq(ptr noundef %18, i32 noundef 1, i32 noundef 144) #9
  br label %19

19:                                               ; preds = %16, %11, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %20 = load i16, ptr %3, align 4
  %21 = add i16 %20, 1
  store i16 %21, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !28
  %22 = lshr i8 %6, 7
  %23 = zext i8 %22 to i32
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_rtc_alarm(i32 noundef %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.sh_rtc, ptr %1, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %3) #9
  %4 = load ptr, ptr %1, align 4
  %5 = getelementptr i8, ptr %4, i32 28
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %5) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !24
  %7 = and i8 %6, 1
  %8 = and i8 %6, -10
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !25
  tail call void @arm_heavy_mb() #9
  %9 = load ptr, ptr %1, align 4
  %10 = getelementptr i8, ptr %9, i32 28
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %10, i8 %8) #9, !srcloc !14
  %11 = icmp eq i8 %7, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.sh_rtc, ptr %1, i32 0, i32 7
  %14 = load ptr, ptr %13, align 4
  tail call void @rtc_update_irq(ptr noundef %14, i32 noundef 1, i32 noundef 160) #9
  br label %15

15:                                               ; preds = %12, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %16 = load i16, ptr %3, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !28
  %18 = zext i8 %7 to i32
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mktime64(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_rtc_read_time(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #3 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 30
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %6) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !29
  %8 = and i8 %7, 8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %101, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.sh_rtc, ptr %4, i32 0, i32 8
  %12 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 1
  %13 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  %14 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 6
  %15 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  %16 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 4
  %17 = getelementptr inbounds %struct.sh_rtc, ptr %4, i32 0, i32 9
  %18 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 5
  br label %19

19:                                               ; preds = %70, %10
  tail call void @_raw_spin_lock_irq(ptr noundef %11) #9
  %20 = load ptr, ptr %4, align 4
  %21 = getelementptr i8, ptr %20, i32 28
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %21) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !30
  %23 = and i8 %22, 111
  %24 = or i8 %23, 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !31
  tail call void @arm_heavy_mb() #9
  %25 = load ptr, ptr %4, align 4
  %26 = getelementptr i8, ptr %25, i32 28
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %26, i8 %24) #9, !srcloc !14
  %27 = load ptr, ptr %4, align 4
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %27) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !32
  %29 = load ptr, ptr %4, align 4
  %30 = getelementptr i8, ptr %29, i32 2
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %30) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !33
  %32 = tail call i32 @_bcd2bin(i8 noundef zeroext %31) #11
  store i32 %32, ptr %1, align 4
  %33 = load ptr, ptr %4, align 4
  %34 = getelementptr i8, ptr %33, i32 4
  %35 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %34) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !34
  %36 = tail call i32 @_bcd2bin(i8 noundef zeroext %35) #11
  store i32 %36, ptr %12, align 4
  %37 = load ptr, ptr %4, align 4
  %38 = getelementptr i8, ptr %37, i32 6
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %38) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !35
  %40 = tail call i32 @_bcd2bin(i8 noundef zeroext %39) #11
  store i32 %40, ptr %13, align 4
  %41 = load ptr, ptr %4, align 4
  %42 = getelementptr i8, ptr %41, i32 8
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %42) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !36
  %44 = tail call i32 @_bcd2bin(i8 noundef zeroext %43) #11
  store i32 %44, ptr %14, align 4
  %45 = load ptr, ptr %4, align 4
  %46 = getelementptr i8, ptr %45, i32 10
  %47 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %46) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !37
  %48 = tail call i32 @_bcd2bin(i8 noundef zeroext %47) #11
  store i32 %48, ptr %15, align 4
  %49 = load ptr, ptr %4, align 4
  %50 = getelementptr i8, ptr %49, i32 12
  %51 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %50) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !38
  %52 = tail call i32 @_bcd2bin(i8 noundef zeroext %51) #11
  %53 = add i32 %52, -1
  store i32 %53, ptr %16, align 4
  %54 = load i32, ptr %17, align 4
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  %57 = load ptr, ptr %4, align 4
  %58 = getelementptr i8, ptr %57, i32 14
  br i1 %56, label %65, label %59

59:                                               ; preds = %19
  %60 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %58) #9, !srcloc !39
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !40
  %61 = lshr i16 %60, 8
  %62 = trunc i16 %61 to i8
  %63 = tail call i32 @_bcd2bin(i8 noundef zeroext %62) #11
  %64 = trunc i16 %60 to i8
  br label %70

65:                                               ; preds = %19
  %66 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %58) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !41
  %67 = icmp eq i8 %66, -103
  %68 = select i1 %67, i8 25, i8 32
  %69 = tail call i32 @_bcd2bin(i8 noundef zeroext %68) #11
  br label %70

70:                                               ; preds = %65, %59
  %71 = phi i32 [ %63, %59 ], [ %69, %65 ]
  %72 = phi i8 [ %64, %59 ], [ %66, %65 ]
  %73 = mul i32 %71, 100
  %74 = tail call i32 @_bcd2bin(i8 noundef zeroext %72) #11
  %75 = add i32 %73, -1900
  %76 = add i32 %75, %74
  store i32 %76, ptr %18, align 4
  %77 = load ptr, ptr %4, align 4
  %78 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %77) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !42
  %79 = load ptr, ptr %4, align 4
  %80 = getelementptr i8, ptr %79, i32 28
  %81 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %80) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !43
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %82 = load i16, ptr %11, align 4
  %83 = add i16 %82, 1
  store i16 %83, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !17
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !19
  %84 = icmp sgt i8 %81, -1
  br i1 %84, label %85, label %19

85:                                               ; preds = %70
  %86 = getelementptr inbounds %struct.sh_rtc, ptr %4, i32 0, i32 10
  %87 = load i16, ptr %86, align 4
  %88 = and i16 %87, 1024
  %89 = icmp eq i16 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %85
  %91 = load ptr, ptr %3, align 8
  %92 = getelementptr inbounds %struct.sh_rtc, ptr %91, i32 0, i32 8
  tail call void @_raw_spin_lock_irq(ptr noundef %92) #9
  %93 = load ptr, ptr %91, align 4
  %94 = getelementptr i8, ptr %93, i32 28
  %95 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %94) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !20
  %96 = and i8 %95, -17
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !21
  tail call void @arm_heavy_mb() #9
  %97 = load ptr, ptr %91, align 4
  %98 = getelementptr i8, ptr %97, i32 28
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %98, i8 %96) #9, !srcloc !14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %99 = load i16, ptr %92, align 4
  %100 = add i16 %99, 1
  store i16 %100, ptr %92, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !17
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !19
  br label %101

101:                                              ; preds = %90, %85, %2
  %102 = phi i32 [ -22, %2 ], [ 0, %90 ], [ 0, %85 ]
  ret i32 %102
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_rtc_set_time(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sh_rtc, ptr %4, i32 0, i32 8
  tail call void @_raw_spin_lock_irq(ptr noundef %5) #9
  %6 = load ptr, ptr %4, align 4
  %7 = getelementptr i8, ptr %6, i32 30
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %7) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !44
  %9 = and i8 %8, -4
  %10 = or i8 %9, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !45
  tail call void @arm_heavy_mb() #9
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr i8, ptr %11, i32 30
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %12, i8 %10) #9, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !46
  tail call void @arm_heavy_mb() #9
  %13 = load i32, ptr %1, align 4
  %14 = tail call zeroext i8 @_bin2bcd(i32 noundef %13) #11
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr i8, ptr %15, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %16, i8 %14) #9, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !47
  tail call void @arm_heavy_mb() #9
  %17 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = tail call zeroext i8 @_bin2bcd(i32 noundef %18) #11
  %20 = load ptr, ptr %4, align 4
  %21 = getelementptr i8, ptr %20, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %21, i8 %19) #9, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !48
  tail call void @arm_heavy_mb() #9
  %22 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = tail call zeroext i8 @_bin2bcd(i32 noundef %23) #11
  %25 = load ptr, ptr %4, align 4
  %26 = getelementptr i8, ptr %25, i32 6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %26, i8 %24) #9, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !49
  tail call void @arm_heavy_mb() #9
  %27 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 6
  %28 = load i32, ptr %27, align 4
  %29 = tail call zeroext i8 @_bin2bcd(i32 noundef %28) #11
  %30 = load ptr, ptr %4, align 4
  %31 = getelementptr i8, ptr %30, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %31, i8 %29) #9, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !50
  tail call void @arm_heavy_mb() #9
  %32 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  %33 = load i32, ptr %32, align 4
  %34 = tail call zeroext i8 @_bin2bcd(i32 noundef %33) #11
  %35 = load ptr, ptr %4, align 4
  %36 = getelementptr i8, ptr %35, i32 10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %36, i8 %34) #9, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !51
  tail call void @arm_heavy_mb() #9
  %37 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 4
  %38 = load i32, ptr %37, align 4
  %39 = add i32 %38, 1
  %40 = tail call zeroext i8 @_bin2bcd(i32 noundef %39) #11
  %41 = load ptr, ptr %4, align 4
  %42 = getelementptr i8, ptr %41, i32 12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %42, i8 %40) #9, !srcloc !14
  %43 = getelementptr inbounds %struct.sh_rtc, ptr %4, i32 0, i32 9
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  %47 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 5
  %48 = load i32, ptr %47, align 4
  br i1 %46, label %61, label %49

49:                                               ; preds = %2
  %50 = add i32 %48, 1900
  %51 = sdiv i32 %50, 100
  %52 = tail call zeroext i8 @_bin2bcd(i32 noundef %51) #11
  %53 = zext i8 %52 to i16
  %54 = shl nuw i16 %53, 8
  %55 = srem i32 %48, 100
  %56 = tail call zeroext i8 @_bin2bcd(i32 noundef %55) #11
  %57 = zext i8 %56 to i16
  %58 = or i16 %54, %57
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %59 = load ptr, ptr %4, align 4
  %60 = getelementptr i8, ptr %59, i32 14
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %60, i16 %58) #9, !srcloc !53
  br label %66

61:                                               ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !54
  tail call void @arm_heavy_mb() #9
  %62 = srem i32 %48, 100
  %63 = tail call zeroext i8 @_bin2bcd(i32 noundef %62) #11
  %64 = load ptr, ptr %4, align 4
  %65 = getelementptr i8, ptr %64, i32 14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %65, i8 %63) #9, !srcloc !14
  br label %66

66:                                               ; preds = %61, %49
  %67 = load ptr, ptr %4, align 4
  %68 = getelementptr i8, ptr %67, i32 30
  %69 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %68) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !55
  %70 = and i8 %69, -12
  %71 = or i8 %70, 9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !56
  tail call void @arm_heavy_mb() #9
  %72 = load ptr, ptr %4, align 4
  %73 = getelementptr i8, ptr %72, i32 30
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %73, i8 %71) #9, !srcloc !14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %74 = load i16, ptr %5, align 4
  %75 = add i16 %74, 1
  store i16 %75, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !17
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !19
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_rtc_read_alarm(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #3 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  %6 = getelementptr inbounds %struct.sh_rtc, ptr %4, i32 0, i32 8
  tail call void @_raw_spin_lock_irq(ptr noundef %6) #9
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr i8, ptr %7, i32 16
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %8) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !57
  %10 = icmp sgt i8 %9, -1
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = and i8 %9, 127
  %13 = tail call i32 @_bcd2bin(i8 noundef zeroext %12) #11
  br label %14

14:                                               ; preds = %11, %2
  %15 = phi i32 [ -1, %2 ], [ %13, %11 ]
  store i32 %15, ptr %5, align 4
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr i8, ptr %16, i32 18
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %17) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !57
  %19 = icmp sgt i8 %18, -1
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = and i8 %18, 127
  %22 = tail call i32 @_bcd2bin(i8 noundef zeroext %21) #11
  br label %23

23:                                               ; preds = %20, %14
  %24 = phi i32 [ -1, %14 ], [ %22, %20 ]
  %25 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 1
  store i32 %24, ptr %25, align 4
  %26 = load ptr, ptr %4, align 4
  %27 = getelementptr i8, ptr %26, i32 20
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %27) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !57
  %29 = icmp sgt i8 %28, -1
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = and i8 %28, 127
  %32 = tail call i32 @_bcd2bin(i8 noundef zeroext %31) #11
  br label %33

33:                                               ; preds = %30, %23
  %34 = phi i32 [ -1, %23 ], [ %32, %30 ]
  %35 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 2
  store i32 %34, ptr %35, align 4
  %36 = load ptr, ptr %4, align 4
  %37 = getelementptr i8, ptr %36, i32 22
  %38 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %37) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !57
  %39 = icmp sgt i8 %38, -1
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  %41 = and i8 %38, 127
  %42 = tail call i32 @_bcd2bin(i8 noundef zeroext %41) #11
  br label %43

43:                                               ; preds = %40, %33
  %44 = phi i32 [ -1, %33 ], [ %42, %40 ]
  %45 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 6
  store i32 %44, ptr %45, align 4
  %46 = load ptr, ptr %4, align 4
  %47 = getelementptr i8, ptr %46, i32 24
  %48 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %47) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !57
  %49 = icmp sgt i8 %48, -1
  br i1 %49, label %53, label %50

50:                                               ; preds = %43
  %51 = and i8 %48, 127
  %52 = tail call i32 @_bcd2bin(i8 noundef zeroext %51) #11
  br label %53

53:                                               ; preds = %50, %43
  %54 = phi i32 [ -1, %43 ], [ %52, %50 ]
  %55 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 3
  store i32 %54, ptr %55, align 4
  %56 = load ptr, ptr %4, align 4
  %57 = getelementptr i8, ptr %56, i32 26
  %58 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %57) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !57
  %59 = icmp sgt i8 %58, -1
  br i1 %59, label %66, label %60

60:                                               ; preds = %53
  %61 = and i8 %58, 127
  %62 = tail call i32 @_bcd2bin(i8 noundef zeroext %61) #11
  %63 = icmp sgt i32 %62, 0
  %64 = sext i1 %63 to i32
  %65 = add i32 %62, %64
  br label %66

66:                                               ; preds = %60, %53
  %67 = phi i32 [ -1, %53 ], [ %65, %60 ]
  %68 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 4
  store i32 %67, ptr %68, align 4
  %69 = load ptr, ptr %4, align 4
  %70 = getelementptr i8, ptr %69, i32 28
  %71 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %70) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !58
  %72 = lshr i8 %71, 3
  %73 = and i8 %72, 1
  store i8 %73, ptr %1, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %74 = load i16, ptr %6, align 4
  %75 = add i16 %74, 1
  store i16 %75, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !17
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !19
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_rtc_set_alarm(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  %6 = getelementptr inbounds %struct.sh_rtc, ptr %4, i32 0, i32 8
  tail call void @_raw_spin_lock_irq(ptr noundef %6) #9
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr i8, ptr %7, i32 28
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %8) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !59
  %10 = and i8 %9, -10
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !60
  tail call void @arm_heavy_mb() #9
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr i8, ptr %11, i32 28
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %12, i8 %10) #9, !srcloc !14
  %13 = load i32, ptr %5, align 4
  %14 = icmp slt i32 %13, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #9
  tail call void @arm_heavy_mb() #9
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr i8, ptr %16, i32 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %17, i8 0) #9, !srcloc !14
  br label %23

18:                                               ; preds = %2
  %19 = tail call zeroext i8 @_bin2bcd(i32 noundef %13) #11
  %20 = or i8 %19, -128
  %21 = load ptr, ptr %4, align 4
  %22 = getelementptr i8, ptr %21, i32 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %22, i8 %20) #9, !srcloc !14
  br label %23

23:                                               ; preds = %18, %15
  %24 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp slt i32 %25, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #9
  tail call void @arm_heavy_mb() #9
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load ptr, ptr %4, align 4
  %29 = getelementptr i8, ptr %28, i32 18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %29, i8 0) #9, !srcloc !14
  br label %35

30:                                               ; preds = %23
  %31 = tail call zeroext i8 @_bin2bcd(i32 noundef %25) #11
  %32 = or i8 %31, -128
  %33 = load ptr, ptr %4, align 4
  %34 = getelementptr i8, ptr %33, i32 18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %34, i8 %32) #9, !srcloc !14
  br label %35

35:                                               ; preds = %30, %27
  %36 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = icmp slt i32 %37, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #9
  tail call void @arm_heavy_mb() #9
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load ptr, ptr %4, align 4
  %41 = getelementptr i8, ptr %40, i32 20
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %41, i8 0) #9, !srcloc !14
  br label %47

42:                                               ; preds = %35
  %43 = tail call zeroext i8 @_bin2bcd(i32 noundef %37) #11
  %44 = or i8 %43, -128
  %45 = load ptr, ptr %4, align 4
  %46 = getelementptr i8, ptr %45, i32 20
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %46, i8 %44) #9, !srcloc !14
  br label %47

47:                                               ; preds = %42, %39
  %48 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 6
  %49 = load i32, ptr %48, align 4
  %50 = icmp slt i32 %49, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #9
  tail call void @arm_heavy_mb() #9
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load ptr, ptr %4, align 4
  %53 = getelementptr i8, ptr %52, i32 22
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %53, i8 0) #9, !srcloc !14
  br label %59

54:                                               ; preds = %47
  %55 = tail call zeroext i8 @_bin2bcd(i32 noundef %49) #11
  %56 = or i8 %55, -128
  %57 = load ptr, ptr %4, align 4
  %58 = getelementptr i8, ptr %57, i32 22
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %58, i8 %56) #9, !srcloc !14
  br label %59

59:                                               ; preds = %54, %51
  %60 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 3
  %61 = load i32, ptr %60, align 4
  %62 = icmp slt i32 %61, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #9
  tail call void @arm_heavy_mb() #9
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load ptr, ptr %4, align 4
  %65 = getelementptr i8, ptr %64, i32 24
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %65, i8 0) #9, !srcloc !14
  br label %71

66:                                               ; preds = %59
  %67 = tail call zeroext i8 @_bin2bcd(i32 noundef %61) #11
  %68 = or i8 %67, -128
  %69 = load ptr, ptr %4, align 4
  %70 = getelementptr i8, ptr %69, i32 24
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %70, i8 %68) #9, !srcloc !14
  br label %71

71:                                               ; preds = %66, %63
  %72 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 4
  %73 = load i32, ptr %72, align 4
  %74 = xor i32 %73, -1
  %75 = lshr i32 %74, 31
  %76 = add i32 %75, %73
  %77 = icmp slt i32 %76, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #9
  tail call void @arm_heavy_mb() #9
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = load ptr, ptr %4, align 4
  %80 = getelementptr i8, ptr %79, i32 26
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %80, i8 0) #9, !srcloc !14
  br label %86

81:                                               ; preds = %71
  %82 = tail call zeroext i8 @_bin2bcd(i32 noundef %76) #11
  %83 = or i8 %82, -128
  %84 = load ptr, ptr %4, align 4
  %85 = getelementptr i8, ptr %84, i32 26
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %85, i8 %83) #9, !srcloc !14
  br label %86

86:                                               ; preds = %81, %78
  %87 = load i8, ptr %1, align 4
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %86
  %90 = or i8 %10, 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !61
  tail call void @arm_heavy_mb() #9
  %91 = load ptr, ptr %4, align 4
  %92 = getelementptr i8, ptr %91, i32 28
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %92, i8 %90) #9, !srcloc !14
  br label %93

93:                                               ; preds = %89, %86
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %94 = load i16, ptr %6, align 4
  %95 = add i16 %94, 1
  store i16 %95, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !17
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !19
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_rtc_proc(ptr nocapture noundef readonly %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 28
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %6) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !62
  %8 = and i8 %7, 16
  %9 = icmp eq i8 %8, 0
  %10 = select i1 %9, ptr @.str.14, ptr @.str.13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.12, ptr noundef nonnull %10) #9
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr i8, ptr %11, i32 30
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %12) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !63
  %14 = and i8 %13, 112
  %15 = icmp eq i8 %14, 0
  %16 = select i1 %15, ptr @.str.14, ptr @.str.13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.15, ptr noundef nonnull %16) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_rtc_alarm_irq_enable(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sh_rtc, ptr %4, i32 0, i32 8
  tail call void @_raw_spin_lock_irq(ptr noundef %5) #9
  %6 = load ptr, ptr %4, align 4
  %7 = getelementptr i8, ptr %6, i32 28
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %7) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %9 = icmp eq i32 %1, 0
  %10 = and i8 %8, -9
  %11 = select i1 %9, i8 0, i8 8
  %12 = or i8 %10, %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !13
  tail call void @arm_heavy_mb() #9
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr i8, ptr %13, i32 28
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %14, i8 %12) #9, !srcloc !14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %15 = load i16, ptr %5, align 4
  %16 = add i16 %15, 1
  store i16 %16, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !17
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !19
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone willreturn }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 3513124}
!12 = !{i64 2152378553}
!13 = !{i64 2152378817}
!14 = !{i64 3512729}
!15 = !{i64 2148941339}
!16 = !{i64 2148937163}
!17 = !{i64 2148937238, i64 2148937265, i64 2148937312, i64 2148937334, i64 2148937362, i64 2148937382}
!18 = !{i64 463121}
!19 = !{i64 2148965483}
!20 = !{i64 2152379951}
!21 = !{i64 2152380215}
!22 = !{i64 2152376274}
!23 = !{i64 2152376538}
!24 = !{i64 2152376923}
!25 = !{i64 2152377192}
!26 = !{i64 2152377571}
!27 = !{i64 2152377835}
!28 = !{i64 2148964342}
!29 = !{i64 2152380584}
!30 = !{i64 2152380885}
!31 = !{i64 2152381149}
!32 = !{i64 2152381514}
!33 = !{i64 2152382324}
!34 = !{i64 2152383467}
!35 = !{i64 2152384610}
!36 = !{i64 2152385753}
!37 = !{i64 2152386896}
!38 = !{i64 2152388039}
!39 = !{i64 3512506}
!40 = !{i64 2152388821}
!41 = !{i64 2152389259}
!42 = !{i64 2152389916}
!43 = !{i64 2152390209}
!44 = !{i64 2152391618}
!45 = !{i64 2152391882}
!46 = !{i64 2152392497}
!47 = !{i64 2152393237}
!48 = !{i64 2152393986}
!49 = !{i64 2152394739}
!50 = !{i64 2152395492}
!51 = !{i64 2152396272}
!52 = !{i64 2152397189}
!53 = !{i64 3512306}
!54 = !{i64 2152397825}
!55 = !{i64 2152398295}
!56 = !{i64 2152398564}
!57 = !{i64 2152399022}
!58 = !{i64 2152399743}
!59 = !{i64 2152401074}
!60 = !{i64 2152401339}
!61 = !{i64 2152401960}
!62 = !{i64 2152379186}
!63 = !{i64 2152379484}
