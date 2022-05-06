; ModuleID = '/llk/IR/drivers/ata/libata-pmp.c_pt.bc'
source_filename = "../drivers/ata/libata-pmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sata_pmp_port_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22sata_pmp_port_ops\22\09\09\09\09\09"
module asm "__kstrtabns_sata_pmp_port_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sata_pmp_qc_defer_cmd_switch:\09\09\09\09\09"
module asm "\09.asciz \09\22sata_pmp_qc_defer_cmd_switch\22\09\09\09\09\09"
module asm "__kstrtabns_sata_pmp_qc_defer_cmd_switch:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sata_pmp_error_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22sata_pmp_error_handler\22\09\09\09\09\09"
module asm "__kstrtabns_sata_pmp_error_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.ata_port_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ata_taskfile = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.ata_port = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.ata_ioports, i8, i8, ptr, %struct.delayed_work, ptr, i32, i32, i32, i32, i32, [33 x %struct.ata_queued_cmd], i32, i64, i32, i32, [24 x i8], %struct.ata_link, ptr, i32, ptr, ptr, %struct.ata_port_stats, ptr, ptr, %struct.device, %struct.mutex, %struct.delayed_work, %struct.work_struct, i32, %struct.list_head, %struct.wait_queue_head, i32, %struct.completion, %struct.pm_message, i32, %struct.timer_list, i32, i64, i32, ptr, [16 x i8], [512 x i8] }
%struct.ata_ioports = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ata_queued_cmd = type { ptr, ptr, ptr, ptr, %struct.ata_taskfile, [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.scatterlist, ptr, ptr, i32, i32, %struct.ata_taskfile, ptr, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ata_link = type { ptr, i32, %struct.device, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ata_eh_info, %struct.ata_eh_context, [60 x i8], [2 x %struct.ata_device], i32, [60 x i8] }
%struct.ata_eh_info = type { ptr, i32, i32, i32, [2 x i32], i32, i32, [80 x i8], i32 }
%struct.ata_eh_context = type { %struct.ata_eh_info, [2 x i32], [2 x [7 x i32]], [2 x i32], i32, i32, i32, [2 x i8], i32 }
%struct.ata_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.device, i64, i64, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, [18 x i8], %union.anon.74, [8 x i8], [20 x i8], [64 x i8], i32, i32, i32, i32, ptr, i32, %struct.ata_ering }
%union.anon.74 = type { [128 x i32] }
%struct.ata_ering = type { i32, [32 x %struct.ata_ering_entry] }
%struct.ata_ering_entry = type { i32, i32, i64 }
%struct.ata_port_stats = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.pm_message = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }

@sata_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@sata_pmp_port_ops = dso_local constant %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_std_prereset, ptr null, ptr @sata_std_hardreset, ptr @ata_std_postreset, ptr @sata_pmp_error_handler, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sata_port_ops }, align 4
@.str = private unnamed_addr constant [50 x i8] c"\014ata%u.%02u: failed to read SCR %d (Emask=0x%x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"\014ata%u: failed to read SCR %d (Emask=0x%x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"\014ata%u.%02u: failed to write SCR %d (Emask=0x%x)\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"\014ata%u: failed to write SCR %d (Emask=0x%x)\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"\013ata%u.%02u: host does not support Port Multiplier\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"\013ata%u.%02u: Port Multipliers cannot be nested\0A\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"\013ata%u.%02u: Port Multiplier must be the first device\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"drivers/ata/libata-pmp.c\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"\016ata%u.%02u: failed to initialize PMP links\0A\00", align 1
@__kstrtab_sata_pmp_port_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_sata_pmp_port_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_sata_pmp_port_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sata_pmp_port_ops to i32), ptr @__kstrtab_sata_pmp_port_ops, ptr @__kstrtabns_sata_pmp_port_ops }, section "___ksymtab_gpl+sata_pmp_port_ops", align 4
@__kstrtab_sata_pmp_qc_defer_cmd_switch = external dso_local constant [0 x i8], align 1
@__kstrtabns_sata_pmp_qc_defer_cmd_switch = external dso_local constant [0 x i8], align 1
@__ksymtab_sata_pmp_qc_defer_cmd_switch = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sata_pmp_qc_defer_cmd_switch to i32), ptr @__kstrtab_sata_pmp_qc_defer_cmd_switch, ptr @__kstrtabns_sata_pmp_qc_defer_cmd_switch }, section "___ksymtab_gpl+sata_pmp_qc_defer_cmd_switch", align 4
@__kstrtab_sata_pmp_error_handler = external dso_local constant [0 x i8], align 1
@__kstrtabns_sata_pmp_error_handler = external dso_local constant [0 x i8], align 1
@__ksymtab_sata_pmp_error_handler = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sata_pmp_error_handler to i32), ptr @__kstrtab_sata_pmp_error_handler, ptr @__kstrtabns_sata_pmp_error_handler }, section "___ksymtab_gpl+sata_pmp_error_handler", align 4
@sata_pmp_read_gscr.gscr_to_read = internal unnamed_addr constant [7 x i32] [i32 0, i32 1, i32 2, i32 32, i32 33, i32 64, i32 96], align 4
@.str.9 = private unnamed_addr constant [56 x i8] c"\013ata%u.%02u: failed to read PMP GSCR[%d] (Emask=0x%x)\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"invalid nr_ports\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"failed to write GSCR_ERROR_EN\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"failed to read Sil3x26 Private Register\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"failed to write Sil3x26 Private Register\00", align 1
@.str.14 = private unnamed_addr constant [79 x i8] c"\016ata%u.%02u: Port Multiplier %s, 0x%04x:0x%04x r%d, %d ports, feat 0x%x/0x%x\0A\00", align 1
@.str.15 = private unnamed_addr constant [116 x i8] c"\016ata%u.%02u: Asynchronous notification not supported, hotplug won't work on fan-out ports. Use warm-plug instead.\0A\00", align 1
@.str.16 = private unnamed_addr constant [68 x i8] c"\013ata%u.%02u: failed to configure Port Multiplier (%s, Emask=0x%x)\0A\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"1.2\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"1.1\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@.str.21 = private unnamed_addr constant [56 x i8] c"\014ata%u.%02u: failed to disable NOTIFY (err_mask=0x%x)\0A\00", align 1
@.str.22 = private unnamed_addr constant [51 x i8] c"\014ata%u: failed to disable NOTIFY (err_mask=0x%x)\0A\00", align 1
@.str.23 = private unnamed_addr constant [56 x i8] c"\013ata%u.%02u: failed to write PMP_FEAT_EN (Emask=0x%x)\0A\00", align 1
@.str.24 = private unnamed_addr constant [58 x i8] c"\013ata%u.%02u: failed to read PMP_GSCR_ERROR (Emask=0x%x)\0A\00", align 1
@.str.25 = private unnamed_addr constant [70 x i8] c"\014ata%u.%02u: PHY status changed but maxed out on retries, giving up\0A\00", align 1
@.str.26 = private unnamed_addr constant [65 x i8] c"\014ata%u: PHY status changed but maxed out on retries, giving up\0A\00", align 1
@.str.27 = private unnamed_addr constant [55 x i8] c"\014ata%u.%02u: Manually issue scan to resume this link\0A\00", align 1
@.str.28 = private unnamed_addr constant [50 x i8] c"\014ata%u: Manually issue scan to resume this link\0A\00", align 1
@.str.29 = private unnamed_addr constant [62 x i8] c"\016ata%u: PMP SError.N set for some ports, repeating recovery\0A\00", align 1
@.str.30 = private unnamed_addr constant [58 x i8] c"\013ata%u: failed to recover PMP after %d tries, giving up\0A\00", align 1
@.str.31 = private unnamed_addr constant [46 x i8] c"\013ata%u.%02u: failed to reset PMP, giving up\0A\00", align 1
@.str.32 = private unnamed_addr constant [41 x i8] c"\013ata%u: failed to reset PMP, giving up\0A\00", align 1
@.str.33 = private unnamed_addr constant [63 x i8] c"\013ata%u.%02u: failed to recover PMP after %d tries, giving up\0A\00", align 1
@.str.34 = private unnamed_addr constant [50 x i8] c"\013ata%u.%02u: PMP revalidation failed (errno=%d)\0A\00", align 1
@.str.35 = private unnamed_addr constant [64 x i8] c"\016ata%u.%02u: Port Multiplier vendor mismatch '0x%x' != '0x%x'\0A\00", align 1
@.str.36 = private unnamed_addr constant [67 x i8] c"\016ata%u.%02u: Port Multiplier device ID mismatch '0x%x' != '0x%x'\0A\00", align 1
@.str.37 = private unnamed_addr constant [66 x i8] c"\016ata%u.%02u: Port Multiplier nr_ports mismatch '0x%x' != '0x%x'\0A\00", align 1
@.str.38 = private unnamed_addr constant [58 x i8] c"\013ata%u.%02u: failed to read PMP product ID (Emask=0x%x)\0A\00", align 1
@.str.39 = private unnamed_addr constant [39 x i8] c"\013ata%u.%02u: PMP product ID mismatch\0A\00", align 1
@sata_deb_timing_normal = external dso_local constant [0 x i32], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.40 = private unnamed_addr constant [51 x i8] c"\013ata%u.%02u: failed to clear SError.N (errno=%d)\0A\00", align 1
@.str.41 = private unnamed_addr constant [46 x i8] c"\013ata%u: failed to clear SError.N (errno=%d)\0A\00", align 1
@.str.42 = private unnamed_addr constant [64 x i8] c"\014ata%u.%02u: failed to recover link after %d tries, disabling\0A\00", align 1
@.str.43 = private unnamed_addr constant [59 x i8] c"\014ata%u: failed to recover link after %d tries, disabling\0A\00", align 1
@.str.44 = private unnamed_addr constant [41 x i8] c"\016ata%u.%02u: Port Multiplier detaching\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_sata_pmp_error_handler, ptr @__ksymtab_sata_pmp_port_ops, ptr @__ksymtab_sata_pmp_qc_defer_cmd_switch], section "llvm.metadata"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_std_prereset(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_std_hardreset(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_std_postreset(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sata_pmp_error_handler(ptr noundef %0) #1 {
  %2 = alloca %struct.ata_taskfile, align 4
  %3 = alloca %struct.ata_taskfile, align 4
  %4 = alloca %struct.ata_taskfile, align 4
  %5 = alloca %struct.ata_taskfile, align 4
  %6 = alloca [15 x i32], align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  tail call void @ata_eh_autopsy(ptr noundef %0) #8
  tail call void @ata_eh_report(ptr noundef %0) #8
  %9 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %6) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(60) %6, i8 0, i32 60, i1 false) #8, !annotation !8
  %11 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25
  %12 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25, i32 14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  store i32 0, ptr %8, align 4, !annotation !8
  %13 = tail call ptr @ata_link_next(ptr noundef null, ptr noundef %0, i32 noundef 0) #8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %74

15:                                               ; preds = %74, %1
  store ptr null, ptr %7, align 4
  %16 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 27
  %17 = getelementptr inbounds %struct.ata_port_operations, ptr %10, i32 0, i32 14
  %18 = getelementptr inbounds %struct.ata_port_operations, ptr %10, i32 0, i32 15
  %19 = getelementptr inbounds %struct.ata_port_operations, ptr %10, i32 0, i32 16
  %20 = getelementptr inbounds %struct.ata_port_operations, ptr %10, i32 0, i32 17
  %21 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25, i32 14, i32 0, i32 9
  %22 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25, i32 14, i32 0, i32 3
  %23 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25, i32 12, i32 3
  %24 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25, i32 12, i32 0, i32 3
  %25 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25, i32 14, i32 0, i32 25
  %26 = getelementptr %struct.ata_port, ptr %0, i32 0, i32 25, i32 14, i32 0, i32 25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25, i32 14, i32 0, i32 1
  %28 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25, i32 12, i32 0, i32 6
  %29 = getelementptr inbounds i8, ptr %5, i32 4
  %30 = getelementptr inbounds %struct.ata_taskfile, ptr %5, i32 0, i32 2
  %31 = getelementptr inbounds %struct.ata_taskfile, ptr %5, i32 0, i32 13
  %32 = getelementptr inbounds %struct.ata_taskfile, ptr %5, i32 0, i32 14
  %33 = getelementptr inbounds %struct.ata_taskfile, ptr %5, i32 0, i32 9
  %34 = getelementptr inbounds %struct.ata_taskfile, ptr %5, i32 0, i32 10
  %35 = getelementptr inbounds %struct.ata_taskfile, ptr %5, i32 0, i32 11
  %36 = getelementptr inbounds %struct.ata_taskfile, ptr %5, i32 0, i32 12
  %37 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25, i32 1
  %38 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25, i32 12, i32 0, i32 5
  %39 = getelementptr %struct.ata_port, ptr %0, i32 0, i32 25, i32 14, i32 0, i32 25, i32 0, i32 96
  %40 = getelementptr inbounds i8, ptr %4, i32 4
  %41 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 2
  %42 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 13
  %43 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 14
  %44 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 8
  %45 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 9
  %46 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 10
  %47 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 11
  %48 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 12
  %49 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 2
  %50 = getelementptr inbounds %struct.ata_port_operations, ptr %10, i32 0, i32 18
  %51 = getelementptr inbounds %struct.ata_port_operations, ptr %10, i32 0, i32 19
  %52 = getelementptr inbounds %struct.ata_port_operations, ptr %10, i32 0, i32 20
  %53 = getelementptr inbounds %struct.ata_port_operations, ptr %10, i32 0, i32 21
  %54 = getelementptr inbounds i8, ptr %3, i32 4
  %55 = getelementptr inbounds %struct.ata_taskfile, ptr %3, i32 0, i32 2
  %56 = getelementptr inbounds %struct.ata_taskfile, ptr %3, i32 0, i32 13
  %57 = getelementptr inbounds %struct.ata_taskfile, ptr %3, i32 0, i32 14
  %58 = getelementptr inbounds %struct.ata_taskfile, ptr %3, i32 0, i32 8
  %59 = getelementptr inbounds %struct.ata_taskfile, ptr %3, i32 0, i32 9
  %60 = getelementptr inbounds %struct.ata_taskfile, ptr %3, i32 0, i32 10
  %61 = getelementptr inbounds %struct.ata_taskfile, ptr %3, i32 0, i32 11
  %62 = getelementptr inbounds %struct.ata_taskfile, ptr %3, i32 0, i32 12
  %63 = getelementptr inbounds i8, ptr %2, i32 4
  %64 = getelementptr inbounds %struct.ata_taskfile, ptr %2, i32 0, i32 2
  %65 = getelementptr inbounds %struct.ata_taskfile, ptr %2, i32 0, i32 13
  %66 = getelementptr inbounds %struct.ata_taskfile, ptr %2, i32 0, i32 14
  %67 = getelementptr inbounds %struct.ata_taskfile, ptr %2, i32 0, i32 8
  %68 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 4
  %69 = getelementptr inbounds %struct.ata_taskfile, ptr %2, i32 0, i32 9
  %70 = getelementptr inbounds %struct.ata_taskfile, ptr %2, i32 0, i32 10
  %71 = getelementptr inbounds %struct.ata_taskfile, ptr %2, i32 0, i32 11
  %72 = getelementptr inbounds %struct.ata_taskfile, ptr %2, i32 0, i32 12
  %73 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 5
  br label %610

74:                                               ; preds = %74, %1
  %75 = phi ptr [ %79, %74 ], [ %13, %1 ]
  %76 = getelementptr inbounds %struct.ata_link, ptr %75, i32 0, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr [15 x i32], ptr %6, i32 0, i32 %77
  store i32 3, ptr %78, align 4
  %79 = tail call ptr @ata_link_next(ptr noundef nonnull %75, ptr noundef %0, i32 noundef 0) #8
  %80 = icmp eq ptr %79, null
  br i1 %80, label %15, label %74

81:                                               ; preds = %603, %588
  %82 = load i32, ptr %16, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %111

84:                                               ; preds = %81
  %85 = load ptr, ptr %17, align 4
  %86 = load ptr, ptr %18, align 4
  %87 = load ptr, ptr %19, align 4
  %88 = load ptr, ptr %20, align 4
  %89 = call i32 @ata_eh_recover(ptr noundef %0, ptr noundef %85, ptr noundef %86, ptr noundef %87, ptr noundef %88, ptr noundef null) #8
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %98, label %91

91:                                               ; preds = %84
  %92 = call ptr @ata_dev_next(ptr noundef null, ptr noundef %11, i32 noundef 2) #8
  %93 = icmp eq ptr %92, null
  br i1 %93, label %615, label %94

94:                                               ; preds = %94, %91
  %95 = phi ptr [ %96, %94 ], [ %92, %91 ]
  call void @ata_dev_disable(ptr noundef nonnull %95) #8
  %96 = call ptr @ata_dev_next(ptr noundef nonnull %95, ptr noundef %11, i32 noundef 2) #8
  %97 = icmp eq ptr %96, null
  br i1 %97, label %615, label %94

98:                                               ; preds = %84
  %99 = load i32, ptr %21, align 64
  %100 = icmp eq i32 %99, 5
  br i1 %100, label %101, label %615

101:                                              ; preds = %98
  %102 = call ptr @ata_link_next(ptr noundef null, ptr noundef %0, i32 noundef 0) #8
  store ptr %102, ptr %7, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %111, label %104

104:                                              ; preds = %104, %101
  %105 = phi ptr [ %109, %104 ], [ %102, %101 ]
  %106 = getelementptr inbounds %struct.ata_link, ptr %105, i32 0, i32 1
  %107 = load i32, ptr %106, align 4
  %108 = getelementptr [15 x i32], ptr %6, i32 0, i32 %107
  store i32 3, ptr %108, align 4
  %109 = call ptr @ata_link_next(ptr noundef nonnull %105, ptr noundef %0, i32 noundef 0) #8
  store ptr %109, ptr %7, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %104

111:                                              ; preds = %104, %101, %81
  %112 = load ptr, ptr %17, align 4
  %113 = load ptr, ptr %18, align 4
  %114 = load ptr, ptr %19, align 4
  %115 = load ptr, ptr %20, align 4
  %116 = load i32, ptr %22, align 4
  %117 = and i32 %116, 16777216
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %111
  %120 = load i32, ptr %24, align 4
  br label %122

121:                                              ; preds = %111
  call fastcc void @sata_pmp_detach(ptr noundef %12) #8
  br label %327

122:                                              ; preds = %311, %119
  %123 = phi i32 [ %313, %311 ], [ %120, %119 ]
  %124 = phi i1 [ false, %311 ], [ true, %119 ]
  %125 = phi i32 [ %305, %311 ], [ 0, %119 ]
  %126 = phi i32 [ %306, %311 ], [ 5, %119 ]
  store i32 0, ptr %23, align 4
  %127 = and i32 %123, 6
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %163, label %129

129:                                              ; preds = %122
  %130 = call i32 @ata_eh_reset(ptr noundef %11, i32 noundef 0, ptr noundef %112, ptr noundef %113, ptr noundef %114, ptr noundef %115) #8
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %150, label %132

132:                                              ; preds = %129
  %133 = load ptr, ptr %11, align 64
  %134 = getelementptr inbounds %struct.ata_port, ptr %133, i32 0, i32 27
  %135 = load i32, ptr %134, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %132
  %138 = getelementptr inbounds %struct.ata_port, ptr %133, i32 0, i32 26
  %139 = load ptr, ptr %138, align 64
  %140 = icmp eq ptr %139, null
  br i1 %140, label %146, label %141

141:                                              ; preds = %137, %132
  %142 = getelementptr inbounds %struct.ata_port, ptr %133, i32 0, i32 5
  %143 = load i32, ptr %142, align 4
  %144 = load i32, ptr %37, align 4
  %145 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %143, i32 noundef %144) #9
  br label %324

146:                                              ; preds = %137
  %147 = getelementptr inbounds %struct.ata_port, ptr %133, i32 0, i32 5
  %148 = load i32, ptr %147, align 4
  %149 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %148) #9
  br label %324

150:                                              ; preds = %129
  %151 = call ptr @ata_link_next(ptr noundef null, ptr noundef %0, i32 noundef 0) #8
  %152 = icmp eq ptr %151, null
  br i1 %152, label %163, label %153

153:                                              ; preds = %153, %150
  %154 = phi ptr [ %161, %153 ], [ %151, %150 ]
  %155 = getelementptr inbounds %struct.ata_link, ptr %154, i32 0, i32 12, i32 0, i32 6
  %156 = load i32, ptr %155, align 4
  %157 = or i32 %156, 3
  store i32 %157, ptr %155, align 4
  %158 = getelementptr inbounds %struct.ata_link, ptr %154, i32 0, i32 12, i32 0, i32 3
  %159 = load i32, ptr %158, align 4
  %160 = or i32 %159, 6
  store i32 %160, ptr %158, align 4
  %161 = call ptr @ata_link_next(ptr noundef nonnull %154, ptr noundef %0, i32 noundef 0) #8
  %162 = icmp eq ptr %161, null
  br i1 %162, label %163, label %153

163:                                              ; preds = %153, %150, %122
  %164 = load i32, ptr %24, align 4
  %165 = and i32 %164, 1
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %230, label %167

167:                                              ; preds = %163
  %168 = load i32, ptr %23, align 4
  %169 = load ptr, ptr %12, align 64
  %170 = load ptr, ptr %169, align 64
  %171 = getelementptr inbounds %struct.ata_port, ptr %170, i32 0, i32 50
  call void @ata_eh_about_to_do(ptr noundef %169, ptr noundef null, i32 noundef 1) #8
  %172 = load i32, ptr %21, align 64
  switch i32 %172, label %287 [
    i32 7, label %173
    i32 5, label %173
    i32 3, label %173
    i32 1, label %173
    i32 9, label %173
  ]

173:                                              ; preds = %167, %167, %167, %167, %167
  %174 = add i32 %168, -1
  %175 = icmp ult i32 %174, 9
  br i1 %175, label %282, label %176

176:                                              ; preds = %282, %173
  %177 = call fastcc i32 @sata_pmp_read_gscr(ptr noundef %12, ptr noundef %171) #8
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %287

179:                                              ; preds = %176
  %180 = load i32, ptr %25, align 4
  %181 = load i32, ptr %171, align 4
  %182 = load i32, ptr %26, align 4
  %183 = and i32 %182, 15
  %184 = getelementptr %struct.ata_port, ptr %170, i32 0, i32 50, i32 8
  %185 = load i32, ptr %184, align 4
  %186 = and i32 %185, 15
  %187 = and i32 %180, 65535
  %188 = and i32 %181, 65535
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %200, label %190

190:                                              ; preds = %179
  %191 = load ptr, ptr %12, align 64
  %192 = load ptr, ptr %191, align 64
  %193 = getelementptr inbounds %struct.ata_port, ptr %192, i32 0, i32 5
  %194 = load i32, ptr %193, align 4
  %195 = getelementptr inbounds %struct.ata_link, ptr %191, i32 0, i32 1
  %196 = load i32, ptr %195, align 4
  %197 = load i32, ptr %27, align 4
  %198 = add i32 %197, %196
  %199 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %194, i32 noundef %198, i32 noundef %187, i32 noundef %188) #9
  br label %287

200:                                              ; preds = %179
  %201 = lshr i32 %181, 16
  %202 = lshr i32 %180, 16
  %203 = icmp eq i32 %202, %201
  br i1 %203, label %214, label %204

204:                                              ; preds = %200
  %205 = load ptr, ptr %12, align 64
  %206 = load ptr, ptr %205, align 64
  %207 = getelementptr inbounds %struct.ata_port, ptr %206, i32 0, i32 5
  %208 = load i32, ptr %207, align 4
  %209 = getelementptr inbounds %struct.ata_link, ptr %205, i32 0, i32 1
  %210 = load i32, ptr %209, align 4
  %211 = load i32, ptr %27, align 4
  %212 = add i32 %211, %210
  %213 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %208, i32 noundef %212, i32 noundef %202, i32 noundef %201) #9
  br label %287

214:                                              ; preds = %200
  %215 = icmp eq i32 %183, %186
  br i1 %215, label %226, label %216

216:                                              ; preds = %214
  %217 = load ptr, ptr %12, align 64
  %218 = load ptr, ptr %217, align 64
  %219 = getelementptr inbounds %struct.ata_port, ptr %218, i32 0, i32 5
  %220 = load i32, ptr %219, align 4
  %221 = getelementptr inbounds %struct.ata_link, ptr %217, i32 0, i32 1
  %222 = load i32, ptr %221, align 4
  %223 = load i32, ptr %27, align 4
  %224 = add i32 %223, %222
  %225 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %220, i32 noundef %224, i32 noundef %183, i32 noundef %186) #9
  br label %287

226:                                              ; preds = %214
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 64 dereferenceable(512) %25, ptr noundef align 4 dereferenceable(512) %171, i32 512, i1 false) #8
  %227 = call fastcc i32 @sata_pmp_configure(ptr noundef %12, i32 noundef 0) #8
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %287

229:                                              ; preds = %226
  call void @ata_eh_done(ptr noundef %169, ptr noundef null, i32 noundef 1) #8
  br label %329

230:                                              ; preds = %163
  %231 = load ptr, ptr %12, align 64
  %232 = load ptr, ptr %231, align 64
  %233 = getelementptr inbounds %struct.ata_port, ptr %232, i32 0, i32 25, i32 14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(20) %29, i8 0, i64 20, i1 false) #8
  %234 = load ptr, ptr %233, align 64
  %235 = load ptr, ptr %234, align 64
  %236 = getelementptr inbounds %struct.ata_port, ptr %235, i32 0, i32 9
  %237 = load i8, ptr %236, align 4
  store i8 %237, ptr %30, align 1
  store i8 -28, ptr %32, align 1
  store i32 7, ptr %5, align 4
  %238 = getelementptr inbounds %struct.ata_link, ptr %231, i32 0, i32 1
  %239 = load i32, ptr %238, align 4
  %240 = trunc i32 %239 to i8
  store i8 %240, ptr %31, align 4
  %241 = call i32 @ata_exec_internal(ptr noundef %233, ptr noundef nonnull %5, ptr noundef null, i32 noundef 3, ptr noundef null, i32 noundef 0, i32 noundef 3000) #8
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %253, label %243

243:                                              ; preds = %230
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #8
  %244 = load ptr, ptr %12, align 64
  %245 = load ptr, ptr %244, align 64
  %246 = getelementptr inbounds %struct.ata_port, ptr %245, i32 0, i32 5
  %247 = load i32, ptr %246, align 4
  %248 = getelementptr inbounds %struct.ata_link, ptr %244, i32 0, i32 1
  %249 = load i32, ptr %248, align 4
  %250 = load i32, ptr %27, align 4
  %251 = add i32 %250, %249
  %252 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %247, i32 noundef %251, i32 noundef %241) #9
  br label %280

253:                                              ; preds = %230
  %254 = load i8, ptr %33, align 4
  %255 = zext i8 %254 to i32
  %256 = load i8, ptr %34, align 1
  %257 = zext i8 %256 to i32
  %258 = shl nuw nsw i32 %257, 8
  %259 = or i32 %258, %255
  %260 = load i8, ptr %35, align 2
  %261 = zext i8 %260 to i32
  %262 = shl nuw nsw i32 %261, 16
  %263 = or i32 %259, %262
  %264 = load i8, ptr %36, align 1
  %265 = zext i8 %264 to i32
  %266 = shl nuw i32 %265, 24
  %267 = or i32 %263, %266
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #8
  %268 = load i32, ptr %25, align 64
  %269 = icmp eq i32 %267, %268
  br i1 %269, label %329, label %270

270:                                              ; preds = %253
  %271 = load ptr, ptr %12, align 64
  %272 = load ptr, ptr %271, align 64
  %273 = getelementptr inbounds %struct.ata_port, ptr %272, i32 0, i32 5
  %274 = load i32, ptr %273, align 4
  %275 = getelementptr inbounds %struct.ata_link, ptr %271, i32 0, i32 1
  %276 = load i32, ptr %275, align 4
  %277 = load i32, ptr %27, align 4
  %278 = add i32 %277, %276
  %279 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %274, i32 noundef %278) #9
  br label %280

280:                                              ; preds = %270, %243
  %281 = add i32 %126, -1
  br label %304

282:                                              ; preds = %173
  %283 = trunc i32 %174 to i16
  %284 = lshr i16 325, %283
  %285 = and i16 %284, 1
  %286 = icmp eq i16 %285, 0
  br i1 %286, label %176, label %287

287:                                              ; preds = %282, %226, %216, %204, %190, %176, %167
  %288 = phi i32 [ %177, %176 ], [ %227, %226 ], [ -19, %190 ], [ -19, %204 ], [ -19, %216 ], [ -19, %167 ], [ -19, %282 ]
  %289 = load ptr, ptr %12, align 64
  %290 = load ptr, ptr %289, align 64
  %291 = getelementptr inbounds %struct.ata_port, ptr %290, i32 0, i32 5
  %292 = load i32, ptr %291, align 4
  %293 = getelementptr inbounds %struct.ata_link, ptr %289, i32 0, i32 1
  %294 = load i32, ptr %293, align 4
  %295 = load i32, ptr %27, align 4
  %296 = add i32 %295, %294
  %297 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %292, i32 noundef %296, i32 noundef %288) #9
  %298 = add i32 %126, -1
  %299 = icmp eq i32 %288, -19
  br i1 %299, label %300, label %304

300:                                              ; preds = %287
  %301 = load i32, ptr %28, align 4
  %302 = or i32 %301, 3
  store i32 %302, ptr %28, align 4
  %303 = call i32 @llvm.smin.i32(i32 %298, i32 2) #8
  br label %304

304:                                              ; preds = %300, %287, %280
  %305 = phi i32 [ 1, %300 ], [ %125, %287 ], [ %125, %280 ]
  %306 = phi i32 [ %303, %300 ], [ %298, %287 ], [ %281, %280 ]
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %314, label %308

308:                                              ; preds = %304
  br i1 %124, label %311, label %309

309:                                              ; preds = %308
  %310 = call i32 @sata_down_spd_limit(ptr noundef %11, i32 noundef 0) #8
  br label %311

311:                                              ; preds = %309, %308
  %312 = load i32, ptr %24, align 4
  %313 = or i32 %312, 6
  store i32 %313, ptr %24, align 4
  br label %122

314:                                              ; preds = %304
  %315 = load ptr, ptr %12, align 64
  %316 = load ptr, ptr %315, align 64
  %317 = getelementptr inbounds %struct.ata_port, ptr %316, i32 0, i32 5
  %318 = load i32, ptr %317, align 4
  %319 = getelementptr inbounds %struct.ata_link, ptr %315, i32 0, i32 1
  %320 = load i32, ptr %319, align 4
  %321 = load i32, ptr %27, align 4
  %322 = add i32 %321, %320
  %323 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %318, i32 noundef %322, i32 noundef 5) #9
  br label %324

324:                                              ; preds = %314, %146, %141
  %325 = phi i32 [ %305, %314 ], [ %125, %146 ], [ %125, %141 ]
  call fastcc void @sata_pmp_detach(ptr noundef %12) #8
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %328, label %327

327:                                              ; preds = %324, %121
  call void @ata_eh_detach_dev(ptr noundef %12) #8
  br label %596

328:                                              ; preds = %324
  call void @ata_dev_disable(ptr noundef %12) #8
  br label %596

329:                                              ; preds = %253, %229
  store i32 0, ptr %38, align 4
  %330 = load i32, ptr %39, align 4
  %331 = and i32 %330, 8
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %370, label %333

333:                                              ; preds = %329
  %334 = and i32 %330, -9
  store i32 %334, ptr %39, align 4
  %335 = load ptr, ptr %11, align 64
  %336 = getelementptr inbounds %struct.ata_port, ptr %335, i32 0, i32 25, i32 14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(20) %40, i8 0, i64 20, i1 false) #8
  %337 = load ptr, ptr %336, align 64
  %338 = load ptr, ptr %337, align 64
  %339 = getelementptr inbounds %struct.ata_port, ptr %338, i32 0, i32 9
  %340 = load i8, ptr %339, align 4
  store i8 %340, ptr %41, align 1
  store i8 -24, ptr %43, align 1
  store i32 7, ptr %4, align 4
  store i8 96, ptr %44, align 1
  %341 = load i32, ptr %37, align 4
  %342 = trunc i32 %341 to i8
  store i8 %342, ptr %42, align 4
  %343 = trunc i32 %334 to i8
  store i8 %343, ptr %45, align 4
  %344 = lshr i32 %330, 8
  %345 = trunc i32 %344 to i8
  store i8 %345, ptr %46, align 1
  %346 = lshr i32 %330, 16
  %347 = trunc i32 %346 to i8
  store i8 %347, ptr %47, align 2
  %348 = lshr i32 %330, 24
  %349 = trunc i32 %348 to i8
  store i8 %349, ptr %48, align 1
  %350 = call i32 @ata_exec_internal(ptr noundef %336, ptr noundef nonnull %4, ptr noundef null, i32 noundef 3, ptr noundef null, i32 noundef 0, i32 noundef 3000) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %370, label %352

352:                                              ; preds = %333
  %353 = load ptr, ptr %11, align 64
  %354 = getelementptr inbounds %struct.ata_port, ptr %353, i32 0, i32 27
  %355 = load i32, ptr %354, align 4
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %357, label %361

357:                                              ; preds = %352
  %358 = getelementptr inbounds %struct.ata_port, ptr %353, i32 0, i32 26
  %359 = load ptr, ptr %358, align 64
  %360 = icmp eq ptr %359, null
  br i1 %360, label %366, label %361

361:                                              ; preds = %357, %352
  %362 = getelementptr inbounds %struct.ata_port, ptr %353, i32 0, i32 5
  %363 = load i32, ptr %362, align 4
  %364 = load i32, ptr %37, align 4
  %365 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %363, i32 noundef %364, i32 noundef %350) #9
  br label %596

366:                                              ; preds = %357
  %367 = getelementptr inbounds %struct.ata_port, ptr %353, i32 0, i32 5
  %368 = load i32, ptr %367, align 4
  %369 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %368, i32 noundef %350) #9
  br label %596

370:                                              ; preds = %333, %329
  %371 = load ptr, ptr %49, align 8
  %372 = call i32 @_raw_spin_lock_irqsave(ptr noundef %371) #8
  %373 = call ptr @ata_link_next(ptr noundef null, ptr noundef %0, i32 noundef 0) #8
  %374 = icmp eq ptr %373, null
  br i1 %374, label %415, label %375

375:                                              ; preds = %411, %370
  %376 = phi ptr [ %413, %411 ], [ %373, %370 ]
  %377 = phi i32 [ %412, %411 ], [ %372, %370 ]
  %378 = getelementptr inbounds %struct.ata_link, ptr %376, i32 0, i32 5
  %379 = load i32, ptr %378, align 8
  %380 = and i32 %379, 64
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %411, label %382

382:                                              ; preds = %375
  %383 = load ptr, ptr %49, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %383, i32 noundef %377) #8
  %384 = load volatile i32, ptr @jiffies, align 64
  %385 = add i32 %384, 500
  %386 = call i32 @sata_link_hardreset(ptr noundef nonnull %376, ptr noundef nonnull @sata_deb_timing_normal, i32 noundef %385, ptr noundef null, ptr noundef null) #8
  %387 = call i32 @sata_scr_write(ptr noundef nonnull %376, i32 noundef 1, i32 noundef 65536) #8
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %408, label %389

389:                                              ; preds = %382
  %390 = load ptr, ptr %376, align 64
  %391 = getelementptr inbounds %struct.ata_port, ptr %390, i32 0, i32 27
  %392 = load i32, ptr %391, align 4
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %394, label %398

394:                                              ; preds = %389
  %395 = getelementptr inbounds %struct.ata_port, ptr %390, i32 0, i32 26
  %396 = load ptr, ptr %395, align 64
  %397 = icmp eq ptr %396, null
  br i1 %397, label %404, label %398

398:                                              ; preds = %394, %389
  %399 = getelementptr inbounds %struct.ata_port, ptr %390, i32 0, i32 5
  %400 = load i32, ptr %399, align 4
  %401 = getelementptr inbounds %struct.ata_link, ptr %376, i32 0, i32 1
  %402 = load i32, ptr %401, align 4
  %403 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %400, i32 noundef %402, i32 noundef %387) #9
  br label %596

404:                                              ; preds = %394
  %405 = getelementptr inbounds %struct.ata_port, ptr %390, i32 0, i32 5
  %406 = load i32, ptr %405, align 4
  %407 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %406, i32 noundef %387) #9
  br label %596

408:                                              ; preds = %382
  %409 = load ptr, ptr %49, align 8
  %410 = call i32 @_raw_spin_lock_irqsave(ptr noundef %409) #8
  br label %411

411:                                              ; preds = %408, %375
  %412 = phi i32 [ %410, %408 ], [ %377, %375 ]
  %413 = call ptr @ata_link_next(ptr noundef nonnull %376, ptr noundef %0, i32 noundef 0) #8
  %414 = icmp eq ptr %413, null
  br i1 %414, label %415, label %375

415:                                              ; preds = %411, %370
  %416 = phi i32 [ %372, %370 ], [ %412, %411 ]
  %417 = load ptr, ptr %49, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %417, i32 noundef %416) #8
  %418 = load ptr, ptr %50, align 4
  %419 = load ptr, ptr %51, align 4
  %420 = load ptr, ptr %52, align 4
  %421 = load ptr, ptr %53, align 4
  %422 = call i32 @ata_eh_recover(ptr noundef %0, ptr noundef %418, ptr noundef %419, ptr noundef %420, ptr noundef %421, ptr noundef nonnull %7) #8
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %424, label %589

424:                                              ; preds = %415
  %425 = call i32 @sata_scr_read(ptr noundef %11, i32 noundef 4, ptr noundef nonnull %8) #8
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %427, label %430

427:                                              ; preds = %424
  %428 = load i32, ptr %8, align 4
  %429 = call i32 @sata_scr_write(ptr noundef %11, i32 noundef 4, i32 noundef %428) #8
  br label %430

430:                                              ; preds = %427, %424
  %431 = call ptr @ata_link_next(ptr noundef null, ptr noundef %0, i32 noundef 0) #8
  store ptr %431, ptr %7, align 4
  %432 = icmp eq ptr %431, null
  br i1 %432, label %441, label %433

433:                                              ; preds = %438, %430
  %434 = phi ptr [ %439, %438 ], [ %431, %430 ]
  %435 = getelementptr inbounds %struct.ata_link, ptr %434, i32 0, i32 10
  %436 = load i32, ptr %435, align 4
  %437 = icmp ugt i32 %436, 1
  br i1 %437, label %615, label %438

438:                                              ; preds = %433
  %439 = call ptr @ata_link_next(ptr noundef nonnull %434, ptr noundef %0, i32 noundef 0) #8
  store ptr %439, ptr %7, align 4
  %440 = icmp eq ptr %439, null
  br i1 %440, label %441, label %433

441:                                              ; preds = %438, %430
  %442 = load i32, ptr %22, align 4
  %443 = and i32 %442, 128
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %475, label %445

445:                                              ; preds = %441
  %446 = load i32, ptr %39, align 4
  %447 = or i32 %446, 8
  store i32 %447, ptr %39, align 4
  %448 = load ptr, ptr %11, align 64
  %449 = getelementptr inbounds %struct.ata_port, ptr %448, i32 0, i32 25, i32 14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(20) %54, i8 0, i64 20, i1 false) #8
  %450 = load ptr, ptr %449, align 64
  %451 = load ptr, ptr %450, align 64
  %452 = getelementptr inbounds %struct.ata_port, ptr %451, i32 0, i32 9
  %453 = load i8, ptr %452, align 4
  store i8 %453, ptr %55, align 1
  store i8 -24, ptr %57, align 1
  store i32 7, ptr %3, align 4
  store i8 96, ptr %58, align 1
  %454 = load i32, ptr %37, align 4
  %455 = trunc i32 %454 to i8
  store i8 %455, ptr %56, align 4
  %456 = trunc i32 %447 to i8
  store i8 %456, ptr %59, align 4
  %457 = lshr i32 %446, 8
  %458 = trunc i32 %457 to i8
  store i8 %458, ptr %60, align 1
  %459 = lshr i32 %446, 16
  %460 = trunc i32 %459 to i8
  store i8 %460, ptr %61, align 2
  %461 = lshr i32 %446, 24
  %462 = trunc i32 %461 to i8
  store i8 %462, ptr %62, align 1
  %463 = call i32 @ata_exec_internal(ptr noundef %449, ptr noundef nonnull %3, ptr noundef null, i32 noundef 3, ptr noundef null, i32 noundef 0, i32 noundef 3000) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %475, label %465

465:                                              ; preds = %445
  %466 = load ptr, ptr %12, align 64
  %467 = load ptr, ptr %466, align 64
  %468 = getelementptr inbounds %struct.ata_port, ptr %467, i32 0, i32 5
  %469 = load i32, ptr %468, align 4
  %470 = getelementptr inbounds %struct.ata_link, ptr %466, i32 0, i32 1
  %471 = load i32, ptr %470, align 4
  %472 = load i32, ptr %27, align 4
  %473 = add i32 %472, %471
  %474 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %469, i32 noundef %473, i32 noundef %463) #9
  br label %596

475:                                              ; preds = %445, %441
  %476 = load ptr, ptr %11, align 64
  %477 = getelementptr inbounds %struct.ata_port, ptr %476, i32 0, i32 25, i32 14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(20) %63, i8 0, i64 20, i1 false) #8
  %478 = load ptr, ptr %477, align 64
  %479 = load ptr, ptr %478, align 64
  %480 = getelementptr inbounds %struct.ata_port, ptr %479, i32 0, i32 9
  %481 = load i8, ptr %480, align 4
  store i8 %481, ptr %64, align 1
  store i8 -28, ptr %66, align 1
  store i32 7, ptr %2, align 4
  store i8 32, ptr %67, align 1
  %482 = load i32, ptr %37, align 4
  %483 = trunc i32 %482 to i8
  store i8 %483, ptr %65, align 4
  %484 = call i32 @ata_exec_internal(ptr noundef %477, ptr noundef nonnull %2, ptr noundef null, i32 noundef 3, ptr noundef null, i32 noundef 0, i32 noundef 3000) #8
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %496, label %486

486:                                              ; preds = %475
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #8
  %487 = load ptr, ptr %12, align 64
  %488 = load ptr, ptr %487, align 64
  %489 = getelementptr inbounds %struct.ata_port, ptr %488, i32 0, i32 5
  %490 = load i32, ptr %489, align 4
  %491 = getelementptr inbounds %struct.ata_link, ptr %487, i32 0, i32 1
  %492 = load i32, ptr %491, align 4
  %493 = load i32, ptr %27, align 4
  %494 = add i32 %493, %492
  %495 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %490, i32 noundef %494, i32 noundef %484) #9
  br label %596

496:                                              ; preds = %475
  %497 = load i8, ptr %69, align 4
  %498 = zext i8 %497 to i32
  %499 = load i8, ptr %70, align 1
  %500 = zext i8 %499 to i32
  %501 = shl nuw nsw i32 %500, 8
  %502 = or i32 %501, %498
  %503 = load i8, ptr %71, align 2
  %504 = zext i8 %503 to i32
  %505 = shl nuw nsw i32 %504, 16
  %506 = or i32 %502, %505
  %507 = load i8, ptr %72, align 1
  %508 = zext i8 %507 to i32
  %509 = shl nuw i32 %508, 24
  %510 = or i32 %506, %509
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #8
  %511 = call ptr @ata_link_next(ptr noundef null, ptr noundef %0, i32 noundef 0) #8
  store ptr %511, ptr %7, align 4
  %512 = icmp eq ptr %511, null
  br i1 %512, label %615, label %513

513:                                              ; preds = %578, %496
  %514 = phi i32 [ %579, %578 ], [ 0, %496 ]
  %515 = phi ptr [ %581, %578 ], [ %511, %496 ]
  %516 = getelementptr inbounds %struct.ata_link, ptr %515, i32 0, i32 1
  %517 = load i32, ptr %516, align 4
  %518 = shl nuw i32 1, %517
  %519 = and i32 %518, %510
  %520 = icmp eq i32 %519, 0
  br i1 %520, label %578, label %521

521:                                              ; preds = %513
  %522 = call fastcc i32 @sata_pmp_handle_link_fail(ptr noundef nonnull %515, ptr noundef nonnull %6) #8
  %523 = icmp eq i32 %522, 0
  %524 = load ptr, ptr %7, align 4
  br i1 %523, label %539, label %525

525:                                              ; preds = %521
  %526 = getelementptr inbounds %struct.ata_link, ptr %524, i32 0, i32 12, i32 0, i32 6
  %527 = load i32, ptr %526, align 4
  %528 = or i32 %527, 3
  store i32 %528, ptr %526, align 4
  %529 = getelementptr inbounds %struct.ata_link, ptr %524, i32 0, i32 12, i32 0, i32 5
  %530 = load i32, ptr %529, align 4
  %531 = or i32 %530, 1
  store i32 %531, ptr %529, align 4
  %532 = getelementptr inbounds %struct.ata_link, ptr %524, i32 0, i32 12, i32 0, i32 3
  %533 = load i32, ptr %532, align 4
  %534 = or i32 %533, 14
  store i32 %534, ptr %532, align 4
  %535 = getelementptr inbounds %struct.ata_link, ptr %524, i32 0, i32 12, i32 0, i32 2
  %536 = load i32, ptr %535, align 4
  %537 = or i32 %536, 16
  store i32 %537, ptr %535, align 4
  %538 = add i32 %514, 1
  br label %578

539:                                              ; preds = %521
  %540 = load ptr, ptr %524, align 64
  %541 = getelementptr inbounds %struct.ata_port, ptr %540, i32 0, i32 27
  %542 = load i32, ptr %541, align 4
  %543 = icmp eq i32 %542, 0
  br i1 %543, label %544, label %548

544:                                              ; preds = %539
  %545 = getelementptr inbounds %struct.ata_port, ptr %540, i32 0, i32 26
  %546 = load ptr, ptr %545, align 64
  %547 = icmp eq ptr %546, null
  br i1 %547, label %554, label %548

548:                                              ; preds = %544, %539
  %549 = getelementptr inbounds %struct.ata_port, ptr %540, i32 0, i32 5
  %550 = load i32, ptr %549, align 4
  %551 = getelementptr inbounds %struct.ata_link, ptr %524, i32 0, i32 1
  %552 = load i32, ptr %551, align 4
  %553 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %550, i32 noundef %552) #9
  br label %558

554:                                              ; preds = %544
  %555 = getelementptr inbounds %struct.ata_port, ptr %540, i32 0, i32 5
  %556 = load i32, ptr %555, align 4
  %557 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %556) #9
  br label %558

558:                                              ; preds = %554, %548
  %559 = load ptr, ptr %7, align 4
  %560 = load ptr, ptr %559, align 64
  %561 = getelementptr inbounds %struct.ata_port, ptr %560, i32 0, i32 27
  %562 = load i32, ptr %561, align 4
  %563 = icmp eq i32 %562, 0
  br i1 %563, label %564, label %568

564:                                              ; preds = %558
  %565 = getelementptr inbounds %struct.ata_port, ptr %560, i32 0, i32 26
  %566 = load ptr, ptr %565, align 64
  %567 = icmp eq ptr %566, null
  br i1 %567, label %574, label %568

568:                                              ; preds = %564, %558
  %569 = getelementptr inbounds %struct.ata_port, ptr %560, i32 0, i32 5
  %570 = load i32, ptr %569, align 4
  %571 = getelementptr inbounds %struct.ata_link, ptr %559, i32 0, i32 1
  %572 = load i32, ptr %571, align 4
  %573 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %570, i32 noundef %572) #9
  br label %578

574:                                              ; preds = %564
  %575 = getelementptr inbounds %struct.ata_port, ptr %560, i32 0, i32 5
  %576 = load i32, ptr %575, align 4
  %577 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %576) #9
  br label %578

578:                                              ; preds = %574, %568, %525, %513
  %579 = phi i32 [ %538, %525 ], [ %514, %568 ], [ %514, %574 ], [ %514, %513 ]
  %580 = load ptr, ptr %7, align 4
  %581 = call ptr @ata_link_next(ptr noundef %580, ptr noundef %0, i32 noundef 0) #8
  store ptr %581, ptr %7, align 4
  %582 = icmp eq ptr %581, null
  br i1 %582, label %583, label %513

583:                                              ; preds = %578
  %584 = icmp eq i32 %579, 0
  br i1 %584, label %615, label %585

585:                                              ; preds = %583
  %586 = load i32, ptr %73, align 4
  %587 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %586) #9
  br label %588

588:                                              ; preds = %610, %585
  br label %81

589:                                              ; preds = %415
  %590 = load ptr, ptr %7, align 4
  %591 = call fastcc i32 @sata_pmp_handle_link_fail(ptr noundef %590, ptr noundef nonnull %6) #8
  %592 = icmp eq i32 %591, 0
  br i1 %592, label %596, label %593

593:                                              ; preds = %589
  %594 = load i32, ptr %24, align 4
  %595 = or i32 %594, 6
  store i32 %595, ptr %24, align 4
  br label %603

596:                                              ; preds = %589, %486, %465, %404, %398, %366, %361, %328, %327
  %597 = load i32, ptr %68, align 16
  %598 = and i32 %597, 512
  %599 = icmp eq i32 %598, 0
  br i1 %599, label %600, label %615

600:                                              ; preds = %596
  %601 = load i32, ptr %16, align 4
  %602 = icmp eq i32 %601, 0
  br i1 %602, label %603, label %604

603:                                              ; preds = %600, %593
  br label %81

604:                                              ; preds = %600
  %605 = add i32 %611, -1
  %606 = icmp eq i32 %605, 0
  br i1 %606, label %612, label %607

607:                                              ; preds = %604
  %608 = load i32, ptr %24, align 4
  %609 = or i32 %608, 6
  store i32 %609, ptr %24, align 4
  br label %610

610:                                              ; preds = %607, %15
  %611 = phi i32 [ 5, %15 ], [ %605, %607 ]
  br label %588

612:                                              ; preds = %604
  %613 = load i32, ptr %73, align 4
  %614 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %613, i32 noundef 5) #9
  call fastcc void @sata_pmp_detach(ptr noundef %12) #8
  call void @ata_dev_disable(ptr noundef %12) #8
  br label %615

615:                                              ; preds = %612, %596, %583, %496, %433, %98, %94, %91
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %6) #8
  call void @ata_eh_finish(ptr noundef %0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sata_pmp_qc_defer_cmd_switch(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 64
  %5 = load ptr, ptr %4, align 64
  %6 = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 29
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  %9 = icmp eq ptr %7, %4
  %10 = or i1 %8, %9
  br i1 %10, label %11, label %29

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 22
  %13 = load i32, ptr %12, align 32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ata_link, ptr %4, i32 0, i32 3
  %17 = load i32, ptr %16, align 32
  %18 = icmp ult i32 %17, 33
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ata_link, ptr %4, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %19, %15, %11
  %24 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = or i32 %25, 32
  store i32 %26, ptr %24, align 4
  %27 = tail call i32 @ata_std_qc_defer(ptr noundef %0) #8
  br label %29

28:                                               ; preds = %19
  store ptr %4, ptr %6, align 4
  br label %29

29:                                               ; preds = %28, %23, %1
  %30 = phi i32 [ %27, %23 ], [ 2, %1 ], [ 2, %28 ]
  ret i32 %30
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_std_qc_defer(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sata_pmp_scr_read(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #1 {
  %4 = alloca %struct.ata_taskfile, align 4
  %5 = icmp sgt i32 %1, 2
  br i1 %5, label %61, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 64
  %8 = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 25, i32 14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #8
  %9 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(20) %9, i8 0, i64 20, i1 false) #8
  %10 = load ptr, ptr %8, align 64
  %11 = load ptr, ptr %10, align 64
  %12 = getelementptr inbounds %struct.ata_port, ptr %11, i32 0, i32 9
  %13 = load i8, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 2
  store i8 %13, ptr %14, align 1
  %15 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 13
  %16 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 14
  store i8 -28, ptr %16, align 1
  store i32 7, ptr %4, align 4
  %17 = trunc i32 %1 to i8
  %18 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 8
  store i8 %17, ptr %18, align 1
  %19 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = trunc i32 %20 to i8
  store i8 %21, ptr %15, align 4
  %22 = call i32 @ata_exec_internal(ptr noundef %8, ptr noundef nonnull %4, ptr noundef null, i32 noundef 3, ptr noundef null, i32 noundef 0, i32 noundef 3000) #8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %43

24:                                               ; preds = %6
  %25 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 9
  %26 = load i8, ptr %25, align 4
  %27 = zext i8 %26 to i32
  %28 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 10
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i32
  %31 = shl nuw nsw i32 %30, 8
  %32 = or i32 %31, %27
  %33 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 11
  %34 = load i8, ptr %33, align 2
  %35 = zext i8 %34 to i32
  %36 = shl nuw nsw i32 %35, 16
  %37 = or i32 %32, %36
  %38 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 12
  %39 = load i8, ptr %38, align 1
  %40 = zext i8 %39 to i32
  %41 = shl nuw i32 %40, 24
  %42 = or i32 %37, %41
  store i32 %42, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  br label %61

43:                                               ; preds = %6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  %44 = load ptr, ptr %0, align 64
  %45 = getelementptr inbounds %struct.ata_port, ptr %44, i32 0, i32 27
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.ata_port, ptr %44, i32 0, i32 26
  %50 = load ptr, ptr %49, align 64
  %51 = icmp eq ptr %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %48, %43
  %53 = getelementptr inbounds %struct.ata_port, ptr %44, i32 0, i32 5
  %54 = load i32, ptr %53, align 4
  %55 = load i32, ptr %19, align 4
  %56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %54, i32 noundef %55, i32 noundef %1, i32 noundef %22) #9
  br label %61

57:                                               ; preds = %48
  %58 = getelementptr inbounds %struct.ata_port, ptr %44, i32 0, i32 5
  %59 = load i32, ptr %58, align 4
  %60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %59, i32 noundef %1, i32 noundef %22) #9
  br label %61

61:                                               ; preds = %57, %52, %24, %3
  %62 = phi i32 [ -22, %3 ], [ -5, %57 ], [ -5, %52 ], [ 0, %24 ]
  ret i32 %62
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sata_pmp_scr_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = alloca %struct.ata_taskfile, align 4
  %5 = icmp sgt i32 %1, 2
  br i1 %5, label %53, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 64
  %8 = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 25, i32 14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #8
  %9 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(20) %9, i8 0, i64 20, i1 false) #8
  %10 = load ptr, ptr %8, align 64
  %11 = load ptr, ptr %10, align 64
  %12 = getelementptr inbounds %struct.ata_port, ptr %11, i32 0, i32 9
  %13 = load i8, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 2
  store i8 %13, ptr %14, align 1
  %15 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 13
  %16 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 14
  store i8 -24, ptr %16, align 1
  store i32 7, ptr %4, align 4
  %17 = trunc i32 %1 to i8
  %18 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 8
  store i8 %17, ptr %18, align 1
  %19 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = trunc i32 %20 to i8
  store i8 %21, ptr %15, align 4
  %22 = trunc i32 %2 to i8
  %23 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 9
  store i8 %22, ptr %23, align 4
  %24 = lshr i32 %2, 8
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 10
  store i8 %25, ptr %26, align 1
  %27 = lshr i32 %2, 16
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 11
  store i8 %28, ptr %29, align 2
  %30 = lshr i32 %2, 24
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 12
  store i8 %31, ptr %32, align 1
  %33 = call i32 @ata_exec_internal(ptr noundef %8, ptr noundef nonnull %4, ptr noundef null, i32 noundef 3, ptr noundef null, i32 noundef 0, i32 noundef 3000) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %53, label %35

35:                                               ; preds = %6
  %36 = load ptr, ptr %0, align 64
  %37 = getelementptr inbounds %struct.ata_port, ptr %36, i32 0, i32 27
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.ata_port, ptr %36, i32 0, i32 26
  %42 = load ptr, ptr %41, align 64
  %43 = icmp eq ptr %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %40, %35
  %45 = getelementptr inbounds %struct.ata_port, ptr %36, i32 0, i32 5
  %46 = load i32, ptr %45, align 4
  %47 = load i32, ptr %19, align 4
  %48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %46, i32 noundef %47, i32 noundef %1, i32 noundef %33) #9
  br label %53

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct.ata_port, ptr %36, i32 0, i32 5
  %51 = load i32, ptr %50, align 4
  %52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %51, i32 noundef %1, i32 noundef %33) #9
  br label %53

53:                                               ; preds = %49, %44, %6, %3
  %54 = phi i32 [ -22, %3 ], [ -5, %49 ], [ -5, %44 ], [ 0, %6 ]
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sata_pmp_set_lpm(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = tail call i32 @sata_link_scr_lpm(ptr noundef %0, i32 noundef %1, i1 noundef zeroext true) #8
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_link_scr_lpm(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sata_pmp_attach(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 64
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 524288
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ata_link, ptr %2, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, %12
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %10, i32 noundef %15) #9
  br label %289

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 25
  %19 = icmp eq ptr %18, %2
  br i1 %19, label %33, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 26
  %22 = load ptr, ptr %21, align 64
  %23 = icmp eq ptr %22, %2
  br i1 %23, label %33, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 5
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.ata_link, ptr %2, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, %28
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %26, i32 noundef %31) #9
  br label %289

33:                                               ; preds = %20, %17
  %34 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 5
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.ata_link, ptr %2, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, %35
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %39, i32 noundef %42) #9
  br label %289

44:                                               ; preds = %33
  %45 = getelementptr inbounds %struct.ata_link, ptr %2, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48, !prof !9

48:                                               ; preds = %44
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 509, i32 noundef 9, ptr noundef null) #8
  br label %49

49:                                               ; preds = %48, %44
  store i32 15, ptr %45, align 4
  %50 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 25
  %51 = tail call fastcc i32 @sata_pmp_read_gscr(ptr noundef %0, ptr noundef %50)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %287

53:                                               ; preds = %49
  %54 = tail call fastcc i32 @sata_pmp_configure(ptr noundef %0, i32 noundef 1)
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %287

56:                                               ; preds = %53
  %57 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 2
  %58 = load i32, ptr %57, align 8
  %59 = and i32 %58, 15
  %60 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 28
  %61 = load ptr, ptr %60, align 8
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %129

63:                                               ; preds = %56
  %64 = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 66240, i32 noundef 3328, i32 noundef 5) #10
  %65 = icmp eq ptr %64, null
  br i1 %65, label %151, label %66

66:                                               ; preds = %63
  tail call void @ata_link_init(ptr noundef %3, ptr noundef nonnull %64, i32 noundef 0) #8
  %67 = getelementptr %struct.ata_link, ptr %64, i32 1
  tail call void @ata_link_init(ptr noundef %3, ptr noundef %67, i32 noundef 1) #8
  %68 = getelementptr %struct.ata_link, ptr %64, i32 2
  tail call void @ata_link_init(ptr noundef %3, ptr noundef %68, i32 noundef 2) #8
  %69 = getelementptr %struct.ata_link, ptr %64, i32 3
  tail call void @ata_link_init(ptr noundef %3, ptr noundef %69, i32 noundef 3) #8
  %70 = getelementptr %struct.ata_link, ptr %64, i32 4
  tail call void @ata_link_init(ptr noundef %3, ptr noundef %70, i32 noundef 4) #8
  %71 = getelementptr %struct.ata_link, ptr %64, i32 5
  tail call void @ata_link_init(ptr noundef %3, ptr noundef %71, i32 noundef 5) #8
  %72 = getelementptr %struct.ata_link, ptr %64, i32 6
  tail call void @ata_link_init(ptr noundef %3, ptr noundef %72, i32 noundef 6) #8
  %73 = getelementptr %struct.ata_link, ptr %64, i32 7
  tail call void @ata_link_init(ptr noundef %3, ptr noundef %73, i32 noundef 7) #8
  %74 = getelementptr %struct.ata_link, ptr %64, i32 8
  tail call void @ata_link_init(ptr noundef %3, ptr noundef %74, i32 noundef 8) #8
  %75 = getelementptr %struct.ata_link, ptr %64, i32 9
  tail call void @ata_link_init(ptr noundef %3, ptr noundef %75, i32 noundef 9) #8
  %76 = getelementptr %struct.ata_link, ptr %64, i32 10
  tail call void @ata_link_init(ptr noundef %3, ptr noundef %76, i32 noundef 10) #8
  %77 = getelementptr %struct.ata_link, ptr %64, i32 11
  tail call void @ata_link_init(ptr noundef %3, ptr noundef %77, i32 noundef 11) #8
  %78 = getelementptr %struct.ata_link, ptr %64, i32 12
  tail call void @ata_link_init(ptr noundef %3, ptr noundef %78, i32 noundef 12) #8
  %79 = getelementptr %struct.ata_link, ptr %64, i32 13
  tail call void @ata_link_init(ptr noundef %3, ptr noundef %79, i32 noundef 13) #8
  %80 = getelementptr %struct.ata_link, ptr %64, i32 14
  tail call void @ata_link_init(ptr noundef %3, ptr noundef %80, i32 noundef 14) #8
  store ptr %64, ptr %60, align 8
  %81 = tail call i32 @ata_tlink_add(ptr noundef nonnull %64) #8
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %66
  tail call void @kfree(ptr noundef nonnull %64) #8
  store ptr null, ptr %60, align 8
  br label %151

84:                                               ; preds = %126, %123, %120, %117, %114, %111, %108, %105, %102, %99, %96, %93, %90, %87
  %85 = phi i32 [ 13, %126 ], [ 12, %123 ], [ 11, %120 ], [ 10, %117 ], [ 9, %114 ], [ 8, %111 ], [ 7, %108 ], [ 6, %105 ], [ 5, %102 ], [ 4, %99 ], [ 3, %96 ], [ 2, %93 ], [ 1, %90 ], [ 0, %87 ]
  %86 = phi i32 [ %127, %126 ], [ %124, %123 ], [ %121, %120 ], [ %118, %117 ], [ %115, %114 ], [ %112, %111 ], [ %109, %108 ], [ %106, %105 ], [ %103, %102 ], [ %100, %99 ], [ %97, %96 ], [ %94, %93 ], [ %91, %90 ], [ %88, %87 ]
  br label %144

87:                                               ; preds = %66
  %88 = tail call i32 @ata_tlink_add(ptr noundef %67) #8
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %84

90:                                               ; preds = %87
  %91 = tail call i32 @ata_tlink_add(ptr noundef %68) #8
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %84

93:                                               ; preds = %90
  %94 = tail call i32 @ata_tlink_add(ptr noundef %69) #8
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %84

96:                                               ; preds = %93
  %97 = tail call i32 @ata_tlink_add(ptr noundef %70) #8
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %84

99:                                               ; preds = %96
  %100 = tail call i32 @ata_tlink_add(ptr noundef %71) #8
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %84

102:                                              ; preds = %99
  %103 = tail call i32 @ata_tlink_add(ptr noundef %72) #8
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %84

105:                                              ; preds = %102
  %106 = tail call i32 @ata_tlink_add(ptr noundef %73) #8
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %84

108:                                              ; preds = %105
  %109 = tail call i32 @ata_tlink_add(ptr noundef %74) #8
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %84

111:                                              ; preds = %108
  %112 = tail call i32 @ata_tlink_add(ptr noundef %75) #8
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %84

114:                                              ; preds = %111
  %115 = tail call i32 @ata_tlink_add(ptr noundef %76) #8
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %84

117:                                              ; preds = %114
  %118 = tail call i32 @ata_tlink_add(ptr noundef %77) #8
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %84

120:                                              ; preds = %117
  %121 = tail call i32 @ata_tlink_add(ptr noundef %78) #8
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %84

123:                                              ; preds = %120
  %124 = tail call i32 @ata_tlink_add(ptr noundef %79) #8
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %84

126:                                              ; preds = %123
  %127 = tail call i32 @ata_tlink_add(ptr noundef %80) #8
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %84

129:                                              ; preds = %126, %56
  %130 = phi ptr [ %61, %56 ], [ %64, %126 ]
  %131 = icmp eq i32 %59, 0
  br i1 %131, label %162, label %132

132:                                              ; preds = %132, %129
  %133 = phi i32 [ %142, %132 ], [ 0, %129 ]
  %134 = getelementptr %struct.ata_link, ptr %130, i32 %133, i32 12
  %135 = getelementptr %struct.ata_link, ptr %130, i32 %133, i32 5
  store i32 0, ptr %135, align 8
  %136 = getelementptr inbounds %struct.ata_eh_info, ptr %134, i32 0, i32 6
  %137 = load i32, ptr %136, align 4
  %138 = or i32 %137, 3
  store i32 %138, ptr %136, align 4
  %139 = getelementptr inbounds %struct.ata_eh_info, ptr %134, i32 0, i32 3
  %140 = load i32, ptr %139, align 4
  %141 = or i32 %140, 6
  store i32 %141, ptr %139, align 4
  %142 = add nuw nsw i32 %133, 1
  %143 = icmp eq i32 %142, %59
  br i1 %143, label %162, label %132

144:                                              ; preds = %144, %84
  %145 = phi i32 [ %147, %144 ], [ %85, %84 ]
  %146 = getelementptr %struct.ata_link, ptr %64, i32 %145
  tail call void @ata_tlink_delete(ptr noundef %146) #8
  %147 = add nsw i32 %145, -1
  %148 = icmp eq i32 %145, 0
  br i1 %148, label %149, label %144

149:                                              ; preds = %144
  tail call void @kfree(ptr noundef nonnull %64) #8
  store ptr null, ptr %60, align 8
  %150 = icmp eq i32 %86, 0
  br i1 %150, label %162, label %151

151:                                              ; preds = %149, %83, %63
  %152 = phi i32 [ %86, %149 ], [ %81, %83 ], [ -12, %63 ]
  %153 = load ptr, ptr %0, align 64
  %154 = load ptr, ptr %153, align 64
  %155 = getelementptr inbounds %struct.ata_port, ptr %154, i32 0, i32 5
  %156 = load i32, ptr %155, align 4
  %157 = getelementptr inbounds %struct.ata_link, ptr %153, i32 0, i32 1
  %158 = load i32, ptr %157, align 4
  %159 = load i32, ptr %34, align 4
  %160 = add i32 %159, %158
  %161 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %156, i32 noundef %160) #9
  br label %287

162:                                              ; preds = %149, %132, %129
  %163 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 2
  %164 = load ptr, ptr %163, align 8
  %165 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %164) #8
  %166 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 27
  %167 = load i32, ptr %166, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %170, label %169, !prof !9

169:                                              ; preds = %162
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 530, i32 noundef 9, ptr noundef null) #8
  br label %170

170:                                              ; preds = %169, %162
  %171 = load i32, ptr %57, align 8
  %172 = and i32 %171, 15
  store i32 %172, ptr %166, align 4
  %173 = load ptr, ptr %163, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %173, i32 noundef %165) #8
  %174 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 25, i32 14, i32 0, i32 25
  %175 = load i32, ptr %174, align 4
  %176 = lshr i32 %175, 16
  %177 = trunc i32 %175 to i16
  switch i16 %177, label %252 [
    i16 4245, label %178
    i16 6523, label %240
  ]

178:                                              ; preds = %170
  %179 = trunc i32 %176 to i16
  switch i16 %179, label %228 [
    i16 14374, label %180
    i16 14118, label %180
    i16 18211, label %199
    i16 18214, label %209
  ]

180:                                              ; preds = %178, %178
  %181 = tail call ptr @ata_link_next(ptr noundef null, ptr noundef %3, i32 noundef 0) #8
  %182 = icmp eq ptr %181, null
  br i1 %182, label %272, label %183

183:                                              ; preds = %196, %180
  %184 = phi ptr [ %197, %196 ], [ %181, %180 ]
  %185 = getelementptr inbounds %struct.ata_link, ptr %184, i32 0, i32 5
  %186 = load i32, ptr %185, align 8
  %187 = or i32 %186, 256
  store i32 %187, ptr %185, align 8
  %188 = getelementptr inbounds %struct.ata_link, ptr %184, i32 0, i32 1
  %189 = load i32, ptr %188, align 4
  %190 = icmp slt i32 %189, 5
  br i1 %190, label %193, label %191

191:                                              ; preds = %183
  %192 = icmp eq i32 %189, 5
  br i1 %192, label %193, label %196

193:                                              ; preds = %191, %183
  %194 = phi i32 [ 268, %183 ], [ 276, %191 ]
  %195 = or i32 %194, %186
  store i32 %195, ptr %185, align 8
  br label %196

196:                                              ; preds = %193, %191
  %197 = tail call ptr @ata_link_next(ptr noundef nonnull %184, ptr noundef %3, i32 noundef 0) #8
  %198 = icmp eq ptr %197, null
  br i1 %198, label %272, label %183

199:                                              ; preds = %178
  %200 = tail call ptr @ata_link_next(ptr noundef null, ptr noundef %3, i32 noundef 0) #8
  %201 = icmp eq ptr %200, null
  br i1 %201, label %272, label %202

202:                                              ; preds = %202, %199
  %203 = phi ptr [ %207, %202 ], [ %200, %199 ]
  %204 = getelementptr inbounds %struct.ata_link, ptr %203, i32 0, i32 5
  %205 = load i32, ptr %204, align 8
  %206 = or i32 %205, 268
  store i32 %206, ptr %204, align 8
  %207 = tail call ptr @ata_link_next(ptr noundef nonnull %203, ptr noundef %3, i32 noundef 0) #8
  %208 = icmp eq ptr %207, null
  br i1 %208, label %272, label %202

209:                                              ; preds = %178
  %210 = tail call ptr @ata_link_next(ptr noundef null, ptr noundef %3, i32 noundef 0) #8
  %211 = icmp eq ptr %210, null
  br i1 %211, label %272, label %212

212:                                              ; preds = %225, %209
  %213 = phi ptr [ %226, %225 ], [ %210, %209 ]
  %214 = getelementptr inbounds %struct.ata_link, ptr %213, i32 0, i32 5
  %215 = load i32, ptr %214, align 8
  %216 = or i32 %215, 256
  store i32 %216, ptr %214, align 8
  %217 = getelementptr inbounds %struct.ata_link, ptr %213, i32 0, i32 1
  %218 = load i32, ptr %217, align 4
  %219 = icmp slt i32 %218, 6
  br i1 %219, label %222, label %220

220:                                              ; preds = %212
  %221 = icmp eq i32 %218, 6
  br i1 %221, label %222, label %225

222:                                              ; preds = %220, %212
  %223 = phi i32 [ 268, %212 ], [ 276, %220 ]
  %224 = or i32 %223, %215
  store i32 %224, ptr %214, align 8
  br label %225

225:                                              ; preds = %222, %220
  %226 = tail call ptr @ata_link_next(ptr noundef nonnull %213, ptr noundef %3, i32 noundef 0) #8
  %227 = icmp eq ptr %226, null
  br i1 %227, label %272, label %212

228:                                              ; preds = %178
  %229 = freeze i32 %175
  %230 = and i32 %229, -1114112
  %231 = icmp eq i32 %230, 1461911552
  br i1 %231, label %233, label %232

232:                                              ; preds = %228
  switch i16 %179, label %272 [
    i16 22340, label %233
    i16 22324, label %233
  ]

233:                                              ; preds = %232, %232, %228
  %234 = load ptr, ptr %60, align 8
  %235 = load i32, ptr %166, align 4
  %236 = add i32 %235, -1
  %237 = getelementptr %struct.ata_link, ptr %234, i32 %236, i32 5
  %238 = load i32, ptr %237, align 8
  %239 = or i32 %238, 32
  store i32 %239, ptr %237, align 8
  br label %272

240:                                              ; preds = %170
  %241 = trunc i32 %176 to i16
  switch i16 %241, label %272 [
    i16 9042, label %242
    i16 805, label %242
  ]

242:                                              ; preds = %240, %240
  %243 = tail call ptr @ata_link_next(ptr noundef null, ptr noundef %3, i32 noundef 0) #8
  %244 = icmp eq ptr %243, null
  br i1 %244, label %272, label %245

245:                                              ; preds = %245, %242
  %246 = phi ptr [ %250, %245 ], [ %243, %242 ]
  %247 = getelementptr inbounds %struct.ata_link, ptr %246, i32 0, i32 5
  %248 = load i32, ptr %247, align 8
  %249 = or i32 %248, 268
  store i32 %249, ptr %247, align 8
  %250 = tail call ptr @ata_link_next(ptr noundef nonnull %246, ptr noundef %3, i32 noundef 0) #8
  %251 = icmp eq ptr %250, null
  br i1 %251, label %272, label %245

252:                                              ; preds = %170
  %253 = and i32 %175, 65535
  %254 = icmp eq i32 %253, 4523
  %255 = icmp eq i32 %176, 16704
  %256 = and i1 %254, %255
  br i1 %256, label %257, label %272

257:                                              ; preds = %252
  %258 = tail call ptr @ata_link_next(ptr noundef null, ptr noundef %3, i32 noundef 0) #8
  %259 = icmp eq ptr %258, null
  br i1 %259, label %272, label %260

260:                                              ; preds = %269, %257
  %261 = phi ptr [ %270, %269 ], [ %258, %257 ]
  %262 = getelementptr inbounds %struct.ata_link, ptr %261, i32 0, i32 1
  %263 = load i32, ptr %262, align 4
  %264 = icmp eq i32 %263, 4
  br i1 %264, label %265, label %269

265:                                              ; preds = %260
  %266 = getelementptr inbounds %struct.ata_link, ptr %261, i32 0, i32 5
  %267 = load i32, ptr %266, align 8
  %268 = or i32 %267, 64
  store i32 %268, ptr %266, align 8
  br label %269

269:                                              ; preds = %265, %260
  %270 = tail call ptr @ata_link_next(ptr noundef nonnull %261, ptr noundef %3, i32 noundef 0) #8
  %271 = icmp eq ptr %270, null
  br i1 %271, label %272, label %260

272:                                              ; preds = %269, %257, %252, %245, %242, %240, %233, %232, %225, %209, %202, %199, %196, %180
  %273 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 1
  %274 = load ptr, ptr %273, align 4
  %275 = getelementptr inbounds %struct.ata_port_operations, ptr %274, i32 0, i32 29
  %276 = load ptr, ptr %275, align 4
  %277 = icmp eq ptr %276, null
  br i1 %277, label %279, label %278

278:                                              ; preds = %272
  tail call void %276(ptr noundef %3) #8
  br label %279

279:                                              ; preds = %278, %272
  %280 = tail call ptr @ata_link_next(ptr noundef null, ptr noundef %3, i32 noundef 0) #8
  %281 = icmp eq ptr %280, null
  br i1 %281, label %289, label %282

282:                                              ; preds = %282, %279
  %283 = phi ptr [ %285, %282 ], [ %280, %279 ]
  %284 = tail call i32 @sata_link_init_spd(ptr noundef nonnull %283) #8
  %285 = tail call ptr @ata_link_next(ptr noundef nonnull %283, ptr noundef %3, i32 noundef 0) #8
  %286 = icmp eq ptr %285, null
  br i1 %286, label %289, label %282

287:                                              ; preds = %151, %53, %49
  %288 = phi i32 [ %51, %49 ], [ %54, %53 ], [ %152, %151 ]
  store i32 0, ptr %45, align 4
  br label %289

289:                                              ; preds = %287, %282, %279, %37, %24, %8
  %290 = phi i32 [ -22, %37 ], [ %288, %287 ], [ -22, %24 ], [ -22, %8 ], [ 0, %279 ], [ 0, %282 ]
  ret i32 %290
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sata_pmp_read_gscr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #1 {
  %3 = alloca %struct.ata_taskfile, align 4
  %4 = getelementptr inbounds i8, ptr %3, i32 4
  %5 = getelementptr inbounds %struct.ata_taskfile, ptr %3, i32 0, i32 2
  %6 = getelementptr inbounds %struct.ata_taskfile, ptr %3, i32 0, i32 13
  %7 = getelementptr inbounds %struct.ata_taskfile, ptr %3, i32 0, i32 14
  %8 = getelementptr inbounds %struct.ata_taskfile, ptr %3, i32 0, i32 8
  %9 = getelementptr inbounds %struct.ata_taskfile, ptr %3, i32 0, i32 9
  %10 = getelementptr inbounds %struct.ata_taskfile, ptr %3, i32 0, i32 10
  %11 = getelementptr inbounds %struct.ata_taskfile, ptr %3, i32 0, i32 11
  %12 = getelementptr inbounds %struct.ata_taskfile, ptr %3, i32 0, i32 12
  br label %13

13:                                               ; preds = %41, %2
  %14 = phi i32 [ 0, %2 ], [ %57, %41 ]
  %15 = getelementptr [7 x i32], ptr @sata_pmp_read_gscr.gscr_to_read, i32 0, i32 %14
  %16 = load i32, ptr %15, align 4
  %17 = load ptr, ptr %0, align 64
  %18 = load ptr, ptr %17, align 64
  %19 = getelementptr inbounds %struct.ata_port, ptr %18, i32 0, i32 25, i32 14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(20) %4, i8 0, i64 20, i1 false) #8
  %20 = load ptr, ptr %19, align 64
  %21 = load ptr, ptr %20, align 64
  %22 = getelementptr inbounds %struct.ata_port, ptr %21, i32 0, i32 9
  %23 = load i8, ptr %22, align 4
  store i8 %23, ptr %5, align 1
  store i8 -28, ptr %7, align 1
  store i32 7, ptr %3, align 4
  %24 = trunc i32 %16 to i8
  store i8 %24, ptr %8, align 1
  %25 = getelementptr inbounds %struct.ata_link, ptr %17, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = trunc i32 %26 to i8
  store i8 %27, ptr %6, align 4
  %28 = call i32 @ata_exec_internal(ptr noundef %19, ptr noundef nonnull %3, ptr noundef null, i32 noundef 3, ptr noundef null, i32 noundef 0, i32 noundef 3000) #8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  %31 = load ptr, ptr %0, align 64
  %32 = load ptr, ptr %31, align 64
  %33 = getelementptr inbounds %struct.ata_port, ptr %32, i32 0, i32 5
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.ata_link, ptr %31, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = add i32 %38, %36
  %40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %34, i32 noundef %39, i32 noundef %16, i32 noundef %28) #9
  br label %59

41:                                               ; preds = %13
  %42 = getelementptr i32, ptr %1, i32 %16
  %43 = load i8, ptr %9, align 4
  %44 = zext i8 %43 to i32
  %45 = load i8, ptr %10, align 1
  %46 = zext i8 %45 to i32
  %47 = shl nuw nsw i32 %46, 8
  %48 = or i32 %47, %44
  %49 = load i8, ptr %11, align 2
  %50 = zext i8 %49 to i32
  %51 = shl nuw nsw i32 %50, 16
  %52 = or i32 %48, %51
  %53 = load i8, ptr %12, align 1
  %54 = zext i8 %53 to i32
  %55 = shl nuw i32 %54, 24
  %56 = or i32 %52, %55
  store i32 %56, ptr %42, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  %57 = add nuw nsw i32 %14, 1
  %58 = icmp eq i32 %57, 7
  br i1 %58, label %59, label %13

59:                                               ; preds = %41, %30
  %60 = phi i32 [ -5, %30 ], [ 0, %41 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sata_pmp_configure(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = alloca %struct.ata_taskfile, align 4
  %4 = alloca %struct.ata_taskfile, align 4
  %5 = alloca %struct.ata_taskfile, align 4
  %6 = load ptr, ptr %0, align 64
  %7 = load ptr, ptr %6, align 64
  %8 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 25
  %9 = load i32, ptr %8, align 4
  %10 = lshr i32 %9, 16
  %11 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 15
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %148, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 262144
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %15
  %21 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 64
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = or i32 %27, 128
  store i32 %28, ptr %26, align 4
  %29 = load ptr, ptr %6, align 64
  br label %30

30:                                               ; preds = %25, %20, %15
  %31 = phi ptr [ %29, %25 ], [ %7, %20 ], [ %7, %15 ]
  %32 = getelementptr inbounds %struct.ata_port, ptr %31, i32 0, i32 25, i32 14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #8
  %33 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(20) %33, i8 0, i64 20, i1 false) #8
  %34 = load ptr, ptr %32, align 64
  %35 = load ptr, ptr %34, align 64
  %36 = getelementptr inbounds %struct.ata_port, ptr %35, i32 0, i32 9
  %37 = load i8, ptr %36, align 4
  %38 = getelementptr inbounds %struct.ata_taskfile, ptr %5, i32 0, i32 2
  store i8 %37, ptr %38, align 1
  %39 = getelementptr inbounds %struct.ata_taskfile, ptr %5, i32 0, i32 13
  %40 = getelementptr inbounds %struct.ata_taskfile, ptr %5, i32 0, i32 14
  store i8 -24, ptr %40, align 1
  store i32 7, ptr %5, align 4
  %41 = getelementptr inbounds %struct.ata_taskfile, ptr %5, i32 0, i32 8
  store i8 33, ptr %41, align 1
  %42 = getelementptr inbounds %struct.ata_link, ptr %6, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = trunc i32 %43 to i8
  store i8 %44, ptr %39, align 4
  %45 = getelementptr inbounds %struct.ata_taskfile, ptr %5, i32 0, i32 10
  store i8 0, ptr %45, align 1
  %46 = getelementptr inbounds %struct.ata_taskfile, ptr %5, i32 0, i32 11
  store i8 1, ptr %46, align 2
  %47 = call i32 @ata_exec_internal(ptr noundef %32, ptr noundef nonnull %5, ptr noundef null, i32 noundef 3, ptr noundef null, i32 noundef 0, i32 noundef 3000) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %148

49:                                               ; preds = %30
  %50 = and i32 %9, 65535
  %51 = icmp eq i32 %50, 4245
  br i1 %51, label %52, label %102

52:                                               ; preds = %49
  %53 = trunc i32 %10 to i16
  switch i16 %53, label %102 [
    i16 14374, label %54
    i16 14118, label %54
  ]

54:                                               ; preds = %52, %52
  %55 = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 25
  %56 = load ptr, ptr %55, align 64
  %57 = getelementptr inbounds %struct.ata_port, ptr %56, i32 0, i32 25, i32 14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #8
  %58 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(20) %58, i8 0, i64 20, i1 false) #8
  %59 = load ptr, ptr %57, align 64
  %60 = load ptr, ptr %59, align 64
  %61 = getelementptr inbounds %struct.ata_port, ptr %60, i32 0, i32 9
  %62 = load i8, ptr %61, align 4
  %63 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 2
  store i8 %62, ptr %63, align 1
  %64 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 13
  %65 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 14
  store i8 -28, ptr %65, align 1
  store i32 7, ptr %4, align 4
  %66 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 8
  store i8 -127, ptr %66, align 1
  %67 = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 25, i32 1
  %68 = load i32, ptr %67, align 4
  %69 = trunc i32 %68 to i8
  store i8 %69, ptr %64, align 4
  %70 = call i32 @ata_exec_internal(ptr noundef %57, ptr noundef nonnull %4, ptr noundef null, i32 noundef 3, ptr noundef null, i32 noundef 0, i32 noundef 3000) #8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %54
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  br label %148

73:                                               ; preds = %54
  %74 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 9
  %75 = load i8, ptr %74, align 4
  %76 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 10
  %77 = load i8, ptr %76, align 1
  %78 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 11
  %79 = load i8, ptr %78, align 2
  %80 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 12
  %81 = load i8, ptr %80, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  %82 = and i8 %75, -2
  %83 = load ptr, ptr %55, align 64
  %84 = getelementptr inbounds %struct.ata_port, ptr %83, i32 0, i32 25, i32 14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
  %85 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(20) %85, i8 0, i64 20, i1 false) #8
  %86 = load ptr, ptr %84, align 64
  %87 = load ptr, ptr %86, align 64
  %88 = getelementptr inbounds %struct.ata_port, ptr %87, i32 0, i32 9
  %89 = load i8, ptr %88, align 4
  %90 = getelementptr inbounds %struct.ata_taskfile, ptr %3, i32 0, i32 2
  store i8 %89, ptr %90, align 1
  %91 = getelementptr inbounds %struct.ata_taskfile, ptr %3, i32 0, i32 13
  %92 = getelementptr inbounds %struct.ata_taskfile, ptr %3, i32 0, i32 14
  store i8 -24, ptr %92, align 1
  store i32 7, ptr %3, align 4
  %93 = getelementptr inbounds %struct.ata_taskfile, ptr %3, i32 0, i32 8
  store i8 -127, ptr %93, align 1
  %94 = load i32, ptr %67, align 4
  %95 = trunc i32 %94 to i8
  store i8 %95, ptr %91, align 4
  %96 = getelementptr inbounds %struct.ata_taskfile, ptr %3, i32 0, i32 9
  store i8 %82, ptr %96, align 4
  %97 = getelementptr inbounds %struct.ata_taskfile, ptr %3, i32 0, i32 10
  store i8 %77, ptr %97, align 1
  %98 = getelementptr inbounds %struct.ata_taskfile, ptr %3, i32 0, i32 11
  store i8 %79, ptr %98, align 2
  %99 = getelementptr inbounds %struct.ata_taskfile, ptr %3, i32 0, i32 12
  store i8 %81, ptr %99, align 1
  %100 = call i32 @ata_exec_internal(ptr noundef %84, ptr noundef nonnull %3, ptr noundef null, i32 noundef 3, ptr noundef null, i32 noundef 0, i32 noundef 3000) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %148

102:                                              ; preds = %73, %52, %49
  %103 = icmp eq i32 %1, 0
  br i1 %103, label %162, label %104

104:                                              ; preds = %102
  %105 = load ptr, ptr %0, align 64
  %106 = load ptr, ptr %105, align 64
  %107 = getelementptr inbounds %struct.ata_port, ptr %106, i32 0, i32 5
  %108 = load i32, ptr %107, align 4
  %109 = getelementptr inbounds %struct.ata_link, ptr %105, i32 0, i32 1
  %110 = load i32, ptr %109, align 4
  %111 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 1
  %112 = load i32, ptr %111, align 4
  %113 = add i32 %112, %110
  %114 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 1
  %115 = load i32, ptr %114, align 4
  %116 = and i32 %115, 8
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %104
  %119 = and i32 %115, 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %118
  %122 = and i32 %115, 2
  %123 = icmp eq i32 %122, 0
  %124 = select i1 %123, ptr @.str.20, ptr @.str.19
  br label %125

125:                                              ; preds = %121, %118, %104
  %126 = phi ptr [ @.str.17, %104 ], [ @.str.18, %118 ], [ %124, %121 ]
  %127 = lshr i32 %115, 8
  %128 = and i32 %127, 255
  %129 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 96
  %130 = load i32, ptr %129, align 4
  %131 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 64
  %132 = load i32, ptr %131, align 4
  %133 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %108, i32 noundef %113, ptr noundef nonnull %126, i32 noundef %50, i32 noundef %10, i32 noundef %128, i32 noundef %13, i32 noundef %130, i32 noundef %132) #9
  %134 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 3
  %135 = load i32, ptr %134, align 4
  %136 = and i32 %135, 128
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %162

138:                                              ; preds = %125
  %139 = load ptr, ptr %0, align 64
  %140 = load ptr, ptr %139, align 64
  %141 = getelementptr inbounds %struct.ata_port, ptr %140, i32 0, i32 5
  %142 = load i32, ptr %141, align 4
  %143 = getelementptr inbounds %struct.ata_link, ptr %139, i32 0, i32 1
  %144 = load i32, ptr %143, align 4
  %145 = load i32, ptr %111, align 4
  %146 = add i32 %145, %144
  %147 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %142, i32 noundef %146) #9
  br label %162

148:                                              ; preds = %73, %72, %30, %2
  %149 = phi i32 [ 0, %2 ], [ %47, %30 ], [ %100, %73 ], [ %70, %72 ]
  %150 = phi ptr [ @.str.10, %2 ], [ @.str.11, %30 ], [ @.str.13, %73 ], [ @.str.12, %72 ]
  %151 = phi i32 [ -22, %2 ], [ -5, %30 ], [ -5, %73 ], [ -5, %72 ]
  %152 = load ptr, ptr %0, align 64
  %153 = load ptr, ptr %152, align 64
  %154 = getelementptr inbounds %struct.ata_port, ptr %153, i32 0, i32 5
  %155 = load i32, ptr %154, align 4
  %156 = getelementptr inbounds %struct.ata_link, ptr %152, i32 0, i32 1
  %157 = load i32, ptr %156, align 4
  %158 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 1
  %159 = load i32, ptr %158, align 4
  %160 = add i32 %159, %157
  %161 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %155, i32 noundef %160, ptr noundef nonnull %150, i32 noundef %149) #9
  br label %162

162:                                              ; preds = %148, %138, %125, %102
  %163 = phi i32 [ %151, %148 ], [ 0, %125 ], [ 0, %138 ], [ 0, %102 ]
  ret i32 %163
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_link_next(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_link_init_spd(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_eh_autopsy(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_eh_report(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_eh_finish(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_exec_internal(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_link_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_tlink_add(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_tlink_delete(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_eh_recover(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_dev_next(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_dev_disable(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_scr_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_scr_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sata_pmp_handle_link_fail(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #1 {
  %3 = load ptr, ptr %0, align 64
  %4 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr i32, ptr %1, i32 %5
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = add i32 %7, -1
  store i32 %10, ptr %6, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %45

12:                                               ; preds = %9, %2
  %13 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 5
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 64
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %42

17:                                               ; preds = %12
  %18 = load ptr, ptr %0, align 64
  %19 = getelementptr inbounds %struct.ata_port, ptr %18, i32 0, i32 27
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.ata_port, ptr %18, i32 0, i32 26
  %24 = load ptr, ptr %23, align 64
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %22, %17
  %27 = getelementptr inbounds %struct.ata_port, ptr %18, i32 0, i32 5
  %28 = load i32, ptr %27, align 4
  %29 = load i32, ptr %4, align 4
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %28, i32 noundef %29, i32 noundef 3) #9
  br label %35

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.ata_port, ptr %18, i32 0, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %33, i32 noundef 3) #9
  br label %35

35:                                               ; preds = %31, %26
  %36 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 2
  %37 = load ptr, ptr %36, align 8
  %38 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %37) #8
  %39 = load i32, ptr %13, align 8
  %40 = or i32 %39, 64
  store i32 %40, ptr %13, align 8
  %41 = load ptr, ptr %36, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %41, i32 noundef %38) #8
  br label %42

42:                                               ; preds = %35, %12
  %43 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 14
  tail call void @ata_dev_disable(ptr noundef %43) #8
  %44 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 12, i32 0, i32 3
  store i32 0, ptr %44, align 4
  br label %45

45:                                               ; preds = %42, %9
  %46 = phi i32 [ 0, %42 ], [ 1, %9 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sata_pmp_detach(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 64
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ata_link, ptr %2, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, %7
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %5, i32 noundef %10) #9
  %12 = load ptr, ptr %2, align 64
  %13 = getelementptr inbounds %struct.ata_port, ptr %12, i32 0, i32 25
  %14 = icmp eq ptr %13, %2
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.ata_port, ptr %12, i32 0, i32 26
  %17 = load ptr, ptr %16, align 64
  %18 = icmp eq ptr %17, %2
  br i1 %18, label %19, label %25

19:                                               ; preds = %15, %1
  %20 = load i32, ptr %8, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, ptr %6, align 4
  %24 = icmp eq i32 %23, 15
  br i1 %24, label %26, label %25, !prof !9

25:                                               ; preds = %22, %19, %15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 569, i32 noundef 9, ptr noundef null) #8
  br label %26

26:                                               ; preds = %25, %22
  %27 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.ata_port_operations, ptr %28, i32 0, i32 30
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  tail call void %30(ptr noundef %3) #8
  br label %33

33:                                               ; preds = %32, %26
  %34 = tail call ptr @ata_link_next(ptr noundef null, ptr noundef %3, i32 noundef 0) #8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %36, %33
  %37 = phi ptr [ %39, %36 ], [ %34, %33 ]
  %38 = getelementptr inbounds %struct.ata_link, ptr %37, i32 0, i32 14
  tail call void @ata_eh_detach_dev(ptr noundef %38) #8
  %39 = tail call ptr @ata_link_next(ptr noundef nonnull %37, ptr noundef %3, i32 noundef 0) #8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %36

41:                                               ; preds = %36, %33
  %42 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 2
  %43 = load ptr, ptr %42, align 8
  %44 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %43) #8
  %45 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 27
  store i32 0, ptr %45, align 4
  store i32 0, ptr %6, align 4
  %46 = load ptr, ptr %42, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %46, i32 noundef %44) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_eh_reset(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_down_spd_limit(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_eh_detach_dev(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_eh_about_to_do(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_eh_done(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_link_hardreset(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
