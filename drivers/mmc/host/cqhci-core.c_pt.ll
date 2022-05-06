; ModuleID = '/llk/IR/drivers/mmc/host/cqhci-core.c_pt.bc'
source_filename = "../drivers/mmc/host/cqhci-core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cqhci_deactivate:\09\09\09\09\09"
module asm "\09.asciz \09\22cqhci_deactivate\22\09\09\09\09\09"
module asm "__kstrtabns_cqhci_deactivate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cqhci_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22cqhci_resume\22\09\09\09\09\09"
module asm "__kstrtabns_cqhci_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cqhci_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22cqhci_irq\22\09\09\09\09\09"
module asm "__kstrtabns_cqhci_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cqhci_pltfm_init:\09\09\09\09\09"
module asm "\09.asciz \09\22cqhci_pltfm_init\22\09\09\09\09\09"
module asm "__kstrtabns_cqhci_pltfm_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cqhci_init:\09\09\09\09\09"
module asm "\09.asciz \09\22cqhci_init\22\09\09\09\09\09"
module asm "__kstrtabns_cqhci_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mmc_cqe_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, [37 x i8], [0 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.mmc_supply = type { ptr, ptr }
%struct.cqhci_host = type { ptr, ptr, ptr, %struct.spinlock, i32, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, ptr, i8, i32, i32, %struct.completion, %struct.wait_queue_head, ptr }
%struct.cqhci_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cqhci_slot = type { ptr, i32 }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32 }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.mmc_card = type { ptr, %struct.device, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i8, [4 x i32], [4 x i32], [2 x i32], [16 x i32], %struct.mmc_cid, %struct.mmc_csd, %struct.mmc_ext_csd, %struct.sd_scr, %struct.sd_ssr, %struct.sd_switch_caps, %struct.sd_ext_reg, %struct.sd_ext_reg, i32, %struct.atomic_t, %struct.sdio_cccr, %struct.sdio_cis, [7 x ptr], ptr, i8, i8, i32, ptr, ptr, i32, i32, i32, ptr, [7 x %struct.mmc_part], i32, ptr }
%struct.mmc_cid = type { i32, [8 x i8], i8, i32, i16, i16, i8, i8, i8 }
%struct.mmc_csd = type { i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.mmc_ext_csd = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i8, i8, i32, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, i8, i32 }
%struct.sd_scr = type { i8, i8, i8, i8, i8, i8 }
%struct.sd_ssr = type { i32, i32, i32 }
%struct.sd_switch_caps = type { i32, i32, i32, i32, i32 }
%struct.sd_ext_reg = type { i8, i8, i16, i8, i8, i8 }
%struct.sdio_cccr = type { i32, i32, i8 }
%struct.sdio_cis = type { i16, i16, i16, i32 }
%struct.mmc_part = type { i64, i32, [20 x i8], i8, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__kstrtab_cqhci_deactivate = external dso_local constant [0 x i8], align 1
@__kstrtabns_cqhci_deactivate = external dso_local constant [0 x i8], align 1
@__ksymtab_cqhci_deactivate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cqhci_deactivate to i32), ptr @__kstrtab_cqhci_deactivate, ptr @__kstrtabns_cqhci_deactivate }, section "___ksymtab+cqhci_deactivate", align 4
@__kstrtab_cqhci_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_cqhci_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_cqhci_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cqhci_resume to i32), ptr @__kstrtab_cqhci_resume, ptr @__kstrtabns_cqhci_resume }, section "___ksymtab+cqhci_resume", align 4
@__kstrtab_cqhci_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_cqhci_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_cqhci_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cqhci_irq to i32), ptr @__kstrtab_cqhci_irq, ptr @__kstrtabns_cqhci_irq }, section "___ksymtab+cqhci_irq", align 4
@.str = private unnamed_addr constant [6 x i8] c"cqhci\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to remap cqhci regs\0A\00", align 1
@__kstrtab_cqhci_pltfm_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_cqhci_pltfm_init = external dso_local constant [0 x i8], align 1
@__ksymtab_cqhci_pltfm_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cqhci_pltfm_init to i32), ptr @__kstrtab_cqhci_pltfm_init, ptr @__kstrtabns_cqhci_pltfm_init }, section "___ksymtab+cqhci_pltfm_init", align 4
@cqhci_cqe_ops = internal constant %struct.mmc_cqe_ops { ptr @cqhci_enable, ptr @cqhci_disable, ptr @cqhci_request, ptr @cqhci_post_req, ptr @cqhci_off, ptr @cqhci_wait_for_idle, ptr @cqhci_timeout, ptr @cqhci_recovery_start, ptr @cqhci_recovery_finish }, align 4
@cqhci_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"&cq_host->wait_queue\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"\016%s: CQHCI version %u.%02u\0A\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"\013%s: CQHCI version %u.%02u failed to initialize, error %d\0A\00", align 1
@__kstrtab_cqhci_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_cqhci_init = external dso_local constant [0 x i8], align 1
@__ksymtab_cqhci_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cqhci_init to i32), ptr @__kstrtab_cqhci_init, ptr @__kstrtabns_cqhci_init }, section "___ksymtab+cqhci_init", align 4
@__UNIQUE_ID_author261 = internal constant [60 x i8] c"cqhci.author=Venkat Gopalakrishnan <venkatg@codeaurora.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description262 = internal constant [65 x i8] c"cqhci.description=Command Queue Host Controller Interface driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file263 = internal constant [34 x i8] c"cqhci.file=drivers/mmc/host/cqhci\00", section ".modinfo", align 1
@__UNIQUE_ID_license264 = internal constant [21 x i8] c"cqhci.license=GPL v2\00", section ".modinfo", align 1
@cqhci_error_irq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"drivers/mmc/host/cqhci-core.c\00", align 1
@.str.7 = private unnamed_addr constant [89 x i8] c"%s: cqhci: error when idle. IRQ status: 0x%08x cmd error %d data error %d TERRI: 0x%08x\0A\00", align 1
@cqhci_error_irq.__already_done.8 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = private unnamed_addr constant [80 x i8] c"%s: cqhci: invalid crypto configuration error. IRQ status: 0x%08x TDPE: 0x%08x\0A\00", align 1
@cqhci_finish_mrq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"%s: cqhci: spurious TCN for tag %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"\013%s: Failed to enable CQE, error %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"\013%s: cqhci: not enabled\0A\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"\013%s: cqhci: CQE failed to exit halt state\0A\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"\013%s: cqhci: failed to setup tx desc: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"\013%s: %s: unable to map sg lists, %d\0A\00", align 1
@__func__.cqhci_prep_tran_desc = private unnamed_addr constant [21 x i8] c"cqhci_prep_tran_desc\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"\013%s: sg-len: %d\0A\00", align 1
@__func__.cqhci_dma_map = private unnamed_addr constant [14 x i8] c"cqhci_dma_map\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"\013%s: cqhci: CQE stuck on\0A\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"\013%s: cqhci: timeout for tag %d, qcnt %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [59 x i8] c"\013%s: cqhci: ============ CQHCI REGISTER DUMP ===========\0A\00", align 1
@.str.20 = private unnamed_addr constant [51 x i8] c"\013%s: cqhci: Caps:      0x%08x | Version:  0x%08x\0A\00", align 1
@.str.21 = private unnamed_addr constant [51 x i8] c"\013%s: cqhci: Config:    0x%08x | Control:  0x%08x\0A\00", align 1
@.str.22 = private unnamed_addr constant [51 x i8] c"\013%s: cqhci: Int stat:  0x%08x | Int enab: 0x%08x\0A\00", align 1
@.str.23 = private unnamed_addr constant [51 x i8] c"\013%s: cqhci: Int sig:   0x%08x | Int Coal: 0x%08x\0A\00", align 1
@.str.24 = private unnamed_addr constant [51 x i8] c"\013%s: cqhci: TDL base:  0x%08x | TDL up32: 0x%08x\0A\00", align 1
@.str.25 = private unnamed_addr constant [51 x i8] c"\013%s: cqhci: Doorbell:  0x%08x | TCN:      0x%08x\0A\00", align 1
@.str.26 = private unnamed_addr constant [51 x i8] c"\013%s: cqhci: Dev queue: 0x%08x | Dev Pend: 0x%08x\0A\00", align 1
@.str.27 = private unnamed_addr constant [51 x i8] c"\013%s: cqhci: Task clr:  0x%08x | SSC1:     0x%08x\0A\00", align 1
@.str.28 = private unnamed_addr constant [51 x i8] c"\013%s: cqhci: SSC2:      0x%08x | DCMD rsp: 0x%08x\0A\00", align 1
@.str.29 = private unnamed_addr constant [51 x i8] c"\013%s: cqhci: RED mask:  0x%08x | TERRI:    0x%08x\0A\00", align 1
@.str.30 = private unnamed_addr constant [51 x i8] c"\013%s: cqhci: Resp idx:  0x%08x | Resp arg: 0x%08x\0A\00", align 1
@.str.31 = private unnamed_addr constant [60 x i8] c"\013%s: cqhci: : ===========================================\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_author261, ptr @__UNIQUE_ID_description262, ptr @__UNIQUE_ID_file263, ptr @__UNIQUE_ID_license264, ptr @__ksymtab_cqhci_deactivate, ptr @__ksymtab_cqhci_init, ptr @__ksymtab_cqhci_irq, ptr @__ksymtab_cqhci_pltfm_init, ptr @__ksymtab_cqhci_resume], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cqhci_deactivate(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 62
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr inbounds %struct.cqhci_host, ptr %3, i32 0, i32 11
  %5 = load i8, ptr %4, align 4, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %39, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.cqhci_host, ptr %3, i32 0, i32 14
  %9 = load i8, ptr %8, align 1, !range !8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %39, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr inbounds %struct.cqhci_host_ops, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16, !prof !9

16:                                               ; preds = %11
  %17 = tail call i32 %14(ptr noundef %3, i32 noundef 8) #7
  br label %23

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.cqhci_host, ptr %3, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 8
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #7, !srcloc !10
  br label %23

23:                                               ; preds = %18, %16
  %24 = phi i32 [ %17, %16 ], [ %22, %18 ]
  %25 = and i32 %24, -2
  %26 = load ptr, ptr %3, align 4
  %27 = getelementptr inbounds %struct.cqhci_host_ops, ptr %26, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30, !prof !9

30:                                               ; preds = %23
  tail call void %28(ptr noundef %3, i32 noundef %25, i32 noundef 8) #7
  br label %35

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.cqhci_host, ptr %3, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %33, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %25) #7, !srcloc !11
  br label %35

35:                                               ; preds = %31, %30
  %36 = getelementptr inbounds %struct.cqhci_host, ptr %3, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.mmc_host, ptr %37, i32 0, i32 65
  store i8 0, ptr %38, align 1
  store i8 0, ptr %8, align 1
  br label %39

39:                                               ; preds = %35, %7, %1
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @cqhci_resume(ptr nocapture readnone %0) #2 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cqhci_irq(ptr noundef %0, i32 %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !12
  %6 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 62
  %7 = load ptr, ptr %6, align 16
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.cqhci_host_ops, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12, !prof !9

12:                                               ; preds = %4
  %13 = tail call i32 %10(ptr noundef %7, i32 noundef 16) #7
  br label %19

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.cqhci_host, ptr %7, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 16
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #7, !srcloc !10
  br label %19

19:                                               ; preds = %14, %12
  %20 = phi i32 [ %13, %12 ], [ %18, %14 ]
  %21 = load ptr, ptr %7, align 4
  %22 = getelementptr inbounds %struct.cqhci_host_ops, ptr %21, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25, !prof !9

25:                                               ; preds = %19
  tail call void %23(ptr noundef %7, i32 noundef %20, i32 noundef 16) #7
  br label %30

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.cqhci_host, ptr %7, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %20) #7, !srcloc !11
  br label %30

30:                                               ; preds = %26, %25
  %31 = and i32 %20, 52
  %32 = or i32 %3, %2
  %33 = or i32 %32, %31
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %222, label %35

35:                                               ; preds = %30
  %36 = load ptr, ptr %6, align 16
  %37 = getelementptr inbounds %struct.cqhci_host, ptr %36, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %37) #7
  %38 = load ptr, ptr %36, align 4
  %39 = getelementptr inbounds %struct.cqhci_host_ops, ptr %38, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42, !prof !9

42:                                               ; preds = %35
  %43 = tail call i32 %40(ptr noundef %36, i32 noundef 84) #7
  br label %49

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.cqhci_host, ptr %36, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr i8, ptr %46, i32 84
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #7, !srcloc !10
  br label %49

49:                                               ; preds = %44, %42
  %50 = phi i32 [ %43, %42 ], [ %48, %44 ]
  %51 = getelementptr inbounds %struct.cqhci_host, ptr %36, i32 0, i32 16
  %52 = load i8, ptr %51, align 1, !range !8
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %219

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.cqhci_host, ptr %36, i32 0, i32 7
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %54
  %59 = load i1, ptr @cqhci_error_irq.__already_done, align 1
  br i1 %59, label %219, label %60, !prof !9

60:                                               ; preds = %58
  store i1 true, ptr @cqhci_error_irq.__already_done, align 1
  %61 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1, i32 3
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  br label %67

67:                                               ; preds = %64, %60
  %68 = phi ptr [ %66, %64 ], [ %62, %60 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 713, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef %68, i32 noundef %20, i32 noundef %2, i32 noundef %3, i32 noundef %50) #7
  br label %219

69:                                               ; preds = %54
  %70 = and i32 %50, 32768
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %98, label %72

72:                                               ; preds = %69
  %73 = lshr i32 %50, 8
  %74 = and i32 %73, 31
  %75 = getelementptr inbounds %struct.cqhci_host, ptr %36, i32 0, i32 29
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr %struct.cqhci_slot, ptr %76, i32 %74
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %98, label %80

80:                                               ; preds = %72
  %81 = icmp eq i32 %2, 0
  %82 = select i1 %81, i32 %3, i32 %2
  %83 = icmp eq i32 %82, -110
  %84 = select i1 %83, i32 8, i32 16
  %85 = icmp eq i32 %82, -84
  %86 = select i1 %85, i32 4, i32 %84
  %87 = getelementptr %struct.cqhci_slot, ptr %76, i32 %74, i32 1
  store i32 %86, ptr %87, align 4
  %88 = load ptr, ptr %6, align 16
  %89 = getelementptr inbounds %struct.cqhci_host, ptr %88, i32 0, i32 16
  %90 = load i8, ptr %89, align 1, !range !8
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %80
  store i8 1, ptr %89, align 1
  %93 = getelementptr inbounds %struct.cqhci_host, ptr %88, i32 0, i32 28
  tail call void @__wake_up(ptr noundef %93, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  %94 = getelementptr inbounds %struct.mmc_request, ptr %78, i32 0, i32 7
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %92
  tail call void %95(ptr noundef nonnull %78) #7
  br label %98

98:                                               ; preds = %97, %92, %80, %72, %69
  %99 = icmp sgt i32 %50, -1
  br i1 %99, label %126, label %100

100:                                              ; preds = %98
  %101 = lshr i32 %50, 24
  %102 = and i32 %101, 31
  %103 = getelementptr inbounds %struct.cqhci_host, ptr %36, i32 0, i32 29
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr %struct.cqhci_slot, ptr %104, i32 %102
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %126, label %108

108:                                              ; preds = %100
  %109 = icmp eq i32 %3, 0
  %110 = select i1 %109, i32 %2, i32 %3
  %111 = icmp eq i32 %110, -110
  %112 = select i1 %111, i32 8, i32 16
  %113 = icmp eq i32 %110, -84
  %114 = select i1 %113, i32 4, i32 %112
  %115 = getelementptr %struct.cqhci_slot, ptr %104, i32 %102, i32 1
  store i32 %114, ptr %115, align 4
  %116 = load ptr, ptr %6, align 16
  %117 = getelementptr inbounds %struct.cqhci_host, ptr %116, i32 0, i32 16
  %118 = load i8, ptr %117, align 1, !range !8
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %108
  store i8 1, ptr %117, align 1
  %121 = getelementptr inbounds %struct.cqhci_host, ptr %116, i32 0, i32 28
  tail call void @__wake_up(ptr noundef %121, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  %122 = getelementptr inbounds %struct.mmc_request, ptr %106, i32 0, i32 7
  %123 = load ptr, ptr %122, align 4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %126, label %125

125:                                              ; preds = %120
  tail call void %123(ptr noundef nonnull %106) #7
  br label %126

126:                                              ; preds = %125, %120, %108, %100, %98
  %127 = and i32 %20, 32
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %187, label %129

129:                                              ; preds = %126
  %130 = load ptr, ptr %36, align 4
  %131 = getelementptr inbounds %struct.cqhci_host_ops, ptr %130, i32 0, i32 2
  %132 = load ptr, ptr %131, align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %136, label %134, !prof !9

134:                                              ; preds = %129
  %135 = tail call i32 %132(ptr noundef %36, i32 noundef 60) #7
  br label %141

136:                                              ; preds = %129
  %137 = getelementptr inbounds %struct.cqhci_host, ptr %36, i32 0, i32 1
  %138 = load ptr, ptr %137, align 4
  %139 = getelementptr i8, ptr %138, i32 60
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %139) #7, !srcloc !10
  br label %141

141:                                              ; preds = %136, %134
  %142 = phi i32 [ %135, %134 ], [ %140, %136 ]
  %143 = load i1, ptr @cqhci_error_irq.__already_done.8, align 1
  br i1 %143, label %153, label %144, !prof !9

144:                                              ; preds = %141
  store i1 true, ptr @cqhci_error_irq.__already_done.8, align 1
  %145 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1, i32 3
  %146 = load ptr, ptr %145, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %151

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1
  %150 = load ptr, ptr %149, align 4
  br label %151

151:                                              ; preds = %148, %144
  %152 = phi ptr [ %150, %148 ], [ %146, %144 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 747, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef %152, i32 noundef %20, i32 noundef %142) #7
  br label %153

153:                                              ; preds = %151, %141
  %154 = icmp eq i32 %142, 0
  br i1 %154, label %187, label %155

155:                                              ; preds = %153
  %156 = getelementptr inbounds %struct.cqhci_host, ptr %36, i32 0, i32 29
  %157 = icmp eq i32 %3, 0
  %158 = select i1 %157, i32 %2, i32 %3
  %159 = icmp eq i32 %158, -110
  %160 = select i1 %159, i32 8, i32 16
  %161 = icmp eq i32 %158, -84
  %162 = select i1 %161, i32 4, i32 %160
  br label %163

163:                                              ; preds = %185, %155
  %164 = phi i32 [ %142, %155 ], [ %168, %185 ]
  %165 = tail call i32 @llvm.cttz.i32(i32 %164, i1 true) #7, !range !13
  %166 = shl nuw i32 1, %165
  %167 = xor i32 %166, -1
  %168 = and i32 %164, %167
  %169 = load ptr, ptr %156, align 4
  %170 = getelementptr %struct.cqhci_slot, ptr %169, i32 %165
  %171 = load ptr, ptr %170, align 4
  %172 = icmp eq ptr %171, null
  br i1 %172, label %185, label %173

173:                                              ; preds = %163
  %174 = getelementptr %struct.cqhci_slot, ptr %169, i32 %165, i32 1
  store i32 %162, ptr %174, align 4
  %175 = load ptr, ptr %6, align 16
  %176 = getelementptr inbounds %struct.cqhci_host, ptr %175, i32 0, i32 16
  %177 = load i8, ptr %176, align 1, !range !8
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %173
  store i8 1, ptr %176, align 1
  %180 = getelementptr inbounds %struct.cqhci_host, ptr %175, i32 0, i32 28
  tail call void @__wake_up(ptr noundef %180, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  %181 = getelementptr inbounds %struct.mmc_request, ptr %171, i32 0, i32 7
  %182 = load ptr, ptr %181, align 4
  %183 = icmp eq ptr %182, null
  br i1 %183, label %185, label %184

184:                                              ; preds = %179
  tail call void %182(ptr noundef nonnull %171) #7
  br label %185

185:                                              ; preds = %184, %179, %173, %163
  %186 = icmp eq i32 %168, 0
  br i1 %186, label %187, label %163

187:                                              ; preds = %185, %153, %126
  %188 = load i8, ptr %51, align 1, !range !8
  %189 = icmp eq i8 %188, 0
  br i1 %189, label %190, label %219

190:                                              ; preds = %187
  %191 = getelementptr inbounds %struct.cqhci_host, ptr %36, i32 0, i32 29
  %192 = load ptr, ptr %191, align 4
  br label %193

193:                                              ; preds = %216, %190
  %194 = phi i32 [ 0, %190 ], [ %217, %216 ]
  %195 = getelementptr %struct.cqhci_slot, ptr %192, i32 %194
  %196 = load ptr, ptr %195, align 4
  %197 = icmp eq ptr %196, null
  br i1 %197, label %216, label %198

198:                                              ; preds = %193
  %199 = icmp eq i32 %3, 0
  %200 = select i1 %199, i32 %2, i32 %3
  %201 = icmp eq i32 %200, -110
  %202 = select i1 %201, i32 8, i32 16
  %203 = icmp eq i32 %200, -84
  %204 = select i1 %203, i32 4, i32 %202
  %205 = getelementptr %struct.cqhci_slot, ptr %192, i32 %194, i32 1
  store i32 %204, ptr %205, align 4
  %206 = load ptr, ptr %6, align 16
  %207 = getelementptr inbounds %struct.cqhci_host, ptr %206, i32 0, i32 16
  %208 = load i8, ptr %207, align 1, !range !8
  %209 = icmp eq i8 %208, 0
  br i1 %209, label %210, label %219

210:                                              ; preds = %198
  store i8 1, ptr %207, align 1
  %211 = getelementptr inbounds %struct.cqhci_host, ptr %206, i32 0, i32 28
  tail call void @__wake_up(ptr noundef %211, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  %212 = getelementptr inbounds %struct.mmc_request, ptr %196, i32 0, i32 7
  %213 = load ptr, ptr %212, align 4
  %214 = icmp eq ptr %213, null
  br i1 %214, label %219, label %215

215:                                              ; preds = %210
  tail call void %213(ptr noundef nonnull %196) #7
  br label %219

216:                                              ; preds = %193
  %217 = add nuw nsw i32 %194, 1
  %218 = icmp eq i32 %217, 32
  br i1 %218, label %219, label %193

219:                                              ; preds = %216, %215, %210, %198, %187, %67, %58, %49
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %220 = load i16, ptr %37, align 4
  %221 = add i16 %220, 1
  store i16 %221, ptr %37, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !17
  br label %222

222:                                              ; preds = %219, %30
  %223 = and i32 %20, 2
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %323, label %225

225:                                              ; preds = %222
  %226 = load ptr, ptr %7, align 4
  %227 = getelementptr inbounds %struct.cqhci_host_ops, ptr %226, i32 0, i32 2
  %228 = load ptr, ptr %227, align 4
  %229 = icmp eq ptr %228, null
  br i1 %229, label %232, label %230, !prof !9

230:                                              ; preds = %225
  %231 = tail call i32 %228(ptr noundef %7, i32 noundef 44) #7
  br label %237

232:                                              ; preds = %225
  %233 = getelementptr inbounds %struct.cqhci_host, ptr %7, i32 0, i32 1
  %234 = load ptr, ptr %233, align 4
  %235 = getelementptr i8, ptr %234, i32 44
  %236 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %235) #7, !srcloc !10
  br label %237

237:                                              ; preds = %232, %230
  %238 = phi i32 [ %231, %230 ], [ %236, %232 ]
  store i32 %238, ptr %5, align 4
  %239 = load ptr, ptr %7, align 4
  %240 = getelementptr inbounds %struct.cqhci_host_ops, ptr %239, i32 0, i32 1
  %241 = load ptr, ptr %240, align 4
  %242 = icmp eq ptr %241, null
  br i1 %242, label %244, label %243, !prof !9

243:                                              ; preds = %237
  tail call void %241(ptr noundef %7, i32 noundef %238, i32 noundef 44) #7
  br label %248

244:                                              ; preds = %237
  %245 = getelementptr inbounds %struct.cqhci_host, ptr %7, i32 0, i32 1
  %246 = load ptr, ptr %245, align 4
  %247 = getelementptr i8, ptr %246, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %247, i32 %238) #7, !srcloc !11
  br label %248

248:                                              ; preds = %244, %243
  %249 = getelementptr inbounds %struct.cqhci_host, ptr %7, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %249) #7
  %250 = getelementptr inbounds %struct.cqhci_host, ptr %7, i32 0, i32 6
  %251 = load i32, ptr %250, align 4
  %252 = call i32 @_find_next_bit_le(ptr noundef nonnull %5, i32 noundef %251, i32 noundef 0) #7
  %253 = load i32, ptr %250, align 4
  %254 = icmp ult i32 %252, %253
  br i1 %254, label %255, label %310

255:                                              ; preds = %248
  %256 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1, i32 3
  %257 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1
  br label %258

258:                                              ; preds = %304, %255
  %259 = phi i32 [ %252, %255 ], [ %307, %304 ]
  %260 = load ptr, ptr %6, align 16
  %261 = getelementptr inbounds %struct.cqhci_host, ptr %260, i32 0, i32 29
  %262 = load ptr, ptr %261, align 4
  %263 = getelementptr %struct.cqhci_slot, ptr %262, i32 %259
  %264 = load ptr, ptr %263, align 4
  %265 = icmp eq ptr %264, null
  br i1 %265, label %266, label %275

266:                                              ; preds = %258
  %267 = load i1, ptr @cqhci_finish_mrq.__already_done, align 1
  br i1 %267, label %304, label %268, !prof !9

268:                                              ; preds = %266
  store i1 true, ptr @cqhci_finish_mrq.__already_done, align 1
  %269 = load ptr, ptr %256, align 4
  %270 = icmp eq ptr %269, null
  br i1 %270, label %271, label %273

271:                                              ; preds = %268
  %272 = load ptr, ptr %257, align 4
  br label %273

273:                                              ; preds = %271, %268
  %274 = phi ptr [ %272, %271 ], [ %269, %268 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 787, i32 noundef 9, ptr noundef nonnull @.str.10, ptr noundef %274, i32 noundef %259) #7
  br label %304

275:                                              ; preds = %258
  %276 = getelementptr inbounds %struct.cqhci_host, ptr %260, i32 0, i32 16
  %277 = load i8, ptr %276, align 1, !range !8
  %278 = icmp eq i8 %277, 0
  br i1 %278, label %283, label %279

279:                                              ; preds = %275
  %280 = getelementptr %struct.cqhci_slot, ptr %262, i32 %259, i32 1
  %281 = load i32, ptr %280, align 4
  %282 = or i32 %281, 2
  store i32 %282, ptr %280, align 4
  br label %304

283:                                              ; preds = %275
  store ptr null, ptr %263, align 4
  %284 = getelementptr inbounds %struct.cqhci_host, ptr %260, i32 0, i32 7
  %285 = load i32, ptr %284, align 4
  %286 = add i32 %285, -1
  store i32 %286, ptr %284, align 4
  %287 = getelementptr inbounds %struct.mmc_request, ptr %264, i32 0, i32 2
  %288 = load ptr, ptr %287, align 4
  %289 = icmp eq ptr %288, null
  br i1 %289, label %303, label %290

290:                                              ; preds = %283
  %291 = getelementptr inbounds %struct.mmc_data, ptr %288, i32 0, i32 5
  %292 = load i32, ptr %291, align 4
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %300

294:                                              ; preds = %290
  %295 = getelementptr inbounds %struct.mmc_data, ptr %288, i32 0, i32 2
  %296 = load i32, ptr %295, align 4
  %297 = getelementptr inbounds %struct.mmc_data, ptr %288, i32 0, i32 3
  %298 = load i32, ptr %297, align 4
  %299 = mul i32 %298, %296
  br label %300

300:                                              ; preds = %294, %290
  %301 = phi i32 [ %299, %294 ], [ 0, %290 ]
  %302 = getelementptr inbounds %struct.mmc_data, ptr %288, i32 0, i32 7
  store i32 %301, ptr %302, align 4
  br label %303

303:                                              ; preds = %300, %283
  call void @mmc_cqe_request_done(ptr noundef %0, ptr noundef nonnull %264) #7
  br label %304

304:                                              ; preds = %303, %279, %273, %266
  %305 = load i32, ptr %250, align 4
  %306 = add nuw i32 %259, 1
  %307 = call i32 @_find_next_bit_le(ptr noundef nonnull %5, i32 noundef %305, i32 noundef %306) #7
  %308 = load i32, ptr %250, align 4
  %309 = icmp ult i32 %307, %308
  br i1 %309, label %258, label %310

310:                                              ; preds = %304, %248
  %311 = getelementptr inbounds %struct.cqhci_host, ptr %7, i32 0, i32 15
  %312 = load i8, ptr %311, align 4, !range !8
  %313 = icmp eq i8 %312, 0
  br i1 %313, label %320, label %314

314:                                              ; preds = %310
  %315 = getelementptr inbounds %struct.cqhci_host, ptr %7, i32 0, i32 7
  %316 = load i32, ptr %315, align 4
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %318, label %320

318:                                              ; preds = %314
  store i8 0, ptr %311, align 4
  %319 = getelementptr inbounds %struct.cqhci_host, ptr %7, i32 0, i32 28
  call void @__wake_up(ptr noundef %319, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %320

320:                                              ; preds = %318, %314, %310
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %321 = load i16, ptr %249, align 4
  %322 = add i16 %321, 1
  store i16 %322, ptr %249, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !15
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !17
  br label %323

323:                                              ; preds = %320, %222
  %324 = and i32 %20, 8
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %328, label %326

326:                                              ; preds = %323
  %327 = getelementptr inbounds %struct.cqhci_host, ptr %7, i32 0, i32 28
  call void @__wake_up(ptr noundef %327, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %328

328:                                              ; preds = %326, %323
  %329 = and i32 %20, 1
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %333, label %331

331:                                              ; preds = %328
  %332 = getelementptr inbounds %struct.cqhci_host, ptr %7, i32 0, i32 28
  call void @__wake_up(ptr noundef %332, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %333

333:                                              ; preds = %331, %328
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @cqhci_pltfm_init(ptr noundef %0) #0 {
  %2 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str) #7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 116, i32 noundef 3520) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %4
  %9 = load i32, ptr %2, align 4
  %10 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = sub i32 1, %9
  %13 = add i32 %12, %11
  %14 = tail call ptr @devm_ioremap(ptr noundef %5, i32 noundef %9, i32 noundef %13) #7
  %15 = getelementptr inbounds %struct.cqhci_host, ptr %6, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  %16 = icmp eq ptr %14, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.1) #8
  br label %18

18:                                               ; preds = %17, %8, %4, %1
  %19 = phi ptr [ inttoptr (i32 -16 to ptr), %17 ], [ %6, %8 ], [ inttoptr (i32 -22 to ptr), %1 ], [ inttoptr (i32 -12 to ptr), %4 ]
  ret ptr %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cqhci_init(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) #0 {
  %4 = zext i1 %2 to i8
  %5 = getelementptr inbounds %struct.cqhci_host, ptr %0, i32 0, i32 5
  store i8 %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.cqhci_host, ptr %0, i32 0, i32 2
  store ptr %1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 62
  store ptr %0, ptr %7, align 16
  %8 = getelementptr inbounds %struct.cqhci_host, ptr %0, i32 0, i32 6
  store i32 32, ptr %8, align 4
  %9 = getelementptr inbounds %struct.cqhci_host, ptr %0, i32 0, i32 8
  store i32 31, ptr %9, align 4
  %10 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 61
  store ptr @cqhci_cqe_ops, ptr %10, align 4
  %11 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 63
  %12 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 17
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 16777216
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i32 32, i32 31
  store i32 %16, ptr %11, align 4
  %17 = load i32, ptr %8, align 4
  %18 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %17, i32 8) #7
  %19 = extractvalue { i32, i1 } %18, 1
  br i1 %19, label %20, label %22, !prof !18

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.cqhci_host, ptr %0, i32 0, i32 29
  store ptr null, ptr %21, align 4
  br label %73

22:                                               ; preds = %3
  %23 = load ptr, ptr %1, align 64
  %24 = extractvalue { i32, i1 } %18, 0
  %25 = tail call noalias ptr @devm_kmalloc(ptr noundef %23, i32 noundef %24, i32 noundef 3520) #7
  %26 = getelementptr inbounds %struct.cqhci_host, ptr %0, i32 0, i32 29
  store ptr %25, ptr %26, align 4
  %27 = icmp eq ptr %25, null
  br i1 %27, label %73, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.cqhci_host, ptr %0, i32 0, i32 3
  store i32 0, ptr %29, align 4
  %30 = getelementptr inbounds %struct.cqhci_host, ptr %0, i32 0, i32 27
  store i32 0, ptr %30, align 4
  %31 = getelementptr inbounds %struct.cqhci_host, ptr %0, i32 0, i32 27, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %31, ptr noundef nonnull @.str.32, ptr noundef nonnull @init_completion.__key) #7
  %32 = getelementptr inbounds %struct.cqhci_host, ptr %0, i32 0, i32 28
  tail call void @__init_waitqueue_head(ptr noundef %32, ptr noundef nonnull @.str.3, ptr noundef nonnull @cqhci_init.__key) #7
  %33 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 1, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  br label %39

39:                                               ; preds = %36, %28
  %40 = phi ptr [ %38, %36 ], [ %34, %28 ]
  %41 = load ptr, ptr %0, align 4
  %42 = getelementptr inbounds %struct.cqhci_host_ops, ptr %41, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45, !prof !9

45:                                               ; preds = %39
  %46 = tail call i32 %43(ptr noundef %0, i32 noundef 0) #7
  br label %51

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.cqhci_host, ptr %0, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #7, !srcloc !10
  br label %51

51:                                               ; preds = %47, %45
  %52 = phi i32 [ %46, %45 ], [ %50, %47 ]
  %53 = lshr i32 %52, 8
  %54 = and i32 %53, 15
  %55 = load ptr, ptr %0, align 4
  %56 = getelementptr inbounds %struct.cqhci_host_ops, ptr %55, i32 0, i32 2
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59, !prof !9

59:                                               ; preds = %51
  %60 = tail call i32 %57(ptr noundef %0, i32 noundef 0) #7
  br label %65

61:                                               ; preds = %51
  %62 = getelementptr inbounds %struct.cqhci_host, ptr %0, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #7, !srcloc !10
  br label %65

65:                                               ; preds = %61, %59
  %66 = phi i32 [ %60, %59 ], [ %64, %61 ]
  %67 = lshr i32 %66, 4
  %68 = and i32 %67, 15
  %69 = mul nuw nsw i32 %68, 10
  %70 = and i32 %66, 15
  %71 = add nuw nsw i32 %69, %70
  %72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %40, i32 noundef %54, i32 noundef %71) #8
  br label %114

73:                                               ; preds = %22, %20
  %74 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 1, i32 3
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  br label %80

80:                                               ; preds = %77, %73
  %81 = phi ptr [ %79, %77 ], [ %75, %73 ]
  %82 = load ptr, ptr %0, align 4
  %83 = getelementptr inbounds %struct.cqhci_host_ops, ptr %82, i32 0, i32 2
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %88, label %86, !prof !9

86:                                               ; preds = %80
  %87 = tail call i32 %84(ptr noundef %0, i32 noundef 0) #7
  br label %92

88:                                               ; preds = %80
  %89 = getelementptr inbounds %struct.cqhci_host, ptr %0, i32 0, i32 1
  %90 = load ptr, ptr %89, align 4
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %90) #7, !srcloc !10
  br label %92

92:                                               ; preds = %88, %86
  %93 = phi i32 [ %87, %86 ], [ %91, %88 ]
  %94 = lshr i32 %93, 8
  %95 = and i32 %94, 15
  %96 = load ptr, ptr %0, align 4
  %97 = getelementptr inbounds %struct.cqhci_host_ops, ptr %96, i32 0, i32 2
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %102, label %100, !prof !9

100:                                              ; preds = %92
  %101 = tail call i32 %98(ptr noundef %0, i32 noundef 0) #7
  br label %106

102:                                              ; preds = %92
  %103 = getelementptr inbounds %struct.cqhci_host, ptr %0, i32 0, i32 1
  %104 = load ptr, ptr %103, align 4
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %104) #7, !srcloc !10
  br label %106

106:                                              ; preds = %102, %100
  %107 = phi i32 [ %101, %100 ], [ %105, %102 ]
  %108 = lshr i32 %107, 4
  %109 = and i32 %108, 15
  %110 = mul nuw nsw i32 %109, 10
  %111 = and i32 %107, 15
  %112 = add nuw nsw i32 %110, %111
  %113 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %81, i32 noundef %95, i32 noundef %112, i32 noundef -12) #8
  br label %114

114:                                              ; preds = %106, %65
  %115 = phi i32 [ -12, %106 ], [ 0, %65 ]
  ret i32 %115
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_cqe_request_done(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cqhci_enable(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 62
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 21, i32 40
  %6 = load i8, ptr %5, align 2, !range !8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %161, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.cqhci_host, ptr %4, i32 0, i32 11
  %10 = load i8, ptr %9, align 4, !range !8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %161

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.cqhci_host, ptr %4, i32 0, i32 4
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.cqhci_host, ptr %4, i32 0, i32 9
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %44, label %20

20:                                               ; preds = %12
  %21 = load ptr, ptr %4, align 4
  %22 = getelementptr inbounds %struct.cqhci_host_ops, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25, !prof !9

25:                                               ; preds = %20
  %26 = tail call i32 %23(ptr noundef %4, i32 noundef 8) #7
  br label %32

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.cqhci_host, ptr %4, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %29, i32 8
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #7, !srcloc !10
  br label %32

32:                                               ; preds = %27, %25
  %33 = phi i32 [ %26, %25 ], [ %31, %27 ]
  %34 = or i32 %33, 256
  %35 = load ptr, ptr %4, align 4
  %36 = getelementptr inbounds %struct.cqhci_host_ops, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39, !prof !9

39:                                               ; preds = %32
  tail call void %37(ptr noundef %4, i32 noundef %34, i32 noundef 8) #7
  br label %44

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.cqhci_host, ptr %4, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr i8, ptr %42, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %34) #7, !srcloc !11
  br label %44

44:                                               ; preds = %40, %39, %12
  %45 = phi i8 [ 16, %39 ], [ 16, %40 ], [ 8, %12 ]
  %46 = getelementptr inbounds %struct.cqhci_host, ptr %4, i32 0, i32 21
  store i8 %45, ptr %46, align 1
  %47 = getelementptr inbounds %struct.cqhci_host, ptr %4, i32 0, i32 5
  %48 = load i8, ptr %47, align 4, !range !8
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.cqhci_host, ptr %4, i32 0, i32 10
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, 1
  %54 = icmp eq i32 %53, 0
  %55 = select i1 %54, i8 16, i8 12
  br label %56

56:                                               ; preds = %50, %44
  %57 = phi i8 [ %55, %50 ], [ 8, %44 ]
  %58 = phi i8 [ 16, %50 ], [ 8, %44 ]
  %59 = getelementptr inbounds %struct.cqhci_host, ptr %4, i32 0, i32 24
  store i8 %57, ptr %59, align 4
  %60 = getelementptr inbounds %struct.cqhci_host, ptr %4, i32 0, i32 22
  store i8 %58, ptr %60, align 2
  %61 = add nuw nsw i8 %58, %45
  %62 = getelementptr inbounds %struct.cqhci_host, ptr %4, i32 0, i32 20
  store i8 %61, ptr %62, align 4
  %63 = zext i8 %61 to i32
  %64 = getelementptr inbounds %struct.cqhci_host, ptr %4, i32 0, i32 6
  %65 = load i32, ptr %64, align 4
  %66 = mul i32 %65, %63
  %67 = getelementptr inbounds %struct.cqhci_host, ptr %4, i32 0, i32 17
  store i32 %66, ptr %67, align 4
  %68 = getelementptr inbounds %struct.cqhci_host, ptr %4, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.mmc_host, ptr %69, i32 0, i32 63
  %71 = load i32, ptr %70, align 4
  %72 = zext i8 %57 to i32
  %73 = getelementptr inbounds %struct.mmc_host, ptr %69, i32 0, i32 21
  %74 = load i16, ptr %73, align 4
  %75 = zext i16 %74 to i32
  %76 = and i32 %71, 255
  %77 = mul nuw nsw i32 %76, %72
  %78 = mul nuw nsw i32 %77, %75
  %79 = getelementptr inbounds %struct.cqhci_host, ptr %4, i32 0, i32 18
  store i32 %78, ptr %79, align 4
  %80 = load ptr, ptr %69, align 64
  %81 = getelementptr inbounds %struct.cqhci_host, ptr %4, i32 0, i32 25
  %82 = tail call ptr @dmam_alloc_attrs(ptr noundef %80, i32 noundef %66, ptr noundef %81, i32 noundef 3264, i32 noundef 0) #7
  %83 = getelementptr inbounds %struct.cqhci_host, ptr %4, i32 0, i32 19
  store ptr %82, ptr %83, align 4
  %84 = icmp eq ptr %82, null
  br i1 %84, label %150, label %85

85:                                               ; preds = %56
  %86 = load ptr, ptr %68, align 4
  %87 = load ptr, ptr %86, align 64
  %88 = load i32, ptr %79, align 4
  %89 = getelementptr inbounds %struct.cqhci_host, ptr %4, i32 0, i32 26
  %90 = tail call ptr @dmam_alloc_attrs(ptr noundef %87, i32 noundef %88, ptr noundef %89, i32 noundef 3264, i32 noundef 0) #7
  %91 = getelementptr inbounds %struct.cqhci_host, ptr %4, i32 0, i32 23
  store ptr %90, ptr %91, align 4
  %92 = icmp eq ptr %90, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %85
  %94 = load i32, ptr %64, align 4
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %102, label %160

96:                                               ; preds = %85
  %97 = load ptr, ptr %68, align 4
  %98 = load ptr, ptr %97, align 64
  %99 = load i32, ptr %67, align 4
  %100 = load ptr, ptr %83, align 4
  %101 = load i32, ptr %81, align 4
  tail call void @dmam_free_coherent(ptr noundef %98, i32 noundef %99, ptr noundef %100, i32 noundef %101) #7
  store ptr null, ptr %83, align 4
  store i32 0, ptr %81, align 4
  br label %150

102:                                              ; preds = %146, %93
  %103 = phi i32 [ %147, %146 ], [ 0, %93 ]
  %104 = trunc i32 %103 to i8
  %105 = load ptr, ptr %83, align 4
  %106 = and i32 %103, 255
  %107 = load i8, ptr %62, align 4
  %108 = zext i8 %107 to i32
  %109 = mul nuw nsw i32 %106, %108
  %110 = getelementptr i8, ptr %105, i32 %109
  %111 = load i8, ptr %46, align 1
  %112 = zext i8 %111 to i32
  %113 = getelementptr i8, ptr %110, i32 %112
  %114 = load i8, ptr %59, align 4
  %115 = zext i8 %114 to i32
  %116 = load ptr, ptr %68, align 4
  %117 = getelementptr inbounds %struct.mmc_host, ptr %116, i32 0, i32 21
  %118 = load i16, ptr %117, align 4
  %119 = zext i16 %118 to i32
  %120 = mul nuw nsw i32 %106, %115
  %121 = mul nuw i32 %120, %119
  %122 = load i32, ptr %89, align 4
  %123 = add i32 %121, %122
  %124 = load i8, ptr %60, align 2
  %125 = zext i8 %124 to i32
  tail call void @llvm.memset.p0.i32(ptr align 1 %113, i8 0, i32 %125, i1 false) #7
  %126 = load i8, ptr %60, align 2
  %127 = icmp ugt i8 %126, 8
  br i1 %127, label %128, label %130

128:                                              ; preds = %102
  %129 = getelementptr i8, ptr %113, i32 8
  store i8 0, ptr %129, align 1
  br label %130

130:                                              ; preds = %128, %102
  %131 = icmp eq i8 %104, 31
  br i1 %131, label %132, label %139

132:                                              ; preds = %130
  %133 = load ptr, ptr %68, align 4
  %134 = getelementptr inbounds %struct.mmc_host, ptr %133, i32 0, i32 17
  %135 = load i32, ptr %134, align 4
  %136 = and i32 %135, 16777216
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %132
  store i8 2, ptr %113, align 1
  br label %146

139:                                              ; preds = %132, %130
  store i8 49, ptr %113, align 1
  %140 = load i8, ptr %47, align 4, !range !8
  %141 = icmp eq i8 %140, 0
  %142 = getelementptr i8, ptr %113, i32 4
  br i1 %141, label %145, label %143

143:                                              ; preds = %139
  %144 = zext i32 %123 to i64
  store i64 %144, ptr %142, align 8
  br label %146

145:                                              ; preds = %139
  store i32 %123, ptr %142, align 4
  br label %146

146:                                              ; preds = %145, %143, %138
  %147 = add nuw nsw i32 %103, 1
  %148 = load i32, ptr %64, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %102, label %160

150:                                              ; preds = %96, %56
  %151 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1, i32 3
  %152 = load ptr, ptr %151, align 4
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %157

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1
  %156 = load ptr, ptr %155, align 4
  br label %157

157:                                              ; preds = %154, %150
  %158 = phi ptr [ %156, %154 ], [ %152, %150 ]
  %159 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %158, i32 noundef -12) #8
  br label %161

160:                                              ; preds = %146, %93
  tail call fastcc void @__cqhci_enable(ptr noundef %4)
  store i8 1, ptr %9, align 4
  br label %161

161:                                              ; preds = %160, %157, %8, %2
  %162 = phi i32 [ -12, %157 ], [ 0, %160 ], [ -22, %2 ], [ 0, %8 ]
  ret i32 %162
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cqhci_disable(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 62
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr inbounds %struct.cqhci_host, ptr %3, i32 0, i32 11
  %5 = load i8, ptr %4, align 4, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %50, label %7

7:                                                ; preds = %1
  tail call void @cqhci_off(ptr noundef %0)
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr inbounds %struct.cqhci_host_ops, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12, !prof !9

12:                                               ; preds = %7
  %13 = tail call i32 %10(ptr noundef %3, i32 noundef 8) #7
  br label %19

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.cqhci_host, ptr %3, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #7, !srcloc !10
  br label %19

19:                                               ; preds = %14, %12
  %20 = phi i32 [ %13, %12 ], [ %18, %14 ]
  %21 = and i32 %20, -2
  %22 = load ptr, ptr %3, align 4
  %23 = getelementptr inbounds %struct.cqhci_host_ops, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26, !prof !9

26:                                               ; preds = %19
  tail call void %24(ptr noundef %3, i32 noundef %21, i32 noundef 8) #7
  br label %31

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.cqhci_host, ptr %3, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %29, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %21) #7, !srcloc !11
  br label %31

31:                                               ; preds = %27, %26
  %32 = getelementptr inbounds %struct.cqhci_host, ptr %3, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.mmc_host, ptr %33, i32 0, i32 65
  store i8 0, ptr %34, align 1
  %35 = getelementptr inbounds %struct.cqhci_host, ptr %3, i32 0, i32 14
  store i8 0, ptr %35, align 1
  %36 = load ptr, ptr %0, align 64
  %37 = getelementptr inbounds %struct.cqhci_host, ptr %3, i32 0, i32 18
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.cqhci_host, ptr %3, i32 0, i32 23
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.cqhci_host, ptr %3, i32 0, i32 26
  %42 = load i32, ptr %41, align 4
  tail call void @dmam_free_coherent(ptr noundef %36, i32 noundef %38, ptr noundef %40, i32 noundef %42) #7
  %43 = load ptr, ptr %0, align 64
  %44 = getelementptr inbounds %struct.cqhci_host, ptr %3, i32 0, i32 17
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.cqhci_host, ptr %3, i32 0, i32 19
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.cqhci_host, ptr %3, i32 0, i32 25
  %49 = load i32, ptr %48, align 4
  tail call void @dmam_free_coherent(ptr noundef %43, i32 noundef %45, ptr noundef %47, i32 noundef %49) #7
  store ptr null, ptr %39, align 4
  store ptr null, ptr %46, align 4
  store i8 0, ptr %4, align 4
  br label %50

50:                                               ; preds = %31, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cqhci_request(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 10
  %9 = load i32, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi i32 [ %9, %7 ], [ 31, %2 ]
  %12 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 62
  %13 = load ptr, ptr %12, align 16
  %14 = getelementptr inbounds %struct.cqhci_host, ptr %13, i32 0, i32 11
  %15 = load i8, ptr %14, align 4, !range !8
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  br label %24

24:                                               ; preds = %21, %17
  %25 = phi ptr [ %23, %21 ], [ %19, %17 ]
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %25) #8
  br label %316

27:                                               ; preds = %10
  %28 = getelementptr inbounds %struct.cqhci_host, ptr %13, i32 0, i32 14
  %29 = load i8, ptr %28, align 1, !range !8
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  tail call fastcc void @__cqhci_enable(ptr noundef %13)
  br label %32

32:                                               ; preds = %31, %27
  %33 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 65
  %34 = load i8, ptr %33, align 1, !range !8
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %84

36:                                               ; preds = %32
  %37 = load ptr, ptr %13, align 4
  %38 = getelementptr inbounds %struct.cqhci_host_ops, ptr %37, i32 0, i32 6
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %36
  tail call void %39(ptr noundef %0) #7
  %42 = load ptr, ptr %13, align 4
  br label %43

43:                                               ; preds = %41, %36
  %44 = phi ptr [ %42, %41 ], [ %37, %36 ]
  %45 = getelementptr inbounds %struct.cqhci_host_ops, ptr %44, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48, !prof !9

48:                                               ; preds = %43
  tail call void %46(ptr noundef %13, i32 noundef 0, i32 noundef 12) #7
  br label %53

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.cqhci_host, ptr %13, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr i8, ptr %51, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 0) #7, !srcloc !11
  br label %53

53:                                               ; preds = %49, %48
  store i8 1, ptr %33, align 1
  %54 = load ptr, ptr %13, align 4
  %55 = getelementptr inbounds %struct.cqhci_host_ops, ptr %54, i32 0, i32 2
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %60, label %58, !prof !9

58:                                               ; preds = %53
  %59 = tail call i32 %56(ptr noundef %13, i32 noundef 12) #7
  br label %65

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.cqhci_host, ptr %13, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr i8, ptr %62, i32 12
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #7, !srcloc !10
  br label %65

65:                                               ; preds = %60, %58
  %66 = phi i32 [ %59, %58 ], [ %64, %60 ]
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %78, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1, i32 3
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  br label %75

75:                                               ; preds = %72, %68
  %76 = phi ptr [ %74, %72 ], [ %70, %68 ]
  %77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %76) #8
  br label %78

78:                                               ; preds = %75, %65
  %79 = load ptr, ptr %13, align 4
  %80 = getelementptr inbounds %struct.cqhci_host_ops, ptr %79, i32 0, i32 3
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %78
  tail call void %81(ptr noundef %0) #7
  br label %84

84:                                               ; preds = %83, %78, %32
  %85 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 2
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %216, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.cqhci_host, ptr %13, i32 0, i32 19
  %90 = load ptr, ptr %89, align 4
  %91 = and i32 %11, 255
  %92 = getelementptr inbounds %struct.cqhci_host, ptr %13, i32 0, i32 20
  %93 = load i8, ptr %92, align 4
  %94 = zext i8 %93 to i32
  %95 = mul nuw nsw i32 %91, %94
  %96 = getelementptr i8, ptr %90, i32 %95
  %97 = getelementptr inbounds %struct.mmc_data, ptr %86, i32 0, i32 6
  %98 = load i32, ptr %97, align 4
  %99 = lshr i32 %98, 8
  %100 = and i32 %99, 64
  %101 = lshr i32 %98, 2
  %102 = and i32 %101, 2048
  %103 = shl i32 %98, 3
  %104 = and i32 %103, 4096
  %105 = shl i32 %98, 2
  %106 = and i32 %105, 8192
  %107 = shl i32 %98, 4
  %108 = and i32 %107, 16384
  %109 = and i32 %103, 32768
  %110 = getelementptr inbounds %struct.mmc_data, ptr %86, i32 0, i32 3
  %111 = load i32, ptr %110, align 4
  %112 = shl i32 %111, 16
  %113 = or i32 %100, %102
  %114 = or i32 %113, %104
  %115 = or i32 %114, %106
  %116 = or i32 %115, %108
  %117 = or i32 %116, %109
  %118 = or i32 %117, %112
  %119 = or i32 %118, 47
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.mmc_data, ptr %86, i32 0, i32 4
  %122 = load i32, ptr %121, align 4
  %123 = zext i32 %122 to i64
  %124 = shl nuw i64 %123, 32
  %125 = or i64 %124, %120
  store i64 %125, ptr %96, align 8
  %126 = getelementptr inbounds %struct.cqhci_host, ptr %13, i32 0, i32 9
  %127 = load i32, ptr %126, align 4
  %128 = and i32 %127, 1
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %88
  %131 = getelementptr i64, ptr %96, i32 1
  store i64 0, ptr %131, align 8
  br label %132

132:                                              ; preds = %130, %88
  %133 = load ptr, ptr %85, align 4
  %134 = getelementptr inbounds %struct.cqhci_host, ptr %13, i32 0, i32 5
  %135 = load i8, ptr %134, align 4, !range !8
  %136 = icmp eq i8 %135, 0
  %137 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 8
  %138 = icmp eq ptr %133, null
  br i1 %138, label %158, label %139

139:                                              ; preds = %132
  %140 = load ptr, ptr %137, align 4
  %141 = load ptr, ptr %140, align 64
  %142 = getelementptr inbounds %struct.mmc_data, ptr %133, i32 0, i32 12
  %143 = load ptr, ptr %142, align 4
  %144 = getelementptr inbounds %struct.mmc_data, ptr %133, i32 0, i32 10
  %145 = load i32, ptr %144, align 4
  %146 = getelementptr inbounds %struct.mmc_data, ptr %133, i32 0, i32 6
  %147 = load i32, ptr %146, align 4
  %148 = and i32 %147, 256
  %149 = icmp eq i32 %148, 0
  %150 = select i1 %149, i32 2, i32 1
  %151 = tail call i32 @dma_map_sg_attrs(ptr noundef %141, ptr noundef %143, i32 noundef %145, i32 noundef %150, i32 noundef 0) #7
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %139
  %154 = load i32, ptr %144, align 4
  %155 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.cqhci_dma_map, i32 noundef %154) #8
  br label %158

156:                                              ; preds = %139
  %157 = icmp slt i32 %151, 0
  br i1 %157, label %158, label %167

158:                                              ; preds = %156, %153, %132
  %159 = phi i32 [ %151, %156 ], [ -22, %132 ], [ -12, %153 ]
  %160 = load ptr, ptr %137, align 4
  %161 = getelementptr inbounds %struct.mmc_host, ptr %160, i32 0, i32 1, i32 3
  %162 = load ptr, ptr %161, align 4
  %163 = icmp eq ptr %162, null
  br i1 %163, label %164, label %204

164:                                              ; preds = %158
  %165 = getelementptr inbounds %struct.mmc_host, ptr %160, i32 0, i32 1
  %166 = load ptr, ptr %165, align 4
  br label %204

167:                                              ; preds = %156
  %168 = getelementptr inbounds %struct.cqhci_host, ptr %13, i32 0, i32 24
  %169 = load ptr, ptr %142, align 4
  %170 = getelementptr inbounds %struct.cqhci_host, ptr %13, i32 0, i32 23
  %171 = load ptr, ptr %170, align 4
  %172 = load i8, ptr %168, align 4
  %173 = zext i8 %172 to i32
  %174 = mul nuw nsw i32 %91, %173
  %175 = getelementptr inbounds %struct.cqhci_host, ptr %13, i32 0, i32 2
  %176 = load ptr, ptr %175, align 4
  %177 = getelementptr inbounds %struct.mmc_host, ptr %176, i32 0, i32 21
  %178 = load i16, ptr %177, align 4
  %179 = zext i16 %178 to i32
  %180 = mul nuw i32 %174, %179
  %181 = getelementptr i8, ptr %171, i32 %180
  br label %182

182:                                              ; preds = %199, %167
  %183 = phi ptr [ %203, %199 ], [ %169, %167 ]
  %184 = phi ptr [ %202, %199 ], [ %181, %167 ]
  %185 = phi i32 [ %190, %199 ], [ 0, %167 ]
  %186 = getelementptr inbounds %struct.scatterlist, ptr %183, i32 0, i32 3
  %187 = load i32, ptr %186, align 4
  %188 = getelementptr inbounds %struct.scatterlist, ptr %183, i32 0, i32 4
  %189 = load i32, ptr %188, align 4
  %190 = add nuw nsw i32 %185, 1
  %191 = icmp eq i32 %190, %151
  %192 = select i1 %191, i32 35, i32 33
  %193 = shl i32 %189, 16
  %194 = or i32 %193, %192
  store i32 %194, ptr %184, align 4
  %195 = getelementptr i8, ptr %184, i32 4
  br i1 %136, label %198, label %196

196:                                              ; preds = %182
  %197 = zext i32 %187 to i64
  store i64 %197, ptr %195, align 8
  br label %199

198:                                              ; preds = %182
  store i32 %187, ptr %195, align 4
  br label %199

199:                                              ; preds = %198, %196
  %200 = load i8, ptr %168, align 4
  %201 = zext i8 %200 to i32
  %202 = getelementptr i8, ptr %184, i32 %201
  %203 = tail call ptr @sg_next(ptr noundef %183) #7
  br i1 %191, label %264, label %182

204:                                              ; preds = %164, %158
  %205 = phi ptr [ %166, %164 ], [ %162, %158 ]
  %206 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %205, ptr noundef nonnull @__func__.cqhci_prep_tran_desc, i32 noundef %159) #8
  %207 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1, i32 3
  %208 = load ptr, ptr %207, align 4
  %209 = icmp eq ptr %208, null
  br i1 %209, label %210, label %213

210:                                              ; preds = %204
  %211 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1
  %212 = load ptr, ptr %211, align 4
  br label %213

213:                                              ; preds = %210, %204
  %214 = phi ptr [ %212, %210 ], [ %208, %204 ]
  %215 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %214, i32 noundef %159) #8
  br label %316

216:                                              ; preds = %84
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  %217 = load ptr, ptr %12, align 16
  %218 = load ptr, ptr %4, align 4
  %219 = getelementptr inbounds %struct.mmc_command, ptr %218, i32 0, i32 3
  %220 = load i32, ptr %219, align 4
  %221 = and i32 %220, 1
  %222 = icmp eq i32 %221, 0
  %223 = and i32 %220, 29
  %224 = icmp eq i32 %223, 0
  %225 = select i1 %224, i32 16777216, i32 25165824
  %226 = select i1 %222, i32 0, i32 %225
  %227 = shl nuw nsw i32 %221, 22
  %228 = getelementptr inbounds %struct.cqhci_host, ptr %217, i32 0, i32 8
  %229 = load i32, ptr %228, align 4
  %230 = getelementptr inbounds %struct.cqhci_host, ptr %217, i32 0, i32 19
  %231 = load ptr, ptr %230, align 4
  %232 = and i32 %229, 255
  %233 = getelementptr inbounds %struct.cqhci_host, ptr %217, i32 0, i32 20
  %234 = load i8, ptr %233, align 4
  %235 = zext i8 %234 to i32
  %236 = mul nuw nsw i32 %232, %235
  %237 = getelementptr i8, ptr %231, i32 %236
  %238 = getelementptr inbounds %struct.cqhci_host, ptr %217, i32 0, i32 21
  %239 = load i8, ptr %238, align 1
  %240 = zext i8 %239 to i32
  tail call void @llvm.memset.p0.i32(ptr align 8 %237, i8 0, i32 %240, i1 false) #7
  %241 = load ptr, ptr %4, align 4
  %242 = load i32, ptr %241, align 4
  %243 = shl i32 %242, 16
  %244 = and i32 %243, 4128768
  %245 = or i32 %244, %227
  %246 = or i32 %245, %226
  %247 = xor i32 %246, 4210735
  %248 = zext i32 %247 to i64
  store i64 %248, ptr %3, align 8
  %249 = load ptr, ptr %217, align 4
  %250 = getelementptr inbounds %struct.cqhci_host_ops, ptr %249, i32 0, i32 5
  %251 = load ptr, ptr %250, align 4
  %252 = icmp eq ptr %251, null
  br i1 %252, label %255, label %253

253:                                              ; preds = %216
  call void %251(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #7
  %254 = load i64, ptr %3, align 8
  br label %255

255:                                              ; preds = %253, %216
  %256 = phi i64 [ %254, %253 ], [ %248, %216 ]
  %257 = load i64, ptr %237, align 8
  %258 = or i64 %257, %256
  store i64 %258, ptr %237, align 8
  %259 = getelementptr i8, ptr %237, i32 4
  %260 = load ptr, ptr %4, align 4
  %261 = getelementptr inbounds %struct.mmc_command, ptr %260, i32 0, i32 1
  %262 = load i32, ptr %261, align 4
  %263 = zext i32 %262 to i64
  store i64 %263, ptr %259, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  br label %264

264:                                              ; preds = %255, %199
  %265 = getelementptr inbounds %struct.cqhci_host, ptr %13, i32 0, i32 3
  %266 = call i32 @_raw_spin_lock_irqsave(ptr noundef %265) #7
  %267 = getelementptr inbounds %struct.cqhci_host, ptr %13, i32 0, i32 16
  %268 = load i8, ptr %267, align 1, !range !8
  %269 = icmp eq i8 %268, 0
  br i1 %269, label %270, label %302

270:                                              ; preds = %264
  %271 = getelementptr inbounds %struct.cqhci_host, ptr %13, i32 0, i32 29
  %272 = load ptr, ptr %271, align 4
  %273 = getelementptr %struct.cqhci_slot, ptr %272, i32 %11
  store ptr %1, ptr %273, align 4
  %274 = load ptr, ptr %271, align 4
  %275 = getelementptr %struct.cqhci_slot, ptr %274, i32 %11, i32 1
  store i32 0, ptr %275, align 4
  %276 = getelementptr inbounds %struct.cqhci_host, ptr %13, i32 0, i32 7
  %277 = load i32, ptr %276, align 4
  %278 = add i32 %277, 1
  store i32 %278, ptr %276, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !19
  call void @arm_heavy_mb() #7
  %279 = shl nuw i32 1, %11
  %280 = load ptr, ptr %13, align 4
  %281 = getelementptr inbounds %struct.cqhci_host_ops, ptr %280, i32 0, i32 1
  %282 = load ptr, ptr %281, align 4
  %283 = icmp eq ptr %282, null
  br i1 %283, label %285, label %284, !prof !9

284:                                              ; preds = %270
  call void %282(ptr noundef %13, i32 noundef %279, i32 noundef 40) #7
  br label %289

285:                                              ; preds = %270
  %286 = getelementptr inbounds %struct.cqhci_host, ptr %13, i32 0, i32 1
  %287 = load ptr, ptr %286, align 4
  %288 = getelementptr i8, ptr %287, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %288, i32 %279) #7, !srcloc !11
  br label %289

289:                                              ; preds = %285, %284
  %290 = load ptr, ptr %13, align 4
  %291 = getelementptr inbounds %struct.cqhci_host_ops, ptr %290, i32 0, i32 2
  %292 = load ptr, ptr %291, align 4
  %293 = icmp eq ptr %292, null
  br i1 %293, label %296, label %294, !prof !9

294:                                              ; preds = %289
  %295 = call i32 %292(ptr noundef %13, i32 noundef 40) #7
  br label %301

296:                                              ; preds = %289
  %297 = getelementptr inbounds %struct.cqhci_host, ptr %13, i32 0, i32 1
  %298 = load ptr, ptr %297, align 4
  %299 = getelementptr i8, ptr %298, i32 40
  %300 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %299) #7, !srcloc !10
  br label %301

301:                                              ; preds = %296, %294
  call void @_raw_spin_unlock_irqrestore(ptr noundef %265, i32 noundef %266) #7
  br label %316

302:                                              ; preds = %264
  call void @_raw_spin_unlock_irqrestore(ptr noundef %265, i32 noundef %266) #7
  %303 = load ptr, ptr %85, align 4
  %304 = icmp eq ptr %303, null
  br i1 %304, label %316, label %305

305:                                              ; preds = %302
  %306 = load ptr, ptr %0, align 64
  %307 = getelementptr inbounds %struct.mmc_data, ptr %303, i32 0, i32 12
  %308 = load ptr, ptr %307, align 4
  %309 = getelementptr inbounds %struct.mmc_data, ptr %303, i32 0, i32 10
  %310 = load i32, ptr %309, align 4
  %311 = getelementptr inbounds %struct.mmc_data, ptr %303, i32 0, i32 6
  %312 = load i32, ptr %311, align 4
  %313 = and i32 %312, 512
  %314 = icmp eq i32 %313, 0
  %315 = select i1 %314, i32 1, i32 2
  call void @dma_unmap_sg_attrs(ptr noundef %306, ptr noundef %308, i32 noundef %310, i32 noundef %315, i32 noundef 0) #7
  br label %316

316:                                              ; preds = %305, %302, %301, %213, %24
  %317 = phi i32 [ %159, %213 ], [ -22, %24 ], [ 0, %301 ], [ -16, %302 ], [ -16, %305 ]
  ret i32 %317
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cqhci_post_req(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 64
  %8 = getelementptr inbounds %struct.mmc_data, ptr %4, i32 0, i32 12
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.mmc_data, ptr %4, i32 0, i32 10
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.mmc_data, ptr %4, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 512
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i32 1, i32 2
  tail call void @dma_unmap_sg_attrs(ptr noundef %7, ptr noundef %9, i32 noundef %11, i32 noundef %16, i32 noundef 0) #7
  br label %17

17:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cqhci_off(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 62
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr inbounds %struct.cqhci_host, ptr %3, i32 0, i32 11
  %5 = load i8, ptr %4, align 4, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %86, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 65
  %9 = load i8, ptr %8, align 1, !range !8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %86, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.cqhci_host, ptr %3, i32 0, i32 16
  %13 = load i8, ptr %12, align 1, !range !8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %86

15:                                               ; preds = %11
  %16 = load ptr, ptr %3, align 4
  %17 = getelementptr inbounds %struct.cqhci_host_ops, ptr %16, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  tail call void %18(ptr noundef %0, i1 noundef zeroext false) #7
  %21 = load ptr, ptr %3, align 4
  br label %22

22:                                               ; preds = %20, %15
  %23 = phi ptr [ %21, %20 ], [ %16, %15 ]
  %24 = getelementptr inbounds %struct.cqhci_host_ops, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27, !prof !9

27:                                               ; preds = %22
  tail call void %25(ptr noundef %3, i32 noundef 1, i32 noundef 12) #7
  br label %32

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.cqhci_host, ptr %3, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %30, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 1) #7, !srcloc !11
  br label %32

32:                                               ; preds = %28, %27
  %33 = tail call i64 @ktime_get() #7
  %34 = add i64 %33, 100000
  %35 = getelementptr inbounds %struct.cqhci_host, ptr %3, i32 0, i32 1
  br label %36

36:                                               ; preds = %51, %32
  %37 = load ptr, ptr %3, align 4
  %38 = getelementptr inbounds %struct.cqhci_host_ops, ptr %37, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41, !prof !9

41:                                               ; preds = %36
  %42 = tail call i32 %39(ptr noundef %3, i32 noundef 12) #7
  br label %47

43:                                               ; preds = %36
  %44 = load ptr, ptr %35, align 4
  %45 = getelementptr i8, ptr %44, i32 12
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #7, !srcloc !10
  br label %47

47:                                               ; preds = %43, %41
  %48 = phi i32 [ %42, %41 ], [ %46, %43 ]
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %47
  %52 = tail call i64 @ktime_get() #7
  %53 = icmp sgt i64 %52, %34
  br i1 %53, label %54, label %36

54:                                               ; preds = %51
  %55 = load ptr, ptr %3, align 4
  %56 = getelementptr inbounds %struct.cqhci_host_ops, ptr %55, i32 0, i32 2
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59, !prof !9

59:                                               ; preds = %54
  %60 = tail call i32 %57(ptr noundef %3, i32 noundef 12) #7
  br label %65

61:                                               ; preds = %54
  %62 = load ptr, ptr %35, align 4
  %63 = getelementptr i8, ptr %62, i32 12
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #7, !srcloc !10
  br label %65

65:                                               ; preds = %61, %59, %47
  %66 = phi i32 [ %60, %59 ], [ %64, %61 ], [ %48, %47 ]
  %67 = and i32 %66, 1
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1, i32 3
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  br label %76

76:                                               ; preds = %73, %69
  %77 = phi ptr [ %75, %73 ], [ %71, %69 ]
  %78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %77) #8
  br label %79

79:                                               ; preds = %76, %65
  %80 = load ptr, ptr %3, align 4
  %81 = getelementptr inbounds %struct.cqhci_host_ops, ptr %80, i32 0, i32 7
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %79
  tail call void %82(ptr noundef %0) #7
  br label %85

85:                                               ; preds = %84, %79
  store i8 0, ptr %8, align 1
  br label %86

86:                                               ; preds = %85, %11, %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cqhci_wait_for_idle(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 62
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr inbounds %struct.cqhci_host, ptr %4, i32 0, i32 3
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #7
  %7 = getelementptr inbounds %struct.cqhci_host, ptr %4, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.cqhci_host, ptr %4, i32 0, i32 16
  %11 = load i8, ptr %10, align 1, !range !8
  %12 = icmp ne i8 %11, 0
  %13 = select i1 %9, i1 true, i1 %12
  %14 = icmp eq i8 %11, 0
  %15 = select i1 %14, i32 0, i32 -16
  %16 = xor i1 %13, true
  %17 = getelementptr inbounds %struct.cqhci_host, ptr %4, i32 0, i32 15
  %18 = zext i1 %16 to i8
  store i8 %18, ptr %17, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #7
  br i1 %13, label %35, label %19

19:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !12
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #7
  %20 = getelementptr inbounds %struct.cqhci_host, ptr %4, i32 0, i32 28
  br label %21

21:                                               ; preds = %31, %19
  %22 = call i32 @prepare_to_wait_event(ptr noundef %20, ptr noundef nonnull %2, i32 noundef 2) #7
  %23 = call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #7
  %24 = load i32, ptr %7, align 4
  %25 = icmp eq i32 %24, 0
  %26 = load i8, ptr %10, align 1, !range !8
  %27 = icmp ne i8 %26, 0
  %28 = select i1 %25, i1 true, i1 %27
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i8
  store i8 %30, ptr %17, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %23) #7
  br i1 %28, label %32, label %31

31:                                               ; preds = %21
  call void @schedule() #7
  br label %21

32:                                               ; preds = %21
  %33 = icmp eq i8 %26, 0
  %34 = select i1 %33, i32 0, i32 -16
  call void @finish_wait(ptr noundef %20, ptr noundef nonnull %2) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #7
  br label %35

35:                                               ; preds = %32, %1
  %36 = phi i32 [ %15, %1 ], [ %34, %32 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @cqhci_timeout(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 62
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 10
  %11 = load i32, ptr %10, align 4
  br label %12

12:                                               ; preds = %9, %3
  %13 = phi i32 [ %11, %9 ], [ 31, %3 ]
  %14 = getelementptr inbounds %struct.cqhci_host, ptr %5, i32 0, i32 29
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr %struct.cqhci_slot, ptr %15, i32 %13
  %17 = getelementptr inbounds %struct.cqhci_host, ptr %5, i32 0, i32 3
  %18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %17) #7
  %19 = load ptr, ptr %16, align 4
  %20 = icmp eq ptr %19, %1
  br i1 %20, label %21, label %430

21:                                               ; preds = %12
  %22 = getelementptr %struct.cqhci_slot, ptr %15, i32 %13, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = or i32 %23, 1
  store i32 %24, ptr %22, align 4
  %25 = load ptr, ptr %4, align 16
  %26 = getelementptr inbounds %struct.cqhci_host, ptr %25, i32 0, i32 16
  %27 = load i8, ptr %26, align 1, !range !8
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  store i8 1, ptr %26, align 1
  %30 = getelementptr inbounds %struct.cqhci_host, ptr %25, i32 0, i32 28
  tail call void @__wake_up(ptr noundef %30, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %31

31:                                               ; preds = %29, %21
  %32 = getelementptr inbounds %struct.cqhci_host, ptr %5, i32 0, i32 16
  %33 = load i8, ptr %32, align 1, !range !8
  store i8 %33, ptr %2, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %17, i32 noundef %18) #7
  %34 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  br label %40

40:                                               ; preds = %37, %31
  %41 = phi ptr [ %39, %37 ], [ %35, %31 ]
  %42 = getelementptr inbounds %struct.cqhci_host, ptr %5, i32 0, i32 7
  %43 = load i32, ptr %42, align 4
  %44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %41, i32 noundef %13, i32 noundef %43) #8
  %45 = getelementptr inbounds %struct.cqhci_host, ptr %5, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.mmc_host, ptr %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.mmc_host, ptr %46, i32 0, i32 1, i32 3
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %40
  %52 = load ptr, ptr %47, align 4
  br label %53

53:                                               ; preds = %51, %40
  %54 = phi ptr [ %52, %51 ], [ %49, %40 ]
  %55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %54) #8
  %56 = load ptr, ptr %48, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load ptr, ptr %47, align 4
  br label %60

60:                                               ; preds = %58, %53
  %61 = phi ptr [ %59, %58 ], [ %56, %53 ]
  %62 = load ptr, ptr %5, align 4
  %63 = getelementptr inbounds %struct.cqhci_host_ops, ptr %62, i32 0, i32 2
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66, !prof !9

66:                                               ; preds = %60
  %67 = tail call i32 %64(ptr noundef %5, i32 noundef 4) #7
  br label %73

68:                                               ; preds = %60
  %69 = getelementptr inbounds %struct.cqhci_host, ptr %5, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr i8, ptr %70, i32 4
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #7, !srcloc !10
  br label %73

73:                                               ; preds = %68, %66
  %74 = phi i32 [ %67, %66 ], [ %72, %68 ]
  %75 = load ptr, ptr %5, align 4
  %76 = getelementptr inbounds %struct.cqhci_host_ops, ptr %75, i32 0, i32 2
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %81, label %79, !prof !9

79:                                               ; preds = %73
  %80 = tail call i32 %77(ptr noundef %5, i32 noundef 0) #7
  br label %85

81:                                               ; preds = %73
  %82 = getelementptr inbounds %struct.cqhci_host, ptr %5, i32 0, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #7, !srcloc !10
  br label %85

85:                                               ; preds = %81, %79
  %86 = phi i32 [ %80, %79 ], [ %84, %81 ]
  %87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %61, i32 noundef %74, i32 noundef %86) #8
  %88 = load ptr, ptr %48, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load ptr, ptr %47, align 4
  br label %92

92:                                               ; preds = %90, %85
  %93 = phi ptr [ %91, %90 ], [ %88, %85 ]
  %94 = load ptr, ptr %5, align 4
  %95 = getelementptr inbounds %struct.cqhci_host_ops, ptr %94, i32 0, i32 2
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %100, label %98, !prof !9

98:                                               ; preds = %92
  %99 = tail call i32 %96(ptr noundef %5, i32 noundef 8) #7
  br label %105

100:                                              ; preds = %92
  %101 = getelementptr inbounds %struct.cqhci_host, ptr %5, i32 0, i32 1
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr i8, ptr %102, i32 8
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %103) #7, !srcloc !10
  br label %105

105:                                              ; preds = %100, %98
  %106 = phi i32 [ %99, %98 ], [ %104, %100 ]
  %107 = load ptr, ptr %5, align 4
  %108 = getelementptr inbounds %struct.cqhci_host_ops, ptr %107, i32 0, i32 2
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %113, label %111, !prof !9

111:                                              ; preds = %105
  %112 = tail call i32 %109(ptr noundef %5, i32 noundef 12) #7
  br label %118

113:                                              ; preds = %105
  %114 = getelementptr inbounds %struct.cqhci_host, ptr %5, i32 0, i32 1
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr i8, ptr %115, i32 12
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %116) #7, !srcloc !10
  br label %118

118:                                              ; preds = %113, %111
  %119 = phi i32 [ %112, %111 ], [ %117, %113 ]
  %120 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %93, i32 noundef %106, i32 noundef %119) #8
  %121 = load ptr, ptr %48, align 4
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %125

123:                                              ; preds = %118
  %124 = load ptr, ptr %47, align 4
  br label %125

125:                                              ; preds = %123, %118
  %126 = phi ptr [ %124, %123 ], [ %121, %118 ]
  %127 = load ptr, ptr %5, align 4
  %128 = getelementptr inbounds %struct.cqhci_host_ops, ptr %127, i32 0, i32 2
  %129 = load ptr, ptr %128, align 4
  %130 = icmp eq ptr %129, null
  br i1 %130, label %133, label %131, !prof !9

131:                                              ; preds = %125
  %132 = tail call i32 %129(ptr noundef %5, i32 noundef 16) #7
  br label %138

133:                                              ; preds = %125
  %134 = getelementptr inbounds %struct.cqhci_host, ptr %5, i32 0, i32 1
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr i8, ptr %135, i32 16
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %136) #7, !srcloc !10
  br label %138

138:                                              ; preds = %133, %131
  %139 = phi i32 [ %132, %131 ], [ %137, %133 ]
  %140 = load ptr, ptr %5, align 4
  %141 = getelementptr inbounds %struct.cqhci_host_ops, ptr %140, i32 0, i32 2
  %142 = load ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %146, label %144, !prof !9

144:                                              ; preds = %138
  %145 = tail call i32 %142(ptr noundef %5, i32 noundef 20) #7
  br label %151

146:                                              ; preds = %138
  %147 = getelementptr inbounds %struct.cqhci_host, ptr %5, i32 0, i32 1
  %148 = load ptr, ptr %147, align 4
  %149 = getelementptr i8, ptr %148, i32 20
  %150 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %149) #7, !srcloc !10
  br label %151

151:                                              ; preds = %146, %144
  %152 = phi i32 [ %145, %144 ], [ %150, %146 ]
  %153 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %126, i32 noundef %139, i32 noundef %152) #8
  %154 = load ptr, ptr %48, align 4
  %155 = icmp eq ptr %154, null
  br i1 %155, label %156, label %158

156:                                              ; preds = %151
  %157 = load ptr, ptr %47, align 4
  br label %158

158:                                              ; preds = %156, %151
  %159 = phi ptr [ %157, %156 ], [ %154, %151 ]
  %160 = load ptr, ptr %5, align 4
  %161 = getelementptr inbounds %struct.cqhci_host_ops, ptr %160, i32 0, i32 2
  %162 = load ptr, ptr %161, align 4
  %163 = icmp eq ptr %162, null
  br i1 %163, label %166, label %164, !prof !9

164:                                              ; preds = %158
  %165 = tail call i32 %162(ptr noundef %5, i32 noundef 24) #7
  br label %171

166:                                              ; preds = %158
  %167 = getelementptr inbounds %struct.cqhci_host, ptr %5, i32 0, i32 1
  %168 = load ptr, ptr %167, align 4
  %169 = getelementptr i8, ptr %168, i32 24
  %170 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %169) #7, !srcloc !10
  br label %171

171:                                              ; preds = %166, %164
  %172 = phi i32 [ %165, %164 ], [ %170, %166 ]
  %173 = load ptr, ptr %5, align 4
  %174 = getelementptr inbounds %struct.cqhci_host_ops, ptr %173, i32 0, i32 2
  %175 = load ptr, ptr %174, align 4
  %176 = icmp eq ptr %175, null
  br i1 %176, label %179, label %177, !prof !9

177:                                              ; preds = %171
  %178 = tail call i32 %175(ptr noundef %5, i32 noundef 28) #7
  br label %184

179:                                              ; preds = %171
  %180 = getelementptr inbounds %struct.cqhci_host, ptr %5, i32 0, i32 1
  %181 = load ptr, ptr %180, align 4
  %182 = getelementptr i8, ptr %181, i32 28
  %183 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %182) #7, !srcloc !10
  br label %184

184:                                              ; preds = %179, %177
  %185 = phi i32 [ %178, %177 ], [ %183, %179 ]
  %186 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %159, i32 noundef %172, i32 noundef %185) #8
  %187 = load ptr, ptr %48, align 4
  %188 = icmp eq ptr %187, null
  br i1 %188, label %189, label %191

189:                                              ; preds = %184
  %190 = load ptr, ptr %47, align 4
  br label %191

191:                                              ; preds = %189, %184
  %192 = phi ptr [ %190, %189 ], [ %187, %184 ]
  %193 = load ptr, ptr %5, align 4
  %194 = getelementptr inbounds %struct.cqhci_host_ops, ptr %193, i32 0, i32 2
  %195 = load ptr, ptr %194, align 4
  %196 = icmp eq ptr %195, null
  br i1 %196, label %199, label %197, !prof !9

197:                                              ; preds = %191
  %198 = tail call i32 %195(ptr noundef %5, i32 noundef 32) #7
  br label %204

199:                                              ; preds = %191
  %200 = getelementptr inbounds %struct.cqhci_host, ptr %5, i32 0, i32 1
  %201 = load ptr, ptr %200, align 4
  %202 = getelementptr i8, ptr %201, i32 32
  %203 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %202) #7, !srcloc !10
  br label %204

204:                                              ; preds = %199, %197
  %205 = phi i32 [ %198, %197 ], [ %203, %199 ]
  %206 = load ptr, ptr %5, align 4
  %207 = getelementptr inbounds %struct.cqhci_host_ops, ptr %206, i32 0, i32 2
  %208 = load ptr, ptr %207, align 4
  %209 = icmp eq ptr %208, null
  br i1 %209, label %212, label %210, !prof !9

210:                                              ; preds = %204
  %211 = tail call i32 %208(ptr noundef %5, i32 noundef 36) #7
  br label %217

212:                                              ; preds = %204
  %213 = getelementptr inbounds %struct.cqhci_host, ptr %5, i32 0, i32 1
  %214 = load ptr, ptr %213, align 4
  %215 = getelementptr i8, ptr %214, i32 36
  %216 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %215) #7, !srcloc !10
  br label %217

217:                                              ; preds = %212, %210
  %218 = phi i32 [ %211, %210 ], [ %216, %212 ]
  %219 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %192, i32 noundef %205, i32 noundef %218) #8
  %220 = load ptr, ptr %48, align 4
  %221 = icmp eq ptr %220, null
  br i1 %221, label %222, label %224

222:                                              ; preds = %217
  %223 = load ptr, ptr %47, align 4
  br label %224

224:                                              ; preds = %222, %217
  %225 = phi ptr [ %223, %222 ], [ %220, %217 ]
  %226 = load ptr, ptr %5, align 4
  %227 = getelementptr inbounds %struct.cqhci_host_ops, ptr %226, i32 0, i32 2
  %228 = load ptr, ptr %227, align 4
  %229 = icmp eq ptr %228, null
  br i1 %229, label %232, label %230, !prof !9

230:                                              ; preds = %224
  %231 = tail call i32 %228(ptr noundef %5, i32 noundef 40) #7
  br label %237

232:                                              ; preds = %224
  %233 = getelementptr inbounds %struct.cqhci_host, ptr %5, i32 0, i32 1
  %234 = load ptr, ptr %233, align 4
  %235 = getelementptr i8, ptr %234, i32 40
  %236 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %235) #7, !srcloc !10
  br label %237

237:                                              ; preds = %232, %230
  %238 = phi i32 [ %231, %230 ], [ %236, %232 ]
  %239 = load ptr, ptr %5, align 4
  %240 = getelementptr inbounds %struct.cqhci_host_ops, ptr %239, i32 0, i32 2
  %241 = load ptr, ptr %240, align 4
  %242 = icmp eq ptr %241, null
  br i1 %242, label %245, label %243, !prof !9

243:                                              ; preds = %237
  %244 = tail call i32 %241(ptr noundef %5, i32 noundef 44) #7
  br label %250

245:                                              ; preds = %237
  %246 = getelementptr inbounds %struct.cqhci_host, ptr %5, i32 0, i32 1
  %247 = load ptr, ptr %246, align 4
  %248 = getelementptr i8, ptr %247, i32 44
  %249 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %248) #7, !srcloc !10
  br label %250

250:                                              ; preds = %245, %243
  %251 = phi i32 [ %244, %243 ], [ %249, %245 ]
  %252 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %225, i32 noundef %238, i32 noundef %251) #8
  %253 = load ptr, ptr %48, align 4
  %254 = icmp eq ptr %253, null
  br i1 %254, label %255, label %257

255:                                              ; preds = %250
  %256 = load ptr, ptr %47, align 4
  br label %257

257:                                              ; preds = %255, %250
  %258 = phi ptr [ %256, %255 ], [ %253, %250 ]
  %259 = load ptr, ptr %5, align 4
  %260 = getelementptr inbounds %struct.cqhci_host_ops, ptr %259, i32 0, i32 2
  %261 = load ptr, ptr %260, align 4
  %262 = icmp eq ptr %261, null
  br i1 %262, label %265, label %263, !prof !9

263:                                              ; preds = %257
  %264 = tail call i32 %261(ptr noundef %5, i32 noundef 48) #7
  br label %270

265:                                              ; preds = %257
  %266 = getelementptr inbounds %struct.cqhci_host, ptr %5, i32 0, i32 1
  %267 = load ptr, ptr %266, align 4
  %268 = getelementptr i8, ptr %267, i32 48
  %269 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %268) #7, !srcloc !10
  br label %270

270:                                              ; preds = %265, %263
  %271 = phi i32 [ %264, %263 ], [ %269, %265 ]
  %272 = load ptr, ptr %5, align 4
  %273 = getelementptr inbounds %struct.cqhci_host_ops, ptr %272, i32 0, i32 2
  %274 = load ptr, ptr %273, align 4
  %275 = icmp eq ptr %274, null
  br i1 %275, label %278, label %276, !prof !9

276:                                              ; preds = %270
  %277 = tail call i32 %274(ptr noundef %5, i32 noundef 52) #7
  br label %283

278:                                              ; preds = %270
  %279 = getelementptr inbounds %struct.cqhci_host, ptr %5, i32 0, i32 1
  %280 = load ptr, ptr %279, align 4
  %281 = getelementptr i8, ptr %280, i32 52
  %282 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %281) #7, !srcloc !10
  br label %283

283:                                              ; preds = %278, %276
  %284 = phi i32 [ %277, %276 ], [ %282, %278 ]
  %285 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %258, i32 noundef %271, i32 noundef %284) #8
  %286 = load ptr, ptr %48, align 4
  %287 = icmp eq ptr %286, null
  br i1 %287, label %288, label %290

288:                                              ; preds = %283
  %289 = load ptr, ptr %47, align 4
  br label %290

290:                                              ; preds = %288, %283
  %291 = phi ptr [ %289, %288 ], [ %286, %283 ]
  %292 = load ptr, ptr %5, align 4
  %293 = getelementptr inbounds %struct.cqhci_host_ops, ptr %292, i32 0, i32 2
  %294 = load ptr, ptr %293, align 4
  %295 = icmp eq ptr %294, null
  br i1 %295, label %298, label %296, !prof !9

296:                                              ; preds = %290
  %297 = tail call i32 %294(ptr noundef %5, i32 noundef 56) #7
  br label %303

298:                                              ; preds = %290
  %299 = getelementptr inbounds %struct.cqhci_host, ptr %5, i32 0, i32 1
  %300 = load ptr, ptr %299, align 4
  %301 = getelementptr i8, ptr %300, i32 56
  %302 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %301) #7, !srcloc !10
  br label %303

303:                                              ; preds = %298, %296
  %304 = phi i32 [ %297, %296 ], [ %302, %298 ]
  %305 = load ptr, ptr %5, align 4
  %306 = getelementptr inbounds %struct.cqhci_host_ops, ptr %305, i32 0, i32 2
  %307 = load ptr, ptr %306, align 4
  %308 = icmp eq ptr %307, null
  br i1 %308, label %311, label %309, !prof !9

309:                                              ; preds = %303
  %310 = tail call i32 %307(ptr noundef %5, i32 noundef 64) #7
  br label %316

311:                                              ; preds = %303
  %312 = getelementptr inbounds %struct.cqhci_host, ptr %5, i32 0, i32 1
  %313 = load ptr, ptr %312, align 4
  %314 = getelementptr i8, ptr %313, i32 64
  %315 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %314) #7, !srcloc !10
  br label %316

316:                                              ; preds = %311, %309
  %317 = phi i32 [ %310, %309 ], [ %315, %311 ]
  %318 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %291, i32 noundef %304, i32 noundef %317) #8
  %319 = load ptr, ptr %48, align 4
  %320 = icmp eq ptr %319, null
  br i1 %320, label %321, label %323

321:                                              ; preds = %316
  %322 = load ptr, ptr %47, align 4
  br label %323

323:                                              ; preds = %321, %316
  %324 = phi ptr [ %322, %321 ], [ %319, %316 ]
  %325 = load ptr, ptr %5, align 4
  %326 = getelementptr inbounds %struct.cqhci_host_ops, ptr %325, i32 0, i32 2
  %327 = load ptr, ptr %326, align 4
  %328 = icmp eq ptr %327, null
  br i1 %328, label %331, label %329, !prof !9

329:                                              ; preds = %323
  %330 = tail call i32 %327(ptr noundef %5, i32 noundef 68) #7
  br label %336

331:                                              ; preds = %323
  %332 = getelementptr inbounds %struct.cqhci_host, ptr %5, i32 0, i32 1
  %333 = load ptr, ptr %332, align 4
  %334 = getelementptr i8, ptr %333, i32 68
  %335 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %334) #7, !srcloc !10
  br label %336

336:                                              ; preds = %331, %329
  %337 = phi i32 [ %330, %329 ], [ %335, %331 ]
  %338 = load ptr, ptr %5, align 4
  %339 = getelementptr inbounds %struct.cqhci_host_ops, ptr %338, i32 0, i32 2
  %340 = load ptr, ptr %339, align 4
  %341 = icmp eq ptr %340, null
  br i1 %341, label %344, label %342, !prof !9

342:                                              ; preds = %336
  %343 = tail call i32 %340(ptr noundef %5, i32 noundef 72) #7
  br label %349

344:                                              ; preds = %336
  %345 = getelementptr inbounds %struct.cqhci_host, ptr %5, i32 0, i32 1
  %346 = load ptr, ptr %345, align 4
  %347 = getelementptr i8, ptr %346, i32 72
  %348 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %347) #7, !srcloc !10
  br label %349

349:                                              ; preds = %344, %342
  %350 = phi i32 [ %343, %342 ], [ %348, %344 ]
  %351 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %324, i32 noundef %337, i32 noundef %350) #8
  %352 = load ptr, ptr %48, align 4
  %353 = icmp eq ptr %352, null
  br i1 %353, label %354, label %356

354:                                              ; preds = %349
  %355 = load ptr, ptr %47, align 4
  br label %356

356:                                              ; preds = %354, %349
  %357 = phi ptr [ %355, %354 ], [ %352, %349 ]
  %358 = load ptr, ptr %5, align 4
  %359 = getelementptr inbounds %struct.cqhci_host_ops, ptr %358, i32 0, i32 2
  %360 = load ptr, ptr %359, align 4
  %361 = icmp eq ptr %360, null
  br i1 %361, label %364, label %362, !prof !9

362:                                              ; preds = %356
  %363 = tail call i32 %360(ptr noundef %5, i32 noundef 80) #7
  br label %369

364:                                              ; preds = %356
  %365 = getelementptr inbounds %struct.cqhci_host, ptr %5, i32 0, i32 1
  %366 = load ptr, ptr %365, align 4
  %367 = getelementptr i8, ptr %366, i32 80
  %368 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %367) #7, !srcloc !10
  br label %369

369:                                              ; preds = %364, %362
  %370 = phi i32 [ %363, %362 ], [ %368, %364 ]
  %371 = load ptr, ptr %5, align 4
  %372 = getelementptr inbounds %struct.cqhci_host_ops, ptr %371, i32 0, i32 2
  %373 = load ptr, ptr %372, align 4
  %374 = icmp eq ptr %373, null
  br i1 %374, label %377, label %375, !prof !9

375:                                              ; preds = %369
  %376 = tail call i32 %373(ptr noundef %5, i32 noundef 84) #7
  br label %382

377:                                              ; preds = %369
  %378 = getelementptr inbounds %struct.cqhci_host, ptr %5, i32 0, i32 1
  %379 = load ptr, ptr %378, align 4
  %380 = getelementptr i8, ptr %379, i32 84
  %381 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %380) #7, !srcloc !10
  br label %382

382:                                              ; preds = %377, %375
  %383 = phi i32 [ %376, %375 ], [ %381, %377 ]
  %384 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %357, i32 noundef %370, i32 noundef %383) #8
  %385 = load ptr, ptr %48, align 4
  %386 = icmp eq ptr %385, null
  br i1 %386, label %387, label %389

387:                                              ; preds = %382
  %388 = load ptr, ptr %47, align 4
  br label %389

389:                                              ; preds = %387, %382
  %390 = phi ptr [ %388, %387 ], [ %385, %382 ]
  %391 = load ptr, ptr %5, align 4
  %392 = getelementptr inbounds %struct.cqhci_host_ops, ptr %391, i32 0, i32 2
  %393 = load ptr, ptr %392, align 4
  %394 = icmp eq ptr %393, null
  br i1 %394, label %397, label %395, !prof !9

395:                                              ; preds = %389
  %396 = tail call i32 %393(ptr noundef %5, i32 noundef 88) #7
  br label %402

397:                                              ; preds = %389
  %398 = getelementptr inbounds %struct.cqhci_host, ptr %5, i32 0, i32 1
  %399 = load ptr, ptr %398, align 4
  %400 = getelementptr i8, ptr %399, i32 88
  %401 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %400) #7, !srcloc !10
  br label %402

402:                                              ; preds = %397, %395
  %403 = phi i32 [ %396, %395 ], [ %401, %397 ]
  %404 = load ptr, ptr %5, align 4
  %405 = getelementptr inbounds %struct.cqhci_host_ops, ptr %404, i32 0, i32 2
  %406 = load ptr, ptr %405, align 4
  %407 = icmp eq ptr %406, null
  br i1 %407, label %410, label %408, !prof !9

408:                                              ; preds = %402
  %409 = tail call i32 %406(ptr noundef %5, i32 noundef 92) #7
  br label %415

410:                                              ; preds = %402
  %411 = getelementptr inbounds %struct.cqhci_host, ptr %5, i32 0, i32 1
  %412 = load ptr, ptr %411, align 4
  %413 = getelementptr i8, ptr %412, i32 92
  %414 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %413) #7, !srcloc !10
  br label %415

415:                                              ; preds = %410, %408
  %416 = phi i32 [ %409, %408 ], [ %414, %410 ]
  %417 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %390, i32 noundef %403, i32 noundef %416) #8
  %418 = load ptr, ptr %5, align 4
  %419 = load ptr, ptr %418, align 4
  %420 = icmp eq ptr %419, null
  br i1 %420, label %422, label %421

421:                                              ; preds = %415
  tail call void %419(ptr noundef %46) #7
  br label %431

422:                                              ; preds = %415
  %423 = load ptr, ptr %48, align 4
  %424 = icmp eq ptr %423, null
  br i1 %424, label %425, label %427

425:                                              ; preds = %422
  %426 = load ptr, ptr %47, align 4
  br label %427

427:                                              ; preds = %425, %422
  %428 = phi ptr [ %426, %425 ], [ %423, %422 ]
  %429 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %428) #8
  br label %431

430:                                              ; preds = %12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %17, i32 noundef %18) #7
  br label %431

431:                                              ; preds = %430, %427, %421
  ret i1 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cqhci_recovery_start(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 62
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr inbounds %struct.cqhci_host, ptr %3, i32 0, i32 16
  %5 = load i8, ptr %4, align 1, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %8, !prof !18

7:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 991, i32 noundef 9, ptr noundef null) #7
  br label %8

8:                                                ; preds = %7, %1
  %9 = tail call fastcc zeroext i1 @cqhci_halt(ptr noundef %0, i32 noundef 5)
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr inbounds %struct.cqhci_host_ops, ptr %10, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %8
  tail call void %12(ptr noundef %0, i1 noundef zeroext true) #7
  br label %15

15:                                               ; preds = %14, %8
  %16 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 65
  store i8 0, ptr %16, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cqhci_recovery_finish(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 62
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr inbounds %struct.cqhci_host, ptr %3, i32 0, i32 16
  %5 = load i8, ptr %4, align 1, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %8, !prof !18

7:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1067, i32 noundef 9, ptr noundef null) #7
  br label %8

8:                                                ; preds = %7, %1
  %9 = tail call fastcc zeroext i1 @cqhci_halt(ptr noundef %0, i32 noundef 20)
  %10 = tail call fastcc zeroext i1 @cqhci_clear_all_tasks(ptr noundef %0)
  %11 = select i1 %10, i1 %9, i1 false
  br i1 %11, label %52, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %3, align 4
  %14 = getelementptr inbounds %struct.cqhci_host_ops, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17, !prof !9

17:                                               ; preds = %12
  %18 = tail call i32 %15(ptr noundef %3, i32 noundef 8) #7
  br label %24

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.cqhci_host, ptr %3, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 8
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #7, !srcloc !10
  br label %24

24:                                               ; preds = %19, %17
  %25 = phi i32 [ %18, %17 ], [ %23, %19 ]
  %26 = and i32 %25, -2
  %27 = load ptr, ptr %3, align 4
  %28 = getelementptr inbounds %struct.cqhci_host_ops, ptr %27, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31, !prof !9

31:                                               ; preds = %24
  tail call void %29(ptr noundef %3, i32 noundef %26, i32 noundef 8) #7
  br label %36

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.cqhci_host, ptr %3, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr i8, ptr %34, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %26) #7, !srcloc !11
  br label %36

36:                                               ; preds = %32, %31
  %37 = or i32 %25, 1
  %38 = load ptr, ptr %3, align 4
  %39 = getelementptr inbounds %struct.cqhci_host_ops, ptr %38, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42, !prof !9

42:                                               ; preds = %36
  tail call void %40(ptr noundef %3, i32 noundef %37, i32 noundef 8) #7
  br label %47

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.cqhci_host, ptr %3, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr i8, ptr %45, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %37) #7, !srcloc !11
  br label %47

47:                                               ; preds = %43, %42
  %48 = tail call fastcc zeroext i1 @cqhci_halt(ptr noundef %0, i32 noundef 20)
  %49 = tail call fastcc zeroext i1 @cqhci_clear_all_tasks(ptr noundef %0)
  %50 = select i1 %49, i1 %48, i1 false
  br i1 %50, label %52, label %51, !prof !9

51:                                               ; preds = %47
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1091, i32 noundef 9, ptr noundef null) #7
  br label %52

52:                                               ; preds = %51, %47, %8
  %53 = getelementptr inbounds %struct.cqhci_host, ptr %3, i32 0, i32 6
  %54 = load i32, ptr %53, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %111

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.cqhci_host, ptr %3, i32 0, i32 29
  %58 = getelementptr inbounds %struct.cqhci_host, ptr %3, i32 0, i32 7
  %59 = getelementptr inbounds %struct.cqhci_host, ptr %3, i32 0, i32 2
  br label %60

60:                                               ; preds = %107, %56
  %61 = phi i32 [ %54, %56 ], [ %108, %107 ]
  %62 = phi i32 [ 0, %56 ], [ %109, %107 ]
  %63 = load ptr, ptr %57, align 4
  %64 = getelementptr %struct.cqhci_slot, ptr %63, i32 %62
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %107, label %67

67:                                               ; preds = %60
  store ptr null, ptr %64, align 4
  %68 = load i32, ptr %58, align 4
  %69 = add i32 %68, -1
  store i32 %69, ptr %58, align 4
  %70 = getelementptr inbounds %struct.mmc_request, ptr %65, i32 0, i32 2
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %88, label %73

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.mmc_data, ptr %71, i32 0, i32 7
  store i32 0, ptr %74, align 4
  %75 = getelementptr %struct.cqhci_slot, ptr %63, i32 %62, i32 1
  %76 = load i32, ptr %75, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %73
  %79 = and i32 %76, 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = and i32 %76, 9
  %83 = icmp eq i32 %82, 0
  %84 = select i1 %83, i32 -5, i32 -110
  br label %85

85:                                               ; preds = %81, %78, %73
  %86 = phi i32 [ 0, %73 ], [ -84, %78 ], [ %84, %81 ]
  %87 = getelementptr inbounds %struct.mmc_data, ptr %71, i32 0, i32 5
  store i32 %86, ptr %87, align 4
  br label %104

88:                                               ; preds = %67
  %89 = getelementptr %struct.cqhci_slot, ptr %63, i32 %62, i32 1
  %90 = load i32, ptr %89, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %88
  %93 = and i32 %90, 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = and i32 %90, 9
  %97 = icmp eq i32 %96, 0
  %98 = select i1 %97, i32 -5, i32 -110
  br label %99

99:                                               ; preds = %95, %92, %88
  %100 = phi i32 [ 0, %88 ], [ -84, %92 ], [ %98, %95 ]
  %101 = getelementptr inbounds %struct.mmc_request, ptr %65, i32 0, i32 1
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.mmc_command, ptr %102, i32 0, i32 5
  store i32 %100, ptr %103, align 4
  br label %104

104:                                              ; preds = %99, %85
  %105 = load ptr, ptr %59, align 4
  tail call void @mmc_cqe_request_done(ptr noundef %105, ptr noundef nonnull %65) #7
  %106 = load i32, ptr %53, align 4
  br label %107

107:                                              ; preds = %104, %60
  %108 = phi i32 [ %61, %60 ], [ %106, %104 ]
  %109 = add nuw nsw i32 %62, 1
  %110 = icmp slt i32 %109, %108
  br i1 %110, label %60, label %111

111:                                              ; preds = %107, %52
  %112 = getelementptr inbounds %struct.cqhci_host, ptr %3, i32 0, i32 7
  %113 = load i32, ptr %112, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %116, label %115, !prof !9

115:                                              ; preds = %111
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1096, i32 noundef 9, ptr noundef null) #7
  br label %116

116:                                              ; preds = %115, %111
  %117 = getelementptr inbounds %struct.cqhci_host, ptr %3, i32 0, i32 3
  %118 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %117) #7
  store i32 0, ptr %112, align 4
  store i8 0, ptr %4, align 1
  %119 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 65
  store i8 0, ptr %119, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %117, i32 noundef %118) #7
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !20
  tail call void @arm_heavy_mb() #7
  %120 = load ptr, ptr %3, align 4
  %121 = getelementptr inbounds %struct.cqhci_host_ops, ptr %120, i32 0, i32 1
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %125, label %124, !prof !9

124:                                              ; preds = %116
  tail call void %122(ptr noundef %3, i32 noundef 9, i32 noundef 16) #7
  br label %129

125:                                              ; preds = %116
  %126 = getelementptr inbounds %struct.cqhci_host, ptr %3, i32 0, i32 1
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr i8, ptr %127, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 9) #7, !srcloc !11
  br label %129

129:                                              ; preds = %125, %124
  %130 = load ptr, ptr %3, align 4
  %131 = getelementptr inbounds %struct.cqhci_host_ops, ptr %130, i32 0, i32 1
  %132 = load ptr, ptr %131, align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %135, label %134, !prof !9

134:                                              ; preds = %129
  tail call void %132(ptr noundef %3, i32 noundef 54, i32 noundef 20) #7
  br label %139

135:                                              ; preds = %129
  %136 = getelementptr inbounds %struct.cqhci_host, ptr %3, i32 0, i32 1
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr i8, ptr %137, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %138, i32 54) #7, !srcloc !11
  br label %139

139:                                              ; preds = %135, %134
  %140 = load ptr, ptr %3, align 4
  %141 = getelementptr inbounds %struct.cqhci_host_ops, ptr %140, i32 0, i32 1
  %142 = load ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %145, label %144, !prof !9

144:                                              ; preds = %139
  tail call void %142(ptr noundef %3, i32 noundef 54, i32 noundef 24) #7
  br label %149

145:                                              ; preds = %139
  %146 = getelementptr inbounds %struct.cqhci_host, ptr %3, i32 0, i32 1
  %147 = load ptr, ptr %146, align 4
  %148 = getelementptr i8, ptr %147, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %148, i32 54) #7, !srcloc !11
  br label %149

149:                                              ; preds = %145, %144
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__cqhci_enable(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cqhci_host, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.cqhci_host_ops, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8, !prof !9

8:                                                ; preds = %1
  %9 = tail call i32 %6(ptr noundef %0, i32 noundef 8) #7
  br label %15

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.cqhci_host, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #7, !srcloc !10
  br label %15

15:                                               ; preds = %10, %8
  %16 = phi i32 [ %9, %8 ], [ %14, %10 ]
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %15
  %20 = and i32 %16, -2
  %21 = load ptr, ptr %0, align 4
  %22 = getelementptr inbounds %struct.cqhci_host_ops, ptr %21, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25, !prof !9

25:                                               ; preds = %19
  tail call void %23(ptr noundef %0, i32 noundef %20, i32 noundef 8) #7
  br label %30

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.cqhci_host, ptr %0, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %20) #7, !srcloc !11
  br label %30

30:                                               ; preds = %26, %25, %15
  %31 = phi i32 [ %16, %15 ], [ %20, %25 ], [ %20, %26 ]
  %32 = and i32 %31, -4353
  %33 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 17
  %34 = load i32, ptr %33, align 4
  %35 = lshr i32 %34, 12
  %36 = and i32 %35, 4096
  %37 = or i32 %36, %32
  %38 = getelementptr inbounds %struct.cqhci_host, ptr %0, i32 0, i32 9
  %39 = load i32, ptr %38, align 4
  %40 = shl i32 %39, 8
  %41 = and i32 %40, 256
  %42 = or i32 %37, %41
  %43 = load ptr, ptr %0, align 4
  %44 = getelementptr inbounds %struct.cqhci_host_ops, ptr %43, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47, !prof !9

47:                                               ; preds = %30
  tail call void %45(ptr noundef %0, i32 noundef %42, i32 noundef 8) #7
  br label %52

48:                                               ; preds = %30
  %49 = getelementptr inbounds %struct.cqhci_host, ptr %0, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr i8, ptr %50, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %42) #7, !srcloc !11
  br label %52

52:                                               ; preds = %48, %47
  %53 = getelementptr inbounds %struct.cqhci_host, ptr %0, i32 0, i32 25
  %54 = load i32, ptr %53, align 4
  %55 = load ptr, ptr %0, align 4
  %56 = getelementptr inbounds %struct.cqhci_host_ops, ptr %55, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %60, label %59, !prof !9

59:                                               ; preds = %52
  tail call void %57(ptr noundef %0, i32 noundef %54, i32 noundef 32) #7
  br label %64

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.cqhci_host, ptr %0, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr i8, ptr %62, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %54) #7, !srcloc !11
  br label %64

64:                                               ; preds = %60, %59
  %65 = load ptr, ptr %0, align 4
  %66 = getelementptr inbounds %struct.cqhci_host_ops, ptr %65, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %70, label %69, !prof !9

69:                                               ; preds = %64
  tail call void %67(ptr noundef %0, i32 noundef 0, i32 noundef 36) #7
  br label %74

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.cqhci_host, ptr %0, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr i8, ptr %72, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 0) #7, !srcloc !11
  br label %74

74:                                               ; preds = %70, %69
  %75 = getelementptr inbounds %struct.cqhci_host, ptr %0, i32 0, i32 4
  %76 = load i32, ptr %75, align 4
  %77 = load ptr, ptr %0, align 4
  %78 = getelementptr inbounds %struct.cqhci_host_ops, ptr %77, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %82, label %81, !prof !9

81:                                               ; preds = %74
  tail call void %79(ptr noundef %0, i32 noundef %76, i32 noundef 68) #7
  br label %86

82:                                               ; preds = %74
  %83 = getelementptr inbounds %struct.cqhci_host, ptr %0, i32 0, i32 1
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr i8, ptr %84, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 %76) #7, !srcloc !11
  br label %86

86:                                               ; preds = %82, %81
  %87 = load ptr, ptr %0, align 4
  %88 = getelementptr inbounds %struct.cqhci_host_ops, ptr %87, i32 0, i32 1
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %92, label %91, !prof !9

91:                                               ; preds = %86
  tail call void %89(ptr noundef %0, i32 noundef 0, i32 noundef 20) #7
  br label %96

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.cqhci_host, ptr %0, i32 0, i32 1
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr i8, ptr %94, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %95, i32 0) #7, !srcloc !11
  br label %96

96:                                               ; preds = %92, %91
  %97 = load ptr, ptr %0, align 4
  %98 = getelementptr inbounds %struct.cqhci_host_ops, ptr %97, i32 0, i32 1
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %102, label %101, !prof !9

101:                                              ; preds = %96
  tail call void %99(ptr noundef %0, i32 noundef 0, i32 noundef 24) #7
  br label %106

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.cqhci_host, ptr %0, i32 0, i32 1
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr i8, ptr %104, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 0) #7, !srcloc !11
  br label %106

106:                                              ; preds = %102, %101
  %107 = or i32 %42, 1
  %108 = load ptr, ptr %0, align 4
  %109 = getelementptr inbounds %struct.cqhci_host_ops, ptr %108, i32 0, i32 1
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %113, label %112, !prof !9

112:                                              ; preds = %106
  tail call void %110(ptr noundef %0, i32 noundef %107, i32 noundef 8) #7
  br label %117

113:                                              ; preds = %106
  %114 = getelementptr inbounds %struct.cqhci_host, ptr %0, i32 0, i32 1
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr i8, ptr %115, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 %107) #7, !srcloc !11
  br label %117

117:                                              ; preds = %113, %112
  %118 = load ptr, ptr %0, align 4
  %119 = getelementptr inbounds %struct.cqhci_host_ops, ptr %118, i32 0, i32 2
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %124, label %122, !prof !9

122:                                              ; preds = %117
  %123 = tail call i32 %120(ptr noundef %0, i32 noundef 12) #7
  br label %129

124:                                              ; preds = %117
  %125 = getelementptr inbounds %struct.cqhci_host, ptr %0, i32 0, i32 1
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr i8, ptr %126, i32 12
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %127) #7, !srcloc !10
  br label %129

129:                                              ; preds = %124, %122
  %130 = phi i32 [ %123, %122 ], [ %128, %124 ]
  %131 = and i32 %130, 1
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %143, label %133

133:                                              ; preds = %129
  %134 = load ptr, ptr %0, align 4
  %135 = getelementptr inbounds %struct.cqhci_host_ops, ptr %134, i32 0, i32 1
  %136 = load ptr, ptr %135, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %139, label %138, !prof !9

138:                                              ; preds = %133
  tail call void %136(ptr noundef %0, i32 noundef 0, i32 noundef 12) #7
  br label %143

139:                                              ; preds = %133
  %140 = getelementptr inbounds %struct.cqhci_host, ptr %0, i32 0, i32 1
  %141 = load ptr, ptr %140, align 4
  %142 = getelementptr i8, ptr %141, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %142, i32 0) #7, !srcloc !11
  br label %143

143:                                              ; preds = %139, %138, %129
  %144 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 65
  store i8 1, ptr %144, align 1
  %145 = load ptr, ptr %0, align 4
  %146 = getelementptr inbounds %struct.cqhci_host_ops, ptr %145, i32 0, i32 3
  %147 = load ptr, ptr %146, align 4
  %148 = icmp eq ptr %147, null
  br i1 %148, label %150, label %149

149:                                              ; preds = %143
  tail call void %147(ptr noundef %3) #7
  br label %150

150:                                              ; preds = %149, %143
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  %151 = load ptr, ptr %0, align 4
  %152 = getelementptr inbounds %struct.cqhci_host_ops, ptr %151, i32 0, i32 1
  %153 = load ptr, ptr %152, align 4
  %154 = icmp eq ptr %153, null
  br i1 %154, label %156, label %155, !prof !9

155:                                              ; preds = %150
  tail call void %153(ptr noundef %0, i32 noundef 54, i32 noundef 20) #7
  br label %160

156:                                              ; preds = %150
  %157 = getelementptr inbounds %struct.cqhci_host, ptr %0, i32 0, i32 1
  %158 = load ptr, ptr %157, align 4
  %159 = getelementptr i8, ptr %158, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %159, i32 54) #7, !srcloc !11
  br label %160

160:                                              ; preds = %156, %155
  %161 = load ptr, ptr %0, align 4
  %162 = getelementptr inbounds %struct.cqhci_host_ops, ptr %161, i32 0, i32 1
  %163 = load ptr, ptr %162, align 4
  %164 = icmp eq ptr %163, null
  br i1 %164, label %166, label %165, !prof !9

165:                                              ; preds = %160
  tail call void %163(ptr noundef %0, i32 noundef 54, i32 noundef 24) #7
  br label %170

166:                                              ; preds = %160
  %167 = getelementptr inbounds %struct.cqhci_host, ptr %0, i32 0, i32 1
  %168 = load ptr, ptr %167, align 4
  %169 = getelementptr i8, ptr %168, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %169, i32 54) #7, !srcloc !11
  br label %170

170:                                              ; preds = %166, %165
  %171 = getelementptr inbounds %struct.cqhci_host, ptr %0, i32 0, i32 14
  store i8 1, ptr %171, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmam_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @cqhci_halt(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.wait_queue_entry, align 4
  %4 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 62
  %5 = load ptr, ptr %4, align 16
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.cqhci_host_ops, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !9

10:                                               ; preds = %2
  %11 = tail call i32 %8(ptr noundef %5, i32 noundef 12) #7
  br label %17

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.cqhci_host, ptr %5, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 12
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #7, !srcloc !10
  br label %17

17:                                               ; preds = %12, %10
  %18 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %153

21:                                               ; preds = %17
  %22 = load ptr, ptr %5, align 4
  %23 = getelementptr inbounds %struct.cqhci_host_ops, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26, !prof !9

26:                                               ; preds = %21
  tail call void %24(ptr noundef %5, i32 noundef 1, i32 noundef 20) #7
  br label %31

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.cqhci_host, ptr %5, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %29, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 1) #7, !srcloc !11
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr %5, align 4
  %33 = getelementptr inbounds %struct.cqhci_host_ops, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36, !prof !9

36:                                               ; preds = %31
  tail call void %34(ptr noundef %5, i32 noundef 1, i32 noundef 24) #7
  br label %41

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.cqhci_host, ptr %5, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr i8, ptr %39, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 1) #7, !srcloc !11
  br label %41

41:                                               ; preds = %37, %36
  %42 = load ptr, ptr %5, align 4
  %43 = getelementptr inbounds %struct.cqhci_host_ops, ptr %42, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46, !prof !9

46:                                               ; preds = %41
  %47 = tail call i32 %44(ptr noundef %5, i32 noundef 12) #7
  br label %53

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.cqhci_host, ptr %5, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr i8, ptr %50, i32 12
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #7, !srcloc !10
  br label %53

53:                                               ; preds = %48, %46
  %54 = phi i32 [ %47, %46 ], [ %52, %48 ]
  %55 = or i32 %54, 1
  %56 = load ptr, ptr %5, align 4
  %57 = getelementptr inbounds %struct.cqhci_host_ops, ptr %56, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %61, label %60, !prof !9

60:                                               ; preds = %53
  tail call void %58(ptr noundef %5, i32 noundef %55, i32 noundef 12) #7
  br label %65

61:                                               ; preds = %53
  %62 = getelementptr inbounds %struct.cqhci_host, ptr %5, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr i8, ptr %63, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %55) #7, !srcloc !11
  br label %65

65:                                               ; preds = %61, %60
  %66 = tail call i32 @__msecs_to_jiffies(i32 noundef %1) #7
  %67 = load ptr, ptr %5, align 4
  %68 = getelementptr inbounds %struct.cqhci_host_ops, ptr %67, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %73, label %71, !prof !9

71:                                               ; preds = %65
  %72 = tail call i32 %69(ptr noundef %5, i32 noundef 12) #7
  br label %78

73:                                               ; preds = %65
  %74 = getelementptr inbounds %struct.cqhci_host, ptr %5, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr i8, ptr %75, i32 12
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #7, !srcloc !10
  br label %78

78:                                               ; preds = %73, %71
  %79 = phi i32 [ %72, %71 ], [ %77, %73 ]
  %80 = and i32 %79, 1
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = icmp eq i32 %66, -1
  %84 = select i1 %82, i1 %83, i1 false
  %85 = select i1 %81, i1 true, i1 %84
  br i1 %85, label %117, label %86

86:                                               ; preds = %78
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false), !annotation !12
  %87 = tail call i32 @__msecs_to_jiffies(i32 noundef %1) #7
  %88 = add i32 %87, 1
  call void @init_wait_entry(ptr noundef nonnull %3, i32 noundef 0) #7
  %89 = getelementptr inbounds %struct.cqhci_host, ptr %5, i32 0, i32 28
  %90 = getelementptr inbounds %struct.cqhci_host, ptr %5, i32 0, i32 1
  br label %91

91:                                               ; preds = %114, %86
  %92 = phi i32 [ %88, %86 ], [ %115, %114 ]
  %93 = call i32 @prepare_to_wait_event(ptr noundef %89, ptr noundef nonnull %3, i32 noundef 2) #7
  %94 = load ptr, ptr %5, align 4
  %95 = getelementptr inbounds %struct.cqhci_host_ops, ptr %94, i32 0, i32 2
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %100, label %98, !prof !9

98:                                               ; preds = %91
  %99 = call i32 %96(ptr noundef %5, i32 noundef 12) #7
  br label %104

100:                                              ; preds = %91
  %101 = load ptr, ptr %90, align 4
  %102 = getelementptr i8, ptr %101, i32 12
  %103 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %102) #7, !srcloc !10
  br label %104

104:                                              ; preds = %100, %98
  %105 = phi i32 [ %99, %98 ], [ %103, %100 ]
  %106 = and i32 %105, 1
  %107 = icmp ne i32 %106, 0
  %108 = xor i1 %107, true
  %109 = icmp ne i32 %92, 0
  %110 = select i1 %108, i1 true, i1 %109
  %111 = select i1 %110, i32 %92, i32 1
  %112 = icmp eq i32 %111, 0
  %113 = select i1 %107, i1 true, i1 %112
  br i1 %113, label %116, label %114

114:                                              ; preds = %104
  %115 = call i32 @schedule_timeout(i32 noundef %111) #7
  br label %91

116:                                              ; preds = %104
  call void @finish_wait(ptr noundef %89, ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #7
  br label %117

117:                                              ; preds = %116, %78
  %118 = load ptr, ptr %5, align 4
  %119 = getelementptr inbounds %struct.cqhci_host_ops, ptr %118, i32 0, i32 1
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %123, label %122, !prof !9

122:                                              ; preds = %117
  call void %120(ptr noundef %5, i32 noundef 0, i32 noundef 20) #7
  br label %127

123:                                              ; preds = %117
  %124 = getelementptr inbounds %struct.cqhci_host, ptr %5, i32 0, i32 1
  %125 = load ptr, ptr %124, align 4
  %126 = getelementptr i8, ptr %125, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %126, i32 0) #7, !srcloc !11
  br label %127

127:                                              ; preds = %123, %122
  %128 = load ptr, ptr %5, align 4
  %129 = getelementptr inbounds %struct.cqhci_host_ops, ptr %128, i32 0, i32 1
  %130 = load ptr, ptr %129, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %133, label %132, !prof !9

132:                                              ; preds = %127
  call void %130(ptr noundef %5, i32 noundef 0, i32 noundef 24) #7
  br label %137

133:                                              ; preds = %127
  %134 = getelementptr inbounds %struct.cqhci_host, ptr %5, i32 0, i32 1
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr i8, ptr %135, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %136, i32 0) #7, !srcloc !11
  br label %137

137:                                              ; preds = %133, %132
  %138 = load ptr, ptr %5, align 4
  %139 = getelementptr inbounds %struct.cqhci_host_ops, ptr %138, i32 0, i32 2
  %140 = load ptr, ptr %139, align 4
  %141 = icmp eq ptr %140, null
  br i1 %141, label %144, label %142, !prof !9

142:                                              ; preds = %137
  %143 = call i32 %140(ptr noundef %5, i32 noundef 12) #7
  br label %149

144:                                              ; preds = %137
  %145 = getelementptr inbounds %struct.cqhci_host, ptr %5, i32 0, i32 1
  %146 = load ptr, ptr %145, align 4
  %147 = getelementptr i8, ptr %146, i32 12
  %148 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %147) #7, !srcloc !10
  br label %149

149:                                              ; preds = %144, %142
  %150 = phi i32 [ %143, %142 ], [ %148, %144 ]
  %151 = and i32 %150, 1
  %152 = icmp ne i32 %151, 0
  br label %153

153:                                              ; preds = %149, %17
  %154 = phi i1 [ %152, %149 ], [ true, %17 ]
  ret i1 %154
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @cqhci_clear_all_tasks(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 62
  %4 = load ptr, ptr %3, align 16
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.cqhci_host_ops, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9, !prof !9

9:                                                ; preds = %1
  tail call void %7(ptr noundef %4, i32 noundef 8, i32 noundef 20) #7
  br label %14

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.cqhci_host, ptr %4, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 8) #7, !srcloc !11
  br label %14

14:                                               ; preds = %10, %9
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr inbounds %struct.cqhci_host_ops, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19, !prof !9

19:                                               ; preds = %14
  tail call void %17(ptr noundef %4, i32 noundef 8, i32 noundef 24) #7
  br label %24

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.cqhci_host, ptr %4, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 8) #7, !srcloc !11
  br label %24

24:                                               ; preds = %20, %19
  %25 = load ptr, ptr %4, align 4
  %26 = getelementptr inbounds %struct.cqhci_host_ops, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29, !prof !9

29:                                               ; preds = %24
  %30 = tail call i32 %27(ptr noundef %4, i32 noundef 12) #7
  br label %36

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.cqhci_host, ptr %4, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %33, i32 12
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #7, !srcloc !10
  br label %36

36:                                               ; preds = %31, %29
  %37 = phi i32 [ %30, %29 ], [ %35, %31 ]
  %38 = or i32 %37, 256
  %39 = load ptr, ptr %4, align 4
  %40 = getelementptr inbounds %struct.cqhci_host_ops, ptr %39, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43, !prof !9

43:                                               ; preds = %36
  tail call void %41(ptr noundef %4, i32 noundef %38, i32 noundef 12) #7
  br label %48

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.cqhci_host, ptr %4, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr i8, ptr %46, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %38) #7, !srcloc !11
  br label %48

48:                                               ; preds = %44, %43
  %49 = load ptr, ptr %4, align 4
  %50 = getelementptr inbounds %struct.cqhci_host_ops, ptr %49, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53, !prof !9

53:                                               ; preds = %48
  %54 = tail call i32 %51(ptr noundef %4, i32 noundef 12) #7
  br label %60

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.cqhci_host, ptr %4, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr i8, ptr %57, i32 12
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #7, !srcloc !10
  br label %60

60:                                               ; preds = %55, %53
  %61 = phi i32 [ %54, %53 ], [ %59, %55 ]
  %62 = and i32 %61, 256
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %93, label %64

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !12
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #7
  %65 = getelementptr inbounds %struct.cqhci_host, ptr %4, i32 0, i32 28
  %66 = getelementptr inbounds %struct.cqhci_host, ptr %4, i32 0, i32 1
  br label %67

67:                                               ; preds = %90, %64
  %68 = phi i32 [ 3, %64 ], [ %91, %90 ]
  %69 = call i32 @prepare_to_wait_event(ptr noundef %65, ptr noundef nonnull %2, i32 noundef 2) #7
  %70 = load ptr, ptr %4, align 4
  %71 = getelementptr inbounds %struct.cqhci_host_ops, ptr %70, i32 0, i32 2
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %76, label %74, !prof !9

74:                                               ; preds = %67
  %75 = call i32 %72(ptr noundef %4, i32 noundef 12) #7
  br label %80

76:                                               ; preds = %67
  %77 = load ptr, ptr %66, align 4
  %78 = getelementptr i8, ptr %77, i32 12
  %79 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #7, !srcloc !10
  br label %80

80:                                               ; preds = %76, %74
  %81 = phi i32 [ %75, %74 ], [ %79, %76 ]
  %82 = and i32 %81, 256
  %83 = icmp eq i32 %82, 0
  %84 = xor i1 %83, true
  %85 = icmp ne i32 %68, 0
  %86 = select i1 %84, i1 true, i1 %85
  %87 = select i1 %86, i32 %68, i32 1
  %88 = icmp eq i32 %87, 0
  %89 = select i1 %83, i1 true, i1 %88
  br i1 %89, label %92, label %90

90:                                               ; preds = %80
  %91 = call i32 @schedule_timeout(i32 noundef %87) #7
  br label %67

92:                                               ; preds = %80
  call void @finish_wait(ptr noundef %65, ptr noundef nonnull %2) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #7
  br label %93

93:                                               ; preds = %92, %60
  %94 = load ptr, ptr %4, align 4
  %95 = getelementptr inbounds %struct.cqhci_host_ops, ptr %94, i32 0, i32 1
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %99, label %98, !prof !9

98:                                               ; preds = %93
  call void %96(ptr noundef %4, i32 noundef 0, i32 noundef 20) #7
  br label %103

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.cqhci_host, ptr %4, i32 0, i32 1
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr i8, ptr %101, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 0) #7, !srcloc !11
  br label %103

103:                                              ; preds = %99, %98
  %104 = load ptr, ptr %4, align 4
  %105 = getelementptr inbounds %struct.cqhci_host_ops, ptr %104, i32 0, i32 1
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %109, label %108, !prof !9

108:                                              ; preds = %103
  call void %106(ptr noundef %4, i32 noundef 0, i32 noundef 24) #7
  br label %113

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.cqhci_host, ptr %4, i32 0, i32 1
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr i8, ptr %111, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %112, i32 0) #7, !srcloc !11
  br label %113

113:                                              ; preds = %109, %108
  %114 = load ptr, ptr %4, align 4
  %115 = getelementptr inbounds %struct.cqhci_host_ops, ptr %114, i32 0, i32 2
  %116 = load ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %120, label %118, !prof !9

118:                                              ; preds = %113
  %119 = call i32 %116(ptr noundef %4, i32 noundef 12) #7
  br label %125

120:                                              ; preds = %113
  %121 = getelementptr inbounds %struct.cqhci_host, ptr %4, i32 0, i32 1
  %122 = load ptr, ptr %121, align 4
  %123 = getelementptr i8, ptr %122, i32 12
  %124 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %123) #7, !srcloc !10
  br label %125

125:                                              ; preds = %120, %118
  %126 = phi i32 [ %119, %118 ], [ %124, %120 ]
  %127 = and i32 %126, 256
  %128 = icmp eq i32 %127, 0
  ret i1 %128
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
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
!8 = !{i8 0, i8 2}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 4657852}
!11 = !{i64 4657434}
!12 = !{!"auto-init"}
!13 = !{i32 0, i32 33}
!14 = !{i64 2149196276}
!15 = !{i64 2149192100}
!16 = !{i64 2149192175, i64 2149192202, i64 2149192249, i64 2149192271, i64 2149192299, i64 2149192319}
!17 = !{i64 2149219279}
!18 = !{!"branch_weights", i32 1, i32 2000}
!19 = !{i64 2153230945}
!20 = !{i64 2153257488}
!21 = !{i64 2153216399}
