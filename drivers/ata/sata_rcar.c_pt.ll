; ModuleID = '/llk/IR/drivers/ata/sata_rcar.c_pt.bc'
source_filename = "../drivers/ata/sata_rcar.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.ata_port_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.sata_rcar_priv = type { ptr, i32, i32 }
%struct.ata_host = type { %struct.spinlock, ptr, ptr, i32, i32, ptr, ptr, i32, %struct.kref, %struct.mutex, ptr, ptr, [0 x ptr] }
%struct.ata_port = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.ata_ioports, i8, i8, ptr, %struct.delayed_work, ptr, i32, i32, i32, i32, i32, [33 x %struct.ata_queued_cmd], i32, i64, i32, i32, [24 x i8], %struct.ata_link, ptr, i32, ptr, ptr, %struct.ata_port_stats, ptr, ptr, %struct.device, %struct.mutex, %struct.delayed_work, %struct.work_struct, i32, %struct.list_head, %struct.wait_queue_head, i32, %struct.completion, %struct.pm_message, i32, %struct.timer_list, i32, i64, i32, ptr, [16 x i8], [512 x i8] }
%struct.ata_ioports = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ata_queued_cmd = type { ptr, ptr, ptr, ptr, %struct.ata_taskfile, [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.scatterlist, ptr, ptr, i32, i32, %struct.ata_taskfile, ptr, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ata_taskfile = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.ata_link = type { ptr, i32, %struct.device, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ata_eh_info, %struct.ata_eh_context, [60 x i8], [2 x %struct.ata_device], i32, [60 x i8] }
%struct.ata_eh_info = type { ptr, i32, i32, i32, [2 x i32], i32, i32, [80 x i8], i32 }
%struct.ata_eh_context = type { %struct.ata_eh_info, [2 x i32], [2 x [7 x i32]], [2 x i32], i32, i32, i32, [2 x i8], i32 }
%struct.ata_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.device, i64, i64, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, [18 x i8], %union.anon.79, [8 x i8], [20 x i8], [64 x i8], i32, i32, i32, i32, ptr, i32, %struct.ata_ering }
%union.anon.79 = type { [128 x i32] }
%struct.ata_ering = type { i32, [32 x %struct.ata_ering_entry] }
%struct.ata_ering_entry = type { i32, i32, i64 }
%struct.ata_port_stats = type { i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.ata_bmdma_prd = type { i32, i32 }

@__initcall__kmod_sata_rcar__279_1036_sata_rcar_driver_init6 = internal global ptr @sata_rcar_driver_init, section ".initcall6.init", align 4
@sata_rcar_driver = internal global %struct.platform_driver { ptr @sata_rcar_probe, ptr @sata_rcar_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sata_rcar_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sata_rcar_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_sata_rcar_driver_exit = internal global ptr @sata_rcar_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file280 = internal constant [37 x i8] c"sata_rcar.file=drivers/ata/sata_rcar\00", section ".modinfo", align 1
@__UNIQUE_ID_license281 = internal constant [22 x i8] c"sata_rcar.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author282 = internal constant [34 x i8] c"sata_rcar.author=Vladimir Barinov\00", section ".modinfo", align 1
@__UNIQUE_ID_description283 = internal constant [69 x i8] c"sata_rcar.description=Renesas R-Car SATA controller low level driver\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"sata_rcar\00", align 1
@sata_rcar_match = internal constant [10 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-sata\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sata-r8a7779\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sata-r8a7790\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sata-r8a7790-es1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sata-r8a7791\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sata-r8a7793\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sata-r8a7795\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen2-sata\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen3-sata\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@sata_rcar_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @sata_rcar_suspend, ptr @sata_rcar_resume, ptr @sata_rcar_suspend, ptr @sata_rcar_resume, ptr @sata_rcar_suspend, ptr @sata_rcar_restore, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@sata_rcar_sht = internal global %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str, ptr null, i32 1, i32 -1, i16 256, i16 0, i32 0, i32 0, i32 536870911, i32 0, i16 0, i8 0, i32 1, i8 8, i32 0, ptr null, ptr @ata_common_sdev_groups, i64 0, ptr null, i32 0 }, align 8
@sata_rcar_port_ops = internal global %struct.ata_port_operations { ptr null, ptr null, ptr @sata_rcar_qc_prep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sata_rcar_freeze, ptr @sata_rcar_thaw, ptr null, ptr @sata_rcar_softreset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sata_rcar_scr_read, ptr @sata_rcar_scr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sata_rcar_dev_select, ptr @sata_rcar_set_devctl, ptr @sata_rcar_check_status, ptr @sata_rcar_check_altstatus, ptr @sata_rcar_tf_load, ptr @sata_rcar_tf_read, ptr @sata_rcar_exec_command, ptr @sata_rcar_data_xfer, ptr null, ptr null, ptr null, ptr @sata_rcar_drain_fifo, ptr @sata_rcar_bmdma_setup, ptr @sata_rcar_bmdma_start, ptr @sata_rcar_bmdma_stop, ptr @sata_rcar_bmdma_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_bmdma_port_ops }, align 4
@ata_bmdma_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"\013ata%u.%02u: SRST failed (errno=%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"\013ata%u: SRST failed (errno=%d)\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"SATA phy is not initialized\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"\013%s timeout\0A\00", align 1
@__func__.sata_rcar_gen1_phy_write = private unnamed_addr constant [25 x i8] c"sata_rcar_gen1_phy_write\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"hotplug\00", align 1
@ata_common_sdev_groups = external dso_local global [0 x ptr], align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author282, ptr @__UNIQUE_ID_description283, ptr @__UNIQUE_ID_file280, ptr @__UNIQUE_ID_license281, ptr @__exitcall_sata_rcar_driver_exit, ptr @__initcall__kmod_sata_rcar__279_1036_sata_rcar_driver_init6, ptr @sata_rcar_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sata_rcar_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sata_rcar_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sata_rcar_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sata_rcar_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sata_rcar_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #5
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %72, label %5

5:                                                ; preds = %1
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %72, label %7

7:                                                ; preds = %5
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 12, i32 noundef 3520) #5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %72, label %10

10:                                               ; preds = %7
  %11 = tail call ptr @of_device_get_match_data(ptr noundef %2) #5
  %12 = ptrtoint ptr %11 to i32
  %13 = getelementptr inbounds %struct.sata_rcar_priv, ptr %8, i32 0, i32 2
  store i32 %12, ptr %13, align 4
  tail call void @pm_runtime_enable(ptr noundef %2) #5
  %14 = tail call i32 @__pm_runtime_resume(ptr noundef %2, i32 noundef 4) #5
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %69, label %16

16:                                               ; preds = %10
  %17 = tail call ptr @ata_host_alloc(ptr noundef %2, i32 noundef 1) #5
  %18 = icmp eq ptr %17, null
  br i1 %18, label %69, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.ata_host, ptr %17, i32 0, i32 5
  store ptr %8, ptr %20, align 4
  %21 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #5
  %22 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %21) #5
  store ptr %22, ptr %8, align 4
  %23 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = ptrtoint ptr %22 to i32
  br label %69

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.ata_host, ptr %17, i32 0, i32 12
  %28 = load ptr, ptr %27, align 4
  %29 = load ptr, ptr %20, align 4
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.ata_port, ptr %28, i32 0, i32 1
  store ptr @sata_rcar_port_ops, ptr %31, align 4
  %32 = getelementptr inbounds %struct.ata_port, ptr %28, i32 0, i32 15
  store i32 31, ptr %32, align 8
  %33 = getelementptr inbounds %struct.ata_port, ptr %28, i32 0, i32 17
  store i32 127, ptr %33, align 32
  %34 = getelementptr inbounds %struct.ata_port, ptr %28, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = or i32 %35, 2
  store i32 %36, ptr %34, align 4
  %37 = getelementptr inbounds %struct.sata_rcar_priv, ptr %29, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 3
  br i1 %39, label %40, label %42

40:                                               ; preds = %26
  %41 = or i32 %35, 8388610
  store i32 %41, ptr %34, align 4
  br label %42

42:                                               ; preds = %40, %26
  %43 = getelementptr inbounds %struct.ata_port, ptr %28, i32 0, i32 8
  %44 = getelementptr i8, ptr %30, i32 4352
  store ptr %44, ptr %43, align 4
  %45 = getelementptr i8, ptr %30, i32 4612
  %46 = getelementptr inbounds %struct.ata_port, ptr %28, i32 0, i32 8, i32 12
  store ptr %45, ptr %46, align 4
  %47 = getelementptr i8, ptr %30, i32 5120
  %48 = getelementptr inbounds %struct.ata_port, ptr %28, i32 0, i32 8, i32 14
  store ptr %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.ata_port, ptr %28, i32 0, i32 8, i32 11
  store ptr %45, ptr %49, align 4
  %50 = getelementptr inbounds %struct.ata_port, ptr %28, i32 0, i32 8, i32 1
  store ptr %44, ptr %50, align 4
  %51 = getelementptr i8, ptr %30, i32 4356
  %52 = getelementptr inbounds %struct.ata_port, ptr %28, i32 0, i32 8, i32 2
  store ptr %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.ata_port, ptr %28, i32 0, i32 8, i32 3
  store ptr %51, ptr %53, align 4
  %54 = getelementptr i8, ptr %30, i32 4360
  %55 = getelementptr inbounds %struct.ata_port, ptr %28, i32 0, i32 8, i32 4
  store ptr %54, ptr %55, align 4
  %56 = getelementptr i8, ptr %30, i32 4364
  %57 = getelementptr inbounds %struct.ata_port, ptr %28, i32 0, i32 8, i32 5
  store ptr %56, ptr %57, align 4
  %58 = getelementptr i8, ptr %30, i32 4368
  %59 = getelementptr inbounds %struct.ata_port, ptr %28, i32 0, i32 8, i32 6
  store ptr %58, ptr %59, align 4
  %60 = getelementptr i8, ptr %30, i32 4372
  %61 = getelementptr inbounds %struct.ata_port, ptr %28, i32 0, i32 8, i32 7
  store ptr %60, ptr %61, align 4
  %62 = getelementptr i8, ptr %30, i32 4376
  %63 = getelementptr inbounds %struct.ata_port, ptr %28, i32 0, i32 8, i32 8
  store ptr %62, ptr %63, align 4
  %64 = getelementptr i8, ptr %30, i32 4380
  %65 = getelementptr inbounds %struct.ata_port, ptr %28, i32 0, i32 8, i32 9
  store ptr %64, ptr %65, align 4
  %66 = getelementptr inbounds %struct.ata_port, ptr %28, i32 0, i32 8, i32 10
  store ptr %64, ptr %66, align 4
  tail call fastcc void @sata_rcar_init_controller(ptr noundef nonnull %17)
  %67 = tail call i32 @ata_host_activate(ptr noundef nonnull %17, i32 noundef %3, ptr noundef nonnull @sata_rcar_interrupt, i32 noundef 0, ptr noundef nonnull @sata_rcar_sht) #5
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %42, %24, %16, %10
  %70 = phi i32 [ %14, %10 ], [ %25, %24 ], [ %67, %42 ], [ -12, %16 ]
  %71 = tail call i32 @__pm_runtime_idle(ptr noundef %2, i32 noundef 5) #5
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #5
  br label %72

72:                                               ; preds = %69, %42, %7, %5, %1
  %73 = phi i32 [ %70, %69 ], [ %3, %1 ], [ -22, %5 ], [ -12, %7 ], [ 0, %42 ]
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sata_rcar_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  tail call void @ata_host_detach(ptr noundef %3) #5
  %7 = getelementptr i8, ptr %6, i32 392
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #5, !srcloc !9
  %8 = getelementptr i8, ptr %6, i32 5384
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 0) #5, !srcloc !9
  %9 = getelementptr inbounds %struct.sata_rcar_priv, ptr %5, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr i8, ptr %6, i32 5388
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %10) #5, !srcloc !9
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %13 = tail call i32 @__pm_runtime_idle(ptr noundef %12, i32 noundef 5) #5
  tail call void @__pm_runtime_disable(ptr noundef %12, i1 noundef zeroext true) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_host_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sata_rcar_init_controller(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sata_rcar_priv, ptr %3, i32 0, i32 1
  store i32 4095, ptr %4, align 4
  %5 = getelementptr inbounds %struct.sata_rcar_priv, ptr %3, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %19 [
    i32 0, label %7
    i32 1, label %12
    i32 3, label %12
    i32 2, label %22
  ]

7:                                                ; preds = %1
  store i32 2047, ptr %4, align 4
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr i8, ptr %8, i32 512
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #5, !srcloc !9
  %10 = getelementptr i8, ptr %8, i32 524
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 2) #5, !srcloc !9
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 2147480) #5
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 0) #5, !srcloc !9
  tail call fastcc void @sata_rcar_gen1_phy_write(ptr noundef %3, i16 noundef zeroext 67, i32 noundef 2097544, i32 noundef 0) #5
  tail call fastcc void @sata_rcar_gen1_phy_write(ptr noundef %3, i16 noundef zeroext 67, i32 noundef 2097544, i32 noundef 1) #5
  tail call fastcc void @sata_rcar_gen1_phy_write(ptr noundef %3, i16 noundef zeroext 90, i32 noundef 41057, i32 noundef 0) #5
  tail call fastcc void @sata_rcar_gen1_phy_write(ptr noundef %3, i16 noundef zeroext 82, i32 noundef 536870912, i32 noundef 0) #5
  tail call fastcc void @sata_rcar_gen1_phy_write(ptr noundef %3, i16 noundef zeroext 82, i32 noundef 536870912, i32 noundef 1) #5
  tail call fastcc void @sata_rcar_gen1_phy_write(ptr noundef %3, i16 noundef zeroext 96, i32 noundef 686292992, i32 noundef 0) #5
  br label %22

12:                                               ; preds = %1, %1
  %13 = load ptr, ptr %3, align 4
  %14 = getelementptr i8, ptr %13, i32 5892
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 873988098) #5, !srcloc !9
  %15 = getelementptr i8, ptr %13, i32 5900
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 8963) #5, !srcloc !9
  %16 = getelementptr i8, ptr %13, i32 5916
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 721300) #5, !srcloc !9
  %17 = getelementptr i8, ptr %13, i32 5924
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 199060) #5, !srcloc !9
  %18 = getelementptr i8, ptr %13, i32 5952
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 50348039) #5, !srcloc !9
  br label %22

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.3) #6
  br label %22

22:                                               ; preds = %19, %12, %7, %1
  %23 = load ptr, ptr %3, align 4
  %24 = getelementptr i8, ptr %23, i32 384
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %26 = or i32 %25, 128
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %26) #5, !srcloc !9
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %28 = or i32 %27, 67592
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %28) #5, !srcloc !9
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %30 = and i32 %29, -129
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %30) #5, !srcloc !9
  %31 = getelementptr i8, ptr %23, i32 5384
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 0) #5, !srcloc !9
  %32 = load i32, ptr %4, align 4
  %33 = getelementptr i8, ptr %23, i32 5388
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %32) #5, !srcloc !9
  %34 = getelementptr i8, ptr %23, i32 392
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 2048) #5, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_host_activate(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sata_rcar_interrupt(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #5
  %7 = getelementptr i8, ptr %5, i32 5384
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %9 = and i32 %8, 9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %80, label %11

11:                                               ; preds = %2
  %12 = xor i32 %9, -1
  %13 = getelementptr inbounds %struct.sata_rcar_priv, ptr %4, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %15) #5, !srcloc !9
  %16 = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 12
  %17 = load ptr, ptr %16, align 4
  %18 = and i32 %8, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %45, label %20

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.ata_port, ptr %17, i32 0, i32 25, i32 3
  %22 = load i32, ptr %21, align 32
  %23 = icmp ugt i32 %22, 32
  %24 = getelementptr %struct.ata_port, ptr %17, i32 0, i32 19, i32 %22
  %25 = icmp eq ptr %24, null
  %26 = or i1 %23, %25
  br i1 %26, label %41, label %27, !prof !12

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.ata_port, ptr %17, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.ata_port_operations, ptr %29, i32 0, i32 22
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %27
  %34 = getelementptr %struct.ata_port, ptr %17, i32 0, i32 19, i32 %22, i32 6
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, 65537
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %41

38:                                               ; preds = %33, %27
  %39 = tail call i32 @ata_bmdma_port_intr(ptr noundef %17, ptr noundef nonnull %24) #5
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38, %33, %20
  %42 = getelementptr inbounds %struct.ata_port, ptr %17, i32 0, i32 8, i32 9
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  br label %45

45:                                               ; preds = %41, %38, %11
  %46 = and i32 %8, 8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %80, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.ata_port, ptr %17, i32 0, i32 31
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.ata_host, ptr %50, i32 0, i32 5
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.ata_port, ptr %17, i32 0, i32 25, i32 11
  %54 = load ptr, ptr %52, align 4
  %55 = getelementptr i8, ptr %54, i32 5124
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %80, label %58

58:                                               ; preds = %48
  tail call void @ata_ehi_clear_desc(ptr noundef %53) #5
  %59 = and i32 %56, 67174400
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %78, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.ata_port, ptr %17, i32 0, i32 25, i32 11, i32 6
  %63 = load i32, ptr %62, align 4
  %64 = or i32 %63, 3
  store i32 %64, ptr %62, align 4
  %65 = getelementptr inbounds %struct.ata_port, ptr %17, i32 0, i32 25, i32 11, i32 5
  %66 = load i32, ptr %65, align 4
  %67 = or i32 %66, 1
  store i32 %67, ptr %65, align 4
  %68 = getelementptr inbounds %struct.ata_port, ptr %17, i32 0, i32 25, i32 11, i32 3
  %69 = load i32, ptr %68, align 4
  %70 = or i32 %69, 14
  store i32 %70, ptr %68, align 4
  %71 = getelementptr inbounds %struct.ata_port, ptr %17, i32 0, i32 25, i32 11, i32 2
  %72 = load i32, ptr %71, align 4
  %73 = or i32 %72, 16
  store i32 %73, ptr %71, align 4
  tail call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %53, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #5
  %74 = and i32 %56, 262144
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %61
  %77 = tail call i32 @ata_port_freeze(ptr noundef %17) #5
  br label %80

78:                                               ; preds = %61, %58
  %79 = tail call i32 @ata_port_abort(ptr noundef %17) #5
  br label %80

80:                                               ; preds = %78, %76, %48, %45, %2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %6) #5
  %81 = xor i1 %10, true
  %82 = zext i1 %81 to i32
  ret i32 %82
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sata_rcar_qc_prep(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %34, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 13
  %9 = load ptr, ptr %8, align 16
  %10 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 9
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %29, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 17
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %16, %13
  %17 = phi ptr [ %26, %16 ], [ %15, %13 ]
  %18 = phi i32 [ %25, %16 ], [ 0, %13 ]
  %19 = getelementptr inbounds %struct.scatterlist, ptr %17, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.scatterlist, ptr %17, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr %struct.ata_bmdma_prd, ptr %9, i32 %18
  store i32 %20, ptr %23, align 4
  %24 = getelementptr %struct.ata_bmdma_prd, ptr %9, i32 %18, i32 1
  store i32 %22, ptr %24, align 4
  %25 = add nuw i32 %18, 1
  %26 = tail call ptr @sg_next(ptr noundef %17) #5
  %27 = load i32, ptr %10, align 4
  %28 = icmp ult i32 %25, %27
  br i1 %28, label %16, label %29

29:                                               ; preds = %16, %6
  %30 = phi i32 [ -1, %6 ], [ %18, %16 ]
  %31 = getelementptr %struct.ata_bmdma_prd, ptr %9, i32 %30
  %32 = load i32, ptr %31, align 4
  %33 = or i32 %32, 1
  store i32 %33, ptr %31, align 4
  br label %34

34:                                               ; preds = %29, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sata_rcar_freeze(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 31
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sata_rcar_priv, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr i8, ptr %8, i32 5388
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #5, !srcloc !9
  tail call void @ata_sff_freeze(ptr noundef %0) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sata_rcar_thaw(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 31
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 5384
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 -10) #5, !srcloc !9
  tail call void @ata_sff_thaw(ptr noundef %0) #5
  %8 = getelementptr inbounds %struct.sata_rcar_priv, ptr %5, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, -10
  %11 = getelementptr i8, ptr %6, i32 5388
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %10) #5, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sata_rcar_softreset(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #2 {
  %4 = alloca i8, align 1
  %5 = load ptr, ptr %0, align 64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #5
  store i8 0, ptr %4, align 1, !annotation !13
  %6 = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 8, i32 8
  %7 = load ptr, ptr %6, align 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 160) #5, !srcloc !9
  tail call void @ata_sff_pause(ptr noundef %5) #5
  %8 = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 8, i32 4
  %9 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 85) #5, !srcloc !9
  %10 = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 8, i32 5
  %11 = load ptr, ptr %10, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 170) #5, !srcloc !9
  %12 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 170) #5, !srcloc !9
  %13 = load ptr, ptr %10, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 85) #5, !srcloc !9
  %14 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 85) #5, !srcloc !9
  %15 = load ptr, ptr %10, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 170) #5, !srcloc !9
  %16 = load ptr, ptr %8, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %18 = load ptr, ptr %10, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %20 = and i32 %17, 255
  %21 = icmp eq i32 %20, 85
  %22 = and i32 %19, 255
  %23 = icmp eq i32 %22, 170
  %24 = select i1 %21, i1 %23, i1 false
  %25 = zext i1 %24 to i32
  %26 = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 9
  %27 = load i8, ptr %26, align 4
  %28 = zext i8 %27 to i32
  %29 = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 8, i32 12
  %30 = load ptr, ptr %29, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #5, !srcloc !9
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 4294960) #5
  %32 = load i8, ptr %26, align 4
  %33 = or i8 %32, 4
  %34 = zext i8 %33 to i32
  %35 = load ptr, ptr %29, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %34) #5, !srcloc !9
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 4294960) #5
  %37 = load i8, ptr %26, align 4
  %38 = zext i8 %37 to i32
  %39 = load ptr, ptr %29, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %38) #5, !srcloc !9
  %40 = load i8, ptr %26, align 4
  %41 = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 10
  store i8 %40, ptr %41, align 1
  %42 = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 25
  %43 = load ptr, ptr %42, align 64
  tail call void @ata_msleep(ptr noundef %43, i32 noundef 150) #5
  %44 = tail call i32 @ata_sff_wait_ready(ptr noundef %42, i32 noundef %2) #5
  switch i32 %44, label %48 [
    i32 0, label %67
    i32 -19, label %45
  ]

45:                                               ; preds = %3
  %46 = tail call i32 @sata_scr_valid(ptr noundef %0) #5
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %67, label %48

48:                                               ; preds = %45, %3
  %49 = load ptr, ptr %0, align 64
  %50 = getelementptr inbounds %struct.ata_port, ptr %49, i32 0, i32 27
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.ata_port, ptr %49, i32 0, i32 26
  %55 = load ptr, ptr %54, align 64
  %56 = icmp eq ptr %55, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %53, %48
  %58 = getelementptr inbounds %struct.ata_port, ptr %49, i32 0, i32 5
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %59, i32 noundef %61, i32 noundef %44) #6
  br label %70

63:                                               ; preds = %53
  %64 = getelementptr inbounds %struct.ata_port, ptr %49, i32 0, i32 5
  %65 = load i32, ptr %64, align 4
  %66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %65, i32 noundef %44) #6
  br label %70

67:                                               ; preds = %45, %3
  %68 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 14
  %69 = call i32 @ata_sff_dev_classify(ptr noundef %68, i32 noundef %25, ptr noundef nonnull %4) #5
  store i32 %69, ptr %1, align 4
  br label %70

70:                                               ; preds = %67, %63, %57
  %71 = phi i32 [ 0, %67 ], [ %44, %63 ], [ %44, %57 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #5
  ret i32 %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sata_rcar_scr_read(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = icmp ugt i32 %1, 3
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 64
  %7 = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 8, i32 14
  %8 = load ptr, ptr %7, align 8
  %9 = shl nuw nsw i32 %1, 2
  %10 = getelementptr i8, ptr %8, i32 %9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  store i32 %11, ptr %2, align 4
  br label %12

12:                                               ; preds = %5, %3
  %13 = phi i32 [ 0, %5 ], [ -22, %3 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sata_rcar_scr_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = icmp ugt i32 %1, 3
  br i1 %4, label %11, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 64
  %7 = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 8, i32 14
  %8 = load ptr, ptr %7, align 8
  %9 = shl nuw nsw i32 %1, 2
  %10 = getelementptr i8, ptr %8, i32 %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %2) #5, !srcloc !9
  br label %11

11:                                               ; preds = %5, %3
  %12 = phi i32 [ 0, %5 ], [ -22, %3 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sata_rcar_dev_select(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 8
  %4 = load ptr, ptr %3, align 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 160) #5, !srcloc !9
  tail call void @ata_sff_pause(ptr noundef %0) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sata_rcar_set_devctl(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #2 {
  %3 = zext i8 %1 to i32
  %4 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 12
  %5 = load ptr, ptr %4, align 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #5, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @sata_rcar_check_status(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %5 = trunc i32 %4 to i8
  ret i8 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @sata_rcar_check_altstatus(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %5 = trunc i32 %4 to i8
  ret i8 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sata_rcar_tf_load(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = load i32, ptr %1, align 4
  %4 = and i32 %3, 2
  %5 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 2
  %6 = load i8, ptr %5, align 1
  %7 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 10
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %6, %8
  br i1 %9, label %30, label %10

10:                                               ; preds = %2
  %11 = zext i8 %6 to i32
  %12 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 12
  %13 = load ptr, ptr %12, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #5, !srcloc !9
  %14 = load i8, ptr %5, align 1
  store i8 %14, ptr %7, align 1
  %15 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 1
  br label %16

16:                                               ; preds = %24, %10
  %17 = phi i32 [ 1000, %10 ], [ %25, %24 ]
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 2147480) #5
  %19 = load ptr, ptr %15, align 4
  %20 = getelementptr inbounds %struct.ata_port_operations, ptr %19, i32 0, i32 39
  %21 = load ptr, ptr %20, align 4
  %22 = tail call zeroext i8 %21(ptr noundef %0) #5
  %23 = icmp eq i8 %22, -1
  br i1 %23, label %30, label %24

24:                                               ; preds = %16
  %25 = add nsw i32 %17, -1
  %26 = and i8 %22, -120
  %27 = icmp ne i8 %26, 0
  %28 = icmp ne i32 %25, 0
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %16, label %30

30:                                               ; preds = %24, %16, %2
  %31 = icmp eq i32 %4, 0
  br i1 %31, label %88, label %32

32:                                               ; preds = %30
  %33 = load i32, ptr %1, align 4
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %62, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 3
  %38 = load i8, ptr %37, align 2
  %39 = zext i8 %38 to i32
  %40 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 3
  %41 = load ptr, ptr %40, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %39) #5, !srcloc !9
  %42 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 4
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  %45 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 4
  %46 = load ptr, ptr %45, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %44) #5, !srcloc !9
  %47 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 5
  %48 = load i8, ptr %47, align 4
  %49 = zext i8 %48 to i32
  %50 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 5
  %51 = load ptr, ptr %50, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #5, !srcloc !9
  %52 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 6
  %53 = load i8, ptr %52, align 1
  %54 = zext i8 %53 to i32
  %55 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 6
  %56 = load ptr, ptr %55, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %54) #5, !srcloc !9
  %57 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 7
  %58 = load i8, ptr %57, align 2
  %59 = zext i8 %58 to i32
  %60 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 7
  %61 = load ptr, ptr %60, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %59) #5, !srcloc !9
  br label %62

62:                                               ; preds = %36, %32
  %63 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 8
  %64 = load i8, ptr %63, align 1
  %65 = zext i8 %64 to i32
  %66 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 3
  %67 = load ptr, ptr %66, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %65) #5, !srcloc !9
  %68 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 9
  %69 = load i8, ptr %68, align 4
  %70 = zext i8 %69 to i32
  %71 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 4
  %72 = load ptr, ptr %71, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %70) #5, !srcloc !9
  %73 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 10
  %74 = load i8, ptr %73, align 1
  %75 = zext i8 %74 to i32
  %76 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 5
  %77 = load ptr, ptr %76, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %75) #5, !srcloc !9
  %78 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 11
  %79 = load i8, ptr %78, align 2
  %80 = zext i8 %79 to i32
  %81 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 6
  %82 = load ptr, ptr %81, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 %80) #5, !srcloc !9
  %83 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 12
  %84 = load i8, ptr %83, align 1
  %85 = zext i8 %84 to i32
  %86 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 7
  %87 = load ptr, ptr %86, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %85) #5, !srcloc !9
  br label %88

88:                                               ; preds = %62, %30
  %89 = load i32, ptr %1, align 4
  %90 = and i32 %89, 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 13
  %94 = load i8, ptr %93, align 4
  %95 = zext i8 %94 to i32
  %96 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 8
  %97 = load ptr, ptr %96, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 %95) #5, !srcloc !9
  br label %98

98:                                               ; preds = %92, %88
  %99 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 1
  br label %100

100:                                              ; preds = %108, %98
  %101 = phi i32 [ 1000, %98 ], [ %109, %108 ]
  %102 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %102(i32 noundef 2147480) #5
  %103 = load ptr, ptr %99, align 4
  %104 = getelementptr inbounds %struct.ata_port_operations, ptr %103, i32 0, i32 39
  %105 = load ptr, ptr %104, align 4
  %106 = tail call zeroext i8 %105(ptr noundef %0) #5
  %107 = icmp eq i8 %106, -1
  br i1 %107, label %114, label %108

108:                                              ; preds = %100
  %109 = add nsw i32 %101, -1
  %110 = and i8 %106, -120
  %111 = icmp ne i8 %110, 0
  %112 = icmp ne i32 %109, 0
  %113 = select i1 %111, i1 %112, i1 false
  br i1 %113, label %100, label %114

114:                                              ; preds = %108, %100
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sata_rcar_tf_read(ptr nocapture noundef %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %6 = trunc i32 %5 to i8
  %7 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 14
  store i8 %6, ptr %7, align 1
  %8 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %11 = trunc i32 %10 to i8
  %12 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 8
  store i8 %11, ptr %12, align 1
  %13 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %16 = trunc i32 %15 to i8
  %17 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 9
  store i8 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 10
  store i8 %21, ptr %22, align 1
  %23 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 6
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 11
  store i8 %26, ptr %27, align 2
  %28 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 7
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 12
  store i8 %31, ptr %32, align 1
  %33 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 8
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 13
  store i8 %36, ptr %37, align 4
  %38 = load i32, ptr %1, align 4
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %73, label %41

41:                                               ; preds = %2
  %42 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 2
  %43 = load i8, ptr %42, align 1
  %44 = or i8 %43, -128
  %45 = zext i8 %44 to i32
  %46 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 12
  %47 = load ptr, ptr %46, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %45) #5, !srcloc !9
  %48 = load ptr, ptr %8, align 4
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %50 = trunc i32 %49 to i8
  %51 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 3
  store i8 %50, ptr %51, align 2
  %52 = load ptr, ptr %13, align 4
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %54 = trunc i32 %53 to i8
  %55 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 4
  store i8 %54, ptr %55, align 1
  %56 = load ptr, ptr %18, align 4
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %58 = trunc i32 %57 to i8
  %59 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 5
  store i8 %58, ptr %59, align 4
  %60 = load ptr, ptr %23, align 4
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %62 = trunc i32 %61 to i8
  %63 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 6
  store i8 %62, ptr %63, align 1
  %64 = load ptr, ptr %28, align 4
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %66 = trunc i32 %65 to i8
  %67 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 7
  store i8 %66, ptr %67, align 2
  %68 = load i8, ptr %42, align 1
  %69 = zext i8 %68 to i32
  %70 = load ptr, ptr %46, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %69) #5, !srcloc !9
  %71 = load i8, ptr %42, align 1
  %72 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 10
  store i8 %71, ptr %72, align 1
  br label %73

73:                                               ; preds = %41, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sata_rcar_exec_command(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 14
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  %6 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 10
  %7 = load ptr, ptr %6, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #5, !srcloc !9
  tail call void @ata_sff_pause(ptr noundef %0) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sata_rcar_data_xfer(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 64
  %8 = load ptr, ptr %7, align 64
  %9 = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 8, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = lshr i32 %2, 1
  %12 = icmp eq i32 %3, 0
  %13 = icmp ult i32 %2, 2
  br i1 %12, label %14, label %23

14:                                               ; preds = %4
  br i1 %13, label %35, label %15

15:                                               ; preds = %15, %14
  %16 = phi i32 [ %18, %15 ], [ %11, %14 ]
  %17 = phi ptr [ %21, %15 ], [ %1, %14 ]
  %18 = add nsw i32 %16, -1
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %20 = trunc i32 %19 to i16
  %21 = getelementptr i16, ptr %17, i32 1
  store i16 %20, ptr %17, align 2
  %22 = icmp eq i32 %18, 0
  br i1 %22, label %32, label %15

23:                                               ; preds = %4
  br i1 %13, label %40, label %24

24:                                               ; preds = %24, %23
  %25 = phi ptr [ %28, %24 ], [ %1, %23 ]
  %26 = phi i32 [ %27, %24 ], [ %11, %23 ]
  %27 = add nsw i32 %26, -1
  %28 = getelementptr i16, ptr %25, i32 1
  %29 = load i16, ptr %25, align 2
  %30 = zext i16 %29 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %30) #5, !srcloc !9
  %31 = icmp eq i32 %27, 0
  br i1 %31, label %32, label %24

32:                                               ; preds = %24, %15
  %33 = and i32 %2, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %58, label %45, !prof !14

35:                                               ; preds = %14
  %36 = icmp eq i32 %2, 0
  br i1 %36, label %58, label %37, !prof !14

37:                                               ; preds = %35
  %38 = add nsw i32 %2, -1
  %39 = getelementptr i8, ptr %1, i32 %38
  br label %48

40:                                               ; preds = %23
  %41 = icmp eq i32 %2, 0
  br i1 %41, label %58, label %42, !prof !14

42:                                               ; preds = %40
  %43 = add nsw i32 %2, -1
  %44 = getelementptr i8, ptr %1, i32 %43
  br label %52

45:                                               ; preds = %32
  %46 = add i32 %2, -1
  %47 = getelementptr i8, ptr %1, i32 %46
  br i1 %12, label %48, label %52

48:                                               ; preds = %45, %37
  %49 = phi ptr [ %39, %37 ], [ %47, %45 ]
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %51 = trunc i32 %50 to i8
  store i8 %51, ptr %49, align 1
  br label %56

52:                                               ; preds = %45, %42
  %53 = phi ptr [ %44, %42 ], [ %47, %45 ]
  %54 = load i8, ptr %53, align 1
  %55 = zext i8 %54 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %55) #5, !srcloc !9
  br label %56

56:                                               ; preds = %52, %48
  %57 = add nuw i32 %11, 1
  br label %58

58:                                               ; preds = %56, %40, %35, %32
  %59 = phi i32 [ %57, %56 ], [ %11, %32 ], [ 0, %40 ], [ 0, %35 ]
  %60 = shl i32 %59, 1
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sata_rcar_drain_fifo(ptr noundef readonly %0) #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %31, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 11
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %31, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ata_port_operations, ptr %10, i32 0, i32 39
  %12 = load ptr, ptr %11, align 4
  %13 = tail call zeroext i8 %12(ptr noundef %8) #5
  %14 = and i8 %13, 8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 8, i32 1
  br label %18

18:                                               ; preds = %18, %16
  %19 = phi i32 [ 0, %16 ], [ %22, %18 ]
  %20 = load ptr, ptr %17, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %22 = add nuw nsw i32 %19, 2
  %23 = load ptr, ptr %9, align 4
  %24 = getelementptr inbounds %struct.ata_port_operations, ptr %23, i32 0, i32 39
  %25 = load ptr, ptr %24, align 4
  %26 = tail call zeroext i8 %25(ptr noundef %8) #5
  %27 = and i8 %26, 8
  %28 = icmp ne i8 %27, 0
  %29 = icmp ult i32 %19, 65534
  %30 = select i1 %28, i1 %29, i1 false
  br i1 %30, label %18, label %31

31:                                               ; preds = %18, %7, %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sata_rcar_bmdma_setup(ptr noundef %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 31
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ata_host, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !15
  tail call void @arm_heavy_mb() #5
  %10 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 14
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr i8, ptr %9, i32 408
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %11) #5, !srcloc !9
  %13 = getelementptr i8, ptr %9, i32 384
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %15 = and i32 %14, -7
  %16 = and i32 %14, 1
  %17 = icmp eq i32 %16, 0
  %18 = and i32 %14, -8
  %19 = or i32 %18, 2
  %20 = select i1 %17, i32 %15, i32 %19
  %21 = lshr i32 %4, 1
  %22 = and i32 %21, 4
  %23 = or i32 %20, %22
  %24 = xor i32 %23, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %24) #5, !srcloc !9
  %25 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.ata_port_operations, ptr %26, i32 0, i32 43
  %28 = load ptr, ptr %27, align 4
  tail call void %28(ptr noundef %2, ptr noundef %3) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sata_rcar_bmdma_start(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 31
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ata_host, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 384
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %10 = and i32 %9, -4
  %11 = or i32 %10, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %11) #5, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sata_rcar_bmdma_stop(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 31
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ata_host, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 384
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = and i32 %9, -4
  %14 = or i32 %13, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %14) #5, !srcloc !9
  br label %15

15:                                               ; preds = %12, %1
  tail call void @ata_sff_dma_pause(ptr noundef %2) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @sata_rcar_bmdma_status(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 31
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 388
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %9 = trunc i32 %8 to i8
  %10 = lshr i8 %9, 2
  %11 = and i8 %10, 4
  %12 = and i8 %9, 1
  %13 = or i8 %11, %12
  ret i8 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_sff_freeze(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_sff_thaw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_scr_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_sff_dev_classify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_msleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_sff_wait_ready(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_sff_pause(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_sff_dma_pause(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sata_rcar_gen1_phy_write(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr i8, ptr %5, i32 524
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 0) #5, !srcloc !9
  %7 = getelementptr i8, ptr %5, i32 520
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 1) #5, !srcloc !9
  %8 = getelementptr i8, ptr %5, i32 516
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %2) #5, !srcloc !9
  %9 = icmp eq i32 %3, 0
  %10 = or i16 %1, 1024
  %11 = select i1 %9, i16 %1, i16 %10
  %12 = or i16 %11, 256
  %13 = zext i16 %12 to i32
  %14 = getelementptr i8, ptr %5, i32 512
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %13) #5, !srcloc !9
  %15 = getelementptr i8, ptr %5, i32 532
  br label %19

16:                                               ; preds = %19
  %17 = add nuw nsw i32 %20, 1
  %18 = icmp eq i32 %17, 100
  br i1 %18, label %24, label %19

19:                                               ; preds = %16, %4
  %20 = phi i32 [ 0, %4 ], [ %17, %16 ]
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %16, label %26

24:                                               ; preds = %16
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.sata_rcar_gen1_phy_write) #6
  br label %26

26:                                               ; preds = %24, %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 0) #5, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_bmdma_port_intr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_ehi_clear_desc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_ehi_push_desc(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_port_freeze(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_port_abort(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_queuecmd(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_ioctl(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_slave_config(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_scsi_slave_destroy(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ata_scsi_dma_need_drain(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_std_bios_param(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_scsi_unlock_native_capacity(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_host_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sata_rcar_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @ata_host_suspend(ptr noundef %3, [1 x i32] [i32 2]) #5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %6, i32 392
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 0) #5, !srcloc !9
  %11 = getelementptr inbounds %struct.sata_rcar_priv, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr i8, ptr %6, i32 5388
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %12) #5, !srcloc !9
  %14 = tail call i32 @__pm_runtime_idle(ptr noundef %0, i32 noundef 5) #5
  br label %15

15:                                               ; preds = %9, %1
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sata_rcar_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 4) #5
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = tail call i32 @__pm_runtime_idle(ptr noundef %0, i32 noundef 5) #5
  br label %36

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.sata_rcar_priv, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %29

15:                                               ; preds = %11
  %16 = load ptr, ptr %5, align 4
  %17 = getelementptr i8, ptr %16, i32 384
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %19 = or i32 %18, 128
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %19) #5, !srcloc !9
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %21 = or i32 %20, 67592
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %21) #5, !srcloc !9
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %23 = and i32 %22, -129
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %23) #5, !srcloc !9
  %24 = getelementptr i8, ptr %16, i32 5384
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 0) #5, !srcloc !9
  %25 = getelementptr inbounds %struct.sata_rcar_priv, ptr %5, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr i8, ptr %16, i32 5388
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %26) #5, !srcloc !9
  %28 = getelementptr i8, ptr %16, i32 392
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 2048) #5, !srcloc !9
  br label %35

29:                                               ; preds = %11
  %30 = getelementptr i8, ptr %6, i32 5384
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 0) #5, !srcloc !9
  %31 = getelementptr inbounds %struct.sata_rcar_priv, ptr %5, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr i8, ptr %6, i32 5388
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %32) #5, !srcloc !9
  %34 = getelementptr i8, ptr %6, i32 392
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 2048) #5, !srcloc !9
  br label %35

35:                                               ; preds = %29, %15
  tail call void @ata_host_resume(ptr noundef %3) #5
  br label %36

36:                                               ; preds = %35, %9
  %37 = phi i32 [ %7, %9 ], [ 0, %35 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sata_rcar_restore(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 4) #5
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call i32 @__pm_runtime_idle(ptr noundef %0, i32 noundef 5) #5
  br label %50

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 12
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 1
  store ptr @sata_rcar_port_ops, ptr %14, align 4
  %15 = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 15
  store i32 31, ptr %15, align 8
  %16 = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 17
  store i32 127, ptr %16, align 32
  %17 = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = or i32 %18, 2
  store i32 %19, ptr %17, align 4
  %20 = getelementptr inbounds %struct.sata_rcar_priv, ptr %12, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 3
  br i1 %22, label %23, label %25

23:                                               ; preds = %8
  %24 = or i32 %18, 8388610
  store i32 %24, ptr %17, align 4
  br label %25

25:                                               ; preds = %23, %8
  %26 = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 8
  %27 = getelementptr i8, ptr %13, i32 4352
  store ptr %27, ptr %26, align 4
  %28 = getelementptr i8, ptr %13, i32 4612
  %29 = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 8, i32 12
  store ptr %28, ptr %29, align 4
  %30 = getelementptr i8, ptr %13, i32 5120
  %31 = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 8, i32 14
  store ptr %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 8, i32 11
  store ptr %28, ptr %32, align 4
  %33 = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 8, i32 1
  store ptr %27, ptr %33, align 4
  %34 = getelementptr i8, ptr %13, i32 4356
  %35 = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 8, i32 2
  store ptr %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 8, i32 3
  store ptr %34, ptr %36, align 4
  %37 = getelementptr i8, ptr %13, i32 4360
  %38 = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 8, i32 4
  store ptr %37, ptr %38, align 4
  %39 = getelementptr i8, ptr %13, i32 4364
  %40 = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 8, i32 5
  store ptr %39, ptr %40, align 4
  %41 = getelementptr i8, ptr %13, i32 4368
  %42 = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 8, i32 6
  store ptr %41, ptr %42, align 4
  %43 = getelementptr i8, ptr %13, i32 4372
  %44 = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 8, i32 7
  store ptr %43, ptr %44, align 4
  %45 = getelementptr i8, ptr %13, i32 4376
  %46 = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 8, i32 8
  store ptr %45, ptr %46, align 4
  %47 = getelementptr i8, ptr %13, i32 4380
  %48 = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 8, i32 9
  store ptr %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 8, i32 10
  store ptr %47, ptr %49, align 4
  tail call fastcc void @sata_rcar_init_controller(ptr noundef %3)
  tail call void @ata_host_resume(ptr noundef %3) #5
  br label %50

50:                                               ; preds = %25, %6
  %51 = phi i32 [ %4, %6 ], [ 0, %25 ]
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_host_suspend(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_host_resume(ptr noundef) local_unnamed_addr #1

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
!8 = !{i64 2151143500}
!9 = !{i64 3602407}
!10 = !{i64 3602825}
!11 = !{i64 2151142278}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{!"auto-init"}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2154205475}
