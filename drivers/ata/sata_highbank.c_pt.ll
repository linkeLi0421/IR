; ModuleID = '/llk/IR/drivers/ata/sata_highbank.c_pt.bc'
source_filename = "../drivers/ata/sata_highbank.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ata_port_info = type { i32, i32, i32, i32, i32, ptr, ptr }
%struct.ata_port_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.phy_lane_info = type { ptr, i8, i8, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ahci_host_priv = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [5 x ptr], ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.ecx_plat_data = type { i32, i32, i32, [3 x ptr], i32, [8 x i32] }
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
%struct.ahci_port_priv = type { ptr, ptr, i32, ptr, i32, ptr, i32, i8, %struct.spinlock, i32, i8, i8, i32, [8 x %struct.ahci_em_priv], ptr }
%struct.ahci_em_priv = type { i32, %struct.timer_list, i32, i32, i32, ptr }

@__initcall__kmod_sata_highbank__292_625_ahci_highbank_driver_init6 = internal global ptr @ahci_highbank_driver_init, section ".initcall6.init", align 4
@ahci_highbank_driver = internal global %struct.platform_driver { ptr @ahci_highbank_probe, ptr @ata_platform_remove_one, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ahci_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahci_highbank_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_ahci_highbank_driver_exit = internal global ptr @ahci_highbank_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description293 = internal constant [69 x i8] c"sata_highbank.description=Calxeda Highbank AHCI SATA platform driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author294 = internal constant [65 x i8] c"sata_highbank.author=Mark Langsdorf <mark.langsdorf@calxeda.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [45 x i8] c"sata_highbank.file=drivers/ata/sata_highbank\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [26 x i8] c"sata_highbank.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias297 = internal constant [34 x i8] c"sata_highbank.alias=sata:highbank\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [14 x i8] c"highbank-ahci\00", align 1
@ahci_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"calxeda,hb-ahci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@ahci_highbank_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @ahci_highbank_suspend, ptr @ahci_highbank_resume, ptr @ahci_highbank_suspend, ptr @ahci_highbank_resume, ptr @ahci_highbank_suspend, ptr @ahci_highbank_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@ahci_highbank_port_info = internal unnamed_addr constant %struct.ata_port_info { i32 393346, i32 0, i32 31, i32 0, i32 127, ptr @ahci_highbank_ops, ptr null }, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"no mmio space\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"can't alloc ahci_host_priv\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"can't alloc ecx_plat_data\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"can't map %pR\0A\00", align 1
@ahci_ignore_sss = external dso_local local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"mmio %pR\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"port 0x%x\00", align 1
@ata_dummy_port_ops = external dso_local global %struct.ata_port_operations, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"platform\00", align 1
@ahci_highbank_platform_sht = internal global %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str.18, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_change_queue_depth, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.18, ptr null, i32 32, i32 -1, i16 168, i16 0, i32 0, i32 0, i32 -1, i32 0, i16 0, i8 0, i32 1, i8 8, i32 0, ptr @ahci_shost_groups, ptr @ahci_sdev_groups, i64 0, ptr null, i32 0 }, align 8
@ahci_highbank_ops = internal global %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahci_highbank_hardreset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ecx_transmit_led_message, ptr null, ptr null, ptr @ahci_ops }, align 4
@ahci_ops = external dso_local global %struct.ata_port_operations, align 4
@ahci_highbank_hardreset.timing = internal constant [3 x i32] [i32 5, i32 100, i32 500], align 4
@port_data = internal unnamed_addr global [24 x %struct.phy_lane_info] zeroinitializer, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@cphy_lock = internal global %struct.spinlock zeroinitializer, align 4
@sgpio_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"calxeda,port-phys\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"#phy-cells\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"phydev\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"calxeda,tx-atten\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"calxeda,sgpio\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"failed to get GPIO %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"CX SGPIO\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"calxeda,led-order\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"calxeda,pre-clocks\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"calxeda,post-clocks\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"sata_highbank\00", align 1
@ahci_shost_groups = external dso_local global [0 x ptr], align 4
@ahci_sdev_groups = external dso_local global [0 x ptr], align 4
@.str.19 = private unnamed_addr constant [45 x i8] c"firmware update required for suspend/resume\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias297, ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__exitcall_ahci_highbank_driver_exit, ptr @__initcall__kmod_sata_highbank__292_625_ahci_highbank_driver_init6, ptr @ahci_highbank_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ahci_highbank_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ahci_highbank_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @ahci_highbank_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @ahci_highbank_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahci_highbank_probe(ptr noundef %0) #2 {
  %2 = alloca [6 x ptr], align 4
  %3 = alloca [6 x ptr], align 4
  %4 = alloca [24 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.of_phandle_args, align 4
  %7 = alloca %struct.ata_port_info, align 4
  %8 = alloca [2 x ptr], align 8
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %7) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %7, ptr noundef nonnull align 4 dereferenceable(28) @ahci_highbank_port_info, i32 28, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  store ptr %7, ptr %8, align 8
  %10 = getelementptr inbounds ptr, ptr %8, i32 1
  store ptr null, ptr %10, align 4
  %11 = call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.1) #9
  br label %231

14:                                               ; preds = %1
  %15 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #8
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %231, label %17

17:                                               ; preds = %14
  %18 = icmp eq i32 %15, 0
  br i1 %18, label %231, label %19

19:                                               ; preds = %17
  %20 = call noalias ptr @devm_kmalloc(ptr noundef %9, i32 noundef 132, i32 noundef 3520) #8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.2) #9
  br label %231

23:                                               ; preds = %19
  %24 = call noalias ptr @devm_kmalloc(ptr noundef %9, i32 noundef 60, i32 noundef 3520) #8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.3) #9
  br label %231

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.ahci_host_priv, ptr %20, i32 0, i32 24
  store i32 %15, ptr %28, align 4
  %29 = getelementptr inbounds %struct.ata_port_info, ptr %7, i32 0, i32 6
  %30 = load ptr, ptr %29, align 4
  %31 = ptrtoint ptr %30 to i32
  %32 = load i32, ptr %20, align 4
  %33 = or i32 %32, %31
  store i32 %33, ptr %20, align 4
  %34 = load i32, ptr %11, align 4
  %35 = getelementptr inbounds %struct.resource, ptr %11, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = sub i32 1, %34
  %38 = add i32 %37, %36
  %39 = call ptr @devm_ioremap(ptr noundef %9, i32 noundef %34, i32 noundef %38) #8
  %40 = getelementptr inbounds %struct.ahci_host_priv, ptr %20, i32 0, i32 3
  store ptr %39, ptr %40, align 4
  %41 = icmp eq ptr %39, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %27
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.4, ptr noundef nonnull %11) #9
  br label %231

43:                                               ; preds = %27
  %44 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %45 = load ptr, ptr %44, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %2, i8 0, i32 24, i1 false) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false) #8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(96) %4, i8 0, i32 96, i1 false) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(192) @port_data, i8 0, i32 192, i1 false) #8
  %46 = getelementptr inbounds %struct.of_phandle_args, ptr %6, i32 0, i32 2
  br label %47

47:                                               ; preds = %77, %43
  %48 = phi i32 [ 0, %43 ], [ %79, %77 ]
  %49 = phi i32 [ 0, %43 ], [ %91, %77 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %6, i8 0, i32 72, i1 false) #8, !annotation !8
  %50 = call i32 @__of_parse_phandle_with_args(ptr noundef %45, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef -1, i32 noundef %49, ptr noundef nonnull %6) #8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %95

52:                                               ; preds = %47
  %53 = icmp sgt i32 %48, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %52
  %55 = load ptr, ptr %6, align 4
  br label %56

56:                                               ; preds = %61, %54
  %57 = phi i32 [ 0, %54 ], [ %62, %61 ]
  %58 = getelementptr [6 x ptr], ptr %3, i32 0, i32 %57
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, %55
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = add nuw nsw i32 %57, 1
  %63 = icmp eq i32 %62, %48
  br i1 %63, label %64, label %56

64:                                               ; preds = %61, %56, %52
  %65 = phi i32 [ 0, %52 ], [ %48, %61 ], [ %57, %56 ]
  %66 = getelementptr [6 x ptr], ptr %3, i32 0, i32 %65
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %77

69:                                               ; preds = %64
  %70 = load ptr, ptr %6, align 4
  store ptr %70, ptr %66, align 4
  %71 = call ptr @of_iomap(ptr noundef %70, i32 noundef 0) #8
  %72 = getelementptr [6 x ptr], ptr %2, i32 0, i32 %65
  store ptr %71, ptr %72, align 4
  %73 = icmp eq ptr %71, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  br label %108

75:                                               ; preds = %69
  %76 = add i32 %48, 1
  br label %77

77:                                               ; preds = %75, %64
  %78 = phi ptr [ %70, %75 ], [ %67, %64 ]
  %79 = phi i32 [ %76, %75 ], [ %48, %64 ]
  %80 = load i32, ptr %46, align 4
  %81 = trunc i32 %80 to i8
  %82 = getelementptr [24 x %struct.phy_lane_info], ptr @port_data, i32 0, i32 %49
  %83 = getelementptr [24 x %struct.phy_lane_info], ptr @port_data, i32 0, i32 %49, i32 1
  store i8 %81, ptr %83, align 4
  %84 = call i32 @of_property_read_variable_u32_array(ptr noundef %78, ptr noundef nonnull @.str.10, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0) #8
  %85 = load i32, ptr %5, align 4
  %86 = trunc i32 %85 to i8
  %87 = getelementptr [24 x %struct.phy_lane_info], ptr @port_data, i32 0, i32 %49, i32 2
  store i8 %86, ptr %87, align 1
  %88 = getelementptr [6 x ptr], ptr %2, i32 0, i32 %65
  %89 = load ptr, ptr %88, align 4
  store ptr %89, ptr %82, align 4
  %90 = load ptr, ptr %6, align 4
  call void @of_node_put(ptr noundef %90) #8
  %91 = add nuw nsw i32 %49, 1
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  %92 = icmp eq i32 %91, 24
  br i1 %92, label %93, label %47

93:                                               ; preds = %77
  %94 = call i32 @of_property_read_variable_u32_array(ptr noundef %45, ptr noundef nonnull @.str.11, ptr noundef nonnull %4, i32 noundef 24, i32 noundef 0) #8
  br label %98

95:                                               ; preds = %47
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  %96 = call i32 @of_property_read_variable_u32_array(ptr noundef %45, ptr noundef nonnull @.str.11, ptr noundef nonnull %4, i32 noundef %49, i32 noundef 0) #8
  %97 = icmp eq i32 %49, 0
  br i1 %97, label %108, label %98

98:                                               ; preds = %95, %93
  %99 = phi i32 [ 24, %93 ], [ %49, %95 ]
  br label %100

100:                                              ; preds = %100, %98
  %101 = phi i32 [ %106, %100 ], [ 0, %98 ]
  %102 = getelementptr [24 x i32], ptr %4, i32 0, i32 %101
  %103 = load i32, ptr %102, align 4
  %104 = trunc i32 %103 to i8
  %105 = getelementptr [24 x %struct.phy_lane_info], ptr @port_data, i32 0, i32 %101, i32 3
  store i8 %104, ptr %105, align 2
  %106 = add nuw nsw i32 %101, 1
  %107 = icmp eq i32 %106, %99
  br i1 %107, label %108, label %100

108:                                              ; preds = %100, %95, %74
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #8
  call void @ahci_save_initial_config(ptr noundef %9, ptr noundef nonnull %20) #8
  %109 = getelementptr inbounds %struct.ahci_host_priv, ptr %20, i32 0, i32 4
  %110 = load i32, ptr %109, align 4
  %111 = and i32 %110, 1073741824
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %108
  %114 = load i32, ptr %7, align 4
  %115 = or i32 %114, 1024
  store i32 %115, ptr %7, align 4
  br label %116

116:                                              ; preds = %113, %108
  %117 = and i32 %110, 131072
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %116
  %120 = load i32, ptr %7, align 4
  %121 = or i32 %120, 524288
  store i32 %121, ptr %7, align 4
  br label %122

122:                                              ; preds = %119, %116
  %123 = icmp sgt i32 %110, -1
  br i1 %123, label %127, label %124

124:                                              ; preds = %122
  %125 = call i32 @dma_set_coherent_mask(ptr noundef %9, i64 noundef -1) #8
  %126 = load i32, ptr %109, align 4
  br label %127

127:                                              ; preds = %124, %122
  %128 = phi i32 [ %126, %124 ], [ %110, %122 ]
  %129 = and i32 %128, 31
  %130 = add nuw nsw i32 %129, 1
  %131 = getelementptr inbounds %struct.ahci_host_priv, ptr %20, i32 0, i32 7
  %132 = load i32, ptr %131, align 4
  %133 = icmp eq i32 %132, 0
  %134 = call i32 @llvm.ctlz.i32(i32 %132, i1 false) #8, !range !9
  %135 = sub nuw nsw i32 32, %134
  %136 = select i1 %133, i32 0, i32 %135
  %137 = call i32 @llvm.smax.i32(i32 %130, i32 %136)
  store i32 %137, ptr %24, align 4
  %138 = getelementptr inbounds %struct.ahci_host_priv, ptr %20, i32 0, i32 23
  store ptr %24, ptr %138, align 4
  %139 = load ptr, ptr %44, align 8
  %140 = call ptr @devm_gpiod_get_index(ptr noundef %9, ptr noundef nonnull @.str.12, i32 noundef 0, i32 noundef 7) #8
  %141 = icmp ugt ptr %140, inttoptr (i32 -4096 to ptr)
  br i1 %141, label %142, label %143

142:                                              ; preds = %127
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.13, i32 noundef 0) #9
  br label %146

143:                                              ; preds = %127
  %144 = call i32 @gpiod_set_consumer_name(ptr noundef %140, ptr noundef nonnull @.str.14) #8
  %145 = getelementptr %struct.ecx_plat_data, ptr %24, i32 0, i32 3, i32 0
  store ptr %140, ptr %145, align 4
  br label %146

146:                                              ; preds = %143, %142
  %147 = call ptr @devm_gpiod_get_index(ptr noundef %9, ptr noundef nonnull @.str.12, i32 noundef 1, i32 noundef 7) #8
  %148 = icmp ugt ptr %147, inttoptr (i32 -4096 to ptr)
  br i1 %148, label %152, label %149

149:                                              ; preds = %146
  %150 = call i32 @gpiod_set_consumer_name(ptr noundef %147, ptr noundef nonnull @.str.14) #8
  %151 = getelementptr %struct.ecx_plat_data, ptr %24, i32 0, i32 3, i32 1
  store ptr %147, ptr %151, align 4
  br label %153

152:                                              ; preds = %146
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.13, i32 noundef 1) #9
  br label %153

153:                                              ; preds = %152, %149
  %154 = call ptr @devm_gpiod_get_index(ptr noundef %9, ptr noundef nonnull @.str.12, i32 noundef 2, i32 noundef 7) #8
  %155 = icmp ugt ptr %154, inttoptr (i32 -4096 to ptr)
  br i1 %155, label %159, label %156

156:                                              ; preds = %153
  %157 = call i32 @gpiod_set_consumer_name(ptr noundef %154, ptr noundef nonnull @.str.14) #8
  %158 = getelementptr %struct.ecx_plat_data, ptr %24, i32 0, i32 3, i32 2
  store ptr %154, ptr %158, align 4
  br label %160

159:                                              ; preds = %153
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.13, i32 noundef 2) #9
  br label %160

160:                                              ; preds = %159, %156
  %161 = getelementptr inbounds %struct.ecx_plat_data, ptr %24, i32 0, i32 5
  %162 = load i32, ptr %24, align 4
  %163 = call i32 @of_property_read_variable_u32_array(ptr noundef %139, ptr noundef nonnull @.str.15, ptr noundef %161, i32 noundef %162, i32 noundef 0) #8
  %164 = getelementptr inbounds %struct.ecx_plat_data, ptr %24, i32 0, i32 1
  %165 = call i32 @of_property_read_variable_u32_array(ptr noundef %139, ptr noundef nonnull @.str.16, ptr noundef %164, i32 noundef 1, i32 noundef 0) #8
  %166 = icmp sgt i32 %165, -1
  br i1 %166, label %168, label %167

167:                                              ; preds = %160
  store i32 0, ptr %164, align 4
  br label %168

168:                                              ; preds = %167, %160
  %169 = getelementptr inbounds %struct.ecx_plat_data, ptr %24, i32 0, i32 2
  %170 = call i32 @of_property_read_variable_u32_array(ptr noundef %139, ptr noundef nonnull @.str.17, ptr noundef %169, i32 noundef 1, i32 noundef 0) #8
  %171 = icmp sgt i32 %170, -1
  br i1 %171, label %173, label %172

172:                                              ; preds = %168
  store i32 0, ptr %169, align 4
  br label %173

173:                                              ; preds = %172, %168
  %174 = getelementptr inbounds %struct.ahci_host_priv, ptr %20, i32 0, i32 11
  store i32 0, ptr %174, align 4
  %175 = getelementptr inbounds %struct.ahci_host_priv, ptr %20, i32 0, i32 12
  store i32 4, ptr %175, align 4
  %176 = getelementptr inbounds %struct.ahci_host_priv, ptr %20, i32 0, i32 13
  store i32 1, ptr %176, align 4
  %177 = load i32, ptr %7, align 4
  %178 = or i32 %177, 6291456
  store i32 %178, ptr %7, align 4
  %179 = call ptr @ata_host_alloc_pinfo(ptr noundef %9, ptr noundef nonnull %8, i32 noundef %137) #8
  %180 = icmp eq ptr %179, null
  br i1 %180, label %229, label %181

181:                                              ; preds = %173
  %182 = getelementptr inbounds %struct.ata_host, ptr %179, i32 0, i32 5
  store ptr %20, ptr %182, align 4
  %183 = load i32, ptr %109, align 4
  %184 = and i32 %183, 134217728
  %185 = icmp eq i32 %184, 0
  %186 = load i32, ptr @ahci_ignore_sss, align 4
  %187 = icmp ne i32 %186, 0
  %188 = select i1 %185, i1 true, i1 %187
  br i1 %188, label %189, label %193

189:                                              ; preds = %181
  %190 = getelementptr inbounds %struct.ata_host, ptr %179, i32 0, i32 7
  %191 = load i32, ptr %190, align 4
  %192 = or i32 %191, 4
  store i32 %192, ptr %190, align 4
  br label %193

193:                                              ; preds = %189, %181
  %194 = getelementptr inbounds %struct.ata_host, ptr %179, i32 0, i32 3
  %195 = load i32, ptr %194, align 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %223, label %197

197:                                              ; preds = %219, %193
  %198 = phi i32 [ %220, %219 ], [ 0, %193 ]
  %199 = getelementptr %struct.ata_host, ptr %179, i32 0, i32 12, i32 %198
  %200 = load ptr, ptr %199, align 4
  call void (ptr, ptr, ...) @ata_port_desc(ptr noundef %200, ptr noundef nonnull @.str.5, ptr noundef nonnull %11) #8
  %201 = getelementptr inbounds %struct.ata_port, ptr %200, i32 0, i32 7
  %202 = load i32, ptr %201, align 4
  %203 = shl i32 %202, 7
  %204 = add i32 %203, 256
  call void (ptr, ptr, ...) @ata_port_desc(ptr noundef %200, ptr noundef nonnull @.str.6, i32 noundef %204) #8
  %205 = getelementptr inbounds %struct.ata_port, ptr %200, i32 0, i32 3
  %206 = load i32, ptr %205, align 4
  %207 = and i32 %206, 2097152
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %212, label %209

209:                                              ; preds = %197
  %210 = load i32, ptr %176, align 4
  %211 = getelementptr inbounds %struct.ata_port, ptr %200, i32 0, i32 47
  store i32 %210, ptr %211, align 8
  br label %212

212:                                              ; preds = %209, %197
  %213 = load i32, ptr %131, align 4
  %214 = shl nuw i32 1, %198
  %215 = and i32 %213, %214
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %212
  %218 = getelementptr inbounds %struct.ata_port, ptr %200, i32 0, i32 1
  store ptr @ata_dummy_port_ops, ptr %218, align 4
  br label %219

219:                                              ; preds = %217, %212
  %220 = add nuw i32 %198, 1
  %221 = load i32, ptr %194, align 4
  %222 = icmp ult i32 %220, %221
  br i1 %222, label %197, label %223

223:                                              ; preds = %219, %193
  %224 = call i32 @ahci_reset_controller(ptr noundef nonnull %179) #8
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %223
  call void @ahci_init_controller(ptr noundef nonnull %179) #8
  call void @ahci_print_info(ptr noundef nonnull %179, ptr noundef nonnull @.str.7) #8
  %227 = call i32 @ahci_host_activate(ptr noundef nonnull %179, ptr noundef nonnull @ahci_highbank_platform_sht) #8
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %231, label %229

229:                                              ; preds = %226, %223, %173
  %230 = phi i32 [ %224, %223 ], [ %227, %226 ], [ -12, %173 ]
  br label %231

231:                                              ; preds = %229, %226, %42, %26, %22, %17, %14, %13
  %232 = phi i32 [ %230, %229 ], [ -12, %42 ], [ -12, %26 ], [ -12, %22 ], [ -22, %13 ], [ %15, %14 ], [ -22, %17 ], [ 0, %226 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %7) #8
  ret i32 %232
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_platform_remove_one(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahci_save_initial_config(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_host_alloc_pinfo(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_port_desc(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_reset_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahci_init_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahci_print_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_host_activate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahci_highbank_hardreset(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #2 {
  %4 = alloca %struct.ata_taskfile, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = load ptr, ptr %0, align 64
  %8 = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 48
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 31
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ata_host, ptr %11, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ahci_port_priv, ptr %9, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 64
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #8
  store i8 0, ptr %5, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4, !annotation !8
  %17 = getelementptr inbounds %struct.ahci_host_priv, ptr %13, i32 0, i32 26
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 %18(ptr noundef %7) #8
  %20 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false) #8
  %21 = load ptr, ptr %20, align 64
  %22 = load ptr, ptr %21, align 64
  %23 = getelementptr inbounds %struct.ata_port, ptr %22, i32 0, i32 9
  %24 = load i8, ptr %23, align 4
  %25 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 2
  store i8 %24, ptr %25, align 1
  %26 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 14, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, i8 -96, i8 -80
  %30 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 13
  store i8 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 14
  store i8 -128, ptr %31, align 1
  call void @ata_tf_to_fis(ptr noundef nonnull %4, i8 noundef zeroext 0, i32 noundef 0, ptr noundef %16) #8
  br label %32

32:                                               ; preds = %108, %3
  %33 = phi i32 [ 100, %3 ], [ %115, %108 ]
  %34 = load ptr, ptr %0, align 64
  %35 = getelementptr inbounds %struct.ata_port, ptr %34, i32 0, i32 7
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 255
  %38 = getelementptr [24 x %struct.phy_lane_info], ptr @port_data, i32 0, i32 %37
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %51, label %41, !prof !10

41:                                               ; preds = %32
  %42 = trunc i32 %36 to i8
  %43 = getelementptr [24 x %struct.phy_lane_info], ptr @port_data, i32 0, i32 %37, i32 1
  %44 = load i8, ptr %43, align 4
  %45 = zext i8 %44 to i32
  %46 = shl nuw nsw i32 %45, 8
  %47 = add nuw nsw i32 %46, 8194
  %48 = call fastcc i32 @combo_phy_read(i8 noundef zeroext %42, i32 noundef %47) #8
  %49 = and i32 %48, -16385
  %50 = add nuw nsw i32 %46, 8197
  call fastcc void @combo_phy_write(i8 noundef zeroext %42, i32 noundef %50, i32 noundef %49) #8
  br label %51

51:                                               ; preds = %41, %32
  %52 = call i32 @sata_link_hardreset(ptr noundef %0, ptr noundef nonnull @ahci_highbank_hardreset.timing, i32 noundef %2, ptr noundef nonnull %5, ptr noundef null) #8
  %53 = load ptr, ptr %0, align 64
  %54 = getelementptr inbounds %struct.ata_port, ptr %53, i32 0, i32 7
  %55 = load i32, ptr %54, align 4
  %56 = trunc i32 %55 to i8
  %57 = and i32 %55, 255
  %58 = getelementptr [24 x %struct.phy_lane_info], ptr @port_data, i32 0, i32 %57
  %59 = getelementptr [24 x %struct.phy_lane_info], ptr @port_data, i32 0, i32 %57, i32 1
  %60 = load ptr, ptr %58, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %105, label %62, !prof !10

62:                                               ; preds = %51
  %63 = load i8, ptr %59, align 4
  %64 = zext i8 %63 to i32
  %65 = shl nuw nsw i32 %64, 8
  %66 = add nuw nsw i32 %65, 8194
  br label %67

67:                                               ; preds = %67, %62
  %68 = phi i32 [ %72, %67 ], [ 0, %62 ]
  %69 = call fastcc i32 @combo_phy_read(i8 noundef zeroext %56, i32 noundef %66) #8
  %70 = and i32 %69, 1
  %71 = icmp ne i32 %70, 0
  %72 = add nuw nsw i32 %68, 1
  %73 = icmp ult i32 %68, 1000
  %74 = select i1 %71, i1 %73, i1 false
  br i1 %74, label %67, label %75

75:                                               ; preds = %67
  %76 = load i8, ptr %59, align 4
  %77 = zext i8 %76 to i32
  %78 = shl nuw nsw i32 %77, 8
  %79 = add nuw nsw i32 %78, 8194
  %80 = call fastcc i32 @combo_phy_read(i8 noundef zeroext %56, i32 noundef %79) #8
  %81 = and i32 %80, -16385
  %82 = add nuw nsw i32 %78, 8197
  call fastcc void @combo_phy_write(i8 noundef zeroext %56, i32 noundef %82, i32 noundef %81) #8
  %83 = or i32 %80, 16384
  call fastcc void @combo_phy_write(i8 noundef zeroext %56, i32 noundef %82, i32 noundef %83) #8
  %84 = and i32 %83, -1793
  %85 = or i32 %84, 768
  call fastcc void @combo_phy_write(i8 noundef zeroext %56, i32 noundef %82, i32 noundef %85) #8
  %86 = or i32 %84, 2816
  call fastcc void @combo_phy_write(i8 noundef zeroext %56, i32 noundef %82, i32 noundef %86) #8
  %87 = and i32 %86, -3073
  call fastcc void @combo_phy_write(i8 noundef zeroext %56, i32 noundef %82, i32 noundef %87) #8
  call void @msleep(i32 noundef 15) #8
  %88 = getelementptr [24 x %struct.phy_lane_info], ptr @port_data, i32 0, i32 %57, i32 3
  %89 = load i8, ptr %88, align 2
  %90 = zext i8 %89 to i32
  %91 = and i32 %90, 8
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %75
  %94 = load i8, ptr %59, align 4
  %95 = zext i8 %94 to i32
  %96 = shl nuw nsw i32 %95, 8
  %97 = add nuw nsw i32 %96, 8193
  %98 = call fastcc i32 @combo_phy_read(i8 noundef zeroext %56, i32 noundef %97) #8
  %99 = and i32 %98, -32769
  %100 = add nuw nsw i32 %96, 8196
  call fastcc void @combo_phy_write(i8 noundef zeroext %56, i32 noundef %100, i32 noundef %99) #8
  %101 = or i32 %98, 32768
  call fastcc void @combo_phy_write(i8 noundef zeroext %56, i32 noundef %100, i32 noundef %101) #8
  %102 = shl nuw nsw i32 %90, 10
  %103 = and i32 %102, 7168
  %104 = or i32 %101, %103
  call fastcc void @combo_phy_write(i8 noundef zeroext %56, i32 noundef %100, i32 noundef %104) #8
  br label %105

105:                                              ; preds = %93, %75, %51
  %106 = call i32 @sata_scr_read(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %6) #8
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %105
  %109 = load i32, ptr %6, align 4
  %110 = and i32 %109, 3
  %111 = icmp eq i32 %110, 0
  %112 = load i8, ptr %5, align 1
  %113 = icmp ne i8 %112, 0
  %114 = select i1 %111, i1 true, i1 %113
  %115 = add nsw i32 %33, -1
  %116 = icmp eq i32 %33, 0
  %117 = select i1 %114, i1 true, i1 %116
  br i1 %117, label %118, label %32

118:                                              ; preds = %108, %105
  %119 = getelementptr inbounds %struct.ahci_host_priv, ptr %13, i32 0, i32 25
  %120 = load ptr, ptr %119, align 4
  call void %120(ptr noundef %7) #8
  %121 = load i8, ptr %5, align 1, !range !11
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %118
  %124 = call i32 @ahci_dev_classify(ptr noundef %7) #8
  store i32 %124, ptr %1, align 4
  br label %125

125:                                              ; preds = %123, %118
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ecx_transmit_led_message(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 31
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ata_host, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ahci_host_priv, ptr %7, i32 0, i32 23
  %9 = load ptr, ptr %8, align 4
  %10 = lshr i32 %1, 8
  %11 = and i32 %10, 255
  %12 = icmp ult i32 %11, 8
  br i1 %12, label %13, label %119

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 48
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ahci_host_priv, ptr %7, i32 0, i32 13
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %119, label %20

20:                                               ; preds = %13
  %21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @sgpio_lock) #8
  %22 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 7
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %1, 3145728
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr %struct.ecx_plat_data, ptr %9, i32 0, i32 5, i32 %23
  %27 = load i32, ptr %26, align 4
  %28 = mul i32 %27, 3
  %29 = shl nuw i32 1, %28
  br i1 %25, label %34, label %30

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.ecx_plat_data, ptr %9, i32 0, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, ptr %31, align 4
  br label %39

34:                                               ; preds = %20
  %35 = xor i32 %29, -1
  %36 = getelementptr inbounds %struct.ecx_plat_data, ptr %9, i32 0, i32 4
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, %35
  store i32 %38, ptr %36, align 4
  br label %39

39:                                               ; preds = %34, %30
  %40 = phi i32 [ %38, %34 ], [ %33, %30 ]
  %41 = and i32 %1, 524288
  %42 = icmp eq i32 %41, 0
  %43 = load i32, ptr %26, align 4
  %44 = mul i32 %43, 3
  %45 = add i32 %44, 1
  %46 = shl nuw i32 1, %45
  %47 = xor i32 %46, -1
  %48 = and i32 %40, %47
  %49 = or i32 %46, %40
  %50 = select i1 %42, i32 %48, i32 %49
  %51 = getelementptr inbounds %struct.ecx_plat_data, ptr %9, i32 0, i32 4
  store i32 %50, ptr %51, align 4
  %52 = and i32 %1, 4194304
  %53 = icmp eq i32 %52, 0
  %54 = load i32, ptr %26, align 4
  %55 = mul i32 %54, 3
  %56 = add i32 %55, 2
  %57 = shl nuw i32 1, %56
  %58 = xor i32 %57, -1
  %59 = and i32 %50, %58
  %60 = or i32 %57, %50
  %61 = select i1 %53, i32 %59, i32 %60
  store i32 %61, ptr %51, align 4
  %62 = getelementptr inbounds %struct.ecx_plat_data, ptr %9, i32 0, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %76, label %65

65:                                               ; preds = %39
  %66 = getelementptr inbounds %struct.ecx_plat_data, ptr %9, i32 0, i32 3
  br label %67

67:                                               ; preds = %67, %65
  %68 = phi i32 [ 0, %65 ], [ %73, %67 ]
  %69 = load ptr, ptr %66, align 4
  tail call void @gpiod_set_value(ptr noundef %69, i32 noundef 1) #8
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %70(i32 noundef 10737400) #8
  %71 = load ptr, ptr %66, align 4
  tail call void @gpiod_set_value(ptr noundef %71, i32 noundef 0) #8
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %72(i32 noundef 10737400) #8
  %73 = add nuw i32 %68, 1
  %74 = load i32, ptr %62, align 4
  %75 = icmp ult i32 %73, %74
  br i1 %75, label %67, label %76

76:                                               ; preds = %67, %39
  %77 = getelementptr %struct.ecx_plat_data, ptr %9, i32 0, i32 3, i32 1
  %78 = load ptr, ptr %77, align 4
  tail call void @gpiod_set_value(ptr noundef %78, i32 noundef 1) #8
  %79 = getelementptr inbounds %struct.ecx_plat_data, ptr %9, i32 0, i32 3
  %80 = load ptr, ptr %79, align 4
  tail call void @gpiod_set_value(ptr noundef %80, i32 noundef 1) #8
  %81 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %81(i32 noundef 10737400) #8
  %82 = load ptr, ptr %79, align 4
  tail call void @gpiod_set_value(ptr noundef %82, i32 noundef 0) #8
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %83(i32 noundef 10737400) #8
  %84 = load ptr, ptr %77, align 4
  tail call void @gpiod_set_value(ptr noundef %84, i32 noundef 0) #8
  %85 = load i32, ptr %9, align 4
  %86 = mul i32 %85, 3
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %76
  %89 = getelementptr %struct.ecx_plat_data, ptr %9, i32 0, i32 3, i32 2
  br label %94

90:                                               ; preds = %94, %76
  %91 = getelementptr inbounds %struct.ecx_plat_data, ptr %9, i32 0, i32 2
  %92 = load i32, ptr %91, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %117, label %108

94:                                               ; preds = %94, %88
  %95 = phi i32 [ %61, %88 ], [ %99, %94 ]
  %96 = phi i32 [ 0, %88 ], [ %104, %94 ]
  %97 = load ptr, ptr %89, align 4
  %98 = and i32 %95, 1
  tail call void @gpiod_set_value(ptr noundef %97, i32 noundef %98) #8
  %99 = lshr i32 %95, 1
  %100 = load ptr, ptr %79, align 4
  tail call void @gpiod_set_value(ptr noundef %100, i32 noundef 1) #8
  %101 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %101(i32 noundef 10737400) #8
  %102 = load ptr, ptr %79, align 4
  tail call void @gpiod_set_value(ptr noundef %102, i32 noundef 0) #8
  %103 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %103(i32 noundef 10737400) #8
  %104 = add nuw i32 %96, 1
  %105 = load i32, ptr %9, align 4
  %106 = mul i32 %105, 3
  %107 = icmp ult i32 %104, %106
  br i1 %107, label %94, label %90

108:                                              ; preds = %108, %90
  %109 = phi i32 [ %114, %108 ], [ 0, %90 ]
  %110 = load ptr, ptr %79, align 4
  tail call void @gpiod_set_value(ptr noundef %110, i32 noundef 1) #8
  %111 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %111(i32 noundef 10737400) #8
  %112 = load ptr, ptr %79, align 4
  tail call void @gpiod_set_value(ptr noundef %112, i32 noundef 0) #8
  %113 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %113(i32 noundef 10737400) #8
  %114 = add nuw i32 %109, 1
  %115 = load i32, ptr %91, align 4
  %116 = icmp ult i32 %114, %115
  br i1 %116, label %108, label %117

117:                                              ; preds = %108, %90
  %118 = getelementptr %struct.ahci_port_priv, ptr %15, i32 0, i32 13, i32 %11, i32 4
  store i32 %1, ptr %118, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @sgpio_lock, i32 noundef %21) #8
  br label %119

119:                                              ; preds = %117, %13, %3
  %120 = phi i32 [ %2, %117 ], [ -22, %3 ], [ %2, %13 ]
  ret i32 %120
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_tf_to_fis(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_link_hardreset(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_scr_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_dev_classify(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @combo_phy_read(i8 noundef zeroext %0, i32 noundef %1) unnamed_addr #2 {
  %3 = zext i8 %0 to i32
  %4 = getelementptr [24 x %struct.phy_lane_info], ptr @port_data, i32 0, i32 %3
  %5 = getelementptr [24 x %struct.phy_lane_info], ptr @port_data, i32 0, i32 %3, i32 2
  br label %6

6:                                                ; preds = %21, %2
  %7 = load i8, ptr %5, align 1
  tail call void @_raw_spin_lock(ptr noundef nonnull @cphy_lock) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  %8 = and i8 %7, 31
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 7
  %11 = or i32 %10, 64
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr i8, ptr %12, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #8, !srcloc !13
  %14 = load ptr, ptr %4, align 4
  %15 = getelementptr i8, ptr %14, i32 640
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !16
  %17 = load i16, ptr @cphy_lock, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr @cphy_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !19
  %19 = and i32 %16, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %6
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 1073740) #8
  br label %6

23:                                               ; preds = %6
  %24 = load i8, ptr %5, align 1
  tail call void @_raw_spin_lock(ptr noundef nonnull @cphy_lock) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %25 = and i8 %24, 31
  %26 = zext i8 %25 to i32
  %27 = shl nuw nsw i32 %26, 7
  %28 = or i32 %27, 64
  %29 = load ptr, ptr %4, align 4
  %30 = getelementptr i8, ptr %29, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #8, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !21
  tail call void @arm_heavy_mb() #8
  %31 = load ptr, ptr %4, align 4
  %32 = getelementptr i8, ptr %31, i32 644
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %1) #8, !srcloc !13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !16
  %33 = load i16, ptr @cphy_lock, align 4
  %34 = add i16 %33, 1
  store i16 %34, ptr @cphy_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !19
  %35 = load i8, ptr %5, align 1
  tail call void @_raw_spin_lock(ptr noundef nonnull @cphy_lock) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %36 = and i8 %35, 31
  %37 = zext i8 %36 to i32
  %38 = shl nuw nsw i32 %37, 7
  %39 = or i32 %38, 64
  %40 = load ptr, ptr %4, align 4
  %41 = getelementptr i8, ptr %40, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %39) #8, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !21
  tail call void @arm_heavy_mb() #8
  %42 = load ptr, ptr %4, align 4
  %43 = getelementptr i8, ptr %42, i32 640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 1) #8, !srcloc !13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !16
  %44 = load i16, ptr @cphy_lock, align 4
  %45 = add i16 %44, 1
  store i16 %45, ptr @cphy_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !19
  br label %46

46:                                               ; preds = %61, %23
  %47 = load i8, ptr %5, align 1
  tail call void @_raw_spin_lock(ptr noundef nonnull @cphy_lock) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  %48 = and i8 %47, 31
  %49 = zext i8 %48 to i32
  %50 = shl nuw nsw i32 %49, 7
  %51 = or i32 %50, 64
  %52 = load ptr, ptr %4, align 4
  %53 = getelementptr i8, ptr %52, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %51) #8, !srcloc !13
  %54 = load ptr, ptr %4, align 4
  %55 = getelementptr i8, ptr %54, i32 640
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !16
  %57 = load i16, ptr @cphy_lock, align 4
  %58 = add i16 %57, 1
  store i16 %58, ptr @cphy_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !19
  %59 = and i32 %56, 1
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %46
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %62(i32 noundef 1073740) #8
  br label %46

63:                                               ; preds = %46
  %64 = load i8, ptr %5, align 1
  tail call void @_raw_spin_lock(ptr noundef nonnull @cphy_lock) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  %65 = and i8 %64, 31
  %66 = zext i8 %65 to i32
  %67 = shl nuw nsw i32 %66, 7
  %68 = or i32 %67, 64
  %69 = load ptr, ptr %4, align 4
  %70 = getelementptr i8, ptr %69, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %68) #8, !srcloc !13
  %71 = load ptr, ptr %4, align 4
  %72 = getelementptr i8, ptr %71, i32 648
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !16
  %74 = load i16, ptr @cphy_lock, align 4
  %75 = add i16 %74, 1
  store i16 %75, ptr @cphy_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !19
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @combo_phy_write(i8 noundef zeroext %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = zext i8 %0 to i32
  %5 = getelementptr [24 x %struct.phy_lane_info], ptr @port_data, i32 0, i32 %4
  %6 = getelementptr [24 x %struct.phy_lane_info], ptr @port_data, i32 0, i32 %4, i32 2
  br label %7

7:                                                ; preds = %22, %3
  %8 = load i8, ptr %6, align 1
  tail call void @_raw_spin_lock(ptr noundef nonnull @cphy_lock) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  %9 = and i8 %8, 31
  %10 = zext i8 %9 to i32
  %11 = shl nuw nsw i32 %10, 7
  %12 = or i32 %11, 64
  %13 = load ptr, ptr %5, align 4
  %14 = getelementptr i8, ptr %13, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #8, !srcloc !13
  %15 = load ptr, ptr %5, align 4
  %16 = getelementptr i8, ptr %15, i32 640
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !16
  %18 = load i16, ptr @cphy_lock, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr @cphy_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !19
  %20 = and i32 %17, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %7
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 1073740) #8
  br label %7

24:                                               ; preds = %7
  %25 = load i8, ptr %6, align 1
  tail call void @_raw_spin_lock(ptr noundef nonnull @cphy_lock) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %26 = and i8 %25, 31
  %27 = zext i8 %26 to i32
  %28 = shl nuw nsw i32 %27, 7
  %29 = or i32 %28, 64
  %30 = load ptr, ptr %5, align 4
  %31 = getelementptr i8, ptr %30, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #8, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !21
  tail call void @arm_heavy_mb() #8
  %32 = load ptr, ptr %5, align 4
  %33 = getelementptr i8, ptr %32, i32 644
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %1) #8, !srcloc !13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !16
  %34 = load i16, ptr @cphy_lock, align 4
  %35 = add i16 %34, 1
  store i16 %35, ptr @cphy_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !19
  %36 = load i8, ptr %6, align 1
  tail call void @_raw_spin_lock(ptr noundef nonnull @cphy_lock) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %37 = and i8 %36, 31
  %38 = zext i8 %37 to i32
  %39 = shl nuw nsw i32 %38, 7
  %40 = or i32 %39, 64
  %41 = load ptr, ptr %5, align 4
  %42 = getelementptr i8, ptr %41, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #8, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !21
  tail call void @arm_heavy_mb() #8
  %43 = load ptr, ptr %5, align 4
  %44 = getelementptr i8, ptr %43, i32 648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %2) #8, !srcloc !13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !16
  %45 = load i16, ptr @cphy_lock, align 4
  %46 = add i16 %45, 1
  store i16 %46, ptr @cphy_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !19
  %47 = load i8, ptr %6, align 1
  tail call void @_raw_spin_lock(ptr noundef nonnull @cphy_lock) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %48 = and i8 %47, 31
  %49 = zext i8 %48 to i32
  %50 = shl nuw nsw i32 %49, 7
  %51 = or i32 %50, 64
  %52 = load ptr, ptr %5, align 4
  %53 = getelementptr i8, ptr %52, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %51) #8, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !21
  tail call void @arm_heavy_mb() #8
  %54 = load ptr, ptr %5, align 4
  %55 = getelementptr i8, ptr %54, i32 640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 3) #8, !srcloc !13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !16
  %56 = load i16, ptr @cphy_lock, align 4
  %57 = add i16 %56, 1
  store i16 %57, ptr @cphy_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_consumer_name(ptr noundef, ptr noundef) local_unnamed_addr #1

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

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahci_highbank_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 1024
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.19) #9
  br label %18

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !22
  %15 = and i32 %14, -3
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %15) #8, !srcloc !13
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !24
  %17 = tail call i32 @ata_host_suspend(ptr noundef %3, [1 x i32] [i32 2]) #8
  br label %18

18:                                               ; preds = %10, %9
  %19 = phi i32 [ -5, %9 ], [ %17, %10 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahci_highbank_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = tail call i32 @ahci_reset_controller(ptr noundef %3) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  tail call void @ahci_init_controller(ptr noundef %3) #8
  br label %11

11:                                               ; preds = %10, %1
  tail call void @ata_host_resume(ptr noundef %3) #8
  br label %12

12:                                               ; preds = %11, %7
  %13 = phi i32 [ 0, %11 ], [ %8, %7 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_host_suspend(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_host_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!9 = !{i32 0, i32 33}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i8 0, i8 2}
!12 = !{i64 2155071245}
!13 = !{i64 2891026}
!14 = !{i64 2891444}
!15 = !{i64 2155071975}
!16 = !{i64 2148915893}
!17 = !{i64 2148911717}
!18 = !{i64 2148911792, i64 2148911819, i64 2148911866, i64 2148911888, i64 2148911916, i64 2148911936}
!19 = !{i64 2148938896}
!20 = !{i64 2155072287}
!21 = !{i64 2155072789}
!22 = !{i64 2155080329}
!23 = !{i64 2155080512}
!24 = !{i64 2155080967}
