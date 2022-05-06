; ModuleID = '/llk/IR/drivers/mtd/devices/spear_smi.c_pt.bc'
source_filename = "../drivers/mtd/devices/spear_smi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.flash_device = type { ptr, i8, i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.spear_smi_plat_data = type { i32, i32, ptr, [4 x ptr] }
%struct.spear_smi_flash_info = type { ptr, i32, i32, ptr, i32, i8 }
%struct.spear_smi = type { ptr, i32, i32, %struct.mutex, ptr, ptr, %struct.wait_queue_head, i32, [4 x ptr] }
%struct.spear_snor_flash = type { i32, i32, %struct.mutex, %struct.mtd_info, i32, ptr, i32, ptr, i8, i8 }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.5 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.5 = type { %struct.mtd_part, [16 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.erase_info = type { i64, i64, i64 }

@__initcall__kmod_spear_smi__172_1118_spear_smi_driver_init6 = internal global ptr @spear_smi_driver_init, section ".initcall6.init", align 4
@spear_smi_driver = internal global %struct.platform_driver { ptr @spear_smi_probe, ptr @spear_smi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr @platform_bus_type, ptr null, ptr null, i8 0, i32 0, ptr @spear_smi_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @spear_smi_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_spear_smi_driver_exit = internal global ptr @spear_smi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file173 = internal constant [45 x i8] c"spear_smi.file=drivers/mtd/devices/spear_smi\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [22 x i8] c"spear_smi.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author175 = internal constant [83 x i8] c"spear_smi.author=Ashish Priyadarshi, Shiraz Hashim <shiraz.linux.kernel@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description176 = internal constant [64 x i8] c"spear_smi.description=MTD SMI driver for serial nor flash chips\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [4 x i8] c"smi\00", align 1
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@spear_smi_id_table = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,spear600-smi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@spear_smi_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @spear_smi_suspend, ptr @spear_smi_resume, ptr @spear_smi_suspend, ptr @spear_smi_resume, ptr @spear_smi_suspend, ptr @spear_smi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"no platform data\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"exceeding max number of flashes\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"SMI IRQ allocation failed\0A\00", align 1
@spear_smi_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"&dev->lock\00", align 1
@spear_smi_probe.__key.5 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"&dev->cmd_complete\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"bank setup failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"clock-rate\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"st,smi-fast-mode\00", align 1
@spear_smi_setup_banks.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"&flash->lock\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"smi-nor%d not found\0A\00", align 1
@flash_devices = internal unnamed_addr constant [34 x %struct.flash_device] [%struct.flash_device { ptr @.str.18, i8 -40, i32 1384480, i32 256, i32 65536, i32 2097152 }, %struct.flash_device { ptr @.str.19, i8 -40, i32 1450016, i32 256, i32 65536, i32 4194304 }, %struct.flash_device { ptr @.str.20, i8 -40, i32 1515552, i32 256, i32 65536, i32 8388608 }, %struct.flash_device { ptr @.str.21, i8 -40, i32 1581088, i32 256, i32 262144, i32 16777216 }, %struct.flash_device { ptr @.str.22, i8 -40, i32 1056800, i32 128, i32 32768, i32 65536 }, %struct.flash_device { ptr @.str.23, i8 -40, i32 1122336, i32 128, i32 32768, i32 131072 }, %struct.flash_device { ptr @.str.24, i8 -40, i32 1187872, i32 256, i32 65536, i32 262144 }, %struct.flash_device { ptr @.str.25, i8 -40, i32 1253408, i32 256, i32 65536, i32 524288 }, %struct.flash_device { ptr @.str.26, i8 -40, i32 1318944, i32 256, i32 65536, i32 1048576 }, %struct.flash_device { ptr @.str.27, i8 -40, i32 1130528, i32 256, i32 65536, i32 131072 }, %struct.flash_device { ptr @.str.28, i8 -40, i32 1196064, i32 256, i32 65536, i32 262144 }, %struct.flash_device { ptr @.str.29, i8 -40, i32 1261600, i32 256, i32 65536, i32 524288 }, %struct.flash_device { ptr @.str.30, i8 -40, i32 1327136, i32 256, i32 65536, i32 1048576 }, %struct.flash_device { ptr @.str.31, i8 -40, i32 1180161, i32 256, i32 65536, i32 524288 }, %struct.flash_device { ptr @.str.32, i8 -40, i32 1245697, i32 256, i32 65536, i32 1048576 }, %struct.flash_device { ptr @.str.33, i8 -40, i32 1311233, i32 256, i32 65536, i32 2097152 }, %struct.flash_device { ptr @.str.34, i8 -40, i32 1376769, i32 256, i32 65536, i32 4194304 }, %struct.flash_device { ptr @.str.35, i8 -40, i32 1442305, i32 256, i32 65536, i32 8388608 }, %struct.flash_device { ptr @.str.36, i8 82, i32 6619167, i32 128, i32 32768, i32 65536 }, %struct.flash_device { ptr @.str.37, i8 82, i32 6291487, i32 256, i32 32768, i32 131072 }, %struct.flash_device { ptr @.str.38, i8 82, i32 6488095, i32 256, i32 65536, i32 262144 }, %struct.flash_device { ptr @.str.39, i8 82, i32 6553631, i32 256, i32 65536, i32 524288 }, %struct.flash_device { ptr @.str.40, i8 -41, i32 288287, i32 256, i32 65536, i32 524288 }, %struct.flash_device { ptr @.str.41, i8 -40, i32 1056962, i32 16, i32 65536, i32 65536 }, %struct.flash_device { ptr @.str.42, i8 -40, i32 1122498, i32 16, i32 65536, i32 131072 }, %struct.flash_device { ptr @.str.43, i8 -40, i32 1188034, i32 16, i32 65536, i32 262144 }, %struct.flash_device { ptr @.str.44, i8 -40, i32 1253570, i32 16, i32 65536, i32 524288 }, %struct.flash_device { ptr @.str.45, i8 -40, i32 1253570, i32 16, i32 65536, i32 524288 }, %struct.flash_device { ptr @.str.46, i8 -40, i32 1319106, i32 16, i32 65536, i32 1048576 }, %struct.flash_device { ptr @.str.47, i8 -40, i32 1384642, i32 256, i32 65536, i32 2097152 }, %struct.flash_device { ptr @.str.48, i8 -40, i32 1384642, i32 16, i32 65536, i32 2097152 }, %struct.flash_device { ptr @.str.49, i8 -40, i32 1450178, i32 256, i32 65536, i32 4194304 }, %struct.flash_device { ptr @.str.50, i8 -40, i32 1450178, i32 256, i32 65536, i32 4194304 }, %struct.flash_device { ptr @.str.51, i8 -40, i32 1515714, i32 256, i32 65536, i32 8388608 }], align 4
@.str.13 = private unnamed_addr constant [32 x i8] c"mtd .name=%s .size=%llx(%lluM)\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c".erasesize = 0x%x(%uK)\0A\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"Err MTD partition=%d\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.17 = private unnamed_addr constant [33 x i8] c"smi controller is busy, timeout\0A\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"st m25p16\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"st m25p32\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"st m25p64\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"st m25p128\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"st m25p05\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"st m25p10\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"st m25p20\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"st m25p40\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"st m25p80\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"st m45pe10\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"st m45pe20\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"st m45pe40\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"st m45pe80\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"sp s25fl004\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"sp s25fl008\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"sp s25fl016\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"sp s25fl032\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"sp s25fl064\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"atmel 25f512\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"atmel 25f1024\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"atmel 25f2048\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"atmel 25f4096\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"atmel 25fs040\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"mac 25l512\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"mac 25l1005\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"mac 25l2005\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"mac 25l4005\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"mac 25l4005a\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"mac 25l8005\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"mac 25l1605\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c"mac 25l1605a\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"mac 25l3205\00", align 1
@.str.50 = private unnamed_addr constant [13 x i8] c"mac 25l3205a\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"mac 25l6405\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.53 = private unnamed_addr constant [17 x i8] c"Invalid Bank Num\00", align 1
@.str.54 = private unnamed_addr constant [21 x i8] c"sector erase failed\0A\00", align 1
@.str.55 = private unnamed_addr constant [39 x i8] c"smi controller failed on write enable\0A\00", align 1
@.str.56 = private unnamed_addr constant [23 x i8] c"couldn't enable write\0A\00", align 1
@.str.57 = private unnamed_addr constant [13 x i8] c"dev is null\0A\00", align 1
@.str.58 = private unnamed_addr constant [20 x i8] c"error removing mtd\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author175, ptr @__UNIQUE_ID_description176, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_spear_smi_driver_exit, ptr @__initcall__kmod_spear_smi__172_1118_spear_smi_driver_init6, ptr @spear_smi_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @spear_smi_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @spear_smi_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @spear_smi_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @spear_smi_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spear_smi_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %49, label %9

9:                                                ; preds = %1
  %10 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 28, i32 noundef 3520) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %290, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  store ptr %10, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !8
  %14 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %7, ptr noundef nonnull @.str.8, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #8
  %15 = load i32, ptr %3, align 4
  store i32 %15, ptr %10, align 4
  %16 = call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 24, i32 noundef 3520) #8
  %17 = getelementptr inbounds %struct.spear_smi_plat_data, ptr %10, i32 0, i32 2
  store ptr %16, ptr %17, align 4
  %18 = icmp eq ptr %16, null
  br i1 %18, label %48, label %19

19:                                               ; preds = %12
  %20 = call ptr @of_get_next_child(ptr noundef nonnull %7, ptr noundef null) #8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %45, label %22

22:                                               ; preds = %41, %19
  %23 = phi i32 [ %42, %41 ], [ 0, %19 ]
  %24 = phi ptr [ %43, %41 ], [ %20, %19 ]
  %25 = getelementptr %struct.spear_smi_plat_data, ptr %10, i32 0, i32 3, i32 %23
  store ptr %24, ptr %25, align 4
  %26 = call ptr @of_get_property(ptr noundef nonnull %24, ptr noundef nonnull @.str.9, ptr noundef nonnull %4) #8
  %27 = load i32, ptr %26, align 4
  %28 = call i32 @llvm.bswap.i32(i32 %27) #8
  %29 = load ptr, ptr %17, align 4
  %30 = getelementptr inbounds %struct.spear_smi_flash_info, ptr %29, i32 0, i32 1
  store i32 %28, ptr %30, align 4
  %31 = getelementptr i32, ptr %26, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = call i32 @llvm.bswap.i32(i32 %32) #8
  %34 = load ptr, ptr %17, align 4
  %35 = getelementptr inbounds %struct.spear_smi_flash_info, ptr %34, i32 0, i32 2
  store i32 %33, ptr %35, align 4
  %36 = call ptr @of_get_property(ptr noundef nonnull %24, ptr noundef nonnull @.str.10, ptr noundef null) #8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %22
  %39 = load ptr, ptr %17, align 4
  %40 = getelementptr inbounds %struct.spear_smi_flash_info, ptr %39, i32 0, i32 5
  store i8 1, ptr %40, align 4
  br label %41

41:                                               ; preds = %38, %22
  %42 = add i32 %23, 1
  %43 = call ptr @of_get_next_child(ptr noundef nonnull %7, ptr noundef nonnull %24) #8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %22

45:                                               ; preds = %41, %19
  %46 = phi i32 [ 0, %19 ], [ %42, %41 ]
  %47 = getelementptr inbounds %struct.spear_smi_plat_data, ptr %10, i32 0, i32 1
  store i32 %46, ptr %47, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  br label %54

48:                                               ; preds = %12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.1) #9
  br label %290

49:                                               ; preds = %1
  %50 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.1) #9
  br label %290

54:                                               ; preds = %49, %45
  %55 = phi ptr [ %51, %49 ], [ %10, %45 ]
  %56 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #8
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %290, label %58

58:                                               ; preds = %54
  %59 = call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 72, i32 noundef 2848) #8
  %60 = icmp eq ptr %59, null
  br i1 %60, label %290, label %61

61:                                               ; preds = %58
  %62 = call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #8
  %63 = call ptr @devm_ioremap_resource(ptr noundef %5, ptr noundef %62) #8
  %64 = getelementptr inbounds %struct.spear_smi, ptr %59, i32 0, i32 4
  store ptr %63, ptr %64, align 4
  %65 = icmp ugt ptr %63, inttoptr (i32 -4096 to ptr)
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = ptrtoint ptr %63 to i32
  br label %290

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.spear_smi, ptr %59, i32 0, i32 5
  store ptr %0, ptr %69, align 4
  %70 = load i32, ptr %55, align 4
  %71 = getelementptr inbounds %struct.spear_smi, ptr %59, i32 0, i32 2
  %72 = call i32 @llvm.umin.i32(i32 %70, i32 50000000)
  store i32 %72, ptr %71, align 4
  %73 = getelementptr inbounds %struct.spear_smi_plat_data, ptr %55, i32 0, i32 1
  %74 = load i32, ptr %73, align 4
  %75 = getelementptr inbounds %struct.spear_smi, ptr %59, i32 0, i32 7
  store i32 %74, ptr %75, align 4
  %76 = icmp ugt i32 %74, 4
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.2) #9
  store i32 4, ptr %75, align 4
  br label %78

78:                                               ; preds = %77, %68
  %79 = call ptr @devm_clk_get(ptr noundef %5, ptr noundef null) #8
  store ptr %79, ptr %59, align 4
  %80 = icmp ugt ptr %79, inttoptr (i32 -4096 to ptr)
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = ptrtoint ptr %79 to i32
  br label %290

83:                                               ; preds = %78
  %84 = call i32 @clk_prepare(ptr noundef %79) #8
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %290

86:                                               ; preds = %83
  %87 = call i32 @clk_enable(ptr noundef %79) #8
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %86
  call void @clk_unprepare(ptr noundef %79) #8
  br label %290

90:                                               ; preds = %86
  %91 = load ptr, ptr %0, align 8
  %92 = call i32 @devm_request_threaded_irq(ptr noundef %5, i32 noundef %56, ptr noundef nonnull @spear_smi_int_handler, ptr noundef null, i32 noundef 0, ptr noundef %91, ptr noundef nonnull %59) #8
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %284

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.spear_smi, ptr %59, i32 0, i32 3
  call void @__mutex_init(ptr noundef %95, ptr noundef nonnull @.str.4, ptr noundef nonnull @spear_smi_probe.__key) #8
  %96 = getelementptr inbounds %struct.spear_smi, ptr %59, i32 0, i32 6
  call void @__init_waitqueue_head(ptr noundef %96, ptr noundef nonnull @.str.6, ptr noundef nonnull @spear_smi_probe.__key.5) #8
  %97 = load ptr, ptr %59, align 4
  %98 = call i32 @clk_get_rate(ptr noundef %97) #8
  %99 = load i32, ptr %71, align 4
  %100 = add i32 %98, -1
  %101 = add i32 %100, %99
  %102 = udiv i32 %101, %99
  %103 = shl i32 %102, 8
  %104 = or i32 %103, 65647
  call void @mutex_lock(ptr noundef %95) #8
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !9
  call void @arm_heavy_mb() #8
  %105 = load ptr, ptr %64, align 4
  %106 = getelementptr i8, ptr %105, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %106, i32 0) #8, !srcloc !10
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  call void @arm_heavy_mb() #8
  %107 = load ptr, ptr %64, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 %104) #8, !srcloc !10
  call void @mutex_unlock(ptr noundef %95) #8
  %108 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %59, ptr %108, align 8
  %109 = load i32, ptr %75, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %290, label %111

111:                                              ; preds = %94
  %112 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %113 = getelementptr %struct.spear_smi_plat_data, ptr %55, i32 0, i32 3, i32 0
  %114 = load ptr, ptr %112, align 4
  br label %115

115:                                              ; preds = %276, %111
  %116 = phi ptr [ %114, %111 ], [ %279, %276 ]
  %117 = phi ptr [ %113, %111 ], [ %278, %276 ]
  %118 = phi i32 [ 0, %111 ], [ %273, %276 ]
  %119 = phi ptr [ %59, %111 ], [ %277, %276 ]
  %120 = load ptr, ptr %117, align 4
  %121 = getelementptr inbounds %struct.spear_smi_plat_data, ptr %116, i32 0, i32 2
  %122 = load ptr, ptr %121, align 4
  %123 = getelementptr %struct.spear_smi_flash_info, ptr %122, i32 %118
  %124 = icmp eq ptr %123, null
  br i1 %124, label %284, label %125

125:                                              ; preds = %115
  %126 = call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 864, i32 noundef 2848) #8
  %127 = icmp eq ptr %126, null
  br i1 %127, label %284, label %128

128:                                              ; preds = %125
  store i32 %118, ptr %126, align 8
  %129 = getelementptr %struct.spear_smi_flash_info, ptr %122, i32 %118, i32 5
  %130 = load i8, ptr %129, align 4
  %131 = icmp ne i8 %130, 0
  %132 = zext i1 %131 to i8
  %133 = getelementptr inbounds %struct.spear_snor_flash, ptr %126, i32 0, i32 9
  store i8 %132, ptr %133, align 1
  %134 = getelementptr inbounds %struct.spear_snor_flash, ptr %126, i32 0, i32 2
  call void @__mutex_init(ptr noundef %134, ptr noundef nonnull @.str.11, ptr noundef nonnull @spear_smi_setup_banks.__key) #8
  %135 = call fastcc i32 @spear_smi_wait_till_ready(ptr noundef %119, i32 noundef %118, i32 noundef 10) #8
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %200

137:                                              ; preds = %128
  %138 = getelementptr inbounds %struct.spear_smi, ptr %119, i32 0, i32 3
  call void @mutex_lock(ptr noundef %138) #8
  %139 = getelementptr inbounds %struct.spear_smi, ptr %119, i32 0, i32 1
  store i32 0, ptr %139, align 4
  %140 = getelementptr inbounds %struct.spear_smi, ptr %119, i32 0, i32 4
  %141 = load ptr, ptr %140, align 4
  %142 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %141) #8, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  call void @arm_heavy_mb() #8
  %143 = or i32 %142, 268435456
  %144 = load ptr, ptr %140, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %144, i32 %143) #8, !srcloc !10
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !15
  call void @arm_heavy_mb() #8
  %145 = load ptr, ptr %140, align 4
  %146 = getelementptr i8, ptr %145, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %146, i32 159) #8, !srcloc !10
  %147 = shl i32 %118, 12
  %148 = or i32 %147, 433
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !16
  call void @arm_heavy_mb() #8
  %149 = load ptr, ptr %140, align 4
  %150 = getelementptr i8, ptr %149, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %150, i32 %148) #8, !srcloc !10
  %151 = load i32, ptr %139, align 4
  %152 = and i32 %151, 256
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %181

154:                                              ; preds = %137
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false) #8, !annotation !8
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #8
  %155 = getelementptr inbounds %struct.spear_smi, ptr %119, i32 0, i32 6
  %156 = call i32 @prepare_to_wait_event(ptr noundef %155, ptr noundef nonnull %2, i32 noundef 1) #8
  %157 = load i32, ptr %139, align 4
  %158 = and i32 %157, 256
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %176

160:                                              ; preds = %164, %154
  %161 = phi i32 [ %173, %164 ], [ 10, %154 ]
  %162 = phi i32 [ %166, %164 ], [ %156, %154 ]
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %178

164:                                              ; preds = %160
  %165 = call i32 @schedule_timeout(i32 noundef %161) #8
  %166 = call i32 @prepare_to_wait_event(ptr noundef %155, ptr noundef nonnull %2, i32 noundef 1) #8
  %167 = load i32, ptr %139, align 4
  %168 = and i32 %167, 256
  %169 = icmp ne i32 %168, 0
  %170 = xor i1 %169, true
  %171 = icmp ne i32 %165, 0
  %172 = select i1 %170, i1 true, i1 %171
  %173 = select i1 %172, i32 %165, i32 1
  %174 = icmp eq i32 %173, 0
  %175 = select i1 %169, i1 true, i1 %174
  br i1 %175, label %176, label %160

176:                                              ; preds = %164, %154
  %177 = phi i32 [ 10, %154 ], [ %173, %164 ]
  call void @finish_wait(ptr noundef %155, ptr noundef nonnull %2) #8
  br label %178

178:                                              ; preds = %176, %160
  %179 = phi i32 [ %177, %176 ], [ %162, %160 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #8
  %180 = icmp slt i32 %179, 1
  br i1 %180, label %194, label %181

181:                                              ; preds = %178, %137
  %182 = load ptr, ptr %140, align 4
  %183 = getelementptr i8, ptr %182, i32 16
  %184 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %183) #8, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !17
  %185 = and i32 %184, 16777215
  br label %186

186:                                              ; preds = %191, %181
  %187 = phi i32 [ 0, %181 ], [ %192, %191 ]
  %188 = getelementptr [34 x %struct.flash_device], ptr @flash_devices, i32 0, i32 %187, i32 2
  %189 = load i32, ptr %188, align 4
  %190 = icmp eq i32 %189, %185
  br i1 %190, label %194, label %191

191:                                              ; preds = %186
  %192 = add nuw nsw i32 %187, 1
  %193 = icmp eq i32 %192, 34
  br i1 %193, label %194, label %186

194:                                              ; preds = %191, %186, %178
  %195 = phi i32 [ -19, %178 ], [ -19, %191 ], [ %187, %186 ]
  %196 = load ptr, ptr %140, align 4
  %197 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %196) #8, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !18
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  call void @arm_heavy_mb() #8
  %198 = and i32 %197, -268435457
  %199 = load ptr, ptr %140, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %199, i32 %198) #8, !srcloc !10
  call void @mutex_unlock(ptr noundef %138) #8
  br label %200

200:                                              ; preds = %194, %128
  %201 = phi i32 [ %195, %194 ], [ %135, %128 ]
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %200
  %204 = getelementptr inbounds %struct.spear_smi, ptr %119, i32 0, i32 5
  %205 = load ptr, ptr %204, align 4
  %206 = getelementptr inbounds %struct.platform_device, ptr %205, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %206, ptr noundef nonnull @.str.12, i32 noundef %118) #9
  br label %284

207:                                              ; preds = %200
  %208 = getelementptr %struct.spear_smi_flash_info, ptr %122, i32 %118, i32 1
  %209 = load i32, ptr %208, align 4
  %210 = getelementptr %struct.spear_smi_flash_info, ptr %122, i32 %118, i32 2
  %211 = load i32, ptr %210, align 4
  %212 = call ptr @devm_ioremap(ptr noundef %5, i32 noundef %209, i32 noundef %211) #8
  %213 = getelementptr inbounds %struct.spear_snor_flash, ptr %126, i32 0, i32 7
  store ptr %212, ptr %213, align 4
  %214 = icmp eq ptr %212, null
  br i1 %214, label %284, label %215

215:                                              ; preds = %207
  %216 = getelementptr %struct.spear_smi, ptr %119, i32 0, i32 8, i32 %118
  store ptr %126, ptr %216, align 4
  %217 = getelementptr inbounds %struct.spear_snor_flash, ptr %126, i32 0, i32 3
  %218 = getelementptr inbounds %struct.spear_snor_flash, ptr %126, i32 0, i32 3, i32 54
  store ptr %119, ptr %218, align 8
  %219 = load ptr, ptr %123, align 4
  %220 = icmp eq ptr %219, null
  br i1 %220, label %225, label %221

221:                                              ; preds = %215
  %222 = getelementptr inbounds %struct.spear_snor_flash, ptr %126, i32 0, i32 3, i32 13
  store ptr %219, ptr %222, align 8
  %223 = getelementptr inbounds %struct.spear_snor_flash, ptr %126, i32 0, i32 3, i32 56, i32 1
  store ptr %5, ptr %223, align 4
  %224 = getelementptr inbounds %struct.spear_snor_flash, ptr %126, i32 0, i32 3, i32 56, i32 25
  store ptr %120, ptr %224, align 8
  br label %235

225:                                              ; preds = %215
  %226 = getelementptr [34 x %struct.flash_device], ptr @flash_devices, i32 0, i32 %201
  %227 = load ptr, ptr %226, align 4
  %228 = getelementptr inbounds %struct.spear_snor_flash, ptr %126, i32 0, i32 3, i32 13
  store ptr %227, ptr %228, align 8
  %229 = getelementptr inbounds %struct.spear_snor_flash, ptr %126, i32 0, i32 3, i32 56, i32 1
  store ptr %5, ptr %229, align 4
  %230 = getelementptr inbounds %struct.spear_snor_flash, ptr %126, i32 0, i32 3, i32 56, i32 25
  store ptr %120, ptr %230, align 8
  %231 = icmp eq ptr %227, null
  br i1 %231, label %232, label %235

232:                                              ; preds = %225
  %233 = call i32 @of_property_read_string(ptr noundef %120, ptr noundef nonnull @.str.52, ptr noundef %228) #8
  %234 = load ptr, ptr %228, align 8
  br label %235

235:                                              ; preds = %232, %225, %221
  %236 = phi ptr [ %227, %225 ], [ %234, %232 ], [ %219, %221 ]
  store i8 3, ptr %217, align 8
  %237 = getelementptr inbounds %struct.spear_snor_flash, ptr %126, i32 0, i32 3, i32 4
  store i32 1, ptr %237, align 4
  %238 = getelementptr inbounds %struct.spear_snor_flash, ptr %126, i32 0, i32 3, i32 1
  store i32 3072, ptr %238, align 4
  %239 = load i32, ptr %210, align 4
  %240 = zext i32 %239 to i64
  %241 = getelementptr inbounds %struct.spear_snor_flash, ptr %126, i32 0, i32 3, i32 2
  store i64 %240, ptr %241, align 8
  %242 = getelementptr [34 x %struct.flash_device], ptr @flash_devices, i32 0, i32 %201, i32 4
  %243 = load i32, ptr %242, align 4
  %244 = getelementptr inbounds %struct.spear_snor_flash, ptr %126, i32 0, i32 3, i32 3
  store i32 %243, ptr %244, align 8
  %245 = getelementptr [34 x %struct.flash_device], ptr @flash_devices, i32 0, i32 %201, i32 3
  %246 = load i32, ptr %245, align 4
  %247 = getelementptr inbounds %struct.spear_snor_flash, ptr %126, i32 0, i32 6
  store i32 %246, ptr %247, align 8
  %248 = getelementptr inbounds %struct.spear_snor_flash, ptr %126, i32 0, i32 3, i32 5
  store i32 %246, ptr %248, align 8
  %249 = getelementptr [34 x %struct.flash_device], ptr @flash_devices, i32 0, i32 %201, i32 1
  %250 = load i8, ptr %249, align 4
  %251 = getelementptr inbounds %struct.spear_snor_flash, ptr %126, i32 0, i32 8
  store i8 %250, ptr %251, align 8
  %252 = getelementptr inbounds %struct.spear_snor_flash, ptr %126, i32 0, i32 3, i32 21
  store ptr @spear_mtd_erase, ptr %252, align 8
  %253 = getelementptr inbounds %struct.spear_snor_flash, ptr %126, i32 0, i32 3, i32 24
  store ptr @spear_mtd_read, ptr %253, align 4
  %254 = getelementptr inbounds %struct.spear_snor_flash, ptr %126, i32 0, i32 3, i32 25
  store ptr @spear_mtd_write, ptr %254, align 8
  %255 = getelementptr [34 x %struct.flash_device], ptr @flash_devices, i32 0, i32 %201, i32 2
  %256 = load i32, ptr %255, align 4
  %257 = getelementptr inbounds %struct.spear_snor_flash, ptr %126, i32 0, i32 1
  store i32 %256, ptr %257, align 4
  %258 = getelementptr inbounds %struct.spear_smi, ptr %119, i32 0, i32 5
  %259 = load ptr, ptr %258, align 4
  %260 = getelementptr inbounds %struct.platform_device, ptr %259, i32 0, i32 3
  %261 = lshr i64 %240, 20
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %260, ptr noundef nonnull @.str.13, ptr noundef %236, i64 noundef %240, i64 noundef %261) #9
  %262 = load ptr, ptr %258, align 4
  %263 = getelementptr inbounds %struct.platform_device, ptr %262, i32 0, i32 3
  %264 = load i32, ptr %244, align 8
  %265 = lshr i32 %264, 10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %263, ptr noundef nonnull @.str.14, i32 noundef %264, i32 noundef %265) #9
  %266 = call i32 @mtd_device_parse_register(ptr noundef %217, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #8
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %272, label %268

268:                                              ; preds = %235
  %269 = getelementptr inbounds %struct.spear_smi, ptr %119, i32 0, i32 5
  %270 = load ptr, ptr %269, align 4
  %271 = getelementptr inbounds %struct.platform_device, ptr %270, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %271, ptr noundef nonnull @.str.15, i32 noundef %266) #9
  br label %284

272:                                              ; preds = %235
  %273 = add nuw i32 %118, 1
  %274 = load i32, ptr %75, align 4
  %275 = icmp ult i32 %273, %274
  br i1 %275, label %276, label %290

276:                                              ; preds = %272
  %277 = load ptr, ptr %108, align 8
  %278 = getelementptr %struct.spear_smi_plat_data, ptr %55, i32 0, i32 3, i32 %273
  %279 = load ptr, ptr %112, align 4
  %280 = getelementptr inbounds %struct.spear_smi_plat_data, ptr %279, i32 0, i32 1
  %281 = load i32, ptr %280, align 4
  %282 = add i32 %281, -1
  %283 = icmp ugt i32 %282, %118
  br i1 %283, label %115, label %284

284:                                              ; preds = %276, %268, %207, %203, %125, %115, %90
  %285 = phi ptr [ @.str.3, %90 ], [ @.str.7, %203 ], [ @.str.7, %268 ], [ @.str.7, %276 ], [ @.str.7, %115 ], [ @.str.7, %125 ], [ @.str.7, %207 ]
  %286 = phi i32 [ %92, %90 ], [ %201, %203 ], [ %266, %268 ], [ -5, %207 ], [ -12, %125 ], [ -19, %115 ], [ -22, %276 ]
  %287 = load ptr, ptr %69, align 4
  %288 = getelementptr inbounds %struct.platform_device, ptr %287, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %288, ptr noundef nonnull %285) #9
  %289 = load ptr, ptr %59, align 4
  call void @clk_disable(ptr noundef %289) #8
  call void @clk_unprepare(ptr noundef %289) #8
  br label %290

290:                                              ; preds = %284, %272, %94, %89, %83, %81, %66, %58, %54, %53, %48, %9
  %291 = phi i32 [ -19, %48 ], [ %67, %66 ], [ %82, %81 ], [ %286, %284 ], [ -19, %53 ], [ -12, %9 ], [ -19, %54 ], [ -12, %58 ], [ %87, %89 ], [ %84, %83 ], [ 0, %94 ], [ 0, %272 ]
  ret i32 %291
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spear_smi_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.spear_smi, ptr %3, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %27, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  br label %13

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.57) #9
  br label %29

13:                                               ; preds = %23, %9
  %14 = phi i32 [ 0, %9 ], [ %24, %23 ]
  %15 = getelementptr %struct.spear_smi, ptr %3, i32 0, i32 8, i32 %14
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.spear_snor_flash, ptr %16, i32 0, i32 3
  %20 = tail call i32 @mtd_device_unregister(ptr noundef %19) #8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.58) #9
  br label %23

23:                                               ; preds = %22, %18, %13
  %24 = add nuw i32 %14, 1
  %25 = load i32, ptr %6, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %13, label %27

27:                                               ; preds = %23, %5
  %28 = load ptr, ptr %3, align 4
  tail call void @clk_disable(ptr noundef %28) #8
  tail call void @clk_unprepare(ptr noundef %28) #8
  br label %29

29:                                               ; preds = %27, %11
  %30 = phi i32 [ 0, %27 ], [ -19, %11 ]
  ret i32 %30
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spear_smi_int_handler(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.spear_smi, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !20
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %15, label %8, !prof !21

8:                                                ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !22
  tail call void @arm_heavy_mb() #8
  %9 = load ptr, ptr %3, align 4
  %10 = getelementptr i8, ptr %9, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 0) #8, !srcloc !10
  %11 = getelementptr inbounds %struct.spear_smi, ptr %1, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = or i32 %12, %6
  store i32 %13, ptr %11, align 4
  %14 = getelementptr inbounds %struct.spear_smi, ptr %1, i32 0, i32 6
  tail call void @__wake_up(ptr noundef %14, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  br label %15

15:                                               ; preds = %8, %2
  %16 = phi i32 [ 1, %8 ], [ 0, %2 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spear_mtd_erase(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca %struct.wait_queue_entry, align 4
  %4 = getelementptr i8, ptr %0, i32 -32
  %5 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 54
  %6 = load ptr, ptr %5, align 8
  %7 = icmp ne ptr %4, null
  %8 = icmp ne ptr %6, null
  %9 = select i1 %7, i1 %8, i1 false
  br i1 %9, label %10, label %108

10:                                               ; preds = %2
  %11 = load i32, ptr %4, align 8
  %12 = getelementptr inbounds %struct.spear_smi, ptr %6, i32 0, i32 7
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, -1
  %15 = icmp ugt i32 %11, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.spear_smi, ptr %6, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.platform_device, ptr %18, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.53) #9
  br label %108

20:                                               ; preds = %10
  %21 = load i64, ptr %1, align 8
  %22 = getelementptr inbounds %struct.erase_info, ptr %1, i32 0, i32 1
  %23 = load i64, ptr %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = getelementptr i8, ptr %0, i32 -24
  tail call void @mutex_lock(ptr noundef %25) #8
  %26 = icmp eq i32 %24, 0
  br i1 %26, label %107, label %27

27:                                               ; preds = %20
  %28 = trunc i64 %21 to i32
  %29 = getelementptr i8, ptr %0, i32 824
  %30 = getelementptr inbounds %struct.spear_smi, ptr %6, i32 0, i32 3
  %31 = getelementptr inbounds %struct.spear_smi, ptr %6, i32 0, i32 4
  %32 = shl i32 %11, 12
  %33 = or i32 %32, 388
  %34 = getelementptr inbounds %struct.spear_smi, ptr %6, i32 0, i32 1
  %35 = getelementptr inbounds %struct.spear_smi, ptr %6, i32 0, i32 6
  %36 = getelementptr inbounds %struct.spear_smi, ptr %6, i32 0, i32 5
  %37 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 3
  br label %38

38:                                               ; preds = %102, %27
  %39 = phi i32 [ %24, %27 ], [ %105, %102 ]
  %40 = phi i32 [ %28, %27 ], [ %104, %102 ]
  %41 = load i8, ptr %29, align 8
  %42 = and i32 %40, 16777215
  %43 = call i32 @llvm.bswap.i32(i32 %42) #8
  %44 = zext i8 %41 to i32
  %45 = or i32 %43, %44
  %46 = call fastcc i32 @spear_smi_wait_till_ready(ptr noundef nonnull %6, i32 noundef %11, i32 noundef 300) #8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %100

48:                                               ; preds = %38
  %49 = call fastcc i32 @spear_smi_write_enable(ptr noundef nonnull %6, i32 noundef %11) #8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %100

51:                                               ; preds = %48
  call void @mutex_lock(ptr noundef %30) #8
  %52 = load ptr, ptr %31, align 4
  %53 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #8, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !23
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !24
  call void @arm_heavy_mb() #8
  %54 = and i32 %53, -805306369
  %55 = or i32 %54, 268435456
  %56 = load ptr, ptr %31, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %55) #8, !srcloc !10
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !25
  call void @arm_heavy_mb() #8
  %57 = load ptr, ptr %31, align 4
  %58 = getelementptr i8, ptr %57, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %45) #8, !srcloc !10
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !26
  call void @arm_heavy_mb() #8
  %59 = load ptr, ptr %31, align 4
  %60 = getelementptr i8, ptr %59, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %33) #8, !srcloc !10
  %61 = load i32, ptr %34, align 4
  %62 = and i32 %61, 256
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %91

64:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false) #8, !annotation !8
  call void @init_wait_entry(ptr noundef nonnull %3, i32 noundef 0) #8
  %65 = call i32 @prepare_to_wait_event(ptr noundef %35, ptr noundef nonnull %3, i32 noundef 1) #8
  %66 = load i32, ptr %34, align 4
  %67 = and i32 %66, 256
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %64
  call void @finish_wait(ptr noundef %35, ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #8
  br label %91

70:                                               ; preds = %75, %64
  %71 = phi i32 [ %84, %75 ], [ 10, %64 ]
  %72 = phi i32 [ %77, %75 ], [ %65, %64 ]
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #8
  br label %91

75:                                               ; preds = %70
  %76 = call i32 @schedule_timeout(i32 noundef %71) #8
  %77 = call i32 @prepare_to_wait_event(ptr noundef %35, ptr noundef nonnull %3, i32 noundef 1) #8
  %78 = load i32, ptr %34, align 4
  %79 = and i32 %78, 256
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = icmp ne i32 %76, 0
  %83 = select i1 %81, i1 true, i1 %82
  %84 = select i1 %83, i32 %76, i32 1
  %85 = icmp eq i32 %84, 0
  %86 = select i1 %80, i1 true, i1 %85
  br i1 %86, label %87, label %70

87:                                               ; preds = %75
  call void @finish_wait(ptr noundef %35, ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #8
  br i1 %85, label %88, label %91

88:                                               ; preds = %87
  %89 = load ptr, ptr %36, align 4
  %90 = getelementptr inbounds %struct.platform_device, ptr %89, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.54) #9
  br label %94

91:                                               ; preds = %87, %74, %69, %51
  %92 = phi i32 [ %84, %87 ], [ %72, %74 ], [ 10, %51 ], [ 10, %69 ]
  %93 = call i32 @llvm.smin.i32(i32 %92, i32 0) #8
  br label %94

94:                                               ; preds = %91, %88
  %95 = phi i32 [ -5, %88 ], [ %93, %91 ]
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !27
  call void @arm_heavy_mb() #8
  %96 = load ptr, ptr %31, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 %53) #8, !srcloc !10
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !28
  call void @arm_heavy_mb() #8
  %97 = load ptr, ptr %31, align 4
  %98 = getelementptr i8, ptr %97, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 0) #8, !srcloc !10
  call void @mutex_unlock(ptr noundef %30) #8
  %99 = icmp eq i32 %95, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %94, %48, %38
  %101 = phi i32 [ %95, %94 ], [ %49, %48 ], [ %46, %38 ]
  call void @mutex_unlock(ptr noundef %25) #8
  br label %108

102:                                              ; preds = %94
  %103 = load i32, ptr %37, align 8
  %104 = add i32 %103, %40
  %105 = sub i32 %39, %103
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %38

107:                                              ; preds = %102, %20
  call void @mutex_unlock(ptr noundef %25) #8
  br label %108

108:                                              ; preds = %107, %100, %16, %2
  %109 = phi i32 [ -22, %16 ], [ %101, %100 ], [ 0, %107 ], [ -19, %2 ]
  ret i32 %109
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spear_mtd_read(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr noundef %4) #2 {
  %6 = getelementptr i8, ptr %0, i32 -32
  %7 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 54
  %8 = load ptr, ptr %7, align 8
  %9 = icmp ne ptr %6, null
  %10 = icmp ne ptr %8, null
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %12, label %45

12:                                               ; preds = %5
  %13 = load i32, ptr %6, align 8
  %14 = getelementptr inbounds %struct.spear_smi, ptr %8, i32 0, i32 7
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, -1
  %17 = icmp ugt i32 %13, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.spear_smi, ptr %8, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.platform_device, ptr %20, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.53) #9
  br label %45

22:                                               ; preds = %12
  %23 = getelementptr i8, ptr %0, i32 820
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %0, i32 -24
  tail call void @mutex_lock(ptr noundef %25) #8
  %26 = load i32, ptr %6, align 8
  %27 = tail call fastcc i32 @spear_smi_wait_till_ready(ptr noundef nonnull %8, i32 noundef %26, i32 noundef 300)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  tail call void @mutex_unlock(ptr noundef %25) #8
  br label %45

30:                                               ; preds = %22
  %31 = trunc i64 %1 to i32
  %32 = getelementptr i8, ptr %24, i32 %31
  %33 = getelementptr inbounds %struct.spear_smi, ptr %8, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %33) #8
  %34 = getelementptr inbounds %struct.spear_smi, ptr %8, i32 0, i32 4
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !29
  %37 = and i32 %36, -805306369
  %38 = getelementptr i8, ptr %0, i32 825
  %39 = load i8, ptr %38, align 1
  %40 = icmp eq i8 %39, 0
  %41 = or i32 %37, 32768
  %42 = select i1 %40, i32 %37, i32 %41
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !30
  tail call void @arm_heavy_mb() #8
  %43 = load ptr, ptr %34, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %42) #8, !srcloc !10
  tail call void @mmiocpy(ptr noundef %4, ptr noundef %32, i32 noundef %2) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !31
  tail call void @arm_heavy_mb() #8
  %44 = load ptr, ptr %34, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %36) #8, !srcloc !10
  tail call void @mutex_unlock(ptr noundef %33) #8
  store i32 %2, ptr %3, align 4
  tail call void @mutex_unlock(ptr noundef %25) #8
  br label %45

45:                                               ; preds = %30, %29, %18, %5
  %46 = phi i32 [ -22, %18 ], [ %27, %29 ], [ 0, %30 ], [ -19, %5 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spear_mtd_write(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4) #2 {
  %6 = getelementptr i8, ptr %0, i32 -32
  %7 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 54
  %8 = load ptr, ptr %7, align 8
  %9 = icmp ne ptr %6, null
  %10 = icmp ne ptr %8, null
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %12, label %66

12:                                               ; preds = %5
  %13 = load i32, ptr %6, align 8
  %14 = getelementptr inbounds %struct.spear_smi, ptr %8, i32 0, i32 7
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, -1
  %17 = icmp ugt i32 %13, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.spear_smi, ptr %8, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.platform_device, ptr %20, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.53) #9
  br label %66

22:                                               ; preds = %12
  %23 = getelementptr i8, ptr %0, i32 820
  %24 = load ptr, ptr %23, align 4
  %25 = trunc i64 %1 to i32
  %26 = getelementptr i8, ptr %24, i32 %25
  %27 = getelementptr i8, ptr %0, i32 -24
  tail call void @mutex_lock(ptr noundef %27) #8
  %28 = getelementptr i8, ptr %0, i32 816
  %29 = load i32, ptr %28, align 8
  %30 = urem i32 %25, %29
  %31 = add i32 %30, %2
  %32 = icmp ugt i32 %31, %29
  br i1 %32, label %40, label %33

33:                                               ; preds = %22
  %34 = load i32, ptr %6, align 8
  %35 = tail call fastcc i32 @spear_smi_cpy_toio(ptr noundef nonnull %8, i32 noundef %34, ptr noundef %26, ptr noundef %4, i32 noundef %2)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %64

37:                                               ; preds = %33
  %38 = load i32, ptr %3, align 4
  %39 = add i32 %38, %2
  store i32 %39, ptr %3, align 4
  br label %64

40:                                               ; preds = %22
  %41 = sub i32 %29, %30
  %42 = load i32, ptr %6, align 8
  %43 = tail call fastcc i32 @spear_smi_cpy_toio(ptr noundef nonnull %8, i32 noundef %42, ptr noundef %26, ptr noundef %4, i32 noundef %41)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %40
  %46 = load i32, ptr %3, align 4
  %47 = add i32 %46, %41
  store i32 %47, ptr %3, align 4
  %48 = icmp ult i32 %41, %2
  br i1 %48, label %49, label %64

49:                                               ; preds = %59, %45
  %50 = phi i32 [ %62, %59 ], [ %41, %45 ]
  %51 = sub i32 %2, %50
  %52 = load i32, ptr %28, align 8
  %53 = tail call i32 @llvm.umin.i32(i32 %51, i32 %52)
  %54 = load i32, ptr %6, align 8
  %55 = getelementptr i8, ptr %26, i32 %50
  %56 = getelementptr i8, ptr %4, i32 %50
  %57 = tail call fastcc i32 @spear_smi_cpy_toio(ptr noundef nonnull %8, i32 noundef %54, ptr noundef %55, ptr noundef %56, i32 noundef %53)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %49
  %60 = load i32, ptr %3, align 4
  %61 = add i32 %60, %53
  store i32 %61, ptr %3, align 4
  %62 = add i32 %53, %50
  %63 = icmp ult i32 %62, %2
  br i1 %63, label %49, label %64

64:                                               ; preds = %59, %49, %45, %40, %37, %33
  %65 = phi i32 [ %35, %33 ], [ 0, %37 ], [ %43, %40 ], [ 0, %45 ], [ 0, %59 ], [ %57, %49 ]
  tail call void @mutex_unlock(ptr noundef %27) #8
  br label %66

66:                                               ; preds = %64, %18, %5
  %67 = phi i32 [ -22, %18 ], [ %65, %64 ], [ -19, %5 ]
  ret i32 %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @spear_smi_wait_till_ready(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = alloca %struct.wait_queue_entry, align 4
  %5 = load volatile i32, ptr @jiffies, align 64
  %6 = getelementptr inbounds %struct.spear_smi, ptr %0, i32 0, i32 3
  %7 = getelementptr inbounds %struct.spear_smi, ptr %0, i32 0, i32 1
  %8 = getelementptr inbounds %struct.spear_smi, ptr %0, i32 0, i32 4
  %9 = shl i32 %1, 12
  %10 = or i32 %9, 1280
  %11 = getelementptr inbounds %struct.spear_smi, ptr %0, i32 0, i32 6
  %12 = add i32 %5, %2
  br label %13

13:                                               ; preds = %70, %3
  call void @mutex_lock(ptr noundef %6) #8
  store i32 0, ptr %7, align 4
  %14 = load ptr, ptr %8, align 4
  %15 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #8, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !32
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !33
  call void @arm_heavy_mb() #8
  %16 = and i32 %15, -805306369
  %17 = load ptr, ptr %8, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %16) #8, !srcloc !10
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !34
  call void @arm_heavy_mb() #8
  %18 = load ptr, ptr %8, align 4
  %19 = getelementptr i8, ptr %18, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %10) #8, !srcloc !10
  %20 = load i32, ptr %7, align 4
  %21 = and i32 %20, 256
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %51

23:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false) #8, !annotation !8
  call void @init_wait_entry(ptr noundef nonnull %4, i32 noundef 0) #8
  %24 = call i32 @prepare_to_wait_event(ptr noundef %11, ptr noundef nonnull %4, i32 noundef 1) #8
  %25 = load i32, ptr %7, align 4
  %26 = and i32 %25, 256
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %32, %23
  %29 = phi i32 [ %41, %32 ], [ 10, %23 ]
  %30 = phi i32 [ %34, %32 ], [ %24, %23 ]
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %28
  %33 = call i32 @schedule_timeout(i32 noundef %29) #8
  %34 = call i32 @prepare_to_wait_event(ptr noundef %11, ptr noundef nonnull %4, i32 noundef 1) #8
  %35 = load i32, ptr %7, align 4
  %36 = and i32 %35, 256
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = icmp ne i32 %33, 0
  %40 = select i1 %38, i1 true, i1 %39
  %41 = select i1 %40, i32 %33, i32 1
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %37, i1 true, i1 %42
  br i1 %43, label %44, label %28

44:                                               ; preds = %32, %23
  %45 = phi i32 [ 10, %23 ], [ %41, %32 ]
  call void @finish_wait(ptr noundef %11, ptr noundef nonnull %4) #8
  br label %46

46:                                               ; preds = %44, %28
  %47 = phi i32 [ %45, %44 ], [ %30, %28 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #8
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i32, ptr %7, align 4
  br label %51

51:                                               ; preds = %49, %13
  %52 = phi i32 [ %50, %49 ], [ %20, %13 ]
  %53 = and i32 %52, 65535
  br label %57

54:                                               ; preds = %46
  %55 = icmp eq i32 %47, 0
  %56 = select i1 %55, i32 -110, i32 %47
  br label %57

57:                                               ; preds = %54, %51
  %58 = phi i32 [ %53, %51 ], [ %56, %54 ]
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !35
  call void @arm_heavy_mb() #8
  %59 = load ptr, ptr %8, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %15) #8, !srcloc !10
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !36
  call void @arm_heavy_mb() #8
  %60 = load ptr, ptr %8, align 4
  %61 = getelementptr i8, ptr %60, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 0) #8, !srcloc !10
  call void @mutex_unlock(ptr noundef %6) #8
  %62 = icmp slt i32 %58, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = icmp eq i32 %58, -110
  br i1 %64, label %70, label %78

65:                                               ; preds = %57
  %66 = and i32 %58, 1
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %78, label %68

68:                                               ; preds = %65
  %69 = call i32 @__cond_resched() #8
  br label %70

70:                                               ; preds = %68, %63
  %71 = load volatile i32, ptr @jiffies, align 64
  %72 = sub i32 %71, %12
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %13, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.spear_smi, ptr %0, i32 0, i32 5
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.platform_device, ptr %76, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.17) #9
  br label %78

78:                                               ; preds = %74, %65, %63
  %79 = phi i32 [ -16, %74 ], [ 0, %65 ], [ %58, %63 ]
  ret i32 %79
}

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
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @spear_smi_write_enable(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca %struct.wait_queue_entry, align 4
  %4 = getelementptr inbounds %struct.spear_smi, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %4) #8
  %5 = getelementptr inbounds %struct.spear_smi, ptr %0, i32 0, i32 1
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.spear_smi, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !37
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !38
  tail call void @arm_heavy_mb() #8
  %9 = and i32 %8, -268435457
  %10 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %9) #8, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !39
  tail call void @arm_heavy_mb() #8
  %11 = shl i32 %1, 12
  %12 = or i32 %11, 2304
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr i8, ptr %13, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #8, !srcloc !10
  %15 = load i32, ptr %5, align 4
  %16 = and i32 %15, 256
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %44

18:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false), !annotation !8
  call void @init_wait_entry(ptr noundef nonnull %3, i32 noundef 0) #8
  %19 = getelementptr inbounds %struct.spear_smi, ptr %0, i32 0, i32 6
  %20 = call i32 @prepare_to_wait_event(ptr noundef %19, ptr noundef nonnull %3, i32 noundef 1) #8
  %21 = load i32, ptr %5, align 4
  %22 = and i32 %21, 256
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %28, %18
  %25 = phi i32 [ %37, %28 ], [ 10, %18 ]
  %26 = phi i32 [ %30, %28 ], [ %20, %18 ]
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = call i32 @schedule_timeout(i32 noundef %25) #8
  %30 = call i32 @prepare_to_wait_event(ptr noundef %19, ptr noundef nonnull %3, i32 noundef 1) #8
  %31 = load i32, ptr %5, align 4
  %32 = and i32 %31, 256
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = icmp ne i32 %29, 0
  %36 = select i1 %34, i1 true, i1 %35
  %37 = select i1 %36, i32 %29, i32 1
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %33, i1 true, i1 %38
  br i1 %39, label %40, label %24

40:                                               ; preds = %28, %18
  %41 = phi i32 [ 10, %18 ], [ %37, %28 ]
  call void @finish_wait(ptr noundef %19, ptr noundef nonnull %3) #8
  br label %42

42:                                               ; preds = %40, %24
  %43 = phi i32 [ %41, %40 ], [ %26, %24 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #8
  br label %44

44:                                               ; preds = %42, %2
  %45 = phi i32 [ 10, %2 ], [ %43, %42 ]
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !40
  call void @arm_heavy_mb() #8
  %46 = load ptr, ptr %6, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %8) #8, !srcloc !10
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !41
  call void @arm_heavy_mb() #8
  %47 = load ptr, ptr %6, align 4
  %48 = getelementptr i8, ptr %47, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 0) #8, !srcloc !10
  %49 = icmp eq i32 %45, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %44
  %51 = icmp sgt i32 %45, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %50
  %53 = load i32, ptr %5, align 4
  %54 = add i32 %1, 12
  %55 = shl nuw i32 1, %54
  %56 = and i32 %53, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %52, %44
  %59 = phi ptr [ @.str.55, %44 ], [ @.str.56, %52 ]
  %60 = getelementptr inbounds %struct.spear_smi, ptr %0, i32 0, i32 5
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.platform_device, ptr %61, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull %59) #9
  br label %63

63:                                               ; preds = %58, %52, %50
  %64 = phi i32 [ %45, %50 ], [ 0, %52 ], [ -5, %58 ]
  call void @mutex_unlock(ptr noundef %4) #8
  ret i32 %64
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @spear_smi_cpy_toio(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #7 {
  %6 = tail call fastcc i32 @spear_smi_wait_till_ready(ptr noundef %0, i32 noundef %1, i32 noundef 300)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %37

8:                                                ; preds = %5
  %9 = tail call fastcc i32 @spear_smi_write_enable(ptr noundef %0, i32 noundef %1)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %37

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.spear_smi, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %12) #8
  %13 = getelementptr inbounds %struct.spear_smi, ptr %0, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !42
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !43
  tail call void @arm_heavy_mb() #8
  %16 = and i32 %15, -805306369
  %17 = or i32 %16, 536870912
  %18 = load ptr, ptr %13, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %17) #8, !srcloc !10
  %19 = ptrtoint ptr %2 to i32
  %20 = or i32 %19, %4
  %21 = and i32 %20, 3
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %11
  tail call void @mmiocpy(ptr noundef %2, ptr noundef %3, i32 noundef %4) #8
  br label %35

24:                                               ; preds = %11
  %25 = icmp eq i32 %4, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %26, %24
  %27 = phi ptr [ %32, %26 ], [ %3, %24 ]
  %28 = phi i32 [ %30, %26 ], [ %4, %24 ]
  %29 = phi ptr [ %33, %26 ], [ %2, %24 ]
  %30 = add i32 %28, -1
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !44
  tail call void @arm_heavy_mb() #8
  %31 = load i8, ptr %27, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %29, i8 %31) #8, !srcloc !45
  %32 = getelementptr i8, ptr %27, i32 1
  %33 = getelementptr i8, ptr %29, i32 1
  %34 = icmp eq i32 %30, 0
  br i1 %34, label %35, label %26

35:                                               ; preds = %26, %24, %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !46
  tail call void @arm_heavy_mb() #8
  %36 = load ptr, ptr %13, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %15) #8, !srcloc !10
  tail call void @mutex_unlock(ptr noundef %12) #8
  br label %37

37:                                               ; preds = %35, %8, %5
  %38 = phi i32 [ 0, %35 ], [ %6, %5 ], [ %9, %8 ]
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spear_smi_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  tail call void @clk_disable(ptr noundef nonnull %6) #8
  tail call void @clk_unprepare(ptr noundef nonnull %6) #8
  br label %9

9:                                                ; preds = %8, %5, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spear_smi_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %30, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %30, label %8

8:                                                ; preds = %5
  %9 = tail call i32 @clk_prepare(ptr noundef nonnull %6) #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %8
  %12 = tail call i32 @clk_enable(ptr noundef nonnull %6) #8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call void @clk_unprepare(ptr noundef nonnull %6) #8
  br label %30

15:                                               ; preds = %11
  %16 = load ptr, ptr %3, align 4
  %17 = tail call i32 @clk_get_rate(ptr noundef %16) #8
  %18 = getelementptr inbounds %struct.spear_smi, ptr %3, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %17, -1
  %21 = add i32 %20, %19
  %22 = udiv i32 %21, %19
  %23 = shl i32 %22, 8
  %24 = or i32 %23, 65647
  %25 = getelementptr inbounds %struct.spear_smi, ptr %3, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %25) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !9
  tail call void @arm_heavy_mb() #8
  %26 = getelementptr inbounds %struct.spear_smi, ptr %3, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 0) #8, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %29 = load ptr, ptr %26, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %24) #8, !srcloc !10
  tail call void @mutex_unlock(ptr noundef %25) #8
  br label %30

30:                                               ; preds = %15, %14, %8, %5, %1
  %31 = phi i32 [ 0, %15 ], [ %12, %14 ], [ %9, %8 ], [ -1, %1 ], [ -1, %5 ]
  ret i32 %31
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!9 = !{i64 2151818551}
!10 = !{i64 3761758}
!11 = !{i64 2151818867}
!12 = !{i64 3762176}
!13 = !{i64 2151834016}
!14 = !{i64 2151834232}
!15 = !{i64 2151834586}
!16 = !{i64 2151834937}
!17 = !{i64 2151837328}
!18 = !{i64 2151837669}
!19 = !{i64 2151837887}
!20 = !{i64 2151817821}
!21 = !{!"branch_weights", i32 1, i32 2000}
!22 = !{i64 2151818044}
!23 = !{i64 2151824890}
!24 = !{i64 2151825142}
!25 = !{i64 2151825542}
!26 = !{i64 2151825949}
!27 = !{i64 2151828833}
!28 = !{i64 2151829161}
!29 = !{i64 2151830683}
!30 = !{i64 2151830909}
!31 = !{i64 2151831275}
!32 = !{i64 2151812919}
!33 = !{i64 2151813171}
!34 = !{i64 2151813630}
!35 = !{i64 2151815946}
!36 = !{i64 2151816274}
!37 = !{i64 2151819736}
!38 = !{i64 2151819959}
!39 = !{i64 2151820384}
!40 = !{i64 2151822696}
!41 = !{i64 2151823024}
!42 = !{i64 2151832166}
!43 = !{i64 2151832418}
!44 = !{i64 2151831589}
!45 = !{i64 3761561}
!46 = !{i64 2151832995}
