; ModuleID = '/llk/IR/drivers/mmc/host/atmel-mci.c_pt.bc'
source_filename = "../drivers/mmc/host/atmel-mci.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.mci_platform_data = type { ptr, ptr, [2 x %struct.mci_slot_pdata] }
%struct.mci_slot_pdata = type { i32, i32, i32, i8, i8 }
%struct.atmel_mci = type { %struct.spinlock, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.atmel_mci_dma, ptr, %struct.dma_slave_config, i32, i32, i32, %struct.tasklet_struct, i32, i32, i32, %struct.list_head, i8, i8, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, [2 x ptr], %struct.atmel_mci_caps, ptr, ptr, ptr }
%struct.atmel_mci_dma = type { ptr, ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.69, i32 }
%union.anon.69 = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.atmel_mci_caps = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, [37 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mmc_supply = type { ptr, ptr }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32 }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.atmel_mci_slot = type { ptr, ptr, i32, i32, ptr, %struct.list_head, i32, i32, i32, i32, i8, %struct.timer_list }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.65, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.67, ptr, %struct.address_space, %struct.list_head, %union.anon.68, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.65 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.66 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.67 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.68 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__initcall__kmod_atmel_mci__266_2676_atmci_driver_init6 = internal global ptr @atmci_driver_init, section ".initcall6.init", align 4
@atmci_driver = internal global %struct.platform_driver { ptr @atmci_probe, ptr @atmci_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @atmci_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atmci_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_atmci_driver_exit = internal global ptr @atmci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description267 = internal constant [61 x i8] c"atmel_mci.description=Atmel Multimedia Card Interface driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author268 = internal constant [44 x i8] c"atmel_mci.author=Haavard Skinnemoen (Atmel)\00", section ".modinfo", align 1
@__UNIQUE_ID_file269 = internal constant [42 x i8] c"atmel_mci.file=drivers/mmc/host/atmel-mci\00", section ".modinfo", align 1
@__UNIQUE_ID_license270 = internal constant [25 x i8] c"atmel_mci.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"atmel_mci\00", align 1
@atmci_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,hsmci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@atmci_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atmci_runtime_suspend, ptr @atmci_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"platform data not available\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"mci_clk\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"using PDC\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"using PIO\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"init failed: no slot defined\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"buffer allocation failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"Atmel MCI controller at 0x%08lx irq %d, %u slots\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"device node not found\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"reg property is missing for %pOF\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"can't have more than %d slots\0A\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"bus-width\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"cd-gpios\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"cd-inverted\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"non-removable\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"wp-gpios\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"drivers/mmc/host/atmel-mci.c\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.18 = private unnamed_addr constant [15 x i8] c"version: 0x%x\0A\00", align 1
@.str.19 = private unnamed_addr constant [49 x i8] c"Unmanaged mci version, set minimum capabilities\0A\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"rxtx\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"using %s for DMA transfers\0A\00", align 1
@atmci_ops = internal constant %struct.mmc_host_ops { ptr null, ptr null, ptr @atmci_request, ptr null, ptr @atmci_set_ios, ptr @atmci_get_ro, ptr @atmci_get_cd, ptr @atmci_enable_sdio_irq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.22 = private unnamed_addr constant [11 x i8] c"mmc_detect\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"mmc_wp\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"mmc-detect\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"clock %u too fast; using %lu\0A\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"clock %u too slow; using %lu\0A\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"regs\00", align 1
@atmci_regs_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @atmci_regs_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.28 = private unnamed_addr constant [4 x i8] c"req\00", align 1
@atmci_req_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @atmci_req_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.29 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"pending_events\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"completed_events\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"MR:\090x%08x%s%s \00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c" RDPROOF\00", align 1
@.str.34 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.35 = private unnamed_addr constant [9 x i8] c" WRPROOF\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"{CLKDIV,CLKODD}=%u\0A\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"CLKDIV=%u\0A\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"DTOR:\090x%08x\0A\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"SDCR:\090x%08x\0A\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"ARGR:\090x%08x\0A\00", align 1
@.str.41 = private unnamed_addr constant [32 x i8] c"BLKR:\090x%08x BCNT=%u BLKLEN=%u\0A\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"CSTOR:\090x%08x\0A\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"SR\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"IMR\00", align 1
@.str.45 = private unnamed_addr constant [36 x i8] c"DMA:\090x%08x OFFSET=%u CHKSIZE=%u%s\0A\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c" DMAEN\00", align 1
@.str.47 = private unnamed_addr constant [21 x i8] c"CFG:\090x%08x%s%s%s%s\0A\00", align 1
@.str.48 = private unnamed_addr constant [19 x i8] c" FIFOMODE_ONE_DATA\00", align 1
@.str.49 = private unnamed_addr constant [24 x i8] c" FERRCTRL_CLEAR_ON_READ\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c" HSMODE\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c" LSYNC\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@atmci_show_status_reg.sr_bit = internal unnamed_addr constant [32 x ptr] [ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr null, ptr null, ptr @.str.62, ptr null, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr null, ptr null, ptr @.str.77, ptr @.str.78], align 4
@.str.52 = private unnamed_addr constant [7 x i8] c"CMDRDY\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"RXRDY\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"TXRDY\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"BLKE\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"DTIP\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"NOTBUSY\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"ENDRX\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"ENDTX\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"SDIOIRQA\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"SDIOIRQB\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"SDIOWAIT\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"RXBUFF\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"TXBUFE\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"RINDE\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"RDIRE\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"RCRCE\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"RENDE\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"RTOE\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"DCRCE\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"DTOE\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"CSTOE\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"BLKOVRE\00", align 1
@.str.74 = private unnamed_addr constant [8 x i8] c"DMADONE\00", align 1
@.str.75 = private unnamed_addr constant [10 x i8] c"FIFOEMPTY\00", align 1
@.str.76 = private unnamed_addr constant [8 x i8] c"XFRDONE\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"OVRE\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"UNRE\00", align 1
@.str.79 = private unnamed_addr constant [11 x i8] c"%s:\090x%08x\00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.81 = private unnamed_addr constant [9 x i8] c" UNKNOWN\00", align 1
@.str.82 = private unnamed_addr constant [43 x i8] c"CMD%u(0x%x) flg %x rsp %x %x %x %x err %d\0A\00", align 1
@.str.83 = private unnamed_addr constant [33 x i8] c"DATA %u / %u * %u flg %x err %d\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author268, ptr @__UNIQUE_ID_description267, ptr @__UNIQUE_ID_file269, ptr @__UNIQUE_ID_license270, ptr @__exitcall_atmci_driver_exit, ptr @__initcall__kmod_atmel_mci__266_2676_atmci_driver_init6, ptr @atmci_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @atmci_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @atmci_driver, ptr noundef null) #10
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @atmci_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @atmci_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmci_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %218, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %64

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %12 = load ptr, ptr %11, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 0, ptr %2, align 4, !annotation !8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.8) #11
  br label %57

15:                                               ; preds = %10
  %16 = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 40, i32 noundef 3520) #10
  %17 = icmp eq ptr %16, null
  br i1 %17, label %57, label %18

18:                                               ; preds = %15
  %19 = tail call ptr @of_get_next_child(ptr noundef nonnull %12, ptr noundef null) #10
  %20 = icmp eq ptr %19, null
  br i1 %20, label %59, label %21

21:                                               ; preds = %54, %18
  %22 = phi ptr [ %55, %54 ], [ %19, %18 ]
  %23 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %22, ptr noundef nonnull @.str.9, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #10
  %24 = icmp sgt i32 %23, -1
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.10, ptr noundef nonnull %22) #11
  br label %54

26:                                               ; preds = %21
  %27 = load i32, ptr %2, align 4
  %28 = icmp ugt i32 %27, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.11, i32 noundef 2) #11
  call void @of_node_put(ptr noundef nonnull %22) #10
  br label %59

30:                                               ; preds = %26
  %31 = getelementptr %struct.mci_platform_data, ptr %16, i32 0, i32 2, i32 %27
  %32 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %22, ptr noundef nonnull @.str.12, ptr noundef %31, i32 noundef 1, i32 noundef 0) #10
  %33 = icmp sgt i32 %32, -1
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load i32, ptr %2, align 4
  %36 = getelementptr %struct.mci_platform_data, ptr %16, i32 0, i32 2, i32 %35
  store i32 1, ptr %36, align 4
  br label %37

37:                                               ; preds = %34, %30
  %38 = call i32 @of_get_named_gpio_flags(ptr noundef nonnull %22, ptr noundef nonnull @.str.13, i32 noundef 0, ptr noundef null) #10
  %39 = load i32, ptr %2, align 4
  %40 = getelementptr %struct.mci_platform_data, ptr %16, i32 0, i32 2, i32 %39, i32 1
  store i32 %38, ptr %40, align 4
  %41 = call ptr @of_find_property(ptr noundef nonnull %22, ptr noundef nonnull @.str.14, ptr noundef null) #10
  %42 = icmp ne ptr %41, null
  %43 = load i32, ptr %2, align 4
  %44 = getelementptr %struct.mci_platform_data, ptr %16, i32 0, i32 2, i32 %43, i32 3
  %45 = zext i1 %42 to i8
  store i8 %45, ptr %44, align 4
  %46 = call ptr @of_find_property(ptr noundef nonnull %22, ptr noundef nonnull @.str.15, ptr noundef null) #10
  %47 = icmp ne ptr %46, null
  %48 = load i32, ptr %2, align 4
  %49 = getelementptr %struct.mci_platform_data, ptr %16, i32 0, i32 2, i32 %48, i32 4
  %50 = zext i1 %47 to i8
  store i8 %50, ptr %49, align 1
  %51 = call i32 @of_get_named_gpio_flags(ptr noundef nonnull %22, ptr noundef nonnull @.str.16, i32 noundef 0, ptr noundef null) #10
  %52 = load i32, ptr %2, align 4
  %53 = getelementptr %struct.mci_platform_data, ptr %16, i32 0, i32 2, i32 %52, i32 2
  store i32 %51, ptr %53, align 4
  br label %54

54:                                               ; preds = %37, %25
  %55 = call ptr @of_get_next_child(ptr noundef nonnull %12, ptr noundef nonnull %22) #10
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %21

57:                                               ; preds = %15, %14
  %58 = phi ptr [ inttoptr (i32 -12 to ptr), %15 ], [ inttoptr (i32 -22 to ptr), %14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  br label %61

59:                                               ; preds = %54, %29, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  %60 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %60, label %61, label %64

61:                                               ; preds = %59, %57
  %62 = phi ptr [ %58, %57 ], [ %16, %59 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.1) #11
  %63 = ptrtoint ptr %62 to i32
  br label %218

64:                                               ; preds = %59, %5
  %65 = phi ptr [ %8, %5 ], [ %16, %59 ]
  %66 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #10
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %218, label %68

68:                                               ; preds = %64
  %69 = call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 248, i32 noundef 3520) #10
  %70 = icmp eq ptr %69, null
  br i1 %70, label %218, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.atmel_mci, ptr %69, i32 0, i32 32
  store ptr %0, ptr %72, align 4
  store i32 0, ptr %69, align 4
  %73 = getelementptr inbounds %struct.atmel_mci, ptr %69, i32 0, i32 23
  store volatile ptr %73, ptr %73, align 4
  %74 = getelementptr inbounds %struct.atmel_mci, ptr %69, i32 0, i32 23, i32 1
  store ptr %73, ptr %74, align 4
  %75 = call ptr @devm_clk_get(ptr noundef %6, ptr noundef nonnull @.str.2) #10
  %76 = getelementptr inbounds %struct.atmel_mci, ptr %69, i32 0, i32 31
  store ptr %75, ptr %76, align 4
  %77 = icmp ugt ptr %75, inttoptr (i32 -4096 to ptr)
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = ptrtoint ptr %75 to i32
  br label %218

80:                                               ; preds = %71
  %81 = load i32, ptr %3, align 4
  %82 = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 1
  %83 = load i32, ptr %82, align 4
  %84 = sub i32 1, %81
  %85 = add i32 %84, %83
  %86 = call ptr @devm_ioremap(ptr noundef %6, i32 noundef %81, i32 noundef %85) #10
  %87 = getelementptr inbounds %struct.atmel_mci, ptr %69, i32 0, i32 1
  store ptr %86, ptr %87, align 4
  %88 = icmp eq ptr %86, null
  br i1 %88, label %218, label %89

89:                                               ; preds = %80
  %90 = load ptr, ptr %76, align 4
  %91 = call i32 @clk_prepare(ptr noundef %90) #10
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %218

93:                                               ; preds = %89
  %94 = call i32 @clk_enable(ptr noundef %90) #10
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %93
  call void @clk_unprepare(ptr noundef %90) #10
  br label %218

97:                                               ; preds = %93
  %98 = load ptr, ptr %87, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 128) #10, !srcloc !9
  %99 = load ptr, ptr %76, align 4
  %100 = call i32 @clk_get_rate(ptr noundef %99) #10
  %101 = getelementptr inbounds %struct.atmel_mci, ptr %69, i32 0, i32 29
  store i32 %100, ptr %101, align 4
  %102 = load i32, ptr %3, align 4
  %103 = getelementptr inbounds %struct.atmel_mci, ptr %69, i32 0, i32 30
  store i32 %102, ptr %103, align 4
  %104 = getelementptr inbounds %struct.atmel_mci, ptr %69, i32 0, i32 19
  call void @tasklet_setup(ptr noundef %104, ptr noundef nonnull @atmci_tasklet_func) #10
  %105 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %110

108:                                              ; preds = %97
  %109 = load ptr, ptr %6, align 4
  br label %110

110:                                              ; preds = %108, %97
  %111 = phi ptr [ %109, %108 ], [ %106, %97 ]
  %112 = call i32 @request_threaded_irq(i32 noundef %66, ptr noundef nonnull @atmci_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %111, ptr noundef nonnull %69) #10
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %110
  %115 = load ptr, ptr %76, align 4
  call void @clk_disable(ptr noundef %115) #10
  call void @clk_unprepare(ptr noundef %115) #10
  br label %218

116:                                              ; preds = %110
  call fastcc void @atmci_get_cap(ptr noundef nonnull %69)
  %117 = call fastcc i32 @atmci_configure_dma(ptr noundef nonnull %69)
  switch i32 %117, label %118 [
    i32 -517, label %215
    i32 0, label %126
  ]

118:                                              ; preds = %116
  %119 = getelementptr inbounds %struct.atmel_mci, ptr %69, i32 0, i32 34, i32 1
  %120 = load i8, ptr %119, align 1, !range !10
  %121 = icmp eq i8 %120, 0
  %122 = select i1 %121, ptr @.str.4, ptr @.str.3
  %123 = select i1 %121, ptr @atmci_prepare_data, ptr @atmci_prepare_data_pdc
  %124 = select i1 %121, ptr @atmci_submit_data, ptr @atmci_submit_data_pdc
  %125 = select i1 %121, ptr @atmci_stop_transfer, ptr @atmci_stop_transfer_pdc
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %6, ptr noundef nonnull %122) #11
  br label %126

126:                                              ; preds = %118, %116
  %127 = phi ptr [ @atmci_prepare_data_dma, %116 ], [ %123, %118 ]
  %128 = phi ptr [ @atmci_submit_data_dma, %116 ], [ %124, %118 ]
  %129 = phi ptr [ @atmci_stop_transfer_dma, %116 ], [ %125, %118 ]
  %130 = getelementptr inbounds %struct.atmel_mci, ptr %69, i32 0, i32 35
  store ptr %127, ptr %130, align 4
  %131 = getelementptr inbounds %struct.atmel_mci, ptr %69, i32 0, i32 36
  store ptr %128, ptr %131, align 4
  %132 = getelementptr inbounds %struct.atmel_mci, ptr %69, i32 0, i32 37
  store ptr %129, ptr %132, align 4
  %133 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %69, ptr %133, align 8
  %134 = getelementptr inbounds %struct.atmel_mci, ptr %69, i32 0, i32 26
  call void @init_timer_key(ptr noundef %134, ptr noundef nonnull @atmci_timeout_timer, i32 noundef 0, ptr noundef null, ptr noundef null) #10
  %135 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %135) #10, !srcloc !11
  %136 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %135, ptr %135, i32 1, ptr elementtype(i32) %135) #10, !srcloc !12
  %137 = call i32 @__pm_runtime_set_status(ptr noundef %6, i32 noundef 0) #10
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %6, i32 noundef 50) #10
  call void @__pm_runtime_use_autosuspend(ptr noundef %6, i1 noundef zeroext true) #10
  call void @pm_runtime_enable(ptr noundef %6) #10
  %138 = getelementptr inbounds %struct.mci_platform_data, ptr %65, i32 0, i32 2
  %139 = load i32, ptr %138, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %151, label %141

141:                                              ; preds = %126
  %142 = call fastcc i32 @atmci_init_slot(ptr noundef nonnull %69, ptr noundef %138, i32 noundef 0, i32 noundef 0, i32 noundef 256)
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %141
  %145 = getelementptr inbounds %struct.atmel_mci, ptr %69, i32 0, i32 33
  %146 = load ptr, ptr %145, align 4
  %147 = load ptr, ptr %146, align 4
  %148 = getelementptr inbounds %struct.mmc_host, ptr %147, i32 0, i32 23
  %149 = load i32, ptr %148, align 16
  %150 = getelementptr inbounds %struct.atmel_mci, ptr %69, i32 0, i32 6
  store i32 %149, ptr %150, align 4
  br label %151

151:                                              ; preds = %144, %141, %126
  %152 = phi i1 [ true, %141 ], [ false, %144 ], [ true, %126 ]
  %153 = phi i32 [ 1, %141 ], [ 2, %144 ], [ 1, %126 ]
  %154 = phi i32 [ %142, %141 ], [ 0, %144 ], [ -19, %126 ]
  %155 = getelementptr %struct.mci_platform_data, ptr %65, i32 0, i32 2, i32 1
  %156 = load i32, ptr %155, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %171, label %158

158:                                              ; preds = %151
  %159 = call fastcc i32 @atmci_init_slot(ptr noundef nonnull %69, ptr noundef %155, i32 noundef 1, i32 noundef 1, i32 noundef 512)
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %171

161:                                              ; preds = %158
  %162 = getelementptr %struct.atmel_mci, ptr %69, i32 0, i32 33, i32 1
  %163 = load ptr, ptr %162, align 4
  %164 = load ptr, ptr %163, align 4
  %165 = getelementptr inbounds %struct.mmc_host, ptr %164, i32 0, i32 23
  %166 = load i32, ptr %165, align 16
  %167 = getelementptr inbounds %struct.atmel_mci, ptr %69, i32 0, i32 6
  %168 = load i32, ptr %167, align 4
  %169 = icmp ugt i32 %166, %168
  br i1 %169, label %170, label %174

170:                                              ; preds = %161
  store i32 %166, ptr %167, align 4
  br label %174

171:                                              ; preds = %158, %151
  %172 = phi i32 [ %159, %158 ], [ %154, %151 ]
  br i1 %152, label %173, label %174

173:                                              ; preds = %171
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.5) #11
  br label %202

174:                                              ; preds = %171, %170, %161
  %175 = phi i32 [ 1, %171 ], [ %153, %170 ], [ %153, %161 ]
  %176 = getelementptr inbounds %struct.atmel_mci, ptr %69, i32 0, i32 34, i32 5
  %177 = load i8, ptr %176, align 1, !range !10
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %179, label %190

179:                                              ; preds = %174
  %180 = getelementptr inbounds %struct.atmel_mci, ptr %69, i32 0, i32 6
  %181 = load i32, ptr %180, align 4
  %182 = getelementptr inbounds %struct.atmel_mci, ptr %69, i32 0, i32 7
  %183 = call ptr @dma_alloc_attrs(ptr noundef %6, i32 noundef %181, ptr noundef %182, i32 noundef 3264, i32 noundef 0) #10
  %184 = getelementptr inbounds %struct.atmel_mci, ptr %69, i32 0, i32 5
  store ptr %183, ptr %184, align 4
  %185 = icmp eq ptr %183, null
  br i1 %185, label %186, label %190

186:                                              ; preds = %179
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.6) #11
  %187 = getelementptr %struct.atmel_mci, ptr %69, i32 0, i32 33, i32 0
  %188 = load ptr, ptr %187, align 4
  %189 = icmp eq ptr %188, null
  br i1 %189, label %197, label %196

190:                                              ; preds = %179, %174
  %191 = load i32, ptr %103, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %6, ptr noundef nonnull @.str.7, i32 noundef %191, i32 noundef %66, i32 noundef %175) #11
  %192 = load ptr, ptr %72, align 4
  %193 = call i64 @ktime_get_mono_fast_ns() #10
  %194 = getelementptr inbounds %struct.platform_device, ptr %192, i32 0, i32 3, i32 11, i32 22
  store volatile i64 %193, ptr %194, align 8
  %195 = call i32 @__pm_runtime_suspend(ptr noundef %6, i32 noundef 13) #10
  br label %218

196:                                              ; preds = %186
  call fastcc void @atmci_cleanup_slot(ptr noundef nonnull %188, i32 noundef 0)
  br label %197

197:                                              ; preds = %196, %186
  %198 = getelementptr %struct.atmel_mci, ptr %69, i32 0, i32 33, i32 1
  %199 = load ptr, ptr %198, align 4
  %200 = icmp eq ptr %199, null
  br i1 %200, label %202, label %201

201:                                              ; preds = %197
  call fastcc void @atmci_cleanup_slot(ptr noundef nonnull %199, i32 noundef 1)
  br label %202

202:                                              ; preds = %201, %197, %173
  %203 = phi i32 [ %172, %173 ], [ -12, %201 ], [ -12, %197 ]
  %204 = load ptr, ptr %76, align 4
  call void @clk_disable(ptr noundef %204) #10
  call void @clk_unprepare(ptr noundef %204) #10
  call void @__pm_runtime_disable(ptr noundef %6, i1 noundef zeroext true) #10
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %135) #10, !srcloc !11
  %205 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %135, ptr %135, i32 0, i32 -1, ptr elementtype(i32) %135) #10, !srcloc !14
  %206 = extractvalue { i32, i32, i32 } %205, 0
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %209, label %208

208:                                              ; preds = %202
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !15
  br label %209

209:                                              ; preds = %208, %202
  %210 = call i32 @del_timer_sync(ptr noundef %134) #10
  %211 = getelementptr inbounds %struct.atmel_mci, ptr %69, i32 0, i32 13
  %212 = load ptr, ptr %211, align 4
  %213 = icmp ugt ptr %212, inttoptr (i32 -4096 to ptr)
  br i1 %213, label %215, label %214

214:                                              ; preds = %209
  call void @dma_release_channel(ptr noundef %212) #10
  br label %215

215:                                              ; preds = %214, %209, %116
  %216 = phi i32 [ %117, %116 ], [ %203, %209 ], [ %203, %214 ]
  %217 = call ptr @free_irq(i32 noundef %66, ptr noundef nonnull %69) #10
  br label %218

218:                                              ; preds = %215, %190, %114, %96, %89, %80, %78, %68, %64, %61, %1
  %219 = phi i32 [ %79, %78 ], [ %112, %114 ], [ %216, %215 ], [ 0, %190 ], [ %63, %61 ], [ -6, %1 ], [ %66, %64 ], [ -12, %68 ], [ -12, %80 ], [ %94, %96 ], [ %91, %89 ]
  ret i32 %219
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmci_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #10
  %6 = getelementptr inbounds %struct.atmel_mci, ptr %3, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.atmel_mci, ptr %3, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.atmel_mci, ptr %3, i32 0, i32 7
  %13 = load i32, ptr %12, align 4
  tail call void @dma_free_attrs(ptr noundef %4, i32 noundef %11, ptr noundef nonnull %7, i32 noundef %13, i32 noundef 0) #10
  br label %14

14:                                               ; preds = %9, %1
  %15 = getelementptr %struct.atmel_mci, ptr %3, i32 0, i32 33, i32 0
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call fastcc void @atmci_cleanup_slot(ptr noundef nonnull %16, i32 noundef 0)
  br label %19

19:                                               ; preds = %18, %14
  %20 = getelementptr %struct.atmel_mci, ptr %3, i32 0, i32 33, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call fastcc void @atmci_cleanup_slot(ptr noundef nonnull %21, i32 noundef 1)
  br label %24

24:                                               ; preds = %23, %19
  %25 = getelementptr inbounds %struct.atmel_mci, ptr %3, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i8, ptr %26, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 -1) #10, !srcloc !9
  %28 = load ptr, ptr %25, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 2) #10, !srcloc !9
  %29 = load ptr, ptr %25, align 4
  %30 = getelementptr i8, ptr %29, i32 64
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #10, !srcloc !16
  %32 = getelementptr inbounds %struct.atmel_mci, ptr %3, i32 0, i32 26
  %33 = tail call i32 @del_timer_sync(ptr noundef %32) #10
  %34 = getelementptr inbounds %struct.atmel_mci, ptr %3, i32 0, i32 13
  %35 = load ptr, ptr %34, align 4
  %36 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %38, label %37

37:                                               ; preds = %24
  tail call void @dma_release_channel(ptr noundef %35) #10
  br label %38

38:                                               ; preds = %37, %24
  %39 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #10
  %40 = tail call ptr @free_irq(i32 noundef %39, ptr noundef %3) #10
  %41 = getelementptr inbounds %struct.atmel_mci, ptr %3, i32 0, i32 31
  %42 = load ptr, ptr %41, align 4
  tail call void @clk_disable(ptr noundef %42) #10
  tail call void @clk_unprepare(ptr noundef %42) #10
  tail call void @__pm_runtime_disable(ptr noundef %4, i1 noundef zeroext true) #10
  %43 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %43) #10, !srcloc !11
  %44 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %43, ptr %43, i32 0, i32 -1, ptr elementtype(i32) %43) #10, !srcloc !14
  %45 = extractvalue { i32, i32, i32 } %44, 0
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %38
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !15
  br label %48

48:                                               ; preds = %47, %38
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmci_tasklet_func(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -124
  %3 = getelementptr i8, ptr %0, i32 -88
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 -80
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %0, i32 32
  tail call void @_raw_spin_lock(ptr noundef %2) #10
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr i8, ptr %0, i32 24
  %10 = getelementptr i8, ptr %0, i32 -84
  %11 = getelementptr inbounds %struct.mmc_data, ptr %6, i32 0, i32 3
  %12 = getelementptr inbounds %struct.mmc_data, ptr %6, i32 0, i32 2
  %13 = getelementptr inbounds %struct.mmc_data, ptr %6, i32 0, i32 7
  %14 = getelementptr inbounds %struct.mmc_data, ptr %6, i32 0, i32 5
  %15 = getelementptr inbounds %struct.mmc_request, ptr %4, i32 0, i32 3
  %16 = getelementptr i8, ptr %0, i32 -12
  %17 = getelementptr i8, ptr %0, i32 -120
  %18 = getelementptr i8, ptr %0, i32 109
  %19 = getelementptr i8, ptr %0, i32 45
  %20 = getelementptr i8, ptr %0, i32 120
  %21 = getelementptr i8, ptr %0, i32 28
  %22 = getelementptr inbounds %struct.mmc_data, ptr %6, i32 0, i32 8
  %23 = getelementptr i8, ptr %0, i32 -4
  %24 = getelementptr i8, ptr %0, i32 48
  %25 = getelementptr i8, ptr %0, i32 110
  %26 = getelementptr inbounds %struct.mmc_request, ptr %4, i32 0, i32 1
  %27 = getelementptr inbounds %struct.mmc_request, ptr %4, i32 0, i32 2
  br label %28

28:                                               ; preds = %294, %1
  %29 = phi i32 [ %8, %1 ], [ %295, %294 ]
  switch i32 %29, label %297 [
    i32 5, label %276
    i32 1, label %30
    i32 2, label %108
    i32 3, label %161
    i32 4, label %201
  ]

30:                                               ; preds = %28
  %31 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %9) #10
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %294, label %33

33:                                               ; preds = %30
  store ptr null, ptr %10, align 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %21) #10
  %34 = load ptr, ptr %26, align 4
  %35 = load i32, ptr %16, align 4
  %36 = load ptr, ptr %17, align 4
  %37 = getelementptr i8, ptr %36, i32 32
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #10, !srcloc !16
  %39 = getelementptr inbounds %struct.mmc_command, ptr %34, i32 0, i32 2
  store i32 %38, ptr %39, align 4
  %40 = load ptr, ptr %17, align 4
  %41 = getelementptr i8, ptr %40, i32 32
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #10, !srcloc !16
  %43 = getelementptr %struct.mmc_command, ptr %34, i32 0, i32 2, i32 1
  store i32 %42, ptr %43, align 4
  %44 = load ptr, ptr %17, align 4
  %45 = getelementptr i8, ptr %44, i32 32
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #10, !srcloc !16
  %47 = getelementptr %struct.mmc_command, ptr %34, i32 0, i32 2, i32 2
  store i32 %46, ptr %47, align 4
  %48 = load ptr, ptr %17, align 4
  %49 = getelementptr i8, ptr %48, i32 32
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #10, !srcloc !16
  %51 = getelementptr %struct.mmc_command, ptr %34, i32 0, i32 2, i32 3
  store i32 %50, ptr %51, align 4
  %52 = and i32 %35, 1048576
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %33
  %55 = getelementptr inbounds %struct.mmc_command, ptr %34, i32 0, i32 5
  store i32 -110, ptr %55, align 4
  br label %88

56:                                               ; preds = %33
  %57 = getelementptr inbounds %struct.mmc_command, ptr %34, i32 0, i32 3
  %58 = load i32, ptr %57, align 4
  %59 = and i32 %58, 4
  %60 = icmp eq i32 %59, 0
  %61 = and i32 %35, 262144
  %62 = icmp eq i32 %61, 0
  %63 = select i1 %60, i1 true, i1 %62
  br i1 %63, label %66, label %64

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.mmc_command, ptr %34, i32 0, i32 5
  store i32 -84, ptr %65, align 4
  br label %88

66:                                               ; preds = %56
  %67 = and i32 %35, 720896
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.mmc_command, ptr %34, i32 0, i32 5
  store i32 -5, ptr %70, align 4
  br label %88

71:                                               ; preds = %66
  %72 = load ptr, ptr %3, align 4
  %73 = getelementptr inbounds %struct.mmc_request, ptr %72, i32 0, i32 2
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %86, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.mmc_data, ptr %74, i32 0, i32 2
  %78 = load i32, ptr %77, align 4
  %79 = and i32 %78, 3
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = load i8, ptr %18, align 1, !range !10
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.mmc_command, ptr %34, i32 0, i32 5
  store i32 -22, ptr %85, align 4
  store i8 1, ptr %19, align 1
  br label %88

86:                                               ; preds = %76, %71
  %87 = getelementptr inbounds %struct.mmc_command, ptr %34, i32 0, i32 5
  store i32 0, ptr %87, align 4
  br label %88

88:                                               ; preds = %86, %84, %81, %69, %64, %54
  %89 = load ptr, ptr %27, align 4
  %90 = icmp eq ptr %89, null
  %91 = load ptr, ptr %26, align 4
  br i1 %90, label %100, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.mmc_command, ptr %91, i32 0, i32 5
  %94 = load i32, ptr %93, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %294, label %96

96:                                               ; preds = %92
  %97 = load ptr, ptr %20, align 4
  tail call void %97(ptr noundef %2) #10
  store ptr null, ptr %5, align 4
  %98 = load ptr, ptr %17, align 4
  %99 = getelementptr i8, ptr %98, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 -1067450362) #10, !srcloc !9
  br label %294

100:                                              ; preds = %88
  %101 = getelementptr inbounds %struct.mmc_command, ptr %91, i32 0, i32 3
  %102 = load i32, ptr %101, align 4
  %103 = and i32 %102, 8
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %294, label %105

105:                                              ; preds = %100
  %106 = load ptr, ptr %17, align 4
  %107 = getelementptr i8, ptr %106, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 32) #10, !srcloc !9
  br label %294

108:                                              ; preds = %28
  %109 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %9) #10
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %108
  tail call void @_set_bit(i32 noundef 3, ptr noundef %21) #10
  br label %294

112:                                              ; preds = %108
  %113 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %9) #10
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %294, label %115

115:                                              ; preds = %112
  tail call void @_set_bit(i32 noundef 1, ptr noundef %21) #10
  %116 = load i8, ptr %25, align 2, !range !10
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %115
  %119 = load ptr, ptr %5, align 4
  %120 = getelementptr inbounds %struct.mmc_data, ptr %119, i32 0, i32 6
  %121 = load i32, ptr %120, align 4
  %122 = and i32 %121, 256
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %118, %115
  %125 = load ptr, ptr %17, align 4
  %126 = getelementptr i8, ptr %125, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %126, i32 32) #10, !srcloc !9
  br label %294

127:                                              ; preds = %118
  %128 = load ptr, ptr %3, align 4
  %129 = getelementptr inbounds %struct.mmc_request, ptr %128, i32 0, i32 3
  %130 = load ptr, ptr %129, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %157, label %132

132:                                              ; preds = %127
  %133 = load ptr, ptr %17, align 4
  %134 = getelementptr i8, ptr %133, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %134, i32 1) #10, !srcloc !9
  %135 = load ptr, ptr %22, align 4
  %136 = load i32, ptr %23, align 4
  %137 = getelementptr inbounds %struct.mmc_command, ptr %135, i32 0, i32 6
  %138 = load i32, ptr %137, align 4
  %139 = icmp eq i32 %138, 0
  %140 = select i1 %139, i32 2000, i32 %138
  %141 = load ptr, ptr %10, align 4
  %142 = icmp eq ptr %141, null
  br i1 %142, label %144, label %143, !prof !17

143:                                              ; preds = %132
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 817, i32 noundef 9, ptr noundef null) #10
  br label %144

144:                                              ; preds = %143, %132
  store ptr %135, ptr %10, align 4
  %145 = getelementptr inbounds %struct.mmc_command, ptr %135, i32 0, i32 1
  %146 = load i32, ptr %145, align 4
  %147 = load ptr, ptr %17, align 4
  %148 = getelementptr i8, ptr %147, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %148, i32 %146) #10, !srcloc !9
  %149 = load ptr, ptr %17, align 4
  %150 = getelementptr i8, ptr %149, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %150, i32 %136) #10, !srcloc !9
  %151 = load volatile i32, ptr @jiffies, align 64
  %152 = tail call i32 @__msecs_to_jiffies(i32 noundef %140) #10
  %153 = add i32 %152, %151
  %154 = tail call i32 @mod_timer(ptr noundef %24, i32 noundef %153) #10
  %155 = load ptr, ptr %17, align 4
  %156 = getelementptr i8, ptr %155, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %156, i32 1) #10, !srcloc !9
  br label %294

157:                                              ; preds = %127
  store ptr null, ptr %5, align 4
  %158 = load i32, ptr %11, align 4
  %159 = load i32, ptr %12, align 4
  %160 = mul i32 %159, %158
  store i32 %160, ptr %13, align 4
  store i32 0, ptr %14, align 4
  br label %294

161:                                              ; preds = %28
  %162 = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %9) #10
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %294, label %164

164:                                              ; preds = %161
  tail call void @_set_bit(i32 noundef 2, ptr noundef %21) #10
  %165 = load ptr, ptr %5, align 4
  %166 = icmp eq ptr %165, null
  br i1 %166, label %294, label %167

167:                                              ; preds = %164
  %168 = load ptr, ptr %3, align 4
  %169 = getelementptr inbounds %struct.mmc_request, ptr %168, i32 0, i32 3
  %170 = load ptr, ptr %169, align 4
  %171 = icmp eq ptr %170, null
  br i1 %171, label %197, label %172

172:                                              ; preds = %167
  %173 = load ptr, ptr %17, align 4
  %174 = getelementptr i8, ptr %173, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %174, i32 1) #10, !srcloc !9
  %175 = load ptr, ptr %22, align 4
  %176 = load i32, ptr %23, align 4
  %177 = getelementptr inbounds %struct.mmc_command, ptr %175, i32 0, i32 6
  %178 = load i32, ptr %177, align 4
  %179 = icmp eq i32 %178, 0
  %180 = select i1 %179, i32 2000, i32 %178
  %181 = load ptr, ptr %10, align 4
  %182 = icmp eq ptr %181, null
  br i1 %182, label %184, label %183, !prof !17

183:                                              ; preds = %172
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 817, i32 noundef 9, ptr noundef null) #10
  br label %184

184:                                              ; preds = %183, %172
  store ptr %175, ptr %10, align 4
  %185 = getelementptr inbounds %struct.mmc_command, ptr %175, i32 0, i32 1
  %186 = load i32, ptr %185, align 4
  %187 = load ptr, ptr %17, align 4
  %188 = getelementptr i8, ptr %187, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %188, i32 %186) #10, !srcloc !9
  %189 = load ptr, ptr %17, align 4
  %190 = getelementptr i8, ptr %189, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %190, i32 %176) #10, !srcloc !9
  %191 = load volatile i32, ptr @jiffies, align 64
  %192 = tail call i32 @__msecs_to_jiffies(i32 noundef %180) #10
  %193 = add i32 %192, %191
  %194 = tail call i32 @mod_timer(ptr noundef %24, i32 noundef %193) #10
  %195 = load ptr, ptr %17, align 4
  %196 = getelementptr i8, ptr %195, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %196, i32 1) #10, !srcloc !9
  br label %294

197:                                              ; preds = %167
  store ptr null, ptr %5, align 4
  %198 = load i32, ptr %11, align 4
  %199 = load i32, ptr %12, align 4
  %200 = mul i32 %199, %198
  store i32 %200, ptr %13, align 4
  store i32 0, ptr %14, align 4
  br label %294

201:                                              ; preds = %28
  %202 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %9) #10
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %294, label %204

204:                                              ; preds = %201
  store ptr null, ptr %10, align 4
  %205 = load i32, ptr %11, align 4
  %206 = load i32, ptr %12, align 4
  %207 = mul i32 %206, %205
  store i32 %207, ptr %13, align 4
  store i32 0, ptr %14, align 4
  %208 = load ptr, ptr %15, align 4
  %209 = load i32, ptr %16, align 4
  %210 = load ptr, ptr %17, align 4
  %211 = getelementptr i8, ptr %210, i32 32
  %212 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %211) #10, !srcloc !16
  %213 = getelementptr inbounds %struct.mmc_command, ptr %208, i32 0, i32 2
  store i32 %212, ptr %213, align 4
  %214 = load ptr, ptr %17, align 4
  %215 = getelementptr i8, ptr %214, i32 32
  %216 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %215) #10, !srcloc !16
  %217 = getelementptr %struct.mmc_command, ptr %208, i32 0, i32 2, i32 1
  store i32 %216, ptr %217, align 4
  %218 = load ptr, ptr %17, align 4
  %219 = getelementptr i8, ptr %218, i32 32
  %220 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %219) #10, !srcloc !16
  %221 = getelementptr %struct.mmc_command, ptr %208, i32 0, i32 2, i32 2
  store i32 %220, ptr %221, align 4
  %222 = load ptr, ptr %17, align 4
  %223 = getelementptr i8, ptr %222, i32 32
  %224 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %223) #10, !srcloc !16
  %225 = getelementptr %struct.mmc_command, ptr %208, i32 0, i32 2, i32 3
  store i32 %224, ptr %225, align 4
  %226 = and i32 %209, 1048576
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %230, label %228

228:                                              ; preds = %204
  %229 = getelementptr inbounds %struct.mmc_command, ptr %208, i32 0, i32 5
  store i32 -110, ptr %229, align 4
  br label %262

230:                                              ; preds = %204
  %231 = getelementptr inbounds %struct.mmc_command, ptr %208, i32 0, i32 3
  %232 = load i32, ptr %231, align 4
  %233 = and i32 %232, 4
  %234 = icmp eq i32 %233, 0
  %235 = and i32 %209, 262144
  %236 = icmp eq i32 %235, 0
  %237 = select i1 %234, i1 true, i1 %236
  br i1 %237, label %240, label %238

238:                                              ; preds = %230
  %239 = getelementptr inbounds %struct.mmc_command, ptr %208, i32 0, i32 5
  store i32 -84, ptr %239, align 4
  br label %262

240:                                              ; preds = %230
  %241 = and i32 %209, 720896
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %245, label %243

243:                                              ; preds = %240
  %244 = getelementptr inbounds %struct.mmc_command, ptr %208, i32 0, i32 5
  store i32 -5, ptr %244, align 4
  br label %262

245:                                              ; preds = %240
  %246 = load ptr, ptr %3, align 4
  %247 = getelementptr inbounds %struct.mmc_request, ptr %246, i32 0, i32 2
  %248 = load ptr, ptr %247, align 4
  %249 = icmp eq ptr %248, null
  br i1 %249, label %260, label %250

250:                                              ; preds = %245
  %251 = getelementptr inbounds %struct.mmc_data, ptr %248, i32 0, i32 2
  %252 = load i32, ptr %251, align 4
  %253 = and i32 %252, 3
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %260, label %255

255:                                              ; preds = %250
  %256 = load i8, ptr %18, align 1, !range !10
  %257 = icmp eq i8 %256, 0
  br i1 %257, label %262, label %258

258:                                              ; preds = %255
  %259 = getelementptr inbounds %struct.mmc_command, ptr %208, i32 0, i32 5
  store i32 -22, ptr %259, align 4
  store i8 1, ptr %19, align 1
  br label %262

260:                                              ; preds = %250, %245
  %261 = getelementptr inbounds %struct.mmc_command, ptr %208, i32 0, i32 5
  store i32 0, ptr %261, align 4
  br label %262

262:                                              ; preds = %260, %258, %255, %243, %238, %228
  %263 = load ptr, ptr %15, align 4
  %264 = getelementptr inbounds %struct.mmc_command, ptr %263, i32 0, i32 5
  %265 = load i32, ptr %264, align 4
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %271, label %267

267:                                              ; preds = %262
  %268 = load ptr, ptr %20, align 4
  tail call void %268(ptr noundef %2) #10
  %269 = load ptr, ptr %17, align 4
  %270 = getelementptr i8, ptr %269, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %270, i32 -1067450362) #10, !srcloc !9
  br label %274

271:                                              ; preds = %262
  %272 = load ptr, ptr %17, align 4
  %273 = getelementptr i8, ptr %272, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %273, i32 32) #10, !srcloc !9
  br label %274

274:                                              ; preds = %271, %267
  %275 = phi i32 [ 5, %267 ], [ 3, %271 ]
  store ptr null, ptr %5, align 4
  br label %294

276:                                              ; preds = %28
  %277 = load ptr, ptr %17, align 4
  %278 = getelementptr i8, ptr %277, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %278, i32 -1067450362) #10, !srcloc !9
  %279 = getelementptr i8, ptr %0, i32 -8
  %280 = load i32, ptr %279, align 4
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %292, label %282, !prof !17

282:                                              ; preds = %276
  %283 = load ptr, ptr %20, align 4
  tail call void %283(ptr noundef %2) #10
  store ptr null, ptr %5, align 4
  %284 = icmp eq ptr %6, null
  br i1 %284, label %292, label %285

285:                                              ; preds = %282
  %286 = and i32 %280, 4194304
  %287 = icmp eq i32 %286, 0
  %288 = and i32 %280, 2097152
  %289 = icmp eq i32 %288, 0
  %290 = select i1 %289, i32 -5, i32 -84
  %291 = select i1 %287, i32 %290, i32 -110
  store i32 %291, ptr %14, align 4
  br label %292

292:                                              ; preds = %285, %282, %276
  %293 = load ptr, ptr %3, align 4
  tail call fastcc void @atmci_request_end(ptr noundef %2, ptr noundef %293)
  br label %298

294:                                              ; preds = %274, %201, %197, %184, %164, %161, %157, %144, %124, %112, %111, %105, %100, %96, %92, %30
  %295 = phi i32 [ %275, %274 ], [ 4, %201 ], [ 4, %184 ], [ 5, %197 ], [ 3, %161 ], [ 5, %111 ], [ 3, %124 ], [ 4, %144 ], [ 5, %157 ], [ 2, %112 ], [ 5, %96 ], [ 3, %105 ], [ 1, %30 ], [ 2, %92 ], [ 5, %100 ], [ 5, %164 ]
  %296 = icmp eq i32 %295, %29
  br i1 %296, label %297, label %28

297:                                              ; preds = %294, %28
  store i32 %29, ptr %7, align 4
  br label %298

298:                                              ; preds = %297, %292
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  %299 = load i16, ptr %2, align 4
  %300 = add i16 %299, 1
  store i16 %300, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmci_interrupt(i32 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.atmel_mci, ptr %1, i32 0, i32 1
  %6 = getelementptr inbounds %struct.atmel_mci, ptr %1, i32 0, i32 17
  %7 = getelementptr inbounds %struct.atmel_mci, ptr %1, i32 0, i32 20
  %8 = getelementptr inbounds %struct.atmel_mci, ptr %1, i32 0, i32 19, i32 1
  %9 = getelementptr inbounds %struct.atmel_mci, ptr %1, i32 0, i32 19
  %10 = getelementptr inbounds %struct.atmel_mci, ptr %1, i32 0, i32 12
  %11 = getelementptr inbounds %struct.atmel_mci, ptr %1, i32 0, i32 2
  %12 = getelementptr inbounds %struct.atmel_mci, ptr %1, i32 0, i32 4
  %13 = getelementptr inbounds %struct.atmel_mci, ptr %1, i32 0, i32 11
  %14 = getelementptr inbounds %struct.atmel_mci, ptr %1, i32 0, i32 3
  %15 = getelementptr inbounds %struct.atmel_mci, ptr %1, i32 0, i32 16
  %16 = getelementptr %struct.atmel_mci, ptr %1, i32 0, i32 33, i32 0
  %17 = getelementptr %struct.atmel_mci, ptr %1, i32 0, i32 33, i32 1
  br label %18

18:                                               ; preds = %337, %2
  %19 = phi i32 [ 0, %2 ], [ %338, %337 ]
  %20 = load ptr, ptr %5, align 4
  %21 = getelementptr i8, ptr %20, i32 64
  %22 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #10, !srcloc !16
  %23 = load ptr, ptr %5, align 4
  %24 = getelementptr i8, ptr %23, i32 76
  %25 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #10, !srcloc !16
  %26 = and i32 %25, %22
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %340, label %28

28:                                               ; preds = %18
  %29 = and i32 %26, -1067450368
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %5, align 4
  %33 = getelementptr i8, ptr %32, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 -1067401018) #10, !srcloc !9
  store i32 %22, ptr %6, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #10, !srcloc !22
  call void @_set_bit(i32 noundef 3, ptr noundef %7) #10
  %34 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %8) #10
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  call void @__tasklet_schedule(ptr noundef %9) #10
  br label %37

37:                                               ; preds = %36, %31, %28
  %38 = and i32 %26, 32768
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %57, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr %5, align 4
  %42 = getelementptr i8, ptr %41, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 32768) #10, !srcloc !9
  %43 = load ptr, ptr %5, align 4
  %44 = getelementptr i8, ptr %43, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 128) #10, !srcloc !9
  %45 = load i32, ptr %10, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %40
  call fastcc void @atmci_pdc_set_single_buf(ptr noundef %1, i32 noundef 1, i32 noundef 0) #10
  %48 = load i32, ptr %10, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  call fastcc void @atmci_pdc_set_single_buf(ptr noundef %1, i32 noundef 1, i32 noundef 1) #10
  br label %51

51:                                               ; preds = %50, %47
  %52 = load ptr, ptr %5, align 4
  %53 = getelementptr i8, ptr %52, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 128) #10, !srcloc !9
  %54 = load ptr, ptr %5, align 4
  %55 = getelementptr i8, ptr %54, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 32768) #10, !srcloc !9
  br label %68

56:                                               ; preds = %40
  call fastcc void @atmci_pdc_complete(ptr noundef %1)
  br label %68

57:                                               ; preds = %37
  %58 = and i32 %26, 128
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %57
  %61 = load ptr, ptr %5, align 4
  %62 = getelementptr i8, ptr %61, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 128) #10, !srcloc !9
  %63 = load i32, ptr %10, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %60
  call fastcc void @atmci_pdc_set_single_buf(ptr noundef %1, i32 noundef 1, i32 noundef 1)
  %66 = load ptr, ptr %5, align 4
  %67 = getelementptr i8, ptr %66, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 128) #10, !srcloc !9
  br label %68

68:                                               ; preds = %65, %60, %57, %56, %51
  %69 = and i32 %26, 16384
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %88, label %71

71:                                               ; preds = %68
  %72 = load ptr, ptr %5, align 4
  %73 = getelementptr i8, ptr %72, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 16384) #10, !srcloc !9
  %74 = load ptr, ptr %5, align 4
  %75 = getelementptr i8, ptr %74, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 64) #10, !srcloc !9
  %76 = load i32, ptr %10, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %87, label %78

78:                                               ; preds = %71
  call fastcc void @atmci_pdc_set_single_buf(ptr noundef %1, i32 noundef 0, i32 noundef 0) #10
  %79 = load i32, ptr %10, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %78
  call fastcc void @atmci_pdc_set_single_buf(ptr noundef %1, i32 noundef 0, i32 noundef 1) #10
  br label %82

82:                                               ; preds = %81, %78
  %83 = load ptr, ptr %5, align 4
  %84 = getelementptr i8, ptr %83, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 64) #10, !srcloc !9
  %85 = load ptr, ptr %5, align 4
  %86 = getelementptr i8, ptr %85, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 16384) #10, !srcloc !9
  br label %99

87:                                               ; preds = %71
  call fastcc void @atmci_pdc_complete(ptr noundef %1)
  br label %99

88:                                               ; preds = %68
  %89 = and i32 %26, 64
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %99, label %91

91:                                               ; preds = %88
  %92 = load ptr, ptr %5, align 4
  %93 = getelementptr i8, ptr %92, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 64) #10, !srcloc !9
  %94 = load i32, ptr %10, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %91
  call fastcc void @atmci_pdc_set_single_buf(ptr noundef %1, i32 noundef 0, i32 noundef 1)
  %97 = load ptr, ptr %5, align 4
  %98 = getelementptr i8, ptr %97, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 64) #10, !srcloc !9
  br label %99

99:                                               ; preds = %96, %91, %88, %87, %82
  %100 = and i32 %26, 8
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %99
  %103 = load ptr, ptr %5, align 4
  %104 = getelementptr i8, ptr %103, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 8) #10, !srcloc !9
  call void asm sideeffect "dmb ishst", "~{memory}"() #10, !srcloc !23
  call void @_set_bit(i32 noundef 2, ptr noundef %7) #10
  %105 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %8) #10
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  call void @__tasklet_schedule(ptr noundef %9) #10
  br label %108

108:                                              ; preds = %107, %102, %99
  %109 = and i32 %26, 32
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %117, label %111

111:                                              ; preds = %108
  %112 = load ptr, ptr %5, align 4
  %113 = getelementptr i8, ptr %112, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %113, i32 32) #10, !srcloc !9
  call void asm sideeffect "dmb ishst", "~{memory}"() #10, !srcloc !24
  call void @_set_bit(i32 noundef 2, ptr noundef %7) #10
  %114 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %8) #10
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  call void @__tasklet_schedule(ptr noundef %9) #10
  br label %117

117:                                              ; preds = %116, %111, %108
  %118 = and i32 %26, 2
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %201, label %120

120:                                              ; preds = %117
  %121 = load ptr, ptr %11, align 4
  %122 = load i32, ptr %12, align 4
  %123 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !8
  br label %124

124:                                              ; preds = %182, %120
  %125 = phi ptr [ %121, %120 ], [ %168, %182 ]
  %126 = phi i32 [ %122, %120 ], [ %169, %182 ]
  %127 = phi i32 [ 0, %120 ], [ %170, %182 ]
  %128 = load ptr, ptr %5, align 4
  %129 = getelementptr i8, ptr %128, i32 48
  %130 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %129) #10, !srcloc !16
  store i32 %130, ptr %4, align 4
  %131 = add i32 %126, 4
  %132 = getelementptr inbounds %struct.scatterlist, ptr %125, i32 0, i32 2
  %133 = load i32, ptr %132, align 4
  %134 = icmp ugt i32 %131, %133
  br i1 %134, label %150, label %135, !prof !25

135:                                              ; preds = %124
  %136 = call i32 @sg_pcopy_from_buffer(ptr noundef %125, i32 noundef 1, ptr noundef nonnull %4, i32 noundef 4, i32 noundef %126) #10
  %137 = add i32 %127, 4
  %138 = load i32, ptr %132, align 4
  %139 = icmp eq i32 %131, %138
  br i1 %139, label %140, label %167

140:                                              ; preds = %135
  %141 = load i32, ptr %125, align 4
  %142 = and i32 %141, -4
  %143 = inttoptr i32 %142 to ptr
  call void @flush_dcache_page(ptr noundef %143) #10
  %144 = call ptr @sg_next(ptr noundef %125) #10
  store ptr %144, ptr %11, align 4
  %145 = load i32, ptr %14, align 4
  %146 = add i32 %145, -1
  store i32 %146, ptr %14, align 4
  %147 = icmp eq ptr %144, null
  %148 = icmp eq i32 %146, 0
  %149 = select i1 %147, i1 true, i1 %148
  br i1 %149, label %191, label %167

150:                                              ; preds = %124
  %151 = sub i32 %133, %126
  %152 = call i32 @sg_pcopy_from_buffer(ptr noundef %125, i32 noundef 1, ptr noundef nonnull %4, i32 noundef %151, i32 noundef %126) #10
  %153 = load i32, ptr %125, align 4
  %154 = and i32 %153, -4
  %155 = inttoptr i32 %154 to ptr
  call void @flush_dcache_page(ptr noundef %155) #10
  %156 = call ptr @sg_next(ptr noundef %125) #10
  store ptr %156, ptr %11, align 4
  %157 = load i32, ptr %14, align 4
  %158 = add i32 %157, -1
  store i32 %158, ptr %14, align 4
  %159 = icmp eq ptr %156, null
  %160 = icmp eq i32 %158, 0
  %161 = select i1 %159, i1 true, i1 %160
  br i1 %161, label %189, label %162

162:                                              ; preds = %150
  %163 = sub i32 4, %151
  %164 = getelementptr i8, ptr %4, i32 %151
  %165 = call i32 @sg_pcopy_from_buffer(ptr noundef nonnull %156, i32 noundef 1, ptr noundef %164, i32 noundef %163, i32 noundef 0) #10
  %166 = add i32 %127, 4
  br label %167

167:                                              ; preds = %162, %140, %135
  %168 = phi ptr [ %125, %135 ], [ %144, %140 ], [ %156, %162 ]
  %169 = phi i32 [ %131, %135 ], [ 0, %140 ], [ %163, %162 ]
  %170 = phi i32 [ %137, %135 ], [ %137, %140 ], [ %166, %162 ]
  %171 = load ptr, ptr %5, align 4
  %172 = getelementptr i8, ptr %171, i32 64
  %173 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %172) #10, !srcloc !16
  %174 = and i32 %173, -1067450368
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %182, label %176

176:                                              ; preds = %167
  %177 = load ptr, ptr %5, align 4
  %178 = getelementptr i8, ptr %177, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %178, i32 -1067450334) #10, !srcloc !9
  store i32 %173, ptr %6, align 4
  %179 = getelementptr inbounds %struct.mmc_data, ptr %123, i32 0, i32 7
  %180 = load i32, ptr %179, align 4
  %181 = add i32 %180, %170
  store i32 %181, ptr %179, align 4
  br label %200

182:                                              ; preds = %167
  %183 = and i32 %173, 2
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %124

185:                                              ; preds = %182
  store i32 %169, ptr %12, align 4
  %186 = getelementptr inbounds %struct.mmc_data, ptr %123, i32 0, i32 7
  %187 = load i32, ptr %186, align 4
  %188 = add i32 %187, %170
  store i32 %188, ptr %186, align 4
  br label %200

189:                                              ; preds = %150
  %190 = add i32 %151, %127
  br label %191

191:                                              ; preds = %189, %140
  %192 = phi i32 [ %190, %189 ], [ %137, %140 ]
  %193 = load ptr, ptr %5, align 4
  %194 = getelementptr i8, ptr %193, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %194, i32 2) #10, !srcloc !9
  %195 = load ptr, ptr %5, align 4
  %196 = getelementptr i8, ptr %195, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %196, i32 32) #10, !srcloc !9
  %197 = getelementptr inbounds %struct.mmc_data, ptr %123, i32 0, i32 7
  %198 = load i32, ptr %197, align 4
  %199 = add i32 %198, %192
  store i32 %199, ptr %197, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #10, !srcloc !26
  call void @_set_bit(i32 noundef 1, ptr noundef %7) #10
  br label %200

200:                                              ; preds = %191, %185, %176
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  br label %201

201:                                              ; preds = %200, %117
  %202 = and i32 %26, 4
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %285, label %204

204:                                              ; preds = %201
  %205 = load ptr, ptr %11, align 4
  %206 = load i32, ptr %12, align 4
  %207 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 0, ptr %3, align 4, !annotation !8
  br label %208

208:                                              ; preds = %268, %204
  %209 = phi ptr [ %205, %204 ], [ %254, %268 ]
  %210 = phi i32 [ %206, %204 ], [ %255, %268 ]
  %211 = phi i32 [ 0, %204 ], [ %256, %268 ]
  %212 = add i32 %210, 4
  %213 = getelementptr inbounds %struct.scatterlist, ptr %209, i32 0, i32 2
  %214 = load i32, ptr %213, align 4
  %215 = icmp ugt i32 %212, %214
  br i1 %215, label %231, label %216, !prof !25

216:                                              ; preds = %208
  %217 = call i32 @sg_pcopy_to_buffer(ptr noundef %209, i32 noundef 1, ptr noundef nonnull %3, i32 noundef 4, i32 noundef %210) #10
  %218 = load i32, ptr %3, align 4
  %219 = load ptr, ptr %5, align 4
  %220 = getelementptr i8, ptr %219, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %220, i32 %218) #10, !srcloc !9
  %221 = add i32 %211, 4
  %222 = load i32, ptr %213, align 4
  %223 = icmp eq i32 %212, %222
  br i1 %223, label %224, label %253

224:                                              ; preds = %216
  %225 = call ptr @sg_next(ptr noundef %209) #10
  store ptr %225, ptr %11, align 4
  %226 = load i32, ptr %14, align 4
  %227 = add i32 %226, -1
  store i32 %227, ptr %14, align 4
  %228 = icmp eq ptr %225, null
  %229 = icmp eq i32 %227, 0
  %230 = select i1 %228, i1 true, i1 %229
  br i1 %230, label %275, label %253

231:                                              ; preds = %208
  %232 = sub i32 %214, %210
  store i32 0, ptr %3, align 4
  %233 = call i32 @sg_pcopy_to_buffer(ptr noundef %209, i32 noundef 1, ptr noundef nonnull %3, i32 noundef %232, i32 noundef %210) #10
  %234 = call ptr @sg_next(ptr noundef %209) #10
  store ptr %234, ptr %11, align 4
  %235 = load i32, ptr %14, align 4
  %236 = add i32 %235, -1
  store i32 %236, ptr %14, align 4
  %237 = icmp eq ptr %234, null
  %238 = icmp eq i32 %236, 0
  %239 = select i1 %237, i1 true, i1 %238
  br i1 %239, label %248, label %240

240:                                              ; preds = %231
  %241 = sub i32 4, %232
  %242 = getelementptr i8, ptr %3, i32 %232
  %243 = call i32 @sg_pcopy_to_buffer(ptr noundef nonnull %234, i32 noundef 1, ptr noundef %242, i32 noundef %241, i32 noundef 0) #10
  %244 = load i32, ptr %3, align 4
  %245 = load ptr, ptr %5, align 4
  %246 = getelementptr i8, ptr %245, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %246, i32 %244) #10, !srcloc !9
  %247 = add i32 %211, 4
  br label %253

248:                                              ; preds = %231
  %249 = add i32 %232, %211
  %250 = load i32, ptr %3, align 4
  %251 = load ptr, ptr %5, align 4
  %252 = getelementptr i8, ptr %251, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %252, i32 %250) #10, !srcloc !9
  br label %275

253:                                              ; preds = %240, %224, %216
  %254 = phi ptr [ %209, %216 ], [ %225, %224 ], [ %234, %240 ]
  %255 = phi i32 [ %212, %216 ], [ 0, %224 ], [ %241, %240 ]
  %256 = phi i32 [ %221, %216 ], [ %221, %224 ], [ %247, %240 ]
  %257 = load ptr, ptr %5, align 4
  %258 = getelementptr i8, ptr %257, i32 64
  %259 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %258) #10, !srcloc !16
  %260 = and i32 %259, -1067450368
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %268, label %262

262:                                              ; preds = %253
  %263 = load ptr, ptr %5, align 4
  %264 = getelementptr i8, ptr %263, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %264, i32 -1067450332) #10, !srcloc !9
  store i32 %259, ptr %6, align 4
  %265 = getelementptr inbounds %struct.mmc_data, ptr %207, i32 0, i32 7
  %266 = load i32, ptr %265, align 4
  %267 = add i32 %266, %256
  store i32 %267, ptr %265, align 4
  br label %284

268:                                              ; preds = %253
  %269 = and i32 %259, 4
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %208

271:                                              ; preds = %268
  store i32 %255, ptr %12, align 4
  %272 = getelementptr inbounds %struct.mmc_data, ptr %207, i32 0, i32 7
  %273 = load i32, ptr %272, align 4
  %274 = add i32 %273, %256
  store i32 %274, ptr %272, align 4
  br label %284

275:                                              ; preds = %248, %224
  %276 = phi i32 [ %249, %248 ], [ %221, %224 ]
  %277 = load ptr, ptr %5, align 4
  %278 = getelementptr i8, ptr %277, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %278, i32 4) #10, !srcloc !9
  %279 = load ptr, ptr %5, align 4
  %280 = getelementptr i8, ptr %279, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %280, i32 32) #10, !srcloc !9
  %281 = getelementptr inbounds %struct.mmc_data, ptr %207, i32 0, i32 7
  %282 = load i32, ptr %281, align 4
  %283 = add i32 %282, %276
  store i32 %283, ptr %281, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #10, !srcloc !27
  call void @_set_bit(i32 noundef 1, ptr noundef %7) #10
  br label %284

284:                                              ; preds = %275, %271, %262
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  br label %285

285:                                              ; preds = %284, %201
  %286 = and i32 %26, 1
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %294, label %288

288:                                              ; preds = %285
  %289 = load ptr, ptr %5, align 4
  %290 = getelementptr i8, ptr %289, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %290, i32 1) #10, !srcloc !9
  store i32 %22, ptr %15, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #10, !srcloc !28
  call void @_set_bit(i32 noundef 0, ptr noundef %7) #10
  %291 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %8) #10
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %294

293:                                              ; preds = %288
  call void @__tasklet_schedule(ptr noundef %9) #10
  br label %294

294:                                              ; preds = %293, %288, %285
  %295 = and i32 %26, 768
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %337, label %297

297:                                              ; preds = %294
  %298 = load ptr, ptr %16, align 4
  %299 = icmp eq ptr %298, null
  br i1 %299, label %317, label %300

300:                                              ; preds = %297
  %301 = getelementptr inbounds %struct.atmel_mci_slot, ptr %298, i32 0, i32 3
  %302 = load i32, ptr %301, align 4
  %303 = and i32 %302, %22
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %317, label %305

305:                                              ; preds = %300
  %306 = load ptr, ptr %298, align 4
  %307 = getelementptr inbounds %struct.mmc_host, ptr %306, i32 0, i32 3
  %308 = load ptr, ptr %307, align 4
  %309 = getelementptr inbounds %struct.mmc_host_ops, ptr %308, i32 0, i32 7
  %310 = load ptr, ptr %309, align 4
  call void %310(ptr noundef %306, i32 noundef 0) #10
  %311 = getelementptr inbounds %struct.mmc_host, ptr %306, i32 0, i32 49
  store i8 1, ptr %311, align 8
  %312 = getelementptr inbounds %struct.mmc_host, ptr %306, i32 0, i32 47
  %313 = load ptr, ptr %312, align 8
  %314 = icmp eq ptr %313, null
  br i1 %314, label %317, label %315

315:                                              ; preds = %305
  %316 = call i32 @wake_up_process(ptr noundef nonnull %313) #10
  br label %317

317:                                              ; preds = %315, %305, %300, %297
  %318 = load ptr, ptr %17, align 4
  %319 = icmp eq ptr %318, null
  br i1 %319, label %337, label %320

320:                                              ; preds = %317
  %321 = getelementptr inbounds %struct.atmel_mci_slot, ptr %318, i32 0, i32 3
  %322 = load i32, ptr %321, align 4
  %323 = and i32 %322, %22
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %337, label %325

325:                                              ; preds = %320
  %326 = load ptr, ptr %318, align 4
  %327 = getelementptr inbounds %struct.mmc_host, ptr %326, i32 0, i32 3
  %328 = load ptr, ptr %327, align 4
  %329 = getelementptr inbounds %struct.mmc_host_ops, ptr %328, i32 0, i32 7
  %330 = load ptr, ptr %329, align 4
  call void %330(ptr noundef %326, i32 noundef 0) #10
  %331 = getelementptr inbounds %struct.mmc_host, ptr %326, i32 0, i32 49
  store i8 1, ptr %331, align 8
  %332 = getelementptr inbounds %struct.mmc_host, ptr %326, i32 0, i32 47
  %333 = load ptr, ptr %332, align 8
  %334 = icmp eq ptr %333, null
  br i1 %334, label %337, label %335

335:                                              ; preds = %325
  %336 = call i32 @wake_up_process(ptr noundef nonnull %333) #10
  br label %337

337:                                              ; preds = %335, %325, %320, %317, %294
  %338 = add nuw nsw i32 %19, 1
  %339 = icmp eq i32 %338, 6
  br i1 %339, label %340, label %18

340:                                              ; preds = %337, %18
  %341 = phi i32 [ 6, %337 ], [ %19, %18 ]
  %342 = icmp ne i32 %341, 0
  %343 = zext i1 %342 to i32
  ret i32 %343
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @atmci_get_cap(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 252
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #10, !srcloc !16
  %6 = and i32 %5, 4095
  %7 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 32
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.18, i32 noundef %6) #11
  %10 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 34
  store i8 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 34, i32 1
  store i8 1, ptr %11, align 1
  %12 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 34, i32 2
  %13 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 34, i32 3
  %14 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 34, i32 4
  %15 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 34, i32 5
  %16 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 34, i32 7
  call void @llvm.memset.p0.i64(ptr noundef align 2 dereferenceable(5) %12, i8 0, i64 5, i1 false)
  store i8 1, ptr %16, align 1
  %17 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 34, i32 8
  store i8 1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 34, i32 9
  store i8 1, ptr %18, align 1
  %19 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 34, i32 10
  store i8 0, ptr %19, align 2
  %20 = lshr i32 %6, 8
  switch i32 %20, label %26 [
    i32 6, label %21
    i32 5, label %21
    i32 4, label %23
    i32 3, label %23
    i32 2, label %24
    i32 1, label %25
    i32 0, label %29
  ]

21:                                               ; preds = %1, %1
  %22 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 34, i32 6
  store i8 1, ptr %22, align 2
  br label %23

23:                                               ; preds = %21, %1, %1
  store i8 1, ptr %10, align 4
  store i8 0, ptr %11, align 1
  store i8 1, ptr %12, align 2
  store i8 1, ptr %13, align 1
  store i8 1, ptr %14, align 4
  br label %24

24:                                               ; preds = %23, %1
  store i8 1, ptr %15, align 1
  store i8 0, ptr %18, align 1
  store i8 1, ptr %19, align 2
  br label %25

25:                                               ; preds = %24, %1
  store i8 0, ptr %16, align 1
  store i8 0, ptr %17, align 4
  br label %29

26:                                               ; preds = %1
  store i8 0, ptr %11, align 1
  %27 = load ptr, ptr %7, align 4
  %28 = getelementptr inbounds %struct.platform_device, ptr %27, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %28, ptr noundef nonnull @.str.19) #11
  br label %29

29:                                               ; preds = %26, %25, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @atmci_configure_dma(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = alloca %struct.dma_cap_mask_t, align 4
  %3 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 32
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %6 = tail call ptr @dma_request_chan(ptr noundef %5, ptr noundef nonnull @.str.20) #10
  %7 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 13
  store ptr %6, ptr %7, align 4
  %8 = icmp eq ptr %6, inttoptr (i32 -19 to ptr)
  br i1 %8, label %9, label %25

9:                                                ; preds = %1
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3, i32 7
  %12 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.mci_platform_data, ptr %12, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  store i32 0, ptr %2, align 4
  call void @_set_bit(i32 noundef 11, ptr noundef nonnull %2) #10
  %19 = load ptr, ptr %15, align 4
  %20 = load ptr, ptr %12, align 4
  %21 = call ptr @__dma_request_channel(ptr noundef nonnull %2, ptr noundef %19, ptr noundef %20, ptr noundef null) #10
  %22 = icmp eq ptr %21, null
  %23 = select i1 %22, ptr inttoptr (i32 -19 to ptr), ptr %21
  store ptr %23, ptr %7, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  br label %25

24:                                               ; preds = %14, %9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  br label %54

25:                                               ; preds = %18, %1
  %26 = phi ptr [ %23, %18 ], [ %6, %1 ]
  %27 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = ptrtoint ptr %26 to i32
  br label %54

30:                                               ; preds = %25
  %31 = load ptr, ptr %3, align 4
  %32 = getelementptr inbounds %struct.platform_device, ptr %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.dma_chan, ptr %26, i32 0, i32 5
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.dma_chan_dev, ptr %34, i32 0, i32 1, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.dma_chan_dev, ptr %34, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  br label %41

41:                                               ; preds = %38, %30
  %42 = phi ptr [ %40, %38 ], [ %36, %30 ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %32, ptr noundef nonnull @.str.21, ptr noundef %42) #11
  %43 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 30
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, 48
  %46 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 15, i32 1
  store i32 %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 15, i32 3
  store i32 4, ptr %47, align 4
  %48 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 15, i32 5
  store i32 1, ptr %48, align 4
  %49 = add i32 %44, 52
  %50 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 15, i32 2
  store i32 %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 15, i32 4
  store i32 4, ptr %51, align 4
  %52 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 15, i32 6
  store i32 1, ptr %52, align 4
  %53 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 15, i32 9
  store i8 0, ptr %53, align 4
  br label %54

54:                                               ; preds = %41, %28, %24
  %55 = phi i32 [ -19, %24 ], [ %29, %28 ], [ 0, %41 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmci_prepare_data_dma(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 5
  store i32 -115, ptr %3, align 4
  %4 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7, !prof !17

7:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 1103, i32 noundef 9, ptr noundef null) #10
  br label %8

8:                                                ; preds = %7, %2
  %9 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 2
  store ptr null, ptr %9, align 4
  store ptr %1, ptr %4, align 4
  %10 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = mul i32 %13, %11
  %15 = icmp ult i32 %14, 16
  br i1 %15, label %16, label %39

16:                                               ; preds = %8
  store i32 -115, ptr %3, align 4
  %17 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 12
  %18 = load ptr, ptr %17, align 4
  store ptr %18, ptr %9, align 4
  %19 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 10
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 3
  store i32 %20, ptr %21, align 4
  store ptr %1, ptr %4, align 4
  %22 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 14
  store ptr null, ptr %22, align 4
  %23 = load i32, ptr %10, align 4
  %24 = load i32, ptr %12, align 4
  %25 = mul i32 %24, %23
  %26 = icmp ugt i32 %25, 11
  %27 = and i32 %25, 3
  %28 = icmp eq i32 %27, 0
  %29 = and i1 %26, %28
  br i1 %29, label %32, label %30

30:                                               ; preds = %16
  %31 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 25
  store i8 1, ptr %31, align 1
  br label %32

32:                                               ; preds = %30, %16
  %33 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 4
  store i32 0, ptr %33, align 4
  %34 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 6
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, 512
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, i32 -1067450364, i32 -1067450366
  br label %210

39:                                               ; preds = %8
  %40 = and i32 %13, 3
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %65, label %42

42:                                               ; preds = %39
  store i32 -115, ptr %3, align 4
  %43 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 12
  %44 = load ptr, ptr %43, align 4
  store ptr %44, ptr %9, align 4
  %45 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 10
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 3
  store i32 %46, ptr %47, align 4
  store ptr %1, ptr %4, align 4
  %48 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 14
  store ptr null, ptr %48, align 4
  %49 = load i32, ptr %10, align 4
  %50 = load i32, ptr %12, align 4
  %51 = mul i32 %50, %49
  %52 = icmp ugt i32 %51, 11
  %53 = and i32 %51, 3
  %54 = icmp eq i32 %53, 0
  %55 = and i1 %52, %54
  br i1 %55, label %58, label %56

56:                                               ; preds = %42
  %57 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 25
  store i8 1, ptr %57, align 1
  br label %58

58:                                               ; preds = %56, %42
  %59 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 4
  store i32 0, ptr %59, align 4
  %60 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 6
  %61 = load i32, ptr %60, align 4
  %62 = and i32 %61, 512
  %63 = icmp eq i32 %62, 0
  %64 = select i1 %63, i32 -1067450364, i32 -1067450366
  br label %210

65:                                               ; preds = %39
  %66 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 12
  %67 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 10
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %110, label %70

70:                                               ; preds = %65
  %71 = load ptr, ptr %66, align 4
  br label %72

72:                                               ; preds = %105, %70
  %73 = phi i32 [ %106, %105 ], [ 0, %70 ]
  %74 = phi ptr [ %107, %105 ], [ %71, %70 ]
  %75 = getelementptr inbounds %struct.scatterlist, ptr %74, i32 0, i32 1
  %76 = load i32, ptr %75, align 4
  %77 = and i32 %76, 3
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %72
  %80 = getelementptr inbounds %struct.scatterlist, ptr %74, i32 0, i32 2
  %81 = load i32, ptr %80, align 4
  %82 = and i32 %81, 3
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %105, label %84

84:                                               ; preds = %79, %72
  store i32 -115, ptr %3, align 4
  %85 = load ptr, ptr %66, align 4
  store ptr %85, ptr %9, align 4
  %86 = load i32, ptr %67, align 4
  %87 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 3
  store i32 %86, ptr %87, align 4
  store ptr %1, ptr %4, align 4
  %88 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 14
  store ptr null, ptr %88, align 4
  %89 = load i32, ptr %10, align 4
  %90 = load i32, ptr %12, align 4
  %91 = mul i32 %90, %89
  %92 = icmp ugt i32 %91, 11
  %93 = and i32 %91, 3
  %94 = icmp eq i32 %93, 0
  %95 = and i1 %92, %94
  br i1 %95, label %98, label %96

96:                                               ; preds = %84
  %97 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 25
  store i8 1, ptr %97, align 1
  br label %98

98:                                               ; preds = %96, %84
  %99 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 4
  store i32 0, ptr %99, align 4
  %100 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 6
  %101 = load i32, ptr %100, align 4
  %102 = and i32 %101, 512
  %103 = icmp eq i32 %102, 0
  %104 = select i1 %103, i32 -1067450364, i32 -1067450366
  br label %210

105:                                              ; preds = %79
  %106 = add nuw i32 %73, 1
  %107 = tail call ptr @sg_next(ptr noundef %74) #10
  %108 = load i32, ptr %67, align 4
  %109 = icmp ult i32 %106, %108
  br i1 %109, label %72, label %110

110:                                              ; preds = %105, %65
  %111 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 13
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %210, label %114

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 14
  store ptr %112, ptr %115, align 4
  %116 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 6
  %117 = load i32, ptr %116, align 4
  %118 = and i32 %117, 512
  %119 = icmp eq i32 %118, 0
  %120 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 15
  br i1 %119, label %136, label %121

121:                                              ; preds = %114
  store i32 2, ptr %120, align 4
  %122 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 15, i32 5
  %123 = load i32, ptr %122, align 4
  %124 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 1
  %125 = load ptr, ptr %124, align 4
  %126 = getelementptr i8, ptr %125, i32 252
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %126) #10, !srcloc !16
  %128 = icmp ugt i32 %123, 1
  br i1 %128, label %129, label %151

129:                                              ; preds = %121
  %130 = and i32 %127, 3584
  %131 = icmp ugt i32 %130, 1535
  %132 = select i1 %131, i32 -1, i32 -2
  %133 = tail call i32 @llvm.ctlz.i32(i32 %123, i1 true) #10, !range !29
  %134 = sub nuw nsw i32 32, %133
  %135 = add nsw i32 %134, %132
  br label %151

136:                                              ; preds = %114
  store i32 1, ptr %120, align 4
  %137 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 15, i32 6
  %138 = load i32, ptr %137, align 4
  %139 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 1
  %140 = load ptr, ptr %139, align 4
  %141 = getelementptr i8, ptr %140, i32 252
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %141) #10, !srcloc !16
  %143 = icmp ugt i32 %138, 1
  br i1 %143, label %144, label %151

144:                                              ; preds = %136
  %145 = and i32 %142, 3584
  %146 = icmp ugt i32 %145, 1535
  %147 = select i1 %146, i32 -1, i32 -2
  %148 = tail call i32 @llvm.ctlz.i32(i32 %138, i1 true) #10, !range !29
  %149 = sub nuw nsw i32 32, %148
  %150 = add nsw i32 %149, %147
  br label %151

151:                                              ; preds = %144, %136, %129, %121
  %152 = phi i32 [ 2, %121 ], [ 2, %129 ], [ 1, %136 ], [ 1, %144 ]
  %153 = phi i32 [ 0, %121 ], [ %135, %129 ], [ 0, %136 ], [ %150, %144 ]
  %154 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 34
  %155 = load i8, ptr %154, align 4, !range !10
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %163, label %157

157:                                              ; preds = %151
  %158 = shl nsw i32 %153, 4
  %159 = or i32 %158, 256
  %160 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 1
  %161 = load ptr, ptr %160, align 4
  %162 = getelementptr i8, ptr %161, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %162, i32 %159) #10, !srcloc !9
  br label %163

163:                                              ; preds = %157, %151
  %164 = load ptr, ptr %112, align 4
  %165 = getelementptr inbounds %struct.dma_device, ptr %164, i32 0, i32 15
  %166 = load ptr, ptr %165, align 4
  %167 = load ptr, ptr %66, align 4
  %168 = load i32, ptr %67, align 4
  %169 = load i32, ptr %116, align 4
  %170 = and i32 %169, 256
  %171 = icmp eq i32 %170, 0
  %172 = select i1 %171, i32 2, i32 1
  %173 = tail call i32 @dma_map_sg_attrs(ptr noundef %166, ptr noundef %167, i32 noundef %168, i32 noundef %172, i32 noundef 0) #10
  %174 = load ptr, ptr %112, align 4
  %175 = getelementptr inbounds %struct.dma_device, ptr %174, i32 0, i32 44
  %176 = load ptr, ptr %175, align 4
  %177 = icmp eq ptr %176, null
  br i1 %177, label %182, label %178

178:                                              ; preds = %163
  %179 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 15
  %180 = tail call i32 %176(ptr noundef nonnull %112, ptr noundef %179) #10
  %181 = load ptr, ptr %112, align 4
  br label %182

182:                                              ; preds = %178, %163
  %183 = phi ptr [ %181, %178 ], [ %174, %163 ]
  %184 = load ptr, ptr %66, align 4
  %185 = icmp eq ptr %183, null
  br i1 %185, label %200, label %186

186:                                              ; preds = %182
  %187 = getelementptr inbounds %struct.dma_device, ptr %183, i32 0, i32 39
  %188 = load ptr, ptr %187, align 4
  %189 = icmp eq ptr %188, null
  br i1 %189, label %200, label %190

190:                                              ; preds = %186
  %191 = tail call ptr %188(ptr noundef nonnull %112, ptr noundef %184, i32 noundef %173, i32 noundef %152, i32 noundef 3, ptr noundef null) #10
  %192 = icmp eq ptr %191, null
  br i1 %192, label %193, label %196

193:                                              ; preds = %190
  %194 = load ptr, ptr %112, align 4
  %195 = load ptr, ptr %66, align 4
  br label %200

196:                                              ; preds = %190
  %197 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 13, i32 1
  store ptr %191, ptr %197, align 4
  %198 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %191, i32 0, i32 6
  store ptr @atmci_dma_complete, ptr %198, align 4
  %199 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %191, i32 0, i32 8
  store ptr %0, ptr %199, align 4
  br label %210

200:                                              ; preds = %193, %186, %182
  %201 = phi ptr [ %195, %193 ], [ %184, %182 ], [ %184, %186 ]
  %202 = phi ptr [ %194, %193 ], [ null, %182 ], [ %183, %186 ]
  %203 = getelementptr inbounds %struct.dma_device, ptr %202, i32 0, i32 15
  %204 = load ptr, ptr %203, align 4
  %205 = load i32, ptr %67, align 4
  %206 = load i32, ptr %116, align 4
  %207 = and i32 %206, 256
  %208 = icmp eq i32 %207, 0
  %209 = select i1 %208, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %204, ptr noundef %201, i32 noundef %205, i32 noundef %209, i32 noundef 0) #10
  br label %210

210:                                              ; preds = %200, %196, %110, %98, %58, %32
  %211 = phi i32 [ %38, %32 ], [ %64, %58 ], [ %104, %98 ], [ -1067450368, %196 ], [ -12, %200 ], [ -19, %110 ]
  ret i32 %211
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmci_submit_data_dma(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 14
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 13, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %8, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef %8) #10
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr inbounds %struct.dma_device, ptr %12, i32 0, i32 50
  %14 = load ptr, ptr %13, align 4
  tail call void %14(ptr noundef nonnull %4) #10
  br label %15

15:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmci_stop_transfer_dma(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %31, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr inbounds %struct.dma_device, ptr %6, i32 0, i32 47
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = tail call i32 %8(ptr noundef nonnull %3) #10
  br label %12

12:                                               ; preds = %10, %5
  %13 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 11
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %36, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 13
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.dma_device, ptr %19, i32 0, i32 15
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.mmc_data, ptr %14, i32 0, i32 12
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.mmc_data, ptr %14, i32 0, i32 10
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.mmc_data, ptr %14, i32 0, i32 6
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 256
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %21, ptr noundef %23, i32 noundef %25, i32 noundef %30, i32 noundef 0) #10
  br label %36

31:                                               ; preds = %1
  %32 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 20
  tail call void @_set_bit(i32 noundef 1, ptr noundef %32) #10
  %33 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr i8, ptr %34, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 32) #10, !srcloc !9
  br label %36

36:                                               ; preds = %31, %16, %12
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmci_prepare_data_pdc(ptr nocapture noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 5
  store i32 -115, ptr %3, align 4
  %4 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 11
  store ptr %1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 12
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 2
  store ptr %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 27
  %9 = load i32, ptr %8, align 4
  %10 = or i32 %9, 32768
  %11 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %10) #10, !srcloc !9
  %14 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = load ptr, ptr %11, align 4
  %17 = getelementptr i8, ptr %16, i32 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #10, !srcloc !16
  %19 = and i32 %18, 65535
  %20 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = shl i32 %21, 16
  %23 = or i32 %22, %19
  %24 = load ptr, ptr %11, align 4
  %25 = getelementptr i8, ptr %24, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #10, !srcloc !9
  %26 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = load i32, ptr %20, align 4
  %29 = mul i32 %28, %27
  %30 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 12
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 32
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.platform_device, ptr %32, i32 0, i32 3
  %34 = load ptr, ptr %5, align 4
  %35 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 10
  %36 = load i32, ptr %35, align 4
  %37 = load i32, ptr %14, align 4
  %38 = and i32 %37, 256
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i32 2, i32 1
  %41 = tail call i32 @dma_map_sg_attrs(ptr noundef %33, ptr noundef %34, i32 noundef %36, i32 noundef %40, i32 noundef 0) #10
  %42 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 34, i32 5
  %43 = load i8, ptr %42, align 1, !range !10
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %75

45:                                               ; preds = %2
  %46 = load ptr, ptr %4, align 4
  %47 = getelementptr inbounds %struct.mmc_data, ptr %46, i32 0, i32 6
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, 256
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %75, label %51

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.mmc_data, ptr %46, i32 0, i32 12
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.mmc_data, ptr %46, i32 0, i32 10
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 5
  %57 = load ptr, ptr %56, align 4
  %58 = load i32, ptr %30, align 4
  %59 = tail call i32 @sg_copy_to_buffer(ptr noundef %53, i32 noundef %55, ptr noundef %57, i32 noundef %58) #10
  %60 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 34, i32 7
  %61 = load i8, ptr %60, align 1, !range !10
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %75, label %63

63:                                               ; preds = %51
  %64 = load i32, ptr %30, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %88, label %66

66:                                               ; preds = %66, %63
  %67 = phi i32 [ %72, %66 ], [ 0, %63 ]
  %68 = load ptr, ptr %56, align 4
  %69 = getelementptr i32, ptr %68, i32 %67
  %70 = load i32, ptr %69, align 4
  %71 = tail call i32 @llvm.bswap.i32(i32 %70)
  store i32 %71, ptr %69, align 4
  %72 = add nuw i32 %67, 1
  %73 = load i32, ptr %30, align 4
  %74 = icmp ult i32 %72, %73
  br i1 %74, label %66, label %77

75:                                               ; preds = %51, %45, %2
  %76 = load i32, ptr %30, align 4
  br label %77

77:                                               ; preds = %75, %66
  %78 = phi i32 [ %76, %75 ], [ %73, %66 ]
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %88, label %80

80:                                               ; preds = %77
  %81 = load i32, ptr %14, align 4
  %82 = lshr i32 %81, 9
  %83 = and i32 %82, 1
  %84 = xor i32 %83, 1
  tail call fastcc void @atmci_pdc_set_single_buf(ptr noundef %0, i32 noundef %84, i32 noundef 0) #10
  %85 = load i32, ptr %30, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %80
  tail call fastcc void @atmci_pdc_set_single_buf(ptr noundef %0, i32 noundef %84, i32 noundef 1) #10
  br label %88

88:                                               ; preds = %87, %80, %77, %63
  %89 = and i32 %15, 512
  %90 = icmp eq i32 %89, 0
  %91 = select i1 %90, i32 -1067417464, i32 -1067433920
  ret i32 %91
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmci_submit_data_pdc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 6
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 512
  %6 = icmp eq i32 %5, 0
  %7 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 288
  br i1 %6, label %11, label %10

10:                                               ; preds = %2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 1) #10, !srcloc !9
  br label %12

11:                                               ; preds = %2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 256) #10, !srcloc !9
  br label %12

12:                                               ; preds = %11, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmci_stop_transfer_pdc(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 514) #10, !srcloc !9
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @atmci_prepare_data(ptr nocapture noundef writeonly %0, ptr noundef %1) #5 {
  %3 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 5
  store i32 -115, ptr %3, align 4
  %4 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 2
  store ptr %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 10
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 3
  store i32 %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 11
  store ptr %1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 14
  store ptr null, ptr %11, align 4
  %12 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = mul i32 %15, %13
  %17 = icmp ugt i32 %16, 11
  %18 = and i32 %16, 3
  %19 = icmp eq i32 %18, 0
  %20 = and i1 %17, %19
  br i1 %20, label %23, label %21

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 25
  store i8 1, ptr %22, align 1
  br label %23

23:                                               ; preds = %21, %2
  %24 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 4
  store i32 0, ptr %24, align 4
  %25 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 6
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 512
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, i32 -1067450364, i32 -1067450366
  ret i32 %29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @atmci_submit_data(ptr nocapture noundef %0, ptr nocapture noundef %1) #6 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmci_stop_transfer(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 20
  tail call void @_set_bit(i32 noundef 1, ptr noundef %2) #10
  %3 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 32) #10, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmci_timeout_timer(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -172
  %3 = getelementptr i8, ptr %0, i32 -136
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mmc_request, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mmc_command, ptr %6, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.mmc_data, ptr %8, i32 0, i32 5
  store i32 -110, ptr %11, align 4
  %12 = getelementptr i8, ptr %0, i32 -128
  store ptr null, ptr %12, align 4
  %13 = getelementptr i8, ptr %0, i32 -16
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %22

16:                                               ; preds = %10
  %17 = getelementptr i8, ptr %0, i32 72
  %18 = load ptr, ptr %17, align 4
  tail call void %18(ptr noundef %2) #10
  br label %22

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.mmc_command, ptr %6, i32 0, i32 5
  store i32 -110, ptr %20, align 4
  %21 = getelementptr i8, ptr %0, i32 -132
  store ptr null, ptr %21, align 4
  br label %22

22:                                               ; preds = %19, %16, %10
  %23 = getelementptr i8, ptr %0, i32 -3
  store i8 1, ptr %23, align 1
  %24 = getelementptr i8, ptr %0, i32 -16
  store i32 5, ptr %24, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #10, !srcloc !30
  %25 = getelementptr i8, ptr %0, i32 -44
  %26 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %25) #10
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = getelementptr i8, ptr %0, i32 -48
  tail call void @__tasklet_schedule(ptr noundef %29) #10
  br label %30

30:                                               ; preds = %28, %22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @atmci_init_slot(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #2 {
  %6 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 32
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %9 = tail call ptr @mmc_alloc_host(i32 noundef 68, ptr noundef %8) #10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %137, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.mmc_host, ptr %9, i32 0, i32 68
  store ptr %9, ptr %12, align 4
  %13 = getelementptr inbounds %struct.atmel_mci_slot, ptr %12, i32 0, i32 1
  store ptr %0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.mci_slot_pdata, ptr %1, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.mmc_host, ptr %9, i32 1, i32 1, i32 0, i32 6
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.mci_slot_pdata, ptr %1, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.mmc_host, ptr %9, i32 1, i32 1, i32 0, i32 7
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.mci_slot_pdata, ptr %1, i32 0, i32 3
  %21 = load i8, ptr %20, align 4, !range !10
  %22 = getelementptr inbounds %struct.mmc_host, ptr %9, i32 1, i32 1, i32 1
  store i8 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.mmc_host, ptr %9, i32 1, i32 1
  store i32 %3, ptr %23, align 4
  %24 = getelementptr inbounds %struct.mmc_host, ptr %9, i32 1, i32 1, i32 0, i32 1
  store i32 %4, ptr %24, align 4
  %25 = getelementptr inbounds %struct.mmc_host, ptr %9, i32 0, i32 3
  store ptr @atmci_ops, ptr %25, align 4
  %26 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 29
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, 511
  %29 = lshr i32 %28, 9
  %30 = getelementptr inbounds %struct.mmc_host, ptr %9, i32 0, i32 5
  store i32 %29, ptr %30, align 4
  %31 = load i32, ptr %26, align 4
  %32 = lshr i32 %31, 1
  %33 = getelementptr inbounds %struct.mmc_host, ptr %9, i32 0, i32 6
  store i32 %32, ptr %33, align 16
  %34 = getelementptr inbounds %struct.mmc_host, ptr %9, i32 0, i32 8
  store i32 3145728, ptr %34, align 8
  %35 = getelementptr inbounds %struct.mmc_host, ptr %9, i32 0, i32 16
  %36 = load i32, ptr %35, align 8
  %37 = or i32 %36, 8
  store i32 %37, ptr %35, align 8
  %38 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 34, i32 4
  %39 = load i8, ptr %38, align 4, !range !10
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %11
  %42 = or i32 %36, 12
  store i32 %42, ptr %35, align 8
  br label %43

43:                                               ; preds = %41, %11
  %44 = phi i32 [ %42, %41 ], [ %37, %11 ]
  %45 = load i32, ptr %1, align 4
  %46 = icmp ugt i32 %45, 3
  br i1 %46, label %47, label %57

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 34, i32 5
  %49 = load i8, ptr %48, align 1, !range !10
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %47
  %52 = or i32 %44, 1
  store i32 %52, ptr %35, align 8
  %53 = load i32, ptr %1, align 4
  %54 = icmp ugt i32 %53, 7
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = or i32 %44, 65
  store i32 %56, ptr %35, align 8
  br label %57

57:                                               ; preds = %55, %51, %47, %43
  %58 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr i8, ptr %59, i32 252
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #10, !srcloc !16
  %62 = and i32 %61, 3584
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.mmc_host, ptr %9, i32 0, i32 20
  store i32 1048320, ptr %65, align 8
  br label %66

66:                                               ; preds = %64, %57
  %67 = phi i16 [ 256, %64 ], [ 64, %57 ]
  %68 = phi i32 [ 4095, %64 ], [ 32768, %57 ]
  %69 = phi i32 [ 256, %64 ], [ 512, %57 ]
  %70 = phi i32 [ 1048320, %64 ], [ 16777216, %57 ]
  %71 = getelementptr inbounds %struct.mmc_host, ptr %9, i32 0, i32 21
  store i16 %67, ptr %71, align 4
  %72 = getelementptr inbounds %struct.mmc_host, ptr %9, i32 0, i32 24
  store i32 %68, ptr %72, align 4
  %73 = getelementptr inbounds %struct.mmc_host, ptr %9, i32 0, i32 25
  store i32 %69, ptr %73, align 8
  %74 = getelementptr inbounds %struct.mmc_host, ptr %9, i32 0, i32 23
  store i32 %70, ptr %74, align 16
  %75 = getelementptr inbounds %struct.mmc_host, ptr %9, i32 1, i32 1, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 0, ptr noundef %75) #10
  %76 = load i32, ptr %16, align 4
  %77 = icmp ult i32 %76, 2048
  br i1 %77, label %78, label %95

78:                                               ; preds = %66
  %79 = load ptr, ptr %6, align 4
  %80 = getelementptr inbounds %struct.platform_device, ptr %79, i32 0, i32 3
  %81 = tail call i32 @devm_gpio_request(ptr noundef %80, i32 noundef %76, ptr noundef nonnull @.str.22) #10
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %78
  store i32 -16, ptr %16, align 4
  br label %95

84:                                               ; preds = %78
  %85 = load i32, ptr %16, align 4
  %86 = tail call ptr @gpio_to_desc(i32 noundef %85) #10
  %87 = tail call i32 @gpiod_get_raw_value(ptr noundef %86) #10
  %88 = load i8, ptr %22, align 4, !range !10
  %89 = zext i8 %88 to i32
  %90 = icmp eq i32 %87, %89
  br i1 %90, label %92, label %91

91:                                               ; preds = %84
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %75) #10
  br label %92

92:                                               ; preds = %91, %84
  %93 = load i32, ptr %16, align 4
  %94 = icmp ult i32 %93, 2048
  br i1 %94, label %102, label %95

95:                                               ; preds = %92, %83, %66
  %96 = getelementptr inbounds %struct.mci_slot_pdata, ptr %1, i32 0, i32 4
  %97 = load i8, ptr %96, align 1, !range !10
  %98 = icmp eq i8 %97, 0
  %99 = load i32, ptr %35, align 8
  %100 = select i1 %98, i32 32, i32 256
  %101 = or i32 %99, %100
  store i32 %101, ptr %35, align 8
  br label %102

102:                                              ; preds = %95, %92
  %103 = load i32, ptr %19, align 4
  %104 = icmp ult i32 %103, 2048
  br i1 %104, label %105, label %111

105:                                              ; preds = %102
  %106 = load ptr, ptr %6, align 4
  %107 = getelementptr inbounds %struct.platform_device, ptr %106, i32 0, i32 3
  %108 = tail call i32 @devm_gpio_request(ptr noundef %107, i32 noundef %103, ptr noundef nonnull @.str.23) #10
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %105
  store i32 -16, ptr %19, align 4
  br label %111

111:                                              ; preds = %110, %105, %102
  %112 = getelementptr %struct.atmel_mci, ptr %0, i32 0, i32 33, i32 %2
  store ptr %12, ptr %112, align 4
  %113 = tail call i32 @mmc_regulator_get_supply(ptr noundef nonnull %9) #10
  %114 = tail call i32 @mmc_add_host(ptr noundef nonnull %9) #10
  %115 = load i32, ptr %16, align 4
  %116 = icmp ult i32 %115, 2048
  br i1 %116, label %117, label %125

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct.mmc_host, ptr %9, i32 1, i32 1, i32 2
  tail call void @init_timer_key(ptr noundef %118, ptr noundef nonnull @atmci_detect_change, i32 noundef 0, ptr noundef null, ptr noundef null) #10
  %119 = load i32, ptr %16, align 4
  %120 = tail call ptr @gpio_to_desc(i32 noundef %119) #10
  %121 = tail call i32 @gpiod_to_irq(ptr noundef %120) #10
  %122 = tail call i32 @request_threaded_irq(i32 noundef %121, ptr noundef nonnull @atmci_detect_interrupt, ptr noundef null, i32 noundef 3, ptr noundef nonnull @.str.24, ptr noundef %12) #10
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %117
  store i32 -16, ptr %16, align 4
  br label %125

125:                                              ; preds = %124, %117, %111
  %126 = load ptr, ptr %12, align 4
  %127 = getelementptr inbounds %struct.mmc_host, ptr %126, i32 0, i32 55
  %128 = load ptr, ptr %127, align 4
  %129 = icmp eq ptr %128, null
  br i1 %129, label %137, label %130

130:                                              ; preds = %125
  %131 = load ptr, ptr %13, align 4
  %132 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.27, i16 noundef zeroext 256, ptr noundef nonnull %128, ptr noundef %131, ptr noundef nonnull @atmci_regs_fops) #10
  %133 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.28, i16 noundef zeroext 256, ptr noundef nonnull %128, ptr noundef %12, ptr noundef nonnull @atmci_req_fops) #10
  %134 = getelementptr inbounds %struct.atmel_mci, ptr %131, i32 0, i32 22
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.29, i16 noundef zeroext 256, ptr noundef nonnull %128, ptr noundef %134) #10
  %135 = getelementptr inbounds %struct.atmel_mci, ptr %131, i32 0, i32 20
  tail call void @debugfs_create_x32(ptr noundef nonnull @.str.30, i16 noundef zeroext 256, ptr noundef nonnull %128, ptr noundef %135) #10
  %136 = getelementptr inbounds %struct.atmel_mci, ptr %131, i32 0, i32 21
  tail call void @debugfs_create_x32(ptr noundef nonnull @.str.31, i16 noundef zeroext 256, ptr noundef nonnull %128, ptr noundef %136) #10
  br label %137

137:                                              ; preds = %130, %125, %5
  %138 = phi i32 [ -12, %5 ], [ 0, %125 ], [ 0, %130 ]
  ret i32 %138
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @atmci_cleanup_slot(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.atmel_mci_slot, ptr %0, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 2, ptr noundef %3) #10
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #10, !srcloc !31
  %4 = load ptr, ptr %0, align 4
  tail call void @mmc_remove_host(ptr noundef %4) #10
  %5 = getelementptr inbounds %struct.atmel_mci_slot, ptr %0, i32 0, i32 8
  %6 = load i32, ptr %5, align 4
  %7 = icmp ult i32 %6, 2048
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = tail call ptr @gpio_to_desc(i32 noundef %6) #10
  %10 = tail call i32 @gpiod_to_irq(ptr noundef %9) #10
  %11 = tail call ptr @free_irq(i32 noundef %10, ptr noundef %0) #10
  %12 = getelementptr inbounds %struct.atmel_mci_slot, ptr %0, i32 0, i32 11
  %13 = tail call i32 @del_timer_sync(ptr noundef %12) #10
  br label %14

14:                                               ; preds = %8, %2
  %15 = getelementptr inbounds %struct.atmel_mci_slot, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr %struct.atmel_mci, ptr %16, i32 0, i32 33, i32 %1
  store ptr null, ptr %17, align 4
  %18 = load ptr, ptr %0, align 4
  tail call void @mmc_free_host(ptr noundef %18) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @atmci_request_end(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 11
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13, !prof !17

13:                                               ; preds = %9, %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 1564, i32 noundef 9, ptr noundef null) #10
  br label %14

14:                                               ; preds = %13, %9
  %15 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 26
  %16 = tail call i32 @del_timer(ptr noundef %15) #10
  %17 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 24
  %18 = load i8, ptr %17, align 4, !range !10
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 27
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %22) #10, !srcloc !9
  %26 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 34, i32 2
  %27 = load i8, ptr %26, align 2, !range !10
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 28
  %31 = load i32, ptr %30, align 4
  %32 = load ptr, ptr %23, align 4
  %33 = getelementptr i8, ptr %32, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #10, !srcloc !9
  br label %34

34:                                               ; preds = %29, %20, %14
  %35 = load ptr, ptr %3, align 4
  %36 = getelementptr inbounds %struct.atmel_mci_slot, ptr %35, i32 0, i32 4
  store ptr null, ptr %36, align 4
  %37 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 9
  store ptr null, ptr %37, align 4
  %38 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 23
  %39 = load volatile ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, %38
  br i1 %40, label %48, label %41

41:                                               ; preds = %34
  %42 = getelementptr i8, ptr %39, i32 -20
  %43 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = load ptr, ptr %39, align 4
  %46 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  store ptr %44, ptr %46, align 4
  store volatile ptr %45, ptr %44, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %39, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %43, align 4
  %47 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 22
  store i32 1, ptr %47, align 4
  tail call fastcc void @atmci_start_request(ptr noundef %0, ptr noundef %42)
  br label %50

48:                                               ; preds = %34
  %49 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 22
  store i32 0, ptr %49, align 4
  br label %50

50:                                               ; preds = %48, %41
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  %51 = load i16, ptr %0, align 4
  %52 = add i16 %51, 1
  store i16 %52, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !21
  tail call void @mmc_request_done(ptr noundef %5, ptr noundef %1) #10
  tail call void @_raw_spin_lock(ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @atmci_start_request(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.atmel_mci_slot, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 8
  store ptr %1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 9
  store ptr %4, ptr %6, align 4
  %7 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 20
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 21
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 16
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 17
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 25
  %12 = load i8, ptr %11, align 1, !range !10
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 34, i32 8
  %16 = load i8, ptr %15, align 4, !range !10
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %41, label %18

18:                                               ; preds = %14, %2
  %19 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 76
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #10, !srcloc !16
  %23 = and i32 %22, 768
  %24 = load ptr, ptr %19, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 128) #10, !srcloc !9
  %25 = load ptr, ptr %19, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 1) #10, !srcloc !9
  %26 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 27
  %27 = load i32, ptr %26, align 4
  %28 = load ptr, ptr %19, align 4
  %29 = getelementptr i8, ptr %28, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #10, !srcloc !9
  %30 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 34, i32 2
  %31 = load i8, ptr %30, align 2, !range !10
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %18
  %34 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 28
  %35 = load i32, ptr %34, align 4
  %36 = load ptr, ptr %19, align 4
  %37 = getelementptr i8, ptr %36, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #10, !srcloc !9
  br label %38

38:                                               ; preds = %33, %18
  %39 = load ptr, ptr %19, align 4
  %40 = getelementptr i8, ptr %39, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %23) #10, !srcloc !9
  store i8 0, ptr %11, align 1
  br label %41

41:                                               ; preds = %38, %14
  %42 = getelementptr inbounds %struct.atmel_mci_slot, ptr %1, i32 0, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr i8, ptr %45, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %43) #10, !srcloc !9
  %47 = load ptr, ptr %44, align 4
  %48 = getelementptr i8, ptr %47, i32 76
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #10, !srcloc !16
  %50 = getelementptr inbounds %struct.atmel_mci_slot, ptr %1, i32 0, i32 7
  %51 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %50) #10
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %67, label %53, !prof !17

53:                                               ; preds = %41
  %54 = load ptr, ptr %44, align 4
  %55 = getelementptr i8, ptr %54, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 256) #10, !srcloc !9
  %56 = load ptr, ptr %44, align 4
  %57 = getelementptr i8, ptr %56, i32 64
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #10, !srcloc !16
  %59 = and i32 %58, 1
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %61, %53
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !32
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !33
  %62 = load ptr, ptr %44, align 4
  %63 = getelementptr i8, ptr %62, i32 64
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #10, !srcloc !16
  %65 = and i32 %64, 1
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %61, label %67

67:                                               ; preds = %61, %53, %41
  %68 = getelementptr inbounds %struct.mmc_request, ptr %4, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %134, label %71

71:                                               ; preds = %67
  %72 = load i32, ptr %69, align 4
  %73 = add i32 %72, 999
  %74 = udiv i32 %73, 1000
  %75 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 29
  %76 = load i32, ptr %75, align 4
  %77 = add i32 %76, 1999999
  %78 = udiv i32 %77, 2000000
  %79 = mul i32 %78, %74
  %80 = getelementptr inbounds %struct.mmc_data, ptr %69, i32 0, i32 1
  %81 = load i32, ptr %80, align 4
  %82 = add i32 %79, %81
  %83 = icmp ult i32 %82, 15
  br i1 %83, label %114, label %84

84:                                               ; preds = %71
  %85 = add i32 %82, 15
  %86 = lshr i32 %85, 4
  %87 = icmp ult i32 %85, 240
  br i1 %87, label %114, label %88

88:                                               ; preds = %84
  %89 = add i32 %82, 127
  %90 = lshr i32 %89, 7
  %91 = icmp ult i32 %89, 1920
  br i1 %91, label %114, label %92

92:                                               ; preds = %88
  %93 = add i32 %82, 255
  %94 = lshr i32 %93, 8
  %95 = icmp ult i32 %93, 3840
  br i1 %95, label %114, label %96

96:                                               ; preds = %92
  %97 = add i32 %82, 1023
  %98 = lshr i32 %97, 10
  %99 = icmp ult i32 %97, 15360
  br i1 %99, label %114, label %100

100:                                              ; preds = %96
  %101 = add i32 %82, 4095
  %102 = lshr i32 %101, 12
  %103 = icmp ult i32 %101, 61440
  br i1 %103, label %114, label %104

104:                                              ; preds = %100
  %105 = add i32 %82, 65535
  %106 = lshr i32 %105, 16
  %107 = icmp ult i32 %105, 983040
  br i1 %107, label %114, label %108

108:                                              ; preds = %104
  %109 = add i32 %82, 1048575
  %110 = lshr i32 %109, 20
  %111 = icmp ult i32 %109, 15728640
  %112 = select i1 %111, i32 %110, i32 15
  %113 = select i1 %111, i32 7, i32 8
  br label %114

114:                                              ; preds = %108, %104, %100, %96, %92, %88, %84, %71
  %115 = phi i32 [ %82, %71 ], [ %86, %84 ], [ %90, %88 ], [ %94, %92 ], [ %98, %96 ], [ %102, %100 ], [ %106, %104 ], [ %112, %108 ]
  %116 = phi i32 [ 0, %71 ], [ 1, %84 ], [ 2, %88 ], [ 3, %92 ], [ 4, %96 ], [ 5, %100 ], [ 6, %104 ], [ %113, %108 ]
  %117 = tail call i32 @llvm.umin.i32(i32 %116, i32 7) #10
  %118 = shl nuw nsw i32 %117, 4
  %119 = or i32 %118, %115
  %120 = load ptr, ptr %44, align 4
  %121 = getelementptr i8, ptr %120, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 %119) #10, !srcloc !9
  %122 = getelementptr inbounds %struct.mmc_data, ptr %69, i32 0, i32 3
  %123 = load i32, ptr %122, align 4
  %124 = getelementptr inbounds %struct.mmc_data, ptr %69, i32 0, i32 2
  %125 = load i32, ptr %124, align 4
  %126 = shl i32 %125, 16
  %127 = or i32 %126, %123
  %128 = load ptr, ptr %44, align 4
  %129 = getelementptr i8, ptr %128, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %129, i32 %127) #10, !srcloc !9
  %130 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 35
  %131 = load ptr, ptr %130, align 4
  %132 = tail call i32 %131(ptr noundef %0, ptr noundef nonnull %69) #10
  %133 = or i32 %132, 1
  br label %134

134:                                              ; preds = %114, %67
  %135 = phi i32 [ %133, %114 ], [ 1, %67 ]
  %136 = getelementptr inbounds %struct.mmc_request, ptr %4, i32 0, i32 1
  %137 = load ptr, ptr %136, align 4
  %138 = load ptr, ptr %1, align 4
  %139 = getelementptr inbounds %struct.mmc_command, ptr %137, i32 0, i32 5
  store i32 -115, ptr %139, align 4
  %140 = load i32, ptr %137, align 4
  %141 = getelementptr inbounds %struct.mmc_command, ptr %137, i32 0, i32 3
  %142 = load i32, ptr %141, align 4
  %143 = and i32 %142, 1
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %152, label %145

145:                                              ; preds = %134
  %146 = and i32 %142, 2
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %150, label %148

148:                                              ; preds = %145
  %149 = or i32 %140, 128
  br label %152

150:                                              ; preds = %145
  %151 = or i32 %140, 64
  br label %152

152:                                              ; preds = %150, %148, %134
  %153 = phi i32 [ %149, %148 ], [ %151, %150 ], [ %140, %134 ]
  %154 = getelementptr inbounds %struct.mmc_host, ptr %138, i32 0, i32 28, i32 3
  %155 = load i8, ptr %154, align 4
  %156 = icmp eq i8 %155, 1
  %157 = select i1 %156, i32 6144, i32 4096
  %158 = or i32 %157, %153
  %159 = getelementptr inbounds %struct.mmc_command, ptr %137, i32 0, i32 7
  %160 = load ptr, ptr %159, align 4
  %161 = icmp eq ptr %160, null
  br i1 %161, label %179, label %162

162:                                              ; preds = %152
  %163 = icmp eq i32 %140, 53
  br i1 %163, label %164, label %166

164:                                              ; preds = %162
  %165 = or i32 %158, 2686976
  br label %172

166:                                              ; preds = %162
  %167 = getelementptr inbounds %struct.mmc_data, ptr %160, i32 0, i32 3
  %168 = load i32, ptr %167, align 4
  %169 = icmp ugt i32 %168, 1
  %170 = select i1 %169, i32 589824, i32 65536
  %171 = or i32 %170, %158
  br label %172

172:                                              ; preds = %166, %164
  %173 = phi i32 [ %165, %164 ], [ %171, %166 ]
  %174 = getelementptr inbounds %struct.mmc_data, ptr %160, i32 0, i32 6
  %175 = load i32, ptr %174, align 4
  %176 = shl i32 %175, 9
  %177 = and i32 %176, 262144
  %178 = or i32 %177, %173
  br label %179

179:                                              ; preds = %172, %152
  %180 = phi i32 [ %158, %152 ], [ %178, %172 ]
  %181 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 36
  %182 = load ptr, ptr %181, align 4
  %183 = icmp eq ptr %182, @atmci_submit_data_dma
  br i1 %183, label %205, label %184

184:                                              ; preds = %179
  %185 = getelementptr inbounds %struct.mmc_command, ptr %137, i32 0, i32 6
  %186 = load i32, ptr %185, align 4
  %187 = icmp eq i32 %186, 0
  %188 = select i1 %187, i32 2000, i32 %186
  %189 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 10
  %190 = load ptr, ptr %189, align 4
  %191 = icmp eq ptr %190, null
  br i1 %191, label %193, label %192, !prof !17

192:                                              ; preds = %184
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 817, i32 noundef 9, ptr noundef null) #10
  br label %193

193:                                              ; preds = %192, %184
  store ptr %137, ptr %189, align 4
  %194 = getelementptr inbounds %struct.mmc_command, ptr %137, i32 0, i32 1
  %195 = load i32, ptr %194, align 4
  %196 = load ptr, ptr %44, align 4
  %197 = getelementptr i8, ptr %196, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %197, i32 %195) #10, !srcloc !9
  %198 = load ptr, ptr %44, align 4
  %199 = getelementptr i8, ptr %198, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %199, i32 %180) #10, !srcloc !9
  %200 = load volatile i32, ptr @jiffies, align 64
  %201 = tail call i32 @__msecs_to_jiffies(i32 noundef %188) #10
  %202 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 26
  %203 = add i32 %201, %200
  %204 = tail call i32 @mod_timer(ptr noundef %202, i32 noundef %203) #10
  br label %205

205:                                              ; preds = %193, %179
  br i1 %70, label %208, label %206

206:                                              ; preds = %205
  %207 = load ptr, ptr %181, align 4
  tail call void %207(ptr noundef %0, ptr noundef nonnull %69) #10
  br label %208

208:                                              ; preds = %206, %205
  %209 = load ptr, ptr %181, align 4
  %210 = icmp eq ptr %209, @atmci_submit_data_dma
  br i1 %210, label %211, label %232

211:                                              ; preds = %208
  %212 = getelementptr inbounds %struct.mmc_command, ptr %137, i32 0, i32 6
  %213 = load i32, ptr %212, align 4
  %214 = icmp eq i32 %213, 0
  %215 = select i1 %214, i32 2000, i32 %213
  %216 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 10
  %217 = load ptr, ptr %216, align 4
  %218 = icmp eq ptr %217, null
  br i1 %218, label %220, label %219, !prof !17

219:                                              ; preds = %211
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 817, i32 noundef 9, ptr noundef null) #10
  br label %220

220:                                              ; preds = %219, %211
  store ptr %137, ptr %216, align 4
  %221 = getelementptr inbounds %struct.mmc_command, ptr %137, i32 0, i32 1
  %222 = load i32, ptr %221, align 4
  %223 = load ptr, ptr %44, align 4
  %224 = getelementptr i8, ptr %223, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %224, i32 %222) #10, !srcloc !9
  %225 = load ptr, ptr %44, align 4
  %226 = getelementptr i8, ptr %225, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %226, i32 %180) #10, !srcloc !9
  %227 = load volatile i32, ptr @jiffies, align 64
  %228 = tail call i32 @__msecs_to_jiffies(i32 noundef %215) #10
  %229 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 26
  %230 = add i32 %228, %227
  %231 = tail call i32 @mod_timer(ptr noundef %229, i32 noundef %230) #10
  br label %232

232:                                              ; preds = %220, %208
  %233 = getelementptr inbounds %struct.mmc_request, ptr %4, i32 0, i32 3
  %234 = load ptr, ptr %233, align 4
  %235 = icmp eq ptr %234, null
  br i1 %235, label %289, label %236

236:                                              ; preds = %232
  %237 = load ptr, ptr %1, align 4
  %238 = getelementptr inbounds %struct.mmc_command, ptr %234, i32 0, i32 5
  store i32 -115, ptr %238, align 4
  %239 = load i32, ptr %234, align 4
  %240 = getelementptr inbounds %struct.mmc_command, ptr %234, i32 0, i32 3
  %241 = load i32, ptr %240, align 4
  %242 = and i32 %241, 1
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %251, label %244

244:                                              ; preds = %236
  %245 = and i32 %241, 2
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %249, label %247

247:                                              ; preds = %244
  %248 = or i32 %239, 128
  br label %251

249:                                              ; preds = %244
  %250 = or i32 %239, 64
  br label %251

251:                                              ; preds = %249, %247, %236
  %252 = phi i32 [ %248, %247 ], [ %250, %249 ], [ %239, %236 ]
  %253 = getelementptr inbounds %struct.mmc_host, ptr %237, i32 0, i32 28, i32 3
  %254 = load i8, ptr %253, align 4
  %255 = icmp eq i8 %254, 1
  %256 = select i1 %255, i32 6144, i32 4096
  %257 = or i32 %256, %252
  %258 = getelementptr inbounds %struct.mmc_command, ptr %234, i32 0, i32 7
  %259 = load ptr, ptr %258, align 4
  %260 = icmp eq ptr %259, null
  br i1 %260, label %278, label %261

261:                                              ; preds = %251
  %262 = icmp eq i32 %239, 53
  br i1 %262, label %263, label %265

263:                                              ; preds = %261
  %264 = or i32 %257, 2686976
  br label %271

265:                                              ; preds = %261
  %266 = getelementptr inbounds %struct.mmc_data, ptr %259, i32 0, i32 3
  %267 = load i32, ptr %266, align 4
  %268 = icmp ugt i32 %267, 1
  %269 = select i1 %268, i32 589824, i32 65536
  %270 = or i32 %269, %257
  br label %271

271:                                              ; preds = %265, %263
  %272 = phi i32 [ %264, %263 ], [ %270, %265 ]
  %273 = getelementptr inbounds %struct.mmc_data, ptr %259, i32 0, i32 6
  %274 = load i32, ptr %273, align 4
  %275 = shl i32 %274, 9
  %276 = and i32 %275, 262144
  %277 = or i32 %276, %272
  br label %278

278:                                              ; preds = %271, %251
  %279 = phi i32 [ %257, %251 ], [ %277, %271 ]
  %280 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 18
  %281 = or i32 %279, 131072
  store i32 %281, ptr %280, align 4
  %282 = getelementptr inbounds %struct.mmc_data, ptr %69, i32 0, i32 6
  %283 = load i32, ptr %282, align 4
  %284 = and i32 %283, 256
  %285 = icmp eq i32 %284, 0
  %286 = or i32 %279, 393216
  %287 = select i1 %285, i32 %286, i32 %281
  %288 = or i32 %287, 524288
  store i32 %288, ptr %280, align 4
  br label %289

289:                                              ; preds = %278, %232
  %290 = load ptr, ptr %44, align 4
  %291 = getelementptr i8, ptr %290, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %291, i32 %135) #10, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_request_done(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @atmci_pdc_complete(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = mul i32 %7, %5
  %9 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 514) #10, !srcloc !9
  %12 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 34, i32 5
  %13 = load i8, ptr %12, align 1, !range !10
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %48

15:                                               ; preds = %1
  %16 = load ptr, ptr %2, align 4
  %17 = getelementptr inbounds %struct.mmc_data, ptr %16, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 512
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %50, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 34, i32 7
  %23 = load i8, ptr %22, align 1, !range !10
  %24 = icmp ne i8 %23, 0
  %25 = icmp sgt i32 %8, 0
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %27, label %39

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 5
  br label %29

29:                                               ; preds = %29, %27
  %30 = phi i32 [ 0, %27 ], [ %35, %29 ]
  %31 = load ptr, ptr %28, align 4
  %32 = getelementptr i32, ptr %31, i32 %30
  %33 = load i32, ptr %32, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  store i32 %34, ptr %32, align 4
  %35 = add nuw nsw i32 %30, 1
  %36 = icmp eq i32 %35, %8
  br i1 %36, label %37, label %29

37:                                               ; preds = %29
  %38 = load ptr, ptr %2, align 4
  br label %39

39:                                               ; preds = %37, %21
  %40 = phi ptr [ %38, %37 ], [ %16, %21 ]
  %41 = getelementptr inbounds %struct.mmc_data, ptr %40, i32 0, i32 12
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.mmc_data, ptr %40, i32 0, i32 10
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 5
  %46 = load ptr, ptr %45, align 4
  %47 = tail call i32 @sg_copy_from_buffer(ptr noundef %42, i32 noundef %44, ptr noundef %46, i32 noundef %8) #10
  br label %48

48:                                               ; preds = %39, %1
  %49 = load ptr, ptr %2, align 4
  br label %50

50:                                               ; preds = %48, %15
  %51 = phi ptr [ %49, %48 ], [ %16, %15 ]
  %52 = icmp eq ptr %51, null
  br i1 %52, label %66, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 32
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.platform_device, ptr %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.mmc_data, ptr %51, i32 0, i32 12
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.mmc_data, ptr %51, i32 0, i32 10
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr inbounds %struct.mmc_data, ptr %51, i32 0, i32 6
  %62 = load i32, ptr %61, align 4
  %63 = and i32 %62, 256
  %64 = icmp eq i32 %63, 0
  %65 = select i1 %64, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %56, ptr noundef %58, i32 noundef %60, i32 noundef %65, i32 noundef 0) #10
  br label %66

66:                                               ; preds = %53, %50
  %67 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 20
  tail call void @_set_bit(i32 noundef 1, ptr noundef %67) #10
  %68 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 19, i32 1
  %69 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %68) #10
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 19
  tail call void @__tasklet_schedule(ptr noundef %72) #10
  br label %73

73:                                               ; preds = %71, %66
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @atmci_pdc_set_single_buf(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = icmp eq i32 %1, 0
  %5 = select i1 %4, i32 256, i32 264
  %6 = select i1 %4, i32 260, i32 268
  %7 = icmp eq i32 %2, 1
  %8 = or i32 %5, 16
  %9 = or i32 %6, 16
  %10 = select i1 %7, i32 %8, i32 %5
  %11 = select i1 %7, i32 %9, i32 %6
  %12 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 34, i32 5
  %13 = load i8, ptr %12, align 1, !range !10
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 7
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %19) #10, !srcloc !9
  br label %33

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.scatterlist, ptr %25, i32 0, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.scatterlist, ptr %25, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i8, ptr %31, i32 %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %29) #10, !srcloc !9
  br label %33

33:                                               ; preds = %23, %15
  %34 = phi i32 [ %27, %23 ], [ %17, %15 ]
  %35 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 12
  %36 = load i32, ptr %35, align 4
  %37 = icmp ugt i32 %36, %34
  br i1 %37, label %56, label %38

38:                                               ; preds = %33
  %39 = and i32 %36, 3
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr i8, ptr %43, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %36) #10, !srcloc !9
  %45 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 27
  %46 = load i32, ptr %45, align 4
  %47 = or i32 %46, 8192
  %48 = load ptr, ptr %42, align 4
  %49 = getelementptr i8, ptr %48, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %47) #10, !srcloc !9
  br label %55

50:                                               ; preds = %38
  %51 = lshr i32 %36, 2
  %52 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr i8, ptr %53, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %51) #10, !srcloc !9
  br label %55

55:                                               ; preds = %50, %41
  store i32 0, ptr %35, align 4
  br label %73

56:                                               ; preds = %33
  %57 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.scatterlist, ptr %58, i32 0, i32 4
  %60 = load i32, ptr %59, align 4
  %61 = lshr i32 %60, 2
  %62 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr i8, ptr %63, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %61) #10, !srcloc !9
  %65 = load ptr, ptr %57, align 4
  %66 = getelementptr inbounds %struct.scatterlist, ptr %65, i32 0, i32 4
  %67 = load i32, ptr %66, align 4
  %68 = load i32, ptr %35, align 4
  %69 = sub i32 %68, %67
  store i32 %69, ptr %35, align 4
  %70 = icmp eq i32 %68, %67
  br i1 %70, label %73, label %71

71:                                               ; preds = %56
  %72 = tail call ptr @sg_next(ptr noundef %65) #10
  store ptr %72, ptr %57, align 4
  br label %73

73:                                               ; preds = %71, %56, %55
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_from_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_pcopy_from_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_pcopy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmci_dma_complete(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 34
  %5 = load i8, ptr %4, align 4, !range !10
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 80
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #10, !srcloc !16
  %12 = and i32 %11, -257
  %13 = load ptr, ptr %8, align 4
  %14 = getelementptr i8, ptr %13, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #10, !srcloc !9
  %15 = load ptr, ptr %2, align 4
  br label %16

16:                                               ; preds = %7, %1
  %17 = phi ptr [ %15, %7 ], [ %3, %1 ]
  %18 = icmp eq ptr %17, null
  br i1 %18, label %34, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 13
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.dma_device, ptr %22, i32 0, i32 15
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.mmc_data, ptr %17, i32 0, i32 12
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.mmc_data, ptr %17, i32 0, i32 10
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.mmc_data, ptr %17, i32 0, i32 6
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 256
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %24, ptr noundef %26, i32 noundef %28, i32 noundef %33, i32 noundef 0) #10
  br label %34

34:                                               ; preds = %19, %16
  %35 = icmp eq ptr %3, null
  br i1 %35, label %47, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 20
  tail call void @_set_bit(i32 noundef 1, ptr noundef %37) #10
  %38 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 19, i32 1
  %39 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %38) #10
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 19
  tail call void @__tasklet_schedule(ptr noundef %42) #10
  br label %43

43:                                               ; preds = %41, %36
  %44 = getelementptr inbounds %struct.atmel_mci, ptr %0, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr i8, ptr %45, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 32) #10, !srcloc !9
  br label %47

47:                                               ; preds = %43, %34
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmc_alloc_host(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_get_supply(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmci_detect_change(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -48
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !34
  %3 = getelementptr i8, ptr %0, i32 -16
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %110

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 -12
  %9 = load i32, ptr %8, align 4
  %10 = tail call ptr @gpio_to_desc(i32 noundef %9) #10
  %11 = tail call i32 @gpiod_to_irq(ptr noundef %10) #10
  tail call void @enable_irq(i32 noundef %11) #10
  %12 = load i32, ptr %8, align 4
  %13 = tail call ptr @gpio_to_desc(i32 noundef %12) #10
  %14 = tail call i32 @gpiod_get_raw_value(ptr noundef %13) #10
  %15 = getelementptr i8, ptr %0, i32 -4
  %16 = load i8, ptr %15, align 4, !range !10
  %17 = zext i8 %16 to i32
  %18 = icmp eq i32 %14, %17
  %19 = load volatile i32, ptr %3, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  %22 = xor i1 %18, %21
  br i1 %22, label %110, label %23

23:                                               ; preds = %7
  %24 = getelementptr i8, ptr %0, i32 -44
  %25 = load ptr, ptr %24, align 4
  tail call void @_raw_spin_lock(ptr noundef %25) #10
  br i1 %18, label %27, label %26

26:                                               ; preds = %23
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %3) #10
  br label %28

27:                                               ; preds = %23
  tail call void @_set_bit(i32 noundef 0, ptr noundef %3) #10
  br label %28

28:                                               ; preds = %27, %26
  %29 = getelementptr i8, ptr %0, i32 -32
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %106, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.atmel_mci, ptr %25, i32 0, i32 9
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %30, %34
  br i1 %35, label %36, label %82

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.atmel_mci, ptr %25, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 128) #10, !srcloc !9
  %39 = load ptr, ptr %37, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 1) #10, !srcloc !9
  %40 = getelementptr inbounds %struct.atmel_mci, ptr %25, i32 0, i32 27
  %41 = load i32, ptr %40, align 4
  %42 = load ptr, ptr %37, align 4
  %43 = getelementptr i8, ptr %42, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %41) #10, !srcloc !9
  %44 = getelementptr inbounds %struct.atmel_mci, ptr %25, i32 0, i32 34, i32 2
  %45 = load i8, ptr %44, align 2, !range !10
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %36
  %48 = getelementptr inbounds %struct.atmel_mci, ptr %25, i32 0, i32 28
  %49 = load i32, ptr %48, align 4
  %50 = load ptr, ptr %37, align 4
  %51 = getelementptr i8, ptr %50, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #10, !srcloc !9
  br label %52

52:                                               ; preds = %47, %36
  %53 = getelementptr inbounds %struct.atmel_mci, ptr %25, i32 0, i32 11
  store ptr null, ptr %53, align 4
  %54 = getelementptr inbounds %struct.atmel_mci, ptr %25, i32 0, i32 10
  store ptr null, ptr %54, align 4
  %55 = getelementptr inbounds %struct.atmel_mci, ptr %25, i32 0, i32 22
  %56 = load i32, ptr %55, align 4
  switch i32 %56, label %81 [
    i32 4, label %77
    i32 1, label %57
    i32 2, label %67
    i32 3, label %73
  ]

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.mmc_request, ptr %30, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.mmc_command, ptr %59, i32 0, i32 5
  store i32 -123, ptr %60, align 4
  %61 = getelementptr inbounds %struct.mmc_request, ptr %30, i32 0, i32 2
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %81, label %64

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.atmel_mci, ptr %25, i32 0, i32 37
  %66 = load ptr, ptr %65, align 4
  tail call void %66(ptr noundef %25) #10
  br label %81

67:                                               ; preds = %52
  %68 = getelementptr inbounds %struct.mmc_request, ptr %30, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.mmc_data, ptr %69, i32 0, i32 5
  store i32 -123, ptr %70, align 4
  %71 = getelementptr inbounds %struct.atmel_mci, ptr %25, i32 0, i32 37
  %72 = load ptr, ptr %71, align 4
  tail call void %72(ptr noundef %25) #10
  br label %81

73:                                               ; preds = %52
  %74 = getelementptr inbounds %struct.mmc_request, ptr %30, i32 0, i32 2
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.mmc_data, ptr %75, i32 0, i32 5
  store i32 -123, ptr %76, align 4
  br label %81

77:                                               ; preds = %52
  %78 = getelementptr inbounds %struct.mmc_request, ptr %30, i32 0, i32 3
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.mmc_command, ptr %79, i32 0, i32 5
  store i32 -123, ptr %80, align 4
  br label %81

81:                                               ; preds = %77, %73, %67, %64, %57, %52
  tail call fastcc void @atmci_request_end(ptr noundef %25, ptr noundef nonnull %30)
  br label %106

82:                                               ; preds = %32
  %83 = getelementptr i8, ptr %0, i32 -28
  %84 = getelementptr i8, ptr %0, i32 -24
  %85 = load ptr, ptr %84, align 4
  %86 = load ptr, ptr %83, align 4
  %87 = getelementptr inbounds %struct.list_head, ptr %86, i32 0, i32 1
  store ptr %85, ptr %87, align 4
  store volatile ptr %86, ptr %85, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %83, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %84, align 4
  %88 = getelementptr inbounds %struct.mmc_request, ptr %30, i32 0, i32 1
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr inbounds %struct.mmc_command, ptr %89, i32 0, i32 5
  store i32 -123, ptr %90, align 4
  %91 = getelementptr inbounds %struct.mmc_request, ptr %30, i32 0, i32 2
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %96, label %94

94:                                               ; preds = %82
  %95 = getelementptr inbounds %struct.mmc_data, ptr %92, i32 0, i32 5
  store i32 -123, ptr %95, align 4
  br label %96

96:                                               ; preds = %94, %82
  %97 = getelementptr inbounds %struct.mmc_request, ptr %30, i32 0, i32 3
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %102, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.mmc_command, ptr %98, i32 0, i32 5
  store i32 -123, ptr %101, align 4
  br label %102

102:                                              ; preds = %100, %96
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  %103 = load i16, ptr %25, align 4
  %104 = add i16 %103, 1
  store i16 %104, ptr %25, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !21
  %105 = load ptr, ptr %2, align 4
  tail call void @mmc_request_done(ptr noundef %105, ptr noundef nonnull %30) #10
  tail call void @_raw_spin_lock(ptr noundef %25) #10
  br label %106

106:                                              ; preds = %102, %81, %28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  %107 = load i16, ptr %25, align 4
  %108 = add i16 %107, 1
  store i16 %108, ptr %25, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !21
  %109 = load ptr, ptr %2, align 4
  tail call void @mmc_detect_change(ptr noundef %109, i32 noundef 0) #10
  br label %110

110:                                              ; preds = %106, %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmci_detect_interrupt(i32 noundef %0, ptr noundef %1) #2 {
  tail call void @disable_irq_nosync(i32 noundef %0) #10
  %3 = getelementptr inbounds %struct.atmel_mci_slot, ptr %1, i32 0, i32 11
  %4 = load volatile i32, ptr @jiffies, align 64
  %5 = add i32 %4, 2
  %6 = tail call i32 @mod_timer(ptr noundef %3, i32 noundef %5) #10
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmci_request(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %4 = getelementptr inbounds %struct.atmel_mci_slot, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9, !prof !17

9:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 1351, i32 noundef 9, ptr noundef null) #10
  br label %10

10:                                               ; preds = %9, %2
  %11 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 5
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.mmc_command, ptr %17, i32 0, i32 5
  store i32 -123, ptr %18, align 4
  tail call void @mmc_request_done(ptr noundef %0, ptr noundef %1) #10
  br label %48

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %36, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.mmc_data, ptr %21, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = icmp ugt i32 %25, 1
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.mmc_data, ptr %21, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 3
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.mmc_command, ptr %34, i32 0, i32 5
  store i32 -22, ptr %35, align 4
  tail call void @mmc_request_done(ptr noundef %0, ptr noundef %1) #10
  br label %36

36:                                               ; preds = %32, %27, %23, %19
  tail call void @_raw_spin_lock_bh(ptr noundef %5) #10
  store ptr %1, ptr %6, align 4
  %37 = getelementptr inbounds %struct.atmel_mci, ptr %5, i32 0, i32 22
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 1, ptr %37, align 4
  tail call fastcc void @atmci_start_request(ptr noundef %5, ptr noundef %3) #10
  br label %47

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 2
  %43 = getelementptr inbounds %struct.atmel_mci, ptr %5, i32 0, i32 23
  %44 = getelementptr inbounds %struct.atmel_mci, ptr %5, i32 0, i32 23, i32 1
  %45 = load ptr, ptr %44, align 4
  store ptr %42, ptr %44, align 4
  store ptr %43, ptr %42, align 4
  %46 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 3
  store ptr %45, ptr %46, align 4
  store volatile ptr %42, ptr %45, align 4
  br label %47

47:                                               ; preds = %41, %40
  tail call void @_raw_spin_unlock_bh(ptr noundef %5) #10
  br label %48

48:                                               ; preds = %47, %15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmci_set_ios(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %4 = getelementptr inbounds %struct.atmel_mci_slot, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, -193
  store i32 %8, ptr %6, align 4
  %9 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 6
  %10 = load i8, ptr %9, align 1
  switch i8 %10, label %17 [
    i8 3, label %13
    i8 2, label %11
  ]

11:                                               ; preds = %2
  %12 = or i32 %8, 128
  br label %15

13:                                               ; preds = %2
  %14 = or i32 %7, 192
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %14, %13 ], [ %12, %11 ]
  store i32 %16, ptr %6, align 4
  br label %17

17:                                               ; preds = %15, %2
  %18 = load i32, ptr %1, align 4
  %19 = icmp eq i32 %18, 0
  tail call void @_raw_spin_lock_bh(ptr noundef %5) #10
  br i1 %19, label %135, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.atmel_mci, ptr %5, i32 0, i32 27
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.atmel_mci, ptr %5, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 128) #10, !srcloc !9
  %27 = load ptr, ptr %25, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 1) #10, !srcloc !9
  %28 = getelementptr inbounds %struct.atmel_mci, ptr %5, i32 0, i32 34, i32 2
  %29 = load i8, ptr %28, align 2, !range !10
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.atmel_mci, ptr %5, i32 0, i32 28
  %33 = load i32, ptr %32, align 4
  %34 = load ptr, ptr %25, align 4
  %35 = getelementptr i8, ptr %34, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #10, !srcloc !9
  br label %36

36:                                               ; preds = %31, %24, %20
  %37 = load i32, ptr %1, align 4
  %38 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 4
  store i32 %37, ptr %38, align 4
  %39 = getelementptr %struct.atmel_mci, ptr %5, i32 0, i32 33, i32 0
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.atmel_mci_slot, ptr %40, i32 0, i32 6
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, -1
  %46 = icmp ult i32 %45, -2
  %47 = select i1 %46, i32 %44, i32 -1
  br label %48

48:                                               ; preds = %42, %36
  %49 = phi i32 [ -1, %36 ], [ %47, %42 ]
  %50 = getelementptr %struct.atmel_mci, ptr %5, i32 0, i32 33, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %60, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.atmel_mci_slot, ptr %51, i32 0, i32 6
  %55 = load i32, ptr %54, align 4
  %56 = icmp ne i32 %55, 0
  %57 = icmp ult i32 %55, %49
  %58 = select i1 %56, i1 %57, i1 false
  %59 = select i1 %58, i32 %55, i32 %49
  br label %60

60:                                               ; preds = %53, %48
  %61 = phi i32 [ %49, %48 ], [ %59, %53 ]
  %62 = getelementptr inbounds %struct.atmel_mci, ptr %5, i32 0, i32 34, i32 6
  %63 = load i8, ptr %62, align 2, !range !10
  %64 = icmp eq i8 %63, 0
  %65 = getelementptr inbounds %struct.atmel_mci, ptr %5, i32 0, i32 29
  %66 = load i32, ptr %65, align 4
  br i1 %64, label %87, label %67

67:                                               ; preds = %60
  %68 = add i32 %61, -1
  %69 = add i32 %68, %66
  %70 = udiv i32 %69, %61
  %71 = add i32 %70, -2
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1
  %75 = lshr i32 %66, 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %74, ptr noundef nonnull @.str.25, i32 noundef %61, i32 noundef %75) #11
  br label %81

76:                                               ; preds = %67
  %77 = icmp ugt i32 %71, 511
  br i1 %77, label %78, label %81

78:                                               ; preds = %76
  %79 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1
  %80 = udiv i32 %66, 513
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %79, ptr noundef nonnull @.str.26, i32 noundef %61, i32 noundef %80) #11
  br label %81

81:                                               ; preds = %78, %76, %73
  %82 = phi i32 [ 0, %73 ], [ 511, %78 ], [ %71, %76 ]
  %83 = lshr i32 %82, 1
  %84 = shl nuw nsw i32 %82, 16
  %85 = and i32 %84, 65536
  %86 = or i32 %85, %83
  br label %97

87:                                               ; preds = %60
  %88 = shl i32 %61, 1
  %89 = add i32 %88, -1
  %90 = add i32 %89, %66
  %91 = udiv i32 %90, %88
  %92 = add i32 %91, -1
  %93 = icmp sgt i32 %92, 255
  br i1 %93, label %94, label %97

94:                                               ; preds = %87
  %95 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1
  %96 = lshr i32 %66, 9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %95, ptr noundef nonnull @.str.26, i32 noundef %61, i32 noundef %96) #11
  br label %97

97:                                               ; preds = %94, %87, %81
  %98 = phi i32 [ %86, %81 ], [ 255, %94 ], [ %92, %87 ]
  store i32 %98, ptr %21, align 4
  %99 = getelementptr inbounds %struct.atmel_mci, ptr %5, i32 0, i32 34, i32 5
  %100 = load i8, ptr %99, align 1, !range !10
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %97
  %103 = or i32 %98, 6144
  store i32 %103, ptr %21, align 4
  br label %104

104:                                              ; preds = %102, %97
  %105 = phi i32 [ %103, %102 ], [ %98, %97 ]
  %106 = getelementptr inbounds %struct.atmel_mci, ptr %5, i32 0, i32 34, i32 2
  %107 = load i8, ptr %106, align 2, !range !10
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %118, label %109

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 7
  %111 = load i8, ptr %110, align 4
  %112 = icmp eq i8 %111, 2
  %113 = getelementptr inbounds %struct.atmel_mci, ptr %5, i32 0, i32 28
  %114 = load i32, ptr %113, align 4
  %115 = and i32 %114, -257
  %116 = select i1 %112, i32 256, i32 0
  %117 = or i32 %115, %116
  store i32 %117, ptr %113, align 4
  br label %118

118:                                              ; preds = %109, %104
  %119 = getelementptr inbounds %struct.atmel_mci, ptr %5, i32 0, i32 23
  %120 = load volatile ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, %119
  br i1 %121, label %122, label %133

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.atmel_mci, ptr %5, i32 0, i32 1
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr i8, ptr %124, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %125, i32 %105) #10, !srcloc !9
  %126 = load i8, ptr %106, align 2, !range !10
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %163, label %128

128:                                              ; preds = %122
  %129 = getelementptr inbounds %struct.atmel_mci, ptr %5, i32 0, i32 28
  %130 = load i32, ptr %129, align 4
  %131 = load ptr, ptr %123, align 4
  %132 = getelementptr i8, ptr %131, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %132, i32 %130) #10, !srcloc !9
  br label %163

133:                                              ; preds = %118
  %134 = getelementptr inbounds %struct.atmel_mci, ptr %5, i32 0, i32 24
  store i8 1, ptr %134, align 4
  br label %163

135:                                              ; preds = %17
  %136 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 4
  store i32 0, ptr %136, align 4
  %137 = getelementptr %struct.atmel_mci, ptr %5, i32 0, i32 33, i32 0
  %138 = load ptr, ptr %137, align 4
  %139 = icmp eq ptr %138, null
  br i1 %139, label %144, label %140

140:                                              ; preds = %135
  %141 = getelementptr inbounds %struct.atmel_mci_slot, ptr %138, i32 0, i32 6
  %142 = load i32, ptr %141, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %163

144:                                              ; preds = %140, %135
  %145 = getelementptr %struct.atmel_mci, ptr %5, i32 0, i32 33, i32 1
  %146 = load ptr, ptr %145, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %152, label %148

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.atmel_mci_slot, ptr %146, i32 0, i32 6
  %150 = load i32, ptr %149, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %163

152:                                              ; preds = %148, %144
  %153 = getelementptr inbounds %struct.atmel_mci, ptr %5, i32 0, i32 1
  %154 = load ptr, ptr %153, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %154, i32 2) #10, !srcloc !9
  %155 = getelementptr inbounds %struct.atmel_mci, ptr %5, i32 0, i32 27
  %156 = load i32, ptr %155, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %162, label %158

158:                                              ; preds = %152
  %159 = load ptr, ptr %153, align 4
  %160 = getelementptr i8, ptr %159, i32 4
  %161 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %160) #10, !srcloc !16
  br label %162

162:                                              ; preds = %158, %152
  store i32 0, ptr %155, align 4
  br label %163

163:                                              ; preds = %162, %148, %140, %133, %128, %122
  tail call void @_raw_spin_unlock_bh(ptr noundef %5) #10
  %164 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 5
  %165 = load i8, ptr %164, align 2
  switch i8 %165, label %181 [
    i8 0, label %166
    i8 1, label %172
  ]

166:                                              ; preds = %163
  %167 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 54
  %168 = load ptr, ptr %167, align 4
  %169 = icmp ugt ptr %168, inttoptr (i32 -4096 to ptr)
  br i1 %169, label %181, label %170

170:                                              ; preds = %166
  %171 = tail call i32 @mmc_regulator_set_ocr(ptr noundef %0, ptr noundef %168, i16 noundef zeroext 0) #10
  br label %181

172:                                              ; preds = %163
  %173 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 1, ptr noundef %173) #10
  %174 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 54
  %175 = load ptr, ptr %174, align 4
  %176 = icmp ugt ptr %175, inttoptr (i32 -4096 to ptr)
  br i1 %176, label %181, label %177

177:                                              ; preds = %172
  %178 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 1
  %179 = load i16, ptr %178, align 4
  %180 = tail call i32 @mmc_regulator_set_ocr(ptr noundef %0, ptr noundef %175, i16 noundef zeroext %179) #10
  br label %181

181:                                              ; preds = %177, %172, %170, %166, %163
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmci_get_ro(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 7
  %3 = load i32, ptr %2, align 4
  %4 = icmp ult i32 %3, 2048
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = tail call ptr @gpio_to_desc(i32 noundef %3) #10
  %7 = tail call i32 @gpiod_get_raw_value(ptr noundef %6) #10
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi i32 [ %7, %5 ], [ -38, %1 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmci_get_cd(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 6
  %3 = load i32, ptr %2, align 4
  %4 = icmp ult i32 %3, 2048
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = tail call ptr @gpio_to_desc(i32 noundef %3) #10
  %7 = tail call i32 @gpiod_get_raw_value(ptr noundef %6) #10
  %8 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 1
  %9 = load i8, ptr %8, align 4, !range !10
  %10 = zext i8 %9 to i32
  %11 = icmp eq i32 %7, %10
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %5, %1
  %14 = phi i32 [ %12, %5 ], [ -38, %1 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmci_enable_sdio_irq(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %4 = getelementptr inbounds %struct.atmel_mci_slot, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq i32 %1, 0
  %7 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.atmel_mci, ptr %5, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  br i1 %6, label %13, label %11

11:                                               ; preds = %2
  %12 = getelementptr i8, ptr %10, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %8) #10, !srcloc !9
  br label %15

13:                                               ; preds = %2
  %14 = getelementptr i8, ptr %10, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %8) #10, !srcloc !9
  br label %15

15:                                               ; preds = %13, %11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_set_ocr(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_raw_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_detect_change(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmci_regs_open(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @atmci_regs_show, ptr noundef %4) #10
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmci_regs_show(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 256) #12
  %7 = icmp eq ptr %6, null
  br i1 %7, label %132, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.atmel_mci, ptr %4, i32 0, i32 32
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3
  %12 = tail call i32 @__pm_runtime_resume(ptr noundef %11, i32 noundef 4) #10
  tail call void @_raw_spin_lock_bh(ptr noundef %4) #10
  %13 = getelementptr inbounds %struct.atmel_mci, ptr %4, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  tail call void @mmiocpy(ptr noundef nonnull %6, ptr noundef %14, i32 noundef 256) #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %4) #10
  %15 = load ptr, ptr %9, align 4
  %16 = tail call i64 @ktime_get_mono_fast_ns() #10
  %17 = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3, i32 11, i32 22
  store volatile i64 %16, ptr %17, align 8
  %18 = load ptr, ptr %9, align 4
  %19 = getelementptr inbounds %struct.platform_device, ptr %18, i32 0, i32 3
  %20 = tail call i32 @__pm_runtime_suspend(ptr noundef %19, i32 noundef 13) #10
  %21 = getelementptr i32, ptr %6, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 2048
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, ptr @.str.34, ptr @.str.33
  %26 = and i32 %22, 4096
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, ptr @.str.34, ptr @.str.35
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.32, i32 noundef %22, ptr noundef nonnull %25, ptr noundef nonnull %28) #10
  %29 = getelementptr inbounds %struct.atmel_mci, ptr %4, i32 0, i32 34
  %30 = getelementptr inbounds %struct.atmel_mci, ptr %4, i32 0, i32 34, i32 6
  %31 = load i8, ptr %30, align 2, !range !10
  %32 = icmp eq i8 %31, 0
  %33 = load i32, ptr %21, align 4
  br i1 %32, label %40, label %34

34:                                               ; preds = %8
  %35 = shl i32 %33, 1
  %36 = and i32 %35, 510
  %37 = lshr i32 %33, 16
  %38 = and i32 %37, 1
  %39 = or i32 %36, %38
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.36, i32 noundef %39) #10
  br label %42

40:                                               ; preds = %8
  %41 = and i32 %33, 255
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.37, i32 noundef %41) #10
  br label %42

42:                                               ; preds = %40, %34
  %43 = getelementptr i32, ptr %6, i32 2
  %44 = load i32, ptr %43, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.38, i32 noundef %44) #10
  %45 = getelementptr i32, ptr %6, i32 3
  %46 = load i32, ptr %45, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.39, i32 noundef %46) #10
  %47 = getelementptr i32, ptr %6, i32 4
  %48 = load i32, ptr %47, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.40, i32 noundef %48) #10
  %49 = getelementptr i32, ptr %6, i32 6
  %50 = load i32, ptr %49, align 8
  %51 = and i32 %50, 65535
  %52 = lshr i32 %50, 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.41, i32 noundef %50, i32 noundef %51, i32 noundef %52) #10
  %53 = getelementptr inbounds %struct.atmel_mci, ptr %4, i32 0, i32 34, i32 3
  %54 = load i8, ptr %53, align 1, !range !10
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %42
  %57 = getelementptr i32, ptr %6, i32 7
  %58 = load i32, ptr %57, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.42, i32 noundef %58) #10
  br label %59

59:                                               ; preds = %56, %42
  %60 = getelementptr i32, ptr %6, i32 16
  %61 = load i32, ptr %60, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.43, i32 noundef %61) #10
  br label %62

62:                                               ; preds = %75, %59
  %63 = phi i32 [ 0, %59 ], [ %76, %75 ]
  %64 = shl nuw i32 1, %63
  %65 = and i32 %64, %61
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %62
  %68 = lshr i32 805317632, %63
  %69 = and i32 %68, 1
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = getelementptr [32 x ptr], ptr @atmci_show_status_reg.sr_bit, i32 0, i32 %63
  %73 = load ptr, ptr %72, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.80, ptr noundef %73) #10
  br label %75

74:                                               ; preds = %67
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.81) #10
  br label %75

75:                                               ; preds = %74, %71, %62
  %76 = add nuw nsw i32 %63, 1
  %77 = icmp eq i32 %76, 32
  br i1 %77, label %78, label %62

78:                                               ; preds = %75
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #10
  %79 = getelementptr i32, ptr %6, i32 19
  %80 = load i32, ptr %79, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.44, i32 noundef %80) #10
  br label %81

81:                                               ; preds = %94, %78
  %82 = phi i32 [ 0, %78 ], [ %95, %94 ]
  %83 = shl nuw i32 1, %82
  %84 = and i32 %83, %80
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %81
  %87 = lshr i32 805317632, %82
  %88 = and i32 %87, 1
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = getelementptr [32 x ptr], ptr @atmci_show_status_reg.sr_bit, i32 0, i32 %82
  %92 = load ptr, ptr %91, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.80, ptr noundef %92) #10
  br label %94

93:                                               ; preds = %86
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.81) #10
  br label %94

94:                                               ; preds = %93, %90, %81
  %95 = add nuw nsw i32 %82, 1
  %96 = icmp eq i32 %95, 32
  br i1 %96, label %97, label %81

97:                                               ; preds = %94
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #10
  %98 = load i8, ptr %29, align 4, !range !10
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %112, label %100

100:                                              ; preds = %97
  %101 = getelementptr i32, ptr %6, i32 20
  %102 = load i32, ptr %101, align 8
  %103 = and i32 %102, 3
  %104 = lshr i32 %102, 4
  %105 = and i32 %104, 3
  %106 = icmp eq i32 %105, 0
  %107 = shl nuw nsw i32 2, %105
  %108 = select i1 %106, i32 1, i32 %107
  %109 = and i32 %102, 256
  %110 = icmp eq i32 %109, 0
  %111 = select i1 %110, ptr @.str.34, ptr @.str.46
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.45, i32 noundef %102, i32 noundef %103, i32 noundef %108, ptr noundef nonnull %111) #10
  br label %112

112:                                              ; preds = %100, %97
  %113 = getelementptr inbounds %struct.atmel_mci, ptr %4, i32 0, i32 34, i32 2
  %114 = load i8, ptr %113, align 2, !range !10
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %131, label %116

116:                                              ; preds = %112
  %117 = getelementptr i32, ptr %6, i32 21
  %118 = load i32, ptr %117, align 4
  %119 = and i32 %118, 1
  %120 = icmp eq i32 %119, 0
  %121 = select i1 %120, ptr @.str.34, ptr @.str.48
  %122 = and i32 %118, 16
  %123 = icmp eq i32 %122, 0
  %124 = select i1 %123, ptr @.str.34, ptr @.str.49
  %125 = and i32 %118, 256
  %126 = icmp eq i32 %125, 0
  %127 = select i1 %126, ptr @.str.34, ptr @.str.50
  %128 = and i32 %118, 4096
  %129 = icmp eq i32 %128, 0
  %130 = select i1 %129, ptr @.str.34, ptr @.str.51
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.47, i32 noundef %118, ptr noundef nonnull %121, ptr noundef nonnull %124, ptr noundef nonnull %127, ptr noundef nonnull %130) #10
  br label %131

131:                                              ; preds = %116, %112
  tail call void @kfree(ptr noundef nonnull %6) #10
  br label %132

132:                                              ; preds = %131, %2
  %133 = phi i32 [ 0, %131 ], [ -12, %2 ]
  ret i32 %133
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmci_req_open(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @atmci_req_show, ptr noundef %4) #10
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmci_req_show(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.atmel_mci_slot, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef %6) #10
  %7 = getelementptr inbounds %struct.atmel_mci_slot, ptr %4, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %65, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.mmc_request, ptr %8, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.mmc_request, ptr %8, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.mmc_request, ptr %8, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %12, null
  br i1 %17, label %34, label %18

18:                                               ; preds = %10
  %19 = load i32, ptr %12, align 4
  %20 = getelementptr inbounds %struct.mmc_command, ptr %12, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.mmc_command, ptr %12, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.mmc_command, ptr %12, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr %struct.mmc_command, ptr %12, i32 0, i32 2, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr %struct.mmc_command, ptr %12, i32 0, i32 2, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr %struct.mmc_command, ptr %12, i32 0, i32 2, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.mmc_command, ptr %12, i32 0, i32 5
  %33 = load i32, ptr %32, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.82, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef %33) #10
  br label %34

34:                                               ; preds = %18, %10
  %35 = icmp eq ptr %14, null
  br i1 %35, label %47, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.mmc_data, ptr %14, i32 0, i32 7
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.mmc_data, ptr %14, i32 0, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.mmc_data, ptr %14, i32 0, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.mmc_data, ptr %14, i32 0, i32 6
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.mmc_data, ptr %14, i32 0, i32 5
  %46 = load i32, ptr %45, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.83, i32 noundef %38, i32 noundef %40, i32 noundef %42, i32 noundef %44, i32 noundef %46) #10
  br label %47

47:                                               ; preds = %36, %34
  %48 = icmp eq ptr %16, null
  br i1 %48, label %65, label %49

49:                                               ; preds = %47
  %50 = load i32, ptr %16, align 4
  %51 = getelementptr inbounds %struct.mmc_command, ptr %16, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.mmc_command, ptr %16, i32 0, i32 3
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.mmc_command, ptr %16, i32 0, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr %struct.mmc_command, ptr %16, i32 0, i32 2, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr %struct.mmc_command, ptr %16, i32 0, i32 2, i32 2
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr %struct.mmc_command, ptr %16, i32 0, i32 2, i32 3
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds %struct.mmc_command, ptr %16, i32 0, i32 5
  %64 = load i32, ptr %63, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.82, i32 noundef %50, i32 noundef %52, i32 noundef %54, i32 noundef %56, i32 noundef %58, i32 noundef %60, i32 noundef %62, i32 noundef %64) #10
  br label %65

65:                                               ; preds = %49, %47, %2
  %66 = load ptr, ptr %5, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %66) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_x32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_free_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmci_runtime_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.atmel_mci, ptr %3, i32 0, i32 31
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #10
  tail call void @clk_unprepare(ptr noundef %5) #10
  %6 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %0) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmci_runtime_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @pinctrl_select_default_state(ptr noundef %0) #10
  %5 = getelementptr inbounds %struct.atmel_mci, ptr %3, i32 0, i32 31
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @clk_prepare(ptr noundef %6) #10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = tail call i32 @clk_enable(ptr noundef %6) #10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void @clk_unprepare(ptr noundef %6) #10
  br label %13

13:                                               ; preds = %12, %9, %1
  %14 = phi i32 [ %7, %1 ], [ %10, %12 ], [ 0, %9 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

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
!9 = !{i64 4764539}
!10 = !{i8 0, i8 2}
!11 = !{i64 630130, i64 2148131696, i64 2148131722, i64 2148131769, i64 2148131791, i64 2148131819, i64 2148131839}
!12 = !{i64 2148194958, i64 2148194984, i64 2148195013, i64 2148195047, i64 2148195078, i64 2148195101}
!13 = !{i64 2148194465}
!14 = !{i64 616699, i64 616724, i64 616746, i64 616762, i64 616774, i64 616794, i64 616818, i64 616834, i64 616846}
!15 = !{i64 2148194591}
!16 = !{i64 4764957}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{i64 2149278343}
!19 = !{i64 2149274167}
!20 = !{i64 2149274242, i64 2149274269, i64 2149274316, i64 2149274338, i64 2149274366, i64 2149274386}
!21 = !{i64 2149301346}
!22 = !{i64 2153801670}
!23 = !{i64 2153807665}
!24 = !{i64 2153809368}
!25 = !{!"branch_weights", i32 1, i32 2000}
!26 = !{i64 2153796049}
!27 = !{i64 2153798401}
!28 = !{i64 2153811241}
!29 = !{i32 0, i32 33}
!30 = !{i64 2153742149}
!31 = !{i64 2153816122}
!32 = !{i64 2153759004}
!33 = !{i64 2153758846}
!34 = !{i64 2153772901}
