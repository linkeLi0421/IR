; ModuleID = '/llk/IR/drivers/staging/nvec/nvec.c_pt.bc'
source_filename = "../drivers/staging/nvec/nvec.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nvec_register_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22nvec_register_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_nvec_register_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nvec_unregister_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22nvec_unregister_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_nvec_unregister_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nvec_msg_free:\09\09\09\09\09"
module asm "\09.asciz \09\22nvec_msg_free\22\09\09\09\09\09"
module asm "__kstrtabns_nvec_msg_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nvec_write_async:\09\09\09\09\09"
module asm "\09.asciz \09\22nvec_write_async\22\09\09\09\09\09"
module asm "__kstrtabns_nvec_write_async:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nvec_write_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22nvec_write_sync\22\09\09\09\09\09"
module asm "__kstrtabns_nvec_write_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.nvec_chip = type { ptr, ptr, i32, i32, ptr, ptr, ptr, %struct.atomic_notifier_head, %struct.list_head, %struct.list_head, %struct.notifier_block, %struct.work_struct, %struct.work_struct, ptr, [64 x %struct.nvec_msg], ptr, ptr, %struct.nvec_msg, %struct.completion, %struct.spinlock, %struct.spinlock, %struct.mutex, %struct.completion, i16, ptr, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.list_head = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.nvec_msg = type { %struct.list_head, [34 x i8], i16, i16, %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__kstrtab_nvec_register_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_nvec_register_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_nvec_register_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nvec_register_notifier to i32), ptr @__kstrtab_nvec_register_notifier, ptr @__kstrtabns_nvec_register_notifier }, section "___ksymtab_gpl+nvec_register_notifier", align 4
@__kstrtab_nvec_unregister_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_nvec_unregister_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_nvec_unregister_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nvec_unregister_notifier to i32), ptr @__kstrtab_nvec_unregister_notifier, ptr @__kstrtabns_nvec_unregister_notifier }, section "___ksymtab_gpl+nvec_unregister_notifier", align 4
@__kstrtab_nvec_msg_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_nvec_msg_free = external dso_local constant [0 x i8], align 1
@__ksymtab_nvec_msg_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nvec_msg_free to i32), ptr @__kstrtab_nvec_msg_free, ptr @__kstrtabns_nvec_msg_free }, section "___ksymtab_gpl+nvec_msg_free", align 4
@__kstrtab_nvec_write_async = external dso_local constant [0 x i8], align 1
@__kstrtabns_nvec_write_async = external dso_local constant [0 x i8], align 1
@__ksymtab_nvec_write_async = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nvec_write_async to i32), ptr @__kstrtab_nvec_write_async, ptr @__kstrtabns_nvec_write_async }, section "___ksymtab+nvec_write_async", align 4
@.str = private unnamed_addr constant [44 x i8] c"timeout waiting for sync write to complete\0A\00", align 1
@__kstrtab_nvec_write_sync = external dso_local constant [0 x i8], align 1
@__kstrtabns_nvec_write_sync = external dso_local constant [0 x i8], align 1
@__ksymtab_nvec_write_sync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nvec_write_sync to i32), ptr @__kstrtab_nvec_write_sync, ptr @__kstrtabns_nvec_write_sync }, section "___ksymtab+nvec_write_sync", align 4
@__initcall__kmod_nvec__170_953_nvec_device_driver_init6 = internal global ptr @nvec_device_driver_init, section ".initcall6.init", align 4
@nvec_device_driver = internal global %struct.platform_driver { ptr @tegra_nvec_probe, ptr @tegra_nvec_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.4, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @nvidia_nvec_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nvec_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_nvec_device_driver_exit = internal global ptr @nvec_device_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias171 = internal constant [25 x i8] c"nvec.alias=platform:nvec\00", section ".modinfo", align 1
@__UNIQUE_ID_description172 = internal constant [64 x i8] c"nvec.description=NVIDIA compliant embedded controller interface\00", section ".modinfo", align 1
@__UNIQUE_ID_author173 = internal constant [44 x i8] c"nvec.author=Marc Dietrich <marvin24@gmx.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file174 = internal constant [36 x i8] c"nvec.file=drivers/staging/nvec/nvec\00", section ".modinfo", align 1
@__UNIQUE_ID_license175 = internal constant [17 x i8] c"nvec.license=GPL\00", section ".modinfo", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"could not allocate %s buffer\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"TX\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"RX\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"nvec\00", align 1
@nvidia_nvec_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,nvec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@nvec_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @nvec_suspend, ptr @nvec_resume, ptr @nvec_suspend, ptr @nvec_resume, ptr @nvec_suspend, ptr @nvec_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__const.tegra_nvec_probe.enable_event = private unnamed_addr constant [7 x i8] c"\01\01\01\00\00\00\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"must be instantiated using device tree\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"slave-addr\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"no i2c address specified\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"div-clk\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"failed to get controller clock\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"i2c\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"failed to get controller reset\0A\00", align 1
@tegra_nvec_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"&nvec->sync_write_mutex\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"request\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"couldn't request gpio\0A\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"couldn't request irq\0A\00", align 1
@nvec_power_handle = internal unnamed_addr global ptr null, align 4
@pm_power_off = external dso_local local_unnamed_addr global ptr, align 4
@.str.16 = private unnamed_addr constant [43 x i8] c"ec firmware version %02x.%02x.%02x / %02x\0A\00", align 1
@nvec_devices = internal constant [5 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.36, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.37, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.38, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.38, i32 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.39, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], align 8
@.str.17 = private unnamed_addr constant [25 x i8] c"error adding subdevices\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"ec responded %*ph\0A\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"\014\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"ec system event \00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"timeout waiting for ec transfer\0A\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"unexpected irq mask %lx\0A\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"Spurious IRQ\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.25 = private unnamed_addr constant [33 x i8] c"Read without prior read command\0A\00", align 1
@.str.26 = private unnamed_addr constant [37 x i8] c"tx buffer underflow on %p (%u > %u)\0A\00", align 1
@.str.27 = private unnamed_addr constant [57 x i8] c"RX buffer overflow on %p: Trying to write byte %u of %u\0A\00", align 1
@.str.28 = private unnamed_addr constant [42 x i8] c"received address 0x%02x, expected 0x%02x\0A\00", align 1
@.str.29 = private unnamed_addr constant [48 x i8] c"unexpected status flags 0x%02x during state %i\0A\00", align 1
@.str.30 = private unnamed_addr constant [26 x i8] c"empty tx - sending no-op\0A\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"\02\07\02\00", align 1
@.str.32 = private unnamed_addr constant [32 x i8] c"premature END_TRANS, resending\0A\00", align 1
@.str.33 = private unnamed_addr constant [42 x i8] c"RX incomplete: Expected %u bytes, got %u\0A\00", align 1
@.str.34 = private unnamed_addr constant [24 x i8] c"unhandled msg type %ld\0A\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"payload: \00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"nvec-kbd\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"nvec-mouse\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"nvec-power\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"nvec-paz00\00", align 1
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_alias171, ptr @__UNIQUE_ID_author173, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file174, ptr @__UNIQUE_ID_license175, ptr @__exitcall_nvec_device_driver_exit, ptr @__initcall__kmod_nvec__170_953_nvec_device_driver_init6, ptr @__ksymtab_nvec_msg_free, ptr @__ksymtab_nvec_register_notifier, ptr @__ksymtab_nvec_unregister_notifier, ptr @__ksymtab_nvec_write_async, ptr @__ksymtab_nvec_write_sync, ptr @nvec_device_driver_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvec_register_notifier(ptr noundef %0, ptr noundef %1, i32 %2) #0 {
  %4 = getelementptr inbounds %struct.nvec_chip, ptr %0, i32 0, i32 7
  %5 = tail call i32 @atomic_notifier_chain_register(ptr noundef %4, ptr noundef %1) #7
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvec_unregister_notifier(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nvec_chip, ptr %0, i32 0, i32 7
  %4 = tail call i32 @atomic_notifier_chain_unregister(ptr noundef %3, ptr noundef %1) #7
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvec_msg_free(ptr nocapture noundef readnone %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.nvec_msg, ptr %1, i32 0, i32 4
  store volatile i32 0, ptr %3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvec_write_async(ptr noundef %0, ptr nocapture noundef readonly %1, i16 noundef signext %2) #0 {
  br label %4

4:                                                ; preds = %10, %3
  %5 = phi i32 [ 16, %3 ], [ %11, %10 ]
  %6 = getelementptr %struct.nvec_chip, ptr %0, i32 0, i32 14, i32 %5, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #7, !srcloc !9
  %7 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 1, ptr %6) #7, !srcloc !10
  %8 = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %4
  %11 = add nuw nsw i32 %5, 1
  %12 = icmp eq i32 %11, 64
  br i1 %12, label %13, label %4

13:                                               ; preds = %10
  %14 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #8
  br label %34

15:                                               ; preds = %4
  %16 = getelementptr %struct.nvec_chip, ptr %0, i32 0, i32 14, i32 %5
  %17 = icmp eq ptr %16, null
  br i1 %17, label %34, label %18

18:                                               ; preds = %15
  %19 = trunc i16 %2 to i8
  %20 = getelementptr %struct.nvec_chip, ptr %0, i32 0, i32 14, i32 %5, i32 1
  store i8 %19, ptr %20, align 4
  %21 = getelementptr %struct.nvec_chip, ptr %0, i32 0, i32 14, i32 %5, i32 1, i32 1
  %22 = sext i16 %2 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %21, ptr align 1 %1, i32 %22, i1 false)
  %23 = add i16 %2, 1
  %24 = getelementptr %struct.nvec_chip, ptr %0, i32 0, i32 14, i32 %5, i32 2
  store i16 %23, ptr %24, align 2
  %25 = getelementptr inbounds %struct.nvec_chip, ptr %0, i32 0, i32 19
  %26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %25) #7
  %27 = getelementptr inbounds %struct.nvec_chip, ptr %0, i32 0, i32 9
  %28 = getelementptr inbounds %struct.nvec_chip, ptr %0, i32 0, i32 9, i32 1
  %29 = load ptr, ptr %28, align 4
  store ptr %16, ptr %28, align 4
  store ptr %27, ptr %16, align 4
  %30 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr %29, ptr %30, align 4
  store volatile ptr %16, ptr %29, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %25, i32 noundef %26) #7
  %31 = getelementptr inbounds %struct.nvec_chip, ptr %0, i32 0, i32 12
  %32 = load ptr, ptr @system_wq, align 4
  %33 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %32, ptr noundef %31) #7
  br label %34

34:                                               ; preds = %18, %15, %13
  %35 = phi i32 [ 0, %18 ], [ -12, %15 ], [ -12, %13 ]
  ret i32 %35
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvec_write_sync(ptr noundef %0, ptr nocapture noundef readonly %1, i16 noundef signext %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = getelementptr inbounds %struct.nvec_chip, ptr %0, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %5) #7
  store ptr null, ptr %3, align 4
  %6 = getelementptr i8, ptr %1, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i16
  %9 = shl nuw i16 %8, 8
  %10 = load i8, ptr %1, align 1
  %11 = zext i8 %10 to i16
  %12 = or i16 %9, %11
  %13 = getelementptr inbounds %struct.nvec_chip, ptr %0, i32 0, i32 23
  store i16 %12, ptr %13, align 4
  %14 = tail call i32 @nvec_write_async(ptr noundef %0, ptr noundef %1, i16 noundef signext %2)
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.nvec_chip, ptr %0, i32 0, i32 22
  %18 = tail call i32 @wait_for_completion_timeout(ptr noundef %17, i32 noundef 200) #7
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str) #8
  br label %25

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.nvec_chip, ptr %0, i32 0, i32 24
  %24 = load ptr, ptr %23, align 4
  store ptr %24, ptr %3, align 4
  br label %25

25:                                               ; preds = %22, %20, %4
  %26 = phi i32 [ 0, %22 ], [ -110, %20 ], [ -12, %4 ]
  tail call void @mutex_unlock(ptr noundef %5) #7
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @nvec_device_driver_init() #6 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @nvec_device_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @nvec_device_driver_exit() #6 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @nvec_device_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_nvec_probe(ptr noundef %0) #0 {
  %2 = alloca [3 x i8], align 1
  %3 = alloca [2 x i8], align 2
  %4 = alloca [4 x i8], align 4
  %5 = alloca [7 x i8], align 1
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #7
  store i16 5383, ptr %3, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 -1789325299, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %5) #7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %5, ptr noundef nonnull align 1 dereferenceable(7) @__const.tegra_nvec_probe.enable_event, i32 7, i1 false)
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.5) #8
  br label %122

11:                                               ; preds = %1
  %12 = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 3560, i32 noundef 3520) #7
  %13 = icmp eq ptr %12, null
  br i1 %13, label %122, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %12, ptr %15, align 8
  store ptr %6, ptr %12, align 4
  %16 = load ptr, ptr %7, align 8
  %17 = getelementptr inbounds %struct.nvec_chip, ptr %12, i32 0, i32 3
  %18 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %16, ptr noundef nonnull @.str.6, ptr noundef %17, i32 noundef 1, i32 noundef 0) #7
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.7) #8
  br label %122

21:                                               ; preds = %14
  %22 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #7
  %23 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = ptrtoint ptr %22 to i32
  br label %122

26:                                               ; preds = %21
  %27 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #7
  %28 = getelementptr inbounds %struct.nvec_chip, ptr %12, i32 0, i32 2
  store i32 %27, ptr %28, align 4
  %29 = icmp slt i32 %27, 0
  br i1 %29, label %122, label %30

30:                                               ; preds = %26
  %31 = tail call ptr @devm_clk_get(ptr noundef %6, ptr noundef nonnull @.str.8) #7
  %32 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.9) #8
  br label %122

34:                                               ; preds = %30
  %35 = tail call ptr @__devm_reset_control_get(ptr noundef %6, ptr noundef nonnull @.str.10, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %36 = getelementptr inbounds %struct.nvec_chip, ptr %12, i32 0, i32 6
  store ptr %35, ptr %36, align 4
  %37 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.11) #8
  %39 = load ptr, ptr %36, align 4
  %40 = ptrtoint ptr %39 to i32
  br label %122

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.nvec_chip, ptr %12, i32 0, i32 4
  store ptr %22, ptr %42, align 4
  %43 = getelementptr inbounds %struct.nvec_chip, ptr %12, i32 0, i32 5
  store ptr %31, ptr %43, align 4
  %44 = getelementptr inbounds %struct.nvec_chip, ptr %12, i32 0, i32 14
  %45 = getelementptr inbounds %struct.nvec_chip, ptr %12, i32 0, i32 15
  store ptr %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.nvec_chip, ptr %12, i32 0, i32 7
  store i32 0, ptr %46, align 4
  %47 = getelementptr inbounds %struct.nvec_chip, ptr %12, i32 0, i32 7, i32 1
  store ptr null, ptr %47, align 4
  %48 = getelementptr inbounds %struct.nvec_chip, ptr %12, i32 0, i32 22
  store i32 0, ptr %48, align 4
  %49 = getelementptr inbounds %struct.nvec_chip, ptr %12, i32 0, i32 22, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %49, ptr noundef nonnull @.str.18, ptr noundef nonnull @init_completion.__key) #7
  %50 = getelementptr inbounds %struct.nvec_chip, ptr %12, i32 0, i32 18
  store i32 0, ptr %50, align 4
  %51 = getelementptr inbounds %struct.nvec_chip, ptr %12, i32 0, i32 18, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %51, ptr noundef nonnull @.str.18, ptr noundef nonnull @init_completion.__key) #7
  %52 = getelementptr inbounds %struct.nvec_chip, ptr %12, i32 0, i32 21
  tail call void @__mutex_init(ptr noundef %52, ptr noundef nonnull @.str.12, ptr noundef nonnull @tegra_nvec_probe.__key) #7
  %53 = getelementptr inbounds %struct.nvec_chip, ptr %12, i32 0, i32 19
  store i32 0, ptr %53, align 4
  %54 = getelementptr inbounds %struct.nvec_chip, ptr %12, i32 0, i32 20
  store i32 0, ptr %54, align 4
  %55 = getelementptr inbounds %struct.nvec_chip, ptr %12, i32 0, i32 8
  store volatile ptr %55, ptr %55, align 4
  %56 = getelementptr inbounds %struct.nvec_chip, ptr %12, i32 0, i32 8, i32 1
  store ptr %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.nvec_chip, ptr %12, i32 0, i32 9
  store volatile ptr %57, ptr %57, align 4
  %58 = getelementptr inbounds %struct.nvec_chip, ptr %12, i32 0, i32 9, i32 1
  store ptr %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.nvec_chip, ptr %12, i32 0, i32 11
  store i32 -32, ptr %59, align 4
  %60 = getelementptr inbounds %struct.nvec_chip, ptr %12, i32 0, i32 11, i32 1
  store volatile ptr %60, ptr %60, align 4
  %61 = getelementptr inbounds %struct.nvec_chip, ptr %12, i32 0, i32 11, i32 1, i32 1
  store ptr %60, ptr %61, align 4
  %62 = getelementptr inbounds %struct.nvec_chip, ptr %12, i32 0, i32 11, i32 2
  store ptr @nvec_dispatch, ptr %62, align 4
  %63 = getelementptr inbounds %struct.nvec_chip, ptr %12, i32 0, i32 12
  store i32 -32, ptr %63, align 4
  %64 = getelementptr inbounds %struct.nvec_chip, ptr %12, i32 0, i32 12, i32 1
  store volatile ptr %64, ptr %64, align 4
  %65 = getelementptr inbounds %struct.nvec_chip, ptr %12, i32 0, i32 12, i32 1, i32 1
  store ptr %64, ptr %65, align 4
  %66 = getelementptr inbounds %struct.nvec_chip, ptr %12, i32 0, i32 12, i32 2
  store ptr @nvec_request_master, ptr %66, align 4
  %67 = tail call ptr @devm_gpiod_get(ptr noundef %6, ptr noundef nonnull @.str.13, i32 noundef 7) #7
  %68 = getelementptr inbounds %struct.nvec_chip, ptr %12, i32 0, i32 1
  store ptr %67, ptr %68, align 4
  %69 = icmp ugt ptr %67, inttoptr (i32 -4096 to ptr)
  br i1 %69, label %70, label %73

70:                                               ; preds = %41
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.14) #8
  %71 = load ptr, ptr %68, align 4
  %72 = ptrtoint ptr %71 to i32
  br label %122

73:                                               ; preds = %41
  %74 = load i32, ptr %28, align 4
  %75 = tail call i32 @devm_request_threaded_irq(ptr noundef %6, i32 noundef %74, ptr noundef nonnull @nvec_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull %12) #7
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %73
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.15) #8
  br label %122

78:                                               ; preds = %73
  %79 = load i32, ptr %28, align 4
  tail call void @disable_irq(i32 noundef %79) #7
  tail call fastcc void @tegra_init_i2c_slave(ptr noundef nonnull %12)
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %2) #7
  store i8 4, ptr %2, align 1
  %80 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 0, ptr %80, align 1
  %81 = getelementptr inbounds i8, ptr %2, i32 2
  store i8 1, ptr %81, align 1
  %82 = call i32 @nvec_write_async(ptr noundef nonnull %12, ptr noundef nonnull %2, i16 noundef signext 3) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #7
  %83 = getelementptr inbounds %struct.nvec_chip, ptr %12, i32 0, i32 10
  store ptr @nvec_status_notifier, ptr %83, align 4
  %84 = tail call i32 @atomic_notifier_chain_register(ptr noundef %46, ptr noundef %83) #7
  store ptr %12, ptr @nvec_power_handle, align 4
  store ptr @nvec_power_off, ptr @pm_power_off, align 4
  tail call void @mutex_lock(ptr noundef %52) #7
  %85 = getelementptr inbounds %struct.nvec_chip, ptr %12, i32 0, i32 23
  store i16 5383, ptr %85, align 4
  %86 = call i32 @nvec_write_async(ptr noundef nonnull %12, ptr noundef nonnull %3, i16 noundef signext 2) #7
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %78
  %89 = tail call i32 @wait_for_completion_timeout(ptr noundef %48, i32 noundef 200) #7
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %92, ptr noundef nonnull @.str) #8
  br label %93

93:                                               ; preds = %91, %78
  tail call void @mutex_unlock(ptr noundef %52) #7
  br label %110

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.nvec_chip, ptr %12, i32 0, i32 24
  %96 = load ptr, ptr %95, align 4
  tail call void @mutex_unlock(ptr noundef %52) #7
  %97 = getelementptr %struct.nvec_msg, ptr %96, i32 0, i32 1, i32 4
  %98 = load i8, ptr %97, align 4
  %99 = zext i8 %98 to i32
  %100 = getelementptr %struct.nvec_msg, ptr %96, i32 0, i32 1, i32 5
  %101 = load i8, ptr %100, align 1
  %102 = zext i8 %101 to i32
  %103 = getelementptr %struct.nvec_msg, ptr %96, i32 0, i32 1, i32 6
  %104 = load i8, ptr %103, align 2
  %105 = zext i8 %104 to i32
  %106 = getelementptr %struct.nvec_msg, ptr %96, i32 0, i32 1, i32 7
  %107 = load i8, ptr %106, align 1
  %108 = zext i8 %107 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.16, i32 noundef %99, i32 noundef %102, i32 noundef %105, i32 noundef %108) #8
  %109 = getelementptr inbounds %struct.nvec_msg, ptr %96, i32 0, i32 4
  store volatile i32 0, ptr %109, align 4
  br label %110

110:                                              ; preds = %94, %93
  %111 = tail call i32 @mfd_add_devices(ptr noundef %6, i32 noundef 0, ptr noundef nonnull @nvec_devices, i32 noundef 5, ptr noundef null, i32 noundef 0, ptr noundef null) #7
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %110
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.17) #8
  br label %114

114:                                              ; preds = %113, %110
  %115 = call i32 @nvec_write_async(ptr noundef nonnull %12, ptr noundef nonnull %4, i16 noundef signext 4)
  %116 = getelementptr inbounds i8, ptr %5, i32 3
  store i8 0, ptr %116, align 1
  %117 = getelementptr inbounds i8, ptr %5, i32 4
  store i8 0, ptr %117, align 1
  %118 = getelementptr inbounds i8, ptr %5, i32 5
  store i8 2, ptr %118, align 1
  %119 = getelementptr inbounds i8, ptr %5, i32 6
  store i8 0, ptr %119, align 1
  %120 = call i32 @nvec_write_async(ptr noundef nonnull %12, ptr noundef nonnull %5, i16 noundef signext 7)
  store i8 0, ptr %116, align 1
  store i8 0, ptr %117, align 1
  store i8 0, ptr %118, align 1
  store i8 -128, ptr %119, align 1
  %121 = call i32 @nvec_write_async(ptr noundef nonnull %12, ptr noundef nonnull %5, i16 noundef signext 7)
  br label %122

122:                                              ; preds = %114, %77, %70, %38, %33, %26, %24, %20, %11, %10
  %123 = phi i32 [ -19, %20 ], [ %25, %24 ], [ -19, %33 ], [ %40, %38 ], [ %72, %70 ], [ -19, %77 ], [ 0, %114 ], [ -19, %10 ], [ -12, %11 ], [ -19, %26 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #7
  ret i32 %123
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_nvec_remove(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [3 x i8], align 1
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %4 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %2) #7
  store i8 4, ptr %2, align 1
  %5 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 0, ptr %5, align 1
  %6 = getelementptr inbounds i8, ptr %2, i32 2
  store i8 0, ptr %6, align 1
  %7 = call i32 @nvec_write_async(ptr noundef %4, ptr noundef nonnull %2, i16 noundef signext 3) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #7
  %8 = load ptr, ptr %4, align 4
  tail call void @mfd_remove_devices(ptr noundef %8) #7
  %9 = getelementptr inbounds %struct.nvec_chip, ptr %4, i32 0, i32 10
  %10 = getelementptr inbounds %struct.nvec_chip, ptr %4, i32 0, i32 7
  %11 = tail call i32 @atomic_notifier_chain_unregister(ptr noundef %10, ptr noundef %9) #7
  %12 = getelementptr inbounds %struct.nvec_chip, ptr %4, i32 0, i32 11
  %13 = tail call zeroext i1 @cancel_work_sync(ptr noundef %12) #7
  %14 = getelementptr inbounds %struct.nvec_chip, ptr %4, i32 0, i32 12
  %15 = tail call zeroext i1 @cancel_work_sync(ptr noundef %14) #7
  store ptr null, ptr @pm_power_off, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nvec_dispatch(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -64
  %3 = getelementptr i8, ptr %0, i32 3444
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #7
  %5 = getelementptr i8, ptr %0, i32 -28
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %60, label %8

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 3484
  %10 = getelementptr i8, ptr %0, i32 -36
  %11 = getelementptr i8, ptr %0, i32 3488
  %12 = getelementptr i8, ptr %0, i32 3468
  br label %13

13:                                               ; preds = %56, %8
  %14 = phi ptr [ %6, %8 ], [ %58, %56 ]
  %15 = phi i32 [ %4, %8 ], [ %57, %56 ]
  %16 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %14, align 4
  %19 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  store ptr %17, ptr %19, align 4
  store volatile ptr %18, ptr %17, align 4
  store volatile ptr %14, ptr %14, align 4
  store ptr %14, ptr %16, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %15) #7
  %20 = load i16, ptr %9, align 4
  %21 = zext i16 %20 to i32
  %22 = getelementptr inbounds %struct.nvec_msg, ptr %14, i32 0, i32 1
  %23 = getelementptr %struct.nvec_msg, ptr %14, i32 0, i32 1, i32 2
  %24 = load i8, ptr %23, align 2
  %25 = zext i8 %24 to i32
  %26 = shl nuw nsw i32 %25, 8
  %27 = load i8, ptr %22, align 4
  %28 = zext i8 %27 to i32
  %29 = or i32 %26, %28
  %30 = icmp eq i32 %29, %21
  br i1 %30, label %31, label %32

31:                                               ; preds = %13
  store i16 0, ptr %9, align 4
  store ptr %14, ptr %11, align 4
  tail call void @complete(ptr noundef %12) #7
  br label %56

32:                                               ; preds = %13
  %33 = icmp sgt i8 %27, -1
  br i1 %33, label %34, label %40

34:                                               ; preds = %32
  %35 = getelementptr %struct.nvec_msg, ptr %14, i32 0, i32 1, i32 3
  %36 = load i8, ptr %35, align 1
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.19, i32 noundef 4, ptr noundef %22) #8
  br label %54

40:                                               ; preds = %34, %32
  %41 = and i8 %27, -113
  %42 = icmp eq i8 %41, -123
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = getelementptr %struct.nvec_msg, ptr %14, i32 0, i32 1, i32 1
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i32
  %47 = add nuw nsw i32 %46, 2
  tail call void @print_hex_dump(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %22, i32 noundef %47, i1 noundef zeroext true) #7
  %48 = load i8, ptr %22, align 4
  %49 = and i8 %48, -113
  br label %50

50:                                               ; preds = %43, %40
  %51 = phi i8 [ %49, %43 ], [ %41, %40 ]
  %52 = zext i8 %51 to i32
  %53 = tail call i32 @atomic_notifier_call_chain(ptr noundef %10, i32 noundef %52, ptr noundef %22) #7
  br label %54

54:                                               ; preds = %50, %38
  %55 = getelementptr inbounds %struct.nvec_msg, ptr %14, i32 0, i32 4
  store volatile i32 0, ptr %55, align 4
  br label %56

56:                                               ; preds = %54, %31
  %57 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #7
  %58 = load volatile ptr, ptr %5, align 4
  %59 = icmp eq ptr %58, %5
  br i1 %59, label %60, label %13

60:                                               ; preds = %56, %1
  %61 = phi i32 [ %4, %1 ], [ %57, %56 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %61) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nvec_request_master(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -80
  %3 = getelementptr i8, ptr %0, i32 3424
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #7
  %5 = getelementptr i8, ptr %0, i32 -36
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %35, label %8

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 -76
  %10 = getelementptr i8, ptr %0, i32 3408
  br label %11

11:                                               ; preds = %31, %8
  %12 = phi ptr [ %6, %8 ], [ %33, %31 ]
  %13 = phi i32 [ %4, %8 ], [ %32, %31 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %13) #7
  %14 = load ptr, ptr %9, align 4
  tail call void @gpiod_set_value(ptr noundef %14, i32 noundef 0) #7
  %15 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %10, i32 noundef 500) #7
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.22) #8
  %19 = load ptr, ptr %9, align 4
  tail call void @gpiod_set_value(ptr noundef %19, i32 noundef 1) #7
  %20 = getelementptr inbounds %struct.nvec_msg, ptr %12, i32 0, i32 3
  store i16 0, ptr %20, align 4
  %21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #7
  br label %31

22:                                               ; preds = %11
  %23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #7
  %24 = icmp sgt i32 %15, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %12, align 4
  %29 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  store ptr %27, ptr %29, align 4
  store volatile ptr %28, ptr %27, align 4
  store volatile ptr %12, ptr %12, align 4
  store ptr %12, ptr %26, align 4
  %30 = getelementptr inbounds %struct.nvec_msg, ptr %12, i32 0, i32 4
  store volatile i32 0, ptr %30, align 4
  br label %31

31:                                               ; preds = %25, %22, %17
  %32 = phi i32 [ %21, %17 ], [ %23, %25 ], [ %23, %22 ]
  %33 = load volatile ptr, ptr %5, align 4
  %34 = icmp eq ptr %33, %5
  br i1 %34, label %35, label %11

35:                                               ; preds = %31, %1
  %36 = phi i32 [ %4, %1 ], [ %32, %31 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %36) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvec_interrupt(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nvec_chip, ptr %1, i32 0, i32 25
  %4 = getelementptr inbounds %struct.nvec_chip, ptr %1, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 40
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  %8 = and i32 %7, 30
  %9 = icmp ne i32 %8, 0
  %10 = and i32 %7, -31
  %11 = icmp eq i32 %10, 0
  %12 = or i1 %9, %11
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.23, i32 noundef %7) #8
  br label %278

15:                                               ; preds = %2
  %16 = and i32 %7, 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.24) #8
  br label %278

20:                                               ; preds = %15
  %21 = and i32 %7, 2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = getelementptr i8, ptr %24, i32 36
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %27 = and i32 %7, 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !15
  tail call void @arm_heavy_mb() #7
  %30 = load ptr, ptr %4, align 4
  %31 = getelementptr i8, ptr %30, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 0) #7, !srcloc !16
  br label %32

32:                                               ; preds = %29, %23, %20
  %33 = phi i32 [ %26, %29 ], [ %26, %23 ], [ 0, %20 ]
  %34 = icmp eq i32 %7, 12
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 0, ptr %3, align 4
  br label %254

36:                                               ; preds = %32
  %37 = load i32, ptr %3, align 4
  switch i32 %37, label %249 [
    i32 0, label %38
    i32 1, label %40
    i32 2, label %66
    i32 3, label %112
    i32 4, label %158
  ]

38:                                               ; preds = %36
  %39 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.29, i32 noundef %7, i32 noundef 0) #8
  br label %250

40:                                               ; preds = %36
  %41 = icmp eq i32 %7, 8
  br i1 %41, label %44, label %42

42:                                               ; preds = %40
  %43 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.29, i32 noundef %7, i32 noundef 1) #8
  store i32 0, ptr %3, align 4
  br label %250

44:                                               ; preds = %50, %40
  %45 = phi i32 [ %51, %50 ], [ 0, %40 ]
  %46 = getelementptr %struct.nvec_chip, ptr %1, i32 0, i32 14, i32 %45, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %46) #7, !srcloc !9
  %47 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 1, ptr %46) #7, !srcloc !10
  %48 = extractvalue { i32, i32 } %47, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = add nuw nsw i32 %45, 1
  %52 = icmp eq i32 %51, 64
  br i1 %52, label %53, label %44

53:                                               ; preds = %50
  %54 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #8
  %55 = getelementptr inbounds %struct.nvec_chip, ptr %1, i32 0, i32 15
  store ptr null, ptr %55, align 4
  br label %60

56:                                               ; preds = %44
  %57 = getelementptr %struct.nvec_chip, ptr %1, i32 0, i32 14, i32 %45
  %58 = getelementptr inbounds %struct.nvec_chip, ptr %1, i32 0, i32 15
  store ptr %57, ptr %58, align 4
  %59 = icmp eq ptr %57, null
  br i1 %59, label %60, label %61, !prof !17

60:                                               ; preds = %56, %53
  store i32 0, ptr %3, align 4
  br label %250

61:                                               ; preds = %56
  %62 = trunc i32 %33 to i8
  %63 = getelementptr %struct.nvec_chip, ptr %1, i32 0, i32 14, i32 %45, i32 1
  store i8 %62, ptr %63, align 4
  %64 = load ptr, ptr %58, align 4
  %65 = getelementptr inbounds %struct.nvec_msg, ptr %64, i32 0, i32 3
  store i16 1, ptr %65, align 4
  store i32 2, ptr %3, align 4
  br label %250

66:                                               ; preds = %36
  switch i32 %7, label %110 [
    i32 14, label %67
    i32 8, label %103
  ]

67:                                               ; preds = %66
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %68(i32 noundef 7086684) #7
  %69 = getelementptr inbounds %struct.nvec_chip, ptr %1, i32 0, i32 15
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.nvec_msg, ptr %70, i32 0, i32 1
  %72 = load i8, ptr %71, align 4
  %73 = icmp eq i8 %72, 1
  br i1 %73, label %76, label %74

74:                                               ; preds = %67
  %75 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.25) #8
  store i32 0, ptr %3, align 4
  br label %266

76:                                               ; preds = %67
  %77 = getelementptr inbounds %struct.nvec_msg, ptr %70, i32 0, i32 4
  store volatile i32 0, ptr %77, align 4
  store i32 3, ptr %3, align 4
  %78 = getelementptr inbounds %struct.nvec_chip, ptr %1, i32 0, i32 19
  tail call void @_raw_spin_lock(ptr noundef %78) #7
  %79 = getelementptr inbounds %struct.nvec_chip, ptr %1, i32 0, i32 9
  %80 = load volatile ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, %79
  br i1 %81, label %82, label %92

82:                                               ; preds = %76
  %83 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.30) #8
  %84 = getelementptr inbounds %struct.nvec_chip, ptr %1, i32 0, i32 17
  %85 = getelementptr inbounds %struct.nvec_chip, ptr %1, i32 0, i32 17, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(3) %85, ptr noundef nonnull align 1 dereferenceable(3) @.str.31, i32 3, i1 false) #7
  %86 = getelementptr inbounds %struct.nvec_chip, ptr %1, i32 0, i32 17, i32 2
  store i16 3, ptr %86, align 2
  %87 = getelementptr inbounds %struct.nvec_chip, ptr %1, i32 0, i32 17, i32 3
  store i16 0, ptr %87, align 4
  %88 = getelementptr inbounds %struct.nvec_chip, ptr %1, i32 0, i32 16
  store ptr %84, ptr %88, align 4
  %89 = getelementptr inbounds %struct.nvec_chip, ptr %1, i32 0, i32 9, i32 1
  %90 = load ptr, ptr %89, align 4
  store ptr %84, ptr %89, align 4
  store ptr %79, ptr %84, align 4
  %91 = getelementptr inbounds %struct.nvec_chip, ptr %1, i32 0, i32 17, i32 0, i32 1
  store ptr %90, ptr %91, align 4
  store volatile ptr %84, ptr %90, align 4
  br label %95

92:                                               ; preds = %76
  %93 = getelementptr inbounds %struct.nvec_chip, ptr %1, i32 0, i32 16
  store ptr %80, ptr %93, align 4
  %94 = getelementptr inbounds %struct.nvec_msg, ptr %80, i32 0, i32 3
  store i16 0, ptr %94, align 4
  br label %95

95:                                               ; preds = %92, %82
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !18
  %96 = load i16, ptr %78, align 4
  %97 = add i16 %96, 1
  store i16 %97, ptr %78, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !21
  %98 = getelementptr inbounds %struct.nvec_chip, ptr %1, i32 0, i32 16
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr inbounds %struct.nvec_msg, ptr %99, i32 0, i32 1
  %101 = load i8, ptr %100, align 4
  %102 = getelementptr inbounds %struct.nvec_msg, ptr %99, i32 0, i32 3
  store i16 1, ptr %102, align 4
  br label %266

103:                                              ; preds = %66
  %104 = trunc i32 %33 to i8
  %105 = getelementptr inbounds %struct.nvec_chip, ptr %1, i32 0, i32 15
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr %struct.nvec_msg, ptr %106, i32 0, i32 1, i32 1
  store i8 %104, ptr %107, align 1
  %108 = load ptr, ptr %105, align 4
  %109 = getelementptr inbounds %struct.nvec_msg, ptr %108, i32 0, i32 3
  store i16 2, ptr %109, align 4
  store i32 4, ptr %3, align 4
  br label %276

110:                                              ; preds = %66
  %111 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %111, ptr noundef nonnull @.str.29, i32 noundef %7, i32 noundef 2) #8
  store i32 0, ptr %3, align 4
  br label %250

112:                                              ; preds = %36
  %113 = and i32 %7, 16
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %130, label %115

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.nvec_chip, ptr %1, i32 0, i32 16
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr inbounds %struct.nvec_msg, ptr %117, i32 0, i32 3
  %119 = load i16, ptr %118, align 4
  %120 = getelementptr inbounds %struct.nvec_msg, ptr %117, i32 0, i32 2
  %121 = load i16, ptr %120, align 2
  %122 = icmp eq i16 %119, %121
  br i1 %122, label %129, label %123

123:                                              ; preds = %115
  %124 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %124, ptr noundef nonnull @.str.32) #8
  %125 = load ptr, ptr %116, align 4
  %126 = getelementptr inbounds %struct.nvec_msg, ptr %125, i32 0, i32 3
  store i16 0, ptr %126, align 4
  %127 = getelementptr inbounds %struct.nvec_chip, ptr %1, i32 0, i32 1
  %128 = load ptr, ptr %127, align 4
  tail call void @gpiod_set_value(ptr noundef %128, i32 noundef 0) #7
  br label %250

129:                                              ; preds = %115
  store i32 0, ptr %3, align 4
  br label %250

130:                                              ; preds = %112
  %131 = xor i1 %22, true
  %132 = and i32 %7, 4
  %133 = icmp eq i32 %132, 0
  %134 = select i1 %131, i1 %133, i1 false
  br i1 %134, label %137, label %135

135:                                              ; preds = %130
  %136 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %136, ptr noundef nonnull @.str.29, i32 noundef %7, i32 noundef 3) #8
  store i32 0, ptr %3, align 4
  br label %250

137:                                              ; preds = %130
  %138 = getelementptr inbounds %struct.nvec_chip, ptr %1, i32 0, i32 16
  %139 = load ptr, ptr %138, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %154, label %141

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.nvec_msg, ptr %139, i32 0, i32 3
  %143 = load i16, ptr %142, align 4
  %144 = getelementptr inbounds %struct.nvec_msg, ptr %139, i32 0, i32 2
  %145 = load i16, ptr %144, align 2
  %146 = icmp ult i16 %143, %145
  %147 = zext i16 %143 to i32
  br i1 %146, label %148, label %152

148:                                              ; preds = %141
  %149 = add nuw i16 %143, 1
  store i16 %149, ptr %142, align 4
  %150 = getelementptr %struct.nvec_msg, ptr %139, i32 0, i32 1, i32 %147
  %151 = load i8, ptr %150, align 1
  br label %250

152:                                              ; preds = %141
  %153 = zext i16 %145 to i32
  br label %154

154:                                              ; preds = %152, %137
  %155 = phi i32 [ %147, %152 ], [ 0, %137 ]
  %156 = phi i32 [ %153, %152 ], [ 0, %137 ]
  %157 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %157, ptr noundef nonnull @.str.26, ptr noundef %139, i32 noundef %155, i32 noundef %156) #8
  store i32 0, ptr %3, align 4
  br label %250

158:                                              ; preds = %36
  %159 = and i32 %7, 18
  %160 = icmp eq i32 %159, 16
  br i1 %160, label %161, label %228

161:                                              ; preds = %158
  %162 = getelementptr inbounds %struct.nvec_chip, ptr %1, i32 0, i32 15
  %163 = load ptr, ptr %162, align 4
  %164 = getelementptr inbounds %struct.nvec_msg, ptr %163, i32 0, i32 3
  %165 = load i16, ptr %164, align 4
  %166 = zext i16 %165 to i32
  %167 = getelementptr inbounds %struct.nvec_msg, ptr %163, i32 0, i32 1
  %168 = load i8, ptr %167, align 4
  %169 = icmp sgt i8 %168, -1
  %170 = lshr i8 %168, 5
  %171 = and i8 %170, 3
  %172 = icmp eq i8 %171, 2
  %173 = select i1 %169, i1 true, i1 %172
  br i1 %173, label %174, label %192

174:                                              ; preds = %161
  %175 = icmp eq i16 %165, 0
  br i1 %175, label %176, label %186

176:                                              ; preds = %174
  %177 = getelementptr inbounds %struct.nvec_msg, ptr %163, i32 0, i32 2
  %178 = load i16, ptr %177, align 2
  %179 = icmp eq i16 %178, 0
  br i1 %179, label %209, label %180

180:                                              ; preds = %176
  %181 = getelementptr %struct.nvec_msg, ptr %163, i32 0, i32 1, i32 1
  %182 = load i8, ptr %181, align 1
  %183 = zext i8 %182 to i32
  %184 = add nuw nsw i32 %183, 2
  %185 = icmp eq i32 %184, %166
  br i1 %185, label %209, label %198

186:                                              ; preds = %174
  %187 = getelementptr %struct.nvec_msg, ptr %163, i32 0, i32 1, i32 1
  %188 = load i8, ptr %187, align 1
  %189 = zext i8 %188 to i32
  %190 = add nuw nsw i32 %189, 2
  %191 = icmp eq i32 %190, %166
  br i1 %191, label %209, label %198

192:                                              ; preds = %161
  %193 = icmp eq i8 %171, 1
  %194 = select i1 %193, i32 3, i32 0
  %195 = icmp eq i8 %171, 0
  %196 = select i1 %195, i32 2, i32 %194
  %197 = icmp eq i32 %196, %166
  br i1 %197, label %209, label %198

198:                                              ; preds = %192, %186, %180
  %199 = phi i32 [ %196, %192 ], [ %184, %180 ], [ %190, %186 ]
  %200 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %200, ptr noundef nonnull @.str.33, i32 noundef %199, i32 noundef %166) #8
  %201 = load ptr, ptr %162, align 4
  %202 = getelementptr inbounds %struct.nvec_msg, ptr %201, i32 0, i32 4
  store volatile i32 0, ptr %202, align 4
  store i32 0, ptr %3, align 4
  %203 = load ptr, ptr %162, align 4
  %204 = getelementptr inbounds %struct.nvec_msg, ptr %203, i32 0, i32 1
  %205 = load i8, ptr %204, align 4
  %206 = icmp eq i8 %205, 2
  br i1 %206, label %207, label %250

207:                                              ; preds = %198
  %208 = getelementptr inbounds %struct.nvec_chip, ptr %1, i32 0, i32 18
  tail call void @complete(ptr noundef %208) #7
  br label %250

209:                                              ; preds = %192, %186, %180, %176
  %210 = getelementptr inbounds %struct.nvec_chip, ptr %1, i32 0, i32 20
  tail call void @_raw_spin_lock(ptr noundef %210) #7
  %211 = load ptr, ptr %162, align 4
  %212 = getelementptr inbounds %struct.nvec_chip, ptr %1, i32 0, i32 8
  %213 = getelementptr inbounds %struct.nvec_chip, ptr %1, i32 0, i32 8, i32 1
  %214 = load ptr, ptr %213, align 4
  store ptr %211, ptr %213, align 4
  store ptr %212, ptr %211, align 4
  %215 = getelementptr inbounds %struct.list_head, ptr %211, i32 0, i32 1
  store ptr %214, ptr %215, align 4
  store volatile ptr %211, ptr %214, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !18
  %216 = load i16, ptr %210, align 4
  %217 = add i16 %216, 1
  store i16 %217, ptr %210, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !21
  store i32 0, ptr %3, align 4
  %218 = load ptr, ptr %162, align 4
  %219 = getelementptr inbounds %struct.nvec_msg, ptr %218, i32 0, i32 1
  %220 = load i8, ptr %219, align 4
  %221 = icmp slt i8 %220, 0
  br i1 %221, label %224, label %222

222:                                              ; preds = %209
  %223 = getelementptr inbounds %struct.nvec_chip, ptr %1, i32 0, i32 18
  tail call void @complete(ptr noundef %223) #7
  br label %224

224:                                              ; preds = %222, %209
  %225 = getelementptr inbounds %struct.nvec_chip, ptr %1, i32 0, i32 11
  %226 = load ptr, ptr @system_wq, align 4
  %227 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %226, ptr noundef %225) #7
  br label %250

228:                                              ; preds = %158
  %229 = and i32 %7, 6
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %233, label %231

231:                                              ; preds = %228
  %232 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %232, ptr noundef nonnull @.str.29, i32 noundef %7, i32 noundef 4) #8
  store i32 0, ptr %3, align 4
  br label %250

233:                                              ; preds = %228
  %234 = getelementptr inbounds %struct.nvec_chip, ptr %1, i32 0, i32 15
  %235 = load ptr, ptr %234, align 4
  %236 = icmp eq ptr %235, null
  br i1 %236, label %246, label %237

237:                                              ; preds = %233
  %238 = getelementptr inbounds %struct.nvec_msg, ptr %235, i32 0, i32 3
  %239 = load i16, ptr %238, align 4
  %240 = icmp ult i16 %239, 34
  %241 = zext i16 %239 to i32
  br i1 %240, label %242, label %246

242:                                              ; preds = %237
  %243 = trunc i32 %33 to i8
  %244 = add nuw nsw i16 %239, 1
  store i16 %244, ptr %238, align 4
  %245 = getelementptr %struct.nvec_msg, ptr %235, i32 0, i32 1, i32 %241
  store i8 %243, ptr %245, align 1
  br label %250

246:                                              ; preds = %237, %233
  %247 = phi i32 [ 0, %233 ], [ %241, %237 ]
  %248 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %248, ptr noundef nonnull @.str.27, ptr noundef %235, i32 noundef %247, i32 noundef 34) #8
  br label %250

249:                                              ; preds = %36
  store i32 0, ptr %3, align 4
  br label %250

250:                                              ; preds = %249, %246, %242, %231, %224, %207, %198, %154, %148, %135, %129, %123, %110, %61, %60, %42, %38
  %251 = phi i8 [ -1, %249 ], [ -1, %231 ], [ -1, %242 ], [ -1, %246 ], [ -1, %135 ], [ %151, %148 ], [ -1, %154 ], [ -1, %110 ], [ -1, %42 ], [ -1, %60 ], [ -1, %61 ], [ -1, %38 ], [ -1, %123 ], [ -1, %129 ], [ -1, %198 ], [ -1, %207 ], [ -1, %224 ]
  %252 = and i32 %7, 6
  %253 = icmp eq i32 %252, 4
  br i1 %253, label %254, label %262

254:                                              ; preds = %250, %35
  %255 = phi i8 [ -1, %35 ], [ %251, %250 ]
  %256 = getelementptr inbounds %struct.nvec_chip, ptr %1, i32 0, i32 3
  %257 = load i32, ptr %256, align 4
  %258 = icmp eq i32 %33, %257
  br i1 %258, label %261, label %259

259:                                              ; preds = %254
  %260 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %260, ptr noundef nonnull @.str.28, i32 noundef %33, i32 noundef %257) #8
  br label %261

261:                                              ; preds = %259, %254
  store i32 1, ptr %3, align 4
  br label %262

262:                                              ; preds = %261, %250
  %263 = phi i8 [ %255, %261 ], [ %251, %250 ]
  %264 = and i32 %7, 18
  %265 = icmp eq i32 %264, 2
  br i1 %265, label %266, label %271

266:                                              ; preds = %262, %95, %74
  %267 = phi i8 [ %263, %262 ], [ -1, %74 ], [ %101, %95 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !22
  tail call void @arm_heavy_mb() #7
  %268 = zext i8 %267 to i32
  %269 = load ptr, ptr %4, align 4
  %270 = getelementptr i8, ptr %269, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %270, i32 %268) #7, !srcloc !16
  br label %271

271:                                              ; preds = %266, %262
  %272 = icmp eq i32 %7, 14
  br i1 %272, label %273, label %276

273:                                              ; preds = %271
  %274 = getelementptr inbounds %struct.nvec_chip, ptr %1, i32 0, i32 1
  %275 = load ptr, ptr %274, align 4
  tail call void @gpiod_set_value(ptr noundef %275, i32 noundef 1) #7
  br label %276

276:                                              ; preds = %273, %271, %103
  %277 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %277(i32 noundef 21474800) #7
  br label %278

278:                                              ; preds = %276, %18, %13
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_init_i2c_slave(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvec_chip, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @clk_prepare(ptr noundef %3) #7
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = tail call i32 @clk_enable(ptr noundef %3) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @clk_unprepare(ptr noundef %3) #7
  br label %10

10:                                               ; preds = %9, %6, %1
  %11 = getelementptr inbounds %struct.nvec_chip, ptr %0, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @reset_control_assert(ptr noundef %12) #7
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 429496) #7
  %15 = load ptr, ptr %11, align 4
  %16 = tail call i32 @reset_control_deassert(ptr noundef %15) #7
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !23
  tail call void @arm_heavy_mb() #7
  %17 = getelementptr inbounds %struct.nvec_chip, ptr %0, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 11264) #7, !srcloc !16
  %19 = load ptr, ptr %2, align 4
  %20 = tail call i32 @clk_set_rate(ptr noundef %19, i32 noundef 640000) #7
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !24
  tail call void @arm_heavy_mb() #7
  %21 = load ptr, ptr %17, align 4
  %22 = getelementptr i8, ptr %21, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 4) #7, !srcloc !16
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !25
  tail call void @arm_heavy_mb() #7
  %23 = load ptr, ptr %17, align 4
  %24 = getelementptr i8, ptr %23, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 30) #7, !srcloc !16
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !26
  tail call void @arm_heavy_mb() #7
  %25 = getelementptr inbounds %struct.nvec_chip, ptr %0, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = lshr i32 %26, 1
  %28 = load ptr, ptr %17, align 4
  %29 = getelementptr i8, ptr %28, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #7, !srcloc !16
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %30 = load ptr, ptr %17, align 4
  %31 = getelementptr i8, ptr %30, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 0) #7, !srcloc !16
  %32 = getelementptr inbounds %struct.nvec_chip, ptr %0, i32 0, i32 2
  %33 = load i32, ptr %32, align 4
  tail call void @enable_irq(i32 noundef %33) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvec_status_notifier(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq i32 %1, 7
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  %6 = getelementptr i8, ptr %0, i32 -52
  %7 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.34, i32 noundef 7) #8
  %8 = getelementptr i8, ptr %2, i32 1
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = add nuw nsw i32 %10, 2
  tail call void @print_hex_dump(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.35, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %2, i32 noundef %11, i1 noundef zeroext true) #7
  br label %12

12:                                               ; preds = %5, %3
  %13 = phi i32 [ 1, %5 ], [ 0, %3 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nvec_power_off() #0 {
  %1 = alloca [3 x i8], align 1
  %2 = alloca [2 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #7
  store i16 260, ptr %2, align 2
  %3 = load ptr, ptr @nvec_power_handle, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %1) #7
  store i8 4, ptr %1, align 1
  %4 = getelementptr inbounds i8, ptr %1, i32 1
  store i8 0, ptr %4, align 1
  %5 = getelementptr inbounds i8, ptr %1, i32 2
  store i8 0, ptr %5, align 1
  %6 = call i32 @nvec_write_async(ptr noundef %3, ptr noundef nonnull %1, i16 noundef signext 3) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %1) #7
  %7 = load ptr, ptr @nvec_power_handle, align 4
  %8 = call i32 @nvec_write_async(ptr noundef %7, ptr noundef nonnull %2, i16 noundef signext 2)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mfd_remove_devices(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvec_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [3 x i8], align 1
  %3 = alloca [2 x i8], align 2
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #7
  store i16 516, ptr %3, align 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %2) #7
  store i8 4, ptr %2, align 1
  %6 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 0, ptr %6, align 1
  %7 = getelementptr inbounds i8, ptr %2, i32 2
  store i8 0, ptr %7, align 1
  %8 = call i32 @nvec_write_async(ptr noundef %5, ptr noundef nonnull %2, i16 noundef signext 3) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #7
  %9 = getelementptr inbounds %struct.nvec_chip, ptr %5, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %9) #7
  %10 = getelementptr inbounds %struct.nvec_chip, ptr %5, i32 0, i32 23
  store i16 516, ptr %10, align 4
  %11 = call i32 @nvec_write_async(ptr noundef %5, ptr noundef nonnull %3, i16 noundef signext 2) #7
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.nvec_chip, ptr %5, i32 0, i32 22
  %15 = tail call i32 @wait_for_completion_timeout(ptr noundef %14, i32 noundef 200) #7
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str) #8
  br label %19

19:                                               ; preds = %17, %1
  tail call void @mutex_unlock(ptr noundef %9) #7
  br label %24

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.nvec_chip, ptr %5, i32 0, i32 24
  %22 = load ptr, ptr %21, align 4
  tail call void @mutex_unlock(ptr noundef %9) #7
  %23 = getelementptr inbounds %struct.nvec_msg, ptr %22, i32 0, i32 4
  store volatile i32 0, ptr %23, align 4
  br label %24

24:                                               ; preds = %20, %19
  %25 = getelementptr inbounds %struct.nvec_chip, ptr %5, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  tail call void @disable_irq(i32 noundef %26) #7
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !28
  tail call void @arm_heavy_mb() #7
  %27 = getelementptr inbounds %struct.nvec_chip, ptr %5, i32 0, i32 4
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 6) #7, !srcloc !16
  %30 = getelementptr inbounds %struct.nvec_chip, ptr %5, i32 0, i32 5
  %31 = load ptr, ptr %30, align 4
  tail call void @clk_disable(ptr noundef %31) #7
  tail call void @clk_unprepare(ptr noundef %31) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvec_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [3 x i8], align 1
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  tail call fastcc void @tegra_init_i2c_slave(ptr noundef %4)
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %2) #7
  store i8 4, ptr %2, align 1
  %5 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 0, ptr %5, align 1
  %6 = getelementptr inbounds i8, ptr %2, i32 2
  store i8 1, ptr %6, align 1
  %7 = call i32 @nvec_write_async(ptr noundef %4, ptr noundef nonnull %2, i16 noundef signext 3) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!8 = !{i64 2148220234}
!9 = !{i64 434037, i64 2147924008, i64 2147924034, i64 2147924081, i64 2147924103, i64 2147924131, i64 2147924151}
!10 = !{i64 443484, i64 443501, i64 443525, i64 443551, i64 443569}
!11 = !{i64 2148220578}
!12 = !{i64 3548947}
!13 = !{i64 2151788379}
!14 = !{i64 2151789934}
!15 = !{i64 2151790204}
!16 = !{i64 3548529}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{i64 2148949955}
!19 = !{i64 2148945779}
!20 = !{i64 2148945854, i64 2148945881, i64 2148945928, i64 2148945950, i64 2148945978, i64 2148945998}
!21 = !{i64 2148972958}
!22 = !{i64 2151795970}
!23 = !{i64 2151799485}
!24 = !{i64 2151799910}
!25 = !{i64 2151800278}
!26 = !{i64 2151800615}
!27 = !{i64 2151800964}
!28 = !{i64 2151801497}
