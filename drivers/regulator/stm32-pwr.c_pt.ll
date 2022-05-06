; ModuleID = '/llk/IR/drivers/regulator/stm32-pwr.c_pt.bc'
source_filename = "../drivers/regulator/stm32-pwr.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.stm32_pwr_reg = type { ptr, i32 }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }

@__initcall__kmod_stm32_pwr__247_182_stm32_pwr_driver_init6 = internal global ptr @stm32_pwr_driver_init, section ".initcall6.init", align 4
@stm32_pwr_driver = internal global %struct.platform_driver { ptr @stm32_pwr_regulator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_pwr_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_stm32_pwr_driver_exit = internal global ptr @stm32_pwr_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description248 = internal constant [60 x i8] c"stm32_pwr.description=STM32MP1 PWR voltage regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author249 = internal constant [51 x i8] c"stm32_pwr.author=Pascal Paillet <p.paillet@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file250 = internal constant [43 x i8] c"stm32_pwr.file=drivers/regulator/stm32-pwr\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [25 x i8] c"stm32_pwr.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [20 x i8] c"stm32-pwr-regulator\00", align 1
@stm32_pwr_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32mp1,pwr-reg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Unable to map IO memory\0A\00", align 1
@stm32_pwr_desc = internal constant [3 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.3, ptr @.str.4, ptr @.str.3, i8 0, ptr null, ptr null, i32 0, i8 0, i32 1, i32 0, ptr @stm32_pwr_reg_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 1100000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1073741824, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.5, ptr @.str.4, ptr @.str.5, i8 0, ptr null, ptr null, i32 1, i8 0, i32 1, i32 0, ptr @stm32_pwr_reg_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 1800000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 268435456, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.6, ptr @.str.7, ptr @.str.6, i8 0, ptr null, ptr null, i32 2, i8 0, i32 1, i32 0, ptr @stm32_pwr_reg_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 3300000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16777216, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to register regulator: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"reg11\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"vdd\00", align 1
@stm32_pwr_reg_ops = internal constant %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_pwr_reg_enable, ptr @stm32_pwr_reg_disable, ptr @stm32_pwr_reg_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"reg18\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"usb33\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"vdd_3v3_usbfs\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"regulator enable timed out!\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"regulator disable timed out!\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_file250, ptr @__UNIQUE_ID_license251, ptr @__exitcall_stm32_pwr_driver_exit, ptr @__initcall__kmod_stm32_pwr__247_182_stm32_pwr_driver_init6, ptr @stm32_pwr_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @stm32_pwr_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_pwr_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @stm32_pwr_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_pwr_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_pwr_regulator_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.regulator_config, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #6
  %6 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %6, i8 0, i32 20, i1 false)
  %7 = tail call ptr @of_iomap(ptr noundef %5, i32 noundef 0) #6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #7
  br label %35

10:                                               ; preds = %1
  store ptr %3, ptr %2, align 4
  %11 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 2
  %12 = call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 8, i32 noundef 3520) #6
  %13 = icmp eq ptr %12, null
  br i1 %13, label %35, label %28

14:                                               ; preds = %28
  %15 = call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 8, i32 noundef 3520) #6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %35, label %17

17:                                               ; preds = %14
  store ptr %7, ptr %15, align 4
  %18 = getelementptr inbounds %struct.stm32_pwr_reg, ptr %15, i32 0, i32 1
  store i32 536870912, ptr %18, align 4
  store ptr %15, ptr %11, align 4
  %19 = call ptr @devm_regulator_register(ptr noundef %3, ptr noundef getelementptr inbounds ([3 x %struct.regulator_desc], ptr @stm32_pwr_desc, i32 0, i32 1), ptr noundef nonnull %2) #6
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %32, label %21

21:                                               ; preds = %17
  %22 = call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 8, i32 noundef 3520) #6
  %23 = icmp eq ptr %22, null
  br i1 %23, label %35, label %24

24:                                               ; preds = %21
  store ptr %7, ptr %22, align 4
  %25 = getelementptr inbounds %struct.stm32_pwr_reg, ptr %22, i32 0, i32 1
  store i32 67108864, ptr %25, align 4
  store ptr %22, ptr %11, align 4
  %26 = call ptr @devm_regulator_register(ptr noundef %3, ptr noundef getelementptr inbounds ([3 x %struct.regulator_desc], ptr @stm32_pwr_desc, i32 0, i32 2), ptr noundef nonnull %2) #6
  %27 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %32, label %35

28:                                               ; preds = %10
  store ptr %7, ptr %12, align 4
  %29 = getelementptr inbounds %struct.stm32_pwr_reg, ptr %12, i32 0, i32 1
  store i32 -2147483648, ptr %29, align 4
  store ptr %12, ptr %11, align 4
  %30 = call ptr @devm_regulator_register(ptr noundef %3, ptr noundef nonnull @stm32_pwr_desc, ptr noundef nonnull %2) #6
  %31 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %32, label %14

32:                                               ; preds = %28, %24, %17
  %33 = phi ptr [ %30, %28 ], [ %19, %17 ], [ %26, %24 ]
  %34 = ptrtoint ptr %33 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2, i32 noundef %34) #7
  br label %35

35:                                               ; preds = %32, %24, %21, %14, %10, %9
  %36 = phi i32 [ -12, %9 ], [ %34, %32 ], [ -12, %10 ], [ -12, %14 ], [ -12, %21 ], [ 0, %24 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #6
  ret i32 %36
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_pwr_reg_enable(ptr noundef %0) #2 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 12
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #6, !srcloc !8
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds %struct.regulator_desc, ptr %6, i32 0, i32 35
  %8 = load i32, ptr %7, align 4
  %9 = or i32 %8, %5
  %10 = load ptr, ptr %2, align 4
  %11 = getelementptr i8, ptr %10, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #6, !srcloc !9
  %12 = tail call i64 @ktime_get() #6
  %13 = add i64 %12, 20000000
  %14 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 12
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #6, !srcloc !8
  %18 = getelementptr inbounds %struct.stm32_pwr_reg, ptr %14, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, %17
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %45

22:                                               ; preds = %25, %1
  %23 = tail call i64 @ktime_get() #6
  %24 = icmp sgt i64 %23, %13
  br i1 %24, label %34, label %25

25:                                               ; preds = %22
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #6
  %26 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 12
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #6, !srcloc !8
  %30 = getelementptr inbounds %struct.stm32_pwr_reg, ptr %26, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, %29
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %22, label %45

34:                                               ; preds = %22
  %35 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr i8, ptr %36, i32 12
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #6, !srcloc !8
  %39 = getelementptr inbounds %struct.stm32_pwr_reg, ptr %35, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, %38
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.8) #7
  br label %45

45:                                               ; preds = %43, %34, %25, %1
  %46 = phi i32 [ -110, %43 ], [ 0, %34 ], [ 0, %1 ], [ 0, %25 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_pwr_reg_disable(ptr noundef %0) #2 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 12
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #6, !srcloc !8
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds %struct.regulator_desc, ptr %6, i32 0, i32 35
  %8 = load i32, ptr %7, align 4
  %9 = xor i32 %8, -1
  %10 = and i32 %5, %9
  %11 = load ptr, ptr %2, align 4
  %12 = getelementptr i8, ptr %11, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #6, !srcloc !9
  %13 = tail call i64 @ktime_get() #6
  %14 = add i64 %13, 20000000
  %15 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 12
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #6, !srcloc !8
  %19 = getelementptr inbounds %struct.stm32_pwr_reg, ptr %15, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, %18
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %46, label %23

23:                                               ; preds = %35, %1
  %24 = tail call i64 @ktime_get() #6
  %25 = icmp sgt i64 %24, %14
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 12
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #6, !srcloc !8
  %31 = getelementptr inbounds %struct.stm32_pwr_reg, ptr %27, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, %30
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %46, label %44

35:                                               ; preds = %23
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #6
  %36 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr i8, ptr %37, i32 12
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #6, !srcloc !8
  %40 = getelementptr inbounds %struct.stm32_pwr_reg, ptr %36, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, %39
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %23

44:                                               ; preds = %26
  %45 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.9) #7
  br label %46

46:                                               ; preds = %44, %35, %26, %1
  %47 = phi i32 [ -110, %44 ], [ 0, %26 ], [ 0, %1 ], [ 0, %35 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_pwr_reg_is_enabled(ptr noundef %0) #2 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 12
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #6, !srcloc !8
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds %struct.regulator_desc, ptr %6, i32 0, i32 35
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, %5
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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
!8 = !{i64 363988}
!9 = !{i64 363570}
