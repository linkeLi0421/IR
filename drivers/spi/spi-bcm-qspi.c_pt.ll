; ModuleID = '/llk/IR/drivers/spi/spi-bcm-qspi.c_pt.bc'
source_filename = "../drivers/spi/spi-bcm-qspi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bcm_qspi_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22bcm_qspi_probe\22\09\09\09\09\09"
module asm "__kstrtabns_bcm_qspi_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bcm_qspi_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22bcm_qspi_remove\22\09\09\09\09\09"
module asm "__kstrtabns_bcm_qspi_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bcm_qspi_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22bcm_qspi_pm_ops\22\09\09\09\09\09"
module asm "__kstrtabns_bcm_qspi_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.spi_controller_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bcm_qspi_irq = type { ptr, ptr, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bcm_qspi_data = type { i8, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type {}
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
%struct.bcm_qspi = type { ptr, ptr, ptr, i32, i32, [3 x ptr], ptr, %struct.bcm_qspi_parms, %struct.qspi_trans, i32, i32, i32, i32, ptr, i32, i32, i32, %struct.bcm_xfer_mode, i32, i8, i8, i32, ptr, %struct.completion, %struct.completion, i8, i8, i8 }
%struct.bcm_qspi_parms = type { i32, i8, i8 }
%struct.qspi_trans = type { ptr, i32, i8 }
%struct.bcm_xfer_mode = type { i8, i32, i32, i32 }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.bcm_qspi_soc_intc = type { ptr, ptr, ptr }
%struct.bcm_qspi_dev_id = type { ptr, ptr }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_mem_op = type { %struct.anon.65, %struct.anon.66, %struct.anon.67, %struct.anon.68 }
%struct.anon.65 = type { i8, i8, i8, i16 }
%struct.anon.66 = type { i8, i8, i8, i64 }
%struct.anon.67 = type { i8, i8, i8 }
%struct.anon.68 = type { i8, i8, i32, i32, %union.anon.69 }
%union.anon.69 = type { ptr }

@bcm_qspi_of_match = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,spi-bcm7445-qspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm_qspi_rev_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,spi-bcm-qspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm_qspi_no_rev_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,spi-bcm7216-qspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm_qspi_spcr3_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,spi-bcm7278-qspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm_qspi_spcr3_data }, %struct.of_device_id zeroinitializer], align 4
@.str = private unnamed_addr constant [29 x i8] c"error allocating spi_master\0A\00", align 1
@bcm_qspi_mem_ops = internal constant %struct.spi_controller_mem_ops { ptr null, ptr null, ptr @bcm_qspi_exec_mem_op, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"num-cs\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"hif_mspi\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"mspi\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"bspi\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"using %smspi mode\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"bspi-\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"cs_reg\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"failed to prepare clock\0A\00", align 1
@qspi_irq_tab = internal constant [7 x %struct.bcm_qspi_irq] [%struct.bcm_qspi_irq { ptr @.str.19, ptr @bcm_qspi_bspi_lr_l2_isr, i32 0, i32 1 }, %struct.bcm_qspi_irq { ptr @.str.20, ptr @bcm_qspi_bspi_lr_err_l2_isr, i32 0, i32 2 }, %struct.bcm_qspi_irq { ptr @.str.21, ptr @bcm_qspi_bspi_lr_err_l2_isr, i32 0, i32 4 }, %struct.bcm_qspi_irq { ptr @.str.22, ptr @bcm_qspi_bspi_lr_l2_isr, i32 0, i32 8 }, %struct.bcm_qspi_irq { ptr @.str.23, ptr @bcm_qspi_mspi_l2_isr, i32 0, i32 32 }, %struct.bcm_qspi_irq { ptr @.str.24, ptr @bcm_qspi_mspi_l2_isr, i32 0, i32 64 }, %struct.bcm_qspi_irq { ptr @.str.25, ptr @bcm_qspi_l1_isr, i32 1, i32 127 }], align 4
@.str.10 = private unnamed_addr constant [18 x i8] c"IRQ %s not found\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"no IRQs registered, cannot init driver\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"can't register master\0A\00", align 1
@__kstrtab_bcm_qspi_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_bcm_qspi_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_bcm_qspi_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bcm_qspi_probe to i32), ptr @__kstrtab_bcm_qspi_probe, ptr @__kstrtabns_bcm_qspi_probe }, section "___ksymtab_gpl+bcm_qspi_probe", align 4
@__kstrtab_bcm_qspi_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_bcm_qspi_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_bcm_qspi_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bcm_qspi_remove to i32), ptr @__kstrtab_bcm_qspi_remove, ptr @__kstrtabns_bcm_qspi_remove }, section "___ksymtab_gpl+bcm_qspi_remove", align 4
@bcm_qspi_pm_ops = dso_local constant %struct.dev_pm_ops { ptr null, ptr null, ptr @bcm_qspi_suspend, ptr @bcm_qspi_resume, ptr @bcm_qspi_suspend, ptr @bcm_qspi_resume, ptr @bcm_qspi_suspend, ptr @bcm_qspi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_bcm_qspi_pm_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_bcm_qspi_pm_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_bcm_qspi_pm_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bcm_qspi_pm_ops to i32), ptr @__kstrtab_bcm_qspi_pm_ops, ptr @__kstrtabns_bcm_qspi_pm_ops }, section "___ksymtab_gpl+bcm_qspi_pm_ops", align 4
@__UNIQUE_ID_author230 = internal constant [31 x i8] c"spi_bcm_qspi.author=Kamal Dasu\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [46 x i8] c"spi_bcm_qspi.description=Broadcom QSPI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file232 = internal constant [43 x i8] c"spi_bcm_qspi.file=drivers/spi/spi-bcm-qspi\00", section ".modinfo", align 1
@__UNIQUE_ID_license233 = internal constant [28 x i8] c"spi_bcm_qspi.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias234 = internal constant [37 x i8] c"spi_bcm_qspi.alias=platform:bcm_qspi\00", section ".modinfo", align 1
@bcm_qspi_rev_data = internal constant %struct.bcm_qspi_data { i8 1, i8 0 }, align 1
@bcm_qspi_no_rev_data = internal constant %struct.bcm_qspi_data zeroinitializer, align 1
@bcm_qspi_spcr3_data = internal constant %struct.bcm_qspi_data { i8 1, i8 1 }, align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.13 = private unnamed_addr constant [26 x i8] c"timeout waiting for MSPI\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.15 = private unnamed_addr constant [34 x i8] c"timeout waiting for !busy_status\0A\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"%s: too many slots!\0A\00", align 1
@__func__.read_from_hw = private unnamed_addr constant [13 x i8] c"read_from_hw\00", align 1
@.str.17 = private unnamed_addr constant [48 x i8] c"INVALID COMBINATION: width=%d addrlen=%d hp=%d\0A\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"timeout waiting for BSPI\0A\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"spi_lr_fullness_reached\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"spi_lr_session_aborted\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"spi_lr_impatient\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"spi_lr_session_done\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"mspi_done\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"mspi_halted\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"spi_l1_intr\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"BSPI INT error\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias234, ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file232, ptr @__UNIQUE_ID_license233, ptr @__ksymtab_bcm_qspi_pm_ops, ptr @__ksymtab_bcm_qspi_probe, ptr @__ksymtab_bcm_qspi_remove], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bcm_qspi_probe(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %212, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @of_match_node(ptr noundef nonnull @bcm_qspi_of_match, ptr noundef nonnull %6) #9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %212, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.of_device_id, ptr %9, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = tail call ptr @__devm_spi_alloc_controller(ptr noundef %4, i32 noundef 156, i1 noundef zeroext false) #9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str) #10
  br label %212

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 8
  %19 = load ptr, ptr %18, align 8
  %20 = tail call ptr @devm_clk_get_optional(ptr noundef %4, ptr noundef null) #9
  %21 = getelementptr inbounds %struct.bcm_qspi, ptr %19, i32 0, i32 2
  store ptr %20, ptr %21, align 4
  %22 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = ptrtoint ptr %20 to i32
  br label %212

25:                                               ; preds = %17
  store ptr %0, ptr %19, align 4
  %26 = getelementptr inbounds %struct.bcm_qspi, ptr %19, i32 0, i32 8
  store ptr null, ptr %26, align 4
  %27 = getelementptr inbounds %struct.bcm_qspi, ptr %19, i32 0, i32 8, i32 1
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.bcm_qspi, ptr %19, i32 0, i32 8, i32 2
  store i8 1, ptr %28, align 4
  %29 = getelementptr inbounds %struct.bcm_qspi, ptr %19, i32 0, i32 1
  store ptr %14, ptr %29, align 4
  %30 = getelementptr inbounds %struct.spi_controller, ptr %14, i32 0, i32 2
  store i16 -1, ptr %30, align 8
  %31 = getelementptr inbounds %struct.spi_controller, ptr %14, i32 0, i32 5
  store i32 3091, ptr %31, align 8
  %32 = getelementptr inbounds %struct.spi_controller, ptr %14, i32 0, i32 20
  store ptr @bcm_qspi_setup, ptr %32, align 4
  %33 = getelementptr inbounds %struct.spi_controller, ptr %14, i32 0, i32 51
  store ptr @bcm_qspi_transfer_one, ptr %33, align 4
  %34 = getelementptr inbounds %struct.spi_controller, ptr %14, i32 0, i32 53
  store ptr @bcm_qspi_mem_ops, ptr %34, align 4
  %35 = getelementptr inbounds %struct.spi_controller, ptr %14, i32 0, i32 23
  store ptr @bcm_qspi_cleanup, ptr %35, align 8
  %36 = load ptr, ptr %5, align 8
  %37 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 25
  store ptr %36, ptr %37, align 8
  %38 = getelementptr inbounds %struct.spi_controller, ptr %14, i32 0, i32 3
  store i16 4, ptr %38, align 2
  %39 = getelementptr inbounds %struct.spi_controller, ptr %14, i32 0, i32 56
  store i8 1, ptr %39, align 8
  %40 = load ptr, ptr %5, align 8
  %41 = tail call zeroext i1 @of_device_is_big_endian(ptr noundef %40) #9
  %42 = getelementptr inbounds %struct.bcm_qspi, ptr %19, i32 0, i32 20
  %43 = zext i1 %41 to i8
  store i8 %43, ptr %42, align 1
  %44 = load ptr, ptr %5, align 8
  %45 = call i32 @of_property_read_variable_u32_array(ptr noundef %44, ptr noundef nonnull @.str.1, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #9
  %46 = icmp sgt i32 %45, -1
  br i1 %46, label %47, label %50

47:                                               ; preds = %25
  %48 = load i32, ptr %3, align 4
  %49 = trunc i32 %48 to i16
  store i16 %49, ptr %38, align 2
  br label %50

50:                                               ; preds = %47, %25
  %51 = call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.2) #9
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.3) #9
  %55 = icmp eq ptr %54, null
  br i1 %55, label %212, label %56

56:                                               ; preds = %53, %50
  %57 = phi ptr [ %54, %53 ], [ %51, %50 ]
  %58 = call ptr @devm_ioremap_resource(ptr noundef %4, ptr noundef nonnull %57) #9
  %59 = getelementptr %struct.bcm_qspi, ptr %19, i32 0, i32 5
  store ptr %58, ptr %59, align 4
  %60 = icmp ugt ptr %58, inttoptr (i32 -4096 to ptr)
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = ptrtoint ptr %58 to i32
  br label %212

63:                                               ; preds = %56
  %64 = call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.4) #9
  %65 = icmp eq ptr %64, null
  br i1 %65, label %72, label %66

66:                                               ; preds = %63
  %67 = call ptr @devm_ioremap_resource(ptr noundef %4, ptr noundef nonnull %64) #9
  %68 = getelementptr %struct.bcm_qspi, ptr %19, i32 0, i32 5, i32 1
  store ptr %67, ptr %68, align 4
  %69 = icmp ugt ptr %67, inttoptr (i32 -4096 to ptr)
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = ptrtoint ptr %67 to i32
  br label %212

72:                                               ; preds = %66, %63
  %73 = phi i8 [ 1, %66 ], [ 0, %63 ]
  %74 = phi ptr [ @.str.6, %66 ], [ @.str.7, %63 ]
  %75 = getelementptr inbounds %struct.bcm_qspi, ptr %19, i32 0, i32 19
  store i8 %73, ptr %75, align 4
  %76 = getelementptr inbounds %struct.bcm_qspi, ptr %19, i32 0, i32 19
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.5, ptr noundef nonnull %74) #10
  %77 = call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.8) #9
  %78 = icmp eq ptr %77, null
  br i1 %78, label %85, label %79

79:                                               ; preds = %72
  %80 = call ptr @devm_ioremap_resource(ptr noundef %4, ptr noundef nonnull %77) #9
  %81 = getelementptr %struct.bcm_qspi, ptr %19, i32 0, i32 5, i32 2
  store ptr %80, ptr %81, align 4
  %82 = icmp ugt ptr %80, inttoptr (i32 -4096 to ptr)
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = ptrtoint ptr %80 to i32
  br label %212

85:                                               ; preds = %79, %72
  %86 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %87 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %86, i32 noundef 3520, i32 noundef 56) #11
  %88 = getelementptr inbounds %struct.bcm_qspi, ptr %19, i32 0, i32 22
  store ptr %87, ptr %88, align 4
  %89 = icmp eq ptr %87, null
  br i1 %89, label %212, label %90

90:                                               ; preds = %85
  %91 = icmp ne ptr %1, null
  %92 = getelementptr inbounds %struct.bcm_qspi, ptr %19, i32 0, i32 6
  br i1 %91, label %93, label %96

93:                                               ; preds = %90
  store ptr %1, ptr %92, align 4
  %94 = getelementptr inbounds %struct.bcm_qspi_soc_intc, ptr %1, i32 0, i32 1
  %95 = load ptr, ptr %94, align 4
  call void %95(ptr noundef nonnull %1, i32 noundef 1, i1 noundef zeroext true) #9
  br label %97

96:                                               ; preds = %90
  store ptr null, ptr %92, align 4
  br label %97

97:                                               ; preds = %96, %93
  %98 = load ptr, ptr %21, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %107, label %100

100:                                              ; preds = %97
  %101 = call fastcc i32 @clk_prepare_enable(ptr noundef nonnull %98)
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %100
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.9) #10
  br label %209

104:                                              ; preds = %100
  %105 = load ptr, ptr %21, align 4
  %106 = call i32 @clk_get_rate(ptr noundef %105) #9
  br label %107

107:                                              ; preds = %104, %97
  %108 = phi i32 [ %106, %104 ], [ 27000000, %97 ]
  %109 = getelementptr inbounds %struct.bcm_qspi, ptr %19, i32 0, i32 3
  store i32 %108, ptr %109, align 4
  %110 = load i8, ptr %13, align 1, !range !9
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %128, label %112

112:                                              ; preds = %107
  %113 = load i8, ptr %42, align 1, !range !9
  %114 = icmp eq i8 %113, 0
  %115 = load ptr, ptr %59, align 4
  %116 = getelementptr i8, ptr %115, i32 44
  %117 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %116) #9
  br i1 %114, label %120, label %118

118:                                              ; preds = %112
  %119 = call i32 @llvm.bswap.i32(i32 %117) #9
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %120

120:                                              ; preds = %118, %112
  %121 = phi i32 [ %119, %118 ], [ %117, %112 ]
  %122 = and i32 %121, 255
  %123 = icmp eq i32 %122, 255
  %124 = trunc i32 %121 to i8
  %125 = select i1 %123, i8 0, i8 %124
  %126 = getelementptr inbounds %struct.bcm_qspi, ptr %19, i32 0, i32 3
  %127 = load i32, ptr %126, align 4
  br label %128

128:                                              ; preds = %120, %107
  %129 = phi i32 [ %127, %120 ], [ %108, %107 ]
  %130 = phi i8 [ %125, %120 ], [ 0, %107 ]
  %131 = lshr i8 %130, 4
  %132 = getelementptr inbounds %struct.bcm_qspi, ptr %19, i32 0, i32 25
  store i8 %131, ptr %132, align 4
  %133 = and i8 %130, 15
  %134 = getelementptr inbounds %struct.bcm_qspi, ptr %19, i32 0, i32 26
  store i8 %133, ptr %134, align 1
  %135 = getelementptr inbounds %struct.bcm_qspi_data, ptr %13, i32 0, i32 1
  %136 = load i8, ptr %135, align 1, !range !9
  %137 = getelementptr inbounds %struct.bcm_qspi, ptr %19, i32 0, i32 27
  store i8 %136, ptr %137, align 2
  %138 = load i8, ptr %76, align 4, !range !9
  %139 = icmp eq i8 %138, 0
  %140 = icmp ugt i8 %130, 15
  %141 = select i1 %139, i1 %140, i1 false
  %142 = icmp ugt i8 %133, 4
  %143 = select i1 %141, i1 %142, i1 false
  %144 = icmp ne i8 %136, 0
  %145 = icmp ne i8 %133, 5
  %146 = select i1 %144, i1 true, i1 %145
  %147 = select i1 %146, i32 3, i32 1
  %148 = select i1 %143, i32 %147, i32 4
  %149 = lshr i32 %129, %148
  %150 = getelementptr inbounds %struct.bcm_qspi, ptr %19, i32 0, i32 4
  store i32 %149, ptr %150, align 4
  call fastcc void @bcm_qspi_hw_uninit(ptr noundef %19)
  store i32 0, ptr %3, align 4
  br label %151

151:                                              ; preds = %185, %128
  %152 = phi i32 [ 0, %128 ], [ %186, %185 ]
  %153 = phi i32 [ 0, %128 ], [ %188, %185 ]
  %154 = getelementptr [7 x %struct.bcm_qspi_irq], ptr @qspi_irq_tab, i32 0, i32 %153
  %155 = load ptr, ptr %154, align 4
  %156 = icmp eq i32 %153, 6
  br i1 %156, label %159, label %157

157:                                              ; preds = %151
  %158 = call i32 @platform_get_irq_byname_optional(ptr noundef %0, ptr noundef %155) #9
  br label %164

159:                                              ; preds = %151
  %160 = icmp eq i32 %152, 0
  %161 = and i1 %91, %160
  br i1 %161, label %162, label %185

162:                                              ; preds = %159
  %163 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #9
  br label %164

164:                                              ; preds = %162, %157
  %165 = phi i32 [ %158, %157 ], [ %163, %162 ]
  %166 = icmp sgt i32 %165, -1
  br i1 %166, label %167, label %185

167:                                              ; preds = %164
  %168 = load i32, ptr %3, align 4
  %169 = getelementptr [7 x %struct.bcm_qspi_irq], ptr @qspi_irq_tab, i32 0, i32 %168, i32 1
  %170 = load ptr, ptr %169, align 4
  %171 = load ptr, ptr %88, align 4
  %172 = getelementptr %struct.bcm_qspi_dev_id, ptr %171, i32 %168
  %173 = call i32 @devm_request_threaded_irq(ptr noundef %4, i32 noundef %165, ptr noundef %170, ptr noundef null, i32 noundef 0, ptr noundef %155, ptr noundef %172) #9
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %167
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.10, ptr noundef %155) #10
  br label %206

176:                                              ; preds = %167
  %177 = load ptr, ptr %88, align 4
  %178 = load i32, ptr %3, align 4
  %179 = getelementptr %struct.bcm_qspi_dev_id, ptr %177, i32 %178, i32 1
  store ptr %19, ptr %179, align 4
  %180 = load i32, ptr %3, align 4
  %181 = getelementptr [7 x %struct.bcm_qspi_irq], ptr @qspi_irq_tab, i32 0, i32 %180
  %182 = load ptr, ptr %88, align 4
  %183 = getelementptr %struct.bcm_qspi_dev_id, ptr %182, i32 %180
  store ptr %181, ptr %183, align 4
  %184 = add i32 %152, 1
  br label %185

185:                                              ; preds = %176, %164, %159
  %186 = phi i32 [ %184, %176 ], [ %152, %164 ], [ %152, %159 ]
  %187 = load i32, ptr %3, align 4
  %188 = add i32 %187, 1
  store i32 %188, ptr %3, align 4
  %189 = icmp ult i32 %188, 7
  br i1 %189, label %151, label %190

190:                                              ; preds = %185
  %191 = icmp eq i32 %186, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %190
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.11) #10
  br label %206

193:                                              ; preds = %190
  call fastcc void @bcm_qspi_hw_init(ptr noundef %19)
  %194 = getelementptr inbounds %struct.bcm_qspi, ptr %19, i32 0, i32 23
  store i32 0, ptr %194, align 4
  %195 = getelementptr inbounds %struct.bcm_qspi, ptr %19, i32 0, i32 23, i32 1
  call void @__init_swait_queue_head(ptr noundef %195, ptr noundef nonnull @.str.27, ptr noundef nonnull @init_completion.__key) #9
  %196 = getelementptr inbounds %struct.bcm_qspi, ptr %19, i32 0, i32 24
  store i32 0, ptr %196, align 4
  %197 = getelementptr inbounds %struct.bcm_qspi, ptr %19, i32 0, i32 24, i32 1
  call void @__init_swait_queue_head(ptr noundef %197, ptr noundef nonnull @.str.27, ptr noundef nonnull @init_completion.__key) #9
  %198 = getelementptr inbounds %struct.bcm_qspi, ptr %19, i32 0, i32 9
  store i32 -1, ptr %198, align 4
  %199 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %19, ptr %199, align 8
  %200 = getelementptr inbounds %struct.bcm_qspi, ptr %19, i32 0, i32 17, i32 1
  store i32 -1, ptr %200, align 4
  %201 = getelementptr inbounds %struct.bcm_qspi, ptr %19, i32 0, i32 17, i32 2
  store i32 -1, ptr %201, align 4
  %202 = getelementptr inbounds %struct.bcm_qspi, ptr %19, i32 0, i32 17, i32 3
  store i32 -1, ptr %202, align 4
  %203 = call i32 @spi_register_controller(ptr noundef nonnull %14) #9
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %205, label %212

205:                                              ; preds = %193
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.12) #10
  call fastcc void @bcm_qspi_hw_uninit(ptr noundef %19)
  br label %206

206:                                              ; preds = %205, %192, %175
  %207 = phi i32 [ %173, %175 ], [ %203, %205 ], [ -22, %192 ]
  %208 = load ptr, ptr %21, align 4
  call void @clk_disable(ptr noundef %208) #9
  call void @clk_unprepare(ptr noundef %208) #9
  br label %209

209:                                              ; preds = %206, %103
  %210 = phi i32 [ %101, %103 ], [ %207, %206 ]
  %211 = load ptr, ptr %88, align 4
  call void @kfree(ptr noundef %211) #9
  br label %212

212:                                              ; preds = %209, %193, %85, %83, %70, %61, %53, %23, %16, %8, %2
  %213 = phi i32 [ %24, %23 ], [ %62, %61 ], [ %71, %70 ], [ %84, %83 ], [ %210, %209 ], [ -12, %16 ], [ -19, %2 ], [ -19, %8 ], [ 0, %53 ], [ -12, %85 ], [ 0, %193 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 %213
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_qspi_setup(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 5
  %3 = load i8, ptr %2, align 1
  %4 = icmp ugt i8 %3, 64
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 9
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 8) #11
  %12 = icmp eq ptr %11, null
  br i1 %12, label %26, label %13

13:                                               ; preds = %9
  store ptr %11, ptr %6, align 8
  br label %14

14:                                               ; preds = %13, %5
  %15 = phi ptr [ %7, %5 ], [ %11, %13 ]
  %16 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 3
  %17 = load i32, ptr %16, align 8
  store i32 %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 7
  %19 = load i32, ptr %18, align 8
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.bcm_qspi_parms, ptr %15, i32 0, i32 1
  store i8 %20, ptr %21, align 4
  %22 = load i8, ptr %2, align 1
  %23 = icmp eq i8 %22, 0
  %24 = getelementptr inbounds %struct.bcm_qspi_parms, ptr %15, i32 0, i32 2
  %25 = select i1 %23, i8 8, i8 %22
  store i8 %25, ptr %24, align 1
  br label %26

26:                                               ; preds = %14, %9, %1
  %27 = phi i32 [ -22, %1 ], [ -12, %9 ], [ 0, %14 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_qspi_transfer_one(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca [3 x i8], align 1
  %5 = alloca %struct.bcm_qspi_parms, align 8
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 14
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %41

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 4
  %13 = load i8, ptr %12, align 4
  %14 = zext i8 %13 to i32
  %15 = getelementptr %struct.bcm_qspi, ptr %7, i32 0, i32 5, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %39, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.bcm_qspi, ptr %7, i32 0, i32 20
  %20 = load i8, ptr %19, align 1, !range !9
  %21 = icmp eq i8 %20, 0
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %16) #9
  br i1 %21, label %25, label %23

23:                                               ; preds = %18
  %24 = tail call i32 @llvm.bswap.i32(i32 %22) #9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %25

25:                                               ; preds = %23, %18
  %26 = phi i32 [ %24, %23 ], [ %22, %18 ]
  %27 = and i32 %26, -256
  %28 = shl nuw i32 1, %14
  %29 = or i32 %27, %28
  %30 = icmp eq i32 %26, %29
  br i1 %30, label %41, label %31

31:                                               ; preds = %25
  %32 = load i8, ptr %19, align 1, !range !9
  %33 = icmp eq i8 %32, 0
  %34 = load ptr, ptr %15, align 4
  br i1 %33, label %37, label %35

35:                                               ; preds = %31
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %36 = tail call i32 @llvm.bswap.i32(i32 %29) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %36) #9, !srcloc !12
  br label %38

37:                                               ; preds = %31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %29) #9, !srcloc !12
  br label %38

38:                                               ; preds = %37, %35
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #9
  br label %39

39:                                               ; preds = %38, %11
  %40 = getelementptr inbounds %struct.bcm_qspi, ptr %7, i32 0, i32 9
  store i32 %14, ptr %40, align 4
  br label %41

41:                                               ; preds = %39, %25, %3
  %42 = getelementptr inbounds %struct.bcm_qspi, ptr %7, i32 0, i32 8
  store ptr %2, ptr %42, align 4
  %43 = getelementptr inbounds %struct.bcm_qspi, ptr %7, i32 0, i32 8, i32 1
  store i32 0, ptr %43, align 4
  %44 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 2
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %489, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.bcm_qspi, ptr %7, i32 0, i32 23
  %49 = getelementptr inbounds %struct.bcm_qspi, ptr %7, i32 0, i32 8, i32 2
  %50 = getelementptr inbounds %struct.bcm_qspi_parms, ptr %5, i32 0, i32 2
  %51 = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 7
  %52 = getelementptr inbounds %struct.bcm_qspi_parms, ptr %5, i32 0, i32 1
  %53 = getelementptr inbounds %struct.bcm_qspi, ptr %7, i32 0, i32 19
  %54 = getelementptr inbounds %struct.bcm_qspi, ptr %7, i32 0, i32 25
  %55 = getelementptr inbounds %struct.bcm_qspi, ptr %7, i32 0, i32 26
  %56 = getelementptr inbounds %struct.bcm_qspi, ptr %7, i32 0, i32 20
  %57 = getelementptr %struct.bcm_qspi, ptr %7, i32 0, i32 5, i32 0
  %58 = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 4
  %59 = getelementptr inbounds %struct.bcm_qspi, ptr %7, i32 0, i32 1
  %60 = getelementptr inbounds i8, ptr %42, i32 9
  br label %61

61:                                               ; preds = %485, %47
  store i32 0, ptr %48, align 4
  tail call fastcc void @bcm_qspi_disable_bspi(ptr noundef %7) #9
  %62 = load ptr, ptr %42, align 4
  %63 = load i32, ptr %43, align 4
  %64 = load i8, ptr %49, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  store i64 0, ptr %5, align 8, !annotation !8
  %65 = getelementptr inbounds %struct.spi_transfer, ptr %62, i32 0, i32 12
  %66 = load i32, ptr %65, align 4
  store i32 %66, ptr %5, align 8
  %67 = getelementptr inbounds %struct.spi_transfer, ptr %62, i32 0, i32 8
  %68 = load i8, ptr %67, align 1
  store i8 %68, ptr %50, align 1
  %69 = load i32, ptr %51, align 8
  %70 = trunc i32 %69 to i8
  store i8 %70, ptr %52, align 4
  call fastcc void @bcm_qspi_hw_set_parms(ptr noundef %7, ptr noundef nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  %71 = icmp eq i8 %64, 0
  %72 = getelementptr inbounds %struct.spi_transfer, ptr %62, i32 0, i32 2
  %73 = load i8, ptr %67, align 1
  br label %74

74:                                               ; preds = %270, %61
  %75 = phi i8 [ %73, %61 ], [ %232, %270 ]
  %76 = phi i32 [ 0, %61 ], [ %271, %270 ]
  %77 = phi i32 [ %63, %61 ], [ %249, %270 ]
  %78 = icmp ult i8 %75, 9
  br i1 %78, label %79, label %97

79:                                               ; preds = %74
  %80 = load ptr, ptr %62, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = getelementptr i8, ptr %80, i32 %77
  %84 = load i8, ptr %83, align 1
  br label %85

85:                                               ; preds = %82, %79
  %86 = phi i8 [ %84, %82 ], [ 0, %79 ]
  %87 = shl nuw nsw i32 %76, 3
  %88 = add nuw nsw i32 %87, 64
  %89 = zext i8 %86 to i32
  %90 = load i8, ptr %56, align 1, !range !9
  %91 = icmp eq i8 %90, 0
  %92 = load ptr, ptr %57, align 4
  %93 = getelementptr i8, ptr %92, i32 %88
  br i1 %91, label %96, label %94

94:                                               ; preds = %85
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %95 = shl nuw i32 %89, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 %95) #9, !srcloc !12
  br label %193

96:                                               ; preds = %85
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 %89) #9, !srcloc !12
  br label %193

97:                                               ; preds = %74
  %98 = icmp ult i8 %75, 17
  br i1 %98, label %99, label %129

99:                                               ; preds = %97
  %100 = load ptr, ptr %62, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %106, label %102

102:                                              ; preds = %99
  %103 = sdiv i32 %77, 2
  %104 = getelementptr i16, ptr %100, i32 %103
  %105 = load i16, ptr %104, align 2
  br label %106

106:                                              ; preds = %102, %99
  %107 = phi i16 [ %105, %102 ], [ 0, %99 ]
  %108 = shl nuw nsw i32 %76, 3
  %109 = add nuw nsw i32 %108, 64
  %110 = add nuw nsw i32 %108, 68
  %111 = zext i16 %107 to i32
  %112 = lshr i32 %111, 8
  %113 = load i8, ptr %56, align 1, !range !9
  %114 = icmp eq i8 %113, 0
  %115 = load ptr, ptr %57, align 4
  %116 = getelementptr i8, ptr %115, i32 %109
  br i1 %114, label %119, label %117

117:                                              ; preds = %106
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %118 = shl nuw i32 %112, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 %118) #9, !srcloc !12
  br label %120

119:                                              ; preds = %106
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 %112) #9, !srcloc !12
  br label %120

120:                                              ; preds = %119, %117
  %121 = and i32 %111, 255
  %122 = load i8, ptr %56, align 1, !range !9
  %123 = icmp eq i8 %122, 0
  %124 = load ptr, ptr %57, align 4
  %125 = getelementptr i8, ptr %124, i32 %110
  br i1 %123, label %128, label %126

126:                                              ; preds = %120
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %127 = shl nuw i32 %121, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %125, i32 %127) #9, !srcloc !12
  br label %193

128:                                              ; preds = %120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %125, i32 %121) #9, !srcloc !12
  br label %193

129:                                              ; preds = %97
  %130 = icmp ult i8 %75, 33
  br i1 %130, label %131, label %149

131:                                              ; preds = %129
  %132 = load ptr, ptr %62, align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %138, label %134

134:                                              ; preds = %131
  %135 = sdiv i32 %77, 4
  %136 = getelementptr i32, ptr %132, i32 %135
  %137 = load i32, ptr %136, align 4
  br label %138

138:                                              ; preds = %134, %131
  %139 = phi i32 [ %137, %134 ], [ 0, %131 ]
  %140 = shl nuw nsw i32 %76, 3
  %141 = add nuw nsw i32 %140, 64
  %142 = load i8, ptr %56, align 1, !range !9
  %143 = icmp eq i8 %142, 0
  %144 = load ptr, ptr %57, align 4
  %145 = getelementptr i8, ptr %144, i32 %141
  br i1 %143, label %147, label %146

146:                                              ; preds = %138
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %145, i32 %139) #9, !srcloc !12
  br label %193

147:                                              ; preds = %138
  %148 = tail call i32 @llvm.bswap.i32(i32 %139) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %145, i32 %148) #9, !srcloc !12
  br label %193

149:                                              ; preds = %129
  %150 = icmp ult i8 %75, 65
  br i1 %150, label %151, label %193

151:                                              ; preds = %149
  %152 = load ptr, ptr %62, align 4
  %153 = icmp eq ptr %152, null
  br i1 %153, label %161, label %154

154:                                              ; preds = %151
  %155 = sdiv i32 %77, 8
  %156 = getelementptr i64, ptr %152, i32 %155
  %157 = load i64, ptr %156, align 8
  %158 = trunc i64 %157 to i32
  %159 = lshr i64 %157, 32
  %160 = trunc i64 %159 to i32
  br label %161

161:                                              ; preds = %154, %151
  %162 = phi i32 [ %158, %154 ], [ 0, %151 ]
  %163 = phi i32 [ %160, %154 ], [ 0, %151 ]
  %164 = load i8, ptr %53, align 4, !range !9
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %161
  %167 = load i8, ptr %54, align 4
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %173, label %169

169:                                              ; preds = %166
  %170 = load i8, ptr %55, align 1
  %171 = icmp ugt i8 %170, 4
  %172 = select i1 %171, i32 160, i32 128
  br label %173

173:                                              ; preds = %169, %166, %161
  %174 = phi i32 [ 128, %161 ], [ 128, %166 ], [ %172, %169 ]
  %175 = shl nuw nsw i32 %76, 3
  %176 = add nuw nsw i32 %175, 64
  %177 = add nuw nsw i32 %175, 68
  %178 = load i8, ptr %56, align 1, !range !9
  %179 = icmp eq i8 %178, 0
  %180 = load ptr, ptr %57, align 4
  %181 = getelementptr i8, ptr %180, i32 %176
  br i1 %179, label %183, label %182

182:                                              ; preds = %173
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %181, i32 %163) #9, !srcloc !12
  br label %185

183:                                              ; preds = %173
  %184 = tail call i32 @llvm.bswap.i32(i32 %163) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %181, i32 %184) #9, !srcloc !12
  br label %185

185:                                              ; preds = %183, %182
  %186 = load i8, ptr %56, align 1, !range !9
  %187 = icmp eq i8 %186, 0
  %188 = load ptr, ptr %57, align 4
  %189 = getelementptr i8, ptr %188, i32 %177
  br i1 %187, label %191, label %190

190:                                              ; preds = %185
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %189, i32 %162) #9, !srcloc !12
  br label %193

191:                                              ; preds = %185
  %192 = tail call i32 @llvm.bswap.i32(i32 %162) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %189, i32 %192) #9, !srcloc !12
  br label %193

193:                                              ; preds = %191, %190, %149, %147, %146, %128, %126, %96, %94
  %194 = phi i32 [ 128, %149 ], [ 128, %94 ], [ 128, %96 ], [ 128, %126 ], [ 128, %128 ], [ 128, %146 ], [ 128, %147 ], [ %174, %190 ], [ %174, %191 ]
  %195 = load i8, ptr %67, align 1
  %196 = icmp ult i8 %195, 9
  %197 = select i1 %196, i32 0, i32 64
  %198 = or i32 %197, %194
  %199 = load i32, ptr %51, align 8
  %200 = and i32 %199, 16
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %207, label %202

202:                                              ; preds = %193
  %203 = load ptr, ptr %62, align 4
  %204 = icmp eq ptr %203, null
  %205 = or i32 %198, 256
  %206 = select i1 %204, i32 %198, i32 %205
  br label %207

207:                                              ; preds = %202, %193
  %208 = phi i32 [ %198, %193 ], [ %206, %202 ]
  %209 = load i8, ptr %53, align 4, !range !9
  %210 = icmp eq i8 %209, 0
  br i1 %210, label %213, label %211

211:                                              ; preds = %207
  %212 = and i32 %208, -2
  br label %220

213:                                              ; preds = %207
  %214 = load i8, ptr %58, align 4
  %215 = zext i8 %214 to i32
  %216 = shl nuw i32 1, %215
  %217 = and i32 %216, 15
  %218 = xor i32 %217, 15
  %219 = or i32 %218, %208
  br label %220

220:                                              ; preds = %213, %211
  %221 = phi i32 [ %212, %211 ], [ %219, %213 ]
  %222 = shl nuw nsw i32 %76, 2
  %223 = add nuw nsw i32 %222, 320
  %224 = load i8, ptr %56, align 1, !range !9
  %225 = icmp eq i8 %224, 0
  %226 = load ptr, ptr %57, align 4
  %227 = getelementptr i8, ptr %226, i32 %223
  br i1 %225, label %230, label %228

228:                                              ; preds = %220
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %229 = tail call i32 @llvm.bswap.i32(i32 %221) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %227, i32 %229) #9, !srcloc !12
  br label %231

230:                                              ; preds = %220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %227, i32 %221) #9, !srcloc !12
  br label %231

231:                                              ; preds = %230, %228
  %232 = load i8, ptr %67, align 1
  %233 = icmp ult i8 %232, 9
  br i1 %233, label %234, label %236

234:                                              ; preds = %231
  %235 = add i32 %77, 1
  br label %248

236:                                              ; preds = %231
  %237 = icmp ult i8 %232, 17
  br i1 %237, label %238, label %240

238:                                              ; preds = %236
  %239 = add i32 %77, 2
  br label %248

240:                                              ; preds = %236
  %241 = icmp ult i8 %232, 33
  br i1 %241, label %242, label %244

242:                                              ; preds = %240
  %243 = add i32 %77, 4
  br label %248

244:                                              ; preds = %240
  %245 = icmp ult i8 %232, 65
  %246 = add i32 %77, 8
  %247 = select i1 %245, i32 %246, i32 %77
  br label %248

248:                                              ; preds = %244, %242, %238, %234
  %249 = phi i32 [ %235, %234 ], [ %239, %238 ], [ %243, %242 ], [ %247, %244 ]
  %250 = load i32, ptr %72, align 4
  %251 = icmp ult i32 %249, %250
  br i1 %251, label %270, label %252

252:                                              ; preds = %248
  %253 = getelementptr inbounds %struct.spi_transfer, ptr %62, i32 0, i32 7
  %254 = load i8, ptr %253, align 4
  %255 = shl i8 %254, 1
  %256 = zext i8 %255 to i32
  br i1 %71, label %265, label %257

257:                                              ; preds = %252
  %258 = load ptr, ptr %59, align 4
  %259 = getelementptr inbounds %struct.spi_transfer, ptr %62, i32 0, i32 18
  %260 = getelementptr inbounds %struct.spi_controller, ptr %258, i32 0, i32 31
  %261 = load ptr, ptr %260, align 4
  %262 = load ptr, ptr %259, align 4
  %263 = icmp eq ptr %262, %261
  %264 = select i1 %263, i32 1, i32 8
  br label %265

265:                                              ; preds = %257, %252
  %266 = phi i32 [ 8, %252 ], [ %264, %257 ]
  %267 = or i32 %266, %256
  %268 = add nuw nsw i32 %76, 1
  %269 = and i32 %267, 5
  br label %273

270:                                              ; preds = %248
  %271 = add nuw nsw i32 %76, 1
  %272 = icmp eq i32 %271, 16
  br i1 %272, label %273, label %74

273:                                              ; preds = %270, %265
  %274 = phi i32 [ %223, %265 ], [ 380, %270 ]
  %275 = phi i32 [ %76, %265 ], [ 15, %270 ]
  %276 = phi i32 [ %268, %265 ], [ 16, %270 ]
  %277 = phi i32 [ %269, %265 ], [ 0, %270 ]
  %278 = load i8, ptr %56, align 1, !range !9
  %279 = icmp eq i8 %278, 0
  %280 = load ptr, ptr %57, align 4
  %281 = getelementptr i8, ptr %280, i32 16
  br i1 %279, label %283, label %282

282:                                              ; preds = %273
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %281, i32 0) #9, !srcloc !12
  br label %284

283:                                              ; preds = %273
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %281, i32 0) #9, !srcloc !12
  br label %284

284:                                              ; preds = %283, %282
  %285 = load i8, ptr %56, align 1, !range !9
  %286 = icmp eq i8 %285, 0
  %287 = load ptr, ptr %57, align 4
  %288 = getelementptr i8, ptr %287, i32 20
  br i1 %286, label %291, label %289

289:                                              ; preds = %284
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %290 = tail call i32 @llvm.bswap.i32(i32 %275) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %288, i32 %290) #9, !srcloc !12
  br label %292

291:                                              ; preds = %284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %288, i32 %275) #9, !srcloc !12
  br label %292

292:                                              ; preds = %291, %289
  switch i32 %277, label %311 [
    i32 4, label %293
    i32 1, label %293
  ]

293:                                              ; preds = %292, %292
  %294 = load i8, ptr %56, align 1, !range !9
  %295 = icmp eq i8 %294, 0
  %296 = load ptr, ptr %57, align 4
  %297 = getelementptr i8, ptr %296, i32 %274
  %298 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %297) #9
  br i1 %295, label %301, label %299

299:                                              ; preds = %293
  %300 = tail call i32 @llvm.bswap.i32(i32 %298) #9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %301

301:                                              ; preds = %299, %293
  %302 = phi i32 [ %300, %299 ], [ %298, %293 ]
  %303 = and i32 %302, -129
  %304 = load i8, ptr %56, align 1, !range !9
  %305 = icmp eq i8 %304, 0
  %306 = load ptr, ptr %57, align 4
  %307 = getelementptr i8, ptr %306, i32 %274
  br i1 %305, label %310, label %308

308:                                              ; preds = %301
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %309 = tail call i32 @llvm.bswap.i32(i32 %303) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %307, i32 %309) #9, !srcloc !12
  br label %311

310:                                              ; preds = %301
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %307, i32 %303) #9, !srcloc !12
  br label %311

311:                                              ; preds = %310, %308, %292
  %312 = load i8, ptr %53, align 4, !range !9
  %313 = icmp eq i8 %312, 0
  br i1 %313, label %321, label %314

314:                                              ; preds = %311
  %315 = load i8, ptr %56, align 1, !range !9
  %316 = icmp eq i8 %315, 0
  %317 = load ptr, ptr %57, align 4
  %318 = getelementptr i8, ptr %317, i32 384
  br i1 %316, label %320, label %319

319:                                              ; preds = %314
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %318, i32 16777216) #9, !srcloc !12
  br label %321

320:                                              ; preds = %314
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %318, i32 1) #9, !srcloc !12
  br label %321

321:                                              ; preds = %320, %319, %311
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  tail call void @arm_heavy_mb() #9
  %322 = load i8, ptr %56, align 1, !range !9
  %323 = icmp eq i8 %322, 0
  %324 = load ptr, ptr %57, align 4
  %325 = getelementptr i8, ptr %324, i32 24
  br i1 %323, label %327, label %326

326:                                              ; preds = %321
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %325, i32 -536870912) #9, !srcloc !12
  br label %328

327:                                              ; preds = %321
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %325, i32 224) #9, !srcloc !12
  br label %328

328:                                              ; preds = %327, %326
  %329 = tail call i32 @wait_for_completion_timeout(ptr noundef %48, i32 noundef 10) #9
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %331, label %334

331:                                              ; preds = %328
  %332 = load ptr, ptr %7, align 4
  %333 = getelementptr inbounds %struct.platform_device, ptr %332, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %333, ptr noundef nonnull @.str.13) #10
  br label %518

334:                                              ; preds = %328
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4)
  tail call fastcc void @bcm_qspi_disable_bspi(ptr noundef %7) #9
  %335 = icmp sgt i32 %276, 16
  br i1 %335, label %336, label %340

336:                                              ; preds = %334
  %337 = load ptr, ptr %7, align 4
  %338 = getelementptr inbounds %struct.platform_device, ptr %337, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %338, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.read_from_hw) #10
  %339 = load i32, ptr %43, align 4
  br label %485

340:                                              ; preds = %334
  %341 = load ptr, ptr %42, align 4
  %342 = load i32, ptr %43, align 4
  %343 = load i8, ptr %49, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %4, ptr noundef align 1 dereferenceable(3) %60, i32 3, i1 false) #9
  br label %344

344:                                              ; preds = %476, %340
  %345 = phi i32 [ 0, %340 ], [ %482, %476 ]
  %346 = phi i32 [ %342, %340 ], [ %477, %476 ]
  %347 = phi ptr [ %341, %340 ], [ %481, %476 ]
  %348 = getelementptr inbounds %struct.spi_transfer, ptr %347, i32 0, i32 8
  %349 = load i8, ptr %348, align 1
  %350 = icmp ult i8 %349, 9
  br i1 %350, label %351, label %369

351:                                              ; preds = %344
  %352 = getelementptr inbounds %struct.spi_transfer, ptr %347, i32 0, i32 1
  %353 = load ptr, ptr %352, align 4
  %354 = icmp eq ptr %353, null
  br i1 %354, label %459, label %355

355:                                              ; preds = %351
  %356 = shl i32 %345, 3
  %357 = add nuw nsw i32 %356, 196
  %358 = load i8, ptr %56, align 1, !range !9
  %359 = icmp eq i8 %358, 0
  %360 = load ptr, ptr %57, align 4
  %361 = getelementptr i8, ptr %360, i32 %357
  %362 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %361) #9
  br i1 %359, label %365, label %363

363:                                              ; preds = %355
  %364 = tail call i32 @llvm.bswap.i32(i32 %362) #9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %365

365:                                              ; preds = %363, %355
  %366 = phi i32 [ %364, %363 ], [ %362, %355 ]
  %367 = trunc i32 %366 to i8
  %368 = getelementptr i8, ptr %353, i32 %346
  store i8 %367, ptr %368, align 1
  br label %459

369:                                              ; preds = %344
  %370 = icmp ult i8 %349, 17
  br i1 %370, label %371, label %403

371:                                              ; preds = %369
  %372 = getelementptr inbounds %struct.spi_transfer, ptr %347, i32 0, i32 1
  %373 = load ptr, ptr %372, align 4
  %374 = icmp eq ptr %373, null
  br i1 %374, label %459, label %375

375:                                              ; preds = %371
  %376 = shl i32 %345, 3
  %377 = add nuw nsw i32 %376, 192
  %378 = add nuw nsw i32 %376, 196
  %379 = load i8, ptr %56, align 1, !range !9
  %380 = icmp eq i8 %379, 0
  %381 = load ptr, ptr %57, align 4
  %382 = getelementptr i8, ptr %381, i32 %378
  %383 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %382) #9
  br i1 %380, label %386, label %384

384:                                              ; preds = %375
  %385 = tail call i32 @llvm.bswap.i32(i32 %383) #9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %386

386:                                              ; preds = %384, %375
  %387 = phi i32 [ %385, %384 ], [ %383, %375 ]
  %388 = load i8, ptr %56, align 1, !range !9
  %389 = icmp eq i8 %388, 0
  %390 = load ptr, ptr %57, align 4
  %391 = getelementptr i8, ptr %390, i32 %377
  %392 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %391) #9
  br i1 %389, label %395, label %393

393:                                              ; preds = %386
  %394 = tail call i32 @llvm.bswap.i32(i32 %392) #9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %395

395:                                              ; preds = %393, %386
  %396 = phi i32 [ %394, %393 ], [ %392, %386 ]
  %397 = and i32 %387, 255
  %398 = shl i32 %396, 8
  %399 = or i32 %398, %397
  %400 = trunc i32 %399 to i16
  %401 = sdiv i32 %346, 2
  %402 = getelementptr i16, ptr %373, i32 %401
  store i16 %400, ptr %402, align 2
  br label %459

403:                                              ; preds = %369
  %404 = icmp ult i8 %349, 33
  br i1 %404, label %405, label %424

405:                                              ; preds = %403
  %406 = getelementptr inbounds %struct.spi_transfer, ptr %347, i32 0, i32 1
  %407 = load ptr, ptr %406, align 4
  %408 = icmp eq ptr %407, null
  br i1 %408, label %459, label %409

409:                                              ; preds = %405
  %410 = shl i32 %345, 3
  %411 = add nuw nsw i32 %410, 192
  %412 = load i8, ptr %56, align 1, !range !9
  %413 = icmp eq i8 %412, 0
  %414 = load ptr, ptr %57, align 4
  %415 = getelementptr i8, ptr %414, i32 %411
  %416 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %415) #9
  br i1 %413, label %419, label %417

417:                                              ; preds = %409
  %418 = tail call i32 @llvm.bswap.i32(i32 %416) #9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %419

419:                                              ; preds = %417, %409
  %420 = phi i32 [ %418, %417 ], [ %416, %409 ]
  %421 = tail call i32 @llvm.bswap.i32(i32 %420) #9
  %422 = sdiv i32 %346, 4
  %423 = getelementptr i32, ptr %407, i32 %422
  store i32 %421, ptr %423, align 4
  br label %459

424:                                              ; preds = %403
  %425 = icmp ult i8 %349, 65
  br i1 %425, label %426, label %459

426:                                              ; preds = %424
  %427 = getelementptr inbounds %struct.spi_transfer, ptr %347, i32 0, i32 1
  %428 = load ptr, ptr %427, align 4
  %429 = icmp eq ptr %428, null
  br i1 %429, label %459, label %430

430:                                              ; preds = %426
  %431 = shl i32 %345, 3
  %432 = add nuw nsw i32 %431, 192
  %433 = add nuw nsw i32 %431, 196
  %434 = load i8, ptr %56, align 1, !range !9
  %435 = icmp eq i8 %434, 0
  %436 = load ptr, ptr %57, align 4
  %437 = getelementptr i8, ptr %436, i32 %432
  %438 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %437) #9
  br i1 %435, label %441, label %439

439:                                              ; preds = %430
  %440 = tail call i32 @llvm.bswap.i32(i32 %438) #9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %441

441:                                              ; preds = %439, %430
  %442 = phi i32 [ %440, %439 ], [ %438, %430 ]
  %443 = load i8, ptr %56, align 1, !range !9
  %444 = icmp eq i8 %443, 0
  %445 = load ptr, ptr %57, align 4
  %446 = getelementptr i8, ptr %445, i32 %433
  %447 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %446) #9
  br i1 %444, label %450, label %448

448:                                              ; preds = %441
  %449 = tail call i32 @llvm.bswap.i32(i32 %447) #9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %450

450:                                              ; preds = %448, %441
  %451 = phi i32 [ %449, %448 ], [ %447, %441 ]
  %452 = zext i32 %442 to i64
  %453 = zext i32 %451 to i64
  %454 = shl nuw i64 %453, 32
  %455 = or i64 %454, %452
  %456 = tail call i64 @llvm.bswap.i64(i64 %455) #9
  %457 = sdiv i32 %346, 8
  %458 = getelementptr i64, ptr %428, i32 %457
  store i64 %456, ptr %458, align 8
  br label %459

459:                                              ; preds = %450, %426, %424, %419, %405, %395, %371, %365, %351
  %460 = load i8, ptr %348, align 1
  %461 = icmp ult i8 %460, 9
  br i1 %461, label %462, label %464

462:                                              ; preds = %459
  %463 = add i32 %346, 1
  br label %476

464:                                              ; preds = %459
  %465 = icmp ult i8 %460, 17
  br i1 %465, label %466, label %468

466:                                              ; preds = %464
  %467 = add i32 %346, 2
  br label %476

468:                                              ; preds = %464
  %469 = icmp ult i8 %460, 33
  br i1 %469, label %470, label %472

470:                                              ; preds = %468
  %471 = add i32 %346, 4
  br label %476

472:                                              ; preds = %468
  %473 = icmp ult i8 %460, 65
  %474 = add i32 %346, 8
  %475 = select i1 %473, i32 %474, i32 %346
  br label %476

476:                                              ; preds = %472, %470, %466, %462
  %477 = phi i32 [ %463, %462 ], [ %467, %466 ], [ %471, %470 ], [ %475, %472 ]
  %478 = getelementptr inbounds %struct.spi_transfer, ptr %347, i32 0, i32 2
  %479 = load i32, ptr %478, align 4
  %480 = icmp ult i32 %477, %479
  %481 = select i1 %480, ptr %347, ptr null
  %482 = add nuw nsw i32 %345, 1
  %483 = icmp eq i32 %482, %276
  br i1 %483, label %484, label %344

484:                                              ; preds = %476
  store ptr %481, ptr %42, align 4
  store i32 %477, ptr %43, align 4
  store i8 %343, ptr %49, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %60, ptr noundef nonnull align 1 dereferenceable(3) %4, i32 3, i1 false) #9
  br label %485

485:                                              ; preds = %484, %336
  %486 = phi i32 [ %339, %336 ], [ %477, %484 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4)
  %487 = load i32, ptr %44, align 4
  %488 = icmp ult i32 %486, %487
  br i1 %488, label %61, label %489

489:                                              ; preds = %485, %41
  %490 = getelementptr inbounds %struct.bcm_qspi, ptr %7, i32 0, i32 19
  %491 = load i8, ptr %490, align 4, !range !9
  %492 = icmp eq i8 %491, 0
  br i1 %492, label %518, label %493

493:                                              ; preds = %489
  %494 = getelementptr inbounds %struct.bcm_qspi, ptr %7, i32 0, i32 12
  store i32 1, ptr %494, align 4
  %495 = getelementptr inbounds %struct.bcm_qspi, ptr %7, i32 0, i32 20
  %496 = load i8, ptr %495, align 1, !range !9
  %497 = icmp eq i8 %496, 0
  %498 = getelementptr %struct.bcm_qspi, ptr %7, i32 0, i32 5, i32 1
  %499 = load ptr, ptr %498, align 4
  %500 = getelementptr i8, ptr %499, i32 8
  %501 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %500) #9
  br i1 %497, label %504, label %502

502:                                              ; preds = %493
  %503 = tail call i32 @llvm.bswap.i32(i32 %501) #9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %504

504:                                              ; preds = %502, %493
  %505 = phi i32 [ %503, %502 ], [ %501, %493 ]
  %506 = and i32 %505, 1
  %507 = icmp eq i32 %506, 0
  br i1 %507, label %518, label %508

508:                                              ; preds = %504
  tail call fastcc void @bcm_qspi_bspi_flush_prefetch_buffers(ptr noundef %7) #9
  %509 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %509(i32 noundef 214748) #9
  %510 = load i8, ptr %495, align 1, !range !9
  %511 = icmp eq i8 %510, 0
  %512 = load ptr, ptr %498, align 4
  %513 = getelementptr i8, ptr %512, i32 8
  br i1 %511, label %515, label %514

514:                                              ; preds = %508
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %513, i32 0) #9, !srcloc !12
  br label %516

515:                                              ; preds = %508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %513, i32 0) #9, !srcloc !12
  br label %516

516:                                              ; preds = %515, %514
  %517 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %517(i32 noundef 214748) #9
  br label %518

518:                                              ; preds = %516, %504, %489, %331
  %519 = phi i32 [ -110, %331 ], [ 0, %489 ], [ 0, %504 ], [ 0, %516 ]
  ret i32 %519
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm_qspi_cleanup(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 8
  tail call void @kfree(ptr noundef %3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_big_endian(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %0) unnamed_addr #4 {
  %2 = tail call i32 @clk_prepare(ptr noundef %0) #9
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @clk_enable(ptr noundef %0) #9
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @clk_unprepare(ptr noundef %0) #9
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi i32 [ %2, %1 ], [ %5, %7 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bcm_qspi_hw_uninit(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bcm_qspi, ptr %0, i32 0, i32 20
  %3 = load i8, ptr %2, align 1, !range !9
  %4 = icmp eq i8 %3, 0
  %5 = getelementptr %struct.bcm_qspi, ptr %0, i32 0, i32 5, i32 0
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 32
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #9
  br i1 %4, label %11, label %9

9:                                                ; preds = %1
  %10 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %11

11:                                               ; preds = %9, %1
  %12 = phi i32 [ %10, %9 ], [ %8, %1 ]
  %13 = load i8, ptr %2, align 1, !range !9
  %14 = icmp eq i8 %13, 0
  %15 = load ptr, ptr %5, align 4
  %16 = getelementptr i8, ptr %15, i32 24
  br i1 %14, label %18, label %17

17:                                               ; preds = %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 0) #9, !srcloc !12
  br label %19

18:                                               ; preds = %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 0) #9, !srcloc !12
  br label %19

19:                                               ; preds = %18, %17
  %20 = getelementptr inbounds %struct.bcm_qspi, ptr %0, i32 0, i32 19
  %21 = load i8, ptr %20, align 4, !range !9
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  %24 = load i8, ptr %2, align 1, !range !9
  %25 = icmp eq i8 %24, 0
  %26 = load ptr, ptr %5, align 4
  %27 = getelementptr i8, ptr %26, i32 384
  br i1 %25, label %29, label %28

28:                                               ; preds = %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 0) #9, !srcloc !12
  br label %30

29:                                               ; preds = %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 0) #9, !srcloc !12
  br label %30

30:                                               ; preds = %29, %28, %19
  %31 = and i32 %12, -2
  %32 = load i8, ptr %2, align 1, !range !9
  %33 = icmp eq i8 %32, 0
  %34 = load ptr, ptr %5, align 4
  %35 = getelementptr i8, ptr %34, i32 32
  br i1 %33, label %38, label %36

36:                                               ; preds = %30
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %37 = tail call i32 @llvm.bswap.i32(i32 %31) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %37) #9, !srcloc !12
  br label %39

38:                                               ; preds = %30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %31) #9, !srcloc !12
  br label %39

39:                                               ; preds = %38, %36
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname_optional(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bcm_qspi_hw_init(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.bcm_qspi_parms, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #9
  store i64 0, ptr %2, align 8, !annotation !8
  %3 = getelementptr inbounds %struct.bcm_qspi, ptr %0, i32 0, i32 20
  %4 = load i8, ptr %3, align 1, !range !9
  %5 = icmp eq i8 %4, 0
  %6 = getelementptr %struct.bcm_qspi, ptr %0, i32 0, i32 5, i32 0
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 8
  br i1 %5, label %10, label %9

9:                                                ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 0) #9, !srcloc !12
  br label %11

10:                                               ; preds = %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 0) #9, !srcloc !12
  br label %11

11:                                               ; preds = %10, %9
  %12 = load i8, ptr %3, align 1, !range !9
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr %6, align 4
  %15 = getelementptr i8, ptr %14, i32 12
  br i1 %13, label %17, label %16

16:                                               ; preds = %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 0) #9, !srcloc !12
  br label %18

17:                                               ; preds = %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 0) #9, !srcloc !12
  br label %18

18:                                               ; preds = %17, %16
  %19 = load i8, ptr %3, align 1, !range !9
  %20 = icmp eq i8 %19, 0
  %21 = load ptr, ptr %6, align 4
  %22 = getelementptr i8, ptr %21, i32 16
  br i1 %20, label %24, label %23

23:                                               ; preds = %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 0) #9, !srcloc !12
  br label %25

24:                                               ; preds = %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 0) #9, !srcloc !12
  br label %25

25:                                               ; preds = %24, %23
  %26 = load i8, ptr %3, align 1, !range !9
  %27 = icmp eq i8 %26, 0
  %28 = load ptr, ptr %6, align 4
  %29 = getelementptr i8, ptr %28, i32 20
  br i1 %27, label %31, label %30

30:                                               ; preds = %25
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 0) #9, !srcloc !12
  br label %32

31:                                               ; preds = %25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 0) #9, !srcloc !12
  br label %32

32:                                               ; preds = %31, %30
  %33 = load i8, ptr %3, align 1, !range !9
  %34 = icmp eq i8 %33, 0
  %35 = load ptr, ptr %6, align 4
  %36 = getelementptr i8, ptr %35, i32 24
  br i1 %34, label %38, label %37

37:                                               ; preds = %32
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 536870912) #9, !srcloc !12
  br label %39

38:                                               ; preds = %32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 32) #9, !srcloc !12
  br label %39

39:                                               ; preds = %38, %37
  %40 = getelementptr inbounds %struct.bcm_qspi_parms, ptr %2, i32 0, i32 1
  store i8 3, ptr %40, align 4
  %41 = getelementptr inbounds %struct.bcm_qspi_parms, ptr %2, i32 0, i32 2
  store i8 8, ptr %41, align 1
  %42 = getelementptr inbounds %struct.bcm_qspi, ptr %0, i32 0, i32 4
  %43 = load i32, ptr %42, align 4
  store i32 %43, ptr %2, align 8
  call fastcc void @bcm_qspi_hw_set_parms(ptr noundef %0, ptr noundef nonnull %2)
  %44 = getelementptr inbounds %struct.bcm_qspi, ptr %0, i32 0, i32 19
  %45 = load i8, ptr %44, align 4, !range !9
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %92, label %47

47:                                               ; preds = %39
  %48 = load i8, ptr %3, align 1, !range !9
  %49 = icmp eq i8 %48, 0
  %50 = getelementptr %struct.bcm_qspi, ptr %0, i32 0, i32 5, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #9
  br i1 %49, label %55, label %53

53:                                               ; preds = %47
  %54 = tail call i32 @llvm.bswap.i32(i32 %52) #9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %55

55:                                               ; preds = %53, %47
  %56 = phi i32 [ %54, %53 ], [ %52, %47 ]
  %57 = lshr i32 %56, 8
  %58 = and i32 %57, 255
  %59 = getelementptr inbounds %struct.bcm_qspi, ptr %0, i32 0, i32 10
  store i32 %58, ptr %59, align 4
  %60 = and i32 %56, 255
  %61 = getelementptr inbounds %struct.bcm_qspi, ptr %0, i32 0, i32 11
  store i32 %60, ptr %61, align 4
  %62 = icmp ult i32 %58, 4
  br i1 %62, label %77, label %63

63:                                               ; preds = %55
  %64 = load i8, ptr %3, align 1, !range !9
  %65 = icmp eq i8 %64, 0
  %66 = load ptr, ptr %50, align 4
  %67 = getelementptr i8, ptr %66, i32 60
  br i1 %65, label %69, label %68

68:                                               ; preds = %63
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 0) #9, !srcloc !12
  br label %70

69:                                               ; preds = %63
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 0) #9, !srcloc !12
  br label %70

70:                                               ; preds = %69, %68
  %71 = load i8, ptr %3, align 1, !range !9
  %72 = icmp eq i8 %71, 0
  %73 = load ptr, ptr %50, align 4
  %74 = getelementptr i8, ptr %73, i32 64
  br i1 %72, label %76, label %75

75:                                               ; preds = %70
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 16777216) #9, !srcloc !12
  br label %77

76:                                               ; preds = %70
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 1) #9, !srcloc !12
  br label %77

77:                                               ; preds = %76, %75, %55
  %78 = getelementptr inbounds %struct.bcm_qspi, ptr %0, i32 0, i32 12
  store i32 1, ptr %78, align 4
  tail call fastcc void @bcm_qspi_disable_bspi(ptr noundef %0) #9
  %79 = load i8, ptr %3, align 1, !range !9
  %80 = icmp eq i8 %79, 0
  %81 = load ptr, ptr %50, align 4
  %82 = getelementptr i8, ptr %81, i32 24
  br i1 %80, label %84, label %83

83:                                               ; preds = %77
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 0) #9, !srcloc !12
  br label %85

84:                                               ; preds = %77
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 0) #9, !srcloc !12
  br label %85

85:                                               ; preds = %84, %83
  %86 = load i8, ptr %3, align 1, !range !9
  %87 = icmp eq i8 %86, 0
  %88 = load ptr, ptr %50, align 4
  %89 = getelementptr i8, ptr %88, i32 32
  br i1 %87, label %91, label %90

90:                                               ; preds = %85
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 0) #9, !srcloc !12
  br label %92

91:                                               ; preds = %85
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 0) #9, !srcloc !12
  br label %92

92:                                               ; preds = %91, %90, %39
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_register_controller(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bcm_qspi_remove(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.bcm_qspi, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @spi_unregister_controller(ptr noundef %5) #9
  tail call fastcc void @bcm_qspi_hw_uninit(ptr noundef %3)
  %6 = getelementptr inbounds %struct.bcm_qspi, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %7) #9
  tail call void @clk_unprepare(ptr noundef %7) #9
  %8 = getelementptr inbounds %struct.bcm_qspi, ptr %3, i32 0, i32 22
  %9 = load ptr, ptr %8, align 4
  tail call void @kfree(ptr noundef %9) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_unregister_controller(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_qspi_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.bcm_qspi, ptr %3, i32 0, i32 10
  %5 = load i32, ptr %4, align 4
  %6 = icmp slt i32 %5, 4
  br i1 %6, label %20, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.bcm_qspi, ptr %3, i32 0, i32 20
  %9 = load i8, ptr %8, align 1, !range !9
  %10 = icmp eq i8 %9, 0
  %11 = getelementptr %struct.bcm_qspi, ptr %3, i32 0, i32 5, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 36
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #9
  br i1 %10, label %17, label %15

15:                                               ; preds = %7
  %16 = tail call i32 @llvm.bswap.i32(i32 %14) #9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %17

17:                                               ; preds = %15, %7
  %18 = phi i32 [ %16, %15 ], [ %14, %7 ]
  %19 = getelementptr inbounds %struct.bcm_qspi, ptr %3, i32 0, i32 18
  store i32 %18, ptr %19, align 4
  br label %20

20:                                               ; preds = %17, %1
  %21 = getelementptr inbounds %struct.bcm_qspi, ptr %3, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 @spi_controller_suspend(ptr noundef %22) #9
  %24 = getelementptr inbounds %struct.bcm_qspi, ptr %3, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  tail call void @clk_disable(ptr noundef %25) #9
  tail call void @clk_unprepare(ptr noundef %25) #9
  tail call fastcc void @bcm_qspi_hw_uninit(ptr noundef %3)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_qspi_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call fastcc void @bcm_qspi_hw_init(ptr noundef %3)
  %4 = getelementptr inbounds %struct.bcm_qspi, ptr %3, i32 0, i32 9
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %32

7:                                                ; preds = %1
  %8 = getelementptr %struct.bcm_qspi, ptr %3, i32 0, i32 5, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %32, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.bcm_qspi, ptr %3, i32 0, i32 20
  %13 = load i8, ptr %12, align 1, !range !9
  %14 = icmp eq i8 %13, 0
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %9) #9
  br i1 %14, label %18, label %16

16:                                               ; preds = %11
  %17 = tail call i32 @llvm.bswap.i32(i32 %15) #9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %18

18:                                               ; preds = %16, %11
  %19 = phi i32 [ %17, %16 ], [ %15, %11 ]
  %20 = and i32 %19, -256
  %21 = shl nuw i32 1, %5
  %22 = or i32 %20, %21
  %23 = icmp eq i32 %19, %22
  br i1 %23, label %33, label %24

24:                                               ; preds = %18
  %25 = load i8, ptr %12, align 1, !range !9
  %26 = icmp eq i8 %25, 0
  %27 = load ptr, ptr %8, align 4
  br i1 %26, label %30, label %28

28:                                               ; preds = %24
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %29 = tail call i32 @llvm.bswap.i32(i32 %22) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %29) #9, !srcloc !12
  br label %31

30:                                               ; preds = %24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %22) #9, !srcloc !12
  br label %31

31:                                               ; preds = %30, %28
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #9
  br label %32

32:                                               ; preds = %31, %7, %1
  store i32 %5, ptr %4, align 4
  br label %33

33:                                               ; preds = %32, %18
  %34 = getelementptr inbounds %struct.bcm_qspi, ptr %3, i32 0, i32 6
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.bcm_qspi_soc_intc, ptr %35, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  tail call void %39(ptr noundef nonnull %35, i32 noundef 1, i1 noundef zeroext true) #9
  br label %40

40:                                               ; preds = %37, %33
  %41 = getelementptr inbounds %struct.bcm_qspi, ptr %3, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = tail call i32 @clk_prepare(ptr noundef %42) #9
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = tail call i32 @clk_enable(ptr noundef %42) #9
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  tail call void @clk_unprepare(ptr noundef %42) #9
  br label %53

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.bcm_qspi, ptr %3, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = tail call i32 @spi_controller_resume(ptr noundef %51) #9
  br label %53

53:                                               ; preds = %49, %48, %40
  %54 = phi i32 [ 0, %49 ], [ %46, %48 ], [ %43, %40 ]
  ret i32 %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bcm_qspi_disable_bspi(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bcm_qspi, ptr %0, i32 0, i32 19
  %3 = load i8, ptr %2, align 4, !range !9
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %49, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bcm_qspi, ptr %0, i32 0, i32 12
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.bcm_qspi, ptr %0, i32 0, i32 20
  %8 = load i8, ptr %7, align 1, !range !9
  %9 = icmp eq i8 %8, 0
  %10 = getelementptr %struct.bcm_qspi, ptr %0, i32 0, i32 5, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 8
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #9
  br i1 %9, label %16, label %14

14:                                               ; preds = %5
  %15 = tail call i32 @llvm.bswap.i32(i32 %13) #9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %16

16:                                               ; preds = %14, %5
  %17 = phi i32 [ %15, %14 ], [ %13, %5 ]
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %49

20:                                               ; preds = %33, %16
  %21 = phi i32 [ %35, %33 ], [ 0, %16 ]
  %22 = load i8, ptr %7, align 1, !range !9
  %23 = icmp eq i8 %22, 0
  %24 = load ptr, ptr %10, align 4
  %25 = getelementptr i8, ptr %24, i32 12
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #9
  br i1 %23, label %29, label %27

27:                                               ; preds = %20
  %28 = tail call i32 @llvm.bswap.i32(i32 %26) #9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %29

29:                                               ; preds = %27, %20
  %30 = phi i32 [ %28, %27 ], [ %26, %20 ]
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748) #9
  %35 = add nuw nsw i32 %21, 1
  %36 = icmp eq i32 %35, 1000
  br i1 %36, label %37, label %20

37:                                               ; preds = %33
  %38 = load ptr, ptr %0, align 4
  %39 = getelementptr inbounds %struct.platform_device, ptr %38, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %39, ptr noundef nonnull @.str.15) #10
  br label %40

40:                                               ; preds = %37, %29
  %41 = load i8, ptr %7, align 1, !range !9
  %42 = icmp eq i8 %41, 0
  %43 = load ptr, ptr %10, align 4
  %44 = getelementptr i8, ptr %43, i32 8
  br i1 %42, label %46, label %45

45:                                               ; preds = %40
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 16777216) #9, !srcloc !12
  br label %47

46:                                               ; preds = %40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 1) #9, !srcloc !12
  br label %47

47:                                               ; preds = %46, %45
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748) #9
  br label %49

49:                                               ; preds = %47, %16, %1
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bcm_qspi_hw_set_parms(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bcm_qspi, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %1, align 4
  %5 = load i32, ptr %3, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %19

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bcm_qspi_parms, ptr %1, i32 0, i32 1
  %9 = load i8, ptr %8, align 4
  %10 = getelementptr inbounds %struct.bcm_qspi, ptr %0, i32 0, i32 7, i32 1
  %11 = load i8, ptr %10, align 4
  %12 = icmp eq i8 %9, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.bcm_qspi_parms, ptr %1, i32 0, i32 2
  %15 = load i8, ptr %14, align 1
  %16 = getelementptr inbounds %struct.bcm_qspi, ptr %0, i32 0, i32 7, i32 2
  %17 = load i8, ptr %16, align 1
  %18 = icmp eq i8 %15, %17
  br i1 %18, label %164, label %19

19:                                               ; preds = %13, %7, %2
  %20 = getelementptr inbounds %struct.bcm_qspi, ptr %0, i32 0, i32 25
  %21 = load i8, ptr %20, align 4
  %22 = icmp eq i8 %21, 0
  %23 = select i1 %22, i32 128, i32 0
  %24 = getelementptr inbounds %struct.bcm_qspi_parms, ptr %1, i32 0, i32 2
  %25 = load i8, ptr %24, align 1
  switch i8 %25, label %26 [
    i8 16, label %30
    i8 64, label %30
  ]

26:                                               ; preds = %19
  %27 = zext i8 %25 to i32
  %28 = shl nuw nsw i32 %27, 2
  %29 = or i32 %28, %23
  br label %30

30:                                               ; preds = %26, %19, %19
  %31 = phi i32 [ %29, %26 ], [ %23, %19 ], [ %23, %19 ]
  %32 = getelementptr inbounds %struct.bcm_qspi_parms, ptr %1, i32 0, i32 1
  %33 = load i8, ptr %32, align 4
  %34 = and i8 %33, 3
  %35 = zext i8 %34 to i32
  %36 = or i32 %31, %35
  %37 = getelementptr inbounds %struct.bcm_qspi, ptr %0, i32 0, i32 20
  %38 = load i8, ptr %37, align 1, !range !9
  %39 = icmp eq i8 %38, 0
  %40 = getelementptr %struct.bcm_qspi, ptr %0, i32 0, i32 5, i32 0
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr i8, ptr %41, i32 4
  br i1 %39, label %45, label %43

43:                                               ; preds = %30
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %44 = tail call i32 @llvm.bswap.i32(i32 %36) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %44) #9, !srcloc !12
  br label %46

45:                                               ; preds = %30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %36) #9, !srcloc !12
  br label %46

46:                                               ; preds = %45, %43
  %47 = getelementptr inbounds %struct.bcm_qspi, ptr %0, i32 0, i32 19
  %48 = load i8, ptr %47, align 4, !range !9
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.bcm_qspi, ptr %0, i32 0, i32 3
  %52 = load i32, ptr %51, align 4
  br label %125

53:                                               ; preds = %46
  %54 = load i8, ptr %20, align 4
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.bcm_qspi, ptr %0, i32 0, i32 3
  %58 = load i32, ptr %57, align 4
  br label %125

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.bcm_qspi, ptr %0, i32 0, i32 26
  %61 = load i8, ptr %60, align 1
  %62 = icmp ugt i8 %61, 4
  br i1 %62, label %63, label %106

63:                                               ; preds = %59
  %64 = load i8, ptr %32, align 4
  %65 = and i8 %64, 16
  %66 = icmp eq i8 %65, 0
  %67 = select i1 %66, i32 1, i32 193
  %68 = getelementptr inbounds %struct.bcm_qspi, ptr %0, i32 0, i32 27
  %69 = load i8, ptr %68, align 2, !range !9
  %70 = icmp ne i8 %69, 0
  %71 = icmp ne i8 %61, 5
  %72 = select i1 %70, i1 true, i1 %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %63
  %74 = load i32, ptr %1, align 4
  %75 = icmp ne i32 %74, 0
  %76 = shl i32 %74, 1
  %77 = icmp ult i32 %76, 421876
  %78 = and i1 %75, %77
  %79 = or i32 %67, 2048
  %80 = select i1 %78, i32 27000000, i32 108000000
  %81 = select i1 %78, i32 %67, i32 %79
  %82 = getelementptr inbounds %struct.bcm_qspi, ptr %0, i32 0, i32 3
  store i32 %80, ptr %82, align 4
  br label %83

83:                                               ; preds = %73, %63
  %84 = phi i32 [ %67, %63 ], [ %81, %73 ]
  %85 = load i8, ptr %24, align 1
  %86 = icmp ugt i8 %85, 16
  br i1 %86, label %87, label %95

87:                                               ; preds = %83
  %88 = or i32 %84, 298
  %89 = load i8, ptr %37, align 1, !range !9
  %90 = icmp eq i8 %89, 0
  %91 = load ptr, ptr %40, align 4
  %92 = getelementptr i8, ptr %91, i32 8
  br i1 %90, label %94, label %93

93:                                               ; preds = %87
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 16777216) #9, !srcloc !12
  br label %97

94:                                               ; preds = %87
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 1) #9, !srcloc !12
  br label %97

95:                                               ; preds = %83
  %96 = and i32 %84, -297
  br label %97

97:                                               ; preds = %95, %94, %93
  %98 = phi i32 [ %96, %95 ], [ %88, %93 ], [ %88, %94 ]
  %99 = load i8, ptr %37, align 1, !range !9
  %100 = icmp eq i8 %99, 0
  %101 = load ptr, ptr %40, align 4
  %102 = getelementptr i8, ptr %101, i32 40
  br i1 %100, label %105, label %103

103:                                              ; preds = %97
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %104 = tail call i32 @llvm.bswap.i32(i32 %98) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 %104) #9, !srcloc !12
  br label %106

105:                                              ; preds = %97
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 %98) #9, !srcloc !12
  br label %106

106:                                              ; preds = %105, %103, %59
  %107 = load i8, ptr %47, align 4
  %108 = getelementptr inbounds %struct.bcm_qspi, ptr %0, i32 0, i32 3
  %109 = load i32, ptr %108, align 4
  %110 = icmp eq i8 %107, 0
  br i1 %110, label %111, label %125

111:                                              ; preds = %106
  %112 = load i8, ptr %20, align 4
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %125, label %114

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.bcm_qspi, ptr %0, i32 0, i32 26
  %116 = load i8, ptr %115, align 1
  %117 = icmp ugt i8 %116, 4
  br i1 %117, label %118, label %125

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.bcm_qspi, ptr %0, i32 0, i32 27
  %120 = load i8, ptr %119, align 2, !range !9
  %121 = icmp ne i8 %120, 0
  %122 = icmp ne i8 %116, 5
  %123 = select i1 %121, i1 true, i1 %122
  %124 = select i1 %123, i32 8, i32 2
  br label %125

125:                                              ; preds = %118, %114, %111, %106, %56, %50
  %126 = phi i1 [ false, %106 ], [ true, %111 ], [ true, %114 ], [ true, %118 ], [ false, %50 ], [ true, %56 ]
  %127 = phi i32 [ %109, %106 ], [ %109, %111 ], [ %109, %114 ], [ %109, %118 ], [ %52, %50 ], [ %58, %56 ]
  %128 = phi i32 [ 16, %106 ], [ 16, %111 ], [ 16, %114 ], [ %124, %118 ], [ 16, %50 ], [ 16, %56 ]
  %129 = udiv i32 %127, %128
  %130 = getelementptr inbounds %struct.bcm_qspi, ptr %0, i32 0, i32 4
  store i32 %129, ptr %130, align 4
  %131 = load i32, ptr %1, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %125
  %134 = shl i32 %131, 1
  %135 = udiv i32 %127, %134
  br label %136

136:                                              ; preds = %133, %125
  %137 = phi i32 [ %135, %133 ], [ 0, %125 ]
  br i1 %126, label %138, label %152

138:                                              ; preds = %136
  %139 = load i8, ptr %20, align 4
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %152, label %141

141:                                              ; preds = %138
  %142 = getelementptr inbounds %struct.bcm_qspi, ptr %0, i32 0, i32 26
  %143 = load i8, ptr %142, align 1
  %144 = icmp ugt i8 %143, 4
  br i1 %144, label %145, label %152

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.bcm_qspi, ptr %0, i32 0, i32 27
  %147 = load i8, ptr %146, align 2, !range !9
  %148 = icmp ne i8 %147, 0
  %149 = icmp ne i8 %143, 5
  %150 = select i1 %148, i1 true, i1 %149
  %151 = select i1 %150, i32 4, i32 1
  br label %152

152:                                              ; preds = %145, %141, %138, %136
  %153 = phi i32 [ 8, %136 ], [ 8, %138 ], [ 8, %141 ], [ %151, %145 ]
  %154 = tail call i32 @llvm.umax.i32(i32 %137, i32 %153)
  %155 = tail call i32 @llvm.umin.i32(i32 %154, i32 255)
  %156 = load i8, ptr %37, align 1, !range !9
  %157 = icmp eq i8 %156, 0
  %158 = load ptr, ptr %40, align 4
  br i1 %157, label %161, label %159

159:                                              ; preds = %152
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %160 = shl nuw i32 %155, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %158, i32 %160) #9, !srcloc !12
  br label %162

161:                                              ; preds = %152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %158, i32 %155) #9, !srcloc !12
  br label %162

162:                                              ; preds = %161, %159
  %163 = load i64, ptr %1, align 4
  store i64 %163, ptr %3, align 4
  br label %164

164:                                              ; preds = %162, %13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bcm_qspi_bspi_flush_prefetch_buffers(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bcm_qspi, ptr %0, i32 0, i32 20
  %3 = getelementptr %struct.bcm_qspi, ptr %0, i32 0, i32 5, i32 1
  br label %4

4:                                                ; preds = %17, %1
  %5 = phi i32 [ 0, %1 ], [ %19, %17 ]
  %6 = load i8, ptr %2, align 1, !range !9
  %7 = icmp eq i8 %6, 0
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr i8, ptr %8, i32 12
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #9
  br i1 %7, label %13, label %11

11:                                               ; preds = %4
  %12 = tail call i32 @llvm.bswap.i32(i32 %10) #9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %13

13:                                               ; preds = %11, %4
  %14 = phi i32 [ %12, %11 ], [ %10, %4 ]
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #9
  %19 = add nuw nsw i32 %5, 1
  %20 = icmp eq i32 %19, 1000
  br i1 %20, label %21, label %4

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 4
  %23 = getelementptr inbounds %struct.platform_device, ptr %22, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.15) #10
  br label %24

24:                                               ; preds = %21, %13
  %25 = load i8, ptr %2, align 1, !range !9
  %26 = icmp eq i8 %25, 0
  %27 = load ptr, ptr %3, align 4
  %28 = getelementptr i8, ptr %27, i32 24
  br i1 %26, label %30, label %29

29:                                               ; preds = %24
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 16777216) #9, !srcloc !12
  br label %31

30:                                               ; preds = %24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 1) #9, !srcloc !12
  br label %31

31:                                               ; preds = %30, %29
  %32 = load i8, ptr %2, align 1, !range !9
  %33 = icmp eq i8 %32, 0
  %34 = load ptr, ptr %3, align 4
  %35 = getelementptr i8, ptr %34, i32 32
  br i1 %33, label %37, label %36

36:                                               ; preds = %31
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 16777216) #9, !srcloc !12
  br label %38

37:                                               ; preds = %31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 1) #9, !srcloc !12
  br label %38

38:                                               ; preds = %37, %36
  %39 = load i8, ptr %2, align 1, !range !9
  %40 = icmp eq i8 %39, 0
  %41 = load ptr, ptr %3, align 4
  %42 = getelementptr i8, ptr %41, i32 24
  br i1 %40, label %44, label %43

43:                                               ; preds = %38
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 0) #9, !srcloc !12
  br label %45

44:                                               ; preds = %38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 0) #9, !srcloc !12
  br label %45

45:                                               ; preds = %44, %43
  %46 = load i8, ptr %2, align 1, !range !9
  %47 = icmp eq i8 %46, 0
  %48 = load ptr, ptr %3, align 4
  %49 = getelementptr i8, ptr %48, i32 32
  br i1 %47, label %51, label %50

50:                                               ; preds = %45
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 0) #9, !srcloc !12
  br label %52

51:                                               ; preds = %45
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 0) #9, !srcloc !12
  br label %52

52:                                               ; preds = %51, %50
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_qspi_exec_mem_op(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca [2 x %struct.spi_transfer], align 4
  %4 = alloca [6 x i8], align 1
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.spi_device, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 3, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %235, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 1
  %15 = load i8, ptr %14, align 8
  %16 = add i8 %15, -5
  %17 = icmp ult i8 %16, -4
  br i1 %17, label %235, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 3, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %235

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 3, i32 4
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 1, i32 3
  %26 = load i64, ptr %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = getelementptr inbounds %struct.bcm_qspi, ptr %9, i32 0, i32 10
  %29 = load i32, ptr %28, align 4
  %30 = icmp slt i32 %29, 4
  br i1 %30, label %31, label %39

31:                                               ; preds = %22
  %32 = add i32 %27, 12582912
  %33 = and i32 %32, 16777215
  %34 = and i32 %32, 8388608
  %35 = add i32 %11, -1
  %36 = add i32 %35, %33
  %37 = and i32 %36, -8388608
  %38 = icmp ne i32 %34, %37
  br label %39

39:                                               ; preds = %31, %22
  %40 = phi i1 [ false, %22 ], [ %38, %31 ]
  %41 = phi i32 [ %27, %22 ], [ %33, %31 ]
  %42 = and i32 %41, 3
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = ptrtoint ptr %24 to i32
  %46 = and i32 %45, 3
  %47 = icmp ne i32 %46, 0
  %48 = icmp ult i32 %11, 4
  %49 = select i1 %47, i1 true, i1 %48
  %50 = select i1 %49, i1 true, i1 %40
  br i1 %50, label %51, label %105

51:                                               ; preds = %44, %39
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #9
  %52 = getelementptr inbounds i8, ptr %4, i32 1
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(5) %52, i8 0, i64 5, i1 false) #9
  %53 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(192) %53, i8 0, i32 188, i1 false) #9
  %54 = getelementptr inbounds %struct.anon.65, ptr %1, i32 0, i32 3
  %55 = load i16, ptr %54, align 4
  %56 = trunc i16 %55 to i8
  store i8 %56, ptr %4, align 1
  %57 = zext i8 %15 to i32
  br label %58

58:                                               ; preds = %58, %51
  %59 = phi i32 [ 0, %51 ], [ %66, %58 ]
  %60 = xor i32 %59, -1
  %61 = add nsw i32 %60, %57
  %62 = shl i32 %61, 3
  %63 = zext i32 %62 to i64
  %64 = lshr i64 %26, %63
  %65 = trunc i64 %64 to i8
  %66 = add nuw nsw i32 %59, 1
  %67 = getelementptr [6 x i8], ptr %4, i32 0, i32 %66
  store i8 %65, ptr %67, align 1
  %68 = icmp eq i32 %66, %57
  br i1 %68, label %69, label %58

69:                                               ; preds = %58
  store ptr %4, ptr %3, align 4
  %70 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 2
  %71 = load i8, ptr %70, align 8
  %72 = zext i8 %71 to i32
  %73 = add nuw nsw i32 %57, 1
  %74 = add nuw nsw i32 %73, %72
  %75 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 2
  store i32 %74, ptr %75, align 4
  %76 = getelementptr inbounds %struct.spi_device, ptr %5, i32 0, i32 5
  %77 = load i8, ptr %76, align 1
  %78 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 8
  store i8 %77, ptr %78, align 1
  %79 = getelementptr inbounds %struct.anon.65, ptr %1, i32 0, i32 1
  %80 = load i8, ptr %79, align 1
  %81 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 7
  %82 = shl i8 %80, 2
  %83 = and i8 %82, 28
  store i8 %83, ptr %81, align 4
  %84 = getelementptr inbounds %struct.bcm_qspi, ptr %9, i32 0, i32 8, i32 2
  store i8 0, ptr %84, align 4
  %85 = call i32 @bcm_qspi_transfer_one(ptr noundef %7, ptr noundef %5, ptr noundef nonnull %3) #9
  store i8 1, ptr %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %103

87:                                               ; preds = %69
  %88 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 3
  %89 = load ptr, ptr %23, align 4
  %90 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %3, i32 0, i32 1
  %91 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %3, i32 0, i32 1, i32 1
  store ptr %89, ptr %91, align 4
  %92 = load i32, ptr %10, align 4
  %93 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %3, i32 0, i32 1, i32 2
  store i32 %92, ptr %93, align 4
  %94 = load i8, ptr %88, align 4
  %95 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %3, i32 0, i32 1, i32 7
  %96 = load i8, ptr %95, align 4
  %97 = shl i8 %94, 5
  %98 = and i8 %96, 31
  %99 = or i8 %98, %97
  store i8 %99, ptr %95, align 4
  %100 = load i8, ptr %76, align 1
  %101 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %3, i32 0, i32 1, i32 8
  store i8 %100, ptr %101, align 1
  %102 = call i32 @bcm_qspi_transfer_one(ptr noundef %7, ptr noundef %5, ptr noundef %90) #9
  br label %103

103:                                              ; preds = %87, %69
  %104 = phi i32 [ %85, %69 ], [ %102, %87 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %3) #9
  br label %235

105:                                              ; preds = %44
  %106 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 3
  %107 = load i8, ptr %106, align 4
  %108 = icmp eq i8 %107, 0
  %109 = select i1 %108, i8 1, i8 %107
  %110 = zext i8 %109 to i32
  %111 = zext i8 %15 to i32
  %112 = getelementptr inbounds %struct.bcm_qspi, ptr %9, i32 0, i32 17
  store i8 1, ptr %112, align 4
  br i1 %30, label %184, label %113

113:                                              ; preds = %105
  %114 = getelementptr inbounds %struct.bcm_qspi, ptr %9, i32 0, i32 20
  %115 = load i8, ptr %114, align 1, !range !9
  %116 = icmp eq i8 %115, 0
  %117 = getelementptr %struct.bcm_qspi, ptr %9, i32 0, i32 5, i32 1
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr i8, ptr %118, i32 36
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %119) #9
  br i1 %116, label %123, label %121

121:                                              ; preds = %113
  %122 = tail call i32 @llvm.bswap.i32(i32 %120) #9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %123

123:                                              ; preds = %121, %113
  %124 = phi i32 [ %122, %121 ], [ %120, %113 ]
  %125 = and i32 %124, 1
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.bcm_qspi, ptr %9, i32 0, i32 18
  %129 = load i32, ptr %128, align 4
  %130 = and i32 %129, 1
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %178, label %132

132:                                              ; preds = %127, %123
  store i8 0, ptr %112, align 4
  %133 = load i8, ptr %114, align 1, !range !9
  %134 = icmp eq i8 %133, 0
  %135 = load ptr, ptr %117, align 4
  %136 = getelementptr i8, ptr %135, i32 40
  br i1 %134, label %138, label %137

137:                                              ; preds = %132
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %136, i32 0) #9, !srcloc !12
  br label %139

138:                                              ; preds = %132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %136, i32 0) #9, !srcloc !12
  br label %139

139:                                              ; preds = %138, %137
  %140 = load i8, ptr %106, align 4
  %141 = icmp eq i8 %140, 0
  %142 = select i1 %141, i8 1, i8 %140
  %143 = load i8, ptr %14, align 8
  %144 = load i8, ptr %114, align 1, !range !9
  %145 = icmp eq i8 %144, 0
  %146 = load ptr, ptr %117, align 4
  %147 = getelementptr i8, ptr %146, i32 36
  %148 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %147) #9
  br i1 %145, label %151, label %149

149:                                              ; preds = %139
  %150 = tail call i32 @llvm.bswap.i32(i32 %148) #9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %151

151:                                              ; preds = %149, %139
  %152 = phi i32 [ %150, %149 ], [ %148, %139 ]
  switch i8 %142, label %181 [
    i8 1, label %153
    i8 4, label %155
    i8 2, label %158
  ]

153:                                              ; preds = %151
  %154 = and i32 %152, -11
  br label %161

155:                                              ; preds = %151
  %156 = and i32 %152, -11
  %157 = or i32 %156, 8
  br label %161

158:                                              ; preds = %151
  %159 = and i32 %152, -11
  %160 = or i32 %159, 2
  br label %161

161:                                              ; preds = %158, %155, %153
  %162 = phi i32 [ %160, %158 ], [ %157, %155 ], [ %154, %153 ]
  %163 = icmp eq i8 %143, 4
  %164 = and i32 %162, -6
  %165 = select i1 %163, i32 5, i32 1
  %166 = or i32 %164, %165
  %167 = load i8, ptr %114, align 1, !range !9
  %168 = icmp eq i8 %167, 0
  %169 = load ptr, ptr %117, align 4
  %170 = getelementptr i8, ptr %169, i32 36
  br i1 %168, label %173, label %171

171:                                              ; preds = %161
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %172 = tail call i32 @llvm.bswap.i32(i32 %166) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %170, i32 %172) #9, !srcloc !12
  br label %174

173:                                              ; preds = %161
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %170, i32 %166) #9, !srcloc !12
  br label %174

174:                                              ; preds = %173, %171
  %175 = getelementptr inbounds %struct.anon.65, ptr %1, i32 0, i32 3
  %176 = load i16, ptr %175, align 4
  %177 = trunc i16 %176 to i8
  tail call fastcc void @bcm_qspi_bspi_set_xfer_params(ptr noundef %9, i8 noundef zeroext %177, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  br label %178

178:                                              ; preds = %174, %127
  %179 = load i8, ptr %112, align 4
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %215, label %184

181:                                              ; preds = %151
  %182 = load i8, ptr %112, align 4
  %183 = icmp eq i8 %182, 0
  br i1 %183, label %230, label %184

184:                                              ; preds = %181, %178, %105
  %185 = getelementptr inbounds %struct.anon.65, ptr %1, i32 0, i32 3
  %186 = load i16, ptr %185, align 4
  %187 = trunc i16 %186 to i8
  %188 = load i8, ptr %106, align 4
  %189 = icmp eq i8 %188, 0
  %190 = select i1 %189, i8 1, i8 %188
  %191 = load i8, ptr %14, align 8
  %192 = icmp eq i8 %191, 4
  %193 = select i1 %192, i32 65536, i32 0
  %194 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 2
  %195 = load i8, ptr %194, align 8
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %206, label %197

197:                                              ; preds = %184
  %198 = zext i8 %195 to i16
  %199 = shl nuw nsw i16 %198, 3
  %200 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 2, i32 1
  %201 = load i8, ptr %200, align 1
  %202 = zext i8 %201 to i16
  %203 = udiv i16 %199, %202
  %204 = zext i16 %203 to i32
  %205 = or i32 %193, %204
  br label %206

206:                                              ; preds = %197, %184
  %207 = phi i32 [ %205, %197 ], [ %193, %184 ]
  switch i8 %190, label %230 [
    i8 1, label %208
    i8 2, label %212
    i8 4, label %211
  ]

208:                                              ; preds = %206
  %209 = icmp ne i8 %191, 3
  %210 = zext i1 %209 to i32
  br label %212

211:                                              ; preds = %206
  br label %212

212:                                              ; preds = %211, %208, %206
  %213 = phi i32 [ 2, %211 ], [ 0, %208 ], [ 1, %206 ]
  %214 = phi i32 [ 1, %211 ], [ %210, %208 ], [ 1, %206 ]
  tail call fastcc void @bcm_qspi_bspi_set_xfer_params(ptr noundef %9, i8 noundef zeroext %187, i32 noundef %207, i32 noundef %213, i32 noundef %214) #9
  br label %215

215:                                              ; preds = %212, %178
  %216 = getelementptr inbounds %struct.bcm_qspi, ptr %9, i32 0, i32 17, i32 1
  %217 = load i32, ptr %216, align 4
  %218 = icmp eq i32 %217, %110
  br i1 %218, label %219, label %227

219:                                              ; preds = %215
  %220 = getelementptr inbounds %struct.bcm_qspi, ptr %9, i32 0, i32 17, i32 2
  %221 = load i32, ptr %220, align 4
  %222 = icmp eq i32 %221, %111
  br i1 %222, label %223, label %227

223:                                              ; preds = %219
  %224 = getelementptr inbounds %struct.bcm_qspi, ptr %9, i32 0, i32 17, i32 3
  %225 = load i32, ptr %224, align 4
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %233, label %227

227:                                              ; preds = %223, %219, %215
  store i32 %110, ptr %216, align 4
  %228 = getelementptr inbounds %struct.bcm_qspi, ptr %9, i32 0, i32 17, i32 2
  store i32 %111, ptr %228, align 4
  %229 = getelementptr inbounds %struct.bcm_qspi, ptr %9, i32 0, i32 17, i32 3
  store i32 0, ptr %229, align 4
  br label %233

230:                                              ; preds = %206, %181
  %231 = load ptr, ptr %9, align 4
  %232 = getelementptr inbounds %struct.platform_device, ptr %231, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %232, ptr noundef nonnull @.str.17, i32 noundef %110, i32 noundef %111, i32 noundef 0) #10
  br label %235

233:                                              ; preds = %227, %223
  %234 = tail call fastcc i32 @bcm_qspi_bspi_exec_mem_op(ptr noundef %5, ptr noundef %1)
  br label %235

235:                                              ; preds = %233, %230, %103, %18, %13, %2
  %236 = phi i32 [ %104, %103 ], [ -524, %18 ], [ -524, %13 ], [ -524, %2 ], [ -22, %230 ], [ %234, %233 ]
  ret i32 %236
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @bcm_qspi_bspi_exec_mem_op(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.bcm_qspi, ptr %6, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.bcm_qspi, ptr %6, i32 0, i32 10
  %10 = load i32, ptr %9, align 4
  %11 = icmp slt i32 %10, 4
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 1
  %14 = load i8, ptr %13, align 8
  %15 = icmp eq i8 %14, 4
  br i1 %15, label %194, label %16

16:                                               ; preds = %12, %2
  %17 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 1, i32 3
  %18 = load i64, ptr %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 14
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %53

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 4
  %25 = load i8, ptr %24, align 4
  %26 = zext i8 %25 to i32
  %27 = getelementptr %struct.bcm_qspi, ptr %6, i32 0, i32 5, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %51, label %30

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.bcm_qspi, ptr %6, i32 0, i32 20
  %32 = load i8, ptr %31, align 1, !range !9
  %33 = icmp eq i8 %32, 0
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %28) #9
  br i1 %33, label %37, label %35

35:                                               ; preds = %30
  %36 = tail call i32 @llvm.bswap.i32(i32 %34) #9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %37

37:                                               ; preds = %35, %30
  %38 = phi i32 [ %36, %35 ], [ %34, %30 ]
  %39 = and i32 %38, -256
  %40 = shl nuw i32 1, %26
  %41 = or i32 %39, %40
  %42 = icmp eq i32 %38, %41
  br i1 %42, label %53, label %43

43:                                               ; preds = %37
  %44 = load i8, ptr %31, align 1, !range !9
  %45 = icmp eq i8 %44, 0
  %46 = load ptr, ptr %27, align 4
  br i1 %45, label %49, label %47

47:                                               ; preds = %43
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %48 = tail call i32 @llvm.bswap.i32(i32 %41) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %48) #9, !srcloc !12
  br label %50

49:                                               ; preds = %43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %41) #9, !srcloc !12
  br label %50

50:                                               ; preds = %49, %47
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #9
  br label %51

51:                                               ; preds = %50, %23
  %52 = getelementptr inbounds %struct.bcm_qspi, ptr %6, i32 0, i32 9
  store i32 %26, ptr %52, align 4
  br label %53

53:                                               ; preds = %51, %37, %16
  %54 = getelementptr inbounds %struct.bcm_qspi, ptr %6, i32 0, i32 20
  %55 = load i8, ptr %54, align 1, !range !9
  %56 = icmp eq i8 %55, 0
  %57 = getelementptr %struct.bcm_qspi, ptr %6, i32 0, i32 5, i32 0
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr i8, ptr %58, i32 384
  br i1 %56, label %61, label %60

60:                                               ; preds = %53
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 0) #9, !srcloc !12
  br label %62

61:                                               ; preds = %53
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 0) #9, !srcloc !12
  br label %62

62:                                               ; preds = %61, %60
  %63 = load i32, ptr %9, align 4
  %64 = icmp slt i32 %63, 4
  br i1 %64, label %75, label %65

65:                                               ; preds = %62
  %66 = and i32 %19, -16777216
  %67 = load i8, ptr %54, align 1, !range !9
  %68 = icmp eq i8 %67, 0
  %69 = getelementptr %struct.bcm_qspi, ptr %6, i32 0, i32 5, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr i8, ptr %70, i32 56
  br i1 %68, label %74, label %72

72:                                               ; preds = %65
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %73 = lshr exact i32 %66, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %73) #9, !srcloc !12
  br label %75

74:                                               ; preds = %65
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %66) #9, !srcloc !12
  br label %75

75:                                               ; preds = %74, %72, %62
  %76 = getelementptr inbounds %struct.bcm_qspi, ptr %6, i32 0, i32 17
  %77 = load i8, ptr %76, align 4, !range !9
  %78 = icmp eq i8 %77, 0
  %79 = and i32 %19, 16777215
  %80 = select i1 %78, i32 %19, i32 %79
  %81 = load i32, ptr %9, align 4
  %82 = icmp slt i32 %81, 4
  %83 = add i32 %80, 12582912
  %84 = and i32 %83, 16777215
  %85 = select i1 %82, i32 %84, i32 %80
  %86 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 3, i32 3
  %87 = load i32, ptr %86, align 4
  %88 = getelementptr inbounds %struct.bcm_qspi, ptr %6, i32 0, i32 14
  store i32 0, ptr %88, align 4
  %89 = getelementptr inbounds %struct.bcm_qspi, ptr %6, i32 0, i32 24
  %90 = getelementptr inbounds %struct.bcm_qspi, ptr %6, i32 0, i32 19
  %91 = getelementptr inbounds %struct.bcm_qspi, ptr %6, i32 0, i32 12
  %92 = getelementptr %struct.bcm_qspi, ptr %6, i32 0, i32 5, i32 1
  %93 = getelementptr inbounds %struct.bcm_qspi, ptr %6, i32 0, i32 13
  %94 = getelementptr inbounds %struct.bcm_qspi, ptr %6, i32 0, i32 16
  %95 = getelementptr inbounds %struct.bcm_qspi, ptr %6, i32 0, i32 15
  %96 = getelementptr inbounds %struct.bcm_qspi_soc_intc, ptr %8, i32 0, i32 1
  br label %97

97:                                               ; preds = %190, %75
  %98 = phi i32 [ %85, %75 ], [ %191, %190 ]
  %99 = phi i32 [ %87, %75 ], [ %192, %190 ]
  %100 = tail call i32 @llvm.umin.i32(i32 %99, i32 256)
  store i32 0, ptr %89, align 4
  %101 = load i8, ptr %90, align 4, !range !9
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %125, label %103

103:                                              ; preds = %97
  store i32 1, ptr %91, align 4
  %104 = load i8, ptr %54, align 1, !range !9
  %105 = icmp eq i8 %104, 0
  %106 = load ptr, ptr %92, align 4
  %107 = getelementptr i8, ptr %106, i32 8
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %107) #9
  br i1 %105, label %111, label %109

109:                                              ; preds = %103
  %110 = tail call i32 @llvm.bswap.i32(i32 %108) #9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %111

111:                                              ; preds = %109, %103
  %112 = phi i32 [ %110, %109 ], [ %108, %103 ]
  %113 = and i32 %112, 1
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %125, label %115

115:                                              ; preds = %111
  tail call fastcc void @bcm_qspi_bspi_flush_prefetch_buffers(ptr noundef %6) #9
  %116 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %116(i32 noundef 214748) #9
  %117 = load i8, ptr %54, align 1, !range !9
  %118 = icmp eq i8 %117, 0
  %119 = load ptr, ptr %92, align 4
  %120 = getelementptr i8, ptr %119, i32 8
  br i1 %118, label %122, label %121

121:                                              ; preds = %115
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 0) #9, !srcloc !12
  br label %123

122:                                              ; preds = %115
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 0) #9, !srcloc !12
  br label %123

123:                                              ; preds = %122, %121
  %124 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %124(i32 noundef 214748) #9
  br label %125

125:                                              ; preds = %123, %111, %97
  %126 = add nuw nsw i32 %100, 3
  %127 = lshr i32 %126, 2
  store ptr %1, ptr %93, align 4
  store i32 0, ptr %94, align 4
  store i32 %100, ptr %95, align 4
  %128 = load i8, ptr %54, align 1, !range !9
  %129 = icmp eq i8 %128, 0
  %130 = load ptr, ptr %92, align 4
  %131 = getelementptr i8, ptr %130, i32 256
  br i1 %129, label %134, label %132

132:                                              ; preds = %125
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %133 = tail call i32 @llvm.bswap.i32(i32 %98) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 %133) #9, !srcloc !12
  br label %135

134:                                              ; preds = %125
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 %98) #9, !srcloc !12
  br label %135

135:                                              ; preds = %134, %132
  %136 = load i8, ptr %54, align 1, !range !9
  %137 = icmp eq i8 %136, 0
  %138 = load ptr, ptr %92, align 4
  %139 = getelementptr i8, ptr %138, i32 260
  br i1 %137, label %142, label %140

140:                                              ; preds = %135
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %141 = shl nuw nsw i32 %127, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %139, i32 %141) #9, !srcloc !12
  br label %143

142:                                              ; preds = %135
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %139, i32 %127) #9, !srcloc !12
  br label %143

143:                                              ; preds = %142, %140
  %144 = load i8, ptr %54, align 1, !range !9
  %145 = icmp eq i8 %144, 0
  %146 = load ptr, ptr %92, align 4
  %147 = getelementptr i8, ptr %146, i32 272
  br i1 %145, label %149, label %148

148:                                              ; preds = %143
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %147, i32 0) #9, !srcloc !12
  br label %150

149:                                              ; preds = %143
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %147, i32 0) #9, !srcloc !12
  br label %150

150:                                              ; preds = %149, %148
  %151 = load ptr, ptr %7, align 4
  %152 = icmp eq ptr %151, null
  br i1 %152, label %156, label %153

153:                                              ; preds = %150
  %154 = load ptr, ptr %8, align 4
  tail call void %154(ptr noundef %8, i32 noundef 7) #9
  %155 = load ptr, ptr %96, align 4
  tail call void %155(ptr noundef %8, i32 noundef 2, i1 noundef zeroext true) #9
  br label %156

156:                                              ; preds = %153, %150
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !14
  tail call void @arm_heavy_mb() #9
  br label %157

157:                                              ; preds = %170, %156
  %158 = phi i32 [ 0, %156 ], [ %172, %170 ]
  %159 = load i8, ptr %54, align 1, !range !9
  %160 = icmp eq i8 %159, 0
  %161 = load ptr, ptr %92, align 4
  %162 = getelementptr i8, ptr %161, i32 12
  %163 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %162) #9
  br i1 %160, label %166, label %164

164:                                              ; preds = %157
  %165 = tail call i32 @llvm.bswap.i32(i32 %163) #9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %166

166:                                              ; preds = %164, %157
  %167 = phi i32 [ %165, %164 ], [ %163, %157 ]
  %168 = and i32 %167, 1
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %177, label %170

170:                                              ; preds = %166
  %171 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %171(i32 noundef 214748) #9
  %172 = add nuw nsw i32 %158, 1
  %173 = icmp eq i32 %172, 1000
  br i1 %173, label %174, label %157

174:                                              ; preds = %170
  %175 = load ptr, ptr %6, align 4
  %176 = getelementptr inbounds %struct.platform_device, ptr %175, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %176, ptr noundef nonnull @.str.15) #10
  br label %177

177:                                              ; preds = %174, %166
  %178 = load i8, ptr %54, align 1, !range !9
  %179 = icmp eq i8 %178, 0
  %180 = load ptr, ptr %92, align 4
  %181 = getelementptr i8, ptr %180, i32 264
  br i1 %179, label %183, label %182

182:                                              ; preds = %177
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %181, i32 16777216) #9, !srcloc !12
  br label %184

183:                                              ; preds = %177
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %181, i32 1) #9, !srcloc !12
  br label %184

184:                                              ; preds = %183, %182
  %185 = tail call i32 @wait_for_completion_timeout(ptr noundef %89, i32 noundef 10) #9
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %184
  %188 = load ptr, ptr %6, align 4
  %189 = getelementptr inbounds %struct.platform_device, ptr %188, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %189, ptr noundef nonnull @.str.18) #10
  br label %194

190:                                              ; preds = %184
  %191 = add i32 %100, %98
  %192 = sub i32 %99, %100
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %97

194:                                              ; preds = %190, %187, %12
  %195 = phi i32 [ -5, %12 ], [ -110, %187 ], [ 0, %190 ]
  ret i32 %195
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bcm_qspi_bspi_set_xfer_params(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.bcm_qspi, ptr %0, i32 0, i32 20
  %7 = load i8, ptr %6, align 1, !range !9
  %8 = icmp eq i8 %7, 0
  %9 = getelementptr %struct.bcm_qspi, ptr %0, i32 0, i32 5, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 40
  br i1 %8, label %13, label %12

12:                                               ; preds = %5
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 0) #9, !srcloc !12
  br label %14

13:                                               ; preds = %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 0) #9, !srcloc !12
  br label %14

14:                                               ; preds = %13, %12
  %15 = load i8, ptr %6, align 1, !range !9
  %16 = icmp eq i8 %15, 0
  %17 = load ptr, ptr %9, align 4
  %18 = getelementptr i8, ptr %17, i32 44
  br i1 %16, label %21, label %19

19:                                               ; preds = %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %20 = tail call i32 @llvm.bswap.i32(i32 %3) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %20) #9, !srcloc !12
  br label %22

21:                                               ; preds = %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %3) #9, !srcloc !12
  br label %22

22:                                               ; preds = %21, %19
  %23 = load i8, ptr %6, align 1, !range !9
  %24 = icmp eq i8 %23, 0
  %25 = load ptr, ptr %9, align 4
  %26 = getelementptr i8, ptr %25, i32 48
  br i1 %24, label %29, label %27

27:                                               ; preds = %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %28 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %28) #9, !srcloc !12
  br label %30

29:                                               ; preds = %22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %2) #9, !srcloc !12
  br label %30

30:                                               ; preds = %29, %27
  %31 = zext i8 %1 to i32
  %32 = load i8, ptr %6, align 1, !range !9
  %33 = icmp eq i8 %32, 0
  %34 = load ptr, ptr %9, align 4
  %35 = getelementptr i8, ptr %34, i32 52
  br i1 %33, label %38, label %36

36:                                               ; preds = %30
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %37 = shl nuw i32 %31, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %37) #9, !srcloc !12
  br label %39

38:                                               ; preds = %30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %31) #9, !srcloc !12
  br label %39

39:                                               ; preds = %38, %36
  %40 = load i8, ptr %6, align 1, !range !9
  %41 = icmp eq i8 %40, 0
  %42 = load ptr, ptr %9, align 4
  %43 = getelementptr i8, ptr %42, i32 40
  br i1 %41, label %46, label %44

44:                                               ; preds = %39
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %45 = tail call i32 @llvm.bswap.i32(i32 %4) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %45) #9, !srcloc !12
  br label %47

46:                                               ; preds = %39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %4) #9, !srcloc !12
  br label %47

47:                                               ; preds = %46, %44
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_qspi_bspi_lr_l2_isr(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.bcm_qspi_dev_id, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.bcm_qspi, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %1, align 4
  %8 = getelementptr inbounds %struct.bcm_qspi_irq, ptr %7, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.bcm_qspi, ptr %4, i32 0, i32 12
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %102, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.bcm_qspi, ptr %4, i32 0, i32 13
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %102, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.spi_mem_op, ptr %15, i32 0, i32 3, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.bcm_qspi, ptr %4, i32 0, i32 20
  %21 = getelementptr %struct.bcm_qspi, ptr %4, i32 0, i32 5, i32 1
  %22 = getelementptr inbounds %struct.bcm_qspi, ptr %4, i32 0, i32 15
  %23 = ptrtoint ptr %19 to i32
  %24 = and i32 %23, 3
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds %struct.bcm_qspi, ptr %4, i32 0, i32 14
  br label %27

27:                                               ; preds = %60, %17
  %28 = load i8, ptr %20, align 1, !range !9
  %29 = icmp eq i8 %28, 0
  %30 = load ptr, ptr %21, align 4
  %31 = getelementptr i8, ptr %30, i32 276
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #9
  br i1 %29, label %35, label %33

33:                                               ; preds = %27
  %34 = tail call i32 @llvm.bswap.i32(i32 %32) #9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %35

35:                                               ; preds = %33, %27
  %36 = phi i32 [ %34, %33 ], [ %32, %27 ]
  %37 = and i32 %36, 2
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %73

39:                                               ; preds = %35
  %40 = load i8, ptr %20, align 1, !range !9
  %41 = icmp eq i8 %40, 0
  %42 = load ptr, ptr %21, align 4
  %43 = getelementptr i8, ptr %42, i32 280
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #9
  br i1 %41, label %47, label %45

45:                                               ; preds = %39
  %46 = tail call i32 @llvm.bswap.i32(i32 %44) #9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %47

47:                                               ; preds = %45, %39
  %48 = phi i32 [ %46, %45 ], [ %44, %39 ]
  %49 = load i32, ptr %22, align 4
  %50 = icmp ugt i32 %49, 3
  %51 = select i1 %50, i1 %25, i1 false
  br i1 %51, label %52, label %58, !prof !15

52:                                               ; preds = %47
  %53 = load i32, ptr %26, align 4
  %54 = add i32 %53, 1
  store i32 %54, ptr %26, align 4
  %55 = getelementptr i32, ptr %19, i32 %53
  store i32 %48, ptr %55, align 4
  %56 = load i32, ptr %22, align 4
  %57 = add i32 %56, -4
  store i32 %57, ptr %22, align 4
  br label %60

58:                                               ; preds = %47
  %59 = icmp eq i32 %49, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %64, %58, %52
  br label %27

61:                                               ; preds = %58
  %62 = load i32, ptr %26, align 4
  %63 = getelementptr i32, ptr %19, i32 %62
  br label %64

64:                                               ; preds = %64, %61
  %65 = phi ptr [ %68, %64 ], [ %63, %61 ]
  %66 = phi i32 [ %69, %64 ], [ %48, %61 ]
  %67 = trunc i32 %66 to i8
  %68 = getelementptr i8, ptr %65, i32 1
  store i8 %67, ptr %65, align 1
  %69 = lshr i32 %66, 8
  %70 = load i32, ptr %22, align 4
  %71 = add i32 %70, -1
  store i32 %71, ptr %22, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %60, label %64

73:                                               ; preds = %35
  %74 = load i32, ptr %22, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %96

76:                                               ; preds = %73
  store ptr null, ptr %14, align 4
  %77 = load ptr, ptr %5, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.bcm_qspi_soc_intc, ptr %6, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  tail call void %81(ptr noundef %6, i32 noundef 2, i1 noundef zeroext false) #9
  br label %82

82:                                               ; preds = %79, %76
  %83 = phi i32 [ 8, %79 ], [ %9, %76 ]
  %84 = getelementptr inbounds %struct.bcm_qspi, ptr %4, i32 0, i32 16
  %85 = load i32, ptr %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %95, label %87

87:                                               ; preds = %82
  %88 = load i8, ptr %20, align 1, !range !9
  %89 = icmp eq i8 %88, 0
  %90 = load ptr, ptr %21, align 4
  %91 = getelementptr i8, ptr %90, i32 264
  br i1 %89, label %93, label %92

92:                                               ; preds = %87
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 33554432) #9, !srcloc !12
  br label %94

93:                                               ; preds = %87
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 2) #9, !srcloc !12
  br label %94

94:                                               ; preds = %93, %92
  tail call fastcc void @bcm_qspi_bspi_flush_prefetch_buffers(ptr noundef %4) #9
  br label %96

95:                                               ; preds = %82
  tail call fastcc void @bcm_qspi_bspi_flush_prefetch_buffers(ptr noundef %4)
  br label %96

96:                                               ; preds = %95, %94, %73
  %97 = phi i32 [ %83, %94 ], [ %83, %95 ], [ %9, %73 ]
  %98 = load ptr, ptr %5, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %102, label %100

100:                                              ; preds = %96
  %101 = load ptr, ptr %6, align 4
  tail call void %101(ptr noundef %6, i32 noundef 2) #9
  br label %102

102:                                              ; preds = %100, %96, %13, %2
  %103 = phi i32 [ %97, %100 ], [ %97, %96 ], [ %9, %13 ], [ %9, %2 ]
  %104 = and i32 %103, 8
  %105 = load i32, ptr %10, align 4
  %106 = icmp ne i32 %105, 0
  %107 = icmp ne i32 %104, 0
  %108 = select i1 %106, i1 %107, i1 false
  br i1 %108, label %109, label %115

109:                                              ; preds = %102
  %110 = getelementptr inbounds %struct.bcm_qspi, ptr %4, i32 0, i32 15
  %111 = load i32, ptr %110, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.bcm_qspi, ptr %4, i32 0, i32 24
  tail call void @complete(ptr noundef %114) #9
  br label %115

115:                                              ; preds = %113, %109, %102
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_qspi_bspi_lr_err_l2_isr(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.bcm_qspi_dev_id, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.bcm_qspi, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.26) #10
  %9 = getelementptr inbounds %struct.bcm_qspi, ptr %4, i32 0, i32 16
  store i32 -5, ptr %9, align 4
  %10 = load ptr, ptr %5, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr %6, align 4
  tail call void %13(ptr noundef %6, i32 noundef 4) #9
  br label %14

14:                                               ; preds = %12, %2
  %15 = getelementptr inbounds %struct.bcm_qspi, ptr %4, i32 0, i32 24
  tail call void @complete(ptr noundef %15) #9
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_qspi_mspi_l2_isr(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.bcm_qspi_dev_id, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.bcm_qspi, ptr %4, i32 0, i32 20
  %6 = load i8, ptr %5, align 1, !range !9
  %7 = icmp eq i8 %6, 0
  %8 = getelementptr %struct.bcm_qspi, ptr %4, i32 0, i32 5, i32 0
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 32
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #9
  br i1 %7, label %14, label %12

12:                                               ; preds = %2
  %13 = tail call i32 @llvm.bswap.i32(i32 %11) #9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %14

14:                                               ; preds = %12, %2
  %15 = phi i32 [ %13, %12 ], [ %11, %2 ]
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %36, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.bcm_qspi, ptr %4, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = and i32 %15, -2
  %22 = load i8, ptr %5, align 1, !range !9
  %23 = icmp eq i8 %22, 0
  %24 = load ptr, ptr %8, align 4
  %25 = getelementptr i8, ptr %24, i32 32
  br i1 %23, label %28, label %26

26:                                               ; preds = %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %27 = tail call i32 @llvm.bswap.i32(i32 %21) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %27) #9, !srcloc !12
  br label %29

28:                                               ; preds = %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %21) #9, !srcloc !12
  br label %29

29:                                               ; preds = %28, %26
  %30 = load ptr, ptr %19, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr %20, align 4
  tail call void %33(ptr noundef %20, i32 noundef 1) #9
  br label %34

34:                                               ; preds = %32, %29
  %35 = getelementptr inbounds %struct.bcm_qspi, ptr %4, i32 0, i32 23
  tail call void @complete(ptr noundef %35) #9
  br label %36

36:                                               ; preds = %34, %14
  %37 = phi i32 [ 1, %34 ], [ 0, %14 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_qspi_l1_isr(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.bcm_qspi_dev_id, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.bcm_qspi, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %68, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.bcm_qspi_soc_intc, ptr %6, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef nonnull %6) #9
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %47, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %3, align 4
  %16 = getelementptr inbounds %struct.bcm_qspi, ptr %15, i32 0, i32 20
  %17 = load i8, ptr %16, align 1, !range !9
  %18 = icmp eq i8 %17, 0
  %19 = getelementptr %struct.bcm_qspi, ptr %15, i32 0, i32 5, i32 0
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 32
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #9
  br i1 %18, label %25, label %23

23:                                               ; preds = %14
  %24 = tail call i32 @llvm.bswap.i32(i32 %22) #9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  br label %25

25:                                               ; preds = %23, %14
  %26 = phi i32 [ %24, %23 ], [ %22, %14 ]
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %68, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.bcm_qspi, ptr %15, i32 0, i32 6
  %31 = load ptr, ptr %30, align 4
  %32 = and i32 %26, -2
  %33 = load i8, ptr %16, align 1, !range !9
  %34 = icmp eq i8 %33, 0
  %35 = load ptr, ptr %19, align 4
  %36 = getelementptr i8, ptr %35, i32 32
  br i1 %34, label %39, label %37

37:                                               ; preds = %29
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %38 = tail call i32 @llvm.bswap.i32(i32 %32) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %38) #9, !srcloc !12
  br label %40

39:                                               ; preds = %29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %32) #9, !srcloc !12
  br label %40

40:                                               ; preds = %39, %37
  %41 = load ptr, ptr %30, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr %31, align 4
  tail call void %44(ptr noundef %31, i32 noundef 1) #9
  br label %45

45:                                               ; preds = %43, %40
  %46 = getelementptr inbounds %struct.bcm_qspi, ptr %15, i32 0, i32 23
  tail call void @complete(ptr noundef %46) #9
  br label %68

47:                                               ; preds = %8
  %48 = and i32 %11, 2
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = tail call i32 @bcm_qspi_bspi_lr_l2_isr(i32 noundef %0, ptr noundef %1)
  br label %68

52:                                               ; preds = %47
  %53 = and i32 %11, 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %68, label %55

55:                                               ; preds = %52
  %56 = load ptr, ptr %3, align 4
  %57 = getelementptr inbounds %struct.bcm_qspi, ptr %56, i32 0, i32 6
  %58 = load ptr, ptr %57, align 4
  %59 = load ptr, ptr %56, align 4
  %60 = getelementptr inbounds %struct.platform_device, ptr %59, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.26) #10
  %61 = getelementptr inbounds %struct.bcm_qspi, ptr %56, i32 0, i32 16
  store i32 -5, ptr %61, align 4
  %62 = load ptr, ptr %57, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %55
  %65 = load ptr, ptr %58, align 4
  tail call void %65(ptr noundef %58, i32 noundef 4) #9
  br label %66

66:                                               ; preds = %64, %55
  %67 = getelementptr inbounds %struct.bcm_qspi, ptr %56, i32 0, i32 24
  tail call void @complete(ptr noundef %67) #9
  br label %68

68:                                               ; preds = %66, %52, %50, %45, %25, %2
  %69 = phi i32 [ 0, %2 ], [ 1, %50 ], [ 1, %66 ], [ 0, %52 ], [ 1, %45 ], [ 0, %25 ]
  ret i32 %69
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

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
!9 = !{i8 0, i8 2}
!10 = !{i64 2153116258}
!11 = !{i64 2153116799}
!12 = !{i64 3776447}
!13 = !{i64 2153162716}
!14 = !{i64 2153163559}
!15 = !{!"branch_weights", i32 2000, i32 2002}
