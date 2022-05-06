; ModuleID = '/llk/IR/drivers/counter/stm32-timer-cnt.c_pt.bc'
source_filename = "../drivers/counter/stm32-timer-cnt.c"
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
%struct.counter_comp = type { i32, ptr, ptr, %union.anon.68, %union.anon.69 }
%union.anon.68 = type { ptr }
%union.anon.69 = type { ptr }
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
%struct.stm32_timers = type { ptr, ptr, i32, %struct.stm32_timers_dma }
%struct.stm32_timers_dma = type { %struct.completion, i32, %struct.mutex, ptr, [7 x ptr] }
%struct.stm32_timer_cnt = type { ptr, ptr, i32, i8, %struct.stm32_timer_regs }
%struct.stm32_timer_regs = type { i32, i32, i32, i32 }
%struct.counter_device = type { ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.device, %struct.cdev, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.anon.70, %struct.wait_queue_head, %struct.spinlock, %struct.mutex, %struct.mutex }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.anon.70 = type { %union.anon.71, [0 x %struct.counter_event] }
%union.anon.71 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.counter_event = type { i64, i64, %struct.counter_watch, i8 }
%struct.counter_watch = type { %struct.counter_component, i8, i8 }
%struct.counter_component = type { i8, i8, i8, i8 }

@stm32_timer_cnt_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32-timer-counter\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author223 = internal constant [52 x i8] c"author=Benjamin Gaignard <benjamin.gaignard@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias224 = internal constant [35 x i8] c"alias=platform:stm32-timer-counter\00", section ".modinfo", align 1
@__UNIQUE_ID_description225 = internal constant [58 x i8] c"description=STMicroelectronics STM32 TIMER counter driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license226 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@stm32_timer_cnt_driver = internal global %struct.platform_driver { ptr @stm32_timer_cnt_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_timer_cnt_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_timer_cnt_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [20 x i8] c"stm32-timer-counter\00", align 1
@stm32_timer_cnt_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @stm32_timer_cnt_suspend, ptr @stm32_timer_cnt_resume, ptr @stm32_timer_cnt_suspend, ptr @stm32_timer_cnt_resume, ptr @stm32_timer_cnt_suspend, ptr @stm32_timer_cnt_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@stm32_timer_cnt_ops = internal constant %struct.counter_ops { ptr null, ptr @stm32_count_read, ptr @stm32_count_write, ptr @stm32_count_function_read, ptr @stm32_count_function_write, ptr @stm32_action_read, ptr null, ptr null, ptr null }, align 4
@stm32_counts = internal global %struct.counter_count { i32 0, ptr @.str.2, ptr @switch.table.stm32_count_function_read, i32 4, ptr @stm32_count_synapses, i32 2, ptr @stm32_count_ext, i32 3 }, align 4
@stm32_signals = internal global [2 x %struct.counter_signal] [%struct.counter_signal { i32 0, ptr @.str.6, ptr null, i32 0 }, %struct.counter_signal { i32 1, ptr @.str.7, ptr null, i32 0 }], align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Failed to add counter\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Channel 1 Count\00", align 1
@stm32_count_synapses = internal global [2 x %struct.counter_synapse] [%struct.counter_synapse { ptr @stm32_synapse_actions, i32 2, ptr @stm32_signals }, %struct.counter_synapse { ptr @stm32_synapse_actions, i32 2, ptr getelementptr (i8, ptr @stm32_signals, i64 16) }], align 4
@stm32_count_ext = internal global [3 x %struct.counter_comp] [%struct.counter_comp { i32 7, ptr @.str.3, ptr null, %union.anon.68 { ptr @stm32_count_direction_read }, %union.anon.69 zeroinitializer }, %struct.counter_comp { i32 2, ptr @.str.4, ptr null, %union.anon.68 { ptr @stm32_count_enable_read }, %union.anon.69 { ptr @stm32_count_enable_write } }, %struct.counter_comp { i32 1, ptr @.str.5, ptr null, %union.anon.68 { ptr @stm32_count_ceiling_read }, %union.anon.69 { ptr @stm32_count_ceiling_write } }], align 4
@stm32_synapse_actions = internal constant [2 x i32] [i32 0, i32 3], align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"direction\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"ceiling\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Channel 1 Quadrature A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Channel 1 Quadrature B\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias224, ptr @__UNIQUE_ID_author223, ptr @__UNIQUE_ID_description225, ptr @__UNIQUE_ID_license226], section "llvm.metadata"
@switch.table.stm32_count_function_read = private constant [4 x i32] [i32 0, i32 5, i32 6, i32 7], align 4
@switch.table.stm32_count_function_write = private unnamed_addr constant [8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3], align 4

@__mod_of__stm32_timer_cnt_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @stm32_timer_cnt_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_timer_cnt_driver, ptr noundef nonnull @__this_module) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_timer_cnt_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_timer_cnt_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  %8 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  %9 = or i1 %7, %8
  br i1 %9, label %40, label %10

10:                                               ; preds = %1
  %11 = tail call ptr @devm_counter_alloc(ptr noundef %2, i32 noundef 32) #4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %40, label %13

13:                                               ; preds = %10
  %14 = tail call ptr @counter_priv(ptr noundef nonnull %11) #4
  %15 = getelementptr inbounds %struct.stm32_timers, ptr %6, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  store ptr %16, ptr %14, align 4
  %17 = load ptr, ptr %6, align 4
  %18 = getelementptr inbounds %struct.stm32_timer_cnt, ptr %14, i32 0, i32 1
  store ptr %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.stm32_timers, ptr %6, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.stm32_timer_cnt, ptr %14, i32 0, i32 2
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %13
  %26 = load ptr, ptr %2, align 4
  br label %27

27:                                               ; preds = %25, %13
  %28 = phi ptr [ %26, %25 ], [ %23, %13 ]
  store ptr %28, ptr %11, align 8
  %29 = getelementptr inbounds %struct.counter_device, ptr %11, i32 0, i32 1
  store ptr %2, ptr %29, align 4
  %30 = getelementptr inbounds %struct.counter_device, ptr %11, i32 0, i32 2
  store ptr @stm32_timer_cnt_ops, ptr %30, align 8
  %31 = getelementptr inbounds %struct.counter_device, ptr %11, i32 0, i32 5
  store ptr @stm32_counts, ptr %31, align 4
  %32 = getelementptr inbounds %struct.counter_device, ptr %11, i32 0, i32 6
  store i32 1, ptr %32, align 8
  %33 = getelementptr inbounds %struct.counter_device, ptr %11, i32 0, i32 3
  store ptr @stm32_signals, ptr %33, align 4
  %34 = getelementptr inbounds %struct.counter_device, ptr %11, i32 0, i32 4
  store i32 2, ptr %34, align 8
  %35 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %14, ptr %35, align 8
  %36 = tail call i32 @devm_counter_add(ptr noundef %2, ptr noundef nonnull %11) #4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %2, i32 noundef %36, ptr noundef nonnull @.str.1) #4
  br label %40

40:                                               ; preds = %38, %27, %10, %1
  %41 = phi i32 [ -22, %1 ], [ -12, %10 ], [ %36, %38 ], [ %36, %27 ]
  ret i32 %41
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
define internal i32 @stm32_count_read(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = alloca i32, align 4
  %5 = tail call ptr @counter_priv(ptr noundef %0) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #4
  store i32 0, ptr %4, align 4, !annotation !8
  %6 = load ptr, ptr %5, align 4
  %7 = call i32 @regmap_read(ptr noundef %6, i32 noundef 36, ptr noundef nonnull %4) #4
  %8 = load i32, ptr %4, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, ptr %2, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_count_write(ptr noundef %0, ptr nocapture noundef readnone %1, i64 noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = tail call ptr @counter_priv(ptr noundef %0) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #4
  store i32 0, ptr %4, align 4, !annotation !8
  %6 = load ptr, ptr %5, align 4
  %7 = call i32 @regmap_read(ptr noundef %6, i32 noundef 44, ptr noundef nonnull %4) #4
  %8 = load i32, ptr %4, align 4
  %9 = zext i32 %8 to i64
  %10 = icmp ult i64 %9, %2
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr %5, align 4
  %13 = trunc i64 %2 to i32
  %14 = call i32 @regmap_write(ptr noundef %12, i32 noundef 36, i32 noundef %13) #4
  br label %15

15:                                               ; preds = %11, %3
  %16 = phi i32 [ %14, %11 ], [ -22, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #4
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_count_function_read(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = alloca i32, align 4
  %5 = tail call ptr @counter_priv(ptr noundef %0) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #4
  store i32 0, ptr %4, align 4, !annotation !8
  %6 = load ptr, ptr %5, align 4
  %7 = call i32 @regmap_read(ptr noundef %6, i32 noundef 8, ptr noundef nonnull %4) #4
  %8 = load i32, ptr %4, align 4
  %9 = and i32 %8, 7
  %10 = icmp ult i32 %9, 4
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = getelementptr inbounds [4 x i32], ptr @switch.table.stm32_count_function_read, i32 0, i32 %9
  %13 = load i32, ptr %12, align 4
  store i32 %13, ptr %2, align 4
  br label %14

14:                                               ; preds = %11, %3
  %15 = phi i32 [ -22, %3 ], [ 0, %11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #4
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_count_function_write(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = tail call ptr @counter_priv(ptr noundef %0) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #4
  store i32 0, ptr %4, align 4, !annotation !8
  %6 = icmp ult i32 %2, 8
  br i1 %6, label %7, label %26

7:                                                ; preds = %3
  %8 = trunc i32 %2 to i8
  %9 = lshr i8 -31, %8
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %26, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds [8 x i32], ptr @switch.table.stm32_count_function_write, i32 0, i32 %2
  %14 = load i32, ptr %13, align 4
  %15 = load ptr, ptr %5, align 4
  %16 = call i32 @regmap_read(ptr noundef %15, i32 noundef 0, ptr noundef nonnull %4) #4
  %17 = load ptr, ptr %5, align 4
  %18 = call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %19 = load ptr, ptr %5, align 4
  %20 = call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 8, i32 noundef 7, i32 noundef %14, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %21 = load ptr, ptr %5, align 4
  %22 = call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 20, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %23 = load ptr, ptr %5, align 4
  %24 = load i32, ptr %4, align 4
  %25 = call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 0, i32 noundef 1, i32 noundef %24, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %26

26:                                               ; preds = %12, %7, %3
  %27 = phi i32 [ 0, %12 ], [ -22, %3 ], [ -22, %7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #4
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_action_read(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = alloca i32, align 4
  %6 = tail call ptr @counter_priv(ptr noundef %0) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #4
  store i32 0, ptr %5, align 4, !annotation !8
  %7 = load ptr, ptr %6, align 4
  %8 = call i32 @regmap_read(ptr noundef %7, i32 noundef 8, ptr noundef nonnull %5) #4
  %9 = load i32, ptr %5, align 4
  %10 = and i32 %9, 7
  switch i32 %10, label %11 [
    i32 0, label %12
    i32 1, label %13
    i32 2, label %24
    i32 3, label %35
  ]

11:                                               ; preds = %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #4
  br label %36

12:                                               ; preds = %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #4
  store i32 0, ptr %3, align 4
  br label %36

13:                                               ; preds = %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #4
  %14 = getelementptr inbounds %struct.counter_synapse, ptr %2, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.counter_count, ptr %1, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.counter_synapse, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %16, %21
  %23 = select i1 %22, i32 3, i32 0
  store i32 %23, ptr %3, align 4
  br label %36

24:                                               ; preds = %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #4
  %25 = getelementptr inbounds %struct.counter_synapse, ptr %2, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.counter_count, ptr %1, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr %struct.counter_synapse, ptr %29, i32 1, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %27, %32
  %34 = select i1 %33, i32 3, i32 0
  store i32 %34, ptr %3, align 4
  br label %36

35:                                               ; preds = %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #4
  store i32 3, ptr %3, align 4
  br label %36

36:                                               ; preds = %35, %24, %13, %12, %11
  %37 = phi i32 [ 0, %35 ], [ 0, %24 ], [ 0, %13 ], [ 0, %12 ], [ -22, %11 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_count_direction_read(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = alloca i32, align 4
  %5 = tail call ptr @counter_priv(ptr noundef %0) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #4
  store i32 0, ptr %4, align 4, !annotation !8
  %6 = load ptr, ptr %5, align 4
  %7 = call i32 @regmap_read(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %4) #4
  %8 = load i32, ptr %4, align 4
  %9 = lshr i32 %8, 4
  %10 = and i32 %9, 1
  store i32 %10, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_count_enable_read(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = alloca i32, align 4
  %5 = tail call ptr @counter_priv(ptr noundef %0) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #4
  store i32 0, ptr %4, align 4, !annotation !8
  %6 = load ptr, ptr %5, align 4
  %7 = call i32 @regmap_read(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %4) #4
  %8 = load i32, ptr %4, align 4
  %9 = trunc i32 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, ptr %2, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_count_enable_write(ptr noundef %0, ptr nocapture noundef readnone %1, i8 noundef zeroext %2) #2 {
  %4 = alloca i32, align 4
  %5 = tail call ptr @counter_priv(ptr noundef %0) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #4
  store i32 0, ptr %4, align 4, !annotation !8
  %6 = icmp ne i8 %2, 0
  %7 = load ptr, ptr %5, align 4
  %8 = call i32 @regmap_read(ptr noundef %7, i32 noundef 0, ptr noundef nonnull %4) #4
  br i1 %6, label %9, label %20

9:                                                ; preds = %3
  %10 = load i32, ptr %4, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.stm32_timer_cnt, ptr %5, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = call i32 @clk_enable(ptr noundef %15) #4
  br label %17

17:                                               ; preds = %13, %9
  %18 = load ptr, ptr %5, align 4
  %19 = call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %29

20:                                               ; preds = %3
  %21 = load ptr, ptr %5, align 4
  %22 = call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %23 = load i32, ptr %4, align 4
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.stm32_timer_cnt, ptr %5, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  call void @clk_disable(ptr noundef %28) #4
  br label %29

29:                                               ; preds = %26, %20, %17
  %30 = getelementptr inbounds %struct.stm32_timer_cnt, ptr %5, i32 0, i32 3
  %31 = zext i1 %6 to i8
  store i8 %31, ptr %30, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_count_ceiling_read(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = alloca i32, align 4
  %5 = tail call ptr @counter_priv(ptr noundef %0) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #4
  store i32 0, ptr %4, align 4, !annotation !8
  %6 = load ptr, ptr %5, align 4
  %7 = call i32 @regmap_read(ptr noundef %6, i32 noundef 44, ptr noundef nonnull %4) #4
  %8 = load i32, ptr %4, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, ptr %2, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_count_ceiling_write(ptr noundef %0, ptr nocapture noundef readnone %1, i64 noundef %2) #2 {
  %4 = tail call ptr @counter_priv(ptr noundef %0) #4
  %5 = getelementptr inbounds %struct.stm32_timer_cnt, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = zext i32 %6 to i64
  %8 = icmp ult i64 %7, %2
  br i1 %8, label %15, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr %4, align 4
  %11 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 0, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %12 = load ptr, ptr %4, align 4
  %13 = trunc i64 %2 to i32
  %14 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 44, i32 noundef %13) #4
  br label %15

15:                                               ; preds = %9, %3
  %16 = phi i32 [ 0, %9 ], [ -34, %3 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_timer_cnt_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stm32_timer_cnt, ptr %3, i32 0, i32 3
  %5 = load i8, ptr %4, align 4, !range !9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr inbounds %struct.stm32_timer_cnt, ptr %3, i32 0, i32 4
  %10 = getelementptr inbounds %struct.stm32_timer_cnt, ptr %3, i32 0, i32 4, i32 2
  %11 = tail call i32 @regmap_read(ptr noundef %8, i32 noundef 8, ptr noundef %10) #4
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr inbounds %struct.stm32_timer_cnt, ptr %3, i32 0, i32 4, i32 3
  %14 = tail call i32 @regmap_read(ptr noundef %12, i32 noundef 44, ptr noundef %13) #4
  %15 = load ptr, ptr %3, align 4
  %16 = getelementptr inbounds %struct.stm32_timer_cnt, ptr %3, i32 0, i32 4, i32 1
  %17 = tail call i32 @regmap_read(ptr noundef %15, i32 noundef 36, ptr noundef %16) #4
  %18 = load ptr, ptr %3, align 4
  %19 = tail call i32 @regmap_read(ptr noundef %18, i32 noundef 0, ptr noundef %9) #4
  %20 = load ptr, ptr %3, align 4
  %21 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %22 = getelementptr inbounds %struct.stm32_timer_cnt, ptr %3, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  tail call void @clk_disable(ptr noundef %23) #4
  br label %24

24:                                               ; preds = %7, %1
  %25 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %0) #4
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_timer_cnt_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %0) #4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %30

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.stm32_timer_cnt, ptr %3, i32 0, i32 3
  %8 = load i8, ptr %7, align 4, !range !9
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %30, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.stm32_timer_cnt, ptr %3, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @clk_enable(ptr noundef %12) #4
  %14 = load ptr, ptr %3, align 4
  %15 = getelementptr inbounds %struct.stm32_timer_cnt, ptr %3, i32 0, i32 4
  %16 = getelementptr inbounds %struct.stm32_timer_cnt, ptr %3, i32 0, i32 4, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 8, i32 noundef %17) #4
  %19 = load ptr, ptr %3, align 4
  %20 = getelementptr inbounds %struct.stm32_timer_cnt, ptr %3, i32 0, i32 4, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 44, i32 noundef %21) #4
  %23 = load ptr, ptr %3, align 4
  %24 = getelementptr inbounds %struct.stm32_timer_cnt, ptr %3, i32 0, i32 4, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = tail call i32 @regmap_write(ptr noundef %23, i32 noundef 36, i32 noundef %25) #4
  %27 = load ptr, ptr %3, align 4
  %28 = load i32, ptr %15, align 4
  %29 = tail call i32 @regmap_write(ptr noundef %27, i32 noundef 0, i32 noundef %28) #4
  br label %30

30:                                               ; preds = %10, %6, %1
  ret i32 %4
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
!8 = !{!"auto-init"}
!9 = !{i8 0, i8 2}
