; ModuleID = '/llk/IR/drivers/watchdog/of_xilinx_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/of_xilinx_wdt.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.xwdt_device = type { ptr, i32, %struct.spinlock, %struct.watchdog_device, ptr }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }

@__initcall__kmod_of_xilinx_wdt__162_308_xwdt_driver_init6 = internal global ptr @xwdt_driver_init, section ".initcall6.init", align 4
@xwdt_driver = internal global %struct.platform_driver { ptr @xwdt_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @xwdt_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xwdt_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_xwdt_driver_exit = internal global ptr @xwdt_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author163 = internal constant [58 x i8] c"of_xilinx_wdt.author=Alejandro Cabrera <aldaya@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description164 = internal constant [49 x i8] c"of_xilinx_wdt.description=Xilinx Watchdog driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file165 = internal constant [50 x i8] c"of_xilinx_wdt.file=drivers/watchdog/of_xilinx_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license166 = internal constant [26 x i8] c"of_xilinx_wdt.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [16 x i8] c"Xilinx Watchdog\00", align 1
@xwdt_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,xps-timebase-wdt-1.00.a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,xps-timebase-wdt-1.01.a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@xwdt_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @xwdt_suspend, ptr @xwdt_resume, ptr @xwdt_suspend, ptr @xwdt_resume, ptr @xwdt_suspend, ptr @xwdt_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@xilinx_wdt_ident = internal constant %struct.watchdog_info { i32 33024, i32 1, [32 x i8] c"Xilinx Watchdog\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, align 4
@xilinx_wdt_ops = internal constant %struct.watchdog_ops { ptr null, ptr @xilinx_wdt_start, ptr @xilinx_wdt_stop, ptr @xilinx_wdt_keepalive, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"xlnx,wdt-interval\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Parameter \22xlnx,wdt-interval\22 not found\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"xlnx,wdt-enable-once\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Parameter \22xlnx,wdt-enable-once\22 not found\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"The watchdog clock freq cannot be obtained\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"unable to enable clock\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"SelfTest routine error\0A\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"Xilinx Watchdog Timer with timeout %ds\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"Failed to enable clock\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author163, ptr @__UNIQUE_ID_description164, ptr @__UNIQUE_ID_file165, ptr @__UNIQUE_ID_license166, ptr @__exitcall_xwdt_driver_exit, ptr @__initcall__kmod_of_xilinx_wdt__162_308_xwdt_driver_init6, ptr @xwdt_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @xwdt_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @xwdt_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @xwdt_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @xwdt_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xwdt_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 124, i32 noundef 3520) #5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %106, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.xwdt_device, ptr %5, i32 0, i32 3
  %9 = getelementptr inbounds %struct.xwdt_device, ptr %5, i32 0, i32 3, i32 3
  store ptr @xilinx_wdt_ident, ptr %9, align 4
  %10 = getelementptr inbounds %struct.xwdt_device, ptr %5, i32 0, i32 3, i32 4
  store ptr @xilinx_wdt_ops, ptr %10, align 4
  %11 = getelementptr inbounds %struct.xwdt_device, ptr %5, i32 0, i32 3, i32 1
  store ptr %4, ptr %11, align 4
  %12 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #5
  store ptr %12, ptr %5, align 4
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %7
  %15 = ptrtoint ptr %12 to i32
  br label %106

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.xwdt_device, ptr %5, i32 0, i32 1
  %20 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %18, ptr noundef nonnull @.str.1, ptr noundef %19, i32 noundef 1, i32 noundef 0) #5
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.2) #6
  br label %23

23:                                               ; preds = %22, %16
  %24 = load ptr, ptr %17, align 8
  %25 = call i32 @of_property_read_variable_u32_array(ptr noundef %24, ptr noundef nonnull @.str.3, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #5
  %26 = icmp sgt i32 %25, -1
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.4) #6
  br label %28

28:                                               ; preds = %27, %23
  %29 = load i32, ptr %3, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.xwdt_device, ptr %5, i32 0, i32 3, i32 18
  call void @_set_bit(i32 noundef 1, ptr noundef %32) #5
  br label %33

33:                                               ; preds = %31, %28
  %34 = call ptr @devm_clk_get(ptr noundef %4, ptr noundef null) #5
  %35 = getelementptr inbounds %struct.xwdt_device, ptr %5, i32 0, i32 4
  store ptr %34, ptr %35, align 4
  %36 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = ptrtoint ptr %34 to i32
  %39 = icmp eq ptr %34, inttoptr (i32 -2 to ptr)
  br i1 %39, label %40, label %106

40:                                               ; preds = %37
  store ptr null, ptr %35, align 4
  %41 = load ptr, ptr %17, align 8
  %42 = call i32 @of_property_read_variable_u32_array(ptr noundef %41, ptr noundef nonnull @.str.5, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #5
  %43 = icmp sgt i32 %42, -1
  br i1 %43, label %61, label %44

44:                                               ; preds = %40
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.6) #6
  br label %61

45:                                               ; preds = %33
  %46 = call i32 @clk_get_rate(ptr noundef %34) #5
  store i32 %46, ptr %2, align 4
  %47 = load ptr, ptr %35, align 4
  %48 = call i32 @clk_prepare(ptr noundef %47) #5
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = call i32 @clk_enable(ptr noundef %47) #5
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  call void @clk_unprepare(ptr noundef %47) #5
  br label %54

54:                                               ; preds = %53, %45
  %55 = phi i32 [ %51, %53 ], [ %48, %45 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.7) #6
  br label %106

56:                                               ; preds = %50
  %57 = load ptr, ptr %35, align 4
  %58 = call i32 @devm_add_action(ptr noundef %4, ptr noundef nonnull @xwdt_clk_disable_unprepare, ptr noundef %57) #5
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  call void @clk_disable(ptr noundef %57) #5
  call void @clk_unprepare(ptr noundef %57) #5
  br label %106

61:                                               ; preds = %56, %44, %40
  %62 = load i32, ptr %2, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %61
  %65 = load i32, ptr %19, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %64
  %68 = shl nuw i32 1, %65
  %69 = udiv i32 %68, %62
  %70 = shl i32 %69, 1
  %71 = getelementptr inbounds %struct.xwdt_device, ptr %5, i32 0, i32 3, i32 7
  store i32 %70, ptr %71, align 4
  br label %72

72:                                               ; preds = %67, %64, %61
  %73 = getelementptr inbounds %struct.xwdt_device, ptr %5, i32 0, i32 2
  store i32 0, ptr %73, align 4
  %74 = getelementptr inbounds %struct.xwdt_device, ptr %5, i32 0, i32 3, i32 16
  store ptr %5, ptr %74, align 4
  call void @_raw_spin_lock(ptr noundef %73) #5
  %75 = load ptr, ptr %5, align 4
  %76 = getelementptr i8, ptr %75, i32 8
  %77 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #5, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %78 = load ptr, ptr %5, align 4
  %79 = getelementptr i8, ptr %78, i32 8
  %80 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #5, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %81 = icmp eq i32 %80, %77
  br i1 %81, label %82, label %95

82:                                               ; preds = %82, %72
  %83 = phi i32 [ %87, %82 ], [ 0, %72 ]
  %84 = load ptr, ptr %5, align 4
  %85 = getelementptr i8, ptr %84, i32 8
  %86 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #5, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %87 = add nuw nsw i32 %83, 1
  %88 = icmp ult i32 %83, 65536
  %89 = icmp eq i32 %86, %77
  %90 = select i1 %88, i1 %89, i1 false
  br i1 %90, label %82, label %91

91:                                               ; preds = %82
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !10
  %92 = load i16, ptr %73, align 4
  %93 = add i16 %92, 1
  store i16 %93, ptr %73, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  br i1 %89, label %94, label %98

94:                                               ; preds = %91
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.8) #6
  br label %106

95:                                               ; preds = %72
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !10
  %96 = load i16, ptr %73, align 4
  %97 = add i16 %96, 1
  store i16 %97, ptr %73, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  br label %98

98:                                               ; preds = %95, %91
  %99 = call i32 @devm_watchdog_register_device(ptr noundef %4, ptr noundef %8) #5
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = load ptr, ptr %35, align 4
  call void @clk_disable(ptr noundef %102) #5
  %103 = getelementptr inbounds %struct.xwdt_device, ptr %5, i32 0, i32 3, i32 7
  %104 = load i32, ptr %103, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.9, i32 noundef %104) #6
  %105 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %105, align 8
  br label %106

106:                                              ; preds = %101, %98, %94, %60, %54, %37, %14, %1
  %107 = phi i32 [ %15, %14 ], [ -1, %94 ], [ 0, %101 ], [ %55, %54 ], [ -12, %1 ], [ %58, %60 ], [ %99, %98 ], [ %38, %37 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  ret i32 %107
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xwdt_clk_disable_unprepare(ptr noundef %0) #2 {
  tail call void @clk_disable(ptr noundef %0) #5
  tail call void @clk_unprepare(ptr noundef %0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_watchdog_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xilinx_wdt_start(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.xwdt_device, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_enable(ptr noundef %5) #5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.10) #6
  br label %21

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.xwdt_device, ptr %3, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %12) #5
  %13 = load ptr, ptr %3, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %15 = or i32 %14, 14
  %16 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %15) #5, !srcloc !15
  %17 = load ptr, ptr %3, align 4
  %18 = getelementptr i8, ptr %17, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 1) #5, !srcloc !15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !10
  %19 = load i16, ptr %12, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  br label %21

21:                                               ; preds = %11, %8
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xilinx_wdt_stop(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.xwdt_device, ptr %3, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %4) #5
  %5 = load ptr, ptr %3, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %7 = and i32 %6, -3
  %8 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %7) #5, !srcloc !15
  %9 = load ptr, ptr %3, align 4
  %10 = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 0) #5, !srcloc !15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !10
  %11 = load i16, ptr %4, align 4
  %12 = add i16 %11, 1
  store i16 %12, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  %13 = getelementptr inbounds %struct.xwdt_device, ptr %3, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  tail call void @clk_disable(ptr noundef %14) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xilinx_wdt_keepalive(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.xwdt_device, ptr %3, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %4) #5
  %5 = load ptr, ptr %3, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %7 = or i32 %6, 12
  %8 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %7) #5, !srcloc !15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !10
  %9 = load i16, ptr %4, align 4
  %10 = add i16 %9, 1
  store i16 %10, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xwdt_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.xwdt_device, ptr %3, i32 0, i32 3, i32 18
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.xwdt_device, ptr %3, i32 0, i32 3, i32 16
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.xwdt_device, ptr %10, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %11) #5
  %12 = load ptr, ptr %10, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %14 = and i32 %13, -3
  %15 = load ptr, ptr %10, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %14) #5, !srcloc !15
  %16 = load ptr, ptr %10, align 4
  %17 = getelementptr i8, ptr %16, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 0) #5, !srcloc !15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !10
  %18 = load i16, ptr %11, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  %20 = getelementptr inbounds %struct.xwdt_device, ptr %10, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  tail call void @clk_disable(ptr noundef %21) #5
  br label %22

22:                                               ; preds = %8, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xwdt_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.xwdt_device, ptr %3, i32 0, i32 3, i32 18
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.xwdt_device, ptr %3, i32 0, i32 3
  %10 = tail call i32 @xilinx_wdt_start(ptr noundef %9)
  br label %11

11:                                               ; preds = %8, %1
  %12 = phi i32 [ %10, %8 ], [ 0, %1 ]
  ret i32 %12
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
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
!8 = !{i64 3668643}
!9 = !{i64 2151208096}
!10 = !{i64 2148884925}
!11 = !{i64 2148880749}
!12 = !{i64 2148880824, i64 2148880851, i64 2148880898, i64 2148880920, i64 2148880948, i64 2148880968}
!13 = !{i64 2148907928}
!14 = !{i64 2151209318}
!15 = !{i64 3668225}
