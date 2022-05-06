; ModuleID = '/llk/IR/drivers/spi/spi-stm32.c_pt.bc'
source_filename = "../drivers/spi/spi-stm32.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.stm32_spi_cfg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i16 }
%struct.stm32_spi_regspec = type { %struct.stm32_spi_reg, %struct.stm32_spi_reg, %struct.stm32_spi_reg, %struct.stm32_spi_reg, %struct.stm32_spi_reg, %struct.stm32_spi_reg, %struct.stm32_spi_reg, %struct.stm32_spi_reg, %struct.stm32_spi_reg }
%struct.stm32_spi_reg = type { i32, i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stm32_spi = type { ptr, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, ptr, i32, i32, ptr, ptr, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@stm32_spi_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32h7-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32h7_spi_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32f4-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32f4_spi_cfg }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_alias280 = internal constant [25 x i8] c"alias=platform:spi_stm32\00", section ".modinfo", align 1
@__UNIQUE_ID_description281 = internal constant [59 x i8] c"description=STMicroelectronics STM32 SPI Controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author282 = internal constant [48 x i8] c"author=Amelie Delaunay <amelie.delaunay@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license283 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@stm32h7_spi_cfg = internal constant %struct.stm32_spi_cfg { ptr @stm32h7_spi_regspec, ptr @stm32h7_spi_get_fifo_size, ptr @stm32h7_spi_get_bpw_mask, ptr @stm32h7_spi_disable, ptr @stm32h7_spi_config, ptr @stm32h7_spi_set_bpw, ptr @stm32h7_spi_set_mode, ptr @stm32h7_spi_data_idleness, ptr @stm32h7_spi_number_of_data, ptr @stm32h7_spi_transfer_one_dma_start, ptr @stm32_spi_dma_rx_cb, ptr null, ptr @stm32h7_spi_transfer_one_irq, ptr null, ptr @stm32h7_spi_irq_thread, i32 2, i32 256, i8 1, i16 0 }, align 4
@stm32f4_spi_cfg = internal constant %struct.stm32_spi_cfg { ptr @stm32f4_spi_regspec, ptr null, ptr @stm32f4_spi_get_bpw_mask, ptr @stm32f4_spi_disable, ptr @stm32f4_spi_config, ptr @stm32f4_spi_set_bpw, ptr @stm32f4_spi_set_mode, ptr null, ptr null, ptr @stm32f4_spi_transfer_one_dma_start, ptr @stm32_spi_dma_rx_cb, ptr @stm32f4_spi_dma_tx_cb, ptr @stm32f4_spi_transfer_one_irq, ptr @stm32f4_spi_irq_event, ptr @stm32f4_spi_irq_thread, i32 2, i32 256, i8 0, i16 16 }, align 4
@stm32h7_spi_regspec = internal constant %struct.stm32_spi_regspec { %struct.stm32_spi_reg { i32 0, i32 1, i32 0 }, %struct.stm32_spi_reg { i32 8, i32 16384, i32 0 }, %struct.stm32_spi_reg { i32 8, i32 32768, i32 0 }, %struct.stm32_spi_reg { i32 12, i32 33554432, i32 0 }, %struct.stm32_spi_reg { i32 12, i32 16777216, i32 0 }, %struct.stm32_spi_reg { i32 12, i32 8388608, i32 0 }, %struct.stm32_spi_reg { i32 8, i32 1879048192, i32 28 }, %struct.stm32_spi_reg { i32 48, i32 0, i32 0 }, %struct.stm32_spi_reg { i32 32, i32 0, i32 0 } }, align 4
@.str = private unnamed_addr constant [37 x i8] c"spurious IT (sr=0x%08x, ier=0x%08x)\0A\00", align 1
@stm32h7_spi_irq_thread.rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 5000, i32 1, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.stm32h7_spi_irq_thread = private unnamed_addr constant [23 x i8] c"stm32h7_spi_irq_thread\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Mode fault: transfer aborted\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Overrun: RX data lost\0A\00", align 1
@stm32f4_spi_regspec = internal constant %struct.stm32_spi_regspec { %struct.stm32_spi_reg { i32 0, i32 64, i32 0 }, %struct.stm32_spi_reg { i32 4, i32 1, i32 0 }, %struct.stm32_spi_reg { i32 4, i32 2, i32 0 }, %struct.stm32_spi_reg { i32 0, i32 2, i32 0 }, %struct.stm32_spi_reg { i32 0, i32 1, i32 0 }, %struct.stm32_spi_reg { i32 0, i32 128, i32 0 }, %struct.stm32_spi_reg { i32 0, i32 56, i32 3 }, %struct.stm32_spi_reg { i32 12, i32 0, i32 0 }, %struct.stm32_spi_reg { i32 12, i32 0, i32 0 } }, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"disabling condition timeout\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Overrun: received value discarded\0A\00", align 1
@stm32_spi_driver = internal global %struct.platform_driver { ptr @stm32_spi_probe, ptr @stm32_spi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.5, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_spi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_spi_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.5 = private unnamed_addr constant [10 x i8] c"spi_stm32\00", align 1
@stm32_spi_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @stm32_spi_suspend, ptr @stm32_spi_resume, ptr @stm32_spi_suspend, ptr @stm32_spi_resume, ptr @stm32_spi_suspend, ptr @stm32_spi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_spi_runtime_suspend, ptr @stm32_spi_runtime_resume, ptr null }, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"spi master allocation failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"failed to get irq\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"irq%d request failed: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"clk get failed: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"clk enable failed: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"clk rate = 0\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"failed to get reset\0A\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"controller configuration failed: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"failed to request tx dma channel\0A\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"failed to request rx dma channel\0A\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"spi master registration failed: %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"driver initialized\0A\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"st,spi-midi-ns\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"SPI transfer setup failed\0A\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"Rx DMA submit failed\0A\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"Tx DMA submit failed\0A\00", align 1
@.str.24 = private unnamed_addr constant [38 x i8] c"DMA issue: fall back to irq transfer\0A\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"Unable to power device:%d\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias280, ptr @__UNIQUE_ID_author282, ptr @__UNIQUE_ID_description281, ptr @__UNIQUE_ID_license283], section "llvm.metadata"
@switch.table.stm32f4_spi_transfer_one_irq = private unnamed_addr constant [5 x i32] [i32 96, i32 128, i32 96, i32 128, i32 96], align 4

@__mod_of__stm32_spi_of_match_device_table = dso_local alias [3 x %struct.of_device_id], ptr @stm32_spi_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_spi_driver, ptr noundef nonnull @__this_module) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_spi_driver) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32h7_spi_get_fifo_size(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 6
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #9
  %4 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !8
  %7 = or i32 %6, 1
  %8 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %7) #9, !srcloc !9
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 20
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #9, !srcloc !8
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %14, %1
  %15 = phi i32 [ %16, %14 ], [ 0, %1 ]
  %16 = add i32 %15, 1
  %17 = trunc i32 %16 to i8
  %18 = load ptr, ptr %4, align 4
  %19 = getelementptr i8, ptr %18, i32 32
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %19, i8 %17) #9, !srcloc !10
  %20 = load ptr, ptr %4, align 4
  %21 = getelementptr i8, ptr %20, i32 20
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #9, !srcloc !8
  %23 = and i32 %22, 2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %14

25:                                               ; preds = %14, %1
  %26 = phi i32 [ 0, %1 ], [ %16, %14 ]
  %27 = load ptr, ptr %4, align 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #9, !srcloc !8
  %29 = and i32 %28, -2
  %30 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %29) #9, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #9
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32h7_spi_get_bpw_mask(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 6
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #9
  %4 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #9, !srcloc !8
  %8 = or i32 %7, 31
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #9, !srcloc !9
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr i8, ptr %11, i32 8
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #9, !srcloc !8
  %14 = and i32 %13, 31
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #9
  %15 = xor i32 %14, 31
  %16 = lshr i32 -1, %15
  %17 = and i32 %16, -8
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32h7_spi_disable(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 6
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #9
  %4 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !8
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %52, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 15
  %11 = load i8, ptr %10, align 4, !range !11
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %37, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 20
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 4
  %19 = getelementptr inbounds %struct.dma_device, ptr %18, i32 0, i32 47
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = tail call i32 %20(ptr noundef nonnull %15) #9
  %24 = load i8, ptr %10, align 4
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %22, %17, %13
  %27 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 21
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %28, align 4
  %32 = getelementptr inbounds %struct.dma_device, ptr %31, i32 0, i32 47
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = tail call i32 %33(ptr noundef nonnull %28) #9
  br label %37

37:                                               ; preds = %35, %30, %26, %22, %9
  %38 = load ptr, ptr %4, align 4
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #9, !srcloc !8
  %40 = and i32 %39, -2
  %41 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %40) #9, !srcloc !9
  %42 = load ptr, ptr %4, align 4
  %43 = getelementptr i8, ptr %42, i32 8
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #9, !srcloc !8
  %45 = and i32 %44, -49153
  %46 = load ptr, ptr %4, align 4
  %47 = getelementptr i8, ptr %46, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %45) #9, !srcloc !9
  %48 = load ptr, ptr %4, align 4
  %49 = getelementptr i8, ptr %48, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 0) #9, !srcloc !9
  %50 = load ptr, ptr %4, align 4
  %51 = getelementptr i8, ptr %50, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 4088) #9, !srcloc !9
  br label %52

52:                                               ; preds = %37, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32h7_spi_config(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 6
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #9
  %4 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 80
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #9, !srcloc !8
  %8 = and i32 %7, -2
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #9, !srcloc !9
  %11 = load ptr, ptr %4, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #9, !srcloc !8
  %13 = or i32 %12, 6400
  %14 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %13) #9, !srcloc !9
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr i8, ptr %15, i32 12
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #9, !srcloc !8
  %18 = or i32 %17, -2076180480
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr i8, ptr %19, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #9, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32h7_spi_set_bpw(ptr nocapture noundef %0) #1 {
  %2 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 11
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 14
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 @llvm.umax.i32(i32 %5, i32 1) #9
  %7 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 8
  %8 = load i32, ptr %7, align 4
  %9 = lshr i32 %8, 1
  %10 = tail call i32 @llvm.umin.i32(i32 %6, i32 %9) #9
  %11 = add i32 %3, 7
  %12 = lshr i32 %11, 3
  %13 = add nsw i32 %12, -1
  %14 = add i32 %13, %10
  %15 = udiv i32 %14, %12
  %16 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 12
  store i32 %15, ptr %16, align 4
  %17 = add i32 %3, 31
  %18 = and i32 %17, 31
  %19 = shl i32 %15, 5
  %20 = add i32 %19, 480
  %21 = and i32 %20, 480
  %22 = or i32 %21, %18
  %23 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 8
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #9, !srcloc !8
  %27 = and i32 %26, -512
  %28 = or i32 %22, %27
  %29 = load ptr, ptr %23, align 4
  %30 = getelementptr i8, ptr %29, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #9, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32h7_spi_set_mode(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  switch i32 %1, label %16 [
    i32 4, label %3
    i32 3, label %9
    i32 2, label %17
    i32 1, label %15
  ]

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !8
  %7 = and i32 %6, -2049
  %8 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %7) #9, !srcloc !9
  br label %17

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #9, !srcloc !8
  %13 = or i32 %12, 2048
  %14 = load ptr, ptr %10, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %13) #9, !srcloc !9
  br label %17

15:                                               ; preds = %2
  br label %17

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16, %15, %9, %3, %2
  %18 = phi i32 [ 393216, %3 ], [ 393216, %9 ], [ 131072, %15 ], [ 0, %16 ], [ 262144, %2 ]
  %19 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 12
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #9, !srcloc !8
  %23 = and i32 %22, -393217
  %24 = or i32 %23, %18
  %25 = load ptr, ptr %19, align 4
  %26 = getelementptr i8, ptr %25, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #9, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32h7_spi_data_idleness(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = icmp ugt i32 %1, 1
  br i1 %3, label %4, label %18

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 9
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 10
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, 999999999
  %12 = udiv i32 %11, %10
  %13 = add i32 %6, -1
  %14 = add i32 %13, %12
  %15 = udiv i32 %14, %12
  %16 = tail call i32 @llvm.umin.i32(i32 %15, i32 15)
  %17 = shl nuw nsw i32 %16, 4
  br label %18

18:                                               ; preds = %8, %4, %2
  %19 = phi i32 [ %17, %8 ], [ 0, %4 ], [ 0, %2 ]
  %20 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 12
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #9, !srcloc !8
  %24 = and i32 %23, -241
  %25 = or i32 %24, %19
  %26 = load ptr, ptr %20, align 4
  %27 = getelementptr i8, ptr %26, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #9, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32h7_spi_number_of_data(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = icmp ult i32 %1, 65536
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %1) #9, !srcloc !9
  br label %8

8:                                                ; preds = %4, %2
  %9 = phi i32 [ 0, %4 ], [ -90, %2 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32h7_spi_transfer_one_dma_start(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 13
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, -1
  %5 = and i32 %4, -3
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i32 600, i32 576
  %8 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 16
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #9, !srcloc !8
  %12 = or i32 %7, %11
  %13 = load ptr, ptr %8, align 4
  %14 = getelementptr i8, ptr %13, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #9, !srcloc !9
  %15 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %16, align 4
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.stm32_spi_reg, ptr %17, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = load ptr, ptr %8, align 4
  %22 = getelementptr i8, ptr %21, i32 %18
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #9, !srcloc !8
  %24 = or i32 %23, %20
  %25 = load ptr, ptr %8, align 4
  %26 = getelementptr i8, ptr %25, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #9, !srcloc !9
  %27 = load ptr, ptr %8, align 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #9, !srcloc !8
  %29 = or i32 %28, 512
  %30 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %29) #9, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_spi_dma_rx_cb(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void @spi_finalize_current_transfer(ptr noundef %3) #9
  %4 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.stm32_spi_cfg, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  tail call void %7(ptr noundef %0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32h7_spi_transfer_one_irq(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 17
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 6
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #9
  %8 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.stm32_spi_reg, ptr %10, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 %11
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #9, !srcloc !8
  %18 = or i32 %17, %13
  %19 = load ptr, ptr %14, align 4
  %20 = getelementptr i8, ptr %19, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #9, !srcloc !9
  %21 = load ptr, ptr %2, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %63, label %23

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 18
  %25 = load i32, ptr %24, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %63

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 14
  br label %29

29:                                               ; preds = %58, %27
  %30 = load ptr, ptr %14, align 4
  %31 = getelementptr i8, ptr %30, i32 20
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #9, !srcloc !8
  %33 = and i32 %32, 2
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %63, label %35

35:                                               ; preds = %29
  %36 = load i32, ptr %28, align 4
  %37 = load i32, ptr %24, align 4
  %38 = sub i32 %36, %37
  %39 = icmp ugt i32 %37, 3
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load ptr, ptr %2, align 4
  %42 = getelementptr i8, ptr %41, i32 %38
  %43 = load i32, ptr %42, align 4
  %44 = load ptr, ptr %14, align 4
  %45 = getelementptr i8, ptr %44, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #9, !srcloc !9
  br label %58

46:                                               ; preds = %35
  %47 = icmp ugt i32 %37, 1
  %48 = load ptr, ptr %2, align 4
  %49 = getelementptr i8, ptr %48, i32 %38
  br i1 %47, label %50, label %54

50:                                               ; preds = %46
  %51 = load i16, ptr %49, align 2
  %52 = load ptr, ptr %14, align 4
  %53 = getelementptr i8, ptr %52, i32 32
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %53, i16 %51) #9, !srcloc !12
  br label %58

54:                                               ; preds = %46
  %55 = load i8, ptr %49, align 1
  %56 = load ptr, ptr %14, align 4
  %57 = getelementptr i8, ptr %56, i32 32
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %57, i8 %55) #9, !srcloc !10
  br label %58

58:                                               ; preds = %54, %50, %40
  %59 = phi i32 [ -2, %50 ], [ -1, %54 ], [ -4, %40 ]
  %60 = load i32, ptr %24, align 4
  %61 = add i32 %60, %59
  store i32 %61, ptr %24, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %29, label %63

63:                                               ; preds = %58, %29, %23, %1
  %64 = icmp eq ptr %3, null
  %65 = icmp eq ptr %5, null
  %66 = select i1 %65, i32 600, i32 601
  %67 = select i1 %65, i32 602, i32 604
  %68 = select i1 %64, i32 %66, i32 %67
  %69 = load ptr, ptr %14, align 4
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #9, !srcloc !8
  %71 = or i32 %70, 512
  %72 = load ptr, ptr %14, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %71) #9, !srcloc !9
  %73 = load ptr, ptr %14, align 4
  %74 = getelementptr i8, ptr %73, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %68) #9, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #9
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32h7_spi_irq_thread(i32 noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.stm32_spi, ptr %4, i32 0, i32 6
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #9
  %7 = getelementptr inbounds %struct.stm32_spi, ptr %4, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 20
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #9, !srcloc !8
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr i8, ptr %11, i32 16
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #9, !srcloc !8
  %14 = or i32 %13, 2048
  %15 = getelementptr inbounds %struct.stm32_spi, ptr %4, i32 0, i32 13
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.stm32_spi, ptr %4, i32 0, i32 15
  %20 = load i8, ptr %19, align 4, !range !11
  %21 = icmp eq i8 %20, 0
  %22 = or i32 %13, 2051
  %23 = select i1 %21, i32 %22, i32 %14
  br label %24

24:                                               ; preds = %18, %2
  %25 = phi i32 [ %14, %2 ], [ %23, %18 ]
  %26 = and i32 %25, %10
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %29, ptr noundef nonnull @.str, i32 noundef %10, i32 noundef %13) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #9
  br label %155

30:                                               ; preds = %24
  %31 = and i32 %10, 2048
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %49, label %33

33:                                               ; preds = %30
  %34 = tail call i32 @___ratelimit(ptr noundef nonnull @stm32h7_spi_irq_thread.rs, ptr noundef nonnull @__func__.stm32h7_spi_irq_thread) #9
  %35 = getelementptr inbounds %struct.stm32_spi, ptr %4, i32 0, i32 15
  %36 = load i8, ptr %35, align 4, !range !11
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.stm32_spi, ptr %4, i32 0, i32 17
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %49, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.stm32_spi, ptr %4, i32 0, i32 19
  %44 = load i32, ptr %43, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  tail call fastcc void @stm32h7_spi_read_rxfifo(ptr noundef %4)
  %47 = load i8, ptr %35, align 4, !range !11
  %48 = icmp ne i8 %47, 0
  br label %49

49:                                               ; preds = %46, %42, %38, %33, %30
  %50 = phi i1 [ false, %30 ], [ %48, %46 ], [ false, %42 ], [ false, %38 ], [ true, %33 ]
  %51 = and i32 %10, 512
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %54, ptr noundef nonnull @.str.1) #10
  br label %55

55:                                               ; preds = %53, %49
  %56 = phi i1 [ true, %53 ], [ %50, %49 ]
  %57 = and i32 %10, 64
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.2) #10
  br label %61

61:                                               ; preds = %59, %55
  %62 = phi i1 [ true, %59 ], [ %56, %55 ]
  %63 = and i32 %10, 8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %83, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.stm32_spi, ptr %4, i32 0, i32 15
  %67 = load i8, ptr %66, align 4, !range !11
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.stm32_spi, ptr %4, i32 0, i32 17
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %82, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.stm32_spi, ptr %4, i32 0, i32 19
  %75 = load i32, ptr %74, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  tail call fastcc void @stm32h7_spi_read_rxfifo(ptr noundef %4)
  %78 = load i8, ptr %66, align 4
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %77, %65
  %81 = load i32, ptr %15, align 4
  switch i32 %81, label %83 [
    i32 1, label %82
    i32 3, label %82
  ]

82:                                               ; preds = %80, %80, %77, %73, %69
  br label %83

83:                                               ; preds = %82, %80, %61
  %84 = phi i1 [ true, %82 ], [ %62, %61 ], [ %62, %80 ]
  %85 = and i32 %10, 2
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %135, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.stm32_spi, ptr %4, i32 0, i32 15
  %89 = load i8, ptr %88, align 4, !range !11
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %91, label %135

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.stm32_spi, ptr %4, i32 0, i32 16
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %135, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.stm32_spi, ptr %4, i32 0, i32 18
  %97 = load i32, ptr %96, align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %135

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.stm32_spi, ptr %4, i32 0, i32 14
  br label %101

101:                                              ; preds = %130, %99
  %102 = load ptr, ptr %7, align 4
  %103 = getelementptr i8, ptr %102, i32 20
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %103) #9, !srcloc !8
  %105 = and i32 %104, 2
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %135, label %107

107:                                              ; preds = %101
  %108 = load i32, ptr %100, align 4
  %109 = load i32, ptr %96, align 4
  %110 = sub i32 %108, %109
  %111 = icmp ugt i32 %109, 3
  br i1 %111, label %112, label %118

112:                                              ; preds = %107
  %113 = load ptr, ptr %92, align 4
  %114 = getelementptr i8, ptr %113, i32 %110
  %115 = load i32, ptr %114, align 4
  %116 = load ptr, ptr %7, align 4
  %117 = getelementptr i8, ptr %116, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 %115) #9, !srcloc !9
  br label %130

118:                                              ; preds = %107
  %119 = icmp ugt i32 %109, 1
  %120 = load ptr, ptr %92, align 4
  %121 = getelementptr i8, ptr %120, i32 %110
  br i1 %119, label %122, label %126

122:                                              ; preds = %118
  %123 = load i16, ptr %121, align 2
  %124 = load ptr, ptr %7, align 4
  %125 = getelementptr i8, ptr %124, i32 32
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %125, i16 %123) #9, !srcloc !12
  br label %130

126:                                              ; preds = %118
  %127 = load i8, ptr %121, align 1
  %128 = load ptr, ptr %7, align 4
  %129 = getelementptr i8, ptr %128, i32 32
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %129, i8 %127) #9, !srcloc !10
  br label %130

130:                                              ; preds = %126, %122, %112
  %131 = phi i32 [ -2, %122 ], [ -1, %126 ], [ -4, %112 ]
  %132 = load i32, ptr %96, align 4
  %133 = add i32 %132, %131
  store i32 %133, ptr %96, align 4
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %101, label %135

135:                                              ; preds = %130, %101, %95, %91, %87, %83
  %136 = and i32 %10, 1
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %151, label %138

138:                                              ; preds = %135
  %139 = getelementptr inbounds %struct.stm32_spi, ptr %4, i32 0, i32 15
  %140 = load i8, ptr %139, align 4, !range !11
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %142, label %151

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.stm32_spi, ptr %4, i32 0, i32 17
  %144 = load ptr, ptr %143, align 4
  %145 = icmp eq ptr %144, null
  br i1 %145, label %151, label %146

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.stm32_spi, ptr %4, i32 0, i32 19
  %148 = load i32, ptr %147, align 4
  %149 = icmp sgt i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %146
  tail call fastcc void @stm32h7_spi_read_rxfifo(ptr noundef %4)
  br label %151

151:                                              ; preds = %150, %146, %142, %138, %135
  %152 = load ptr, ptr %7, align 4
  %153 = getelementptr i8, ptr %152, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %153, i32 %26) #9, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #9
  br i1 %84, label %154, label %155

154:                                              ; preds = %151
  tail call void @stm32h7_spi_disable(ptr noundef %4)
  tail call void @spi_finalize_current_transfer(ptr noundef %1) #9
  br label %155

155:                                              ; preds = %154, %151, %28
  %156 = phi i32 [ 0, %28 ], [ 1, %154 ], [ 1, %151 ]
  ret i32 %156
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_finalize_current_transfer(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stm32h7_spi_read_rxfifo(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 20
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #9, !srcloc !8
  %6 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 19
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %71

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 14
  %11 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 17
  %12 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 11
  br label %13

13:                                               ; preds = %62, %9
  %14 = phi i32 [ %7, %9 ], [ %69, %62 ]
  %15 = phi i32 [ %5, %9 ], [ %68, %62 ]
  %16 = lshr i32 %15, 13
  %17 = and i32 %16, 3
  %18 = and i32 %15, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %13
  %21 = and i32 %15, 32768
  br label %30

22:                                               ; preds = %13
  %23 = and i32 %15, 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %71, label %25

25:                                               ; preds = %22
  %26 = and i32 %15, 32768
  %27 = icmp ne i32 %26, 0
  %28 = icmp ne i32 %17, 0
  %29 = select i1 %27, i1 true, i1 %28
  br i1 %29, label %30, label %71

30:                                               ; preds = %25, %20
  %31 = phi i32 [ %21, %20 ], [ %26, %25 ]
  %32 = load i32, ptr %10, align 4
  %33 = sub i32 %32, %14
  %34 = icmp ult i32 %14, 4
  %35 = icmp eq i32 %31, 0
  %36 = select i1 %34, i1 %35, i1 false
  br i1 %36, label %43, label %37

37:                                               ; preds = %30
  %38 = load ptr, ptr %11, align 4
  %39 = getelementptr i8, ptr %38, i32 %33
  %40 = load ptr, ptr %2, align 4
  %41 = getelementptr i8, ptr %40, i32 48
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #9, !srcloc !8
  store i32 %42, ptr %39, align 4
  br label %62

43:                                               ; preds = %30
  %44 = icmp ugt i32 %14, 1
  %45 = icmp ugt i32 %17, 1
  %46 = select i1 %44, i1 true, i1 %45
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = load i32, ptr %12, align 4
  %49 = icmp ugt i32 %48, 8
  br i1 %49, label %50, label %56

50:                                               ; preds = %47, %43
  %51 = load ptr, ptr %11, align 4
  %52 = getelementptr i8, ptr %51, i32 %33
  %53 = load ptr, ptr %2, align 4
  %54 = getelementptr i8, ptr %53, i32 48
  %55 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %54) #9, !srcloc !13
  store i16 %55, ptr %52, align 2
  br label %62

56:                                               ; preds = %47
  %57 = load ptr, ptr %11, align 4
  %58 = getelementptr i8, ptr %57, i32 %33
  %59 = load ptr, ptr %2, align 4
  %60 = getelementptr i8, ptr %59, i32 48
  %61 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %60) #9, !srcloc !14
  store i8 %61, ptr %58, align 1
  br label %62

62:                                               ; preds = %56, %50, %37
  %63 = phi i32 [ -2, %50 ], [ -1, %56 ], [ -4, %37 ]
  %64 = load i32, ptr %6, align 4
  %65 = add i32 %64, %63
  store i32 %65, ptr %6, align 4
  %66 = load ptr, ptr %2, align 4
  %67 = getelementptr i8, ptr %66, i32 20
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #9, !srcloc !8
  %69 = load i32, ptr %6, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %13, label %71

71:                                               ; preds = %62, %25, %22, %1
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @stm32f4_spi_get_bpw_mask(ptr nocapture noundef readnone %0) #5 {
  ret i32 32896
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32f4_spi_disable(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 6
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #9
  %4 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !8
  %7 = and i32 %6, 64
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %86, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr %4, align 4
  %11 = getelementptr i8, ptr %10, i32 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #9, !srcloc !8
  %13 = and i32 %12, -225
  %14 = load ptr, ptr %4, align 4
  %15 = getelementptr i8, ptr %14, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #9, !srcloc !9
  %16 = tail call i64 @ktime_get() #9
  %17 = add i64 %16, 100000000
  %18 = load ptr, ptr %4, align 4
  %19 = getelementptr i8, ptr %18, i32 8
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #9, !srcloc !8
  %21 = and i32 %20, 128
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %41, label %23

23:                                               ; preds = %26, %9
  %24 = tail call i64 @ktime_get() #9
  %25 = icmp sgt i64 %24, %17
  br i1 %25, label %33, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 2147480) #9
  %28 = load ptr, ptr %4, align 4
  %29 = getelementptr i8, ptr %28, i32 8
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #9, !srcloc !8
  %31 = and i32 %30, 128
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %41, label %23

33:                                               ; preds = %23
  %34 = load ptr, ptr %4, align 4
  %35 = getelementptr i8, ptr %34, i32 8
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #9, !srcloc !8
  %37 = and i32 %36, 128
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %33
  %40 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %40, ptr noundef nonnull @.str.3) #10
  br label %41

41:                                               ; preds = %39, %33, %26, %9
  %42 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 15
  %43 = load i8, ptr %42, align 4, !range !11
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %69, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 20
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %58, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr %47, align 4
  %51 = getelementptr inbounds %struct.dma_device, ptr %50, i32 0, i32 47
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %49
  %55 = tail call i32 %52(ptr noundef nonnull %47) #9
  %56 = load i8, ptr %42, align 4
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %69, label %58

58:                                               ; preds = %54, %49, %45
  %59 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 21
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %69, label %62

62:                                               ; preds = %58
  %63 = load ptr, ptr %60, align 4
  %64 = getelementptr inbounds %struct.dma_device, ptr %63, i32 0, i32 47
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %62
  %68 = tail call i32 %65(ptr noundef nonnull %60) #9
  br label %69

69:                                               ; preds = %67, %62, %58, %54, %41
  %70 = load ptr, ptr %4, align 4
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #9, !srcloc !8
  %72 = and i32 %71, -65
  %73 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %72) #9, !srcloc !9
  %74 = load ptr, ptr %4, align 4
  %75 = getelementptr i8, ptr %74, i32 4
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #9, !srcloc !8
  %77 = and i32 %76, -4
  %78 = load ptr, ptr %4, align 4
  %79 = getelementptr i8, ptr %78, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %77) #9, !srcloc !9
  %80 = load ptr, ptr %4, align 4
  %81 = getelementptr i8, ptr %80, i32 12
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %81) #9, !srcloc !8
  %83 = load ptr, ptr %4, align 4
  %84 = getelementptr i8, ptr %83, i32 8
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %84) #9, !srcloc !8
  br label %86

86:                                               ; preds = %69, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32f4_spi_config(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 6
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #9
  %4 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 28
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #9, !srcloc !8
  %8 = and i32 %7, -2049
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #9, !srcloc !9
  %11 = load ptr, ptr %4, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #9, !srcloc !8
  %13 = or i32 %12, 17156
  %14 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %13) #9, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32f4_spi_set_bpw(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 11
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 16
  %5 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #9
  br i1 %4, label %8, label %11

8:                                                ; preds = %1
  %9 = or i32 %7, 2048
  %10 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %9) #9, !srcloc !9
  br label %14

11:                                               ; preds = %1
  %12 = and i32 %7, -2049
  %13 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %12) #9, !srcloc !9
  br label %14

14:                                               ; preds = %11, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32f4_spi_set_mode(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = and i32 %1, -3
  switch i32 %3, label %16 [
    i32 1, label %4
    i32 0, label %10
  ]

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #9, !srcloc !8
  %8 = or i32 %7, 49152
  %9 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %8) #9, !srcloc !9
  br label %28

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #9, !srcloc !8
  %14 = and i32 %13, -49153
  %15 = load ptr, ptr %11, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %14) #9, !srcloc !9
  br label %28

16:                                               ; preds = %2
  %17 = icmp eq i32 %1, 4
  br i1 %17, label %18, label %28

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #9, !srcloc !8
  %22 = or i32 %21, 32768
  %23 = load ptr, ptr %19, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %22) #9, !srcloc !9
  %24 = load ptr, ptr %19, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #9, !srcloc !8
  %26 = and i32 %25, -16385
  %27 = load ptr, ptr %19, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %26) #9, !srcloc !9
  br label %28

28:                                               ; preds = %18, %16, %10, %4
  %29 = phi i32 [ -22, %16 ], [ 0, %10 ], [ 0, %18 ], [ 0, %4 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32f4_spi_transfer_one_dma_start(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 13
  %3 = load i32, ptr %2, align 4
  switch i32 %3, label %12 [
    i32 2, label %4
    i32 4, label %4
    i32 0, label %4
  ]

4:                                                ; preds = %1, %1, %1
  %5 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #9, !srcloc !8
  %9 = or i32 %8, 32
  %10 = load ptr, ptr %5, align 4
  %11 = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #9, !srcloc !9
  br label %12

12:                                               ; preds = %4, %1
  %13 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %14, align 4
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.stm32_spi_reg, ptr %15, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 %16
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #9, !srcloc !8
  %23 = or i32 %22, %18
  %24 = load ptr, ptr %19, align 4
  %25 = getelementptr i8, ptr %24, i32 %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #9, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32f4_spi_dma_tx_cb(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 13
  %3 = load i32, ptr %2, align 4
  switch i32 %3, label %7 [
    i32 1, label %4
    i32 3, label %4
  ]

4:                                                ; preds = %1, %1
  %5 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  tail call void @spi_finalize_current_transfer(ptr noundef %6) #9
  tail call void @stm32f4_spi_disable(ptr noundef %0)
  br label %7

7:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32f4_spi_transfer_one_irq(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 13
  %3 = load i32, ptr %2, align 4
  %4 = icmp ult i32 %3, 5
  br i1 %4, label %5, label %65

5:                                                ; preds = %1
  %6 = getelementptr inbounds [5 x i32], ptr @switch.table.stm32f4_spi_transfer_one_irq, i32 0, i32 %3
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 6
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #9
  %10 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #9, !srcloc !8
  %14 = or i32 %13, %7
  %15 = load ptr, ptr %10, align 4
  %16 = getelementptr i8, ptr %15, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #9, !srcloc !9
  %17 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %18, align 4
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.stm32_spi_reg, ptr %19, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = load ptr, ptr %10, align 4
  %24 = getelementptr i8, ptr %23, i32 %20
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #9, !srcloc !8
  %26 = or i32 %25, %22
  %27 = load ptr, ptr %10, align 4
  %28 = getelementptr i8, ptr %27, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #9, !srcloc !9
  %29 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 16
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %64, label %32

32:                                               ; preds = %5
  %33 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 18
  %34 = load i32, ptr %33, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %64

36:                                               ; preds = %32
  %37 = load ptr, ptr %10, align 4
  %38 = getelementptr i8, ptr %37, i32 8
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #9, !srcloc !8
  %40 = and i32 %39, 2
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %64, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 14
  %44 = load i32, ptr %43, align 4
  %45 = load i32, ptr %33, align 4
  %46 = sub i32 %44, %45
  %47 = getelementptr inbounds %struct.stm32_spi, ptr %0, i32 0, i32 11
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 16
  %50 = load ptr, ptr %29, align 4
  %51 = getelementptr i8, ptr %50, i32 %46
  br i1 %49, label %52, label %56

52:                                               ; preds = %42
  %53 = load i16, ptr %51, align 2
  %54 = load ptr, ptr %10, align 4
  %55 = getelementptr i8, ptr %54, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %55, i16 %53) #9, !srcloc !12
  br label %60

56:                                               ; preds = %42
  %57 = load i8, ptr %51, align 1
  %58 = load ptr, ptr %10, align 4
  %59 = getelementptr i8, ptr %58, i32 12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %59, i8 %57) #9, !srcloc !10
  br label %60

60:                                               ; preds = %56, %52
  %61 = phi i32 [ -1, %56 ], [ -2, %52 ]
  %62 = load i32, ptr %33, align 4
  %63 = add i32 %62, %61
  store i32 %63, ptr %33, align 4
  br label %64

64:                                               ; preds = %60, %36, %32, %5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #9
  br label %65

65:                                               ; preds = %64, %1
  %66 = phi i32 [ 1, %64 ], [ -22, %1 ]
  ret i32 %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32f4_spi_irq_event(i32 noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.stm32_spi, ptr %4, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %5) #9
  %6 = getelementptr inbounds %struct.stm32_spi, ptr %4, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #9, !srcloc !8
  %10 = and i32 %9, -129
  %11 = getelementptr inbounds %struct.stm32_spi, ptr %4, i32 0, i32 15
  %12 = load i8, ptr %11, align 4, !range !11
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.stm32_spi, ptr %4, i32 0, i32 13
  %16 = load i32, ptr %15, align 4
  switch i32 %16, label %19 [
    i32 1, label %17
    i32 3, label %17
  ]

17:                                               ; preds = %14, %14
  %18 = and i32 %9, -193
  br label %19

19:                                               ; preds = %17, %14
  %20 = phi i32 [ 0, %14 ], [ 2, %17 ]
  %21 = phi i32 [ %10, %14 ], [ %18, %17 ]
  switch i32 %16, label %25 [
    i32 0, label %22
    i32 2, label %22
    i32 4, label %22
  ]

22:                                               ; preds = %19, %19, %19
  %23 = and i32 %21, -131
  %24 = or i32 %20, 65
  br label %25

25:                                               ; preds = %22, %19, %2
  %26 = phi i32 [ %24, %22 ], [ %20, %19 ], [ 0, %2 ]
  %27 = phi i32 [ %23, %22 ], [ %21, %19 ], [ %10, %2 ]
  %28 = and i32 %27, %26
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %31 = load i16, ptr %5, align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !18
  br label %176

33:                                               ; preds = %25
  %34 = and i32 %27, 64
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %37, ptr noundef nonnull @.str.4) #10
  %38 = load ptr, ptr %6, align 4
  %39 = getelementptr i8, ptr %38, i32 12
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #9, !srcloc !8
  %41 = load ptr, ptr %6, align 4
  %42 = getelementptr i8, ptr %41, i32 8
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #9, !srcloc !8
  br label %164

44:                                               ; preds = %33
  %45 = and i32 %27, 2
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %87, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.stm32_spi, ptr %4, i32 0, i32 16
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %83, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.stm32_spi, ptr %4, i32 0, i32 18
  %53 = load i32, ptr %52, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %83

55:                                               ; preds = %51
  %56 = load ptr, ptr %6, align 4
  %57 = getelementptr i8, ptr %56, i32 8
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #9, !srcloc !8
  %59 = and i32 %58, 2
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %83, label %61

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.stm32_spi, ptr %4, i32 0, i32 14
  %63 = load i32, ptr %62, align 4
  %64 = load i32, ptr %52, align 4
  %65 = sub i32 %63, %64
  %66 = getelementptr inbounds %struct.stm32_spi, ptr %4, i32 0, i32 11
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 16
  %69 = load ptr, ptr %48, align 4
  %70 = getelementptr i8, ptr %69, i32 %65
  br i1 %68, label %71, label %75

71:                                               ; preds = %61
  %72 = load i16, ptr %70, align 2
  %73 = load ptr, ptr %6, align 4
  %74 = getelementptr i8, ptr %73, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %74, i16 %72) #9, !srcloc !12
  br label %79

75:                                               ; preds = %61
  %76 = load i8, ptr %70, align 1
  %77 = load ptr, ptr %6, align 4
  %78 = getelementptr i8, ptr %77, i32 12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %78, i8 %76) #9, !srcloc !10
  br label %79

79:                                               ; preds = %75, %71
  %80 = phi i32 [ -1, %75 ], [ -2, %71 ]
  %81 = load i32, ptr %52, align 4
  %82 = add i32 %81, %80
  store i32 %82, ptr %52, align 4
  br label %83

83:                                               ; preds = %79, %55, %51, %47
  %84 = getelementptr inbounds %struct.stm32_spi, ptr %4, i32 0, i32 18
  %85 = load i32, ptr %84, align 4
  %86 = icmp eq i32 %85, 0
  br label %87

87:                                               ; preds = %83, %44
  %88 = phi i1 [ false, %44 ], [ %86, %83 ]
  %89 = and i32 %27, 1
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %163, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.stm32_spi, ptr %4, i32 0, i32 19
  %93 = load i32, ptr %92, align 4
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %124

95:                                               ; preds = %91
  %96 = load ptr, ptr %6, align 4
  %97 = getelementptr i8, ptr %96, i32 8
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %97) #9, !srcloc !8
  %99 = and i32 %98, 1
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %122, label %101

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.stm32_spi, ptr %4, i32 0, i32 14
  %103 = load i32, ptr %102, align 4
  %104 = load i32, ptr %92, align 4
  %105 = sub i32 %103, %104
  %106 = getelementptr inbounds %struct.stm32_spi, ptr %4, i32 0, i32 11
  %107 = load i32, ptr %106, align 4
  %108 = icmp eq i32 %107, 16
  %109 = getelementptr inbounds %struct.stm32_spi, ptr %4, i32 0, i32 17
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr i8, ptr %110, i32 %105
  %112 = load ptr, ptr %6, align 4
  %113 = getelementptr i8, ptr %112, i32 12
  br i1 %108, label %114, label %116

114:                                              ; preds = %101
  %115 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %113) #9, !srcloc !13
  store i16 %115, ptr %111, align 2
  br label %118

116:                                              ; preds = %101
  %117 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %113) #9, !srcloc !14
  store i8 %117, ptr %111, align 1
  br label %118

118:                                              ; preds = %116, %114
  %119 = phi i32 [ -1, %116 ], [ -2, %114 ]
  %120 = load i32, ptr %92, align 4
  %121 = add i32 %120, %119
  store i32 %121, ptr %92, align 4
  br label %124

122:                                              ; preds = %95
  %123 = load i32, ptr %92, align 4
  br label %124

124:                                              ; preds = %122, %118, %91
  %125 = phi i32 [ %123, %122 ], [ %93, %91 ], [ %121, %118 ]
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %164, label %127

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.stm32_spi, ptr %4, i32 0, i32 16
  %129 = load ptr, ptr %128, align 4
  %130 = icmp eq ptr %129, null
  br i1 %130, label %163, label %131

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.stm32_spi, ptr %4, i32 0, i32 18
  %133 = load i32, ptr %132, align 4
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %163

135:                                              ; preds = %131
  %136 = load ptr, ptr %6, align 4
  %137 = getelementptr i8, ptr %136, i32 8
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %137) #9, !srcloc !8
  %139 = and i32 %138, 2
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %163, label %141

141:                                              ; preds = %135
  %142 = getelementptr inbounds %struct.stm32_spi, ptr %4, i32 0, i32 14
  %143 = load i32, ptr %142, align 4
  %144 = load i32, ptr %132, align 4
  %145 = sub i32 %143, %144
  %146 = getelementptr inbounds %struct.stm32_spi, ptr %4, i32 0, i32 11
  %147 = load i32, ptr %146, align 4
  %148 = icmp eq i32 %147, 16
  %149 = load ptr, ptr %128, align 4
  %150 = getelementptr i8, ptr %149, i32 %145
  br i1 %148, label %151, label %155

151:                                              ; preds = %141
  %152 = load i16, ptr %150, align 2
  %153 = load ptr, ptr %6, align 4
  %154 = getelementptr i8, ptr %153, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %154, i16 %152) #9, !srcloc !12
  br label %159

155:                                              ; preds = %141
  %156 = load i8, ptr %150, align 1
  %157 = load ptr, ptr %6, align 4
  %158 = getelementptr i8, ptr %157, i32 12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %158, i8 %156) #9, !srcloc !10
  br label %159

159:                                              ; preds = %155, %151
  %160 = phi i32 [ -1, %155 ], [ -2, %151 ]
  %161 = load i32, ptr %132, align 4
  %162 = add i32 %161, %160
  store i32 %162, ptr %132, align 4
  br label %163

163:                                              ; preds = %159, %135, %131, %127, %87
  br i1 %88, label %164, label %173

164:                                              ; preds = %163, %124, %36
  %165 = load ptr, ptr %6, align 4
  %166 = getelementptr i8, ptr %165, i32 4
  %167 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %166) #9, !srcloc !8
  %168 = and i32 %167, -225
  %169 = load ptr, ptr %6, align 4
  %170 = getelementptr i8, ptr %169, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %170, i32 %168) #9, !srcloc !9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %171 = load i16, ptr %5, align 4
  %172 = add i16 %171, 1
  store i16 %172, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !18
  br label %176

173:                                              ; preds = %163
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %174 = load i16, ptr %5, align 4
  %175 = add i16 %174, 1
  store i16 %175, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !18
  br label %176

176:                                              ; preds = %173, %164, %30
  %177 = phi i32 [ 2, %164 ], [ 1, %173 ], [ 0, %30 ]
  ret i32 %177
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32f4_spi_irq_thread(i32 noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  tail call void @spi_finalize_current_transfer(ptr noundef %1) #9
  tail call void @stm32f4_spi_disable(ptr noundef %4)
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_spi_probe(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @__devm_spi_alloc_controller(ptr noundef %2, i32 noundef 92, i1 noundef zeroext false) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6) #10
  br label %187

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %7, align 8
  %8 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  store ptr %2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.stm32_spi, ptr %9, i32 0, i32 1
  store ptr %3, ptr %10, align 4
  %11 = getelementptr inbounds %struct.stm32_spi, ptr %9, i32 0, i32 6
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 6
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.device_driver, ptr %13, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = tail call ptr @of_match_device(ptr noundef %15, ptr noundef %2) #9
  %17 = getelementptr inbounds %struct.of_device_id, ptr %16, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.stm32_spi, ptr %9, i32 0, i32 2
  store ptr %18, ptr %19, align 4
  %20 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #9
  %21 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %20) #9
  %22 = getelementptr inbounds %struct.stm32_spi, ptr %9, i32 0, i32 3
  store ptr %21, ptr %22, align 4
  %23 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %26

24:                                               ; preds = %6
  %25 = ptrtoint ptr %21 to i32
  br label %187

26:                                               ; preds = %6
  %27 = load i32, ptr %20, align 4
  %28 = getelementptr inbounds %struct.stm32_spi, ptr %9, i32 0, i32 22
  store i32 %27, ptr %28, align 4
  %29 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #9
  %30 = getelementptr inbounds %struct.stm32_spi, ptr %9, i32 0, i32 7
  store i32 %29, ptr %30, align 4
  %31 = icmp slt i32 %29, 1
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %2, i32 noundef %29, ptr noundef nonnull @.str.7) #9
  br label %187

34:                                               ; preds = %26
  %35 = load ptr, ptr %19, align 4
  %36 = getelementptr inbounds %struct.stm32_spi_cfg, ptr %35, i32 0, i32 13
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.stm32_spi_cfg, ptr %35, i32 0, i32 14
  %39 = load ptr, ptr %38, align 4
  %40 = load ptr, ptr %0, align 8
  %41 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %29, ptr noundef %37, ptr noundef %39, i32 noundef 8192, ptr noundef %40, ptr noundef nonnull %3) #9
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %34
  %44 = load i32, ptr %30, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef %44, i32 noundef %41) #10
  br label %187

45:                                               ; preds = %34
  %46 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #9
  %47 = getelementptr inbounds %struct.stm32_spi, ptr %9, i32 0, i32 4
  store ptr %46, ptr %47, align 4
  %48 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = ptrtoint ptr %46 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.9, i32 noundef %50) #10
  br label %187

51:                                               ; preds = %45
  %52 = tail call i32 @clk_prepare(ptr noundef %46) #9
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = tail call i32 @clk_enable(ptr noundef %46) #9
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  tail call void @clk_unprepare(ptr noundef %46) #9
  br label %58

58:                                               ; preds = %57, %51
  %59 = phi i32 [ %55, %57 ], [ %52, %51 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef %59) #10
  br label %187

60:                                               ; preds = %54
  %61 = load ptr, ptr %47, align 4
  %62 = tail call i32 @clk_get_rate(ptr noundef %61) #9
  %63 = getelementptr inbounds %struct.stm32_spi, ptr %9, i32 0, i32 5
  store i32 %62, ptr %63, align 4
  %64 = icmp eq i32 %62, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.11) #10
  br label %184

66:                                               ; preds = %60
  %67 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #9
  %68 = icmp eq ptr %67, null
  br i1 %68, label %78, label %69

69:                                               ; preds = %66
  %70 = icmp ugt ptr %67, inttoptr (i32 -4096 to ptr)
  br i1 %70, label %71, label %74

71:                                               ; preds = %69
  %72 = ptrtoint ptr %67 to i32
  %73 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %2, i32 noundef %72, ptr noundef nonnull @.str.12) #9
  br label %184

74:                                               ; preds = %69
  %75 = tail call i32 @reset_control_assert(ptr noundef nonnull %67) #9
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %76(i32 noundef 429496) #9
  %77 = tail call i32 @reset_control_deassert(ptr noundef nonnull %67) #9
  br label %78

78:                                               ; preds = %74, %66
  %79 = load ptr, ptr %19, align 4
  %80 = getelementptr inbounds %struct.stm32_spi_cfg, ptr %79, i32 0, i32 17
  %81 = load i8, ptr %80, align 4, !range !11
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.stm32_spi_cfg, ptr %79, i32 0, i32 1
  %85 = load ptr, ptr %84, align 4
  %86 = tail call i32 %85(ptr noundef %9) #9
  %87 = getelementptr inbounds %struct.stm32_spi, ptr %9, i32 0, i32 8
  store i32 %86, ptr %87, align 4
  %88 = load ptr, ptr %19, align 4
  br label %89

89:                                               ; preds = %83, %78
  %90 = phi ptr [ %88, %83 ], [ %79, %78 ]
  %91 = getelementptr inbounds %struct.stm32_spi_cfg, ptr %90, i32 0, i32 4
  %92 = load ptr, ptr %91, align 4
  %93 = tail call i32 %92(ptr noundef %9) #9
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %89
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.13, i32 noundef %93) #10
  br label %184

96:                                               ; preds = %89
  %97 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %98 = load ptr, ptr %97, align 8
  %99 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 25
  store ptr %98, ptr %99, align 8
  %100 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 36
  store i8 1, ptr %100, align 4
  %101 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  %102 = load i32, ptr %101, align 4
  %103 = trunc i32 %102 to i16
  %104 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 2
  store i16 %103, ptr %104, align 8
  %105 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 5
  store i32 31, ptr %105, align 8
  %106 = load ptr, ptr %19, align 4
  %107 = getelementptr inbounds %struct.stm32_spi_cfg, ptr %106, i32 0, i32 2
  %108 = load ptr, ptr %107, align 4
  %109 = tail call i32 %108(ptr noundef %9) #9
  %110 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 7
  store i32 %109, ptr %110, align 8
  %111 = load i32, ptr %63, align 4
  %112 = load ptr, ptr %19, align 4
  %113 = getelementptr inbounds %struct.stm32_spi_cfg, ptr %112, i32 0, i32 15
  %114 = load i32, ptr %113, align 4
  %115 = udiv i32 %111, %114
  %116 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 9
  store i32 %115, ptr %116, align 8
  %117 = load i32, ptr %63, align 4
  %118 = load ptr, ptr %19, align 4
  %119 = getelementptr inbounds %struct.stm32_spi_cfg, ptr %118, i32 0, i32 16
  %120 = load i32, ptr %119, align 4
  %121 = udiv i32 %117, %120
  %122 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 8
  store i32 %121, ptr %122, align 4
  %123 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 56
  store i8 1, ptr %123, align 8
  %124 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 47
  store ptr @stm32_spi_prepare_msg, ptr %124, align 4
  %125 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 51
  store ptr @stm32_spi_transfer_one, ptr %125, align 4
  %126 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 48
  store ptr @stm32_spi_unprepare_msg, ptr %126, align 8
  %127 = load ptr, ptr %19, align 4
  %128 = getelementptr inbounds %struct.stm32_spi_cfg, ptr %127, i32 0, i32 18
  %129 = load i16, ptr %128, align 2
  %130 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 10
  store i16 %129, ptr %130, align 4
  %131 = load ptr, ptr %9, align 4
  %132 = tail call ptr @dma_request_chan(ptr noundef %131, ptr noundef nonnull @.str.14) #9
  %133 = getelementptr inbounds %struct.stm32_spi, ptr %9, i32 0, i32 20
  store ptr %132, ptr %133, align 4
  %134 = icmp ugt ptr %132, inttoptr (i32 -4096 to ptr)
  br i1 %134, label %135, label %138

135:                                              ; preds = %96
  store ptr null, ptr %133, align 4
  %136 = icmp eq ptr %132, inttoptr (i32 -517 to ptr)
  br i1 %136, label %184, label %137

137:                                              ; preds = %135
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.15) #10
  br label %140

138:                                              ; preds = %96
  %139 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 60
  store ptr %132, ptr %139, align 8
  br label %140

140:                                              ; preds = %138, %137
  %141 = load ptr, ptr %9, align 4
  %142 = tail call ptr @dma_request_chan(ptr noundef %141, ptr noundef nonnull @.str.16) #9
  %143 = getelementptr inbounds %struct.stm32_spi, ptr %9, i32 0, i32 21
  store ptr %142, ptr %143, align 4
  %144 = icmp ugt ptr %142, inttoptr (i32 -4096 to ptr)
  br i1 %144, label %145, label %148

145:                                              ; preds = %140
  store ptr null, ptr %143, align 4
  %146 = icmp eq ptr %142, inttoptr (i32 -517 to ptr)
  br i1 %146, label %175, label %147

147:                                              ; preds = %145
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.17) #10
  br label %150

148:                                              ; preds = %140
  %149 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 61
  store ptr %142, ptr %149, align 4
  br label %150

150:                                              ; preds = %148, %147
  %151 = load ptr, ptr %133, align 4
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = load ptr, ptr %143, align 4
  %155 = icmp eq ptr %154, null
  br i1 %155, label %158, label %156

156:                                              ; preds = %153, %150
  %157 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 24
  store ptr @stm32_spi_can_dma, ptr %157, align 4
  br label %158

158:                                              ; preds = %156, %153
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %2, i32 noundef 1) #9
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %2, i1 noundef zeroext true) #9
  %159 = tail call i32 @__pm_runtime_set_status(ptr noundef %2, i32 noundef 0) #9
  %160 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %160) #9, !srcloc !19
  %161 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %160, ptr %160, i32 1, ptr elementtype(i32) %160) #9, !srcloc !20
  tail call void @pm_runtime_enable(ptr noundef %2) #9
  %162 = tail call i32 @spi_register_controller(ptr noundef nonnull %3) #9
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %171, label %164

164:                                              ; preds = %158
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef %162) #10
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %160) #9, !srcloc !19
  %165 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %160, ptr %160, i32 0, i32 -1, ptr elementtype(i32) %160) #9, !srcloc !22
  %166 = extractvalue { i32, i32, i32 } %165, 0
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %164
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !23
  br label %169

169:                                              ; preds = %168, %164
  %170 = tail call i32 @__pm_runtime_set_status(ptr noundef %2, i32 noundef 2) #9
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %2, i1 noundef zeroext false) #9
  br label %175

171:                                              ; preds = %158
  %172 = tail call i64 @ktime_get_mono_fast_ns() #9
  %173 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 22
  store volatile i64 %172, ptr %173, align 8
  %174 = tail call i32 @__pm_runtime_suspend(ptr noundef %2, i32 noundef 13) #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.19) #10
  br label %187

175:                                              ; preds = %169, %145
  %176 = phi i32 [ -517, %145 ], [ %162, %169 ]
  %177 = load ptr, ptr %133, align 4
  %178 = icmp eq ptr %177, null
  br i1 %178, label %180, label %179

179:                                              ; preds = %175
  tail call void @dma_release_channel(ptr noundef nonnull %177) #9
  br label %180

180:                                              ; preds = %179, %175
  %181 = load ptr, ptr %143, align 4
  %182 = icmp eq ptr %181, null
  br i1 %182, label %184, label %183

183:                                              ; preds = %180
  tail call void @dma_release_channel(ptr noundef nonnull %181) #9
  br label %184

184:                                              ; preds = %183, %180, %135, %95, %71, %65
  %185 = phi i32 [ %73, %71 ], [ %93, %95 ], [ -517, %135 ], [ %176, %183 ], [ %176, %180 ], [ -22, %65 ]
  %186 = load ptr, ptr %47, align 4
  tail call void @clk_disable(ptr noundef %186) #9
  tail call void @clk_unprepare(ptr noundef %186) #9
  br label %187

187:                                              ; preds = %184, %171, %58, %49, %43, %32, %24, %5
  %188 = phi i32 [ %25, %24 ], [ %33, %32 ], [ %41, %43 ], [ %50, %49 ], [ %59, %58 ], [ %185, %184 ], [ 0, %171 ], [ -12, %5 ]
  ret i32 %188
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_spi_remove(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %7 = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #9
  tail call void @spi_unregister_controller(ptr noundef %3) #9
  %8 = getelementptr inbounds %struct.stm32_spi, ptr %5, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.stm32_spi_cfg, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  tail call void %11(ptr noundef %5) #9
  tail call void @__pm_runtime_disable(ptr noundef %6, i1 noundef zeroext true) #9
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #9, !srcloc !19
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 0, i32 -1, ptr elementtype(i32) %12) #9, !srcloc !22
  %14 = extractvalue { i32, i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !23
  br label %17

17:                                               ; preds = %16, %1
  %18 = tail call i32 @__pm_runtime_set_status(ptr noundef %6, i32 noundef 2) #9
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %6, i1 noundef zeroext false) #9
  %19 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 60
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  tail call void @dma_release_channel(ptr noundef nonnull %20) #9
  br label %23

23:                                               ; preds = %22, %17
  %24 = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 61
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void @dma_release_channel(ptr noundef nonnull %25) #9
  br label %28

28:                                               ; preds = %27, %23
  %29 = getelementptr inbounds %struct.stm32_spi, ptr %5, i32 0, i32 4
  %30 = load ptr, ptr %29, align 4
  tail call void @clk_disable(ptr noundef %30) #9
  tail call void @clk_unprepare(ptr noundef %30) #9
  %31 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %6) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_spi_prepare_msg(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.stm32_spi, ptr %4, i32 0, i32 9
  store i32 0, ptr %9, align 4
  %10 = icmp eq ptr %8, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %8, ptr noundef nonnull @.str.20, ptr noundef %9, i32 noundef 1, i32 noundef 0) #9
  br label %13

13:                                               ; preds = %11, %2
  %14 = getelementptr inbounds %struct.spi_device, ptr %6, i32 0, i32 7
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 2
  %17 = icmp eq i32 %16, 0
  %18 = getelementptr inbounds %struct.stm32_spi, ptr %4, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.stm32_spi_regspec, ptr %20, i32 0, i32 3, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = select i1 %17, i32 %22, i32 0
  %24 = select i1 %17, i32 0, i32 %22
  %25 = and i32 %15, 1
  %26 = icmp eq i32 %25, 0
  %27 = getelementptr inbounds %struct.stm32_spi_regspec, ptr %20, i32 0, i32 4, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = select i1 %26, i32 %28, i32 0
  %30 = or i32 %23, %29
  %31 = select i1 %26, i32 0, i32 %28
  %32 = or i32 %24, %31
  %33 = and i32 %15, 8
  %34 = icmp eq i32 %33, 0
  %35 = getelementptr inbounds %struct.stm32_spi_regspec, ptr %20, i32 0, i32 5, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = select i1 %34, i32 %36, i32 0
  %38 = or i32 %30, %37
  %39 = select i1 %34, i32 0, i32 %36
  %40 = or i32 %32, %39
  %41 = getelementptr inbounds %struct.stm32_spi, ptr %4, i32 0, i32 2
  %42 = getelementptr inbounds %struct.stm32_spi_cfg, ptr %19, i32 0, i32 8
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %13
  %46 = tail call i32 @spi_split_transfers_maxsize(ptr noundef %0, ptr noundef %1, i32 noundef 65535, i32 noundef 3265) #9
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %73

48:                                               ; preds = %45, %13
  %49 = getelementptr inbounds %struct.stm32_spi, ptr %4, i32 0, i32 6
  %50 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %49) #9
  %51 = icmp ne i32 %38, 0
  %52 = icmp ne i32 %40, 0
  %53 = select i1 %51, i1 true, i1 %52
  br i1 %53, label %54, label %72

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.stm32_spi, ptr %4, i32 0, i32 3
  %56 = load ptr, ptr %55, align 4
  %57 = load ptr, ptr %41, align 4
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.stm32_spi_regspec, ptr %58, i32 0, i32 3
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr i8, ptr %56, i32 %60
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #9, !srcloc !8
  %63 = xor i32 %38, -1
  %64 = and i32 %62, %63
  %65 = or i32 %64, %40
  %66 = load ptr, ptr %55, align 4
  %67 = load ptr, ptr %41, align 4
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.stm32_spi_regspec, ptr %68, i32 0, i32 3
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr i8, ptr %66, i32 %70
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %65) #9, !srcloc !9
  br label %72

72:                                               ; preds = %54, %48
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %49, i32 noundef %50) #9
  br label %73

73:                                               ; preds = %72, %45
  %74 = phi i32 [ 0, %72 ], [ %46, %45 ]
  ret i32 %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_spi_transfer_one(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca %struct.dma_slave_config, align 4
  %5 = alloca %struct.dma_slave_config, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %2, align 4
  %9 = getelementptr inbounds %struct.stm32_spi, ptr %7, i32 0, i32 16
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.stm32_spi, ptr %7, i32 0, i32 17
  store ptr %11, ptr %12, align 4
  %13 = icmp eq ptr %8, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %3
  %18 = phi i32 [ %16, %14 ], [ 0, %3 ]
  %19 = getelementptr inbounds %struct.stm32_spi, ptr %7, i32 0, i32 18
  store i32 %18, ptr %19, align 4
  %20 = icmp eq ptr %11, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  br label %24

24:                                               ; preds = %21, %17
  %25 = phi i32 [ %23, %21 ], [ 0, %17 ]
  %26 = getelementptr inbounds %struct.stm32_spi, ptr %7, i32 0, i32 19
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 24
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %24
  %31 = tail call zeroext i1 %28(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9
  br label %32

32:                                               ; preds = %30, %24
  %33 = phi i1 [ false, %24 ], [ %31, %30 ]
  %34 = getelementptr inbounds %struct.stm32_spi, ptr %7, i32 0, i32 15
  %35 = zext i1 %33 to i8
  store i8 %35, ptr %34, align 4
  %36 = getelementptr inbounds %struct.stm32_spi, ptr %7, i32 0, i32 6
  %37 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %36) #9
  %38 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.stm32_spi, ptr %7, i32 0, i32 14
  store i32 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 8
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = getelementptr inbounds %struct.stm32_spi, ptr %7, i32 0, i32 11
  store i32 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.stm32_spi, ptr %7, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.stm32_spi_cfg, ptr %46, i32 0, i32 5
  %48 = load ptr, ptr %47, align 4
  tail call void %48(ptr noundef %7) #9
  %49 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 12
  %50 = load i32, ptr %49, align 4
  %51 = load ptr, ptr %45, align 4
  %52 = getelementptr inbounds %struct.stm32_spi_cfg, ptr %51, i32 0, i32 15
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.stm32_spi_cfg, ptr %51, i32 0, i32 16
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.stm32_spi, ptr %7, i32 0, i32 5
  %57 = load i32, ptr %56, align 4
  %58 = and i32 %57, -2
  %59 = add i32 %50, -1
  %60 = add i32 %59, %58
  %61 = udiv i32 %60, %50
  %62 = icmp ult i32 %61, %53
  %63 = icmp ugt i32 %61, %55
  %64 = or i1 %62, %63
  br i1 %64, label %153, label %65

65:                                               ; preds = %32
  %66 = tail call i32 @llvm.ctpop.i32(i32 %61) #9, !range !24
  %67 = icmp ult i32 %66, 2
  %68 = icmp ult i32 %60, %50
  %69 = tail call i32 @llvm.ctlz.i32(i32 %61, i1 false) #9, !range !24
  %70 = select i1 %67, i32 31, i32 32
  %71 = sext i1 %67 to i32
  %72 = sub nsw i32 %70, %69
  %73 = select i1 %68, i32 %71, i32 %72
  %74 = lshr i32 %57, %73
  %75 = getelementptr inbounds %struct.stm32_spi, ptr %7, i32 0, i32 10
  store i32 %74, ptr %75, align 4
  %76 = add nsw i32 %73, -1
  %77 = icmp slt i32 %73, 1
  br i1 %77, label %153, label %78

78:                                               ; preds = %65
  store i32 %74, ptr %49, align 4
  %79 = load ptr, ptr %45, align 4
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.stm32_spi_regspec, ptr %80, i32 0, i32 6
  %82 = getelementptr inbounds %struct.stm32_spi_regspec, ptr %80, i32 0, i32 6, i32 1
  %83 = load i32, ptr %82, align 4
  %84 = getelementptr inbounds %struct.stm32_spi_regspec, ptr %80, i32 0, i32 6, i32 2
  %85 = load i32, ptr %84, align 4
  %86 = shl i32 %76, %85
  %87 = and i32 %86, %83
  %88 = getelementptr inbounds %struct.stm32_spi, ptr %7, i32 0, i32 3
  %89 = load ptr, ptr %88, align 4
  %90 = load i32, ptr %81, align 4
  %91 = getelementptr i8, ptr %89, i32 %90
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %91) #9, !srcloc !8
  %93 = xor i32 %83, -1
  %94 = and i32 %92, %93
  %95 = or i32 %94, %87
  %96 = load ptr, ptr %88, align 4
  %97 = load ptr, ptr %45, align 4
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.stm32_spi_regspec, ptr %98, i32 0, i32 6
  %100 = load i32, ptr %99, align 4
  %101 = getelementptr i8, ptr %96, i32 %100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 %95) #9, !srcloc !9
  %102 = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 7
  %103 = load i32, ptr %102, align 8
  %104 = and i32 %103, 16
  %105 = icmp eq i32 %104, 0
  %106 = load ptr, ptr %2, align 4
  %107 = icmp eq ptr %106, null
  br i1 %105, label %110, label %108

108:                                              ; preds = %78
  %109 = select i1 %107, i32 4, i32 3
  br label %115

110:                                              ; preds = %78
  br i1 %107, label %115, label %111

111:                                              ; preds = %110
  %112 = load ptr, ptr %10, align 4
  %113 = icmp eq ptr %112, null
  %114 = zext i1 %113 to i32
  br label %115

115:                                              ; preds = %111, %110, %108
  %116 = phi i32 [ %109, %108 ], [ 2, %110 ], [ %114, %111 ]
  %117 = load ptr, ptr %45, align 4
  %118 = getelementptr inbounds %struct.stm32_spi_cfg, ptr %117, i32 0, i32 6
  %119 = load ptr, ptr %118, align 4
  %120 = tail call i32 %119(ptr noundef %7, i32 noundef %116) #9
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %153, label %122

122:                                              ; preds = %115
  %123 = getelementptr inbounds %struct.stm32_spi, ptr %7, i32 0, i32 13
  store i32 %116, ptr %123, align 4
  %124 = load ptr, ptr %45, align 4
  %125 = getelementptr inbounds %struct.stm32_spi_cfg, ptr %124, i32 0, i32 7
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %130, label %128

128:                                              ; preds = %122
  %129 = load i32, ptr %38, align 4
  tail call void %126(ptr noundef %7, i32 noundef %129) #9
  br label %130

130:                                              ; preds = %128, %122
  %131 = load i32, ptr %44, align 4
  %132 = icmp ult i32 %131, 9
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = load i32, ptr %38, align 4
  br label %145

135:                                              ; preds = %130
  %136 = icmp ult i32 %131, 17
  %137 = load i32, ptr %38, align 4
  %138 = shl i32 %137, 3
  br i1 %136, label %139, label %142

139:                                              ; preds = %135
  %140 = add i32 %138, 15
  %141 = lshr i32 %140, 4
  br label %145

142:                                              ; preds = %135
  %143 = add i32 %138, 31
  %144 = lshr i32 %143, 5
  br label %145

145:                                              ; preds = %142, %139, %133
  %146 = phi i32 [ %134, %133 ], [ %141, %139 ], [ %144, %142 ]
  %147 = load ptr, ptr %45, align 4
  %148 = getelementptr inbounds %struct.stm32_spi_cfg, ptr %147, i32 0, i32 8
  %149 = load ptr, ptr %148, align 4
  %150 = icmp eq ptr %149, null
  br i1 %150, label %155, label %151

151:                                              ; preds = %145
  %152 = tail call i32 %149(ptr noundef %7, i32 noundef %146) #9
  br label %155

153:                                              ; preds = %115, %65, %32
  %154 = phi i32 [ -22, %32 ], [ %76, %65 ], [ %120, %115 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %36, i32 noundef %37) #9
  br label %158

155:                                              ; preds = %151, %145
  %156 = phi i32 [ %152, %151 ], [ %120, %145 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %36, i32 noundef %37) #9
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %155, %153
  %159 = phi i32 [ %154, %153 ], [ %156, %155 ]
  %160 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %160, ptr noundef nonnull @.str.21) #10
  br label %416

161:                                              ; preds = %155
  %162 = load i8, ptr %34, align 4, !range !11
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %411, label %164

164:                                              ; preds = %161
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %4, i8 0, i32 48, i1 false) #9, !annotation !25
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %5, i8 0, i32 48, i1 false) #9, !annotation !25
  %165 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %36) #9
  %166 = load ptr, ptr %12, align 4
  %167 = icmp eq ptr %166, null
  br i1 %167, label %234, label %168

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.stm32_spi, ptr %7, i32 0, i32 21
  %170 = load ptr, ptr %169, align 4
  %171 = icmp eq ptr %170, null
  br i1 %171, label %234, label %172

172:                                              ; preds = %168
  %173 = load i32, ptr %44, align 4
  %174 = icmp ult i32 %173, 9
  %175 = icmp ult i32 %173, 17
  %176 = select i1 %175, i32 2, i32 4
  %177 = select i1 %174, i32 1, i32 %176
  %178 = load ptr, ptr %45, align 4
  %179 = getelementptr inbounds %struct.stm32_spi_cfg, ptr %178, i32 0, i32 17
  %180 = load i8, ptr %179, align 4, !range !11
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %187, label %182

182:                                              ; preds = %172
  %183 = getelementptr inbounds %struct.stm32_spi, ptr %7, i32 0, i32 12
  %184 = load i32, ptr %183, align 4
  %185 = icmp eq i32 %184, 2
  %186 = select i1 %185, i32 1, i32 %184
  br label %187

187:                                              ; preds = %182, %172
  %188 = phi i32 [ %186, %182 ], [ 1, %172 ]
  %189 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(48) %189, i8 0, i32 44, i1 false) #9
  store i32 2, ptr %5, align 4
  %190 = getelementptr inbounds %struct.stm32_spi, ptr %7, i32 0, i32 22
  %191 = load i32, ptr %190, align 4
  %192 = load ptr, ptr %178, align 4
  %193 = getelementptr inbounds %struct.stm32_spi_regspec, ptr %192, i32 0, i32 7
  %194 = load i32, ptr %193, align 4
  %195 = add i32 %194, %191
  store i32 %195, ptr %189, align 4
  %196 = getelementptr inbounds %struct.dma_slave_config, ptr %5, i32 0, i32 3
  store i32 %177, ptr %196, align 4
  %197 = getelementptr inbounds %struct.dma_slave_config, ptr %5, i32 0, i32 5
  store i32 %188, ptr %197, align 4
  %198 = load ptr, ptr %170, align 4
  %199 = getelementptr inbounds %struct.dma_device, ptr %198, i32 0, i32 44
  %200 = load ptr, ptr %199, align 4
  %201 = icmp eq ptr %200, null
  br i1 %201, label %205, label %202

202:                                              ; preds = %187
  %203 = call i32 %200(ptr noundef nonnull %170, ptr noundef nonnull %5) #9
  %204 = load ptr, ptr %45, align 4
  br label %205

205:                                              ; preds = %202, %187
  %206 = phi ptr [ %178, %187 ], [ %204, %202 ]
  %207 = load ptr, ptr %206, align 4
  %208 = getelementptr inbounds %struct.stm32_spi_regspec, ptr %207, i32 0, i32 1
  %209 = load i32, ptr %208, align 4
  %210 = getelementptr inbounds %struct.stm32_spi_regspec, ptr %207, i32 0, i32 1, i32 1
  %211 = load i32, ptr %210, align 4
  %212 = load ptr, ptr %88, align 4
  %213 = getelementptr i8, ptr %212, i32 %209
  %214 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %213) #9, !srcloc !8
  %215 = or i32 %214, %211
  %216 = load ptr, ptr %88, align 4
  %217 = getelementptr i8, ptr %216, i32 %209
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %217, i32 %215) #9, !srcloc !9
  %218 = load ptr, ptr %169, align 4
  %219 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 6
  %220 = load ptr, ptr %219, align 4
  %221 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 6, i32 1
  %222 = load i32, ptr %221, align 4
  %223 = load i32, ptr %5, align 4
  %224 = icmp eq ptr %218, null
  br i1 %224, label %234, label %225

225:                                              ; preds = %205
  %226 = load ptr, ptr %218, align 4
  %227 = icmp eq ptr %226, null
  br i1 %227, label %234, label %228

228:                                              ; preds = %225
  %229 = getelementptr inbounds %struct.dma_device, ptr %226, i32 0, i32 39
  %230 = load ptr, ptr %229, align 4
  %231 = icmp eq ptr %230, null
  br i1 %231, label %234, label %232

232:                                              ; preds = %228
  %233 = call ptr %230(ptr noundef nonnull %218, ptr noundef %220, i32 noundef %222, i32 noundef %223, i32 noundef 1, ptr noundef null) #9
  br label %234

234:                                              ; preds = %232, %228, %225, %205, %168, %164
  %235 = phi ptr [ null, %168 ], [ null, %164 ], [ %233, %232 ], [ null, %228 ], [ null, %225 ], [ null, %205 ]
  %236 = load ptr, ptr %9, align 4
  %237 = icmp eq ptr %236, null
  br i1 %237, label %304, label %238

238:                                              ; preds = %234
  %239 = getelementptr inbounds %struct.stm32_spi, ptr %7, i32 0, i32 20
  %240 = load ptr, ptr %239, align 4
  %241 = icmp eq ptr %240, null
  br i1 %241, label %295, label %242

242:                                              ; preds = %238
  %243 = load i32, ptr %44, align 4
  %244 = icmp ult i32 %243, 9
  %245 = icmp ult i32 %243, 17
  %246 = select i1 %245, i32 2, i32 4
  %247 = select i1 %244, i32 1, i32 %246
  %248 = load ptr, ptr %45, align 4
  %249 = getelementptr inbounds %struct.stm32_spi_cfg, ptr %248, i32 0, i32 17
  %250 = load i8, ptr %249, align 4, !range !11
  %251 = icmp eq i8 %250, 0
  br i1 %251, label %257, label %252

252:                                              ; preds = %242
  %253 = getelementptr inbounds %struct.stm32_spi, ptr %7, i32 0, i32 12
  %254 = load i32, ptr %253, align 4
  %255 = icmp eq i32 %254, 2
  %256 = select i1 %255, i32 1, i32 %254
  br label %257

257:                                              ; preds = %252, %242
  %258 = phi i32 [ %256, %252 ], [ 1, %242 ]
  %259 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(48) %259, i8 0, i32 44, i1 false) #9
  store i32 1, ptr %4, align 4
  %260 = getelementptr inbounds %struct.stm32_spi, ptr %7, i32 0, i32 22
  %261 = load i32, ptr %260, align 4
  %262 = load ptr, ptr %248, align 4
  %263 = getelementptr inbounds %struct.stm32_spi_regspec, ptr %262, i32 0, i32 8
  %264 = load i32, ptr %263, align 4
  %265 = add i32 %264, %261
  %266 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 2
  store i32 %265, ptr %266, align 4
  %267 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 4
  store i32 %247, ptr %267, align 4
  %268 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 6
  store i32 %258, ptr %268, align 4
  %269 = load ptr, ptr %240, align 4
  %270 = getelementptr inbounds %struct.dma_device, ptr %269, i32 0, i32 44
  %271 = load ptr, ptr %270, align 4
  %272 = icmp eq ptr %271, null
  br i1 %272, label %280, label %273

273:                                              ; preds = %257
  %274 = call i32 %271(ptr noundef nonnull %240, ptr noundef nonnull %4) #9
  %275 = load ptr, ptr %239, align 4
  %276 = icmp eq ptr %275, null
  br i1 %276, label %295, label %277

277:                                              ; preds = %273
  %278 = load i32, ptr %4, align 4
  %279 = load ptr, ptr %275, align 4
  br label %280

280:                                              ; preds = %277, %257
  %281 = phi ptr [ %279, %277 ], [ %269, %257 ]
  %282 = phi ptr [ %275, %277 ], [ %240, %257 ]
  %283 = phi i32 [ %278, %277 ], [ 1, %257 ]
  %284 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 5
  %285 = load ptr, ptr %284, align 4
  %286 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 5, i32 1
  %287 = load i32, ptr %286, align 4
  %288 = icmp eq ptr %281, null
  br i1 %288, label %295, label %289

289:                                              ; preds = %280
  %290 = getelementptr inbounds %struct.dma_device, ptr %281, i32 0, i32 39
  %291 = load ptr, ptr %290, align 4
  %292 = icmp eq ptr %291, null
  br i1 %292, label %295, label %293

293:                                              ; preds = %289
  %294 = call ptr %291(ptr noundef nonnull %282, ptr noundef %285, i32 noundef %287, i32 noundef %283, i32 noundef 1, ptr noundef null) #9
  br label %295

295:                                              ; preds = %293, %289, %280, %273, %238
  %296 = phi ptr [ null, %273 ], [ null, %280 ], [ null, %289 ], [ %294, %293 ], [ null, %238 ]
  %297 = load ptr, ptr %9, align 4
  %298 = icmp eq ptr %297, null
  br i1 %298, label %304, label %299

299:                                              ; preds = %295
  %300 = load ptr, ptr %239, align 4
  %301 = icmp eq ptr %300, null
  %302 = icmp ne ptr %296, null
  %303 = select i1 %301, i1 true, i1 %302
  br i1 %303, label %304, label %390

304:                                              ; preds = %299, %295, %234
  %305 = phi ptr [ %296, %299 ], [ %296, %295 ], [ null, %234 ]
  %306 = load ptr, ptr %12, align 4
  %307 = icmp eq ptr %306, null
  br i1 %307, label %314, label %308

308:                                              ; preds = %304
  %309 = getelementptr inbounds %struct.stm32_spi, ptr %7, i32 0, i32 21
  %310 = load ptr, ptr %309, align 4
  %311 = icmp eq ptr %310, null
  %312 = icmp ne ptr %235, null
  %313 = select i1 %311, i1 true, i1 %312
  br i1 %313, label %314, label %390

314:                                              ; preds = %308, %304
  %315 = load i32, ptr %123, align 4
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %321

317:                                              ; preds = %314
  %318 = icmp ne ptr %305, null
  %319 = icmp ne ptr %235, null
  %320 = select i1 %318, i1 %319, i1 false
  br i1 %320, label %323, label %390

321:                                              ; preds = %314
  %322 = icmp eq ptr %235, null
  br i1 %322, label %341, label %323

323:                                              ; preds = %321, %317
  %324 = load ptr, ptr %45, align 4
  %325 = getelementptr inbounds %struct.stm32_spi_cfg, ptr %324, i32 0, i32 10
  %326 = load ptr, ptr %325, align 4
  %327 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %235, i32 0, i32 6
  store ptr %326, ptr %327, align 4
  %328 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %235, i32 0, i32 8
  store ptr %7, ptr %328, align 4
  %329 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %235, i32 0, i32 4
  %330 = load ptr, ptr %329, align 4
  %331 = call i32 %330(ptr noundef nonnull %235) #9
  %332 = icmp sgt i32 %331, -1
  br i1 %332, label %335, label %333

333:                                              ; preds = %323
  %334 = load ptr, ptr %7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %334, ptr noundef nonnull @.str.22) #10
  br label %390

335:                                              ; preds = %323
  %336 = getelementptr inbounds %struct.stm32_spi, ptr %7, i32 0, i32 21
  %337 = load ptr, ptr %336, align 4
  %338 = load ptr, ptr %337, align 4
  %339 = getelementptr inbounds %struct.dma_device, ptr %338, i32 0, i32 50
  %340 = load ptr, ptr %339, align 4
  call void %340(ptr noundef %337) #9
  br label %341

341:                                              ; preds = %335, %321
  %342 = icmp eq ptr %305, null
  br i1 %342, label %379, label %343

343:                                              ; preds = %341
  %344 = load i32, ptr %123, align 4
  switch i32 %344, label %351 [
    i32 1, label %345
    i32 3, label %345
  ]

345:                                              ; preds = %343, %343
  %346 = load ptr, ptr %45, align 4
  %347 = getelementptr inbounds %struct.stm32_spi_cfg, ptr %346, i32 0, i32 11
  %348 = load ptr, ptr %347, align 4
  %349 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %305, i32 0, i32 6
  store ptr %348, ptr %349, align 4
  %350 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %305, i32 0, i32 8
  store ptr %7, ptr %350, align 4
  br label %351

351:                                              ; preds = %345, %343
  %352 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %305, i32 0, i32 4
  %353 = load ptr, ptr %352, align 4
  %354 = call i32 %353(ptr noundef nonnull %305) #9
  %355 = icmp sgt i32 %354, -1
  br i1 %355, label %361, label %356

356:                                              ; preds = %351
  %357 = load ptr, ptr %7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %357, ptr noundef nonnull @.str.23) #10
  %358 = getelementptr inbounds %struct.stm32_spi, ptr %7, i32 0, i32 21
  %359 = load ptr, ptr %358, align 4
  %360 = icmp eq ptr %359, null
  br i1 %360, label %390, label %383

361:                                              ; preds = %351
  %362 = getelementptr inbounds %struct.stm32_spi, ptr %7, i32 0, i32 20
  %363 = load ptr, ptr %362, align 4
  %364 = load ptr, ptr %363, align 4
  %365 = getelementptr inbounds %struct.dma_device, ptr %364, i32 0, i32 50
  %366 = load ptr, ptr %365, align 4
  call void %366(ptr noundef %363) #9
  %367 = load ptr, ptr %45, align 4
  %368 = load ptr, ptr %367, align 4
  %369 = getelementptr inbounds %struct.stm32_spi_regspec, ptr %368, i32 0, i32 2
  %370 = load i32, ptr %369, align 4
  %371 = getelementptr inbounds %struct.stm32_spi_regspec, ptr %368, i32 0, i32 2, i32 1
  %372 = load i32, ptr %371, align 4
  %373 = load ptr, ptr %88, align 4
  %374 = getelementptr i8, ptr %373, i32 %370
  %375 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %374) #9, !srcloc !8
  %376 = or i32 %375, %372
  %377 = load ptr, ptr %88, align 4
  %378 = getelementptr i8, ptr %377, i32 %370
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %378, i32 %376) #9, !srcloc !9
  br label %379

379:                                              ; preds = %361, %341
  %380 = load ptr, ptr %45, align 4
  %381 = getelementptr inbounds %struct.stm32_spi_cfg, ptr %380, i32 0, i32 9
  %382 = load ptr, ptr %381, align 4
  call void %382(ptr noundef %7) #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %36, i32 noundef %165) #9
  br label %409

383:                                              ; preds = %356
  %384 = load ptr, ptr %359, align 4
  %385 = getelementptr inbounds %struct.dma_device, ptr %384, i32 0, i32 47
  %386 = load ptr, ptr %385, align 4
  %387 = icmp eq ptr %386, null
  br i1 %387, label %390, label %388

388:                                              ; preds = %383
  %389 = call i32 %386(ptr noundef nonnull %359) #9
  br label %390

390:                                              ; preds = %388, %383, %356, %333, %317, %308, %299
  %391 = load ptr, ptr %45, align 4
  %392 = load ptr, ptr %391, align 4
  %393 = getelementptr inbounds %struct.stm32_spi_regspec, ptr %392, i32 0, i32 1
  %394 = load i32, ptr %393, align 4
  %395 = getelementptr inbounds %struct.stm32_spi_regspec, ptr %392, i32 0, i32 1, i32 1
  %396 = load i32, ptr %395, align 4
  %397 = load ptr, ptr %88, align 4
  %398 = getelementptr i8, ptr %397, i32 %394
  %399 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %398) #9, !srcloc !8
  %400 = xor i32 %396, -1
  %401 = and i32 %399, %400
  %402 = load ptr, ptr %88, align 4
  %403 = getelementptr i8, ptr %402, i32 %394
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %403, i32 %401) #9, !srcloc !9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %36, i32 noundef %165) #9
  %404 = load ptr, ptr %7, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %404, ptr noundef nonnull @.str.24) #10
  store i8 0, ptr %34, align 4
  %405 = load ptr, ptr %45, align 4
  %406 = getelementptr inbounds %struct.stm32_spi_cfg, ptr %405, i32 0, i32 12
  %407 = load ptr, ptr %406, align 4
  %408 = call i32 %407(ptr noundef %7) #9
  br label %409

409:                                              ; preds = %390, %379
  %410 = phi i32 [ %408, %390 ], [ 1, %379 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #9
  br label %416

411:                                              ; preds = %161
  %412 = load ptr, ptr %45, align 4
  %413 = getelementptr inbounds %struct.stm32_spi_cfg, ptr %412, i32 0, i32 12
  %414 = load ptr, ptr %413, align 4
  %415 = tail call i32 %414(ptr noundef %7) #9
  br label %416

416:                                              ; preds = %411, %409, %158
  %417 = phi i32 [ %159, %158 ], [ %410, %409 ], [ %415, %411 ]
  ret i32 %417
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_spi_unprepare_msg(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #1 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.stm32_spi, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.stm32_spi_cfg, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  tail call void %8(ptr noundef %4) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @stm32_spi_can_dma(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) #6 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.stm32_spi, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.stm32_spi_cfg, ptr %7, i32 0, i32 17
  %9 = load i8, ptr %8, align 4, !range !11
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.stm32_spi, ptr %5, i32 0, i32 8
  %13 = load i32, ptr %12, align 4
  br label %14

14:                                               ; preds = %11, %3
  %15 = phi i32 [ %13, %11 ], [ 16, %3 ]
  %16 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = icmp ugt i32 %17, %15
  ret i1 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_register_controller(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_split_transfers_maxsize(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_unregister_controller(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_spi_suspend(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @spi_controller_suspend(ptr noundef %3) #9
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call i32 @pm_runtime_force_suspend(ptr noundef %0) #9
  br label %8

8:                                                ; preds = %6, %1
  %9 = phi i32 [ %7, %6 ], [ %4, %1 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_spi_resume(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @pm_runtime_force_resume(ptr noundef %0) #9
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %33

8:                                                ; preds = %1
  %9 = tail call i32 @spi_controller_resume(ptr noundef %3) #9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.stm32_spi, ptr %5, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  tail call void @clk_disable(ptr noundef %13) #9
  tail call void @clk_unprepare(ptr noundef %13) #9
  br label %33

14:                                               ; preds = %8
  %15 = tail call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 4) #9
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #9, !srcloc !19
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 0, i32 -1, ptr elementtype(i32) %18) #9, !srcloc !22
  %20 = extractvalue { i32, i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !23
  br label %23

23:                                               ; preds = %22, %17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.25, i32 noundef %15) #10
  br label %33

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.stm32_spi, ptr %5, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.stm32_spi_cfg, ptr %26, i32 0, i32 4
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 %28(ptr noundef %5) #9
  %30 = tail call i64 @ktime_get_mono_fast_ns() #9
  %31 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 22
  store volatile i64 %30, ptr %31, align 8
  %32 = tail call i32 @__pm_runtime_suspend(ptr noundef %0, i32 noundef 13) #9
  br label %33

33:                                               ; preds = %24, %23, %11, %1
  %34 = phi i32 [ %9, %11 ], [ %15, %23 ], [ 0, %24 ], [ %6, %1 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_spi_runtime_suspend(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.stm32_spi, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %7) #9
  tail call void @clk_unprepare(ptr noundef %7) #9
  %8 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %0) #9
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_spi_runtime_resume(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %0) #9
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.stm32_spi, ptr %5, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @clk_prepare(ptr noundef %10) #9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = tail call i32 @clk_enable(ptr noundef %10) #9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  tail call void @clk_unprepare(ptr noundef %10) #9
  br label %17

17:                                               ; preds = %16, %13, %8, %1
  %18 = phi i32 [ %6, %1 ], [ %11, %8 ], [ %14, %16 ], [ 0, %13 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_suspend(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_resume(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
!8 = !{i64 5163507}
!9 = !{i64 5163089}
!10 = !{i64 5162892}
!11 = !{i8 0, i8 2}
!12 = !{i64 5162469}
!13 = !{i64 5162669}
!14 = !{i64 5163287}
!15 = !{i64 2149090758}
!16 = !{i64 2149086582}
!17 = !{i64 2149086657, i64 2149086684, i64 2149086731, i64 2149086753, i64 2149086781, i64 2149086801}
!18 = !{i64 2149113761}
!19 = !{i64 939435, i64 2148429406, i64 2148429432, i64 2148429479, i64 2148429501, i64 2148429529, i64 2148429549}
!20 = !{i64 2148440821, i64 2148440847, i64 2148440876, i64 2148440910, i64 2148440941, i64 2148440964}
!21 = !{i64 2148440328}
!22 = !{i64 926004, i64 926029, i64 926051, i64 926067, i64 926079, i64 926099, i64 926123, i64 926139, i64 926151}
!23 = !{i64 2148440454}
!24 = !{i32 0, i32 33}
!25 = !{!"auto-init"}
