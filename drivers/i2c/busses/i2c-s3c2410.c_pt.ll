; ModuleID = '/llk/IR/drivers/i2c/busses/i2c-s3c2410.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-s3c2410.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.s3c24xx_i2c = type { %struct.wait_queue_head, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.i2c_adapter, ptr, [2 x ptr], ptr, ptr, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.s3c2410_platform_i2c = type { i32, i32, i32, i32, i32, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.i2c_lock_operations = type { ptr, ptr, ptr }

@__initcall__kmod_i2c_s3c2410__260_1260_i2c_adap_s3c_init4 = internal global ptr @i2c_adap_s3c_init, section ".initcall4.init", align 4
@s3c24xx_i2c_driver = internal global %struct.platform_driver { ptr @s3c24xx_i2c_probe, ptr @s3c24xx_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @s3c24xx_i2c_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s3c24xx_i2c_dev_pm_ops, ptr null, ptr null }, ptr @s3c24xx_driver_ids, i8 0 }, align 4
@__exitcall_i2c_adap_s3c_exit = internal global ptr @i2c_adap_s3c_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description261 = internal constant [47 x i8] c"i2c_s3c2410.description=S3C24XX I2C Bus driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author262 = internal constant [48 x i8] c"i2c_s3c2410.author=Ben Dooks <ben@simtec.co.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_file263 = internal constant [48 x i8] c"i2c_s3c2410.file=drivers/i2c/busses/i2c-s3c2410\00", section ".modinfo", align 1
@__UNIQUE_ID_license264 = internal constant [24 x i8] c"i2c_s3c2410.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [8 x i8] c"s3c-i2c\00", align 1
@s3c24xx_i2c_match = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c2410-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c2440-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c2440-hdmiphy-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 7 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5-sata-phy-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 13 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@s3c24xx_i2c_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s3c24xx_i2c_suspend_noirq, ptr @s3c24xx_i2c_resume_noirq, ptr @s3c24xx_i2c_suspend_noirq, ptr @s3c24xx_i2c_resume_noirq, ptr @s3c24xx_i2c_suspend_noirq, ptr @s3c24xx_i2c_resume_noirq, ptr null, ptr null, ptr null }, align 4
@s3c24xx_driver_ids = internal constant [4 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"s3c2410-i2c\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id { [20 x i8] c"s3c2440-i2c\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.platform_device_id { [20 x i8] c"s3c2440-hdmiphy-i2c\00", i32 7 }, %struct.platform_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"no platform data\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"s3c2410-i2c\00", align 1
@s3c24xx_i2c_algorithm = internal constant %struct.i2c_algorithm { ptr @s3c24xx_i2c_xfer, ptr null, ptr null, ptr null, ptr @s3c24xx_i2c_func, ptr null, ptr null }, align 4
@s3c24xx_i2c_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"&i2c->wait\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"i2c\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"cannot get clock\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"I2C clock enable failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"I2C controller init failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"cannot find IRQ\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"cannot claim IRQ %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"%s: S3C I2C adapter\0A\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"samsung,i2c-sda-delay\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"samsung,i2c-slave-addr\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"samsung,i2c-max-bus-freq\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"samsung,sysreg-phandle\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.16 = private unnamed_addr constant [27 x i8] c"cannot get bus (error %d)\0A\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"deal with arbitration loss\0A\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"ack was not received\0A\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"%s: called in STATE_IDLE\0A\00", align 1
@__func__.i2c_s3c_irq_nextbyte = private unnamed_addr constant [21 x i8] c"i2c_s3c_irq_nextbyte\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"%s: called in STATE_STOP\0A\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"timeout waiting for bus idle\0A\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"i2c gpio invalid at index %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"slave address 0x%02x\0A\00", align 1
@.str.25 = private unnamed_addr constant [36 x i8] c"cannot meet bus frequency required\0A\00", align 1
@.str.26 = private unnamed_addr constant [29 x i8] c"bus frequency set to %d KHz\0A\00", align 1
@.str.27 = private unnamed_addr constant [69 x i8] c"Unable to achieve desired frequency %luKHz. Lowest achievable %dKHz\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author262, ptr @__UNIQUE_ID_description261, ptr @__UNIQUE_ID_file263, ptr @__UNIQUE_ID_license264, ptr @__exitcall_i2c_adap_s3c_exit, ptr @__initcall__kmod_i2c_s3c2410__260_1260_i2c_adap_s3c_init4, ptr @i2c_adap_s3c_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @i2c_adap_s3c_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @s3c24xx_i2c_driver, ptr noundef null) #11
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @i2c_adap_s3c_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @s3c24xx_i2c_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3c24xx_i2c_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #12
  br label %177

11:                                               ; preds = %6, %1
  %12 = phi ptr [ null, %1 ], [ %8, %6 ]
  %13 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 744, i32 noundef 3520) #11
  %14 = icmp eq ptr %13, null
  br i1 %14, label %177, label %15

15:                                               ; preds = %11
  %16 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 24, i32 noundef 3520) #11
  %17 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %13, i32 0, i32 14
  store ptr %16, ptr %17, align 8
  %18 = icmp eq ptr %16, null
  br i1 %18, label %177, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %3, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = tail call ptr @of_device_get_match_data(ptr noundef %2) #11
  %24 = ptrtoint ptr %23 to i32
  br label %30

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 8
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.platform_device_id, ptr %27, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  br label %30

30:                                               ; preds = %25, %22
  %31 = phi i32 [ %24, %22 ], [ %29, %25 ]
  %32 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %13, i32 0, i32 1
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %13, i32 0, i32 17
  store ptr inttoptr (i32 -2 to ptr), ptr %33, align 8
  %34 = icmp eq ptr %12, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = load ptr, ptr %17, align 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %36, ptr noundef nonnull align 4 dereferenceable(24) %12, i32 24, i1 false)
  br label %54

37:                                               ; preds = %30
  %38 = load ptr, ptr %3, align 8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %54, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr %17, align 8
  store i32 -1, ptr %41, align 4
  %42 = getelementptr inbounds %struct.s3c2410_platform_i2c, ptr %41, i32 0, i32 4
  %43 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %38, ptr noundef nonnull @.str.12, ptr noundef %42, i32 noundef 1, i32 noundef 0) #11
  %44 = getelementptr inbounds %struct.s3c2410_platform_i2c, ptr %41, i32 0, i32 2
  %45 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %38, ptr noundef nonnull @.str.13, ptr noundef %44, i32 noundef 1, i32 noundef 0) #11
  %46 = getelementptr inbounds %struct.s3c2410_platform_i2c, ptr %41, i32 0, i32 3
  %47 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %38, ptr noundef nonnull @.str.14, ptr noundef %46, i32 noundef 1, i32 noundef 0) #11
  %48 = tail call i32 @of_alias_get_id(ptr noundef nonnull %38, ptr noundef nonnull @.str.4) #11
  %49 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef nonnull %38, ptr noundef nonnull @.str.15) #11
  store ptr %49, ptr %33, align 8
  %50 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  br i1 %50, label %54, label %51

51:                                               ; preds = %40
  %52 = shl nuw i32 1, %48
  %53 = tail call i32 @regmap_update_bits_base(ptr noundef %49, i32 noundef 564, i32 noundef %52, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %54

54:                                               ; preds = %51, %40, %37, %35
  %55 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %13, i32 0, i32 13
  %56 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %13, i32 0, i32 13, i32 12
  %57 = tail call i32 @strlcpy(ptr noundef %56, ptr noundef nonnull @.str.2, i32 noundef 48) #11
  store ptr null, ptr %55, align 8
  %58 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %13, i32 0, i32 13, i32 2
  store ptr @s3c24xx_i2c_algorithm, ptr %58, align 8
  %59 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %13, i32 0, i32 13, i32 8
  store i32 2, ptr %59, align 8
  %60 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %13, i32 0, i32 13, i32 1
  store i32 256, ptr %60, align 4
  %61 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %13, i32 0, i32 6
  store i32 50, ptr %61, align 8
  tail call void @__init_waitqueue_head(ptr noundef nonnull %13, ptr noundef nonnull @.str.3, ptr noundef nonnull @s3c24xx_i2c_probe.__key) #11
  %62 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %13, i32 0, i32 12
  store ptr %2, ptr %62, align 8
  %63 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.4) #11
  %64 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %13, i32 0, i32 11
  store ptr %63, ptr %64, align 4
  %65 = icmp ugt ptr %63, inttoptr (i32 -4096 to ptr)
  br i1 %65, label %66, label %67

66:                                               ; preds = %54
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5) #12
  br label %177

67:                                               ; preds = %54
  %68 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #11
  %69 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %68) #11
  %70 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %13, i32 0, i32 10
  store ptr %69, ptr %70, align 8
  %71 = icmp ugt ptr %69, inttoptr (i32 -4096 to ptr)
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = ptrtoint ptr %69 to i32
  br label %177

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %13, i32 0, i32 13, i32 3
  store ptr %13, ptr %75, align 4
  %76 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %13, i32 0, i32 13, i32 9
  %77 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %13, i32 0, i32 13, i32 9, i32 1
  store ptr %2, ptr %77, align 4
  %78 = load ptr, ptr %62, align 8
  %79 = tail call ptr @devm_pinctrl_get(ptr noundef %78) #11
  %80 = icmp ugt ptr %79, inttoptr (i32 -4096 to ptr)
  br i1 %80, label %90, label %81

81:                                               ; preds = %74
  %82 = tail call ptr @pinctrl_lookup_state(ptr noundef %79, ptr noundef nonnull @.str.22) #11
  %83 = icmp ugt ptr %82, inttoptr (i32 -4096 to ptr)
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  tail call void @devm_pinctrl_put(ptr noundef %79) #11
  br label %90

85:                                               ; preds = %81
  %86 = tail call i32 @pinctrl_select_state(ptr noundef %79, ptr noundef %82) #11
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  tail call void @devm_pinctrl_put(ptr noundef %79) #11
  %89 = inttoptr i32 %86 to ptr
  br label %90

90:                                               ; preds = %88, %85, %84, %74
  %91 = phi ptr [ %82, %84 ], [ %89, %88 ], [ %79, %74 ], [ %79, %85 ]
  %92 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %13, i32 0, i32 16
  store ptr %91, ptr %92, align 4
  %93 = load ptr, ptr %17, align 8
  %94 = getelementptr inbounds %struct.s3c2410_platform_i2c, ptr %93, i32 0, i32 5
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %100, label %97

97:                                               ; preds = %90
  %98 = load ptr, ptr %62, align 8
  %99 = getelementptr i8, ptr %98, i32 -16
  tail call void %95(ptr noundef %99) #11
  br label %119

100:                                              ; preds = %90
  %101 = icmp ugt ptr %91, inttoptr (i32 -4096 to ptr)
  br i1 %101, label %102, label %119

102:                                              ; preds = %100
  %103 = load i32, ptr %32, align 4
  %104 = and i32 %103, 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %119

106:                                              ; preds = %102
  %107 = load ptr, ptr %62, align 8
  %108 = tail call ptr @devm_gpiod_get_index(ptr noundef %107, ptr noundef null, i32 noundef 0, i32 noundef 0) #11
  %109 = getelementptr %struct.s3c24xx_i2c, ptr %13, i32 0, i32 15, i32 0
  store ptr %108, ptr %109, align 4
  %110 = icmp ugt ptr %108, inttoptr (i32 -4096 to ptr)
  br i1 %110, label %116, label %111

111:                                              ; preds = %106
  %112 = load ptr, ptr %62, align 8
  %113 = tail call ptr @devm_gpiod_get_index(ptr noundef %112, ptr noundef null, i32 noundef 1, i32 noundef 0) #11
  %114 = getelementptr %struct.s3c24xx_i2c, ptr %13, i32 0, i32 15, i32 1
  store ptr %113, ptr %114, align 4
  %115 = icmp ugt ptr %113, inttoptr (i32 -4096 to ptr)
  br i1 %115, label %116, label %119

116:                                              ; preds = %111, %106
  %117 = phi i32 [ 0, %106 ], [ 1, %111 ]
  %118 = load ptr, ptr %62, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %118, ptr noundef nonnull @.str.23, i32 noundef %117) #12
  br label %177

119:                                              ; preds = %111, %102, %100, %97
  %120 = load ptr, ptr %64, align 4
  %121 = tail call i32 @clk_prepare(ptr noundef %120) #11
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %119
  %124 = tail call i32 @clk_enable(ptr noundef %120) #11
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %123
  tail call void @clk_unprepare(ptr noundef %120) #11
  br label %127

127:                                              ; preds = %126, %119
  %128 = phi i32 [ %124, %126 ], [ %121, %119 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6) #12
  br label %177

129:                                              ; preds = %123
  %130 = tail call fastcc i32 @s3c24xx_i2c_init(ptr noundef nonnull %13)
  %131 = load ptr, ptr %64, align 4
  tail call void @clk_disable(ptr noundef %131) #11
  %132 = icmp eq i32 %130, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %129
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.7) #12
  %134 = load ptr, ptr %64, align 4
  tail call void @clk_unprepare(ptr noundef %134) #11
  br label %177

135:                                              ; preds = %129
  %136 = load i32, ptr %32, align 4
  %137 = and i32 %136, 8
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %158

139:                                              ; preds = %135
  %140 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #11
  %141 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %13, i32 0, i32 7
  store i32 %140, ptr %141, align 4
  %142 = icmp slt i32 %140, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %139
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.8) #12
  %144 = load ptr, ptr %64, align 4
  tail call void @clk_unprepare(ptr noundef %144) #11
  br label %177

145:                                              ; preds = %139
  %146 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %147 = load ptr, ptr %146, align 4
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %151

149:                                              ; preds = %145
  %150 = load ptr, ptr %2, align 4
  br label %151

151:                                              ; preds = %149, %145
  %152 = phi ptr [ %150, %149 ], [ %147, %145 ]
  %153 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %140, ptr noundef nonnull @s3c24xx_i2c_irq, ptr noundef null, i32 noundef 0, ptr noundef %152, ptr noundef nonnull %13) #11
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %151
  %156 = load i32, ptr %141, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.9, i32 noundef %156) #12
  %157 = load ptr, ptr %64, align 4
  tail call void @clk_unprepare(ptr noundef %157) #11
  br label %177

158:                                              ; preds = %151, %135
  %159 = load ptr, ptr %17, align 8
  %160 = load i32, ptr %159, align 4
  %161 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %13, i32 0, i32 13, i32 11
  store i32 %160, ptr %161, align 4
  %162 = load ptr, ptr %3, align 8
  %163 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %13, i32 0, i32 13, i32 9, i32 25
  store ptr %162, ptr %163, align 8
  %164 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %13, ptr %164, align 8
  tail call void @pm_runtime_enable(ptr noundef %2) #11
  %165 = tail call i32 @i2c_add_numbered_adapter(ptr noundef %55) #11
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %158
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #11
  %168 = load ptr, ptr %64, align 4
  tail call void @clk_unprepare(ptr noundef %168) #11
  br label %177

169:                                              ; preds = %158
  %170 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %13, i32 0, i32 13, i32 9, i32 3
  %171 = load ptr, ptr %170, align 4
  %172 = icmp eq ptr %171, null
  br i1 %172, label %173, label %175

173:                                              ; preds = %169
  %174 = load ptr, ptr %76, align 4
  br label %175

175:                                              ; preds = %173, %169
  %176 = phi ptr [ %174, %173 ], [ %171, %169 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.11, ptr noundef %176) #12
  br label %177

177:                                              ; preds = %175, %167, %155, %143, %133, %127, %116, %72, %66, %15, %11, %10
  %178 = phi i32 [ -2, %66 ], [ %73, %72 ], [ %128, %127 ], [ %130, %133 ], [ %165, %167 ], [ 0, %175 ], [ %140, %143 ], [ %153, %155 ], [ -22, %10 ], [ -12, %11 ], [ -12, %15 ], [ -22, %116 ]
  ret i32 %178
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3c24xx_i2c_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_unprepare(ptr noundef %5) #11
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %6, i1 noundef zeroext true) #11
  %7 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %3, i32 0, i32 13
  tail call void @i2c_del_adapter(ptr noundef %7) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @s3c24xx_i2c_init(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  tail call void @arm_heavy_mb() #11
  %4 = getelementptr inbounds %struct.s3c2410_platform_i2c, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = trunc i32 %5 to i8
  %7 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr i8, ptr %8, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %9, i8 %6) #11, !srcloc !9
  %10 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %0, i32 0, i32 12
  %11 = load ptr, ptr %10, align 8
  %12 = load i32, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %11, ptr noundef nonnull @.str.24, i32 noundef %12) #12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !10
  tail call void @arm_heavy_mb() #11
  %13 = load ptr, ptr %7, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 0) #11, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  tail call void @arm_heavy_mb() #11
  %14 = load ptr, ptr %7, align 8
  %15 = getelementptr i8, ptr %14, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 0) #11, !srcloc !11
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %0, i32 0, i32 11
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @clk_get_rate(ptr noundef %18) #11
  %20 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %0, i32 0, i32 9
  store i32 %19, ptr %20, align 4
  %21 = udiv i32 %19, 1000
  %22 = getelementptr inbounds %struct.s3c2410_platform_i2c, ptr %16, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  %25 = udiv i32 %23, 1000
  %26 = select i1 %24, i32 100, i32 %25
  %27 = udiv i32 %21, %26
  %28 = icmp ugt i32 %27, 256
  %29 = select i1 %28, i32 512, i32 16
  %30 = add nsw i32 %27, -1
  %31 = add nsw i32 %30, %29
  %32 = select i1 %28, i32 9, i32 4
  %33 = lshr i32 %31, %32
  %34 = icmp ugt i32 %29, %31
  %35 = tail call i32 @llvm.umin.i32(i32 %33, i32 17) #11
  %36 = select i1 %34, i32 1, i32 %35
  %37 = mul nuw nsw i32 %36, %29
  %38 = udiv i32 %21, %37
  %39 = icmp ugt i32 %38, %26
  br i1 %39, label %75, label %40

40:                                               ; preds = %1
  %41 = load ptr, ptr %7, align 8
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #11, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !14
  %43 = and i32 %42, -80
  %44 = add nsw i32 %36, -1
  %45 = or i32 %43, %44
  %46 = or i32 %45, 64
  %47 = select i1 %28, i32 %46, i32 %45
  %48 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %0, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = lshr i32 %49, 2
  %51 = and i32 %50, 2
  %52 = or i32 %51, %47
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !15
  tail call void @arm_heavy_mb() #11
  %53 = load ptr, ptr %7, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %52) #11, !srcloc !11
  %54 = load i32, ptr %48, align 4
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %78, label %57

57:                                               ; preds = %40
  %58 = getelementptr inbounds %struct.s3c2410_platform_i2c, ptr %16, i32 0, i32 4
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %71, label %61

61:                                               ; preds = %57
  %62 = mul i32 %59, %21
  %63 = add i32 %62, 999999
  %64 = udiv i32 %63, 1000000
  %65 = trunc i32 %64 to i16
  %66 = add nuw nsw i16 %65, 4
  %67 = udiv i16 %66, 5
  %68 = tail call i16 @llvm.umin.i16(i16 %67, i16 3) #11
  %69 = or i16 %68, 4
  %70 = zext i16 %69 to i32
  br label %71

71:                                               ; preds = %61, %57
  %72 = phi i32 [ %70, %61 ], [ 0, %57 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !16
  tail call void @arm_heavy_mb() #11
  %73 = load ptr, ptr %7, align 8
  %74 = getelementptr i8, ptr %73, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %72) #11, !srcloc !11
  br label %78

75:                                               ; preds = %1
  %76 = load ptr, ptr %10, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.27, i32 noundef %26, i32 noundef %38) #12
  %77 = load ptr, ptr %10, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.25) #12
  br label %80

78:                                               ; preds = %71, %40
  %79 = load ptr, ptr %10, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %79, ptr noundef nonnull @.str.26, i32 noundef %38) #12
  br label %80

80:                                               ; preds = %78, %75
  %81 = phi i32 [ -22, %75 ], [ 0, %78 ]
  ret i32 %81
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3c24xx_i2c_irq(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %1, i32 0, i32 10
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !17
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %1, i32 0, i32 12
  %11 = load ptr, ptr %10, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.17) #12
  br label %12

12:                                               ; preds = %9, %2
  %13 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %1, i32 0, i32 8
  %14 = load i32, ptr %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = load ptr, ptr %3, align 8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #11, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !18
  %19 = and i32 %18, -17
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !19
  tail call void @arm_heavy_mb() #11
  %20 = load ptr, ptr %3, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %19) #11, !srcloc !11
  br label %22

21:                                               ; preds = %12
  tail call fastcc void @i2c_s3c_irq_nextbyte(ptr noundef %1, i32 noundef %6)
  br label %22

22:                                               ; preds = %21, %16
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_numbered_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3c24xx_i2c_xfer(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca %struct.wait_queue_entry, align 4
  %5 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %6, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @clk_enable(ptr noundef %8) #11
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %142

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 8
  %13 = load i32, ptr %12, align 8
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %139

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %6, i32 0, i32 10
  %17 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %6, i32 0, i32 12
  %18 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %6, i32 0, i32 8
  %19 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %6, i32 0, i32 2
  %20 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %6, i32 0, i32 3
  %21 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %6, i32 0, i32 5
  %22 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %6, i32 0, i32 4
  %23 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %6, i32 0, i32 1
  br label %24

24:                                               ; preds = %134, %15
  %25 = phi i32 [ 0, %15 ], [ %136, %134 ]
  br label %26

26:                                               ; preds = %33, %24
  %27 = phi i32 [ 399, %24 ], [ %34, %33 ]
  %28 = load ptr, ptr %16, align 8
  %29 = getelementptr i8, ptr %28, i32 4
  %30 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #11, !srcloc !13
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !20
  %31 = and i32 %30, 32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %26
  call void @msleep(i32 noundef 1) #11
  %34 = add nsw i32 %27, -1
  %35 = icmp eq i32 %27, 0
  br i1 %35, label %36, label %26

36:                                               ; preds = %33
  %37 = load ptr, ptr %17, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.16, i32 noundef -110) #12
  store i32 0, ptr %18, align 8
  br label %134

38:                                               ; preds = %26
  store ptr %1, ptr %19, align 8
  store i32 %2, ptr %20, align 4
  store i32 0, ptr %21, align 4
  store i32 0, ptr %22, align 8
  store i32 1, ptr %18, align 8
  %39 = load ptr, ptr %16, align 8
  %40 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #11, !srcloc !13
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !21
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !22
  call void @arm_heavy_mb() #11
  %41 = or i32 %40, 32
  %42 = load ptr, ptr %16, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %41) #11, !srcloc !11
  call fastcc void @s3c24xx_i2c_message_start(ptr noundef %6, ptr noundef %1) #11
  %43 = load i32, ptr %23, align 4
  %44 = and i32 %43, 8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %38
  %47 = load i32, ptr %22, align 8
  br label %131

48:                                               ; preds = %38
  %49 = load i32, ptr %20, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %69, label %51

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false) #11, !annotation !23
  call void @init_wait_entry(ptr noundef nonnull %4, i32 noundef 0) #11
  %52 = call i32 @prepare_to_wait_event(ptr noundef %6, ptr noundef nonnull %4, i32 noundef 2) #11
  %53 = load i32, ptr %20, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %67, label %55

55:                                               ; preds = %55, %51
  %56 = phi i32 [ %64, %55 ], [ 500, %51 ]
  %57 = call i32 @schedule_timeout(i32 noundef %56) #11
  %58 = call i32 @prepare_to_wait_event(ptr noundef %6, ptr noundef nonnull %4, i32 noundef 2) #11
  %59 = load i32, ptr %20, align 4
  %60 = icmp eq i32 %59, 0
  %61 = xor i1 %60, true
  %62 = icmp ne i32 %57, 0
  %63 = select i1 %61, i1 true, i1 %62
  %64 = select i1 %63, i32 %57, i32 1
  %65 = icmp eq i32 %64, 0
  %66 = select i1 %60, i1 true, i1 %65
  br i1 %66, label %67, label %55

67:                                               ; preds = %55, %51
  call void @finish_wait(ptr noundef %6, ptr noundef nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #11
  %68 = load i32, ptr %23, align 4
  br label %69

69:                                               ; preds = %67, %48
  %70 = phi i32 [ %68, %67 ], [ %43, %48 ]
  %71 = load i32, ptr %22, align 8
  %72 = and i32 %70, 2
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %131

74:                                               ; preds = %69
  %75 = call i64 @ktime_get() #11
  %76 = load ptr, ptr %16, align 8
  %77 = getelementptr i8, ptr %76, i32 4
  %78 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #11, !srcloc !13
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !24
  %79 = and i32 %78, 32
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %120, label %81

81:                                               ; preds = %74
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !25
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !26
  %82 = load ptr, ptr %16, align 8
  %83 = getelementptr i8, ptr %82, i32 4
  %84 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #11, !srcloc !13
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !27
  %85 = and i32 %84, 32
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %120, label %87

87:                                               ; preds = %81
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !25
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !26
  %88 = load ptr, ptr %16, align 8
  %89 = getelementptr i8, ptr %88, i32 4
  %90 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #11, !srcloc !13
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !27
  %91 = and i32 %90, 32
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %120, label %93

93:                                               ; preds = %108, %87
  %94 = phi i64 [ %112, %108 ], [ %75, %87 ]
  %95 = phi i32 [ %111, %108 ], [ 1, %87 ]
  %96 = sub i64 %94, %75
  %97 = call i64 @llvm.abs.i64(i64 %96, i1 false) #11
  %98 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %97, i32 0) #13, !srcloc !28
  %99 = extractvalue { i64, i32 } %98, 0
  %100 = extractvalue { i64, i32 } %98, 1
  %101 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %97, i64 %99, i32 %100) #13, !srcloc !29
  %102 = extractvalue { i64, i32 } %101, 0
  %103 = icmp slt i64 %96, 0
  %104 = lshr i64 %102, 9
  %105 = sub nsw i64 0, %104
  %106 = select i1 %103, i64 %105, i64 %104
  %107 = icmp slt i64 %106, 5000
  br i1 %107, label %108, label %118

108:                                              ; preds = %93
  %109 = shl i32 %95, 1
  call void @usleep_range_state(i32 noundef %95, i32 noundef %109, i32 noundef 2) #11
  %110 = icmp ult i32 %95, 500
  %111 = select i1 %110, i32 %109, i32 %95
  %112 = call i64 @ktime_get() #11
  %113 = load ptr, ptr %16, align 8
  %114 = getelementptr i8, ptr %113, i32 4
  %115 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %114) #11, !srcloc !13
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !30
  %116 = and i32 %115, 32
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %120, label %93

118:                                              ; preds = %93
  %119 = load ptr, ptr %17, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %119, ptr noundef nonnull @.str.21) #12
  br label %120

120:                                              ; preds = %118, %108, %87, %81, %74
  %121 = load ptr, ptr %16, align 8
  %122 = getelementptr i8, ptr %121, i32 4
  %123 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %122) #11, !srcloc !13
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !31
  %124 = and i32 %123, -17
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !32
  call void @arm_heavy_mb() #11
  %125 = load ptr, ptr %16, align 8
  %126 = getelementptr i8, ptr %125, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %126, i32 %124) #11, !srcloc !11
  %127 = load ptr, ptr %16, align 8
  %128 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %127) #11, !srcloc !13
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !33
  %129 = and i32 %128, -177
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !34
  call void @arm_heavy_mb() #11
  %130 = load ptr, ptr %16, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 %129) #11, !srcloc !11
  br label %131

131:                                              ; preds = %120, %69, %46
  %132 = phi i32 [ %47, %46 ], [ %71, %69 ], [ %71, %120 ]
  store i32 0, ptr %18, align 8
  %133 = icmp eq i32 %132, -11
  br i1 %133, label %134, label %139

134:                                              ; preds = %131, %36
  %135 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %135(i32 noundef 21474800) #11
  %136 = add nuw nsw i32 %25, 1
  %137 = load i32, ptr %12, align 8
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %24, label %139

139:                                              ; preds = %134, %131, %11
  %140 = phi i32 [ -121, %11 ], [ %132, %131 ], [ -121, %134 ]
  %141 = load ptr, ptr %7, align 4
  call void @clk_disable(ptr noundef %141) #11
  br label %142

142:                                              ; preds = %139, %3
  %143 = phi i32 [ %9, %3 ], [ %140, %139 ]
  ret i32 %143
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @s3c24xx_i2c_func(ptr nocapture noundef readnone %0) #7 {
  ret i32 268402717
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @s3c24xx_i2c_message_start(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = load i16, ptr %1, align 4
  %4 = shl i16 %3, 1
  %5 = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 1
  %6 = load i16, ptr %5, align 2
  %7 = and i16 %6, 1
  %8 = icmp eq i16 %7, 0
  %9 = select i1 %8, i32 208, i32 144
  %10 = or i16 %7, %4
  %11 = lshr i16 %6, 13
  %12 = and i16 %11, 1
  %13 = xor i16 %10, %12
  %14 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %0, i32 0, i32 10
  %15 = load ptr, ptr %14, align 8
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #11, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !35
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !36
  tail call void @arm_heavy_mb() #11
  %17 = or i32 %16, 128
  %18 = load ptr, ptr %14, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %17) #11, !srcloc !11
  %19 = load ptr, ptr %14, align 8
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #11, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !37
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !38
  tail call void @arm_heavy_mb() #11
  %21 = load ptr, ptr %14, align 8
  %22 = getelementptr i8, ptr %21, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %9) #11, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !39
  tail call void @arm_heavy_mb() #11
  %23 = trunc i16 %13 to i8
  %24 = load ptr, ptr %14, align 8
  %25 = getelementptr i8, ptr %24, i32 12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %25, i8 %23) #11, !srcloc !9
  %26 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %0, i32 0, i32 6
  %27 = load i32, ptr %26, align 8
  %28 = add i32 %27, 999
  %29 = udiv i32 %28, 1000
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %30(i32 noundef %29) #11
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !40
  tail call void @arm_heavy_mb() #11
  %31 = load ptr, ptr %14, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %20) #11, !srcloc !11
  %32 = or i32 %9, 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !41
  tail call void @arm_heavy_mb() #11
  %33 = load ptr, ptr %14, align 8
  %34 = getelementptr i8, ptr %33, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #11, !srcloc !11
  %35 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %0, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %75, label %39

39:                                               ; preds = %2
  %40 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %0, i32 0, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %75, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %0, i32 0, i32 12
  br label %45

45:                                               ; preds = %72, %43
  %46 = phi i32 [ %32, %43 ], [ %67, %72 ]
  br label %47

47:                                               ; preds = %59, %45
  %48 = phi i32 [ %60, %59 ], [ 50, %45 ]
  %49 = load ptr, ptr %14, align 8
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #11, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !42
  %51 = and i32 %50, 16
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %47
  %54 = load ptr, ptr %14, align 8
  %55 = getelementptr i8, ptr %54, i32 4
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #11, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !43
  %57 = and i32 %56, 1
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %53, %47
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  %60 = add nsw i32 %48, -1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %47

62:                                               ; preds = %59
  %63 = load ptr, ptr %44, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.18) #12
  br label %75

64:                                               ; preds = %53
  tail call fastcc void @i2c_s3c_irq_nextbyte(ptr noundef %0, i32 noundef %46)
  %65 = load ptr, ptr %14, align 8
  %66 = getelementptr i8, ptr %65, i32 4
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #11, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !44
  %68 = and i32 %67, 8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %64
  %71 = load ptr, ptr %44, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.17) #12
  br label %72

72:                                               ; preds = %70, %64
  %73 = load i32, ptr %40, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %45

75:                                               ; preds = %72, %62, %39, %2
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @i2c_s3c_irq_nextbyte(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %0, i32 0, i32 8
  %4 = load i32, ptr %3, align 8
  switch i32 %4, label %309 [
    i32 0, label %9
    i32 4, label %12
    i32 1, label %15
    i32 3, label %5
    i32 2, label %215
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = and i32 %1, 1
  br label %91

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %0, i32 0, i32 12
  %11 = load ptr, ptr %10, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.i2c_s3c_irq_nextbyte) #12
  br label %315

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %0, i32 0, i32 12
  %14 = load ptr, ptr %13, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.i2c_s3c_irq_nextbyte) #12
  tail call fastcc void @s3c24xx_i2c_disable_irq(ptr noundef %0)
  br label %309

15:                                               ; preds = %2
  %16 = and i32 %1, 1
  %17 = icmp ne i32 %16, 0
  %18 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %0, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 1
  %21 = load i16, ptr %20, align 2
  %22 = and i16 %21, 4096
  %23 = icmp eq i16 %22, 0
  %24 = select i1 %17, i1 %23, i1 false
  br i1 %24, label %25, label %50

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %0, i32 0, i32 10
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr i8, ptr %27, i32 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #11, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !45
  %30 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %0, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 2
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, i32 -33, i32 -17
  %35 = and i32 %34, %29
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !46
  tail call void @arm_heavy_mb() #11
  %36 = load ptr, ptr %26, align 8
  %37 = getelementptr i8, ptr %36, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #11, !srcloc !11
  store i32 4, ptr %3, align 8
  %38 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %0, i32 0, i32 5
  store i32 0, ptr %38, align 4
  store ptr null, ptr %18, align 8
  %39 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %0, i32 0, i32 4
  %40 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %0, i32 0, i32 3
  store i32 0, ptr %40, align 4
  store i32 -6, ptr %39, align 8
  %41 = load i32, ptr %30, align 4
  %42 = and i32 %41, 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %25
  tail call void @__wake_up(ptr noundef %0, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %45

45:                                               ; preds = %44, %25
  %46 = load ptr, ptr %26, align 8
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #11, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !47
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !48
  tail call void @arm_heavy_mb() #11
  %48 = and i32 %47, -33
  %49 = load ptr, ptr %26, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %48) #11, !srcloc !11
  br label %309

50:                                               ; preds = %15
  %51 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %0, i32 0, i32 2
  %52 = and i16 %21, 1
  %53 = icmp eq i16 %52, 0
  %54 = select i1 %53, i32 3, i32 2
  store i32 %54, ptr %3, align 8
  %55 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %0, i32 0, i32 4
  %56 = load i32, ptr %55, align 8
  %57 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %0, i32 0, i32 3
  %58 = load i32, ptr %57, align 4
  %59 = add i32 %58, -1
  %60 = icmp ult i32 %56, %59
  br i1 %60, label %90, label %61

61:                                               ; preds = %50
  %62 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 2
  %63 = load i16, ptr %62, align 4
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %65, label %90

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %0, i32 0, i32 10
  %67 = load ptr, ptr %66, align 8
  %68 = getelementptr i8, ptr %67, i32 4
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #11, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !45
  %70 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %0, i32 0, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = and i32 %71, 2
  %73 = icmp eq i32 %72, 0
  %74 = select i1 %73, i32 -33, i32 -17
  %75 = and i32 %74, %69
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !46
  tail call void @arm_heavy_mb() #11
  %76 = load ptr, ptr %66, align 8
  %77 = getelementptr i8, ptr %76, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %75) #11, !srcloc !11
  store i32 4, ptr %3, align 8
  %78 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %0, i32 0, i32 5
  store i32 0, ptr %78, align 4
  store ptr null, ptr %51, align 8
  %79 = load i32, ptr %55, align 8
  %80 = add i32 %79, 1
  store i32 %80, ptr %55, align 8
  store i32 0, ptr %57, align 4
  %81 = load i32, ptr %70, align 4
  %82 = and i32 %81, 8
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %65
  tail call void @__wake_up(ptr noundef %0, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %85

85:                                               ; preds = %84, %65
  %86 = load ptr, ptr %66, align 8
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %86) #11, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !47
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !48
  tail call void @arm_heavy_mb() #11
  %88 = and i32 %87, -33
  %89 = load ptr, ptr %66, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 %88) #11, !srcloc !11
  br label %309

90:                                               ; preds = %61, %50
  br i1 %53, label %91, label %241

91:                                               ; preds = %90, %5
  %92 = phi i32 [ %8, %5 ], [ %16, %90 ]
  %93 = phi ptr [ %7, %5 ], [ %19, %90 ]
  %94 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %0, i32 0, i32 2
  %95 = getelementptr inbounds %struct.i2c_msg, ptr %93, i32 0, i32 1
  %96 = load i16, ptr %95, align 2
  %97 = and i16 %96, 4096
  %98 = icmp ne i16 %97, 0
  %99 = icmp eq i32 %92, 0
  %100 = or i1 %99, %98
  br i1 %100, label %101, label %106

101:                                              ; preds = %91
  %102 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %0, i32 0, i32 5
  %103 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %0, i32 0, i32 4
  %104 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %0, i32 0, i32 3
  %105 = load i32, ptr %102, align 4
  br label %131

106:                                              ; preds = %91
  %107 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %0, i32 0, i32 10
  %108 = load ptr, ptr %107, align 8
  %109 = getelementptr i8, ptr %108, i32 4
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %109) #11, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !45
  %111 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %0, i32 0, i32 1
  %112 = load i32, ptr %111, align 4
  %113 = and i32 %112, 2
  %114 = icmp eq i32 %113, 0
  %115 = select i1 %114, i32 -33, i32 -17
  %116 = and i32 %115, %110
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !46
  tail call void @arm_heavy_mb() #11
  %117 = load ptr, ptr %107, align 8
  %118 = getelementptr i8, ptr %117, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 %116) #11, !srcloc !11
  store i32 4, ptr %3, align 8
  %119 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %0, i32 0, i32 5
  store i32 0, ptr %119, align 4
  store ptr null, ptr %94, align 8
  %120 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %0, i32 0, i32 4
  %121 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %0, i32 0, i32 3
  store i32 0, ptr %121, align 4
  store i32 -111, ptr %120, align 8
  %122 = load i32, ptr %111, align 4
  %123 = and i32 %122, 8
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %106
  tail call void @__wake_up(ptr noundef %0, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %126

126:                                              ; preds = %125, %106
  %127 = load ptr, ptr %107, align 8
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %127) #11, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !47
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !48
  tail call void @arm_heavy_mb() #11
  %129 = and i32 %128, -33
  %130 = load ptr, ptr %107, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 %129) #11, !srcloc !11
  br label %309

131:                                              ; preds = %165, %101
  %132 = phi ptr [ %93, %101 ], [ %159, %165 ]
  %133 = phi i32 [ %105, %101 ], [ 0, %165 ]
  %134 = getelementptr inbounds %struct.i2c_msg, ptr %132, i32 0, i32 2
  %135 = load i16, ptr %134, align 4
  %136 = zext i16 %135 to i32
  %137 = icmp ult i32 %133, %136
  br i1 %137, label %138, label %152

138:                                              ; preds = %131
  %139 = getelementptr inbounds %struct.i2c_msg, ptr %132, i32 0, i32 3
  %140 = load ptr, ptr %139, align 4
  %141 = add nuw i32 %133, 1
  store i32 %141, ptr %102, align 4
  %142 = getelementptr i8, ptr %140, i32 %133
  %143 = load i8, ptr %142, align 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !49
  tail call void @arm_heavy_mb() #11
  %144 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %0, i32 0, i32 10
  %145 = load ptr, ptr %144, align 8
  %146 = getelementptr i8, ptr %145, i32 12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %146, i8 %143) #11, !srcloc !9
  %147 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %0, i32 0, i32 6
  %148 = load i32, ptr %147, align 8
  %149 = add i32 %148, 999
  %150 = udiv i32 %149, 1000
  %151 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %151(i32 noundef %150) #11
  br label %309

152:                                              ; preds = %131
  %153 = load i32, ptr %103, align 8
  %154 = load i32, ptr %104, align 4
  %155 = add i32 %154, -1
  %156 = icmp ult i32 %153, %155
  br i1 %156, label %157, label %191

157:                                              ; preds = %152
  store i32 0, ptr %102, align 4
  %158 = add nuw i32 %153, 1
  store i32 %158, ptr %103, align 8
  %159 = getelementptr %struct.i2c_msg, ptr %132, i32 1
  store ptr %159, ptr %94, align 8
  %160 = getelementptr %struct.i2c_msg, ptr %132, i32 1, i32 1
  %161 = load i16, ptr %160, align 2
  %162 = zext i16 %161 to i32
  %163 = and i32 %162, 16384
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %190, label %165

165:                                              ; preds = %157
  %166 = and i32 %162, 1
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %131, label %168

168:                                              ; preds = %165
  %169 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %0, i32 0, i32 10
  %170 = load ptr, ptr %169, align 8
  %171 = getelementptr i8, ptr %170, i32 4
  %172 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %171) #11, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !45
  %173 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %0, i32 0, i32 1
  %174 = load i32, ptr %173, align 4
  %175 = and i32 %174, 2
  %176 = icmp eq i32 %175, 0
  %177 = select i1 %176, i32 -33, i32 -17
  %178 = and i32 %177, %172
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !46
  tail call void @arm_heavy_mb() #11
  %179 = load ptr, ptr %169, align 8
  %180 = getelementptr i8, ptr %179, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %180, i32 %178) #11, !srcloc !11
  store i32 4, ptr %3, align 8
  store i32 0, ptr %102, align 4
  store ptr null, ptr %94, align 8
  store i32 0, ptr %104, align 4
  store i32 -22, ptr %103, align 8
  %181 = load i32, ptr %173, align 4
  %182 = and i32 %181, 8
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %168
  tail call void @__wake_up(ptr noundef %0, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %185

185:                                              ; preds = %184, %168
  %186 = load ptr, ptr %169, align 8
  %187 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %186) #11, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !47
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !48
  tail call void @arm_heavy_mb() #11
  %188 = and i32 %187, -33
  %189 = load ptr, ptr %169, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %189, i32 %188) #11, !srcloc !11
  br label %309

190:                                              ; preds = %157
  tail call fastcc void @s3c24xx_i2c_message_start(ptr noundef %0, ptr noundef %159)
  store i32 1, ptr %3, align 8
  br label %309

191:                                              ; preds = %152
  %192 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %0, i32 0, i32 10
  %193 = load ptr, ptr %192, align 8
  %194 = getelementptr i8, ptr %193, i32 4
  %195 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %194) #11, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !45
  %196 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %0, i32 0, i32 1
  %197 = load i32, ptr %196, align 4
  %198 = and i32 %197, 2
  %199 = icmp eq i32 %198, 0
  %200 = select i1 %199, i32 -33, i32 -17
  %201 = and i32 %200, %195
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !46
  tail call void @arm_heavy_mb() #11
  %202 = load ptr, ptr %192, align 8
  %203 = getelementptr i8, ptr %202, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %203, i32 %201) #11, !srcloc !11
  store i32 4, ptr %3, align 8
  store i32 0, ptr %102, align 4
  store ptr null, ptr %94, align 8
  %204 = load i32, ptr %103, align 8
  %205 = add i32 %204, 1
  store i32 %205, ptr %103, align 8
  store i32 0, ptr %104, align 4
  %206 = load i32, ptr %196, align 4
  %207 = and i32 %206, 8
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %191
  tail call void @__wake_up(ptr noundef %0, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %210

210:                                              ; preds = %209, %191
  %211 = load ptr, ptr %192, align 8
  %212 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %211) #11, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !47
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !48
  tail call void @arm_heavy_mb() #11
  %213 = and i32 %212, -33
  %214 = load ptr, ptr %192, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %214, i32 %213) #11, !srcloc !11
  br label %309

215:                                              ; preds = %2
  %216 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %0, i32 0, i32 10
  %217 = load ptr, ptr %216, align 8
  %218 = getelementptr i8, ptr %217, i32 12
  %219 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %218) #11, !srcloc !50
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !51
  %220 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %0, i32 0, i32 2
  %221 = load ptr, ptr %220, align 8
  %222 = getelementptr inbounds %struct.i2c_msg, ptr %221, i32 0, i32 3
  %223 = load ptr, ptr %222, align 4
  %224 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %0, i32 0, i32 5
  %225 = load i32, ptr %224, align 4
  %226 = add i32 %225, 1
  store i32 %226, ptr %224, align 4
  %227 = getelementptr i8, ptr %223, i32 %225
  store i8 %219, ptr %227, align 1
  %228 = load ptr, ptr %220, align 8
  %229 = getelementptr inbounds %struct.i2c_msg, ptr %228, i32 0, i32 1
  %230 = load i16, ptr %229, align 2
  %231 = and i16 %230, 1024
  %232 = icmp eq i16 %231, 0
  br i1 %232, label %241, label %233

233:                                              ; preds = %215
  %234 = getelementptr inbounds %struct.i2c_msg, ptr %228, i32 0, i32 2
  %235 = load i16, ptr %234, align 4
  %236 = icmp eq i16 %235, 1
  br i1 %236, label %237, label %241

237:                                              ; preds = %233
  %238 = zext i8 %219 to i16
  %239 = add nuw nsw i16 %238, 1
  store i16 %239, ptr %234, align 4
  %240 = load ptr, ptr %220, align 8
  br label %241

241:                                              ; preds = %237, %233, %215, %90
  %242 = phi ptr [ %228, %215 ], [ %228, %233 ], [ %240, %237 ], [ %19, %90 ]
  %243 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %0, i32 0, i32 2
  %244 = getelementptr inbounds %struct.i2c_msg, ptr %242, i32 0, i32 1
  %245 = load i16, ptr %244, align 2
  %246 = and i16 %245, 1024
  %247 = icmp ne i16 %246, 0
  %248 = getelementptr inbounds %struct.i2c_msg, ptr %242, i32 0, i32 2
  %249 = load i16, ptr %248, align 4
  %250 = icmp eq i16 %249, 1
  %251 = select i1 %247, i1 %250, i1 false
  %252 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %0, i32 0, i32 5
  %253 = load i32, ptr %252, align 4
  br i1 %251, label %271, label %254

254:                                              ; preds = %241
  %255 = zext i16 %249 to i32
  %256 = add nsw i32 %255, -1
  %257 = icmp eq i32 %253, %256
  br i1 %257, label %258, label %271

258:                                              ; preds = %254
  %259 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %0, i32 0, i32 4
  %260 = load i32, ptr %259, align 8
  %261 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %0, i32 0, i32 3
  %262 = load i32, ptr %261, align 4
  %263 = add i32 %262, -1
  %264 = icmp ult i32 %260, %263
  br i1 %264, label %309, label %265

265:                                              ; preds = %258
  %266 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %0, i32 0, i32 10
  %267 = load ptr, ptr %266, align 8
  %268 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %267) #11, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !52
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !53
  tail call void @arm_heavy_mb() #11
  %269 = and i32 %268, -129
  %270 = load ptr, ptr %266, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %270, i32 %269) #11, !srcloc !11
  br label %309

271:                                              ; preds = %254, %241
  %272 = phi i32 [ %255, %254 ], [ 1, %241 ]
  %273 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %0, i32 0, i32 5
  %274 = icmp ult i32 %253, %272
  br i1 %274, label %309, label %275

275:                                              ; preds = %271
  %276 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %0, i32 0, i32 4
  %277 = load i32, ptr %276, align 8
  %278 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %0, i32 0, i32 3
  %279 = load i32, ptr %278, align 4
  %280 = add i32 %279, -1
  %281 = icmp ult i32 %277, %280
  br i1 %281, label %306, label %282

282:                                              ; preds = %275
  %283 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %0, i32 0, i32 10
  %284 = load ptr, ptr %283, align 8
  %285 = getelementptr i8, ptr %284, i32 4
  %286 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %285) #11, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !45
  %287 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %0, i32 0, i32 1
  %288 = load i32, ptr %287, align 4
  %289 = and i32 %288, 2
  %290 = icmp eq i32 %289, 0
  %291 = select i1 %290, i32 -33, i32 -17
  %292 = and i32 %291, %286
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !46
  tail call void @arm_heavy_mb() #11
  %293 = load ptr, ptr %283, align 8
  %294 = getelementptr i8, ptr %293, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %294, i32 %292) #11, !srcloc !11
  store i32 4, ptr %3, align 8
  store i32 0, ptr %273, align 4
  store ptr null, ptr %243, align 8
  %295 = load i32, ptr %276, align 8
  %296 = add i32 %295, 1
  store i32 %296, ptr %276, align 8
  store i32 0, ptr %278, align 4
  %297 = load i32, ptr %287, align 4
  %298 = and i32 %297, 8
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %301

300:                                              ; preds = %282
  tail call void @__wake_up(ptr noundef %0, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %301

301:                                              ; preds = %300, %282
  %302 = load ptr, ptr %283, align 8
  %303 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %302) #11, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !47
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !48
  tail call void @arm_heavy_mb() #11
  %304 = and i32 %303, -33
  %305 = load ptr, ptr %283, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %305, i32 %304) #11, !srcloc !11
  br label %309

306:                                              ; preds = %275
  store i32 0, ptr %273, align 4
  %307 = add nuw i32 %277, 1
  store i32 %307, ptr %276, align 8
  %308 = getelementptr %struct.i2c_msg, ptr %242, i32 1
  store ptr %308, ptr %243, align 8
  br label %309

309:                                              ; preds = %306, %301, %271, %265, %258, %210, %190, %185, %138, %126, %85, %45, %12, %2
  %310 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %0, i32 0, i32 10
  %311 = load ptr, ptr %310, align 8
  %312 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %311) #11, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !54
  %313 = and i32 %312, -17
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !55
  tail call void @arm_heavy_mb() #11
  %314 = load ptr, ptr %310, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %314, i32 %313) #11, !srcloc !11
  br label %315

315:                                              ; preds = %309, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @s3c24xx_i2c_disable_irq(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #11, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !47
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !48
  tail call void @arm_heavy_mb() #11
  %5 = and i32 %4, -33
  %6 = load ptr, ptr %2, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %5) #11, !srcloc !11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_lookup_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_pinctrl_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3c24xx_i2c_suspend_noirq(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %3, i32 0, i32 13
  %5 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %3, i32 0, i32 13, i32 4
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 4
  tail call void %7(ptr noundef %4, i32 noundef 1) #11
  %8 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %3, i32 0, i32 13, i32 10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %8) #11
  %9 = load ptr, ptr %5, align 8
  %10 = getelementptr inbounds %struct.i2c_lock_operations, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  tail call void %11(ptr noundef %4, i32 noundef 1) #11
  %12 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %3, i32 0, i32 17
  %13 = load ptr, ptr %12, align 8
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %3, i32 0, i32 18
  %17 = tail call i32 @regmap_read(ptr noundef %13, i32 noundef 564, ptr noundef %16) #11
  br label %18

18:                                               ; preds = %15, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3c24xx_i2c_resume_noirq(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %3, i32 0, i32 17
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %3, i32 0, i32 18
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 564, i32 noundef %9) #11
  br label %11

11:                                               ; preds = %7, %1
  %12 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %3, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @clk_enable(ptr noundef %13) #11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %11
  %17 = tail call fastcc i32 @s3c24xx_i2c_init(ptr noundef %3)
  %18 = load ptr, ptr %12, align 4
  tail call void @clk_disable(ptr noundef %18) #11
  %19 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %3, i32 0, i32 13
  %20 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %3, i32 0, i32 13, i32 4
  %21 = load ptr, ptr %20, align 8
  %22 = load ptr, ptr %21, align 4
  tail call void %22(ptr noundef %19, i32 noundef 1) #11
  %23 = getelementptr inbounds %struct.s3c24xx_i2c, ptr %3, i32 0, i32 13, i32 10
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %23) #11
  %24 = load ptr, ptr %20, align 8
  %25 = getelementptr inbounds %struct.i2c_lock_operations, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  tail call void %26(ptr noundef %19, i32 noundef 1) #11
  br label %27

27:                                               ; preds = %16, %11
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #10

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

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
!8 = !{i64 2154461087}
!9 = !{i64 5376264}
!10 = !{i64 2154461913}
!11 = !{i64 5376461}
!12 = !{i64 2154462224}
!13 = !{i64 5376879}
!14 = !{i64 2154458549}
!15 = !{i64 2154458788}
!16 = !{i64 2154459798}
!17 = !{i64 2154444477}
!18 = !{i64 2154446009}
!19 = !{i64 2154446207}
!20 = !{i64 2154448182}
!21 = !{i64 2154431194}
!22 = !{i64 2154431403}
!23 = !{!"auto-init"}
!24 = !{i64 2154449096}
!25 = !{i64 2154449351}
!26 = !{i64 2154449193}
!27 = !{i64 2154449690}
!28 = !{i64 870038, i64 870065, i64 870087, i64 870115}
!29 = !{i64 870446, i64 870473, i64 870506, i64 870527, i64 870554, i64 870580}
!30 = !{i64 2154450045}
!31 = !{i64 2154446840}
!32 = !{i64 2154447038}
!33 = !{i64 2154447502}
!34 = !{i64 2154447718}
!35 = !{i64 2154429460}
!36 = !{i64 2154429669}
!37 = !{i64 2154433152}
!38 = !{i64 2154433342}
!39 = !{i64 2154434339}
!40 = !{i64 2154435147}
!41 = !{i64 2154435480}
!42 = !{i64 2154431889}
!43 = !{i64 2154432234}
!44 = !{i64 2154435955}
!45 = !{i64 2154437037}
!46 = !{i64 2154437726}
!47 = !{i64 2154430324}
!48 = !{i64 2154430535}
!49 = !{i64 2154440880}
!50 = !{i64 5376659}
!51 = !{i64 2154442378}
!52 = !{i64 2154428590}
!53 = !{i64 2154428801}
!54 = !{i64 2154443815}
!55 = !{i64 2154444013}
