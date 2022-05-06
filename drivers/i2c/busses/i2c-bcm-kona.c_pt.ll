; ModuleID = '/llk/IR/drivers/i2c/busses/i2c-bcm-kona.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-bcm-kona.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.bus_speed_cfg = type { i8, i8, i8, i8, i8, i8 }
%struct.hs_bus_speed_cfg = type { i8, i8, i8, i8, i8, i8, i8 }
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
%struct.bcm_kona_i2c_dev = type { ptr, ptr, i32, ptr, %struct.i2c_adapter, %struct.completion, ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_i2c_bcm_kona__247_895_bcm_kona_i2c_driver_init6 = internal global ptr @bcm_kona_i2c_driver_init, section ".initcall6.init", align 4
@bcm_kona_i2c_driver = internal global %struct.platform_driver { ptr @bcm_kona_i2c_probe, ptr @bcm_kona_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm_kona_i2c_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_bcm_kona_i2c_driver_exit = internal global ptr @bcm_kona_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author248 = internal constant [54 x i8] c"i2c_bcm_kona.author=Tim Kryger <tkryger@broadcom.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description249 = internal constant [50 x i8] c"i2c_bcm_kona.description=Broadcom Kona I2C Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file250 = internal constant [50 x i8] c"i2c_bcm_kona.file=drivers/i2c/busses/i2c-bcm-kona\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [28 x i8] c"i2c_bcm_kona.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [13 x i8] c"bcm-kona-i2c\00", align 1
@bcm_kona_i2c_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,kona-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"couldn't get clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"%s: clk_set_rate returned %d\0A\00", align 1
@__func__.bcm_kona_i2c_probe = private unnamed_addr constant [19 x i8] c"bcm_kona_i2c_probe\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"couldn't enable clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"failed to request irq %i\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Broadcom I2C adapter\00", align 1
@bcm_algo = internal constant %struct.i2c_algorithm { ptr @bcm_kona_i2c_xfer, ptr null, ptr null, ptr null, ptr @bcm_kona_i2c_functionality, ptr null, ptr null }, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"device registered successfully\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"missing clock-frequency property\0A\00", align 1
@std_cfg_table = internal constant [3 x %struct.bus_speed_cfg] [%struct.bus_speed_cfg { i8 1, i8 1, i8 3, i8 6, i8 0, i8 2 }, %struct.bus_speed_cfg { i8 5, i8 1, i8 3, i8 5, i8 1, i8 2 }, %struct.bus_speed_cfg { i8 1, i8 1, i8 3, i8 1, i8 1, i8 3 }], align 1
@hs_cfg_table = internal constant [1 x %struct.hs_bus_speed_cfg] [%struct.hs_bus_speed_cfg { i8 1, i8 8, i8 20, i8 0, i8 6, i8 1, i8 0 }], align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"\013%d hz bus speed not supported\0A\00", align 1
@.str.11 = private unnamed_addr constant [53 x i8] c"\013Valid speeds are 100khz, 400khz, 1mhz, and 3.4mhz\0A\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"Unknown command %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"%s: peri clock enable failed. err %d\0A\00", align 1
@__func__.bcm_kona_i2c_xfer = private unnamed_addr constant [18 x i8] c"bcm_kona_i2c_xfer\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"Start command failed rc = %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"restart cmd failed rc = %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"NAK from addr %2.2x msg#%d rc = %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"read failure\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"write failure\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"controller timed out\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.20 = private unnamed_addr constant [17 x i8] c"CMDBUSY timeout\0A\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"\013High speed handshake failed\0A\00", align 1
@__func__.bcm_kona_i2c_switch_to_hs = private unnamed_addr constant [26 x i8] c"bcm_kona_i2c_switch_to_hs\00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c"High speed restart command failed\0A\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"RX FIFO time out\0A\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"unexpected NAK\0A\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"completion timed out\0A\00", align 1
@__func__.bcm_kona_i2c_switch_to_std = private unnamed_addr constant [27 x i8] c"bcm_kona_i2c_switch_to_std\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_file250, ptr @__UNIQUE_ID_license251, ptr @__exitcall_bcm_kona_i2c_driver_exit, ptr @__initcall__kmod_i2c_bcm_kona__247_895_bcm_kona_i2c_driver_init6, ptr @bcm_kona_i2c_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @bcm_kona_i2c_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm_kona_i2c_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @bcm_kona_i2c_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcm_kona_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_kona_i2c_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 696, i32 noundef 3520) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %167, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %7, align 8
  store ptr %3, ptr %4, align 8
  %8 = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %4, i32 0, i32 5
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %4, i32 0, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %9, ptr noundef nonnull @.str.7, ptr noundef nonnull @init_completion.__key) #7
  %10 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #7
  %11 = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %4, i32 0, i32 1
  store ptr %10, ptr %11, align 4
  %12 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %6
  %14 = ptrtoint ptr %10 to i32
  br label %167

15:                                               ; preds = %6
  %16 = load ptr, ptr %4, align 8
  %17 = tail call ptr @devm_clk_get(ptr noundef %16, ptr noundef null) #7
  %18 = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %4, i32 0, i32 3
  store ptr %17, ptr %18, align 4
  %19 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load ptr, ptr %4, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.1) #8
  br label %167

22:                                               ; preds = %15
  %23 = tail call i32 @clk_set_rate(ptr noundef %17, i32 noundef 13000000) #7
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %4, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.bcm_kona_i2c_probe, i32 noundef %23) #8
  br label %167

27:                                               ; preds = %22
  %28 = load ptr, ptr %18, align 4
  %29 = tail call i32 @clk_prepare(ptr noundef %28) #7
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = tail call i32 @clk_enable(ptr noundef %28) #7
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  tail call void @clk_unprepare(ptr noundef %28) #7
  br label %35

35:                                               ; preds = %34, %27
  %36 = phi i32 [ %32, %34 ], [ %29, %27 ]
  %37 = load ptr, ptr %4, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.3) #8
  br label %167

38:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %39 = load ptr, ptr %4, align 8
  %40 = getelementptr inbounds %struct.device, ptr %39, i32 0, i32 25
  %41 = load ptr, ptr %40, align 8
  %42 = call i32 @of_property_read_variable_u32_array(ptr noundef %41, ptr noundef nonnull @.str.8, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #7
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load ptr, ptr %4, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.9) #8
  br label %60

46:                                               ; preds = %38
  %47 = load i32, ptr %2, align 4
  switch i32 %47, label %57 [
    i32 100000, label %48
    i32 400000, label %50
    i32 1000000, label %52
    i32 3400000, label %54
  ]

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %4, i32 0, i32 6
  store ptr @std_cfg_table, ptr %49, align 8
  br label %62

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %4, i32 0, i32 6
  store ptr getelementptr inbounds ([3 x %struct.bus_speed_cfg], ptr @std_cfg_table, i32 0, i32 1), ptr %51, align 8
  br label %62

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %4, i32 0, i32 6
  store ptr getelementptr inbounds ([3 x %struct.bus_speed_cfg], ptr @std_cfg_table, i32 0, i32 2), ptr %53, align 8
  br label %62

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %4, i32 0, i32 6
  store ptr @std_cfg_table, ptr %55, align 8
  %56 = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %4, i32 0, i32 7
  store ptr @hs_cfg_table, ptr %56, align 4
  br label %62

57:                                               ; preds = %46
  %58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %47) #8
  %59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #8
  br label %60

60:                                               ; preds = %57, %44
  %61 = phi i32 [ -19, %44 ], [ -22, %57 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  br label %158

62:                                               ; preds = %54, %52, %50, %48
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  %63 = load ptr, ptr %11, align 4
  %64 = getelementptr i8, ptr %63, i32 76
  %65 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #7, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %66 = or i32 %65, 1
  %67 = load ptr, ptr %11, align 4
  %68 = getelementptr i8, ptr %67, i32 76
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %66) #7, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  call void @arm_heavy_mb() #7
  %69 = load ptr, ptr %11, align 4
  %70 = getelementptr i8, ptr %69, i32 88
  %71 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #7, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %72 = and i32 %71, -32769
  %73 = load ptr, ptr %11, align 4
  %74 = getelementptr i8, ptr %73, i32 88
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %72) #7, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !15
  call void @arm_heavy_mb() #7
  %75 = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %4, i32 0, i32 6
  %76 = load ptr, ptr %75, align 8
  %77 = getelementptr inbounds %struct.bus_speed_cfg, ptr %76, i32 0, i32 2
  %78 = load i8, ptr %77, align 1
  %79 = zext i8 %78 to i32
  %80 = shl nuw nsw i32 %79, 6
  %81 = getelementptr inbounds %struct.bus_speed_cfg, ptr %76, i32 0, i32 3
  %82 = load i8, ptr %81, align 1
  %83 = zext i8 %82 to i32
  %84 = shl nuw nsw i32 %83, 3
  %85 = or i32 %84, %80
  %86 = getelementptr inbounds %struct.bus_speed_cfg, ptr %76, i32 0, i32 4
  %87 = load i8, ptr %86, align 1
  %88 = zext i8 %87 to i32
  %89 = shl nuw nsw i32 %88, 2
  %90 = or i32 %85, %89
  %91 = getelementptr inbounds %struct.bus_speed_cfg, ptr %76, i32 0, i32 5
  %92 = load i8, ptr %91, align 1
  %93 = zext i8 %92 to i32
  %94 = or i32 %90, %93
  %95 = load ptr, ptr %11, align 4
  %96 = getelementptr i8, ptr %95, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 %94) #7, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  call void @arm_heavy_mb() #7
  %97 = load ptr, ptr %75, align 8
  %98 = load i8, ptr %97, align 1
  %99 = zext i8 %98 to i32
  %100 = shl nuw nsw i32 %99, 4
  %101 = getelementptr inbounds %struct.bus_speed_cfg, ptr %97, i32 0, i32 1
  %102 = load i8, ptr %101, align 1
  %103 = zext i8 %102 to i32
  %104 = shl nuw nsw i32 %103, 1
  %105 = or i32 %100, %104
  %106 = or i32 %105, 1
  %107 = load ptr, ptr %11, align 4
  %108 = getelementptr i8, ptr %107, i32 76
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %108, i32 %106) #7, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !17
  call void @arm_heavy_mb() #7
  %109 = load ptr, ptr %11, align 4
  %110 = getelementptr i8, ptr %109, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 0) #7, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !18
  call void @arm_heavy_mb() #7
  %111 = load ptr, ptr %11, align 4
  %112 = getelementptr i8, ptr %111, i32 76
  %113 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %112) #7, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !19
  %114 = and i32 %113, -129
  %115 = load ptr, ptr %11, align 4
  %116 = getelementptr i8, ptr %115, i32 76
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 %114) #7, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !20
  call void @arm_heavy_mb() #7
  %117 = load ptr, ptr %11, align 4
  %118 = getelementptr i8, ptr %117, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 192) #7, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !21
  call void @arm_heavy_mb() #7
  %119 = load ptr, ptr %11, align 4
  %120 = getelementptr i8, ptr %119, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 0) #7, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !22
  call void @arm_heavy_mb() #7
  %121 = load ptr, ptr %11, align 4
  %122 = getelementptr i8, ptr %121, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %122, i32 159) #7, !srcloc !12
  %123 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #7
  %124 = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %4, i32 0, i32 2
  store i32 %123, ptr %124, align 8
  %125 = icmp slt i32 %123, 0
  br i1 %125, label %158, label %126

126:                                              ; preds = %62
  %127 = load ptr, ptr %0, align 8
  %128 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %123, ptr noundef nonnull @bcm_kona_i2c_isr, ptr noundef null, i32 noundef 128, ptr noundef %127, ptr noundef nonnull %4) #7
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %126
  %131 = load ptr, ptr %4, align 8
  %132 = load i32, ptr %124, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %131, ptr noundef nonnull @.str.4, i32 noundef %132) #8
  br label %158

133:                                              ; preds = %126
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !23
  call void @arm_heavy_mb() #7
  %134 = load ptr, ptr %11, align 4
  %135 = getelementptr i8, ptr %134, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %135, i32 1) #7, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !24
  call void @arm_heavy_mb() #7
  %136 = load ptr, ptr %11, align 4
  %137 = getelementptr i8, ptr %136, i32 92
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %137, i32 4) #7, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !25
  call void @arm_heavy_mb() #7
  %138 = load ptr, ptr %11, align 4
  %139 = getelementptr i8, ptr %138, i32 76
  %140 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %139) #7, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !26
  %141 = and i32 %140, -2
  %142 = load ptr, ptr %11, align 4
  %143 = getelementptr i8, ptr %142, i32 76
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %143, i32 %141) #7, !srcloc !12
  %144 = load ptr, ptr %18, align 4
  call void @clk_disable(ptr noundef %144) #7
  call void @clk_unprepare(ptr noundef %144) #7
  %145 = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %4, i32 0, i32 4
  %146 = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %4, i32 0, i32 4, i32 9, i32 8
  store ptr %4, ptr %146, align 8
  store ptr null, ptr %145, align 8
  %147 = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %4, i32 0, i32 4, i32 12
  %148 = call i32 @strlcpy(ptr noundef %147, ptr noundef nonnull @.str.5, i32 noundef 48) #7
  %149 = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %4, i32 0, i32 4, i32 2
  store ptr @bcm_algo, ptr %149, align 8
  %150 = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %4, i32 0, i32 4, i32 9, i32 1
  store ptr %3, ptr %150, align 4
  %151 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %152 = load ptr, ptr %151, align 8
  %153 = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %4, i32 0, i32 4, i32 9, i32 25
  store ptr %152, ptr %153, align 8
  %154 = call i32 @i2c_add_adapter(ptr noundef %145) #7
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %167

156:                                              ; preds = %133
  %157 = load ptr, ptr %4, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %157, ptr noundef nonnull @.str.6) #8
  br label %167

158:                                              ; preds = %130, %62, %60
  %159 = phi i32 [ %61, %60 ], [ %128, %130 ], [ %123, %62 ]
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !25
  call void @arm_heavy_mb() #7
  %160 = load ptr, ptr %11, align 4
  %161 = getelementptr i8, ptr %160, i32 76
  %162 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %161) #7, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !26
  %163 = and i32 %162, -2
  %164 = load ptr, ptr %11, align 4
  %165 = getelementptr i8, ptr %164, i32 76
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %165, i32 %163) #7, !srcloc !12
  %166 = load ptr, ptr %18, align 4
  call void @clk_disable(ptr noundef %166) #7
  call void @clk_unprepare(ptr noundef %166) #7
  br label %167

167:                                              ; preds = %158, %156, %133, %35, %25, %20, %13, %1
  %168 = phi i32 [ %14, %13 ], [ -19, %20 ], [ %23, %25 ], [ %36, %35 ], [ %159, %158 ], [ 0, %156 ], [ -12, %1 ], [ %154, %133 ]
  ret i32 %168
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_kona_i2c_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %3, i32 0, i32 4
  tail call void @i2c_del_adapter(ptr noundef %4) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_kona_i2c_isr(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 72
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !27
  %7 = and i32 %6, 159
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %2
  %10 = and i32 %6, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !28
  tail call void @arm_heavy_mb() #7
  %13 = load ptr, ptr %3, align 4
  %14 = getelementptr i8, ptr %13, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 192) #7, !srcloc !12
  br label %15

15:                                               ; preds = %12, %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !29
  tail call void @arm_heavy_mb() #7
  %16 = load ptr, ptr %3, align 4
  %17 = getelementptr i8, ptr %16, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %7) #7, !srcloc !12
  %18 = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %1, i32 0, i32 5
  tail call void @complete(ptr noundef %18) #7
  br label %19

19:                                               ; preds = %15, %2
  %20 = phi i32 [ 1, %15 ], [ 0, %2 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bcm_kona_i2c_send_cmd_to_ctrl(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  switch i32 %1, label %19 [
    i32 0, label %3
    i32 1, label %7
    i32 2, label %11
    i32 3, label %15
  ]

3:                                                ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !23
  tail call void @arm_heavy_mb() #7
  %4 = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 1) #7, !srcloc !12
  br label %21

7:                                                ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %8 = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 3) #7, !srcloc !12
  br label %21

11:                                               ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !31
  tail call void @arm_heavy_mb() #7
  %12 = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 11) #7, !srcloc !12
  br label %21

15:                                               ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !32
  tail call void @arm_heavy_mb() #7
  %16 = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 5) #7, !srcloc !12
  br label %21

19:                                               ; preds = %2
  %20 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.12, i32 noundef %1) #8
  br label %21

21:                                               ; preds = %19, %15, %11, %7, %3
  ret void
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_kona_i2c_xfer(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @clk_prepare(ptr noundef %7) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = tail call i32 @clk_enable(ptr noundef %7) #7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  tail call void @clk_unprepare(ptr noundef %7) #7
  br label %14

14:                                               ; preds = %13, %3
  %15 = phi i32 [ %11, %13 ], [ %8, %3 ]
  %16 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.bcm_kona_i2c_xfer, i32 noundef %15) #8
  br label %337

17:                                               ; preds = %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %18 = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %5, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 0) #7, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  %21 = load ptr, ptr %18, align 4
  %22 = getelementptr i8, ptr %21, i32 76
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %24 = or i32 %23, 1
  %25 = load ptr, ptr %18, align 4
  %26 = getelementptr i8, ptr %25, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #7, !srcloc !12
  %27 = tail call fastcc i32 @bcm_kona_send_i2c_cmd(ptr noundef %5, i32 noundef 1)
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %17
  %30 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.14, i32 noundef %27) #8
  br label %326

31:                                               ; preds = %17
  %32 = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %5, i32 0, i32 7
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %94, label %35

35:                                               ; preds = %31
  %36 = tail call fastcc i32 @bcm_kona_i2c_write_byte(ptr noundef %5, i8 noundef zeroext 8, i32 noundef 1) #7
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #8
  br label %275

40:                                               ; preds = %35
  %41 = load ptr, ptr %6, align 4
  %42 = tail call i32 @clk_set_rate(ptr noundef %41, i32 noundef 104000000) #7
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %91

44:                                               ; preds = %40
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !34
  tail call void @arm_heavy_mb() #7
  %45 = load ptr, ptr %32, align 4
  %46 = getelementptr inbounds %struct.hs_bus_speed_cfg, ptr %45, i32 0, i32 3
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  %49 = shl nuw nsw i32 %48, 6
  %50 = getelementptr inbounds %struct.hs_bus_speed_cfg, ptr %45, i32 0, i32 4
  %51 = load i8, ptr %50, align 1
  %52 = zext i8 %51 to i32
  %53 = shl nuw nsw i32 %52, 3
  %54 = or i32 %53, %49
  %55 = getelementptr inbounds %struct.hs_bus_speed_cfg, ptr %45, i32 0, i32 5
  %56 = load i8, ptr %55, align 1
  %57 = zext i8 %56 to i32
  %58 = shl nuw nsw i32 %57, 2
  %59 = or i32 %54, %58
  %60 = getelementptr inbounds %struct.hs_bus_speed_cfg, ptr %45, i32 0, i32 6
  %61 = load i8, ptr %60, align 1
  %62 = zext i8 %61 to i32
  %63 = or i32 %59, %62
  %64 = load ptr, ptr %18, align 4
  %65 = getelementptr i8, ptr %64, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %63) #7, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !35
  tail call void @arm_heavy_mb() #7
  %66 = load ptr, ptr %32, align 4
  %67 = load i8, ptr %66, align 1
  %68 = zext i8 %67 to i32
  %69 = shl nuw nsw i32 %68, 10
  %70 = getelementptr inbounds %struct.hs_bus_speed_cfg, ptr %66, i32 0, i32 1
  %71 = load i8, ptr %70, align 1
  %72 = zext i8 %71 to i32
  %73 = shl nuw nsw i32 %72, 5
  %74 = or i32 %73, %69
  %75 = getelementptr inbounds %struct.hs_bus_speed_cfg, ptr %66, i32 0, i32 2
  %76 = load i8, ptr %75, align 1
  %77 = zext i8 %76 to i32
  %78 = or i32 %74, %77
  %79 = load ptr, ptr %18, align 4
  %80 = getelementptr i8, ptr %79, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %78) #7, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !36
  tail call void @arm_heavy_mb() #7
  %81 = load ptr, ptr %18, align 4
  %82 = getelementptr i8, ptr %81, i32 88
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !37
  %84 = or i32 %83, 32768
  %85 = load ptr, ptr %18, align 4
  %86 = getelementptr i8, ptr %85, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %84) #7, !srcloc !12
  %87 = tail call fastcc i32 @bcm_kona_send_i2c_cmd(ptr noundef %5, i32 noundef 2) #7
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %44
  %90 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.22) #8
  br label %275

91:                                               ; preds = %40
  %92 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %92, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.bcm_kona_i2c_switch_to_hs, i32 noundef %42) #8
  %93 = icmp slt i32 %42, 0
  br i1 %93, label %275, label %94

94:                                               ; preds = %91, %44, %31
  %95 = icmp sgt i32 %2, 0
  br i1 %95, label %96, label %275

96:                                               ; preds = %94
  %97 = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %5, i32 0, i32 5
  %98 = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %5, i32 0, i32 2
  br label %99

99:                                               ; preds = %272, %96
  %100 = phi i32 [ 0, %96 ], [ %273, %272 ]
  %101 = getelementptr %struct.i2c_msg, ptr %1, i32 %100
  %102 = icmp eq i32 %100, 0
  br i1 %102, label %113, label %103

103:                                              ; preds = %99
  %104 = getelementptr %struct.i2c_msg, ptr %1, i32 %100, i32 1
  %105 = load i16, ptr %104, align 2
  %106 = and i16 %105, 16384
  %107 = icmp eq i16 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = tail call fastcc i32 @bcm_kona_send_i2c_cmd(ptr noundef %5, i32 noundef 2)
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %112, ptr noundef nonnull @.str.15, i32 noundef %109) #8
  br label %275

113:                                              ; preds = %108, %103, %99
  %114 = getelementptr %struct.i2c_msg, ptr %1, i32 %100, i32 1
  %115 = load i16, ptr %114, align 2
  %116 = and i16 %115, 16384
  %117 = icmp eq i16 %116, 0
  br i1 %117, label %118, label %161

118:                                              ; preds = %113
  %119 = and i16 %115, 16
  %120 = icmp eq i16 %119, 0
  %121 = load i16, ptr %101, align 4
  br i1 %120, label %149, label %122

122:                                              ; preds = %118
  %123 = lshr i16 %121, 7
  %124 = trunc i16 %123 to i8
  %125 = and i8 %124, 6
  %126 = or i8 %125, -16
  %127 = tail call fastcc i32 @bcm_kona_i2c_write_byte(ptr noundef %5, i8 noundef zeroext %126, i32 noundef 0) #7
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %157, label %129

129:                                              ; preds = %122
  %130 = load i16, ptr %101, align 4
  %131 = trunc i16 %130 to i8
  %132 = tail call fastcc i32 @bcm_kona_i2c_write_byte(ptr noundef %5, i8 noundef zeroext %131, i32 noundef 0) #7
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %157, label %134

134:                                              ; preds = %129
  %135 = load i16, ptr %114, align 2
  %136 = and i16 %135, 1
  %137 = icmp eq i16 %136, 0
  br i1 %137, label %161, label %138

138:                                              ; preds = %134
  %139 = tail call fastcc i32 @bcm_kona_send_i2c_cmd(ptr noundef %5, i32 noundef 2) #7
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %157, label %141

141:                                              ; preds = %138
  %142 = load i16, ptr %101, align 4
  %143 = lshr i16 %142, 7
  %144 = trunc i16 %143 to i8
  %145 = and i8 %144, 6
  %146 = or i8 %145, -15
  %147 = tail call fastcc i32 @bcm_kona_i2c_write_byte(ptr noundef %5, i8 noundef zeroext %146, i32 noundef 0) #7
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %157, label %161

149:                                              ; preds = %118
  %150 = trunc i16 %121 to i8
  %151 = shl i8 %150, 1
  %152 = trunc i16 %115 to i8
  %153 = and i8 %152, 1
  %154 = or i8 %151, %153
  %155 = tail call fastcc i32 @bcm_kona_i2c_write_byte(ptr noundef %5, i8 noundef zeroext %154, i32 noundef 0) #7
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %149, %141, %138, %129, %122
  %158 = load ptr, ptr %5, align 8
  %159 = load i16, ptr %101, align 4
  %160 = zext i16 %159 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %158, ptr noundef nonnull @.str.16, i32 noundef %160, i32 noundef %100, i32 noundef -121) #8
  br label %275

161:                                              ; preds = %149, %141, %134, %113
  %162 = load i16, ptr %114, align 2
  %163 = and i16 %162, 1
  %164 = icmp eq i16 %163, 0
  %165 = getelementptr %struct.i2c_msg, ptr %1, i32 %100, i32 2
  %166 = load i16, ptr %165, align 4
  %167 = icmp eq i16 %166, 0
  br i1 %164, label %214, label %168

168:                                              ; preds = %161
  br i1 %167, label %272, label %169

169:                                              ; preds = %168
  %170 = zext i16 %166 to i32
  %171 = getelementptr %struct.i2c_msg, ptr %1, i32 %100, i32 3
  %172 = load ptr, ptr %171, align 4
  br label %173

173:                                              ; preds = %205, %169
  %174 = phi i32 [ %170, %169 ], [ %209, %205 ]
  %175 = phi ptr [ %172, %169 ], [ %207, %205 ]
  %176 = phi i32 [ 0, %169 ], [ %206, %205 ]
  %177 = phi i32 [ 0, %169 ], [ %182, %205 ]
  %178 = phi i32 [ 64, %169 ], [ %181, %205 ]
  %179 = sub i32 %174, %176
  %180 = icmp ult i32 %179, 65
  %181 = select i1 %180, i32 %179, i32 %178
  %182 = select i1 %180, i32 1, i32 %177
  store i32 0, ptr %97, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !38
  tail call void @arm_heavy_mb() #7
  %183 = load ptr, ptr %18, align 4
  %184 = getelementptr i8, ptr %183, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %184, i32 16) #7, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !39
  tail call void @arm_heavy_mb() #7
  %185 = shl i32 %182, 7
  %186 = or i32 %185, %181
  %187 = load ptr, ptr %18, align 4
  %188 = getelementptr i8, ptr %187, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %188, i32 %186) #7, !srcloc !12
  %189 = tail call i32 @wait_for_completion_timeout(ptr noundef %97, i32 noundef 10) #7
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !40
  tail call void @arm_heavy_mb() #7
  %190 = load ptr, ptr %18, align 4
  %191 = getelementptr i8, ptr %190, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %191, i32 0) #7, !srcloc !12
  %192 = icmp eq i32 %189, 0
  br i1 %192, label %211, label %193

193:                                              ; preds = %173
  %194 = icmp eq i32 %181, 0
  br i1 %194, label %205, label %195

195:                                              ; preds = %195, %193
  %196 = phi ptr [ %203, %195 ], [ %175, %193 ]
  %197 = phi i32 [ %202, %195 ], [ %181, %193 ]
  %198 = load ptr, ptr %18, align 4
  %199 = getelementptr i8, ptr %198, i32 108
  %200 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %199) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !41
  %201 = trunc i32 %200 to i8
  store i8 %201, ptr %196, align 1
  %202 = add i32 %197, -1
  %203 = getelementptr i8, ptr %196, i32 1
  %204 = icmp eq i32 %202, 0
  br i1 %204, label %205, label %195

205:                                              ; preds = %195, %193
  %206 = add i32 %181, %176
  %207 = getelementptr i8, ptr %175, i32 %181
  %208 = load i16, ptr %165, align 4
  %209 = zext i16 %208 to i32
  %210 = icmp ult i32 %206, %209
  br i1 %210, label %173, label %272

211:                                              ; preds = %173
  %212 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %212, ptr noundef nonnull @.str.23) #8
  %213 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %213, ptr noundef nonnull @.str.17) #8
  br label %275

214:                                              ; preds = %161
  br i1 %167, label %272, label %215

215:                                              ; preds = %214
  %216 = zext i16 %166 to i32
  %217 = getelementptr %struct.i2c_msg, ptr %1, i32 %100, i32 3
  %218 = load ptr, ptr %217, align 4
  br label %219

219:                                              ; preds = %262, %215
  %220 = phi i32 [ %216, %215 ], [ %266, %262 ]
  %221 = phi ptr [ %218, %215 ], [ %264, %262 ]
  %222 = phi i32 [ 0, %215 ], [ %263, %262 ]
  %223 = phi i32 [ 64, %215 ], [ %226, %262 ]
  %224 = sub i32 %220, %222
  %225 = icmp ult i32 %224, 65
  %226 = select i1 %225, i32 %224, i32 %223
  store i32 0, ptr %97, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %227 = load ptr, ptr %18, align 4
  %228 = getelementptr i8, ptr %227, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %228, i32 3) #7, !srcloc !12
  %229 = load i32, ptr %98, align 8
  tail call void @disable_irq(i32 noundef %229) #7
  %230 = icmp eq i32 %226, 0
  br i1 %230, label %240, label %231

231:                                              ; preds = %231, %219
  %232 = phi i32 [ %238, %231 ], [ 0, %219 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !43
  tail call void @arm_heavy_mb() #7
  %233 = getelementptr i8, ptr %221, i32 %232
  %234 = load i8, ptr %233, align 1
  %235 = zext i8 %234 to i32
  %236 = load ptr, ptr %18, align 4
  %237 = getelementptr i8, ptr %236, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %237, i32 %235) #7, !srcloc !12
  %238 = add nuw i32 %232, 1
  %239 = icmp eq i32 %238, %226
  br i1 %239, label %240, label %231

240:                                              ; preds = %231, %219
  %241 = load i32, ptr %98, align 8
  tail call void @enable_irq(i32 noundef %241) #7
  br label %242

242:                                              ; preds = %242, %240
  %243 = phi i32 [ 10, %240 ], [ %244, %242 ]
  %244 = tail call i32 @wait_for_completion_timeout(ptr noundef %97, i32 noundef %243) #7
  %245 = load ptr, ptr %18, align 4
  %246 = getelementptr i8, ptr %245, i32 84
  %247 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %246) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !44
  %248 = icmp ne i32 %244, 0
  %249 = and i32 %247, 16
  %250 = icmp eq i32 %249, 0
  %251 = select i1 %248, i1 %250, i1 false
  br i1 %251, label %242, label %252

252:                                              ; preds = %242
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !45
  tail call void @arm_heavy_mb() #7
  %253 = load ptr, ptr %18, align 4
  %254 = getelementptr i8, ptr %253, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %254, i32 0) #7, !srcloc !12
  %255 = load ptr, ptr %18, align 4
  %256 = getelementptr i8, ptr %255, i32 32
  %257 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %256) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !46
  %258 = and i32 %257, 8
  %259 = icmp ne i32 %258, 0
  %260 = xor i1 %248, true
  %261 = select i1 %259, i1 true, i1 %260
  br i1 %261, label %268, label %262

262:                                              ; preds = %252
  %263 = add i32 %226, %222
  %264 = getelementptr i8, ptr %221, i32 %226
  %265 = load i16, ptr %165, align 4
  %266 = zext i16 %265 to i32
  %267 = icmp ult i32 %263, %266
  br i1 %267, label %219, label %272

268:                                              ; preds = %252
  %269 = select i1 %259, ptr @.str.24, ptr @.str.25
  %270 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %270, ptr noundef nonnull %269) #8
  %271 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %271, ptr noundef nonnull @.str.18) #8
  br label %275

272:                                              ; preds = %262, %214, %205, %168
  %273 = add nuw nsw i32 %100, 1
  %274 = icmp eq i32 %273, %2
  br i1 %274, label %275, label %99

275:                                              ; preds = %272, %268, %211, %157, %111, %94, %91, %89, %38
  %276 = phi i32 [ %42, %91 ], [ %109, %111 ], [ -121, %211 ], [ -121, %268 ], [ -121, %157 ], [ %87, %89 ], [ %36, %38 ], [ %2, %94 ], [ %2, %272 ]
  %277 = tail call fastcc i32 @bcm_kona_send_i2c_cmd(ptr noundef %5, i32 noundef 3)
  %278 = load ptr, ptr %32, align 4
  %279 = icmp eq ptr %278, null
  br i1 %279, label %326, label %280

280:                                              ; preds = %275
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %281 = load ptr, ptr %18, align 4
  %282 = getelementptr i8, ptr %281, i32 88
  %283 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %282) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %284 = and i32 %283, -32769
  %285 = load ptr, ptr %18, align 4
  %286 = getelementptr i8, ptr %285, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %286, i32 %284) #7, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !15
  tail call void @arm_heavy_mb() #7
  %287 = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %5, i32 0, i32 6
  %288 = load ptr, ptr %287, align 8
  %289 = getelementptr inbounds %struct.bus_speed_cfg, ptr %288, i32 0, i32 2
  %290 = load i8, ptr %289, align 1
  %291 = zext i8 %290 to i32
  %292 = shl nuw nsw i32 %291, 6
  %293 = getelementptr inbounds %struct.bus_speed_cfg, ptr %288, i32 0, i32 3
  %294 = load i8, ptr %293, align 1
  %295 = zext i8 %294 to i32
  %296 = shl nuw nsw i32 %295, 3
  %297 = or i32 %296, %292
  %298 = getelementptr inbounds %struct.bus_speed_cfg, ptr %288, i32 0, i32 4
  %299 = load i8, ptr %298, align 1
  %300 = zext i8 %299 to i32
  %301 = shl nuw nsw i32 %300, 2
  %302 = or i32 %297, %301
  %303 = getelementptr inbounds %struct.bus_speed_cfg, ptr %288, i32 0, i32 5
  %304 = load i8, ptr %303, align 1
  %305 = zext i8 %304 to i32
  %306 = or i32 %302, %305
  %307 = load ptr, ptr %18, align 4
  %308 = getelementptr i8, ptr %307, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %308, i32 %306) #7, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  %309 = load ptr, ptr %287, align 8
  %310 = load i8, ptr %309, align 1
  %311 = zext i8 %310 to i32
  %312 = shl nuw nsw i32 %311, 4
  %313 = getelementptr inbounds %struct.bus_speed_cfg, ptr %309, i32 0, i32 1
  %314 = load i8, ptr %313, align 1
  %315 = zext i8 %314 to i32
  %316 = shl nuw nsw i32 %315, 1
  %317 = or i32 %312, %316
  %318 = or i32 %317, 1
  %319 = load ptr, ptr %18, align 4
  %320 = getelementptr i8, ptr %319, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %320, i32 %318) #7, !srcloc !12
  %321 = load ptr, ptr %6, align 4
  %322 = tail call i32 @clk_set_rate(ptr noundef %321, i32 noundef 13000000) #7
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %326, label %324

324:                                              ; preds = %280
  %325 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %325, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.bcm_kona_i2c_switch_to_std, i32 noundef %322) #8
  br label %326

326:                                              ; preds = %324, %280, %275, %29
  %327 = phi i32 [ %27, %29 ], [ %276, %275 ], [ %276, %280 ], [ %322, %324 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !47
  tail call void @arm_heavy_mb() #7
  %328 = load ptr, ptr %18, align 4
  %329 = getelementptr i8, ptr %328, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %329, i32 4) #7, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !25
  tail call void @arm_heavy_mb() #7
  %330 = load ptr, ptr %18, align 4
  %331 = getelementptr i8, ptr %330, i32 76
  %332 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %331) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !26
  %333 = and i32 %332, -2
  %334 = load ptr, ptr %18, align 4
  %335 = getelementptr i8, ptr %334, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %335, i32 %333) #7, !srcloc !12
  %336 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %336) #7
  tail call void @clk_unprepare(ptr noundef %336) #7
  br label %337

337:                                              ; preds = %326, %14
  %338 = phi i32 [ %15, %14 ], [ %327, %326 ]
  ret i32 %338
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @bcm_kona_i2c_functionality(ptr nocapture noundef readnone %0) #6 {
  ret i32 251592731
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @bcm_kona_send_i2c_cmd(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = load volatile i32, ptr @jiffies, align 64
  %4 = add i32 %3, 10
  %5 = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %0, i32 0, i32 1
  br label %6

6:                                                ; preds = %12, %2
  %7 = load ptr, ptr %5, align 4
  %8 = getelementptr i8, ptr %7, i32 72
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !48
  %10 = and i32 %9, 128
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %6
  %13 = load volatile i32, ptr @jiffies, align 64
  %14 = sub i32 %4, %13
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %6

16:                                               ; preds = %12
  %17 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.20) #8
  br label %32

18:                                               ; preds = %6
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !49
  tail call void @arm_heavy_mb() #7
  %19 = load ptr, ptr %5, align 4
  %20 = getelementptr i8, ptr %19, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 8) #7, !srcloc !12
  %21 = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %0, i32 0, i32 5
  store i32 0, ptr %21, align 4
  tail call fastcc void @bcm_kona_i2c_send_cmd_to_ctrl(ptr noundef %0, i32 noundef %1)
  %22 = tail call i32 @wait_for_completion_timeout(ptr noundef %21, i32 noundef 10) #7
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !50
  tail call void @arm_heavy_mb() #7
  %23 = load ptr, ptr %5, align 4
  %24 = getelementptr i8, ptr %23, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 0) #7, !srcloc !12
  %25 = icmp eq i32 %22, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.19) #8
  br label %28

28:                                               ; preds = %26, %18
  %29 = phi i32 [ 0, %18 ], [ -110, %26 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !23
  tail call void @arm_heavy_mb() #7
  %30 = load ptr, ptr %5, align 4
  %31 = getelementptr i8, ptr %30, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 1) #7, !srcloc !12
  br label %32

32:                                               ; preds = %28, %16
  %33 = phi i32 [ %29, %28 ], [ -110, %16 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @bcm_kona_i2c_write_byte(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2) unnamed_addr #2 {
  %4 = load volatile i32, ptr @jiffies, align 64
  %5 = add i32 %4, 10
  %6 = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %0, i32 0, i32 1
  br label %7

7:                                                ; preds = %13, %3
  %8 = load ptr, ptr %6, align 4
  %9 = getelementptr i8, ptr %8, i32 72
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !48
  %11 = and i32 %10, 128
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %7
  %14 = load volatile i32, ptr @jiffies, align 64
  %15 = sub i32 %5, %14
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %7

17:                                               ; preds = %13
  %18 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.20) #8
  br label %40

19:                                               ; preds = %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !51
  tail call void @arm_heavy_mb() #7
  %20 = load ptr, ptr %6, align 4
  %21 = getelementptr i8, ptr %20, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 8) #7, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !52
  tail call void @arm_heavy_mb() #7
  %22 = load ptr, ptr %6, align 4
  %23 = getelementptr i8, ptr %22, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 8) #7, !srcloc !12
  %24 = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %0, i32 0, i32 5
  store i32 0, ptr %24, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  %25 = zext i8 %1 to i32
  %26 = load ptr, ptr %6, align 4
  %27 = getelementptr i8, ptr %26, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #7, !srcloc !12
  %28 = tail call i32 @wait_for_completion_timeout(ptr noundef %24, i32 noundef 10) #7
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !54
  tail call void @arm_heavy_mb() #7
  %29 = load ptr, ptr %6, align 4
  %30 = getelementptr i8, ptr %29, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 0) #7, !srcloc !12
  %31 = icmp eq i32 %28, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %19
  %33 = load ptr, ptr %6, align 4
  %34 = getelementptr i8, ptr %33, i32 32
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !55
  %36 = lshr i32 %35, 3
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, %2
  %39 = select i1 %38, i32 0, i32 -121
  br label %40

40:                                               ; preds = %32, %19, %17
  %41 = phi i32 [ -110, %19 ], [ %39, %32 ], [ -110, %17 ]
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!9 = !{i64 2154099994}
!10 = !{i64 5368469}
!11 = !{i64 2154100493}
!12 = !{i64 5368051}
!13 = !{i64 2154115409}
!14 = !{i64 2154115910}
!15 = !{i64 2154116282}
!16 = !{i64 2154117001}
!17 = !{i64 2154130946}
!18 = !{i64 2154114127}
!19 = !{i64 2154114628}
!20 = !{i64 2154131319}
!21 = !{i64 2154131692}
!22 = !{i64 2154132161}
!23 = !{i64 2154096752}
!24 = !{i64 2154133249}
!25 = !{i64 2154101272}
!26 = !{i64 2154101773}
!27 = !{i64 2154102150}
!28 = !{i64 2154102415}
!29 = !{i64 2154102819}
!30 = !{i64 2154097298}
!31 = !{i64 2154097906}
!32 = !{i64 2154098470}
!33 = !{i64 2154123166}
!34 = !{i64 2154117640}
!35 = !{i64 2154118377}
!36 = !{i64 2154119495}
!37 = !{i64 2154119994}
!38 = !{i64 2154105687}
!39 = !{i64 2154106080}
!40 = !{i64 2154106493}
!41 = !{i64 2154107501}
!42 = !{i64 2154110674}
!43 = !{i64 2154111055}
!44 = !{i64 2154111558}
!45 = !{i64 2154111768}
!46 = !{i64 2154112258}
!47 = !{i64 2154126340}
!48 = !{i64 2154103353}
!49 = !{i64 2154104445}
!50 = !{i64 2154104792}
!51 = !{i64 2154107736}
!52 = !{i64 2154108103}
!53 = !{i64 2154108453}
!54 = !{i64 2154108788}
!55 = !{i64 2154109853}
