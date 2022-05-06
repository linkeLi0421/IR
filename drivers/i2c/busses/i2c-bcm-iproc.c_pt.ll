; ModuleID = '/llk/IR/drivers/i2c/busses/i2c-bcm-iproc.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-bcm-iproc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_adapter_quirks = type { i64, i32, i16, i16, i16, i16 }
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
%struct.bcm_iproc_i2c_dev = type { ptr, i32, i32, ptr, ptr, i32, %struct.spinlock, %struct.i2c_adapter, i32, %struct.completion, i32, ptr, ptr, i32, i32, i32, i8, i8, i8, i32, i32, %struct.tasklet_struct }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.71, i32 }
%union.anon.71 = type { ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_i2c_bcm_iproc__251_1275_bcm_iproc_i2c_driver_init6 = internal global ptr @bcm_iproc_i2c_driver_init, section ".initcall6.init", align 4
@bcm_iproc_i2c_driver = internal global %struct.platform_driver { ptr @bcm_iproc_i2c_probe, ptr @bcm_iproc_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm_iproc_i2c_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_iproc_i2c_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_bcm_iproc_i2c_driver_exit = internal global ptr @bcm_iproc_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author252 = internal constant [49 x i8] c"i2c_bcm_iproc.author=Ray Jui <rjui@broadcom.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description253 = internal constant [52 x i8] c"i2c_bcm_iproc.description=Broadcom iProc I2C Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file254 = internal constant [52 x i8] c"i2c_bcm_iproc.file=drivers/i2c/busses/i2c-bcm-iproc\00", section ".modinfo", align 1
@__UNIQUE_ID_license255 = internal constant [29 x i8] c"i2c_bcm_iproc.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [14 x i8] c"bcm-iproc-i2c\00", align 1
@bcm_iproc_i2c_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,iproc-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,iproc-nic-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@bcm_iproc_i2c_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_iproc_i2c_suspend, ptr @bcm_iproc_i2c_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"brcm,ape-hsls-addr-mask\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"'brcm,ape-hsls-addr-mask' missing\0A\00", align 1
@bcm_iproc_algo = internal global %struct.i2c_algorithm { ptr @bcm_iproc_i2c_xfer, ptr null, ptr null, ptr null, ptr @bcm_iproc_i2c_functionality, ptr @bcm_iproc_i2c_reg_slave, ptr @bcm_iproc_i2c_unreg_slave }, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"unable to request irq %i\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"no irq resource, falling back to poll mode\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Broadcom iProc (%s)\00", align 1
@bcm_iproc_i2c_quirks = internal constant %struct.i2c_adapter_quirks { i64 15, i32 0, i16 0, i16 255, i16 64, i16 0 }, align 8
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Invalid repeated start\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"bus is busy\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.10 = private unnamed_addr constant [23 x i8] c"transaction timed out\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.11 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c"unable to interpret clock-frequency DT property\0A\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"%d Hz bus speed not supported\0A\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"valid speeds are 100khz and 400khz\0A\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"bus set to %u Hz\0A\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"slave random stretch time timeout\0A\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"Master aborted read transaction\0A\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"<no-node>\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_description253, ptr @__UNIQUE_ID_file254, ptr @__UNIQUE_ID_license255, ptr @__exitcall_bcm_iproc_i2c_driver_exit, ptr @__initcall__kmod_i2c_bcm_iproc__251_1275_bcm_iproc_i2c_driver_init6, ptr @bcm_iproc_i2c_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @bcm_iproc_i2c_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm_iproc_i2c_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @bcm_iproc_i2c_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcm_iproc_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_iproc_i2c_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 768, i32 noundef 3520) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %136, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %7, align 8
  store ptr %3, ptr %4, align 8
  %8 = tail call ptr @of_device_get_match_data(ptr noundef %3) #8
  %9 = ptrtoint ptr %8 to i32
  %10 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %4, i32 0, i32 1
  store i32 %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %4, i32 0, i32 9
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %4, i32 0, i32 9, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %12, ptr noundef nonnull @.str.6, ptr noundef nonnull @init_completion.__key) #8
  %13 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #8
  %14 = load ptr, ptr %4, align 8
  %15 = tail call ptr @devm_ioremap_resource(ptr noundef %14, ptr noundef %13) #8
  %16 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %4, i32 0, i32 3
  store ptr %15, ptr %16, align 4
  %17 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %20

18:                                               ; preds = %6
  %19 = ptrtoint ptr %15 to i32
  br label %136

20:                                               ; preds = %6
  %21 = load i32, ptr %10, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %42

23:                                               ; preds = %20
  %24 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 1) #8
  %25 = load ptr, ptr %4, align 8
  %26 = tail call ptr @devm_ioremap_resource(ptr noundef %25, ptr noundef %24) #8
  %27 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %4, i32 0, i32 4
  store ptr %26, ptr %27, align 8
  %28 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = ptrtoint ptr %26 to i32
  br label %136

31:                                               ; preds = %23
  %32 = load ptr, ptr %4, align 8
  %33 = getelementptr inbounds %struct.device, ptr %32, i32 0, i32 25
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %4, i32 0, i32 5
  %36 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %34, ptr noundef nonnull @.str.1, ptr noundef %35, i32 noundef 1, i32 noundef 0) #8
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load ptr, ptr %4, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.2) #9
  br label %136

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %4, i32 0, i32 6
  store i32 0, ptr %41, align 8
  store ptr null, ptr getelementptr inbounds (%struct.i2c_algorithm, ptr @bcm_iproc_algo, i32 0, i32 5), align 4
  store ptr null, ptr getelementptr inbounds (%struct.i2c_algorithm, ptr @bcm_iproc_algo, i32 0, i32 6), align 4
  br label %42

42:                                               ; preds = %40, %20
  tail call fastcc void @bcm_iproc_i2c_init(ptr noundef nonnull %4)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  %43 = load ptr, ptr %4, align 8
  %44 = getelementptr inbounds %struct.device, ptr %43, i32 0, i32 25
  %45 = load ptr, ptr %44, align 8
  %46 = call i32 @of_property_read_variable_u32_array(ptr noundef %45, ptr noundef nonnull @.str.11, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #8
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load ptr, ptr %4, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %49, ptr noundef nonnull @.str.12) #9
  br label %55

50:                                               ; preds = %42
  %51 = load i32, ptr %2, align 4
  %52 = icmp ult i32 %51, 100000
  br i1 %52, label %97, label %53

53:                                               ; preds = %50
  %54 = icmp ult i32 %51, 400000
  br i1 %54, label %55, label %56

55:                                               ; preds = %53, %48
  br label %56

56:                                               ; preds = %55, %53
  %57 = phi i32 [ 100000, %55 ], [ 400000, %53 ]
  store i32 %57, ptr %2, align 4
  %58 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %4, i32 0, i32 8
  store i32 %57, ptr %58, align 8
  %59 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %4, i32 0, i32 4
  %60 = load ptr, ptr %59, align 8
  %61 = icmp eq ptr %60, null
  br i1 %61, label %72, label %62

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %4, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %63) #8
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !9
  call void @arm_heavy_mb() #8
  %64 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %4, i32 0, i32 5
  %65 = load i32, ptr %64, align 4
  %66 = load ptr, ptr %59, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %65) #8, !srcloc !10
  %67 = load ptr, ptr %16, align 4
  %68 = getelementptr i8, ptr %67, i32 4
  %69 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #8, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %70 = load i16, ptr %63, align 4
  %71 = add i16 %70, 1
  store i16 %71, ptr %63, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %76

72:                                               ; preds = %56
  %73 = load ptr, ptr %16, align 4
  %74 = getelementptr i8, ptr %73, i32 4
  %75 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #8, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !17
  br label %76

76:                                               ; preds = %72, %62
  %77 = phi i32 [ %69, %62 ], [ %75, %72 ]
  %78 = and i32 %77, 2147483647
  %79 = load i32, ptr %2, align 4
  %80 = icmp eq i32 %79, 400000
  %81 = select i1 %80, i32 -2147483648, i32 0
  %82 = or i32 %81, %78
  %83 = load ptr, ptr %59, align 8
  %84 = icmp eq ptr %83, null
  br i1 %84, label %94, label %85

85:                                               ; preds = %76
  %86 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %4, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %86) #8
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  call void @arm_heavy_mb() #8
  %87 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %4, i32 0, i32 5
  %88 = load i32, ptr %87, align 4
  %89 = load ptr, ptr %59, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 %88) #8, !srcloc !10
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  call void @arm_heavy_mb() #8
  %90 = load ptr, ptr %16, align 4
  %91 = getelementptr i8, ptr %90, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %82) #8, !srcloc !10
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %92 = load i16, ptr %86, align 4
  %93 = add i16 %92, 1
  store i16 %93, ptr %86, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %100

94:                                               ; preds = %76
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  call void @arm_heavy_mb() #8
  %95 = load ptr, ptr %16, align 4
  %96 = getelementptr i8, ptr %95, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 %82) #8, !srcloc !10
  br label %100

97:                                               ; preds = %50
  %98 = load ptr, ptr %4, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %98, ptr noundef nonnull @.str.13, i32 noundef %51) #9
  %99 = load ptr, ptr %4, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %99, ptr noundef nonnull @.str.14) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  br label %136

100:                                              ; preds = %94, %85
  %101 = load ptr, ptr %4, align 8
  %102 = load i32, ptr %2, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %101, ptr noundef nonnull @.str.15, i32 noundef %102) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  %103 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #8
  %104 = icmp sgt i32 %103, 0
  %105 = load ptr, ptr %4, align 8
  br i1 %104, label %106, label %114

106:                                              ; preds = %100
  %107 = load ptr, ptr %0, align 8
  %108 = call i32 @devm_request_threaded_irq(ptr noundef %105, i32 noundef %103, ptr noundef nonnull @bcm_iproc_i2c_isr, ptr noundef null, i32 noundef 0, ptr noundef %107, ptr noundef nonnull %4) #8
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = load ptr, ptr %4, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %111, ptr noundef nonnull @.str.3, i32 noundef %103) #9
  br label %136

112:                                              ; preds = %106
  %113 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %4, i32 0, i32 2
  store i32 %103, ptr %113, align 8
  br label %115

114:                                              ; preds = %100
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %105, ptr noundef nonnull @.str.4) #9
  br label %115

115:                                              ; preds = %114, %112
  call fastcc void @bcm_iproc_i2c_enable_disable(ptr noundef nonnull %4, i1 noundef zeroext true)
  %116 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %4, i32 0, i32 7
  %117 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %4, i32 0, i32 7, i32 9, i32 8
  store ptr %4, ptr %117, align 8
  %118 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %4, i32 0, i32 7, i32 12
  %119 = load ptr, ptr %4, align 8
  %120 = getelementptr inbounds %struct.device, ptr %119, i32 0, i32 25
  %121 = load ptr, ptr %120, align 8
  %122 = icmp eq ptr %121, null
  br i1 %122, label %126, label %123

123:                                              ; preds = %115
  %124 = getelementptr inbounds %struct.device_node, ptr %121, i32 0, i32 2
  %125 = load ptr, ptr %124, align 4
  br label %126

126:                                              ; preds = %123, %115
  %127 = phi ptr [ %125, %123 ], [ @.str.18, %115 ]
  %128 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %118, i32 noundef 48, ptr noundef nonnull @.str.5, ptr noundef %127)
  %129 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %4, i32 0, i32 7, i32 2
  store ptr @bcm_iproc_algo, ptr %129, align 8
  %130 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %4, i32 0, i32 7, i32 17
  store ptr @bcm_iproc_i2c_quirks, ptr %130, align 8
  %131 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %4, i32 0, i32 7, i32 9, i32 1
  store ptr %3, ptr %131, align 4
  %132 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %133 = load ptr, ptr %132, align 8
  %134 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %4, i32 0, i32 7, i32 9, i32 25
  store ptr %133, ptr %134, align 8
  %135 = call i32 @i2c_add_adapter(ptr noundef %116) #8
  br label %136

136:                                              ; preds = %126, %110, %97, %38, %29, %18, %1
  %137 = phi i32 [ %19, %18 ], [ %30, %29 ], [ -22, %38 ], [ %108, %110 ], [ %135, %126 ], [ -12, %1 ], [ -22, %97 ]
  ret i32 %137
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_iproc_i2c_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %46, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 4
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %12) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  tail call void @arm_heavy_mb() #8
  %13 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = load ptr, ptr %8, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %14) #8, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  %16 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 0) #8, !srcloc !10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %19 = load i16, ptr %12, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %25

21:                                               ; preds = %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %22 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 0) #8, !srcloc !10
  br label %25

25:                                               ; preds = %21, %11
  %26 = load ptr, ptr %8, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %39, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %29) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !9
  tail call void @arm_heavy_mb() #8
  %30 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = load ptr, ptr %8, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %31) #8, !srcloc !10
  %33 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr i8, ptr %34, i32 56
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %37 = load i16, ptr %29, align 4
  %38 = add i16 %37, 1
  store i16 %38, ptr %29, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %44

39:                                               ; preds = %25
  %40 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr i8, ptr %41, i32 56
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !17
  br label %44

44:                                               ; preds = %39, %28
  %45 = load i32, ptr %4, align 8
  tail call void @synchronize_irq(i32 noundef %45) #8
  br label %46

46:                                               ; preds = %44, %1
  %47 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 7
  tail call void @i2c_del_adapter(ptr noundef %47) #8
  tail call fastcc void @bcm_iproc_i2c_enable_disable(ptr noundef %3, i1 noundef zeroext false)
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bcm_iproc_i2c_init(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %6) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !9
  tail call void @arm_heavy_mb() #8
  %7 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = load ptr, ptr %2, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %8) #8, !srcloc !10
  %10 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %13 = load i16, ptr %6, align 4
  %14 = add i16 %13, 1
  store i16 %14, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %19

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !17
  br label %19

19:                                               ; preds = %15, %5
  %20 = phi i32 [ %12, %5 ], [ %18, %15 ]
  %21 = and i32 %20, 1073741823
  %22 = or i32 %21, -2147483648
  %23 = load ptr, ptr %2, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %26) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  tail call void @arm_heavy_mb() #8
  %27 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 5
  %28 = load i32, ptr %27, align 4
  %29 = load ptr, ptr %2, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %28) #8, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  %30 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %22) #8, !srcloc !10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %32 = load i16, ptr %26, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr %26, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %37

34:                                               ; preds = %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %35 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %22) #8, !srcloc !10
  br label %37

37:                                               ; preds = %34, %25
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 21474800) #8
  %39 = load ptr, ptr %2, align 8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %50, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %42) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  tail call void @arm_heavy_mb() #8
  %43 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 5
  %44 = load i32, ptr %43, align 4
  %45 = load ptr, ptr %2, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %44) #8, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  %46 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %21) #8, !srcloc !10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %48 = load i16, ptr %42, align 4
  %49 = add i16 %48, 1
  store i16 %49, ptr %42, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %53

50:                                               ; preds = %37
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %51 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 3
  %52 = load ptr, ptr %51, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %21) #8, !srcloc !10
  br label %53

53:                                               ; preds = %50, %41
  %54 = load ptr, ptr %2, align 8
  %55 = icmp eq ptr %54, null
  br i1 %55, label %66, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %57) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  tail call void @arm_heavy_mb() #8
  %58 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 5
  %59 = load i32, ptr %58, align 4
  %60 = load ptr, ptr %2, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %59) #8, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  %61 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 3
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr i8, ptr %62, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 -1073741824) #8, !srcloc !10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %64 = load i16, ptr %57, align 4
  %65 = add i16 %64, 1
  store i16 %65, ptr %57, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %70

66:                                               ; preds = %53
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %67 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 3
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr i8, ptr %68, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 -1073741824) #8, !srcloc !10
  br label %70

70:                                               ; preds = %66, %56
  %71 = load ptr, ptr %2, align 8
  %72 = icmp eq ptr %71, null
  br i1 %72, label %84, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %74) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !9
  tail call void @arm_heavy_mb() #8
  %75 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 5
  %76 = load i32, ptr %75, align 4
  %77 = load ptr, ptr %2, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %76) #8, !srcloc !10
  %78 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 3
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr i8, ptr %79, i32 56
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %80) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %82 = load i16, ptr %74, align 4
  %83 = add i16 %82, 1
  store i16 %83, ptr %74, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %89

84:                                               ; preds = %70
  %85 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 3
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr i8, ptr %86, i32 56
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !17
  br label %89

89:                                               ; preds = %84, %73
  %90 = phi i32 [ %81, %73 ], [ %88, %84 ]
  %91 = and i32 %90, 268435455
  %92 = load ptr, ptr %2, align 8
  %93 = icmp eq ptr %92, null
  br i1 %93, label %104, label %94

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %95) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  tail call void @arm_heavy_mb() #8
  %96 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 5
  %97 = load i32, ptr %96, align 4
  %98 = load ptr, ptr %2, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 %97) #8, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  %99 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 3
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr i8, ptr %100, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 %91) #8, !srcloc !10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %102 = load i16, ptr %95, align 4
  %103 = add i16 %102, 1
  store i16 %103, ptr %95, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %108

104:                                              ; preds = %89
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %105 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 3
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr i8, ptr %106, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 %91) #8, !srcloc !10
  br label %108

108:                                              ; preds = %104, %94
  %109 = load ptr, ptr %2, align 8
  %110 = icmp eq ptr %109, null
  br i1 %110, label %121, label %111

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %112) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  tail call void @arm_heavy_mb() #8
  %113 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 5
  %114 = load i32, ptr %113, align 4
  %115 = load ptr, ptr %2, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 %114) #8, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  %116 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 3
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr i8, ptr %117, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 -1) #8, !srcloc !10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %119 = load i16, ptr %112, align 4
  %120 = add i16 %119, 1
  store i16 %120, ptr %112, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %125

121:                                              ; preds = %108
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %122 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 3
  %123 = load ptr, ptr %122, align 4
  %124 = getelementptr i8, ptr %123, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %124, i32 -1) #8, !srcloc !10
  br label %125

125:                                              ; preds = %121, %111
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_iproc_i2c_isr(i32 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %8) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !9
  tail call void @arm_heavy_mb() #8
  %9 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = load ptr, ptr %4, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %10) #8, !srcloc !10
  %12 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 60
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %16 = load i16, ptr %8, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %23

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 60
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !17
  br label %23

23:                                               ; preds = %18, %7
  %24 = phi i32 [ %15, %7 ], [ %22, %18 ]
  %25 = load ptr, ptr %4, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %38, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %28) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !9
  tail call void @arm_heavy_mb() #8
  %29 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = load ptr, ptr %4, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %30) #8, !srcloc !10
  %32 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %33, i32 56
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %36 = load i16, ptr %28, align 4
  %37 = add i16 %36, 1
  store i16 %37, ptr %28, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %43

38:                                               ; preds = %23
  %39 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr i8, ptr %40, i32 56
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !17
  br label %43

43:                                               ; preds = %38, %27
  %44 = phi i32 [ %35, %27 ], [ %42, %38 ]
  %45 = and i32 %44, %24
  %46 = and i32 %45, 132120576
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %339, label %48

48:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #8
  store i8 0, ptr %3, align 1, !annotation !8
  %49 = and i32 %45, 67108864
  %50 = and i32 %45, 85983232
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %122, label %52

52:                                               ; preds = %48
  %53 = load ptr, ptr %4, align 8
  %54 = icmp eq ptr %53, null
  br i1 %54, label %66, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %56) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !9
  tail call void @arm_heavy_mb() #8
  %57 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 5
  %58 = load i32, ptr %57, align 4
  %59 = load ptr, ptr %4, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %58) #8, !srcloc !10
  %60 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr i8, ptr %61, i32 56
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %64 = load i16, ptr %56, align 4
  %65 = add i16 %64, 1
  store i16 %65, ptr %56, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %71

66:                                               ; preds = %52
  %67 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr i8, ptr %68, i32 56
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !17
  br label %71

71:                                               ; preds = %66, %55
  %72 = phi i32 [ %63, %55 ], [ %70, %66 ]
  %73 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 20
  %74 = load i32, ptr %73, align 4
  %75 = xor i32 %74, -1
  %76 = and i32 %72, %75
  %77 = load ptr, ptr %4, align 8
  %78 = icmp eq ptr %77, null
  br i1 %78, label %89, label %79

79:                                               ; preds = %71
  %80 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %80) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  tail call void @arm_heavy_mb() #8
  %81 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 5
  %82 = load i32, ptr %81, align 4
  %83 = load ptr, ptr %4, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %82) #8, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  %84 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr i8, ptr %85, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %76) #8, !srcloc !10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %87 = load i16, ptr %80, align 4
  %88 = add i16 %87, 1
  store i16 %88, ptr %80, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %93

89:                                               ; preds = %71
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %90 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr i8, ptr %91, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %76) #8, !srcloc !10
  br label %93

93:                                               ; preds = %89, %79
  %94 = lshr exact i32 %46, 21
  %95 = trunc i32 %94 to i8
  %96 = and i8 %95, 1
  %97 = xor i8 %96, 1
  %98 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 16
  store i8 %97, ptr %98, align 4
  %99 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 21, i32 1
  %100 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %99) #8
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %93
  %103 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 21
  tail call void @__tasklet_schedule(ptr noundef %103) #8
  br label %104

104:                                              ; preds = %102, %93
  %105 = or i32 %49, 16777216
  %106 = load ptr, ptr %4, align 8
  %107 = icmp eq ptr %106, null
  br i1 %107, label %118, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %109) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  tail call void @arm_heavy_mb() #8
  %110 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 5
  %111 = load i32, ptr %110, align 4
  %112 = load ptr, ptr %4, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %112, i32 %111) #8, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  %113 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %114 = load ptr, ptr %113, align 4
  %115 = getelementptr i8, ptr %114, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 %105) #8, !srcloc !10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %116 = load i16, ptr %109, align 4
  %117 = add i16 %116, 1
  store i16 %117, ptr %109, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %122

118:                                              ; preds = %104
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %119 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %120 = load ptr, ptr %119, align 4
  %121 = getelementptr i8, ptr %120, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 %105) #8, !srcloc !10
  br label %122

122:                                              ; preds = %118, %108, %48
  %123 = and i32 %45, 4194304
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %188, label %125

125:                                              ; preds = %122
  %126 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 19
  %127 = load i32, ptr %126, align 8
  %128 = add i32 %127, 1
  store i32 %128, ptr %126, align 8
  %129 = icmp eq i32 %127, 0
  %130 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 12
  %131 = load ptr, ptr %130, align 4
  %132 = getelementptr inbounds %struct.i2c_client, ptr %131, i32 0, i32 8
  %133 = load ptr, ptr %132, align 8
  %134 = select i1 %129, i32 0, i32 2
  %135 = call i32 %133(ptr noundef %131, i32 noundef %134, ptr noundef nonnull %3) #8
  %136 = load i8, ptr %3, align 1
  %137 = zext i8 %136 to i32
  %138 = load ptr, ptr %4, align 8
  %139 = icmp eq ptr %138, null
  br i1 %139, label %150, label %140

140:                                              ; preds = %125
  %141 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %141) #8
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  call void @arm_heavy_mb() #8
  %142 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 5
  %143 = load i32, ptr %142, align 4
  %144 = load ptr, ptr %4, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %144, i32 %143) #8, !srcloc !10
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  call void @arm_heavy_mb() #8
  %145 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %146 = load ptr, ptr %145, align 4
  %147 = getelementptr i8, ptr %146, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %147, i32 %137) #8, !srcloc !10
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %148 = load i16, ptr %141, align 4
  %149 = add i16 %148, 1
  store i16 %149, ptr %141, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %154

150:                                              ; preds = %125
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  call void @arm_heavy_mb() #8
  %151 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %152 = load ptr, ptr %151, align 4
  %153 = getelementptr i8, ptr %152, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %153, i32 %137) #8, !srcloc !10
  br label %154

154:                                              ; preds = %150, %140
  %155 = load ptr, ptr %4, align 8
  %156 = icmp eq ptr %155, null
  br i1 %156, label %167, label %157

157:                                              ; preds = %154
  %158 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %158) #8
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  call void @arm_heavy_mb() #8
  %159 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 5
  %160 = load i32, ptr %159, align 4
  %161 = load ptr, ptr %4, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %161, i32 %160) #8, !srcloc !10
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  call void @arm_heavy_mb() #8
  %162 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %163 = load ptr, ptr %162, align 4
  %164 = getelementptr i8, ptr %163, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %164, i32 -2147483648) #8, !srcloc !10
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %165 = load i16, ptr %158, align 4
  %166 = add i16 %165, 1
  store i16 %166, ptr %158, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %171

167:                                              ; preds = %154
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  call void @arm_heavy_mb() #8
  %168 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %169 = load ptr, ptr %168, align 4
  %170 = getelementptr i8, ptr %169, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %170, i32 -2147483648) #8, !srcloc !10
  br label %171

171:                                              ; preds = %167, %157
  %172 = load ptr, ptr %4, align 8
  %173 = icmp eq ptr %172, null
  br i1 %173, label %184, label %174

174:                                              ; preds = %171
  %175 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %175) #8
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  call void @arm_heavy_mb() #8
  %176 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 5
  %177 = load i32, ptr %176, align 4
  %178 = load ptr, ptr %4, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %178, i32 %177) #8, !srcloc !10
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  call void @arm_heavy_mb() #8
  %179 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %180 = load ptr, ptr %179, align 4
  %181 = getelementptr i8, ptr %180, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %181, i32 4194304) #8, !srcloc !10
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %182 = load i16, ptr %175, align 4
  %183 = add i16 %182, 1
  store i16 %183, ptr %175, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %188

184:                                              ; preds = %171
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  call void @arm_heavy_mb() #8
  %185 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %186 = load ptr, ptr %185, align 4
  %187 = getelementptr i8, ptr %186, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %187, i32 4194304) #8, !srcloc !10
  br label %188

188:                                              ; preds = %184, %174, %122
  %189 = and i32 %45, 8388608
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %305, label %191

191:                                              ; preds = %188
  %192 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 20
  %193 = load i32, ptr %192, align 4
  %194 = and i32 %193, -4194305
  store i32 %194, ptr %192, align 4
  %195 = load ptr, ptr %4, align 8
  %196 = icmp eq ptr %195, null
  br i1 %196, label %207, label %197

197:                                              ; preds = %191
  %198 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %198) #8
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  call void @arm_heavy_mb() #8
  %199 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 5
  %200 = load i32, ptr %199, align 4
  %201 = load ptr, ptr %4, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %201, i32 %200) #8, !srcloc !10
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  call void @arm_heavy_mb() #8
  %202 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %203 = load ptr, ptr %202, align 4
  %204 = getelementptr i8, ptr %203, i32 56
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %204, i32 %194) #8, !srcloc !10
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %205 = load i16, ptr %198, align 4
  %206 = add i16 %205, 1
  store i16 %206, ptr %198, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %211

207:                                              ; preds = %191
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  call void @arm_heavy_mb() #8
  %208 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %209 = load ptr, ptr %208, align 4
  %210 = getelementptr i8, ptr %209, i32 56
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %210, i32 %194) #8, !srcloc !10
  br label %211

211:                                              ; preds = %207, %197
  %212 = load ptr, ptr %4, align 8
  %213 = icmp eq ptr %212, null
  br i1 %213, label %224, label %214

214:                                              ; preds = %211
  %215 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %215) #8
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  call void @arm_heavy_mb() #8
  %216 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 5
  %217 = load i32, ptr %216, align 4
  %218 = load ptr, ptr %4, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %218, i32 %217) #8, !srcloc !10
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  call void @arm_heavy_mb() #8
  %219 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %220 = load ptr, ptr %219, align 4
  %221 = getelementptr i8, ptr %220, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %221, i32 -2147483648) #8, !srcloc !10
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %222 = load i16, ptr %215, align 4
  %223 = add i16 %222, 1
  store i16 %223, ptr %215, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %228

224:                                              ; preds = %211
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  call void @arm_heavy_mb() #8
  %225 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %226 = load ptr, ptr %225, align 4
  %227 = getelementptr i8, ptr %226, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %227, i32 -2147483648) #8, !srcloc !10
  br label %228

228:                                              ; preds = %224, %214
  %229 = load ptr, ptr %4, align 8
  %230 = icmp eq ptr %229, null
  br i1 %230, label %241, label %231

231:                                              ; preds = %228
  %232 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %232) #8
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  call void @arm_heavy_mb() #8
  %233 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 5
  %234 = load i32, ptr %233, align 4
  %235 = load ptr, ptr %4, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %235, i32 %234) #8, !srcloc !10
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  call void @arm_heavy_mb() #8
  %236 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %237 = load ptr, ptr %236, align 4
  %238 = getelementptr i8, ptr %237, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %238, i32 -2147483648) #8, !srcloc !10
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %239 = load i16, ptr %232, align 4
  %240 = add i16 %239, 1
  store i16 %240, ptr %232, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %245

241:                                              ; preds = %228
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  call void @arm_heavy_mb() #8
  %242 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %243 = load ptr, ptr %242, align 4
  %244 = getelementptr i8, ptr %243, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %244, i32 -2147483648) #8, !srcloc !10
  br label %245

245:                                              ; preds = %241, %231
  %246 = load ptr, ptr %4, align 8
  %247 = icmp eq ptr %246, null
  br i1 %247, label %259, label %248

248:                                              ; preds = %245
  %249 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %249) #8
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !9
  call void @arm_heavy_mb() #8
  %250 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 5
  %251 = load i32, ptr %250, align 4
  %252 = load ptr, ptr %4, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %252, i32 %251) #8, !srcloc !10
  %253 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %254 = load ptr, ptr %253, align 4
  %255 = getelementptr i8, ptr %254, i32 16
  %256 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %255) #8, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %257 = load i16, ptr %249, align 4
  %258 = add i16 %257, 1
  store i16 %258, ptr %249, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %264

259:                                              ; preds = %245
  %260 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %261 = load ptr, ptr %260, align 4
  %262 = getelementptr i8, ptr %261, i32 16
  %263 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %262) #8, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !17
  br label %264

264:                                              ; preds = %259, %248
  %265 = phi i32 [ %256, %248 ], [ %263, %259 ]
  %266 = or i32 %265, 1073741824
  %267 = load ptr, ptr %4, align 8
  %268 = icmp eq ptr %267, null
  br i1 %268, label %279, label %269

269:                                              ; preds = %264
  %270 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %270) #8
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  call void @arm_heavy_mb() #8
  %271 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 5
  %272 = load i32, ptr %271, align 4
  %273 = load ptr, ptr %4, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %273, i32 %272) #8, !srcloc !10
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  call void @arm_heavy_mb() #8
  %274 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %275 = load ptr, ptr %274, align 4
  %276 = getelementptr i8, ptr %275, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %276, i32 %266) #8, !srcloc !10
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %277 = load i16, ptr %270, align 4
  %278 = add i16 %277, 1
  store i16 %278, ptr %270, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %283

279:                                              ; preds = %264
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  call void @arm_heavy_mb() #8
  %280 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %281 = load ptr, ptr %280, align 4
  %282 = getelementptr i8, ptr %281, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %282, i32 %266) #8, !srcloc !10
  br label %283

283:                                              ; preds = %279, %269
  %284 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 12
  %285 = load ptr, ptr %284, align 4
  %286 = getelementptr inbounds %struct.i2c_client, ptr %285, i32 0, i32 8
  %287 = load ptr, ptr %286, align 8
  %288 = call i32 %287(ptr noundef %285, i32 noundef 4, ptr noundef nonnull %3) #8
  %289 = load ptr, ptr %4, align 8
  %290 = icmp eq ptr %289, null
  br i1 %290, label %301, label %291

291:                                              ; preds = %283
  %292 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %292) #8
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  call void @arm_heavy_mb() #8
  %293 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 5
  %294 = load i32, ptr %293, align 4
  %295 = load ptr, ptr %4, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %295, i32 %294) #8, !srcloc !10
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  call void @arm_heavy_mb() #8
  %296 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %297 = load ptr, ptr %296, align 4
  %298 = getelementptr i8, ptr %297, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %298, i32 8388608) #8, !srcloc !10
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %299 = load i16, ptr %292, align 4
  %300 = add i16 %299, 1
  store i16 %300, ptr %292, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %305

301:                                              ; preds = %283
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  call void @arm_heavy_mb() #8
  %302 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %303 = load ptr, ptr %302, align 4
  %304 = getelementptr i8, ptr %303, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %304, i32 8388608) #8, !srcloc !10
  br label %305

305:                                              ; preds = %301, %291, %188
  %306 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 16
  %307 = load i8, ptr %306, align 4, !range !21
  %308 = icmp eq i8 %307, 0
  br i1 %308, label %309, label %338

309:                                              ; preds = %305
  %310 = load ptr, ptr %4, align 8
  %311 = icmp eq ptr %310, null
  br i1 %311, label %323, label %312

312:                                              ; preds = %309
  %313 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %313) #8
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !9
  call void @arm_heavy_mb() #8
  %314 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 5
  %315 = load i32, ptr %314, align 4
  %316 = load ptr, ptr %4, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %316, i32 %315) #8, !srcloc !10
  %317 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %318 = load ptr, ptr %317, align 4
  %319 = getelementptr i8, ptr %318, i32 52
  %320 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %319) #8, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %321 = load i16, ptr %313, align 4
  %322 = add i16 %321, 1
  store i16 %322, ptr %313, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %328

323:                                              ; preds = %309
  %324 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %325 = load ptr, ptr %324, align 4
  %326 = getelementptr i8, ptr %325, i32 52
  %327 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %326) #8, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !17
  br label %328

328:                                              ; preds = %323, %312
  %329 = phi i32 [ %320, %312 ], [ %327, %323 ]
  %330 = icmp sgt i32 %329, -1
  br i1 %330, label %331, label %338

331:                                              ; preds = %328
  %332 = lshr i32 %329, 23
  %333 = and i32 %332, 7
  switch i32 %333, label %338 [
    i32 7, label %334
    i32 5, label %334
  ]

334:                                              ; preds = %331, %331
  %335 = icmp eq i32 %333, 5
  %336 = load ptr, ptr %1, align 8
  %337 = select i1 %335, ptr @.str.16, ptr @.str.17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %336, ptr noundef nonnull %337) #9
  call fastcc void @bcm_iproc_i2c_enable_disable(ptr noundef %1, i1 noundef zeroext false) #8
  call fastcc void @bcm_iproc_i2c_slave_init(ptr noundef %1, i1 noundef zeroext true) #8
  call fastcc void @bcm_iproc_i2c_enable_disable(ptr noundef %1, i1 noundef zeroext true) #8
  br label %338

338:                                              ; preds = %334, %331, %328, %305
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #8
  br label %359

339:                                              ; preds = %43
  %340 = and i32 %24, 1476395008
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %359, label %342

342:                                              ; preds = %339
  tail call fastcc void @bcm_iproc_i2c_process_m_event(ptr noundef %1, i32 noundef %340)
  %343 = load ptr, ptr %4, align 8
  %344 = icmp eq ptr %343, null
  br i1 %344, label %355, label %345

345:                                              ; preds = %342
  %346 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %346) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  tail call void @arm_heavy_mb() #8
  %347 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 5
  %348 = load i32, ptr %347, align 4
  %349 = load ptr, ptr %4, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %349, i32 %348) #8, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  %350 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %351 = load ptr, ptr %350, align 4
  %352 = getelementptr i8, ptr %351, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %352, i32 %340) #8, !srcloc !10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %353 = load i16, ptr %346, align 4
  %354 = add i16 %353, 1
  store i16 %354, ptr %346, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %359

355:                                              ; preds = %342
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %356 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %1, i32 0, i32 3
  %357 = load ptr, ptr %356, align 4
  %358 = getelementptr i8, ptr %357, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %358, i32 %340) #8, !srcloc !10
  br label %359

359:                                              ; preds = %355, %345, %339, %338
  %360 = phi i32 [ 1, %338 ], [ 0, %339 ], [ 1, %345 ], [ 1, %355 ]
  ret i32 %360
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bcm_iproc_i2c_enable_disable(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %7) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !9
  tail call void @arm_heavy_mb() #8
  %8 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = load ptr, ptr %3, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %9) #8, !srcloc !10
  %11 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %14 = load i16, ptr %7, align 4
  %15 = add i16 %14, 1
  store i16 %15, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %20

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !17
  br label %20

20:                                               ; preds = %16, %6
  %21 = phi i32 [ %13, %6 ], [ %19, %16 ]
  %22 = and i32 %21, -1073741825
  %23 = select i1 %1, i32 1073741824, i32 0
  %24 = or i32 %22, %23
  %25 = load ptr, ptr %3, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %36, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %28) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  tail call void @arm_heavy_mb() #8
  %29 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = load ptr, ptr %3, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %30) #8, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  %32 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %24) #8, !srcloc !10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %34 = load i16, ptr %28, align 4
  %35 = add i16 %34, 1
  store i16 %35, ptr %28, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %39

36:                                               ; preds = %20
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %37 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %24) #8, !srcloc !10
  br label %39

39:                                               ; preds = %36, %27
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_iproc_i2c_xfer(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq i32 %2, 2
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = getelementptr %struct.i2c_msg, ptr %1, i32 1, i32 1
  %9 = load i16, ptr %8, align 2
  %10 = and i16 %9, 16384
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.7) #9
  br label %423

14:                                               ; preds = %7, %3
  %15 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 4
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %29, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %19) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !9
  tail call void @arm_heavy_mb() #8
  %20 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = load ptr, ptr %15, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %21) #8, !srcloc !10
  %23 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 48
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %27 = load i16, ptr %19, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr %19, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %34

29:                                               ; preds = %14
  %30 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i8, ptr %31, i32 48
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !17
  br label %34

34:                                               ; preds = %29, %18
  %35 = phi i32 [ %26, %18 ], [ %33, %29 ]
  %36 = icmp sgt i32 %35, -1
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %38, ptr noundef nonnull @.str.8) #9
  br label %423

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 11
  store ptr %1, ptr %40, align 8
  %41 = load i16, ptr %1, align 4
  %42 = zext i16 %41 to i32
  %43 = shl nuw nsw i32 %42, 1
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 1
  %45 = load i16, ptr %44, align 2
  %46 = and i16 %45, 1
  %47 = zext i16 %46 to i32
  %48 = and i32 %43, 254
  %49 = or i32 %48, %47
  %50 = load ptr, ptr %15, align 8
  %51 = icmp eq ptr %50, null
  br i1 %51, label %62, label %52

52:                                               ; preds = %39
  %53 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %53) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  tail call void @arm_heavy_mb() #8
  %54 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 5
  %55 = load i32, ptr %54, align 4
  %56 = load ptr, ptr %15, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %55) #8, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  %57 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 3
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr i8, ptr %58, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %49) #8, !srcloc !10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %60 = load i16, ptr %53, align 4
  %61 = add i16 %60, 1
  store i16 %61, ptr %53, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %66

62:                                               ; preds = %39
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %63 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 3
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr i8, ptr %64, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %49) #8, !srcloc !10
  br label %66

66:                                               ; preds = %62, %52
  %67 = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 2
  %68 = load i16, ptr %67, align 4
  %69 = tail call i16 @llvm.umin.i16(i16 %68, i16 63) #8
  %70 = zext i16 %69 to i32
  %71 = load i16, ptr %44, align 2
  %72 = and i16 %71, 1
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %74, label %113

74:                                               ; preds = %66
  %75 = icmp eq i16 %69, 0
  br i1 %75, label %111, label %76

76:                                               ; preds = %74
  %77 = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 3
  %78 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 6
  %79 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 5
  %80 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 3
  br label %81

81:                                               ; preds = %108, %76
  %82 = phi i32 [ 0, %76 ], [ %109, %108 ]
  %83 = load ptr, ptr %77, align 4
  %84 = getelementptr i8, ptr %83, i32 %82
  %85 = load i8, ptr %84, align 1
  %86 = zext i8 %85 to i32
  br i1 %6, label %94, label %87

87:                                               ; preds = %81
  %88 = load i16, ptr %67, align 4
  %89 = zext i16 %88 to i32
  %90 = add nsw i32 %89, -1
  %91 = icmp eq i32 %82, %90
  %92 = or i32 %86, -2147483648
  %93 = select i1 %91, i32 %92, i32 %86
  br label %94

94:                                               ; preds = %87, %81
  %95 = phi i32 [ %86, %81 ], [ %93, %87 ]
  %96 = load ptr, ptr %15, align 8
  %97 = icmp eq ptr %96, null
  br i1 %97, label %105, label %98

98:                                               ; preds = %94
  tail call void @_raw_spin_lock(ptr noundef %78) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  tail call void @arm_heavy_mb() #8
  %99 = load i32, ptr %79, align 4
  %100 = load ptr, ptr %15, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 %99) #8, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  %101 = load ptr, ptr %80, align 4
  %102 = getelementptr i8, ptr %101, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 %95) #8, !srcloc !10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %103 = load i16, ptr %78, align 4
  %104 = add i16 %103, 1
  store i16 %104, ptr %78, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %108

105:                                              ; preds = %94
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %106 = load ptr, ptr %80, align 4
  %107 = getelementptr i8, ptr %106, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 %95) #8, !srcloc !10
  br label %108

108:                                              ; preds = %105, %98
  %109 = add nuw nsw i32 %82, 1
  %110 = icmp eq i32 %109, %70
  br i1 %110, label %111, label %81

111:                                              ; preds = %108, %74
  %112 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 13
  store i32 %70, ptr %112, align 8
  br label %113

113:                                              ; preds = %111, %66
  br i1 %6, label %114, label %142

114:                                              ; preds = %113
  %115 = getelementptr %struct.i2c_msg, ptr %1, i32 1
  store ptr %115, ptr %40, align 8
  %116 = load i16, ptr %115, align 4
  %117 = zext i16 %116 to i32
  %118 = shl nuw nsw i32 %117, 1
  %119 = getelementptr %struct.i2c_msg, ptr %1, i32 1, i32 1
  %120 = load i16, ptr %119, align 2
  %121 = and i16 %120, 1
  %122 = zext i16 %121 to i32
  %123 = and i32 %118, 254
  %124 = or i32 %123, %122
  %125 = or i32 %124, -2147483648
  %126 = load ptr, ptr %15, align 8
  %127 = icmp eq ptr %126, null
  br i1 %127, label %138, label %128

128:                                              ; preds = %114
  %129 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %129) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  tail call void @arm_heavy_mb() #8
  %130 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 5
  %131 = load i32, ptr %130, align 4
  %132 = load ptr, ptr %15, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %132, i32 %131) #8, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  %133 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 3
  %134 = load ptr, ptr %133, align 4
  %135 = getelementptr i8, ptr %134, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %135, i32 %125) #8, !srcloc !10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %136 = load i16, ptr %129, align 4
  %137 = add i16 %136, 1
  store i16 %137, ptr %129, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %142

138:                                              ; preds = %114
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %139 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 3
  %140 = load ptr, ptr %139, align 4
  %141 = getelementptr i8, ptr %140, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %141, i32 %125) #8, !srcloc !10
  br label %142

142:                                              ; preds = %138, %128, %113
  %143 = phi ptr [ %1, %113 ], [ %115, %128 ], [ %115, %138 ]
  %144 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 2
  %145 = load i32, ptr %144, align 8
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %149, label %147

147:                                              ; preds = %142
  %148 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 9
  store i32 0, ptr %148, align 4
  br label %149

149:                                              ; preds = %147, %142
  %150 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 10
  store i32 0, ptr %150, align 4
  br i1 %6, label %164, label %151

151:                                              ; preds = %149
  %152 = getelementptr inbounds %struct.i2c_msg, ptr %143, i32 0, i32 1
  %153 = load i16, ptr %152, align 2
  %154 = and i16 %153, 1
  %155 = icmp eq i16 %154, 0
  br i1 %155, label %156, label %164

156:                                              ; preds = %151
  %157 = getelementptr inbounds %struct.i2c_msg, ptr %143, i32 0, i32 2
  %158 = load i16, ptr %157, align 4
  %159 = zext i16 %158 to i32
  %160 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 13
  %161 = load i32, ptr %160, align 8
  %162 = icmp ult i32 %161, %159
  %163 = select i1 %162, i32 402653184, i32 268435456
  br label %164

164:                                              ; preds = %156, %151, %149
  %165 = phi i32 [ 268435456, %149 ], [ 268435456, %151 ], [ %163, %156 ]
  %166 = getelementptr inbounds %struct.i2c_msg, ptr %143, i32 0, i32 2
  %167 = load i16, ptr %166, align 4
  %168 = icmp eq i16 %167, 0
  br i1 %168, label %228, label %169

169:                                              ; preds = %164
  %170 = getelementptr inbounds %struct.i2c_msg, ptr %143, i32 0, i32 1
  %171 = load i16, ptr %170, align 2
  %172 = and i16 %171, 1
  %173 = icmp eq i16 %172, 0
  br i1 %173, label %228, label %174

174:                                              ; preds = %169
  %175 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 14
  store i32 0, ptr %175, align 4
  %176 = load i16, ptr %166, align 4
  %177 = icmp ugt i16 %176, 63
  %178 = select i1 %177, i16 50, i16 %176
  %179 = zext i16 %178 to i32
  %180 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 15
  store i32 %179, ptr %180, align 8
  %181 = load ptr, ptr %15, align 8
  %182 = icmp eq ptr %181, null
  br i1 %182, label %194, label %183

183:                                              ; preds = %174
  %184 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %184) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !9
  tail call void @arm_heavy_mb() #8
  %185 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 5
  %186 = load i32, ptr %185, align 4
  %187 = load ptr, ptr %15, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %187, i32 %186) #8, !srcloc !10
  %188 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 3
  %189 = load ptr, ptr %188, align 4
  %190 = getelementptr i8, ptr %189, i32 12
  %191 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %190) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %192 = load i16, ptr %184, align 4
  %193 = add i16 %192, 1
  store i16 %193, ptr %184, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %199

194:                                              ; preds = %174
  %195 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 3
  %196 = load ptr, ptr %195, align 4
  %197 = getelementptr i8, ptr %196, i32 12
  %198 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %197) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !17
  br label %199

199:                                              ; preds = %194, %183
  %200 = phi i32 [ %191, %183 ], [ %198, %194 ]
  %201 = and i32 %200, -16129
  %202 = load i32, ptr %180, align 8
  %203 = shl i32 %202, 8
  %204 = or i32 %203, %201
  %205 = load ptr, ptr %15, align 8
  %206 = icmp eq ptr %205, null
  br i1 %206, label %217, label %207

207:                                              ; preds = %199
  %208 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %208) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  tail call void @arm_heavy_mb() #8
  %209 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 5
  %210 = load i32, ptr %209, align 4
  %211 = load ptr, ptr %15, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %211, i32 %210) #8, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  %212 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 3
  %213 = load ptr, ptr %212, align 4
  %214 = getelementptr i8, ptr %213, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %214, i32 %204) #8, !srcloc !10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %215 = load i16, ptr %208, align 4
  %216 = add i16 %215, 1
  store i16 %216, ptr %208, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %221

217:                                              ; preds = %199
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %218 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 3
  %219 = load ptr, ptr %218, align 4
  %220 = getelementptr i8, ptr %219, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %220, i32 %204) #8, !srcloc !10
  br label %221

221:                                              ; preds = %217, %207
  %222 = or i32 %165, 1073741824
  %223 = load i16, ptr %166, align 4
  %224 = zext i16 %223 to i32
  %225 = select i1 %6, i32 -2147478528, i32 -2147479552
  %226 = or i32 %225, %224
  %227 = load i32, ptr %144, align 8
  br label %228

228:                                              ; preds = %221, %169, %164
  %229 = phi i32 [ %227, %221 ], [ %145, %164 ], [ %145, %169 ]
  %230 = phi i32 [ %226, %221 ], [ -2147483648, %164 ], [ -2147480064, %169 ]
  %231 = phi i32 [ %222, %221 ], [ %165, %164 ], [ %165, %169 ]
  %232 = icmp eq i32 %229, 0
  br i1 %232, label %250, label %233

233:                                              ; preds = %228
  %234 = load ptr, ptr %15, align 8
  %235 = icmp eq ptr %234, null
  br i1 %235, label %246, label %236

236:                                              ; preds = %233
  %237 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %237) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  tail call void @arm_heavy_mb() #8
  %238 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 5
  %239 = load i32, ptr %238, align 4
  %240 = load ptr, ptr %15, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %240, i32 %239) #8, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  %241 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 3
  %242 = load ptr, ptr %241, align 4
  %243 = getelementptr i8, ptr %242, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %243, i32 %231) #8, !srcloc !10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %244 = load i16, ptr %237, align 4
  %245 = add i16 %244, 1
  store i16 %245, ptr %237, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %250

246:                                              ; preds = %233
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %247 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 3
  %248 = load ptr, ptr %247, align 4
  %249 = getelementptr i8, ptr %248, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %249, i32 %231) #8, !srcloc !10
  br label %250

250:                                              ; preds = %246, %236, %228
  %251 = load ptr, ptr %15, align 8
  %252 = icmp eq ptr %251, null
  br i1 %252, label %263, label %253

253:                                              ; preds = %250
  %254 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %254) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  tail call void @arm_heavy_mb() #8
  %255 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 5
  %256 = load i32, ptr %255, align 4
  %257 = load ptr, ptr %15, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %257, i32 %256) #8, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  %258 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 3
  %259 = load ptr, ptr %258, align 4
  %260 = getelementptr i8, ptr %259, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %260, i32 %230) #8, !srcloc !10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %261 = load i16, ptr %254, align 4
  %262 = add i16 %261, 1
  store i16 %262, ptr %254, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %267

263:                                              ; preds = %250
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %264 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 3
  %265 = load ptr, ptr %264, align 4
  %266 = getelementptr i8, ptr %265, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %266, i32 %230) #8, !srcloc !10
  br label %267

267:                                              ; preds = %263, %253
  %268 = load i32, ptr %144, align 8
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %308, label %270

270:                                              ; preds = %267
  %271 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 9
  %272 = tail call i32 @wait_for_completion_timeout(ptr noundef %271, i32 noundef 5000) #8
  %273 = load ptr, ptr %15, align 8
  %274 = icmp eq ptr %273, null
  br i1 %274, label %285, label %275

275:                                              ; preds = %270
  %276 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %276) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  tail call void @arm_heavy_mb() #8
  %277 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 5
  %278 = load i32, ptr %277, align 4
  %279 = load ptr, ptr %15, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %279, i32 %278) #8, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  %280 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 3
  %281 = load ptr, ptr %280, align 4
  %282 = getelementptr i8, ptr %281, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %282, i32 0) #8, !srcloc !10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %283 = load i16, ptr %276, align 4
  %284 = add i16 %283, 1
  store i16 %284, ptr %276, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %289

285:                                              ; preds = %270
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %286 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 3
  %287 = load ptr, ptr %286, align 4
  %288 = getelementptr i8, ptr %287, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %288, i32 0) #8, !srcloc !10
  br label %289

289:                                              ; preds = %285, %275
  %290 = load ptr, ptr %15, align 8
  %291 = icmp eq ptr %290, null
  br i1 %291, label %303, label %292

292:                                              ; preds = %289
  %293 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %293) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !9
  tail call void @arm_heavy_mb() #8
  %294 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 5
  %295 = load i32, ptr %294, align 4
  %296 = load ptr, ptr %15, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %296, i32 %295) #8, !srcloc !10
  %297 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 3
  %298 = load ptr, ptr %297, align 4
  %299 = getelementptr i8, ptr %298, i32 56
  %300 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %299) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %301 = load i16, ptr %293, align 4
  %302 = add i16 %301, 1
  store i16 %302, ptr %293, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %352

303:                                              ; preds = %289
  %304 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 3
  %305 = load ptr, ptr %304, align 4
  %306 = getelementptr i8, ptr %305, i32 56
  %307 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %306) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !17
  br label %352

308:                                              ; preds = %267
  %309 = load volatile i32, ptr @jiffies, align 64
  %310 = add i32 %309, 5000
  %311 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 6
  %312 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 5
  %313 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 3
  br label %314

314:                                              ; preds = %348, %308
  %315 = load ptr, ptr %15, align 8
  %316 = icmp eq ptr %315, null
  br i1 %316, label %325, label %317

317:                                              ; preds = %314
  tail call void @_raw_spin_lock(ptr noundef %311) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !9
  tail call void @arm_heavy_mb() #8
  %318 = load i32, ptr %312, align 4
  %319 = load ptr, ptr %15, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %319, i32 %318) #8, !srcloc !10
  %320 = load ptr, ptr %313, align 4
  %321 = getelementptr i8, ptr %320, i32 60
  %322 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %321) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %323 = load i16, ptr %311, align 4
  %324 = add i16 %323, 1
  store i16 %324, ptr %311, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %329

325:                                              ; preds = %314
  %326 = load ptr, ptr %313, align 4
  %327 = getelementptr i8, ptr %326, i32 60
  %328 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %327) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !17
  br label %329

329:                                              ; preds = %325, %317
  %330 = phi i32 [ %322, %317 ], [ %328, %325 ]
  %331 = and i32 %330, 1476395008
  tail call fastcc void @bcm_iproc_i2c_process_m_event(ptr noundef %5, i32 noundef %331) #8
  %332 = load ptr, ptr %15, align 8
  %333 = icmp eq ptr %332, null
  br i1 %333, label %341, label %334

334:                                              ; preds = %329
  tail call void @_raw_spin_lock(ptr noundef %311) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  tail call void @arm_heavy_mb() #8
  %335 = load i32, ptr %312, align 4
  %336 = load ptr, ptr %15, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %336, i32 %335) #8, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  %337 = load ptr, ptr %313, align 4
  %338 = getelementptr i8, ptr %337, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %338, i32 %331) #8, !srcloc !10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %339 = load i16, ptr %311, align 4
  %340 = add i16 %339, 1
  store i16 %340, ptr %311, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %344

341:                                              ; preds = %329
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %342 = load ptr, ptr %313, align 4
  %343 = getelementptr i8, ptr %342, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %343, i32 %331) #8, !srcloc !10
  br label %344

344:                                              ; preds = %341, %334
  %345 = load volatile i32, ptr @jiffies, align 64
  %346 = sub i32 %310, %345
  %347 = icmp slt i32 %346, 0
  br i1 %347, label %355, label %348

348:                                              ; preds = %344
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !22
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !23
  %349 = tail call i32 @__cond_resched() #8
  %350 = load i32, ptr %150, align 4
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %314, label %376

352:                                              ; preds = %303, %292
  %353 = load i32, ptr %144, align 8
  tail call void @synchronize_irq(i32 noundef %353) #8
  %354 = icmp eq i32 %272, 0
  br i1 %354, label %355, label %376

355:                                              ; preds = %352, %344
  %356 = load i32, ptr %150, align 4
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %358, label %376

358:                                              ; preds = %355
  %359 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %359, ptr noundef nonnull @.str.10) #9
  %360 = load ptr, ptr %15, align 8
  %361 = icmp eq ptr %360, null
  br i1 %361, label %372, label %362

362:                                              ; preds = %358
  %363 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %363) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  tail call void @arm_heavy_mb() #8
  %364 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 5
  %365 = load i32, ptr %364, align 4
  %366 = load ptr, ptr %15, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %366, i32 %365) #8, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  %367 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 3
  %368 = load ptr, ptr %367, align 4
  %369 = getelementptr i8, ptr %368, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %369, i32 -1073741824) #8, !srcloc !10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %370 = load i16, ptr %363, align 4
  %371 = add i16 %370, 1
  store i16 %371, ptr %363, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %423

372:                                              ; preds = %358
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %373 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 3
  %374 = load ptr, ptr %373, align 4
  %375 = getelementptr i8, ptr %374, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %375, i32 -1073741824) #8, !srcloc !10
  br label %423

376:                                              ; preds = %355, %352, %348
  %377 = load ptr, ptr %15, align 8
  %378 = icmp eq ptr %377, null
  br i1 %378, label %390, label %379

379:                                              ; preds = %376
  %380 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %380) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !9
  tail call void @arm_heavy_mb() #8
  %381 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 5
  %382 = load i32, ptr %381, align 4
  %383 = load ptr, ptr %15, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %383, i32 %382) #8, !srcloc !10
  %384 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 3
  %385 = load ptr, ptr %384, align 4
  %386 = getelementptr i8, ptr %385, i32 48
  %387 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %386) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %388 = load i16, ptr %380, align 4
  %389 = add i16 %388, 1
  store i16 %389, ptr %380, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %395

390:                                              ; preds = %376
  %391 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 3
  %392 = load ptr, ptr %391, align 4
  %393 = getelementptr i8, ptr %392, i32 48
  %394 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %393) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !17
  br label %395

395:                                              ; preds = %390, %379
  %396 = phi i32 [ %387, %379 ], [ %394, %390 ]
  %397 = lshr i32 %396, 25
  %398 = and i32 %397, 7
  switch i32 %398, label %404 [
    i32 0, label %423
    i32 1, label %405
    i32 2, label %399
    i32 3, label %400
    i32 4, label %401
    i32 5, label %402
    i32 6, label %403
  ]

399:                                              ; preds = %395
  br label %405

400:                                              ; preds = %395
  br label %405

401:                                              ; preds = %395
  br label %405

402:                                              ; preds = %395
  br label %405

403:                                              ; preds = %395
  br label %405

404:                                              ; preds = %395
  tail call fastcc void @bcm_iproc_i2c_enable_disable(ptr noundef %5, i1 noundef zeroext false) #8
  tail call fastcc void @bcm_iproc_i2c_init(ptr noundef %5) #8
  tail call fastcc void @bcm_iproc_i2c_enable_disable(ptr noundef %5, i1 noundef zeroext true) #8
  br label %405

405:                                              ; preds = %404, %403, %402, %401, %400, %399, %395
  %406 = phi i32 [ -6, %399 ], [ -6, %400 ], [ -110, %401 ], [ -6, %402 ], [ -110, %403 ], [ -5, %404 ], [ -11, %395 ]
  %407 = load ptr, ptr %15, align 8
  %408 = icmp eq ptr %407, null
  br i1 %408, label %419, label %409

409:                                              ; preds = %405
  %410 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %410) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  tail call void @arm_heavy_mb() #8
  %411 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 5
  %412 = load i32, ptr %411, align 4
  %413 = load ptr, ptr %15, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %413, i32 %412) #8, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  %414 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 3
  %415 = load ptr, ptr %414, align 4
  %416 = getelementptr i8, ptr %415, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %416, i32 -1073741824) #8, !srcloc !10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %417 = load i16, ptr %410, align 4
  %418 = add i16 %417, 1
  store i16 %418, ptr %410, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %423

419:                                              ; preds = %405
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %420 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 3
  %421 = load ptr, ptr %420, align 4
  %422 = getelementptr i8, ptr %421, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %422, i32 -1073741824) #8, !srcloc !10
  br label %423

423:                                              ; preds = %419, %409, %395, %372, %362, %37, %12
  %424 = phi i32 [ -95, %12 ], [ %2, %395 ], [ %406, %419 ], [ %406, %409 ], [ -110, %372 ], [ -110, %362 ], [ -16, %37 ]
  ret i32 %424
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @bcm_iproc_i2c_functionality(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  %7 = select i1 %6, i32 251592713, i32 251592745
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_iproc_i2c_reg_slave(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 9, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 12
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load i16, ptr %0, align 8
  %11 = and i16 %10, 16
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  store ptr %0, ptr %6, align 4
  %14 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 21
  %15 = ptrtoint ptr %5 to i32
  tail call void @tasklet_init(ptr noundef %14, ptr noundef nonnull @slave_rx_tasklet_fn, i32 noundef %15) #8
  tail call fastcc void @bcm_iproc_i2c_slave_init(ptr noundef %5, i1 noundef zeroext false)
  br label %16

16:                                               ; preds = %13, %9, %1
  %17 = phi i32 [ 0, %13 ], [ -16, %1 ], [ -97, %9 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_iproc_i2c_unreg_slave(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 9, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 12
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %125, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 2
  %11 = load i32, ptr %10, align 8
  tail call void @disable_irq(i32 noundef %11) #8
  %12 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 21
  tail call void @tasklet_kill(ptr noundef %12) #8
  %13 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 4
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %17) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !9
  tail call void @arm_heavy_mb() #8
  %18 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = load ptr, ptr %13, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %19) #8, !srcloc !10
  %21 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 56
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %25 = load i16, ptr %17, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr %17, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %32

27:                                               ; preds = %9
  %28 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %29, i32 56
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !17
  br label %32

32:                                               ; preds = %27, %16
  %33 = phi i32 [ %24, %16 ], [ %31, %27 ]
  %34 = and i32 %33, -132120577
  %35 = load ptr, ptr %13, align 8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %47, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %38) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  tail call void @arm_heavy_mb() #8
  %39 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 5
  %40 = load i32, ptr %39, align 4
  %41 = load ptr, ptr %13, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %40) #8, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  %42 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr i8, ptr %43, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %34) #8, !srcloc !10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %45 = load i16, ptr %38, align 4
  %46 = add i16 %45, 1
  store i16 %46, ptr %38, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %51

47:                                               ; preds = %32
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %48 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 3
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr i8, ptr %49, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %34) #8, !srcloc !10
  br label %51

51:                                               ; preds = %47, %37
  %52 = load ptr, ptr %13, align 8
  %53 = icmp eq ptr %52, null
  br i1 %53, label %65, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %55) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !9
  tail call void @arm_heavy_mb() #8
  %56 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 5
  %57 = load i32, ptr %56, align 4
  %58 = load ptr, ptr %13, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %57) #8, !srcloc !10
  %59 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 3
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr i8, ptr %60, i32 8
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %63 = load i16, ptr %55, align 4
  %64 = add i16 %63, 1
  store i16 %64, ptr %55, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %70

65:                                               ; preds = %51
  %66 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 3
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr i8, ptr %67, i32 8
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !17
  br label %70

70:                                               ; preds = %65, %54
  %71 = phi i32 [ %62, %54 ], [ %69, %65 ]
  %72 = and i32 %71, 2147483647
  %73 = load ptr, ptr %13, align 8
  %74 = icmp eq ptr %73, null
  br i1 %74, label %85, label %75

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %76) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  tail call void @arm_heavy_mb() #8
  %77 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 5
  %78 = load i32, ptr %77, align 4
  %79 = load ptr, ptr %13, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %78) #8, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  %80 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 3
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr i8, ptr %81, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 %72) #8, !srcloc !10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %83 = load i16, ptr %76, align 4
  %84 = add i16 %83, 1
  store i16 %84, ptr %76, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %89

85:                                               ; preds = %70
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %86 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 3
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr i8, ptr %87, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 %72) #8, !srcloc !10
  br label %89

89:                                               ; preds = %85, %75
  %90 = load ptr, ptr %13, align 8
  %91 = icmp eq ptr %90, null
  br i1 %91, label %102, label %92

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %93) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  tail call void @arm_heavy_mb() #8
  %94 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 5
  %95 = load i32, ptr %94, align 4
  %96 = load ptr, ptr %13, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 %95) #8, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  %97 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 3
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr i8, ptr %98, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 -1073741824) #8, !srcloc !10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %100 = load i16, ptr %93, align 4
  %101 = add i16 %100, 1
  store i16 %101, ptr %93, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %106

102:                                              ; preds = %89
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %103 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 3
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr i8, ptr %104, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 -1073741824) #8, !srcloc !10
  br label %106

106:                                              ; preds = %102, %92
  %107 = load ptr, ptr %13, align 8
  %108 = icmp eq ptr %107, null
  br i1 %108, label %119, label %109

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %110) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  tail call void @arm_heavy_mb() #8
  %111 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 5
  %112 = load i32, ptr %111, align 4
  %113 = load ptr, ptr %13, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %113, i32 %112) #8, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  %114 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 3
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr i8, ptr %115, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 132120576) #8, !srcloc !10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %117 = load i16, ptr %110, align 4
  %118 = add i16 %117, 1
  store i16 %118, ptr %110, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %123

119:                                              ; preds = %106
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %120 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %5, i32 0, i32 3
  %121 = load ptr, ptr %120, align 4
  %122 = getelementptr i8, ptr %121, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %122, i32 132120576) #8, !srcloc !10
  br label %123

123:                                              ; preds = %119, %109
  store ptr null, ptr %6, align 4
  %124 = load i32, ptr %10, align 8
  tail call void @enable_irq(i32 noundef %124) #8
  br label %125

125:                                              ; preds = %123, %1
  %126 = phi i32 [ 0, %123 ], [ -22, %1 ]
  ret i32 %126
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bcm_iproc_i2c_process_m_event(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = and i32 %1, 134217728
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %92, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 2
  %9 = load i16, ptr %8, align 4
  %10 = zext i16 %9 to i32
  %11 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 13
  %12 = load i32, ptr %11, align 8
  %13 = sub i32 %10, %12
  %14 = tail call i32 @llvm.umin.i32(i32 %13, i32 64) #8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %89, label %16

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  %18 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 2
  %19 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 4
  %20 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 5
  %22 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 3
  br label %23

23:                                               ; preds = %87, %16
  %24 = phi i16 [ %9, %16 ], [ %88, %87 ]
  %25 = phi i32 [ %12, %16 ], [ %86, %87 ]
  %26 = phi i32 [ 0, %16 ], [ %84, %87 ]
  %27 = add i32 %26, %25
  %28 = load ptr, ptr %17, align 4
  %29 = getelementptr i8, ptr %28, i32 %27
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = zext i16 %24 to i32
  %33 = add nsw i32 %32, -1
  %34 = icmp eq i32 %27, %33
  br i1 %34, label %35, label %69

35:                                               ; preds = %23
  %36 = or i32 %31, -2147483648
  %37 = load i32, ptr %18, align 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %69, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %19, align 8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %50, label %42

42:                                               ; preds = %39
  tail call void @_raw_spin_lock(ptr noundef %20) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !9
  tail call void @arm_heavy_mb() #8
  %43 = load i32, ptr %21, align 4
  %44 = load ptr, ptr %19, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %43) #8, !srcloc !10
  %45 = load ptr, ptr %22, align 4
  %46 = getelementptr i8, ptr %45, i32 56
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %48 = load i16, ptr %20, align 4
  %49 = add i16 %48, 1
  store i16 %49, ptr %20, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %54

50:                                               ; preds = %39
  %51 = load ptr, ptr %22, align 4
  %52 = getelementptr i8, ptr %51, i32 56
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !17
  br label %54

54:                                               ; preds = %50, %42
  %55 = phi i32 [ %47, %42 ], [ %53, %50 ]
  %56 = and i32 %55, -134217729
  %57 = load ptr, ptr %19, align 8
  %58 = icmp eq ptr %57, null
  br i1 %58, label %66, label %59

59:                                               ; preds = %54
  tail call void @_raw_spin_lock(ptr noundef %20) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  tail call void @arm_heavy_mb() #8
  %60 = load i32, ptr %21, align 4
  %61 = load ptr, ptr %19, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %60) #8, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  %62 = load ptr, ptr %22, align 4
  %63 = getelementptr i8, ptr %62, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %56) #8, !srcloc !10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %64 = load i16, ptr %20, align 4
  %65 = add i16 %64, 1
  store i16 %65, ptr %20, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %69

66:                                               ; preds = %54
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %67 = load ptr, ptr %22, align 4
  %68 = getelementptr i8, ptr %67, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %56) #8, !srcloc !10
  br label %69

69:                                               ; preds = %66, %59, %35, %23
  %70 = phi i32 [ %36, %35 ], [ %31, %23 ], [ %36, %59 ], [ %36, %66 ]
  %71 = load ptr, ptr %19, align 8
  %72 = icmp eq ptr %71, null
  br i1 %72, label %80, label %73

73:                                               ; preds = %69
  tail call void @_raw_spin_lock(ptr noundef %20) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  tail call void @arm_heavy_mb() #8
  %74 = load i32, ptr %21, align 4
  %75 = load ptr, ptr %19, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %74) #8, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  %76 = load ptr, ptr %22, align 4
  %77 = getelementptr i8, ptr %76, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %70) #8, !srcloc !10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %78 = load i16, ptr %20, align 4
  %79 = add i16 %78, 1
  store i16 %79, ptr %20, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %83

80:                                               ; preds = %69
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %81 = load ptr, ptr %22, align 4
  %82 = getelementptr i8, ptr %81, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 %70) #8, !srcloc !10
  br label %83

83:                                               ; preds = %80, %73
  %84 = add nuw nsw i32 %26, 1
  %85 = icmp eq i32 %84, %14
  %86 = load i32, ptr %11, align 8
  br i1 %85, label %89, label %87

87:                                               ; preds = %83
  %88 = load i16, ptr %8, align 4
  br label %23

89:                                               ; preds = %83, %5
  %90 = phi i32 [ %12, %5 ], [ %86, %83 ]
  %91 = add i32 %90, %14
  store i32 %91, ptr %11, align 8
  br label %92

92:                                               ; preds = %89, %2
  %93 = and i32 %1, 1073741824
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %238, label %95

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 11
  %97 = load ptr, ptr %96, align 8
  %98 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 14
  %99 = getelementptr inbounds %struct.i2c_msg, ptr %97, i32 0, i32 2
  %100 = load i32, ptr %98, align 4
  %101 = load i16, ptr %99, align 4
  %102 = zext i16 %101 to i32
  %103 = icmp ult i32 %100, %102
  br i1 %103, label %104, label %144

104:                                              ; preds = %95
  %105 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 4
  %106 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 6
  %107 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 5
  %108 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 3
  %109 = getelementptr inbounds %struct.i2c_msg, ptr %97, i32 0, i32 3
  br label %110

110:                                              ; preds = %132, %104
  %111 = load ptr, ptr %105, align 8
  %112 = icmp eq ptr %111, null
  br i1 %112, label %121, label %113

113:                                              ; preds = %110
  tail call void @_raw_spin_lock(ptr noundef %106) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !9
  tail call void @arm_heavy_mb() #8
  %114 = load i32, ptr %107, align 4
  %115 = load ptr, ptr %105, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 %114) #8, !srcloc !10
  %116 = load ptr, ptr %108, align 4
  %117 = getelementptr i8, ptr %116, i32 68
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %117) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %119 = load i16, ptr %106, align 4
  %120 = add i16 %119, 1
  store i16 %120, ptr %106, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %125

121:                                              ; preds = %110
  %122 = load ptr, ptr %108, align 4
  %123 = getelementptr i8, ptr %122, i32 68
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %123) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !17
  br label %125

125:                                              ; preds = %121, %113
  %126 = phi i32 [ %118, %113 ], [ %124, %121 ]
  %127 = icmp ult i32 %126, 1073741824
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = load i16, ptr %99, align 4
  %130 = load i32, ptr %98, align 4
  %131 = zext i16 %129 to i32
  br label %144

132:                                              ; preds = %125
  %133 = trunc i32 %126 to i8
  %134 = load ptr, ptr %109, align 4
  %135 = load i32, ptr %98, align 4
  %136 = getelementptr i8, ptr %134, i32 %135
  store i8 %133, ptr %136, align 1
  %137 = load i32, ptr %98, align 4
  %138 = add i32 %137, 1
  store i32 %138, ptr %98, align 4
  %139 = load i16, ptr %99, align 4
  %140 = zext i16 %139 to i32
  %141 = icmp ult i32 %138, %140
  br i1 %141, label %110, label %142

142:                                              ; preds = %132
  %143 = zext i16 %139 to i32
  br label %144

144:                                              ; preds = %142, %128, %95
  %145 = phi i32 [ %102, %95 ], [ %131, %128 ], [ %143, %142 ]
  %146 = phi i32 [ %100, %95 ], [ %130, %128 ], [ %138, %142 ]
  %147 = sub i32 %145, %146
  %148 = icmp eq i32 %145, %146
  br i1 %148, label %149, label %192

149:                                              ; preds = %144
  %150 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 2
  %151 = load i32, ptr %150, align 8
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %238, label %153

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 4
  %155 = load ptr, ptr %154, align 8
  %156 = icmp eq ptr %155, null
  br i1 %156, label %168, label %157

157:                                              ; preds = %153
  %158 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %158) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !9
  tail call void @arm_heavy_mb() #8
  %159 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 5
  %160 = load i32, ptr %159, align 4
  %161 = load ptr, ptr %154, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %161, i32 %160) #8, !srcloc !10
  %162 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 3
  %163 = load ptr, ptr %162, align 4
  %164 = getelementptr i8, ptr %163, i32 56
  %165 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %164) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %166 = load i16, ptr %158, align 4
  %167 = add i16 %166, 1
  store i16 %167, ptr %158, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %173

168:                                              ; preds = %153
  %169 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 3
  %170 = load ptr, ptr %169, align 4
  %171 = getelementptr i8, ptr %170, i32 56
  %172 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %171) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !17
  br label %173

173:                                              ; preds = %168, %157
  %174 = phi i32 [ %165, %157 ], [ %172, %168 ]
  %175 = and i32 %174, -1073741825
  %176 = load ptr, ptr %154, align 8
  %177 = icmp eq ptr %176, null
  br i1 %177, label %188, label %178

178:                                              ; preds = %173
  %179 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %179) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  tail call void @arm_heavy_mb() #8
  %180 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 5
  %181 = load i32, ptr %180, align 4
  %182 = load ptr, ptr %154, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %182, i32 %181) #8, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  %183 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 3
  %184 = load ptr, ptr %183, align 4
  %185 = getelementptr i8, ptr %184, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %185, i32 %175) #8, !srcloc !10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %186 = load i16, ptr %179, align 4
  %187 = add i16 %186, 1
  store i16 %187, ptr %179, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %238

188:                                              ; preds = %173
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %189 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 3
  %190 = load ptr, ptr %189, align 4
  %191 = getelementptr i8, ptr %190, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %191, i32 %175) #8, !srcloc !10
  br label %238

192:                                              ; preds = %144
  %193 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 15
  %194 = load i32, ptr %193, align 8
  %195 = icmp ult i32 %147, %194
  br i1 %195, label %196, label %238

196:                                              ; preds = %192
  %197 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 4
  %198 = load ptr, ptr %197, align 8
  %199 = icmp eq ptr %198, null
  br i1 %199, label %211, label %200

200:                                              ; preds = %196
  %201 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %201) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !9
  tail call void @arm_heavy_mb() #8
  %202 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 5
  %203 = load i32, ptr %202, align 4
  %204 = load ptr, ptr %197, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %204, i32 %203) #8, !srcloc !10
  %205 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 3
  %206 = load ptr, ptr %205, align 4
  %207 = getelementptr i8, ptr %206, i32 12
  %208 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %207) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %209 = load i16, ptr %201, align 4
  %210 = add i16 %209, 1
  store i16 %210, ptr %201, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %216

211:                                              ; preds = %196
  %212 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 3
  %213 = load ptr, ptr %212, align 4
  %214 = getelementptr i8, ptr %213, i32 12
  %215 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %214) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !17
  br label %216

216:                                              ; preds = %211, %200
  %217 = phi i32 [ %208, %200 ], [ %215, %211 ]
  %218 = and i32 %217, -16129
  %219 = shl i32 %147, 8
  %220 = or i32 %218, %219
  %221 = load ptr, ptr %197, align 8
  %222 = icmp eq ptr %221, null
  br i1 %222, label %233, label %223

223:                                              ; preds = %216
  %224 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %224) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  tail call void @arm_heavy_mb() #8
  %225 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 5
  %226 = load i32, ptr %225, align 4
  %227 = load ptr, ptr %197, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %227, i32 %226) #8, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  %228 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 3
  %229 = load ptr, ptr %228, align 4
  %230 = getelementptr i8, ptr %229, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %230, i32 %220) #8, !srcloc !10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %231 = load i16, ptr %224, align 4
  %232 = add i16 %231, 1
  store i16 %232, ptr %224, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %237

233:                                              ; preds = %216
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %234 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 3
  %235 = load ptr, ptr %234, align 4
  %236 = getelementptr i8, ptr %235, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %236, i32 %220) #8, !srcloc !10
  br label %237

237:                                              ; preds = %233, %223
  store i32 %147, ptr %193, align 8
  br label %238

238:                                              ; preds = %237, %192, %188, %178, %149, %92
  %239 = and i32 %1, 268435456
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %248, label %241

241:                                              ; preds = %238
  %242 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 10
  store i32 1, ptr %242, align 4
  %243 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 2
  %244 = load i32, ptr %243, align 8
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %248, label %246

246:                                              ; preds = %241
  %247 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 9
  tail call void @complete(ptr noundef %247) #8
  br label %248

248:                                              ; preds = %246, %241, %238
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @slave_rx_tasklet_fn(i32 noundef %0) #2 {
  %2 = alloca i8, align 1
  %3 = inttoptr i32 %0 to ptr
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #8
  store i8 0, ptr %2, align 1, !annotation !8
  %4 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 4
  %5 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 6
  %6 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 5
  %7 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 3
  %8 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 17
  %9 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 16
  %10 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 12
  %11 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 18
  br label %12

12:                                               ; preds = %64, %1
  %13 = phi i32 [ 0, %1 ], [ %65, %64 ]
  %14 = load ptr, ptr %4, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %12
  call void @_raw_spin_lock(ptr noundef %5) #8
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !9
  call void @arm_heavy_mb() #8
  %17 = load i32, ptr %6, align 4
  %18 = load ptr, ptr %4, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %17) #8, !srcloc !10
  %19 = load ptr, ptr %7, align 4
  %20 = getelementptr i8, ptr %19, i32 76
  %21 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #8, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %22 = load i16, ptr %5, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr %5, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %28

24:                                               ; preds = %12
  %25 = load ptr, ptr %7, align 4
  %26 = getelementptr i8, ptr %25, i32 76
  %27 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #8, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !17
  br label %28

28:                                               ; preds = %24, %16
  %29 = phi i32 [ %21, %16 ], [ %27, %24 ]
  %30 = lshr i32 %29, 30
  %31 = trunc i32 %29 to i8
  store i8 %31, ptr %2, align 1
  switch i32 %30, label %61 [
    i32 1, label %32
    i32 2, label %37
    i32 3, label %45
  ]

32:                                               ; preds = %28
  %33 = load ptr, ptr %10, align 4
  %34 = getelementptr inbounds %struct.i2c_client, ptr %33, i32 0, i32 8
  %35 = load ptr, ptr %34, align 8
  %36 = call i32 %35(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %2) #8
  store i8 1, ptr %8, align 1
  store i8 0, ptr %11, align 2
  br label %64

37:                                               ; preds = %28
  %38 = load i8, ptr %8, align 1, !range !21
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %61, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr %10, align 4
  %42 = getelementptr inbounds %struct.i2c_client, ptr %41, i32 0, i32 8
  %43 = load ptr, ptr %42, align 8
  %44 = call i32 %43(ptr noundef %41, i32 noundef 3, ptr noundef nonnull %2) #8
  br label %64

45:                                               ; preds = %28
  %46 = load i8, ptr %8, align 1, !range !21
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %61, label %48

48:                                               ; preds = %45
  %49 = load i8, ptr %9, align 4, !range !21
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr %10, align 4
  %53 = getelementptr inbounds %struct.i2c_client, ptr %52, i32 0, i32 8
  %54 = load ptr, ptr %53, align 8
  %55 = call i32 %54(ptr noundef %52, i32 noundef 3, ptr noundef nonnull %2) #8
  br label %56

56:                                               ; preds = %51, %48
  %57 = load ptr, ptr %10, align 4
  %58 = getelementptr inbounds %struct.i2c_client, ptr %57, i32 0, i32 8
  %59 = load ptr, ptr %58, align 8
  %60 = call i32 %59(ptr noundef %57, i32 noundef 4, ptr noundef nonnull %2) #8
  br label %64

61:                                               ; preds = %45, %37, %28
  %62 = icmp ult i32 %29, 1073741824
  br i1 %62, label %63, label %64

63:                                               ; preds = %61
  store i8 0, ptr %8, align 1
  store i8 1, ptr %11, align 2
  br label %67

64:                                               ; preds = %61, %56, %40, %32
  %65 = add nuw nsw i32 %13, 1
  %66 = icmp eq i32 %65, 10
  br i1 %66, label %67, label %12

67:                                               ; preds = %64, %63
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #8
  %68 = load i8, ptr %9, align 4, !range !21
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %67
  %71 = load i8, ptr %11, align 2, !range !21
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 19
  store i32 0, ptr %74, align 8
  %75 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 20
  %76 = load i32, ptr %75, align 4
  %77 = or i32 %76, 4194304
  store i32 %77, ptr %75, align 4
  br label %78

78:                                               ; preds = %73, %70, %67
  %79 = phi i32 [ 16777216, %67 ], [ 18874368, %73 ], [ 16777216, %70 ]
  %80 = load ptr, ptr %4, align 8
  %81 = icmp eq ptr %80, null
  br i1 %81, label %89, label %82

82:                                               ; preds = %78
  call void @_raw_spin_lock(ptr noundef %5) #8
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  call void @arm_heavy_mb() #8
  %83 = load i32, ptr %6, align 4
  %84 = load ptr, ptr %4, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %83) #8, !srcloc !10
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  call void @arm_heavy_mb() #8
  %85 = load ptr, ptr %7, align 4
  %86 = getelementptr i8, ptr %85, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %79) #8, !srcloc !10
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %87 = load i16, ptr %5, align 4
  %88 = add i16 %87, 1
  store i16 %88, ptr %5, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %92

89:                                               ; preds = %78
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  call void @arm_heavy_mb() #8
  %90 = load ptr, ptr %7, align 4
  %91 = getelementptr i8, ptr %90, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %79) #8, !srcloc !10
  br label %92

92:                                               ; preds = %89, %82
  %93 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 20
  %94 = load i32, ptr %93, align 4
  %95 = load ptr, ptr %4, align 8
  %96 = icmp eq ptr %95, null
  br i1 %96, label %104, label %97

97:                                               ; preds = %92
  call void @_raw_spin_lock(ptr noundef %5) #8
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  call void @arm_heavy_mb() #8
  %98 = load i32, ptr %6, align 4
  %99 = load ptr, ptr %4, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 %98) #8, !srcloc !10
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  call void @arm_heavy_mb() #8
  %100 = load ptr, ptr %7, align 4
  %101 = getelementptr i8, ptr %100, i32 56
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 %94) #8, !srcloc !10
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %102 = load i16, ptr %5, align 4
  %103 = add i16 %102, 1
  store i16 %103, ptr %5, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %107

104:                                              ; preds = %92
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  call void @arm_heavy_mb() #8
  %105 = load ptr, ptr %7, align 4
  %106 = getelementptr i8, ptr %105, i32 56
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %106, i32 %94) #8, !srcloc !10
  br label %107

107:                                              ; preds = %104, %97
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bcm_iproc_i2c_slave_init(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 19
  store i32 0, ptr %3, align 8
  br i1 %1, label %4, label %56

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %9) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !9
  tail call void @arm_heavy_mb() #8
  %10 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = load ptr, ptr %5, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %11) #8, !srcloc !10
  %13 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %16 = load i16, ptr %9, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %22

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !17
  br label %22

22:                                               ; preds = %18, %8
  %23 = phi i32 [ %15, %8 ], [ %21, %18 ]
  %24 = or i32 %23, -2147483648
  %25 = load ptr, ptr %5, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %36, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %28) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  tail call void @arm_heavy_mb() #8
  %29 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = load ptr, ptr %5, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %30) #8, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  %32 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %24) #8, !srcloc !10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %34 = load i16, ptr %28, align 4
  %35 = add i16 %34, 1
  store i16 %35, ptr %28, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %39

36:                                               ; preds = %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %37 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %24) #8, !srcloc !10
  br label %39

39:                                               ; preds = %36, %27
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 21474800) #8
  %41 = and i32 %23, 2147483647
  %42 = load ptr, ptr %5, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %53, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %45) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  tail call void @arm_heavy_mb() #8
  %46 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 5
  %47 = load i32, ptr %46, align 4
  %48 = load ptr, ptr %5, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %47) #8, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  %49 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 3
  %50 = load ptr, ptr %49, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %41) #8, !srcloc !10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %51 = load i16, ptr %45, align 4
  %52 = add i16 %51, 1
  store i16 %52, ptr %45, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %56

53:                                               ; preds = %39
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %54 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 3
  %55 = load ptr, ptr %54, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %41) #8, !srcloc !10
  br label %56

56:                                               ; preds = %53, %44, %2
  %57 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 4
  %58 = load ptr, ptr %57, align 8
  %59 = icmp eq ptr %58, null
  br i1 %59, label %70, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %61) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  tail call void @arm_heavy_mb() #8
  %62 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 5
  %63 = load i32, ptr %62, align 4
  %64 = load ptr, ptr %57, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %63) #8, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  %65 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 3
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr i8, ptr %66, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 -1073741824) #8, !srcloc !10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %68 = load i16, ptr %61, align 4
  %69 = add i16 %68, 1
  store i16 %69, ptr %61, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %74

70:                                               ; preds = %56
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %71 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 3
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr i8, ptr %72, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 -1073741824) #8, !srcloc !10
  br label %74

74:                                               ; preds = %70, %60
  %75 = load ptr, ptr %57, align 8
  %76 = icmp eq ptr %75, null
  br i1 %76, label %88, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %78) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !9
  tail call void @arm_heavy_mb() #8
  %79 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 5
  %80 = load i32, ptr %79, align 4
  %81 = load ptr, ptr %57, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %80) #8, !srcloc !10
  %82 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 3
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr i8, ptr %83, i32 4
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %84) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %86 = load i16, ptr %78, align 4
  %87 = add i16 %86, 1
  store i16 %87, ptr %78, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %93

88:                                               ; preds = %74
  %89 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 3
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr i8, ptr %90, i32 4
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %91) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !17
  br label %93

93:                                               ; preds = %88, %77
  %94 = phi i32 [ %85, %77 ], [ %92, %88 ]
  %95 = and i32 %94, -2130706433
  %96 = or i32 %95, 419430400
  %97 = load ptr, ptr %57, align 8
  %98 = icmp eq ptr %97, null
  br i1 %98, label %109, label %99

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %100) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  tail call void @arm_heavy_mb() #8
  %101 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 5
  %102 = load i32, ptr %101, align 4
  %103 = load ptr, ptr %57, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 %102) #8, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  %104 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 3
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr i8, ptr %105, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %106, i32 %96) #8, !srcloc !10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %107 = load i16, ptr %100, align 4
  %108 = add i16 %107, 1
  store i16 %108, ptr %100, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %113

109:                                              ; preds = %93
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %110 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 3
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr i8, ptr %111, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %112, i32 %96) #8, !srcloc !10
  br label %113

113:                                              ; preds = %109, %99
  %114 = load ptr, ptr %57, align 8
  %115 = icmp eq ptr %114, null
  br i1 %115, label %127, label %116

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %117) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !9
  tail call void @arm_heavy_mb() #8
  %118 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 5
  %119 = load i32, ptr %118, align 4
  %120 = load ptr, ptr %57, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 %119) #8, !srcloc !10
  %121 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 3
  %122 = load ptr, ptr %121, align 4
  %123 = getelementptr i8, ptr %122, i32 8
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %123) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %125 = load i16, ptr %117, align 4
  %126 = add i16 %125, 1
  store i16 %126, ptr %117, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %132

127:                                              ; preds = %113
  %128 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 3
  %129 = load ptr, ptr %128, align 4
  %130 = getelementptr i8, ptr %129, i32 8
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %130) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !17
  br label %132

132:                                              ; preds = %127, %116
  %133 = phi i32 [ %124, %116 ], [ %131, %127 ]
  %134 = and i32 %133, 16777215
  %135 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 12
  %136 = load ptr, ptr %135, align 4
  %137 = getelementptr inbounds %struct.i2c_client, ptr %136, i32 0, i32 1
  %138 = load i16, ptr %137, align 2
  %139 = zext i16 %138 to i32
  %140 = shl i32 %139, 24
  %141 = or i32 %140, %134
  %142 = or i32 %141, -2147483648
  %143 = load ptr, ptr %57, align 8
  %144 = icmp eq ptr %143, null
  br i1 %144, label %155, label %145

145:                                              ; preds = %132
  %146 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %146) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  tail call void @arm_heavy_mb() #8
  %147 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 5
  %148 = load i32, ptr %147, align 4
  %149 = load ptr, ptr %57, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %149, i32 %148) #8, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  %150 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 3
  %151 = load ptr, ptr %150, align 4
  %152 = getelementptr i8, ptr %151, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %152, i32 %142) #8, !srcloc !10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %153 = load i16, ptr %146, align 4
  %154 = add i16 %153, 1
  store i16 %154, ptr %146, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %159

155:                                              ; preds = %132
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %156 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 3
  %157 = load ptr, ptr %156, align 4
  %158 = getelementptr i8, ptr %157, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %158, i32 %142) #8, !srcloc !10
  br label %159

159:                                              ; preds = %155, %145
  %160 = load ptr, ptr %57, align 8
  %161 = icmp eq ptr %160, null
  br i1 %161, label %172, label %162

162:                                              ; preds = %159
  %163 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %163) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  tail call void @arm_heavy_mb() #8
  %164 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 5
  %165 = load i32, ptr %164, align 4
  %166 = load ptr, ptr %57, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %166, i32 %165) #8, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  %167 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 3
  %168 = load ptr, ptr %167, align 4
  %169 = getelementptr i8, ptr %168, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %169, i32 132120576) #8, !srcloc !10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %170 = load i16, ptr %163, align 4
  %171 = add i16 %170, 1
  store i16 %171, ptr %163, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %176

172:                                              ; preds = %159
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %173 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 3
  %174 = load ptr, ptr %173, align 4
  %175 = getelementptr i8, ptr %174, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %175, i32 132120576) #8, !srcloc !10
  br label %176

176:                                              ; preds = %172, %162
  %177 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 20
  store i32 94371840, ptr %177, align 4
  %178 = load ptr, ptr %57, align 8
  %179 = icmp eq ptr %178, null
  br i1 %179, label %190, label %180

180:                                              ; preds = %176
  %181 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %181) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  tail call void @arm_heavy_mb() #8
  %182 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 5
  %183 = load i32, ptr %182, align 4
  %184 = load ptr, ptr %57, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %184, i32 %183) #8, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  %185 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 3
  %186 = load ptr, ptr %185, align 4
  %187 = getelementptr i8, ptr %186, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %187, i32 94371840) #8, !srcloc !10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %188 = load i16, ptr %181, align 4
  %189 = add i16 %188, 1
  store i16 %189, ptr %181, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %194

190:                                              ; preds = %176
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %191 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %0, i32 0, i32 3
  %192 = load ptr, ptr %191, align 4
  %193 = getelementptr i8, ptr %192, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %193, i32 94371840) #8, !srcloc !10
  br label %194

194:                                              ; preds = %190, %180
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_iproc_i2c_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %46, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 4
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %12) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  tail call void @arm_heavy_mb() #8
  %13 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = load ptr, ptr %8, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %14) #8, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  %16 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 0) #8, !srcloc !10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %19 = load i16, ptr %12, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %25

21:                                               ; preds = %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %22 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 0) #8, !srcloc !10
  br label %25

25:                                               ; preds = %21, %11
  %26 = load ptr, ptr %8, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %39, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %29) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !9
  tail call void @arm_heavy_mb() #8
  %30 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = load ptr, ptr %8, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %31) #8, !srcloc !10
  %33 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr i8, ptr %34, i32 56
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %37 = load i16, ptr %29, align 4
  %38 = add i16 %37, 1
  store i16 %38, ptr %29, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %44

39:                                               ; preds = %25
  %40 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr i8, ptr %41, i32 56
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !17
  br label %44

44:                                               ; preds = %39, %28
  %45 = load i32, ptr %4, align 8
  tail call void @synchronize_irq(i32 noundef %45) #8
  br label %46

46:                                               ; preds = %44, %1
  tail call fastcc void @bcm_iproc_i2c_enable_disable(ptr noundef %3, i1 noundef zeroext false)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_iproc_i2c_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call fastcc void @bcm_iproc_i2c_init(ptr noundef %3)
  %4 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %8) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !9
  tail call void @arm_heavy_mb() #8
  %9 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = load ptr, ptr %4, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %10) #8, !srcloc !10
  %12 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %16 = load i16, ptr %8, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %23

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !17
  br label %23

23:                                               ; preds = %18, %7
  %24 = phi i32 [ %15, %7 ], [ %22, %18 ]
  %25 = and i32 %24, 2147483647
  %26 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 8
  %27 = load i32, ptr %26, align 8
  %28 = icmp eq i32 %27, 400000
  %29 = select i1 %28, i32 -2147483648, i32 0
  %30 = or i32 %29, %25
  %31 = load ptr, ptr %4, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %43, label %33

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %34) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  tail call void @arm_heavy_mb() #8
  %35 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 5
  %36 = load i32, ptr %35, align 4
  %37 = load ptr, ptr %4, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %36) #8, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  %38 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr i8, ptr %39, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %30) #8, !srcloc !10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %41 = load i16, ptr %34, align 4
  %42 = add i16 %41, 1
  store i16 %42, ptr %34, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %47

43:                                               ; preds = %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %44 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, ptr %3, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr i8, ptr %45, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %30) #8, !srcloc !10
  br label %47

47:                                               ; preds = %43, %33
  tail call fastcc void @bcm_iproc_i2c_enable_disable(ptr noundef %3, i1 noundef zeroext true)
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!9 = !{i64 2154125173}
!10 = !{i64 5388730}
!11 = !{i64 5389148}
!12 = !{i64 2154125708}
!13 = !{i64 2149201831}
!14 = !{i64 2149197655}
!15 = !{i64 2149197730, i64 2149197757, i64 2149197804, i64 2149197826, i64 2149197854, i64 2149197874}
!16 = !{i64 2149224834}
!17 = !{i64 2154126063}
!18 = !{i64 2154126452}
!19 = !{i64 2154126824}
!20 = !{i64 2154127152}
!21 = !{i8 0, i8 2}
!22 = !{i64 2154141360}
!23 = !{i64 2154141202}
