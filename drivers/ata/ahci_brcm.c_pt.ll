; ModuleID = '/llk/IR/drivers/ata/ahci_brcm.c_pt.bc'
source_filename = "../drivers/ata/ahci_brcm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ata_port_info = type { i32, i32, i32, i32, i32, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.ata_port_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.brcm_ahci_priv = type { ptr, ptr, i32, i32, i32, ptr, ptr }
%struct.ahci_host_priv = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [5 x ptr], ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr }
%struct.ata_host = type { %struct.spinlock, ptr, ptr, i32, i32, ptr, ptr, i32, %struct.kref, %struct.mutex, ptr, ptr, [0 x ptr] }
%struct.ata_port = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.ata_ioports, i8, i8, ptr, %struct.delayed_work, ptr, i32, i32, i32, i32, i32, [33 x %struct.ata_queued_cmd], i32, i64, i32, i32, [24 x i8], %struct.ata_link, ptr, i32, ptr, ptr, %struct.ata_port_stats, ptr, ptr, %struct.device, %struct.mutex, %struct.delayed_work, %struct.work_struct, i32, %struct.list_head, %struct.wait_queue_head, i32, %struct.completion, %struct.pm_message, i32, %struct.timer_list, i32, i64, i32, ptr, [16 x i8], [512 x i8] }
%struct.ata_ioports = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ata_queued_cmd = type { ptr, ptr, ptr, ptr, %struct.ata_taskfile, [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.scatterlist, ptr, ptr, i32, i32, %struct.ata_taskfile, ptr, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ata_taskfile = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.ata_link = type { ptr, i32, %struct.device, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ata_eh_info, %struct.ata_eh_context, [60 x i8], [2 x %struct.ata_device], i32, [60 x i8] }
%struct.ata_eh_info = type { ptr, i32, i32, i32, [2 x i32], i32, i32, [80 x i8], i32 }
%struct.ata_eh_context = type { %struct.ata_eh_info, [2 x i32], [2 x [7 x i32]], [2 x i32], i32, i32, i32, [2 x i8], i32 }
%struct.ata_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.device, i64, i64, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, [18 x i8], %union.anon.85, [8 x i8], [20 x i8], [64 x i8], i32, i32, i32, i32, ptr, i32, %struct.ata_ering }
%union.anon.85 = type { [128 x i32] }
%struct.ata_ering = type { i32, [32 x %struct.ata_ering_entry] }
%struct.ata_ering_entry = type { i32, i32, i64 }
%struct.ata_port_stats = type { i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }

@__initcall__kmod_ahci_brcm__290_589_brcm_ahci_driver_init6 = internal global ptr @brcm_ahci_driver_init, section ".initcall6.init", align 4
@brcm_ahci_driver = internal global %struct.platform_driver { ptr @brcm_ahci_probe, ptr @brcm_ahci_remove, ptr @brcm_ahci_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ahci_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahci_brcm_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_brcm_ahci_driver_exit = internal global ptr @brcm_ahci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description291 = internal constant [60 x i8] c"ahci_brcm.description=Broadcom SATA3 AHCI Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author292 = internal constant [30 x i8] c"ahci_brcm.author=Brian Norris\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [37 x i8] c"ahci_brcm.file=drivers/ata/ahci_brcm\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [22 x i8] c"ahci_brcm.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias295 = internal constant [38 x i8] c"ahci_brcm.alias=platform:sata-brcmstb\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"brcm-ahci\00", align 1
@ahci_of_match = internal constant [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7425-ahci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7445-ahci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm63138-ahci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm-nsp-ahci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7216-ahci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@ahci_brcm_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @brcm_ahci_suspend, ptr @brcm_ahci_resume, ptr @brcm_ahci_suspend, ptr @brcm_ahci_resume, ptr @brcm_ahci_suspend, ptr @brcm_ahci_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"top-ctrl\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"rescal\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"ahci\00", align 1
@ahci_brcm_port_info = internal constant %struct.ata_port_info { i32 8781954, i32 2048, i32 31, i32 0, i32 127, ptr @ahci_brcm_platform_ops, ptr null }, align 4
@ahci_platform_sht = internal global %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_change_queue_depth, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str, ptr null, i32 32, i32 -1, i16 168, i16 0, i32 0, i32 0, i32 -1, i32 0, i16 0, i8 0, i32 1, i8 8, i32 0, ptr @ahci_shost_groups, ptr @ahci_sdev_groups, i64 0, ptr null, i32 0 }, align 8
@.str.4 = private unnamed_addr constant [32 x i8] c"Broadcom AHCI SATA3 registered\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"warning: more ports than PHYs (%#x)\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"no ports found\0A\00", align 1
@ahci_brcm_platform_ops = internal global %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @brcm_ahci_read_id, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @brcm_ahci_host_stop, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahci_ops }, align 4
@ahci_ops = external dso_local global %struct.ata_port_operations, align 4
@ahci_shost_groups = external dso_local global [0 x ptr], align 4
@ahci_sdev_groups = external dso_local global [0 x ptr], align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"failed to shutdown\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias295, ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_brcm_ahci_driver_exit, ptr @__initcall__kmod_ahci_brcm__290_589_brcm_ahci_driver_init6, ptr @brcm_ahci_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @brcm_ahci_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @brcm_ahci_driver, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @brcm_ahci_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @brcm_ahci_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcm_ahci_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 28, i32 noundef 3520) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %96, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = tail call ptr @of_match_node(ptr noundef nonnull @ahci_of_match, ptr noundef %7) #4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %96, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.of_device_id, ptr %8, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = getelementptr inbounds %struct.brcm_ahci_priv, ptr %3, i32 0, i32 4
  store i32 %13, ptr %14, align 4
  store ptr %2, ptr %3, align 4
  %15 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.1) #4
  %16 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %15) #4
  %17 = getelementptr inbounds %struct.brcm_ahci_priv, ptr %3, i32 0, i32 1
  store ptr %16, ptr %17, align 4
  %18 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %21

19:                                               ; preds = %10
  %20 = ptrtoint ptr %16 to i32
  br label %96

21:                                               ; preds = %10
  %22 = icmp eq ptr %12, inttoptr (i32 4 to ptr)
  br i1 %22, label %23, label %29

23:                                               ; preds = %21
  %24 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false) #4
  %25 = getelementptr inbounds %struct.brcm_ahci_priv, ptr %3, i32 0, i32 5
  store ptr %24, ptr %25, align 4
  %26 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = ptrtoint ptr %24 to i32
  br label %96

29:                                               ; preds = %23, %21
  %30 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #4
  %31 = getelementptr inbounds %struct.brcm_ahci_priv, ptr %3, i32 0, i32 6
  store ptr %30, ptr %31, align 4
  %32 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = ptrtoint ptr %30 to i32
  br label %96

35:                                               ; preds = %29
  %36 = tail call ptr @ahci_platform_get_resources(ptr noundef %0, i32 noundef 0) #4
  %37 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = ptrtoint ptr %36 to i32
  br label %96

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.ahci_host_priv, ptr %36, i32 0, i32 23
  store ptr %3, ptr %41, align 4
  store i32 20971520, ptr %36, align 4
  %42 = load i32, ptr %14, align 4
  switch i32 %42, label %49 [
    i32 1, label %43
    i32 3, label %44
  ]

43:                                               ; preds = %40
  store i32 21004288, ptr %36, align 4
  br label %44

44:                                               ; preds = %43, %40
  %45 = phi i32 [ 20971521, %40 ], [ 21004289, %43 ]
  store i32 %45, ptr %36, align 4
  %46 = getelementptr inbounds %struct.brcm_ahci_priv, ptr %3, i32 0, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = or i32 %47, 1
  store i32 %48, ptr %46, align 4
  br label %49

49:                                               ; preds = %44, %40
  %50 = getelementptr inbounds %struct.brcm_ahci_priv, ptr %3, i32 0, i32 5
  %51 = load ptr, ptr %50, align 4
  %52 = tail call i32 @reset_control_reset(ptr noundef %51) #4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %96

54:                                               ; preds = %49
  %55 = load ptr, ptr %31, align 4
  %56 = tail call i32 @reset_control_deassert(ptr noundef %55) #4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %96

58:                                               ; preds = %54
  %59 = tail call i32 @ahci_platform_enable_clks(ptr noundef %36) #4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %90

61:                                               ; preds = %58
  %62 = tail call i32 @ahci_platform_enable_regulators(ptr noundef %36) #4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %88

64:                                               ; preds = %61
  %65 = load ptr, ptr %17, align 4
  %66 = getelementptr i8, ptr %65, i32 4
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #4, !srcloc !8
  %68 = and i32 %67, -256
  %69 = load i32, ptr %14, align 4
  %70 = icmp eq i32 %69, 3
  %71 = or i32 %68, 40
  %72 = select i1 %70, i32 %71, i32 %68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %72) #4, !srcloc !9
  %73 = tail call fastcc i32 @brcm_ahci_get_portmask(ptr noundef %36, ptr noundef nonnull %3)
  %74 = getelementptr inbounds %struct.brcm_ahci_priv, ptr %3, i32 0, i32 2
  store i32 %73, ptr %74, align 4
  %75 = icmp eq i32 %73, 0
  br i1 %75, label %86, label %76

76:                                               ; preds = %64
  tail call fastcc void @brcm_sata_phys_enable(ptr noundef nonnull %3)
  tail call fastcc void @brcm_sata_alpm_init(ptr noundef %36)
  %77 = tail call i32 @ahci_platform_enable_phys(ptr noundef %36) #4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = tail call i32 @ahci_platform_init_host(ptr noundef %0, ptr noundef %36, ptr noundef nonnull @ahci_brcm_port_info, ptr noundef nonnull @ahci_platform_sht) #4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.4) #5
  br label %96

83:                                               ; preds = %79
  tail call void @ahci_platform_disable_phys(ptr noundef %36) #4
  br label %84

84:                                               ; preds = %83, %76
  %85 = phi i32 [ %77, %76 ], [ %80, %83 ]
  tail call fastcc void @brcm_sata_phys_disable(ptr noundef nonnull %3)
  br label %86

86:                                               ; preds = %84, %64
  %87 = phi i32 [ %85, %84 ], [ -19, %64 ]
  tail call void @ahci_platform_disable_regulators(ptr noundef %36) #4
  br label %88

88:                                               ; preds = %86, %61
  %89 = phi i32 [ %62, %61 ], [ %87, %86 ]
  tail call void @ahci_platform_disable_clks(ptr noundef %36) #4
  br label %90

90:                                               ; preds = %88, %58
  %91 = phi i32 [ %59, %58 ], [ %89, %88 ]
  %92 = load ptr, ptr %31, align 4
  %93 = tail call i32 @reset_control_assert(ptr noundef %92) #4
  %94 = load ptr, ptr %50, align 4
  %95 = tail call i32 @reset_control_rearm(ptr noundef %94) #4
  br label %96

96:                                               ; preds = %90, %82, %54, %49, %38, %33, %27, %19, %5, %1
  %97 = phi i32 [ %20, %19 ], [ %28, %27 ], [ %34, %33 ], [ %39, %38 ], [ %91, %90 ], [ 0, %82 ], [ -12, %1 ], [ -19, %5 ], [ %52, %49 ], [ %56, %54 ]
  ret i32 %97
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcm_ahci_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 23
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.brcm_ahci_priv, ptr %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.brcm_ahci_priv, ptr %7, i32 0, i32 3
  %10 = getelementptr inbounds %struct.brcm_ahci_priv, ptr %7, i32 0, i32 1
  %11 = load i32, ptr %8, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %1
  %15 = load i32, ptr %9, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %14
  %19 = load ptr, ptr %10, align 4
  %20 = getelementptr i8, ptr %19, i32 12
  %21 = getelementptr i8, ptr %19, i32 16
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #4, !srcloc !8
  %23 = or i32 %22, 16399
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %23) #4, !srcloc !9
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #4, !srcloc !8
  %25 = or i32 %24, 16384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %25) #4, !srcloc !9
  %26 = load i32, ptr %8, align 4
  br label %27

27:                                               ; preds = %18, %14, %1
  %28 = phi i32 [ %26, %18 ], [ %11, %14 ], [ %11, %1 ]
  %29 = and i32 %28, 2
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %43, label %31

31:                                               ; preds = %27
  %32 = load i32, ptr %9, align 4
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = load ptr, ptr %10, align 4
  %37 = getelementptr i8, ptr %36, i32 20
  %38 = getelementptr i8, ptr %36, i32 24
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #4, !srcloc !8
  %40 = or i32 %39, 16399
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %40) #4, !srcloc !9
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #4, !srcloc !8
  %42 = or i32 %41, 16384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %42) #4, !srcloc !9
  br label %43

43:                                               ; preds = %35, %31, %27
  %44 = tail call i32 @ata_platform_remove_one(ptr noundef %0) #4
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcm_ahci_shutdown(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call i32 @brcm_ahci_suspend(ptr noundef %2)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.7) #5
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ahci_platform_get_resources(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_platform_enable_clks(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_platform_enable_regulators(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @brcm_ahci_get_portmask(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.ahci_host_priv, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 12
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %7 = icmp ugt i32 %6, 3
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.5, i32 noundef %6) #5
  br label %14

10:                                               ; preds = %2
  %11 = icmp eq i32 %6, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %10
  %13 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.6) #5
  br label %14

14:                                               ; preds = %12, %10, %8
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @brcm_sata_phys_enable(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.brcm_ahci_priv, ptr %0, i32 0, i32 2
  %3 = getelementptr inbounds %struct.brcm_ahci_priv, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.brcm_ahci_priv, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %2, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %27, label %8

8:                                                ; preds = %1
  %9 = load i32, ptr %3, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %8
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr i8, ptr %13, i32 12
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #4, !srcloc !8
  %16 = and i32 %15, -16385
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %16) #4, !srcloc !9
  %17 = getelementptr i8, ptr %13, i32 16
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #4, !srcloc !8
  %19 = and i32 %18, -16
  %20 = or i32 %19, 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %20) #4, !srcloc !9
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #4, !srcloc !8
  %22 = or i32 %21, 16384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %22) #4, !srcloc !9
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #4, !srcloc !8
  %24 = and i32 %23, -16385
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %24) #4, !srcloc !9
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #4, !srcloc !8
  %26 = load i32, ptr %2, align 4
  br label %27

27:                                               ; preds = %12, %8, %1
  %28 = phi i32 [ %26, %12 ], [ %5, %8 ], [ %5, %1 ]
  %29 = and i32 %28, 2
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %49, label %31

31:                                               ; preds = %27
  %32 = load i32, ptr %3, align 4
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %31
  %36 = load ptr, ptr %4, align 4
  %37 = getelementptr i8, ptr %36, i32 20
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #4, !srcloc !8
  %39 = and i32 %38, -16385
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %39) #4, !srcloc !9
  %40 = getelementptr i8, ptr %36, i32 24
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #4, !srcloc !8
  %42 = and i32 %41, -16
  %43 = or i32 %42, 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %43) #4, !srcloc !9
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #4, !srcloc !8
  %45 = or i32 %44, 16384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %45) #4, !srcloc !9
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #4, !srcloc !8
  %47 = and i32 %46, -16385
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %47) #4, !srcloc !9
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #4, !srcloc !8
  br label %49

49:                                               ; preds = %35, %31, %27
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @brcm_sata_alpm_init(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.ahci_host_priv, ptr %0, i32 0, i32 23
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ahci_host_priv, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !11
  %7 = and i32 %6, 67108864
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, ptr %0, align 4
  %11 = or i32 %10, 8388608
  store i32 %11, ptr %0, align 4
  br label %12

12:                                               ; preds = %9, %1
  %13 = getelementptr inbounds %struct.brcm_ahci_priv, ptr %3, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %18 = load ptr, ptr %4, align 4
  %19 = getelementptr i8, ptr %18, i32 1816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 -15727620) #4, !srcloc !9
  %20 = load i32, ptr %13, align 4
  br label %21

21:                                               ; preds = %17, %12
  %22 = phi i32 [ %14, %12 ], [ %20, %17 ]
  %23 = and i32 %22, 2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %26 = load ptr, ptr %4, align 4
  %27 = getelementptr i8, ptr %26, i32 1944
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 -15727620) #4, !srcloc !9
  br label %28

28:                                               ; preds = %25, %21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_platform_enable_phys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_platform_init_host(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahci_platform_disable_phys(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @brcm_sata_phys_disable(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.brcm_ahci_priv, ptr %0, i32 0, i32 2
  %3 = getelementptr inbounds %struct.brcm_ahci_priv, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.brcm_ahci_priv, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %2, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %1
  %9 = load i32, ptr %3, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr i8, ptr %13, i32 12
  %15 = getelementptr i8, ptr %13, i32 16
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #4, !srcloc !8
  %17 = or i32 %16, 16399
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %17) #4, !srcloc !9
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #4, !srcloc !8
  %19 = or i32 %18, 16384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %19) #4, !srcloc !9
  %20 = load i32, ptr %2, align 4
  br label %21

21:                                               ; preds = %12, %8, %1
  %22 = phi i32 [ %20, %12 ], [ %5, %8 ], [ %5, %1 ]
  %23 = and i32 %22, 2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %21
  %26 = load i32, ptr %3, align 4
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load ptr, ptr %4, align 4
  %31 = getelementptr i8, ptr %30, i32 20
  %32 = getelementptr i8, ptr %30, i32 24
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #4, !srcloc !8
  %34 = or i32 %33, 16399
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %34) #4, !srcloc !9
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #4, !srcloc !8
  %36 = or i32 %35, 16384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %36) #4, !srcloc !9
  br label %37

37:                                               ; preds = %29, %25, %21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahci_platform_disable_regulators(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahci_platform_disable_clks(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_rearm(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @brcm_sata_phy_enable(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.brcm_ahci_priv, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %24

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.brcm_ahci_priv, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 12
  %11 = shl i32 %1, 3
  %12 = getelementptr i8, ptr %10, i32 %11
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #4, !srcloc !8
  %14 = and i32 %13, -16385
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %14) #4, !srcloc !9
  %15 = getelementptr i8, ptr %12, i32 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #4, !srcloc !8
  %17 = and i32 %16, -16
  %18 = or i32 %17, 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %18) #4, !srcloc !9
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #4, !srcloc !8
  %20 = or i32 %19, 16384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %20) #4, !srcloc !9
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #4, !srcloc !8
  %22 = and i32 %21, -16385
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %22) #4, !srcloc !9
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #4, !srcloc !8
  br label %24

24:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcm_ahci_read_id(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = load ptr, ptr %0, align 64
  %5 = load ptr, ptr %4, align 64
  %6 = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 31
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ata_host, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ahci_host_priv, ptr %9, i32 0, i32 23
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ahci_host_priv, ptr %9, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @ata_do_dev_read_id(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %74, label %16, !prof !13

16:                                               ; preds = %3
  %17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #4
  %18 = getelementptr i8, ptr %13, i32 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !14
  %20 = and i32 %19, -3
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %20) #4, !srcloc !9
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %17) #4
  %22 = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 7
  %23 = load i32, ptr %22, align 4
  tail call fastcc void @brcm_sata_phy_disable(ptr noundef %11, i32 noundef %23)
  tail call void @ahci_platform_disable_clks(ptr noundef %9) #4
  tail call void @msleep(i32 noundef 10) #4
  %24 = tail call i32 @ahci_platform_enable_clks(ptr noundef %9) #4
  tail call void @msleep(i32 noundef 10) #4
  %25 = load i32, ptr %22, align 4
  tail call fastcc void @brcm_sata_phy_enable(ptr noundef %11, i32 noundef %25)
  %26 = getelementptr inbounds %struct.ahci_host_priv, ptr %9, i32 0, i32 22
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %53, label %29

29:                                               ; preds = %16
  %30 = getelementptr inbounds %struct.ahci_host_priv, ptr %9, i32 0, i32 21
  br label %31

31:                                               ; preds = %49, %29
  %32 = phi i32 [ 0, %29 ], [ %50, %49 ]
  %33 = load ptr, ptr %30, align 4
  %34 = getelementptr ptr, ptr %33, i32 %32
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 @phy_init(ptr noundef %35) #4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %59

38:                                               ; preds = %31
  %39 = load ptr, ptr %30, align 4
  %40 = getelementptr ptr, ptr %39, i32 %32
  %41 = load ptr, ptr %40, align 4
  %42 = tail call i32 @phy_calibrate(ptr noundef %41) #4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %38
  %45 = load ptr, ptr %30, align 4
  %46 = getelementptr ptr, ptr %45, i32 %32
  %47 = load ptr, ptr %46, align 4
  %48 = tail call i32 @phy_exit(ptr noundef %47) #4
  br label %59

49:                                               ; preds = %38
  %50 = add nuw i32 %32, 1
  %51 = load i32, ptr %26, align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %31, label %53

53:                                               ; preds = %49, %16
  %54 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #4
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !17
  %56 = or i32 %55, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !18
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %56) #4, !srcloc !9
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !19
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %54) #4
  %58 = tail call i32 @ata_do_dev_read_id(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4
  br label %74

59:                                               ; preds = %44, %31
  %60 = add i32 %32, -1
  %61 = icmp sgt i32 %60, -1
  br i1 %61, label %62, label %74

62:                                               ; preds = %62, %59
  %63 = phi i32 [ %72, %62 ], [ %60, %59 ]
  %64 = load ptr, ptr %30, align 4
  %65 = getelementptr ptr, ptr %64, i32 %63
  %66 = load ptr, ptr %65, align 4
  %67 = tail call i32 @phy_power_off(ptr noundef %66) #4
  %68 = load ptr, ptr %30, align 4
  %69 = getelementptr ptr, ptr %68, i32 %63
  %70 = load ptr, ptr %69, align 4
  %71 = tail call i32 @phy_exit(ptr noundef %70) #4
  %72 = add nsw i32 %63, -1
  %73 = icmp sgt i32 %63, 0
  br i1 %73, label %62, label %74

74:                                               ; preds = %62, %59, %53, %3
  %75 = phi i32 [ %58, %53 ], [ 0, %3 ], [ 256, %59 ], [ 256, %62 ]
  ret i32 %75
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcm_ahci_host_stop(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  tail call void @ahci_platform_disable_resources(ptr noundef %3) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_do_dev_read_id(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @brcm_sata_phy_disable(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.brcm_ahci_priv, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.brcm_ahci_priv, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 12
  %11 = shl i32 %1, 3
  %12 = getelementptr i8, ptr %10, i32 %11
  %13 = getelementptr i8, ptr %12, i32 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #4, !srcloc !8
  %15 = or i32 %14, 16399
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %15) #4, !srcloc !9
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #4, !srcloc !8
  %17 = or i32 %16, 16384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %17) #4, !srcloc !9
  br label %18

18:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_calibrate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahci_platform_disable_resources(ptr noundef) local_unnamed_addr #1

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
declare dso_local i32 @ata_platform_remove_one(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcm_ahci_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 23
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.brcm_ahci_priv, ptr %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.brcm_ahci_priv, ptr %7, i32 0, i32 3
  %10 = getelementptr inbounds %struct.brcm_ahci_priv, ptr %7, i32 0, i32 1
  %11 = load i32, ptr %8, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %1
  %15 = load i32, ptr %9, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %14
  %19 = load ptr, ptr %10, align 4
  %20 = getelementptr i8, ptr %19, i32 12
  %21 = getelementptr i8, ptr %19, i32 16
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #4, !srcloc !8
  %23 = or i32 %22, 16399
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %23) #4, !srcloc !9
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #4, !srcloc !8
  %25 = or i32 %24, 16384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %25) #4, !srcloc !9
  %26 = load i32, ptr %8, align 4
  br label %27

27:                                               ; preds = %18, %14, %1
  %28 = phi i32 [ %26, %18 ], [ %11, %14 ], [ %11, %1 ]
  %29 = and i32 %28, 2
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %43, label %31

31:                                               ; preds = %27
  %32 = load i32, ptr %9, align 4
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = load ptr, ptr %10, align 4
  %37 = getelementptr i8, ptr %36, i32 20
  %38 = getelementptr i8, ptr %36, i32 24
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #4, !srcloc !8
  %40 = or i32 %39, 16399
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %40) #4, !srcloc !9
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #4, !srcloc !8
  %42 = or i32 %41, 16384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %42) #4, !srcloc !9
  br label %43

43:                                               ; preds = %35, %31, %27
  %44 = tail call i32 @ahci_platform_suspend(ptr noundef %0) #4
  %45 = getelementptr inbounds %struct.brcm_ahci_priv, ptr %7, i32 0, i32 6
  %46 = load ptr, ptr %45, align 4
  %47 = tail call i32 @reset_control_assert(ptr noundef %46) #4
  %48 = getelementptr inbounds %struct.brcm_ahci_priv, ptr %7, i32 0, i32 5
  %49 = load ptr, ptr %48, align 4
  %50 = tail call i32 @reset_control_rearm(ptr noundef %49) #4
  ret i32 %44
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_platform_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcm_ahci_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 23
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.brcm_ahci_priv, ptr %7, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @reset_control_deassert(ptr noundef %9) #4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %46

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.brcm_ahci_priv, ptr %7, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @reset_control_reset(ptr noundef %14) #4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %46

17:                                               ; preds = %12
  %18 = tail call i32 @ahci_platform_enable_clks(ptr noundef %5) #4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %46

20:                                               ; preds = %17
  %21 = tail call i32 @ahci_platform_enable_regulators(ptr noundef %5) #4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %44

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.brcm_ahci_priv, ptr %7, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %25, i32 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #4, !srcloc !8
  %28 = and i32 %27, -256
  %29 = getelementptr inbounds %struct.brcm_ahci_priv, ptr %7, i32 0, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 3
  %32 = or i32 %28, 40
  %33 = select i1 %31, i32 %32, i32 %28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %33) #4, !srcloc !9
  tail call fastcc void @brcm_sata_phys_enable(ptr noundef %7)
  tail call fastcc void @brcm_sata_alpm_init(ptr noundef %5)
  %34 = tail call i32 @ahci_platform_enable_phys(ptr noundef %5) #4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %23
  %37 = tail call i32 @ahci_platform_resume_host(ptr noundef %0) #4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  tail call void @__pm_runtime_disable(ptr noundef %0, i1 noundef zeroext true) #4
  %40 = tail call i32 @__pm_runtime_set_status(ptr noundef %0, i32 noundef 0) #4
  tail call void @pm_runtime_enable(ptr noundef %0) #4
  br label %46

41:                                               ; preds = %36
  tail call void @ahci_platform_disable_phys(ptr noundef %5) #4
  br label %42

42:                                               ; preds = %41, %23
  %43 = phi i32 [ %34, %23 ], [ %37, %41 ]
  tail call fastcc void @brcm_sata_phys_disable(ptr noundef %7)
  tail call void @ahci_platform_disable_regulators(ptr noundef %5) #4
  br label %44

44:                                               ; preds = %42, %20
  %45 = phi i32 [ %21, %20 ], [ %43, %42 ]
  tail call void @ahci_platform_disable_clks(ptr noundef %5) #4
  br label %46

46:                                               ; preds = %44, %39, %17, %12, %1
  %47 = phi i32 [ %45, %44 ], [ 0, %39 ], [ %10, %1 ], [ %15, %12 ], [ %18, %17 ]
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_platform_resume_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
!8 = !{i64 3709800}
!9 = !{i64 3709382}
!10 = !{i64 2155042922}
!11 = !{i64 2155040807}
!12 = !{i64 2155041131}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2155045119}
!15 = !{i64 2155045302}
!16 = !{i64 2155045757}
!17 = !{i64 2155046439}
!18 = !{i64 2155046622}
!19 = !{i64 2155047077}
