; ModuleID = '/llk/IR/drivers/dma/imx-sdma.c_pt.bc'
source_filename = "../drivers/dma/imx-sdma.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.sdma_driver_data = type { i32, i32, ptr, i8, i8 }
%struct.sdma_script_start_addrs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.sdma_engine = type { ptr, [32 x %struct.sdma_channel], ptr, ptr, ptr, i32, %struct.dma_device, ptr, ptr, %struct.spinlock, i32, ptr, ptr, i32, i32, i32, i32, ptr, i8, i8 }
%struct.sdma_channel = type { %struct.virt_dma_chan, ptr, ptr, i32, i32, %struct.dma_slave_config, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, %struct.imx_dma_data, %struct.work_struct, %struct.list_head, i8 }
%struct.virt_dma_chan = type { %struct.dma_chan, %struct.tasklet_struct, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.68, i32 }
%union.anon.68 = type { ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.imx_dma_data = type { i32, i32, i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dmaengine_result = type { i32, i32 }
%struct.sdma_desc = type { %struct.virt_dma_desc, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.virt_dma_desc = type { %struct.dma_async_tx_descriptor, %struct.dmaengine_result, %struct.list_head }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.sdma_buffer_descriptor = type { %struct.sdma_mode_count, i32, i32 }
%struct.sdma_mode_count = type { i32 }
%struct.sdma_channel_control = type { i32, i32, [2 x i32] }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.property = type { ptr, i32, ptr, ptr, i32, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.sdma_context_data = type { %struct.sdma_state_registers, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sdma_state_registers = type { i64 }
%struct.firmware = type { i32, ptr, ptr }
%struct.sdma_firmware_header = type { i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_imx_sdma__231_2260_sdma_driver_init6 = internal global ptr @sdma_driver_init, section ".initcall6.init", align 4
@sdma_driver = internal global %struct.platform_driver { ptr @sdma_probe, ptr @sdma_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sdma_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_sdma_driver_exit = internal global ptr @sdma_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author232 = internal constant [67 x i8] c"imx_sdma.author=Sascha Hauer, Pengutronix <s.hauer@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description233 = internal constant [38 x i8] c"imx_sdma.description=i.MX SDMA driver\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware234 = internal constant [42 x i8] c"imx_sdma.firmware=imx/sdma/sdma-imx6q.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware235 = internal constant [42 x i8] c"imx_sdma.firmware=imx/sdma/sdma-imx7d.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_file236 = internal constant [35 x i8] c"imx_sdma.file=drivers/dma/imx-sdma\00", section ".modinfo", align 1
@__UNIQUE_ID_license237 = internal constant [21 x i8] c"imx_sdma.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [9 x i8] c"imx-sdma\00", align 1
@sdma_dt_ids = internal constant [10 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6q-sdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdma_imx6q }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx53-sdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdma_imx53 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx51-sdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdma_imx51 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx35-sdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdma_imx35 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx31-sdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdma_imx31 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx25-sdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdma_imx25 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx7d-sdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdma_imx7d }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6ul-sdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdma_imx6ul }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8mq-sdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdma_imx8mq }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"ipg\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ahb\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"sdma\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"unable to register\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"failed to register controller\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"fsl,spba-bus\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"fsl,sdma-ram-script-name\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"failed to get firmware name\0A\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"failed to get firmware from device tree\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.10 = private unnamed_addr constant [31 x i8] c"initialisation failed with %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"gpr\00", align 1
@__const.sdma_event_remap.propname = private unnamed_addr constant [21 x i8] c"fsl,sdma-event-remap\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"the property %s must modulo %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"failed to get gpr regmap\0A\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"failed to read property %s index %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [48 x i8] c"SDMA script number %d not match with firmware.\0A\00", align 1
@.str.16 = private unnamed_addr constant [63 x i8] c"SDMA channel %d: maximum bytes for sg entry exceeded: %d > %d\0A\00", align 1
@sdma_transfer_init.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"sdma firmware not ready!\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.18 = private unnamed_addr constant [31 x i8] c"Timeout waiting for CH0 ready\0A\00", align 1
@.str.19 = private unnamed_addr constant [57 x i8] c"SDMA channel %d: maximum period size exceeded: %zu > %d\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.20 = private unnamed_addr constant [8 x i8] c"imx-dma\00", align 1
@.str.21 = private unnamed_addr constant [49 x i8] c"external firmware not found, using ROM firmware\0A\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"unknown firmware version\0A\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"loaded firmware %d.%d\0A\00", align 1
@sdma_imx6q = internal global %struct.sdma_driver_data { i32 512, i32 48, ptr @sdma_script_imx6q, i8 0, i8 0 }, align 4
@sdma_imx53 = internal global %struct.sdma_driver_data { i32 512, i32 48, ptr @sdma_script_imx53, i8 0, i8 0 }, align 4
@sdma_imx51 = internal global %struct.sdma_driver_data { i32 512, i32 48, ptr @sdma_script_imx51, i8 0, i8 0 }, align 4
@sdma_imx35 = internal global %struct.sdma_driver_data { i32 512, i32 48, ptr null, i8 0, i8 0 }, align 4
@sdma_imx31 = internal global %struct.sdma_driver_data { i32 128, i32 32, ptr null, i8 0, i8 0 }, align 4
@sdma_imx25 = internal global %struct.sdma_driver_data { i32 512, i32 48, ptr @sdma_script_imx25, i8 0, i8 0 }, align 4
@sdma_imx7d = internal global %struct.sdma_driver_data { i32 512, i32 48, ptr @sdma_script_imx7d, i8 0, i8 0 }, align 4
@sdma_imx6ul = internal global %struct.sdma_driver_data { i32 512, i32 48, ptr @sdma_script_imx6q, i8 0, i8 1 }, align 4
@sdma_imx8mq = internal global %struct.sdma_driver_data { i32 512, i32 48, ptr @sdma_script_imx7d, i8 1, i8 0 }, align 4
@sdma_script_imx6q = internal global %struct.sdma_script_start_addrs { i32 642, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 747, i32 6331, i32 0, i32 0, i32 0, i32 960, i32 0, i32 0, i32 0, i32 683, i32 0, i32 891, i32 0, i32 0, i32 1100, i32 1134, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 817, i32 1032, i32 0 }, align 4
@sdma_script_imx53 = internal global %struct.sdma_script_start_addrs { i32 642, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1193, i32 0, i32 1290, i32 0, i32 0, i32 0, i32 747, i32 0, i32 0, i32 0, i32 0, i32 960, i32 0, i32 0, i32 0, i32 683, i32 0, i32 891, i32 0, i32 0, i32 1100, i32 1134, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 817, i32 1032, i32 0 }, align 4
@sdma_script_imx51 = internal global %struct.sdma_script_start_addrs { i32 642, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 747, i32 0, i32 0, i32 0, i32 0, i32 961, i32 1473, i32 1392, i32 1033, i32 683, i32 1251, i32 892, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 817, i32 0, i32 0 }, align 4
@sdma_script_imx25 = internal global %struct.sdma_script_start_addrs { i32 729, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1255, i32 834, i32 0, i32 0, i32 0, i32 1329, i32 1048, i32 1560, i32 1479, i32 1189, i32 770, i32 1407, i32 979, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 904, i32 1120, i32 0 }, align 4
@sdma_script_imx7d = internal global %struct.sdma_script_start_addrs { i32 644, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 749, i32 0, i32 0, i32 0, i32 0, i32 962, i32 0, i32 0, i32 0, i32 685, i32 0, i32 893, i32 0, i32 0, i32 1102, i32 1136, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 819, i32 1034, i32 0 }, align 4
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_description233, ptr @__UNIQUE_ID_file236, ptr @__UNIQUE_ID_firmware234, ptr @__UNIQUE_ID_firmware235, ptr @__UNIQUE_ID_license237, ptr @__exitcall_sdma_driver_exit, ptr @__initcall__kmod_imx_sdma__231_2260_sdma_driver_init6, ptr @sdma_driver_exit], section "llvm.metadata"
@switch.table.sdma_load_firmware = private unnamed_addr constant [4 x i32] [i32 34, i32 38, i32 45, i32 46], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sdma_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sdma_driver, ptr noundef null) #12
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sdma_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sdma_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdma_probe(ptr noundef %0) #2 {
  %2 = alloca ptr, align 4
  %3 = alloca %struct.resource, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store ptr null, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i32 32, i1 false), !annotation !8
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 17
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 16
  store ptr %7, ptr %8, align 4
  %9 = tail call i32 @dma_set_mask(ptr noundef %4, i64 noundef 4294967295) #12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %204

11:                                               ; preds = %1
  %12 = tail call i32 @dma_set_coherent_mask(ptr noundef %4, i64 noundef 4294967295) #12
  %13 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 10432, i32 noundef 3520) #12
  %14 = icmp eq ptr %13, null
  br i1 %14, label %204, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.sdma_engine, ptr %13, i32 0, i32 9
  store i32 0, ptr %16, align 4
  store ptr %4, ptr %13, align 4
  %17 = tail call ptr @of_device_get_match_data(ptr noundef %4) #12
  %18 = getelementptr inbounds %struct.sdma_engine, ptr %13, i32 0, i32 12
  store ptr %17, ptr %18, align 4
  %19 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #12
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %204, label %21

21:                                               ; preds = %15
  %22 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #12
  %23 = tail call ptr @devm_ioremap_resource(ptr noundef %4, ptr noundef %22) #12
  %24 = getelementptr inbounds %struct.sdma_engine, ptr %13, i32 0, i32 3
  store ptr %23, ptr %24, align 4
  %25 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = ptrtoint ptr %23 to i32
  br label %204

28:                                               ; preds = %21
  %29 = tail call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull @.str.1) #12
  %30 = getelementptr inbounds %struct.sdma_engine, ptr %13, i32 0, i32 7
  store ptr %29, ptr %30, align 4
  %31 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = ptrtoint ptr %29 to i32
  br label %204

34:                                               ; preds = %28
  %35 = tail call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull @.str.2) #12
  %36 = getelementptr inbounds %struct.sdma_engine, ptr %13, i32 0, i32 8
  store ptr %35, ptr %36, align 4
  %37 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = ptrtoint ptr %35 to i32
  br label %204

40:                                               ; preds = %34
  %41 = load ptr, ptr %30, align 4
  %42 = tail call i32 @clk_prepare(ptr noundef %41) #12
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %204

44:                                               ; preds = %40
  %45 = load ptr, ptr %36, align 4
  %46 = tail call i32 @clk_prepare(ptr noundef %45) #12
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %201

48:                                               ; preds = %44
  %49 = tail call i32 @devm_request_threaded_irq(ptr noundef %4, i32 noundef %19, ptr noundef nonnull @sdma_int_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull %13) #12
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %198

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.sdma_engine, ptr %13, i32 0, i32 15
  store i32 %19, ptr %52, align 4
  %53 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %54 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %53, i32 noundef 3520, i32 noundef 184) #13
  %55 = getelementptr inbounds %struct.sdma_engine, ptr %13, i32 0, i32 11
  store ptr %54, ptr %55, align 4
  %56 = icmp eq ptr %54, null
  br i1 %56, label %198, label %57

57:                                               ; preds = %51
  store i32 -22, ptr %54, align 8
  %58 = getelementptr i32, ptr %54, i32 1
  store i32 -22, ptr %58, align 4
  %59 = getelementptr i32, ptr %54, i32 2
  store i32 -22, ptr %59, align 8
  %60 = getelementptr i32, ptr %54, i32 3
  store i32 -22, ptr %60, align 4
  %61 = getelementptr i32, ptr %54, i32 4
  store i32 -22, ptr %61, align 8
  %62 = getelementptr i32, ptr %54, i32 5
  store i32 -22, ptr %62, align 4
  %63 = getelementptr i32, ptr %54, i32 6
  store i32 -22, ptr %63, align 8
  %64 = getelementptr i32, ptr %54, i32 7
  store i32 -22, ptr %64, align 4
  %65 = getelementptr i32, ptr %54, i32 8
  store i32 -22, ptr %65, align 8
  %66 = getelementptr i32, ptr %54, i32 9
  store i32 -22, ptr %66, align 4
  %67 = getelementptr i32, ptr %54, i32 10
  store i32 -22, ptr %67, align 8
  %68 = getelementptr i32, ptr %54, i32 11
  store i32 -22, ptr %68, align 4
  %69 = getelementptr i32, ptr %54, i32 12
  store i32 -22, ptr %69, align 8
  %70 = getelementptr i32, ptr %54, i32 13
  store i32 -22, ptr %70, align 4
  %71 = getelementptr i32, ptr %54, i32 14
  store i32 -22, ptr %71, align 8
  %72 = getelementptr i32, ptr %54, i32 15
  store i32 -22, ptr %72, align 4
  %73 = getelementptr i32, ptr %54, i32 16
  store i32 -22, ptr %73, align 8
  %74 = getelementptr i32, ptr %54, i32 17
  store i32 -22, ptr %74, align 4
  %75 = getelementptr i32, ptr %54, i32 18
  store i32 -22, ptr %75, align 8
  %76 = getelementptr i32, ptr %54, i32 19
  store i32 -22, ptr %76, align 4
  %77 = getelementptr i32, ptr %54, i32 20
  store i32 -22, ptr %77, align 8
  %78 = getelementptr i32, ptr %54, i32 21
  store i32 -22, ptr %78, align 4
  %79 = getelementptr i32, ptr %54, i32 22
  store i32 -22, ptr %79, align 8
  %80 = getelementptr i32, ptr %54, i32 23
  store i32 -22, ptr %80, align 4
  %81 = getelementptr i32, ptr %54, i32 24
  store i32 -22, ptr %81, align 8
  %82 = getelementptr i32, ptr %54, i32 25
  store i32 -22, ptr %82, align 4
  %83 = getelementptr i32, ptr %54, i32 26
  store i32 -22, ptr %83, align 8
  %84 = getelementptr i32, ptr %54, i32 27
  store i32 -22, ptr %84, align 4
  %85 = getelementptr i32, ptr %54, i32 28
  store i32 -22, ptr %85, align 8
  %86 = getelementptr i32, ptr %54, i32 29
  store i32 -22, ptr %86, align 4
  %87 = getelementptr i32, ptr %54, i32 30
  store i32 -22, ptr %87, align 8
  %88 = getelementptr i32, ptr %54, i32 31
  store i32 -22, ptr %88, align 4
  %89 = getelementptr i32, ptr %54, i32 32
  store i32 -22, ptr %89, align 8
  %90 = getelementptr i32, ptr %54, i32 33
  store i32 -22, ptr %90, align 4
  %91 = getelementptr i32, ptr %54, i32 34
  store i32 -22, ptr %91, align 8
  %92 = getelementptr i32, ptr %54, i32 35
  store i32 -22, ptr %92, align 4
  %93 = getelementptr i32, ptr %54, i32 36
  store i32 -22, ptr %93, align 8
  %94 = getelementptr i32, ptr %54, i32 37
  store i32 -22, ptr %94, align 4
  %95 = getelementptr i32, ptr %54, i32 38
  store i32 -22, ptr %95, align 8
  %96 = getelementptr i32, ptr %54, i32 39
  store i32 -22, ptr %96, align 4
  %97 = getelementptr i32, ptr %54, i32 40
  store i32 -22, ptr %97, align 8
  %98 = getelementptr i32, ptr %54, i32 41
  store i32 -22, ptr %98, align 4
  %99 = getelementptr i32, ptr %54, i32 42
  store i32 -22, ptr %99, align 8
  %100 = getelementptr i32, ptr %54, i32 43
  store i32 -22, ptr %100, align 4
  %101 = getelementptr i32, ptr %54, i32 44
  store i32 -22, ptr %101, align 8
  %102 = getelementptr i32, ptr %54, i32 45
  store i32 -22, ptr %102, align 4
  %103 = getelementptr inbounds %struct.sdma_engine, ptr %13, i32 0, i32 6
  %104 = getelementptr inbounds %struct.sdma_engine, ptr %13, i32 0, i32 6, i32 6
  tail call void @_set_bit(i32 noundef 11, ptr noundef %104) #12
  tail call void @_set_bit(i32 noundef 12, ptr noundef %104) #12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %104) #12
  %105 = getelementptr inbounds %struct.sdma_engine, ptr %13, i32 0, i32 6, i32 3
  store volatile ptr %105, ptr %105, align 4
  %106 = getelementptr inbounds %struct.sdma_engine, ptr %13, i32 0, i32 6, i32 3, i32 1
  store ptr %105, ptr %106, align 4
  %107 = getelementptr %struct.sdma_engine, ptr %13, i32 0, i32 1, i32 0, i32 2
  store ptr %13, ptr %107, align 4
  %108 = getelementptr %struct.sdma_engine, ptr %13, i32 0, i32 1, i32 0, i32 3
  store i32 0, ptr %108, align 4
  %109 = getelementptr %struct.sdma_engine, ptr %13, i32 0, i32 1, i32 0, i32 0, i32 2
  store ptr @sdma_desc_free, ptr %109, align 4
  %110 = getelementptr %struct.sdma_engine, ptr %13, i32 0, i32 1, i32 0, i32 24
  store volatile ptr %110, ptr %110, align 4
  %111 = getelementptr %struct.sdma_engine, ptr %13, i32 0, i32 1, i32 0, i32 24, i32 1
  store ptr %110, ptr %111, align 4
  %112 = getelementptr %struct.sdma_engine, ptr %13, i32 0, i32 1, i32 0, i32 23
  store i32 -32, ptr %112, align 4
  %113 = getelementptr %struct.sdma_engine, ptr %13, i32 0, i32 1, i32 0, i32 23, i32 1
  store volatile ptr %113, ptr %113, align 4
  %114 = getelementptr %struct.sdma_engine, ptr %13, i32 0, i32 1, i32 0, i32 23, i32 1, i32 1
  store ptr %113, ptr %114, align 4
  %115 = getelementptr %struct.sdma_engine, ptr %13, i32 0, i32 1, i32 0, i32 23, i32 2
  store ptr @sdma_channel_terminate_work, ptr %115, align 4
  br label %116

116:                                              ; preds = %116, %57
  %117 = phi i32 [ 1, %57 ], [ %128, %116 ]
  %118 = getelementptr %struct.sdma_engine, ptr %13, i32 0, i32 1, i32 %117
  %119 = getelementptr %struct.sdma_engine, ptr %13, i32 0, i32 1, i32 %117, i32 2
  store ptr %13, ptr %119, align 4
  %120 = getelementptr %struct.sdma_engine, ptr %13, i32 0, i32 1, i32 %117, i32 3
  store i32 %117, ptr %120, align 4
  %121 = getelementptr inbounds %struct.virt_dma_chan, ptr %118, i32 0, i32 2
  store ptr @sdma_desc_free, ptr %121, align 4
  %122 = getelementptr %struct.sdma_engine, ptr %13, i32 0, i32 1, i32 %117, i32 24
  store volatile ptr %122, ptr %122, align 4
  %123 = getelementptr %struct.sdma_engine, ptr %13, i32 0, i32 1, i32 %117, i32 24, i32 1
  store ptr %122, ptr %123, align 4
  %124 = getelementptr %struct.sdma_engine, ptr %13, i32 0, i32 1, i32 %117, i32 23
  store i32 -32, ptr %124, align 4
  %125 = getelementptr %struct.sdma_engine, ptr %13, i32 0, i32 1, i32 %117, i32 23, i32 1
  store volatile ptr %125, ptr %125, align 4
  %126 = getelementptr %struct.sdma_engine, ptr %13, i32 0, i32 1, i32 %117, i32 23, i32 1, i32 1
  store ptr %125, ptr %126, align 4
  %127 = getelementptr %struct.sdma_engine, ptr %13, i32 0, i32 1, i32 %117, i32 23, i32 2
  store ptr @sdma_channel_terminate_work, ptr %127, align 4
  tail call void @vchan_init(ptr noundef %118, ptr noundef %103) #12
  %128 = add nuw nsw i32 %117, 1
  %129 = icmp eq i32 %128, 32
  br i1 %129, label %130, label %116, !llvm.loop !9

130:                                              ; preds = %116
  %131 = tail call fastcc i32 @sdma_init(ptr noundef nonnull %13)
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %195

133:                                              ; preds = %130
  %134 = tail call fastcc i32 @sdma_event_remap(ptr noundef nonnull %13)
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %195

136:                                              ; preds = %133
  %137 = load ptr, ptr %18, align 4
  %138 = getelementptr inbounds %struct.sdma_driver_data, ptr %137, i32 0, i32 2
  %139 = load ptr, ptr %138, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %142, label %141

141:                                              ; preds = %136
  tail call fastcc void @sdma_add_scripts(ptr noundef nonnull %13, ptr noundef nonnull %139)
  br label %142

142:                                              ; preds = %141, %136
  %143 = getelementptr inbounds %struct.sdma_engine, ptr %13, i32 0, i32 6, i32 15
  store ptr %4, ptr %143, align 4
  %144 = getelementptr inbounds %struct.sdma_engine, ptr %13, i32 0, i32 6, i32 27
  store ptr @sdma_alloc_chan_resources, ptr %144, align 4
  %145 = getelementptr inbounds %struct.sdma_engine, ptr %13, i32 0, i32 6, i32 29
  store ptr @sdma_free_chan_resources, ptr %145, align 4
  %146 = getelementptr inbounds %struct.sdma_engine, ptr %13, i32 0, i32 6, i32 49
  store ptr @sdma_tx_status, ptr %146, align 4
  %147 = getelementptr inbounds %struct.sdma_engine, ptr %13, i32 0, i32 6, i32 39
  store ptr @sdma_prep_slave_sg, ptr %147, align 4
  %148 = getelementptr inbounds %struct.sdma_engine, ptr %13, i32 0, i32 6, i32 40
  store ptr @sdma_prep_dma_cyclic, ptr %148, align 4
  %149 = getelementptr inbounds %struct.sdma_engine, ptr %13, i32 0, i32 6, i32 44
  store ptr @sdma_config, ptr %149, align 4
  %150 = getelementptr inbounds %struct.sdma_engine, ptr %13, i32 0, i32 6, i32 47
  store ptr @sdma_terminate_all, ptr %150, align 4
  %151 = getelementptr inbounds %struct.sdma_engine, ptr %13, i32 0, i32 6, i32 48
  store ptr @sdma_channel_synchronize, ptr %151, align 4
  %152 = getelementptr inbounds %struct.sdma_engine, ptr %13, i32 0, i32 6, i32 19
  store i32 22, ptr %152, align 4
  %153 = getelementptr inbounds %struct.sdma_engine, ptr %13, i32 0, i32 6, i32 20
  store i32 22, ptr %153, align 4
  %154 = getelementptr inbounds %struct.sdma_engine, ptr %13, i32 0, i32 6, i32 21
  store i32 14, ptr %154, align 4
  %155 = getelementptr inbounds %struct.sdma_engine, ptr %13, i32 0, i32 6, i32 26
  store i32 1, ptr %155, align 4
  %156 = getelementptr inbounds %struct.sdma_engine, ptr %13, i32 0, i32 6, i32 30
  store ptr @sdma_prep_memcpy, ptr %156, align 4
  %157 = getelementptr inbounds %struct.sdma_engine, ptr %13, i32 0, i32 6, i32 50
  store ptr @sdma_issue_pending, ptr %157, align 4
  %158 = getelementptr inbounds %struct.sdma_engine, ptr %13, i32 0, i32 6, i32 10
  store i32 2, ptr %158, align 4
  %159 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 20
  %160 = load ptr, ptr %159, align 4
  %161 = icmp eq ptr %160, null
  br i1 %161, label %163, label %162

162:                                              ; preds = %142
  store i32 65535, ptr %160, align 4
  br label %163

163:                                              ; preds = %162, %142
  %164 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %13, ptr %164, align 8
  %165 = tail call i32 @dma_async_device_register(ptr noundef %103) #12
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %163
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.4) #14
  br label %195

168:                                              ; preds = %163
  %169 = icmp eq ptr %6, null
  br i1 %169, label %185, label %170

170:                                              ; preds = %168
  %171 = tail call i32 @of_dma_controller_register(ptr noundef nonnull %6, ptr noundef nonnull @sdma_xlate, ptr noundef nonnull %13) #12
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %170
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.5) #14
  tail call void @dma_async_device_unregister(ptr noundef %103) #12
  br label %195

174:                                              ; preds = %170
  %175 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.6) #12
  %176 = call i32 @of_address_to_resource(ptr noundef %175, i32 noundef 0, ptr noundef nonnull %3) #12
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %174
  %179 = load i32, ptr %3, align 4
  %180 = getelementptr inbounds %struct.sdma_engine, ptr %13, i32 0, i32 13
  store i32 %179, ptr %180, align 4
  %181 = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 1
  %182 = load i32, ptr %181, align 4
  %183 = getelementptr inbounds %struct.sdma_engine, ptr %13, i32 0, i32 14
  store i32 %182, ptr %183, align 4
  br label %184

184:                                              ; preds = %178, %174
  call void @of_node_put(ptr noundef %175) #12
  br label %185

185:                                              ; preds = %184, %168
  %186 = call i32 @of_property_read_string(ptr noundef %6, ptr noundef nonnull @.str.7, ptr noundef nonnull %2) #12
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %189, label %188

188:                                              ; preds = %185
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.8) #14
  br label %204

189:                                              ; preds = %185
  %190 = load ptr, ptr %2, align 4
  %191 = load ptr, ptr %13, align 4
  %192 = call i32 @request_firmware_nowait(ptr noundef null, i1 noundef zeroext true, ptr noundef %190, ptr noundef %191, i32 noundef 3264, ptr noundef %13, ptr noundef nonnull @sdma_load_firmware) #12
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %204, label %194

194:                                              ; preds = %189
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.9) #14
  br label %204

195:                                              ; preds = %173, %167, %133, %130
  %196 = phi i32 [ %131, %130 ], [ %134, %133 ], [ %165, %167 ], [ %171, %173 ]
  %197 = load ptr, ptr %55, align 4
  tail call void @kfree(ptr noundef %197) #12
  br label %198

198:                                              ; preds = %195, %51, %48
  %199 = phi i32 [ %49, %48 ], [ %196, %195 ], [ -12, %51 ]
  %200 = load ptr, ptr %36, align 4
  tail call void @clk_unprepare(ptr noundef %200) #12
  br label %201

201:                                              ; preds = %198, %44
  %202 = phi i32 [ %46, %44 ], [ %199, %198 ]
  %203 = load ptr, ptr %30, align 4
  tail call void @clk_unprepare(ptr noundef %203) #12
  br label %204

204:                                              ; preds = %201, %194, %189, %188, %40, %38, %32, %26, %15, %11, %1
  %205 = phi i32 [ %27, %26 ], [ %33, %32 ], [ %39, %38 ], [ %202, %201 ], [ -12, %11 ], [ %19, %15 ], [ %42, %40 ], [ 0, %189 ], [ 0, %194 ], [ 0, %188 ], [ %9, %1 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  ret i32 %205
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdma_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.sdma_engine, ptr %3, i32 0, i32 15
  %6 = load i32, ptr %5, align 4
  tail call void @devm_free_irq(ptr noundef %4, i32 noundef %6, ptr noundef %3) #12
  %7 = getelementptr inbounds %struct.sdma_engine, ptr %3, i32 0, i32 6
  tail call void @dma_async_device_unregister(ptr noundef %7) #12
  %8 = getelementptr inbounds %struct.sdma_engine, ptr %3, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  tail call void @kfree(ptr noundef %9) #12
  %10 = getelementptr inbounds %struct.sdma_engine, ptr %3, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  tail call void @clk_unprepare(ptr noundef %11) #12
  %12 = getelementptr inbounds %struct.sdma_engine, ptr %3, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  tail call void @clk_unprepare(ptr noundef %13) #12
  br label %14

14:                                               ; preds = %14, %1
  %15 = phi i32 [ 0, %1 ], [ %18, %14 ]
  %16 = getelementptr %struct.sdma_engine, ptr %3, i32 0, i32 1, i32 %15
  %17 = getelementptr inbounds %struct.virt_dma_chan, ptr %16, i32 0, i32 1
  tail call void @tasklet_kill(ptr noundef %17) #12
  tail call void @sdma_free_chan_resources(ptr noundef %16)
  %18 = add nuw nsw i32 %15, 1
  %19 = icmp eq i32 %18, 32
  br i1 %19, label %20, label %14

20:                                               ; preds = %14
  store ptr null, ptr %2, align 8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdma_int_handler(i32 noundef %0, ptr noundef %1) #2 {
  %3 = alloca %struct.dmaengine_result, align 8
  %4 = getelementptr inbounds %struct.sdma_engine, ptr %1, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #12, !srcloc !11
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #12, !srcloc !12
  %10 = and i32 %7, -2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %169, label %12

12:                                               ; preds = %162, %2
  %13 = phi i32 [ %167, %162 ], [ %10, %2 ]
  %14 = call i32 @llvm.ctlz.i32(i32 %13, i1 true) #12, !range !13
  %15 = xor i32 %14, 31
  %16 = getelementptr %struct.sdma_engine, ptr %1, i32 0, i32 1, i32 %15
  %17 = getelementptr inbounds %struct.virt_dma_chan, ptr %16, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %17) #12
  %18 = getelementptr %struct.sdma_engine, ptr %1, i32 0, i32 1, i32 %15, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %162, label %21

21:                                               ; preds = %12
  %22 = getelementptr %struct.sdma_engine, ptr %1, i32 0, i32 1, i32 %15, i32 14
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %83, label %26

26:                                               ; preds = %21
  %27 = getelementptr %struct.sdma_engine, ptr %1, i32 0, i32 1, i32 %15, i32 21
  %28 = load i32, ptr %27, align 4
  br label %29

29:                                               ; preds = %80, %26
  %30 = phi ptr [ %81, %80 ], [ %19, %26 ]
  %31 = phi i32 [ %48, %80 ], [ 0, %26 ]
  %32 = getelementptr inbounds %struct.sdma_desc, ptr %30, i32 0, i32 9
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.sdma_desc, ptr %30, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr %struct.sdma_buffer_descriptor, ptr %33, i32 %35
  %37 = load i32, ptr %36, align 1
  %38 = and i32 %37, 65536
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %162

40:                                               ; preds = %29
  %41 = and i32 %37, 1048576
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = and i32 %37, -1048577
  store i32 %44, ptr %36, align 1
  store i32 3, ptr %27, align 4
  %45 = load i32, ptr %36, align 1
  br label %46

46:                                               ; preds = %43, %40
  %47 = phi i32 [ %45, %43 ], [ %37, %40 ]
  %48 = phi i32 [ -5, %43 ], [ %31, %40 ]
  %49 = and i32 %47, 65535
  %50 = getelementptr inbounds %struct.sdma_desc, ptr %30, i32 0, i32 6
  store i32 %49, ptr %50, align 4
  %51 = load i32, ptr %36, align 1
  %52 = or i32 %51, 65536
  store i32 %52, ptr %36, align 1
  %53 = getelementptr inbounds %struct.sdma_desc, ptr %30, i32 0, i32 5
  %54 = load i32, ptr %53, align 4
  %55 = and i32 %54, 65535
  %56 = and i32 %52, -65536
  %57 = or i32 %55, %56
  store i32 %57, ptr %36, align 1
  %58 = load i32, ptr %34, align 4
  %59 = getelementptr inbounds %struct.sdma_desc, ptr %30, i32 0, i32 4
  store i32 %58, ptr %59, align 4
  %60 = add i32 %58, 1
  %61 = getelementptr inbounds %struct.sdma_desc, ptr %30, i32 0, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = urem i32 %60, %62
  store i32 %63, ptr %34, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  %64 = load i16, ptr %17, align 4
  %65 = add i16 %64, 1
  store i16 %65, ptr %17, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !15
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !17
  %66 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %30, i32 0, i32 6
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %30, i32 0, i32 7
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %30, i32 0, i32 8
  %71 = load ptr, ptr %70, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  store i64 0, ptr %3, align 8
  %72 = icmp eq ptr %69, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %46
  call void %69(ptr noundef %71, ptr noundef nonnull %3) #12
  br label %77

74:                                               ; preds = %46
  %75 = icmp eq ptr %67, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %74
  call void %67(ptr noundef %71) #12
  br label %77

77:                                               ; preds = %76, %74, %73
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  call void @_raw_spin_lock(ptr noundef %17) #12
  %78 = icmp eq i32 %48, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %77
  store i32 %28, ptr %27, align 4
  br label %80

80:                                               ; preds = %79, %77
  %81 = load ptr, ptr %18, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %162, label %29

83:                                               ; preds = %21
  %84 = getelementptr inbounds %struct.sdma_desc, ptr %19, i32 0, i32 6
  store i32 0, ptr %84, align 4
  %85 = load ptr, ptr %18, align 4
  %86 = getelementptr inbounds %struct.sdma_desc, ptr %85, i32 0, i32 1
  %87 = load i32, ptr %86, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %111, label %89

89:                                               ; preds = %89, %83
  %90 = phi ptr [ %105, %89 ], [ %85, %83 ]
  %91 = phi i32 [ %99, %89 ], [ 0, %83 ]
  %92 = phi i32 [ %104, %89 ], [ 0, %83 ]
  %93 = getelementptr inbounds %struct.sdma_desc, ptr %90, i32 0, i32 9
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr %struct.sdma_buffer_descriptor, ptr %94, i32 %92
  %96 = load i32, ptr %95, align 1
  %97 = and i32 %96, 1114112
  %98 = icmp eq i32 %97, 0
  %99 = select i1 %98, i32 %91, i32 -5
  %100 = and i32 %96, 65535
  %101 = getelementptr inbounds %struct.sdma_desc, ptr %90, i32 0, i32 6
  %102 = load i32, ptr %101, align 4
  %103 = add i32 %102, %100
  store i32 %103, ptr %101, align 4
  %104 = add nuw i32 %92, 1
  %105 = load ptr, ptr %18, align 4
  %106 = getelementptr inbounds %struct.sdma_desc, ptr %105, i32 0, i32 1
  %107 = load i32, ptr %106, align 4
  %108 = icmp ult i32 %104, %107
  br i1 %108, label %89, label %109

109:                                              ; preds = %89
  %110 = icmp eq i32 %99, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %109, %83
  br label %112

112:                                              ; preds = %111, %109
  %113 = phi i32 [ 0, %111 ], [ 3, %109 ]
  %114 = getelementptr %struct.sdma_engine, ptr %1, i32 0, i32 1, i32 %15, i32 21
  store i32 %113, ptr %114, align 4
  %115 = load i32, ptr %19, align 4
  %116 = icmp slt i32 %115, 1
  br i1 %116, label %117, label %118, !prof !18

117:                                              ; preds = %112
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #12, !srcloc !19
  unreachable

118:                                              ; preds = %112
  %119 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %19, i32 0, i32 3
  %120 = load ptr, ptr %119, align 4
  %121 = getelementptr inbounds %struct.dma_chan, ptr %120, i32 0, i32 3
  store i32 %115, ptr %121, align 4
  store i32 0, ptr %19, align 4
  %122 = getelementptr inbounds %struct.virt_dma_desc, ptr %19, i32 0, i32 2
  %123 = getelementptr inbounds %struct.virt_dma_chan, ptr %120, i32 0, i32 7
  %124 = getelementptr inbounds %struct.virt_dma_chan, ptr %120, i32 0, i32 7, i32 1
  %125 = load ptr, ptr %124, align 4
  store ptr %122, ptr %124, align 4
  store ptr %123, ptr %122, align 4
  %126 = getelementptr inbounds %struct.virt_dma_desc, ptr %19, i32 0, i32 2, i32 1
  store ptr %125, ptr %126, align 4
  store volatile ptr %122, ptr %125, align 4
  %127 = getelementptr inbounds %struct.virt_dma_chan, ptr %120, i32 0, i32 1, i32 1
  %128 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %127) #12
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %118
  %131 = getelementptr inbounds %struct.virt_dma_chan, ptr %120, i32 0, i32 1
  call void @__tasklet_schedule(ptr noundef %131) #12
  br label %132

132:                                              ; preds = %130, %118
  %133 = getelementptr inbounds %struct.virt_dma_chan, ptr %16, i32 0, i32 6
  %134 = load volatile ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, %133
  %136 = getelementptr i8, ptr %134, i32 -68
  %137 = icmp eq ptr %136, null
  %138 = or i1 %135, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %132
  store ptr null, ptr %18, align 4
  br label %162

140:                                              ; preds = %132
  %141 = getelementptr %struct.sdma_engine, ptr %1, i32 0, i32 1, i32 %15, i32 3
  %142 = load i32, ptr %141, align 4
  %143 = getelementptr %struct.sdma_engine, ptr %1, i32 0, i32 1, i32 %15, i32 2
  %144 = load ptr, ptr %143, align 4
  store ptr %136, ptr %18, align 4
  %145 = getelementptr inbounds %struct.list_head, ptr %134, i32 0, i32 1
  %146 = load ptr, ptr %145, align 4
  %147 = load ptr, ptr %134, align 4
  %148 = getelementptr inbounds %struct.list_head, ptr %147, i32 0, i32 1
  store ptr %146, ptr %148, align 4
  store volatile ptr %147, ptr %146, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %134, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %145, align 4
  %149 = getelementptr i8, ptr %134, i32 12
  %150 = load i32, ptr %149, align 4
  %151 = getelementptr inbounds %struct.sdma_engine, ptr %144, i32 0, i32 2
  %152 = load ptr, ptr %151, align 4
  %153 = getelementptr %struct.sdma_channel_control, ptr %152, i32 %142, i32 1
  store i32 %150, ptr %153, align 1
  %154 = load i32, ptr %149, align 4
  %155 = load ptr, ptr %151, align 4
  %156 = getelementptr %struct.sdma_channel_control, ptr %155, i32 %142
  store i32 %154, ptr %156, align 1
  %157 = load i32, ptr %141, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !20
  call void @arm_heavy_mb() #12
  %158 = shl nuw i32 1, %157
  %159 = getelementptr inbounds %struct.sdma_engine, ptr %144, i32 0, i32 3
  %160 = load ptr, ptr %159, align 4
  %161 = getelementptr i8, ptr %160, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %161, i32 %158) #12, !srcloc !12
  br label %162

162:                                              ; preds = %140, %139, %80, %29, %12
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  %163 = load i16, ptr %17, align 4
  %164 = add i16 %163, 1
  store i16 %164, ptr %17, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !15
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !17
  %165 = shl nuw i32 1, %15
  %166 = xor i32 %165, -1
  %167 = and i32 %13, %166
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %12

169:                                              ; preds = %162, %2
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdma_desc_free(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.sdma_desc, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = mul i32 %3, 12
  %5 = getelementptr inbounds %struct.sdma_desc, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sdma_channel, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.sdma_desc, ptr %0, i32 0, i32 9
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.sdma_desc, ptr %0, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  tail call void @dma_free_attrs(ptr noundef %9, i32 noundef %4, ptr noundef %11, i32 noundef %13, i32 noundef 0) #12
  tail call void @kfree(ptr noundef %0) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdma_channel_terminate_work(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -288
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #12
  %3 = getelementptr i8, ptr %0, i32 16
  tail call void @vchan_dma_desc_free_list(ptr noundef %2, ptr noundef %3) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sdma_init(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.sdma_engine, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @clk_enable(ptr noundef %4) #12
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %137

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.sdma_engine, ptr %0, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @clk_enable(ptr noundef %9) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %133

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.sdma_engine, ptr %0, i32 0, i32 12
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.sdma_driver_data, ptr %14, i32 0, i32 3
  %16 = load i8, ptr %15, align 4, !range !21
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %12
  %19 = load ptr, ptr %8, align 4
  %20 = tail call i32 @clk_get_rate(ptr noundef %19) #12
  %21 = load ptr, ptr %3, align 4
  %22 = tail call i32 @clk_get_rate(ptr noundef %21) #12
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.sdma_engine, ptr %0, i32 0, i32 18
  store i8 1, ptr %25, align 4
  br label %26

26:                                               ; preds = %24, %18, %12
  %27 = getelementptr inbounds %struct.sdma_engine, ptr %0, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 0) #12, !srcloc !12
  %29 = load ptr, ptr %0, align 4
  %30 = call ptr @dma_alloc_attrs(ptr noundef %29, i32 noundef 640, ptr noundef nonnull %2, i32 noundef 3264, i32 noundef 0) #12
  %31 = getelementptr inbounds %struct.sdma_engine, ptr %0, i32 0, i32 2
  store ptr %30, ptr %31, align 4
  %32 = icmp eq ptr %30, null
  br i1 %32, label %131, label %33

33:                                               ; preds = %26
  %34 = getelementptr i8, ptr %30, i32 512
  %35 = getelementptr inbounds %struct.sdma_engine, ptr %0, i32 0, i32 4
  store ptr %34, ptr %35, align 4
  %36 = load i32, ptr %2, align 4
  %37 = add i32 %36, 512
  %38 = getelementptr inbounds %struct.sdma_engine, ptr %0, i32 0, i32 5
  store i32 %37, ptr %38, align 4
  %39 = load ptr, ptr %13, align 4
  %40 = getelementptr inbounds %struct.sdma_driver_data, ptr %39, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %43, %33
  %44 = phi ptr [ %52, %43 ], [ %39, %33 ]
  %45 = phi i32 [ %51, %43 ], [ 0, %33 ]
  %46 = load ptr, ptr %27, align 4
  %47 = load i32, ptr %44, align 4
  %48 = shl i32 %45, 2
  %49 = add i32 %47, %48
  %50 = getelementptr i8, ptr %46, i32 %49
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 0) #12, !srcloc !12
  %51 = add nuw nsw i32 %45, 1
  %52 = load ptr, ptr %13, align 4
  %53 = getelementptr inbounds %struct.sdma_driver_data, ptr %52, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %43, label %56

56:                                               ; preds = %43, %33
  br label %57

57:                                               ; preds = %57, %56
  %58 = phi i32 [ %63, %57 ], [ 0, %56 ]
  %59 = load ptr, ptr %27, align 4
  %60 = getelementptr i8, ptr %59, i32 256
  %61 = shl i32 %58, 2
  %62 = getelementptr i8, ptr %60, i32 %61
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 0) #12, !srcloc !12
  %63 = add nuw nsw i32 %58, 1
  %64 = icmp eq i32 %63, 32
  br i1 %64, label %65, label %57

65:                                               ; preds = %57
  %66 = load ptr, ptr %0, align 4
  %67 = getelementptr inbounds %struct.sdma_engine, ptr %0, i32 0, i32 16
  %68 = call ptr @dma_alloc_attrs(ptr noundef %66, i32 noundef 4096, ptr noundef %67, i32 noundef 2048, i32 noundef 0) #12
  %69 = getelementptr inbounds %struct.sdma_engine, ptr %0, i32 0, i32 17
  store ptr %68, ptr %69, align 4
  %70 = icmp eq ptr %68, null
  br i1 %70, label %131, label %71

71:                                               ; preds = %65
  %72 = load i32, ptr %67, align 4
  %73 = load ptr, ptr %31, align 4
  %74 = getelementptr inbounds %struct.sdma_channel_control, ptr %73, i32 0, i32 1
  store i32 %72, ptr %74, align 1
  %75 = load i32, ptr %67, align 4
  %76 = load ptr, ptr %31, align 4
  store i32 %75, ptr %76, align 1
  %77 = getelementptr inbounds %struct.sdma_engine, ptr %0, i32 0, i32 1, i32 0, i32 3
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr inbounds %struct.sdma_engine, ptr %0, i32 0, i32 1, i32 0, i32 2
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.sdma_engine, ptr %80, i32 0, i32 3
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr i8, ptr %82, i32 256
  %84 = shl i32 %78, 2
  %85 = getelementptr i8, ptr %83, i32 %84
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 1) #12, !srcloc !12
  %86 = load i32, ptr %77, align 4
  %87 = load ptr, ptr %79, align 4
  %88 = getelementptr inbounds %struct.sdma_engine, ptr %87, i32 0, i32 3
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr i8, ptr %89, i32 16
  %91 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %90) #12, !srcloc !11
  %92 = load ptr, ptr %88, align 4
  %93 = getelementptr i8, ptr %92, i32 24
  %94 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %93) #12, !srcloc !11
  %95 = load ptr, ptr %88, align 4
  %96 = getelementptr i8, ptr %95, i32 20
  %97 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %96) #12, !srcloc !11
  %98 = and i32 %86, 31
  %99 = shl nuw i32 1, %98
  %100 = xor i32 %99, -1
  %101 = or i32 %97, %99
  %102 = or i32 %91, %99
  %103 = and i32 %94, %100
  %104 = load ptr, ptr %88, align 4
  %105 = getelementptr i8, ptr %104, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 %102) #12, !srcloc !12
  %106 = load ptr, ptr %88, align 4
  %107 = getelementptr i8, ptr %106, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 %103) #12, !srcloc !12
  %108 = load ptr, ptr %88, align 4
  %109 = getelementptr i8, ptr %108, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %109, i32 %101) #12, !srcloc !12
  %110 = load ptr, ptr %27, align 4
  %111 = getelementptr i8, ptr %110, i32 92
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 16464) #12, !srcloc !12
  %112 = getelementptr inbounds %struct.sdma_engine, ptr %0, i32 0, i32 18
  %113 = load i8, ptr %112, align 4, !range !21
  %114 = icmp eq i8 %113, 0
  %115 = load ptr, ptr %27, align 4
  %116 = getelementptr i8, ptr %115, i32 56
  br i1 %114, label %118, label %117

117:                                              ; preds = %71
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 16) #12, !srcloc !12
  br label %119

118:                                              ; preds = %71
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 0) #12, !srcloc !12
  br label %119

119:                                              ; preds = %118, %117
  %120 = load i32, ptr %2, align 4
  %121 = load ptr, ptr %27, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 %120) #12, !srcloc !12
  %122 = load i32, ptr %77, align 4
  %123 = load ptr, ptr %79, align 4
  %124 = getelementptr inbounds %struct.sdma_engine, ptr %123, i32 0, i32 3
  %125 = load ptr, ptr %124, align 4
  %126 = getelementptr i8, ptr %125, i32 256
  %127 = shl i32 %122, 2
  %128 = getelementptr i8, ptr %126, i32 %127
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 7) #12, !srcloc !12
  %129 = load ptr, ptr %3, align 4
  call void @clk_disable(ptr noundef %129) #12
  %130 = load ptr, ptr %8, align 4
  call void @clk_disable(ptr noundef %130) #12
  br label %137

131:                                              ; preds = %65, %26
  %132 = load ptr, ptr %8, align 4
  call void @clk_disable(ptr noundef %132) #12
  br label %133

133:                                              ; preds = %131, %7
  %134 = phi i32 [ %10, %7 ], [ -12, %131 ]
  %135 = load ptr, ptr %3, align 4
  call void @clk_disable(ptr noundef %135) #12
  %136 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %136, ptr noundef nonnull @.str.10, i32 noundef %134) #14
  br label %137

137:                                              ; preds = %133, %119, %1
  %138 = phi i32 [ %134, %133 ], [ 0, %119 ], [ %5, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  ret i32 %138
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sdma_event_remap(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = alloca [21 x i8], align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 25
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #12, !annotation !8
  %10 = call i32 @__of_parse_phandle_with_args(ptr noundef %9, ptr noundef nonnull @.str.11, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #12
  %11 = icmp eq i32 %10, 0
  %12 = load ptr, ptr %2, align 4
  %13 = select i1 %11, ptr %12, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %3) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(21) %3, ptr noundef nonnull align 1 dereferenceable(21) @__const.sdma_event_remap.propname, i32 21, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store i32 0, ptr %6, align 4, !annotation !8
  %14 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  %15 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  %16 = select i1 %14, i1 true, i1 %15
  br i1 %16, label %63, label %17

17:                                               ; preds = %1
  %18 = call ptr @of_find_property(ptr noundef %9, ptr noundef nonnull %3, ptr noundef null) #12
  %19 = icmp eq ptr %18, null
  br i1 %19, label %63, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.property, ptr %18, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = lshr i32 %22, 2
  %24 = icmp ult i32 %22, 4
  br i1 %24, label %63, label %25

25:                                               ; preds = %20
  %26 = urem i32 %23, 3
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.12, ptr noundef nonnull %3, i32 noundef 3) #14
  br label %63

30:                                               ; preds = %25
  %31 = call ptr @syscon_node_to_regmap(ptr noundef %13) #12
  %32 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.13) #14
  %35 = ptrtoint ptr %31 to i32
  br label %63

36:                                               ; preds = %54, %30
  %37 = phi i32 [ %61, %54 ], [ 0, %30 ]
  %38 = call i32 @of_property_read_u32_index(ptr noundef %9, ptr noundef nonnull %3, i32 noundef %37, ptr noundef nonnull %4) #12
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.14, ptr noundef nonnull %3, i32 noundef %37) #14
  br label %63

42:                                               ; preds = %36
  %43 = add nuw nsw i32 %37, 1
  %44 = call i32 @of_property_read_u32_index(ptr noundef %9, ptr noundef nonnull %3, i32 noundef %43, ptr noundef nonnull %6) #12
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.14, ptr noundef nonnull %3, i32 noundef %43) #14
  br label %63

48:                                               ; preds = %42
  %49 = add nuw nsw i32 %37, 2
  %50 = call i32 @of_property_read_u32_index(ptr noundef %9, ptr noundef nonnull %3, i32 noundef %49, ptr noundef nonnull %5) #12
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.14, ptr noundef nonnull %3, i32 noundef %49) #14
  br label %63

54:                                               ; preds = %48
  %55 = load i32, ptr %4, align 4
  %56 = load i32, ptr %6, align 4
  %57 = shl nuw i32 1, %56
  %58 = load i32, ptr %5, align 4
  %59 = shl i32 %58, %56
  %60 = call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef %55, i32 noundef %57, i32 noundef %59, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %61 = add nuw nsw i32 %37, 3
  %62 = icmp ult i32 %61, %23
  br i1 %62, label %36, label %63

63:                                               ; preds = %54, %52, %46, %40, %33, %28, %20, %17, %1
  %64 = phi i32 [ 0, %1 ], [ -22, %28 ], [ %35, %33 ], [ %38, %40 ], [ %44, %46 ], [ %50, %52 ], [ 0, %20 ], [ 0, %17 ], [ 0, %54 ]
  br i1 %15, label %66, label %65

65:                                               ; preds = %63
  call void @of_node_put(ptr noundef %13) #12
  br label %66

66:                                               ; preds = %65, %63
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %3) #12
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sdma_add_scripts(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.sdma_engine, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sdma_engine, ptr %0, i32 0, i32 10
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  store i32 34, ptr %5, align 4
  br label %9

9:                                                ; preds = %11, %8
  %10 = phi i32 [ %6, %11 ], [ 34, %8 ]
  br label %15

11:                                               ; preds = %2
  %12 = icmp ugt i32 %6, 46
  br i1 %12, label %13, label %9

13:                                               ; preds = %11
  %14 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.15, i32 noundef %6) #14
  br label %42

15:                                               ; preds = %24, %9
  %16 = phi i32 [ %25, %24 ], [ %10, %9 ]
  %17 = phi i32 [ %26, %24 ], [ 0, %9 ]
  %18 = getelementptr i32, ptr %1, i32 %17
  %19 = load i32, ptr %18, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = getelementptr i32, ptr %4, i32 %17
  store i32 %19, ptr %22, align 4
  %23 = load i32, ptr %5, align 4
  br label %24

24:                                               ; preds = %21, %15
  %25 = phi i32 [ %16, %15 ], [ %23, %21 ]
  %26 = add nuw i32 %17, 1
  %27 = icmp ult i32 %26, %25
  br i1 %27, label %15, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %1, i32 0, i32 43
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %3, align 4
  %34 = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %33, i32 0, i32 43
  store i32 %30, ptr %34, align 4
  br label %35

35:                                               ; preds = %32, %28
  %36 = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %1, i32 0, i32 44
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %3, align 4
  %41 = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %40, i32 0, i32 44
  store i32 %37, ptr %41, align 4
  br label %42

42:                                               ; preds = %39, %35, %13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdma_alloc_chan_resources(ptr nocapture noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 14
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  store i32 0, ptr %2, align 4
  store i32 0, ptr %3, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 10
  %11 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 25
  store i8 0, ptr %11, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %10, i8 0, i64 16, i1 false) #12
  %12 = getelementptr inbounds %struct.sdma_engine, ptr %9, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 13
  store i32 %14, ptr %15, align 4
  br label %26

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.imx_dma_data, ptr %5, i32 0, i32 3
  %18 = getelementptr inbounds %struct.imx_dma_data, ptr %5, i32 0, i32 2
  %19 = getelementptr inbounds %struct.imx_dma_data, ptr %5, i32 0, i32 1
  %20 = load i32, ptr %17, align 4
  %21 = load i32, ptr %18, align 4
  %22 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  switch i32 %20, label %25 [
    i32 1, label %26
    i32 0, label %24
  ]

24:                                               ; preds = %16
  br label %26

25:                                               ; preds = %16
  br label %26

26:                                               ; preds = %25, %24, %16, %7
  %27 = phi ptr [ %23, %24 ], [ %9, %7 ], [ %23, %16 ], [ %23, %25 ]
  %28 = phi i32 [ %21, %24 ], [ 16, %7 ], [ %21, %16 ], [ %21, %25 ]
  %29 = phi ptr [ %5, %24 ], [ %2, %7 ], [ %5, %16 ], [ %5, %25 ]
  %30 = phi ptr [ %19, %24 ], [ %3, %7 ], [ %19, %16 ], [ %19, %25 ]
  %31 = phi i32 [ 3, %24 ], [ 1, %7 ], [ 2, %16 ], [ 1, %25 ]
  %32 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 6
  store i32 %28, ptr %32, align 4
  %33 = load i32, ptr %29, align 4
  %34 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 7
  store i32 %33, ptr %34, align 4
  %35 = load i32, ptr %30, align 4
  %36 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 8
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 2
  %38 = getelementptr inbounds %struct.sdma_engine, ptr %27, i32 0, i32 7
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 @clk_enable(ptr noundef %39) #12
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %61

42:                                               ; preds = %26
  %43 = load ptr, ptr %37, align 4
  %44 = getelementptr inbounds %struct.sdma_engine, ptr %43, i32 0, i32 8
  %45 = load ptr, ptr %44, align 4
  %46 = tail call i32 @clk_enable(ptr noundef %45) #12
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 3
  %50 = load i32, ptr %49, align 4
  %51 = load ptr, ptr %37, align 4
  %52 = getelementptr inbounds %struct.sdma_engine, ptr %51, i32 0, i32 3
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr i8, ptr %53, i32 256
  %55 = shl i32 %50, 2
  %56 = getelementptr i8, ptr %54, i32 %55
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %31) #12, !srcloc !12
  br label %61

57:                                               ; preds = %42
  %58 = load ptr, ptr %37, align 4
  %59 = getelementptr inbounds %struct.sdma_engine, ptr %58, i32 0, i32 7
  %60 = load ptr, ptr %59, align 4
  tail call void @clk_disable(ptr noundef %60) #12
  br label %61

61:                                               ; preds = %57, %48, %26
  %62 = phi i32 [ %46, %57 ], [ %40, %26 ], [ 0, %48 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdma_free_chan_resources(ptr noundef %0) #2 {
  %2 = alloca %struct.list_head, align 8
  %3 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @sdma_terminate_all(ptr noundef %0)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  store ptr %2, ptr %2, align 8
  %6 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 1
  call void @tasklet_kill(ptr noundef %7) #12
  %8 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %9 = call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #12
  %10 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 8
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load ptr, ptr %6, align 4
  %15 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 8, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %14, ptr %17, align 4
  store ptr %11, ptr %14, align 4
  store ptr %2, ptr %16, align 4
  store ptr %16, ptr %6, align 4
  store volatile ptr %10, ptr %10, align 4
  store ptr %10, ptr %15, align 4
  br label %18

18:                                               ; preds = %13, %1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #12
  call void @vchan_dma_desc_free_list(ptr noundef %0, ptr noundef nonnull %2) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  %19 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 23
  %20 = call zeroext i1 @flush_work(ptr noundef %19) #12
  %21 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 7
  %22 = load i32, ptr %21, align 4
  %23 = load ptr, ptr %3, align 4
  %24 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.sdma_engine, ptr %23, i32 0, i32 12
  %27 = load ptr, ptr %26, align 4
  %28 = load i32, ptr %27, align 4
  %29 = shl i32 %22, 2
  %30 = add i32 %28, %29
  %31 = getelementptr inbounds %struct.sdma_engine, ptr %23, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %32, i32 %30
  %34 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #12, !srcloc !11
  %35 = and i32 %25, 31
  %36 = shl nuw i32 1, %35
  %37 = xor i32 %36, -1
  %38 = and i32 %34, %37
  %39 = load ptr, ptr %31, align 4
  %40 = getelementptr i8, ptr %39, i32 %30
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #12, !srcloc !12
  %41 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 8
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %62, label %44

44:                                               ; preds = %18
  %45 = load ptr, ptr %3, align 4
  %46 = load i32, ptr %24, align 4
  %47 = getelementptr inbounds %struct.sdma_engine, ptr %45, i32 0, i32 12
  %48 = load ptr, ptr %47, align 4
  %49 = load i32, ptr %48, align 4
  %50 = shl i32 %42, 2
  %51 = add i32 %49, %50
  %52 = getelementptr inbounds %struct.sdma_engine, ptr %45, i32 0, i32 3
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr i8, ptr %53, i32 %51
  %55 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #12, !srcloc !11
  %56 = and i32 %46, 31
  %57 = shl nuw i32 1, %56
  %58 = xor i32 %57, -1
  %59 = and i32 %55, %58
  %60 = load ptr, ptr %52, align 4
  %61 = getelementptr i8, ptr %60, i32 %51
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %59) #12, !srcloc !12
  br label %62

62:                                               ; preds = %44, %18
  store i32 0, ptr %21, align 4
  store i32 0, ptr %41, align 4
  %63 = getelementptr inbounds %struct.sdma_engine, ptr %4, i32 0, i32 7
  %64 = load ptr, ptr %63, align 4
  call void @clk_disable(ptr noundef %64) #12
  %65 = getelementptr inbounds %struct.sdma_engine, ptr %4, i32 0, i32 8
  %66 = load ptr, ptr %65, align 4
  call void @clk_disable(ptr noundef %66) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdma_tx_status(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) #2 {
  %4 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !22
  %8 = icmp eq ptr %2, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  store i32 %7, ptr %2, align 4
  %10 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 1
  store i32 %5, ptr %10, align 4
  %11 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 3
  store i32 0, ptr %12, align 4
  br label %13

13:                                               ; preds = %9, %3
  %14 = icmp sgt i32 %7, %5
  %15 = icmp sge i32 %7, %1
  %16 = icmp slt i32 %5, %1
  br i1 %14, label %22, label %17

17:                                               ; preds = %13
  %18 = or i1 %16, %15
  %19 = or i1 %18, %8
  %20 = xor i1 %18, true
  %21 = zext i1 %20 to i32
  br i1 %19, label %70, label %27

22:                                               ; preds = %13
  %23 = and i1 %16, %15
  %24 = or i1 %23, %8
  %25 = xor i1 %23, true
  %26 = zext i1 %25 to i32
  br i1 %24, label %70, label %27

27:                                               ; preds = %22, %17
  %28 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %28) #12
  %30 = tail call ptr @vchan_find_desc(ptr noundef %0, i32 noundef %1) #12
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %62, label %36

36:                                               ; preds = %32
  %37 = load i32, ptr %34, align 4
  %38 = icmp eq i32 %37, %1
  br i1 %38, label %39, label %62

39:                                               ; preds = %36, %27
  %40 = phi ptr [ %30, %27 ], [ %34, %36 ]
  %41 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 14
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.sdma_desc, ptr %40, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.sdma_desc, ptr %40, i32 0, i32 4
  %49 = load i32, ptr %48, align 4
  %50 = sub i32 %47, %49
  %51 = getelementptr inbounds %struct.sdma_desc, ptr %40, i32 0, i32 5
  %52 = load i32, ptr %51, align 4
  %53 = mul i32 %50, %52
  br label %57

54:                                               ; preds = %39
  %55 = getelementptr inbounds %struct.sdma_desc, ptr %40, i32 0, i32 7
  %56 = load i32, ptr %55, align 4
  br label %57

57:                                               ; preds = %54, %45
  %58 = phi i32 [ %53, %45 ], [ %56, %54 ]
  %59 = getelementptr inbounds %struct.sdma_desc, ptr %40, i32 0, i32 6
  %60 = load i32, ptr %59, align 4
  %61 = sub i32 %58, %60
  br label %62

62:                                               ; preds = %57, %36, %32
  %63 = phi i32 [ 0, %32 ], [ 0, %36 ], [ %61, %57 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %28, i32 noundef %29) #12
  %64 = load i32, ptr %6, align 4
  %65 = load i32, ptr %4, align 4
  store i32 %64, ptr %2, align 4
  %66 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 1
  store i32 %65, ptr %66, align 4
  %67 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2
  store i32 %63, ptr %67, align 4
  %68 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 21
  %69 = load i32, ptr %68, align 4
  br label %70

70:                                               ; preds = %62, %22, %17
  %71 = phi i32 [ %69, %62 ], [ %21, %17 ], [ %26, %22 ]
  ret i32 %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @sdma_prep_slave_sg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readnone %5) #2 {
  %7 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 5
  tail call fastcc void @sdma_config_write(ptr noundef %0, ptr noundef %11, i32 noundef %3)
  %12 = tail call fastcc ptr @sdma_transfer_init(ptr noundef %0, i32 noundef %3, i32 noundef %2)
  %13 = icmp eq ptr %12, null
  br i1 %13, label %100, label %14

14:                                               ; preds = %6
  %15 = icmp eq i32 %2, 0
  br i1 %15, label %75, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.sdma_desc, ptr %12, i32 0, i32 9
  %18 = getelementptr inbounds %struct.sdma_desc, ptr %12, i32 0, i32 7
  %19 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 9
  br label %20

20:                                               ; preds = %66, %16
  %21 = phi ptr [ %1, %16 ], [ %73, %66 ]
  %22 = phi i32 [ 0, %16 ], [ %68, %66 ]
  %23 = load ptr, ptr %17, align 4
  %24 = getelementptr %struct.sdma_buffer_descriptor, ptr %23, i32 %22
  %25 = getelementptr inbounds %struct.scatterlist, ptr %21, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr %struct.sdma_buffer_descriptor, ptr %23, i32 %22, i32 1
  store i32 %26, ptr %27, align 1
  %28 = getelementptr inbounds %struct.scatterlist, ptr %21, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = icmp sgt i32 %29, 65535
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.16, i32 noundef %10, i32 noundef %29, i32 noundef 65535) #14
  br label %88

33:                                               ; preds = %20
  %34 = load i32, ptr %24, align 1
  %35 = and i32 %29, 65535
  %36 = and i32 %34, -65536
  %37 = or i32 %36, %35
  store i32 %37, ptr %24, align 1
  %38 = load i32, ptr %18, align 4
  %39 = add i32 %38, %29
  store i32 %39, ptr %18, align 4
  %40 = load i32, ptr %19, align 4
  %41 = icmp ugt i32 %40, 4
  br i1 %41, label %88, label %42

42:                                               ; preds = %33
  switch i32 %40, label %88 [
    i32 4, label %43
    i32 2, label %52
    i32 1, label %62
  ]

43:                                               ; preds = %42
  %44 = load i32, ptr %24, align 1
  %45 = and i32 %44, 16777215
  store i32 %45, ptr %24, align 1
  %46 = and i32 %29, 3
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %88

48:                                               ; preds = %43
  %49 = load i32, ptr %25, align 4
  %50 = and i32 %49, 3
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %66, label %88

52:                                               ; preds = %42
  %53 = load i32, ptr %24, align 1
  %54 = and i32 %53, 16777215
  %55 = or i32 %54, 33554432
  store i32 %55, ptr %24, align 1
  %56 = and i32 %29, 1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %88

58:                                               ; preds = %52
  %59 = load i32, ptr %25, align 4
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %66, label %88

62:                                               ; preds = %42
  %63 = load i32, ptr %24, align 1
  %64 = and i32 %63, 16777215
  %65 = or i32 %64, 16777216
  br label %66

66:                                               ; preds = %62, %58, %48
  %67 = phi i32 [ %55, %58 ], [ %45, %48 ], [ %65, %62 ]
  %68 = add nuw i32 %22, 1
  %69 = icmp eq i32 %68, %2
  %70 = select i1 %69, i32 11075584, i32 8716288
  %71 = and i32 %67, -16711681
  %72 = or i32 %71, %70
  store i32 %72, ptr %24, align 1
  %73 = tail call ptr @sg_next(ptr noundef %21) #12
  %74 = icmp eq i32 %68, %2
  br i1 %74, label %75, label %20

75:                                               ; preds = %66, %14
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %12, ptr noundef %0) #12
  %76 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %12, i32 0, i32 1
  store i32 %4, ptr %76, align 4
  %77 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %12, i32 0, i32 4
  store ptr @vchan_tx_submit, ptr %77, align 4
  %78 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %12, i32 0, i32 5
  store ptr @vchan_tx_desc_free, ptr %78, align 4
  %79 = getelementptr inbounds %struct.virt_dma_desc, ptr %12, i32 0, i32 1
  store i32 0, ptr %79, align 4
  %80 = getelementptr inbounds %struct.virt_dma_desc, ptr %12, i32 0, i32 1, i32 1
  store i32 0, ptr %80, align 4
  %81 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %82 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %81) #12
  %83 = getelementptr inbounds %struct.virt_dma_desc, ptr %12, i32 0, i32 2
  %84 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4
  %85 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %86 = load ptr, ptr %85, align 4
  store ptr %83, ptr %85, align 4
  store ptr %84, ptr %83, align 4
  %87 = getelementptr inbounds %struct.virt_dma_desc, ptr %12, i32 0, i32 2, i32 1
  store ptr %86, ptr %87, align 4
  store volatile ptr %83, ptr %86, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %81, i32 noundef %82) #12
  br label %102

88:                                               ; preds = %58, %52, %48, %43, %42, %33, %31
  %89 = getelementptr inbounds %struct.sdma_desc, ptr %12, i32 0, i32 1
  %90 = load i32, ptr %89, align 4
  %91 = mul i32 %90, 12
  %92 = getelementptr inbounds %struct.sdma_desc, ptr %12, i32 0, i32 8
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.sdma_channel, ptr %93, i32 0, i32 2
  %95 = load ptr, ptr %94, align 4
  %96 = load ptr, ptr %95, align 4
  %97 = load ptr, ptr %17, align 4
  %98 = getelementptr inbounds %struct.sdma_desc, ptr %12, i32 0, i32 2
  %99 = load i32, ptr %98, align 4
  tail call void @dma_free_attrs(ptr noundef %96, i32 noundef %91, ptr noundef %97, i32 noundef %99, i32 noundef 0) #12
  tail call void @kfree(ptr noundef nonnull %12) #12
  br label %100

100:                                              ; preds = %88, %6
  %101 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 21
  store i32 3, ptr %101, align 4
  br label %102

102:                                              ; preds = %100, %75
  %103 = phi ptr [ null, %100 ], [ %12, %75 ]
  ret ptr %103
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @sdma_prep_dma_cyclic(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #2 {
  %7 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = udiv i32 %2, %3
  %10 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 5
  tail call fastcc void @sdma_config_write(ptr noundef %0, ptr noundef %12, i32 noundef %4)
  %13 = tail call fastcc ptr @sdma_transfer_init(ptr noundef %0, i32 noundef %4, i32 noundef %9)
  %14 = icmp eq ptr %13, null
  br i1 %14, label %78, label %15

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.sdma_desc, ptr %13, i32 0, i32 5
  store i32 %3, ptr %16, align 4
  %17 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 14
  %18 = load i32, ptr %17, align 4
  %19 = or i32 %18, 1
  store i32 %19, ptr %17, align 4
  %20 = icmp ugt i32 %3, 65535
  br i1 %20, label %26, label %21

21:                                               ; preds = %15
  %22 = icmp eq i32 %2, 0
  br i1 %22, label %52, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.sdma_desc, ptr %13, i32 0, i32 9
  %25 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 9
  br label %28

26:                                               ; preds = %15
  %27 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.19, i32 noundef %11, i32 noundef %3, i32 noundef 65535) #14
  br label %65

28:                                               ; preds = %40, %23
  %29 = phi i32 [ 0, %23 ], [ %50, %40 ]
  %30 = phi i32 [ 0, %23 ], [ %44, %40 ]
  %31 = phi i32 [ %1, %23 ], [ %49, %40 ]
  %32 = load ptr, ptr %24, align 4
  %33 = getelementptr %struct.sdma_buffer_descriptor, ptr %32, i32 %30
  %34 = getelementptr %struct.sdma_buffer_descriptor, ptr %32, i32 %30, i32 1
  store i32 %31, ptr %34, align 1
  %35 = load i32, ptr %33, align 1
  %36 = and i32 %35, -65536
  %37 = or i32 %36, %3
  store i32 %37, ptr %33, align 1
  %38 = load i32, ptr %25, align 4
  %39 = icmp ugt i32 %38, 4
  br i1 %39, label %65, label %40

40:                                               ; preds = %28
  %41 = icmp eq i32 %38, 4
  %42 = shl nuw nsw i32 %38, 24
  %43 = select i1 %41, i32 0, i32 %42
  %44 = add i32 %30, 1
  %45 = icmp eq i32 %44, %9
  %46 = select i1 %45, i32 9371648, i32 9240576
  %47 = or i32 %46, %3
  %48 = or i32 %47, %43
  store i32 %48, ptr %33, align 1
  %49 = add i32 %31, %3
  %50 = add i32 %29, %3
  %51 = icmp ult i32 %50, %2
  br i1 %51, label %28, label %52

52:                                               ; preds = %40, %21
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %13, ptr noundef %0) #12
  %53 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %13, i32 0, i32 1
  store i32 %5, ptr %53, align 4
  %54 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %13, i32 0, i32 4
  store ptr @vchan_tx_submit, ptr %54, align 4
  %55 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %13, i32 0, i32 5
  store ptr @vchan_tx_desc_free, ptr %55, align 4
  %56 = getelementptr inbounds %struct.virt_dma_desc, ptr %13, i32 0, i32 1
  store i32 0, ptr %56, align 4
  %57 = getelementptr inbounds %struct.virt_dma_desc, ptr %13, i32 0, i32 1, i32 1
  store i32 0, ptr %57, align 4
  %58 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %59 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %58) #12
  %60 = getelementptr inbounds %struct.virt_dma_desc, ptr %13, i32 0, i32 2
  %61 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4
  %62 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %63 = load ptr, ptr %62, align 4
  store ptr %60, ptr %62, align 4
  store ptr %61, ptr %60, align 4
  %64 = getelementptr inbounds %struct.virt_dma_desc, ptr %13, i32 0, i32 2, i32 1
  store ptr %63, ptr %64, align 4
  store volatile ptr %60, ptr %63, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %58, i32 noundef %59) #12
  br label %80

65:                                               ; preds = %28, %26
  %66 = getelementptr inbounds %struct.sdma_desc, ptr %13, i32 0, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = mul i32 %67, 12
  %69 = getelementptr inbounds %struct.sdma_desc, ptr %13, i32 0, i32 8
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.sdma_channel, ptr %70, i32 0, i32 2
  %72 = load ptr, ptr %71, align 4
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.sdma_desc, ptr %13, i32 0, i32 9
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.sdma_desc, ptr %13, i32 0, i32 2
  %77 = load i32, ptr %76, align 4
  tail call void @dma_free_attrs(ptr noundef %73, i32 noundef %68, ptr noundef %75, i32 noundef %77, i32 noundef 0) #12
  tail call void @kfree(ptr noundef nonnull %13) #12
  br label %78

78:                                               ; preds = %65, %6
  %79 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 21
  store i32 3, ptr %79, align 4
  br label %80

80:                                               ; preds = %78, %52
  %81 = phi ptr [ null, %78 ], [ %13, %52 ]
  ret ptr %81
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdma_config(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %3, ptr noundef align 4 dereferenceable(48) %1, i32 48, i1 false)
  %4 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sdma_engine, ptr %7, i32 0, i32 12
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.sdma_driver_data, ptr %9, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i32 %5, %11
  br i1 %12, label %13, label %52

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = load i32, ptr %9, align 4
  %17 = shl i32 %5, 2
  %18 = add i32 %16, %17
  %19 = getelementptr inbounds %struct.sdma_engine, ptr %7, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 %18
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #12, !srcloc !11
  %23 = and i32 %15, 31
  %24 = shl nuw i32 1, %23
  %25 = or i32 %22, %24
  %26 = load ptr, ptr %19, align 4
  %27 = getelementptr i8, ptr %26, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #12, !srcloc !12
  %28 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 8
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %52, label %31

31:                                               ; preds = %13
  %32 = load ptr, ptr %6, align 4
  %33 = getelementptr inbounds %struct.sdma_engine, ptr %32, i32 0, i32 12
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.sdma_driver_data, ptr %34, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = icmp ult i32 %29, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %31
  %39 = load i32, ptr %14, align 4
  %40 = load i32, ptr %34, align 4
  %41 = shl i32 %29, 2
  %42 = add i32 %40, %41
  %43 = getelementptr inbounds %struct.sdma_engine, ptr %32, i32 0, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr i8, ptr %44, i32 %42
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #12, !srcloc !11
  %47 = and i32 %39, 31
  %48 = shl nuw i32 1, %47
  %49 = or i32 %46, %48
  %50 = load ptr, ptr %43, align 4
  %51 = getelementptr i8, ptr %50, i32 %42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #12, !srcloc !12
  br label %52

52:                                               ; preds = %38, %31, %13, %2
  %53 = phi i32 [ -22, %2 ], [ -22, %31 ], [ 0, %38 ], [ 0, %13 ]
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdma_terminate_all(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #12
  %4 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = shl nuw i32 1, %7
  %9 = getelementptr inbounds %struct.sdma_engine, ptr %5, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %8) #12, !srcloc !12
  %12 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 21
  store i32 3, ptr %12, align 4
  %13 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %83, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %14, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.virt_dma_desc, ptr %14, i32 0, i32 2
  %20 = getelementptr inbounds %struct.virt_dma_chan, ptr %18, i32 0, i32 8
  %21 = getelementptr inbounds %struct.virt_dma_chan, ptr %18, i32 0, i32 8, i32 1
  %22 = load ptr, ptr %21, align 4
  store ptr %19, ptr %21, align 4
  store ptr %20, ptr %19, align 4
  %23 = getelementptr inbounds %struct.virt_dma_desc, ptr %14, i32 0, i32 2, i32 1
  store ptr %22, ptr %23, align 4
  store volatile ptr %19, ptr %22, align 4
  %24 = getelementptr inbounds %struct.virt_dma_chan, ptr %18, i32 0, i32 9
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %14
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  store ptr null, ptr %24, align 4
  br label %28

28:                                               ; preds = %27, %16
  %29 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 24
  %30 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4
  %31 = load volatile ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, %30
  br i1 %32, label %39, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 24, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  store ptr %35, ptr %38, align 4
  store ptr %31, ptr %35, align 4
  store ptr %29, ptr %37, align 4
  store ptr %37, ptr %34, align 4
  store volatile ptr %30, ptr %30, align 4
  store ptr %30, ptr %36, align 4
  br label %39

39:                                               ; preds = %33, %28
  %40 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5
  %41 = load volatile ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, %40
  br i1 %42, label %49, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 24, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  store ptr %45, ptr %48, align 4
  store ptr %41, ptr %45, align 4
  store ptr %29, ptr %47, align 4
  store ptr %47, ptr %44, align 4
  store volatile ptr %40, ptr %40, align 4
  store ptr %40, ptr %46, align 4
  br label %49

49:                                               ; preds = %43, %39
  %50 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6
  %51 = load volatile ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, %50
  br i1 %52, label %59, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 24, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  store ptr %55, ptr %58, align 4
  store ptr %51, ptr %55, align 4
  store ptr %29, ptr %57, align 4
  store ptr %57, ptr %54, align 4
  store volatile ptr %50, ptr %50, align 4
  store ptr %50, ptr %56, align 4
  br label %59

59:                                               ; preds = %53, %49
  %60 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 7
  %61 = load volatile ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, %60
  br i1 %62, label %69, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 24, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 7, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  store ptr %65, ptr %68, align 4
  store ptr %61, ptr %65, align 4
  store ptr %29, ptr %67, align 4
  store ptr %67, ptr %64, align 4
  store volatile ptr %60, ptr %60, align 4
  store ptr %60, ptr %66, align 4
  br label %69

69:                                               ; preds = %63, %59
  %70 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 8
  %71 = load volatile ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, %70
  br i1 %72, label %79, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 24, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 8, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  store ptr %75, ptr %78, align 4
  store ptr %71, ptr %75, align 4
  store ptr %29, ptr %77, align 4
  store ptr %77, ptr %74, align 4
  store volatile ptr %70, ptr %70, align 4
  store ptr %70, ptr %76, align 4
  br label %79

79:                                               ; preds = %73, %69
  store ptr null, ptr %13, align 4
  %80 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 23
  %81 = load ptr, ptr @system_wq, align 4
  %82 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %81, ptr noundef %80) #12
  br label %83

83:                                               ; preds = %79, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdma_channel_synchronize(ptr noundef %0) #2 {
  %2 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  store ptr %2, ptr %2, align 8
  %3 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  %4 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 1
  call void @tasklet_kill(ptr noundef %4) #12
  %5 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %6 = call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #12
  %7 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 8
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr %3, align 4
  %12 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %11, ptr %14, align 4
  store ptr %8, ptr %11, align 4
  store ptr %2, ptr %13, align 4
  store ptr %13, ptr %3, align 4
  store volatile ptr %7, ptr %7, align 4
  store ptr %7, ptr %12, align 4
  br label %15

15:                                               ; preds = %10, %1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #12
  call void @vchan_dma_desc_free_list(ptr noundef %0, ptr noundef nonnull %2) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  %16 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 23
  %17 = call zeroext i1 @flush_work(ptr noundef %16) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @sdma_prep_memcpy(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = icmp ne ptr %0, null
  %7 = icmp ne i32 %3, 0
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %54

9:                                                ; preds = %5
  %10 = udiv i32 %3, 65535
  %11 = add nuw nsw i32 %10, 1
  %12 = tail call fastcc ptr @sdma_transfer_init(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %11)
  %13 = icmp eq ptr %12, null
  br i1 %13, label %54, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.sdma_desc, ptr %12, i32 0, i32 9
  %16 = getelementptr inbounds %struct.sdma_desc, ptr %12, i32 0, i32 7
  br label %17

17:                                               ; preds = %17, %14
  %18 = phi i32 [ %35, %17 ], [ %3, %14 ]
  %19 = phi i32 [ %36, %17 ], [ 0, %14 ]
  %20 = phi i32 [ %33, %17 ], [ %2, %14 ]
  %21 = phi i32 [ %34, %17 ], [ %1, %14 ]
  %22 = tail call i32 @llvm.umin.i32(i32 %18, i32 65535)
  %23 = load ptr, ptr %15, align 4
  %24 = getelementptr %struct.sdma_buffer_descriptor, ptr %23, i32 %19
  %25 = getelementptr %struct.sdma_buffer_descriptor, ptr %23, i32 %19, i32 1
  store i32 %20, ptr %25, align 1
  %26 = getelementptr %struct.sdma_buffer_descriptor, ptr %23, i32 %19, i32 2
  store i32 %21, ptr %26, align 1
  %27 = load i32, ptr %24, align 1
  %28 = and i32 %27, -65536
  %29 = or i32 %28, %22
  store i32 %29, ptr %24, align 1
  %30 = load i32, ptr %16, align 4
  %31 = add i32 %30, %22
  store i32 %31, ptr %16, align 4
  %32 = load i32, ptr %24, align 1
  %33 = add i32 %20, %22
  %34 = add i32 %21, %22
  %35 = sub i32 %18, %22
  %36 = add i32 %19, 1
  %37 = icmp eq i32 %35, 0
  %38 = select i1 %37, i32 11075584, i32 8716288
  %39 = and i32 %32, 65535
  %40 = or i32 %39, %38
  store i32 %40, ptr %24, align 1
  br i1 %37, label %41, label %17

41:                                               ; preds = %17
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %12, ptr noundef nonnull %0) #12
  %42 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %12, i32 0, i32 1
  store i32 %4, ptr %42, align 4
  %43 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %12, i32 0, i32 4
  store ptr @vchan_tx_submit, ptr %43, align 4
  %44 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %12, i32 0, i32 5
  store ptr @vchan_tx_desc_free, ptr %44, align 4
  %45 = getelementptr inbounds %struct.virt_dma_desc, ptr %12, i32 0, i32 1
  store i32 0, ptr %45, align 4
  %46 = getelementptr inbounds %struct.virt_dma_desc, ptr %12, i32 0, i32 1, i32 1
  store i32 0, ptr %46, align 4
  %47 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %48 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %47) #12
  %49 = getelementptr inbounds %struct.virt_dma_desc, ptr %12, i32 0, i32 2
  %50 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4
  %51 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %52 = load ptr, ptr %51, align 4
  store ptr %49, ptr %51, align 4
  store ptr %50, ptr %49, align 4
  %53 = getelementptr inbounds %struct.virt_dma_desc, ptr %12, i32 0, i32 2, i32 1
  store ptr %52, ptr %53, align 4
  store volatile ptr %49, ptr %52, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %47, i32 noundef %48) #12
  br label %54

54:                                               ; preds = %41, %9, %5
  %55 = phi ptr [ %12, %41 ], [ null, %5 ], [ null, %9 ]
  ret ptr %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdma_issue_pending(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #12
  %4 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5
  %5 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6
  %6 = load volatile ptr, ptr %4, align 4
  %7 = icmp eq ptr %6, %4
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %10, ptr %13, align 4
  store ptr %6, ptr %10, align 4
  store ptr %5, ptr %12, align 4
  store ptr %12, ptr %9, align 4
  store volatile ptr %4, ptr %4, align 4
  store ptr %4, ptr %11, align 4
  br label %14

14:                                               ; preds = %8, %1
  %15 = load volatile ptr, ptr %5, align 4
  %16 = icmp eq ptr %15, %5
  br i1 %16, label %50, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %50

21:                                               ; preds = %17
  %22 = load volatile ptr, ptr %5, align 4
  %23 = icmp eq ptr %22, %5
  %24 = getelementptr i8, ptr %22, i32 -68
  %25 = icmp eq ptr %24, null
  %26 = or i1 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store ptr null, ptr %18, align 4
  br label %50

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  store ptr %24, ptr %18, align 4
  %33 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = load ptr, ptr %22, align 4
  %36 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  store ptr %34, ptr %36, align 4
  store volatile ptr %35, ptr %34, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %22, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %33, align 4
  %37 = getelementptr i8, ptr %22, i32 12
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.sdma_engine, ptr %32, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr %struct.sdma_channel_control, ptr %40, i32 %30, i32 1
  store i32 %38, ptr %41, align 1
  %42 = load i32, ptr %37, align 4
  %43 = load ptr, ptr %39, align 4
  %44 = getelementptr %struct.sdma_channel_control, ptr %43, i32 %30
  store i32 %42, ptr %44, align 1
  %45 = load i32, ptr %29, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !20
  tail call void @arm_heavy_mb() #12
  %46 = shl nuw i32 1, %45
  %47 = getelementptr inbounds %struct.sdma_engine, ptr %32, i32 0, i32 3
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr i8, ptr %48, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %46) #12, !srcloc !12
  br label %50

50:                                               ; preds = %28, %27, %17, %14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @sdma_xlate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca %struct.dma_cap_mask_t, align 4
  %4 = alloca %struct.imx_dma_data, align 4
  %5 = getelementptr inbounds %struct.of_dma, ptr %1, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  %7 = getelementptr inbounds %struct.sdma_engine, ptr %6, i32 0, i32 6, i32 6
  %8 = load i32, ptr %7, align 4
  store i32 %8, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #12
  %9 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 3
  br i1 %11, label %12, label %25

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  store i32 %14, ptr %4, align 4
  %15 = getelementptr %struct.of_phandle_args, ptr %0, i32 0, i32 2, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.imx_dma_data, ptr %4, i32 0, i32 2
  store i32 %16, ptr %17, align 4
  %18 = getelementptr %struct.of_phandle_args, ptr %0, i32 0, i32 2, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.imx_dma_data, ptr %4, i32 0, i32 3
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.imx_dma_data, ptr %4, i32 0, i32 1
  store i32 0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.of_dma, ptr %1, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = call ptr @__dma_request_channel(ptr noundef nonnull %3, ptr noundef nonnull @sdma_filter_fn, ptr noundef nonnull %4, ptr noundef %23) #12
  br label %25

25:                                               ; preds = %12, %2
  %26 = phi ptr [ %24, %12 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret ptr %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_dma_desc_free_list(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc void @sdma_get_pc(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 10
  %6 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 25
  store i8 0, ptr %6, align 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  switch i32 %1, label %123 [
    i32 16, label %7
    i32 15, label %11
    i32 6, label %18
    i32 4, label %25
    i32 5, label %32
    i32 10, label %39
    i32 7, label %46
    i32 12, label %62
    i32 0, label %62
    i32 24, label %62
    i32 22, label %69
    i32 1, label %76
    i32 2, label %76
    i32 3, label %76
    i32 8, label %76
    i32 21, label %76
    i32 14, label %76
    i32 20, label %83
    i32 23, label %90
    i32 13, label %99
    i32 11, label %106
    i32 18, label %111
    i32 19, label %118
  ]

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sdma_engine, ptr %4, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %9, align 4
  br label %123

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.sdma_engine, ptr %4, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %13, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %13, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  br label %123

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.sdma_engine, ptr %4, i32 0, i32 11
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %20, i32 0, i32 7
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %20, i32 0, i32 9
  %24 = load i32, ptr %23, align 4
  br label %123

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.sdma_engine, ptr %4, i32 0, i32 11
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %27, i32 0, i32 43
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %27, i32 0, i32 13
  %31 = load i32, ptr %30, align 4
  br label %123

32:                                               ; preds = %2
  %33 = getelementptr inbounds %struct.sdma_engine, ptr %4, i32 0, i32 11
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %34, i32 0, i32 44
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %34, i32 0, i32 18
  %38 = load i32, ptr %37, align 4
  br label %123

39:                                               ; preds = %2
  %40 = getelementptr inbounds %struct.sdma_engine, ptr %4, i32 0, i32 11
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %41, i32 0, i32 19
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %41, i32 0, i32 20
  %45 = load i32, ptr %44, align 4
  br label %123

46:                                               ; preds = %2
  %47 = getelementptr inbounds %struct.sdma_engine, ptr %4, i32 0, i32 11
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %48, i32 0, i32 22
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.sdma_engine, ptr %4, i32 0, i32 12
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.sdma_driver_data, ptr %52, i32 0, i32 4
  %54 = load i8, ptr %53, align 1, !range !21
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %46
  %57 = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %48, i32 0, i32 13
  %58 = load i32, ptr %57, align 4
  br label %123

59:                                               ; preds = %46
  %60 = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %48, i32 0, i32 40
  %61 = load i32, ptr %60, align 4
  store i8 1, ptr %6, align 4
  br label %123

62:                                               ; preds = %2, %2, %2
  %63 = getelementptr inbounds %struct.sdma_engine, ptr %4, i32 0, i32 11
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %64, i32 0, i32 22
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %64, i32 0, i32 13
  %68 = load i32, ptr %67, align 4
  br label %123

69:                                               ; preds = %2
  %70 = getelementptr inbounds %struct.sdma_engine, ptr %4, i32 0, i32 11
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %71, i32 0, i32 36
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %71, i32 0, i32 35
  %75 = load i32, ptr %74, align 4
  store i8 1, ptr %6, align 4
  br label %123

76:                                               ; preds = %2, %2, %2, %2, %2, %2
  %77 = getelementptr inbounds %struct.sdma_engine, ptr %4, i32 0, i32 11
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %78, i32 0, i32 24
  %80 = load i32, ptr %79, align 4
  %81 = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %78, i32 0, i32 18
  %82 = load i32, ptr %81, align 4
  br label %123

83:                                               ; preds = %2
  %84 = getelementptr inbounds %struct.sdma_engine, ptr %4, i32 0, i32 11
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %85, i32 0, i32 29
  %87 = load i32, ptr %86, align 4
  %88 = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %85, i32 0, i32 14
  %89 = load i32, ptr %88, align 4
  store i8 1, ptr %6, align 4
  br label %123

90:                                               ; preds = %2
  %91 = getelementptr inbounds %struct.sdma_engine, ptr %4, i32 0, i32 11
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %92, i32 0, i32 24
  %94 = load i32, ptr %93, align 4
  %95 = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %92, i32 0, i32 18
  %96 = load i32, ptr %95, align 4
  %97 = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %92, i32 0, i32 14
  %98 = load i32, ptr %97, align 4
  br label %123

99:                                               ; preds = %2
  %100 = getelementptr inbounds %struct.sdma_engine, ptr %4, i32 0, i32 11
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %101, i32 0, i32 25
  %103 = load i32, ptr %102, align 4
  %104 = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %101, i32 0, i32 26
  %105 = load i32, ptr %104, align 4
  br label %123

106:                                              ; preds = %2
  %107 = getelementptr inbounds %struct.sdma_engine, ptr %4, i32 0, i32 11
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %108, i32 0, i32 32
  %110 = load i32, ptr %109, align 4
  br label %123

111:                                              ; preds = %2
  %112 = getelementptr inbounds %struct.sdma_engine, ptr %4, i32 0, i32 11
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %113, i32 0, i32 27
  %115 = load i32, ptr %114, align 4
  %116 = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %113, i32 0, i32 28
  %117 = load i32, ptr %116, align 4
  br label %123

118:                                              ; preds = %2
  %119 = getelementptr inbounds %struct.sdma_engine, ptr %4, i32 0, i32 11
  %120 = load ptr, ptr %119, align 4
  %121 = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %120, i32 0, i32 30
  %122 = load i32, ptr %121, align 4
  br label %123

123:                                              ; preds = %118, %111, %106, %99, %90, %83, %76, %69, %62, %59, %56, %39, %32, %25, %18, %11, %7, %2
  %124 = phi i32 [ 0, %2 ], [ 0, %118 ], [ %115, %111 ], [ %110, %106 ], [ %103, %99 ], [ %94, %90 ], [ %87, %83 ], [ %80, %76 ], [ %73, %69 ], [ %66, %62 ], [ %50, %56 ], [ %50, %59 ], [ %43, %39 ], [ %36, %32 ], [ %29, %25 ], [ %22, %18 ], [ %17, %11 ], [ 0, %7 ]
  %125 = phi i32 [ 0, %2 ], [ %122, %118 ], [ %117, %111 ], [ 0, %106 ], [ %105, %99 ], [ %96, %90 ], [ %87, %83 ], [ %82, %76 ], [ %75, %69 ], [ %68, %62 ], [ %58, %56 ], [ %61, %59 ], [ %45, %39 ], [ %38, %32 ], [ %31, %25 ], [ %24, %18 ], [ %15, %11 ], [ 0, %7 ]
  %126 = phi i32 [ 0, %2 ], [ 0, %118 ], [ 0, %111 ], [ 0, %106 ], [ 0, %99 ], [ %98, %90 ], [ %89, %83 ], [ 0, %76 ], [ 0, %69 ], [ 0, %62 ], [ 0, %56 ], [ 0, %59 ], [ 0, %39 ], [ 0, %32 ], [ 0, %25 ], [ 0, %18 ], [ 0, %11 ], [ 0, %7 ]
  %127 = phi i32 [ 0, %2 ], [ 0, %118 ], [ 0, %111 ], [ 0, %106 ], [ 0, %99 ], [ 0, %90 ], [ 0, %83 ], [ 0, %76 ], [ 0, %69 ], [ 0, %62 ], [ 0, %56 ], [ 0, %59 ], [ 0, %39 ], [ 0, %32 ], [ 0, %25 ], [ 0, %18 ], [ 0, %11 ], [ %10, %7 ]
  %128 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 13
  %129 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 12
  %130 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 11
  store i32 %124, ptr %5, align 4
  store i32 %125, ptr %130, align 4
  store i32 %126, ptr %129, align 4
  store i32 %127, ptr %128, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vchan_find_desc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sdma_config_write(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #2 {
  switch i32 %2, label %31 [
    i32 2, label %4
    i32 3, label %14
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.dma_slave_config, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 15
  store i32 %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.dma_slave_config, ptr %1, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dma_slave_config, ptr %1, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = mul i32 %11, %9
  %13 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 18
  store i32 %12, ptr %13, align 4
  br label %41

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.dma_slave_config, ptr %1, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 16
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.dma_slave_config, ptr %1, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 15
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.dma_slave_config, ptr %1, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 255
  %24 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 18
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.dma_slave_config, ptr %1, i32 0, i32 6
  %26 = load i32, ptr %25, align 4
  %27 = shl i32 %26, 16
  %28 = and i32 %27, 16711680
  %29 = or i32 %28, %23
  store i32 %29, ptr %24, align 4
  %30 = getelementptr inbounds %struct.dma_slave_config, ptr %1, i32 0, i32 4
  br label %41

31:                                               ; preds = %3
  %32 = getelementptr inbounds %struct.dma_slave_config, ptr %1, i32 0, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 15
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.dma_slave_config, ptr %1, i32 0, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.dma_slave_config, ptr %1, i32 0, i32 4
  %38 = load i32, ptr %37, align 4
  %39 = mul i32 %38, %36
  %40 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 18
  store i32 %39, ptr %40, align 4
  br label %41

41:                                               ; preds = %31, %14, %4
  %42 = phi ptr [ %30, %14 ], [ %37, %31 ], [ %10, %4 ]
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 9
  store i32 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 4
  store i32 %2, ptr %45, align 4
  %46 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 2
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 3
  %49 = load i32, ptr %48, align 4
  %50 = shl nuw i32 1, %49
  %51 = getelementptr inbounds %struct.sdma_engine, ptr %47, i32 0, i32 3
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr i8, ptr %52, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %50) #12, !srcloc !12
  %54 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 21
  store i32 3, ptr %54, align 4
  %55 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 17
  store i32 0, ptr %55, align 4
  %56 = getelementptr %struct.sdma_channel, ptr %0, i32 0, i32 17, i32 1
  store i32 0, ptr %56, align 4
  %57 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 19
  store i32 0, ptr %57, align 4
  %58 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 20
  store i32 0, ptr %58, align 4
  %59 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 6
  %60 = load i32, ptr %59, align 4
  switch i32 %60, label %111 [
    i32 15, label %61
    i32 16, label %86
  ]

61:                                               ; preds = %41
  %62 = load i32, ptr %48, align 4
  %63 = load ptr, ptr %46, align 4
  %64 = getelementptr inbounds %struct.sdma_engine, ptr %63, i32 0, i32 3
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr i8, ptr %65, i32 16
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #12, !srcloc !11
  %68 = load ptr, ptr %64, align 4
  %69 = getelementptr i8, ptr %68, i32 24
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #12, !srcloc !11
  %71 = load ptr, ptr %64, align 4
  %72 = getelementptr i8, ptr %71, i32 20
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #12, !srcloc !11
  %74 = and i32 %62, 31
  %75 = shl nuw i32 1, %74
  %76 = xor i32 %75, -1
  %77 = and i32 %73, %76
  %78 = or i32 %67, %75
  %79 = and i32 %70, %76
  %80 = load ptr, ptr %64, align 4
  %81 = getelementptr i8, ptr %80, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %78) #12, !srcloc !12
  %82 = load ptr, ptr %64, align 4
  %83 = getelementptr i8, ptr %82, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %79) #12, !srcloc !12
  %84 = load ptr, ptr %64, align 4
  %85 = getelementptr i8, ptr %84, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 %77) #12, !srcloc !12
  br label %136

86:                                               ; preds = %41
  %87 = load i32, ptr %48, align 4
  %88 = load ptr, ptr %46, align 4
  %89 = getelementptr inbounds %struct.sdma_engine, ptr %88, i32 0, i32 3
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr i8, ptr %90, i32 16
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %91) #12, !srcloc !11
  %93 = load ptr, ptr %89, align 4
  %94 = getelementptr i8, ptr %93, i32 24
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %94) #12, !srcloc !11
  %96 = load ptr, ptr %89, align 4
  %97 = getelementptr i8, ptr %96, i32 20
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %97) #12, !srcloc !11
  %99 = and i32 %87, 31
  %100 = shl nuw i32 1, %99
  %101 = xor i32 %100, -1
  %102 = or i32 %98, %100
  %103 = or i32 %92, %100
  %104 = and i32 %95, %101
  %105 = load ptr, ptr %89, align 4
  %106 = getelementptr i8, ptr %105, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %106, i32 %103) #12, !srcloc !12
  %107 = load ptr, ptr %89, align 4
  %108 = getelementptr i8, ptr %107, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %108, i32 %104) #12, !srcloc !12
  %109 = load ptr, ptr %89, align 4
  %110 = getelementptr i8, ptr %109, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 %102) #12, !srcloc !12
  br label %136

111:                                              ; preds = %41
  %112 = load i32, ptr %48, align 4
  %113 = load ptr, ptr %46, align 4
  %114 = getelementptr inbounds %struct.sdma_engine, ptr %113, i32 0, i32 3
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr i8, ptr %115, i32 16
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %116) #12, !srcloc !11
  %118 = load ptr, ptr %114, align 4
  %119 = getelementptr i8, ptr %118, i32 24
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %119) #12, !srcloc !11
  %121 = load ptr, ptr %114, align 4
  %122 = getelementptr i8, ptr %121, i32 20
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %122) #12, !srcloc !11
  %124 = and i32 %112, 31
  %125 = shl nuw i32 1, %124
  %126 = xor i32 %125, -1
  %127 = or i32 %123, %125
  %128 = and i32 %117, %126
  %129 = and i32 %120, %126
  %130 = load ptr, ptr %114, align 4
  %131 = getelementptr i8, ptr %130, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 %128) #12, !srcloc !12
  %132 = load ptr, ptr %114, align 4
  %133 = getelementptr i8, ptr %132, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %133, i32 %129) #12, !srcloc !12
  %134 = load ptr, ptr %114, align 4
  %135 = getelementptr i8, ptr %134, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %135, i32 %127) #12, !srcloc !12
  br label %136

136:                                              ; preds = %111, %86, %61
  %137 = load i32, ptr %59, align 4
  tail call fastcc void @sdma_get_pc(ptr noundef %0, i32 noundef %137) #12
  %138 = load i32, ptr %59, align 4
  %139 = add i32 %138, -15
  %140 = icmp ult i32 %139, 2
  br i1 %140, label %225, label %141

141:                                              ; preds = %136
  %142 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 8
  %143 = load i32, ptr %142, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %207, label %145

145:                                              ; preds = %141
  switch i32 %138, label %220 [
    i32 23, label %146
    i32 20, label %146
  ]

146:                                              ; preds = %145, %145
  %147 = load ptr, ptr %46, align 4
  %148 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 18
  %149 = load i32, ptr %148, align 4
  %150 = and i32 %149, 255
  %151 = lshr i32 %149, 16
  %152 = and i32 %151, 255
  %153 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 7
  %154 = load i32, ptr %153, align 4
  %155 = and i32 %154, 31
  tail call void @_set_bit(i32 noundef %155, ptr noundef %56) #12
  %156 = load i32, ptr %142, align 4
  %157 = and i32 %156, 31
  tail call void @_set_bit(i32 noundef %157, ptr noundef %55) #12
  %158 = load i32, ptr %153, align 4
  %159 = icmp ugt i32 %158, 31
  br i1 %159, label %160, label %163

160:                                              ; preds = %146
  %161 = load i32, ptr %148, align 4
  %162 = or i32 %161, 268435456
  store i32 %162, ptr %148, align 4
  br label %163

163:                                              ; preds = %160, %146
  %164 = load i32, ptr %142, align 4
  %165 = icmp ugt i32 %164, 31
  br i1 %165, label %166, label %169

166:                                              ; preds = %163
  %167 = load i32, ptr %148, align 4
  %168 = or i32 %167, 536870912
  store i32 %168, ptr %148, align 4
  br label %169

169:                                              ; preds = %166, %163
  %170 = icmp ugt i32 %150, %152
  br i1 %170, label %171, label %179

171:                                              ; preds = %169
  %172 = load i32, ptr %148, align 4
  %173 = and i32 %172, -16711936
  %174 = or i32 %152, %173
  %175 = shl nuw nsw i32 %150, 16
  %176 = or i32 %174, %175
  store i32 %176, ptr %148, align 4
  %177 = load i32, ptr %55, align 4
  %178 = load i32, ptr %56, align 4
  store i32 %178, ptr %55, align 4
  store i32 %177, ptr %56, align 4
  br label %179

179:                                              ; preds = %171, %169
  %180 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 16
  %181 = load i32, ptr %180, align 4
  %182 = getelementptr inbounds %struct.sdma_engine, ptr %147, i32 0, i32 13
  %183 = load i32, ptr %182, align 4
  %184 = icmp ult i32 %181, %183
  br i1 %184, label %193, label %185

185:                                              ; preds = %179
  %186 = getelementptr inbounds %struct.sdma_engine, ptr %147, i32 0, i32 14
  %187 = load i32, ptr %186, align 4
  %188 = icmp ugt i32 %181, %187
  br i1 %188, label %193, label %189

189:                                              ; preds = %185
  %190 = load i32, ptr %148, align 4
  %191 = or i32 %190, 2048
  store i32 %191, ptr %148, align 4
  %192 = load i32, ptr %182, align 4
  br label %193

193:                                              ; preds = %189, %185, %179
  %194 = phi i32 [ %192, %189 ], [ %183, %185 ], [ %183, %179 ]
  %195 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 15
  %196 = load i32, ptr %195, align 4
  %197 = icmp ult i32 %196, %194
  br i1 %197, label %205, label %198

198:                                              ; preds = %193
  %199 = getelementptr inbounds %struct.sdma_engine, ptr %147, i32 0, i32 14
  %200 = load i32, ptr %199, align 4
  %201 = icmp ugt i32 %196, %200
  br i1 %201, label %205, label %202

202:                                              ; preds = %198
  %203 = load i32, ptr %148, align 4
  %204 = or i32 %203, 4096
  store i32 %204, ptr %148, align 4
  br label %205

205:                                              ; preds = %202, %198, %193
  %206 = load i32, ptr %148, align 4
  br label %215

207:                                              ; preds = %141
  %208 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 7
  %209 = load i32, ptr %208, align 4
  %210 = and i32 %209, 31
  %211 = shl nuw i32 1, %210
  %212 = lshr i32 %209, 5
  %213 = getelementptr i32, ptr %55, i32 %212
  %214 = load i32, ptr %213, align 4
  br label %215

215:                                              ; preds = %207, %205
  %216 = phi i32 [ -2147483648, %205 ], [ %214, %207 ]
  %217 = phi i32 [ %206, %205 ], [ %211, %207 ]
  %218 = phi ptr [ %148, %205 ], [ %213, %207 ]
  %219 = or i32 %217, %216
  store i32 %219, ptr %218, align 4
  br label %220

220:                                              ; preds = %215, %145
  %221 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 15
  %222 = load i32, ptr %221, align 4
  store i32 %222, ptr %57, align 4
  %223 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 16
  %224 = load i32, ptr %223, align 4
  store i32 %224, ptr %58, align 4
  br label %227

225:                                              ; preds = %136
  %226 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 18
  store i32 0, ptr %226, align 4
  br label %227

227:                                              ; preds = %225, %220
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @sdma_transfer_init(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sdma_engine, ptr %5, i32 0, i32 19
  %7 = load i8, ptr %6, align 1, !range !21
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 25
  %11 = load i8, ptr %10, align 4, !range !21
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load i1, ptr @sdma_transfer_init.__print_once, align 1
  br i1 %14, label %116, label %15

15:                                               ; preds = %13
  store i1 true, ptr @sdma_transfer_init.__print_once, align 1
  %16 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.17) #14
  br label %116

17:                                               ; preds = %9, %3
  %18 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %19 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 2304, i32 noundef 112) #13
  %20 = icmp eq ptr %19, null
  br i1 %20, label %116, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 21
  store i32 1, ptr %22, align 4
  %23 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 4
  store i32 %1, ptr %23, align 4
  %24 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 14
  store i32 0, ptr %24, align 4
  %25 = getelementptr inbounds %struct.sdma_desc, ptr %19, i32 0, i32 7
  store i32 0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.sdma_desc, ptr %19, i32 0, i32 6
  store i32 0, ptr %26, align 8
  %27 = getelementptr inbounds %struct.sdma_desc, ptr %19, i32 0, i32 3
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.sdma_desc, ptr %19, i32 0, i32 4
  store i32 0, ptr %28, align 8
  %29 = getelementptr inbounds %struct.sdma_desc, ptr %19, i32 0, i32 8
  store ptr %0, ptr %29, align 8
  %30 = getelementptr inbounds %struct.sdma_desc, ptr %19, i32 0, i32 1
  store i32 %2, ptr %30, align 4
  %31 = mul i32 %2, 12
  %32 = load ptr, ptr %4, align 4
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.sdma_desc, ptr %19, i32 0, i32 2
  %35 = tail call ptr @dma_alloc_attrs(ptr noundef %33, i32 noundef %31, ptr noundef %34, i32 noundef 2048, i32 noundef 0) #12
  %36 = getelementptr inbounds %struct.sdma_desc, ptr %19, i32 0, i32 9
  store ptr %35, ptr %36, align 4
  %37 = icmp eq ptr %35, null
  br i1 %37, label %115, label %38

38:                                               ; preds = %21
  %39 = icmp eq i32 %1, 0
  br i1 %39, label %40, label %66

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 3
  %42 = load i32, ptr %41, align 4
  %43 = load ptr, ptr %4, align 4
  %44 = getelementptr inbounds %struct.sdma_engine, ptr %43, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr i8, ptr %45, i32 16
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #12, !srcloc !11
  %48 = load ptr, ptr %44, align 4
  %49 = getelementptr i8, ptr %48, i32 24
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #12, !srcloc !11
  %51 = load ptr, ptr %44, align 4
  %52 = getelementptr i8, ptr %51, i32 20
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #12, !srcloc !11
  %54 = and i32 %42, 31
  %55 = shl nuw i32 1, %54
  %56 = xor i32 %55, -1
  %57 = or i32 %53, %55
  %58 = or i32 %47, %55
  %59 = and i32 %50, %56
  %60 = load ptr, ptr %44, align 4
  %61 = getelementptr i8, ptr %60, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %58) #12, !srcloc !12
  %62 = load ptr, ptr %44, align 4
  %63 = getelementptr i8, ptr %62, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %59) #12, !srcloc !12
  %64 = load ptr, ptr %44, align 4
  %65 = getelementptr i8, ptr %64, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %57) #12, !srcloc !12
  br label %66

66:                                               ; preds = %40, %38
  %67 = load ptr, ptr %4, align 4
  %68 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 3
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr inbounds %struct.sdma_engine, ptr %67, i32 0, i32 4
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.sdma_engine, ptr %67, i32 0, i32 17
  %73 = load ptr, ptr %72, align 4
  %74 = load i32, ptr %23, align 4
  switch i32 %74, label %81 [
    i32 2, label %75
    i32 3, label %77
    i32 0, label %79
  ]

75:                                               ; preds = %66
  %76 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 10
  br label %83

77:                                               ; preds = %66
  %78 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 12
  br label %83

79:                                               ; preds = %66
  %80 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 13
  br label %83

81:                                               ; preds = %66
  %82 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 11
  br label %83

83:                                               ; preds = %81, %79, %77, %75
  %84 = phi ptr [ %76, %75 ], [ %78, %77 ], [ %80, %79 ], [ %82, %81 ]
  %85 = load i32, ptr %84, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %115, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.sdma_engine, ptr %67, i32 0, i32 9
  %89 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %88) #12
  %90 = getelementptr inbounds i8, ptr %71, i32 8
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(128) %90, i8 0, i32 120, i1 false) #12
  %91 = and i32 %85, 16383
  %92 = zext i32 %91 to i64
  store i64 %92, ptr %71, align 1
  %93 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 17
  %94 = getelementptr %struct.sdma_channel, ptr %0, i32 0, i32 17, i32 1
  %95 = load i32, ptr %94, align 4
  store i32 %95, ptr %90, align 1
  %96 = load i32, ptr %93, align 4
  %97 = getelementptr %struct.sdma_context_data, ptr %71, i32 0, i32 1, i32 1
  store i32 %96, ptr %97, align 1
  %98 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 20
  %99 = load i32, ptr %98, align 4
  %100 = getelementptr %struct.sdma_context_data, ptr %71, i32 0, i32 1, i32 2
  store i32 %99, ptr %100, align 1
  %101 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 19
  %102 = load i32, ptr %101, align 4
  %103 = getelementptr %struct.sdma_context_data, ptr %71, i32 0, i32 1, i32 6
  store i32 %102, ptr %103, align 1
  %104 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 18
  %105 = load i32, ptr %104, align 4
  %106 = getelementptr %struct.sdma_context_data, ptr %71, i32 0, i32 1, i32 7
  store i32 %105, ptr %106, align 1
  store i32 25362464, ptr %73, align 1
  %107 = getelementptr inbounds %struct.sdma_engine, ptr %67, i32 0, i32 5
  %108 = load i32, ptr %107, align 4
  %109 = getelementptr inbounds %struct.sdma_buffer_descriptor, ptr %73, i32 0, i32 1
  store i32 %108, ptr %109, align 1
  %110 = shl i32 %69, 5
  %111 = add i32 %110, 2048
  %112 = getelementptr inbounds %struct.sdma_buffer_descriptor, ptr %73, i32 0, i32 2
  store i32 %111, ptr %112, align 1
  %113 = tail call fastcc i32 @sdma_run_channel0(ptr noundef %67) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %88, i32 noundef %89) #12
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %87, %83, %21
  tail call void @kfree(ptr noundef nonnull %19) #12
  br label %116

116:                                              ; preds = %115, %87, %17, %15, %13
  %117 = phi ptr [ %19, %87 ], [ null, %17 ], [ null, %13 ], [ null, %15 ], [ null, %115 ]
  ret ptr %117
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sdma_run_channel0(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !20
  tail call void @arm_heavy_mb() #12
  %2 = getelementptr inbounds %struct.sdma_engine, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 1) #12, !srcloc !12
  %5 = tail call i64 @ktime_get() #12
  %6 = add i64 %5, 500000
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #12, !srcloc !11
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %30, label %12

12:                                               ; preds = %15, %1
  %13 = tail call i64 @ktime_get() #12
  %14 = icmp sgt i64 %13, %6
  br i1 %14, label %22, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #12
  %17 = load ptr, ptr %2, align 4
  %18 = getelementptr i8, ptr %17, i32 8
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #12, !srcloc !11
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %30, label %12

22:                                               ; preds = %12
  %23 = load ptr, ptr %2, align 4
  %24 = getelementptr i8, ptr %23, i32 8
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #12, !srcloc !11
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %22
  %29 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.18) #14
  br label %30

30:                                               ; preds = %28, %22, %15, %1
  %31 = phi i32 [ -110, %28 ], [ 0, %22 ], [ 0, %1 ], [ 0, %15 ]
  %32 = load ptr, ptr %2, align 4
  %33 = getelementptr i8, ptr %32, i32 56
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #12, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !23
  %35 = and i32 %34, 3
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = or i32 %34, 3
  %39 = load ptr, ptr %2, align 4
  %40 = getelementptr i8, ptr %39, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #12, !srcloc !12
  br label %41

41:                                               ; preds = %37, %30
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_submit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_desc_free(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal zeroext i1 @sdma_filter_fn(ptr noundef %0, ptr nocapture noundef readonly %1) #10 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 15
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @strcmp(ptr noundef %8, ptr noundef nonnull dereferenceable(9) @.str) #12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = tail call i32 @strcmp(ptr noundef %8, ptr noundef nonnull dereferenceable(8) @.str.20) #12
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11, %2
  %15 = getelementptr inbounds %struct.sdma_channel, ptr %0, i32 0, i32 22
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %15, ptr noundef align 4 dereferenceable(16) %1, i32 16, i1 false)
  %16 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 14
  store ptr %15, ptr %16, align 4
  br label %17

17:                                               ; preds = %14, %11
  %18 = phi i1 [ false, %11 ], [ true, %14 ]
  ret i1 %18
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware_nowait(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdma_load_firmware(ptr noundef %0, ptr noundef %1) #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.21) #14
  br label %54

6:                                                ; preds = %2
  %7 = load i32, ptr %0, align 4
  %8 = icmp ult i32 %7, 28
  br i1 %8, label %53, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.firmware, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 1095582803
  br i1 %13, label %14, label %53

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.sdma_firmware_header, ptr %11, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.sdma_firmware_header, ptr %11, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, %16
  %20 = icmp ugt i32 %19, %7
  br i1 %20, label %53, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.sdma_firmware_header, ptr %11, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, -1
  %25 = icmp ult i32 %24, 4
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.22) #14
  br label %53

28:                                               ; preds = %21
  %29 = getelementptr inbounds [4 x i32], ptr @switch.table.sdma_load_firmware, i32 0, i32 %24
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.sdma_engine, ptr %1, i32 0, i32 10
  store i32 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.sdma_firmware_header, ptr %11, i32 0, i32 3
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr i8, ptr %11, i32 %33
  %35 = load i32, ptr %15, align 4
  %36 = getelementptr i8, ptr %11, i32 %35
  %37 = getelementptr inbounds %struct.sdma_engine, ptr %1, i32 0, i32 7
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 @clk_enable(ptr noundef %38) #12
  %40 = getelementptr inbounds %struct.sdma_engine, ptr %1, i32 0, i32 8
  %41 = load ptr, ptr %40, align 4
  %42 = tail call i32 @clk_enable(ptr noundef %41) #12
  %43 = load i32, ptr %17, align 4
  %44 = getelementptr inbounds %struct.sdma_script_start_addrs, ptr %34, i32 0, i32 34
  %45 = load i32, ptr %44, align 4
  tail call fastcc void @sdma_load_script(ptr noundef %1, ptr noundef %36, i32 noundef %43, i32 noundef %45)
  %46 = load ptr, ptr %37, align 4
  tail call void @clk_disable(ptr noundef %46) #12
  %47 = load ptr, ptr %40, align 4
  tail call void @clk_disable(ptr noundef %47) #12
  tail call fastcc void @sdma_add_scripts(ptr noundef %1, ptr noundef %34)
  %48 = getelementptr inbounds %struct.sdma_engine, ptr %1, i32 0, i32 19
  store i8 1, ptr %48, align 1
  %49 = load ptr, ptr %1, align 4
  %50 = load i32, ptr %22, align 4
  %51 = getelementptr inbounds %struct.sdma_firmware_header, ptr %11, i32 0, i32 2
  %52 = load i32, ptr %51, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %49, ptr noundef nonnull @.str.23, i32 noundef %50, i32 noundef %52) #14
  br label %53

53:                                               ; preds = %28, %26, %14, %9, %6
  tail call void @release_firmware(ptr noundef nonnull %0) #12
  br label %54

54:                                               ; preds = %53, %4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sdma_load_script(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.sdma_engine, ptr %0, i32 0, i32 17
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = load ptr, ptr %0, align 4
  %9 = call ptr @dma_alloc_attrs(ptr noundef %8, i32 noundef %2, ptr noundef nonnull %5, i32 noundef 3264, i32 noundef 0) #12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.sdma_engine, ptr %0, i32 0, i32 9
  %13 = call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #12
  %14 = sdiv i32 %2, 2
  %15 = and i32 %14, 65535
  %16 = or i32 %15, 75694080
  store i32 %16, ptr %7, align 1
  %17 = load i32, ptr %5, align 4
  %18 = getelementptr inbounds %struct.sdma_buffer_descriptor, ptr %7, i32 0, i32 1
  store i32 %17, ptr %18, align 1
  %19 = getelementptr inbounds %struct.sdma_buffer_descriptor, ptr %7, i32 0, i32 2
  store i32 %3, ptr %19, align 1
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %9, ptr align 1 %1, i32 %2, i1 false)
  %20 = call fastcc i32 @sdma_run_channel0(ptr noundef %0)
  call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %13) #12
  %21 = load ptr, ptr %0, align 4
  %22 = load i32, ptr %5, align 4
  call void @dma_free_attrs(ptr noundef %21, i32 noundef %2, ptr noundef nonnull %9, i32 noundef %22, i32 noundef 0) #12
  br label %23

23:                                               ; preds = %11, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }

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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.peeled.count", i32 1}
!11 = !{i64 2450387}
!12 = !{i64 2449969}
!13 = !{i32 0, i32 33}
!14 = !{i64 2149306928}
!15 = !{i64 2149302752}
!16 = !{i64 2149302827, i64 2149302854, i64 2149302901, i64 2149302923, i64 2149302951, i64 2149302971}
!17 = !{i64 2149329931}
!18 = !{!"branch_weights", i32 1, i32 2000}
!19 = !{i64 2153258308, i64 2153258795, i64 2153258345, i64 2153258401, i64 2153258435, i64 2153258459, i64 2153258500, i64 2153258521, i64 2153258549, i64 2153258583}
!20 = !{i64 2153314012}
!21 = !{i8 0, i8 2}
!22 = !{i64 2153259244}
!23 = !{i64 2153317554}
