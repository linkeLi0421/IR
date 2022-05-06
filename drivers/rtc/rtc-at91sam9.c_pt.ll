; ModuleID = '/llk/IR/drivers/rtc/rtc-at91sam9.c_pt.bc'
source_filename = "../drivers/rtc/rtc-at91sam9.c"
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
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.sam9_rtc = type { ptr, ptr, i32, ptr, i32, i32, ptr, i8, i32, %struct.spinlock }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@at91_rtc_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9260-rtt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author247 = internal constant [21 x i8] c"author=Michel Benoit\00", section ".modinfo", align 1
@__UNIQUE_ID_description248 = internal constant [43 x i8] c"description=RTC driver for Atmel AT91SAM9x\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@at91_rtc_driver = internal global %struct.platform_driver { ptr @at91_rtc_probe, ptr @at91_rtc_remove, ptr @at91_rtc_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @at91_rtc_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @at91_rtc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [13 x i8] c"rtc-at91sam9\00", align 1
@at91_rtc_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @at91_rtc_suspend, ptr @at91_rtc_resume, ptr @at91_rtc_suspend, ptr @at91_rtc_resume, ptr @at91_rtc_suspend, ptr @at91_rtc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"atmel,rtt-rtc-time-reg\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"failed to retrieve gpbr regmap, aborting.\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Could not enable slow clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Invalid slow clock rate\0A\00", align 1
@at91_rtc_ops = internal constant %struct.rtc_class_ops { ptr null, ptr @at91_rtc_readtime, ptr @at91_rtc_settime, ptr @at91_rtc_readalarm, ptr @at91_rtc_setalarm, ptr @at91_rtc_proc, ptr @at91_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"%s: SET TIME!\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"update_IRQ\09: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author247, ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_license249], section "llvm.metadata"

@__mod_of__at91_rtc_dt_ids_device_table = dso_local alias [2 x %struct.of_device_id], ptr @at91_rtc_dt_ids

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @at91_rtc_driver, ptr noundef nonnull @__this_module) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @at91_rtc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_rtc_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false), !annotation !8
  %4 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #6
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %115, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef 40, i32 noundef 3520) #6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %115, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.sam9_rtc, ptr %8, i32 0, i32 9
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.sam9_rtc, ptr %8, i32 0, i32 5
  store i32 %4, ptr %12, align 4
  %13 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 1
  %14 = load i16, ptr %13, align 4
  %15 = and i16 %14, 1
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = tail call i32 @device_init_wakeup(ptr noundef %7, i1 noundef zeroext true) #6
  br label %19

19:                                               ; preds = %17, %10
  %20 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %8, ptr %20, align 8
  %21 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #6
  store ptr %21, ptr %8, align 4
  %22 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = ptrtoint ptr %21 to i32
  br label %115

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %27 = load ptr, ptr %26, align 8
  %28 = call i32 @__of_parse_phandle_with_args(ptr noundef %27, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %3) #6
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %115

30:                                               ; preds = %25
  %31 = load ptr, ptr %3, align 4
  %32 = call ptr @syscon_node_to_regmap(ptr noundef %31) #6
  %33 = getelementptr inbounds %struct.sam9_rtc, ptr %8, i32 0, i32 3
  store ptr %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.of_phandle_args, ptr %3, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.sam9_rtc, ptr %8, i32 0, i32 4
  store i32 %35, ptr %36, align 4
  %37 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.2) #7
  br label %115

39:                                               ; preds = %30
  %40 = call ptr @devm_clk_get(ptr noundef %7, ptr noundef null) #6
  %41 = getelementptr inbounds %struct.sam9_rtc, ptr %8, i32 0, i32 6
  store ptr %40, ptr %41, align 4
  %42 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = ptrtoint ptr %40 to i32
  br label %115

45:                                               ; preds = %39
  %46 = call i32 @clk_prepare(ptr noundef %40) #6
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = call i32 @clk_enable(ptr noundef %40) #6
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  call void @clk_unprepare(ptr noundef %40) #6
  br label %52

52:                                               ; preds = %51, %45
  %53 = phi i32 [ %49, %51 ], [ %46, %45 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.3) #7
  br label %115

54:                                               ; preds = %48
  %55 = load ptr, ptr %41, align 4
  %56 = call i32 @clk_get_rate(ptr noundef %55) #6
  %57 = add i32 %56, -65536
  %58 = icmp ult i32 %57, -65535
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.4) #7
  br label %112

60:                                               ; preds = %54
  %61 = load ptr, ptr %8, align 4
  %62 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #6, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %63 = and i32 %62, 65535
  %64 = icmp eq i32 %63, %56
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  %66 = or i32 %56, 262144
  %67 = load ptr, ptr %33, align 4
  %68 = load i32, ptr %36, align 4
  %69 = call i32 @regmap_write(ptr noundef %67, i32 noundef %68, i32 noundef 0) #6
  br label %70

70:                                               ; preds = %65, %60
  %71 = phi i32 [ %66, %65 ], [ %62, %60 ]
  %72 = and i32 %71, -196609
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  %73 = load ptr, ptr %8, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %72) #6, !srcloc !12
  %74 = call ptr @devm_rtc_allocate_device(ptr noundef %7) #6
  %75 = getelementptr inbounds %struct.sam9_rtc, ptr %8, i32 0, i32 1
  store ptr %74, ptr %75, align 4
  %76 = icmp ugt ptr %74, inttoptr (i32 -4096 to ptr)
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = ptrtoint ptr %74 to i32
  br label %112

79:                                               ; preds = %70
  %80 = getelementptr inbounds %struct.rtc_device, ptr %74, i32 0, i32 3
  store ptr @at91_rtc_ops, ptr %80, align 8
  %81 = load ptr, ptr %75, align 4
  %82 = getelementptr inbounds %struct.rtc_device, ptr %81, i32 0, i32 23
  store i64 4294967295, ptr %82, align 8
  %83 = load i32, ptr %12, align 4
  %84 = load ptr, ptr %75, align 4
  %85 = getelementptr inbounds %struct.device, ptr %84, i32 0, i32 3
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %79
  %89 = load ptr, ptr %84, align 4
  br label %90

90:                                               ; preds = %88, %79
  %91 = phi ptr [ %89, %88 ], [ %86, %79 ]
  %92 = call i32 @devm_request_threaded_irq(ptr noundef %7, i32 noundef %83, ptr noundef nonnull @at91_rtc_interrupt, ptr noundef null, i32 noundef 262272, ptr noundef %91, ptr noundef nonnull %8) #6
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %112

94:                                               ; preds = %90
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %95 = load ptr, ptr %33, align 4
  %96 = load i32, ptr %36, align 4
  %97 = call i32 @regmap_read(ptr noundef %95, i32 noundef %96, ptr noundef nonnull %2) #6
  %98 = load i32, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %94
  %101 = load ptr, ptr %75, align 4
  %102 = getelementptr inbounds %struct.device, ptr %101, i32 0, i32 3
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = load ptr, ptr %101, align 4
  br label %107

107:                                              ; preds = %105, %100
  %108 = phi ptr [ %106, %105 ], [ %103, %100 ]
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.5, ptr noundef %108) #7
  br label %109

109:                                              ; preds = %107, %94
  %110 = load ptr, ptr %75, align 4
  %111 = call i32 @__devm_rtc_register_device(ptr noundef nonnull @__this_module, ptr noundef %110) #6
  br label %115

112:                                              ; preds = %90, %77, %59
  %113 = phi i32 [ -22, %59 ], [ %78, %77 ], [ %92, %90 ]
  %114 = load ptr, ptr %41, align 4
  call void @clk_disable(ptr noundef %114) #6
  call void @clk_unprepare(ptr noundef %114) #6
  br label %115

115:                                              ; preds = %112, %109, %52, %43, %38, %25, %23, %6, %1
  %116 = phi i32 [ %24, %23 ], [ -12, %38 ], [ %44, %43 ], [ %53, %52 ], [ %113, %112 ], [ %111, %109 ], [ %4, %1 ], [ -12, %6 ], [ %28, %25 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #6
  ret i32 %116
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_rtc_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !14
  tail call void @arm_heavy_mb() #6
  %6 = and i32 %5, -196609
  %7 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %6) #6, !srcloc !12
  %8 = getelementptr inbounds %struct.sam9_rtc, ptr %3, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  tail call void @clk_disable(ptr noundef %9) #6
  tail call void @clk_unprepare(ptr noundef %9) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @at91_rtc_shutdown(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !15
  %6 = and i32 %5, 196608
  %7 = getelementptr inbounds %struct.sam9_rtc, ptr %3, i32 0, i32 2
  store i32 %6, ptr %7, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !16
  tail call void @arm_heavy_mb() #6
  %8 = load i32, ptr %7, align 4
  %9 = xor i32 %8, -1
  %10 = and i32 %5, %9
  %11 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %10) #6, !srcloc !12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_rtc_interrupt(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sam9_rtc, ptr %1, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %3) #6
  %4 = load ptr, ptr %1, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !17
  %6 = load ptr, ptr %1, align 4
  %7 = getelementptr i8, ptr %6, i32 12
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !18
  %9 = lshr i32 %5, 16
  %10 = and i32 %9, 3
  %11 = and i32 %10, %8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %2
  %14 = and i32 %11, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.sam9_rtc, ptr %1, i32 0, i32 8
  %18 = load i32, ptr %17, align 4
  %19 = or i32 %18, 160
  store i32 %19, ptr %17, align 4
  br label %20

20:                                               ; preds = %16, %13
  %21 = and i32 %11, 2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.sam9_rtc, ptr %1, i32 0, i32 8
  %25 = load i32, ptr %24, align 4
  %26 = or i32 %25, 144
  store i32 %26, ptr %24, align 4
  br label %27

27:                                               ; preds = %23, %20, %2
  %28 = phi i32 [ 0, %2 ], [ 1, %23 ], [ 1, %20 ]
  %29 = getelementptr inbounds %struct.sam9_rtc, ptr %1, i32 0, i32 7
  %30 = load i8, ptr %29, align 4, !range !19
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !20
  tail call void @arm_heavy_mb() #6
  %33 = load ptr, ptr %1, align 4
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !21
  %35 = and i32 %34, -196609
  %36 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %35) #6, !srcloc !12
  tail call void @pm_system_wakeup() #6
  br label %44

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.sam9_rtc, ptr %1, i32 0, i32 8
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.sam9_rtc, ptr %1, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  tail call void @rtc_update_irq(ptr noundef %43, i32 noundef 1, i32 noundef %39) #6
  store i32 0, ptr %38, align 4
  br label %44

44:                                               ; preds = %41, %37, %32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !22
  %45 = load i16, ptr %3, align 4
  %46 = add i16 %45, 1
  store i16 %46, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !25
  ret i32 %28
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_rtc_readtime(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.sam9_rtc, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sam9_rtc, ptr %5, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = call i32 @regmap_read(ptr noundef %7, i32 noundef %9, ptr noundef nonnull %3) #6
  %11 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %29, label %13

13:                                               ; preds = %2
  %14 = load ptr, ptr %5, align 4
  %15 = getelementptr i8, ptr %14, i32 8
  %16 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #6, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !26
  %17 = load ptr, ptr %5, align 4
  %18 = getelementptr i8, ptr %17, i32 8
  %19 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #6, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !27
  %20 = icmp eq i32 %16, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %13
  %22 = load ptr, ptr %5, align 4
  %23 = getelementptr i8, ptr %22, i32 8
  %24 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #6, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !28
  br label %25

25:                                               ; preds = %21, %13
  %26 = phi i32 [ %24, %21 ], [ %16, %13 ]
  %27 = add i32 %26, %11
  %28 = zext i32 %27 to i64
  call void @rtc_time64_to_tm(i64 noundef %28, ptr noundef %1) #6
  br label %29

29:                                               ; preds = %25, %2
  %30 = phi i32 [ 0, %25 ], [ -84, %2 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_rtc_settime(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i64 @rtc_tm_to_time64(ptr noundef %1) #6
  %7 = trunc i64 %6 to i32
  %8 = load ptr, ptr %5, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !29
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !30
  tail call void @arm_heavy_mb() #6
  %10 = and i32 %9, -196609
  %11 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %10) #6, !srcloc !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  %12 = getelementptr inbounds %struct.sam9_rtc, ptr %5, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.sam9_rtc, ptr %5, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = call i32 @regmap_read(ptr noundef %13, i32 noundef %15, ptr noundef nonnull %3) #6
  %17 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %18 = add i32 %7, 1
  %19 = xor i32 %7, -1
  %20 = load ptr, ptr %12, align 4
  %21 = load i32, ptr %14, align 4
  %22 = call i32 @regmap_write(ptr noundef %20, i32 noundef %21, i32 noundef %18) #6
  %23 = load ptr, ptr %5, align 4
  %24 = getelementptr i8, ptr %23, i32 4
  %25 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #6, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !31
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %45, label %27

27:                                               ; preds = %2
  %28 = icmp ugt i32 %17, %18
  br i1 %28, label %29, label %32

29:                                               ; preds = %27
  %30 = add i32 %17, %19
  %31 = add i32 %30, %25
  br label %40

32:                                               ; preds = %27
  %33 = add i32 %25, %17
  %34 = icmp ugt i32 %33, %18
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = add i32 %17, %19
  %37 = add i32 %36, %25
  br label %40

38:                                               ; preds = %32
  %39 = and i32 %9, -65537
  br label %40

40:                                               ; preds = %38, %35, %29
  %41 = phi i32 [ %9, %29 ], [ %9, %35 ], [ %39, %38 ]
  %42 = phi i32 [ %31, %29 ], [ %37, %35 ], [ -1, %38 ]
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !32
  call void @arm_heavy_mb() #6
  %43 = load ptr, ptr %5, align 4
  %44 = getelementptr i8, ptr %43, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %42) #6, !srcloc !12
  br label %45

45:                                               ; preds = %40, %2
  %46 = phi i32 [ %41, %40 ], [ %9, %2 ]
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !33
  call void @arm_heavy_mb() #6
  %47 = or i32 %46, 262144
  %48 = load ptr, ptr %5, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %47) #6, !srcloc !12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_rtc_readalarm(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  %7 = load ptr, ptr %5, align 4
  %8 = getelementptr i8, ptr %7, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  %10 = getelementptr inbounds %struct.sam9_rtc, ptr %5, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.sam9_rtc, ptr %5, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = call i32 @regmap_read(ptr noundef %11, i32 noundef %13, ptr noundef nonnull %3) #6
  %15 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %2
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(40) %1, i8 0, i32 40, i1 false)
  %18 = icmp eq i32 %9, -1
  br i1 %18, label %27, label %19

19:                                               ; preds = %17
  %20 = add i32 %15, %9
  %21 = zext i32 %20 to i64
  call void @rtc_time64_to_tm(i64 noundef %21, ptr noundef %6) #6
  %22 = load ptr, ptr %5, align 4
  %23 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #6, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !35
  %24 = and i32 %23, 65536
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  store i8 1, ptr %1, align 4
  br label %27

27:                                               ; preds = %26, %19, %17, %2
  %28 = phi i32 [ -84, %2 ], [ 0, %19 ], [ 0, %26 ], [ 0, %17 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_rtc_setalarm(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  %7 = tail call i64 @rtc_tm_to_time64(ptr noundef %6) #6
  %8 = trunc i64 %7 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  %9 = getelementptr inbounds %struct.sam9_rtc, ptr %5, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.sam9_rtc, ptr %5, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = call i32 @regmap_read(ptr noundef %10, i32 noundef %12, ptr noundef nonnull %3) #6
  %14 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %34, label %16

16:                                               ; preds = %2
  %17 = load ptr, ptr %5, align 4
  %18 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #6, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !36
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !37
  call void @arm_heavy_mb() #6
  %19 = and i32 %18, -65537
  %20 = load ptr, ptr %5, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %19) #6, !srcloc !12
  %21 = icmp ult i32 %14, %8
  call void asm sideeffect "dsb st", "~{memory}"() #6
  call void @arm_heavy_mb() #6
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load ptr, ptr %5, align 4
  %24 = getelementptr i8, ptr %23, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -1) #6, !srcloc !12
  br label %34

25:                                               ; preds = %16
  %26 = sub i32 %8, %14
  %27 = load ptr, ptr %5, align 4
  %28 = getelementptr i8, ptr %27, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #6, !srcloc !12
  %29 = load i8, ptr %1, align 4
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !38
  call void @arm_heavy_mb() #6
  %32 = or i32 %18, 65536
  %33 = load ptr, ptr %5, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %32) #6, !srcloc !12
  br label %34

34:                                               ; preds = %31, %25, %22, %2
  %35 = phi i32 [ 0, %22 ], [ -84, %2 ], [ 0, %31 ], [ 0, %25 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_rtc_proc(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !39
  %7 = and i32 %6, 131072
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, ptr @.str.8, ptr @.str.7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef nonnull %9) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_rtc_alarm_irq_enable(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !40
  %7 = icmp eq i32 %1, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #6
  tail call void @arm_heavy_mb() #6
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = or i32 %6, 65536
  %10 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %9) #6, !srcloc !12
  br label %14

11:                                               ; preds = %2
  %12 = and i32 %6, -65537
  %13 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %12) #6, !srcloc !12
  br label %14

14:                                               ; preds = %11, %8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_time64_to_tm(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_system_wakeup() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_rtc_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !41
  %6 = and i32 %5, 196608
  %7 = getelementptr inbounds %struct.sam9_rtc, ptr %3, i32 0, i32 2
  store i32 %6, ptr %7, align 4
  %8 = icmp eq i32 %6, 0
  br i1 %8, label %38, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %11 = load i16, ptr %10, align 4
  %12 = and i16 %11, 1
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %33, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  %18 = and i32 %5, 65536
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %17, i1 true, i1 %19
  br i1 %20, label %33, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.sam9_rtc, ptr %3, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = tail call i32 @irq_set_irq_wake(i32 noundef %23, i32 noundef 1) #6
  %25 = getelementptr inbounds %struct.sam9_rtc, ptr %3, i32 0, i32 9
  %26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %25) #6
  %27 = getelementptr inbounds %struct.sam9_rtc, ptr %3, i32 0, i32 7
  store i8 1, ptr %27, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %25, i32 noundef %26) #6
  %28 = and i32 %5, 131072
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !42
  tail call void @arm_heavy_mb() #6
  %31 = and i32 %5, -131073
  %32 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %31) #6, !srcloc !12
  br label %38

33:                                               ; preds = %14, %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !43
  tail call void @arm_heavy_mb() #6
  %34 = load i32, ptr %7, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %5, %35
  %37 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %36) #6, !srcloc !12
  br label %38

38:                                               ; preds = %33, %30, %21, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_rtc_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sam9_rtc, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %60, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %9 = load i16, ptr %8, align 4
  %10 = and i16 %9, 1
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.sam9_rtc, ptr %3, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 @irq_set_irq_wake(i32 noundef %18, i32 noundef 0) #6
  br label %20

20:                                               ; preds = %16, %12, %7
  %21 = load ptr, ptr %3, align 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !44
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %23 = load i32, ptr %4, align 4
  %24 = or i32 %23, %22
  %25 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %24) #6, !srcloc !12
  %26 = getelementptr inbounds %struct.sam9_rtc, ptr %3, i32 0, i32 9
  %27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %26) #6
  %28 = getelementptr inbounds %struct.sam9_rtc, ptr %3, i32 0, i32 7
  store i8 0, ptr %28, align 4
  %29 = load ptr, ptr %3, align 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !17
  %31 = load ptr, ptr %3, align 4
  %32 = getelementptr i8, ptr %31, i32 12
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !18
  %34 = lshr i32 %30, 16
  %35 = and i32 %34, 3
  %36 = and i32 %35, %33
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %52, label %38

38:                                               ; preds = %20
  %39 = and i32 %36, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.sam9_rtc, ptr %3, i32 0, i32 8
  %43 = load i32, ptr %42, align 4
  %44 = or i32 %43, 160
  store i32 %44, ptr %42, align 4
  br label %45

45:                                               ; preds = %41, %38
  %46 = and i32 %36, 2
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.sam9_rtc, ptr %3, i32 0, i32 8
  %50 = load i32, ptr %49, align 4
  %51 = or i32 %50, 144
  store i32 %51, ptr %49, align 4
  br label %52

52:                                               ; preds = %48, %45, %20
  %53 = getelementptr inbounds %struct.sam9_rtc, ptr %3, i32 0, i32 8
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.sam9_rtc, ptr %3, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  tail call void @rtc_update_irq(ptr noundef %58, i32 noundef 1, i32 noundef %54) #6
  store i32 0, ptr %53, align 4
  br label %59

59:                                               ; preds = %56, %52
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %27) #6
  br label %60

60:                                               ; preds = %59, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

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
!9 = !{i64 3093257}
!10 = !{i64 2153676243}
!11 = !{i64 2153676787}
!12 = !{i64 3092839}
!13 = !{i64 2153678574}
!14 = !{i64 2153679140}
!15 = !{i64 2153679814}
!16 = !{i64 2153680270}
!17 = !{i64 2153669940}
!18 = !{i64 2153670511}
!19 = !{i8 0, i8 2}
!20 = !{i64 2153672803}
!21 = !{i64 2153673359}
!22 = !{i64 2148890298}
!23 = !{i64 2148886122}
!24 = !{i64 2148886197, i64 2148886224, i64 2148886271, i64 2148886293, i64 2148886321, i64 2148886341}
!25 = !{i64 2148913301}
!26 = !{i64 2153657698}
!27 = !{i64 2153658101}
!28 = !{i64 2153658504}
!29 = !{i64 2153659925}
!30 = !{i64 2153660491}
!31 = !{i64 2153661165}
!32 = !{i64 2153661539}
!33 = !{i64 2153662092}
!34 = !{i64 2153662694}
!35 = !{i64 2153663619}
!36 = !{i64 2153664109}
!37 = !{i64 2153664523}
!38 = !{i64 2153666020}
!39 = !{i64 2153669453}
!40 = !{i64 2153667131}
!41 = !{i64 2153680834}
!42 = !{i64 2153681936}
!43 = !{i64 2153682427}
!44 = !{i64 2153682991}
!45 = !{i64 2153683277}
