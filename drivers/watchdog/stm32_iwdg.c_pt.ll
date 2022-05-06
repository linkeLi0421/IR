; ModuleID = '/llk/IR/drivers/watchdog/stm32_iwdg.c_pt.bc'
source_filename = "../drivers/watchdog/stm32_iwdg.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stm32_iwdg_data = type { i8, i32 }
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
%struct.stm32_iwdg = type { %struct.watchdog_device, ptr, ptr, ptr, ptr, i32 }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }

@__initcall__kmod_stm32_iwdg__174_294_stm32_iwdg_driver_init6 = internal global ptr @stm32_iwdg_driver_init, section ".initcall6.init", align 4
@stm32_iwdg_driver = internal global %struct.platform_driver { ptr @stm32_iwdg_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_iwdg_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_stm32_iwdg_driver_exit = internal global ptr @stm32_iwdg_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author175 = internal constant [57 x i8] c"stm32_iwdg.author=Yannick Fertre <yannick.fertre@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description176 = internal constant [76 x i8] c"stm32_iwdg.description=STMicroelectronics STM32 Independent Watchdog Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file177 = internal constant [44 x i8] c"stm32_iwdg.file=drivers/watchdog/stm32_iwdg\00", section ".modinfo", align 1
@__UNIQUE_ID_license178 = internal constant [26 x i8] c"stm32_iwdg.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [5 x i8] c"iwdg\00", align 1
@stm32_iwdg_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32-iwdg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32_iwdg_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32mp1-iwdg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32mp1_iwdg_data }, %struct.of_device_id zeroinitializer], align 4
@stm32_iwdg_info = internal constant %struct.watchdog_info { i32 33152, i32 0, [32 x i8] c"STM32 Independent Watchdog\00\00\00\00\00\00" }, align 4
@stm32_iwdg_ops = internal constant %struct.watchdog_ops { ptr null, ptr @stm32_iwdg_start, ptr null, ptr @stm32_iwdg_ping, ptr null, ptr @stm32_iwdg_set_timeout, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"lsi\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Unable to get lsi clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Unable to get pclk clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Unable to prepare pclk clock\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Unable to prepare lsi clock\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Fail to set prescaler, reload regs\0A\00", align 1
@stm32_iwdg_data = internal constant %struct.stm32_iwdg_data { i8 0, i32 256 }, align 4
@stm32mp1_iwdg_data = internal constant %struct.stm32_iwdg_data { i8 1, i32 1024 }, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author175, ptr @__UNIQUE_ID_description176, ptr @__UNIQUE_ID_file177, ptr @__UNIQUE_ID_license178, ptr @__exitcall_stm32_iwdg_driver_exit, ptr @__initcall__kmod_stm32_iwdg__174_294_stm32_iwdg_driver_init6, ptr @stm32_iwdg_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @stm32_iwdg_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_iwdg_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @stm32_iwdg_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_iwdg_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_iwdg_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 128, i32 noundef 3520) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %87, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @of_device_get_match_data(ptr noundef %2) #5
  %7 = getelementptr inbounds %struct.stm32_iwdg, ptr %3, i32 0, i32 1
  store ptr %6, ptr %7, align 4
  %8 = icmp eq ptr %6, null
  br i1 %8, label %87, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #5
  %11 = getelementptr inbounds %struct.stm32_iwdg, ptr %3, i32 0, i32 2
  store ptr %10, ptr %11, align 4
  %12 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = ptrtoint ptr %10 to i32
  br label %87

15:                                               ; preds = %9
  %16 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.1) #5
  %17 = getelementptr inbounds %struct.stm32_iwdg, ptr %3, i32 0, i32 3
  store ptr %16, ptr %17, align 4
  %18 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %55, label %19

19:                                               ; preds = %15
  %20 = load i8, ptr %6, align 4, !range !8
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %39, label %22

22:                                               ; preds = %19
  %23 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.3) #5
  %24 = getelementptr inbounds %struct.stm32_iwdg, ptr %3, i32 0, i32 4
  store ptr %23, ptr %24, align 4
  %25 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %55, label %26

26:                                               ; preds = %22
  %27 = tail call i32 @clk_prepare(ptr noundef %23) #5
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = tail call i32 @clk_enable(ptr noundef %23) #5
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  tail call void @clk_unprepare(ptr noundef %23) #5
  br label %33

33:                                               ; preds = %32, %26
  %34 = phi i32 [ %30, %32 ], [ %27, %26 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5) #6
  br label %87

35:                                               ; preds = %29
  %36 = tail call i32 @devm_add_action(ptr noundef %2, ptr noundef nonnull @stm32_clk_disable_unprepare, ptr noundef %23) #5
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  tail call void @clk_disable(ptr noundef %23) #5
  tail call void @clk_unprepare(ptr noundef %23) #5
  br label %87

39:                                               ; preds = %35, %19
  %40 = tail call i32 @clk_prepare(ptr noundef %16) #5
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = tail call i32 @clk_enable(ptr noundef %16) #5
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  tail call void @clk_unprepare(ptr noundef %16) #5
  br label %46

46:                                               ; preds = %45, %39
  %47 = phi i32 [ %43, %45 ], [ %40, %39 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6) #6
  br label %87

48:                                               ; preds = %42
  %49 = tail call i32 @devm_add_action(ptr noundef %2, ptr noundef nonnull @stm32_clk_disable_unprepare, ptr noundef %16) #5
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  tail call void @clk_disable(ptr noundef %16) #5
  tail call void @clk_unprepare(ptr noundef %16) #5
  br label %87

52:                                               ; preds = %48
  %53 = tail call i32 @clk_get_rate(ptr noundef %16) #5
  %54 = getelementptr inbounds %struct.stm32_iwdg, ptr %3, i32 0, i32 5
  store i32 %53, ptr %54, align 4
  br label %64

55:                                               ; preds = %22, %15
  %56 = phi ptr [ %16, %15 ], [ %23, %22 ]
  %57 = phi ptr [ @.str.2, %15 ], [ @.str.4, %22 ]
  %58 = ptrtoint ptr %56 to i32
  %59 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %2, i32 noundef %58, ptr noundef nonnull %57) #5
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %87

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.stm32_iwdg, ptr %3, i32 0, i32 5
  %63 = load i32, ptr %62, align 4
  br label %64

64:                                               ; preds = %61, %52
  %65 = phi i32 [ %63, %61 ], [ %53, %52 ]
  %66 = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 1
  store ptr %2, ptr %66, align 4
  %67 = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 3
  store ptr @stm32_iwdg_info, ptr %67, align 4
  %68 = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 4
  store ptr @stm32_iwdg_ops, ptr %68, align 4
  %69 = add i32 %65, 11
  %70 = udiv i32 %69, %65
  %71 = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 9
  store i32 %70, ptr %71, align 4
  %72 = getelementptr inbounds %struct.stm32_iwdg_data, ptr %6, i32 0, i32 1
  %73 = load i32, ptr %72, align 4
  %74 = mul i32 %73, 4096000
  %75 = udiv i32 %74, %65
  %76 = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 12
  store i32 %75, ptr %76, align 4
  %77 = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 16
  store ptr %3, ptr %77, align 4
  %78 = tail call i32 @watchdog_init_timeout(ptr noundef nonnull %3, i32 noundef 0, ptr noundef %2) #5
  %79 = tail call i32 @stm32_iwdg_start(ptr noundef nonnull %3)
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %64
  %82 = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 18
  tail call void @_set_bit(i32 noundef 3, ptr noundef %82) #5
  %83 = tail call i32 @devm_watchdog_register_device(ptr noundef %2, ptr noundef nonnull %3) #5
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %86, align 8
  br label %87

87:                                               ; preds = %85, %81, %64, %55, %51, %46, %38, %33, %13, %5, %1
  %88 = phi i32 [ %14, %13 ], [ 0, %85 ], [ -12, %1 ], [ -19, %5 ], [ %59, %55 ], [ %79, %64 ], [ %83, %81 ], [ %49, %51 ], [ %36, %38 ], [ %47, %46 ], [ %34, %33 ]
  ret i32 %88
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_init_timeout(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_iwdg_start(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 9
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @llvm.umax.i32(i32 %5, i32 %7)
  %9 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 12
  %10 = load i32, ptr %9, align 4
  %11 = udiv i32 %10, 1000
  %12 = tail call i32 @llvm.umin.i32(i32 %8, i32 %11)
  %13 = getelementptr inbounds %struct.stm32_iwdg, ptr %3, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = mul i32 %12, %14
  %16 = add i32 %15, 4095
  %17 = lshr i32 %16, 12
  %18 = add nsw i32 %17, -1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %1
  %21 = tail call i32 @llvm.ctlz.i32(i32 %18, i1 true) #5, !range !9
  %22 = sub nuw nsw i32 32, %21
  %23 = shl nuw i32 1, %22
  %24 = icmp ult i32 %18, 4
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = tail call i32 @llvm.ctlz.i32(i32 %23, i1 true), !range !9
  %27 = sub nsw i32 29, %26
  br label %28

28:                                               ; preds = %25, %20, %1
  %29 = phi i32 [ %23, %25 ], [ %23, %20 ], [ 1, %1 ]
  %30 = phi i32 [ %27, %25 ], [ 0, %20 ], [ 0, %1 ]
  %31 = udiv i32 %15, %29
  %32 = add i32 %31, -1
  %33 = getelementptr inbounds %struct.stm32_iwdg, ptr %3, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 21845) #5, !srcloc !10
  %35 = load ptr, ptr %33, align 4
  %36 = getelementptr i8, ptr %35, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %30) #5, !srcloc !10
  %37 = load ptr, ptr %33, align 4
  %38 = getelementptr i8, ptr %37, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %32) #5, !srcloc !10
  %39 = load ptr, ptr %33, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 52428) #5, !srcloc !10
  %40 = tail call i64 @ktime_get() #5
  %41 = add i64 %40, 100000000
  %42 = load ptr, ptr %33, align 4
  %43 = getelementptr i8, ptr %42, i32 12
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #5, !srcloc !11
  %45 = and i32 %44, 3
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %60, label %47

47:                                               ; preds = %54, %28
  %48 = tail call i64 @ktime_get() #5
  %49 = icmp sgt i64 %48, %41
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load ptr, ptr %33, align 4
  %52 = getelementptr i8, ptr %51, i32 12
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #5, !srcloc !11
  br label %60

54:                                               ; preds = %47
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #5
  %55 = load ptr, ptr %33, align 4
  %56 = getelementptr i8, ptr %55, i32 12
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #5, !srcloc !11
  %58 = and i32 %57, 3
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %47

60:                                               ; preds = %54, %50, %28
  %61 = phi i32 [ %53, %50 ], [ %44, %28 ], [ %57, %54 ]
  %62 = and i32 %61, 3
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.7) #6
  br label %69

67:                                               ; preds = %60
  %68 = load ptr, ptr %33, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 43690) #5, !srcloc !10
  br label %69

69:                                               ; preds = %67, %64
  %70 = phi i32 [ -110, %64 ], [ 0, %67 ]
  ret i32 %70
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_watchdog_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_clk_disable_unprepare(ptr noundef %0) #2 {
  tail call void @clk_disable(ptr noundef %0) #5
  tail call void @clk_unprepare(ptr noundef %0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_iwdg_ping(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.stm32_iwdg, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 43690) #5, !srcloc !10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_iwdg_set_timeout(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 7
  store i32 %1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 18
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call i32 @stm32_iwdg_start(ptr noundef %0)
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi i32 [ %9, %8 ], [ 0, %2 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{i8 0, i8 2}
!9 = !{i32 0, i32 33}
!10 = !{i64 3095300}
!11 = !{i64 3095718}
