; ModuleID = '/llk/IR/drivers/ptp/ptp_qoriq.c_pt.bc'
source_filename = "../drivers/ptp/ptp_qoriq.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_extts_clean_up:\09\09\09\09\09"
module asm "\09.asciz \09\22extts_clean_up\22\09\09\09\09\09"
module asm "__kstrtabns_extts_clean_up:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ptp_qoriq_isr:\09\09\09\09\09"
module asm "\09.asciz \09\22ptp_qoriq_isr\22\09\09\09\09\09"
module asm "__kstrtabns_ptp_qoriq_isr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ptp_qoriq_adjfine:\09\09\09\09\09"
module asm "\09.asciz \09\22ptp_qoriq_adjfine\22\09\09\09\09\09"
module asm "__kstrtabns_ptp_qoriq_adjfine:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ptp_qoriq_adjtime:\09\09\09\09\09"
module asm "\09.asciz \09\22ptp_qoriq_adjtime\22\09\09\09\09\09"
module asm "__kstrtabns_ptp_qoriq_adjtime:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ptp_qoriq_gettime:\09\09\09\09\09"
module asm "\09.asciz \09\22ptp_qoriq_gettime\22\09\09\09\09\09"
module asm "__kstrtabns_ptp_qoriq_gettime:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ptp_qoriq_settime:\09\09\09\09\09"
module asm "\09.asciz \09\22ptp_qoriq_settime\22\09\09\09\09\09"
module asm "__kstrtabns_ptp_qoriq_settime:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ptp_qoriq_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22ptp_qoriq_enable\22\09\09\09\09\09"
module asm "__kstrtabns_ptp_qoriq_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ptp_qoriq_init:\09\09\09\09\09"
module asm "\09.asciz \09\22ptp_qoriq_init\22\09\09\09\09\09"
module asm "__kstrtabns_ptp_qoriq_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ptp_qoriq_free:\09\09\09\09\09"
module asm "\09.asciz \09\22ptp_qoriq_free\22\09\09\09\09\09"
module asm "__kstrtabns_ptp_qoriq_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ptp_clock_event = type { i32, i32, %union.anon.71 }
%union.anon.71 = type { %struct.pps_event_time }
%struct.pps_event_time = type { %struct.timespec64 }
%struct.timespec64 = type { i64, i32 }
%struct.ptp_qoriq = type { ptr, %struct.ptp_qoriq_registers, %struct.spinlock, ptr, %struct.ptp_clock_info, ptr, ptr, ptr, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.ptp_qoriq_registers = type { ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.etts_regs = type { i32, i32, i32, i32 }
%struct.ctrl_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i32, i32 }
%struct.alarm_regs = type { i32, i32, i32, i32 }
%struct.fiper_regs = type { i32, i32, i32 }
%struct.ptp_clock_request = type { i32, %union.anon.64 }
%union.anon.64 = type { %struct.ptp_perout_request }
%struct.ptp_perout_request = type { %union.anon.65, %struct.ptp_clock_time, i32, i32, %union.anon.66 }
%union.anon.65 = type { %struct.ptp_clock_time }
%struct.ptp_clock_time = type { i64, i32, i32 }
%union.anon.66 = type { %struct.ptp_clock_time }
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
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__kstrtab_extts_clean_up = external dso_local constant [0 x i8], align 1
@__kstrtabns_extts_clean_up = external dso_local constant [0 x i8], align 1
@__ksymtab_extts_clean_up = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @extts_clean_up to i32), ptr @__kstrtab_extts_clean_up, ptr @__kstrtabns_extts_clean_up }, section "___ksymtab_gpl+extts_clean_up", align 4
@__kstrtab_ptp_qoriq_isr = external dso_local constant [0 x i8], align 1
@__kstrtabns_ptp_qoriq_isr = external dso_local constant [0 x i8], align 1
@__ksymtab_ptp_qoriq_isr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ptp_qoriq_isr to i32), ptr @__kstrtab_ptp_qoriq_isr, ptr @__kstrtabns_ptp_qoriq_isr }, section "___ksymtab_gpl+ptp_qoriq_isr", align 4
@__kstrtab_ptp_qoriq_adjfine = external dso_local constant [0 x i8], align 1
@__kstrtabns_ptp_qoriq_adjfine = external dso_local constant [0 x i8], align 1
@__ksymtab_ptp_qoriq_adjfine = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ptp_qoriq_adjfine to i32), ptr @__kstrtab_ptp_qoriq_adjfine, ptr @__kstrtabns_ptp_qoriq_adjfine }, section "___ksymtab_gpl+ptp_qoriq_adjfine", align 4
@__kstrtab_ptp_qoriq_adjtime = external dso_local constant [0 x i8], align 1
@__kstrtabns_ptp_qoriq_adjtime = external dso_local constant [0 x i8], align 1
@__ksymtab_ptp_qoriq_adjtime = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ptp_qoriq_adjtime to i32), ptr @__kstrtab_ptp_qoriq_adjtime, ptr @__kstrtabns_ptp_qoriq_adjtime }, section "___ksymtab_gpl+ptp_qoriq_adjtime", align 4
@__kstrtab_ptp_qoriq_gettime = external dso_local constant [0 x i8], align 1
@__kstrtabns_ptp_qoriq_gettime = external dso_local constant [0 x i8], align 1
@__ksymtab_ptp_qoriq_gettime = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ptp_qoriq_gettime to i32), ptr @__kstrtab_ptp_qoriq_gettime, ptr @__kstrtabns_ptp_qoriq_gettime }, section "___ksymtab_gpl+ptp_qoriq_gettime", align 4
@__kstrtab_ptp_qoriq_settime = external dso_local constant [0 x i8], align 1
@__kstrtabns_ptp_qoriq_settime = external dso_local constant [0 x i8], align 1
@__ksymtab_ptp_qoriq_settime = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ptp_qoriq_settime to i32), ptr @__kstrtab_ptp_qoriq_settime, ptr @__kstrtabns_ptp_qoriq_settime }, section "___ksymtab_gpl+ptp_qoriq_settime", align 4
@__kstrtab_ptp_qoriq_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_ptp_qoriq_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_ptp_qoriq_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ptp_qoriq_enable to i32), ptr @__kstrtab_ptp_qoriq_enable, ptr @__kstrtabns_ptp_qoriq_enable }, section "___ksymtab_gpl+ptp_qoriq_enable", align 4
@.str = private unnamed_addr constant [10 x i8] c"fsl,cksel\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"fsl,extts-fifo\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"fsl,dpaa2-ptp\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"fsl,enetc-ptp\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"fsl,tclk-period\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"fsl,tmr-prsc\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"fsl,tmr-add\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"fsl,tmr-fiper1\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"fsl,tmr-fiper2\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"fsl,max-adj\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"fsl,tmr-fiper3\00", align 1
@.str.11 = private unnamed_addr constant [86 x i8] c"\014ptp_qoriq: device tree node missing required elements, try automatic configuration\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"little-endian\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"fsl,etsec-ptp\00", align 1
@__kstrtab_ptp_qoriq_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_ptp_qoriq_init = external dso_local constant [0 x i8], align 1
@__ksymtab_ptp_qoriq_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ptp_qoriq_init to i32), ptr @__kstrtab_ptp_qoriq_init, ptr @__kstrtabns_ptp_qoriq_init }, section "___ksymtab_gpl+ptp_qoriq_init", align 4
@__kstrtab_ptp_qoriq_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_ptp_qoriq_free = external dso_local constant [0 x i8], align 1
@__ksymtab_ptp_qoriq_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ptp_qoriq_free to i32), ptr @__kstrtab_ptp_qoriq_free, ptr @__kstrtabns_ptp_qoriq_free }, section "___ksymtab_gpl+ptp_qoriq_free", align 4
@__initcall__kmod_ptp_qoriq__267_641_ptp_qoriq_driver_init6 = internal global ptr @ptp_qoriq_driver_init, section ".initcall6.init", align 4
@ptp_qoriq_driver = internal global %struct.platform_driver { ptr @ptp_qoriq_probe, ptr @ptp_qoriq_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.15, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_ptp_qoriq_driver_exit = internal global ptr @ptp_qoriq_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author268 = internal constant [60 x i8] c"ptp_qoriq.author=Richard Cochran <richardcochran@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description269 = internal constant [63 x i8] c"ptp_qoriq.description=PTP clock for Freescale QorIQ 1588 timer\00", section ".modinfo", align 1
@__UNIQUE_ID_file270 = internal constant [37 x i8] c"ptp_qoriq.file=drivers/ptp/ptp-qoriq\00", section ".modinfo", align 1
@__UNIQUE_ID_license271 = internal constant [22 x i8] c"ptp_qoriq.license=GPL\00", section ".modinfo", align 1
@.str.14 = private unnamed_addr constant [64 x i8] c"\013ptp_qoriq: error reference clock value, or lower than 100MHz\0A\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"ptp_qoriq\00", align 1
@match_table = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,etsec-ptp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,fman-ptp-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.16 = private unnamed_addr constant [37 x i8] c"\013ptp_qoriq: irq not in device tree\0A\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"\013ptp_qoriq: request_irq failed\0A\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"\013ptp_qoriq: no resource\0A\00", align 1
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.19 = private unnamed_addr constant [28 x i8] c"\013ptp_qoriq: resource busy\0A\00", align 1
@.str.20 = private unnamed_addr constant [43 x i8] c"\013ptp_qoriq: ioremap ptp registers failed\0A\00", align 1
@ptp_qoriq_caps = internal constant %struct.ptp_clock_info { ptr null, [32 x i8] c"qoriq ptp clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 512000, i32 0, i32 2, i32 0, i32 0, i32 1, ptr null, ptr @ptp_qoriq_adjfine, ptr null, ptr null, ptr @ptp_qoriq_adjtime, ptr @ptp_qoriq_gettime, ptr null, ptr null, ptr @ptp_qoriq_settime, ptr @ptp_qoriq_enable, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_author268, ptr @__UNIQUE_ID_description269, ptr @__UNIQUE_ID_file270, ptr @__UNIQUE_ID_license271, ptr @__exitcall_ptp_qoriq_driver_exit, ptr @__initcall__kmod_ptp_qoriq__267_641_ptp_qoriq_driver_init6, ptr @__ksymtab_extts_clean_up, ptr @__ksymtab_ptp_qoriq_adjfine, ptr @__ksymtab_ptp_qoriq_adjtime, ptr @__ksymtab_ptp_qoriq_enable, ptr @__ksymtab_ptp_qoriq_free, ptr @__ksymtab_ptp_qoriq_gettime, ptr @__ksymtab_ptp_qoriq_init, ptr @__ksymtab_ptp_qoriq_isr, ptr @__ksymtab_ptp_qoriq_settime, ptr @ptp_qoriq_driver_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @extts_clean_up(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2) #0 {
  %4 = alloca %struct.ptp_clock_event, align 8
  %5 = getelementptr inbounds %struct.ptp_qoriq, ptr %0, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  %6 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i32 16, i1 false), !annotation !8
  switch i32 %1, label %57 [
    i32 0, label %7
    i32 1, label %11
  ]

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ptp_qoriq, ptr %0, i32 0, i32 1, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.etts_regs, ptr %9, i32 0, i32 1
  br label %16

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.ptp_qoriq, ptr %0, i32 0, i32 1, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.etts_regs, ptr %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.etts_regs, ptr %13, i32 0, i32 2
  br label %16

16:                                               ; preds = %11, %7
  %17 = phi ptr [ %14, %11 ], [ %10, %7 ]
  %18 = phi ptr [ %15, %11 ], [ %9, %7 ]
  %19 = phi i32 [ 33554432, %11 ], [ 16777216, %7 ]
  store i32 1, ptr %4, align 8
  %20 = getelementptr inbounds %struct.ptp_clock_event, ptr %4, i32 0, i32 1
  store i32 %1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.ptp_qoriq, ptr %0, i32 0, i32 8
  %22 = load i8, ptr %21, align 4, !range !9
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.ptp_qoriq, ptr %0, i32 0, i32 19
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %5, align 4
  %28 = getelementptr inbounds %struct.ctrl_regs, ptr %27, i32 0, i32 5
  %29 = tail call i32 %26(ptr noundef %28) #10
  %30 = and i32 %29, %19
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %57, label %32

32:                                               ; preds = %24, %16
  %33 = getelementptr inbounds %struct.ptp_qoriq, ptr %0, i32 0, i32 19
  %34 = getelementptr inbounds %struct.ptp_clock_event, ptr %4, i32 0, i32 2
  %35 = getelementptr inbounds %struct.ptp_qoriq, ptr %0, i32 0, i32 3
  br label %36

36:                                               ; preds = %50, %32
  %37 = load ptr, ptr %33, align 4
  %38 = call i32 %37(ptr noundef %17) #10
  %39 = load ptr, ptr %33, align 4
  %40 = call i32 %39(ptr noundef %18) #10
  br i1 %2, label %41, label %47

41:                                               ; preds = %36
  %42 = zext i32 %40 to i64
  %43 = shl nuw i64 %42, 32
  %44 = zext i32 %38 to i64
  %45 = or i64 %43, %44
  store i64 %45, ptr %34, align 8
  %46 = load ptr, ptr %35, align 4
  call void @ptp_clock_event(ptr noundef %46, ptr noundef nonnull %4) #10
  br label %47

47:                                               ; preds = %41, %36
  %48 = load i8, ptr %21, align 4, !range !9
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %47
  %51 = load ptr, ptr %33, align 4
  %52 = load ptr, ptr %5, align 4
  %53 = getelementptr inbounds %struct.ctrl_regs, ptr %52, i32 0, i32 5
  %54 = call i32 %51(ptr noundef %53) #10
  %55 = and i32 %54, %19
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %36

57:                                               ; preds = %50, %47, %24, %3
  %58 = phi i32 [ -22, %3 ], [ 0, %24 ], [ 0, %47 ], [ 0, %50 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  ret i32 %58
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ptp_clock_event(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ptp_qoriq_isr(i32 %0, ptr noundef %1) #0 {
  %3 = alloca %struct.ptp_clock_event, align 8
  %4 = alloca %struct.ptp_clock_event, align 8
  %5 = alloca %struct.ptp_clock_event, align 8
  %6 = getelementptr inbounds %struct.ptp_qoriq, ptr %1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !8
  %7 = getelementptr inbounds %struct.ptp_qoriq, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %7) #10
  %8 = getelementptr inbounds %struct.ptp_qoriq, ptr %1, i32 0, i32 19
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr inbounds %struct.ctrl_regs, ptr %10, i32 0, i32 1
  %12 = tail call i32 %9(ptr noundef %11) #10
  %13 = load ptr, ptr %8, align 4
  %14 = load ptr, ptr %6, align 4
  %15 = getelementptr inbounds %struct.ctrl_regs, ptr %14, i32 0, i32 2
  %16 = tail call i32 %13(ptr noundef %15) #10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %17 = load i16, ptr %7, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  %19 = and i32 %16, %12
  %20 = and i32 %19, 16777216
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %60, label %22

22:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  %23 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %23, i8 0, i32 16, i1 false) #10, !annotation !8
  %24 = getelementptr inbounds %struct.ptp_qoriq, ptr %1, i32 0, i32 1, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.etts_regs, ptr %25, i32 0, i32 1
  store i32 1, ptr %4, align 8
  %27 = getelementptr inbounds %struct.ptp_clock_event, ptr %4, i32 0, i32 1
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.ptp_qoriq, ptr %1, i32 0, i32 8
  %29 = load i8, ptr %28, align 4, !range !9
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %22
  %32 = load ptr, ptr %8, align 4
  %33 = load ptr, ptr %6, align 4
  %34 = getelementptr inbounds %struct.ctrl_regs, ptr %33, i32 0, i32 5
  %35 = tail call i32 %32(ptr noundef %34) #10
  %36 = and i32 %35, 16777216
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %59, label %38

38:                                               ; preds = %31, %22
  %39 = getelementptr inbounds %struct.ptp_qoriq, ptr %1, i32 0, i32 3
  br label %40

40:                                               ; preds = %52, %38
  %41 = load ptr, ptr %8, align 4
  %42 = call i32 %41(ptr noundef %26) #10
  %43 = load ptr, ptr %8, align 4
  %44 = call i32 %43(ptr noundef %25) #10
  %45 = zext i32 %44 to i64
  %46 = shl nuw i64 %45, 32
  %47 = zext i32 %42 to i64
  %48 = or i64 %46, %47
  store i64 %48, ptr %23, align 8
  %49 = load ptr, ptr %39, align 4
  call void @ptp_clock_event(ptr noundef %49, ptr noundef nonnull %4) #10
  %50 = load i8, ptr %28, align 4, !range !9
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %40
  %53 = load ptr, ptr %8, align 4
  %54 = load ptr, ptr %6, align 4
  %55 = getelementptr inbounds %struct.ctrl_regs, ptr %54, i32 0, i32 5
  %56 = call i32 %53(ptr noundef %55) #10
  %57 = and i32 %56, 16777216
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %40

59:                                               ; preds = %52, %40, %31
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  br label %60

60:                                               ; preds = %59, %2
  %61 = phi i32 [ 16777216, %59 ], [ 0, %2 ]
  %62 = and i32 %19, 33554432
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %104, label %64

64:                                               ; preds = %60
  %65 = or i32 %61, 33554432
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #10
  %66 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %66, i8 0, i32 16, i1 false) #10, !annotation !8
  %67 = getelementptr inbounds %struct.ptp_qoriq, ptr %1, i32 0, i32 1, i32 3
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.etts_regs, ptr %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.etts_regs, ptr %68, i32 0, i32 2
  store i32 1, ptr %3, align 8
  %71 = getelementptr inbounds %struct.ptp_clock_event, ptr %3, i32 0, i32 1
  store i32 1, ptr %71, align 4
  %72 = getelementptr inbounds %struct.ptp_qoriq, ptr %1, i32 0, i32 8
  %73 = load i8, ptr %72, align 4, !range !9
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %64
  %76 = load ptr, ptr %8, align 4
  %77 = load ptr, ptr %6, align 4
  %78 = getelementptr inbounds %struct.ctrl_regs, ptr %77, i32 0, i32 5
  %79 = call i32 %76(ptr noundef %78) #10
  %80 = and i32 %79, 33554432
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %103, label %82

82:                                               ; preds = %75, %64
  %83 = getelementptr inbounds %struct.ptp_qoriq, ptr %1, i32 0, i32 3
  br label %84

84:                                               ; preds = %96, %82
  %85 = load ptr, ptr %8, align 4
  %86 = call i32 %85(ptr noundef %69) #10
  %87 = load ptr, ptr %8, align 4
  %88 = call i32 %87(ptr noundef %70) #10
  %89 = zext i32 %88 to i64
  %90 = shl nuw i64 %89, 32
  %91 = zext i32 %86 to i64
  %92 = or i64 %90, %91
  store i64 %92, ptr %66, align 8
  %93 = load ptr, ptr %83, align 4
  call void @ptp_clock_event(ptr noundef %93, ptr noundef nonnull %3) #10
  %94 = load i8, ptr %72, align 4, !range !9
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %103, label %96

96:                                               ; preds = %84
  %97 = load ptr, ptr %8, align 4
  %98 = load ptr, ptr %6, align 4
  %99 = getelementptr inbounds %struct.ctrl_regs, ptr %98, i32 0, i32 5
  %100 = call i32 %97(ptr noundef %99) #10
  %101 = and i32 %100, 33554432
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %84

103:                                              ; preds = %96, %84, %75
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #10
  br label %104

104:                                              ; preds = %103, %60
  %105 = phi i32 [ %65, %103 ], [ %61, %60 ]
  %106 = and i32 %19, 128
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %104
  %109 = or i32 %105, 128
  store i32 2, ptr %5, align 8
  %110 = getelementptr inbounds %struct.ptp_qoriq, ptr %1, i32 0, i32 3
  %111 = load ptr, ptr %110, align 4
  call void @ptp_clock_event(ptr noundef %111, ptr noundef nonnull %5) #10
  br label %114

112:                                              ; preds = %104
  %113 = icmp eq i32 %105, 0
  br i1 %113, label %120, label %114

114:                                              ; preds = %112, %108
  %115 = phi i32 [ %109, %108 ], [ %105, %112 ]
  %116 = getelementptr inbounds %struct.ptp_qoriq, ptr %1, i32 0, i32 20
  %117 = load ptr, ptr %116, align 4
  %118 = load ptr, ptr %6, align 4
  %119 = getelementptr inbounds %struct.ctrl_regs, ptr %118, i32 0, i32 1
  call void %117(ptr noundef %119, i32 noundef %115) #10
  br label %120

120:                                              ; preds = %114, %112
  %121 = phi i32 [ 1, %114 ], [ 0, %112 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  ret i32 %121
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ptp_qoriq_adjfine(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = icmp slt i32 %1, 0
  %4 = tail call i32 @llvm.abs.i32(i32 %1, i1 false)
  %5 = getelementptr i8, ptr %0, i32 140
  %6 = load i32, ptr %5, align 4
  %7 = zext i32 %6 to i64
  %8 = sext i32 %4 to i64
  %9 = tail call i64 @mul_u64_u64_div_u64(i64 noundef %7, i64 noundef %8, i64 noundef 32768000000) #10
  %10 = add i64 %9, 1
  %11 = tail call i64 @div64_u64(i64 noundef %10, i64 noundef 2) #10
  %12 = trunc i64 %11 to i32
  %13 = sub i32 0, %12
  %14 = select i1 %3, i32 %13, i32 %12
  %15 = add i32 %14, %6
  %16 = getelementptr i8, ptr %0, i32 -24
  %17 = getelementptr i8, ptr %0, i32 164
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %16, align 4
  %20 = getelementptr inbounds %struct.ctrl_regs, ptr %19, i32 0, i32 8
  tail call void %18(ptr noundef %20, i32 noundef %15) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mul_u64_u64_div_u64(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ptp_qoriq_adjtime(ptr noundef %0, i64 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -28
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #10
  %6 = getelementptr i8, ptr %0, i32 -24
  %7 = getelementptr i8, ptr %0, i32 160
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.ctrl_regs, ptr %9, i32 0, i32 7
  %11 = tail call i32 %8(ptr noundef %10) #10
  %12 = load ptr, ptr %7, align 4
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr inbounds %struct.ctrl_regs, ptr %13, i32 0, i32 6
  %15 = tail call i32 %12(ptr noundef %14) #10
  %16 = zext i32 %15 to i64
  %17 = shl nuw i64 %16, 32
  %18 = zext i32 %11 to i64
  %19 = add i64 %18, %1
  %20 = add i64 %19, %17
  %21 = lshr i64 %20, 32
  %22 = trunc i64 %21 to i32
  %23 = trunc i64 %20 to i32
  %24 = getelementptr i8, ptr %0, i32 164
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %6, align 4
  %27 = getelementptr inbounds %struct.ctrl_regs, ptr %26, i32 0, i32 7
  tail call void %25(ptr noundef %27, i32 noundef %23) #10
  %28 = load ptr, ptr %24, align 4
  %29 = load ptr, ptr %6, align 4
  %30 = getelementptr inbounds %struct.ctrl_regs, ptr %29, i32 0, i32 6
  tail call void %28(ptr noundef %30, i32 noundef %22) #10
  tail call fastcc void @set_fipers(ptr noundef %3)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @set_fipers(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ptp_qoriq, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %struct.ptp_qoriq, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.ctrl_regs, ptr %5, i32 0, i32 7
  %7 = tail call i32 %4(ptr noundef %6) #10
  %8 = load ptr, ptr %3, align 4
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr inbounds %struct.ctrl_regs, ptr %9, i32 0, i32 6
  %11 = tail call i32 %8(ptr noundef %10) #10
  %12 = zext i32 %11 to i64
  %13 = shl nuw i64 %12, 32
  %14 = zext i32 %7 to i64
  %15 = add nuw nsw i64 %14, 1500000000
  %16 = add i64 %15, %13
  %17 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %16, i32 0) #11, !srcloc !14
  %18 = extractvalue { i64, i32 } %17, 0
  %19 = extractvalue { i64, i32 } %17, 1
  %20 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %16, i64 %18, i32 %19) #11, !srcloc !15
  %21 = extractvalue { i64, i32 } %20, 0
  %22 = lshr i64 %21, 29
  %23 = mul i64 %22, 1000000000
  %24 = getelementptr inbounds %struct.ptp_qoriq, ptr %0, i32 0, i32 12
  %25 = load i32, ptr %24, align 4
  %26 = zext i32 %25 to i64
  %27 = sub i64 %23, %26
  %28 = lshr i64 %27, 32
  %29 = trunc i64 %28 to i32
  %30 = trunc i64 %27 to i32
  %31 = getelementptr inbounds %struct.ptp_qoriq, ptr %0, i32 0, i32 20
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.ptp_qoriq, ptr %0, i32 0, i32 1, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.alarm_regs, ptr %34, i32 0, i32 1
  tail call void %32(ptr noundef %35, i32 noundef %30) #10
  %36 = load ptr, ptr %31, align 4
  %37 = load ptr, ptr %33, align 4
  tail call void %36(ptr noundef %37, i32 noundef %29) #10
  %38 = load ptr, ptr %31, align 4
  %39 = getelementptr inbounds %struct.ptp_qoriq, ptr %0, i32 0, i32 1, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.ptp_qoriq, ptr %0, i32 0, i32 16
  %42 = load i32, ptr %41, align 4
  tail call void %38(ptr noundef %40, i32 noundef %42) #10
  %43 = load ptr, ptr %31, align 4
  %44 = load ptr, ptr %39, align 4
  %45 = getelementptr inbounds %struct.fiper_regs, ptr %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.ptp_qoriq, ptr %0, i32 0, i32 17
  %47 = load i32, ptr %46, align 4
  tail call void %43(ptr noundef %45, i32 noundef %47) #10
  %48 = getelementptr inbounds %struct.ptp_qoriq, ptr %0, i32 0, i32 9
  %49 = load i8, ptr %48, align 1, !range !9
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %1
  %52 = load ptr, ptr %31, align 4
  %53 = load ptr, ptr %39, align 4
  %54 = getelementptr inbounds %struct.fiper_regs, ptr %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.ptp_qoriq, ptr %0, i32 0, i32 18
  %56 = load i32, ptr %55, align 4
  tail call void %52(ptr noundef %54, i32 noundef %56) #10
  br label %57

57:                                               ; preds = %51, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ptp_qoriq_gettime(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca %struct.timespec64, align 8
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #10
  %6 = getelementptr i8, ptr %0, i32 -24
  %7 = getelementptr i8, ptr %0, i32 160
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.ctrl_regs, ptr %9, i32 0, i32 7
  %11 = tail call i32 %8(ptr noundef %10) #10
  %12 = load ptr, ptr %7, align 4
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr inbounds %struct.ctrl_regs, ptr %13, i32 0, i32 6
  %15 = tail call i32 %12(ptr noundef %14) #10
  %16 = zext i32 %15 to i64
  %17 = shl nuw i64 %16, 32
  %18 = zext i32 %11 to i64
  %19 = or i64 %17, %18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %3, i64 noundef %19) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ptp_qoriq_settime(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load i64, ptr %1, align 8
  %4 = icmp sgt i64 %3, 9223372035
  br i1 %4, label %16, label %5

5:                                                ; preds = %2
  %6 = icmp slt i64 %3, -9223372035
  br i1 %6, label %16, label %7

7:                                                ; preds = %5
  %8 = mul nsw i64 %3, 1000000000
  %9 = getelementptr inbounds %struct.timespec64, ptr %1, i32 0, i32 1
  %10 = load i32, ptr %9, align 8
  %11 = sext i32 %10 to i64
  %12 = add i64 %8, %11
  %13 = trunc i64 %12 to i32
  %14 = lshr i64 %12, 32
  %15 = trunc i64 %14 to i32
  br label %16

16:                                               ; preds = %7, %5, %2
  %17 = phi i32 [ %13, %7 ], [ -1, %2 ], [ 0, %5 ]
  %18 = phi i32 [ %15, %7 ], [ 2147483647, %2 ], [ -2147483648, %5 ]
  %19 = getelementptr i8, ptr %0, i32 -28
  %20 = getelementptr i8, ptr %0, i32 -8
  %21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %20) #10
  %22 = getelementptr i8, ptr %0, i32 -24
  %23 = getelementptr i8, ptr %0, i32 164
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %22, align 4
  %26 = getelementptr inbounds %struct.ctrl_regs, ptr %25, i32 0, i32 7
  tail call void %24(ptr noundef %26, i32 noundef %17) #10
  %27 = load ptr, ptr %23, align 4
  %28 = load ptr, ptr %22, align 4
  %29 = getelementptr inbounds %struct.ctrl_regs, ptr %28, i32 0, i32 6
  tail call void %27(ptr noundef %29, i32 noundef %18) #10
  tail call fastcc void @set_fipers(ptr noundef %19)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %21) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ptp_qoriq_enable(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -24
  %5 = load i32, ptr %1, align 8
  switch i32 %5, label %79 [
    i32 0, label %6
    i32 2, label %54
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ptp_clock_request, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 8
  switch i32 %8, label %79 [
    i32 0, label %10
    i32 1, label %9
  ]

9:                                                ; preds = %6
  br label %10

10:                                               ; preds = %9, %6
  %11 = phi i32 [ 33554432, %9 ], [ 16777216, %6 ]
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %54, label %13

13:                                               ; preds = %10
  switch i32 %8, label %54 [
    i32 0, label %14
    i32 1, label %18
  ]

14:                                               ; preds = %13
  %15 = getelementptr i8, ptr %0, i32 -12
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.etts_regs, ptr %16, i32 0, i32 1
  br label %23

18:                                               ; preds = %13
  %19 = getelementptr i8, ptr %0, i32 -12
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.etts_regs, ptr %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.etts_regs, ptr %20, i32 0, i32 2
  br label %23

23:                                               ; preds = %18, %14
  %24 = phi ptr [ %21, %18 ], [ %17, %14 ]
  %25 = phi ptr [ %22, %18 ], [ %16, %14 ]
  %26 = phi i32 [ 33554432, %18 ], [ 16777216, %14 ]
  %27 = getelementptr i8, ptr %0, i32 120
  %28 = load i8, ptr %27, align 4, !range !9
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %23
  %31 = getelementptr i8, ptr %0, i32 160
  %32 = load ptr, ptr %31, align 4
  %33 = load ptr, ptr %4, align 4
  %34 = getelementptr inbounds %struct.ctrl_regs, ptr %33, i32 0, i32 5
  %35 = tail call i32 %32(ptr noundef %34) #10
  %36 = and i32 %35, %26
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %54, label %38

38:                                               ; preds = %30, %23
  %39 = getelementptr i8, ptr %0, i32 160
  br label %40

40:                                               ; preds = %47, %38
  %41 = load ptr, ptr %39, align 4
  %42 = tail call i32 %41(ptr noundef %24) #10
  %43 = load ptr, ptr %39, align 4
  %44 = tail call i32 %43(ptr noundef %25) #10
  %45 = load i8, ptr %27, align 4, !range !9
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %40
  %48 = load ptr, ptr %39, align 4
  %49 = load ptr, ptr %4, align 4
  %50 = getelementptr inbounds %struct.ctrl_regs, ptr %49, i32 0, i32 5
  %51 = tail call i32 %48(ptr noundef %50) #10
  %52 = and i32 %51, %26
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %40

54:                                               ; preds = %47, %40, %30, %13, %10, %3
  %55 = phi i32 [ %11, %10 ], [ 128, %3 ], [ %11, %13 ], [ %11, %30 ], [ %11, %40 ], [ %11, %47 ]
  %56 = getelementptr i8, ptr %0, i32 -8
  %57 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %56) #10
  %58 = getelementptr i8, ptr %0, i32 160
  %59 = load ptr, ptr %58, align 4
  %60 = load ptr, ptr %4, align 4
  %61 = getelementptr inbounds %struct.ctrl_regs, ptr %60, i32 0, i32 2
  %62 = tail call i32 %59(ptr noundef %61) #10
  %63 = icmp eq i32 %2, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %54
  %65 = or i32 %62, %55
  %66 = getelementptr i8, ptr %0, i32 164
  %67 = load ptr, ptr %66, align 4
  %68 = load ptr, ptr %4, align 4
  %69 = getelementptr inbounds %struct.ctrl_regs, ptr %68, i32 0, i32 1
  tail call void %67(ptr noundef %69, i32 noundef %55) #10
  br label %73

70:                                               ; preds = %54
  %71 = xor i32 %55, -1
  %72 = and i32 %62, %71
  br label %73

73:                                               ; preds = %70, %64
  %74 = phi i32 [ %65, %64 ], [ %72, %70 ]
  %75 = getelementptr i8, ptr %0, i32 164
  %76 = load ptr, ptr %75, align 4
  %77 = load ptr, ptr %4, align 4
  %78 = getelementptr inbounds %struct.ctrl_regs, ptr %77, i32 0, i32 2
  tail call void %76(ptr noundef %78, i32 noundef %74) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %56, i32 noundef %57) #10
  br label %79

79:                                               ; preds = %73, %6, %3
  %80 = phi i32 [ 0, %73 ], [ -22, %6 ], [ -95, %3 ]
  ret i32 %80
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ptp_qoriq_init(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.timespec64, align 8
  %5 = getelementptr inbounds %struct.ptp_qoriq, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 25
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %246, label %10

10:                                               ; preds = %3
  store ptr %1, ptr %0, align 4
  %11 = getelementptr inbounds %struct.ptp_qoriq, ptr %0, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(108) %11, ptr noundef align 4 dereferenceable(108) %2, i32 108, i1 false)
  %12 = getelementptr inbounds %struct.ptp_qoriq, ptr %0, i32 0, i32 15
  %13 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %8, ptr noundef nonnull @.str, ptr noundef %12, i32 noundef 1, i32 noundef 0) #10
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  store i32 1, ptr %12, align 4
  br label %16

16:                                               ; preds = %15, %10
  %17 = tail call ptr @of_find_property(ptr noundef nonnull %8, ptr noundef nonnull @.str.1, ptr noundef null) #10
  %18 = icmp ne ptr %17, null
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.ptp_qoriq, ptr %0, i32 0, i32 8
  store i8 %19, ptr %20, align 4
  %21 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %8, ptr noundef nonnull @.str.2) #10
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %8, ptr noundef nonnull @.str.3) #10
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23, %16
  %27 = getelementptr inbounds %struct.ptp_qoriq, ptr %0, i32 0, i32 9
  store i8 1, ptr %27, align 1
  br label %28

28:                                               ; preds = %26, %23
  %29 = getelementptr inbounds %struct.ptp_qoriq, ptr %0, i32 0, i32 12
  %30 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %8, ptr noundef nonnull @.str.4, ptr noundef %29, i32 noundef 1, i32 noundef 0) #10
  %31 = icmp sgt i32 %30, -1
  br i1 %31, label %32, label %60

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.ptp_qoriq, ptr %0, i32 0, i32 13
  %34 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %8, ptr noundef nonnull @.str.5, ptr noundef %33, i32 noundef 1, i32 noundef 0) #10
  %35 = icmp sgt i32 %34, -1
  br i1 %35, label %36, label %60

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.ptp_qoriq, ptr %0, i32 0, i32 14
  %38 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %8, ptr noundef nonnull @.str.6, ptr noundef %37, i32 noundef 1, i32 noundef 0) #10
  %39 = icmp sgt i32 %38, -1
  br i1 %39, label %40, label %60

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.ptp_qoriq, ptr %0, i32 0, i32 16
  %42 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %8, ptr noundef nonnull @.str.7, ptr noundef %41, i32 noundef 1, i32 noundef 0) #10
  %43 = icmp sgt i32 %42, -1
  br i1 %43, label %44, label %60

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.ptp_qoriq, ptr %0, i32 0, i32 17
  %46 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %8, ptr noundef nonnull @.str.8, ptr noundef %45, i32 noundef 1, i32 noundef 0) #10
  %47 = icmp sgt i32 %46, -1
  br i1 %47, label %48, label %60

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.ptp_qoriq, ptr %0, i32 0, i32 4, i32 2
  %50 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %8, ptr noundef nonnull @.str.9, ptr noundef %49, i32 noundef 1, i32 noundef 0) #10
  %51 = icmp sgt i32 %50, -1
  br i1 %51, label %52, label %60

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.ptp_qoriq, ptr %0, i32 0, i32 9
  %54 = load i8, ptr %53, align 1, !range !9
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %118, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.ptp_qoriq, ptr %0, i32 0, i32 18
  %58 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %8, ptr noundef nonnull @.str.10, ptr noundef %57, i32 noundef 1, i32 noundef 0) #10
  %59 = icmp sgt i32 %58, -1
  br i1 %59, label %118, label %60

60:                                               ; preds = %56, %48, %44, %40, %36, %32, %28
  %61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #12
  store i32 1, ptr %12, align 4
  %62 = tail call ptr @of_clk_get(ptr noundef nonnull %8, i32 noundef 0) #10
  %63 = icmp ugt ptr %62, inttoptr (i32 -4096 to ptr)
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = tail call i32 @clk_get_rate(ptr noundef %62) #10
  tail call void @clk_put(ptr noundef %62) #10
  %66 = icmp ult i32 %65, 100000001
  br i1 %66, label %67, label %69

67:                                               ; preds = %64, %60
  %68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #12
  br label %246

69:                                               ; preds = %64
  %70 = udiv i32 %65, 1000000
  %71 = trunc i32 %70 to i16
  %72 = urem i16 %71, 100
  %73 = zext i16 %72 to i32
  %74 = icmp eq i16 %72, 0
  %75 = add nuw nsw i32 %70, 100
  %76 = sub nuw nsw i32 %75, %73
  %77 = select i1 %74, i32 %70, i32 %76
  br label %78

78:                                               ; preds = %78, %69
  %79 = phi i32 [ %77, %69 ], [ %80, %78 ]
  %80 = add i32 %79, -100
  %81 = urem i32 1000, %80
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %78

83:                                               ; preds = %78
  %84 = mul i32 %80, 1000000
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %246, label %86

86:                                               ; preds = %83
  %87 = udiv i32 1000000000, %84
  store i32 %87, ptr %29, align 4
  %88 = getelementptr inbounds %struct.ptp_qoriq, ptr %0, i32 0, i32 13
  store i32 2, ptr %88, align 4
  %89 = zext i32 %84 to i64
  %90 = shl nuw i64 %89, 32
  %91 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %65, i64 %90) #11, !srcloc !16
  %92 = extractvalue { i64, i64 } %91, 1
  %93 = trunc i64 %92 to i32
  %94 = extractvalue { i64, i64 } %91, 0
  %95 = icmp ugt i64 %94, 4294967295
  %96 = zext i1 %95 to i32
  %97 = add i32 %93, %96
  %98 = getelementptr inbounds %struct.ptp_qoriq, ptr %0, i32 0, i32 14
  store i32 %97, ptr %98, align 4
  %99 = sub nuw nsw i32 1000000000, %87
  %100 = getelementptr inbounds %struct.ptp_qoriq, ptr %0, i32 0, i32 16
  store i32 %99, ptr %100, align 4
  %101 = getelementptr inbounds %struct.ptp_qoriq, ptr %0, i32 0, i32 17
  store i32 %99, ptr %101, align 4
  %102 = getelementptr inbounds %struct.ptp_qoriq, ptr %0, i32 0, i32 18
  store i32 %99, ptr %102, align 4
  %103 = sub i32 %65, %84
  %104 = zext i32 %103 to i64
  %105 = mul nuw nsw i64 %104, 1000000000
  %106 = icmp ult i64 %105, 4294967296
  br i1 %106, label %107, label %110, !prof !17

107:                                              ; preds = %86
  %108 = trunc i64 %105 to i32
  %109 = udiv i32 %108, %84
  br label %114

110:                                              ; preds = %86
  %111 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %84, i64 %105) #11, !srcloc !16
  %112 = extractvalue { i64, i64 } %111, 1
  %113 = trunc i64 %112 to i32
  br label %114

114:                                              ; preds = %110, %107
  %115 = phi i32 [ %109, %107 ], [ %113, %110 ]
  %116 = add i32 %115, -1
  %117 = getelementptr inbounds %struct.ptp_qoriq, ptr %0, i32 0, i32 4, i32 2
  store i32 %116, ptr %117, align 4
  br label %118

118:                                              ; preds = %114, %56, %52
  %119 = tail call ptr @of_find_property(ptr noundef nonnull %8, ptr noundef nonnull @.str.12, ptr noundef null) #10
  %120 = icmp eq ptr %119, null
  %121 = select i1 %120, ptr @qoriq_read_be, ptr @qoriq_read_le
  %122 = select i1 %120, ptr @qoriq_write_be, ptr @qoriq_write_le
  %123 = getelementptr inbounds %struct.ptp_qoriq, ptr %0, i32 0, i32 19
  store ptr %121, ptr %123, align 4
  %124 = getelementptr %struct.ptp_qoriq, ptr %0, i32 0, i32 20
  store ptr %122, ptr %124, align 4
  %125 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %8, ptr noundef nonnull @.str.13) #10
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %118
  %128 = getelementptr i8, ptr %1, i32 128
  br label %129

129:                                              ; preds = %127, %118
  %130 = phi i32 [ 184, %127 ], [ 64, %118 ]
  %131 = phi i32 [ 208, %127 ], [ 128, %118 ]
  %132 = phi i32 [ 224, %127 ], [ 160, %118 ]
  %133 = phi ptr [ %128, %127 ], [ %1, %118 ]
  %134 = getelementptr i8, ptr %1, i32 %130
  %135 = getelementptr i8, ptr %1, i32 %131
  %136 = getelementptr i8, ptr %1, i32 %132
  %137 = getelementptr %struct.ptp_qoriq, ptr %0, i32 0, i32 1
  store ptr %133, ptr %137, align 4
  %138 = getelementptr inbounds %struct.ptp_qoriq, ptr %0, i32 0, i32 1, i32 1
  store ptr %134, ptr %138, align 4
  %139 = getelementptr inbounds %struct.ptp_qoriq, ptr %0, i32 0, i32 1, i32 2
  store ptr %135, ptr %139, align 4
  %140 = getelementptr inbounds %struct.ptp_qoriq, ptr %0, i32 0, i32 1, i32 3
  store ptr %136, ptr %140, align 4
  %141 = getelementptr %struct.ptp_qoriq, ptr %0, i32 0, i32 2
  store i32 0, ptr %141, align 4
  call void @ktime_get_real_ts64(ptr noundef nonnull %4) #10
  %142 = load i64, ptr %4, align 8
  %143 = icmp sgt i64 %142, 9223372035
  br i1 %143, label %155, label %144

144:                                              ; preds = %129
  %145 = icmp slt i64 %142, -9223372035
  br i1 %145, label %155, label %146

146:                                              ; preds = %144
  %147 = mul nsw i64 %142, 1000000000
  %148 = getelementptr inbounds %struct.timespec64, ptr %4, i32 0, i32 1
  %149 = load i32, ptr %148, align 8
  %150 = sext i32 %149 to i64
  %151 = add i64 %147, %150
  %152 = trunc i64 %151 to i32
  %153 = lshr i64 %151, 32
  %154 = trunc i64 %153 to i32
  br label %155

155:                                              ; preds = %146, %144, %129
  %156 = phi i32 [ %152, %146 ], [ -1, %129 ], [ 0, %144 ]
  %157 = phi i32 [ %154, %146 ], [ 2147483647, %129 ], [ -2147483648, %144 ]
  %158 = call i32 @_raw_spin_lock_irqsave(ptr noundef %141) #10
  %159 = load ptr, ptr %124, align 4
  %160 = load ptr, ptr %137, align 4
  %161 = getelementptr inbounds %struct.ctrl_regs, ptr %160, i32 0, i32 7
  call void %159(ptr noundef %161, i32 noundef %156) #10
  %162 = load ptr, ptr %124, align 4
  %163 = load ptr, ptr %137, align 4
  %164 = getelementptr inbounds %struct.ctrl_regs, ptr %163, i32 0, i32 6
  call void %162(ptr noundef %164, i32 noundef %157) #10
  call fastcc void @set_fipers(ptr noundef %0) #10
  call void @_raw_spin_unlock_irqrestore(ptr noundef %141, i32 noundef %158) #10
  %165 = load i32, ptr %29, align 4
  %166 = shl i32 %165, 16
  %167 = and i32 %166, 67043328
  %168 = load i32, ptr %12, align 4
  %169 = and i32 %168, 3
  %170 = or i32 %167, %169
  %171 = call i32 @_raw_spin_lock_irqsave(ptr noundef %141) #10
  %172 = load ptr, ptr %124, align 4
  %173 = load ptr, ptr %137, align 4
  call void %172(ptr noundef %173, i32 noundef %170) #10
  %174 = load ptr, ptr %124, align 4
  %175 = load ptr, ptr %137, align 4
  %176 = getelementptr inbounds %struct.ctrl_regs, ptr %175, i32 0, i32 8
  %177 = getelementptr inbounds %struct.ptp_qoriq, ptr %0, i32 0, i32 14
  %178 = load i32, ptr %177, align 4
  call void %174(ptr noundef %176, i32 noundef %178) #10
  %179 = load ptr, ptr %124, align 4
  %180 = load ptr, ptr %137, align 4
  %181 = getelementptr inbounds %struct.ctrl_regs, ptr %180, i32 0, i32 10
  %182 = getelementptr inbounds %struct.ptp_qoriq, ptr %0, i32 0, i32 13
  %183 = load i32, ptr %182, align 4
  call void %179(ptr noundef %181, i32 noundef %183) #10
  %184 = load ptr, ptr %124, align 4
  %185 = load ptr, ptr %139, align 4
  %186 = getelementptr inbounds %struct.ptp_qoriq, ptr %0, i32 0, i32 16
  %187 = load i32, ptr %186, align 4
  call void %184(ptr noundef %185, i32 noundef %187) #10
  %188 = load ptr, ptr %124, align 4
  %189 = load ptr, ptr %139, align 4
  %190 = getelementptr inbounds %struct.fiper_regs, ptr %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.ptp_qoriq, ptr %0, i32 0, i32 17
  %192 = load i32, ptr %191, align 4
  call void %188(ptr noundef %190, i32 noundef %192) #10
  %193 = getelementptr inbounds %struct.ptp_qoriq, ptr %0, i32 0, i32 9
  %194 = load i8, ptr %193, align 1, !range !9
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %202, label %196

196:                                              ; preds = %155
  %197 = load ptr, ptr %124, align 4
  %198 = load ptr, ptr %139, align 4
  %199 = getelementptr inbounds %struct.fiper_regs, ptr %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.ptp_qoriq, ptr %0, i32 0, i32 18
  %201 = load i32, ptr %200, align 4
  call void %197(ptr noundef %199, i32 noundef %201) #10
  br label %202

202:                                              ; preds = %196, %155
  %203 = load ptr, ptr %123, align 4
  %204 = load ptr, ptr %137, align 4
  %205 = getelementptr inbounds %struct.ctrl_regs, ptr %204, i32 0, i32 7
  %206 = call i32 %203(ptr noundef %205) #10
  %207 = load ptr, ptr %123, align 4
  %208 = load ptr, ptr %137, align 4
  %209 = getelementptr inbounds %struct.ctrl_regs, ptr %208, i32 0, i32 6
  %210 = call i32 %207(ptr noundef %209) #10
  %211 = zext i32 %210 to i64
  %212 = shl nuw i64 %211, 32
  %213 = zext i32 %206 to i64
  %214 = add nuw nsw i64 %213, 1500000000
  %215 = add i64 %214, %212
  %216 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %215, i32 0) #11, !srcloc !14
  %217 = extractvalue { i64, i32 } %216, 0
  %218 = extractvalue { i64, i32 } %216, 1
  %219 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %215, i64 %217, i32 %218) #11, !srcloc !15
  %220 = extractvalue { i64, i32 } %219, 0
  %221 = lshr i64 %220, 29
  %222 = mul i64 %221, 1000000000
  %223 = load i32, ptr %29, align 4
  %224 = zext i32 %223 to i64
  %225 = sub i64 %222, %224
  %226 = lshr i64 %225, 32
  %227 = trunc i64 %226 to i32
  %228 = trunc i64 %225 to i32
  %229 = load ptr, ptr %124, align 4
  %230 = load ptr, ptr %138, align 4
  %231 = getelementptr inbounds %struct.alarm_regs, ptr %230, i32 0, i32 1
  call void %229(ptr noundef %231, i32 noundef %228) #10
  %232 = load ptr, ptr %124, align 4
  %233 = load ptr, ptr %138, align 4
  call void %232(ptr noundef %233, i32 noundef %227) #10
  %234 = load ptr, ptr %124, align 4
  %235 = load ptr, ptr %137, align 4
  %236 = or i32 %170, 268484612
  call void %234(ptr noundef %235, i32 noundef %236) #10
  call void @_raw_spin_unlock_irqrestore(ptr noundef %141, i32 noundef %171) #10
  %237 = load ptr, ptr %5, align 4
  %238 = call ptr @ptp_clock_register(ptr noundef %11, ptr noundef %237) #10
  %239 = getelementptr inbounds %struct.ptp_qoriq, ptr %0, i32 0, i32 3
  store ptr %238, ptr %239, align 4
  %240 = icmp ugt ptr %238, inttoptr (i32 -4096 to ptr)
  br i1 %240, label %241, label %243

241:                                              ; preds = %202
  %242 = ptrtoint ptr %238 to i32
  br label %246

243:                                              ; preds = %202
  %244 = call i32 @ptp_clock_index(ptr noundef %238) #10
  %245 = getelementptr inbounds %struct.ptp_qoriq, ptr %0, i32 0, i32 11
  store i32 %244, ptr %245, align 4
  call void @ptp_qoriq_create_debugfs(ptr noundef %0) #10
  br label %246

246:                                              ; preds = %243, %241, %83, %67, %3
  %247 = phi i32 [ %242, %241 ], [ 0, %243 ], [ -19, %3 ], [ -19, %67 ], [ -19, %83 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  ret i32 %247
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @qoriq_read_le(ptr noundef %0) #6 {
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #10, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !19
  ret i32 %2
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @qoriq_write_le(ptr noundef %0, i32 noundef %1) #6 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !20
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %0, i32 %1) #10, !srcloc !21
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @qoriq_read_be(ptr noundef %0) #6 {
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #10, !srcloc !18
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !22
  ret i32 %3
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @qoriq_write_be(ptr noundef %0, i32 noundef %1) #6 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !23
  tail call void @arm_heavy_mb() #10
  %3 = tail call i32 @llvm.bswap.i32(i32 %1)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %0, i32 %3) #10, !srcloc !21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ptp_clock_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_index(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ptp_qoriq_create_debugfs(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ptp_qoriq_free(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ptp_qoriq, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %struct.ptp_qoriq, ptr %0, i32 0, i32 20
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.ctrl_regs, ptr %5, i32 0, i32 2
  tail call void %4(ptr noundef %6, i32 noundef 0) #10
  %7 = load ptr, ptr %3, align 4
  %8 = load ptr, ptr %2, align 4
  tail call void %7(ptr noundef %8, i32 noundef 0) #10
  tail call void @ptp_qoriq_remove_debugfs(ptr noundef %0) #10
  %9 = getelementptr inbounds %struct.ptp_qoriq, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @ptp_clock_unregister(ptr noundef %10) #10
  %12 = load ptr, ptr %0, align 4
  tail call void @iounmap(ptr noundef %12) #10
  %13 = getelementptr inbounds %struct.ptp_qoriq, ptr %0, i32 0, i32 10
  %14 = load i32, ptr %13, align 4
  %15 = tail call ptr @free_irq(i32 noundef %14, ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ptp_qoriq_remove_debugfs(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ptp_qoriq_driver_init() #7 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ptp_qoriq_driver, ptr noundef null) #10
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @ptp_qoriq_driver_exit() #7 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @ptp_qoriq_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ptp_qoriq_probe(ptr noundef %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 196) #13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %57, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %7 = getelementptr inbounds %struct.ptp_qoriq, ptr %3, i32 0, i32 7
  store ptr %6, ptr %7, align 8
  %8 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #10
  %9 = getelementptr inbounds %struct.ptp_qoriq, ptr %3, i32 0, i32 10
  store i32 %8, ptr %9, align 8
  %10 = icmp slt i32 %8, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #12
  br label %55

13:                                               ; preds = %5
  %14 = tail call i32 @request_threaded_irq(i32 noundef %8, ptr noundef nonnull @ptp_qoriq_isr, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.15, ptr noundef nonnull %3) #10
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #12
  br label %55

18:                                               ; preds = %13
  %19 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #10
  %20 = getelementptr inbounds %struct.ptp_qoriq, ptr %3, i32 0, i32 5
  store ptr %19, ptr %20, align 8
  %21 = icmp eq ptr %19, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #12
  br label %51

24:                                               ; preds = %18
  %25 = tail call i32 @request_resource(ptr noundef nonnull @iomem_resource, ptr noundef nonnull %19) #10
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #12
  br label %51

29:                                               ; preds = %24
  %30 = load ptr, ptr %20, align 8
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.resource, ptr %30, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = sub i32 1, %31
  %35 = add i32 %34, %33
  %36 = tail call ptr @ioremap(i32 noundef %31, i32 noundef %35) #10
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #12
  br label %47

40:                                               ; preds = %29
  %41 = tail call i32 @ptp_qoriq_init(ptr noundef nonnull %3, ptr noundef nonnull %36, ptr noundef nonnull @ptp_qoriq_caps)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %44, align 8
  br label %57

45:                                               ; preds = %40
  %46 = load ptr, ptr %3, align 8
  tail call void @iounmap(ptr noundef %46) #10
  br label %47

47:                                               ; preds = %45, %38
  %48 = phi i32 [ %41, %45 ], [ -19, %38 ]
  %49 = load ptr, ptr %20, align 8
  %50 = tail call i32 @release_resource(ptr noundef %49) #10
  br label %51

51:                                               ; preds = %47, %27, %22
  %52 = phi i32 [ -19, %27 ], [ %48, %47 ], [ -19, %22 ]
  %53 = load i32, ptr %9, align 8
  %54 = tail call ptr @free_irq(i32 noundef %53, ptr noundef nonnull %3) #10
  br label %55

55:                                               ; preds = %51, %16, %11
  %56 = phi i32 [ -19, %11 ], [ -19, %16 ], [ %52, %51 ]
  tail call void @kfree(ptr noundef nonnull %3) #10
  br label %57

57:                                               ; preds = %55, %43, %1
  %58 = phi i32 [ 0, %43 ], [ %56, %55 ], [ -12, %1 ]
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ptp_qoriq_remove(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ptp_qoriq, ptr %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.ptp_qoriq, ptr %3, i32 0, i32 20
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.ctrl_regs, ptr %7, i32 0, i32 2
  tail call void %6(ptr noundef %8, i32 noundef 0) #10
  %9 = load ptr, ptr %5, align 4
  %10 = load ptr, ptr %4, align 4
  tail call void %9(ptr noundef %10, i32 noundef 0) #10
  tail call void @ptp_qoriq_remove_debugfs(ptr noundef %3) #10
  %11 = getelementptr inbounds %struct.ptp_qoriq, ptr %3, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @ptp_clock_unregister(ptr noundef %12) #10
  %14 = load ptr, ptr %3, align 4
  tail call void @iounmap(ptr noundef %14) #10
  %15 = getelementptr inbounds %struct.ptp_qoriq, ptr %3, i32 0, i32 10
  %16 = load i32, ptr %15, align 4
  %17 = tail call ptr @free_irq(i32 noundef %16, ptr noundef %3) #10
  %18 = getelementptr inbounds %struct.ptp_qoriq, ptr %3, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 @release_resource(ptr noundef %19) #10
  tail call void @kfree(ptr noundef %3) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_resource(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @release_resource(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind readnone }
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
!8 = !{!"auto-init"}
!9 = !{i8 0, i8 2}
!10 = !{i64 2149223687}
!11 = !{i64 2149219511}
!12 = !{i64 2149219586, i64 2149219613, i64 2149219660, i64 2149219682, i64 2149219710, i64 2149219730}
!13 = !{i64 2149246690}
!14 = !{i64 1146253, i64 1146280, i64 1146302, i64 1146330}
!15 = !{i64 1146661, i64 1146688, i64 1146721, i64 1146742, i64 1146769, i64 1146795}
!16 = !{i64 2148631797, i64 2148632077, i64 2148632411, i64 2148632745}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{i64 3948111}
!19 = !{i64 2151480074}
!20 = !{i64 2151481296}
!21 = !{i64 3947693}
!22 = !{i64 2153696866}
!23 = !{i64 2153697234}
