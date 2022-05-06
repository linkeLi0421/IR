; ModuleID = '/llk/IR/drivers/input/misc/stpmic1_onkey.c_pt.bc'
source_filename = "../drivers/input/misc/stpmic1_onkey.c"
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
%struct.stpmic1_onkey = type { ptr, i32, i32 }
%struct.stpmic1 = type { ptr, ptr, i32, ptr }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }

@__initcall__kmod_stpmic1_onkey__210_188_stpmic1_onkey_driver_init6 = internal global ptr @stpmic1_onkey_driver_init, section ".initcall6.init", align 4
@stpmic1_onkey_driver = internal global %struct.platform_driver { ptr @stpmic1_onkey_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_stpmic1_onkey_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stpmic1_onkey_pm, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_stpmic1_onkey_driver_exit = internal global ptr @stpmic1_onkey_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description211 = internal constant [51 x i8] c"stpmic1_onkey.description=Onkey driver for STPMIC1\00", section ".modinfo", align 1
@__UNIQUE_ID_author212 = internal constant [55 x i8] c"stpmic1_onkey.author=Pascal Paillet <p.paillet@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file213 = internal constant [52 x i8] c"stpmic1_onkey.file=drivers/input/misc/stpmic1_onkey\00", section ".modinfo", align 1
@__UNIQUE_ID_license214 = internal constant [29 x i8] c"stpmic1_onkey.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [14 x i8] c"stpmic1_onkey\00", align 1
@of_stpmic1_onkey_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stpmic1-onkey\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@stpmic1_onkey_pm = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @stpmic1_onkey_suspend, ptr @stpmic1_onkey_resume, ptr @stpmic1_onkey_suspend, ptr @stpmic1_onkey_resume, ptr @stpmic1_onkey_suspend, ptr @stpmic1_onkey_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"onkey-falling\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"onkey-rising\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"power-off-time-sec\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"power-off-time-sec out of range\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"st,onkey-clear-cc-flag\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"PKEY_TURNOFF_CR write failed: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"st,onkey-pu-inactive\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"ONKEY Pads configuration failed: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"Can't allocate Pwr Onkey Input Device\0A\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"pmic_onkey\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"pmic_onkey/input0\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"Can't get IRQ Onkey Falling: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"Can't get IRQ Onkey Rising: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"Can't register power button: %d\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author212, ptr @__UNIQUE_ID_description211, ptr @__UNIQUE_ID_file213, ptr @__UNIQUE_ID_license214, ptr @__exitcall_stpmic1_onkey_driver_exit, ptr @__initcall__kmod_stpmic1_onkey__210_188_stpmic1_onkey_driver_init6, ptr @stpmic1_onkey_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @stpmic1_onkey_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @stpmic1_onkey_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @stpmic1_onkey_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @stpmic1_onkey_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stpmic1_onkey_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !8
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 12, i32 noundef 3520) #5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %82, label %10

10:                                               ; preds = %1
  %11 = tail call i32 @platform_get_irq_byname(ptr noundef %0, ptr noundef nonnull @.str.1) #5
  %12 = getelementptr inbounds %struct.stpmic1_onkey, ptr %8, i32 0, i32 1
  store i32 %11, ptr %12, align 4
  %13 = icmp slt i32 %11, 0
  br i1 %13, label %82, label %14

14:                                               ; preds = %10
  %15 = tail call i32 @platform_get_irq_byname(ptr noundef %0, ptr noundef nonnull @.str.2) #5
  %16 = getelementptr inbounds %struct.stpmic1_onkey, ptr %8, i32 0, i32 2
  store i32 %15, ptr %16, align 4
  %17 = icmp slt i32 %15, 0
  br i1 %17, label %82, label %18

18:                                               ; preds = %14
  %19 = call i32 @device_property_read_u32_array(ptr noundef %3, ptr noundef nonnull @.str.3, ptr noundef nonnull %2, i32 noundef 1) #5
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = load i32, ptr %2, align 4
  %23 = add i32 %22, -1
  %24 = icmp ult i32 %23, 16
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = sub nsw i32 0, %22
  %27 = and i32 %26, 15
  %28 = or i32 %27, 128
  br label %30

29:                                               ; preds = %21
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4) #6
  br label %82

30:                                               ; preds = %25, %18
  %31 = phi i32 [ 0, %18 ], [ %28, %25 ]
  %32 = call zeroext i1 @device_property_present(ptr noundef %3, ptr noundef nonnull @.str.5) #5
  %33 = or i32 %31, 64
  %34 = select i1 %32, i32 %33, i32 %31
  %35 = getelementptr inbounds %struct.stpmic1, ptr %7, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef 22, i32 noundef 255, i32 noundef %34, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %30
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6, i32 noundef %37) #6
  br label %82

40:                                               ; preds = %30
  %41 = call zeroext i1 @device_property_present(ptr noundef %3, ptr noundef nonnull @.str.7) #5
  br i1 %41, label %42, label %47

42:                                               ; preds = %40
  %43 = load ptr, ptr %35, align 4
  %44 = call i32 @regmap_update_bits_base(ptr noundef %43, i32 noundef 17, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.8, i32 noundef %44) #6
  br label %82

47:                                               ; preds = %42, %40
  %48 = call ptr @devm_input_allocate_device(ptr noundef %3) #5
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.9) #6
  br label %82

51:                                               ; preds = %47
  store ptr @.str.10, ptr %48, align 8
  %52 = getelementptr inbounds %struct.input_dev, ptr %48, i32 0, i32 1
  store ptr @.str.11, ptr %52, align 4
  call void @input_set_capability(ptr noundef nonnull %48, i32 noundef 1, i32 noundef 116) #5
  store ptr %48, ptr %8, align 4
  %53 = load i32, ptr %12, align 4
  %54 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load ptr, ptr %3, align 4
  br label %59

59:                                               ; preds = %57, %51
  %60 = phi ptr [ %58, %57 ], [ %55, %51 ]
  %61 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %53, ptr noundef null, ptr noundef nonnull @onkey_falling_irq, i32 noundef 8192, ptr noundef %60, ptr noundef nonnull %8) #5
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.12, i32 noundef %61) #6
  br label %82

64:                                               ; preds = %59
  %65 = load i32, ptr %16, align 4
  %66 = load ptr, ptr %54, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load ptr, ptr %3, align 4
  br label %70

70:                                               ; preds = %68, %64
  %71 = phi ptr [ %69, %68 ], [ %66, %64 ]
  %72 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %65, ptr noundef null, ptr noundef nonnull @onkey_rising_irq, i32 noundef 8192, ptr noundef %71, ptr noundef nonnull %8) #5
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.13, i32 noundef %72) #6
  br label %82

75:                                               ; preds = %70
  %76 = call i32 @input_register_device(ptr noundef nonnull %48) #5
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.14, i32 noundef %76) #6
  br label %82

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %8, ptr %80, align 8
  %81 = call i32 @device_init_wakeup(ptr noundef %3, i1 noundef zeroext true) #5
  br label %82

82:                                               ; preds = %79, %78, %74, %63, %50, %46, %39, %29, %14, %10, %1
  %83 = phi i32 [ %37, %39 ], [ %44, %46 ], [ %61, %63 ], [ %72, %74 ], [ %76, %78 ], [ 0, %79 ], [ -12, %50 ], [ -22, %29 ], [ -12, %1 ], [ %11, %10 ], [ %15, %14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  ret i32 %83
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @onkey_falling_irq(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = load ptr, ptr %1, align 4
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 116, i32 noundef 1) #5
  %4 = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 40, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @pm_wakeup_dev_event(ptr noundef %5, i32 noundef 0, i1 noundef zeroext false) #5
  tail call void @input_event(ptr noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @onkey_rising_irq(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = load ptr, ptr %1, align 4
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 116, i32 noundef 0) #5
  %4 = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 40, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @pm_wakeup_dev_event(ptr noundef %5, i32 noundef 0, i1 noundef zeroext false) #5
  tail call void @input_event(ptr noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_wakeup_dev_event(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stpmic1_onkey_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 64
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
  %13 = getelementptr inbounds %struct.stpmic1_onkey, ptr %3, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @irq_set_irq_wake(i32 noundef %14, i32 noundef 1) #5
  %16 = getelementptr inbounds %struct.stpmic1_onkey, ptr %3, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 @irq_set_irq_wake(i32 noundef %17, i32 noundef 1) #5
  br label %19

19:                                               ; preds = %12, %8, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stpmic1_onkey_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 64
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
  %13 = getelementptr inbounds %struct.stpmic1_onkey, ptr %3, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @irq_set_irq_wake(i32 noundef %14, i32 noundef 0) #5
  %16 = getelementptr inbounds %struct.stpmic1_onkey, ptr %3, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 @irq_set_irq_wake(i32 noundef %17, i32 noundef 0) #5
  br label %19

19:                                               ; preds = %12, %8, %1
  ret i32 0
}

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
