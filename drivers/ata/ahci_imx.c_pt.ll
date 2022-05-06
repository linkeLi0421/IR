; ModuleID = '/llk/IR/drivers/ata/ahci_imx.c_pt.bc'
source_filename = "../drivers/ata/ahci_imx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.77 }
%union.anon.77 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.reg_property = type { ptr, ptr, i32, i32, i32 }
%struct.thermal_zone_of_device_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.ata_port_info = type { i32, i32, i32, i32, i32, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.reg_value = type { i32, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.sensor_device_attribute = type { %struct.device_attribute, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.imx_ahci_priv = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.ahci_host_priv = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [5 x ptr], ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr }
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
%struct.ata_host = type { %struct.spinlock, ptr, ptr, i32, i32, ptr, ptr, i32, %struct.kref, %struct.mutex, ptr, ptr, [0 x ptr] }

@__param_str_hotplug = internal constant [17 x i8] c"ahci_imx.hotplug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@ahci_imx_hotplug = internal global i32 0, align 4
@__param_hotplug = internal constant %struct.kernel_param { ptr @__param_str_hotplug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.77 { ptr @ahci_imx_hotplug } }, section "__param", align 4
@__UNIQUE_ID_hotplugtype290 = internal constant [30 x i8] c"ahci_imx.parmtype=hotplug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_hotplug291 = internal constant [77 x i8] c"ahci_imx.parm=hotplug:AHCI IMX hot-plug support (0=Don't support, 1=support)\00", section ".modinfo", align 1
@__initcall__kmod_ahci_imx__292_1228_imx_ahci_driver_init6 = internal global ptr @imx_ahci_driver_init, section ".initcall6.init", align 4
@imx_ahci_driver = internal global %struct.platform_driver { ptr @imx_ahci_probe, ptr @ata_platform_remove_one, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @imx_ahci_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahci_imx_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_imx_ahci_driver_exit = internal global ptr @imx_ahci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description293 = internal constant [62 x i8] c"ahci_imx.description=Freescale i.MX AHCI SATA platform driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author294 = internal constant [58 x i8] c"ahci_imx.author=Richard Zhu <Hong-Xing.Zhu@freescale.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [35 x i8] c"ahci_imx.file=drivers/ata/ahci_imx\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [21 x i8] c"ahci_imx.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias297 = internal constant [24 x i8] c"ahci_imx.alias=ahci:imx\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [9 x i8] c"ahci-imx\00", align 1
@imx_ahci_of_match = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx53-ahci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6q-ahci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6qp-ahci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8qm-ahci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@ahci_imx_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @imx_ahci_suspend, ptr @imx_ahci_resume, ptr @imx_ahci_suspend, ptr @imx_ahci_resume, ptr @imx_ahci_suspend, ptr @imx_ahci_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"sata\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"can't get sata clock.\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"sata_ref\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"can't get sata_ref clock.\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"ahb\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"can't get ahb clock.\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"fsl,imx6q-iomuxc-gpr\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"failed to find fsl,imx6q-iomux-gpr regmap\0A\00", align 1
@gpr13_props = internal unnamed_addr constant [5 x %struct.reg_property] [%struct.reg_property { ptr @.str.14, ptr @gpr13_tx_level, i32 32, i32 36, i32 0 }, %struct.reg_property { ptr @.str.15, ptr @gpr13_tx_boost, i32 16, i32 1152, i32 0 }, %struct.reg_property { ptr @.str.16, ptr @gpr13_tx_atten, i32 6, i32 8192, i32 0 }, %struct.reg_property { ptr @.str.17, ptr @gpr13_rx_eq, i32 8, i32 83886080, i32 0 }, %struct.reg_property { ptr @.str.18, ptr null, i32 0, i32 16384, i32 0 }], align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"sata_ahci\00", align 1
@fsl_sata_ahci_groups = internal global [2 x ptr] [ptr @fsl_sata_ahci_group, ptr null], align 4
@fsl_sata_ahci_of_thermal_ops = internal constant %struct.thermal_zone_of_device_ops { ptr @sata_ahci_read_temperature, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.10 = private unnamed_addr constant [24 x i8] c"%s: sensor 'sata_ahci'\0A\00", align 1
@ahci_imx_port_info = internal constant %struct.ata_port_info { i32 393346, i32 0, i32 31, i32 0, i32 127, ptr @ahci_imx_ops, ptr null }, align 4
@ahci_platform_sht = internal global %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_change_queue_depth, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str, ptr null, i32 32, i32 -1, i16 168, i16 0, i32 0, i32 0, i32 -1, i32 0, i16 0, i8 0, i32 1, i8 8, i32 0, ptr @ahci_shost_groups, ptr @ahci_sdev_groups, i64 0, ptr null, i32 0 }, align 8
@.str.11 = private unnamed_addr constant [30 x i8] c"%s not specified, using %08x\0A\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"%s value %u, using %08x\0A\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"DT property %s is not a valid value\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"fsl,transmit-level-mV\00", align 1
@gpr13_tx_level = internal constant [32 x %struct.reg_value] [%struct.reg_value { i32 937, i32 0 }, %struct.reg_value { i32 947, i32 4 }, %struct.reg_value { i32 957, i32 8 }, %struct.reg_value { i32 966, i32 12 }, %struct.reg_value { i32 976, i32 16 }, %struct.reg_value { i32 986, i32 20 }, %struct.reg_value { i32 996, i32 24 }, %struct.reg_value { i32 1005, i32 28 }, %struct.reg_value { i32 1015, i32 32 }, %struct.reg_value { i32 1025, i32 36 }, %struct.reg_value { i32 1035, i32 40 }, %struct.reg_value { i32 1045, i32 44 }, %struct.reg_value { i32 1054, i32 48 }, %struct.reg_value { i32 1064, i32 52 }, %struct.reg_value { i32 1074, i32 56 }, %struct.reg_value { i32 1084, i32 60 }, %struct.reg_value { i32 1094, i32 64 }, %struct.reg_value { i32 1104, i32 68 }, %struct.reg_value { i32 1113, i32 72 }, %struct.reg_value { i32 1123, i32 76 }, %struct.reg_value { i32 1133, i32 80 }, %struct.reg_value { i32 1143, i32 84 }, %struct.reg_value { i32 1152, i32 88 }, %struct.reg_value { i32 1162, i32 92 }, %struct.reg_value { i32 1172, i32 96 }, %struct.reg_value { i32 1182, i32 100 }, %struct.reg_value { i32 1191, i32 104 }, %struct.reg_value { i32 1201, i32 108 }, %struct.reg_value { i32 1211, i32 112 }, %struct.reg_value { i32 1221, i32 116 }, %struct.reg_value { i32 1230, i32 120 }, %struct.reg_value { i32 1240, i32 124 }], align 4
@.str.15 = private unnamed_addr constant [23 x i8] c"fsl,transmit-boost-mdB\00", align 1
@gpr13_tx_boost = internal constant [16 x %struct.reg_value] [%struct.reg_value zeroinitializer, %struct.reg_value { i32 370, i32 128 }, %struct.reg_value { i32 740, i32 256 }, %struct.reg_value { i32 1110, i32 384 }, %struct.reg_value { i32 1480, i32 512 }, %struct.reg_value { i32 1850, i32 640 }, %struct.reg_value { i32 2220, i32 768 }, %struct.reg_value { i32 2590, i32 896 }, %struct.reg_value { i32 2960, i32 1024 }, %struct.reg_value { i32 3330, i32 1152 }, %struct.reg_value { i32 3700, i32 1280 }, %struct.reg_value { i32 4070, i32 1408 }, %struct.reg_value { i32 4440, i32 1536 }, %struct.reg_value { i32 4810, i32 1664 }, %struct.reg_value { i32 5280, i32 1792 }, %struct.reg_value { i32 5750, i32 1920 }], align 4
@.str.16 = private unnamed_addr constant [25 x i8] c"fsl,transmit-atten-16ths\00", align 1
@gpr13_tx_atten = internal constant [6 x %struct.reg_value] [%struct.reg_value { i32 8, i32 10240 }, %struct.reg_value { i32 9, i32 8192 }, %struct.reg_value { i32 10, i32 6144 }, %struct.reg_value { i32 12, i32 4096 }, %struct.reg_value { i32 14, i32 2048 }, %struct.reg_value { i32 16, i32 0 }], align 4
@.str.17 = private unnamed_addr constant [19 x i8] c"fsl,receive-eq-mdB\00", align 1
@gpr13_rx_eq = internal constant [8 x %struct.reg_value] [%struct.reg_value { i32 500, i32 0 }, %struct.reg_value { i32 1000, i32 16777216 }, %struct.reg_value { i32 1500, i32 33554432 }, %struct.reg_value { i32 2000, i32 50331648 }, %struct.reg_value { i32 2500, i32 67108864 }, %struct.reg_value { i32 3000, i32 83886080 }, %struct.reg_value { i32 3500, i32 100663296 }, %struct.reg_value { i32 4000, i32 117440512 }], align 4
@.str.18 = private unnamed_addr constant [23 x i8] c"fsl,no-spread-spectrum\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"fsl,phy-imp\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"error with ioremap\0A\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"missing *phy* reg region.\0A\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"hsio\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"unable to find gpr registers\0A\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"epcs_tx\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"can't get epcs_tx_clk clock.\0A\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"epcs_rx\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"can't get epcs_rx_clk clock.\0A\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"phy_pclk0\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"can't get phy_pclk0 clock.\0A\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"phy_pclk1\00", align 1
@.str.32 = private unnamed_addr constant [28 x i8] c"can't get phy_pclk1 clock.\0A\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"phy_apbclk\00", align 1
@.str.34 = private unnamed_addr constant [29 x i8] c"can't get phy_apbclk clock.\0A\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"clkreq\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"SATA CLKREQ\00", align 1
@fsl_sata_ahci_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @fsl_sata_ahci_attrs, ptr null }, align 4
@fsl_sata_ahci_attrs = internal global [2 x ptr] [ptr @sensor_dev_attr_temp1_input, ptr null], align 4
@sensor_dev_attr_temp1_input = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 292 }, ptr @sata_ahci_show_temp, ptr null }, i32 0 }, align 4
@.str.37 = private unnamed_addr constant [12 x i8] c"temp1_input\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.39 = private unnamed_addr constant [29 x i8] c"Read/Write REG error, 0x%x!\0A\00", align 1
@.str.40 = private unnamed_addr constant [30 x i8] c"Read REG more than %d times!\0A\00", align 1
@.str.41 = private unnamed_addr constant [25 x i8] c"failed to reset phy: %d\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.42 = private unnamed_addr constant [25 x i8] c"can't enable phy_pclk0.\0A\00", align 1
@.str.43 = private unnamed_addr constant [25 x i8] c"can't enable phy_pclk1.\0A\00", align 1
@.str.44 = private unnamed_addr constant [27 x i8] c"can't enable epcs_tx_clk.\0A\00", align 1
@.str.45 = private unnamed_addr constant [27 x i8] c"can't enable epcs_rx_clk.\0A\00", align 1
@.str.46 = private unnamed_addr constant [26 x i8] c"can't enable phy_apbclk.\0A\00", align 1
@.str.47 = private unnamed_addr constant [33 x i8] c"TX PLL of the PHY is not locked\0A\00", align 1
@.str.48 = private unnamed_addr constant [35 x i8] c"Can't set PHY RX impedance ratio.\0A\00", align 1
@.str.49 = private unnamed_addr constant [35 x i8] c"Can't set PHY TX impedance ratio.\0A\00", align 1
@ahci_imx_ops = internal global %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahci_imx_softreset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahci_imx_error_handler, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahci_imx_host_stop, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahci_ops }, align 4
@ahci_ops = external dso_local global %struct.ata_port_operations, align 4
@ahci_pmp_retry_srst_ops = external dso_local local_unnamed_addr global %struct.ata_port_operations, align 4
@.str.50 = private unnamed_addr constant [34 x i8] c"no device found, disabling link.\0A\00", align 1
@.str.51 = private unnamed_addr constant [44 x i8] c"pass ahci_imx..hotplug=1 to enable hotplug\0A\00", align 1
@ahci_shost_groups = external dso_local global [0 x ptr], align 4
@ahci_sdev_groups = external dso_local global [0 x ptr], align 4
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_alias297, ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_hotplug291, ptr @__UNIQUE_ID_hotplugtype290, ptr @__UNIQUE_ID_license296, ptr @__exitcall_imx_ahci_driver_exit, ptr @__initcall__kmod_ahci_imx__292_1228_imx_ahci_driver_init6, ptr @__param_hotplug, ptr @imx_ahci_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @imx_ahci_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx_ahci_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @imx_ahci_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @imx_ahci_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_ahci_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call ptr @of_match_device(ptr noundef nonnull @imx_ahci_of_match, ptr noundef %3) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %238, label %6

6:                                                ; preds = %1
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 64, i32 noundef 3520) #6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %238, label %9

9:                                                ; preds = %6
  store ptr %0, ptr %7, align 4
  %10 = getelementptr inbounds %struct.imx_ahci_priv, ptr %7, i32 0, i32 13
  store i8 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.imx_ahci_priv, ptr %7, i32 0, i32 14
  store i8 1, ptr %11, align 1
  %12 = getelementptr inbounds %struct.of_device_id, ptr %4, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = ptrtoint ptr %13 to i32
  %15 = getelementptr inbounds %struct.imx_ahci_priv, ptr %7, i32 0, i32 1
  store i32 %14, ptr %15, align 4
  %16 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.1) #6
  %17 = getelementptr inbounds %struct.imx_ahci_priv, ptr %7, i32 0, i32 2
  store ptr %16, ptr %17, align 4
  %18 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %22

19:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #7
  %20 = load ptr, ptr %17, align 4
  %21 = ptrtoint ptr %20 to i32
  br label %238

22:                                               ; preds = %9
  %23 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.3) #6
  %24 = getelementptr inbounds %struct.imx_ahci_priv, ptr %7, i32 0, i32 3
  store ptr %23, ptr %24, align 4
  %25 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4) #7
  %27 = load ptr, ptr %24, align 4
  %28 = ptrtoint ptr %27 to i32
  br label %238

29:                                               ; preds = %22
  %30 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.5) #6
  %31 = getelementptr inbounds %struct.imx_ahci_priv, ptr %7, i32 0, i32 4
  store ptr %30, ptr %31, align 4
  %32 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6) #7
  %34 = load ptr, ptr %31, align 4
  %35 = ptrtoint ptr %34 to i32
  br label %238

36:                                               ; preds = %29
  %37 = load i32, ptr %15, align 4
  switch i32 %37, label %173 [
    i32 1, label %38
    i32 2, label %38
    i32 3, label %111
  ]

38:                                               ; preds = %36, %36
  %39 = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.7) #6
  %40 = getelementptr inbounds %struct.imx_ahci_priv, ptr %7, i32 0, i32 12
  store ptr %39, ptr %40, align 4
  %41 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.8) #7
  %43 = load ptr, ptr %40, align 4
  %44 = ptrtoint ptr %43 to i32
  br label %238

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %47 = load ptr, ptr %46, align 8
  br label %48

48:                                               ; preds = %103, %45
  %49 = phi i32 [ 0, %45 ], [ %105, %103 ]
  %50 = phi i32 [ 0, %45 ], [ %104, %103 ]
  %51 = phi ptr [ @gpr13_props, %45 ], [ %106, %103 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %52 = getelementptr inbounds %struct.reg_property, ptr %51, i32 0, i32 2
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  %55 = load ptr, ptr %51, align 4
  br i1 %54, label %56, label %62

56:                                               ; preds = %48
  %57 = call ptr @of_find_property(ptr noundef %47, ptr noundef %55, ptr noundef null) #6
  %58 = icmp eq ptr %57, null
  %59 = getelementptr inbounds %struct.reg_property, ptr %51, i32 0, i32 4
  %60 = getelementptr inbounds %struct.reg_property, ptr %51, i32 0, i32 3
  %61 = select i1 %58, ptr %60, ptr %59
  br label %98

62:                                               ; preds = %48
  %63 = call i32 @of_property_read_variable_u32_array(ptr noundef %47, ptr noundef %55, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #6
  %64 = icmp sgt i32 %63, -1
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = load i32, ptr %52, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %94, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.reg_property, ptr %51, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = load i32, ptr %2, align 4
  br label %76

72:                                               ; preds = %62
  %73 = load ptr, ptr %51, align 4
  %74 = getelementptr inbounds %struct.reg_property, ptr %51, i32 0, i32 3
  %75 = load i32, ptr %74, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.11, ptr noundef %73, i32 noundef %75) #7
  br label %98

76:                                               ; preds = %81, %68
  %77 = phi i32 [ 0, %68 ], [ %82, %81 ]
  %78 = getelementptr %struct.reg_value, ptr %70, i32 %77
  %79 = load i32, ptr %78, align 4
  %80 = icmp eq i32 %79, %71
  br i1 %80, label %84, label %81

81:                                               ; preds = %76
  %82 = add nuw i32 %77, 1
  %83 = icmp eq i32 %82, %66
  br i1 %83, label %94, label %76

84:                                               ; preds = %76
  %85 = load ptr, ptr %51, align 4
  %86 = getelementptr %struct.reg_value, ptr %70, i32 %77, i32 1
  %87 = load i32, ptr %86, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.12, ptr noundef %85, i32 noundef %71, i32 noundef %87) #7
  %88 = load ptr, ptr %69, align 4
  %89 = getelementptr %struct.reg_value, ptr %88, i32 %77, i32 1
  %90 = load i32, ptr %89, align 4
  %91 = or i32 %90, %50
  %92 = load i32, ptr %52, align 4
  %93 = icmp eq i32 %77, %92
  br i1 %93, label %94, label %103

94:                                               ; preds = %84, %81, %65
  %95 = phi i32 [ %91, %84 ], [ %50, %65 ], [ %50, %81 ]
  %96 = load ptr, ptr %51, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.13, ptr noundef %96) #7
  %97 = getelementptr inbounds %struct.reg_property, ptr %51, i32 0, i32 3
  br label %98

98:                                               ; preds = %94, %72, %56
  %99 = phi ptr [ %97, %94 ], [ %74, %72 ], [ %61, %56 ]
  %100 = phi i32 [ %95, %94 ], [ %50, %72 ], [ %50, %56 ]
  %101 = load i32, ptr %99, align 4
  %102 = or i32 %101, %100
  br label %103

103:                                              ; preds = %98, %84
  %104 = phi i32 [ %91, %84 ], [ %102, %98 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  %105 = add nuw nsw i32 %49, 1
  %106 = getelementptr %struct.reg_property, ptr %51, i32 1
  %107 = icmp eq i32 %105, 5
  br i1 %107, label %108, label %48

108:                                              ; preds = %103
  %109 = or i32 %104, 9666560
  %110 = getelementptr inbounds %struct.imx_ahci_priv, ptr %7, i32 0, i32 15
  store i32 %109, ptr %110, align 4
  br label %173

111:                                              ; preds = %36
  %112 = load ptr, ptr %7, align 4
  %113 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %114 = load ptr, ptr %113, align 8
  %115 = getelementptr inbounds %struct.imx_ahci_priv, ptr %7, i32 0, i32 16
  %116 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %114, ptr noundef nonnull @.str.19, ptr noundef %115, i32 noundef 1, i32 noundef 0) #6
  %117 = icmp sgt i32 %116, -1
  br i1 %117, label %119, label %118

118:                                              ; preds = %111
  store i32 108, ptr %115, align 4
  br label %119

119:                                              ; preds = %118, %111
  %120 = tail call ptr @platform_get_resource_byname(ptr noundef %112, i32 noundef 512, ptr noundef nonnull @.str.20) #6
  %121 = icmp eq ptr %120, null
  br i1 %121, label %132, label %122

122:                                              ; preds = %119
  %123 = load i32, ptr %120, align 4
  %124 = getelementptr inbounds %struct.resource, ptr %120, i32 0, i32 1
  %125 = load i32, ptr %124, align 4
  %126 = sub i32 1, %123
  %127 = add i32 %126, %125
  %128 = tail call ptr @devm_ioremap(ptr noundef %3, i32 noundef %123, i32 noundef %127) #6
  %129 = getelementptr inbounds %struct.imx_ahci_priv, ptr %7, i32 0, i32 10
  store ptr %128, ptr %129, align 4
  %130 = icmp eq ptr %128, null
  br i1 %130, label %131, label %133

131:                                              ; preds = %122
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.21) #7
  br label %238

132:                                              ; preds = %119
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.22) #7
  br label %238

133:                                              ; preds = %122
  %134 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %114, ptr noundef nonnull @.str.23) #6
  %135 = getelementptr inbounds %struct.imx_ahci_priv, ptr %7, i32 0, i32 12
  store ptr %134, ptr %135, align 4
  %136 = icmp ugt ptr %134, inttoptr (i32 -4096 to ptr)
  br i1 %136, label %165, label %137

137:                                              ; preds = %133
  %138 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.25) #6
  %139 = getelementptr inbounds %struct.imx_ahci_priv, ptr %7, i32 0, i32 5
  store ptr %138, ptr %139, align 4
  %140 = icmp ugt ptr %138, inttoptr (i32 -4096 to ptr)
  br i1 %140, label %165, label %141

141:                                              ; preds = %137
  %142 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.27) #6
  %143 = getelementptr inbounds %struct.imx_ahci_priv, ptr %7, i32 0, i32 6
  store ptr %142, ptr %143, align 4
  %144 = icmp ugt ptr %142, inttoptr (i32 -4096 to ptr)
  br i1 %144, label %165, label %145

145:                                              ; preds = %141
  %146 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.29) #6
  %147 = getelementptr inbounds %struct.imx_ahci_priv, ptr %7, i32 0, i32 8
  store ptr %146, ptr %147, align 4
  %148 = icmp ugt ptr %146, inttoptr (i32 -4096 to ptr)
  br i1 %148, label %165, label %149

149:                                              ; preds = %145
  %150 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.31) #6
  %151 = getelementptr inbounds %struct.imx_ahci_priv, ptr %7, i32 0, i32 9
  store ptr %150, ptr %151, align 4
  %152 = icmp ugt ptr %150, inttoptr (i32 -4096 to ptr)
  br i1 %152, label %165, label %153

153:                                              ; preds = %149
  %154 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.33) #6
  %155 = getelementptr inbounds %struct.imx_ahci_priv, ptr %7, i32 0, i32 7
  store ptr %154, ptr %155, align 4
  %156 = icmp ugt ptr %154, inttoptr (i32 -4096 to ptr)
  br i1 %156, label %165, label %157

157:                                              ; preds = %153
  %158 = tail call ptr @devm_gpiod_get_optional(ptr noundef %3, ptr noundef nonnull @.str.35, i32 noundef 19) #6
  %159 = getelementptr inbounds %struct.imx_ahci_priv, ptr %7, i32 0, i32 11
  store ptr %158, ptr %159, align 4
  %160 = icmp ugt ptr %158, inttoptr (i32 -4096 to ptr)
  br i1 %160, label %169, label %161

161:                                              ; preds = %157
  %162 = icmp eq ptr %158, null
  br i1 %162, label %173, label %163

163:                                              ; preds = %161
  %164 = tail call i32 @gpiod_set_consumer_name(ptr noundef nonnull %158, ptr noundef nonnull @.str.36) #6
  br label %173

165:                                              ; preds = %153, %149, %145, %141, %137, %133
  %166 = phi ptr [ @.str.24, %133 ], [ @.str.26, %137 ], [ @.str.28, %141 ], [ @.str.30, %145 ], [ @.str.32, %149 ], [ @.str.34, %153 ]
  %167 = phi ptr [ %135, %133 ], [ %139, %137 ], [ %143, %141 ], [ %147, %145 ], [ %151, %149 ], [ %155, %153 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull %166) #7
  %168 = load ptr, ptr %167, align 4
  br label %169

169:                                              ; preds = %165, %157
  %170 = phi ptr [ %158, %157 ], [ %168, %165 ]
  %171 = ptrtoint ptr %170 to i32
  %172 = icmp eq ptr %170, null
  br i1 %172, label %173, label %238

173:                                              ; preds = %169, %163, %161, %108, %36
  %174 = call ptr @ahci_platform_get_resources(ptr noundef %0, i32 noundef 0) #6
  %175 = icmp ugt ptr %174, inttoptr (i32 -4096 to ptr)
  br i1 %175, label %176, label %178

176:                                              ; preds = %173
  %177 = ptrtoint ptr %174 to i32
  br label %238

178:                                              ; preds = %173
  %179 = getelementptr inbounds %struct.ahci_host_priv, ptr %174, i32 0, i32 23
  store ptr %7, ptr %179, align 4
  %180 = load ptr, ptr %17, align 4
  %181 = call i32 @clk_prepare(ptr noundef %180) #6
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %238

183:                                              ; preds = %178
  %184 = call i32 @clk_enable(ptr noundef %180) #6
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %187, label %186

186:                                              ; preds = %183
  call void @clk_unprepare(ptr noundef %180) #6
  br label %238

187:                                              ; preds = %183
  %188 = load i32, ptr %15, align 4
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %204

190:                                              ; preds = %187
  %191 = call ptr @devm_hwmon_device_register_with_groups(ptr noundef %3, ptr noundef nonnull @.str.9, ptr noundef %174, ptr noundef nonnull @fsl_sata_ahci_groups) #6
  %192 = icmp ugt ptr %191, inttoptr (i32 -4096 to ptr)
  br i1 %192, label %202, label %193

193:                                              ; preds = %190
  %194 = call ptr @devm_thermal_zone_of_sensor_register(ptr noundef %191, i32 noundef 0, ptr noundef %191, ptr noundef nonnull @fsl_sata_ahci_of_thermal_ops) #6
  %195 = getelementptr inbounds %struct.device, ptr %191, i32 0, i32 3
  %196 = load ptr, ptr %195, align 4
  %197 = icmp eq ptr %196, null
  br i1 %197, label %198, label %200

198:                                              ; preds = %193
  %199 = load ptr, ptr %191, align 4
  br label %200

200:                                              ; preds = %198, %193
  %201 = phi ptr [ %199, %198 ], [ %196, %193 ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.10, ptr noundef %201) #7
  br label %204

202:                                              ; preds = %190
  %203 = ptrtoint ptr %191 to i32
  br label %235

204:                                              ; preds = %200, %187
  %205 = call fastcc i32 @imx_sata_enable(ptr noundef %174)
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %235

207:                                              ; preds = %204
  %208 = getelementptr inbounds %struct.ahci_host_priv, ptr %174, i32 0, i32 3
  %209 = load ptr, ptr %208, align 4
  %210 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %209) #6, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %211 = and i32 %210, 134217728
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %207
  %214 = or i32 %210, 134217728
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  %215 = load ptr, ptr %208, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %215, i32 %214) #6, !srcloc !12
  br label %216

216:                                              ; preds = %213, %207
  %217 = load ptr, ptr %208, align 4
  %218 = getelementptr i8, ptr %217, i32 12
  %219 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %218) #6, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !13
  %220 = and i32 %219, 1
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %216
  %223 = or i32 %219, 1
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !14
  call void @arm_heavy_mb() #6
  %224 = load ptr, ptr %208, align 4
  %225 = getelementptr i8, ptr %224, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %225, i32 %223) #6, !srcloc !12
  br label %226

226:                                              ; preds = %222, %216
  %227 = load ptr, ptr %31, align 4
  %228 = call i32 @clk_get_rate(ptr noundef %227) #6
  %229 = udiv i32 %228, 1000
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !15
  call void @arm_heavy_mb() #6
  %230 = load ptr, ptr %208, align 4
  %231 = getelementptr i8, ptr %230, i32 224
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %231, i32 %229) #6, !srcloc !12
  %232 = call i32 @ahci_platform_init_host(ptr noundef %0, ptr noundef %174, ptr noundef nonnull @ahci_imx_port_info, ptr noundef nonnull @ahci_platform_sht) #6
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %238, label %234

234:                                              ; preds = %226
  call fastcc void @imx_sata_disable(ptr noundef %174)
  br label %235

235:                                              ; preds = %234, %204, %202
  %236 = phi i32 [ %203, %202 ], [ %205, %204 ], [ %232, %234 ]
  %237 = load ptr, ptr %17, align 4
  call void @clk_disable(ptr noundef %237) #6
  call void @clk_unprepare(ptr noundef %237) #6
  br label %238

238:                                              ; preds = %235, %226, %186, %178, %176, %169, %132, %131, %42, %33, %26, %19, %6, %1
  %239 = phi i32 [ %21, %19 ], [ %28, %26 ], [ %35, %33 ], [ %177, %176 ], [ %236, %235 ], [ -22, %1 ], [ -12, %6 ], [ %171, %169 ], [ 0, %226 ], [ %44, %42 ], [ -12, %131 ], [ -12, %132 ], [ %184, %186 ], [ %181, %178 ]
  ret i32 %239
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_platform_remove_one(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ahci_platform_get_resources(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_thermal_zone_of_sensor_register(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @imx_sata_enable(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.ahci_host_priv, ptr %0, i32 0, i32 23
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.imx_ahci_priv, ptr %5, i32 0, i32 13
  %9 = load i8, ptr %8, align 4, !range !16
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %276

11:                                               ; preds = %1
  %12 = tail call i32 @ahci_platform_enable_regulators(ptr noundef %0) #6
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %276

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.imx_ahci_priv, ptr %5, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @clk_prepare(ptr noundef %16) #6
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = tail call i32 @clk_enable(ptr noundef %16) #6
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  tail call void @clk_unprepare(ptr noundef %16) #6
  br label %23

23:                                               ; preds = %22, %14
  %24 = phi i32 [ %17, %14 ], [ %20, %22 ]
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %274, label %26

26:                                               ; preds = %23, %19
  %27 = getelementptr inbounds %struct.imx_ahci_priv, ptr %5, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  switch i32 %28, label %273 [
    i32 1, label %29
    i32 2, label %29
    i32 3, label %90
  ]

29:                                               ; preds = %26, %26
  %30 = getelementptr inbounds %struct.imx_ahci_priv, ptr %5, i32 0, i32 12
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.imx_ahci_priv, ptr %5, i32 0, i32 15
  %33 = load i32, ptr %32, align 4
  %34 = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 52, i32 noundef 134217727, i32 noundef %33, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %35 = load ptr, ptr %30, align 4
  %36 = tail call i32 @regmap_update_bits_base(ptr noundef %35, i32 noundef 52, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #6
  %37 = load ptr, ptr %4, align 4
  %38 = getelementptr inbounds %struct.ahci_host_priv, ptr %0, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.imx_ahci_priv, ptr %37, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %52

43:                                               ; preds = %29
  %44 = getelementptr inbounds %struct.imx_ahci_priv, ptr %37, i32 0, i32 12
  %45 = load ptr, ptr %44, align 4
  %46 = tail call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef 20, i32 noundef 1024, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %47 = load ptr, ptr %44, align 4
  %48 = tail call i32 @regmap_update_bits_base(ptr noundef %47, i32 noundef 20, i32 noundef 2048, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 10737400) #6
  %50 = load ptr, ptr %44, align 4
  %51 = tail call i32 @regmap_update_bits_base(ptr noundef %50, i32 noundef 20, i32 noundef 2048, i32 noundef 2048, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %273

52:                                               ; preds = %29
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !17
  tail call void @arm_heavy_mb() #6
  %53 = getelementptr i8, ptr %39, i32 376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 32575) #6, !srcloc !12
  %54 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %39, i32 noundef 65536, i1 noundef zeroext true) #6
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %87

56:                                               ; preds = %52
  %57 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %39, i32 noundef 65536, i1 noundef zeroext false) #6
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %87

59:                                               ; preds = %56
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !18
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 1) #6, !srcloc !12
  %60 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %39, i32 noundef 131072, i1 noundef zeroext true) #6
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %87

62:                                               ; preds = %59
  %63 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %39, i32 noundef 131072, i1 noundef zeroext false) #6
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %87

65:                                               ; preds = %62
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !19
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 262145) #6, !srcloc !12
  %66 = getelementptr i8, ptr %39, i32 380
  br label %67

67:                                               ; preds = %84, %65
  %68 = phi i32 [ 10, %65 ], [ %85, %84 ]
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #6
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !17
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 8195) #6, !srcloc !12
  %69 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %39, i32 noundef 65536, i1 noundef zeroext true) #6
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %87

71:                                               ; preds = %67
  %72 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %39, i32 noundef 65536, i1 noundef zeroext false) #6
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %71
  %75 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %39, i32 noundef 524288, i1 noundef zeroext true) #6
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %74
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !20
  %79 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %39, i32 noundef 524288, i1 noundef zeroext false) #6
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %77
  %82 = and i32 %78, 2
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %273

84:                                               ; preds = %81
  %85 = add nsw i32 %68, -1
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %67

87:                                               ; preds = %84, %77, %74, %71, %67, %62, %59, %56, %52
  %88 = phi i32 [ %60, %59 ], [ %63, %62 ], [ %54, %52 ], [ %57, %56 ], [ %75, %74 ], [ %69, %67 ], [ -110, %84 ], [ %79, %77 ], [ %72, %71 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.41, i32 noundef %88) #7
  %89 = load ptr, ptr %15, align 4
  tail call void @clk_disable(ptr noundef %89) #6
  tail call void @clk_unprepare(ptr noundef %89) #6
  br label %274

90:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  %91 = load ptr, ptr %4, align 4
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.platform_device, ptr %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.imx_ahci_priv, ptr %91, i32 0, i32 8
  %95 = load ptr, ptr %94, align 4
  %96 = tail call i32 @clk_prepare(ptr noundef %95) #6
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %90
  %99 = tail call i32 @clk_enable(ptr noundef %95) #6
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %98
  tail call void @clk_unprepare(ptr noundef %95) #6
  br label %102

102:                                              ; preds = %101, %90
  %103 = phi i32 [ %96, %90 ], [ %99, %101 ]
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.42) #7
  br label %272

106:                                              ; preds = %102, %98
  %107 = getelementptr inbounds %struct.imx_ahci_priv, ptr %91, i32 0, i32 9
  %108 = load ptr, ptr %107, align 4
  %109 = tail call i32 @clk_prepare(ptr noundef %108) #6
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = tail call i32 @clk_enable(ptr noundef %108) #6
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %111
  tail call void @clk_unprepare(ptr noundef %108) #6
  br label %115

115:                                              ; preds = %114, %106
  %116 = phi i32 [ %109, %106 ], [ %112, %114 ]
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.43) #7
  br label %270

119:                                              ; preds = %115, %111
  %120 = getelementptr inbounds %struct.imx_ahci_priv, ptr %91, i32 0, i32 5
  %121 = load ptr, ptr %120, align 4
  %122 = tail call i32 @clk_prepare(ptr noundef %121) #6
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %119
  %125 = tail call i32 @clk_enable(ptr noundef %121) #6
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %132, label %127

127:                                              ; preds = %124
  tail call void @clk_unprepare(ptr noundef %121) #6
  br label %128

128:                                              ; preds = %127, %119
  %129 = phi i32 [ %122, %119 ], [ %125, %127 ]
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.44) #7
  br label %268

132:                                              ; preds = %128, %124
  %133 = getelementptr inbounds %struct.imx_ahci_priv, ptr %91, i32 0, i32 6
  %134 = load ptr, ptr %133, align 4
  %135 = tail call i32 @clk_prepare(ptr noundef %134) #6
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %132
  %138 = tail call i32 @clk_enable(ptr noundef %134) #6
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %145, label %140

140:                                              ; preds = %137
  tail call void @clk_unprepare(ptr noundef %134) #6
  br label %141

141:                                              ; preds = %140, %132
  %142 = phi i32 [ %135, %132 ], [ %138, %140 ]
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %141
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.45) #7
  br label %266

145:                                              ; preds = %141, %137
  %146 = getelementptr inbounds %struct.imx_ahci_priv, ptr %91, i32 0, i32 7
  %147 = load ptr, ptr %146, align 4
  %148 = tail call i32 @clk_prepare(ptr noundef %147) #6
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %145
  %151 = tail call i32 @clk_enable(ptr noundef %147) #6
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %158, label %153

153:                                              ; preds = %150
  tail call void @clk_unprepare(ptr noundef %147) #6
  br label %154

154:                                              ; preds = %153, %145
  %155 = phi i32 [ %148, %145 ], [ %151, %153 ]
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %154
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.46) #7
  br label %264

158:                                              ; preds = %154, %150
  %159 = getelementptr inbounds %struct.imx_ahci_priv, ptr %91, i32 0, i32 12
  %160 = load ptr, ptr %159, align 4
  %161 = call i32 @regmap_read(ptr noundef %160, i32 noundef 720904, ptr noundef nonnull %2) #6
  %162 = load i32, ptr %2, align 4
  %163 = and i32 %162, 16
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %158
  %166 = load ptr, ptr %159, align 4
  %167 = call i32 @regmap_update_bits_base(ptr noundef %166, i32 noundef 589824, i32 noundef 50331648, i32 noundef 50331648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %168

168:                                              ; preds = %165, %158
  %169 = load ptr, ptr %159, align 4
  %170 = call i32 @regmap_read(ptr noundef %169, i32 noundef 786440, ptr noundef nonnull %3) #6
  %171 = load i32, ptr %3, align 4
  %172 = and i32 %171, 16
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %168
  %175 = load ptr, ptr %159, align 4
  %176 = call i32 @regmap_update_bits_base(ptr noundef %175, i32 noundef 589824, i32 noundef 201326592, i32 noundef 201326592, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %177 = load i32, ptr %3, align 4
  br label %178

178:                                              ; preds = %174, %168
  %179 = phi i32 [ %177, %174 ], [ %171, %168 ]
  %180 = load i32, ptr %2, align 4
  %181 = or i32 %180, %179
  %182 = and i32 %181, 16
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %178
  %185 = load ptr, ptr %159, align 4
  %186 = call i32 @regmap_update_bits_base(ptr noundef %185, i32 noundef 0, i32 noundef 3342336, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %187

187:                                              ; preds = %184, %178
  store i32 720904, ptr %2, align 4
  %188 = load ptr, ptr %159, align 4
  %189 = call i32 @regmap_update_bits_base(ptr noundef %188, i32 noundef 720904, i32 noundef 2097152, i32 noundef 2097152, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %190 = load ptr, ptr %159, align 4
  %191 = load i32, ptr %2, align 4
  %192 = call i32 @regmap_update_bits_base(ptr noundef %190, i32 noundef %191, i32 noundef 8388608, i32 noundef 8388608, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %193 = load ptr, ptr %159, align 4
  %194 = call i32 @regmap_update_bits_base(ptr noundef %193, i32 noundef 655360, i32 noundef 1966080, i32 noundef 524288, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %195 = load ptr, ptr %159, align 4
  %196 = call i32 @regmap_update_bits_base(ptr noundef %195, i32 noundef 917504, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %197 = load ptr, ptr %159, align 4
  %198 = call i32 @regmap_update_bits_base(ptr noundef %197, i32 noundef 917504, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %199 = load ptr, ptr %159, align 4
  %200 = call i32 @regmap_update_bits_base(ptr noundef %199, i32 noundef 917504, i32 noundef 4096, i32 noundef 4096, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %201 = load ptr, ptr %159, align 4
  %202 = call i32 @regmap_update_bits_base(ptr noundef %201, i32 noundef 917504, i32 noundef 855638016, i32 noundef 855638016, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %203 = load ptr, ptr %159, align 4
  %204 = call i32 @regmap_update_bits_base(ptr noundef %203, i32 noundef 851968, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %205 = load ptr, ptr %159, align 4
  %206 = call i32 @regmap_update_bits_base(ptr noundef %205, i32 noundef 851968, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %207 = load ptr, ptr %159, align 4
  %208 = call i32 @regmap_update_bits_base(ptr noundef %207, i32 noundef 851968, i32 noundef 4096, i32 noundef 4096, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %209 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %209(i32 noundef 214748) #6
  %210 = load ptr, ptr %159, align 4
  %211 = call i32 @regmap_update_bits_base(ptr noundef %210, i32 noundef 851968, i32 noundef 4096, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %212 = load ptr, ptr %159, align 4
  %213 = call i32 @regmap_update_bits_base(ptr noundef %212, i32 noundef 851968, i32 noundef 4096, i32 noundef 4096, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %214 = load ptr, ptr %159, align 4
  %215 = call i32 @regmap_update_bits_base(ptr noundef %214, i32 noundef 655360, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %216

216:                                              ; preds = %223, %187
  %217 = phi i32 [ 0, %187 ], [ %225, %223 ]
  store i32 655364, ptr %3, align 4
  %218 = load ptr, ptr %159, align 4
  %219 = call i32 @regmap_read(ptr noundef %218, i32 noundef 655364, ptr noundef nonnull %2) #6
  %220 = load i32, ptr %2, align 4
  %221 = and i32 %220, 16
  store i32 %221, ptr %2, align 4
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %229

223:                                              ; preds = %216
  %224 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %224(i32 noundef 214748) #6
  %225 = add nuw nsw i32 %217, 1
  %226 = icmp eq i32 %225, 100
  br i1 %226, label %227, label %216

227:                                              ; preds = %223
  %228 = load i32, ptr %2, align 4
  br label %229

229:                                              ; preds = %227, %216
  %230 = phi i32 [ %228, %227 ], [ %221, %216 ]
  %231 = icmp eq i32 %230, 16
  br i1 %231, label %234, label %232

232:                                              ; preds = %229
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.47) #7
  %233 = load ptr, ptr %146, align 4
  call void @clk_disable(ptr noundef %233) #6
  call void @clk_unprepare(ptr noundef %233) #6
  br label %264

234:                                              ; preds = %229
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !21
  call void @arm_heavy_mb() #6
  %235 = getelementptr inbounds %struct.imx_ahci_priv, ptr %91, i32 0, i32 16
  %236 = load i32, ptr %235, align 4
  %237 = trunc i32 %236 to i8
  %238 = getelementptr inbounds %struct.imx_ahci_priv, ptr %91, i32 0, i32 10
  %239 = load ptr, ptr %238, align 4
  %240 = getelementptr i8, ptr %239, i32 3
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %240, i8 %237) #6, !srcloc !22
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !23
  call void @arm_heavy_mb() #6
  %241 = load i32, ptr %235, align 4
  %242 = trunc i32 %241 to i8
  %243 = load ptr, ptr %238, align 4
  %244 = getelementptr i8, ptr %243, i32 9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %244, i8 %242) #6, !srcloc !22
  %245 = load ptr, ptr %238, align 4
  %246 = getelementptr i8, ptr %245, i32 3
  %247 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %246) #6, !srcloc !24
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !25
  %248 = zext i8 %247 to i32
  store i32 %248, ptr %3, align 4
  %249 = load i32, ptr %235, align 4
  %250 = icmp eq i32 %249, %248
  br i1 %250, label %252, label %251, !prof !26

251:                                              ; preds = %234
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %93, ptr noundef nonnull @.str.48) #7
  br label %252

252:                                              ; preds = %251, %234
  %253 = load ptr, ptr %238, align 4
  %254 = getelementptr i8, ptr %253, i32 9
  %255 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %254) #6, !srcloc !24
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !27
  %256 = zext i8 %255 to i32
  store i32 %256, ptr %3, align 4
  %257 = load i32, ptr %235, align 4
  %258 = icmp eq i32 %257, %256
  br i1 %258, label %260, label %259, !prof !26

259:                                              ; preds = %252
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %93, ptr noundef nonnull @.str.49) #7
  br label %260

260:                                              ; preds = %259, %252
  call void @usleep_range_state(i32 noundef 50, i32 noundef 100, i32 noundef 2) #6
  %261 = load ptr, ptr %146, align 4
  call void @clk_disable(ptr noundef %261) #6
  call void @clk_unprepare(ptr noundef %261) #6
  %262 = load ptr, ptr %107, align 4
  call void @clk_disable(ptr noundef %262) #6
  call void @clk_unprepare(ptr noundef %262) #6
  %263 = load ptr, ptr %94, align 4
  call void @clk_disable(ptr noundef %263) #6
  call void @clk_unprepare(ptr noundef %263) #6
  br label %272

264:                                              ; preds = %232, %157
  %265 = load ptr, ptr %133, align 4
  call void @clk_disable(ptr noundef %265) #6
  call void @clk_unprepare(ptr noundef %265) #6
  br label %266

266:                                              ; preds = %264, %144
  %267 = load ptr, ptr %120, align 4
  call void @clk_disable(ptr noundef %267) #6
  call void @clk_unprepare(ptr noundef %267) #6
  br label %268

268:                                              ; preds = %266, %131
  %269 = load ptr, ptr %107, align 4
  call void @clk_disable(ptr noundef %269) #6
  call void @clk_unprepare(ptr noundef %269) #6
  br label %270

270:                                              ; preds = %268, %118
  %271 = load ptr, ptr %94, align 4
  call void @clk_disable(ptr noundef %271) #6
  call void @clk_unprepare(ptr noundef %271) #6
  br label %272

272:                                              ; preds = %270, %260, %105
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  br label %273

273:                                              ; preds = %272, %81, %43, %26
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  br label %276

274:                                              ; preds = %87, %23
  %275 = phi i32 [ %24, %23 ], [ %88, %87 ]
  tail call void @ahci_platform_disable_regulators(ptr noundef %0) #6
  br label %276

276:                                              ; preds = %274, %273, %11, %1
  %277 = phi i32 [ %275, %274 ], [ 0, %273 ], [ 0, %1 ], [ %12, %11 ]
  ret i32 %277
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_platform_init_host(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @imx_sata_disable(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.ahci_host_priv, ptr %0, i32 0, i32 23
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.imx_ahci_priv, ptr %3, i32 0, i32 13
  %5 = load i8, ptr %4, align 4, !range !16
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %28

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.imx_ahci_priv, ptr %3, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  switch i32 %9, label %25 [
    i32 2, label %10
    i32 1, label %16
    i32 3, label %20
  ]

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.imx_ahci_priv, ptr %3, i32 0, i32 12
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 20, i32 noundef 1024, i32 noundef 1024, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %14 = load ptr, ptr %11, align 4
  %15 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 52, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %25

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.imx_ahci_priv, ptr %3, i32 0, i32 12
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 52, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %25

20:                                               ; preds = %7
  %21 = getelementptr inbounds %struct.imx_ahci_priv, ptr %3, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  tail call void @clk_disable(ptr noundef %22) #6
  tail call void @clk_unprepare(ptr noundef %22) #6
  %23 = getelementptr inbounds %struct.imx_ahci_priv, ptr %3, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  tail call void @clk_disable(ptr noundef %24) #6
  tail call void @clk_unprepare(ptr noundef %24) #6
  br label %25

25:                                               ; preds = %20, %16, %10, %7
  %26 = getelementptr inbounds %struct.imx_ahci_priv, ptr %3, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  tail call void @clk_disable(ptr noundef %27) #6
  tail call void @clk_unprepare(ptr noundef %27) #6
  tail call void @ahci_platform_disable_regulators(ptr noundef %0) #6
  br label %28

28:                                               ; preds = %25, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_consumer_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sata_ahci_show_temp(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4
  %5 = call i32 @sata_ahci_read_temperature(ptr noundef %0, ptr noundef nonnull %4)
  %6 = load i32, ptr %4, align 4
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.38, i32 noundef %6)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sata_ahci_read_temperature(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.ahci_host_priv, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !17
  tail call void @arm_heavy_mb() #6
  %7 = getelementptr i8, ptr %6, i32 376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 1) #6, !srcloc !12
  %8 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %6, i32 noundef 65536, i1 noundef zeroext true) #6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %6, i32 noundef 65536, i1 noundef zeroext false) #6
  br label %12

12:                                               ; preds = %10, %2
  %13 = tail call fastcc i32 @imx_phy_reg_write(i16 noundef zeroext 0, ptr noundef %6)
  %14 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %6, i32 noundef 524288, i1 noundef zeroext true) #6
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %6, i32 380
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !20
  %19 = trunc i32 %18 to i16
  %20 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %6, i32 noundef 524288, i1 noundef zeroext false) #6
  %21 = icmp eq i16 %19, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %16
  %23 = and i32 %18, 65535
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.39, i32 noundef %23) #7
  br label %24

24:                                               ; preds = %22, %16, %12
  %25 = phi i16 [ %19, %22 ], [ 0, %16 ], [ 0, %12 ]
  %26 = tail call fastcc i32 @imx_phy_reg_write(i16 noundef zeroext 23130, ptr noundef %6)
  %27 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %6, i32 noundef 524288, i1 noundef zeroext true) #6
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = getelementptr i8, ptr %6, i32 380
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !20
  %32 = trunc i32 %31 to i16
  %33 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %6, i32 noundef 524288, i1 noundef zeroext false) #6
  br label %34

34:                                               ; preds = %29, %24
  %35 = phi i16 [ %32, %29 ], [ %25, %24 ]
  %36 = icmp eq i16 %35, 23130
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = zext i16 %35 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.39, i32 noundef %38) #7
  br label %39

39:                                               ; preds = %37, %34
  %40 = tail call fastcc i32 @imx_phy_reg_write(i16 noundef zeroext 4660, ptr noundef %6)
  %41 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %6, i32 noundef 524288, i1 noundef zeroext true) #6
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = getelementptr i8, ptr %6, i32 380
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !20
  %46 = trunc i32 %45 to i16
  %47 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %6, i32 noundef 524288, i1 noundef zeroext false) #6
  br label %48

48:                                               ; preds = %43, %39
  %49 = phi i16 [ %46, %43 ], [ %35, %39 ]
  %50 = icmp eq i16 %49, 4660
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  %52 = zext i16 %49 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.39, i32 noundef %52) #7
  br label %53

53:                                               ; preds = %51, %48
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !17
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 23) #6, !srcloc !12
  %54 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %6, i32 noundef 65536, i1 noundef zeroext true) #6
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %6, i32 noundef 65536, i1 noundef zeroext false) #6
  br label %58

58:                                               ; preds = %56, %53
  %59 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %6, i32 noundef 524288, i1 noundef zeroext true) #6
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = getelementptr i8, ptr %6, i32 380
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !20
  %64 = trunc i32 %63 to i16
  %65 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %6, i32 noundef 524288, i1 noundef zeroext false) #6
  br label %66

66:                                               ; preds = %61, %58
  %67 = phi i16 [ %64, %61 ], [ 0, %58 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !17
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 9) #6, !srcloc !12
  %68 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %6, i32 noundef 65536, i1 noundef zeroext true) #6
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %6, i32 noundef 65536, i1 noundef zeroext false) #6
  br label %72

72:                                               ; preds = %70, %66
  %73 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %6, i32 noundef 524288, i1 noundef zeroext true) #6
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = getelementptr i8, ptr %6, i32 380
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !20
  %78 = trunc i32 %77 to i16
  %79 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %6, i32 noundef 524288, i1 noundef zeroext false) #6
  br label %80

80:                                               ; preds = %75, %72
  %81 = phi i16 [ %78, %75 ], [ 0, %72 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !17
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 8) #6, !srcloc !12
  %82 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %6, i32 noundef 65536, i1 noundef zeroext true) #6
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %6, i32 noundef 65536, i1 noundef zeroext false) #6
  br label %86

86:                                               ; preds = %84, %80
  %87 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %6, i32 noundef 524288, i1 noundef zeroext true) #6
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = getelementptr i8, ptr %6, i32 380
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %90) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !20
  %92 = trunc i32 %91 to i16
  %93 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %6, i32 noundef 524288, i1 noundef zeroext false) #6
  br label %94

94:                                               ; preds = %89, %86
  %95 = phi i16 [ %92, %89 ], [ 0, %86 ]
  %96 = and i16 %67, 8188
  %97 = and i16 %67, 1539
  %98 = or i16 %97, 2048
  %99 = and i16 %95, 2303
  %100 = or i16 %99, 16384
  %101 = and i16 %81, 4076
  %102 = or i16 %101, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !17
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 23) #6, !srcloc !12
  %103 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %6, i32 noundef 65536, i1 noundef zeroext true) #6
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %94
  %106 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %6, i32 noundef 65536, i1 noundef zeroext false) #6
  br label %107

107:                                              ; preds = %105, %94
  %108 = tail call fastcc i32 @imx_phy_reg_write(i16 noundef zeroext %98, ptr noundef %6)
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !17
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 8) #6, !srcloc !12
  %109 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %6, i32 noundef 65536, i1 noundef zeroext true) #6
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %6, i32 noundef 65536, i1 noundef zeroext false) #6
  br label %113

113:                                              ; preds = %111, %107
  %114 = tail call fastcc i32 @imx_phy_reg_write(i16 noundef zeroext %100, ptr noundef %6)
  %115 = tail call fastcc i32 @read_adc_sum(ptr noundef %0, i16 noundef zeroext %102, ptr noundef %6)
  %116 = or i16 %101, 17
  %117 = tail call fastcc i32 @read_adc_sum(ptr noundef %0, i16 noundef zeroext %116, ptr noundef %6)
  %118 = or i16 %98, %96
  %119 = and i16 %95, 30975
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !17
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 23) #6, !srcloc !12
  %120 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %6, i32 noundef 65536, i1 noundef zeroext true) #6
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %113
  %123 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %6, i32 noundef 65536, i1 noundef zeroext false) #6
  br label %124

124:                                              ; preds = %122, %113
  %125 = tail call fastcc i32 @imx_phy_reg_write(i16 noundef zeroext %118, ptr noundef %6)
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !17
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 8) #6, !srcloc !12
  %126 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %6, i32 noundef 65536, i1 noundef zeroext true) #6
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %124
  %129 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %6, i32 noundef 65536, i1 noundef zeroext false) #6
  br label %130

130:                                              ; preds = %128, %124
  %131 = tail call fastcc i32 @imx_phy_reg_write(i16 noundef zeroext %119, ptr noundef %6)
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !17
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 9) #6, !srcloc !12
  %132 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %6, i32 noundef 65536, i1 noundef zeroext true) #6
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %6, i32 noundef 65536, i1 noundef zeroext false) #6
  br label %136

136:                                              ; preds = %134, %130
  %137 = tail call fastcc i32 @imx_phy_reg_write(i16 noundef zeroext %81, ptr noundef %6)
  %138 = add i32 %117, 999
  %139 = icmp ult i32 %138, 1999
  %140 = select i1 %139, i32 1000, i32 %117
  %141 = sub i32 %140, %115
  %142 = sdiv i32 %140, 1000
  %143 = sdiv i32 %141, %142
  %144 = mul i32 %143, -559
  %145 = mul i32 %144, %143
  %146 = sdiv i32 %145, 1000
  %147 = mul i32 %143, 1379
  %148 = add i32 %147, -458000
  %149 = add i32 %148, %146
  store i32 %149, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @imx_phy_reg_write(i16 noundef zeroext %0, ptr noundef %1) unnamed_addr #2 {
  %3 = zext i16 %0 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !18
  tail call void @arm_heavy_mb() #6
  %4 = getelementptr i8, ptr %1, i32 376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %3) #6, !srcloc !12
  %5 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %1, i32 noundef 131072, i1 noundef zeroext true)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %2
  %8 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %1, i32 noundef 131072, i1 noundef zeroext false)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %7
  %11 = and i32 %3, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = or i32 %3, 262144
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !19
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %14) #6, !srcloc !12
  br label %21

15:                                               ; preds = %10
  %16 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %1, i32 noundef 262144, i1 noundef zeroext true)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %1, i32 noundef 262144, i1 noundef zeroext false)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %13
  br label %22

22:                                               ; preds = %21, %18, %15, %7, %2
  %23 = phi i32 [ 0, %21 ], [ %5, %2 ], [ %8, %7 ], [ %16, %15 ], [ %19, %18 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @read_adc_sum(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2) unnamed_addr #2 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !17
  tail call void @arm_heavy_mb() #6
  %4 = getelementptr i8, ptr %2, i32 376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 9) #6, !srcloc !12
  %5 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %2, i32 noundef 65536, i1 noundef zeroext true) #6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %2, i32 noundef 65536, i1 noundef zeroext false) #6
  br label %9

9:                                                ; preds = %7, %3
  %10 = tail call fastcc i32 @imx_phy_reg_write(i16 noundef zeroext %1, ptr noundef %2)
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !17
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 10) #6, !srcloc !12
  %11 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %2, i32 noundef 65536, i1 noundef zeroext true) #6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %2, i32 noundef 65536, i1 noundef zeroext false) #6
  br label %15

15:                                               ; preds = %13, %9
  %16 = getelementptr i8, ptr %2, i32 380
  br label %17

17:                                               ; preds = %29, %15
  %18 = phi i16 [ 0, %15 ], [ %30, %29 ]
  %19 = phi i32 [ 0, %15 ], [ %34, %29 ]
  %20 = phi i32 [ 0, %15 ], [ %35, %29 ]
  %21 = icmp ult i32 %19, 2
  br i1 %21, label %22, label %38

22:                                               ; preds = %17
  %23 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %2, i32 noundef 524288, i1 noundef zeroext true) #6
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !20
  %27 = trunc i32 %26 to i16
  %28 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %2, i32 noundef 524288, i1 noundef zeroext false) #6
  br label %29

29:                                               ; preds = %25, %22
  %30 = phi i16 [ %27, %25 ], [ %18, %22 ]
  %31 = lshr i16 %30, 10
  %32 = and i16 %31, 1
  %33 = zext i16 %32 to i32
  %34 = add nuw nsw i32 %19, %33
  %35 = add nuw nsw i32 %20, 1
  %36 = icmp eq i32 %35, 201
  br i1 %36, label %37, label %17

37:                                               ; preds = %29
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.40, i32 noundef 200) #7
  br label %38

38:                                               ; preds = %37, %17
  %39 = phi i16 [ %30, %37 ], [ %18, %17 ]
  br label %40

40:                                               ; preds = %53, %38
  %41 = phi i16 [ %54, %53 ], [ %39, %38 ]
  %42 = phi i32 [ %60, %53 ], [ 0, %38 ]
  %43 = phi i32 [ %63, %53 ], [ 0, %38 ]
  %44 = phi i16 [ %62, %53 ], [ 0, %38 ]
  %45 = icmp ult i32 %42, 80
  br i1 %45, label %46, label %66

46:                                               ; preds = %40
  %47 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %2, i32 noundef 524288, i1 noundef zeroext true) #6
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !20
  %51 = trunc i32 %50 to i16
  %52 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %2, i32 noundef 524288, i1 noundef zeroext false) #6
  br label %53

53:                                               ; preds = %49, %46
  %54 = phi i16 [ %51, %49 ], [ %41, %46 ]
  %55 = and i16 %54, 1024
  %56 = icmp eq i16 %55, 0
  %57 = and i16 %54, 1023
  %58 = xor i1 %56, true
  %59 = zext i1 %58 to i32
  %60 = add nuw nsw i32 %42, %59
  %61 = select i1 %56, i16 0, i16 %57
  %62 = add i16 %61, %44
  %63 = add nuw nsw i32 %43, 1
  %64 = icmp eq i32 %63, 201
  br i1 %64, label %65, label %40

65:                                               ; preds = %53
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.40, i32 noundef 200) #7
  br label %66

66:                                               ; preds = %65, %40
  %67 = phi i16 [ %62, %65 ], [ %44, %40 ]
  %68 = zext i16 %67 to i32
  %69 = mul nuw nsw i32 %68, 1000
  %70 = udiv i32 %69, 80
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @imx_phy_crbit_assert(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #2 {
  %4 = getelementptr i8, ptr %0, i32 376
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !28
  %6 = or i32 %5, %1
  %7 = xor i32 %1, -1
  %8 = and i32 %5, %7
  %9 = select i1 %2, i32 %6, i32 %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !29
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %9) #6, !srcloc !12
  %10 = getelementptr i8, ptr %0, i32 380
  %11 = xor i1 %2, true
  %12 = sext i1 %11 to i32
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !30
  %14 = xor i32 %13, %12
  %15 = and i32 %14, 262144
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %63

17:                                               ; preds = %3
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #6
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !30
  %19 = xor i32 %18, %12
  %20 = and i32 %19, 262144
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %63

22:                                               ; preds = %17
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #6
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !30
  %24 = xor i32 %23, %12
  %25 = and i32 %24, 262144
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %63

27:                                               ; preds = %22
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #6
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !30
  %29 = xor i32 %28, %12
  %30 = and i32 %29, 262144
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %63

32:                                               ; preds = %27
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #6
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !30
  %34 = xor i32 %33, %12
  %35 = and i32 %34, 262144
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %63

37:                                               ; preds = %32
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #6
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !30
  %39 = xor i32 %38, %12
  %40 = and i32 %39, 262144
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %63

42:                                               ; preds = %37
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #6
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !30
  %44 = xor i32 %43, %12
  %45 = and i32 %44, 262144
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %42
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #6
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !30
  %49 = xor i32 %48, %12
  %50 = and i32 %49, 262144
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %47
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #6
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !30
  %54 = xor i32 %53, %12
  %55 = and i32 %54, 262144
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #6
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !30
  %59 = xor i32 %58, %12
  %60 = and i32 %59, 262144
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #6
  br label %63

63:                                               ; preds = %62, %57, %52, %47, %42, %37, %32, %27, %22, %17, %3
  %64 = phi i32 [ 0, %3 ], [ 0, %17 ], [ 0, %22 ], [ 0, %27 ], [ 0, %32 ], [ 0, %37 ], [ 0, %42 ], [ 0, %47 ], [ 0, %52 ], [ 0, %57 ], [ -110, %62 ]
  ret i32 %64
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_platform_enable_regulators(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahci_platform_disable_regulators(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahci_imx_softreset(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = load ptr, ptr %0, align 64
  %5 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 32
  %6 = load ptr, ptr %5, align 32
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.ata_host, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ahci_host_priv, ptr %10, i32 0, i32 23
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.imx_ahci_priv, ptr %12, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  %16 = load ptr, ptr getelementptr inbounds (%struct.ata_port_operations, ptr @ahci_pmp_retry_srst_ops, i32 0, i32 15), align 4
  %17 = load ptr, ptr getelementptr inbounds (%struct.ata_port_operations, ptr @ahci_ops, i32 0, i32 15), align 4
  %18 = select i1 %15, ptr %16, ptr %17
  %19 = tail call i32 %18(ptr noundef %0, ptr noundef %1, i32 noundef %2) #6
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ahci_imx_error_handler(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 32
  %3 = load ptr, ptr %2, align 32
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ata_host, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ahci_host_priv, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ahci_host_priv, ptr %7, i32 0, i32 23
  %11 = load ptr, ptr %10, align 4
  tail call void @ahci_error_handler(ptr noundef %0) #6
  %12 = getelementptr inbounds %struct.imx_ahci_priv, ptr %11, i32 0, i32 14
  %13 = load i8, ptr %12, align 1, !range !16
  %14 = icmp eq i8 %13, 0
  %15 = load i32, ptr @ahci_imx_hotplug, align 4
  %16 = icmp ne i32 %15, 0
  %17 = select i1 %14, i1 true, i1 %16
  br i1 %17, label %29, label %18

18:                                               ; preds = %1
  store i8 0, ptr %12, align 1
  %19 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25
  %20 = tail call ptr @ata_dev_next(ptr noundef null, ptr noundef %19, i32 noundef 0) #6
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = getelementptr i8, ptr %9, i32 376
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !31
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !32
  tail call void @arm_heavy_mb() #6
  %25 = or i32 %24, 1048576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %25) #6, !srcloc !12
  tail call fastcc void @imx_sata_disable(ptr noundef %7)
  %26 = getelementptr inbounds %struct.imx_ahci_priv, ptr %11, i32 0, i32 13
  store i8 1, ptr %26, align 4
  %27 = load ptr, ptr %2, align 32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %27, ptr noundef nonnull @.str.50) #7
  %28 = load ptr, ptr %2, align 32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %28, ptr noundef nonnull @.str.51) #7
  br label %29

29:                                               ; preds = %22, %18, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ahci_imx_host_stop(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ahci_host_priv, ptr %3, i32 0, i32 23
  %5 = load ptr, ptr %4, align 4
  tail call fastcc void @imx_sata_disable(ptr noundef %3)
  %6 = getelementptr inbounds %struct.imx_ahci_priv, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %7) #6
  tail call void @clk_unprepare(ptr noundef %7) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahci_error_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_dev_next(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

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
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_ahci_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @ahci_platform_suspend_host(ptr noundef %0) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call fastcc void @imx_sata_disable(ptr noundef %5)
  br label %9

9:                                                ; preds = %8, %1
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_ahci_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = tail call fastcc i32 @imx_sata_enable(ptr noundef %5)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = tail call i32 @ahci_platform_resume_host(ptr noundef %0) #6
  br label %10

10:                                               ; preds = %8, %1
  %11 = phi i32 [ %9, %8 ], [ %6, %1 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_platform_suspend_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_platform_resume_host(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{!"auto-init"}
!9 = !{i64 3732845}
!10 = !{i64 2155257110}
!11 = !{i64 2155257304}
!12 = !{i64 3732427}
!13 = !{i64 2155257816}
!14 = !{i64 2155258017}
!15 = !{i64 2155258364}
!16 = !{i8 0, i8 2}
!17 = !{i64 2155224523}
!18 = !{i64 2155224845}
!19 = !{i64 2155225167}
!20 = !{i64 2155225638}
!21 = !{i64 2155236592}
!22 = !{i64 3732230}
!23 = !{i64 2155236954}
!24 = !{i64 3732625}
!25 = !{i64 2155237361}
!26 = !{!"branch_weights", i32 2000, i32 1}
!27 = !{i64 2155238310}
!28 = !{i64 2155223672}
!29 = !{i64 2155223860}
!30 = !{i64 2155224331}
!31 = !{i64 2155241171}
!32 = !{i64 2155241385}
