; ModuleID = '/llk/IR/drivers/input/keyboard/st-keyscan.c_pt.bc'
source_filename = "../drivers/input/keyboard/st-keyscan.c"
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
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.st_keyscan = type { ptr, i32, ptr, ptr, i32, i32, i32, i32 }

@__initcall__kmod_st_keyscan__210_267_keyscan_device_driver_init6 = internal global ptr @keyscan_device_driver_init, section ".initcall6.init", align 4
@keyscan_device_driver = internal global %struct.platform_driver { ptr @keyscan_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @keyscan_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @keyscan_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_keyscan_device_driver_exit = internal global ptr @keyscan_device_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author211 = internal constant [55 x i8] c"st_keyscan.author=Stuart Menefy <stuart.menefy@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description212 = internal constant [64 x i8] c"st_keyscan.description=STMicroelectronics keyscan device driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file213 = internal constant [50 x i8] c"st_keyscan.file=drivers/input/keyboard/st-keyscan\00", section ".modinfo", align 1
@__UNIQUE_ID_license214 = internal constant [23 x i8] c"st_keyscan.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [11 x i8] c"st-keyscan\00", align 1
@keyscan_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,sti-keyscan\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@keyscan_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @keyscan_suspend, ptr @keyscan_resume, ptr @keyscan_suspend, ptr @keyscan_resume, ptr @keyscan_suspend, ptr @keyscan_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"no DT data present\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"failed to allocate the input device\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"keyscan-keys/input0\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"failed to build keymap\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"cannot get clock\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"failed to enable clock\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"failed to request IRQ\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"failed to register input device\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"failed to parse keypad params\0A\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"st,debounce-us\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author211, ptr @__UNIQUE_ID_description212, ptr @__UNIQUE_ID_file213, ptr @__UNIQUE_ID_license214, ptr @__exitcall_keyscan_device_driver_exit, ptr @__initcall__kmod_st_keyscan__210_267_keyscan_device_driver_init6, ptr @keyscan_device_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @keyscan_device_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @keyscan_device_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @keyscan_device_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @keyscan_device_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @keyscan_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #6
  br label %73

7:                                                ; preds = %1
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 32, i32 noundef 3520) #5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %73, label %10

10:                                               ; preds = %7
  %11 = tail call ptr @devm_input_allocate_device(ptr noundef %2) #5
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #6
  br label %73

14:                                               ; preds = %10
  %15 = load ptr, ptr %0, align 8
  store ptr %15, ptr %11, align 8
  %16 = getelementptr inbounds %struct.input_dev, ptr %11, i32 0, i32 1
  store ptr @.str.3, ptr %16, align 4
  %17 = getelementptr inbounds %struct.input_dev, ptr %11, i32 0, i32 40, i32 1
  store ptr %2, ptr %17, align 4
  %18 = getelementptr inbounds %struct.input_dev, ptr %11, i32 0, i32 31
  store ptr @keyscan_open, ptr %18, align 4
  %19 = getelementptr inbounds %struct.input_dev, ptr %11, i32 0, i32 32
  store ptr @keyscan_close, ptr %19, align 8
  %20 = getelementptr inbounds %struct.input_dev, ptr %11, i32 0, i32 3
  store i16 25, ptr %20, align 4
  %21 = getelementptr inbounds %struct.st_keyscan, ptr %8, i32 0, i32 3
  store ptr %11, ptr %21, align 4
  %22 = load ptr, ptr %17, align 4
  %23 = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 25
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.st_keyscan, ptr %8, i32 0, i32 5
  %26 = getelementptr inbounds %struct.st_keyscan, ptr %8, i32 0, i32 6
  %27 = tail call i32 @matrix_keypad_parse_properties(ptr noundef %22, ptr noundef %25, ptr noundef %26) #5
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.9) #6
  br label %73

30:                                               ; preds = %14
  %31 = getelementptr inbounds %struct.st_keyscan, ptr %8, i32 0, i32 7
  %32 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %24, ptr noundef nonnull @.str.10, ptr noundef %31, i32 noundef 1, i32 noundef 0) #5
  %33 = load i32, ptr %25, align 4
  %34 = load i32, ptr %26, align 4
  %35 = tail call i32 @matrix_keypad_build_keymap(ptr noundef null, ptr noundef null, i32 noundef %33, i32 noundef %34, ptr noundef null, ptr noundef nonnull %11) #5
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4) #6
  br label %73

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.input_dev, ptr %11, i32 0, i32 40, i32 8
  store ptr %8, ptr %39, align 8
  %40 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #5
  %41 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %40) #5
  store ptr %41, ptr %8, align 4
  %42 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = ptrtoint ptr %41 to i32
  br label %73

45:                                               ; preds = %38
  %46 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #5
  %47 = getelementptr inbounds %struct.st_keyscan, ptr %8, i32 0, i32 2
  store ptr %46, ptr %47, align 4
  %48 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5) #6
  %50 = load ptr, ptr %47, align 4
  %51 = ptrtoint ptr %50 to i32
  br label %73

52:                                               ; preds = %45
  %53 = tail call i32 @clk_enable(ptr noundef %46) #5
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6) #6
  br label %73

56:                                               ; preds = %52
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  %57 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 0) #5, !srcloc !9
  %58 = load ptr, ptr %47, align 4
  tail call void @clk_disable(ptr noundef %58) #5
  %59 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #5
  %60 = getelementptr inbounds %struct.st_keyscan, ptr %8, i32 0, i32 1
  store i32 %59, ptr %60, align 4
  %61 = icmp slt i32 %59, 0
  br i1 %61, label %73, label %62

62:                                               ; preds = %56
  %63 = load ptr, ptr %0, align 8
  %64 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %59, ptr noundef nonnull @keyscan_isr, ptr noundef null, i32 noundef 0, ptr noundef %63, ptr noundef nonnull %8) #5
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %62
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.7) #6
  br label %73

67:                                               ; preds = %62
  %68 = tail call i32 @input_register_device(ptr noundef nonnull %11) #5
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %67
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.8) #6
  br label %73

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %8, ptr %72, align 8
  tail call void @device_set_wakeup_capable(ptr noundef %2, i1 noundef zeroext true) #5
  br label %73

73:                                               ; preds = %71, %70, %66, %56, %55, %49, %43, %37, %29, %13, %7, %6
  %74 = phi i32 [ %35, %37 ], [ %44, %43 ], [ %51, %49 ], [ %53, %55 ], [ %64, %66 ], [ %68, %70 ], [ 0, %71 ], [ -12, %13 ], [ -22, %6 ], [ -12, %7 ], [ %27, %29 ], [ -22, %56 ]
  ret i32 %74
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @keyscan_open(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call fastcc i32 @keyscan_start(ptr noundef %3)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @keyscan_close(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  %4 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 0) #5, !srcloc !9
  %5 = getelementptr inbounds %struct.st_keyscan, ptr %3, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  tail call void @clk_disable(ptr noundef %6) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @matrix_keypad_build_keymap(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @keyscan_isr(i32 noundef %0, ptr nocapture noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.st_keyscan, ptr %1, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 17
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  %8 = load ptr, ptr %1, align 4
  %9 = getelementptr i8, ptr %8, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %11 = and i32 %10, 65535
  %12 = getelementptr inbounds %struct.st_keyscan, ptr %1, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = xor i32 %13, %11
  store i32 %14, ptr %3, align 4
  store i32 %11, ptr %12, align 4
  %15 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef 32, i32 noundef 0) #5
  %16 = icmp slt i32 %15, 32
  br i1 %16, label %17, label %28

17:                                               ; preds = %17, %2
  %18 = phi i32 [ %26, %17 ], [ %15, %2 ]
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr i16, ptr %7, i32 %18
  %21 = load i16, ptr %20, align 2
  %22 = zext i16 %21 to i32
  %23 = lshr i32 %11, %18
  %24 = and i32 %23, 1
  call void @input_event(ptr noundef %19, i32 noundef 1, i32 noundef %22, i32 noundef %24) #5
  %25 = add nsw i32 %18, 1
  %26 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef 32, i32 noundef %25) #5
  %27 = icmp slt i32 %26, 32
  br i1 %27, label %17, label %28

28:                                               ; preds = %17, %2
  %29 = load ptr, ptr %4, align 4
  call void @input_event(ptr noundef %29, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @keyscan_start(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.st_keyscan, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @clk_enable(ptr noundef %3) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %26

6:                                                ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %7 = getelementptr inbounds %struct.st_keyscan, ptr %0, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = load ptr, ptr %2, align 4
  %10 = tail call i32 @clk_get_rate(ptr noundef %9) #5
  %11 = udiv i32 %10, 1000000
  %12 = mul i32 %11, %8
  %13 = load ptr, ptr %0, align 4
  %14 = getelementptr i8, ptr %13, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %15 = getelementptr inbounds %struct.st_keyscan, ptr %0, i32 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, -1
  %18 = getelementptr inbounds %struct.st_keyscan, ptr %0, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = shl i32 %19, 2
  %21 = add i32 %20, -4
  %22 = or i32 %21, %17
  %23 = load ptr, ptr %0, align 4
  %24 = getelementptr i8, ptr %23, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %25 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 1) #5, !srcloc !9
  br label %26

26:                                               ; preds = %6, %1
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @matrix_keypad_parse_properties(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @keyscan_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.st_keyscan, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 37
  tail call void @mutex_lock(ptr noundef %6) #5
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %8 = load i16, ptr %7, align 4
  %9 = and i16 %8, 1
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.st_keyscan, ptr %3, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 @irq_set_irq_wake(i32 noundef %17, i32 noundef 1) #5
  br label %25

19:                                               ; preds = %11, %1
  %20 = tail call zeroext i1 @input_device_enabled(ptr noundef %5) #5
  br i1 %20, label %21, label %25

21:                                               ; preds = %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  %22 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 0) #5, !srcloc !9
  %23 = getelementptr inbounds %struct.st_keyscan, ptr %3, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  tail call void @clk_disable(ptr noundef %24) #5
  br label %25

25:                                               ; preds = %21, %19, %15
  tail call void @mutex_unlock(ptr noundef %6) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @keyscan_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.st_keyscan, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 37
  tail call void @mutex_lock(ptr noundef %6) #5
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %8 = load i16, ptr %7, align 4
  %9 = and i16 %8, 1
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.st_keyscan, ptr %3, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 @irq_set_irq_wake(i32 noundef %17, i32 noundef 0) #5
  br label %23

19:                                               ; preds = %11, %1
  %20 = tail call zeroext i1 @input_device_enabled(ptr noundef %5) #5
  br i1 %20, label %21, label %23

21:                                               ; preds = %19
  %22 = tail call fastcc i32 @keyscan_start(ptr noundef %3)
  br label %23

23:                                               ; preds = %21, %19, %15
  %24 = phi i32 [ 0, %15 ], [ %22, %21 ], [ 0, %19 ]
  tail call void @mutex_unlock(ptr noundef %6) #5
  ret i32 %24
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
!8 = !{i64 2152434767}
!9 = !{i64 3463172}
!10 = !{i64 3463590}
!11 = !{i64 2152432854}
!12 = !{i64 2152433481}
!13 = !{i64 2152433989}
!14 = !{i64 2152434449}
