; ModuleID = '/llk/IR/drivers/input/keyboard/spear-keyboard.c_pt.bc'
source_filename = "../drivers/input/keyboard/spear-keyboard.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.spear_kbd = type { ptr, ptr, ptr, i32, i32, i32, i16, [256 x i16], i8, i8, i32 }
%struct.kbd_platform_data = type { ptr, i8, i32, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }

@__initcall__kmod_spear_keyboard__210_386_spear_kbd_driver_init6 = internal global ptr @spear_kbd_driver_init, section ".initcall6.init", align 4
@spear_kbd_driver = internal global %struct.platform_driver { ptr @spear_kbd_probe, ptr @spear_kbd_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @spear_kbd_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @spear_kbd_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_spear_kbd_driver_exit = internal global ptr @spear_kbd_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author211 = internal constant [35 x i8] c"spear_keyboard.author=Rajeev Kumar\00", section ".modinfo", align 1
@__UNIQUE_ID_description212 = internal constant [49 x i8] c"spear_keyboard.description=SPEAr Keyboard Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file213 = internal constant [58 x i8] c"spear_keyboard.file=drivers/input/keyboard/spear-keyboard\00", section ".modinfo", align 1
@__UNIQUE_ID_license214 = internal constant [27 x i8] c"spear_keyboard.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [9 x i8] c"keyboard\00", align 1
@spear_kbd_id_table = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,spear300-kbd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@spear_kbd_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @spear_kbd_suspend, ptr @spear_kbd_resume, ptr @spear_kbd_suspend, ptr @spear_kbd_resume, ptr @spear_kbd_suspend, ptr @spear_kbd_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"not enough memory for driver data\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"unable to allocate input device\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Spear Keyboard\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"keyboard/input0\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Failed to build keymap\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"request_irq failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Unable to register keyboard device\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"Missing DT data\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"autorepeat\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"suspended_rate\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"st,mode\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"DT: Invalid or missing mode\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author211, ptr @__UNIQUE_ID_description212, ptr @__UNIQUE_ID_file213, ptr @__UNIQUE_ID_license214, ptr @__exitcall_spear_kbd_driver_exit, ptr @__initcall__kmod_spear_keyboard__210_386_spear_kbd_driver_init6, ptr @spear_kbd_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @spear_kbd_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @spear_kbd_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @spear_kbd_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @spear_kbd_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spear_kbd_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr %6, align 4
  br label %10

10:                                               ; preds = %8, %1
  %11 = phi ptr [ %9, %8 ], [ null, %1 ]
  %12 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #5
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %109, label %14

14:                                               ; preds = %10
  %15 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 544, i32 noundef 3520) #5
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.1) #6
  br label %109

18:                                               ; preds = %14
  %19 = tail call ptr @devm_input_allocate_device(ptr noundef %4) #5
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2) #6
  br label %109

22:                                               ; preds = %18
  store ptr %19, ptr %15, align 4
  %23 = getelementptr inbounds %struct.spear_kbd, ptr %15, i32 0, i32 3
  store i32 %12, ptr %23, align 4
  br i1 %7, label %24, label %49

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %26 = load ptr, ptr %25, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4, !annotation !8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.8) #6
  br label %44

29:                                               ; preds = %24
  %30 = tail call ptr @of_find_property(ptr noundef nonnull %26, ptr noundef nonnull @.str.9, ptr noundef null) #5
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.spear_kbd, ptr %15, i32 0, i32 8
  store i8 1, ptr %33, align 2
  br label %34

34:                                               ; preds = %32, %29
  %35 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %26, ptr noundef nonnull @.str.10, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #5
  %36 = icmp sgt i32 %35, -1
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, ptr %3, align 4
  %39 = getelementptr inbounds %struct.spear_kbd, ptr %15, i32 0, i32 5
  store i32 %38, ptr %39, align 4
  br label %40

40:                                               ; preds = %37, %34
  %41 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %26, ptr noundef nonnull @.str.11, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #5
  %42 = icmp sgt i32 %41, -1
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.12) #6
  br label %44

44:                                               ; preds = %43, %28
  %45 = phi i32 [ -22, %28 ], [ %41, %43 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  br label %109

46:                                               ; preds = %40
  %47 = load i32, ptr %2, align 4
  %48 = getelementptr inbounds %struct.spear_kbd, ptr %15, i32 0, i32 4
  store i32 %47, ptr %48, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  br label %59

49:                                               ; preds = %22
  %50 = getelementptr inbounds %struct.kbd_platform_data, ptr %6, i32 0, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.spear_kbd, ptr %15, i32 0, i32 4
  store i32 %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.kbd_platform_data, ptr %6, i32 0, i32 1
  %54 = load i8, ptr %53, align 4, !range !9
  %55 = getelementptr inbounds %struct.spear_kbd, ptr %15, i32 0, i32 8
  store i8 %54, ptr %55, align 2
  %56 = getelementptr inbounds %struct.kbd_platform_data, ptr %6, i32 0, i32 3
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.spear_kbd, ptr %15, i32 0, i32 5
  store i32 %57, ptr %58, align 4
  br label %59

59:                                               ; preds = %49, %46
  %60 = call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #5
  %61 = call ptr @devm_ioremap_resource(ptr noundef %4, ptr noundef %60) #5
  %62 = getelementptr inbounds %struct.spear_kbd, ptr %15, i32 0, i32 1
  store ptr %61, ptr %62, align 4
  %63 = icmp ugt ptr %61, inttoptr (i32 -4096 to ptr)
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = ptrtoint ptr %61 to i32
  br label %109

66:                                               ; preds = %59
  %67 = call ptr @devm_clk_get(ptr noundef %4, ptr noundef null) #5
  %68 = getelementptr inbounds %struct.spear_kbd, ptr %15, i32 0, i32 2
  store ptr %67, ptr %68, align 4
  %69 = icmp ugt ptr %67, inttoptr (i32 -4096 to ptr)
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = ptrtoint ptr %67 to i32
  br label %109

72:                                               ; preds = %66
  store ptr @.str.3, ptr %19, align 8
  %73 = getelementptr inbounds %struct.input_dev, ptr %19, i32 0, i32 1
  store ptr @.str.4, ptr %73, align 4
  %74 = getelementptr inbounds %struct.input_dev, ptr %19, i32 0, i32 3
  store i16 25, ptr %74, align 4
  %75 = getelementptr inbounds %struct.input_dev, ptr %19, i32 0, i32 3, i32 1
  store i16 1, ptr %75, align 2
  %76 = getelementptr inbounds %struct.input_dev, ptr %19, i32 0, i32 3, i32 2
  store i16 1, ptr %76, align 4
  %77 = getelementptr inbounds %struct.input_dev, ptr %19, i32 0, i32 3, i32 3
  store i16 256, ptr %77, align 2
  %78 = getelementptr inbounds %struct.input_dev, ptr %19, i32 0, i32 31
  store ptr @spear_kbd_open, ptr %78, align 4
  %79 = getelementptr inbounds %struct.input_dev, ptr %19, i32 0, i32 32
  store ptr @spear_kbd_close, ptr %79, align 8
  %80 = getelementptr inbounds %struct.spear_kbd, ptr %15, i32 0, i32 7
  %81 = call i32 @matrix_keypad_build_keymap(ptr noundef %11, ptr noundef null, i32 noundef 16, i32 noundef 16, ptr noundef %80, ptr noundef nonnull %19) #5
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %72
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.5) #6
  br label %109

84:                                               ; preds = %72
  %85 = getelementptr inbounds %struct.spear_kbd, ptr %15, i32 0, i32 8
  %86 = load i8, ptr %85, align 2, !range !9
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.input_dev, ptr %19, i32 0, i32 5
  %90 = load i32, ptr %89, align 4
  %91 = or i32 %90, 1048576
  store i32 %91, ptr %89, align 4
  br label %92

92:                                               ; preds = %88, %84
  call void @input_set_capability(ptr noundef nonnull %19, i32 noundef 4, i32 noundef 4) #5
  %93 = getelementptr inbounds %struct.input_dev, ptr %19, i32 0, i32 40, i32 8
  store ptr %15, ptr %93, align 8
  %94 = call i32 @devm_request_threaded_irq(ptr noundef %4, i32 noundef %12, ptr noundef nonnull @spear_kbd_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull %15) #5
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %92
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.6) #6
  br label %109

97:                                               ; preds = %92
  %98 = load ptr, ptr %68, align 4
  %99 = call i32 @clk_prepare(ptr noundef %98) #5
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %97
  %102 = call i32 @input_register_device(ptr noundef nonnull %19) #5
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %101
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.7) #6
  %105 = load ptr, ptr %68, align 4
  call void @clk_unprepare(ptr noundef %105) #5
  br label %109

106:                                              ; preds = %101
  %107 = call i32 @device_init_wakeup(ptr noundef %4, i1 noundef zeroext true) #5
  %108 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %15, ptr %108, align 8
  br label %109

109:                                              ; preds = %106, %104, %97, %96, %83, %70, %64, %44, %21, %17, %10
  %110 = phi i32 [ %65, %64 ], [ %71, %70 ], [ %81, %83 ], [ %94, %96 ], [ %102, %104 ], [ 0, %106 ], [ -12, %21 ], [ -12, %17 ], [ %12, %10 ], [ %99, %97 ], [ %45, %44 ]
  ret i32 %110
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spear_kbd_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  tail call void @input_unregister_device(ptr noundef %4) #5
  %5 = getelementptr inbounds %struct.spear_kbd, ptr %3, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  tail call void @clk_unprepare(ptr noundef %6) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spear_kbd_open(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.spear_kbd, ptr %3, i32 0, i32 6
  store i16 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.spear_kbd, ptr %3, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @clk_enable(ptr noundef %6) #5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %29

9:                                                ; preds = %1
  %10 = load ptr, ptr %5, align 4
  %11 = tail call i32 @clk_get_rate(ptr noundef %10) #5
  %12 = udiv i32 %11, 1000000
  %13 = shl nuw nsw i32 %12, 9
  %14 = add nuw nsw i32 %13, 65024
  %15 = and i32 %14, 65024
  %16 = getelementptr inbounds %struct.spear_kbd, ptr %3, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = shl i32 %17, 6
  %19 = or i32 %18, %15
  %20 = or i32 %19, 14
  %21 = getelementptr inbounds %struct.spear_kbd, ptr %3, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #5, !srcloc !10
  %23 = load ptr, ptr %21, align 4
  %24 = getelementptr i8, ptr %23, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 1) #5, !srcloc !10
  %25 = load ptr, ptr %21, align 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #5, !srcloc !11
  %27 = or i32 %26, 256
  %28 = load ptr, ptr %21, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %27) #5, !srcloc !10
  br label %29

29:                                               ; preds = %9, %1
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @spear_kbd_close(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.spear_kbd, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !11
  %7 = and i32 %6, -257
  %8 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %7) #5, !srcloc !10
  %9 = getelementptr inbounds %struct.spear_kbd, ptr %3, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  tail call void @clk_disable(ptr noundef %10) #5
  %11 = getelementptr inbounds %struct.spear_kbd, ptr %3, i32 0, i32 6
  store i16 0, ptr %11, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @matrix_keypad_build_keymap(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spear_kbd_interrupt(i32 noundef %0, ptr nocapture noundef %1) #2 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.spear_kbd, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 12
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !11
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %26, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.spear_kbd, ptr %1, i32 0, i32 6
  %12 = load i16, ptr %11, align 4
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = zext i16 %12 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef %15, i32 noundef 0) #5
  store i16 0, ptr %11, align 4
  br label %16

16:                                               ; preds = %14, %10
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr i8, ptr %17, i32 16
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #5, !srcloc !11
  %20 = and i32 %19, 255
  %21 = getelementptr %struct.spear_kbd, ptr %1, i32 0, i32 7, i32 %20
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 4, i32 noundef 4, i32 noundef %20) #5
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef %23, i32 noundef 1) #5
  tail call void @input_event(ptr noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  store i16 %22, ptr %11, align 4
  %24 = load ptr, ptr %4, align 4
  %25 = getelementptr i8, ptr %24, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 0) #5, !srcloc !10
  br label %26

26:                                               ; preds = %16, %2
  %27 = phi i32 [ 1, %16 ], [ 0, %2 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spear_kbd_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.input_dev, ptr %4, i32 0, i32 37
  tail call void @mutex_lock(ptr noundef %5) #5
  %6 = getelementptr inbounds %struct.spear_kbd, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @clk_enable(ptr noundef %7) #5
  %9 = getelementptr inbounds %struct.spear_kbd, ptr %3, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #5, !srcloc !11
  %12 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %13 = load i16, ptr %12, align 4
  %14 = and i16 %13, 1
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %43, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %43, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.spear_kbd, ptr %3, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 @irq_set_irq_wake(i32 noundef %22, i32 noundef 1) #5
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.spear_kbd, ptr %3, i32 0, i32 9
  store i8 1, ptr %26, align 1
  br label %27

27:                                               ; preds = %25, %20
  %28 = getelementptr inbounds %struct.spear_kbd, ptr %3, i32 0, i32 5
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load ptr, ptr %6, align 4
  %33 = tail call i32 @clk_get_rate(ptr noundef %32) #5
  br label %34

34:                                               ; preds = %31, %27
  %35 = phi i32 [ %33, %31 ], [ %29, %27 ]
  %36 = udiv i32 %35, 1000000
  %37 = and i32 %11, -65025
  %38 = shl nuw nsw i32 %36, 9
  %39 = add nuw nsw i32 %38, 65024
  %40 = and i32 %39, 65024
  %41 = or i32 %40, %37
  %42 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %41) #5, !srcloc !10
  br label %49

43:                                               ; preds = %16, %1
  %44 = tail call zeroext i1 @input_device_enabled(ptr noundef %4) #5
  br i1 %44, label %45, label %49

45:                                               ; preds = %43
  %46 = and i32 %11, -257
  %47 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %46) #5, !srcloc !10
  %48 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %48) #5
  br label %49

49:                                               ; preds = %45, %43, %34
  %50 = tail call zeroext i1 @input_device_enabled(ptr noundef %4) #5
  br i1 %50, label %51, label %53

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.spear_kbd, ptr %3, i32 0, i32 10
  store i32 %11, ptr %52, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %54) #5
  tail call void @mutex_unlock(ptr noundef %5) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spear_kbd_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.input_dev, ptr %4, i32 0, i32 37
  tail call void @mutex_lock(ptr noundef %5) #5
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %7 = load i16, ptr %6, align 4
  %8 = and i16 %7, 1
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.spear_kbd, ptr %3, i32 0, i32 9
  %16 = load i8, ptr %15, align 1, !range !9
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %14
  store i8 0, ptr %15, align 1
  %19 = getelementptr inbounds %struct.spear_kbd, ptr %3, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 @irq_set_irq_wake(i32 noundef %20, i32 noundef 0) #5
  br label %28

22:                                               ; preds = %10, %1
  %23 = tail call zeroext i1 @input_device_enabled(ptr noundef %4) #5
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.spear_kbd, ptr %3, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 @clk_enable(ptr noundef %26) #5
  br label %28

28:                                               ; preds = %24, %22, %18, %14
  %29 = tail call zeroext i1 @input_device_enabled(ptr noundef %4) #5
  br i1 %29, label %30, label %35

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.spear_kbd, ptr %3, i32 0, i32 10
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.spear_kbd, ptr %3, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #5, !srcloc !10
  br label %35

35:                                               ; preds = %30, %28
  tail call void @mutex_unlock(ptr noundef %5) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_device_enabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

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
!8 = !{!"auto-init"}
!9 = !{i8 0, i8 2}
!10 = !{i64 3089334}
!11 = !{i64 3089752}
