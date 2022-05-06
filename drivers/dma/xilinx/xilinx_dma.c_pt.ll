; ModuleID = '/llk/IR/drivers/dma/xilinx/xilinx_dma.c_pt.bc'
source_filename = "../drivers/dma/xilinx/xilinx_dma.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xilinx_vdma_channel_set_config:\09\09\09\09\09"
module asm "\09.asciz \09\22xilinx_vdma_channel_set_config\22\09\09\09\09\09"
module asm "__kstrtabns_xilinx_vdma_channel_set_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.xilinx_dma_config = type { i32, ptr, ptr, i32 }
%struct.xilinx_vdma_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.xilinx_dma_chan = type { ptr, i32, i32, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.dma_chan, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.tasklet_struct, %struct.xilinx_vdma_config, i8, i32, i8, i32, ptr, ptr, i32, ptr, i32, ptr, ptr, i16, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.68, i32 }
%struct.atomic_t = type { i32 }
%union.anon.68 = type { ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.xilinx_dma_device = type { ptr, ptr, %struct.dma_device, [32 x ptr], i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.xilinx_axidma_tx_segment = type { %struct.xilinx_axidma_desc_hw, %struct.list_head, i32, [52 x i8] }
%struct.xilinx_axidma_desc_hw = type { i32, i32, i32, i32, i32, i32, i32, i32, [5 x i32], [12 x i8] }
%struct.xilinx_aximcdma_tx_segment = type { %struct.xilinx_aximcdma_desc_hw, %struct.list_head, i32, [52 x i8] }
%struct.xilinx_aximcdma_desc_hw = type { i32, i32, i32, i32, i32, i32, i32, i32, [5 x i32], [12 x i8] }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.xilinx_dma_tx_descriptor = type { %struct.dma_async_tx_descriptor, %struct.list_head, %struct.list_head, i8, i8, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.xilinx_cdma_tx_segment = type { %struct.xilinx_cdma_desc_hw, %struct.list_head, i32, [52 x i8] }
%struct.xilinx_cdma_desc_hw = type { i32, i32, i32, i32, i32, i32, i32, i32, [32 x i8] }
%struct.dma_interleaved_template = type { i32, i32, i32, i8, i8, i8, i8, i32, i32, [0 x %struct.data_chunk] }
%struct.data_chunk = type { i32, i32, i32, i32 }
%struct.xilinx_vdma_tx_segment = type { %struct.xilinx_vdma_desc_hw, %struct.list_head, i32, [52 x i8] }
%struct.xilinx_vdma_desc_hw = type { i32, i32, i32, i32, i32, i32, i32, [36 x i8] }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.dmaengine_result = type { i32, i32 }

@__kstrtab_xilinx_vdma_channel_set_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_xilinx_vdma_channel_set_config = external dso_local constant [0 x i8], align 1
@__ksymtab_xilinx_vdma_channel_set_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xilinx_vdma_channel_set_config to i32), ptr @__kstrtab_xilinx_vdma_channel_set_config, ptr @__kstrtabns_xilinx_vdma_channel_set_config }, section "___ksymtab+xilinx_vdma_channel_set_config", align 4
@__initcall__kmod_xilinx_dma__236_3340_xilinx_vdma_driver_init6 = internal global ptr @xilinx_vdma_driver_init, section ".initcall6.init", align 4
@xilinx_vdma_driver = internal global %struct.platform_driver { ptr @xilinx_dma_probe, ptr @xilinx_dma_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @xilinx_dma_of_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_xilinx_vdma_driver_exit = internal global ptr @xilinx_vdma_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author237 = internal constant [31 x i8] c"xilinx_dma.author=Xilinx, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [42 x i8] c"xilinx_dma.description=Xilinx VDMA driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [46 x i8] c"xilinx_dma.file=drivers/dma/xilinx/xilinx_dma\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [26 x i8] c"xilinx_dma.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [29 x i8] c"reset timeout, cr %x, sr %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"xilinx-vdma\00", align 1
@xilinx_dma_of_ids = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,axi-dma-1.00.a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @axidma_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,axi-cdma-1.00.a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @axicdma_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,axi-vdma-1.00.a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @axivdma_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,axi-mcdma-1.00.a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @aximcdma_config }, %struct.of_device_id zeroinitializer], align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"xlnx,sg-length-width\00", align 1
@.str.3 = private unnamed_addr constant [66 x i8] c"invalid xlnx,sg-length-width property value. Using default width\0A\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"Please ensure that IP supports buffer length > 23 bits\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"xlnx,num-fstores\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"missing xlnx,num-fstores property\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"xlnx,flush-fsync\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"missing xlnx,flush-fsync property\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"xlnx,addrwidth\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"missing xlnx,addrwidth property\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"failed to register the dma device\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"Unable to register DMA to DT\0A\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"Xilinx AXI DMA Engine Driver Probed!!\0A\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"Xilinx AXI CDMA Engine Driver Probed!!\0A\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"Xilinx AXI MCDMA Engine Driver Probed!!\0A\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"Xilinx AXI VDMA Engine Driver Probed!!\0A\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"s_axi_lite_aclk\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"failed to get axi_aclk\0A\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"m_axi_mm2s_aclk\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"m_axis_mm2s_aclk\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"m_axi_s2mm_aclk\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"s_axis_s2mm_aclk\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"failed to enable axi_clk (%d)\0A\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"failed to enable tx_clk (%d)\0A\00", align 1
@.str.25 = private unnamed_addr constant [31 x i8] c"failed to enable txs_clk (%d)\0A\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"failed to enable rx_clk (%d)\0A\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"failed to enable rxs_clk (%d)\0A\00", align 1
@.str.28 = private unnamed_addr constant [43 x i8] c"unable to allocate channel %d descriptors\0A\00", align 1
@.str.29 = private unnamed_addr constant [48 x i8] c"unable to allocate desc segment for cyclic DMA\0A\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"xilinx_cdma_desc_pool\00", align 1
@.str.31 = private unnamed_addr constant [22 x i8] c"xilinx_vdma_desc_pool\00", align 1
@.str.32 = private unnamed_addr constant [47 x i8] c"unable to allocate channel %d descriptor pool\0A\00", align 1
@.str.33 = private unnamed_addr constant [28 x i8] c"Cannot stop channel %p: %x\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.34 = private unnamed_addr constant [37 x i8] c"%s: Zero-size SG transfer requested\0A\00", align 1
@__func__.xilinx_cdma_prep_memcpy_sg = private unnamed_addr constant [27 x i8] c"xilinx_cdma_prep_memcpy_sg\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"dma-channels\00", align 1
@.str.36 = private unnamed_addr constant [31 x i8] c"missing dma-channels property\0A\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"xlnx,include-dre\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c"xlnx,genlock-mode\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"xlnx,datawidth\00", align 1
@.str.40 = private unnamed_addr constant [33 x i8] c"missing xlnx,datawidth property\0A\00", align 1
@.str.41 = private unnamed_addr constant [27 x i8] c"xlnx,axi-vdma-mm2s-channel\00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c"xlnx,axi-dma-mm2s-channel\00", align 1
@.str.43 = private unnamed_addr constant [22 x i8] c"xlnx,axi-cdma-channel\00", align 1
@.str.44 = private unnamed_addr constant [27 x i8] c"xlnx,axi-vdma-s2mm-channel\00", align 1
@.str.45 = private unnamed_addr constant [26 x i8] c"xlnx,axi-dma-s2mm-channel\00", align 1
@.str.46 = private unnamed_addr constant [22 x i8] c"xlnx,enable-vert-flip\00", align 1
@.str.47 = private unnamed_addr constant [33 x i8] c"Invalid channel compatible node\0A\00", align 1
@.str.48 = private unnamed_addr constant [19 x i8] c"failed to get irq\0A\00", align 1
@.str.49 = private unnamed_addr constant [22 x i8] c"xilinx-dma-controller\00", align 1
@.str.50 = private unnamed_addr constant [26 x i8] c"unable to request IRQ %d\0A\00", align 1
@.str.51 = private unnamed_addr constant [22 x i8] c"Reset channel failed\0A\00", align 1
@.str.52 = private unnamed_addr constant [29 x i8] c"Cannot start channel %p: %x\0A\00", align 1
@axidma_config = internal constant %struct.xilinx_dma_config { i32 0, ptr @axidma_clk_init, ptr @xilinx_dma_irq_handler, i32 2 }, align 4
@axicdma_config = internal constant %struct.xilinx_dma_config { i32 1, ptr @axicdma_clk_init, ptr @xilinx_dma_irq_handler, i32 1 }, align 4
@axivdma_config = internal constant %struct.xilinx_dma_config { i32 2, ptr @axivdma_clk_init, ptr @xilinx_dma_irq_handler, i32 2 }, align 4
@aximcdma_config = internal constant %struct.xilinx_dma_config { i32 3, ptr @axidma_clk_init, ptr @xilinx_mcdma_irq_handler, i32 32 }, align 4
@.str.53 = private unnamed_addr constant [14 x i8] c"m_axi_sg_aclk\00", align 1
@.str.54 = private unnamed_addr constant [30 x i8] c"failed to enable sg_clk (%d)\0A\00", align 1
@.str.55 = private unnamed_addr constant [41 x i8] c"Channel %p has errors %x, cdr %x tdr %x\0A\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"m_axi_aclk\00", align 1
@.str.57 = private unnamed_addr constant [23 x i8] c"failed to get dev_clk\0A\00", align 1
@.str.58 = private unnamed_addr constant [31 x i8] c"failed to enable dev_clk (%d)\0A\00", align 1
@.str.59 = private unnamed_addr constant [40 x i8] c"Channel %p has errors %x cdr %x tdr %x\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_xilinx_vdma_driver_exit, ptr @__initcall__kmod_xilinx_dma__236_3340_xilinx_vdma_driver_init6, ptr @__ksymtab_xilinx_vdma_channel_set_config, ptr @xilinx_vdma_driver_exit], section "llvm.metadata"
@switch.table.xilinx_dma_probe = private unnamed_addr constant [4 x ptr] [ptr @xilinx_dma_start_transfer, ptr @xilinx_cdma_start_transfer, ptr @xilinx_vdma_start_transfer, ptr @xilinx_mcdma_start_transfer], align 4
@switch.table.xilinx_dma_probe.60 = private unnamed_addr constant [4 x ptr] [ptr @xilinx_dma_stop_transfer, ptr @xilinx_cdma_stop_transfer, ptr @xilinx_dma_stop_transfer, ptr @xilinx_dma_stop_transfer], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xilinx_vdma_channel_set_config(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -48
  %4 = getelementptr inbounds %struct.xilinx_vdma_config, ptr %1, i32 0, i32 8
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call fastcc i32 @xilinx_dma_chan_reset(ptr noundef %3)
  br label %87

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %0, i32 -44
  %11 = load i32, ptr %10, align 4
  %12 = load ptr, ptr %3, align 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 %11
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %16 = load i32, ptr %1, align 4
  %17 = getelementptr i8, ptr %0, i32 120
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.xilinx_vdma_config, ptr %1, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr i8, ptr %0, i32 136
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.xilinx_vdma_config, ptr %1, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr i8, ptr %0, i32 124
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.xilinx_vdma_config, ptr %1, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr i8, ptr %0, i32 128
  store i32 %25, ptr %26, align 4
  %27 = and i32 %15, -9
  %28 = load i32, ptr %21, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %9
  %31 = getelementptr i8, ptr %0, i32 90
  %32 = load i8, ptr %31, align 2, !range !10
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %30
  %35 = and i32 %15, -3849
  %36 = load i32, ptr %24, align 4
  %37 = shl i32 %36, 8
  %38 = or i32 %35, %37
  %39 = or i32 %38, 8
  br label %40

40:                                               ; preds = %34, %30, %9
  %41 = phi i32 [ %39, %34 ], [ %27, %30 ], [ %27, %9 ]
  %42 = getelementptr inbounds %struct.xilinx_vdma_config, ptr %1, i32 0, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr i8, ptr %0, i32 132
  store i32 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.xilinx_vdma_config, ptr %1, i32 0, i32 10
  %46 = load i8, ptr %45, align 4, !range !10
  %47 = getelementptr i8, ptr %0, i32 160
  store i8 %46, ptr %47, align 4
  %48 = load i32, ptr %18, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %40
  %51 = getelementptr inbounds %struct.xilinx_vdma_config, ptr %1, i32 0, i32 5
  %52 = load i32, ptr %51, align 4
  br label %53

53:                                               ; preds = %50, %40
  %54 = phi i32 [ %52, %50 ], [ -1, %40 ]
  %55 = getelementptr i8, ptr %0, i32 140
  store i32 %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.xilinx_vdma_config, ptr %1, i32 0, i32 6
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr i8, ptr %0, i32 144
  store i32 %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.xilinx_vdma_config, ptr %1, i32 0, i32 7
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr i8, ptr %0, i32 148
  store i32 %60, ptr %61, align 4
  %62 = load i32, ptr %56, align 4
  %63 = icmp slt i32 %62, 256
  br i1 %63, label %64, label %68

64:                                               ; preds = %53
  %65 = and i32 %41, -16711681
  %66 = shl i32 %62, 16
  %67 = or i32 %66, %65
  store i32 %62, ptr %58, align 4
  br label %68

68:                                               ; preds = %64, %53
  %69 = phi i32 [ %67, %64 ], [ %41, %53 ]
  %70 = load i32, ptr %59, align 4
  %71 = icmp slt i32 %70, 256
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = and i32 %69, 16777215
  %74 = shl i32 %70, 24
  %75 = or i32 %74, %73
  store i32 %70, ptr %61, align 4
  br label %76

76:                                               ; preds = %72, %68
  %77 = phi i32 [ %75, %72 ], [ %69, %68 ]
  %78 = and i32 %77, -97
  %79 = getelementptr inbounds %struct.xilinx_vdma_config, ptr %1, i32 0, i32 9
  %80 = load i32, ptr %79, align 4
  %81 = shl i32 %80, 5
  %82 = or i32 %81, %78
  %83 = load i32, ptr %10, align 4
  %84 = load ptr, ptr %3, align 4
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr i8, ptr %85, i32 %83
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %82) #11, !srcloc !12
  br label %87

87:                                               ; preds = %76, %7
  %88 = phi i32 [ %8, %7 ], [ 0, %76 ]
  ret i32 %88
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @xilinx_dma_chan_reset(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 %3
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %8 = or i32 %7, 4
  %9 = load i32, ptr %2, align 4
  %10 = load ptr, ptr %0, align 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %8) #11, !srcloc !12
  %13 = tail call i64 @ktime_get() #11
  %14 = add i64 %13, 1000000000
  br label %15

15:                                               ; preds = %23, %1
  %16 = load ptr, ptr %0, align 4
  %17 = load ptr, ptr %16, align 4
  %18 = load i32, ptr %2, align 4
  %19 = getelementptr i8, ptr %17, i32 %18
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  %21 = and i32 %20, 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %15
  %24 = tail call i64 @ktime_get() #11
  %25 = icmp sgt i64 %24, %14
  br i1 %25, label %26, label %15

26:                                               ; preds = %23
  %27 = load ptr, ptr %0, align 4
  %28 = load ptr, ptr %27, align 4
  %29 = load i32, ptr %2, align 4
  %30 = getelementptr i8, ptr %28, i32 %29
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !14
  br label %32

32:                                               ; preds = %26, %15
  %33 = phi i32 [ %31, %26 ], [ %20, %15 ]
  %34 = and i32 %33, 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %50, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 10
  %38 = load ptr, ptr %37, align 4
  %39 = load i32, ptr %2, align 4
  %40 = load ptr, ptr %0, align 4
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr i8, ptr %41, i32 %39
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %44 = load i32, ptr %2, align 4
  %45 = add i32 %44, 4
  %46 = load ptr, ptr %0, align 4
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr i8, ptr %47, i32 %45
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str, i32 noundef %43, i32 noundef %49) #12
  br label %65

50:                                               ; preds = %32
  %51 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 18
  store i8 0, ptr %51, align 1
  %52 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 19
  store i8 1, ptr %52, align 4
  %53 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 24
  store i32 0, ptr %53, align 4
  %54 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 26
  store i32 0, ptr %54, align 4
  %55 = load i32, ptr %2, align 4
  %56 = load ptr, ptr %0, align 4
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr i8, ptr %57, i32 %55
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %60 = or i32 %59, 28672
  %61 = load i32, ptr %2, align 4
  %62 = load ptr, ptr %0, align 4
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr i8, ptr %63, i32 %61
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %60) #11, !srcloc !12
  br label %65

65:                                               ; preds = %50, %36
  %66 = phi i32 [ 0, %50 ], [ -110, %36 ]
  ret i32 %66
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @xilinx_vdma_driver_init() #2 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @xilinx_vdma_driver, ptr noundef null) #11
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @xilinx_vdma_driver_exit() #2 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @xilinx_vdma_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xilinx_dma_probe(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  store i32 0, ptr %6, align 4, !annotation !15
  %10 = tail call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef 436, i32 noundef 3520) #11
  %11 = icmp eq ptr %10, null
  br i1 %11, label %439, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.xilinx_dma_device, ptr %10, i32 0, i32 1
  store ptr %7, ptr %13, align 4
  %14 = icmp eq ptr %9, null
  br i1 %14, label %26, label %15

15:                                               ; preds = %12
  %16 = tail call ptr @of_match_node(ptr noundef nonnull @xilinx_dma_of_ids, ptr noundef nonnull %9) #11
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.of_device_id, ptr %16, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.xilinx_dma_device, ptr %10, i32 0, i32 7
  store ptr %20, ptr %23, align 4
  %24 = getelementptr inbounds %struct.xilinx_dma_config, ptr %20, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  br label %26

26:                                               ; preds = %22, %18, %15, %12
  %27 = phi ptr [ @axivdma_clk_init, %12 ], [ %25, %22 ], [ @axivdma_clk_init, %18 ], [ @axivdma_clk_init, %15 ]
  %28 = getelementptr inbounds %struct.xilinx_dma_device, ptr %10, i32 0, i32 8
  %29 = getelementptr inbounds %struct.xilinx_dma_device, ptr %10, i32 0, i32 9
  %30 = getelementptr inbounds %struct.xilinx_dma_device, ptr %10, i32 0, i32 10
  %31 = getelementptr inbounds %struct.xilinx_dma_device, ptr %10, i32 0, i32 11
  %32 = getelementptr inbounds %struct.xilinx_dma_device, ptr %10, i32 0, i32 12
  %33 = tail call i32 %27(ptr noundef %0, ptr noundef %28, ptr noundef %29, ptr noundef %30, ptr noundef %31, ptr noundef %32) #11
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %439

35:                                               ; preds = %26
  %36 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #11
  store ptr %36, ptr %10, align 4
  %37 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = ptrtoint ptr %36 to i32
  br label %439

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.xilinx_dma_device, ptr %10, i32 0, i32 15
  store i32 8388607, ptr %41, align 4
  %42 = getelementptr inbounds %struct.xilinx_dma_device, ptr %10, i32 0, i32 7
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.xilinx_dma_config, ptr %43, i32 0, i32 3
  %45 = load i32, ptr %44, align 4
  %46 = sdiv i32 %45, 2
  %47 = getelementptr inbounds %struct.xilinx_dma_device, ptr %10, i32 0, i32 13
  store i32 %46, ptr %47, align 4
  %48 = load i32, ptr %43, align 4
  switch i32 %48, label %67 [
    i32 0, label %49
    i32 3, label %49
  ]

49:                                               ; preds = %40, %40
  %50 = call i32 @of_property_read_variable_u32_array(ptr noundef %9, ptr noundef nonnull @.str.2, ptr noundef nonnull %6, i32 noundef 1, i32 noundef 0) #11
  %51 = icmp sgt i32 %50, -1
  br i1 %51, label %52, label %67

52:                                               ; preds = %49
  %53 = load i32, ptr %6, align 4
  %54 = add i32 %53, -27
  %55 = icmp ult i32 %54, -19
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load ptr, ptr %13, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %57, ptr noundef nonnull @.str.3) #12
  br label %67

58:                                               ; preds = %52
  %59 = icmp ugt i32 %53, 23
  br i1 %59, label %60, label %63

60:                                               ; preds = %58
  %61 = load ptr, ptr %13, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %61, ptr noundef nonnull @.str.4) #12
  %62 = load i32, ptr %6, align 4
  br label %63

63:                                               ; preds = %60, %58
  %64 = phi i32 [ %62, %60 ], [ %53, %58 ]
  %65 = sub i32 32, %64
  %66 = lshr i32 -1, %65
  store i32 %66, ptr %41, align 4
  br label %67

67:                                               ; preds = %63, %56, %49, %40
  %68 = load ptr, ptr %42, align 4
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %69, 2
  br i1 %70, label %71, label %82

71:                                               ; preds = %67
  %72 = call i32 @of_property_read_variable_u32_array(ptr noundef %9, ptr noundef nonnull @.str.5, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #11
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load ptr, ptr %13, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.6) #12
  br label %439

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.xilinx_dma_device, ptr %10, i32 0, i32 4
  %78 = call i32 @of_property_read_variable_u32_array(ptr noundef %9, ptr noundef nonnull @.str.7, ptr noundef %77, i32 noundef 1, i32 noundef 0) #11
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load ptr, ptr %13, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %81, ptr noundef nonnull @.str.8) #12
  br label %82

82:                                               ; preds = %80, %76, %67
  %83 = call i32 @of_property_read_variable_u32_array(ptr noundef %9, ptr noundef nonnull @.str.9, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0) #11
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = load ptr, ptr %13, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %86, ptr noundef nonnull @.str.10) #12
  br label %87

87:                                               ; preds = %85, %82
  %88 = load i32, ptr %5, align 4
  %89 = icmp ugt i32 %88, 32
  %90 = getelementptr inbounds %struct.xilinx_dma_device, ptr %10, i32 0, i32 5
  br i1 %89, label %93, label %91

91:                                               ; preds = %87
  store i8 0, ptr %90, align 4
  %92 = load ptr, ptr %13, align 4
  br label %96

93:                                               ; preds = %87
  store i8 1, ptr %90, align 4
  %94 = load ptr, ptr %13, align 4
  %95 = icmp eq i32 %88, 64
  br i1 %95, label %101, label %96

96:                                               ; preds = %93, %91
  %97 = phi ptr [ %92, %91 ], [ %94, %93 ]
  %98 = zext i32 %88 to i64
  %99 = shl nsw i64 -1, %98
  %100 = xor i64 %99, -1
  br label %101

101:                                              ; preds = %96, %93
  %102 = phi ptr [ %97, %96 ], [ %94, %93 ]
  %103 = phi i64 [ %100, %96 ], [ -1, %93 ]
  %104 = call i32 @dma_set_mask(ptr noundef %102, i64 noundef %103) #11
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = call i32 @dma_set_coherent_mask(ptr noundef %102, i64 noundef %103) #11
  br label %108

108:                                              ; preds = %106, %101
  %109 = getelementptr inbounds %struct.xilinx_dma_device, ptr %10, i32 0, i32 2
  %110 = getelementptr inbounds %struct.xilinx_dma_device, ptr %10, i32 0, i32 2, i32 15
  store ptr %7, ptr %110, align 4
  %111 = getelementptr inbounds %struct.xilinx_dma_device, ptr %10, i32 0, i32 2, i32 3
  store volatile ptr %111, ptr %111, align 4
  %112 = getelementptr inbounds %struct.xilinx_dma_device, ptr %10, i32 0, i32 2, i32 3, i32 1
  store ptr %111, ptr %112, align 4
  %113 = load ptr, ptr %42, align 4
  %114 = load i32, ptr %113, align 4
  %115 = icmp eq i32 %114, 1
  br i1 %115, label %119, label %116

116:                                              ; preds = %108
  %117 = getelementptr inbounds %struct.xilinx_dma_device, ptr %10, i32 0, i32 2, i32 6
  call void @_set_bit(i32 noundef 11, ptr noundef %117) #11
  call void @_set_bit(i32 noundef 9, ptr noundef %117) #11
  %118 = load ptr, ptr %42, align 4
  br label %119

119:                                              ; preds = %116, %108
  %120 = phi ptr [ %118, %116 ], [ %113, %108 ]
  %121 = getelementptr inbounds %struct.xilinx_dma_device, ptr %10, i32 0, i32 2, i32 27
  store ptr @xilinx_dma_alloc_chan_resources, ptr %121, align 4
  %122 = getelementptr inbounds %struct.xilinx_dma_device, ptr %10, i32 0, i32 2, i32 29
  store ptr @xilinx_dma_free_chan_resources, ptr %122, align 4
  %123 = getelementptr inbounds %struct.xilinx_dma_device, ptr %10, i32 0, i32 2, i32 47
  store ptr @xilinx_dma_terminate_all, ptr %123, align 4
  %124 = getelementptr inbounds %struct.xilinx_dma_device, ptr %10, i32 0, i32 2, i32 48
  store ptr @xilinx_dma_synchronize, ptr %124, align 4
  %125 = getelementptr inbounds %struct.xilinx_dma_device, ptr %10, i32 0, i32 2, i32 49
  store ptr @xilinx_dma_tx_status, ptr %125, align 4
  %126 = getelementptr inbounds %struct.xilinx_dma_device, ptr %10, i32 0, i32 2, i32 50
  store ptr @xilinx_dma_issue_pending, ptr %126, align 4
  %127 = getelementptr inbounds %struct.xilinx_dma_device, ptr %10, i32 0, i32 2, i32 44
  store ptr @xilinx_dma_device_config, ptr %127, align 4
  %128 = load i32, ptr %120, align 4
  switch i32 %128, label %141 [
    i32 0, label %129
    i32 1, label %134
    i32 3, label %139
  ]

129:                                              ; preds = %119
  %130 = getelementptr inbounds %struct.xilinx_dma_device, ptr %10, i32 0, i32 2, i32 6
  call void @_set_bit(i32 noundef 12, ptr noundef %130) #11
  %131 = getelementptr inbounds %struct.xilinx_dma_device, ptr %10, i32 0, i32 2, i32 39
  store ptr @xilinx_dma_prep_slave_sg, ptr %131, align 4
  %132 = getelementptr inbounds %struct.xilinx_dma_device, ptr %10, i32 0, i32 2, i32 40
  store ptr @xilinx_dma_prep_dma_cyclic, ptr %132, align 4
  %133 = getelementptr inbounds %struct.xilinx_dma_device, ptr %10, i32 0, i32 2, i32 26
  store i32 1, ptr %133, align 4
  br label %143

134:                                              ; preds = %119
  %135 = getelementptr inbounds %struct.xilinx_dma_device, ptr %10, i32 0, i32 2, i32 6
  call void @_set_bit(i32 noundef 0, ptr noundef %135) #11
  call void @_set_bit(i32 noundef 1, ptr noundef %135) #11
  %136 = getelementptr inbounds %struct.xilinx_dma_device, ptr %10, i32 0, i32 2, i32 30
  store ptr @xilinx_cdma_prep_memcpy, ptr %136, align 4
  %137 = getelementptr inbounds %struct.xilinx_dma_device, ptr %10, i32 0, i32 2, i32 31
  store ptr @xilinx_cdma_prep_memcpy_sg, ptr %137, align 4
  %138 = getelementptr inbounds %struct.xilinx_dma_device, ptr %10, i32 0, i32 2, i32 26
  store i32 1, ptr %138, align 4
  br label %143

139:                                              ; preds = %119
  %140 = getelementptr inbounds %struct.xilinx_dma_device, ptr %10, i32 0, i32 2, i32 39
  store ptr @xilinx_mcdma_prep_slave_sg, ptr %140, align 4
  br label %143

141:                                              ; preds = %119
  %142 = getelementptr inbounds %struct.xilinx_dma_device, ptr %10, i32 0, i32 2, i32 41
  store ptr @xilinx_vdma_dma_prep_interleaved, ptr %142, align 4
  br label %143

143:                                              ; preds = %141, %139, %134, %129
  %144 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %10, ptr %144, align 8
  %145 = call ptr @of_get_next_child(ptr noundef %9, ptr noundef null) #11
  %146 = icmp eq ptr %145, null
  br i1 %146, label %354, label %147

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.xilinx_dma_device, ptr %10, i32 0, i32 5
  %149 = getelementptr inbounds %struct.xilinx_dma_device, ptr %10, i32 0, i32 2, i32 10
  %150 = getelementptr inbounds %struct.xilinx_dma_device, ptr %10, i32 0, i32 14
  %151 = getelementptr inbounds %struct.xilinx_dma_device, ptr %10, i32 0, i32 4
  br label %152

152:                                              ; preds = %351, %147
  %153 = phi ptr [ %145, %147 ], [ %352, %351 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 1, ptr %3, align 4
  %154 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %153, ptr noundef nonnull @.str.35, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #11
  %155 = load ptr, ptr %42, align 4
  %156 = load i32, ptr %155, align 4
  %157 = icmp eq i32 %156, 3
  %158 = icmp slt i32 %154, 0
  %159 = select i1 %157, i1 %158, i1 false
  br i1 %159, label %160, label %162

160:                                              ; preds = %152
  %161 = load ptr, ptr %13, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %161, ptr noundef nonnull @.str.36) #12
  br label %162

162:                                              ; preds = %160, %152
  %163 = load i32, ptr %3, align 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %347, label %165

165:                                              ; preds = %343, %162
  %166 = phi i32 [ %344, %343 ], [ 0, %162 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !annotation !15
  %167 = load ptr, ptr %13, align 4
  %168 = call noalias ptr @devm_kmalloc(ptr noundef %167, i32 noundef 260, i32 noundef 3520) #11
  %169 = icmp eq ptr %168, null
  br i1 %169, label %337, label %170

170:                                              ; preds = %165
  %171 = load ptr, ptr %13, align 4
  %172 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %168, i32 0, i32 10
  store ptr %171, ptr %172, align 4
  store ptr %10, ptr %168, align 4
  %173 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %168, i32 0, i32 24
  store i32 0, ptr %173, align 4
  %174 = load i8, ptr %148, align 4, !range !10
  %175 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %168, i32 0, i32 25
  store i8 %174, ptr %175, align 4
  %176 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %168, i32 0, i32 19
  store i8 1, ptr %176, align 4
  %177 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %168, i32 0, i32 3
  store i32 0, ptr %177, align 4
  %178 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %168, i32 0, i32 4
  store volatile ptr %178, ptr %178, align 4
  %179 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %168, i32 0, i32 4, i32 1
  store ptr %178, ptr %179, align 4
  %180 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %168, i32 0, i32 6
  store volatile ptr %180, ptr %180, align 4
  %181 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %168, i32 0, i32 6, i32 1
  store ptr %180, ptr %181, align 4
  %182 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %168, i32 0, i32 5
  store volatile ptr %182, ptr %182, align 4
  %183 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %168, i32 0, i32 5, i32 1
  store ptr %182, ptr %183, align 4
  %184 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %168, i32 0, i32 7
  store volatile ptr %184, ptr %184, align 4
  %185 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %168, i32 0, i32 7, i32 1
  store ptr %184, ptr %185, align 4
  %186 = call ptr @of_find_property(ptr noundef nonnull %153, ptr noundef nonnull @.str.37, ptr noundef null) #11
  %187 = call ptr @of_find_property(ptr noundef nonnull %153, ptr noundef nonnull @.str.38, ptr noundef null) #11
  %188 = icmp ne ptr %187, null
  %189 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %168, i32 0, i32 17
  %190 = zext i1 %188 to i8
  store i8 %190, ptr %189, align 2
  %191 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %153, ptr noundef nonnull @.str.39, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #11
  %192 = icmp sgt i32 %191, -1
  br i1 %192, label %195, label %193

193:                                              ; preds = %170
  %194 = load ptr, ptr %13, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %194, ptr noundef nonnull @.str.40) #12
  br label %337

195:                                              ; preds = %170
  %196 = icmp ne ptr %186, null
  %197 = load i32, ptr %2, align 4
  %198 = icmp ult i32 %197, 72
  %199 = select i1 %198, i1 %196, i1 false
  br i1 %199, label %207, label %200

200:                                              ; preds = %195
  %201 = lshr i32 %197, 3
  %202 = add nsw i32 %201, -1
  %203 = icmp eq i32 %202, 0
  %204 = call i32 @llvm.ctlz.i32(i32 %202, i1 false) #11, !range !16
  %205 = sub nuw nsw i32 32, %204
  %206 = select i1 %203, i32 0, i32 %205
  store i32 %206, ptr %149, align 4
  br label %207

207:                                              ; preds = %200, %195
  %208 = call i32 @of_device_is_compatible(ptr noundef nonnull %153, ptr noundef nonnull @.str.41) #11
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %216

210:                                              ; preds = %207
  %211 = call i32 @of_device_is_compatible(ptr noundef nonnull %153, ptr noundef nonnull @.str.42) #11
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %210
  %214 = call i32 @of_device_is_compatible(ptr noundef nonnull %153, ptr noundef nonnull @.str.43) #11
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %233, label %216

216:                                              ; preds = %213, %210, %207
  %217 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %168, i32 0, i32 13
  store i32 1, ptr %217, align 4
  %218 = load i32, ptr %150, align 4
  %219 = add i32 %218, 1
  store i32 %219, ptr %150, align 4
  %220 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %168, i32 0, i32 12
  store i32 %218, ptr %220, align 4
  %221 = trunc i32 %218 to i16
  %222 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %168, i32 0, i32 34
  store i16 %221, ptr %222, align 4
  %223 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %168, i32 0, i32 1
  store i32 0, ptr %223, align 4
  %224 = load ptr, ptr %42, align 4
  %225 = load i32, ptr %224, align 4
  %226 = icmp eq i32 %225, 2
  br i1 %226, label %227, label %279

227:                                              ; preds = %216
  %228 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %168, i32 0, i32 2
  store i32 80, ptr %228, align 4
  %229 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %168, i32 0, i32 22, i32 4
  store i32 1, ptr %229, align 4
  %230 = load i32, ptr %151, align 4
  %231 = add i32 %230, -1
  %232 = icmp ult i32 %231, 2
  br i1 %232, label %277, label %279

233:                                              ; preds = %213
  %234 = call i32 @of_device_is_compatible(ptr noundef nonnull %153, ptr noundef nonnull @.str.44) #11
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %233
  %237 = call i32 @of_device_is_compatible(ptr noundef nonnull %153, ptr noundef nonnull @.str.45) #11
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %275, label %239

239:                                              ; preds = %236, %233
  %240 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %168, i32 0, i32 13
  store i32 2, ptr %240, align 4
  %241 = load i32, ptr %47, align 4
  %242 = add i32 %241, 1
  store i32 %242, ptr %47, align 4
  %243 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %168, i32 0, i32 12
  store i32 %241, ptr %243, align 4
  %244 = load ptr, ptr %42, align 4
  %245 = getelementptr inbounds %struct.xilinx_dma_config, ptr %244, i32 0, i32 3
  %246 = load i32, ptr %245, align 4
  %247 = sdiv i32 %246, -2
  %248 = add i32 %247, %241
  %249 = trunc i32 %248 to i16
  %250 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %168, i32 0, i32 34
  store i16 %249, ptr %250, align 4
  %251 = call ptr @of_find_property(ptr noundef nonnull %153, ptr noundef nonnull @.str.46, ptr noundef null) #11
  %252 = icmp ne ptr %251, null
  %253 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %168, i32 0, i32 35
  %254 = zext i1 %252 to i8
  store i8 %254, ptr %253, align 2
  br i1 %252, label %255, label %263

255:                                              ; preds = %239
  %256 = load ptr, ptr %168, align 4
  %257 = load ptr, ptr %256, align 4
  %258 = getelementptr i8, ptr %257, i32 236
  %259 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %258) #11, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %260 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %168, i32 0, i32 22, i32 10
  %261 = trunc i32 %259 to i8
  %262 = and i8 %261, 1
  store i8 %262, ptr %260, align 4
  br label %263

263:                                              ; preds = %255, %239
  %264 = load ptr, ptr %42, align 4
  %265 = load i32, ptr %264, align 4
  %266 = icmp eq i32 %265, 3
  %267 = select i1 %266, i32 1280, i32 48
  %268 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %168, i32 0, i32 1
  store i32 %267, ptr %268, align 4
  %269 = load i32, ptr %264, align 4
  %270 = icmp eq i32 %269, 2
  br i1 %270, label %271, label %279

271:                                              ; preds = %263
  %272 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %168, i32 0, i32 2
  store i32 160, ptr %272, align 4
  %273 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %168, i32 0, i32 22, i32 4
  store i32 1, ptr %273, align 4
  %274 = load i32, ptr %151, align 4
  switch i32 %274, label %279 [
    i32 1, label %277
    i32 3, label %277
  ]

275:                                              ; preds = %236
  %276 = load ptr, ptr %13, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %276, ptr noundef nonnull @.str.47) #12
  br label %337

277:                                              ; preds = %271, %271, %227
  %278 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %168, i32 0, i32 23
  store i8 1, ptr %278, align 4
  br label %279

279:                                              ; preds = %277, %271, %263, %227, %216
  %280 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %168, i32 0, i32 34
  %281 = load i16, ptr %280, align 4
  %282 = zext i16 %281 to i32
  %283 = call i32 @of_irq_get(ptr noundef nonnull %153, i32 noundef %282) #11
  %284 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %168, i32 0, i32 11
  store i32 %283, ptr %284, align 4
  %285 = icmp slt i32 %283, 0
  br i1 %285, label %339, label %286

286:                                              ; preds = %279
  %287 = load ptr, ptr %42, align 4
  %288 = getelementptr inbounds %struct.xilinx_dma_config, ptr %287, i32 0, i32 2
  %289 = load ptr, ptr %288, align 4
  %290 = call i32 @request_threaded_irq(i32 noundef %283, ptr noundef %289, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.49, ptr noundef nonnull %168) #11
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %296, label %292

292:                                              ; preds = %286
  %293 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %168, i32 0, i32 11
  %294 = load ptr, ptr %13, align 4
  %295 = load i32, ptr %293, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %294, ptr noundef nonnull @.str.50, i32 noundef %295) #12
  br label %337

296:                                              ; preds = %286
  %297 = load ptr, ptr %42, align 4
  %298 = load i32, ptr %297, align 4
  %299 = icmp ult i32 %298, 4
  br i1 %299, label %300, label %305

300:                                              ; preds = %296
  %301 = getelementptr inbounds [4 x ptr], ptr @switch.table.xilinx_dma_probe, i32 0, i32 %298
  %302 = load ptr, ptr %301, align 4
  %303 = getelementptr inbounds [4 x ptr], ptr @switch.table.xilinx_dma_probe.60, i32 0, i32 %298
  %304 = load ptr, ptr %303, align 4
  br label %305

305:                                              ; preds = %300, %296
  %306 = phi ptr [ %302, %300 ], [ @xilinx_vdma_start_transfer, %296 ]
  %307 = phi ptr [ %304, %300 ], [ @xilinx_dma_stop_transfer, %296 ]
  %308 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %168, i32 0, i32 32
  store ptr %306, ptr %308, align 4
  %309 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %168, i32 0, i32 33
  store ptr %307, ptr %309, align 4
  %310 = load i32, ptr %297, align 4
  switch i32 %310, label %311 [
    i32 2, label %323
    i32 3, label %321
  ]

311:                                              ; preds = %305
  %312 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %168, i32 0, i32 1
  %313 = load i32, ptr %312, align 4
  %314 = add i32 %313, 4
  %315 = load ptr, ptr %168, align 4
  %316 = load ptr, ptr %315, align 4
  %317 = getelementptr i8, ptr %316, i32 %314
  %318 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %317) #11, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %319 = and i32 %318, 8
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %323, label %321

321:                                              ; preds = %311, %305
  %322 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %168, i32 0, i32 15
  store i8 1, ptr %322, align 4
  br label %323

323:                                              ; preds = %321, %311, %305
  %324 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %168, i32 0, i32 21
  call void @tasklet_setup(ptr noundef %324, ptr noundef nonnull @xilinx_dma_do_tasklet) #11
  %325 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %168, i32 0, i32 8
  store ptr %109, ptr %325, align 4
  %326 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %168, i32 0, i32 8, i32 8
  %327 = load ptr, ptr %112, align 4
  store ptr %326, ptr %112, align 4
  store ptr %111, ptr %326, align 4
  %328 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %168, i32 0, i32 8, i32 8, i32 1
  store ptr %327, ptr %328, align 4
  store volatile ptr %326, ptr %327, align 4
  %329 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %168, i32 0, i32 12
  %330 = load i32, ptr %329, align 4
  %331 = getelementptr %struct.xilinx_dma_device, ptr %10, i32 0, i32 3, i32 %330
  store ptr %168, ptr %331, align 4
  %332 = call fastcc i32 @xilinx_dma_chan_reset(ptr noundef nonnull %168) #11
  %333 = icmp slt i32 %332, 0
  br i1 %333, label %335, label %334

334:                                              ; preds = %323
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  br label %343

335:                                              ; preds = %323
  %336 = load ptr, ptr %13, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %336, ptr noundef nonnull @.str.51) #12
  br label %337

337:                                              ; preds = %335, %292, %275, %193, %165
  %338 = phi i32 [ -22, %275 ], [ %332, %335 ], [ %290, %292 ], [ %191, %193 ], [ -12, %165 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  br label %348

339:                                              ; preds = %279
  %340 = load ptr, ptr %13, align 4
  %341 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %340, i32 noundef %283, ptr noundef nonnull @.str.48) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %343, label %348

343:                                              ; preds = %339, %334
  %344 = add nuw i32 %166, 1
  %345 = load i32, ptr %3, align 4
  %346 = icmp ult i32 %344, %345
  br i1 %346, label %165, label %347

347:                                              ; preds = %343, %162
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  br label %351

348:                                              ; preds = %339, %337
  %349 = phi i32 [ %338, %337 ], [ %341, %339 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  %350 = icmp slt i32 %349, 0
  br i1 %350, label %395, label %351

351:                                              ; preds = %348, %347
  %352 = call ptr @of_get_next_child(ptr noundef %9, ptr noundef nonnull %153) #11
  %353 = icmp eq ptr %352, null
  br i1 %353, label %354, label %152

354:                                              ; preds = %351, %143
  %355 = load ptr, ptr %42, align 4
  %356 = load i32, ptr %355, align 4
  %357 = icmp eq i32 %356, 2
  br i1 %357, label %358, label %379

358:                                              ; preds = %354
  %359 = getelementptr inbounds %struct.xilinx_dma_config, ptr %355, i32 0, i32 3
  %360 = load i32, ptr %359, align 4
  %361 = icmp sgt i32 %360, 0
  br i1 %361, label %362, label %379

362:                                              ; preds = %358
  %363 = load i32, ptr %4, align 4
  br label %364

364:                                              ; preds = %373, %362
  %365 = phi ptr [ %355, %362 ], [ %374, %373 ]
  %366 = phi i32 [ 0, %362 ], [ %375, %373 ]
  %367 = getelementptr %struct.xilinx_dma_device, ptr %10, i32 0, i32 3, i32 %366
  %368 = load ptr, ptr %367, align 4
  %369 = icmp eq ptr %368, null
  br i1 %369, label %373, label %370

370:                                              ; preds = %364
  %371 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %368, i32 0, i32 14
  store i32 %363, ptr %371, align 4
  %372 = load ptr, ptr %42, align 4
  br label %373

373:                                              ; preds = %370, %364
  %374 = phi ptr [ %365, %364 ], [ %372, %370 ]
  %375 = add nuw nsw i32 %366, 1
  %376 = getelementptr inbounds %struct.xilinx_dma_config, ptr %374, i32 0, i32 3
  %377 = load i32, ptr %376, align 4
  %378 = icmp slt i32 %375, %377
  br i1 %378, label %364, label %379

379:                                              ; preds = %373, %358, %354
  %380 = call i32 @dma_async_device_register(ptr noundef %109) #11
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %384, label %382

382:                                              ; preds = %379
  %383 = load ptr, ptr %13, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %383, ptr noundef nonnull @.str.11) #12
  br label %396

384:                                              ; preds = %379
  %385 = call i32 @of_dma_controller_register(ptr noundef %9, ptr noundef nonnull @of_dma_xilinx_xlate, ptr noundef nonnull %10) #11
  %386 = icmp slt i32 %385, 0
  br i1 %386, label %387, label %388

387:                                              ; preds = %384
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.12) #12
  call void @dma_async_device_unregister(ptr noundef %109) #11
  br label %396

388:                                              ; preds = %384
  %389 = load ptr, ptr %42, align 4
  %390 = load i32, ptr %389, align 4
  switch i32 %390, label %394 [
    i32 0, label %391
    i32 1, label %392
    i32 3, label %393
  ]

391:                                              ; preds = %388
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.13) #12
  br label %439

392:                                              ; preds = %388
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.14) #12
  br label %439

393:                                              ; preds = %388
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.15) #12
  br label %439

394:                                              ; preds = %388
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.16) #12
  br label %439

395:                                              ; preds = %348
  call fastcc void @xdma_disable_allclks(ptr noundef nonnull %10)
  br label %396

396:                                              ; preds = %395, %387, %382
  %397 = phi i32 [ %349, %395 ], [ %380, %382 ], [ %385, %387 ]
  %398 = load ptr, ptr %42, align 4
  %399 = getelementptr inbounds %struct.xilinx_dma_config, ptr %398, i32 0, i32 3
  %400 = load i32, ptr %399, align 4
  %401 = icmp sgt i32 %400, 0
  br i1 %401, label %402, label %439

402:                                              ; preds = %433, %396
  %403 = phi ptr [ %434, %433 ], [ %398, %396 ]
  %404 = phi i32 [ %435, %433 ], [ 0, %396 ]
  %405 = getelementptr %struct.xilinx_dma_device, ptr %10, i32 0, i32 3, i32 %404
  %406 = load ptr, ptr %405, align 4
  %407 = icmp eq ptr %406, null
  br i1 %407, label %433, label %408

408:                                              ; preds = %402
  %409 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %406, i32 0, i32 1
  %410 = load i32, ptr %409, align 4
  %411 = load ptr, ptr %406, align 4
  %412 = load ptr, ptr %411, align 4
  %413 = getelementptr i8, ptr %412, i32 %410
  %414 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %413) #11, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %415 = and i32 %414, -28673
  %416 = load i32, ptr %409, align 4
  %417 = load ptr, ptr %406, align 4
  %418 = load ptr, ptr %417, align 4
  %419 = getelementptr i8, ptr %418, i32 %416
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %419, i32 %415) #11, !srcloc !12
  %420 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %406, i32 0, i32 11
  %421 = load i32, ptr %420, align 4
  %422 = icmp sgt i32 %421, 0
  br i1 %422, label %423, label %425

423:                                              ; preds = %408
  %424 = call ptr @free_irq(i32 noundef %421, ptr noundef nonnull %406) #11
  br label %425

425:                                              ; preds = %423, %408
  %426 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %406, i32 0, i32 21
  call void @tasklet_kill(ptr noundef %426) #11
  %427 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %406, i32 0, i32 8, i32 8
  %428 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %406, i32 0, i32 8, i32 8, i32 1
  %429 = load ptr, ptr %428, align 4
  %430 = load ptr, ptr %427, align 4
  %431 = getelementptr inbounds %struct.list_head, ptr %430, i32 0, i32 1
  store ptr %429, ptr %431, align 4
  store volatile ptr %430, ptr %429, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %427, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %428, align 4
  %432 = load ptr, ptr %42, align 4
  br label %433

433:                                              ; preds = %425, %402
  %434 = phi ptr [ %403, %402 ], [ %432, %425 ]
  %435 = add nuw nsw i32 %404, 1
  %436 = getelementptr inbounds %struct.xilinx_dma_config, ptr %434, i32 0, i32 3
  %437 = load i32, ptr %436, align 4
  %438 = icmp slt i32 %435, %437
  br i1 %438, label %402, label %439

439:                                              ; preds = %433, %396, %394, %393, %392, %391, %74, %38, %26, %1
  %440 = phi i32 [ %39, %38 ], [ %72, %74 ], [ -12, %1 ], [ %33, %26 ], [ 0, %392 ], [ 0, %394 ], [ 0, %393 ], [ 0, %391 ], [ %397, %396 ], [ %397, %433 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret i32 %440
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xilinx_dma_remove(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  tail call void @of_dma_controller_free(ptr noundef %5) #11
  %6 = getelementptr inbounds %struct.xilinx_dma_device, ptr %3, i32 0, i32 2
  tail call void @dma_async_device_unregister(ptr noundef %6) #11
  %7 = getelementptr inbounds %struct.xilinx_dma_device, ptr %3, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.xilinx_dma_config, ptr %8, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %49

12:                                               ; preds = %43, %1
  %13 = phi ptr [ %44, %43 ], [ %8, %1 ]
  %14 = phi i32 [ %45, %43 ], [ 0, %1 ]
  %15 = getelementptr %struct.xilinx_dma_device, ptr %3, i32 0, i32 3, i32 %14
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %43, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %16, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = load ptr, ptr %16, align 4
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 %20
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %25 = and i32 %24, -28673
  %26 = load i32, ptr %19, align 4
  %27 = load ptr, ptr %16, align 4
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 %26
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %25) #11, !srcloc !12
  %30 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %16, i32 0, i32 11
  %31 = load i32, ptr %30, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %18
  %34 = tail call ptr @free_irq(i32 noundef %31, ptr noundef nonnull %16) #11
  br label %35

35:                                               ; preds = %33, %18
  %36 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %16, i32 0, i32 21
  tail call void @tasklet_kill(ptr noundef %36) #11
  %37 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %16, i32 0, i32 8, i32 8
  %38 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %16, i32 0, i32 8, i32 8, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = load ptr, ptr %37, align 4
  %41 = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  store ptr %39, ptr %41, align 4
  store volatile ptr %40, ptr %39, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %37, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %38, align 4
  %42 = load ptr, ptr %7, align 4
  br label %43

43:                                               ; preds = %35, %12
  %44 = phi ptr [ %13, %12 ], [ %42, %35 ]
  %45 = add nuw nsw i32 %14, 1
  %46 = getelementptr inbounds %struct.xilinx_dma_config, ptr %44, i32 0, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = icmp slt i32 %45, %47
  br i1 %48, label %12, label %49

49:                                               ; preds = %43, %1
  tail call fastcc void @xdma_disable_allclks(ptr noundef %3)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @axivdma_clk_init(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5) #0 {
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %8 = tail call ptr @devm_clk_get(ptr noundef %7, ptr noundef nonnull @.str.17) #11
  store ptr %8, ptr %1, align 4
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = ptrtoint ptr %8 to i32
  %12 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %7, i32 noundef %11, ptr noundef nonnull @.str.18) #11
  br label %85

13:                                               ; preds = %6
  %14 = tail call ptr @devm_clk_get(ptr noundef %7, ptr noundef nonnull @.str.19) #11
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  %16 = select i1 %15, ptr null, ptr %14
  store ptr %16, ptr %2, align 4
  %17 = tail call ptr @devm_clk_get(ptr noundef %7, ptr noundef nonnull @.str.20) #11
  %18 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  %19 = select i1 %18, ptr null, ptr %17
  store ptr %19, ptr %3, align 4
  %20 = tail call ptr @devm_clk_get(ptr noundef %7, ptr noundef nonnull @.str.21) #11
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  %22 = select i1 %21, ptr null, ptr %20
  store ptr %22, ptr %4, align 4
  %23 = tail call ptr @devm_clk_get(ptr noundef %7, ptr noundef nonnull @.str.22) #11
  %24 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  %25 = select i1 %24, ptr null, ptr %23
  store ptr %25, ptr %5, align 4
  %26 = load ptr, ptr %1, align 4
  %27 = tail call i32 @clk_prepare(ptr noundef %26) #11
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %13
  %30 = tail call i32 @clk_enable(ptr noundef %26) #11
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  tail call void @clk_unprepare(ptr noundef %26) #11
  br label %33

33:                                               ; preds = %32, %13
  %34 = phi i32 [ %30, %32 ], [ %27, %13 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.23, i32 noundef %34) #12
  br label %85

35:                                               ; preds = %29
  %36 = load ptr, ptr %2, align 4
  %37 = tail call i32 @clk_prepare(ptr noundef %36) #11
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = tail call i32 @clk_enable(ptr noundef %36) #11
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  tail call void @clk_unprepare(ptr noundef %36) #11
  br label %43

43:                                               ; preds = %42, %35
  %44 = phi i32 [ %40, %42 ], [ %37, %35 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.24, i32 noundef %44) #12
  br label %82

45:                                               ; preds = %39
  %46 = load ptr, ptr %3, align 4
  %47 = tail call i32 @clk_prepare(ptr noundef %46) #11
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = tail call i32 @clk_enable(ptr noundef %46) #11
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  tail call void @clk_unprepare(ptr noundef %46) #11
  br label %53

53:                                               ; preds = %52, %45
  %54 = phi i32 [ %50, %52 ], [ %47, %45 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.25, i32 noundef %54) #12
  br label %79

55:                                               ; preds = %49
  %56 = load ptr, ptr %4, align 4
  %57 = tail call i32 @clk_prepare(ptr noundef %56) #11
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = tail call i32 @clk_enable(ptr noundef %56) #11
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  tail call void @clk_unprepare(ptr noundef %56) #11
  br label %63

63:                                               ; preds = %62, %55
  %64 = phi i32 [ %60, %62 ], [ %57, %55 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.26, i32 noundef %64) #12
  br label %76

65:                                               ; preds = %59
  %66 = load ptr, ptr %5, align 4
  %67 = tail call i32 @clk_prepare(ptr noundef %66) #11
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = tail call i32 @clk_enable(ptr noundef %66) #11
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %85, label %72

72:                                               ; preds = %69
  tail call void @clk_unprepare(ptr noundef %66) #11
  br label %73

73:                                               ; preds = %72, %65
  %74 = phi i32 [ %70, %72 ], [ %67, %65 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.27, i32 noundef %74) #12
  %75 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %75) #11
  tail call void @clk_unprepare(ptr noundef %75) #11
  br label %76

76:                                               ; preds = %73, %63
  %77 = phi i32 [ %64, %63 ], [ %74, %73 ]
  %78 = load ptr, ptr %3, align 4
  tail call void @clk_disable(ptr noundef %78) #11
  tail call void @clk_unprepare(ptr noundef %78) #11
  br label %79

79:                                               ; preds = %76, %53
  %80 = phi i32 [ %54, %53 ], [ %77, %76 ]
  %81 = load ptr, ptr %2, align 4
  tail call void @clk_disable(ptr noundef %81) #11
  tail call void @clk_unprepare(ptr noundef %81) #11
  br label %82

82:                                               ; preds = %79, %43
  %83 = phi i32 [ %44, %43 ], [ %80, %79 ]
  %84 = load ptr, ptr %1, align 4
  tail call void @clk_disable(ptr noundef %84) #11
  tail call void @clk_unprepare(ptr noundef %84) #11
  br label %85

85:                                               ; preds = %82, %69, %33, %10
  %86 = phi i32 [ %12, %10 ], [ %34, %33 ], [ %83, %82 ], [ 0, %69 ]
  ret i32 %86
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xilinx_dma_alloc_chan_resources(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -48
  %3 = getelementptr i8, ptr %0, i32 64
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %161

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr inbounds %struct.xilinx_dma_device, ptr %7, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %9, align 4
  switch i32 %10, label %101 [
    i32 0, label %11
    i32 3, label %59
    i32 1, label %97
  ]

11:                                               ; preds = %6
  %12 = getelementptr i8, ptr %0, i32 68
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %0, i32 188
  %15 = tail call ptr @dma_alloc_attrs(ptr noundef %13, i32 noundef 32640, ptr noundef %14, i32 noundef 3264, i32 noundef 0) #11
  %16 = getelementptr i8, ptr %0, i32 180
  store ptr %15, ptr %16, align 4
  %17 = icmp eq ptr %15, null
  %18 = load ptr, ptr %12, align 4
  br i1 %17, label %19, label %22

19:                                               ; preds = %11
  %20 = getelementptr i8, ptr %0, i32 76
  %21 = load i32, ptr %20, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.28, i32 noundef %21) #12
  br label %161

22:                                               ; preds = %11
  %23 = getelementptr i8, ptr %0, i32 196
  %24 = tail call ptr @dma_alloc_attrs(ptr noundef %18, i32 noundef 128, ptr noundef %23, i32 noundef 3264, i32 noundef 0) #11
  %25 = getelementptr i8, ptr %0, i32 192
  store ptr %24, ptr %25, align 4
  %26 = icmp eq ptr %24, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.29) #12
  %29 = load ptr, ptr %12, align 4
  %30 = load ptr, ptr %16, align 4
  %31 = load i32, ptr %14, align 4
  tail call void @dma_free_attrs(ptr noundef %29, i32 noundef 32640, ptr noundef %30, i32 noundef %31, i32 noundef 0) #11
  br label %161

32:                                               ; preds = %22
  %33 = load i32, ptr %23, align 4
  %34 = getelementptr inbounds %struct.xilinx_axidma_tx_segment, ptr %24, i32 0, i32 2
  store i32 %33, ptr %34, align 8
  %35 = getelementptr i8, ptr %0, i32 -8
  %36 = getelementptr i8, ptr %0, i32 -4
  br label %37

37:                                               ; preds = %37, %32
  %38 = phi i32 [ 0, %32 ], [ %40, %37 ]
  %39 = load i32, ptr %14, align 4
  %40 = add nuw nsw i32 %38, 1
  %41 = icmp eq i32 %40, 255
  %42 = shl nuw nsw i32 %40, 7
  %43 = select i1 %41, i32 0, i32 %42
  %44 = add i32 %39, %43
  %45 = load ptr, ptr %16, align 4
  %46 = getelementptr %struct.xilinx_axidma_tx_segment, ptr %45, i32 %38
  store i32 %44, ptr %46, align 64
  %47 = load ptr, ptr %16, align 4
  %48 = getelementptr %struct.xilinx_axidma_tx_segment, ptr %47, i32 %38, i32 0, i32 1
  store i32 0, ptr %48, align 4
  %49 = load i32, ptr %14, align 4
  %50 = shl i32 %38, 7
  %51 = add i32 %49, %50
  %52 = load ptr, ptr %16, align 4
  %53 = getelementptr %struct.xilinx_axidma_tx_segment, ptr %52, i32 %38, i32 2
  store i32 %51, ptr %53, align 8
  %54 = load ptr, ptr %16, align 4
  %55 = getelementptr %struct.xilinx_axidma_tx_segment, ptr %54, i32 %38, i32 1
  %56 = load ptr, ptr %36, align 4
  store ptr %55, ptr %36, align 4
  store ptr %35, ptr %55, align 4
  %57 = getelementptr %struct.xilinx_axidma_tx_segment, ptr %54, i32 %38, i32 1, i32 1
  store ptr %56, ptr %57, align 4
  store volatile ptr %55, ptr %56, align 4
  %58 = icmp eq i32 %40, 255
  br i1 %58, label %105, label %37

59:                                               ; preds = %6
  %60 = getelementptr i8, ptr %0, i32 68
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr i8, ptr %0, i32 188
  %63 = tail call ptr @dma_alloc_attrs(ptr noundef %61, i32 noundef 32640, ptr noundef %62, i32 noundef 3264, i32 noundef 0) #11
  %64 = getelementptr i8, ptr %0, i32 184
  store ptr %63, ptr %64, align 4
  %65 = icmp eq ptr %63, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %59
  %67 = getelementptr i8, ptr %0, i32 -8
  %68 = getelementptr i8, ptr %0, i32 -4
  br label %73

69:                                               ; preds = %59
  %70 = load ptr, ptr %60, align 4
  %71 = getelementptr i8, ptr %0, i32 76
  %72 = load i32, ptr %71, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.28, i32 noundef %72) #12
  br label %161

73:                                               ; preds = %95, %66
  %74 = phi ptr [ %63, %66 ], [ %96, %95 ]
  %75 = phi i32 [ 0, %66 ], [ %77, %95 ]
  %76 = load i32, ptr %62, align 4
  %77 = add nuw nsw i32 %75, 1
  %78 = icmp eq i32 %77, 255
  %79 = shl nuw nsw i32 %77, 7
  %80 = select i1 %78, i32 0, i32 %79
  %81 = add i32 %76, %80
  %82 = getelementptr %struct.xilinx_aximcdma_tx_segment, ptr %74, i32 %75
  store i32 %81, ptr %82, align 64
  %83 = load ptr, ptr %64, align 4
  %84 = getelementptr %struct.xilinx_aximcdma_tx_segment, ptr %83, i32 %75, i32 0, i32 1
  store i32 0, ptr %84, align 4
  %85 = load i32, ptr %62, align 4
  %86 = shl i32 %75, 7
  %87 = add i32 %85, %86
  %88 = load ptr, ptr %64, align 4
  %89 = getelementptr %struct.xilinx_aximcdma_tx_segment, ptr %88, i32 %75, i32 2
  store i32 %87, ptr %89, align 8
  %90 = load ptr, ptr %64, align 4
  %91 = getelementptr %struct.xilinx_aximcdma_tx_segment, ptr %90, i32 %75, i32 1
  %92 = load ptr, ptr %68, align 4
  store ptr %91, ptr %68, align 4
  store ptr %67, ptr %91, align 4
  %93 = getelementptr %struct.xilinx_aximcdma_tx_segment, ptr %90, i32 %75, i32 1, i32 1
  store ptr %92, ptr %93, align 4
  store volatile ptr %91, ptr %92, align 4
  %94 = icmp eq i32 %77, 255
  br i1 %94, label %105, label %95

95:                                               ; preds = %73
  %96 = load ptr, ptr %64, align 4
  br label %73

97:                                               ; preds = %6
  %98 = getelementptr i8, ptr %0, i32 68
  %99 = load ptr, ptr %98, align 4
  %100 = tail call ptr @dma_pool_create(ptr noundef nonnull @.str.30, ptr noundef %99, i32 noundef 128, i32 noundef 64, i32 noundef 0) #11
  store ptr %100, ptr %3, align 4
  br label %107

101:                                              ; preds = %6
  %102 = getelementptr i8, ptr %0, i32 68
  %103 = load ptr, ptr %102, align 4
  %104 = tail call ptr @dma_pool_create(ptr noundef nonnull @.str.31, ptr noundef %103, i32 noundef 128, i32 noundef 64, i32 noundef 0) #11
  store ptr %104, ptr %3, align 4
  br label %107

105:                                              ; preds = %73, %37
  %106 = load ptr, ptr %3, align 4
  br label %107

107:                                              ; preds = %105, %101, %97
  %108 = phi ptr [ %106, %105 ], [ %104, %101 ], [ %100, %97 ]
  %109 = icmp eq ptr %108, null
  %110 = load ptr, ptr %2, align 4
  br i1 %109, label %111, label %120

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.xilinx_dma_device, ptr %110, i32 0, i32 7
  %113 = load ptr, ptr %112, align 4
  %114 = load i32, ptr %113, align 4
  switch i32 %114, label %115 [
    i32 0, label %120
    i32 3, label %120
  ]

115:                                              ; preds = %111
  %116 = getelementptr i8, ptr %0, i32 68
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr i8, ptr %0, i32 76
  %119 = load i32, ptr %118, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %117, ptr noundef nonnull @.str.32, i32 noundef %119) #12
  br label %161

120:                                              ; preds = %111, %111, %107
  %121 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 2
  store i32 1, ptr %121, align 4
  %122 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 3
  store i32 1, ptr %122, align 4
  %123 = getelementptr inbounds %struct.xilinx_dma_device, ptr %110, i32 0, i32 7
  %124 = load ptr, ptr %123, align 4
  %125 = load i32, ptr %124, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %142

127:                                              ; preds = %120
  %128 = getelementptr i8, ptr %0, i32 -44
  %129 = load i32, ptr %128, align 4
  %130 = load ptr, ptr %110, align 4
  %131 = getelementptr i8, ptr %130, i32 %129
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %131) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %133 = or i32 %132, 28672
  %134 = load i32, ptr %128, align 4
  %135 = load ptr, ptr %2, align 4
  %136 = load ptr, ptr %135, align 4
  %137 = getelementptr i8, ptr %136, i32 %134
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %137, i32 %133) #11, !srcloc !12
  %138 = load ptr, ptr %2, align 4
  %139 = getelementptr inbounds %struct.xilinx_dma_device, ptr %138, i32 0, i32 7
  %140 = load ptr, ptr %139, align 4
  %141 = load i32, ptr %140, align 4
  br label %142

142:                                              ; preds = %127, %120
  %143 = phi i32 [ %141, %127 ], [ %125, %120 ]
  %144 = phi ptr [ %138, %127 ], [ %110, %120 ]
  %145 = icmp eq i32 %143, 1
  br i1 %145, label %146, label %161

146:                                              ; preds = %142
  %147 = getelementptr i8, ptr %0, i32 88
  %148 = load i8, ptr %147, align 4, !range !10
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %161, label %150

150:                                              ; preds = %146
  %151 = getelementptr i8, ptr %0, i32 -44
  %152 = load i32, ptr %151, align 4
  %153 = load ptr, ptr %144, align 4
  %154 = getelementptr i8, ptr %153, i32 %152
  %155 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %154) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %156 = or i32 %155, 8
  %157 = load i32, ptr %151, align 4
  %158 = load ptr, ptr %2, align 4
  %159 = load ptr, ptr %158, align 4
  %160 = getelementptr i8, ptr %159, i32 %157
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %160, i32 %156) #11, !srcloc !12
  br label %161

161:                                              ; preds = %150, %146, %142, %115, %69, %27, %19, %1
  %162 = phi i32 [ -12, %115 ], [ -12, %27 ], [ -12, %19 ], [ -12, %69 ], [ 0, %1 ], [ 0, %150 ], [ 0, %146 ], [ 0, %142 ]
  ret i32 %162
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xilinx_dma_free_chan_resources(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -48
  tail call fastcc void @xilinx_dma_free_descriptors(ptr noundef %2)
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.xilinx_dma_device, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %28

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 -36
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #11
  %11 = getelementptr i8, ptr %0, i32 -8
  store volatile ptr %11, ptr %11, align 4
  %12 = getelementptr i8, ptr %0, i32 -4
  store ptr %11, ptr %12, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #11
  %13 = getelementptr i8, ptr %0, i32 68
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %0, i32 180
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %0, i32 188
  %18 = load i32, ptr %17, align 4
  tail call void @dma_free_attrs(ptr noundef %14, i32 noundef 32640, ptr noundef %16, i32 noundef %18, i32 noundef 0) #11
  %19 = load ptr, ptr %13, align 4
  %20 = getelementptr i8, ptr %0, i32 192
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %0, i32 196
  %23 = load i32, ptr %22, align 4
  tail call void @dma_free_attrs(ptr noundef %19, i32 noundef 128, ptr noundef %21, i32 noundef %23, i32 noundef 0) #11
  %24 = load ptr, ptr %2, align 4
  %25 = getelementptr inbounds %struct.xilinx_dma_device, ptr %24, i32 0, i32 7
  %26 = load ptr, ptr %25, align 4
  %27 = load i32, ptr %26, align 4
  br label %28

28:                                               ; preds = %8, %1
  %29 = phi i32 [ %27, %8 ], [ %6, %1 ]
  %30 = icmp eq i32 %29, 3
  br i1 %30, label %31, label %46

31:                                               ; preds = %28
  %32 = getelementptr i8, ptr %0, i32 -36
  %33 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %32) #11
  %34 = getelementptr i8, ptr %0, i32 -8
  store volatile ptr %34, ptr %34, align 4
  %35 = getelementptr i8, ptr %0, i32 -4
  store ptr %34, ptr %35, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %32, i32 noundef %33) #11
  %36 = getelementptr i8, ptr %0, i32 68
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr i8, ptr %0, i32 184
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr i8, ptr %0, i32 188
  %41 = load i32, ptr %40, align 4
  tail call void @dma_free_attrs(ptr noundef %37, i32 noundef 32640, ptr noundef %39, i32 noundef %41, i32 noundef 0) #11
  %42 = load ptr, ptr %2, align 4
  %43 = getelementptr inbounds %struct.xilinx_dma_device, ptr %42, i32 0, i32 7
  %44 = load ptr, ptr %43, align 4
  %45 = load i32, ptr %44, align 4
  br label %46

46:                                               ; preds = %31, %28
  %47 = phi i32 [ %45, %31 ], [ %29, %28 ]
  switch i32 %47, label %48 [
    i32 0, label %51
    i32 3, label %51
  ]

48:                                               ; preds = %46
  %49 = getelementptr i8, ptr %0, i32 64
  %50 = load ptr, ptr %49, align 4
  tail call void @dma_pool_destroy(ptr noundef %50) #11
  store ptr null, ptr %49, align 4
  br label %51

51:                                               ; preds = %48, %46, %46
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xilinx_dma_terminate_all(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -48
  %3 = getelementptr i8, ptr %0, i32 89
  %4 = load i8, ptr %3, align 1, !range !10
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %22

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 204
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %2) #11
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %6
  %12 = getelementptr i8, ptr %0, i32 68
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %0, i32 -44
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 4
  %17 = load ptr, ptr %2, align 4
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 %16
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.33, ptr noundef %2, i32 noundef %20) #12
  %21 = getelementptr i8, ptr %0, i32 91
  store i8 1, ptr %21, align 1
  br label %22

22:                                               ; preds = %11, %6, %1
  %23 = tail call fastcc i32 @xilinx_dma_chan_reset(ptr noundef %2)
  %24 = getelementptr i8, ptr %0, i32 93
  store i8 1, ptr %24, align 1
  tail call fastcc void @xilinx_dma_free_descriptors(ptr noundef %2)
  %25 = getelementptr i8, ptr %0, i32 92
  store i8 1, ptr %25, align 4
  %26 = load i8, ptr %3, align 1, !range !10
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %22
  %29 = getelementptr i8, ptr %0, i32 -44
  %30 = load i32, ptr %29, align 4
  %31 = load ptr, ptr %2, align 4
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %32, i32 %30
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %35 = and i32 %34, -17
  %36 = load i32, ptr %29, align 4
  %37 = load ptr, ptr %2, align 4
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr i8, ptr %38, i32 %36
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %35) #11, !srcloc !12
  store i8 0, ptr %3, align 1
  br label %40

40:                                               ; preds = %28, %22
  %41 = load ptr, ptr %2, align 4
  %42 = getelementptr inbounds %struct.xilinx_dma_device, ptr %41, i32 0, i32 7
  %43 = load ptr, ptr %42, align 4
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %61

46:                                               ; preds = %40
  %47 = getelementptr i8, ptr %0, i32 88
  %48 = load i8, ptr %47, align 4, !range !10
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %46
  %51 = getelementptr i8, ptr %0, i32 -44
  %52 = load i32, ptr %51, align 4
  %53 = load ptr, ptr %41, align 4
  %54 = getelementptr i8, ptr %53, i32 %52
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %56 = and i32 %55, -9
  %57 = load i32, ptr %51, align 4
  %58 = load ptr, ptr %2, align 4
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr i8, ptr %59, i32 %57
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %56) #11, !srcloc !12
  br label %61

61:                                               ; preds = %50, %46, %40
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xilinx_dma_synchronize(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 96
  tail call void @tasklet_kill(ptr noundef %2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xilinx_dma_tx_status(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -48
  %5 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !17
  %9 = icmp eq ptr %2, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  store i32 %8, ptr %2, align 4
  %11 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 1
  store i32 %6, ptr %11, align 4
  %12 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 3
  store i32 0, ptr %13, align 4
  br label %14

14:                                               ; preds = %10, %3
  %15 = icmp sgt i32 %8, %6
  %16 = icmp sge i32 %8, %1
  %17 = icmp slt i32 %6, %1
  br i1 %15, label %22, label %18

18:                                               ; preds = %14
  %19 = or i1 %17, %16
  %20 = or i1 %19, %9
  %21 = xor i1 %19, true
  br i1 %20, label %81, label %26

22:                                               ; preds = %14
  %23 = and i1 %17, %16
  %24 = or i1 %23, %9
  %25 = xor i1 %23, true
  br i1 %24, label %81, label %26

26:                                               ; preds = %22, %18
  %27 = getelementptr i8, ptr %0, i32 -36
  %28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %27) #11
  %29 = getelementptr i8, ptr %0, i32 -24
  %30 = load volatile ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, %29
  br i1 %31, label %78, label %32

32:                                               ; preds = %26
  %33 = getelementptr i8, ptr %0, i32 -20
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr i8, ptr %0, i32 88
  %36 = load i8, ptr %35, align 4, !range !10
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %78, label %38

38:                                               ; preds = %32
  %39 = load ptr, ptr %4, align 4
  %40 = getelementptr inbounds %struct.xilinx_dma_device, ptr %39, i32 0, i32 7
  %41 = load ptr, ptr %40, align 4
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %78, label %44

44:                                               ; preds = %38
  %45 = getelementptr i8, ptr %34, i32 -8
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, %45
  br i1 %47, label %78, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.xilinx_dma_device, ptr %39, i32 0, i32 15
  %50 = load i32, ptr %49, align 4
  br label %51

51:                                               ; preds = %72, %48
  %52 = phi ptr [ %46, %48 ], [ %76, %72 ]
  %53 = phi i32 [ 0, %48 ], [ %75, %72 ]
  switch i32 %42, label %66 [
    i32 1, label %54
    i32 0, label %60
  ]

54:                                               ; preds = %51
  %55 = getelementptr i8, ptr %52, i32 -40
  %56 = load i32, ptr %55, align 8
  %57 = getelementptr i8, ptr %52, i32 -36
  %58 = load i32, ptr %57, align 4
  %59 = sub i32 %56, %58
  br label %72

60:                                               ; preds = %51
  %61 = getelementptr i8, ptr %52, i32 -40
  %62 = load i32, ptr %61, align 8
  %63 = getelementptr i8, ptr %52, i32 -36
  %64 = load i32, ptr %63, align 4
  %65 = sub i32 %62, %64
  br label %72

66:                                               ; preds = %51
  %67 = getelementptr i8, ptr %52, i32 -44
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr i8, ptr %52, i32 -40
  %70 = load i32, ptr %69, align 8
  %71 = sub i32 %68, %70
  br label %72

72:                                               ; preds = %66, %60, %54
  %73 = phi i32 [ %59, %54 ], [ %71, %66 ], [ %65, %60 ]
  %74 = and i32 %50, %73
  %75 = add i32 %74, %53
  %76 = load ptr, ptr %52, align 4
  %77 = icmp eq ptr %76, %45
  br i1 %77, label %78, label %51

78:                                               ; preds = %72, %44, %38, %32, %26
  %79 = phi i32 [ 0, %26 ], [ 0, %38 ], [ 0, %32 ], [ 0, %44 ], [ %75, %72 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %27, i32 noundef %28) #11
  %80 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2
  store i32 %79, ptr %80, align 4
  br label %81

81:                                               ; preds = %78, %22, %18
  %82 = phi i1 [ true, %78 ], [ %21, %18 ], [ %25, %22 ]
  %83 = zext i1 %82 to i32
  ret i32 %83
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xilinx_dma_issue_pending(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -48
  %3 = getelementptr i8, ptr %0, i32 -36
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #11
  %5 = getelementptr i8, ptr %0, i32 200
  %6 = load ptr, ptr %5, align 4
  tail call void %6(ptr noundef %2) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @xilinx_dma_device_config(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #5 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @xilinx_dma_prep_slave_sg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef readonly %5) #0 {
  %7 = getelementptr i8, ptr %0, i32 -48
  %8 = add i32 %3, -1
  %9 = icmp ult i32 %8, 2
  br i1 %9, label %10, label %104

10:                                               ; preds = %6
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 2304, i32 noundef 84) #13
  %13 = icmp eq ptr %12, null
  br i1 %13, label %104, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.xilinx_dma_tx_descriptor, ptr %12, i32 0, i32 1
  store volatile ptr %15, ptr %15, align 4
  %16 = getelementptr inbounds %struct.xilinx_dma_tx_descriptor, ptr %12, i32 0, i32 1, i32 1
  store ptr %15, ptr %16, align 8
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %12, ptr noundef %0) #11
  %17 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %12, i32 0, i32 4
  store ptr @xilinx_dma_tx_submit, ptr %17, align 8
  %18 = icmp eq i32 %2, 0
  br i1 %18, label %87, label %19

19:                                               ; preds = %14
  %20 = getelementptr i8, ptr %0, i32 -36
  %21 = getelementptr i8, ptr %0, i32 -8
  %22 = getelementptr i8, ptr %0, i32 172
  %23 = getelementptr i8, ptr %0, i32 80
  %24 = icmp ne ptr %5, null
  br label %25

25:                                               ; preds = %83, %19
  %26 = phi i32 [ 0, %19 ], [ %84, %83 ]
  %27 = phi ptr [ %1, %19 ], [ %85, %83 ]
  %28 = getelementptr inbounds %struct.scatterlist, ptr %27, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %83, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.scatterlist, ptr %27, i32 0, i32 3
  br label %33

33:                                               ; preds = %78, %31
  %34 = phi i32 [ 0, %31 ], [ %79, %78 ]
  %35 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %20) #11
  %36 = load volatile ptr, ptr %21, align 4
  %37 = icmp eq ptr %36, %21
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %35) #11
  br label %103

39:                                               ; preds = %33
  %40 = getelementptr i8, ptr %36, i32 -64
  %41 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = load ptr, ptr %36, align 4
  %44 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  store ptr %42, ptr %44, align 4
  store volatile ptr %43, ptr %42, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %36, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %41, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %35) #11
  %45 = icmp eq ptr %40, null
  br i1 %45, label %103, label %46

46:                                               ; preds = %39
  %47 = load i32, ptr %28, align 4
  %48 = sub i32 %47, %34
  %49 = load ptr, ptr %7, align 4
  %50 = getelementptr inbounds %struct.xilinx_dma_device, ptr %49, i32 0, i32 15
  %51 = load i32, ptr %50, align 4
  %52 = tail call i32 @llvm.umin.i32(i32 %48, i32 %51) #11
  %53 = add i32 %52, %34
  %54 = icmp ult i32 %53, %47
  br i1 %54, label %55, label %62

55:                                               ; preds = %46
  %56 = getelementptr inbounds %struct.xilinx_dma_device, ptr %49, i32 0, i32 2, i32 10
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %55
  %60 = shl nsw i32 -1, %57
  %61 = and i32 %60, %52
  br label %62

62:                                               ; preds = %59, %55, %46
  %63 = phi i32 [ %61, %59 ], [ %52, %55 ], [ %52, %46 ]
  %64 = load i32, ptr %32, align 4
  %65 = load i8, ptr %22, align 4, !range !10
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %62
  %68 = getelementptr i8, ptr %36, i32 -52
  store i32 0, ptr %68, align 4
  br label %69

69:                                               ; preds = %67, %62
  %70 = add i32 %64, %34
  %71 = getelementptr i8, ptr %36, i32 -56
  store i32 %70, ptr %71, align 8
  %72 = getelementptr i8, ptr %36, i32 -40
  store i32 %63, ptr %72, align 8
  %73 = load i32, ptr %23, align 4
  %74 = icmp eq i32 %73, 1
  %75 = and i1 %24, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = getelementptr i8, ptr %36, i32 -32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 32 dereferenceable(20) %77, ptr noundef nonnull align 4 dereferenceable(20) %5, i32 20, i1 false)
  br label %78

78:                                               ; preds = %76, %69
  %79 = add i32 %63, %34
  %80 = load ptr, ptr %16, align 8
  store ptr %36, ptr %16, align 8
  store ptr %15, ptr %36, align 4
  store ptr %80, ptr %41, align 4
  store volatile ptr %36, ptr %80, align 4
  %81 = load i32, ptr %28, align 4
  %82 = icmp ult i32 %79, %81
  br i1 %82, label %33, label %83

83:                                               ; preds = %78, %25
  %84 = add nuw i32 %26, 1
  %85 = tail call ptr @sg_next(ptr noundef %27) #11
  %86 = icmp eq i32 %84, %2
  br i1 %86, label %87, label %25

87:                                               ; preds = %83, %14
  %88 = load ptr, ptr %15, align 4
  %89 = getelementptr i8, ptr %88, i32 8
  %90 = load i32, ptr %89, align 8
  %91 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %12, i32 0, i32 2
  store i32 %90, ptr %91, align 8
  %92 = getelementptr i8, ptr %0, i32 80
  %93 = load i32, ptr %92, align 4
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %95, label %104

95:                                               ; preds = %87
  %96 = getelementptr i8, ptr %88, i32 -40
  %97 = load i32, ptr %96, align 8
  %98 = or i32 %97, 134217728
  store i32 %98, ptr %96, align 8
  %99 = load ptr, ptr %16, align 8
  %100 = getelementptr i8, ptr %99, i32 -40
  %101 = load i32, ptr %100, align 8
  %102 = or i32 %101, 67108864
  store i32 %102, ptr %100, align 8
  br label %104

103:                                              ; preds = %39, %38
  tail call fastcc void @xilinx_dma_free_tx_descriptor(ptr noundef %7, ptr noundef nonnull %12)
  br label %104

104:                                              ; preds = %103, %95, %87, %10, %6
  %105 = phi ptr [ null, %103 ], [ null, %6 ], [ %12, %95 ], [ %12, %87 ], [ null, %10 ]
  ret ptr %105
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @xilinx_dma_prep_dma_cyclic(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = getelementptr i8, ptr %0, i32 -48
  %8 = icmp eq i32 %3, 0
  br i1 %8, label %112, label %9

9:                                                ; preds = %6
  %10 = udiv i32 %2, %3
  %11 = icmp ule i32 %3, %2
  %12 = add i32 %4, -1
  %13 = icmp ult i32 %12, 2
  %14 = and i1 %11, %13
  br i1 %14, label %15, label %112

15:                                               ; preds = %9
  %16 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %17 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 2304, i32 noundef 84) #13
  %18 = icmp eq ptr %17, null
  br i1 %18, label %112, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.xilinx_dma_tx_descriptor, ptr %17, i32 0, i32 1
  store volatile ptr %20, ptr %20, align 4
  %21 = getelementptr inbounds %struct.xilinx_dma_tx_descriptor, ptr %17, i32 0, i32 1, i32 1
  store ptr %20, ptr %21, align 8
  %22 = getelementptr i8, ptr %0, i32 80
  store i32 %4, ptr %22, align 4
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %17, ptr noundef %0) #11
  %23 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %17, i32 0, i32 4
  store ptr @xilinx_dma_tx_submit, ptr %23, align 8
  %24 = getelementptr i8, ptr %0, i32 -36
  %25 = getelementptr i8, ptr %0, i32 -8
  %26 = getelementptr i8, ptr %0, i32 172
  %27 = call i32 @llvm.umax.i32(i32 %10, i32 1)
  br label %28

28:                                               ; preds = %80, %19
  %29 = phi i32 [ 0, %19 ], [ %81, %80 ]
  %30 = phi ptr [ null, %19 ], [ %41, %80 ]
  %31 = mul i32 %29, %3
  %32 = add i32 %31, %1
  br label %33

33:                                               ; preds = %76, %28
  %34 = phi i32 [ 0, %28 ], [ %77, %76 ]
  %35 = phi ptr [ %30, %28 ], [ %41, %76 ]
  %36 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %24) #11
  %37 = load volatile ptr, ptr %25, align 4
  %38 = icmp eq ptr %37, %25
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %24, i32 noundef %36) #11
  br label %111

40:                                               ; preds = %33
  %41 = getelementptr i8, ptr %37, i32 -64
  %42 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = load ptr, ptr %37, align 4
  %45 = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  store ptr %43, ptr %45, align 4
  store volatile ptr %44, ptr %43, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %37, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %42, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %24, i32 noundef %36) #11
  %46 = icmp eq ptr %41, null
  br i1 %46, label %111, label %47

47:                                               ; preds = %40
  %48 = sub i32 %3, %34
  %49 = load ptr, ptr %7, align 4
  %50 = getelementptr inbounds %struct.xilinx_dma_device, ptr %49, i32 0, i32 15
  %51 = load i32, ptr %50, align 4
  %52 = tail call i32 @llvm.umin.i32(i32 %48, i32 %51) #11
  %53 = add i32 %52, %34
  %54 = icmp ult i32 %53, %3
  br i1 %54, label %55, label %62

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.xilinx_dma_device, ptr %49, i32 0, i32 2, i32 10
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %55
  %60 = shl nsw i32 -1, %57
  %61 = and i32 %60, %52
  br label %62

62:                                               ; preds = %59, %55, %47
  %63 = phi i32 [ %61, %59 ], [ %52, %55 ], [ %52, %47 ]
  %64 = load i8, ptr %26, align 4, !range !10
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %62
  %67 = getelementptr i8, ptr %37, i32 -52
  store i32 0, ptr %67, align 4
  br label %68

68:                                               ; preds = %66, %62
  %69 = add i32 %32, %34
  %70 = getelementptr i8, ptr %37, i32 -56
  store i32 %69, ptr %70, align 8
  %71 = getelementptr i8, ptr %37, i32 -40
  store i32 %63, ptr %71, align 8
  %72 = icmp eq ptr %35, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %68
  %74 = getelementptr i8, ptr %37, i32 8
  %75 = load i32, ptr %74, align 8
  store i32 %75, ptr %35, align 64
  br label %76

76:                                               ; preds = %73, %68
  %77 = add i32 %63, %34
  %78 = load ptr, ptr %21, align 8
  store ptr %37, ptr %21, align 8
  store ptr %20, ptr %37, align 4
  store ptr %78, ptr %42, align 4
  store volatile ptr %37, ptr %78, align 4
  %79 = icmp ult i32 %77, %3
  br i1 %79, label %33, label %80

80:                                               ; preds = %76
  %81 = add nuw i32 %29, 1
  %82 = icmp eq i32 %81, %27
  br i1 %82, label %83, label %28

83:                                               ; preds = %80
  %84 = load ptr, ptr %20, align 4
  %85 = getelementptr i8, ptr %84, i32 8
  %86 = load i32, ptr %85, align 8
  %87 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %17, i32 0, i32 2
  store i32 %86, ptr %87, align 8
  %88 = getelementptr inbounds %struct.xilinx_dma_tx_descriptor, ptr %17, i32 0, i32 3
  store i8 1, ptr %88, align 4
  %89 = getelementptr i8, ptr %0, i32 -44
  %90 = load i32, ptr %89, align 4
  %91 = load ptr, ptr %7, align 4
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr i8, ptr %92, i32 %90
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %93) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %95 = or i32 %94, 16
  %96 = load i32, ptr %89, align 4
  %97 = load ptr, ptr %7, align 4
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr i8, ptr %98, i32 %96
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 %95) #11, !srcloc !12
  %100 = load ptr, ptr %21, align 8
  %101 = getelementptr i8, ptr %100, i32 -64
  %102 = load i32, ptr %85, align 8
  store i32 %102, ptr %101, align 64
  %103 = icmp eq i32 %4, 1
  br i1 %103, label %104, label %112

104:                                              ; preds = %83
  %105 = getelementptr i8, ptr %84, i32 -40
  %106 = load i32, ptr %105, align 8
  %107 = or i32 %106, 134217728
  store i32 %107, ptr %105, align 8
  %108 = getelementptr i8, ptr %100, i32 -40
  %109 = load i32, ptr %108, align 8
  %110 = or i32 %109, 67108864
  store i32 %110, ptr %108, align 8
  br label %112

111:                                              ; preds = %40, %39
  tail call fastcc void @xilinx_dma_free_tx_descriptor(ptr noundef %7, ptr noundef nonnull %17)
  br label %112

112:                                              ; preds = %111, %104, %83, %15, %9, %6
  %113 = phi ptr [ null, %111 ], [ null, %6 ], [ null, %9 ], [ %17, %104 ], [ %17, %83 ], [ null, %15 ]
  ret ptr %113
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @xilinx_cdma_prep_memcpy(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = getelementptr i8, ptr %0, i32 -48
  %8 = icmp eq i32 %3, 0
  br i1 %8, label %46, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr inbounds %struct.xilinx_dma_device, ptr %10, i32 0, i32 15
  %12 = load i32, ptr %11, align 4
  %13 = icmp ult i32 %12, %3
  br i1 %13, label %46, label %14

14:                                               ; preds = %9
  %15 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 2304, i32 noundef 84) #13
  %17 = icmp eq ptr %16, null
  br i1 %17, label %46, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.xilinx_dma_tx_descriptor, ptr %16, i32 0, i32 1
  store volatile ptr %19, ptr %19, align 4
  %20 = getelementptr inbounds %struct.xilinx_dma_tx_descriptor, ptr %16, i32 0, i32 1, i32 1
  store ptr %19, ptr %20, align 8
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %16, ptr noundef %0) #11
  %21 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %16, i32 0, i32 4
  store ptr @xilinx_dma_tx_submit, ptr %21, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  store i32 0, ptr %6, align 4, !annotation !15
  %22 = getelementptr i8, ptr %0, i32 64
  %23 = load ptr, ptr %22, align 4
  %24 = call ptr @dma_pool_alloc(ptr noundef %23, i32 noundef 2848, ptr noundef nonnull %6) #11
  %25 = icmp eq ptr %24, null
  br i1 %25, label %45, label %26

26:                                               ; preds = %18
  %27 = load i32, ptr %6, align 4
  %28 = getelementptr inbounds %struct.xilinx_cdma_tx_segment, ptr %24, i32 0, i32 2
  store i32 %27, ptr %28, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  %29 = getelementptr inbounds %struct.xilinx_cdma_desc_hw, ptr %24, i32 0, i32 6
  store i32 %3, ptr %29, align 8
  %30 = getelementptr inbounds %struct.xilinx_cdma_desc_hw, ptr %24, i32 0, i32 2
  store i32 %2, ptr %30, align 8
  %31 = getelementptr inbounds %struct.xilinx_cdma_desc_hw, ptr %24, i32 0, i32 4
  store i32 %1, ptr %31, align 16
  %32 = getelementptr i8, ptr %0, i32 172
  %33 = load i8, ptr %32, align 4, !range !10
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.xilinx_cdma_desc_hw, ptr %24, i32 0, i32 3
  store i32 0, ptr %36, align 4
  %37 = getelementptr inbounds %struct.xilinx_cdma_desc_hw, ptr %24, i32 0, i32 5
  store i32 0, ptr %37, align 4
  br label %38

38:                                               ; preds = %35, %26
  %39 = getelementptr inbounds %struct.xilinx_cdma_tx_segment, ptr %24, i32 0, i32 1
  %40 = load ptr, ptr %20, align 8
  store ptr %39, ptr %20, align 8
  store ptr %19, ptr %39, align 4
  %41 = getelementptr inbounds %struct.xilinx_cdma_tx_segment, ptr %24, i32 0, i32 1, i32 1
  store ptr %40, ptr %41, align 4
  store volatile ptr %39, ptr %40, align 4
  %42 = load i32, ptr %28, align 8
  %43 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %16, i32 0, i32 2
  store i32 %42, ptr %43, align 8
  %44 = load i32, ptr %28, align 8
  store i32 %44, ptr %24, align 64
  br label %46

45:                                               ; preds = %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call fastcc void @xilinx_dma_free_tx_descriptor(ptr noundef %7, ptr noundef nonnull %16)
  br label %46

46:                                               ; preds = %45, %38, %14, %9, %5
  %47 = phi ptr [ %16, %38 ], [ null, %45 ], [ null, %9 ], [ null, %5 ], [ null, %14 ]
  ret ptr %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @xilinx_cdma_prep_memcpy_sg(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = getelementptr i8, ptr %0, i32 -48
  %9 = icmp eq i32 %2, 0
  %10 = icmp eq i32 %4, 0
  %11 = or i1 %9, %10
  br i1 %11, label %129, label %12, !prof !18

12:                                               ; preds = %6
  %13 = icmp eq ptr %1, null
  %14 = icmp eq ptr %3, null
  %15 = or i1 %13, %14
  br i1 %15, label %129, label %16, !prof !18

16:                                               ; preds = %12
  %17 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %18 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 2304, i32 noundef 84) #13
  %19 = icmp eq ptr %18, null
  br i1 %19, label %129, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.xilinx_dma_tx_descriptor, ptr %18, i32 0, i32 1
  store volatile ptr %21, ptr %21, align 4
  %22 = getelementptr inbounds %struct.xilinx_dma_tx_descriptor, ptr %18, i32 0, i32 1, i32 1
  store ptr %21, ptr %22, align 8
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %18, ptr noundef %0) #11
  %23 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %18, i32 0, i32 4
  store ptr @xilinx_dma_tx_submit, ptr %23, align 8
  %24 = getelementptr inbounds %struct.scatterlist, ptr %1, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr i8, ptr %0, i32 64
  %27 = getelementptr i8, ptr %0, i32 172
  br label %28

28:                                               ; preds = %114, %20
  %29 = phi ptr [ %91, %114 ], [ null, %20 ]
  %30 = phi i32 [ %105, %114 ], [ %25, %20 ]
  %31 = phi i32 [ %115, %114 ], [ %4, %20 ]
  %32 = phi ptr [ %112, %114 ], [ %3, %20 ]
  %33 = phi i32 [ %106, %114 ], [ %2, %20 ]
  %34 = phi ptr [ %107, %114 ], [ %1, %20 ]
  %35 = getelementptr inbounds %struct.scatterlist, ptr %32, i32 0, i32 4
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.scatterlist, ptr %32, i32 0, i32 3
  %38 = getelementptr inbounds %struct.scatterlist, ptr %32, i32 0, i32 4
  br label %39

39:                                               ; preds = %104, %28
  %40 = phi ptr [ %91, %104 ], [ %29, %28 ]
  %41 = phi i32 [ %105, %104 ], [ %30, %28 ]
  %42 = phi i32 [ %93, %104 ], [ %36, %28 ]
  %43 = phi i32 [ %106, %104 ], [ %33, %28 ]
  %44 = phi ptr [ %107, %104 ], [ %34, %28 ]
  %45 = call i32 @llvm.umin.i32(i32 %42, i32 %41)
  %46 = load ptr, ptr %8, align 4
  %47 = getelementptr inbounds %struct.xilinx_dma_device, ptr %46, i32 0, i32 15
  %48 = load i32, ptr %47, align 4
  %49 = call i32 @llvm.umin.i32(i32 %45, i32 %48)
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %90, label %51

51:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  store i32 0, ptr %7, align 4, !annotation !15
  %52 = load ptr, ptr %26, align 4
  %53 = call ptr @dma_pool_alloc(ptr noundef %52, i32 noundef 2848, ptr noundef nonnull %7) #11
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  br label %128

56:                                               ; preds = %51
  %57 = load i32, ptr %7, align 4
  %58 = getelementptr inbounds %struct.xilinx_cdma_tx_segment, ptr %53, i32 0, i32 2
  store i32 %57, ptr %58, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  %59 = getelementptr inbounds %struct.scatterlist, ptr %44, i32 0, i32 3
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr inbounds %struct.scatterlist, ptr %44, i32 0, i32 4
  %62 = load i32, ptr %61, align 4
  %63 = sub i32 %60, %41
  %64 = add i32 %63, %62
  %65 = load i32, ptr %37, align 4
  %66 = load i32, ptr %38, align 4
  %67 = sub i32 %65, %42
  %68 = add i32 %67, %66
  %69 = getelementptr inbounds %struct.xilinx_cdma_desc_hw, ptr %53, i32 0, i32 6
  store i32 %49, ptr %69, align 8
  %70 = getelementptr inbounds %struct.xilinx_cdma_desc_hw, ptr %53, i32 0, i32 2
  store i32 %68, ptr %70, align 8
  %71 = getelementptr inbounds %struct.xilinx_cdma_desc_hw, ptr %53, i32 0, i32 4
  store i32 %64, ptr %71, align 16
  %72 = load i8, ptr %27, align 4, !range !10
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %56
  %75 = getelementptr inbounds %struct.xilinx_cdma_desc_hw, ptr %53, i32 0, i32 3
  store i32 0, ptr %75, align 4
  %76 = getelementptr inbounds %struct.xilinx_cdma_desc_hw, ptr %53, i32 0, i32 5
  store i32 0, ptr %76, align 4
  br label %77

77:                                               ; preds = %74, %56
  %78 = icmp eq ptr %40, null
  br i1 %78, label %84, label %79

79:                                               ; preds = %77
  store i32 %57, ptr %40, align 64
  %80 = load i8, ptr %27, align 4, !range !10
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.xilinx_cdma_desc_hw, ptr %40, i32 0, i32 1
  store i32 0, ptr %83, align 4
  br label %84

84:                                               ; preds = %82, %79, %77
  %85 = sub i32 %41, %49
  %86 = sub i32 %42, %49
  %87 = getelementptr inbounds %struct.xilinx_cdma_tx_segment, ptr %53, i32 0, i32 1
  %88 = load ptr, ptr %22, align 8
  store ptr %87, ptr %22, align 8
  store ptr %21, ptr %87, align 4
  %89 = getelementptr inbounds %struct.xilinx_cdma_tx_segment, ptr %53, i32 0, i32 1, i32 1
  store ptr %88, ptr %89, align 4
  store volatile ptr %87, ptr %88, align 4
  br label %90

90:                                               ; preds = %84, %39
  %91 = phi ptr [ %40, %39 ], [ %53, %84 ]
  %92 = phi i32 [ %41, %39 ], [ %85, %84 ]
  %93 = phi i32 [ %42, %39 ], [ %86, %84 ]
  %94 = icmp eq i32 %92, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %90
  %96 = icmp eq i32 %43, 0
  br i1 %96, label %116, label %97

97:                                               ; preds = %95
  %98 = call ptr @sg_next(ptr noundef %44) #11
  %99 = icmp eq ptr %98, null
  br i1 %99, label %116, label %100

100:                                              ; preds = %97
  %101 = add i32 %43, -1
  %102 = getelementptr inbounds %struct.scatterlist, ptr %98, i32 0, i32 4
  %103 = load i32, ptr %102, align 4
  br label %104

104:                                              ; preds = %100, %90
  %105 = phi i32 [ %103, %100 ], [ %92, %90 ]
  %106 = phi i32 [ %101, %100 ], [ %43, %90 ]
  %107 = phi ptr [ %98, %100 ], [ %44, %90 ]
  %108 = icmp eq i32 %93, 0
  br i1 %108, label %109, label %39

109:                                              ; preds = %104
  %110 = icmp eq i32 %31, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %109
  %112 = call ptr @sg_next(ptr noundef %32) #11
  %113 = icmp eq ptr %112, null
  br i1 %113, label %116, label %114

114:                                              ; preds = %111
  %115 = add i32 %31, -1
  br label %28

116:                                              ; preds = %111, %109, %97, %95
  %117 = load volatile ptr, ptr %21, align 4
  %118 = icmp eq ptr %117, %21
  br i1 %118, label %119, label %123

119:                                              ; preds = %116
  %120 = load ptr, ptr %8, align 4
  %121 = getelementptr inbounds %struct.xilinx_dma_device, ptr %120, i32 0, i32 1
  %122 = load ptr, ptr %121, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %122, ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.xilinx_cdma_prep_memcpy_sg) #12
  br label %128

123:                                              ; preds = %116
  %124 = getelementptr i8, ptr %117, i32 8
  %125 = load i32, ptr %124, align 8
  %126 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %18, i32 0, i32 2
  store i32 %125, ptr %126, align 8
  %127 = load i32, ptr %124, align 8
  store i32 %127, ptr %91, align 64
  br label %129

128:                                              ; preds = %119, %55
  call fastcc void @xilinx_dma_free_tx_descriptor(ptr noundef %8, ptr noundef nonnull %18)
  br label %129

129:                                              ; preds = %128, %123, %16, %12, %6
  %130 = phi ptr [ null, %128 ], [ %18, %123 ], [ null, %6 ], [ null, %12 ], [ null, %16 ]
  ret ptr %130
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @xilinx_mcdma_prep_slave_sg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef readonly %5) #0 {
  %7 = getelementptr i8, ptr %0, i32 -48
  %8 = add i32 %3, -1
  %9 = icmp ult i32 %8, 2
  br i1 %9, label %10, label %93

10:                                               ; preds = %6
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 2304, i32 noundef 84) #13
  %13 = icmp eq ptr %12, null
  br i1 %13, label %93, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.xilinx_dma_tx_descriptor, ptr %12, i32 0, i32 1
  store volatile ptr %15, ptr %15, align 4
  %16 = getelementptr inbounds %struct.xilinx_dma_tx_descriptor, ptr %12, i32 0, i32 1, i32 1
  store ptr %15, ptr %16, align 8
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %12, ptr noundef %0) #11
  %17 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %12, i32 0, i32 4
  store ptr @xilinx_dma_tx_submit, ptr %17, align 8
  %18 = icmp eq i32 %2, 0
  br i1 %18, label %76, label %19

19:                                               ; preds = %14
  %20 = getelementptr i8, ptr %0, i32 -36
  %21 = getelementptr i8, ptr %0, i32 -8
  %22 = getelementptr i8, ptr %0, i32 172
  %23 = getelementptr i8, ptr %0, i32 80
  %24 = icmp ne ptr %5, null
  br label %25

25:                                               ; preds = %72, %19
  %26 = phi ptr [ %1, %19 ], [ %74, %72 ]
  %27 = phi i32 [ 0, %19 ], [ %73, %72 ]
  %28 = getelementptr inbounds %struct.scatterlist, ptr %26, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %72, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.scatterlist, ptr %26, i32 0, i32 3
  br label %33

33:                                               ; preds = %67, %31
  %34 = phi i32 [ 0, %31 ], [ %68, %67 ]
  %35 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %20) #11
  %36 = load volatile ptr, ptr %21, align 4
  %37 = icmp eq ptr %36, %21
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %35) #11
  br label %92

39:                                               ; preds = %33
  %40 = getelementptr i8, ptr %36, i32 -64
  %41 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = load ptr, ptr %36, align 4
  %44 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  store ptr %42, ptr %44, align 4
  store volatile ptr %43, ptr %42, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %36, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %41, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %35) #11
  %45 = icmp eq ptr %40, null
  br i1 %45, label %92, label %46

46:                                               ; preds = %39
  %47 = load i32, ptr %28, align 4
  %48 = sub i32 %47, %34
  %49 = load ptr, ptr %7, align 4
  %50 = getelementptr inbounds %struct.xilinx_dma_device, ptr %49, i32 0, i32 15
  %51 = load i32, ptr %50, align 4
  %52 = tail call i32 @llvm.umin.i32(i32 %48, i32 %51)
  %53 = load i32, ptr %32, align 4
  %54 = load i8, ptr %22, align 4, !range !10
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %46
  %57 = getelementptr i8, ptr %36, i32 -52
  store i32 0, ptr %57, align 4
  br label %58

58:                                               ; preds = %56, %46
  %59 = add i32 %53, %34
  %60 = getelementptr i8, ptr %36, i32 -56
  store i32 %59, ptr %60, align 8
  %61 = getelementptr i8, ptr %36, i32 -44
  store i32 %52, ptr %61, align 4
  %62 = load i32, ptr %23, align 4
  %63 = icmp eq i32 %62, 1
  %64 = and i1 %24, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = getelementptr i8, ptr %36, i32 -32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 32 dereferenceable(20) %66, ptr noundef nonnull align 4 dereferenceable(20) %5, i32 20, i1 false)
  br label %67

67:                                               ; preds = %65, %58
  %68 = add i32 %52, %34
  %69 = load ptr, ptr %16, align 8
  store ptr %36, ptr %16, align 8
  store ptr %15, ptr %36, align 4
  store ptr %69, ptr %41, align 4
  store volatile ptr %36, ptr %69, align 4
  %70 = load i32, ptr %28, align 4
  %71 = icmp ult i32 %68, %70
  br i1 %71, label %33, label %72

72:                                               ; preds = %67, %25
  %73 = add nuw i32 %27, 1
  %74 = tail call ptr @sg_next(ptr noundef %26) #11
  %75 = icmp eq i32 %73, %2
  br i1 %75, label %76, label %25

76:                                               ; preds = %72, %14
  %77 = load ptr, ptr %15, align 4
  %78 = getelementptr i8, ptr %77, i32 8
  %79 = load i32, ptr %78, align 8
  %80 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %12, i32 0, i32 2
  store i32 %79, ptr %80, align 8
  %81 = getelementptr i8, ptr %0, i32 80
  %82 = load i32, ptr %81, align 4
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %93

84:                                               ; preds = %76
  %85 = getelementptr i8, ptr %77, i32 -44
  %86 = load i32, ptr %85, align 4
  %87 = or i32 %86, -2147483648
  store i32 %87, ptr %85, align 4
  %88 = load ptr, ptr %16, align 8
  %89 = getelementptr i8, ptr %88, i32 -44
  %90 = load i32, ptr %89, align 4
  %91 = or i32 %90, 1073741824
  store i32 %91, ptr %89, align 4
  br label %93

92:                                               ; preds = %39, %38
  tail call fastcc void @xilinx_dma_free_tx_descriptor(ptr noundef %7, ptr noundef nonnull %12)
  br label %93

93:                                               ; preds = %92, %84, %76, %10, %6
  %94 = phi ptr [ null, %92 ], [ null, %6 ], [ %12, %84 ], [ %12, %76 ], [ null, %10 ]
  ret ptr %94
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @xilinx_vdma_dma_prep_interleaved(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr i8, ptr %0, i32 -48
  %6 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, -1
  %9 = icmp ult i32 %8, 2
  br i1 %9, label %10, label %76

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %76, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 0, i32 9
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %76, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 0, i32 8
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %76

22:                                               ; preds = %18
  %23 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %24 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 2304, i32 noundef 84) #13
  %25 = icmp eq ptr %24, null
  br i1 %25, label %76, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.xilinx_dma_tx_descriptor, ptr %24, i32 0, i32 1
  store volatile ptr %27, ptr %27, align 4
  %28 = getelementptr inbounds %struct.xilinx_dma_tx_descriptor, ptr %24, i32 0, i32 1, i32 1
  store ptr %27, ptr %28, align 8
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %24, ptr noundef %0) #11
  %29 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %24, i32 0, i32 4
  store ptr @xilinx_dma_tx_submit, ptr %29, align 8
  %30 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %24, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = or i32 %31, 2
  store i32 %32, ptr %30, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !15
  %33 = getelementptr i8, ptr %0, i32 64
  %34 = load ptr, ptr %33, align 4
  %35 = call ptr @dma_pool_alloc(ptr noundef %34, i32 noundef 2848, ptr noundef nonnull %4) #11
  %36 = icmp eq ptr %35, null
  br i1 %36, label %75, label %37

37:                                               ; preds = %26
  %38 = load i32, ptr %4, align 4
  %39 = getelementptr inbounds %struct.xilinx_vdma_tx_segment, ptr %35, i32 0, i32 2
  store i32 %38, ptr %39, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  %40 = load i32, ptr %11, align 4
  %41 = getelementptr inbounds %struct.xilinx_vdma_desc_hw, ptr %35, i32 0, i32 4
  store i32 %40, ptr %41, align 16
  %42 = load i32, ptr %15, align 4
  %43 = getelementptr inbounds %struct.xilinx_vdma_desc_hw, ptr %35, i32 0, i32 5
  store i32 %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 1, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = load i32, ptr %15, align 4
  %47 = add i32 %46, %45
  %48 = getelementptr inbounds %struct.xilinx_vdma_desc_hw, ptr %35, i32 0, i32 6
  store i32 %47, ptr %48, align 8
  %49 = getelementptr i8, ptr %0, i32 120
  %50 = load i32, ptr %49, align 4
  %51 = shl i32 %50, 24
  %52 = or i32 %51, %47
  store i32 %52, ptr %48, align 8
  %53 = load i32, ptr %6, align 4
  %54 = icmp eq i32 %53, 1
  %55 = getelementptr i8, ptr %0, i32 172
  %56 = load i8, ptr %55, align 4, !range !10
  %57 = icmp eq i8 %56, 0
  br i1 %54, label %62, label %58

58:                                               ; preds = %37
  %59 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 0, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr inbounds %struct.xilinx_vdma_desc_hw, ptr %35, i32 0, i32 2
  store i32 %60, ptr %61, align 8
  br i1 %57, label %67, label %65

62:                                               ; preds = %37
  %63 = load i32, ptr %1, align 4
  %64 = getelementptr inbounds %struct.xilinx_vdma_desc_hw, ptr %35, i32 0, i32 2
  store i32 %63, ptr %64, align 8
  br i1 %57, label %67, label %65

65:                                               ; preds = %62, %58
  %66 = getelementptr inbounds %struct.xilinx_vdma_desc_hw, ptr %35, i32 0, i32 3
  store i32 0, ptr %66, align 4
  br label %67

67:                                               ; preds = %65, %62, %58
  %68 = getelementptr inbounds %struct.xilinx_vdma_tx_segment, ptr %35, i32 0, i32 1
  %69 = load ptr, ptr %28, align 8
  store ptr %68, ptr %28, align 8
  store ptr %27, ptr %68, align 4
  %70 = getelementptr inbounds %struct.xilinx_vdma_tx_segment, ptr %35, i32 0, i32 1, i32 1
  store ptr %69, ptr %70, align 4
  store volatile ptr %68, ptr %69, align 4
  %71 = load ptr, ptr %27, align 4
  %72 = getelementptr i8, ptr %71, i32 8
  %73 = load i32, ptr %72, align 8
  %74 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %24, i32 0, i32 2
  store i32 %73, ptr %74, align 8
  br label %76

75:                                               ; preds = %26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  call fastcc void @xilinx_dma_free_tx_descriptor(ptr noundef %5, ptr noundef nonnull %24)
  br label %76

76:                                               ; preds = %75, %67, %22, %18, %14, %10, %3
  %77 = phi ptr [ %24, %67 ], [ null, %75 ], [ null, %3 ], [ null, %14 ], [ null, %10 ], [ null, %18 ], [ null, %22 ]
  ret ptr %77
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @of_dma_xilinx_xlate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.of_dma, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.xilinx_dma_device, ptr %4, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.xilinx_dma_config, ptr %8, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = icmp slt i32 %6, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = getelementptr %struct.xilinx_dma_device, ptr %4, i32 0, i32 3, i32 %6
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %14, i32 0, i32 8
  %18 = tail call ptr @dma_get_slave_channel(ptr noundef %17) #11
  br label %19

19:                                               ; preds = %16, %12, %2
  %20 = phi ptr [ %18, %16 ], [ null, %12 ], [ null, %2 ]
  ret ptr %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @xdma_disable_allclks(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.xilinx_dma_device, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 4
  tail call void @clk_disable(ptr noundef %3) #11
  tail call void @clk_unprepare(ptr noundef %3) #11
  %4 = getelementptr inbounds %struct.xilinx_dma_device, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #11
  tail call void @clk_unprepare(ptr noundef %5) #11
  %6 = getelementptr inbounds %struct.xilinx_dma_device, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %7) #11
  tail call void @clk_unprepare(ptr noundef %7) #11
  %8 = getelementptr inbounds %struct.xilinx_dma_device, ptr %0, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  tail call void @clk_disable(ptr noundef %9) #11
  tail call void @clk_unprepare(ptr noundef %9) #11
  %10 = getelementptr inbounds %struct.xilinx_dma_device, ptr %0, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  tail call void @clk_disable(ptr noundef %11) #11
  tail call void @clk_unprepare(ptr noundef %11) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @xilinx_dma_free_descriptors(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 3
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #11
  %4 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %1
  %8 = phi ptr [ %10, %7 ], [ %5, %1 ]
  %9 = getelementptr i8, ptr %8, i32 -68
  %10 = load ptr, ptr %8, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %12, ptr %13, align 4
  store volatile ptr %10, ptr %12, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %11, align 4
  tail call fastcc void @xilinx_dma_free_tx_descriptor(ptr noundef %0, ptr noundef %9) #11
  %14 = icmp eq ptr %10, %4
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %1
  %16 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %27, label %19

19:                                               ; preds = %19, %15
  %20 = phi ptr [ %22, %19 ], [ %17, %15 ]
  %21 = getelementptr i8, ptr %20, i32 -68
  %22 = load ptr, ptr %20, align 4
  %23 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  store ptr %24, ptr %25, align 4
  store volatile ptr %22, ptr %24, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %20, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %23, align 4
  tail call fastcc void @xilinx_dma_free_tx_descriptor(ptr noundef %0, ptr noundef %21) #11
  %26 = icmp eq ptr %22, %16
  br i1 %26, label %27, label %19

27:                                               ; preds = %19, %15
  %28 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 5
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %28
  br i1 %30, label %39, label %31

31:                                               ; preds = %31, %27
  %32 = phi ptr [ %34, %31 ], [ %29, %27 ]
  %33 = getelementptr i8, ptr %32, i32 -68
  %34 = load ptr, ptr %32, align 4
  %35 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  store ptr %36, ptr %37, align 4
  store volatile ptr %34, ptr %36, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %32, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %35, align 4
  tail call fastcc void @xilinx_dma_free_tx_descriptor(ptr noundef %0, ptr noundef %33) #11
  %38 = icmp eq ptr %34, %28
  br i1 %38, label %39, label %31

39:                                               ; preds = %31, %27
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @xilinx_dma_free_tx_descriptor(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %82, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.xilinx_dma_device, ptr %5, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %7, align 4
  switch i32 %8, label %62 [
    i32 2, label %9
    i32 1, label %26
    i32 0, label %43
  ]

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.xilinx_dma_tx_descriptor, ptr %1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %81, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 9
  br label %15

15:                                               ; preds = %15, %13
  %16 = phi ptr [ %11, %13 ], [ %18, %15 ]
  %17 = getelementptr i8, ptr %16, i32 -64
  %18 = load ptr, ptr %16, align 64
  %19 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  store ptr %20, ptr %21, align 4
  store volatile ptr %18, ptr %20, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %16, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %19, align 4
  %22 = load ptr, ptr %14, align 4
  %23 = getelementptr i8, ptr %16, i32 8
  %24 = load i32, ptr %23, align 8
  tail call void @dma_pool_free(ptr noundef %22, ptr noundef %17, i32 noundef %24) #11
  %25 = icmp eq ptr %18, %10
  br i1 %25, label %81, label %15

26:                                               ; preds = %4
  %27 = getelementptr inbounds %struct.xilinx_dma_tx_descriptor, ptr %1, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %27
  br i1 %29, label %81, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 9
  br label %32

32:                                               ; preds = %32, %30
  %33 = phi ptr [ %28, %30 ], [ %35, %32 ]
  %34 = getelementptr i8, ptr %33, i32 -64
  %35 = load ptr, ptr %33, align 64
  %36 = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  store ptr %37, ptr %38, align 4
  store volatile ptr %35, ptr %37, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %33, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %36, align 4
  %39 = load ptr, ptr %31, align 4
  %40 = getelementptr i8, ptr %33, i32 8
  %41 = load i32, ptr %40, align 8
  tail call void @dma_pool_free(ptr noundef %39, ptr noundef %34, i32 noundef %41) #11
  %42 = icmp eq ptr %35, %27
  br i1 %42, label %81, label %32

43:                                               ; preds = %4
  %44 = getelementptr inbounds %struct.xilinx_dma_tx_descriptor, ptr %1, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, %44
  br i1 %46, label %81, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 7
  %49 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 7, i32 1
  br label %50

50:                                               ; preds = %50, %47
  %51 = phi ptr [ %45, %47 ], [ %53, %50 ]
  %52 = getelementptr i8, ptr %51, i32 -64
  %53 = load ptr, ptr %51, align 64
  %54 = getelementptr %struct.list_head, ptr %51, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  store ptr %55, ptr %56, align 4
  store volatile ptr %53, ptr %55, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %51, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %54, align 4
  %57 = load i32, ptr %52, align 64
  %58 = getelementptr i8, ptr %51, i32 -60
  %59 = load i32, ptr %58, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 64 dereferenceable(64) %52, i8 0, i32 64, i1 false) #11
  store i32 %57, ptr %52, align 64
  store i32 %59, ptr %58, align 4
  %60 = load ptr, ptr %49, align 4
  store ptr %51, ptr %49, align 4
  store ptr %48, ptr %51, align 4
  store ptr %60, ptr %54, align 4
  store volatile ptr %51, ptr %60, align 4
  %61 = icmp eq ptr %53, %44
  br i1 %61, label %81, label %50

62:                                               ; preds = %4
  %63 = getelementptr inbounds %struct.xilinx_dma_tx_descriptor, ptr %1, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, %63
  br i1 %65, label %81, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 7
  %68 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 7, i32 1
  br label %69

69:                                               ; preds = %69, %66
  %70 = phi ptr [ %64, %66 ], [ %72, %69 ]
  %71 = getelementptr i8, ptr %70, i32 -64
  %72 = load ptr, ptr %70, align 64
  %73 = getelementptr %struct.list_head, ptr %70, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  store ptr %74, ptr %75, align 4
  store volatile ptr %72, ptr %74, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %70, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %73, align 4
  %76 = load i32, ptr %71, align 64
  %77 = getelementptr i8, ptr %70, i32 -60
  %78 = load i32, ptr %77, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 64 dereferenceable(64) %71, i8 0, i32 64, i1 false) #11
  store i32 %76, ptr %71, align 64
  store i32 %78, ptr %77, align 4
  %79 = load ptr, ptr %68, align 4
  store ptr %70, ptr %68, align 4
  store ptr %67, ptr %70, align 4
  store ptr %79, ptr %73, align 4
  store volatile ptr %70, ptr %79, align 4
  %80 = icmp eq ptr %72, %63
  br i1 %80, label %81, label %69

81:                                               ; preds = %69, %62, %50, %43, %32, %26, %15, %9
  tail call void @kfree(ptr noundef nonnull %1) #11
  br label %82

82:                                               ; preds = %81, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xilinx_dma_tx_submit(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 -48
  %5 = getelementptr i8, ptr %3, i32 89
  %6 = load i8, ptr %5, align 1, !range !10
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call fastcc void @xilinx_dma_free_tx_descriptor(ptr noundef %4, ptr noundef %0)
  br label %64

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %3, i32 91
  %11 = load i8, ptr %10, align 1, !range !10
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @xilinx_dma_chan_reset(ptr noundef %4)
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %64, label %16

16:                                               ; preds = %13, %9
  %17 = getelementptr i8, ptr %3, i32 -36
  %18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %17) #11
  %19 = load ptr, ptr %2, align 4
  %20 = getelementptr inbounds %struct.dma_chan, ptr %19, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, 1
  %23 = tail call i32 @llvm.smax.i32(i32 %22, i32 1) #11
  store i32 %23, ptr %20, align 4
  store i32 %23, ptr %0, align 4
  %24 = getelementptr i8, ptr %3, i32 -32
  %25 = load volatile ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %24
  br i1 %26, label %35, label %27

27:                                               ; preds = %16
  %28 = getelementptr i8, ptr %3, i32 -28
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %29, i32 -4
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i8, ptr %31, i32 -64
  %33 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %0, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  store i32 %34, ptr %32, align 64
  br label %35

35:                                               ; preds = %27, %16
  %36 = getelementptr inbounds %struct.xilinx_dma_tx_descriptor, ptr %0, i32 0, i32 2
  %37 = getelementptr i8, ptr %3, i32 -28
  %38 = load ptr, ptr %37, align 4
  store ptr %36, ptr %37, align 4
  store ptr %24, ptr %36, align 4
  %39 = getelementptr inbounds %struct.xilinx_dma_tx_descriptor, ptr %0, i32 0, i32 2, i32 1
  store ptr %38, ptr %39, align 4
  store volatile ptr %36, ptr %38, align 4
  %40 = getelementptr i8, ptr %3, i32 168
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, 1
  store i32 %42, ptr %40, align 4
  %43 = getelementptr i8, ptr %3, i32 88
  %44 = load i8, ptr %43, align 4, !range !10
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %35
  %47 = load ptr, ptr %4, align 4
  %48 = getelementptr inbounds %struct.xilinx_dma_device, ptr %47, i32 0, i32 7
  %49 = load ptr, ptr %48, align 4
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 2
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = getelementptr i8, ptr %3, i32 84
  %54 = load i32, ptr %53, align 4
  %55 = icmp ugt i32 %42, %54
  br i1 %55, label %56, label %57, !prof !18

56:                                               ; preds = %52
  store i32 %54, ptr %40, align 4
  br label %57

57:                                               ; preds = %56, %52, %46, %35
  %58 = getelementptr inbounds %struct.xilinx_dma_tx_descriptor, ptr %0, i32 0, i32 3
  %59 = load i8, ptr %58, align 4, !range !10
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  store i8 1, ptr %5, align 1
  br label %62

62:                                               ; preds = %61, %57
  %63 = getelementptr i8, ptr %3, i32 93
  store i8 0, ptr %63, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %17, i32 noundef %18) #11
  br label %64

64:                                               ; preds = %62, %13, %8
  %65 = phi i32 [ -16, %8 ], [ %23, %62 ], [ %14, %13 ]
  ret i32 %65
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xilinx_dma_start_transfer(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 18
  %3 = load i8, ptr %2, align 1, !range !10
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %101

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 4
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %101, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 19
  %11 = load i8, ptr %10, align 4, !range !10
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %101, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 -4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = load ptr, ptr %0, align 4
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 %19
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %24 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 24
  %25 = load i32, ptr %24, align 4
  %26 = icmp ult i32 %25, 256
  br i1 %26, label %27, label %35

27:                                               ; preds = %13
  %28 = and i32 %23, -16711681
  %29 = shl nuw nsw i32 %25, 16
  %30 = or i32 %29, %28
  %31 = load i32, ptr %18, align 4
  %32 = load ptr, ptr %0, align 4
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %33, i32 %31
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %30) #11, !srcloc !12
  br label %35

35:                                               ; preds = %27, %13
  %36 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 15
  %37 = load i8, ptr %36, align 4, !range !10
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %58, label %39

39:                                               ; preds = %35
  %40 = getelementptr i8, ptr %7, i32 -60
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 25
  %43 = load i8, ptr %42, align 4, !range !10
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %39
  %46 = load ptr, ptr %0, align 4
  %47 = load ptr, ptr %46, align 4
  %48 = load i32, ptr %18, align 4
  %49 = getelementptr i8, ptr %47, i32 %48
  %50 = getelementptr i8, ptr %49, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !19
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %41) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !20
  tail call void @arm_heavy_mb() #11
  %51 = getelementptr i8, ptr %50, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 0) #11, !srcloc !12
  br label %58

52:                                               ; preds = %39
  %53 = load i32, ptr %18, align 4
  %54 = add i32 %53, 8
  %55 = load ptr, ptr %0, align 4
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr i8, ptr %56, i32 %54
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %41) #11, !srcloc !12
  br label %58

58:                                               ; preds = %52, %45, %35
  tail call fastcc void @xilinx_dma_start(ptr noundef %0)
  %59 = load i8, ptr %2, align 1, !range !10
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %101

61:                                               ; preds = %58
  %62 = load i8, ptr %36, align 4, !range !10
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %76, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 16
  %66 = load i8, ptr %65, align 1, !range !10
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 30
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.xilinx_axidma_tx_segment, ptr %70, i32 0, i32 2
  %72 = load i32, ptr %71, align 8
  tail call fastcc void @xilinx_write(ptr noundef %0, i32 noundef 16, i32 noundef %72)
  br label %91

73:                                               ; preds = %64
  %74 = getelementptr i8, ptr %17, i32 8
  %75 = load i32, ptr %74, align 8
  tail call fastcc void @xilinx_write(ptr noundef %0, i32 noundef 16, i32 noundef %75)
  br label %91

76:                                               ; preds = %61
  %77 = getelementptr i8, ptr %7, i32 -8
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr i8, ptr %78, i32 -56
  %80 = load i32, ptr %79, align 8
  tail call fastcc void @xilinx_write(ptr noundef %0, i32 noundef 24, i32 noundef %80)
  %81 = getelementptr i8, ptr %78, i32 -40
  %82 = load i32, ptr %81, align 8
  %83 = load ptr, ptr %0, align 4
  %84 = getelementptr inbounds %struct.xilinx_dma_device, ptr %83, i32 0, i32 15
  %85 = load i32, ptr %84, align 4
  %86 = and i32 %85, %82
  %87 = load i32, ptr %18, align 4
  %88 = add i32 %87, 40
  %89 = load ptr, ptr %83, align 4
  %90 = getelementptr i8, ptr %89, i32 %88
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %86) #11, !srcloc !12
  br label %91

91:                                               ; preds = %76, %73, %68
  %92 = load volatile ptr, ptr %6, align 4
  %93 = icmp eq ptr %92, %6
  br i1 %93, label %100, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 5
  %96 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 5, i32 1
  %97 = load ptr, ptr %96, align 4
  %98 = load ptr, ptr %14, align 4
  %99 = getelementptr inbounds %struct.list_head, ptr %92, i32 0, i32 1
  store ptr %97, ptr %99, align 4
  store ptr %92, ptr %97, align 4
  store ptr %95, ptr %98, align 4
  store ptr %98, ptr %96, align 4
  store volatile ptr %6, ptr %6, align 4
  store ptr %6, ptr %14, align 4
  br label %100

100:                                              ; preds = %94, %91
  store i32 0, ptr %24, align 4
  store i8 0, ptr %10, align 4
  br label %101

101:                                              ; preds = %100, %58, %9, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xilinx_dma_stop_transfer(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 %3
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %8 = and i32 %7, -2
  %9 = load i32, ptr %2, align 4
  %10 = load ptr, ptr %0, align 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %8) #11, !srcloc !12
  %13 = tail call i64 @ktime_get() #11
  %14 = add i64 %13, 1000000000
  br label %15

15:                                               ; preds = %24, %1
  %16 = load ptr, ptr %0, align 4
  %17 = load ptr, ptr %16, align 4
  %18 = load i32, ptr %2, align 4
  %19 = getelementptr i8, ptr %17, i32 4
  %20 = getelementptr i8, ptr %19, i32 %18
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !21
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %15
  %25 = tail call i64 @ktime_get() #11
  %26 = icmp sgt i64 %25, %14
  br i1 %26, label %27, label %15

27:                                               ; preds = %24
  %28 = load ptr, ptr %0, align 4
  %29 = load ptr, ptr %28, align 4
  %30 = load i32, ptr %2, align 4
  %31 = getelementptr i8, ptr %29, i32 %30
  %32 = getelementptr i8, ptr %31, i32 4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !22
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %35, i32 -110, i32 0
  br label %37

37:                                               ; preds = %27, %15
  %38 = phi i32 [ %36, %27 ], [ 0, %15 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xilinx_mcdma_start_transfer(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 18
  %3 = load i8, ptr %2, align 1, !range !10
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %139

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 19
  %7 = load i8, ptr %6, align 4, !range !10
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %139, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 4
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %139, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 -4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 34
  %19 = load i16, ptr %18, align 4
  %20 = zext i16 %19 to i32
  %21 = shl nuw nsw i32 %20, 6
  %22 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, 64
  %25 = add i32 %24, %21
  %26 = load ptr, ptr %0, align 4
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 %25
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %30 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 24
  %31 = load i32, ptr %30, align 4
  %32 = icmp ult i32 %31, 25
  %33 = and i32 %29, -16711905
  %34 = shl i32 %31, 16
  %35 = or i32 %34, %33
  %36 = select i1 %32, i32 %35, i32 %29
  %37 = or i32 %36, 224
  %38 = load i16, ptr %18, align 4
  %39 = zext i16 %38 to i32
  %40 = shl nuw nsw i32 %39, 6
  %41 = load i32, ptr %22, align 4
  %42 = add i32 %41, 64
  %43 = add i32 %42, %40
  %44 = load ptr, ptr %0, align 4
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr i8, ptr %45, i32 %43
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %37) #11, !srcloc !12
  %47 = load i16, ptr %18, align 4
  %48 = zext i16 %47 to i32
  %49 = shl nuw nsw i32 %48, 6
  %50 = add nuw nsw i32 %49, 72
  %51 = getelementptr i8, ptr %11, i32 -60
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 25
  %54 = load i8, ptr %53, align 4, !range !10
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %13
  %57 = load ptr, ptr %0, align 4
  %58 = load ptr, ptr %57, align 4
  %59 = load i32, ptr %22, align 4
  %60 = getelementptr i8, ptr %58, i32 %59
  %61 = getelementptr i8, ptr %60, i32 %50
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !19
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %52) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !20
  tail call void @arm_heavy_mb() #11
  %62 = getelementptr i8, ptr %61, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 0) #11, !srcloc !12
  br label %69

63:                                               ; preds = %13
  %64 = load i32, ptr %22, align 4
  %65 = add i32 %64, %50
  %66 = load ptr, ptr %0, align 4
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr i8, ptr %67, i32 %65
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %52) #11, !srcloc !12
  br label %69

69:                                               ; preds = %63, %56
  %70 = load i32, ptr %22, align 4
  %71 = add i32 %70, 8
  %72 = load ptr, ptr %0, align 4
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr i8, ptr %73, i32 %71
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %76 = load i16, ptr %18, align 4
  %77 = zext i16 %76 to i32
  %78 = shl nuw i32 1, %77
  %79 = or i32 %78, %75
  %80 = load i32, ptr %22, align 4
  %81 = add i32 %80, 8
  %82 = load ptr, ptr %0, align 4
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr i8, ptr %83, i32 %81
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %79) #11, !srcloc !12
  %85 = load i16, ptr %18, align 4
  %86 = zext i16 %85 to i32
  %87 = shl nuw nsw i32 %86, 6
  %88 = load i32, ptr %22, align 4
  %89 = add i32 %88, 64
  %90 = add i32 %89, %87
  %91 = load ptr, ptr %0, align 4
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr i8, ptr %92, i32 %90
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %93) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %95 = or i32 %94, 1
  %96 = load i16, ptr %18, align 4
  %97 = zext i16 %96 to i32
  %98 = shl nuw nsw i32 %97, 6
  %99 = load i32, ptr %22, align 4
  %100 = add i32 %99, 64
  %101 = add i32 %100, %98
  %102 = load ptr, ptr %0, align 4
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr i8, ptr %103, i32 %101
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 %95) #11, !srcloc !12
  tail call fastcc void @xilinx_dma_start(ptr noundef %0)
  %105 = load i8, ptr %2, align 1, !range !10
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %139

107:                                              ; preds = %69
  %108 = load i16, ptr %18, align 4
  %109 = zext i16 %108 to i32
  %110 = shl nuw nsw i32 %109, 6
  %111 = add nuw nsw i32 %110, 80
  %112 = getelementptr i8, ptr %17, i32 8
  %113 = load i32, ptr %112, align 8
  %114 = load i8, ptr %53, align 4, !range !10
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %123, label %116

116:                                              ; preds = %107
  %117 = load ptr, ptr %0, align 4
  %118 = load ptr, ptr %117, align 4
  %119 = load i32, ptr %22, align 4
  %120 = getelementptr i8, ptr %118, i32 %119
  %121 = getelementptr i8, ptr %120, i32 %111
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !19
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 %113) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !20
  tail call void @arm_heavy_mb() #11
  %122 = getelementptr i8, ptr %121, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %122, i32 0) #11, !srcloc !12
  br label %129

123:                                              ; preds = %107
  %124 = load i32, ptr %22, align 4
  %125 = add i32 %124, %111
  %126 = load ptr, ptr %0, align 4
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr i8, ptr %127, i32 %125
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 %113) #11, !srcloc !12
  br label %129

129:                                              ; preds = %123, %116
  %130 = load volatile ptr, ptr %10, align 4
  %131 = icmp eq ptr %130, %10
  br i1 %131, label %138, label %132

132:                                              ; preds = %129
  %133 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 5
  %134 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 5, i32 1
  %135 = load ptr, ptr %134, align 4
  %136 = load ptr, ptr %14, align 4
  %137 = getelementptr inbounds %struct.list_head, ptr %130, i32 0, i32 1
  store ptr %135, ptr %137, align 4
  store ptr %130, ptr %135, align 4
  store ptr %133, ptr %136, align 4
  store ptr %136, ptr %134, align 4
  store volatile ptr %10, ptr %10, align 4
  store ptr %10, ptr %14, align 4
  br label %138

138:                                              ; preds = %132, %129
  store i32 0, ptr %30, align 4
  store i8 0, ptr %6, align 4
  br label %139

139:                                              ; preds = %138, %69, %9, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xilinx_cdma_start_transfer(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %5 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 18
  %6 = load i8, ptr %5, align 1, !range !10
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %160

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 19
  %10 = load i8, ptr %9, align 4, !range !10
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %160, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 4
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %160, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 -4
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 24
  %22 = load i32, ptr %21, align 4
  %23 = icmp ult i32 %22, 256
  br i1 %23, label %24, label %33

24:                                               ; preds = %16
  %25 = and i32 %4, -16711681
  %26 = shl nuw nsw i32 %22, 16
  %27 = or i32 %26, %25
  %28 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = load ptr, ptr %0, align 4
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i8, ptr %31, i32 %29
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %27) #11, !srcloc !12
  br label %33

33:                                               ; preds = %24, %16
  %34 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 15
  %35 = load i8, ptr %34, align 4, !range !10
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %95, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = load ptr, ptr %0, align 4
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr i8, ptr %41, i32 %39
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %44 = and i32 %43, -9
  %45 = load i32, ptr %38, align 4
  %46 = load ptr, ptr %0, align 4
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr i8, ptr %47, i32 %45
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %44) #11, !srcloc !12
  %49 = load i32, ptr %38, align 4
  %50 = load ptr, ptr %0, align 4
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr i8, ptr %51, i32 %49
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %54 = or i32 %53, 8
  %55 = load i32, ptr %38, align 4
  %56 = load ptr, ptr %0, align 4
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr i8, ptr %57, i32 %55
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %54) #11, !srcloc !12
  %59 = getelementptr i8, ptr %14, i32 -60
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 25
  %62 = load i8, ptr %61, align 4, !range !10
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %37
  %65 = load ptr, ptr %0, align 4
  %66 = load ptr, ptr %65, align 4
  %67 = load i32, ptr %38, align 4
  %68 = getelementptr i8, ptr %66, i32 %67
  %69 = getelementptr i8, ptr %68, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !19
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %60) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !20
  tail call void @arm_heavy_mb() #11
  %70 = getelementptr i8, ptr %69, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 0) #11, !srcloc !12
  br label %77

71:                                               ; preds = %37
  %72 = load i32, ptr %38, align 4
  %73 = add i32 %72, 8
  %74 = load ptr, ptr %0, align 4
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr i8, ptr %75, i32 %73
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %60) #11, !srcloc !12
  br label %77

77:                                               ; preds = %71, %64
  %78 = getelementptr i8, ptr %20, i32 8
  %79 = load i32, ptr %78, align 8
  %80 = load i8, ptr %61, align 4, !range !10
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %89, label %82

82:                                               ; preds = %77
  %83 = load ptr, ptr %0, align 4
  %84 = load ptr, ptr %83, align 4
  %85 = load i32, ptr %38, align 4
  %86 = getelementptr i8, ptr %84, i32 %85
  %87 = getelementptr i8, ptr %86, i32 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !19
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %79) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !20
  tail call void @arm_heavy_mb() #11
  %88 = getelementptr i8, ptr %87, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 0) #11, !srcloc !12
  br label %150

89:                                               ; preds = %77
  %90 = load i32, ptr %38, align 4
  %91 = add i32 %90, 16
  %92 = load ptr, ptr %0, align 4
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr i8, ptr %93, i32 %91
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 %79) #11, !srcloc !12
  br label %150

95:                                               ; preds = %33
  %96 = getelementptr i8, ptr %14, i32 -8
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr i8, ptr %97, i32 -56
  %99 = load i32, ptr %98, align 8
  %100 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 25
  %101 = load i8, ptr %100, align 4, !range !10
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %111, label %103

103:                                              ; preds = %95
  %104 = load ptr, ptr %0, align 4
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 1
  %107 = load i32, ptr %106, align 4
  %108 = getelementptr i8, ptr %105, i32 %107
  %109 = getelementptr i8, ptr %108, i32 24
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !19
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %109, i32 %99) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !20
  tail call void @arm_heavy_mb() #11
  %110 = getelementptr i8, ptr %109, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 0) #11, !srcloc !12
  br label %118

111:                                              ; preds = %95
  %112 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 1
  %113 = load i32, ptr %112, align 4
  %114 = add i32 %113, 24
  %115 = load ptr, ptr %0, align 4
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr i8, ptr %116, i32 %114
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 %99) #11, !srcloc !12
  br label %118

118:                                              ; preds = %111, %103
  %119 = getelementptr i8, ptr %97, i32 -48
  %120 = load i32, ptr %119, align 16
  %121 = load i8, ptr %100, align 4, !range !10
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %131, label %123

123:                                              ; preds = %118
  %124 = load ptr, ptr %0, align 4
  %125 = load ptr, ptr %124, align 4
  %126 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 1
  %127 = load i32, ptr %126, align 4
  %128 = getelementptr i8, ptr %125, i32 %127
  %129 = getelementptr i8, ptr %128, i32 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !19
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %129, i32 %120) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !20
  tail call void @arm_heavy_mb() #11
  %130 = getelementptr i8, ptr %129, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 0) #11, !srcloc !12
  br label %138

131:                                              ; preds = %118
  %132 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 1
  %133 = load i32, ptr %132, align 4
  %134 = add i32 %133, 32
  %135 = load ptr, ptr %0, align 4
  %136 = load ptr, ptr %135, align 4
  %137 = getelementptr i8, ptr %136, i32 %134
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %137, i32 %120) #11, !srcloc !12
  br label %138

138:                                              ; preds = %131, %123
  %139 = getelementptr i8, ptr %97, i32 -40
  %140 = load i32, ptr %139, align 8
  %141 = load ptr, ptr %0, align 4
  %142 = getelementptr inbounds %struct.xilinx_dma_device, ptr %141, i32 0, i32 15
  %143 = load i32, ptr %142, align 4
  %144 = and i32 %143, %140
  %145 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 1
  %146 = load i32, ptr %145, align 4
  %147 = add i32 %146, 40
  %148 = load ptr, ptr %141, align 4
  %149 = getelementptr i8, ptr %148, i32 %147
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %149, i32 %144) #11, !srcloc !12
  br label %150

150:                                              ; preds = %138, %89, %82
  %151 = load volatile ptr, ptr %13, align 4
  %152 = icmp eq ptr %151, %13
  br i1 %152, label %159, label %153

153:                                              ; preds = %150
  %154 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 5
  %155 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 5, i32 1
  %156 = load ptr, ptr %155, align 4
  %157 = load ptr, ptr %17, align 4
  %158 = getelementptr inbounds %struct.list_head, ptr %151, i32 0, i32 1
  store ptr %156, ptr %158, align 4
  store ptr %151, ptr %156, align 4
  store ptr %154, ptr %157, align 4
  store ptr %157, ptr %155, align 4
  store volatile ptr %13, ptr %13, align 4
  store ptr %13, ptr %17, align 4
  br label %159

159:                                              ; preds = %153, %150
  store i32 0, ptr %21, align 4
  store i8 0, ptr %9, align 4
  br label %160

160:                                              ; preds = %159, %12, %8, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xilinx_cdma_stop_transfer(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call i64 @ktime_get() #11
  %3 = add i64 %2, 1000000000
  %4 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 1
  br label %5

5:                                                ; preds = %14, %1
  %6 = load ptr, ptr %0, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %4, align 4
  %9 = getelementptr i8, ptr %7, i32 4
  %10 = getelementptr i8, ptr %9, i32 %8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !23
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %5
  %15 = tail call i64 @ktime_get() #11
  %16 = icmp sgt i64 %15, %3
  br i1 %16, label %17, label %5

17:                                               ; preds = %14
  %18 = load ptr, ptr %0, align 4
  %19 = load ptr, ptr %18, align 4
  %20 = load i32, ptr %4, align 4
  %21 = getelementptr i8, ptr %19, i32 %20
  %22 = getelementptr i8, ptr %21, i32 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !24
  %24 = and i32 %23, 2
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i32 -110, i32 0
  br label %27

27:                                               ; preds = %17, %5
  %28 = phi i32 [ %26, %17 ], [ 0, %5 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xilinx_vdma_start_transfer(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 18
  %3 = load i8, ptr %2, align 1, !range !10
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %163

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 19
  %7 = load i8, ptr %6, align 4, !range !10
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %163, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 4
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %163, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 35
  %15 = load i8, ptr %14, align 2, !range !10
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %0, align 4
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 236
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %22 = and i32 %21, -2
  %23 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 22, i32 10
  %24 = load i8, ptr %23, align 4, !range !10
  %25 = zext i8 %24 to i32
  %26 = or i32 %22, %25
  %27 = load ptr, ptr %0, align 4
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 236
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %26) #11, !srcloc !12
  br label %30

30:                                               ; preds = %17, %13
  %31 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = load ptr, ptr %0, align 4
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr i8, ptr %34, i32 %32
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %37 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 22, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  %40 = and i32 %36, -19
  %41 = select i1 %39, i32 0, i32 16
  %42 = or i32 %41, %40
  %43 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 22, i32 4
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %45, i32 2, i32 0
  %47 = or i32 %42, %46
  %48 = load i32, ptr %31, align 4
  %49 = load ptr, ptr %0, align 4
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr i8, ptr %50, i32 %48
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %47) #11, !srcloc !12
  %52 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 26
  %53 = load i32, ptr %52, align 4
  %54 = load ptr, ptr %0, align 4
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr i8, ptr %55, i32 40
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %58 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 13
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 1
  %61 = and i32 %57, -32
  %62 = or i32 %61, %53
  %63 = and i32 %57, -7937
  %64 = shl i32 %53, 8
  %65 = or i32 %63, %64
  %66 = select i1 %60, i32 %62, i32 %65
  %67 = load ptr, ptr %0, align 4
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr i8, ptr %68, i32 40
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %66) #11, !srcloc !12
  tail call fastcc void @xilinx_dma_start(ptr noundef %0)
  %70 = load i8, ptr %2, align 1, !range !10
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %163

72:                                               ; preds = %30
  %73 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 14
  %74 = getelementptr i8, ptr %11, i32 -8
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, %74
  br i1 %76, label %163, label %77

77:                                               ; preds = %72
  %78 = load i32, ptr %52, align 4
  %79 = load i32, ptr %73, align 4
  %80 = icmp ult i32 %78, %79
  %81 = select i1 %80, i32 %78, i32 0
  %82 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 25
  %83 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 2
  br label %84

84:                                               ; preds = %117, %77
  %85 = phi ptr [ %75, %77 ], [ %119, %117 ]
  %86 = phi i32 [ %81, %77 ], [ %118, %117 ]
  %87 = load i8, ptr %82, align 4, !range !10
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %107, label %89

89:                                               ; preds = %84
  %90 = shl i32 %86, 3
  %91 = add i32 %90, 12
  %92 = getelementptr i8, ptr %85, i32 -56
  %93 = load i32, ptr %92, align 8
  %94 = getelementptr i8, ptr %85, i32 -52
  %95 = load i32, ptr %94, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !25
  tail call void @arm_heavy_mb() #11
  %96 = load ptr, ptr %0, align 4
  %97 = load ptr, ptr %96, align 4
  %98 = load i32, ptr %83, align 4
  %99 = getelementptr i8, ptr %97, i32 %98
  %100 = getelementptr i8, ptr %99, i32 %91
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 %93) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !26
  tail call void @arm_heavy_mb() #11
  %101 = load ptr, ptr %0, align 4
  %102 = load ptr, ptr %101, align 4
  %103 = load i32, ptr %83, align 4
  %104 = getelementptr i8, ptr %102, i32 4
  %105 = getelementptr i8, ptr %104, i32 %103
  %106 = getelementptr i8, ptr %105, i32 %91
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %106, i32 %95) #11, !srcloc !12
  br label %117

107:                                              ; preds = %84
  %108 = shl i32 %86, 2
  %109 = add i32 %108, 12
  %110 = getelementptr i8, ptr %85, i32 -56
  %111 = load i32, ptr %110, align 8
  %112 = load i32, ptr %83, align 4
  %113 = add i32 %109, %112
  %114 = load ptr, ptr %0, align 4
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr i8, ptr %115, i32 %113
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 %111) #11, !srcloc !12
  br label %117

117:                                              ; preds = %107, %89
  %118 = add i32 %86, 1
  %119 = load ptr, ptr %85, align 4
  %120 = icmp eq ptr %119, %74
  br i1 %120, label %121, label %84

121:                                              ; preds = %117
  %122 = getelementptr i8, ptr %85, i32 -64
  %123 = icmp eq ptr %122, null
  br i1 %123, label %163, label %124

124:                                              ; preds = %121
  %125 = getelementptr i8, ptr %85, i32 -44
  %126 = load i32, ptr %125, align 4
  %127 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 2
  %128 = load i32, ptr %127, align 4
  %129 = add i32 %128, 4
  %130 = load ptr, ptr %0, align 4
  %131 = load ptr, ptr %130, align 4
  %132 = getelementptr i8, ptr %131, i32 %129
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %132, i32 %126) #11, !srcloc !12
  %133 = getelementptr i8, ptr %85, i32 -40
  %134 = load i32, ptr %133, align 8
  %135 = load i32, ptr %127, align 4
  %136 = add i32 %135, 8
  %137 = load ptr, ptr %0, align 4
  %138 = load ptr, ptr %137, align 4
  %139 = getelementptr i8, ptr %138, i32 %136
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %139, i32 %134) #11, !srcloc !12
  %140 = getelementptr i8, ptr %85, i32 -48
  %141 = load i32, ptr %140, align 16
  %142 = load i32, ptr %127, align 4
  %143 = load ptr, ptr %0, align 4
  %144 = load ptr, ptr %143, align 4
  %145 = getelementptr i8, ptr %144, i32 %142
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %145, i32 %141) #11, !srcloc !12
  %146 = load i32, ptr %52, align 4
  %147 = add i32 %146, 1
  store i32 %147, ptr %52, align 4
  %148 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 24
  %149 = load i32, ptr %148, align 4
  %150 = add i32 %149, -1
  store i32 %150, ptr %148, align 4
  %151 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 5
  %152 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %153 = load ptr, ptr %152, align 4
  %154 = load ptr, ptr %11, align 4
  %155 = getelementptr inbounds %struct.list_head, ptr %154, i32 0, i32 1
  store ptr %153, ptr %155, align 4
  store volatile ptr %154, ptr %153, align 4
  %156 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 5, i32 1
  %157 = load ptr, ptr %156, align 4
  store ptr %11, ptr %156, align 4
  store ptr %151, ptr %11, align 4
  store ptr %157, ptr %152, align 4
  store volatile ptr %11, ptr %157, align 4
  %158 = load i32, ptr %52, align 4
  %159 = load i32, ptr %73, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %124
  store i32 0, ptr %52, align 4
  br label %162

162:                                              ; preds = %161, %124
  store i8 0, ptr %6, align 4
  br label %163

163:                                              ; preds = %162, %121, %72, %30, %9, %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xilinx_dma_do_tasklet(ptr noundef %0) #0 {
  %2 = alloca %struct.dmaengine_result, align 8
  %3 = alloca %struct.dmaengine_result, align 8
  %4 = getelementptr i8, ptr %0, i32 -144
  %5 = getelementptr i8, ptr %0, i32 -132
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #11
  %7 = getelementptr i8, ptr %0, i32 -112
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %76, label %10

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %0, i32 -16
  %12 = getelementptr inbounds %struct.dmaengine_result, ptr %3, i32 0, i32 1
  %13 = getelementptr i8, ptr %0, i32 -3
  br label %14

14:                                               ; preds = %74, %10
  %15 = phi ptr [ %8, %10 ], [ %18, %74 ]
  %16 = phi i32 [ %6, %10 ], [ %69, %74 ]
  %17 = getelementptr i8, ptr %15, i32 -68
  %18 = load ptr, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store i64 0, ptr %3, align 8, !annotation !15
  %19 = getelementptr i8, ptr %15, i32 8
  %20 = load i8, ptr %19, align 4, !range !10
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %40, label %22

22:                                               ; preds = %14
  %23 = getelementptr i8, ptr %15, i32 -44
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %15, i32 -40
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i8, ptr %15, i32 -36
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %24, null
  %30 = xor i1 %29, true
  %31 = icmp ne ptr %26, null
  %32 = select i1 %30, i1 true, i1 %31
  br i1 %32, label %33, label %72

33:                                               ; preds = %22
  call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %16) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  store i64 0, ptr %2, align 8
  %34 = icmp eq ptr %26, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %33
  call void %26(ptr noundef %28, ptr noundef nonnull %2) #11
  br label %38

36:                                               ; preds = %33
  br i1 %29, label %38, label %37

37:                                               ; preds = %36
  call void %24(ptr noundef %28) #11
  br label %38

38:                                               ; preds = %37, %36, %35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  %39 = call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #11
  br label %72

40:                                               ; preds = %14
  %41 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = load ptr, ptr %15, align 4
  %44 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  store ptr %42, ptr %44, align 4
  store volatile ptr %43, ptr %42, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %15, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %41, align 4
  %45 = getelementptr i8, ptr %15, i32 9
  %46 = load i8, ptr %45, align 1, !range !10
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %53, label %48, !prof !27

48:                                               ; preds = %40
  %49 = load i32, ptr %11, align 4
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 1, ptr %3, align 8
  br label %54

52:                                               ; preds = %48
  store i32 2, ptr %3, align 8
  br label %54

53:                                               ; preds = %40
  store i32 0, ptr %3, align 8
  br label %54

54:                                               ; preds = %53, %52, %51
  %55 = getelementptr i8, ptr %15, i32 12
  %56 = load i32, ptr %55, align 4
  store i32 %56, ptr %12, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %16) #11
  %57 = getelementptr i8, ptr %15, i32 -44
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr i8, ptr %15, i32 -40
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr i8, ptr %15, i32 -36
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %60, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %54
  call void %60(ptr noundef %62, ptr noundef nonnull %3) #11
  br label %68

65:                                               ; preds = %54
  %66 = icmp eq ptr %58, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %65
  call void %58(ptr noundef %62) #11
  br label %68

68:                                               ; preds = %67, %65, %64
  %69 = call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #11
  call void @dma_run_dependencies(ptr noundef %17) #11
  call fastcc void @xilinx_dma_free_tx_descriptor(ptr noundef %4, ptr noundef %17) #11
  %70 = load i8, ptr %13, align 1, !range !10
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %68, %38, %22
  %73 = phi i32 [ %16, %22 ], [ %39, %38 ], [ %69, %68 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %76

74:                                               ; preds = %68
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  %75 = icmp eq ptr %18, %7
  br i1 %75, label %76, label %14

76:                                               ; preds = %74, %72, %1
  %77 = phi i32 [ %73, %72 ], [ %6, %1 ], [ %69, %74 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %77) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @xilinx_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #10 {
  %4 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 25
  %5 = load i8, ptr %4, align 4, !range !10
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr i8, ptr %9, i32 %11
  %13 = getelementptr i8, ptr %12, i32 %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !19
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %2) #11, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !20
  tail call void @arm_heavy_mb() #11
  %14 = getelementptr i8, ptr %13, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 0) #11, !srcloc !12
  br label %22

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, %1
  %19 = load ptr, ptr %0, align 4
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %2) #11, !srcloc !12
  br label %22

22:                                               ; preds = %15, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @xilinx_dma_start(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 %3
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %8 = or i32 %7, 1
  %9 = load i32, ptr %2, align 4
  %10 = load ptr, ptr %0, align 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %8) #11, !srcloc !12
  %13 = tail call i64 @ktime_get() #11
  %14 = add i64 %13, 1000000000
  br label %15

15:                                               ; preds = %24, %1
  %16 = load ptr, ptr %0, align 4
  %17 = load ptr, ptr %16, align 4
  %18 = load i32, ptr %2, align 4
  %19 = getelementptr i8, ptr %17, i32 4
  %20 = getelementptr i8, ptr %19, i32 %18
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !28
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %46, label %24

24:                                               ; preds = %15
  %25 = tail call i64 @ktime_get() #11
  %26 = icmp sgt i64 %25, %14
  br i1 %26, label %27, label %15

27:                                               ; preds = %24
  %28 = load ptr, ptr %0, align 4
  %29 = load ptr, ptr %28, align 4
  %30 = load i32, ptr %2, align 4
  %31 = getelementptr i8, ptr %29, i32 %30
  %32 = getelementptr i8, ptr %31, i32 4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !29
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 10
  %38 = load ptr, ptr %37, align 4
  %39 = load i32, ptr %2, align 4
  %40 = add i32 %39, 4
  %41 = load ptr, ptr %0, align 4
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr i8, ptr %42, i32 %40
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.52, ptr noundef %0, i32 noundef %44) #12
  %45 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 18
  store i8 1, ptr %45, align 1
  br label %46

46:                                               ; preds = %36, %27, %15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_run_dependencies(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_get_slave_channel(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_dma_controller_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @axidma_clk_init(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef writeonly %5) #0 {
  store ptr null, ptr %5, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %8 = tail call ptr @devm_clk_get(ptr noundef %7, ptr noundef nonnull @.str.17) #11
  store ptr %8, ptr %1, align 4
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = ptrtoint ptr %8 to i32
  %12 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %7, i32 noundef %11, ptr noundef nonnull @.str.18) #11
  br label %69

13:                                               ; preds = %6
  %14 = tail call ptr @devm_clk_get(ptr noundef %7, ptr noundef nonnull @.str.19) #11
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  %16 = select i1 %15, ptr null, ptr %14
  store ptr %16, ptr %2, align 4
  %17 = tail call ptr @devm_clk_get(ptr noundef %7, ptr noundef nonnull @.str.21) #11
  %18 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  %19 = select i1 %18, ptr null, ptr %17
  store ptr %19, ptr %3, align 4
  %20 = tail call ptr @devm_clk_get(ptr noundef %7, ptr noundef nonnull @.str.53) #11
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  %22 = select i1 %21, ptr null, ptr %20
  store ptr %22, ptr %4, align 4
  %23 = load ptr, ptr %1, align 4
  %24 = tail call i32 @clk_prepare(ptr noundef %23) #11
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %13
  %27 = tail call i32 @clk_enable(ptr noundef %23) #11
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  tail call void @clk_unprepare(ptr noundef %23) #11
  br label %30

30:                                               ; preds = %29, %13
  %31 = phi i32 [ %27, %29 ], [ %24, %13 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.23, i32 noundef %31) #12
  br label %69

32:                                               ; preds = %26
  %33 = load ptr, ptr %2, align 4
  %34 = tail call i32 @clk_prepare(ptr noundef %33) #11
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = tail call i32 @clk_enable(ptr noundef %33) #11
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  tail call void @clk_unprepare(ptr noundef %33) #11
  br label %40

40:                                               ; preds = %39, %32
  %41 = phi i32 [ %37, %39 ], [ %34, %32 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.24, i32 noundef %41) #12
  br label %66

42:                                               ; preds = %36
  %43 = load ptr, ptr %3, align 4
  %44 = tail call i32 @clk_prepare(ptr noundef %43) #11
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = tail call i32 @clk_enable(ptr noundef %43) #11
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  tail call void @clk_unprepare(ptr noundef %43) #11
  br label %50

50:                                               ; preds = %49, %42
  %51 = phi i32 [ %47, %49 ], [ %44, %42 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.26, i32 noundef %51) #12
  br label %63

52:                                               ; preds = %46
  %53 = load ptr, ptr %4, align 4
  %54 = tail call i32 @clk_prepare(ptr noundef %53) #11
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = tail call i32 @clk_enable(ptr noundef %53) #11
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %56
  tail call void @clk_unprepare(ptr noundef %53) #11
  br label %60

60:                                               ; preds = %59, %52
  %61 = phi i32 [ %57, %59 ], [ %54, %52 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.54, i32 noundef %61) #12
  %62 = load ptr, ptr %3, align 4
  tail call void @clk_disable(ptr noundef %62) #11
  tail call void @clk_unprepare(ptr noundef %62) #11
  br label %63

63:                                               ; preds = %60, %50
  %64 = phi i32 [ %51, %50 ], [ %61, %60 ]
  %65 = load ptr, ptr %2, align 4
  tail call void @clk_disable(ptr noundef %65) #11
  tail call void @clk_unprepare(ptr noundef %65) #11
  br label %66

66:                                               ; preds = %63, %40
  %67 = phi i32 [ %41, %40 ], [ %64, %63 ]
  %68 = load ptr, ptr %1, align 4
  tail call void @clk_disable(ptr noundef %68) #11
  tail call void @clk_unprepare(ptr noundef %68) #11
  br label %69

69:                                               ; preds = %66, %56, %30, %10
  %70 = phi i32 [ %12, %10 ], [ %31, %30 ], [ %67, %66 ], [ 0, %56 ]
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xilinx_dma_irq_handler(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %1, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, 4
  %6 = load ptr, ptr %1, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 %5
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %10 = and i32 %9, 28672
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %66, label %12

12:                                               ; preds = %2
  %13 = load i32, ptr %3, align 4
  %14 = add i32 %13, 4
  %15 = load ptr, ptr %1, align 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %10) #11, !srcloc !12
  %18 = and i32 %9, 16384
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %50, label %20

20:                                               ; preds = %12
  %21 = and i32 %9, 2448
  %22 = load i32, ptr %3, align 4
  %23 = add i32 %22, 4
  %24 = load ptr, ptr %1, align 4
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %25, i32 %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %21) #11, !srcloc !12
  %27 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %1, i32 0, i32 23
  %28 = load i8, ptr %27, align 4, !range !10
  %29 = icmp ne i8 %28, 0
  %30 = and i32 %9, 34400
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %50, label %33

33:                                               ; preds = %20
  %34 = and i32 %9, 36848
  %35 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %1, i32 0, i32 10
  %36 = load ptr, ptr %35, align 4
  %37 = load i32, ptr %3, align 4
  %38 = add i32 %37, 8
  %39 = load ptr, ptr %1, align 4
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr i8, ptr %40, i32 %38
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %43 = load i32, ptr %3, align 4
  %44 = add i32 %43, 16
  %45 = load ptr, ptr %1, align 4
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr i8, ptr %46, i32 %44
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.55, ptr noundef %1, i32 noundef %34, i32 noundef %42, i32 noundef %48) #12
  %49 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %1, i32 0, i32 18
  store i8 1, ptr %49, align 1
  br label %50

50:                                               ; preds = %33, %20, %12
  %51 = and i32 %9, 4096
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %54) #11
  tail call fastcc void @xilinx_dma_complete_descriptor(ptr noundef %1)
  %55 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %1, i32 0, i32 19
  store i8 1, ptr %55, align 4
  %56 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %1, i32 0, i32 32
  %57 = load ptr, ptr %56, align 4
  tail call void %57(ptr noundef %1) #11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !30
  %58 = load i16, ptr %54, align 4
  %59 = add i16 %58, 1
  store i16 %59, ptr %54, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !31
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !32
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !33
  br label %60

60:                                               ; preds = %53, %50
  %61 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %1, i32 0, i32 21, i32 1
  %62 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %61) #11
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %1, i32 0, i32 21
  tail call void @__tasklet_schedule(ptr noundef %65) #11
  br label %66

66:                                               ; preds = %64, %60, %2
  %67 = phi i32 [ 0, %2 ], [ 1, %60 ], [ 1, %64 ]
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @xilinx_dma_complete_descriptor(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 5
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %78, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 15
  %7 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 18
  %8 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 6
  %9 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %0, i32 0, i32 6, i32 1
  br label %10

10:                                               ; preds = %75, %5
  %11 = phi ptr [ %3, %5 ], [ %13, %75 ]
  %12 = getelementptr i8, ptr %11, i32 -68
  %13 = load ptr, ptr %11, align 4
  %14 = load i8, ptr %6, align 4, !range !10
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %56, label %16

16:                                               ; preds = %10
  %17 = load ptr, ptr %0, align 4
  %18 = getelementptr inbounds %struct.xilinx_dma_device, ptr %17, i32 0, i32 7
  %19 = load ptr, ptr %18, align 4
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %56, label %22

22:                                               ; preds = %16
  %23 = getelementptr i8, ptr %11, i32 -8
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, %23
  br i1 %25, label %56, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.xilinx_dma_device, ptr %17, i32 0, i32 15
  %28 = load i32, ptr %27, align 4
  br label %29

29:                                               ; preds = %50, %26
  %30 = phi ptr [ %24, %26 ], [ %54, %50 ]
  %31 = phi i32 [ 0, %26 ], [ %53, %50 ]
  switch i32 %20, label %44 [
    i32 1, label %32
    i32 0, label %38
  ]

32:                                               ; preds = %29
  %33 = getelementptr i8, ptr %30, i32 -40
  %34 = load i32, ptr %33, align 8
  %35 = getelementptr i8, ptr %30, i32 -36
  %36 = load i32, ptr %35, align 4
  %37 = sub i32 %34, %36
  br label %50

38:                                               ; preds = %29
  %39 = getelementptr i8, ptr %30, i32 -40
  %40 = load i32, ptr %39, align 8
  %41 = getelementptr i8, ptr %30, i32 -36
  %42 = load i32, ptr %41, align 4
  %43 = sub i32 %40, %42
  br label %50

44:                                               ; preds = %29
  %45 = getelementptr i8, ptr %30, i32 -44
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr i8, ptr %30, i32 -40
  %48 = load i32, ptr %47, align 8
  %49 = sub i32 %46, %48
  br label %50

50:                                               ; preds = %44, %38, %32
  %51 = phi i32 [ %37, %32 ], [ %49, %44 ], [ %43, %38 ]
  %52 = and i32 %28, %51
  %53 = add i32 %52, %31
  %54 = load ptr, ptr %30, align 4
  %55 = icmp eq ptr %54, %23
  br i1 %55, label %56, label %29

56:                                               ; preds = %50, %22, %16, %10
  %57 = phi i32 [ 0, %22 ], [ 0, %16 ], [ 0, %10 ], [ %53, %50 ]
  %58 = getelementptr i8, ptr %11, i32 12
  store i32 %57, ptr %58, align 4
  %59 = load i8, ptr %7, align 1, !range !10
  %60 = getelementptr i8, ptr %11, i32 9
  store i8 %59, ptr %60, align 1
  %61 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %62, ptr %63, align 4
  store volatile ptr %13, ptr %62, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %11, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %61, align 4
  %64 = getelementptr i8, ptr %11, i32 8
  %65 = load i8, ptr %64, align 4, !range !10
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %56
  %68 = load i32, ptr %12, align 4
  %69 = icmp slt i32 %68, 1
  br i1 %69, label %70, label %71, !prof !18

70:                                               ; preds = %67
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/xilinx/../dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #11, !srcloc !34
  unreachable

71:                                               ; preds = %67
  %72 = getelementptr i8, ptr %11, i32 -56
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.dma_chan, ptr %73, i32 0, i32 3
  store i32 %68, ptr %74, align 4
  store i32 0, ptr %12, align 4
  br label %75

75:                                               ; preds = %71, %56
  %76 = load ptr, ptr %9, align 4
  store ptr %11, ptr %9, align 4
  store ptr %8, ptr %11, align 4
  store ptr %76, ptr %61, align 4
  store volatile ptr %11, ptr %76, align 4
  %77 = icmp eq ptr %13, %2
  br i1 %77, label %78, label %10

78:                                               ; preds = %75, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @axicdma_clk_init(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) #0 {
  store ptr null, ptr %3, align 4
  store ptr null, ptr %4, align 4
  store ptr null, ptr %5, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %8 = tail call ptr @devm_clk_get(ptr noundef %7, ptr noundef nonnull @.str.17) #11
  store ptr %8, ptr %1, align 4
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = ptrtoint ptr %8 to i32
  %12 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %7, i32 noundef %11, ptr noundef nonnull @.str.18) #11
  br label %40

13:                                               ; preds = %6
  %14 = tail call ptr @devm_clk_get(ptr noundef %7, ptr noundef nonnull @.str.56) #11
  store ptr %14, ptr %2, align 4
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = ptrtoint ptr %14 to i32
  %18 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %7, i32 noundef %17, ptr noundef nonnull @.str.57) #11
  br label %40

19:                                               ; preds = %13
  %20 = load ptr, ptr %1, align 4
  %21 = tail call i32 @clk_prepare(ptr noundef %20) #11
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = tail call i32 @clk_enable(ptr noundef %20) #11
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  tail call void @clk_unprepare(ptr noundef %20) #11
  br label %27

27:                                               ; preds = %26, %19
  %28 = phi i32 [ %24, %26 ], [ %21, %19 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.23, i32 noundef %28) #12
  br label %40

29:                                               ; preds = %23
  %30 = load ptr, ptr %2, align 4
  %31 = tail call i32 @clk_prepare(ptr noundef %30) #11
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = tail call i32 @clk_enable(ptr noundef %30) #11
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  tail call void @clk_unprepare(ptr noundef %30) #11
  br label %37

37:                                               ; preds = %36, %29
  %38 = phi i32 [ %34, %36 ], [ %31, %29 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.58, i32 noundef %38) #12
  %39 = load ptr, ptr %1, align 4
  tail call void @clk_disable(ptr noundef %39) #11
  tail call void @clk_unprepare(ptr noundef %39) #11
  br label %40

40:                                               ; preds = %37, %33, %27, %16, %10
  %41 = phi i32 [ %12, %10 ], [ %18, %16 ], [ %28, %27 ], [ %38, %37 ], [ 0, %33 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xilinx_mcdma_irq_handler(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %1, i32 0, i32 13
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 2
  %6 = select i1 %5, i32 32, i32 40
  %7 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %6, %8
  %10 = load ptr, ptr %1, align 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 %9
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %14 = tail call i32 @llvm.cttz.i32(i32 %13, i1 true), !range !16
  %15 = icmp eq i32 %13, 0
  br i1 %15, label %103, label %16

16:                                               ; preds = %2
  %17 = load i32, ptr %3, align 4
  %18 = icmp eq i32 %17, 2
  %19 = load ptr, ptr %1, align 4
  br i1 %18, label %20, label %26

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.xilinx_dma_device, ptr %19, i32 0, i32 7
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.xilinx_dma_config, ptr %22, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = sdiv i32 %24, 2
  br label %26

26:                                               ; preds = %20, %16
  %27 = phi i32 [ %25, %20 ], [ 0, %16 ]
  %28 = add nsw i32 %27, %14
  %29 = getelementptr %struct.xilinx_dma_device, ptr %19, i32 0, i32 3, i32 %28
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %30, i32 0, i32 34
  %32 = load i16, ptr %31, align 4
  %33 = zext i16 %32 to i32
  %34 = shl nuw nsw i32 %33, 6
  %35 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %30, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, 68
  %38 = add i32 %37, %34
  %39 = load ptr, ptr %30, align 4
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr i8, ptr %40, i32 %38
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %43 = and i32 %42, 224
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %103, label %45

45:                                               ; preds = %26
  %46 = load i16, ptr %31, align 4
  %47 = zext i16 %46 to i32
  %48 = shl nuw nsw i32 %47, 6
  %49 = load i32, ptr %35, align 4
  %50 = add i32 %49, 68
  %51 = add i32 %50, %48
  %52 = load ptr, ptr %30, align 4
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr i8, ptr %53, i32 %51
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %43) #11, !srcloc !12
  %55 = and i32 %42, 128
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %87, label %57

57:                                               ; preds = %45
  %58 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %30, i32 0, i32 10
  %59 = load ptr, ptr %58, align 4
  %60 = load i32, ptr %35, align 4
  %61 = add i32 %60, 16
  %62 = load ptr, ptr %30, align 4
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr i8, ptr %63, i32 %61
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %66 = load i16, ptr %31, align 4
  %67 = zext i16 %66 to i32
  %68 = shl nuw nsw i32 %67, 6
  %69 = load i32, ptr %35, align 4
  %70 = add i32 %69, 72
  %71 = add i32 %70, %68
  %72 = load ptr, ptr %30, align 4
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr i8, ptr %73, i32 %71
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %76 = load i16, ptr %31, align 4
  %77 = zext i16 %76 to i32
  %78 = shl nuw nsw i32 %77, 6
  %79 = load i32, ptr %35, align 4
  %80 = add i32 %79, 80
  %81 = add i32 %80, %78
  %82 = load ptr, ptr %30, align 4
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr i8, ptr %83, i32 %81
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %84) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.59, ptr noundef %30, i32 noundef %65, i32 noundef %75, i32 noundef %85) #12
  %86 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %30, i32 0, i32 18
  store i8 1, ptr %86, align 1
  br label %87

87:                                               ; preds = %57, %45
  %88 = and i32 %42, 32
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %30, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %91) #11
  tail call fastcc void @xilinx_dma_complete_descriptor(ptr noundef %30)
  %92 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %30, i32 0, i32 19
  store i8 1, ptr %92, align 4
  %93 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %30, i32 0, i32 32
  %94 = load ptr, ptr %93, align 4
  tail call void %94(ptr noundef %30) #11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !30
  %95 = load i16, ptr %91, align 4
  %96 = add i16 %95, 1
  store i16 %96, ptr %91, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !31
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !32
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !33
  br label %97

97:                                               ; preds = %90, %87
  %98 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %30, i32 0, i32 21, i32 1
  %99 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %98) #11
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.xilinx_dma_chan, ptr %30, i32 0, i32 21
  tail call void @__tasklet_schedule(ptr noundef %102) #11
  br label %103

103:                                              ; preds = %101, %97, %26, %2
  %104 = phi i32 [ 0, %2 ], [ 0, %26 ], [ 1, %97 ], [ 1, %101 ]
  ret i32 %104
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

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
!8 = !{i64 4620888}
!9 = !{i64 2152160341}
!10 = !{i8 0, i8 2}
!11 = !{i64 2152161563}
!12 = !{i64 4620470}
!13 = !{i64 2153390351}
!14 = !{i64 2153390775}
!15 = !{!"auto-init"}
!16 = !{i32 0, i32 33}
!17 = !{i64 2153238067}
!18 = !{!"branch_weights", i32 1, i32 2000}
!19 = !{i64 2153227382}
!20 = !{i64 2153227680}
!21 = !{i64 2153338910}
!22 = !{i64 2153339334}
!23 = !{i64 2153342234}
!24 = !{i64 2153342658}
!25 = !{i64 2153274406}
!26 = !{i64 2153274792}
!27 = !{!"branch_weights", i32 2000, i32 1}
!28 = !{i64 2153345667}
!29 = !{i64 2153346091}
!30 = !{i64 2149120164}
!31 = !{i64 2149115988}
!32 = !{i64 2149116063, i64 2149116090, i64 2149116137, i64 2149116159, i64 2149116187, i64 2149116207}
!33 = !{i64 2149143167}
!34 = !{i64 2153237121, i64 2153237618, i64 2153237158, i64 2153237214, i64 2153237248, i64 2153237272, i64 2153237313, i64 2153237334, i64 2153237362, i64 2153237396}
