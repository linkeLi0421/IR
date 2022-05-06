; ModuleID = '/llk/IR/drivers/ata/ahci_tegra.c_pt.bc'
source_filename = "../drivers/ata/ahci_tegra.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.ata_port_info = type { i32, i32, i32, i32, i32, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.ata_port_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_ahci_soc = type { ptr, i32, i8, i8, ptr, ptr }
%struct.tegra_ahci_ops = type { ptr }
%struct.tegra_ahci_regs = type { i32, i32 }
%struct.sata_pad_calibration = type { i8, i8, i8, i8 }
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
%struct.ahci_host_priv = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [5 x ptr], ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr }
%struct.tegra_ahci_priv = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ata_host = type { %struct.spinlock, ptr, ptr, i32, i32, ptr, ptr, i32, %struct.kref, %struct.mutex, ptr, ptr, [0 x ptr] }

@__initcall__kmod_ahci_tegra__290_619_tegra_ahci_driver_init6 = internal global ptr @tegra_ahci_driver_init, section ".initcall6.init", align 4
@tegra_ahci_driver = internal global %struct.platform_driver { ptr @tegra_ahci_probe, ptr @ata_platform_remove_one, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_ahci_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_tegra_ahci_driver_exit = internal global ptr @tegra_ahci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [58 x i8] c"ahci_tegra.author=Mikko Perttunen <mperttunen@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [46 x i8] c"ahci_tegra.description=Tegra AHCI SATA driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [39 x i8] c"ahci_tegra.file=drivers/ata/ahci_tegra\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [26 x i8] c"ahci_tegra.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [11 x i8] c"tegra-ahci\00", align 1
@tegra_ahci_of_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-ahci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra124_ahci_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-ahci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra210_ahci_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra186-ahci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra186_ahci_soc }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"sata\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed to get sata reset\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"sata-oob\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Failed to get sata-oob reset\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"sata-cold\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Failed to get sata-cold reset\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Failed to get sata clock\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Failed to get regulators\0A\00", align 1
@ahci_tegra_port_info = internal constant %struct.ata_port_info { i32 8781954, i32 0, i32 31, i32 0, i32 127, ptr @ahci_tegra_port_ops, ptr null }, align 4
@ahci_platform_sht = internal global %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_change_queue_depth, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str, ptr null, i32 32, i32 -1, i16 168, i16 0, i32 0, i32 0, i32 -1, i32 0, i16 0, i8 0, i32 1, i8 8, i32 0, ptr @ahci_shost_groups, ptr @ahci_sdev_groups, i64 0, ptr null, i32 0 }, align 8
@.str.9 = private unnamed_addr constant [40 x i8] c"failed to power on AHCI controller: %d\0A\00", align 1
@ahci_tegra_port_ops = internal global %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_ahci_host_stop, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahci_ops }, align 4
@ahci_ops = external dso_local global %struct.ata_port_operations, align 4
@ahci_shost_groups = external dso_local global [0 x ptr], align 4
@ahci_sdev_groups = external dso_local global [0 x ptr], align 4
@tegra124_ahci_soc = internal constant %struct.tegra_ahci_soc { ptr @tegra124_supply_names, i32 5, i8 0, i8 1, ptr @tegra124_ahci_ops, ptr @tegra124_ahci_regs }, align 4
@tegra210_ahci_soc = internal constant %struct.tegra_ahci_soc { ptr null, i32 0, i8 0, i8 1, ptr null, ptr @tegra124_ahci_regs }, align 4
@tegra186_ahci_soc = internal constant %struct.tegra_ahci_soc { ptr null, i32 0, i8 0, i8 0, ptr null, ptr @tegra186_ahci_regs }, align 4
@tegra124_supply_names = internal constant [5 x ptr] [ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], align 4
@tegra124_ahci_ops = internal constant %struct.tegra_ahci_ops { ptr @tegra124_ahci_init }, align 4
@tegra124_ahci_regs = internal constant %struct.tegra_ahci_regs { i32 1879048192, i32 1879048192 }, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"avdd\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"hvdd\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"vddio\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"target-5v\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"target-12v\00", align 1
@tegra124_pad_calibration = internal unnamed_addr constant [4 x %struct.sata_pad_calibration] [%struct.sata_pad_calibration { i8 24, i8 4, i8 24, i8 10 }, %struct.sata_pad_calibration { i8 14, i8 4, i8 20, i8 10 }, %struct.sata_pad_calibration { i8 14, i8 7, i8 26, i8 14 }, %struct.sata_pad_calibration { i8 20, i8 14, i8 26, i8 14 }], align 1
@tegra186_ahci_regs = internal constant %struct.tegra_ahci_regs { i32 16711680, i32 458752 }, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_tegra_ahci_driver_exit, ptr @__initcall__kmod_ahci_tegra__290_619_tegra_ahci_driver_init6, ptr @tegra_ahci_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tegra_ahci_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_ahci_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @tegra_ahci_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra_ahci_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_ahci_probe(ptr noundef %0) #2 {
  %2 = tail call ptr @ahci_platform_get_resources(ptr noundef %0, i32 noundef 0) #6
  %3 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = ptrtoint ptr %2 to i32
  br label %285

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef 36, i32 noundef 3520) #6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %285, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ahci_host_priv, ptr %2, i32 0, i32 23
  store ptr %8, ptr %11, align 4
  store ptr %0, ptr %8, align 4
  %12 = tail call ptr @of_device_get_match_data(ptr noundef %7) #6
  %13 = getelementptr inbounds %struct.tegra_ahci_priv, ptr %8, i32 0, i32 8
  store ptr %12, ptr %13, align 4
  %14 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 1) #6
  %15 = tail call ptr @devm_ioremap_resource(ptr noundef %7, ptr noundef %14) #6
  %16 = getelementptr inbounds %struct.tegra_ahci_priv, ptr %8, i32 0, i32 1
  store ptr %15, ptr %16, align 4
  %17 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  %19 = ptrtoint ptr %15 to i32
  br label %285

20:                                               ; preds = %10
  %21 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 2) #6
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  %24 = tail call ptr @devm_ioremap_resource(ptr noundef %7, ptr noundef nonnull %21) #6
  %25 = getelementptr inbounds %struct.tegra_ahci_priv, ptr %8, i32 0, i32 2
  store ptr %24, ptr %25, align 4
  %26 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = ptrtoint ptr %24 to i32
  br label %285

29:                                               ; preds = %23, %20
  %30 = tail call ptr @__devm_reset_control_get(ptr noundef %7, ptr noundef nonnull @.str.1, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %31 = getelementptr inbounds %struct.tegra_ahci_priv, ptr %8, i32 0, i32 3
  store ptr %30, ptr %31, align 4
  %32 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.2) #7
  %34 = load ptr, ptr %31, align 4
  %35 = ptrtoint ptr %34 to i32
  br label %285

36:                                               ; preds = %29
  %37 = load ptr, ptr %13, align 4
  %38 = getelementptr inbounds %struct.tegra_ahci_soc, ptr %37, i32 0, i32 3
  %39 = load i8, ptr %38, align 1, !range !8
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %36
  %42 = tail call ptr @__devm_reset_control_get(ptr noundef %7, ptr noundef nonnull @.str.3, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %43 = getelementptr inbounds %struct.tegra_ahci_priv, ptr %8, i32 0, i32 4
  store ptr %42, ptr %43, align 4
  %44 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.4) #7
  %46 = load ptr, ptr %43, align 4
  %47 = ptrtoint ptr %46 to i32
  br label %285

48:                                               ; preds = %41, %36
  %49 = tail call ptr @__devm_reset_control_get(ptr noundef %7, ptr noundef nonnull @.str.5, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %50 = getelementptr inbounds %struct.tegra_ahci_priv, ptr %8, i32 0, i32 5
  store ptr %49, ptr %50, align 4
  %51 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.6) #7
  %53 = load ptr, ptr %50, align 4
  %54 = ptrtoint ptr %53 to i32
  br label %285

55:                                               ; preds = %48
  %56 = tail call ptr @devm_clk_get(ptr noundef %7, ptr noundef nonnull @.str.1) #6
  %57 = getelementptr inbounds %struct.tegra_ahci_priv, ptr %8, i32 0, i32 6
  store ptr %56, ptr %57, align 4
  %58 = icmp ugt ptr %56, inttoptr (i32 -4096 to ptr)
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.7) #7
  %60 = load ptr, ptr %57, align 4
  %61 = ptrtoint ptr %60 to i32
  br label %285

62:                                               ; preds = %55
  %63 = load ptr, ptr %13, align 4
  %64 = getelementptr inbounds %struct.tegra_ahci_soc, ptr %63, i32 0, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %65, i32 12) #6
  %67 = extractvalue { i32, i1 } %66, 1
  br i1 %67, label %68, label %70, !prof !9

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.tegra_ahci_priv, ptr %8, i32 0, i32 7
  store ptr null, ptr %69, align 4
  br label %285

70:                                               ; preds = %62
  %71 = extractvalue { i32, i1 } %66, 0
  %72 = tail call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef %71, i32 noundef 3520) #6
  %73 = getelementptr inbounds %struct.tegra_ahci_priv, ptr %8, i32 0, i32 7
  store ptr %72, ptr %73, align 4
  %74 = icmp eq ptr %72, null
  br i1 %74, label %285, label %75

75:                                               ; preds = %70
  %76 = load ptr, ptr %13, align 4
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.tegra_ahci_soc, ptr %76, i32 0, i32 1
  %79 = load i32, ptr %78, align 4
  tail call void @regulator_bulk_set_supply_names(ptr noundef nonnull %72, ptr noundef %77, i32 noundef %79) #6
  %80 = load ptr, ptr %13, align 4
  %81 = getelementptr inbounds %struct.tegra_ahci_soc, ptr %80, i32 0, i32 1
  %82 = load i32, ptr %81, align 4
  %83 = load ptr, ptr %73, align 4
  %84 = tail call i32 @devm_regulator_bulk_get(ptr noundef %7, i32 noundef %82, ptr noundef %83) #6
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %75
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.8) #7
  br label %285

87:                                               ; preds = %75
  %88 = load ptr, ptr %11, align 4
  %89 = getelementptr inbounds %struct.tegra_ahci_priv, ptr %88, i32 0, i32 8
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.tegra_ahci_soc, ptr %90, i32 0, i32 1
  %92 = load i32, ptr %91, align 4
  %93 = getelementptr inbounds %struct.tegra_ahci_priv, ptr %88, i32 0, i32 7
  %94 = load ptr, ptr %93, align 4
  %95 = tail call i32 @regulator_bulk_enable(i32 noundef %92, ptr noundef %94) #6
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %271

97:                                               ; preds = %87
  %98 = load ptr, ptr %88, align 4
  %99 = getelementptr inbounds %struct.platform_device, ptr %98, i32 0, i32 3, i32 12
  %100 = load ptr, ptr %99, align 8
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %109

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.tegra_ahci_priv, ptr %88, i32 0, i32 6
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.tegra_ahci_priv, ptr %88, i32 0, i32 3
  %106 = load ptr, ptr %105, align 4
  %107 = tail call i32 @tegra_powergate_sequence_power_up(i32 noundef 8, ptr noundef %104, ptr noundef %106) #6
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %127

109:                                              ; preds = %102, %97
  %110 = getelementptr inbounds %struct.tegra_ahci_priv, ptr %88, i32 0, i32 4
  %111 = load ptr, ptr %110, align 4
  %112 = tail call i32 @reset_control_assert(ptr noundef %111) #6
  %113 = getelementptr inbounds %struct.tegra_ahci_priv, ptr %88, i32 0, i32 5
  %114 = load ptr, ptr %113, align 4
  %115 = tail call i32 @reset_control_assert(ptr noundef %114) #6
  %116 = tail call i32 @ahci_platform_enable_resources(ptr noundef %2) #6
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %134, label %118

118:                                              ; preds = %109
  %119 = getelementptr inbounds %struct.tegra_ahci_priv, ptr %88, i32 0, i32 6
  %120 = load ptr, ptr %119, align 4
  tail call void @clk_disable(ptr noundef %120) #6
  tail call void @clk_unprepare(ptr noundef %120) #6
  %121 = load ptr, ptr %88, align 4
  %122 = getelementptr inbounds %struct.platform_device, ptr %121, i32 0, i32 3, i32 12
  %123 = load ptr, ptr %122, align 8
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %127

125:                                              ; preds = %118
  %126 = tail call i32 @tegra_powergate_power_off(i32 noundef 8) #6
  br label %127

127:                                              ; preds = %125, %118, %102
  %128 = phi i32 [ %116, %118 ], [ %116, %125 ], [ %107, %102 ]
  %129 = load ptr, ptr %89, align 4
  %130 = getelementptr inbounds %struct.tegra_ahci_soc, ptr %129, i32 0, i32 1
  %131 = load i32, ptr %130, align 4
  %132 = load ptr, ptr %93, align 4
  %133 = tail call i32 @regulator_bulk_disable(i32 noundef %131, ptr noundef %132) #6
  br label %271

134:                                              ; preds = %109
  %135 = load ptr, ptr %113, align 4
  %136 = tail call i32 @reset_control_deassert(ptr noundef %135) #6
  %137 = load ptr, ptr %110, align 4
  %138 = tail call i32 @reset_control_deassert(ptr noundef %137) #6
  %139 = getelementptr inbounds %struct.tegra_ahci_priv, ptr %88, i32 0, i32 1
  %140 = load ptr, ptr %139, align 4
  %141 = getelementptr i8, ptr %140, i32 148
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %141) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %143 = and i32 %142, 14
  %144 = or i32 %143, 4194817
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  %145 = load ptr, ptr %139, align 4
  %146 = getelementptr i8, ptr %145, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %146, i32 %144) #6, !srcloc !13
  %147 = load ptr, ptr %139, align 4
  %148 = getelementptr i8, ptr %147, i32 384
  %149 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %148) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !14
  %150 = or i32 %149, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !15
  tail call void @arm_heavy_mb() #6
  %151 = load ptr, ptr %139, align 4
  %152 = getelementptr i8, ptr %151, i32 384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %152, i32 %150) #6, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !16
  tail call void @arm_heavy_mb() #6
  %153 = load ptr, ptr %139, align 4
  %154 = getelementptr i8, ptr %153, i32 5864
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %154, i32 1426128896) #6, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !17
  tail call void @arm_heavy_mb() #6
  %155 = load ptr, ptr %139, align 4
  %156 = getelementptr i8, ptr %155, i32 5868
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %156, i32 1426128896) #6, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !18
  tail call void @arm_heavy_mb() #6
  %157 = load ptr, ptr %139, align 4
  %158 = getelementptr i8, ptr %157, i32 5876
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %158, i32 1) #6, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !19
  tail call void @arm_heavy_mb() #6
  %159 = load ptr, ptr %139, align 4
  %160 = getelementptr i8, ptr %159, i32 5880
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %160, i32 1) #6, !srcloc !13
  %161 = load ptr, ptr %139, align 4
  %162 = getelementptr i8, ptr %161, i32 4384
  %163 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %162) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !20
  %164 = and i32 %163, -16779265
  %165 = or i32 %164, 16777216
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !21
  tail call void @arm_heavy_mb() #6
  %166 = load ptr, ptr %139, align 4
  %167 = getelementptr i8, ptr %166, i32 4384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %167, i32 %165) #6, !srcloc !13
  %168 = load ptr, ptr %139, align 4
  %169 = getelementptr i8, ptr %168, i32 4372
  %170 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %169) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !22
  %171 = load ptr, ptr %89, align 4
  %172 = getelementptr inbounds %struct.tegra_ahci_soc, ptr %171, i32 0, i32 5
  %173 = load ptr, ptr %172, align 4
  %174 = load i32, ptr %173, align 4
  %175 = and i32 %174, -251658241
  %176 = xor i32 %175, -251658241
  %177 = and i32 %176, %170
  %178 = getelementptr inbounds %struct.tegra_ahci_regs, ptr %173, i32 0, i32 1
  %179 = load i32, ptr %178, align 4
  %180 = or i32 %179, %177
  %181 = or i32 %180, 218103808
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !23
  tail call void @arm_heavy_mb() #6
  %182 = load ptr, ptr %139, align 4
  %183 = getelementptr i8, ptr %182, i32 4372
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %183, i32 %181) #6, !srcloc !13
  %184 = load ptr, ptr %139, align 4
  %185 = getelementptr i8, ptr %184, i32 4404
  %186 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %185) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !24
  %187 = and i32 %186, -133955585
  %188 = or i32 %187, 3145728
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !25
  tail call void @arm_heavy_mb() #6
  %189 = load ptr, ptr %139, align 4
  %190 = getelementptr i8, ptr %189, i32 4404
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %190, i32 %188) #6, !srcloc !13
  %191 = load ptr, ptr %89, align 4
  %192 = getelementptr inbounds %struct.tegra_ahci_soc, ptr %191, i32 0, i32 4
  %193 = load ptr, ptr %192, align 4
  %194 = icmp eq ptr %193, null
  br i1 %194, label %200, label %195

195:                                              ; preds = %134
  %196 = load ptr, ptr %193, align 4
  %197 = icmp eq ptr %196, null
  br i1 %197, label %200, label %198

198:                                              ; preds = %195
  %199 = tail call i32 %196(ptr noundef %2) #6
  br label %200

200:                                              ; preds = %198, %195, %134
  %201 = load ptr, ptr %139, align 4
  %202 = getelementptr i8, ptr %201, i32 4100
  %203 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %202) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !26
  %204 = or i32 %203, 263
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !27
  tail call void @arm_heavy_mb() #6
  %205 = load ptr, ptr %139, align 4
  %206 = getelementptr i8, ptr %205, i32 4100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %206, i32 %204) #6, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !28
  tail call void @arm_heavy_mb() #6
  %207 = load ptr, ptr %139, align 4
  %208 = getelementptr i8, ptr %207, i32 4132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %208, i32 1073872896) #6, !srcloc !13
  %209 = load ptr, ptr %139, align 4
  %210 = getelementptr i8, ptr %209, i32 5452
  %211 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %210) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !29
  %212 = or i32 %211, 4096
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !30
  tail call void @arm_heavy_mb() #6
  %213 = load ptr, ptr %139, align 4
  %214 = getelementptr i8, ptr %213, i32 5452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %214, i32 %212) #6, !srcloc !13
  %215 = load ptr, ptr %139, align 4
  %216 = getelementptr i8, ptr %215, i32 5284
  %217 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %216) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !31
  %218 = and i32 %217, 255
  %219 = or i32 %218, 17170688
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !32
  tail call void @arm_heavy_mb() #6
  %220 = load ptr, ptr %139, align 4
  %221 = getelementptr i8, ptr %220, i32 5284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %221, i32 %219) #6, !srcloc !13
  %222 = load ptr, ptr %139, align 4
  %223 = getelementptr i8, ptr %222, i32 5452
  %224 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %223) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !33
  %225 = and i32 %224, -4097
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %226 = load ptr, ptr %139, align 4
  %227 = getelementptr i8, ptr %226, i32 5452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %227, i32 %225) #6, !srcloc !13
  %228 = load ptr, ptr %139, align 4
  %229 = getelementptr i8, ptr %228, i32 4864
  %230 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %229) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !35
  %231 = or i32 %230, 67264512
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !36
  tail call void @arm_heavy_mb() #6
  %232 = load ptr, ptr %139, align 4
  %233 = getelementptr i8, ptr %232, i32 4864
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %233, i32 %231) #6, !srcloc !13
  %234 = load ptr, ptr %139, align 4
  %235 = getelementptr i8, ptr %234, i32 4244
  %236 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %235) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !37
  %237 = and i32 %236, -8189
  %238 = or i32 %237, 168
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %239 = load ptr, ptr %139, align 4
  %240 = getelementptr i8, ptr %239, i32 4244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %240, i32 %238) #6, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %241 = load ptr, ptr %139, align 4
  %242 = getelementptr i8, ptr %241, i32 4248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %242, i32 4194368) #6, !srcloc !13
  %243 = load ptr, ptr %139, align 4
  %244 = getelementptr i8, ptr %243, i32 4396
  %245 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %244) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !40
  %246 = or i32 %245, 12582912
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !41
  tail call void @arm_heavy_mb() #6
  %247 = load ptr, ptr %139, align 4
  %248 = getelementptr i8, ptr %247, i32 4396
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %248, i32 %246) #6, !srcloc !13
  %249 = load ptr, ptr %139, align 4
  %250 = getelementptr i8, ptr %249, i32 384
  %251 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %250) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !42
  %252 = and i32 %251, 2147483647
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !43
  tail call void @arm_heavy_mb() #6
  %253 = load ptr, ptr %139, align 4
  %254 = getelementptr i8, ptr %253, i32 384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %254, i32 %252) #6, !srcloc !13
  %255 = load ptr, ptr %11, align 4
  %256 = getelementptr inbounds %struct.tegra_ahci_priv, ptr %255, i32 0, i32 2
  %257 = load ptr, ptr %256, align 4
  %258 = icmp eq ptr %257, null
  br i1 %258, label %275, label %259

259:                                              ; preds = %200
  %260 = getelementptr inbounds %struct.tegra_ahci_priv, ptr %255, i32 0, i32 8
  %261 = load ptr, ptr %260, align 4
  %262 = getelementptr inbounds %struct.tegra_ahci_soc, ptr %261, i32 0, i32 2
  %263 = load i8, ptr %262, align 4, !range !8
  %264 = icmp eq i8 %263, 0
  br i1 %264, label %265, label %275

265:                                              ; preds = %259
  %266 = getelementptr i8, ptr %257, i32 8
  %267 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %266) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !44
  %268 = and i32 %267, -8193
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %269 = load ptr, ptr %256, align 4
  %270 = getelementptr i8, ptr %269, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %270, i32 %268) #6, !srcloc !13
  br label %275

271:                                              ; preds = %127, %87
  %272 = phi i32 [ %95, %87 ], [ %128, %127 ]
  %273 = load ptr, ptr %88, align 4
  %274 = getelementptr inbounds %struct.platform_device, ptr %273, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %274, ptr noundef nonnull @.str.9, i32 noundef %272) #7
  br label %285

275:                                              ; preds = %265, %259, %200
  %276 = load ptr, ptr %139, align 4
  %277 = getelementptr i8, ptr %276, i32 392
  %278 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %277) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !46
  %279 = or i32 %278, 65536
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !47
  tail call void @arm_heavy_mb() #6
  %280 = load ptr, ptr %139, align 4
  %281 = getelementptr i8, ptr %280, i32 392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %281, i32 %279) #6, !srcloc !13
  %282 = tail call i32 @ahci_platform_init_host(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @ahci_tegra_port_info, ptr noundef nonnull @ahci_platform_sht) #6
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %285, label %284

284:                                              ; preds = %275
  tail call fastcc void @tegra_ahci_controller_deinit(ptr noundef %2)
  br label %285

285:                                              ; preds = %284, %275, %271, %86, %70, %68, %59, %52, %45, %33, %27, %18, %6, %4
  %286 = phi i32 [ %5, %4 ], [ %19, %18 ], [ %28, %27 ], [ %35, %33 ], [ %47, %45 ], [ %54, %52 ], [ %61, %59 ], [ %84, %86 ], [ %282, %284 ], [ -12, %6 ], [ -12, %70 ], [ %272, %271 ], [ 0, %275 ], [ -12, %68 ]
  ret i32 %286
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_platform_remove_one(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ahci_platform_get_resources(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regulator_bulk_set_supply_names(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_platform_init_host(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_ahci_controller_deinit(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.ahci_host_priv, ptr %0, i32 0, i32 23
  %3 = load ptr, ptr %2, align 4
  tail call void @ahci_platform_disable_resources(ptr noundef %0) #6
  %4 = getelementptr inbounds %struct.tegra_ahci_priv, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @reset_control_assert(ptr noundef %5) #6
  %7 = getelementptr inbounds %struct.tegra_ahci_priv, ptr %3, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @reset_control_assert(ptr noundef %8) #6
  %10 = getelementptr inbounds %struct.tegra_ahci_priv, ptr %3, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @reset_control_assert(ptr noundef %11) #6
  %13 = getelementptr inbounds %struct.tegra_ahci_priv, ptr %3, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  tail call void @clk_disable(ptr noundef %14) #6
  tail call void @clk_unprepare(ptr noundef %14) #6
  %15 = load ptr, ptr %3, align 4
  %16 = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3, i32 12
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = tail call i32 @tegra_powergate_power_off(i32 noundef 8) #6
  br label %21

21:                                               ; preds = %19, %1
  %22 = getelementptr inbounds %struct.tegra_ahci_priv, ptr %3, i32 0, i32 8
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.tegra_ahci_soc, ptr %23, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.tegra_ahci_priv, ptr %3, i32 0, i32 7
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 @regulator_bulk_disable(i32 noundef %25, ptr noundef %27) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_powergate_sequence_power_up(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_platform_enable_resources(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_powergate_power_off(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_ahci_host_stop(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  tail call fastcc void @tegra_ahci_controller_deinit(ptr noundef %3)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_queuecmd(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_ioctl(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_slave_config(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_scsi_slave_destroy(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_change_queue_depth(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ata_scsi_dma_need_drain(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_std_bios_param(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_scsi_unlock_native_capacity(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahci_platform_disable_resources(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra124_ahci_init(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.ahci_host_priv, ptr %0, i32 0, i32 23
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !48
  %5 = call i32 @tegra_fuse_readl(i32 noundef 292, ptr noundef nonnull %2) #6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %51

7:                                                ; preds = %1
  %8 = load i32, ptr %2, align 4
  %9 = and i32 %8, 3
  %10 = getelementptr [4 x %struct.sata_pad_calibration], ptr @tegra124_pad_calibration, i32 0, i32 %9
  %11 = load i8, ptr %10, align 1
  %12 = getelementptr inbounds i8, ptr %10, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = getelementptr inbounds i8, ptr %10, i32 2
  %15 = load i8, ptr %14, align 1
  %16 = getelementptr inbounds i8, ptr %10, i32 3
  %17 = load i8, ptr %16, align 1
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !49
  call void @arm_heavy_mb() #6
  %18 = getelementptr inbounds %struct.tegra_ahci_priv, ptr %4, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 5760
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 1) #6, !srcloc !13
  %21 = load ptr, ptr %18, align 4
  %22 = getelementptr i8, ptr %21, i32 5776
  %23 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #6, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !50
  %24 = and i32 %23, -65536
  %25 = zext i8 %11 to i32
  %26 = or i32 %24, %25
  %27 = zext i8 %13 to i32
  %28 = shl nuw nsw i32 %27, 8
  %29 = or i32 %26, %28
  store i32 %29, ptr %2, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !51
  call void @arm_heavy_mb() #6
  %30 = load i32, ptr %2, align 4
  %31 = load ptr, ptr %18, align 4
  %32 = getelementptr i8, ptr %31, i32 5776
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #6, !srcloc !13
  %33 = load ptr, ptr %18, align 4
  %34 = getelementptr i8, ptr %33, i32 5780
  %35 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #6, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !52
  %36 = and i32 %35, -1044736
  %37 = zext i8 %15 to i32
  %38 = zext i8 %17 to i32
  %39 = shl nuw nsw i32 %38, 8
  %40 = or i32 %39, %37
  %41 = or i32 %40, %36
  store i32 %41, ptr %2, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !53
  call void @arm_heavy_mb() #6
  %42 = load i32, ptr %2, align 4
  %43 = load ptr, ptr %18, align 4
  %44 = getelementptr i8, ptr %43, i32 5780
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %42) #6, !srcloc !13
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !54
  call void @arm_heavy_mb() #6
  %45 = load ptr, ptr %18, align 4
  %46 = getelementptr i8, ptr %45, i32 5840
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 671088640) #6, !srcloc !13
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !55
  call void @arm_heavy_mb() #6
  %47 = load ptr, ptr %18, align 4
  %48 = getelementptr i8, ptr %47, i32 5788
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 35) #6, !srcloc !13
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !56
  call void @arm_heavy_mb() #6
  %49 = load ptr, ptr %18, align 4
  %50 = getelementptr i8, ptr %49, i32 5760
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 0) #6, !srcloc !13
  br label %51

51:                                               ; preds = %7, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_fuse_readl(i32 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
!8 = !{i8 0, i8 2}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 4771977}
!11 = !{i64 2155098110}
!12 = !{i64 2155098352}
!13 = !{i64 4771559}
!14 = !{i64 2155098848}
!15 = !{i64 2155099128}
!16 = !{i64 2155099489}
!17 = !{i64 2155099859}
!18 = !{i64 2155100222}
!19 = !{i64 2155100585}
!20 = !{i64 2155101125}
!21 = !{i64 2155101507}
!22 = !{i64 2155102047}
!23 = !{i64 2155102309}
!24 = !{i64 2155102849}
!25 = !{i64 2155103089}
!26 = !{i64 2155103625}
!27 = !{i64 2155104165}
!28 = !{i64 2155104532}
!29 = !{i64 2155105071}
!30 = !{i64 2155105369}
!31 = !{i64 2155105909}
!32 = !{i64 2155106177}
!33 = !{i64 2155106717}
!34 = !{i64 2155107015}
!35 = !{i64 2155107555}
!36 = !{i64 2155108105}
!37 = !{i64 2155108641}
!38 = !{i64 2155108878}
!39 = !{i64 2155109245}
!40 = !{i64 2155109784}
!41 = !{i64 2155110166}
!42 = !{i64 2155110672}
!43 = !{i64 2155110954}
!44 = !{i64 2155093467}
!45 = !{i64 2155093749}
!46 = !{i64 2155111451}
!47 = !{i64 2155111733}
!48 = !{!"auto-init"}
!49 = !{i64 2155094210}
!50 = !{i64 2155094798}
!51 = !{i64 2155095033}
!52 = !{i64 2155095573}
!53 = !{i64 2155095809}
!54 = !{i64 2155096194}
!55 = !{i64 2155096581}
!56 = !{i64 2155096940}
