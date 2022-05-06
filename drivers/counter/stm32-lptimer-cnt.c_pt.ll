; ModuleID = '/llk/IR/drivers/counter/stm32-lptimer-cnt.c_pt.bc'
source_filename = "../drivers/counter/stm32-lptimer-cnt.c"
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
%struct.counter_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.counter_count = type { i32, ptr, ptr, i32, ptr, i32, ptr, i32 }
%struct.counter_signal = type { i32, ptr, ptr, i32 }
%struct.counter_synapse = type { ptr, i32, ptr }
%struct.counter_comp = type { i32, ptr, ptr, %union.anon.65, %union.anon.66 }
%union.anon.65 = type { ptr }
%union.anon.66 = type { ptr }
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
%struct.stm32_lptimer = type { ptr, ptr, i8 }
%struct.stm32_lptim_cnt = type { ptr, ptr, ptr, i32, i32, i32, i8 }
%struct.counter_device = type { ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.device, %struct.cdev, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.anon.67, %struct.wait_queue_head, %struct.spinlock, %struct.mutex, %struct.mutex }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.anon.67 = type { %union.anon.68, [0 x %struct.counter_event] }
%union.anon.68 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.counter_event = type { i64, i64, %struct.counter_watch, i8 }
%struct.counter_watch = type { %struct.counter_component, i8, i8 }
%struct.counter_component = type { i8, i8, i8, i8 }

@stm32_lptim_cnt_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32-lptimer-counter\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author234 = internal constant [48 x i8] c"author=Fabrice Gasnier <fabrice.gasnier@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias235 = internal constant [37 x i8] c"alias=platform:stm32-lptimer-counter\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [58 x i8] c"description=STMicroelectronics STM32 LPTIM counter driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license237 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@stm32_lptim_cnt_driver = internal global %struct.platform_driver { ptr @stm32_lptim_cnt_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_lptim_cnt_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_lptim_cnt_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [22 x i8] c"stm32-lptimer-counter\00", align 1
@stm32_lptim_cnt_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @stm32_lptim_cnt_suspend, ptr @stm32_lptim_cnt_resume, ptr @stm32_lptim_cnt_suspend, ptr @stm32_lptim_cnt_resume, ptr @stm32_lptim_cnt_suspend, ptr @stm32_lptim_cnt_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@stm32_lptim_cnt_ops = internal constant %struct.counter_ops { ptr null, ptr @stm32_lptim_cnt_read, ptr null, ptr @stm32_lptim_cnt_function_read, ptr @stm32_lptim_cnt_function_write, ptr @stm32_lptim_cnt_action_read, ptr @stm32_lptim_cnt_action_write, ptr null, ptr null }, align 4
@stm32_lptim_enc_counts = internal global %struct.counter_count { i32 0, ptr @.str.2, ptr @stm32_lptim_cnt_functions, i32 2, ptr @stm32_lptim_cnt_synapses, i32 2, ptr @stm32_lptim_cnt_ext, i32 2 }, align 4
@stm32_lptim_in1_counts = internal global %struct.counter_count { i32 0, ptr @.str.2, ptr @stm32_lptim_cnt_functions, i32 1, ptr @stm32_lptim_cnt_synapses, i32 1, ptr @stm32_lptim_cnt_ext, i32 2 }, align 4
@stm32_lptim_cnt_signals = internal global [2 x %struct.counter_signal] [%struct.counter_signal { i32 0, ptr @.str.5, ptr null, i32 0 }, %struct.counter_signal { i32 1, ptr @.str.6, ptr null, i32 0 }], align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Failed to add counter\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"LPTimer Count\00", align 1
@stm32_lptim_cnt_functions = internal constant [2 x i32] [i32 0, i32 7], align 4
@stm32_lptim_cnt_synapses = internal global [2 x %struct.counter_synapse] [%struct.counter_synapse { ptr @stm32_lptim_cnt_synapse_actions, i32 4, ptr @stm32_lptim_cnt_signals }, %struct.counter_synapse { ptr @stm32_lptim_cnt_synapse_actions, i32 4, ptr getelementptr (i8, ptr @stm32_lptim_cnt_signals, i64 16) }], align 4
@stm32_lptim_cnt_ext = internal global [2 x %struct.counter_comp] [%struct.counter_comp { i32 2, ptr @.str.3, ptr null, %union.anon.65 { ptr @stm32_lptim_cnt_enable_read }, %union.anon.66 { ptr @stm32_lptim_cnt_enable_write } }, %struct.counter_comp { i32 1, ptr @.str.4, ptr null, %union.anon.65 { ptr @stm32_lptim_cnt_ceiling_read }, %union.anon.66 { ptr @stm32_lptim_cnt_ceiling_write } }], align 4
@stm32_lptim_cnt_synapse_actions = internal constant [4 x i32] [i32 1, i32 2, i32 3, i32 0], align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"ceiling\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Channel 1 Quadrature A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Channel 1 Quadrature B\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias235, ptr @__UNIQUE_ID_author234, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_license237], section "llvm.metadata"

@__mod_of__stm32_lptim_cnt_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @stm32_lptim_cnt_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_lptim_cnt_driver, ptr noundef nonnull @__this_module) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_lptim_cnt_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_lptim_cnt_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  %8 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  %9 = or i1 %7, %8
  br i1 %9, label %44, label %10

10:                                               ; preds = %1
  %11 = tail call ptr @devm_counter_alloc(ptr noundef %2, i32 noundef 28) #4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %44, label %13

13:                                               ; preds = %10
  %14 = tail call ptr @counter_priv(ptr noundef nonnull %11) #4
  store ptr %2, ptr %14, align 4
  %15 = getelementptr inbounds %struct.stm32_lptimer, ptr %6, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %14, i32 0, i32 1
  store ptr %16, ptr %17, align 4
  %18 = load ptr, ptr %6, align 4
  %19 = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %14, i32 0, i32 2
  store ptr %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %14, i32 0, i32 3
  store i32 65535, ptr %20, align 4
  %21 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %13
  %25 = load ptr, ptr %2, align 4
  br label %26

26:                                               ; preds = %24, %13
  %27 = phi ptr [ %25, %24 ], [ %22, %13 ]
  store ptr %27, ptr %11, align 8
  %28 = getelementptr inbounds %struct.counter_device, ptr %11, i32 0, i32 1
  store ptr %2, ptr %28, align 4
  %29 = getelementptr inbounds %struct.counter_device, ptr %11, i32 0, i32 2
  store ptr @stm32_lptim_cnt_ops, ptr %29, align 8
  %30 = getelementptr inbounds %struct.stm32_lptimer, ptr %6, i32 0, i32 2
  %31 = load i8, ptr %30, align 4, !range !8
  %32 = icmp eq i8 %31, 0
  %33 = select i1 %32, ptr @stm32_lptim_in1_counts, ptr @stm32_lptim_enc_counts
  %34 = select i1 %32, i32 1, i32 2
  %35 = getelementptr inbounds %struct.counter_device, ptr %11, i32 0, i32 5
  store ptr %33, ptr %35, align 4
  %36 = getelementptr inbounds %struct.counter_device, ptr %11, i32 0, i32 4
  store i32 %34, ptr %36, align 8
  %37 = getelementptr inbounds %struct.counter_device, ptr %11, i32 0, i32 6
  store i32 1, ptr %37, align 8
  %38 = getelementptr inbounds %struct.counter_device, ptr %11, i32 0, i32 3
  store ptr @stm32_lptim_cnt_signals, ptr %38, align 4
  %39 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %14, ptr %39, align 8
  %40 = tail call i32 @devm_counter_add(ptr noundef %2, ptr noundef nonnull %11) #4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %26
  %43 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %2, i32 noundef %40, ptr noundef nonnull @.str.1) #4
  br label %44

44:                                               ; preds = %42, %26, %10, %1
  %45 = phi i32 [ %43, %42 ], [ -22, %1 ], [ -12, %10 ], [ 0, %26 ]
  ret i32 %45
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_counter_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @counter_priv(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_counter_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_lptim_cnt_read(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = alloca i32, align 4
  %5 = tail call ptr @counter_priv(ptr noundef %0) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #4
  store i32 0, ptr %4, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = call i32 @regmap_read(ptr noundef %7, i32 noundef 28, ptr noundef nonnull %4) #4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load i32, ptr %4, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, ptr %2, align 8
  br label %13

13:                                               ; preds = %10, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #4
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_lptim_cnt_function_read(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = tail call ptr @counter_priv(ptr noundef %0) #4
  %5 = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %4, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %4, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %14

12:                                               ; preds = %8, %3
  %13 = phi i32 [ 0, %3 ], [ 7, %8 ]
  store i32 %13, ptr %2, align 4
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi i32 [ -22, %8 ], [ 0, %12 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_lptim_cnt_function_write(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = tail call ptr @counter_priv(ptr noundef %0) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #4
  store i32 0, ptr %4, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = call i32 @regmap_read(ptr noundef %7, i32 noundef 16, ptr noundef nonnull %4) #4
  %9 = icmp eq i32 %8, 0
  %10 = load i32, ptr %4, align 4
  %11 = and i32 %10, 1
  %12 = select i1 %9, i32 %11, i32 %8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  switch i32 %2, label %20 [
    i32 0, label %15
    i32 7, label %17
  ]

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %5, i32 0, i32 5
  store i32 0, ptr %16, align 4
  br label %20

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %5, i32 0, i32 5
  store i32 1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %5, i32 0, i32 4
  store i32 2, ptr %19, align 4
  br label %20

20:                                               ; preds = %17, %15, %14, %3
  %21 = phi i32 [ 0, %17 ], [ 0, %15 ], [ -16, %3 ], [ -22, %14 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_lptim_cnt_action_read(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = tail call ptr @counter_priv(ptr noundef %0) #4
  %6 = tail call ptr @counter_priv(ptr noundef %0) #4
  %7 = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %6, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %6, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %30, label %32

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.counter_synapse, ptr %2, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.counter_count, ptr %1, i32 0, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.counter_synapse, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %17, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %5, i32 0, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = icmp ult i32 %26, 3
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = add i32 %26, 1
  br label %30

30:                                               ; preds = %28, %14, %10
  %31 = phi i32 [ 0, %14 ], [ 3, %10 ], [ %29, %28 ]
  store i32 %31, ptr %3, align 4
  br label %32

32:                                               ; preds = %30, %24, %10
  %33 = phi i32 [ -22, %24 ], [ -22, %10 ], [ 0, %30 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_lptim_cnt_action_write(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) #2 {
  %5 = alloca i32, align 4
  %6 = tail call ptr @counter_priv(ptr noundef %0) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #4
  store i32 0, ptr %5, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = call i32 @regmap_read(ptr noundef %8, i32 noundef 16, ptr noundef nonnull %5) #4
  %10 = icmp eq i32 %9, 0
  %11 = load i32, ptr %5, align 4
  %12 = and i32 %11, 1
  %13 = select i1 %10, i32 %12, i32 %9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %4
  %16 = call ptr @counter_priv(ptr noundef %0) #4
  %17 = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %16, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.counter_synapse, ptr %2, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.counter_count, ptr %1, i32 0, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.counter_synapse, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %23, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %20
  %31 = add i32 %3, -1
  %32 = icmp ult i32 %31, 3
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %6, i32 0, i32 4
  store i32 %31, ptr %34, align 4
  br label %35

35:                                               ; preds = %33, %30, %20, %15, %4
  %36 = phi i32 [ -16, %4 ], [ -22, %20 ], [ -22, %30 ], [ -22, %15 ], [ 0, %33 ]
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_lptim_cnt_enable_read(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = alloca i32, align 4
  %5 = tail call ptr @counter_priv(ptr noundef %0) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #4
  store i32 0, ptr %4, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = call i32 @regmap_read(ptr noundef %7, i32 noundef 16, ptr noundef nonnull %4) #4
  %9 = icmp eq i32 %8, 0
  %10 = load i32, ptr %4, align 4
  %11 = and i32 %10, 1
  %12 = select i1 %9, i32 %11, i32 %8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = trunc i32 %12 to i8
  store i8 %15, ptr %2, align 1
  br label %16

16:                                               ; preds = %14, %3
  %17 = phi i32 [ 0, %14 ], [ %12, %3 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_lptim_cnt_enable_write(ptr noundef %0, ptr nocapture noundef readnone %1, i8 noundef zeroext %2) #2 {
  %4 = alloca i32, align 4
  %5 = tail call ptr @counter_priv(ptr noundef %0) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #4
  store i32 0, ptr %4, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = call i32 @regmap_read(ptr noundef %7, i32 noundef 16, ptr noundef nonnull %4) #4
  %9 = icmp eq i32 %8, 0
  %10 = load i32, ptr %4, align 4
  %11 = and i32 %10, 1
  %12 = select i1 %9, i32 %11, i32 %8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %42, label %14

14:                                               ; preds = %3
  %15 = icmp ne i32 %12, 0
  %16 = icmp ne i8 %2, 0
  %17 = or i1 %16, %15
  br i1 %17, label %18, label %42

18:                                               ; preds = %14
  %19 = zext i8 %2 to i32
  %20 = select i1 %16, i1 %15, i1 false
  br i1 %20, label %42, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %5, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i8 %2, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %5, i32 0, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = shl i32 %27, 1
  %29 = and i32 %28, 6
  br label %30

30:                                               ; preds = %25, %21
  %31 = phi i32 [ 0, %21 ], [ 16777216, %25 ]
  %32 = phi i32 [ 0, %21 ], [ 8388608, %25 ]
  %33 = phi i32 [ 0, %21 ], [ %29, %25 ]
  %34 = icmp eq i32 %23, 0
  %35 = select i1 %34, i32 %32, i32 %31
  %36 = or i32 %33, %35
  %37 = load ptr, ptr %6, align 4
  %38 = call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef 12, i32 noundef 25169414, i32 noundef %36, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = call fastcc i32 @stm32_lptim_set_enable_state(ptr noundef %5, i32 noundef %19)
  br label %42

42:                                               ; preds = %40, %30, %18, %14, %3
  %43 = phi i32 [ 0, %14 ], [ %12, %3 ], [ -16, %18 ], [ %38, %30 ], [ %41, %40 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_lptim_cnt_ceiling_read(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = tail call ptr @counter_priv(ptr noundef %0) #4
  %5 = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %4, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = zext i32 %6 to i64
  store i64 %7, ptr %2, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_lptim_cnt_ceiling_write(ptr noundef %0, ptr nocapture noundef readnone %1, i64 noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = tail call ptr @counter_priv(ptr noundef %0) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #4
  store i32 0, ptr %4, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = call i32 @regmap_read(ptr noundef %7, i32 noundef 16, ptr noundef nonnull %4) #4
  %9 = icmp eq i32 %8, 0
  %10 = load i32, ptr %4, align 4
  %11 = and i32 %10, 1
  %12 = select i1 %9, i32 %11, i32 %8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = icmp ugt i64 %2, 65535
  br i1 %15, label %19, label %16

16:                                               ; preds = %14
  %17 = trunc i64 %2 to i32
  %18 = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %5, i32 0, i32 3
  store i32 %17, ptr %18, align 4
  br label %19

19:                                               ; preds = %16, %14, %3
  %20 = phi i32 [ 0, %16 ], [ -16, %3 ], [ -34, %14 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stm32_lptim_set_enable_state(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #4
  %4 = and i32 %1, 1
  store i32 %4, ptr %3, align 4
  %5 = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 16, i32 noundef %4) #4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %71

9:                                                ; preds = %2
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  tail call void @clk_disable(ptr noundef %13) #4
  %14 = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %0, i32 0, i32 6
  store i8 0, ptr %14, align 4
  br label %71

15:                                               ; preds = %9
  %16 = load ptr, ptr %5, align 4
  %17 = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %0, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 24, i32 noundef %18) #4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %71

21:                                               ; preds = %15
  %22 = load ptr, ptr %5, align 4
  %23 = tail call i32 @regmap_write(ptr noundef %22, i32 noundef 20, i32 noundef 0) #4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %71

25:                                               ; preds = %21
  %26 = tail call i64 @ktime_get() #4
  %27 = add i64 %26, 1000000
  %28 = load ptr, ptr %5, align 4
  %29 = call i32 @regmap_read(ptr noundef %28, i32 noundef 0, ptr noundef nonnull %3) #4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %41, %25
  %32 = load i32, ptr %3, align 4
  %33 = and i32 %32, 24
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = call i64 @ktime_get() #4
  %37 = icmp sgt i64 %36, %27
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load ptr, ptr %5, align 4
  %40 = call i32 @regmap_read(ptr noundef %39, i32 noundef 0, ptr noundef nonnull %3) #4
  br label %45

41:                                               ; preds = %35
  call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #4
  %42 = load ptr, ptr %5, align 4
  %43 = call i32 @regmap_read(ptr noundef %42, i32 noundef 0, ptr noundef nonnull %3) #4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %31, label %45

45:                                               ; preds = %41, %38, %31, %25
  %46 = phi i32 [ %40, %38 ], [ %29, %25 ], [ 0, %31 ], [ %43, %41 ]
  %47 = icmp ne i32 %46, 0
  %48 = load i32, ptr %3, align 4
  %49 = and i32 %48, 24
  %50 = icmp ne i32 %49, 0
  %51 = select i1 %47, i1 true, i1 %50
  %52 = select i1 %51, i32 0, i32 -110
  %53 = select i1 %47, i32 %46, i32 %52
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %45
  %56 = load ptr, ptr %5, align 4
  %57 = call i32 @regmap_write(ptr noundef %56, i32 noundef 4, i32 noundef 24) #4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %0, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  %62 = call i32 @clk_enable(ptr noundef %61) #4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %59
  %65 = load ptr, ptr %5, align 4
  %66 = call i32 @regmap_write(ptr noundef %65, i32 noundef 16, i32 noundef 0) #4
  br label %71

67:                                               ; preds = %59
  %68 = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %0, i32 0, i32 6
  store i8 1, ptr %68, align 4
  %69 = load ptr, ptr %5, align 4
  %70 = call i32 @regmap_update_bits_base(ptr noundef %69, i32 noundef 16, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %71

71:                                               ; preds = %67, %64, %55, %45, %21, %15, %11, %2
  %72 = phi i32 [ %62, %64 ], [ %70, %67 ], [ 0, %11 ], [ %7, %2 ], [ %19, %15 ], [ %23, %21 ], [ %53, %45 ], [ %57, %55 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #4
  ret i32 %72
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_lptim_cnt_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %3, i32 0, i32 6
  %5 = load i8, ptr %4, align 4, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %3, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 12, i32 noundef 25169414, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %7
  %13 = load ptr, ptr %8, align 4
  %14 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 16, i32 noundef 0) #4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %3, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  tail call void @clk_disable(ptr noundef %18) #4
  store i8 1, ptr %4, align 4
  br label %19

19:                                               ; preds = %16, %1
  %20 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %0) #4
  br label %21

21:                                               ; preds = %19, %12, %7
  %22 = phi i32 [ %20, %19 ], [ %10, %7 ], [ %14, %12 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_lptim_cnt_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %0) #4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %28

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %3, i32 0, i32 6
  %8 = load i8, ptr %7, align 4, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %27, label %10

10:                                               ; preds = %6
  store i8 0, ptr %7, align 4
  %11 = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %3, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %3, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = shl i32 %12, 1
  %16 = and i32 %15, 6
  %17 = icmp eq i32 %14, 0
  %18 = select i1 %17, i32 8388608, i32 16777216
  %19 = or i32 %18, %16
  %20 = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %3, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 12, i32 noundef 25169414, i32 noundef %19, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %10
  %25 = tail call fastcc i32 @stm32_lptim_set_enable_state(ptr noundef %3, i32 noundef 1)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %6
  br label %28

28:                                               ; preds = %27, %24, %10, %1
  %29 = phi i32 [ 0, %27 ], [ %4, %1 ], [ %22, %10 ], [ %25, %24 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }

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
!9 = !{!"auto-init"}
