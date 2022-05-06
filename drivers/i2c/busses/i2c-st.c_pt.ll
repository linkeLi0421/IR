; ModuleID = '/llk/IR/drivers/i2c/busses/i2c-st.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-st.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_bus_recovery_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.st_i2c_timings = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lock_class_key = type {}
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
%struct.st_i2c_dev = type { %struct.i2c_adapter, ptr, ptr, %struct.completion, i32, ptr, i32, i32, i32, %struct.st_i2c_client, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.st_i2c_client = type { i8, i32, i32, ptr, i32, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_i2c_st__247_910_st_i2c_driver_init6 = internal global ptr @st_i2c_driver_init, section ".initcall6.init", align 4
@st_i2c_driver = internal global %struct.platform_driver { ptr @st_i2c_probe, ptr @st_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @st_i2c_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @st_i2c_pm, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_st_i2c_driver_exit = internal global ptr @st_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author248 = internal constant [55 x i8] c"i2c_st.author=Maxime Coquelin <maxime.coquelin@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description249 = internal constant [49 x i8] c"i2c_st.description=STMicroelectronics I2C driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file250 = internal constant [38 x i8] c"i2c_st.file=drivers/i2c/busses/i2c-st\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [22 x i8] c"i2c_st.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [7 x i8] c"st-i2c\00", align 1
@st_i2c_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,comms-ssc-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,comms-ssc4-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@st_i2c_pm = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @st_i2c_suspend, ptr @st_i2c_resume, ptr @st_i2c_suspend, ptr @st_i2c_resume, ptr @st_i2c_suspend, ptr @st_i2c_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"IRQ missing or invalid\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ssc\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Unable to request clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Failed to request irq %i\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"ST I2C(%pa)\00", align 1
@st_i2c_algo = internal constant %struct.i2c_algorithm { ptr @st_i2c_xfer, ptr null, ptr null, ptr null, ptr @st_i2c_func, ptr null, ptr null }, align 4
@st_i2c_recovery_info = internal global %struct.i2c_bus_recovery_info { ptr @st_i2c_recover_bus, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"%s initialized\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"it %d unhandled (sta=0x%04x)\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"Unexpected %d bytes in rx fifo\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"st,i2c-min-scl-pulse-width-us\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"st,i2c-min-scl-pulse-width-us invalid\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"st,i2c-min-sda-pulse-width-us\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"st,i2c-min-sda-pulse-width-us invalid\0A\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"Failed to prepare_enable clock\0A\00", align 1
@i2c_timings = internal unnamed_addr constant [2 x %struct.st_i2c_timings] [%struct.st_i2c_timings { i32 100000, i32 4400, i32 5170, i32 4400, i32 275, i32 4400, i32 5170, i32 0 }, %struct.st_i2c_timings { i32 400000, i32 660, i32 660, i32 660, i32 110, i32 660, i32 1430, i32 0 }], align 4
@.str.15 = private unnamed_addr constant [31 x i8] c"Write to slave 0x%x timed out\0A\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"bus not free (status = 0x%08x)\0A\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"Failed to recover the bus (%d)\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_file250, ptr @__UNIQUE_ID_license251, ptr @__exitcall_st_i2c_driver_exit, ptr @__initcall__kmod_i2c_st__247_910_st_i2c_driver_init6, ptr @st_i2c_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @st_i2c_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @st_i2c_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @st_i2c_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @st_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_i2c_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 728, i32 noundef 3520) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %77, label %8

8:                                                ; preds = %1
  %9 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #8
  %10 = tail call ptr @devm_ioremap_resource(ptr noundef %3, ptr noundef %9) #8
  %11 = getelementptr inbounds %struct.st_i2c_dev, ptr %6, i32 0, i32 2
  store ptr %10, ptr %11, align 4
  %12 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = ptrtoint ptr %10 to i32
  br label %77

15:                                               ; preds = %8
  %16 = tail call i32 @irq_of_parse_and_map(ptr noundef %5, i32 noundef 0) #8
  %17 = getelementptr inbounds %struct.st_i2c_dev, ptr %6, i32 0, i32 4
  store i32 %16, ptr %17, align 8
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #9
  br label %77

20:                                               ; preds = %15
  %21 = tail call ptr @of_clk_get_by_name(ptr noundef %5, ptr noundef nonnull @.str.2) #8
  %22 = getelementptr inbounds %struct.st_i2c_dev, ptr %6, i32 0, i32 5
  store ptr %21, ptr %22, align 4
  %23 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3) #9
  %25 = load ptr, ptr %22, align 4
  %26 = ptrtoint ptr %25 to i32
  br label %77

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.st_i2c_dev, ptr %6, i32 0, i32 6
  store i32 0, ptr %28, align 8
  %29 = call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.4, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #8
  %30 = icmp sgt i32 %29, -1
  %31 = load i32, ptr %2, align 4
  %32 = icmp eq i32 %31, 400000
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 1, ptr %28, align 8
  br label %35

35:                                               ; preds = %34, %27
  %36 = getelementptr inbounds %struct.st_i2c_dev, ptr %6, i32 0, i32 1
  store ptr %3, ptr %36, align 8
  %37 = load i32, ptr %17, align 8
  %38 = load ptr, ptr %0, align 8
  %39 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %37, ptr noundef null, ptr noundef nonnull @st_i2c_isr_thread, i32 noundef 8192, ptr noundef %38, ptr noundef nonnull %6) #8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %35
  %42 = load i32, ptr %17, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef %42) #9
  br label %77

43:                                               ; preds = %35
  %44 = load ptr, ptr %36, align 8
  %45 = call i32 @pinctrl_pm_select_default_state(ptr noundef %44) #8
  %46 = load ptr, ptr %36, align 8
  %47 = call i32 @pinctrl_pm_select_idle_state(ptr noundef %46) #8
  %48 = getelementptr inbounds %struct.st_i2c_dev, ptr %6, i32 0, i32 7
  %49 = call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.10, ptr noundef %48, i32 noundef 1, i32 noundef 0) #8
  %50 = call i32 @llvm.smin.i32(i32 %49, i32 0) #8
  switch i32 %50, label %51 [
    i32 -61, label %55
    i32 -75, label %55
  ]

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.st_i2c_dev, ptr %6, i32 0, i32 8
  %53 = call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.12, ptr noundef %52, i32 noundef 1, i32 noundef 0) #8
  %54 = call i32 @llvm.smin.i32(i32 %53, i32 0) #8
  switch i32 %54, label %59 [
    i32 -61, label %55
    i32 -75, label %55
  ]

55:                                               ; preds = %51, %51, %43, %43
  %56 = phi ptr [ @.str.11, %43 ], [ @.str.11, %43 ], [ @.str.13, %51 ], [ @.str.13, %51 ]
  %57 = phi i32 [ %50, %43 ], [ %50, %43 ], [ %54, %51 ], [ %54, %51 ]
  %58 = load ptr, ptr %36, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull %56) #9
  br label %77

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 9, i32 8
  store ptr %6, ptr %60, align 8
  %61 = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 12
  %62 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %61, i32 noundef 48, ptr noundef nonnull @.str.6, ptr noundef %9)
  store ptr null, ptr %6, align 8
  %63 = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 7
  store i32 200, ptr %63, align 4
  %64 = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 8
  store i32 0, ptr %64, align 8
  %65 = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 2
  store ptr @st_i2c_algo, ptr %65, align 8
  %66 = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 16
  store ptr @st_i2c_recovery_info, ptr %66, align 4
  %67 = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 9, i32 1
  store ptr %3, ptr %67, align 4
  %68 = load ptr, ptr %4, align 8
  %69 = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 9, i32 25
  store ptr %68, ptr %69, align 8
  %70 = getelementptr inbounds %struct.st_i2c_dev, ptr %6, i32 0, i32 3
  store i32 0, ptr %70, align 4
  %71 = getelementptr inbounds %struct.st_i2c_dev, ptr %6, i32 0, i32 3, i32 1
  call void @__init_swait_queue_head(ptr noundef %71, ptr noundef nonnull @.str.18, ptr noundef nonnull @init_completion.__key) #8
  %72 = call i32 @i2c_add_adapter(ptr noundef nonnull %6) #8
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %59
  %75 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %6, ptr %75, align 8
  %76 = load ptr, ptr %36, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %76, ptr noundef nonnull @.str.7, ptr noundef %61) #9
  br label %77

77:                                               ; preds = %74, %59, %55, %41, %24, %19, %13, %1
  %78 = phi i32 [ %14, %13 ], [ %26, %24 ], [ %39, %41 ], [ 0, %74 ], [ -22, %19 ], [ -12, %1 ], [ %57, %55 ], [ %72, %59 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 %78
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_i2c_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @i2c_del_adapter(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_i2c_isr_thread(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.st_i2c_dev, ptr %1, i32 0, i32 9
  %4 = getelementptr inbounds %struct.st_i2c_dev, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 16
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #8, !srcloc !9
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr i8, ptr %8, i32 20
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !9
  %11 = and i32 %10, %7
  %12 = tail call i32 @llvm.ctlz.i32(i32 %11, i1 false) #8, !range !10
  %13 = sub nsw i32 31, %12
  %14 = icmp eq i32 %11, 0
  br i1 %14, label %235, label %15

15:                                               ; preds = %2
  %16 = lshr i32 -2147483648, %12
  switch i32 %16, label %228 [
    i32 4, label %17
    i32 128, label %191
    i32 2048, label %191
    i32 1024, label %195
    i32 256, label %218
  ]

17:                                               ; preds = %15
  %18 = load i8, ptr %3, align 4
  %19 = and i8 %18, 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call fastcc void @st_i2c_handle_read(ptr noundef %1)
  br label %231

22:                                               ; preds = %17
  %23 = load ptr, ptr %4, align 4
  %24 = getelementptr i8, ptr %23, i32 20
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #8, !srcloc !9
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load ptr, ptr %4, align 4
  %30 = getelementptr i8, ptr %29, i32 60
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #8, !srcloc !9
  %32 = and i32 %31, 7
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %28, %22
  %35 = phi i32 [ %32, %28 ], [ 8, %22 ]
  br label %36

36:                                               ; preds = %36, %34
  %37 = phi i32 [ %41, %36 ], [ 0, %34 ]
  %38 = load ptr, ptr %4, align 4
  %39 = getelementptr i8, ptr %38, i32 8
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #8, !srcloc !9
  %41 = add nuw nsw i32 %37, 1
  %42 = icmp eq i32 %41, %35
  br i1 %42, label %43, label %36

43:                                               ; preds = %36, %28
  %44 = getelementptr inbounds %struct.st_i2c_dev, ptr %1, i32 0, i32 9, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  %47 = load ptr, ptr %4, align 4
  br i1 %46, label %48, label %74

48:                                               ; preds = %43
  %49 = getelementptr i8, ptr %47, i32 16
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #8, !srcloc !9
  %51 = and i32 %50, -5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %51) #8, !srcloc !11
  %52 = load ptr, ptr %4, align 4
  %53 = getelementptr i8, ptr %52, i32 24
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #8, !srcloc !9
  %55 = and i32 %54, -3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %55) #8, !srcloc !11
  %56 = getelementptr inbounds %struct.st_i2c_dev, ptr %1, i32 0, i32 9, i32 5
  %57 = load i8, ptr %56, align 4, !range !12
  %58 = icmp eq i8 %57, 0
  %59 = load ptr, ptr %4, align 4
  %60 = getelementptr i8, ptr %59, i32 16
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #8
  br i1 %58, label %68, label %62

62:                                               ; preds = %48
  %63 = or i32 %61, 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %63) #8, !srcloc !11
  %64 = load ptr, ptr %4, align 4
  %65 = getelementptr i8, ptr %64, i32 24
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #8, !srcloc !9
  %67 = or i32 %66, 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %67) #8, !srcloc !11
  br label %231

68:                                               ; preds = %48
  %69 = or i32 %61, 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %69) #8, !srcloc !11
  %70 = load ptr, ptr %4, align 4
  %71 = getelementptr i8, ptr %70, i32 24
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #8, !srcloc !9
  %73 = or i32 %72, 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %73) #8, !srcloc !11
  br label %231

74:                                               ; preds = %43
  %75 = getelementptr i8, ptr %47, i32 20
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #8, !srcloc !9
  %77 = and i32 %76, 8192
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %231

79:                                               ; preds = %74
  %80 = load ptr, ptr %4, align 4
  %81 = getelementptr i8, ptr %80, i32 56
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %81) #8, !srcloc !9
  %83 = and i32 %82, 7
  %84 = load i32, ptr %44, align 4
  %85 = sub nuw nsw i32 8, %83
  %86 = tail call i32 @llvm.umin.i32(i32 %84, i32 %85) #8
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %231, label %88

88:                                               ; preds = %79
  %89 = getelementptr inbounds %struct.st_i2c_dev, ptr %1, i32 0, i32 9, i32 3
  %90 = load ptr, ptr %89, align 4
  %91 = load i8, ptr %90, align 1
  %92 = zext i8 %91 to i32
  %93 = shl nuw nsw i32 %92, 1
  %94 = or i32 %93, 1
  %95 = load ptr, ptr %4, align 4
  %96 = getelementptr i8, ptr %95, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 %94) #8, !srcloc !11
  %97 = load i32, ptr %44, align 4
  %98 = add i32 %97, -1
  store i32 %98, ptr %44, align 4
  %99 = load ptr, ptr %89, align 4
  %100 = getelementptr i8, ptr %99, i32 1
  store ptr %100, ptr %89, align 4
  %101 = icmp ugt i32 %86, 1
  br i1 %101, label %102, label %231

102:                                              ; preds = %88
  %103 = load i8, ptr %100, align 1
  %104 = zext i8 %103 to i32
  %105 = shl nuw nsw i32 %104, 1
  %106 = or i32 %105, 1
  %107 = load ptr, ptr %4, align 4
  %108 = getelementptr i8, ptr %107, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %108, i32 %106) #8, !srcloc !11
  %109 = load i32, ptr %44, align 4
  %110 = add i32 %109, -1
  store i32 %110, ptr %44, align 4
  %111 = load ptr, ptr %89, align 4
  %112 = getelementptr i8, ptr %111, i32 1
  store ptr %112, ptr %89, align 4
  %113 = add nsw i32 %86, -3
  %114 = icmp ult i32 %113, -2
  br i1 %114, label %115, label %231

115:                                              ; preds = %102
  %116 = load i8, ptr %112, align 1
  %117 = zext i8 %116 to i32
  %118 = shl nuw nsw i32 %117, 1
  %119 = or i32 %118, 1
  %120 = load ptr, ptr %4, align 4
  %121 = getelementptr i8, ptr %120, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 %119) #8, !srcloc !11
  %122 = load i32, ptr %44, align 4
  %123 = add i32 %122, -1
  store i32 %123, ptr %44, align 4
  %124 = load ptr, ptr %89, align 4
  %125 = getelementptr i8, ptr %124, i32 1
  store ptr %125, ptr %89, align 4
  %126 = and i32 %86, 14
  %127 = icmp eq i32 %126, 2
  br i1 %127, label %231, label %128

128:                                              ; preds = %115
  %129 = load i8, ptr %125, align 1
  %130 = zext i8 %129 to i32
  %131 = shl nuw nsw i32 %130, 1
  %132 = or i32 %131, 1
  %133 = load ptr, ptr %4, align 4
  %134 = getelementptr i8, ptr %133, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %134, i32 %132) #8, !srcloc !11
  %135 = load i32, ptr %44, align 4
  %136 = add i32 %135, -1
  store i32 %136, ptr %44, align 4
  %137 = load ptr, ptr %89, align 4
  %138 = getelementptr i8, ptr %137, i32 1
  store ptr %138, ptr %89, align 4
  %139 = add nsw i32 %86, -5
  %140 = icmp ult i32 %139, -2
  br i1 %140, label %141, label %231

141:                                              ; preds = %128
  %142 = load i8, ptr %138, align 1
  %143 = zext i8 %142 to i32
  %144 = shl nuw nsw i32 %143, 1
  %145 = or i32 %144, 1
  %146 = load ptr, ptr %4, align 4
  %147 = getelementptr i8, ptr %146, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %147, i32 %145) #8, !srcloc !11
  %148 = load i32, ptr %44, align 4
  %149 = add i32 %148, -1
  store i32 %149, ptr %44, align 4
  %150 = load ptr, ptr %89, align 4
  %151 = getelementptr i8, ptr %150, i32 1
  store ptr %151, ptr %89, align 4
  %152 = and i32 %86, 14
  %153 = icmp eq i32 %152, 4
  br i1 %153, label %231, label %154

154:                                              ; preds = %141
  %155 = load i8, ptr %151, align 1
  %156 = zext i8 %155 to i32
  %157 = shl nuw nsw i32 %156, 1
  %158 = or i32 %157, 1
  %159 = load ptr, ptr %4, align 4
  %160 = getelementptr i8, ptr %159, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %160, i32 %158) #8, !srcloc !11
  %161 = load i32, ptr %44, align 4
  %162 = add i32 %161, -1
  store i32 %162, ptr %44, align 4
  %163 = load ptr, ptr %89, align 4
  %164 = getelementptr i8, ptr %163, i32 1
  store ptr %164, ptr %89, align 4
  %165 = add nsw i32 %86, -7
  %166 = icmp ult i32 %165, -2
  br i1 %166, label %167, label %231

167:                                              ; preds = %154
  %168 = load i8, ptr %164, align 1
  %169 = zext i8 %168 to i32
  %170 = shl nuw nsw i32 %169, 1
  %171 = or i32 %170, 1
  %172 = load ptr, ptr %4, align 4
  %173 = getelementptr i8, ptr %172, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %173, i32 %171) #8, !srcloc !11
  %174 = load i32, ptr %44, align 4
  %175 = add i32 %174, -1
  store i32 %175, ptr %44, align 4
  %176 = load ptr, ptr %89, align 4
  %177 = getelementptr i8, ptr %176, i32 1
  store ptr %177, ptr %89, align 4
  %178 = and i32 %86, 14
  %179 = icmp eq i32 %178, 6
  br i1 %179, label %231, label %180

180:                                              ; preds = %167
  %181 = load i8, ptr %177, align 1
  %182 = zext i8 %181 to i32
  %183 = shl nuw nsw i32 %182, 1
  %184 = or i32 %183, 1
  %185 = load ptr, ptr %4, align 4
  %186 = getelementptr i8, ptr %185, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %186, i32 %184) #8, !srcloc !11
  %187 = load i32, ptr %44, align 4
  %188 = add i32 %187, -1
  store i32 %188, ptr %44, align 4
  %189 = load ptr, ptr %89, align 4
  %190 = getelementptr i8, ptr %189, i32 1
  store ptr %190, ptr %89, align 4
  br label %231

191:                                              ; preds = %15, %15
  %192 = load ptr, ptr %4, align 4
  %193 = getelementptr i8, ptr %192, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %193, i32 0) #8, !srcloc !11
  %194 = getelementptr inbounds %struct.st_i2c_dev, ptr %1, i32 0, i32 3
  tail call void @complete(ptr noundef %194) #8
  br label %231

195:                                              ; preds = %15
  %196 = load ptr, ptr %4, align 4
  %197 = getelementptr i8, ptr %196, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %197, i32 1024) #8, !srcloc !11
  %198 = load i8, ptr %3, align 4
  %199 = and i8 %198, 1
  %200 = icmp eq i8 %199, 0
  br i1 %200, label %210, label %201

201:                                              ; preds = %195
  %202 = getelementptr inbounds %struct.st_i2c_dev, ptr %1, i32 0, i32 9, i32 1
  %203 = load i32, ptr %202, align 4
  %204 = icmp eq i32 %203, 1
  br i1 %204, label %205, label %210

205:                                              ; preds = %201
  %206 = getelementptr inbounds %struct.st_i2c_dev, ptr %1, i32 0, i32 9, i32 2
  %207 = load i32, ptr %206, align 4
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %210, label %209

209:                                              ; preds = %205
  tail call fastcc void @st_i2c_handle_read(ptr noundef %1)
  br label %231

210:                                              ; preds = %205, %201, %195
  %211 = load ptr, ptr %4, align 4
  %212 = getelementptr i8, ptr %211, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %212, i32 384) #8, !srcloc !11
  %213 = load ptr, ptr %4, align 4
  %214 = getelementptr i8, ptr %213, i32 24
  %215 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %214) #8, !srcloc !9
  %216 = or i32 %215, 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %214, i32 %216) #8, !srcloc !11
  %217 = getelementptr inbounds %struct.st_i2c_dev, ptr %1, i32 0, i32 9, i32 4
  store i32 -5, ptr %217, align 4
  br label %231

218:                                              ; preds = %15
  %219 = load ptr, ptr %4, align 4
  %220 = getelementptr i8, ptr %219, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %220, i32 256) #8, !srcloc !11
  %221 = load ptr, ptr %4, align 4
  %222 = getelementptr i8, ptr %221, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %222, i32 384) #8, !srcloc !11
  %223 = load ptr, ptr %4, align 4
  %224 = getelementptr i8, ptr %223, i32 24
  %225 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %224) #8, !srcloc !9
  %226 = or i32 %225, 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %224, i32 %226) #8, !srcloc !11
  %227 = getelementptr inbounds %struct.st_i2c_dev, ptr %1, i32 0, i32 9, i32 4
  store i32 -11, ptr %227, align 4
  br label %231

228:                                              ; preds = %15
  %229 = getelementptr inbounds %struct.st_i2c_dev, ptr %1, i32 0, i32 1
  %230 = load ptr, ptr %229, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %230, ptr noundef nonnull @.str.8, i32 noundef %13, i32 noundef %10) #9
  br label %231

231:                                              ; preds = %228, %218, %210, %209, %191, %180, %167, %154, %141, %128, %115, %102, %88, %79, %74, %68, %62, %21
  %232 = load ptr, ptr %4, align 4
  %233 = getelementptr i8, ptr %232, i32 16
  %234 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %233) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  br label %235

235:                                              ; preds = %231, %2
  %236 = phi i32 [ 1, %231 ], [ 0, %2 ]
  ret i32 %236
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_idle_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @st_i2c_handle_read(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.st_i2c_dev, ptr %0, i32 0, i32 9, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  %5 = getelementptr inbounds %struct.st_i2c_dev, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  br i1 %4, label %7, label %14

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %6, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #8, !srcloc !9
  %10 = load ptr, ptr %5, align 4
  %11 = getelementptr i8, ptr %10, i32 24
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #8, !srcloc !9
  %13 = and i32 %12, -33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %13) #8, !srcloc !11
  br label %69

14:                                               ; preds = %1
  %15 = getelementptr i8, ptr %6, i32 20
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #8, !srcloc !9
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load ptr, ptr %5, align 4
  %21 = getelementptr i8, ptr %20, i32 60
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #8, !srcloc !9
  %23 = and i32 %22, 7
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %69, label %25

25:                                               ; preds = %19, %14
  %26 = phi i32 [ %23, %19 ], [ 8, %14 ]
  %27 = getelementptr inbounds %struct.st_i2c_dev, ptr %0, i32 0, i32 9, i32 1
  %28 = getelementptr inbounds %struct.st_i2c_dev, ptr %0, i32 0, i32 9, i32 3
  %29 = load i32, ptr %27, align 4
  br label %30

30:                                               ; preds = %34, %25
  %31 = phi i32 [ %29, %25 ], [ %44, %34 ]
  %32 = phi i32 [ %26, %25 ], [ %42, %34 ]
  %33 = icmp eq i32 %31, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %5, align 4
  %36 = getelementptr i8, ptr %35, i32 8
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #8, !srcloc !9
  %38 = lshr i32 %37, 1
  %39 = trunc i32 %38 to i8
  %40 = load ptr, ptr %28, align 4
  %41 = getelementptr i8, ptr %40, i32 1
  store ptr %41, ptr %28, align 4
  store i8 %39, ptr %40, align 1
  %42 = add nsw i32 %32, -1
  %43 = load i32, ptr %27, align 4
  %44 = add i32 %43, -1
  store i32 %44, ptr %27, align 4
  %45 = icmp eq i32 %42, 0
  br i1 %45, label %69, label %30

46:                                               ; preds = %30
  %47 = getelementptr inbounds %struct.st_i2c_dev, ptr %0, i32 0, i32 1
  %48 = load ptr, ptr %47, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.9, i32 noundef %32) #9
  %49 = load ptr, ptr %5, align 4
  %50 = getelementptr i8, ptr %49, i32 20
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #8, !srcloc !9
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %46
  %55 = load ptr, ptr %5, align 4
  %56 = getelementptr i8, ptr %55, i32 60
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #8, !srcloc !9
  %58 = and i32 %57, 7
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %69, label %60

60:                                               ; preds = %54, %46
  %61 = phi i32 [ %58, %54 ], [ 8, %46 ]
  br label %62

62:                                               ; preds = %62, %60
  %63 = phi i32 [ %67, %62 ], [ 0, %60 ]
  %64 = load ptr, ptr %5, align 4
  %65 = getelementptr i8, ptr %64, i32 8
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #8, !srcloc !9
  %67 = add nuw nsw i32 %63, 1
  %68 = icmp eq i32 %67, %61
  br i1 %68, label %69, label %62

69:                                               ; preds = %62, %54, %34, %19, %7
  %70 = getelementptr inbounds %struct.st_i2c_dev, ptr %0, i32 0, i32 9, i32 1
  %71 = load i32, ptr %70, align 4
  switch i32 %71, label %175 [
    i32 0, label %72
    i32 1, label %100
  ]

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.st_i2c_dev, ptr %0, i32 0, i32 2
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr i8, ptr %74, i32 16
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #8, !srcloc !9
  %77 = and i32 %76, -5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %77) #8, !srcloc !11
  %78 = load ptr, ptr %73, align 4
  %79 = getelementptr i8, ptr %78, i32 24
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #8, !srcloc !9
  %81 = and i32 %80, -3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %81) #8, !srcloc !11
  %82 = getelementptr inbounds %struct.st_i2c_dev, ptr %0, i32 0, i32 9, i32 5
  %83 = load i8, ptr %82, align 4, !range !12
  %84 = icmp eq i8 %83, 0
  %85 = load ptr, ptr %73, align 4
  %86 = getelementptr i8, ptr %85, i32 16
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %86) #8
  br i1 %84, label %94, label %88

88:                                               ; preds = %72
  %89 = or i32 %87, 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %89) #8, !srcloc !11
  %90 = load ptr, ptr %73, align 4
  %91 = getelementptr i8, ptr %90, i32 24
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %91) #8, !srcloc !9
  %93 = or i32 %92, 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %93) #8, !srcloc !11
  br label %242

94:                                               ; preds = %72
  %95 = or i32 %87, 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %95) #8, !srcloc !11
  %96 = load ptr, ptr %73, align 4
  %97 = getelementptr i8, ptr %96, i32 24
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %97) #8, !srcloc !9
  %99 = or i32 %98, 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 %99) #8, !srcloc !11
  br label %242

100:                                              ; preds = %69
  %101 = getelementptr inbounds %struct.st_i2c_dev, ptr %0, i32 0, i32 2
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr i8, ptr %102, i32 24
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %103) #8, !srcloc !9
  %105 = and i32 %104, -9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 %105) #8, !srcloc !11
  %106 = load ptr, ptr %101, align 4
  %107 = getelementptr i8, ptr %106, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 1280) #8, !srcloc !11
  %108 = load i32, ptr %70, align 4
  %109 = load ptr, ptr %101, align 4
  %110 = getelementptr i8, ptr %109, i32 20
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %110) #8, !srcloc !9
  %112 = and i32 %111, 8192
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %242

114:                                              ; preds = %100
  %115 = load ptr, ptr %101, align 4
  %116 = getelementptr i8, ptr %115, i32 56
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %116) #8, !srcloc !9
  %118 = and i32 %117, 7
  %119 = sub nuw nsw i32 8, %118
  %120 = tail call i32 @llvm.umin.i32(i32 %119, i32 %108) #8
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %242, label %122

122:                                              ; preds = %114
  %123 = load ptr, ptr %101, align 4
  %124 = getelementptr i8, ptr %123, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %124, i32 511) #8, !srcloc !11
  %125 = load i32, ptr %2, align 4
  %126 = add i32 %125, 1
  store i32 %126, ptr %2, align 4
  %127 = icmp ugt i32 %120, 1
  br i1 %127, label %128, label %242

128:                                              ; preds = %122
  %129 = load ptr, ptr %101, align 4
  %130 = getelementptr i8, ptr %129, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 511) #8, !srcloc !11
  %131 = load i32, ptr %2, align 4
  %132 = add i32 %131, 1
  store i32 %132, ptr %2, align 4
  %133 = add nsw i32 %120, -3
  %134 = icmp ult i32 %133, -2
  br i1 %134, label %135, label %242

135:                                              ; preds = %128
  %136 = load ptr, ptr %101, align 4
  %137 = getelementptr i8, ptr %136, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %137, i32 511) #8, !srcloc !11
  %138 = load i32, ptr %2, align 4
  %139 = add i32 %138, 1
  store i32 %139, ptr %2, align 4
  %140 = and i32 %120, 14
  %141 = icmp eq i32 %140, 2
  br i1 %141, label %242, label %142

142:                                              ; preds = %135
  %143 = load ptr, ptr %101, align 4
  %144 = getelementptr i8, ptr %143, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %144, i32 511) #8, !srcloc !11
  %145 = load i32, ptr %2, align 4
  %146 = add i32 %145, 1
  store i32 %146, ptr %2, align 4
  %147 = add nsw i32 %120, -5
  %148 = icmp ult i32 %147, -2
  br i1 %148, label %149, label %242

149:                                              ; preds = %142
  %150 = load ptr, ptr %101, align 4
  %151 = getelementptr i8, ptr %150, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %151, i32 511) #8, !srcloc !11
  %152 = load i32, ptr %2, align 4
  %153 = add i32 %152, 1
  store i32 %153, ptr %2, align 4
  %154 = and i32 %120, 14
  %155 = icmp eq i32 %154, 4
  br i1 %155, label %242, label %156

156:                                              ; preds = %149
  %157 = load ptr, ptr %101, align 4
  %158 = getelementptr i8, ptr %157, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %158, i32 511) #8, !srcloc !11
  %159 = load i32, ptr %2, align 4
  %160 = add i32 %159, 1
  store i32 %160, ptr %2, align 4
  %161 = add nsw i32 %120, -7
  %162 = icmp ult i32 %161, -2
  br i1 %162, label %163, label %242

163:                                              ; preds = %156
  %164 = load ptr, ptr %101, align 4
  %165 = getelementptr i8, ptr %164, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %165, i32 511) #8, !srcloc !11
  %166 = load i32, ptr %2, align 4
  %167 = add i32 %166, 1
  store i32 %167, ptr %2, align 4
  %168 = and i32 %120, 14
  %169 = icmp eq i32 %168, 6
  br i1 %169, label %242, label %170

170:                                              ; preds = %163
  %171 = load ptr, ptr %101, align 4
  %172 = getelementptr i8, ptr %171, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %172, i32 511) #8, !srcloc !11
  %173 = load i32, ptr %2, align 4
  %174 = add i32 %173, 1
  store i32 %174, ptr %2, align 4
  br label %242

175:                                              ; preds = %69
  %176 = getelementptr inbounds %struct.st_i2c_dev, ptr %0, i32 0, i32 2
  %177 = load ptr, ptr %176, align 4
  %178 = getelementptr i8, ptr %177, i32 20
  %179 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %178) #8, !srcloc !9
  %180 = and i32 %179, 8192
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %242

182:                                              ; preds = %175
  %183 = load ptr, ptr %176, align 4
  %184 = getelementptr i8, ptr %183, i32 56
  %185 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %184) #8, !srcloc !9
  %186 = and i32 %185, 7
  %187 = sub nuw nsw i32 8, %186
  %188 = add i32 %71, -1
  %189 = tail call i32 @llvm.umin.i32(i32 %187, i32 %188) #8
  %190 = load ptr, ptr %176, align 4
  %191 = getelementptr i8, ptr %190, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %191, i32 511) #8, !srcloc !11
  %192 = load i32, ptr %2, align 4
  %193 = add i32 %192, 1
  store i32 %193, ptr %2, align 4
  %194 = icmp ugt i32 %189, 1
  br i1 %194, label %195, label %242

195:                                              ; preds = %182
  %196 = load ptr, ptr %176, align 4
  %197 = getelementptr i8, ptr %196, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %197, i32 511) #8, !srcloc !11
  %198 = load i32, ptr %2, align 4
  %199 = add i32 %198, 1
  store i32 %199, ptr %2, align 4
  %200 = add nsw i32 %189, -3
  %201 = icmp ult i32 %200, -2
  br i1 %201, label %202, label %242

202:                                              ; preds = %195
  %203 = load ptr, ptr %176, align 4
  %204 = getelementptr i8, ptr %203, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %204, i32 511) #8, !srcloc !11
  %205 = load i32, ptr %2, align 4
  %206 = add i32 %205, 1
  store i32 %206, ptr %2, align 4
  %207 = and i32 %189, 14
  %208 = icmp eq i32 %207, 2
  br i1 %208, label %242, label %209

209:                                              ; preds = %202
  %210 = load ptr, ptr %176, align 4
  %211 = getelementptr i8, ptr %210, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %211, i32 511) #8, !srcloc !11
  %212 = load i32, ptr %2, align 4
  %213 = add i32 %212, 1
  store i32 %213, ptr %2, align 4
  %214 = add nsw i32 %189, -5
  %215 = icmp ult i32 %214, -2
  br i1 %215, label %216, label %242

216:                                              ; preds = %209
  %217 = load ptr, ptr %176, align 4
  %218 = getelementptr i8, ptr %217, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %218, i32 511) #8, !srcloc !11
  %219 = load i32, ptr %2, align 4
  %220 = add i32 %219, 1
  store i32 %220, ptr %2, align 4
  %221 = and i32 %189, 14
  %222 = icmp eq i32 %221, 4
  br i1 %222, label %242, label %223

223:                                              ; preds = %216
  %224 = load ptr, ptr %176, align 4
  %225 = getelementptr i8, ptr %224, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %225, i32 511) #8, !srcloc !11
  %226 = load i32, ptr %2, align 4
  %227 = add i32 %226, 1
  store i32 %227, ptr %2, align 4
  %228 = add nsw i32 %189, -7
  %229 = icmp ult i32 %228, -2
  br i1 %229, label %230, label %242

230:                                              ; preds = %223
  %231 = load ptr, ptr %176, align 4
  %232 = getelementptr i8, ptr %231, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %232, i32 511) #8, !srcloc !11
  %233 = load i32, ptr %2, align 4
  %234 = add i32 %233, 1
  store i32 %234, ptr %2, align 4
  %235 = and i32 %189, 14
  %236 = icmp eq i32 %235, 6
  br i1 %236, label %242, label %237

237:                                              ; preds = %230
  %238 = load ptr, ptr %176, align 4
  %239 = getelementptr i8, ptr %238, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %239, i32 511) #8, !srcloc !11
  %240 = load i32, ptr %2, align 4
  %241 = add i32 %240, 1
  store i32 %241, ptr %2, align 4
  br label %242

242:                                              ; preds = %237, %230, %223, %216, %209, %202, %195, %182, %175, %170, %163, %156, %149, %142, %135, %128, %122, %114, %100, %94, %88
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_i2c_xfer(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.st_i2c_dev, ptr %5, i32 0, i32 10
  store i8 1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.st_i2c_dev, ptr %5, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @clk_prepare(ptr noundef %8) #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = tail call i32 @clk_enable(ptr noundef %8) #8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %11
  tail call void @clk_unprepare(ptr noundef %8) #8
  br label %15

15:                                               ; preds = %14, %3
  %16 = phi i32 [ %12, %14 ], [ %9, %3 ]
  %17 = getelementptr inbounds %struct.st_i2c_dev, ptr %5, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.14) #9
  br label %295

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.st_i2c_dev, ptr %5, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8
  %22 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %21) #8
  tail call fastcc void @st_i2c_hw_config(ptr noundef %5)
  %23 = icmp sgt i32 %2, 0
  br i1 %23, label %24, label %287

24:                                               ; preds = %19
  %25 = add nsw i32 %2, -1
  %26 = getelementptr inbounds %struct.st_i2c_dev, ptr %5, i32 0, i32 9
  %27 = getelementptr inbounds %struct.st_i2c_dev, ptr %5, i32 0, i32 9, i32 3
  %28 = getelementptr inbounds %struct.st_i2c_dev, ptr %5, i32 0, i32 9, i32 1
  %29 = getelementptr inbounds %struct.st_i2c_dev, ptr %5, i32 0, i32 9, i32 2
  %30 = getelementptr inbounds %struct.st_i2c_dev, ptr %5, i32 0, i32 9, i32 4
  %31 = getelementptr inbounds %struct.st_i2c_dev, ptr %5, i32 0, i32 9, i32 5
  %32 = getelementptr inbounds %struct.st_i2c_dev, ptr %5, i32 0, i32 3
  %33 = getelementptr inbounds %struct.st_i2c_dev, ptr %5, i32 0, i32 2
  %34 = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 7
  br label %35

35:                                               ; preds = %275, %24
  %36 = phi i32 [ 0, %24 ], [ %283, %275 ]
  %37 = getelementptr %struct.i2c_msg, ptr %1, i32 %36
  %38 = icmp eq i32 %36, 0
  %39 = icmp eq i32 %36, %25
  %40 = zext i1 %39 to i8
  %41 = load i16, ptr %37, align 4
  %42 = trunc i16 %41 to i8
  %43 = shl i8 %42, 1
  %44 = getelementptr %struct.i2c_msg, ptr %1, i32 %36, i32 1
  %45 = load i16, ptr %44, align 2
  %46 = trunc i16 %45 to i8
  %47 = and i8 %46, 1
  %48 = or i8 %47, %43
  store i8 %48, ptr %26, align 4
  %49 = getelementptr %struct.i2c_msg, ptr %1, i32 %36, i32 3
  %50 = load ptr, ptr %49, align 4
  store ptr %50, ptr %27, align 4
  %51 = getelementptr %struct.i2c_msg, ptr %1, i32 %36, i32 2
  %52 = load i16, ptr %51, align 4
  %53 = zext i16 %52 to i32
  store i32 %53, ptr %28, align 4
  store i32 0, ptr %29, align 4
  store i32 0, ptr %30, align 4
  store i8 %40, ptr %31, align 4
  store i32 0, ptr %32, align 4
  %54 = load ptr, ptr %33, align 4
  %55 = getelementptr i8, ptr %54, i32 12
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #8, !srcloc !9
  %57 = or i32 %56, 6912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %57) #8, !srcloc !11
  %58 = load i8, ptr %26, align 4
  %59 = and i8 %58, 1
  %60 = icmp eq i8 %59, 0
  %61 = select i1 %60, i32 32, i32 40
  %62 = load ptr, ptr %33, align 4
  %63 = getelementptr i8, ptr %62, i32 24
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #8, !srcloc !9
  %65 = or i32 %61, %64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %65) #8, !srcloc !11
  %66 = load i8, ptr %26, align 4
  %67 = zext i8 %66 to i32
  %68 = shl nuw nsw i32 %67, 1
  %69 = or i32 %68, 1
  %70 = load ptr, ptr %33, align 4
  %71 = getelementptr i8, ptr %70, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %69) #8, !srcloc !11
  %72 = load i8, ptr %26, align 4
  %73 = and i8 %72, 1
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %192

75:                                               ; preds = %35
  %76 = load ptr, ptr %33, align 4
  %77 = getelementptr i8, ptr %76, i32 20
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #8, !srcloc !9
  %79 = and i32 %78, 8192
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %192

81:                                               ; preds = %75
  %82 = load ptr, ptr %33, align 4
  %83 = getelementptr i8, ptr %82, i32 56
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #8, !srcloc !9
  %85 = and i32 %84, 7
  %86 = load i32, ptr %28, align 4
  %87 = sub nuw nsw i32 8, %85
  %88 = tail call i32 @llvm.umin.i32(i32 %86, i32 %87) #8
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %192, label %90

90:                                               ; preds = %81
  %91 = load ptr, ptr %27, align 4
  %92 = load i8, ptr %91, align 1
  %93 = zext i8 %92 to i32
  %94 = shl nuw nsw i32 %93, 1
  %95 = or i32 %94, 1
  %96 = load ptr, ptr %33, align 4
  %97 = getelementptr i8, ptr %96, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 %95) #8, !srcloc !11
  %98 = load i32, ptr %28, align 4
  %99 = add i32 %98, -1
  store i32 %99, ptr %28, align 4
  %100 = load ptr, ptr %27, align 4
  %101 = getelementptr i8, ptr %100, i32 1
  store ptr %101, ptr %27, align 4
  %102 = icmp ugt i32 %88, 1
  br i1 %102, label %103, label %192

103:                                              ; preds = %90
  %104 = load i8, ptr %101, align 1
  %105 = zext i8 %104 to i32
  %106 = shl nuw nsw i32 %105, 1
  %107 = or i32 %106, 1
  %108 = load ptr, ptr %33, align 4
  %109 = getelementptr i8, ptr %108, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %109, i32 %107) #8, !srcloc !11
  %110 = load i32, ptr %28, align 4
  %111 = add i32 %110, -1
  store i32 %111, ptr %28, align 4
  %112 = load ptr, ptr %27, align 4
  %113 = getelementptr i8, ptr %112, i32 1
  store ptr %113, ptr %27, align 4
  %114 = add nsw i32 %88, -3
  %115 = icmp ult i32 %114, -2
  br i1 %115, label %116, label %192

116:                                              ; preds = %103
  %117 = load i8, ptr %113, align 1
  %118 = zext i8 %117 to i32
  %119 = shl nuw nsw i32 %118, 1
  %120 = or i32 %119, 1
  %121 = load ptr, ptr %33, align 4
  %122 = getelementptr i8, ptr %121, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %122, i32 %120) #8, !srcloc !11
  %123 = load i32, ptr %28, align 4
  %124 = add i32 %123, -1
  store i32 %124, ptr %28, align 4
  %125 = load ptr, ptr %27, align 4
  %126 = getelementptr i8, ptr %125, i32 1
  store ptr %126, ptr %27, align 4
  %127 = and i32 %88, 14
  %128 = icmp eq i32 %127, 2
  br i1 %128, label %192, label %129

129:                                              ; preds = %116
  %130 = load i8, ptr %126, align 1
  %131 = zext i8 %130 to i32
  %132 = shl nuw nsw i32 %131, 1
  %133 = or i32 %132, 1
  %134 = load ptr, ptr %33, align 4
  %135 = getelementptr i8, ptr %134, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %135, i32 %133) #8, !srcloc !11
  %136 = load i32, ptr %28, align 4
  %137 = add i32 %136, -1
  store i32 %137, ptr %28, align 4
  %138 = load ptr, ptr %27, align 4
  %139 = getelementptr i8, ptr %138, i32 1
  store ptr %139, ptr %27, align 4
  %140 = add nsw i32 %88, -5
  %141 = icmp ult i32 %140, -2
  br i1 %141, label %142, label %192

142:                                              ; preds = %129
  %143 = load i8, ptr %139, align 1
  %144 = zext i8 %143 to i32
  %145 = shl nuw nsw i32 %144, 1
  %146 = or i32 %145, 1
  %147 = load ptr, ptr %33, align 4
  %148 = getelementptr i8, ptr %147, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %148, i32 %146) #8, !srcloc !11
  %149 = load i32, ptr %28, align 4
  %150 = add i32 %149, -1
  store i32 %150, ptr %28, align 4
  %151 = load ptr, ptr %27, align 4
  %152 = getelementptr i8, ptr %151, i32 1
  store ptr %152, ptr %27, align 4
  %153 = and i32 %88, 14
  %154 = icmp eq i32 %153, 4
  br i1 %154, label %192, label %155

155:                                              ; preds = %142
  %156 = load i8, ptr %152, align 1
  %157 = zext i8 %156 to i32
  %158 = shl nuw nsw i32 %157, 1
  %159 = or i32 %158, 1
  %160 = load ptr, ptr %33, align 4
  %161 = getelementptr i8, ptr %160, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %161, i32 %159) #8, !srcloc !11
  %162 = load i32, ptr %28, align 4
  %163 = add i32 %162, -1
  store i32 %163, ptr %28, align 4
  %164 = load ptr, ptr %27, align 4
  %165 = getelementptr i8, ptr %164, i32 1
  store ptr %165, ptr %27, align 4
  %166 = add nsw i32 %88, -7
  %167 = icmp ult i32 %166, -2
  br i1 %167, label %168, label %192

168:                                              ; preds = %155
  %169 = load i8, ptr %165, align 1
  %170 = zext i8 %169 to i32
  %171 = shl nuw nsw i32 %170, 1
  %172 = or i32 %171, 1
  %173 = load ptr, ptr %33, align 4
  %174 = getelementptr i8, ptr %173, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %174, i32 %172) #8, !srcloc !11
  %175 = load i32, ptr %28, align 4
  %176 = add i32 %175, -1
  store i32 %176, ptr %28, align 4
  %177 = load ptr, ptr %27, align 4
  %178 = getelementptr i8, ptr %177, i32 1
  store ptr %178, ptr %27, align 4
  %179 = and i32 %88, 14
  %180 = icmp eq i32 %179, 6
  br i1 %180, label %192, label %181

181:                                              ; preds = %168
  %182 = load i8, ptr %178, align 1
  %183 = zext i8 %182 to i32
  %184 = shl nuw nsw i32 %183, 1
  %185 = or i32 %184, 1
  %186 = load ptr, ptr %33, align 4
  %187 = getelementptr i8, ptr %186, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %187, i32 %185) #8, !srcloc !11
  %188 = load i32, ptr %28, align 4
  %189 = add i32 %188, -1
  store i32 %189, ptr %28, align 4
  %190 = load ptr, ptr %27, align 4
  %191 = getelementptr i8, ptr %190, i32 1
  store ptr %191, ptr %27, align 4
  br label %192

192:                                              ; preds = %181, %168, %155, %142, %129, %116, %103, %90, %81, %75, %35
  %193 = load ptr, ptr %33, align 4
  %194 = getelementptr i8, ptr %193, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %194, i32 1284) #8, !srcloc !11
  br i1 %38, label %195, label %266

195:                                              ; preds = %192
  %196 = load ptr, ptr %33, align 4
  %197 = getelementptr i8, ptr %196, i32 20
  %198 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %197) #8, !srcloc !9
  %199 = and i32 %198, 512
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %261, label %201

201:                                              ; preds = %195
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 4000, i32 noundef 2) #8
  %202 = load ptr, ptr %33, align 4
  %203 = getelementptr i8, ptr %202, i32 20
  %204 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %203) #8, !srcloc !9
  %205 = and i32 %204, 512
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %261, label %207

207:                                              ; preds = %201
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 4000, i32 noundef 2) #8
  %208 = load ptr, ptr %33, align 4
  %209 = getelementptr i8, ptr %208, i32 20
  %210 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %209) #8, !srcloc !9
  %211 = and i32 %210, 512
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %261, label %213

213:                                              ; preds = %207
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 4000, i32 noundef 2) #8
  %214 = load ptr, ptr %33, align 4
  %215 = getelementptr i8, ptr %214, i32 20
  %216 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %215) #8, !srcloc !9
  %217 = and i32 %216, 512
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %261, label %219

219:                                              ; preds = %213
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 4000, i32 noundef 2) #8
  %220 = load ptr, ptr %33, align 4
  %221 = getelementptr i8, ptr %220, i32 20
  %222 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %221) #8, !srcloc !9
  %223 = and i32 %222, 512
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %261, label %225

225:                                              ; preds = %219
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 4000, i32 noundef 2) #8
  %226 = load ptr, ptr %33, align 4
  %227 = getelementptr i8, ptr %226, i32 20
  %228 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %227) #8, !srcloc !9
  %229 = and i32 %228, 512
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %261, label %231

231:                                              ; preds = %225
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 4000, i32 noundef 2) #8
  %232 = load ptr, ptr %33, align 4
  %233 = getelementptr i8, ptr %232, i32 20
  %234 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %233) #8, !srcloc !9
  %235 = and i32 %234, 512
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %261, label %237

237:                                              ; preds = %231
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 4000, i32 noundef 2) #8
  %238 = load ptr, ptr %33, align 4
  %239 = getelementptr i8, ptr %238, i32 20
  %240 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %239) #8, !srcloc !9
  %241 = and i32 %240, 512
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %261, label %243

243:                                              ; preds = %237
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 4000, i32 noundef 2) #8
  %244 = load ptr, ptr %33, align 4
  %245 = getelementptr i8, ptr %244, i32 20
  %246 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %245) #8, !srcloc !9
  %247 = and i32 %246, 512
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %261, label %249

249:                                              ; preds = %243
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 4000, i32 noundef 2) #8
  %250 = load ptr, ptr %33, align 4
  %251 = getelementptr i8, ptr %250, i32 20
  %252 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %251) #8, !srcloc !9
  %253 = and i32 %252, 512
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %261, label %255

255:                                              ; preds = %249
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 4000, i32 noundef 2) #8
  %256 = load ptr, ptr %20, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %256, ptr noundef nonnull @.str.16, i32 noundef %252) #9
  %257 = tail call i32 @i2c_recover_bus(ptr noundef %5) #8
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %287, label %259

259:                                              ; preds = %255
  %260 = load ptr, ptr %20, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %260, ptr noundef nonnull @.str.17, i32 noundef %257) #9
  br label %287

261:                                              ; preds = %249, %243, %237, %231, %225, %219, %213, %207, %201, %195
  %262 = load ptr, ptr %33, align 4
  %263 = getelementptr i8, ptr %262, i32 24
  %264 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %263) #8, !srcloc !9
  %265 = or i32 %264, 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %263, i32 %265) #8, !srcloc !11
  br label %266

266:                                              ; preds = %261, %192
  %267 = load i32, ptr %34, align 4
  %268 = tail call i32 @wait_for_completion_timeout(ptr noundef %32, i32 noundef %267) #8
  %269 = load i32, ptr %30, align 4
  %270 = icmp eq i32 %268, 0
  br i1 %270, label %271, label %275

271:                                              ; preds = %266
  %272 = load ptr, ptr %20, align 8
  %273 = load i8, ptr %26, align 4
  %274 = zext i8 %273 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %272, ptr noundef nonnull @.str.15, i32 noundef %274) #9
  br label %275

275:                                              ; preds = %271, %266
  %276 = phi i32 [ %269, %266 ], [ -110, %271 ]
  %277 = load ptr, ptr %33, align 4
  %278 = getelementptr i8, ptr %277, i32 24
  %279 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %278) #8, !srcloc !9
  %280 = and i32 %279, -2053
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %278, i32 %280) #8, !srcloc !11
  %281 = load ptr, ptr %33, align 4
  %282 = getelementptr i8, ptr %281, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %282, i32 2176) #8, !srcloc !11
  %283 = add nuw nsw i32 %36, 1
  %284 = icmp slt i32 %283, %2
  %285 = icmp eq i32 %276, 0
  %286 = select i1 %284, i1 %285, i1 false
  br i1 %286, label %35, label %287

287:                                              ; preds = %275, %259, %255, %19
  %288 = phi i32 [ 0, %19 ], [ -16, %255 ], [ %257, %259 ], [ %276, %275 ]
  %289 = phi i32 [ 0, %19 ], [ 1, %255 ], [ 1, %259 ], [ %283, %275 ]
  %290 = load ptr, ptr %20, align 8
  %291 = tail call i32 @pinctrl_pm_select_idle_state(ptr noundef %290) #8
  %292 = load ptr, ptr %7, align 4
  tail call void @clk_disable(ptr noundef %292) #8
  tail call void @clk_unprepare(ptr noundef %292) #8
  store i8 0, ptr %6, align 4
  %293 = icmp slt i32 %288, 0
  %294 = select i1 %293, i32 %288, i32 %289
  br label %295

295:                                              ; preds = %287, %15
  %296 = phi i32 [ %16, %15 ], [ %294, %287 ]
  ret i32 %296
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @st_i2c_func(ptr nocapture noundef readnone %0) #7 {
  ret i32 251592713
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @st_i2c_hw_config(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.st_i2c_dev, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 8
  %4 = getelementptr inbounds %struct.st_i2c_dev, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 20
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #8, !srcloc !9
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr i8, ptr %11, i32 60
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #8, !srcloc !9
  %14 = and i32 %13, 7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %10, %1
  %17 = phi i32 [ %14, %10 ], [ 8, %1 ]
  br label %18

18:                                               ; preds = %18, %16
  %19 = phi i32 [ %23, %18 ], [ 0, %16 ]
  %20 = load ptr, ptr %4, align 4
  %21 = getelementptr i8, ptr %20, i32 8
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #8, !srcloc !9
  %23 = add nuw nsw i32 %19, 1
  %24 = icmp eq i32 %23, %17
  br i1 %24, label %25, label %18

25:                                               ; preds = %18, %10
  %26 = getelementptr [2 x %struct.st_i2c_timings], ptr @i2c_timings, i32 0, i32 %3
  %27 = load ptr, ptr %4, align 4
  %28 = getelementptr i8, ptr %27, i32 12
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #8, !srcloc !9
  %30 = or i32 %29, 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %30) #8, !srcloc !11
  %31 = load ptr, ptr %4, align 4
  %32 = getelementptr i8, ptr %31, i32 12
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #8, !srcloc !9
  %34 = and i32 %33, -129
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %34) #8, !srcloc !11
  %35 = load ptr, ptr %4, align 4
  %36 = getelementptr i8, ptr %35, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 3520) #8, !srcloc !11
  %37 = load ptr, ptr %4, align 4
  %38 = getelementptr i8, ptr %37, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 120) #8, !srcloc !11
  %39 = getelementptr inbounds %struct.st_i2c_dev, ptr %0, i32 0, i32 5
  %40 = load ptr, ptr %39, align 4
  %41 = tail call i32 @clk_get_rate(ptr noundef %40) #8
  %42 = udiv i32 1000000000, %41
  %43 = load i32, ptr %26, align 4
  %44 = shl i32 %43, 1
  %45 = udiv i32 %41, %44
  %46 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %45) #8, !srcloc !11
  %47 = load ptr, ptr %4, align 4
  %48 = getelementptr i8, ptr %47, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 1) #8, !srcloc !11
  %49 = load ptr, ptr %4, align 4
  %50 = getelementptr i8, ptr %49, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 1) #8, !srcloc !11
  %51 = getelementptr [2 x %struct.st_i2c_timings], ptr @i2c_timings, i32 0, i32 %3, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = udiv i32 %52, %42
  %54 = load ptr, ptr %4, align 4
  %55 = getelementptr i8, ptr %54, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %53) #8, !srcloc !11
  %56 = getelementptr [2 x %struct.st_i2c_timings], ptr @i2c_timings, i32 0, i32 %3, i32 2
  %57 = load i32, ptr %56, align 4
  %58 = udiv i32 %57, %42
  %59 = load ptr, ptr %4, align 4
  %60 = getelementptr i8, ptr %59, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %58) #8, !srcloc !11
  %61 = getelementptr [2 x %struct.st_i2c_timings], ptr @i2c_timings, i32 0, i32 %3, i32 3
  %62 = load i32, ptr %61, align 4
  %63 = udiv i32 %62, %42
  %64 = load ptr, ptr %4, align 4
  %65 = getelementptr i8, ptr %64, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %63) #8, !srcloc !11
  %66 = getelementptr [2 x %struct.st_i2c_timings], ptr @i2c_timings, i32 0, i32 %3, i32 4
  %67 = load i32, ptr %66, align 4
  %68 = udiv i32 %67, %42
  %69 = load ptr, ptr %4, align 4
  %70 = getelementptr i8, ptr %69, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %68) #8, !srcloc !11
  %71 = getelementptr [2 x %struct.st_i2c_timings], ptr @i2c_timings, i32 0, i32 %3, i32 5
  %72 = load i32, ptr %71, align 4
  %73 = udiv i32 %72, %42
  %74 = load ptr, ptr %4, align 4
  %75 = getelementptr i8, ptr %74, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %73) #8, !srcloc !11
  %76 = getelementptr [2 x %struct.st_i2c_timings], ptr @i2c_timings, i32 0, i32 %3, i32 6
  %77 = load i32, ptr %76, align 4
  %78 = udiv i32 %77, %42
  %79 = load ptr, ptr %4, align 4
  %80 = getelementptr i8, ptr %79, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %78) #8, !srcloc !11
  %81 = udiv i32 %41, 10000000
  %82 = load ptr, ptr %4, align 4
  %83 = getelementptr i8, ptr %82, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %81) #8, !srcloc !11
  %84 = load ptr, ptr %4, align 4
  %85 = getelementptr i8, ptr %84, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 %81) #8, !srcloc !11
  %86 = getelementptr inbounds %struct.st_i2c_dev, ptr %0, i32 0, i32 7
  %87 = load i32, ptr %86, align 4
  %88 = mul i32 %87, %41
  %89 = udiv i32 %88, 100000000
  %90 = load ptr, ptr %4, align 4
  %91 = getelementptr i8, ptr %90, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %89) #8, !srcloc !11
  %92 = getelementptr inbounds %struct.st_i2c_dev, ptr %0, i32 0, i32 8
  %93 = load i32, ptr %92, align 8
  %94 = mul i32 %93, %41
  %95 = udiv i32 %94, 100000000
  %96 = load ptr, ptr %4, align 4
  %97 = getelementptr i8, ptr %96, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 %95) #8, !srcloc !11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_recover_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_i2c_recover_bus(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.st_i2c_dev, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 0) #8, !srcloc !11
  tail call fastcc void @st_i2c_hw_config(ptr noundef %3)
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr i8, ptr %7, i32 12
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #8, !srcloc !9
  %10 = or i32 %9, 6912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %10) #8, !srcloc !11
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr i8, ptr %11, i32 24
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #8, !srcloc !9
  %14 = and i32 %13, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %14) #8, !srcloc !11
  tail call void @usleep_range_state(i32 noundef 8000, i32 noundef 10000, i32 noundef 2) #8
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr i8, ptr %15, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 0) #8, !srcloc !11
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 4000, i32 noundef 2) #8
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr i8, ptr %17, i32 24
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #8, !srcloc !9
  %20 = or i32 %19, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %20) #8, !srcloc !11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_i2c_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.st_i2c_dev, ptr %3, i32 0, i32 10
  %5 = load i8, ptr %4, align 4, !range !12
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %0) #8
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ 0, %7 ], [ -16, %1 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_i2c_resume(ptr noundef %0) #2 {
  %2 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %0) #8
  %3 = tail call i32 @pinctrl_pm_select_idle_state(ptr noundef %0) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
!9 = !{i64 5407431}
!10 = !{i32 0, i32 33}
!11 = !{i64 5407013}
!12 = !{i8 0, i8 2}
!13 = !{i64 2154135107}
