; ModuleID = '/llk/IR/drivers/pwm/pwm-sti.c_pt.bc'
source_filename = "../drivers/pwm/pwm-sti.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.reg_field = type { i32, i32, i32, i32, i32 }
%struct.lock_class_key = type {}
%struct.pwm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.sti_pwm_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.pwm_chip, ptr, i32, i32, %struct.mutex, ptr }
%struct.pwm_chip = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr }
%struct.sti_pwm_compat_data = type { ptr, i32, i32, i32, i32 }
%struct.sti_cpt_ddata = type { [3 x i32], i32, %struct.mutex, %struct.wait_queue_head }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.pwm_capture = type { i32, i32 }

@__initcall__kmod_pwm_sti__170_675_sti_pwm_driver_init6 = internal global ptr @sti_pwm_driver_init, section ".initcall6.init", align 4
@sti_pwm_driver = internal global %struct.platform_driver { ptr @sti_pwm_probe, ptr @sti_pwm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sti_pwm_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_sti_pwm_driver_exit = internal global ptr @sti_pwm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author171 = internal constant [53 x i8] c"pwm_sti.author=Ajit Pal Singh <ajitpal.singh@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description172 = internal constant [53 x i8] c"pwm_sti.description=STMicroelectronics ST PWM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [33 x i8] c"pwm_sti.file=drivers/pwm/pwm-sti\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [20 x i8] c"pwm_sti.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [8 x i8] c"sti-pwm\00", align 1
@sti_pwm_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,sti-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@sti_pwm_regmap_config = internal constant %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Failed to request IRQ\0A\00", align 1
@sti_pwm_regfields = internal constant [7 x %struct.reg_field] [%struct.reg_field { i32 80, i32 0, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 80, i32 11, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 80, i32 4, i32 8, i32 0, i32 0 }, %struct.reg_field { i32 80, i32 9, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 80, i32 10, i32 10, i32 0, i32 0 }, %struct.reg_field { i32 84, i32 1, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 88, i32 1, i32 4, i32 0, i32 0 }], align 4
@sti_pwm_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"&pc->sti_pwm_lock\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"pwm\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"failed to get PWM clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"failed to prepare clock\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"capture\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"failed to get PWM capture clock\0A\00", align 1
@sti_pwm_ops = internal constant %struct.pwm_ops { ptr null, ptr @sti_pwm_free, ptr @sti_pwm_capture, ptr null, ptr null, ptr null, ptr @sti_pwm_config, ptr null, ptr @sti_pwm_enable, ptr @sti_pwm_disable }, align 4
@sti_pwm_probe.__key.8 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"&ddata->wait\00", align 1
@sti_pwm_probe.__key.10 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"&ddata->lock\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"Internal error\0A\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"st,pwm-num-chan\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"st,capture-num-chan\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"No channels configured\0A\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"device %u is not valid\0A\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"failed to enable PWM capture %u: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"internal error\0A\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"failed to get clock rate\0A\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"failed to enable PWM device %u: %d\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_sti_pwm_driver_exit, ptr @__initcall__kmod_pwm_sti__170_675_sti_pwm_driver_init6, ptr @sti_pwm_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sti_pwm_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sti_pwm_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sti_pwm_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sti_pwm_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_pwm_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 116, i32 noundef 3520) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %252, label %6

6:                                                ; preds = %1
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 20, i32 noundef 3520) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %252, label %9

9:                                                ; preds = %6
  %10 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #7
  %11 = getelementptr inbounds %struct.sti_pwm_chip, ptr %4, i32 0, i32 16
  store ptr %10, ptr %11, align 4
  %12 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = ptrtoint ptr %10 to i32
  br label %252

15:                                               ; preds = %9
  %16 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %3, ptr noundef null, ptr noundef %10, ptr noundef nonnull @sti_pwm_regmap_config, ptr noundef null, ptr noundef null) #7
  %17 = getelementptr inbounds %struct.sti_pwm_chip, ptr %4, i32 0, i32 3
  store ptr %16, ptr %17, align 4
  %18 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = ptrtoint ptr %16 to i32
  br label %252

21:                                               ; preds = %15
  %22 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #7
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %252, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %0, align 8
  %26 = tail call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %22, ptr noundef nonnull @sti_pwm_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %25, ptr noundef nonnull %4) #7
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #8
  br label %252

29:                                               ; preds = %24
  store ptr @sti_pwm_regfields, ptr %7, align 4
  %30 = getelementptr inbounds %struct.sti_pwm_compat_data, ptr %7, i32 0, i32 4
  store i32 255, ptr %30, align 4
  %31 = getelementptr inbounds %struct.sti_pwm_compat_data, ptr %7, i32 0, i32 3
  store i32 255, ptr %31, align 4
  %32 = getelementptr inbounds %struct.sti_pwm_compat_data, ptr %7, i32 0, i32 1
  store i32 0, ptr %32, align 4
  %33 = getelementptr inbounds %struct.sti_pwm_compat_data, ptr %7, i32 0, i32 2
  store i32 0, ptr %33, align 4
  %34 = getelementptr inbounds %struct.sti_pwm_chip, ptr %4, i32 0, i32 4
  store ptr %7, ptr %34, align 4
  store ptr %3, ptr %4, align 4
  %35 = getelementptr inbounds %struct.sti_pwm_chip, ptr %4, i32 0, i32 14
  store i32 0, ptr %35, align 4
  %36 = getelementptr inbounds %struct.sti_pwm_chip, ptr %4, i32 0, i32 15
  tail call void @__mutex_init(ptr noundef %36, ptr noundef nonnull @.str.2, ptr noundef nonnull @sti_pwm_probe.__key) #7
  %37 = load ptr, ptr %4, align 4
  %38 = getelementptr inbounds %struct.device, ptr %37, i32 0, i32 25
  %39 = load ptr, ptr %38, align 8
  %40 = load ptr, ptr %34, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %41 = call i32 @of_property_read_variable_u32_array(ptr noundef %39, ptr noundef nonnull @.str.13, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #7
  %42 = icmp sgt i32 %41, -1
  br i1 %42, label %43, label %46

43:                                               ; preds = %29
  %44 = load i32, ptr %2, align 4
  %45 = getelementptr inbounds %struct.sti_pwm_compat_data, ptr %40, i32 0, i32 1
  store i32 %44, ptr %45, align 4
  br label %46

46:                                               ; preds = %43, %29
  %47 = call i32 @of_property_read_variable_u32_array(ptr noundef %39, ptr noundef nonnull @.str.14, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #7
  %48 = icmp sgt i32 %47, -1
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, ptr %2, align 4
  %51 = getelementptr inbounds %struct.sti_pwm_compat_data, ptr %40, i32 0, i32 2
  store i32 %50, ptr %51, align 4
  br label %52

52:                                               ; preds = %49, %46
  %53 = getelementptr inbounds %struct.sti_pwm_compat_data, ptr %40, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.sti_pwm_compat_data, ptr %40, i32 0, i32 2
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.15) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  br label %252

61:                                               ; preds = %56, %52
  %62 = load ptr, ptr %40, align 4
  %63 = load ptr, ptr %17, align 4
  %64 = load i32, ptr %62, align 4
  %65 = insertvalue [5 x i32] undef, i32 %64, 0
  %66 = getelementptr inbounds [5 x i32], ptr %62, i32 0, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = insertvalue [5 x i32] %65, i32 %67, 1
  %69 = getelementptr inbounds [5 x i32], ptr %62, i32 0, i32 2
  %70 = load i32, ptr %69, align 4
  %71 = insertvalue [5 x i32] %68, i32 %70, 2
  %72 = getelementptr inbounds [5 x i32], ptr %62, i32 0, i32 3
  %73 = load i32, ptr %72, align 4
  %74 = insertvalue [5 x i32] %71, i32 %73, 3
  %75 = getelementptr inbounds [5 x i32], ptr %62, i32 0, i32 4
  %76 = load i32, ptr %75, align 4
  %77 = insertvalue [5 x i32] %74, i32 %76, 4
  %78 = call ptr @devm_regmap_field_alloc(ptr noundef %37, ptr noundef %63, [5 x i32] %77) #7
  %79 = getelementptr inbounds %struct.sti_pwm_chip, ptr %4, i32 0, i32 5
  store ptr %78, ptr %79, align 4
  %80 = icmp ugt ptr %78, inttoptr (i32 -4096 to ptr)
  br i1 %80, label %182, label %81

81:                                               ; preds = %61
  %82 = load ptr, ptr %17, align 4
  %83 = getelementptr %struct.reg_field, ptr %62, i32 1
  %84 = load i32, ptr %83, align 4
  %85 = insertvalue [5 x i32] undef, i32 %84, 0
  %86 = getelementptr %struct.reg_field, ptr %62, i32 1, i32 1
  %87 = load i32, ptr %86, align 4
  %88 = insertvalue [5 x i32] %85, i32 %87, 1
  %89 = getelementptr %struct.reg_field, ptr %62, i32 1, i32 2
  %90 = load i32, ptr %89, align 4
  %91 = insertvalue [5 x i32] %88, i32 %90, 2
  %92 = getelementptr %struct.reg_field, ptr %62, i32 1, i32 3
  %93 = load i32, ptr %92, align 4
  %94 = insertvalue [5 x i32] %91, i32 %93, 3
  %95 = getelementptr %struct.reg_field, ptr %62, i32 1, i32 4
  %96 = load i32, ptr %95, align 4
  %97 = insertvalue [5 x i32] %94, i32 %96, 4
  %98 = call ptr @devm_regmap_field_alloc(ptr noundef %37, ptr noundef %82, [5 x i32] %97) #7
  %99 = getelementptr inbounds %struct.sti_pwm_chip, ptr %4, i32 0, i32 6
  store ptr %98, ptr %99, align 4
  %100 = icmp ugt ptr %98, inttoptr (i32 -4096 to ptr)
  br i1 %100, label %182, label %101

101:                                              ; preds = %81
  %102 = load ptr, ptr %17, align 4
  %103 = getelementptr %struct.reg_field, ptr %62, i32 3
  %104 = load i32, ptr %103, align 4
  %105 = insertvalue [5 x i32] undef, i32 %104, 0
  %106 = getelementptr %struct.reg_field, ptr %62, i32 3, i32 1
  %107 = load i32, ptr %106, align 4
  %108 = insertvalue [5 x i32] %105, i32 %107, 1
  %109 = getelementptr %struct.reg_field, ptr %62, i32 3, i32 2
  %110 = load i32, ptr %109, align 4
  %111 = insertvalue [5 x i32] %108, i32 %110, 2
  %112 = getelementptr %struct.reg_field, ptr %62, i32 3, i32 3
  %113 = load i32, ptr %112, align 4
  %114 = insertvalue [5 x i32] %111, i32 %113, 3
  %115 = getelementptr %struct.reg_field, ptr %62, i32 3, i32 4
  %116 = load i32, ptr %115, align 4
  %117 = insertvalue [5 x i32] %114, i32 %116, 4
  %118 = call ptr @devm_regmap_field_alloc(ptr noundef %37, ptr noundef %102, [5 x i32] %117) #7
  %119 = getelementptr inbounds %struct.sti_pwm_chip, ptr %4, i32 0, i32 7
  store ptr %118, ptr %119, align 4
  %120 = icmp ugt ptr %118, inttoptr (i32 -4096 to ptr)
  br i1 %120, label %182, label %121

121:                                              ; preds = %101
  %122 = load ptr, ptr %17, align 4
  %123 = getelementptr %struct.reg_field, ptr %62, i32 4
  %124 = load i32, ptr %123, align 4
  %125 = insertvalue [5 x i32] undef, i32 %124, 0
  %126 = getelementptr %struct.reg_field, ptr %62, i32 4, i32 1
  %127 = load i32, ptr %126, align 4
  %128 = insertvalue [5 x i32] %125, i32 %127, 1
  %129 = getelementptr %struct.reg_field, ptr %62, i32 4, i32 2
  %130 = load i32, ptr %129, align 4
  %131 = insertvalue [5 x i32] %128, i32 %130, 2
  %132 = getelementptr %struct.reg_field, ptr %62, i32 4, i32 3
  %133 = load i32, ptr %132, align 4
  %134 = insertvalue [5 x i32] %131, i32 %133, 3
  %135 = getelementptr %struct.reg_field, ptr %62, i32 4, i32 4
  %136 = load i32, ptr %135, align 4
  %137 = insertvalue [5 x i32] %134, i32 %136, 4
  %138 = call ptr @devm_regmap_field_alloc(ptr noundef %37, ptr noundef %122, [5 x i32] %137) #7
  %139 = getelementptr inbounds %struct.sti_pwm_chip, ptr %4, i32 0, i32 8
  store ptr %138, ptr %139, align 4
  %140 = icmp ugt ptr %138, inttoptr (i32 -4096 to ptr)
  br i1 %140, label %182, label %141

141:                                              ; preds = %121
  %142 = load ptr, ptr %17, align 4
  %143 = getelementptr %struct.reg_field, ptr %62, i32 5
  %144 = load i32, ptr %143, align 4
  %145 = insertvalue [5 x i32] undef, i32 %144, 0
  %146 = getelementptr %struct.reg_field, ptr %62, i32 5, i32 1
  %147 = load i32, ptr %146, align 4
  %148 = insertvalue [5 x i32] %145, i32 %147, 1
  %149 = getelementptr %struct.reg_field, ptr %62, i32 5, i32 2
  %150 = load i32, ptr %149, align 4
  %151 = insertvalue [5 x i32] %148, i32 %150, 2
  %152 = getelementptr %struct.reg_field, ptr %62, i32 5, i32 3
  %153 = load i32, ptr %152, align 4
  %154 = insertvalue [5 x i32] %151, i32 %153, 3
  %155 = getelementptr %struct.reg_field, ptr %62, i32 5, i32 4
  %156 = load i32, ptr %155, align 4
  %157 = insertvalue [5 x i32] %154, i32 %156, 4
  %158 = call ptr @devm_regmap_field_alloc(ptr noundef %37, ptr noundef %142, [5 x i32] %157) #7
  %159 = getelementptr inbounds %struct.sti_pwm_chip, ptr %4, i32 0, i32 9
  store ptr %158, ptr %159, align 4
  %160 = icmp ugt ptr %158, inttoptr (i32 -4096 to ptr)
  br i1 %160, label %182, label %161

161:                                              ; preds = %141
  %162 = load ptr, ptr %17, align 4
  %163 = getelementptr %struct.reg_field, ptr %62, i32 6
  %164 = load i32, ptr %163, align 4
  %165 = insertvalue [5 x i32] undef, i32 %164, 0
  %166 = getelementptr %struct.reg_field, ptr %62, i32 6, i32 1
  %167 = load i32, ptr %166, align 4
  %168 = insertvalue [5 x i32] %165, i32 %167, 1
  %169 = getelementptr %struct.reg_field, ptr %62, i32 6, i32 2
  %170 = load i32, ptr %169, align 4
  %171 = insertvalue [5 x i32] %168, i32 %170, 2
  %172 = getelementptr %struct.reg_field, ptr %62, i32 6, i32 3
  %173 = load i32, ptr %172, align 4
  %174 = insertvalue [5 x i32] %171, i32 %173, 3
  %175 = getelementptr %struct.reg_field, ptr %62, i32 6, i32 4
  %176 = load i32, ptr %175, align 4
  %177 = insertvalue [5 x i32] %174, i32 %176, 4
  %178 = call ptr @devm_regmap_field_alloc(ptr noundef %37, ptr noundef %162, [5 x i32] %177) #7
  %179 = getelementptr inbounds %struct.sti_pwm_chip, ptr %4, i32 0, i32 10
  store ptr %178, ptr %179, align 4
  %180 = icmp ugt ptr %178, inttoptr (i32 -4096 to ptr)
  br i1 %180, label %182, label %181

181:                                              ; preds = %161
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  br label %186

182:                                              ; preds = %161, %141, %121, %101, %81, %61
  %183 = phi ptr [ %178, %161 ], [ %78, %61 ], [ %98, %81 ], [ %118, %101 ], [ %138, %121 ], [ %158, %141 ]
  %184 = ptrtoint ptr %183 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  %185 = icmp eq ptr %183, null
  br i1 %185, label %186, label %252

186:                                              ; preds = %182, %181
  %187 = load i32, ptr %32, align 4
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %202, label %189

189:                                              ; preds = %186
  %190 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %191 = load ptr, ptr %190, align 8
  %192 = call ptr @of_clk_get_by_name(ptr noundef %191, ptr noundef nonnull @.str.3) #7
  %193 = getelementptr inbounds %struct.sti_pwm_chip, ptr %4, i32 0, i32 1
  store ptr %192, ptr %193, align 4
  %194 = icmp ugt ptr %192, inttoptr (i32 -4096 to ptr)
  br i1 %194, label %195, label %198

195:                                              ; preds = %189
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4) #8
  %196 = load ptr, ptr %193, align 4
  %197 = ptrtoint ptr %196 to i32
  br label %252

198:                                              ; preds = %189
  %199 = call i32 @clk_prepare(ptr noundef %192) #7
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %202, label %201

201:                                              ; preds = %198
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5) #8
  br label %252

202:                                              ; preds = %198, %186
  %203 = load i32, ptr %33, align 4
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %218, label %205

205:                                              ; preds = %202
  %206 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %207 = load ptr, ptr %206, align 8
  %208 = call ptr @of_clk_get_by_name(ptr noundef %207, ptr noundef nonnull @.str.6) #7
  %209 = getelementptr inbounds %struct.sti_pwm_chip, ptr %4, i32 0, i32 2
  store ptr %208, ptr %209, align 4
  %210 = icmp ugt ptr %208, inttoptr (i32 -4096 to ptr)
  br i1 %210, label %211, label %214

211:                                              ; preds = %205
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7) #8
  %212 = load ptr, ptr %209, align 4
  %213 = ptrtoint ptr %212 to i32
  br label %252

214:                                              ; preds = %205
  %215 = call i32 @clk_prepare(ptr noundef %208) #7
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %218, label %217

217:                                              ; preds = %214
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5) #8
  br label %252

218:                                              ; preds = %214, %202
  %219 = getelementptr inbounds %struct.sti_pwm_chip, ptr %4, i32 0, i32 11
  store ptr %3, ptr %219, align 4
  %220 = getelementptr inbounds %struct.sti_pwm_chip, ptr %4, i32 0, i32 11, i32 1
  store ptr @sti_pwm_ops, ptr %220, align 4
  %221 = load ptr, ptr %34, align 4
  %222 = getelementptr inbounds %struct.sti_pwm_compat_data, ptr %221, i32 0, i32 1
  %223 = load i32, ptr %222, align 4
  %224 = getelementptr inbounds %struct.sti_pwm_chip, ptr %4, i32 0, i32 11, i32 3
  store i32 %223, ptr %224, align 4
  %225 = call i32 @pwmchip_add(ptr noundef %219) #7
  %226 = icmp slt i32 %225, 0
  br i1 %226, label %232, label %227

227:                                              ; preds = %218
  %228 = load i32, ptr %33, align 4
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %250, label %230

230:                                              ; preds = %227
  %231 = getelementptr inbounds %struct.sti_pwm_chip, ptr %4, i32 0, i32 11, i32 7
  br label %237

232:                                              ; preds = %218
  %233 = getelementptr inbounds %struct.sti_pwm_chip, ptr %4, i32 0, i32 1
  %234 = load ptr, ptr %233, align 4
  call void @clk_unprepare(ptr noundef %234) #7
  %235 = getelementptr inbounds %struct.sti_pwm_chip, ptr %4, i32 0, i32 2
  %236 = load ptr, ptr %235, align 4
  call void @clk_unprepare(ptr noundef %236) #7
  br label %252

237:                                              ; preds = %241, %230
  %238 = phi i32 [ 0, %230 ], [ %247, %241 ]
  %239 = call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 48, i32 noundef 3520) #7
  %240 = icmp eq ptr %239, null
  br i1 %240, label %252, label %241

241:                                              ; preds = %237
  %242 = getelementptr inbounds %struct.sti_cpt_ddata, ptr %239, i32 0, i32 3
  call void @__init_waitqueue_head(ptr noundef %242, ptr noundef nonnull @.str.9, ptr noundef nonnull @sti_pwm_probe.__key.8) #7
  %243 = getelementptr inbounds %struct.sti_cpt_ddata, ptr %239, i32 0, i32 2
  call void @__mutex_init(ptr noundef %243, ptr noundef nonnull @.str.11, ptr noundef nonnull @sti_pwm_probe.__key.10) #7
  %244 = load ptr, ptr %231, align 4
  %245 = getelementptr %struct.pwm_device, ptr %244, i32 %238
  %246 = call i32 @pwm_set_chip_data(ptr noundef %245, ptr noundef nonnull %239) #7
  %247 = add nuw i32 %238, 1
  %248 = load i32, ptr %33, align 4
  %249 = icmp ult i32 %247, %248
  br i1 %249, label %237, label %250

250:                                              ; preds = %241, %227
  %251 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %251, align 8
  br label %252

252:                                              ; preds = %250, %237, %232, %217, %211, %201, %195, %182, %60, %28, %21, %19, %13, %6, %1
  %253 = phi i32 [ %14, %13 ], [ %20, %19 ], [ %26, %28 ], [ %197, %195 ], [ %199, %201 ], [ %213, %211 ], [ %215, %217 ], [ %225, %232 ], [ 0, %250 ], [ -12, %1 ], [ -12, %6 ], [ %22, %21 ], [ %184, %182 ], [ -22, %60 ], [ -12, %237 ]
  ret i32 %253
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_pwm_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sti_pwm_chip, ptr %3, i32 0, i32 11
  tail call void @pwmchip_remove(ptr noundef %4) #7
  %5 = getelementptr inbounds %struct.sti_pwm_chip, ptr %3, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  tail call void @clk_unprepare(ptr noundef %6) #7
  %7 = getelementptr inbounds %struct.sti_pwm_chip, ptr %3, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  tail call void @clk_unprepare(ptr noundef %8) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_pwm_interrupt(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.sti_pwm_chip, ptr %1, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = call i32 @regmap_field_read(ptr noundef %7, ptr noundef nonnull %3) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %57

10:                                               ; preds = %2
  %11 = load i32, ptr %3, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %52, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.sti_pwm_chip, ptr %1, i32 0, i32 11, i32 7
  %15 = getelementptr inbounds %struct.sti_pwm_chip, ptr %1, i32 0, i32 3
  br label %16

16:                                               ; preds = %46, %13
  %17 = phi i32 [ %11, %13 ], [ %50, %46 ]
  %18 = call i32 @llvm.cttz.i32(i32 %17, i1 true), !range !9
  %19 = load ptr, ptr %14, align 4
  %20 = getelementptr %struct.pwm_device, ptr %19, i32 %18
  %21 = call ptr @pwm_get_chip_data(ptr noundef %20) #7
  %22 = load ptr, ptr %15, align 4
  %23 = shl nuw nsw i32 %18, 2
  %24 = add nuw nsw i32 %23, 16
  %25 = getelementptr inbounds %struct.sti_cpt_ddata, ptr %21, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr [3 x i32], ptr %21, i32 0, i32 %26
  %28 = call i32 @regmap_read(ptr noundef %22, i32 noundef %24, ptr noundef %27) #7
  %29 = load i32, ptr %25, align 4
  switch i32 %29, label %45 [
    i32 0, label %30
    i32 1, label %30
    i32 2, label %40
  ]

30:                                               ; preds = %16, %16
  %31 = load ptr, ptr %15, align 4
  %32 = add nuw nsw i32 %23, 48
  %33 = call i32 @regmap_read(ptr noundef %31, i32 noundef %32, ptr noundef nonnull %4) #7
  %34 = load i32, ptr %4, align 4
  %35 = xor i32 %34, 3
  store i32 %35, ptr %4, align 4
  %36 = load ptr, ptr %15, align 4
  %37 = call i32 @regmap_write(ptr noundef %36, i32 noundef %32, i32 noundef %35) #7
  %38 = load i32, ptr %25, align 4
  %39 = add i32 %38, 1
  store i32 %39, ptr %25, align 4
  br label %46

40:                                               ; preds = %16
  %41 = load ptr, ptr %15, align 4
  %42 = add nuw nsw i32 %23, 48
  %43 = call i32 @regmap_write(ptr noundef %41, i32 noundef %42, i32 noundef 0) #7
  %44 = getelementptr inbounds %struct.sti_cpt_ddata, ptr %21, i32 0, i32 3
  call void @__wake_up(ptr noundef %44, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %46

45:                                               ; preds = %16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.12) #8
  br label %46

46:                                               ; preds = %45, %40, %30
  %47 = shl nuw i32 1, %18
  %48 = xor i32 %47, -1
  %49 = load i32, ptr %3, align 4
  %50 = and i32 %49, %48
  store i32 %50, ptr %3, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %16

52:                                               ; preds = %46, %10
  %53 = phi i32 [ 0, %10 ], [ 1, %46 ]
  %54 = getelementptr inbounds %struct.sti_pwm_chip, ptr %1, i32 0, i32 3
  %55 = load ptr, ptr %54, align 4
  %56 = call i32 @regmap_write(ptr noundef %55, i32 noundef 92, i32 noundef 511) #7
  br label %57

57:                                               ; preds = %52, %2
  %58 = phi i32 [ %53, %52 ], [ %8, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %58
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwmchip_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwm_set_chip_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_read(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pwm_get_chip_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regmap_field_alloc(ptr noundef, ptr noundef, [5 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sti_pwm_free(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr i8, ptr %0, i32 40
  tail call void @_clear_bit(i32 noundef %4, ptr noundef %5) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_pwm_capture(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) #2 {
  %5 = alloca %struct.wait_queue_entry, align 4
  %6 = getelementptr i8, ptr %0, i32 -44
  %7 = getelementptr i8, ptr %0, i32 -28
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr @pwm_get_chip_data(ptr noundef %1) #7
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = getelementptr inbounds %struct.sti_pwm_compat_data, ptr %8, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = icmp ult i32 %12, %14
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.16, i32 noundef %12) #8
  br label %112

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.sti_cpt_ddata, ptr %9, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %18) #7
  %19 = getelementptr inbounds %struct.sti_cpt_ddata, ptr %9, i32 0, i32 1
  store i32 0, ptr %19, align 4
  %20 = getelementptr i8, ptr %0, i32 -32
  %21 = load ptr, ptr %20, align 4
  %22 = load i32, ptr %11, align 8
  %23 = shl i32 %22, 2
  %24 = add i32 %23, 48
  %25 = tail call i32 @regmap_write(ptr noundef %21, i32 noundef %24, i32 noundef 1) #7
  %26 = getelementptr i8, ptr %0, i32 -8
  %27 = load ptr, ptr %26, align 4
  %28 = load i32, ptr %11, align 8
  %29 = shl nuw i32 1, %28
  %30 = tail call i32 @regmap_field_update_bits_base(ptr noundef %27, i32 noundef -1, i32 noundef %29, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %31 = getelementptr i8, ptr %0, i32 -12
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 @regmap_field_update_bits_base(ptr noundef %32, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %17
  %36 = load i32, ptr %11, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.17, i32 noundef %36, i32 noundef %33) #8
  br label %108

37:                                               ; preds = %17
  %38 = tail call i32 @__msecs_to_jiffies(i32 noundef %3) #7
  %39 = load i32, ptr %19, align 4
  %40 = icmp ugt i32 %39, 1
  %41 = xor i1 %40, true
  %42 = icmp ne i32 %38, 0
  %43 = select i1 %41, i1 true, i1 %42
  %44 = select i1 %43, i32 %38, i32 1
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %40, i1 true, i1 %45
  br i1 %46, label %78, label %47

47:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false), !annotation !8
  %48 = tail call i32 @__msecs_to_jiffies(i32 noundef %3) #7
  call void @init_wait_entry(ptr noundef nonnull %5, i32 noundef 0) #7
  %49 = getelementptr inbounds %struct.sti_cpt_ddata, ptr %9, i32 0, i32 3
  %50 = call i32 @prepare_to_wait_event(ptr noundef %49, ptr noundef nonnull %5, i32 noundef 1) #7
  %51 = load i32, ptr %19, align 4
  %52 = icmp ugt i32 %51, 1
  %53 = xor i1 %52, true
  %54 = icmp ne i32 %48, 0
  %55 = select i1 %53, i1 true, i1 %54
  %56 = select i1 %55, i32 %48, i32 1
  %57 = icmp eq i32 %56, 0
  %58 = select i1 %52, i1 true, i1 %57
  br i1 %58, label %74, label %59

59:                                               ; preds = %63, %47
  %60 = phi i32 [ %71, %63 ], [ %56, %47 ]
  %61 = phi i32 [ %65, %63 ], [ %50, %47 ]
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %59
  %64 = call i32 @schedule_timeout(i32 noundef %60) #7
  %65 = call i32 @prepare_to_wait_event(ptr noundef %49, ptr noundef nonnull %5, i32 noundef 1) #7
  %66 = load i32, ptr %19, align 4
  %67 = icmp ugt i32 %66, 1
  %68 = xor i1 %67, true
  %69 = icmp ne i32 %64, 0
  %70 = select i1 %68, i1 true, i1 %69
  %71 = select i1 %70, i32 %64, i32 1
  %72 = icmp eq i32 %71, 0
  %73 = select i1 %67, i1 true, i1 %72
  br i1 %73, label %74, label %59

74:                                               ; preds = %63, %47
  %75 = phi i32 [ %56, %47 ], [ %71, %63 ]
  call void @finish_wait(ptr noundef %49, ptr noundef nonnull %5) #7
  br label %76

76:                                               ; preds = %74, %59
  %77 = phi i32 [ %75, %74 ], [ %61, %59 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #7
  br label %78

78:                                               ; preds = %76, %37
  %79 = phi i32 [ %44, %37 ], [ %77, %76 ]
  %80 = load ptr, ptr %20, align 4
  %81 = load i32, ptr %11, align 8
  %82 = shl i32 %81, 2
  %83 = add i32 %82, 48
  %84 = call i32 @regmap_write(ptr noundef %80, i32 noundef %83, i32 noundef 0) #7
  %85 = icmp eq i32 %79, -512
  br i1 %85, label %108, label %86

86:                                               ; preds = %78
  %87 = load i32, ptr %19, align 4
  switch i32 %87, label %107 [
    i32 0, label %88
    i32 1, label %88
    i32 2, label %90
  ]

88:                                               ; preds = %86, %86
  store i32 0, ptr %2, align 4
  %89 = getelementptr inbounds %struct.pwm_capture, ptr %2, i32 0, i32 1
  store i32 0, ptr %89, align 4
  br label %108

90:                                               ; preds = %86
  %91 = getelementptr [3 x i32], ptr %9, i32 0, i32 1
  %92 = load i32, ptr %91, align 4
  %93 = load i32, ptr %9, align 4
  %94 = sub i32 %92, %93
  %95 = getelementptr [3 x i32], ptr %9, i32 0, i32 2
  %96 = load i32, ptr %95, align 4
  %97 = sub i32 %96, %92
  %98 = getelementptr i8, ptr %0, i32 -36
  %99 = load ptr, ptr %98, align 4
  %100 = call i32 @clk_get_rate(ptr noundef %99) #7
  %101 = add i32 %97, %94
  %102 = mul i32 %101, 1000000000
  %103 = udiv i32 %102, %100
  store i32 %103, ptr %2, align 4
  %104 = mul i32 %94, 1000000000
  %105 = getelementptr inbounds %struct.pwm_capture, ptr %2, i32 0, i32 1
  %106 = udiv i32 %104, %100
  store i32 %106, ptr %105, align 4
  br label %108

107:                                              ; preds = %86
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.18) #8
  br label %108

108:                                              ; preds = %107, %90, %88, %78, %35
  %109 = phi i32 [ %33, %35 ], [ -512, %78 ], [ %79, %107 ], [ %79, %90 ], [ %79, %88 ]
  %110 = load ptr, ptr %31, align 4
  %111 = call i32 @regmap_field_update_bits_base(ptr noundef %110, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @mutex_unlock(ptr noundef %18) #7
  br label %112

112:                                              ; preds = %108, %16
  %113 = phi i32 [ -22, %16 ], [ %109, %108 ]
  ret i32 %113
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_pwm_config(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr i8, ptr %0, i32 -44
  %6 = getelementptr i8, ptr %0, i32 -28
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %0, i32 36
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %0, i32 40
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @__sw_hweight32(i32 noundef %11) #7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %4
  %15 = sext i32 %3 to i64
  %16 = getelementptr inbounds %struct.pwm_device, ptr %9, i32 0, i32 7
  %17 = load i64, ptr %16, align 8
  %18 = icmp eq i64 %17, %15
  %19 = icmp eq i32 %12, 1
  br i1 %19, label %20, label %28

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 2
  %22 = load i32, ptr %21, align 8
  %23 = getelementptr inbounds %struct.pwm_device, ptr %9, i32 0, i32 2
  %24 = load i32, ptr %23, align 8
  %25 = icmp ne i32 %22, %24
  %26 = xor i1 %18, true
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %98, label %29

28:                                               ; preds = %14
  br i1 %18, label %29, label %98

29:                                               ; preds = %28, %20, %4
  %30 = phi i1 [ true, %28 ], [ %18, %20 ], [ false, %4 ]
  %31 = getelementptr i8, ptr %0, i32 -40
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 @clk_enable(ptr noundef %32) #7
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %98

35:                                               ; preds = %29
  %36 = getelementptr i8, ptr %0, i32 -36
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 @clk_enable(ptr noundef %37) #7
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %98

40:                                               ; preds = %35
  br i1 %30, label %77, label %41

41:                                               ; preds = %40
  %42 = load ptr, ptr %6, align 4
  %43 = load ptr, ptr %31, align 4
  %44 = tail call i32 @clk_get_rate(ptr noundef %43) #7
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.19) #8
  br label %94

48:                                               ; preds = %41
  %49 = udiv i32 1000000000, %44
  %50 = getelementptr inbounds %struct.sti_pwm_compat_data, ptr %42, i32 0, i32 3
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, 1
  %53 = mul i32 %52, %49
  %54 = freeze i32 %53
  %55 = udiv i32 %3, %54
  %56 = mul i32 %55, %54
  %57 = sub i32 %3, %56
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %94

59:                                               ; preds = %48
  %60 = add i32 %55, -1
  %61 = getelementptr inbounds %struct.sti_pwm_compat_data, ptr %42, i32 0, i32 4
  %62 = load i32, ptr %61, align 4
  %63 = icmp ugt i32 %60, %62
  br i1 %63, label %94, label %64

64:                                               ; preds = %59
  %65 = and i32 %60, 15
  %66 = getelementptr i8, ptr %0, i32 -24
  %67 = load ptr, ptr %66, align 4
  %68 = tail call i32 @regmap_field_update_bits_base(ptr noundef %67, i32 noundef -1, i32 noundef %65, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %94

70:                                               ; preds = %64
  %71 = lshr i32 %60, 4
  %72 = and i32 %71, 15
  %73 = getelementptr i8, ptr %0, i32 -20
  %74 = load ptr, ptr %73, align 4
  %75 = tail call i32 @regmap_field_update_bits_base(ptr noundef %74, i32 noundef -1, i32 noundef %72, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %94

77:                                               ; preds = %70, %40
  %78 = getelementptr inbounds %struct.sti_pwm_compat_data, ptr %7, i32 0, i32 3
  %79 = load i32, ptr %78, align 4
  %80 = mul i32 %79, %2
  %81 = udiv i32 %80, %3
  %82 = getelementptr i8, ptr %0, i32 -32
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 2
  %85 = load i32, ptr %84, align 8
  %86 = shl i32 %85, 2
  %87 = tail call i32 @regmap_write(ptr noundef %83, i32 noundef %86, i32 noundef %81) #7
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %77
  %90 = getelementptr i8, ptr %0, i32 -8
  %91 = load ptr, ptr %90, align 4
  %92 = tail call i32 @regmap_field_update_bits_base(ptr noundef %91, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %93 = load i32, ptr %84, align 8
  tail call void @_set_bit(i32 noundef %93, ptr noundef %10) #7
  store ptr %1, ptr %8, align 4
  br label %94

94:                                               ; preds = %89, %77, %70, %64, %59, %48, %46
  %95 = phi i32 [ %87, %77 ], [ %92, %89 ], [ %68, %64 ], [ %75, %70 ], [ -22, %46 ], [ -22, %48 ], [ -22, %59 ]
  %96 = load ptr, ptr %31, align 4
  tail call void @clk_disable(ptr noundef %96) #7
  %97 = load ptr, ptr %36, align 4
  tail call void @clk_disable(ptr noundef %97) #7
  br label %98

98:                                               ; preds = %94, %35, %29, %28, %20
  %99 = phi i32 [ %95, %94 ], [ %33, %29 ], [ %38, %35 ], [ -22, %28 ], [ -22, %20 ]
  ret i32 %99
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_pwm_enable(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -44
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 48
  tail call void @mutex_lock(ptr noundef %5) #7
  %6 = getelementptr i8, ptr %0, i32 44
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %29

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %0, i32 -40
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @clk_enable(ptr noundef %11) #7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %9
  %15 = getelementptr i8, ptr %0, i32 -36
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @clk_enable(ptr noundef %16) #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %14
  %20 = getelementptr i8, ptr %0, i32 -16
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @regmap_field_update_bits_base(ptr noundef %21, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, ptr %6, align 4
  br label %29

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 2
  %28 = load i32, ptr %27, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.20, i32 noundef %28, i32 noundef %22) #8
  br label %32

29:                                               ; preds = %24, %2
  %30 = phi i32 [ %25, %24 ], [ %7, %2 ]
  %31 = add i32 %30, 1
  store i32 %31, ptr %6, align 4
  br label %32

32:                                               ; preds = %29, %26, %14, %9
  %33 = phi i32 [ 0, %29 ], [ %12, %9 ], [ %17, %14 ], [ %22, %26 ]
  tail call void @mutex_unlock(ptr noundef %5) #7
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sti_pwm_disable(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 48
  tail call void @mutex_lock(ptr noundef %3) #7
  %4 = getelementptr i8, ptr %0, i32 44
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, -1
  store i32 %6, ptr %4, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = getelementptr i8, ptr %0, i32 -16
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @regmap_field_update_bits_base(ptr noundef %10, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %12 = getelementptr i8, ptr %0, i32 -40
  %13 = load ptr, ptr %12, align 4
  tail call void @clk_disable(ptr noundef %13) #7
  %14 = getelementptr i8, ptr %0, i32 -36
  %15 = load ptr, ptr %14, align 4
  tail call void @clk_disable(ptr noundef %15) #7
  br label %16

16:                                               ; preds = %8, %2
  tail call void @mutex_unlock(ptr noundef %3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_update_bits_base(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pwmchip_remove(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
