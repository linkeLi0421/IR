; ModuleID = '/llk/IR/drivers/iio/dac/stm32-dac.c_pt.bc'
source_filename = "../drivers/iio/dac/stm32-dac.c"
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
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.5, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.5 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_chan_spec_ext_info = type { ptr, i32, ptr, ptr, i32 }
%struct.iio_enum = type { ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.stm32_dac = type { ptr, %struct.mutex }
%struct.stm32_dac_common = type { ptr, i32, i8 }

@stm32_dac_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32-dac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_alias173 = internal constant [25 x i8] c"alias=platform:stm32-dac\00", section ".modinfo", align 1
@__UNIQUE_ID_author174 = internal constant [48 x i8] c"author=Amelie Delaunay <amelie.delaunay@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description175 = internal constant [48 x i8] c"description=STMicroelectronics STM32 DAC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license176 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@stm32_dac_driver = internal global %struct.platform_driver { ptr @stm32_dac_probe, ptr @stm32_dac_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_dac_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_dac_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [10 x i8] c"stm32-dac\00", align 1
@stm32_dac_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @stm32_dac_suspend, ptr @pm_runtime_force_resume, ptr @stm32_dac_suspend, ptr @pm_runtime_force_resume, ptr @stm32_dac_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@stm32_dac_iio_info = internal constant %struct.iio_info { ptr null, ptr null, ptr @stm32_dac_read_raw, ptr null, ptr null, ptr @stm32_dac_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_dac_debugfs_reg_access, ptr null, ptr null, ptr null }, align 4
@stm32_dac_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"&dac->lock\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Failed to read reg property\0A\00", align 1
@stm32_dac_channels = internal constant [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 0, %struct.anon.5 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @stm32_dac_ext_info, ptr null, ptr @.str.5, i8 6 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 0, i32 0, %struct.anon.5 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @stm32_dac_ext_info, ptr null, ptr @.str.6, i8 6 }], align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"Invalid reg property\0A\00", align 1
@stm32_dac_ext_info = internal constant [4 x %struct.iio_chan_spec_ext_info] [%struct.iio_chan_spec_ext_info { ptr @.str.7, i32 0, ptr @stm32_dac_read_powerdown, ptr @stm32_dac_write_powerdown, i32 0 }, %struct.iio_chan_spec_ext_info { ptr @.str.8, i32 0, ptr @iio_enum_read, ptr @iio_enum_write, i32 ptrtoint (ptr @stm32_dac_powerdown_mode_en to i32) }, %struct.iio_chan_spec_ext_info { ptr @.str.9, i32 1, ptr @iio_enum_available_read, ptr null, i32 ptrtoint (ptr @stm32_dac_powerdown_mode_en to i32) }, %struct.iio_chan_spec_ext_info zeroinitializer], align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"out1\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"out2\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"powerdown\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"powerdown_mode\00", align 1
@stm32_dac_powerdown_mode_en = internal constant %struct.iio_enum { ptr @stm32_dac_powerdown_modes, i32 1, ptr @stm32_dac_set_powerdown_mode, ptr @stm32_dac_get_powerdown_mode }, align 4
@.str.9 = private unnamed_addr constant [25 x i8] c"powerdown_mode_available\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"%s failed\0A\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"Enable\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"Disable\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@stm32_dac_powerdown_modes = internal constant [1 x ptr] [ptr @.str.14], align 4
@.str.14 = private unnamed_addr constant [12 x i8] c"three_state\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias173, ptr @__UNIQUE_ID_author174, ptr @__UNIQUE_ID_description175, ptr @__UNIQUE_ID_license176], section "llvm.metadata"

@__mod_of__stm32_dac_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @stm32_dac_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_dac_driver, ptr noundef nonnull @__this_module) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_dac_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_dac_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %60, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @devm_iio_device_alloc(ptr noundef %3, i32 noundef 24) #7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %60, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %8, ptr %11, align 8
  %12 = getelementptr inbounds %struct.iio_dev, ptr %8, i32 0, i32 19
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 8
  %17 = load ptr, ptr %16, align 8
  store ptr %17, ptr %13, align 4
  %18 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %10
  %22 = load ptr, ptr %3, align 4
  br label %23

23:                                               ; preds = %21, %10
  %24 = phi ptr [ %22, %21 ], [ %19, %10 ]
  %25 = getelementptr inbounds %struct.iio_dev, ptr %8, i32 0, i32 15
  store ptr %24, ptr %25, align 8
  %26 = load ptr, ptr %4, align 8
  %27 = getelementptr inbounds %struct.iio_dev, ptr %8, i32 0, i32 2, i32 25
  store ptr %26, ptr %27, align 8
  %28 = getelementptr inbounds %struct.iio_dev, ptr %8, i32 0, i32 17
  store ptr @stm32_dac_iio_info, ptr %28, align 8
  store i32 1, ptr %8, align 8
  %29 = getelementptr inbounds %struct.stm32_dac, ptr %13, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %29, ptr noundef nonnull @.str.1, ptr noundef nonnull @stm32_dac_probe.__key) #7
  %30 = getelementptr inbounds %struct.iio_dev, ptr %8, i32 0, i32 2
  %31 = load ptr, ptr %27, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %32 = call i32 @of_property_read_variable_u32_array(ptr noundef %31, ptr noundef nonnull @.str.2, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #7
  %33 = icmp sgt i32 %32, -1
  br i1 %33, label %34, label %37

34:                                               ; preds = %23
  %35 = load i32, ptr %2, align 4
  switch i32 %35, label %37 [
    i32 1, label %40
    i32 2, label %36
  ]

36:                                               ; preds = %34
  br label %40

37:                                               ; preds = %34, %23
  %38 = phi ptr [ @.str.3, %23 ], [ @.str.4, %34 ]
  %39 = phi i32 [ %32, %23 ], [ -22, %34 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull %38) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  br label %60

40:                                               ; preds = %36, %34
  %41 = phi i32 [ 0, %34 ], [ 1, %36 ]
  %42 = getelementptr [2 x %struct.iio_chan_spec], ptr @stm32_dac_channels, i32 0, i32 %41
  %43 = getelementptr inbounds %struct.iio_dev, ptr %8, i32 0, i32 13
  store ptr %42, ptr %43, align 8
  %44 = getelementptr inbounds %struct.iio_dev, ptr %8, i32 0, i32 14
  store i32 1, ptr %44, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  %45 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %45) #7, !srcloc !9
  %46 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %45, ptr %45, i32 1, ptr elementtype(i32) %45) #7, !srcloc !10
  %47 = call i32 @__pm_runtime_set_status(ptr noundef %3, i32 noundef 0) #7
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %3, i32 noundef 2000) #7
  call void @__pm_runtime_use_autosuspend(ptr noundef %3, i1 noundef zeroext true) #7
  call void @pm_runtime_enable(ptr noundef %3) #7
  %48 = call i32 @__iio_device_register(ptr noundef nonnull %8, ptr noundef nonnull @__this_module) #7
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %40
  %51 = call i64 @ktime_get_mono_fast_ns() #7
  %52 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 22
  store volatile i64 %51, ptr %52, align 8
  %53 = call i32 @__pm_runtime_suspend(ptr noundef %3, i32 noundef 13) #7
  br label %60

54:                                               ; preds = %40
  call void @__pm_runtime_disable(ptr noundef %3, i1 noundef zeroext true) #7
  %55 = call i32 @__pm_runtime_set_status(ptr noundef %3, i32 noundef 2) #7
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %45) #7, !srcloc !9
  %56 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %45, ptr %45, i32 0, i32 -1, ptr elementtype(i32) %45) #7, !srcloc !12
  %57 = extractvalue { i32, i32, i32 } %56, 0
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !13
  br label %60

60:                                               ; preds = %59, %54, %50, %37, %7, %1
  %61 = phi i32 [ 0, %50 ], [ -19, %1 ], [ -12, %7 ], [ %39, %37 ], [ %48, %54 ], [ %48, %59 ]
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_dac_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #7
  tail call void @iio_device_unregister(ptr noundef %3) #7
  tail call void @__pm_runtime_disable(ptr noundef %4, i1 noundef zeroext true) #7
  %6 = tail call i32 @__pm_runtime_set_status(ptr noundef %4, i32 noundef 2) #7
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #7, !srcloc !9
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 0, i32 -1, ptr elementtype(i32) %7) #7, !srcloc !12
  %9 = extractvalue { i32, i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !13
  br label %12

12:                                               ; preds = %11, %1
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_dac_read_raw(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef writeonly %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %7 = load ptr, ptr %6, align 8
  switch i32 %4, label %26 [
    i32 0, label %8
    i32 2, label %19
  ]

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  %13 = load ptr, ptr %7, align 4
  %14 = load ptr, ptr %13, align 4
  %15 = select i1 %12, i32 48, i32 44
  %16 = tail call i32 @regmap_read(ptr noundef %14, i32 noundef %15, ptr noundef %2) #7
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 1, i32 %16
  br label %26

19:                                               ; preds = %5
  %20 = load ptr, ptr %7, align 4
  %21 = getelementptr inbounds %struct.stm32_dac_common, ptr %20, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  store i32 %22, ptr %2, align 4
  %23 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 5, i32 1
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  store i32 %25, ptr %3, align 4
  br label %26

26:                                               ; preds = %19, %8, %5
  %27 = phi i32 [ 11, %19 ], [ %18, %8 ], [ -22, %5 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_dac_write_raw(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  %14 = load ptr, ptr %9, align 4
  %15 = load ptr, ptr %14, align 4
  %16 = select i1 %13, i32 20, i32 8
  %17 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef %16, i32 noundef %2) #7
  br label %18

18:                                               ; preds = %7, %5
  %19 = phi i32 [ %17, %7 ], [ -22, %5 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_dac_debugfs_reg_access(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #2 {
  %5 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %3, null
  %8 = load ptr, ptr %6, align 4
  %9 = load ptr, ptr %8, align 4
  br i1 %7, label %10, label %12

10:                                               ; preds = %4
  %11 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef %1, i32 noundef %2) #7
  br label %14

12:                                               ; preds = %4
  %13 = tail call i32 @regmap_read(ptr noundef %9, i32 noundef %1, ptr noundef nonnull %3) #7
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %13, %12 ], [ %11, %10 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_dac_read_powerdown(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #2 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.iio_chan_spec, ptr %2, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !8
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %10, align 4
  %12 = call i32 @regmap_read(ptr noundef %11, i32 noundef 0, ptr noundef nonnull %5) #7
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  br label %24

15:                                               ; preds = %4
  %16 = and i32 %7, 1
  %17 = icmp eq i32 %16, 0
  %18 = load i32, ptr %5, align 4
  %19 = lshr i32 %18, 16
  %20 = select i1 %17, i32 %19, i32 %18
  %21 = and i32 %20, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  %22 = xor i32 %21, 1
  %23 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %3, ptr noundef nonnull @.str.10, i32 noundef %22) #7
  br label %24

24:                                               ; preds = %15, %14
  %25 = phi i32 [ %23, %15 ], [ %12, %14 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_dac_write_powerdown(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i32 noundef %4) #2 {
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #7
  store i8 0, ptr %7, align 1, !annotation !8
  %8 = call i32 @kstrtobool(ptr noundef %3, ptr noundef nonnull %7) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %77

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.iio_chan_spec, ptr %2, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = load i8, ptr %7, align 1, !range !14
  %14 = icmp eq i8 %13, 0
  %15 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2
  %18 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = and i32 %12, 1
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 65536, i32 1
  %23 = select i1 %14, i32 %22, i32 0
  %24 = getelementptr inbounds %struct.stm32_dac, ptr %16, i32 0, i32 1
  call void @mutex_lock(ptr noundef %24) #7
  %25 = load ptr, ptr %15, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !annotation !8
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %26, align 4
  %28 = call i32 @regmap_read(ptr noundef %27, i32 noundef 0, ptr noundef nonnull %6) #7
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  br label %72

31:                                               ; preds = %10
  %32 = load i32, ptr %6, align 4
  %33 = lshr i32 %32, 16
  %34 = select i1 %21, i32 %33, i32 %32
  %35 = and i32 %34, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  %36 = icmp eq i32 %35, 0
  %37 = xor i1 %14, %36
  br i1 %37, label %72, label %38

38:                                               ; preds = %31
  br i1 %14, label %39, label %49

39:                                               ; preds = %38
  %40 = call i32 @__pm_runtime_resume(ptr noundef %19, i32 noundef 4) #7
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 11, i32 13
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %43) #7, !srcloc !9
  %44 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %43, ptr %43, i32 0, i32 -1, ptr elementtype(i32) %43) #7, !srcloc !12
  %45 = extractvalue { i32, i32, i32 } %44, 0
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !13
  br label %48

48:                                               ; preds = %47, %42
  call void @mutex_unlock(ptr noundef %24) #7
  br label %77

49:                                               ; preds = %39, %38
  %50 = load ptr, ptr %16, align 4
  %51 = load ptr, ptr %50, align 4
  %52 = call i32 @regmap_update_bits_base(ptr noundef %51, i32 noundef 0, i32 noundef %22, i32 noundef %23, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @mutex_unlock(ptr noundef %24) #7
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = select i1 %14, ptr @.str.12, ptr @.str.13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.11, ptr noundef nonnull %55) #8
  br i1 %14, label %68, label %77

56:                                               ; preds = %49
  br i1 %14, label %57, label %64

57:                                               ; preds = %56
  %58 = load ptr, ptr %16, align 4
  %59 = getelementptr inbounds %struct.stm32_dac_common, ptr %58, i32 0, i32 2
  %60 = load i8, ptr %59, align 4, !range !14
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %76, label %62

62:                                               ; preds = %57
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %63(i32 noundef 214748) #7
  br label %76

64:                                               ; preds = %56
  %65 = call i64 @ktime_get_mono_fast_ns() #7
  %66 = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 11, i32 22
  store volatile i64 %65, ptr %66, align 8
  %67 = call i32 @__pm_runtime_suspend(ptr noundef %19, i32 noundef 13) #7
  br label %76

68:                                               ; preds = %54
  %69 = call i64 @ktime_get_mono_fast_ns() #7
  %70 = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 11, i32 22
  store volatile i64 %69, ptr %70, align 8
  %71 = call i32 @__pm_runtime_suspend(ptr noundef %19, i32 noundef 13) #7
  br label %77

72:                                               ; preds = %31, %30
  %73 = phi i32 [ %28, %30 ], [ %35, %31 ]
  call void @mutex_unlock(ptr noundef %24) #7
  %74 = call i32 @llvm.smin.i32(i32 %73, i32 0) #7
  %75 = icmp sgt i32 %73, -1
  br i1 %75, label %76, label %77

76:                                               ; preds = %72, %64, %62, %57
  br label %77

77:                                               ; preds = %76, %72, %68, %54, %48, %5
  %78 = phi i32 [ %8, %5 ], [ %4, %76 ], [ %74, %72 ], [ %52, %54 ], [ %52, %68 ], [ %40, %48 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #7
  ret i32 %78
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_enum_read(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_enum_write(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_enum_available_read(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @stm32_dac_set_powerdown_mode(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2) #5 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @stm32_dac_get_powerdown_mode(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #5 {
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_dac_suspend(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.iio_dev, ptr %4, i32 0, i32 13
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.iio_chan_spec, ptr %6, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.iio_dev, ptr %4, i32 0, i32 19
  %10 = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %11, align 4
  %13 = call i32 @regmap_read(ptr noundef %12, i32 noundef 0, ptr noundef nonnull %2) #7
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %1
  %16 = and i32 %8, 1
  %17 = icmp eq i32 %16, 0
  %18 = load i32, ptr %2, align 4
  %19 = lshr i32 %18, 16
  %20 = select i1 %17, i32 %19, i32 %18
  %21 = and i32 %20, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %26

23:                                               ; preds = %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  br label %26

24:                                               ; preds = %15
  %25 = call i32 @pm_runtime_force_suspend(ptr noundef %0) #7
  br label %26

26:                                               ; preds = %24, %23, %15
  %27 = phi i32 [ %25, %24 ], [ %13, %23 ], [ -16, %15 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!9 = !{i64 456624, i64 2147946595, i64 2147946621, i64 2147946668, i64 2147946690, i64 2147946718, i64 2147946738}
!10 = !{i64 2147958807, i64 2147958833, i64 2147958862, i64 2147958896, i64 2147958927, i64 2147958950}
!11 = !{i64 2147958314}
!12 = !{i64 443193, i64 443218, i64 443240, i64 443256, i64 443268, i64 443288, i64 443312, i64 443328, i64 443340}
!13 = !{i64 2147958440}
!14 = !{i8 0, i8 2}
