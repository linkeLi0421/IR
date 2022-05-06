; ModuleID = '/llk/IR/drivers/rtc/rtc-st-lpc.c_pt.bc'
source_filename = "../drivers/rtc/rtc-st-lpc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.st_rtc = type { ptr, %struct.rtc_wkalrm, ptr, i32, ptr, i8, %struct.spinlock, i16 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }

@__initcall__kmod_rtc_st_lpc__210_316_st_rtc_platform_driver_init6 = internal global ptr @st_rtc_platform_driver_init, section ".initcall6.init", align 4
@st_rtc_platform_driver = internal global %struct.platform_driver { ptr @st_rtc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @st_rtc_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @st_rtc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_st_rtc_platform_driver_exit = internal global ptr @st_rtc_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description211 = internal constant [57 x i8] c"rtc_st_lpc.description=STMicroelectronics LPC RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author212 = internal constant [51 x i8] c"rtc_st_lpc.author=David Paris <david.paris@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file213 = internal constant [39 x i8] c"rtc_st_lpc.file=drivers/rtc/rtc-st-lpc\00", section ".modinfo", align 1
@__UNIQUE_ID_license214 = internal constant [23 x i8] c"rtc_st_lpc.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [11 x i8] c"st-lpc-rtc\00", align 1
@st_rtc_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih407-lpc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@st_rtc_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @st_rtc_suspend, ptr @st_rtc_resume, ptr @st_rtc_suspend, ptr @st_rtc_resume, ptr @st_rtc_suspend, ptr @st_rtc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"st,lpc-mode\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"An LPC mode must be provided\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"IRQ missing or invalid\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Failed to request irq %i\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Unable to request clock\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Unable to fetch clock rate\0A\00", align 1
@st_rtc_ops = internal constant %struct.rtc_class_ops { ptr null, ptr @st_rtc_read_time, ptr @st_rtc_set_time, ptr @st_rtc_read_alarm, ptr @st_rtc_set_alarm, ptr null, ptr @st_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author212, ptr @__UNIQUE_ID_description211, ptr @__UNIQUE_ID_file213, ptr @__UNIQUE_ID_license214, ptr @__exitcall_st_rtc_platform_driver_exit, ptr @__initcall__kmod_rtc_st_lpc__210_316_st_rtc_platform_driver_init6, ptr @st_rtc_platform_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @st_rtc_platform_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @st_rtc_platform_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @st_rtc_platform_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @st_rtc_platform_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_rtc_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %6 = call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.1, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #7
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #8
  br label %90

9:                                                ; preds = %1
  %10 = load i32, ptr %2, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %90

12:                                               ; preds = %9
  %13 = call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 68, i32 noundef 3520) #7
  %14 = icmp eq ptr %13, null
  br i1 %14, label %90, label %15

15:                                               ; preds = %12
  %16 = call ptr @devm_rtc_allocate_device(ptr noundef %3) #7
  store ptr %16, ptr %13, align 4
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = ptrtoint ptr %16 to i32
  br label %90

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.st_rtc, ptr %13, i32 0, i32 6
  store i32 0, ptr %21, align 4
  %22 = call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #7
  %23 = getelementptr inbounds %struct.st_rtc, ptr %13, i32 0, i32 4
  store ptr %22, ptr %23, align 4
  %24 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = ptrtoint ptr %22 to i32
  br label %90

27:                                               ; preds = %20
  %28 = call i32 @irq_of_parse_and_map(ptr noundef %5, i32 noundef 0) #7
  %29 = trunc i32 %28 to i16
  %30 = getelementptr inbounds %struct.st_rtc, ptr %13, i32 0, i32 7
  store i16 %29, ptr %30, align 4
  %31 = icmp eq i16 %29, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3) #8
  br label %90

33:                                               ; preds = %27
  %34 = shl i32 %28, 16
  %35 = ashr exact i32 %34, 16
  %36 = load ptr, ptr %0, align 8
  %37 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %35, ptr noundef nonnull @st_rtc_handler, ptr noundef null, i32 noundef 0, ptr noundef %36, ptr noundef nonnull %13) #7
  %38 = icmp eq i32 %37, 0
  %39 = load i16, ptr %30, align 4
  %40 = sext i16 %39 to i32
  br i1 %38, label %42, label %41

41:                                               ; preds = %33
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4, i32 noundef %40) #8
  br label %90

42:                                               ; preds = %33
  %43 = call i32 @irq_set_irq_wake(i32 noundef %40, i32 noundef 1) #7
  %44 = load i16, ptr %30, align 4
  %45 = sext i16 %44 to i32
  call void @disable_irq(i32 noundef %45) #7
  %46 = call ptr @clk_get(ptr noundef %3, ptr noundef null) #7
  %47 = getelementptr inbounds %struct.st_rtc, ptr %13, i32 0, i32 2
  store ptr %46, ptr %47, align 4
  %48 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5) #8
  %50 = load ptr, ptr %47, align 4
  %51 = ptrtoint ptr %50 to i32
  br label %90

52:                                               ; preds = %42
  %53 = call i32 @clk_prepare(ptr noundef %46) #7
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = call i32 @clk_enable(ptr noundef %46) #7
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  call void @clk_unprepare(ptr noundef %46) #7
  br label %59

59:                                               ; preds = %58, %55, %52
  %60 = load ptr, ptr %47, align 4
  %61 = call i32 @clk_get_rate(ptr noundef %60) #7
  %62 = getelementptr inbounds %struct.st_rtc, ptr %13, i32 0, i32 3
  store i32 %61, ptr %62, align 4
  %63 = icmp eq i32 %61, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6) #8
  br label %90

65:                                               ; preds = %59
  call void @device_set_wakeup_capable(ptr noundef %3, i1 noundef zeroext true) #7
  %66 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %13, ptr %66, align 8
  %67 = load ptr, ptr %13, align 4
  %68 = getelementptr inbounds %struct.rtc_device, ptr %67, i32 0, i32 3
  store ptr @st_rtc_ops, ptr %68, align 8
  %69 = load ptr, ptr %13, align 4
  %70 = getelementptr inbounds %struct.rtc_device, ptr %69, i32 0, i32 23
  store i64 -1, ptr %70, align 8
  %71 = load i32, ptr %62, align 4
  %72 = load ptr, ptr %13, align 4
  %73 = getelementptr inbounds %struct.rtc_device, ptr %72, i32 0, i32 23
  %74 = load i64, ptr %73, align 8
  %75 = icmp ult i64 %74, 4294967296
  br i1 %75, label %76, label %80, !prof !9

76:                                               ; preds = %65
  %77 = trunc i64 %74 to i32
  %78 = udiv i32 %77, %71
  %79 = zext i32 %78 to i64
  br label %83

80:                                               ; preds = %65
  %81 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %71, i64 %74) #9, !srcloc !10
  %82 = extractvalue { i64, i64 } %81, 1
  br label %83

83:                                               ; preds = %80, %76
  %84 = phi i64 [ %82, %80 ], [ %79, %76 ]
  store i64 %84, ptr %73, align 8
  %85 = load ptr, ptr %13, align 4
  %86 = call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %85) #7
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %83
  %89 = load ptr, ptr %47, align 4
  call void @clk_disable(ptr noundef %89) #7
  call void @clk_unprepare(ptr noundef %89) #7
  br label %90

90:                                               ; preds = %88, %83, %64, %49, %41, %32, %25, %18, %12, %9, %8
  %91 = phi i32 [ -22, %8 ], [ %19, %18 ], [ %26, %25 ], [ %37, %41 ], [ %51, %49 ], [ %86, %88 ], [ -22, %64 ], [ -22, %32 ], [ -19, %9 ], [ -12, %12 ], [ 0, %83 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 %91
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_rtc_handler(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = load ptr, ptr %1, align 4
  tail call void @rtc_update_irq(ptr noundef %3, i32 noundef 1, i32 noundef 32) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_rtc_read_time(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.st_rtc, ptr %4, i32 0, i32 6
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #7
  %7 = getelementptr inbounds %struct.st_rtc, ptr %4, i32 0, i32 4
  br label %8

8:                                                ; preds = %8, %2
  %9 = load ptr, ptr %7, align 4
  %10 = getelementptr i8, ptr %9, i32 1028
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !11
  %12 = load ptr, ptr %7, align 4
  %13 = getelementptr i8, ptr %12, i32 1024
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #7, !srcloc !11
  %15 = load ptr, ptr %7, align 4
  %16 = getelementptr i8, ptr %15, i32 1028
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #7, !srcloc !11
  %18 = icmp eq i32 %17, %11
  br i1 %18, label %19, label %8

19:                                               ; preds = %8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #7
  %20 = zext i32 %11 to i64
  %21 = shl nuw i64 %20, 32
  %22 = zext i32 %14 to i64
  %23 = or i64 %21, %22
  %24 = getelementptr inbounds %struct.st_rtc, ptr %4, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = icmp ult i64 %23, 4294967296
  br i1 %26, label %27, label %30, !prof !9

27:                                               ; preds = %19
  %28 = udiv i32 %14, %25
  %29 = zext i32 %28 to i64
  br label %33

30:                                               ; preds = %19
  %31 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %25, i64 %23) #9, !srcloc !10
  %32 = extractvalue { i64, i64 } %31, 1
  br label %33

33:                                               ; preds = %30, %27
  %34 = phi i64 [ %29, %27 ], [ %32, %30 ]
  tail call void @rtc_time64_to_tm(i64 noundef %34, ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_rtc_set_time(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i64 @rtc_tm_to_time64(ptr noundef %1) #7
  %6 = getelementptr inbounds %struct.st_rtc, ptr %4, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = zext i32 %7 to i64
  %9 = mul i64 %5, %8
  %10 = getelementptr inbounds %struct.st_rtc, ptr %4, i32 0, i32 6
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #7
  %12 = lshr i64 %9, 32
  %13 = trunc i64 %12 to i32
  %14 = getelementptr inbounds %struct.st_rtc, ptr %4, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %13) #7, !srcloc !12
  %17 = trunc i64 %9 to i32
  %18 = load ptr, ptr %14, align 4
  %19 = getelementptr i8, ptr %18, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #7, !srcloc !12
  %20 = load ptr, ptr %14, align 4
  %21 = getelementptr i8, ptr %20, i32 1032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 1) #7, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_rtc_read_alarm(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.st_rtc, ptr %4, i32 0, i32 6
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #7
  %7 = getelementptr inbounds %struct.st_rtc, ptr %4, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(40) %1, ptr noundef align 4 dereferenceable(40) %7, i32 40, i1 false)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_rtc_set_alarm(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = alloca %struct.rtc_time, align 4
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %3, i8 0, i32 36, i1 false), !annotation !8
  %6 = getelementptr inbounds %struct.st_rtc, ptr %5, i32 0, i32 6
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #7
  %8 = getelementptr inbounds %struct.st_rtc, ptr %5, i32 0, i32 4
  br label %9

9:                                                ; preds = %9, %2
  %10 = load ptr, ptr %8, align 4
  %11 = getelementptr i8, ptr %10, i32 1028
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #7, !srcloc !11
  %13 = load ptr, ptr %8, align 4
  %14 = getelementptr i8, ptr %13, i32 1024
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #7, !srcloc !11
  %16 = load ptr, ptr %8, align 4
  %17 = getelementptr i8, ptr %16, i32 1028
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #7, !srcloc !11
  %19 = icmp eq i32 %18, %12
  br i1 %19, label %20, label %9

20:                                               ; preds = %9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #7
  %21 = zext i32 %12 to i64
  %22 = shl nuw i64 %21, 32
  %23 = zext i32 %15 to i64
  %24 = or i64 %22, %23
  %25 = getelementptr inbounds %struct.st_rtc, ptr %5, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = icmp ult i64 %24, 4294967296
  br i1 %27, label %28, label %31, !prof !9

28:                                               ; preds = %20
  %29 = udiv i32 %15, %26
  %30 = zext i32 %29 to i64
  br label %34

31:                                               ; preds = %20
  %32 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %26, i64 %24) #9, !srcloc !10
  %33 = extractvalue { i64, i64 } %32, 1
  br label %34

34:                                               ; preds = %31, %28
  %35 = phi i64 [ %30, %28 ], [ %33, %31 ]
  call void @rtc_time64_to_tm(i64 noundef %35, ptr noundef nonnull %3) #7
  %36 = call i64 @rtc_tm_to_time64(ptr noundef nonnull %3) #7
  %37 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  %38 = call i64 @rtc_tm_to_time64(ptr noundef %37) #7
  %39 = getelementptr inbounds %struct.st_rtc, ptr %5, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(40) %39, ptr noundef align 4 dereferenceable(40) %1, i32 40, i1 false)
  %40 = sub i64 %38, %36
  %41 = load i32, ptr %25, align 4
  %42 = zext i32 %41 to i64
  %43 = mul i64 %40, %42
  %44 = lshr i64 %43, 32
  %45 = trunc i64 %44 to i32
  %46 = trunc i64 %43 to i32
  %47 = call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #7
  %48 = load ptr, ptr %8, align 4
  %49 = getelementptr i8, ptr %48, i32 1296
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 1) #7, !srcloc !12
  %50 = load ptr, ptr %8, align 4
  %51 = getelementptr i8, ptr %50, i32 1044
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %45) #7, !srcloc !12
  %52 = load ptr, ptr %8, align 4
  %53 = getelementptr i8, ptr %52, i32 1040
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %46) #7, !srcloc !12
  %54 = load ptr, ptr %8, align 4
  %55 = getelementptr i8, ptr %54, i32 1048
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 1) #7, !srcloc !12
  %56 = load ptr, ptr %8, align 4
  %57 = getelementptr i8, ptr %56, i32 1296
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 0) #7, !srcloc !12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %47) #7
  %58 = load i8, ptr %1, align 4
  %59 = load ptr, ptr %4, align 8
  %60 = icmp eq i8 %58, 0
  %61 = getelementptr inbounds %struct.st_rtc, ptr %59, i32 0, i32 5
  %62 = load i8, ptr %61, align 4
  %63 = and i8 %62, 1
  %64 = icmp eq i8 %63, 0
  br i1 %60, label %72, label %65

65:                                               ; preds = %34
  br i1 %64, label %66, label %81

66:                                               ; preds = %65
  %67 = getelementptr inbounds %struct.st_rtc, ptr %59, i32 0, i32 7
  %68 = load i16, ptr %67, align 4
  %69 = sext i16 %68 to i32
  call void @enable_irq(i32 noundef %69) #7
  %70 = load i8, ptr %61, align 4
  %71 = or i8 %70, 1
  br label %79

72:                                               ; preds = %34
  br i1 %64, label %81, label %73

73:                                               ; preds = %72
  %74 = getelementptr inbounds %struct.st_rtc, ptr %59, i32 0, i32 7
  %75 = load i16, ptr %74, align 4
  %76 = sext i16 %75 to i32
  call void @disable_irq(i32 noundef %76) #7
  %77 = load i8, ptr %61, align 4
  %78 = and i8 %77, -2
  br label %79

79:                                               ; preds = %73, %66
  %80 = phi i8 [ %78, %73 ], [ %71, %66 ]
  store i8 %80, ptr %61, align 4
  br label %81

81:                                               ; preds = %79, %72, %65
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_rtc_alarm_irq_enable(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.st_rtc, ptr %4, i32 0, i32 5
  %7 = load i8, ptr %6, align 4
  %8 = and i8 %7, 1
  %9 = icmp eq i8 %8, 0
  br i1 %5, label %17, label %10

10:                                               ; preds = %2
  br i1 %9, label %11, label %26

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.st_rtc, ptr %4, i32 0, i32 7
  %13 = load i16, ptr %12, align 4
  %14 = sext i16 %13 to i32
  tail call void @enable_irq(i32 noundef %14) #7
  %15 = load i8, ptr %6, align 4
  %16 = or i8 %15, 1
  br label %24

17:                                               ; preds = %2
  br i1 %9, label %26, label %18

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.st_rtc, ptr %4, i32 0, i32 7
  %20 = load i16, ptr %19, align 4
  %21 = sext i16 %20 to i32
  tail call void @disable_irq(i32 noundef %21) #7
  %22 = load i8, ptr %6, align 4
  %23 = and i8 %22, -2
  br label %24

24:                                               ; preds = %18, %11
  %25 = phi i8 [ %23, %18 ], [ %16, %11 ]
  store i8 %25, ptr %6, align 4
  br label %26

26:                                               ; preds = %24, %17, %10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_time64_to_tm(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_rtc_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %5 = load i16, ptr %4, align 4
  %6 = and i16 %5, 1
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %8, %1
  %13 = getelementptr inbounds %struct.st_rtc, ptr %3, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 1296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 1) #7, !srcloc !12
  %16 = load ptr, ptr %13, align 4
  %17 = getelementptr i8, ptr %16, i32 1048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 0) #7, !srcloc !12
  %18 = load ptr, ptr %13, align 4
  %19 = getelementptr i8, ptr %18, i32 1296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 0) #7, !srcloc !12
  br label %20

20:                                               ; preds = %12, %8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_rtc_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @rtc_alarm_irq_enable(ptr noundef %4, i32 noundef 0) #7
  %6 = getelementptr inbounds %struct.st_rtc, ptr %3, i32 0, i32 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(40) %6, i8 0, i32 40, i1 false)
  %7 = getelementptr inbounds %struct.st_rtc, ptr %3, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 1044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #7, !srcloc !12
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr i8, ptr %10, i32 1040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 0) #7, !srcloc !12
  %12 = load ptr, ptr %7, align 4
  %13 = getelementptr i8, ptr %12, i32 1296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 1) #7, !srcloc !12
  %14 = load ptr, ptr %7, align 4
  %15 = getelementptr i8, ptr %14, i32 1048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 1) #7, !srcloc !12
  %16 = load ptr, ptr %7, align 4
  %17 = getelementptr i8, ptr %16, i32 1296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 0) #7, !srcloc !12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_alarm_irq_enable(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readnone }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2148361658, i64 2148361938, i64 2148362272, i64 2148362606}
!11 = !{i64 2482628}
!12 = !{i64 2482210}
