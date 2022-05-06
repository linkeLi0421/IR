; ModuleID = '/llk/IR/drivers/input/misc/axp20x-pek.c_pt.bc'
source_filename = "../drivers/input/misc/axp20x-pek.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_device_id = type { [20 x i8], i32 }
%struct.axp20x_info = type { ptr, i32, ptr, i32 }
%struct.axp20x_time = type { i32, i32 }
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
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
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
%struct.axp20x_pek = type { ptr, ptr, ptr, i32, i32 }
%struct.axp20x_dev = type { ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }

@axp_pek_id_match = internal constant [3 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"axp20x-pek\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @axp20x_info to i32) }, %struct.platform_device_id { [20 x i8] c"axp221-pek\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @axp221_info to i32) }, %struct.platform_device_id zeroinitializer], align 4
@__UNIQUE_ID_description210 = internal constant [32 x i8] c"description=axp20x Power Button\00", section ".modinfo", align 1
@__UNIQUE_ID_author211 = internal constant [39 x i8] c"author=Carlo Caione <carlo@caione.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_license212 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@axp20x_info = internal constant %struct.axp20x_info { ptr @startup_time, i32 192, ptr @shutdown_time, i32 3 }, align 4
@axp221_info = internal constant %struct.axp20x_info { ptr @axp221_startup_time, i32 192, ptr @shutdown_time, i32 3 }, align 4
@startup_time = internal constant [4 x %struct.axp20x_time] [%struct.axp20x_time { i32 128, i32 0 }, %struct.axp20x_time { i32 1000, i32 2 }, %struct.axp20x_time { i32 3000, i32 1 }, %struct.axp20x_time { i32 2000, i32 3 }], align 4
@shutdown_time = internal constant [4 x %struct.axp20x_time] [%struct.axp20x_time { i32 4000, i32 0 }, %struct.axp20x_time { i32 6000, i32 1 }, %struct.axp20x_time { i32 8000, i32 2 }, %struct.axp20x_time { i32 10000, i32 3 }], align 4
@axp221_startup_time = internal constant [4 x %struct.axp20x_time] [%struct.axp20x_time { i32 128, i32 0 }, %struct.axp20x_time { i32 1000, i32 1 }, %struct.axp20x_time { i32 2000, i32 2 }, %struct.axp20x_time { i32 3000, i32 3 }], align 4
@axp20x_pek_driver = internal global %struct.platform_driver { ptr @axp20x_pek_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @axp20x_groups, ptr @axp20x_pek_pm_ops, ptr null, ptr null }, ptr @axp_pek_id_match, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [11 x i8] c"axp20x-pek\00", align 1
@axp20x_groups = internal global [2 x ptr] [ptr @axp20x_group, ptr null], align 4
@axp20x_pek_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @axp20x_pek_suspend, ptr @axp20x_pek_resume, ptr @axp20x_pek_suspend, ptr @axp20x_pek_resume, ptr @axp20x_pek_suspend, ptr @axp20x_pek_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @axp20x_pek_resume_noirq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to get platform_device_id\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"PEK_DBR\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"PEK_DBF\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"m1kbd/input2\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"axp20x-pek-dbr\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Failed to request dbr IRQ#%d: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"axp20x-pek-dbf\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"Failed to request dbf IRQ#%d: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"Can't register input device: %d\0A\00", align 1
@axp20x_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @axp20x_attrs, ptr null }, align 4
@axp20x_attrs = internal global [3 x ptr] [ptr @dev_attr_startup, ptr @dev_attr_shutdown, ptr null], align 4
@dev_attr_startup = internal global %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 420 }, ptr @axp20x_show_attr_startup, ptr @axp20x_store_attr_startup }, align 4
@dev_attr_shutdown = internal global %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 420 }, ptr @axp20x_show_attr_shutdown, ptr @axp20x_store_attr_shutdown }, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"startup\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"shutdown\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author211, ptr @__UNIQUE_ID_description210, ptr @__UNIQUE_ID_license212], section "llvm.metadata"

@__mod_platform__axp_pek_id_match_device_table = dso_local alias [3 x %struct.platform_device_id], ptr @axp_pek_id_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @axp20x_pek_driver, ptr noundef nonnull @__this_module) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @axp20x_pek_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @axp20x_pek_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  br i1 %4, label %6, label %7

6:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.1) #10
  br label %57

7:                                                ; preds = %1
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 20, i32 noundef 3520) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %57, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 8
  %14 = load ptr, ptr %13, align 8
  store ptr %14, ptr %8, align 4
  %15 = tail call i32 @platform_get_irq_byname(ptr noundef %0, ptr noundef nonnull @.str.2) #9
  %16 = getelementptr inbounds %struct.axp20x_pek, ptr %8, i32 0, i32 3
  store i32 %15, ptr %16, align 4
  %17 = icmp slt i32 %15, 0
  br i1 %17, label %57, label %18

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.axp20x_dev, ptr %14, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @regmap_irq_get_virq(ptr noundef %20, i32 noundef %15) #9
  store i32 %21, ptr %16, align 4
  %22 = tail call i32 @platform_get_irq_byname(ptr noundef %0, ptr noundef nonnull @.str.3) #9
  %23 = getelementptr inbounds %struct.axp20x_pek, ptr %8, i32 0, i32 4
  store i32 %22, ptr %23, align 4
  %24 = icmp slt i32 %22, 0
  br i1 %24, label %57, label %25

25:                                               ; preds = %18
  %26 = load ptr, ptr %19, align 4
  %27 = tail call i32 @regmap_irq_get_virq(ptr noundef %26, i32 noundef %22) #9
  store i32 %27, ptr %23, align 4
  %28 = tail call ptr @devm_input_allocate_device(ptr noundef %5) #9
  %29 = getelementptr inbounds %struct.axp20x_pek, ptr %8, i32 0, i32 1
  store ptr %28, ptr %29, align 4
  %30 = icmp eq ptr %28, null
  br i1 %30, label %57, label %31

31:                                               ; preds = %25
  store ptr @.str, ptr %28, align 8
  %32 = getelementptr inbounds %struct.input_dev, ptr %28, i32 0, i32 1
  store ptr @.str.4, ptr %32, align 4
  %33 = getelementptr inbounds %struct.input_dev, ptr %28, i32 0, i32 40, i32 1
  store ptr %5, ptr %33, align 4
  tail call void @input_set_capability(ptr noundef nonnull %28, i32 noundef 1, i32 noundef 116) #9
  %34 = getelementptr inbounds %struct.input_dev, ptr %28, i32 0, i32 40, i32 8
  store ptr %8, ptr %34, align 8
  %35 = load i32, ptr %16, align 4
  %36 = tail call i32 @devm_request_any_context_irq(ptr noundef %5, i32 noundef %35, ptr noundef nonnull @axp20x_pek_irq, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef nonnull %28) #9
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, ptr %16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.6, i32 noundef %39, i32 noundef %36) #10
  br label %57

40:                                               ; preds = %31
  %41 = load i32, ptr %23, align 4
  %42 = tail call i32 @devm_request_any_context_irq(ptr noundef %5, i32 noundef %41, ptr noundef nonnull @axp20x_pek_irq, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull %28) #9
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, ptr %23, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.8, i32 noundef %45, i32 noundef %42) #10
  br label %57

46:                                               ; preds = %40
  %47 = tail call i32 @input_register_device(ptr noundef nonnull %28) #9
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.9, i32 noundef %47) #10
  br label %57

50:                                               ; preds = %46
  %51 = tail call i32 @device_init_wakeup(ptr noundef %5, i1 noundef zeroext true) #9
  %52 = getelementptr inbounds %struct.platform_device_id, ptr %3, i32 0, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = inttoptr i32 %53 to ptr
  %55 = getelementptr inbounds %struct.axp20x_pek, ptr %8, i32 0, i32 2
  store ptr %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %8, ptr %56, align 8
  br label %57

57:                                               ; preds = %50, %49, %44, %38, %25, %18, %10, %7, %6
  %58 = phi i32 [ 0, %50 ], [ -22, %6 ], [ -12, %7 ], [ -12, %25 ], [ %22, %18 ], [ %15, %10 ], [ %47, %49 ], [ %42, %44 ], [ %36, %38 ]
  ret i32 %58
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_irq_get_virq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_any_context_irq(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @axp20x_pek_irq(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 40, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.axp20x_pek, ptr %4, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, %0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.axp20x_pek, ptr %4, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, %0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8, %2
  %13 = phi i32 [ 1, %2 ], [ 0, %8 ]
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 116, i32 noundef %13) #9
  br label %14

14:                                               ; preds = %12, %8
  tail call void @input_event(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @axp20x_show_attr_startup(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.axp20x_pek, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.axp20x_info, ptr %8, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !8
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr inbounds %struct.axp20x_dev, ptr %12, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = call i32 @regmap_read(ptr noundef %14, i32 noundef 54, ptr noundef nonnull %4) #9
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %56

17:                                               ; preds = %3
  %18 = load i32, ptr %4, align 4
  %19 = and i32 %18, %11
  %20 = call i32 @llvm.cttz.i32(i32 %11, i1 true) #9, !range !9
  %21 = icmp eq i32 %11, 0
  %22 = select i1 %21, i32 -1, i32 %20
  %23 = lshr i32 %19, %22
  store i32 %23, ptr %4, align 4
  %24 = getelementptr %struct.axp20x_time, ptr %9, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = load i32, ptr %9, align 4
  store i32 %28, ptr %4, align 4
  br label %29

29:                                               ; preds = %27, %17
  %30 = phi i32 [ %23, %17 ], [ %28, %27 ]
  %31 = getelementptr %struct.axp20x_time, ptr %9, i32 1, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = getelementptr %struct.axp20x_time, ptr %9, i32 1
  %36 = load i32, ptr %35, align 4
  store i32 %36, ptr %4, align 4
  br label %37

37:                                               ; preds = %34, %29
  %38 = phi i32 [ %30, %29 ], [ %36, %34 ]
  %39 = getelementptr %struct.axp20x_time, ptr %9, i32 2, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = getelementptr %struct.axp20x_time, ptr %9, i32 2
  %44 = load i32, ptr %43, align 4
  store i32 %44, ptr %4, align 4
  br label %45

45:                                               ; preds = %42, %37
  %46 = phi i32 [ %38, %37 ], [ %44, %42 ]
  %47 = getelementptr %struct.axp20x_time, ptr %9, i32 3, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = getelementptr %struct.axp20x_time, ptr %9, i32 3
  %52 = load i32, ptr %51, align 4
  store i32 %52, ptr %4, align 4
  br label %53

53:                                               ; preds = %50, %45
  %54 = phi i32 [ %52, %50 ], [ %46, %45 ]
  %55 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.11, i32 noundef %54) #9
  br label %56

56:                                               ; preds = %53, %3
  %57 = phi i32 [ %55, %53 ], [ %15, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @axp20x_store_attr_startup(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.axp20x_pek, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.axp20x_info, ptr %8, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = tail call fastcc i32 @axp20x_store_attr(ptr noundef %0, ptr noundef %9, i32 noundef %11, ptr noundef %2, i32 noundef %3)
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @axp20x_store_attr(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) unnamed_addr #2 {
  %6 = alloca [20 x i8], align 1
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  store i32 0, ptr %7, align 4, !annotation !8
  %10 = getelementptr inbounds [20 x i8], ptr %6, i32 0, i32 19
  store i8 0, ptr %10, align 1
  %11 = call ptr @strncpy(ptr noundef nonnull %6, ptr noundef %3, i32 noundef 19)
  %12 = call i32 @strlen(ptr noundef nonnull %6)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %5
  %15 = add i32 %12, -1
  %16 = getelementptr [20 x i8], ptr %6, i32 0, i32 %15
  %17 = load i8, ptr %16, align 1
  %18 = icmp eq i8 %17, 10
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i8 0, ptr %16, align 1
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = call i32 @kstrtouint(ptr noundef nonnull %6, i32 noundef 10, ptr noundef nonnull %7) #9
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %59, label %78

23:                                               ; preds = %59
  %24 = sub i32 %62, %60
  %25 = call i32 @llvm.abs.i32(i32 %24, i1 false)
  %26 = getelementptr %struct.axp20x_time, ptr %1, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = sub i32 %27, %60
  %29 = call i32 @llvm.abs.i32(i32 %28, i1 false)
  %30 = icmp ult i32 %29, %25
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = getelementptr %struct.axp20x_time, ptr %1, i32 2, i32 1
  %33 = load i32, ptr %32, align 4
  br label %34

34:                                               ; preds = %31, %23
  %35 = phi i32 [ %33, %31 ], [ %64, %23 ]
  %36 = phi i32 [ %29, %31 ], [ %25, %23 ]
  %37 = icmp eq i32 %27, %60
  br i1 %37, label %66, label %38

38:                                               ; preds = %34
  %39 = getelementptr %struct.axp20x_time, ptr %1, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = sub i32 %40, %60
  %42 = call i32 @llvm.abs.i32(i32 %41, i1 false)
  %43 = icmp ult i32 %42, %36
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = getelementptr %struct.axp20x_time, ptr %1, i32 1, i32 1
  %46 = load i32, ptr %45, align 4
  br label %47

47:                                               ; preds = %44, %38
  %48 = phi i32 [ %46, %44 ], [ %35, %38 ]
  %49 = phi i32 [ %42, %44 ], [ %36, %38 ]
  %50 = icmp eq i32 %40, %60
  br i1 %50, label %66, label %51

51:                                               ; preds = %47
  %52 = load i32, ptr %1, align 4
  %53 = sub i32 %52, %60
  %54 = call i32 @llvm.abs.i32(i32 %53, i1 false)
  %55 = icmp ult i32 %54, %49
  br i1 %55, label %56, label %66

56:                                               ; preds = %51
  %57 = getelementptr %struct.axp20x_time, ptr %1, i32 0, i32 1
  %58 = load i32, ptr %57, align 4
  br label %66

59:                                               ; preds = %20
  %60 = load i32, ptr %7, align 4
  %61 = getelementptr %struct.axp20x_time, ptr %1, i32 3
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr %struct.axp20x_time, ptr %1, i32 3, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %62, %60
  br i1 %65, label %66, label %23

66:                                               ; preds = %59, %56, %51, %47, %34
  %67 = phi i32 [ %64, %59 ], [ %35, %34 ], [ %48, %47 ], [ %58, %56 ], [ %48, %51 ]
  %68 = call i32 @llvm.cttz.i32(i32 %2, i1 true), !range !9
  %69 = icmp eq i32 %2, 0
  %70 = select i1 %69, i32 -1, i32 %68
  %71 = shl i32 %67, %70
  %72 = load ptr, ptr %9, align 4
  %73 = getelementptr inbounds %struct.axp20x_dev, ptr %72, i32 0, i32 3
  %74 = load ptr, ptr %73, align 4
  %75 = call i32 @regmap_update_bits_base(ptr noundef %74, i32 noundef 54, i32 noundef %2, i32 noundef %71, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %76 = icmp eq i32 %75, 0
  %77 = select i1 %76, i32 %4, i32 -22
  br label %78

78:                                               ; preds = %66, %20
  %79 = phi i32 [ %21, %20 ], [ %77, %66 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #9
  ret i32 %79
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @axp20x_show_attr_shutdown(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.axp20x_pek, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.axp20x_info, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.axp20x_info, ptr %8, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !8
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr inbounds %struct.axp20x_dev, ptr %13, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = call i32 @regmap_read(ptr noundef %15, i32 noundef 54, ptr noundef nonnull %4) #9
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %57

18:                                               ; preds = %3
  %19 = load i32, ptr %4, align 4
  %20 = and i32 %19, %12
  %21 = call i32 @llvm.cttz.i32(i32 %12, i1 true) #9, !range !9
  %22 = icmp eq i32 %12, 0
  %23 = select i1 %22, i32 -1, i32 %21
  %24 = lshr i32 %20, %23
  store i32 %24, ptr %4, align 4
  %25 = getelementptr %struct.axp20x_time, ptr %10, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = load i32, ptr %10, align 4
  store i32 %29, ptr %4, align 4
  br label %30

30:                                               ; preds = %28, %18
  %31 = phi i32 [ %24, %18 ], [ %29, %28 ]
  %32 = getelementptr %struct.axp20x_time, ptr %10, i32 1, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = getelementptr %struct.axp20x_time, ptr %10, i32 1
  %37 = load i32, ptr %36, align 4
  store i32 %37, ptr %4, align 4
  br label %38

38:                                               ; preds = %35, %30
  %39 = phi i32 [ %31, %30 ], [ %37, %35 ]
  %40 = getelementptr %struct.axp20x_time, ptr %10, i32 2, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = getelementptr %struct.axp20x_time, ptr %10, i32 2
  %45 = load i32, ptr %44, align 4
  store i32 %45, ptr %4, align 4
  br label %46

46:                                               ; preds = %43, %38
  %47 = phi i32 [ %39, %38 ], [ %45, %43 ]
  %48 = getelementptr %struct.axp20x_time, ptr %10, i32 3, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = getelementptr %struct.axp20x_time, ptr %10, i32 3
  %53 = load i32, ptr %52, align 4
  store i32 %53, ptr %4, align 4
  br label %54

54:                                               ; preds = %51, %46
  %55 = phi i32 [ %53, %51 ], [ %47, %46 ]
  %56 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.11, i32 noundef %55) #9
  br label %57

57:                                               ; preds = %54, %3
  %58 = phi i32 [ %56, %54 ], [ %16, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @axp20x_store_attr_shutdown(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.axp20x_pek, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.axp20x_info, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.axp20x_info, ptr %8, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = tail call fastcc i32 @axp20x_store_attr(ptr noundef %0, ptr noundef %10, i32 noundef %12, ptr noundef %2, i32 noundef %3)
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @axp20x_pek_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %5 = load i16, ptr %4, align 4
  %6 = and i16 %5, 1
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.axp20x_pek, ptr %3, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @irq_set_irq_wake(i32 noundef %14, i32 noundef 1) #9
  %16 = getelementptr inbounds %struct.axp20x_pek, ptr %3, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 @irq_set_irq_wake(i32 noundef %17, i32 noundef 1) #9
  br label %24

19:                                               ; preds = %8, %1
  %20 = getelementptr inbounds %struct.axp20x_pek, ptr %3, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  tail call void @disable_irq(i32 noundef %21) #9
  %22 = getelementptr inbounds %struct.axp20x_pek, ptr %3, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  tail call void @disable_irq(i32 noundef %23) #9
  br label %24

24:                                               ; preds = %19, %12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @axp20x_pek_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %5 = load i16, ptr %4, align 4
  %6 = and i16 %5, 1
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.axp20x_pek, ptr %3, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @irq_set_irq_wake(i32 noundef %14, i32 noundef 0) #9
  %16 = getelementptr inbounds %struct.axp20x_pek, ptr %3, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 @irq_set_irq_wake(i32 noundef %17, i32 noundef 0) #9
  br label %24

19:                                               ; preds = %8, %1
  %20 = getelementptr inbounds %struct.axp20x_pek, ptr %3, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  tail call void @enable_irq(i32 noundef %21) #9
  %22 = getelementptr inbounds %struct.axp20x_pek, ptr %3, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  tail call void @enable_irq(i32 noundef %23) #9
  br label %24

24:                                               ; preds = %19, %12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @axp20x_pek_resume_noirq(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.axp20x_dev, ptr %4, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 5
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.axp20x_dev, ptr %4, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 76, i32 noundef 32) #9
  br label %12

12:                                               ; preds = %8, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
!9 = !{i32 0, i32 33}
