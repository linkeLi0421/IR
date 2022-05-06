; ModuleID = '/llk/IR/drivers/i2c/busses/i2c-davinci.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-davinci.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.davinci_i2c_platform_data = type { i32, i32, i8, i8 }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_bus_recovery_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.davinci_i2c_dev = type { ptr, ptr, %struct.completion, ptr, i32, ptr, i32, i32, i32, i8, %struct.i2c_adapter, %struct.notifier_block, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.i2c_lock_operations = type { ptr, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__UNIQUE_ID_alias260 = internal constant [39 x i8] c"i2c_davinci.alias=platform:i2c_davinci\00", section ".modinfo", align 1
@__initcall__kmod_i2c_davinci__261_967_davinci_i2c_init_driver4 = internal global ptr @davinci_i2c_init_driver, section ".initcall4.init", align 4
@davinci_i2c_driver = internal global %struct.platform_driver { ptr @davinci_i2c_probe, ptr @davinci_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @davinci_i2c_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @davinci_i2c_pm, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_davinci_i2c_exit_driver = internal global ptr @davinci_i2c_exit_driver, section ".exitcall.exit", align 4
@__UNIQUE_ID_author262 = internal constant [43 x i8] c"i2c_davinci.author=Texas Instruments India\00", section ".modinfo", align 1
@__UNIQUE_ID_description263 = internal constant [51 x i8] c"i2c_davinci.description=TI DaVinci I2C bus adapter\00", section ".modinfo", align 1
@__UNIQUE_ID_file264 = internal constant [48 x i8] c"i2c_davinci.file=drivers/i2c/busses/i2c-davinci\00", section ".modinfo", align 1
@__UNIQUE_ID_license265 = internal constant [24 x i8] c"i2c_davinci.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [12 x i8] c"i2c_davinci\00", align 1
@davinci_i2c_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,davinci-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,keystone-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@davinci_i2c_pm = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @davinci_i2c_suspend, ptr @davinci_i2c_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"can't get irq resource\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Memory allocation failed\0A\00", align 1
@davinci_i2c_platform_data_default = internal global %struct.davinci_i2c_platform_data { i32 100, i32 0, i8 0, i8 0 }, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"ti,has-pfunc\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"failed to runtime_get device: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"failure requesting irq %i\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"failed to register cpufreq\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"DaVinci I2C adapter\00", align 1
@i2c_davinci_algo = internal constant %struct.i2c_algorithm { ptr @i2c_davinci_xfer, ptr null, ptr null, ptr null, ptr @i2c_davinci_func, ptr null, ptr null }, align 4
@davinci_i2c_scl_recovery_info = internal global %struct.i2c_bus_recovery_info { ptr @i2c_generic_scl_recovery, ptr @davinci_i2c_get_scl, ptr @davinci_i2c_set_scl, ptr @davinci_i2c_get_sda, ptr null, ptr null, ptr @davinci_i2c_scl_prepare_recovery, ptr @davinci_i2c_scl_unprepare_recovery, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@davinci_i2c_gpio_recovery_info = internal global %struct.i2c_bus_recovery_info { ptr @i2c_generic_scl_recovery, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @davinci_i2c_prepare_recovery, ptr @davinci_i2c_unprepare_recovery, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"scl\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"sda\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"ti,keystone-i2c\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"Too much work in one IRQ\0A\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"Unrecognized irq stat %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"RDR IRQ while no data requested\0A\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"Failed to runtime_get device: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"timeout waiting for bus ready\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.18 = private unnamed_addr constant [33 x i8] c"transfer to own address aborted\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.19 = private unnamed_addr constant [22 x i8] c"controller timed out\0A\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"abnormal termination buf_len=%zu\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias260, ptr @__UNIQUE_ID_author262, ptr @__UNIQUE_ID_description263, ptr @__UNIQUE_ID_file264, ptr @__UNIQUE_ID_license265, ptr @__exitcall_davinci_i2c_exit_driver, ptr @__initcall__kmod_i2c_davinci__261_967_davinci_i2c_init_driver4, ptr @davinci_i2c_exit_driver], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @davinci_i2c_init_driver() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @davinci_i2c_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @davinci_i2c_exit_driver() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @davinci_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @davinci_i2c_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #8
  %4 = icmp slt i32 %3, 1
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = icmp eq i32 %3, 0
  %7 = select i1 %6, i32 -6, i32 %3
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %9 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %8, i32 noundef %7, ptr noundef nonnull @.str.1) #8
  br label %153

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %12 = tail call noalias ptr @devm_kmalloc(ptr noundef %11, i32 noundef 728, i32 noundef 3520) #8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.2) #9
  br label %153

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %12, i32 0, i32 2
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %12, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %17, ptr noundef nonnull @.str.11, ptr noundef nonnull @init_completion.__key) #8
  store ptr %11, ptr %12, align 8
  %18 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %12, i32 0, i32 7
  store i32 %3, ptr %18, align 8
  %19 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %12, i32 0, i32 12
  store ptr %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %12, ptr %22, align 8
  %23 = icmp eq ptr %20, null
  br i1 %23, label %24, label %47

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %46, label %28

28:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  %29 = tail call noalias ptr @devm_kmalloc(ptr noundef %11, i32 noundef 12, i32 noundef 3520) #8
  store ptr %29, ptr %21, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %152, label %31

31:                                               ; preds = %28
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %29, ptr noundef nonnull align 4 dereferenceable(12) @davinci_i2c_platform_data_default, i32 12, i1 false)
  %32 = load ptr, ptr %25, align 8
  %33 = call i32 @of_property_read_variable_u32_array(ptr noundef %32, ptr noundef nonnull @.str.3, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #8
  %34 = icmp sgt i32 %33, -1
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i32, ptr %2, align 4
  %37 = udiv i32 %36, 1000
  %38 = load ptr, ptr %21, align 4
  store i32 %37, ptr %38, align 4
  br label %39

39:                                               ; preds = %35, %31
  %40 = load ptr, ptr %25, align 8
  %41 = call ptr @of_find_property(ptr noundef %40, ptr noundef nonnull @.str.4, ptr noundef null) #8
  %42 = icmp ne ptr %41, null
  %43 = load ptr, ptr %21, align 4
  %44 = getelementptr inbounds %struct.davinci_i2c_platform_data, ptr %43, i32 0, i32 3
  %45 = zext i1 %42 to i8
  store i8 %45, ptr %44, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  br label %47

46:                                               ; preds = %24
  store ptr @davinci_i2c_platform_data_default, ptr %21, align 4
  br label %47

47:                                               ; preds = %46, %39, %15
  %48 = call ptr @devm_clk_get(ptr noundef %11, ptr noundef null) #8
  %49 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %12, i32 0, i32 3
  store ptr %48, ptr %49, align 8
  %50 = icmp ugt ptr %48, inttoptr (i32 -4096 to ptr)
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = ptrtoint ptr %48 to i32
  br label %153

53:                                               ; preds = %47
  %54 = call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #8
  %55 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %12, i32 0, i32 1
  store ptr %54, ptr %55, align 4
  %56 = icmp ugt ptr %54, inttoptr (i32 -4096 to ptr)
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = ptrtoint ptr %54 to i32
  br label %153

59:                                               ; preds = %53
  %60 = load ptr, ptr %12, align 8
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %60, i32 noundef 1000) #8
  %61 = load ptr, ptr %12, align 8
  call void @__pm_runtime_use_autosuspend(ptr noundef %61, i1 noundef zeroext true) #8
  %62 = load ptr, ptr %12, align 8
  call void @pm_runtime_enable(ptr noundef %62) #8
  %63 = load ptr, ptr %12, align 8
  %64 = call i32 @__pm_runtime_resume(ptr noundef %63, i32 noundef 4) #8
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %59
  %67 = load ptr, ptr %12, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.5, i32 noundef %64) #9
  %68 = load ptr, ptr %12, align 8
  %69 = getelementptr inbounds %struct.device, ptr %68, i32 0, i32 11, i32 13
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !9
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %69) #8, !srcloc !10
  %70 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %69, ptr %69, i32 0, i32 -1, ptr elementtype(i32) %69) #8, !srcloc !11
  %71 = extractvalue { i32, i32, i32 } %70, 0
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %153, label %73

73:                                               ; preds = %66
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  br label %153

74:                                               ; preds = %59
  %75 = load ptr, ptr %55, align 4
  %76 = getelementptr i8, ptr %75, i32 36
  %77 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %76) #8, !srcloc !13
  %78 = and i16 %77, -33
  %79 = load ptr, ptr %55, align 4
  %80 = getelementptr i8, ptr %79, i32 36
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %80, i16 %78) #8, !srcloc !14
  call fastcc void @i2c_davinci_calc_clk_dividers(ptr noundef nonnull %12) #8
  %81 = load ptr, ptr %55, align 4
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %81, i16 8) #8, !srcloc !14
  %82 = load ptr, ptr %55, align 4
  %83 = getelementptr i8, ptr %82, i32 36
  %84 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %83) #8, !srcloc !13
  %85 = or i16 %84, 32
  %86 = load ptr, ptr %55, align 4
  %87 = getelementptr i8, ptr %86, i32 36
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %87, i16 %85) #8, !srcloc !14
  %88 = load ptr, ptr %55, align 4
  %89 = getelementptr i8, ptr %88, i32 4
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %89, i16 39) #8, !srcloc !14
  %90 = load i32, ptr %18, align 8
  %91 = load ptr, ptr %0, align 8
  %92 = call i32 @devm_request_threaded_irq(ptr noundef %11, i32 noundef %90, ptr noundef nonnull @i2c_davinci_isr, ptr noundef null, i32 noundef 0, ptr noundef %91, ptr noundef nonnull %12) #8
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %74
  %95 = load i32, ptr %18, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.6, i32 noundef %95) #9
  br label %146

96:                                               ; preds = %74
  %97 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %12, i32 0, i32 11
  store ptr @i2c_davinci_cpufreq_transition, ptr %97, align 8
  %98 = call i32 @cpufreq_register_notifier(ptr noundef %97, i32 noundef 0) #8
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %96
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.7) #9
  br label %146

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %12, i32 0, i32 10
  %103 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %12, i32 0, i32 10, i32 9, i32 8
  store ptr %12, ptr %103, align 8
  store ptr null, ptr %102, align 8
  %104 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %12, i32 0, i32 10, i32 1
  store i32 256, ptr %104, align 4
  %105 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %12, i32 0, i32 10, i32 12
  %106 = call i32 @strlcpy(ptr noundef %105, ptr noundef nonnull @.str.8, i32 noundef 48) #8
  %107 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %12, i32 0, i32 10, i32 2
  store ptr @i2c_davinci_algo, ptr %107, align 8
  %108 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %12, i32 0, i32 10, i32 9, i32 1
  store ptr %11, ptr %108, align 4
  %109 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %12, i32 0, i32 10, i32 7
  store i32 100, ptr %109, align 4
  %110 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %111 = load ptr, ptr %110, align 8
  %112 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %12, i32 0, i32 10, i32 9, i32 25
  store ptr %111, ptr %112, align 8
  %113 = load ptr, ptr %21, align 4
  %114 = getelementptr inbounds %struct.davinci_i2c_platform_data, ptr %113, i32 0, i32 3
  %115 = load i8, ptr %114, align 1, !range !15
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %101
  %118 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %12, i32 0, i32 10, i32 16
  store ptr @davinci_i2c_scl_recovery_info, ptr %118, align 4
  br label %134

119:                                              ; preds = %101
  %120 = getelementptr inbounds %struct.davinci_i2c_platform_data, ptr %113, i32 0, i32 2
  %121 = load i8, ptr %120, align 4, !range !15
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %134, label %123

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %12, i32 0, i32 10, i32 16
  store ptr @davinci_i2c_gpio_recovery_info, ptr %124, align 4
  %125 = call ptr @devm_gpiod_get(ptr noundef %11, ptr noundef nonnull @.str.9, i32 noundef 15) #8
  store ptr %125, ptr getelementptr inbounds (%struct.i2c_bus_recovery_info, ptr @davinci_i2c_gpio_recovery_info, i32 0, i32 8), align 4
  %126 = icmp ugt ptr %125, inttoptr (i32 -4096 to ptr)
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = ptrtoint ptr %125 to i32
  br label %146

129:                                              ; preds = %123
  %130 = call ptr @devm_gpiod_get(ptr noundef %11, ptr noundef nonnull @.str.10, i32 noundef 1) #8
  store ptr %130, ptr getelementptr inbounds (%struct.i2c_bus_recovery_info, ptr @davinci_i2c_gpio_recovery_info, i32 0, i32 9), align 4
  %131 = icmp ugt ptr %130, inttoptr (i32 -4096 to ptr)
  br i1 %131, label %132, label %134

132:                                              ; preds = %129
  %133 = ptrtoint ptr %130 to i32
  br label %146

134:                                              ; preds = %129, %119, %117
  %135 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  %136 = load i32, ptr %135, align 4
  %137 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %12, i32 0, i32 10, i32 11
  store i32 %136, ptr %137, align 4
  %138 = call i32 @i2c_add_numbered_adapter(ptr noundef %102) #8
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %134
  %141 = load ptr, ptr %12, align 8
  %142 = call i64 @ktime_get_mono_fast_ns() #8
  %143 = getelementptr inbounds %struct.device, ptr %141, i32 0, i32 11, i32 22
  store volatile i64 %142, ptr %143, align 8
  %144 = load ptr, ptr %12, align 8
  %145 = call i32 @__pm_runtime_suspend(ptr noundef %144, i32 noundef 13) #8
  br label %153

146:                                              ; preds = %134, %132, %127, %100, %94
  %147 = phi i32 [ %92, %94 ], [ %98, %100 ], [ %138, %134 ], [ %128, %127 ], [ %133, %132 ]
  %148 = load ptr, ptr %12, align 8
  call void @__pm_runtime_use_autosuspend(ptr noundef %148, i1 noundef zeroext false) #8
  %149 = load ptr, ptr %12, align 8
  %150 = call i32 @__pm_runtime_idle(ptr noundef %149, i32 noundef 4) #8
  %151 = load ptr, ptr %12, align 8
  call void @__pm_runtime_disable(ptr noundef %151, i1 noundef zeroext true) #8
  br label %153

152:                                              ; preds = %28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  br label %153

153:                                              ; preds = %152, %146, %140, %73, %66, %57, %51, %14, %5
  %154 = phi i32 [ %9, %5 ], [ %52, %51 ], [ %58, %57 ], [ %147, %146 ], [ 0, %140 ], [ -12, %14 ], [ -12, %152 ], [ %64, %66 ], [ %64, %73 ]
  ret i32 %154
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @davinci_i2c_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %3, i32 0, i32 11
  %5 = tail call i32 @cpufreq_unregister_notifier(ptr noundef %4, i32 noundef 0) #8
  %6 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %3, i32 0, i32 10
  tail call void @i2c_del_adapter(ptr noundef %6) #8
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %8 = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #8
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #8, !srcloc !10
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 0, i32 -1, ptr elementtype(i32) %11) #8, !srcloc !11
  %13 = extractvalue { i32, i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  br label %24

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %3, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 36
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %19, i16 0) #8, !srcloc !14
  %20 = load ptr, ptr %3, align 8
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %20, i1 noundef zeroext false) #8
  %21 = load ptr, ptr %3, align 8
  %22 = tail call i32 @__pm_runtime_idle(ptr noundef %21, i32 noundef 4) #8
  %23 = load ptr, ptr %3, align 8
  tail call void @__pm_runtime_disable(ptr noundef %23, i1 noundef zeroext true) #8
  br label %24

24:                                               ; preds = %16, %15, %10
  %25 = phi i32 [ 0, %16 ], [ %8, %10 ], [ %8, %15 ]
  ret i32 %25
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @i2c_davinci_init(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 36
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %4) #8, !srcloc !13
  %6 = and i16 %5, -33
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 36
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %8, i16 %6) #8, !srcloc !14
  tail call fastcc void @i2c_davinci_calc_clk_dividers(ptr noundef %0)
  %9 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %9, i16 8) #8, !srcloc !14
  %10 = load ptr, ptr %2, align 4
  %11 = getelementptr i8, ptr %10, i32 36
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %11) #8, !srcloc !13
  %13 = or i16 %12, 32
  %14 = load ptr, ptr %2, align 4
  %15 = getelementptr i8, ptr %14, i32 36
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %15, i16 %13) #8, !srcloc !14
  %16 = load ptr, ptr %2, align 4
  %17 = getelementptr i8, ptr %16, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %17, i16 39) #8, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2c_davinci_isr(i32 noundef %0, ptr noundef %1) #2 {
  %3 = load ptr, ptr %1, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 11, i32 18
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 11, i32 15
  %9 = load i16, ptr %8, align 8
  %10 = and i16 %9, 7
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %129, label %12

12:                                               ; preds = %7, %2
  %13 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %1, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 40
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %15) #8, !srcloc !13
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %126, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %1, i32 0, i32 2
  %20 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %1, i32 0, i32 6
  %21 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %1, i32 0, i32 5
  %22 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %1, i32 0, i32 9
  %23 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %1, i32 0, i32 8
  %24 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %1, i32 0, i32 4
  br label %25

25:                                               ; preds = %121, %18
  %26 = phi i16 [ %16, %18 ], [ %124, %121 ]
  %27 = phi i32 [ 0, %18 ], [ %29, %121 ]
  %28 = zext i16 %26 to i32
  %29 = add nuw nsw i32 %27, 1
  %30 = icmp eq i32 %27, 100
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %32, ptr noundef nonnull @.str.13) #9
  br label %126

33:                                               ; preds = %25
  switch i16 %26, label %119 [
    i16 1, label %34
    i16 2, label %37
    i16 3, label %40
    i16 4, label %60
    i16 5, label %89
    i16 6, label %116
    i16 7, label %121
  ]

34:                                               ; preds = %33
  %35 = load i32, ptr %24, align 4
  %36 = or i32 %35, 1
  store i32 %36, ptr %24, align 4
  store i32 0, ptr %20, align 4
  tail call void @complete(ptr noundef %19) #8
  br label %121

37:                                               ; preds = %33
  %38 = load i32, ptr %24, align 4
  %39 = or i32 %38, 2
  store i32 %39, ptr %24, align 4
  store i32 0, ptr %20, align 4
  tail call void @complete(ptr noundef %19) #8
  br label %121

40:                                               ; preds = %33
  %41 = load ptr, ptr %13, align 4
  %42 = getelementptr i8, ptr %41, i32 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %42, i16 4) #8, !srcloc !14
  %43 = load i32, ptr %20, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, ptr %23, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45, %40
  %49 = load i32, ptr %24, align 4
  %50 = and i32 %49, 2
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %48, %45
  %53 = load ptr, ptr %13, align 4
  %54 = getelementptr i8, ptr %53, i32 36
  %55 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %54) #8, !srcloc !13
  %56 = or i16 %55, 2048
  %57 = load ptr, ptr %13, align 4
  %58 = getelementptr i8, ptr %57, i32 36
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %58, i16 %56) #8, !srcloc !14
  br label %59

59:                                               ; preds = %52, %48
  tail call void @complete(ptr noundef %19) #8
  br label %121

60:                                               ; preds = %33
  %61 = load i32, ptr %20, align 4
  %62 = icmp eq i32 %61, 0
  %63 = load ptr, ptr %13, align 4
  br i1 %62, label %76, label %64

64:                                               ; preds = %60
  %65 = getelementptr i8, ptr %63, i32 24
  %66 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %65) #8, !srcloc !13
  %67 = trunc i16 %66 to i8
  %68 = load ptr, ptr %21, align 8
  %69 = getelementptr i8, ptr %68, i32 1
  store ptr %69, ptr %21, align 8
  store i8 %67, ptr %68, align 1
  %70 = load i32, ptr %20, align 4
  %71 = add i32 %70, -1
  store i32 %71, ptr %20, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %121

73:                                               ; preds = %64
  %74 = load ptr, ptr %13, align 4
  %75 = getelementptr i8, ptr %74, i32 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %75, i16 8) #8, !srcloc !14
  br label %121

76:                                               ; preds = %60
  %77 = getelementptr i8, ptr %63, i32 36
  %78 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %77) #8, !srcloc !13
  %79 = or i16 %78, -32768
  %80 = load ptr, ptr %13, align 4
  %81 = getelementptr i8, ptr %80, i32 36
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %81, i16 %79) #8, !srcloc !14
  %82 = load ptr, ptr %13, align 4
  %83 = getelementptr i8, ptr %82, i32 24
  %84 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %83) #8, !srcloc !13
  %85 = load i8, ptr %22, align 8
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %87, label %121

87:                                               ; preds = %76
  %88 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %88, ptr noundef nonnull @.str.15) #9
  br label %121

89:                                               ; preds = %33
  %90 = load i32, ptr %20, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %109, label %92

92:                                               ; preds = %89
  %93 = load ptr, ptr %21, align 8
  %94 = getelementptr i8, ptr %93, i32 1
  store ptr %94, ptr %21, align 8
  %95 = load i8, ptr %93, align 1
  %96 = zext i8 %95 to i16
  %97 = load ptr, ptr %13, align 4
  %98 = getelementptr i8, ptr %97, i32 32
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %98, i16 %96) #8, !srcloc !14
  %99 = load i32, ptr %20, align 4
  %100 = add i32 %99, -1
  store i32 %100, ptr %20, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %121

102:                                              ; preds = %92
  %103 = load ptr, ptr %13, align 4
  %104 = getelementptr i8, ptr %103, i32 4
  %105 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %104) #8, !srcloc !13
  %106 = and i16 %105, -17
  %107 = load ptr, ptr %13, align 4
  %108 = getelementptr i8, ptr %107, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %108, i16 %106) #8, !srcloc !14
  br label %121

109:                                              ; preds = %89
  %110 = load ptr, ptr %13, align 4
  %111 = getelementptr i8, ptr %110, i32 36
  %112 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %111) #8, !srcloc !13
  %113 = or i16 %112, 2176
  %114 = load ptr, ptr %13, align 4
  %115 = getelementptr i8, ptr %114, i32 36
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %115, i16 %113) #8, !srcloc !14
  br label %121

116:                                              ; preds = %33
  %117 = load ptr, ptr %13, align 4
  %118 = getelementptr i8, ptr %117, i32 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %118, i16 32) #8, !srcloc !14
  tail call void @complete(ptr noundef %19) #8
  br label %121

119:                                              ; preds = %33
  %120 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %120, ptr noundef nonnull @.str.14, i32 noundef %28) #9
  br label %121

121:                                              ; preds = %119, %116, %109, %102, %92, %87, %76, %73, %64, %59, %37, %34, %33
  %122 = load ptr, ptr %13, align 4
  %123 = getelementptr i8, ptr %122, i32 40
  %124 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %123) #8, !srcloc !13
  %125 = icmp eq i16 %124, 0
  br i1 %125, label %126, label %25

126:                                              ; preds = %121, %31, %12
  %127 = xor i1 %17, true
  %128 = zext i1 %127 to i32
  br label %129

129:                                              ; preds = %126, %7
  %130 = phi i32 [ %128, %126 ], [ 0, %7 ]
  ret i32 %130
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_numbered_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @i2c_davinci_calc_clk_dividers(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @clk_get_rate(ptr noundef %5) #8
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 25
  %9 = load ptr, ptr %8, align 8
  %10 = udiv i32 %6, 12000000
  %11 = trunc i32 %10 to i16
  %12 = add nsw i16 %11, -1
  %13 = zext i16 %12 to i32
  %14 = add nuw nsw i32 %13, 1
  %15 = udiv i32 %6, %14
  %16 = icmp ugt i32 %15, 12000000
  %17 = select i1 %16, i16 %11, i16 %12
  %18 = zext i16 %17 to i32
  %19 = icmp ugt i16 %17, 1
  %20 = sub nsw i32 7, %18
  %21 = select i1 %19, i32 5, i32 %20
  %22 = icmp eq ptr %9, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %1
  %24 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %9, ptr noundef nonnull @.str.12) #8
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i32 %21, i32 6
  br label %27

27:                                               ; preds = %23, %1
  %28 = phi i32 [ %21, %1 ], [ %26, %23 ]
  %29 = add nuw nsw i32 %18, 1
  %30 = udiv i32 %6, %29
  %31 = load i32, ptr %3, align 4
  %32 = mul i32 %31, 1000
  %33 = udiv i32 %30, %32
  %34 = udiv i32 %30, %33
  %35 = icmp ugt i32 %34, %32
  %36 = zext i1 %35 to i32
  %37 = add i32 %33, %36
  %38 = icmp ugt i32 %31, 100
  %39 = shl i32 %37, 1
  %40 = udiv i32 %39, 3
  %41 = lshr i32 %37, 1
  %42 = select i1 %38, i32 %40, i32 %41
  %43 = add i32 %42, %28
  %44 = icmp ugt i32 %37, %43
  %45 = sub i32 %37, %43
  %46 = sub i32 %42, %28
  %47 = trunc i32 %45 to i16
  %48 = mul i32 %28, 65534
  %49 = add i32 %37, %48
  %50 = select i1 %44, i16 %47, i16 1
  %51 = select i1 %44, i32 %46, i32 %49
  %52 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %0, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr i8, ptr %53, i32 48
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %54, i16 %17) #8, !srcloc !14
  %55 = load ptr, ptr %52, align 4
  %56 = getelementptr i8, ptr %55, i32 16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %56, i16 %50) #8, !srcloc !14
  %57 = trunc i32 %51 to i16
  %58 = load ptr, ptr %52, align 4
  %59 = getelementptr i8, ptr %58, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %59, i16 %57) #8, !srcloc !14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2c_davinci_cpufreq_transition(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 -656
  %5 = getelementptr i8, ptr %0, i32 -640
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 4
  tail call void %7(ptr noundef %4, i32 noundef 1) #8
  switch i32 %1, label %25 [
    i32 0, label %8
    i32 1, label %16
  ]

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 -708
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 36
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %11) #8, !srcloc !13
  %13 = and i16 %12, -33
  %14 = load ptr, ptr %9, align 4
  %15 = getelementptr i8, ptr %14, i32 36
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %15, i16 %13) #8, !srcloc !14
  br label %25

16:                                               ; preds = %3
  %17 = getelementptr i8, ptr %0, i32 -712
  tail call fastcc void @i2c_davinci_calc_clk_dividers(ptr noundef %17)
  %18 = getelementptr i8, ptr %0, i32 -708
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 36
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %20) #8, !srcloc !13
  %22 = or i16 %21, 32
  %23 = load ptr, ptr %18, align 4
  %24 = getelementptr i8, ptr %23, i32 36
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %24, i16 %22) #8, !srcloc !14
  br label %25

25:                                               ; preds = %16, %8, %3
  %26 = load ptr, ptr %5, align 8
  %27 = getelementptr inbounds %struct.i2c_lock_operations, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  tail call void %28(ptr noundef %4, i32 noundef 1) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_register_notifier(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2c_davinci_xfer(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #8
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %3
  %10 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.16, i32 noundef %7) #9
  %11 = load ptr, ptr %5, align 8
  %12 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #8, !srcloc !10
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 0, i32 -1, ptr elementtype(i32) %12) #8, !srcloc !11
  %14 = extractvalue { i32, i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %182, label %16

16:                                               ; preds = %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  br label %182

17:                                               ; preds = %3
  %18 = load volatile i32, ptr @jiffies, align 64
  %19 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %5, i32 0, i32 10
  %20 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %5, i32 0, i32 10, i32 7
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, %18
  %23 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %5, i32 0, i32 1
  br label %24

24:                                               ; preds = %30, %17
  %25 = load ptr, ptr %23, align 4
  %26 = getelementptr i8, ptr %25, i32 8
  %27 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %26) #8, !srcloc !13
  %28 = and i16 %27, 4096
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %43, label %30

30:                                               ; preds = %24
  %31 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #8
  %32 = load volatile i32, ptr @jiffies, align 64
  %33 = sub i32 %22, %32
  %34 = icmp sgt i32 %33, -1
  br i1 %34, label %24, label %35

35:                                               ; preds = %30
  %36 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %36, ptr noundef nonnull @.str.17) #9
  %37 = tail call i32 @i2c_recover_bus(ptr noundef %19) #8
  %38 = load ptr, ptr %23, align 4
  %39 = getelementptr i8, ptr %38, i32 8
  %40 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %39) #8, !srcloc !13
  %41 = and i16 %40, 4096
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %35, %24
  %44 = icmp sgt i32 %2, 0
  br i1 %44, label %45, label %175

45:                                               ; preds = %43
  %46 = add nsw i32 %2, -1
  br label %49

47:                                               ; preds = %35
  %48 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %48, ptr noundef nonnull @.str.17) #9
  br label %175

49:                                               ; preds = %172, %45
  %50 = phi i32 [ 0, %45 ], [ %173, %172 ]
  %51 = getelementptr %struct.i2c_msg, ptr %1, i32 %50
  %52 = icmp eq i32 %50, %46
  %53 = zext i1 %52 to i32
  %54 = load ptr, ptr %4, align 8
  %55 = load i16, ptr %51, align 4
  %56 = icmp eq i16 %55, 8
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = load ptr, ptr %54, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %58, ptr noundef nonnull @.str.18) #9
  br label %175

59:                                               ; preds = %49
  %60 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %54, i32 0, i32 12
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.davinci_i2c_platform_data, ptr %61, i32 0, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %59
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %66(i32 noundef %63) #8
  br label %67

67:                                               ; preds = %65, %59
  %68 = load i16, ptr %51, align 4
  %69 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %54, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr i8, ptr %70, i32 28
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %71, i16 %68) #8, !srcloc !14
  %72 = getelementptr %struct.i2c_msg, ptr %1, i32 %50, i32 3
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %54, i32 0, i32 5
  store ptr %73, ptr %74, align 8
  %75 = getelementptr %struct.i2c_msg, ptr %1, i32 %50, i32 2
  %76 = load i16, ptr %75, align 4
  %77 = zext i16 %76 to i32
  %78 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %54, i32 0, i32 6
  store i32 %77, ptr %78, align 4
  %79 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %54, i32 0, i32 8
  store i32 %53, ptr %79, align 4
  %80 = load ptr, ptr %69, align 4
  %81 = getelementptr i8, ptr %80, i32 20
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %81, i16 %76) #8, !srcloc !14
  %82 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %54, i32 0, i32 2
  store i32 0, ptr %82, align 4
  %83 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %54, i32 0, i32 4
  store i32 0, ptr %83, align 4
  %84 = getelementptr %struct.i2c_msg, ptr %1, i32 %50, i32 1
  %85 = load i16, ptr %84, align 2
  %86 = and i16 %85, 16
  %87 = icmp eq i16 %86, 0
  %88 = select i1 %87, i32 1056, i32 1312
  %89 = and i16 %85, 1
  %90 = icmp eq i16 %89, 0
  %91 = or i32 %88, 512
  %92 = select i1 %90, i32 %91, i32 %88
  %93 = load i16, ptr %75, align 4
  %94 = icmp eq i16 %93, 0
  %95 = or i32 %92, 128
  %96 = select i1 %94, i32 %95, i32 %92
  %97 = load ptr, ptr %69, align 4
  %98 = getelementptr i8, ptr %97, i32 4
  %99 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %98) #8, !srcloc !13
  %100 = load i16, ptr %84, align 2
  %101 = and i16 %100, 1
  %102 = icmp eq i16 %101, 0
  %103 = select i1 %102, i16 16, i16 8
  %104 = or i16 %103, %99
  %105 = load ptr, ptr %69, align 4
  %106 = getelementptr i8, ptr %105, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %106, i16 %104) #8, !srcloc !14
  %107 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %54, i32 0, i32 9
  store i8 0, ptr %107, align 8
  %108 = trunc i32 %96 to i16
  %109 = load ptr, ptr %69, align 4
  %110 = getelementptr i8, ptr %109, i32 36
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %110, i16 %108) #8, !srcloc !14
  %111 = load i16, ptr %84, align 2
  %112 = and i16 %111, 1
  %113 = icmp eq i16 %112, 0
  br i1 %113, label %114, label %126

114:                                              ; preds = %67
  %115 = load i32, ptr %78, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %126, label %117

117:                                              ; preds = %114
  %118 = load ptr, ptr %74, align 8
  %119 = getelementptr i8, ptr %118, i32 1
  store ptr %119, ptr %74, align 8
  %120 = load i8, ptr %118, align 1
  %121 = zext i8 %120 to i16
  %122 = load ptr, ptr %69, align 4
  %123 = getelementptr i8, ptr %122, i32 32
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %123, i16 %121) #8, !srcloc !14
  %124 = load i32, ptr %78, align 4
  %125 = add i32 %124, -1
  store i32 %125, ptr %78, align 4
  br label %126

126:                                              ; preds = %117, %114, %67
  %127 = or i32 %96, 8192
  br i1 %52, label %128, label %133

128:                                              ; preds = %126
  %129 = load i16, ptr %75, align 4
  %130 = icmp eq i16 %129, 0
  %131 = or i32 %96, 10240
  %132 = select i1 %130, i32 %127, i32 %131
  br label %133

133:                                              ; preds = %128, %126
  %134 = phi i32 [ %127, %126 ], [ %132, %128 ]
  %135 = trunc i32 %134 to i16
  %136 = load ptr, ptr %69, align 4
  %137 = getelementptr i8, ptr %136, i32 36
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %137, i16 %135) #8, !srcloc !14
  %138 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %54, i32 0, i32 10, i32 7
  %139 = load i32, ptr %138, align 4
  %140 = tail call i32 @wait_for_completion_timeout(ptr noundef %82, i32 noundef %139) #8
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %133
  %143 = load ptr, ptr %54, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %143, ptr noundef nonnull @.str.19) #9
  %144 = tail call i32 @i2c_recover_bus(ptr noundef %0) #8
  store i32 0, ptr %78, align 4
  br label %175

145:                                              ; preds = %133
  %146 = load i32, ptr %78, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %145
  %149 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %54, i32 0, i32 9
  %150 = load ptr, ptr %54, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %150, ptr noundef nonnull @.str.20, i32 noundef %146) #9
  store i8 1, ptr %149, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !16
  tail call void @arm_heavy_mb() #8
  store i32 0, ptr %78, align 4
  br label %175

151:                                              ; preds = %145
  %152 = load i32, ptr %83, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %172, label %154, !prof !17

154:                                              ; preds = %151
  %155 = and i32 %152, 1
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %154
  tail call fastcc void @i2c_davinci_init(ptr noundef %54) #8
  br label %175

158:                                              ; preds = %154
  %159 = and i32 %152, 2
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %175, label %161

161:                                              ; preds = %158
  %162 = load i16, ptr %84, align 2
  %163 = and i16 %162, 4096
  %164 = icmp eq i16 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %161
  %166 = load ptr, ptr %69, align 4
  %167 = getelementptr i8, ptr %166, i32 36
  %168 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %167) #8, !srcloc !13
  %169 = or i16 %168, 2048
  %170 = load ptr, ptr %69, align 4
  %171 = getelementptr i8, ptr %170, i32 36
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %171, i16 %169) #8, !srcloc !14
  br label %175

172:                                              ; preds = %161, %151
  %173 = add nuw nsw i32 %50, 1
  %174 = icmp eq i32 %173, %2
  br i1 %174, label %175, label %49

175:                                              ; preds = %172, %165, %158, %157, %148, %142, %57, %47, %43
  %176 = phi i32 [ -5, %47 ], [ -110, %142 ], [ -121, %165 ], [ -5, %157 ], [ -121, %148 ], [ -99, %57 ], [ %2, %43 ], [ %2, %172 ], [ -5, %158 ]
  %177 = load ptr, ptr %5, align 8
  %178 = tail call i64 @ktime_get_mono_fast_ns() #8
  %179 = getelementptr inbounds %struct.device, ptr %177, i32 0, i32 11, i32 22
  store volatile i64 %178, ptr %179, align 8
  %180 = load ptr, ptr %5, align 8
  %181 = tail call i32 @__pm_runtime_suspend(ptr noundef %180, i32 noundef 13) #8
  br label %182

182:                                              ; preds = %175, %16, %9
  %183 = phi i32 [ %176, %175 ], [ %7, %9 ], [ %7, %16 ]
  ret i32 %183
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @i2c_davinci_func(ptr nocapture noundef readnone %0) #7 {
  ret i32 251592713
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_recover_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_generic_scl_recovery(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @davinci_i2c_get_scl(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 80
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %6) #8, !srcloc !13
  %8 = and i16 %7, 1
  %9 = zext i16 %8 to i32
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @davinci_i2c_set_scl(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %4, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  br i1 %5, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr i8, ptr %7, i32 88
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %9, i16 1) #8, !srcloc !14
  br label %12

10:                                               ; preds = %2
  %11 = getelementptr i8, ptr %7, i32 92
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %11, i16 1) #8, !srcloc !14
  br label %12

12:                                               ; preds = %10, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @davinci_i2c_get_sda(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 80
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %6) #8, !srcloc !13
  %8 = and i16 %7, 2
  %9 = zext i16 %8 to i32
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @davinci_i2c_scl_prepare_recovery(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %6, i16 0) #8, !srcloc !14
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr i8, ptr %7, i32 36
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %8) #8, !srcloc !13
  %10 = and i16 %9, -33
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr i8, ptr %11, i32 36
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %12, i16 %10) #8, !srcloc !14
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr i8, ptr %13, i32 76
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %14, i16 1) #8, !srcloc !14
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr i8, ptr %15, i32 72
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %16, i16 1) #8, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @davinci_i2c_scl_unprepare_recovery(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 72
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %6, i16 0) #8, !srcloc !14
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 36
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %10) #8, !srcloc !13
  %12 = and i16 %11, -33
  %13 = load ptr, ptr %8, align 4
  %14 = getelementptr i8, ptr %13, i32 36
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %14, i16 %12) #8, !srcloc !14
  tail call fastcc void @i2c_davinci_calc_clk_dividers(ptr noundef %7) #8
  %15 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %15, i16 8) #8, !srcloc !14
  %16 = load ptr, ptr %8, align 4
  %17 = getelementptr i8, ptr %16, i32 36
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %17) #8, !srcloc !13
  %19 = or i16 %18, 32
  %20 = load ptr, ptr %8, align 4
  %21 = getelementptr i8, ptr %20, i32 36
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %21, i16 %19) #8, !srcloc !14
  %22 = load ptr, ptr %8, align 4
  %23 = getelementptr i8, ptr %22, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %23, i16 39) #8, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @davinci_i2c_prepare_recovery(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %6, i16 0) #8, !srcloc !14
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr i8, ptr %7, i32 36
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %8) #8, !srcloc !13
  %10 = and i16 %9, -33
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr i8, ptr %11, i32 36
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %12, i16 %10) #8, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @davinci_i2c_unprepare_recovery(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 36
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %6) #8, !srcloc !13
  %8 = and i16 %7, -33
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 36
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %10, i16 %8) #8, !srcloc !14
  tail call fastcc void @i2c_davinci_calc_clk_dividers(ptr noundef %3) #8
  %11 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %11, i16 8) #8, !srcloc !14
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr i8, ptr %12, i32 36
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %13) #8, !srcloc !13
  %15 = or i16 %14, 32
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr i8, ptr %16, i32 36
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %17, i16 %15) #8, !srcloc !14
  %18 = load ptr, ptr %4, align 4
  %19 = getelementptr i8, ptr %18, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %19, i16 39) #8, !srcloc !14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_unregister_notifier(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @davinci_i2c_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 36
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %6) #8, !srcloc !13
  %8 = and i16 %7, -33
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 36
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %10, i16 %8) #8, !srcloc !14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @davinci_i2c_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.davinci_i2c_dev, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 36
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %6) #8, !srcloc !13
  %8 = or i16 %7, 32
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 36
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %10, i16 %8) #8, !srcloc !14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!9 = !{i64 2147935787}
!10 = !{i64 434097, i64 2147924068, i64 2147924094, i64 2147924141, i64 2147924163, i64 2147924191, i64 2147924211}
!11 = !{i64 420666, i64 420691, i64 420713, i64 420729, i64 420741, i64 420761, i64 420785, i64 420801, i64 420813}
!12 = !{i64 2147935913}
!13 = !{i64 5377667}
!14 = !{i64 5377467}
!15 = !{i8 0, i8 2}
!16 = !{i64 2154343628}
!17 = !{!"branch_weights", i32 2000, i32 1}
