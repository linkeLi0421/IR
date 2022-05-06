; ModuleID = '/llk/IR/drivers/mmc/core/mmc_ops.c_pt.bc'
source_filename = "../drivers/mmc/core/mmc_ops.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___mmc_send_status:\09\09\09\09\09"
module asm "\09.asciz \09\22__mmc_send_status\22\09\09\09\09\09"
module asm "__kstrtabns___mmc_send_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_send_status:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_send_status\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_send_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_get_ext_csd:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_get_ext_csd\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_get_ext_csd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___mmc_poll_for_busy:\09\09\09\09\09"
module asm "\09.asciz \09\22__mmc_poll_for_busy\22\09\09\09\09\09"
module asm "__kstrtabns___mmc_poll_for_busy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_poll_for_busy:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_poll_for_busy\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_poll_for_busy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_switch:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_switch\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_switch:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_send_tuning:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_send_tuning\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_send_tuning:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_send_abort_tuning:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_send_abort_tuning\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_send_abort_tuning:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_run_bkops:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_run_bkops\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_run_bkops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_cmdq_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_cmdq_enable\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_cmdq_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_cmdq_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_cmdq_disable\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_cmdq_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_sanitize:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_sanitize\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_sanitize:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
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
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32 }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__kstrtab___mmc_send_status = external dso_local constant [0 x i8], align 1
@__kstrtabns___mmc_send_status = external dso_local constant [0 x i8], align 1
@__ksymtab___mmc_send_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__mmc_send_status to i32), ptr @__kstrtab___mmc_send_status, ptr @__kstrtabns___mmc_send_status }, section "___ksymtab_gpl+__mmc_send_status", align 4
@__kstrtab_mmc_send_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_send_status = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_send_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_send_status to i32), ptr @__kstrtab_mmc_send_status, ptr @__kstrtabns_mmc_send_status }, section "___ksymtab_gpl+mmc_send_status", align 4
@__kstrtab_mmc_get_ext_csd = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_get_ext_csd = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_get_ext_csd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_get_ext_csd to i32), ptr @__kstrtab_mmc_get_ext_csd, ptr @__kstrtabns_mmc_get_ext_csd }, section "___ksymtab_gpl+mmc_get_ext_csd", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str = private unnamed_addr constant [33 x i8] c"\013%s: Card stuck being busy! %s\0A\00", align 1
@__func__.__mmc_poll_for_busy = private unnamed_addr constant [20 x i8] c"__mmc_poll_for_busy\00", align 1
@__kstrtab___mmc_poll_for_busy = external dso_local constant [0 x i8], align 1
@__kstrtabns___mmc_poll_for_busy = external dso_local constant [0 x i8], align 1
@__ksymtab___mmc_poll_for_busy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__mmc_poll_for_busy to i32), ptr @__kstrtab___mmc_poll_for_busy, ptr @__kstrtabns___mmc_poll_for_busy }, section "___ksymtab_gpl+__mmc_poll_for_busy", align 4
@__kstrtab_mmc_poll_for_busy = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_poll_for_busy = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_poll_for_busy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_poll_for_busy to i32), ptr @__kstrtab_mmc_poll_for_busy, ptr @__kstrtabns_mmc_poll_for_busy }, section "___ksymtab_gpl+mmc_poll_for_busy", align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"\014%s: unspecified timeout for CMD6 - use generic\0A\00", align 1
@__kstrtab_mmc_switch = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_switch = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_switch = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_switch to i32), ptr @__kstrtab_mmc_switch, ptr @__kstrtabns_mmc_switch }, section "___ksymtab_gpl+mmc_switch", align 4
@tuning_blk_pattern_8bit = internal constant [128 x i8] c"\FF\FF\00\FF\FF\FF\00\00\FF\FF\CC\CC\CC3\CC\CC\CC33\CC\CC\CC\FF\FF\FF\EE\FF\FF\FF\EE\EE\FF\FF\FF\DD\FF\FF\FF\DD\DD\FF\FF\FF\BB\FF\FF\FF\BB\BB\FF\FF\FFw\FF\FF\FFww\FFw\BB\DD\EE\FF\FF\FF\FF\00\FF\FF\FF\00\00\FF\FF\CC\CC\CC3\CC\CC\CC33\CC\CC\CC\FF\FF\FF\EE\FF\FF\FF\EE\EE\FF\FF\FF\DD\FF\FF\FF\DD\DD\FF\FF\FF\BB\FF\FF\FF\BB\BB\FF\FF\FFw\FF\FF\FFww\FFw\BB\DD\EE", align 1
@tuning_blk_pattern_4bit = internal constant [64 x i8] c"\FF\0F\FF\00\FF\CC\C3\CC\C3<\CC\FF\FE\FF\FE\EF\FF\DF\FF\DD\FF\FB\FF\FB\BF\FF\7F\FFw\F7\BD\EF\FF\F0\FF\F0\0F\FC\CC<\CC3\CC\CF\FF\EF\FF\EE\FF\FD\FF\FD\DF\FF\BF\FF\BB\FF\F7\FF\F7\7F{\DE", align 1
@__kstrtab_mmc_send_tuning = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_send_tuning = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_send_tuning = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_send_tuning to i32), ptr @__kstrtab_mmc_send_tuning, ptr @__kstrtabns_mmc_send_tuning }, section "___ksymtab_gpl+mmc_send_tuning", align 4
@__kstrtab_mmc_send_abort_tuning = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_send_abort_tuning = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_send_abort_tuning = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_send_abort_tuning to i32), ptr @__kstrtab_mmc_send_abort_tuning, ptr @__kstrtabns_mmc_send_abort_tuning }, section "___ksymtab_gpl+mmc_send_abort_tuning", align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"\013%s: Failed to read bkops status: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"\014%s: BKOPS aborted\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"\014%s: Error %d running bkops\0A\00", align 1
@__kstrtab_mmc_run_bkops = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_run_bkops = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_run_bkops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_run_bkops to i32), ptr @__kstrtab_mmc_run_bkops, ptr @__kstrtabns_mmc_run_bkops }, section "___ksymtab+mmc_run_bkops", align 4
@__kstrtab_mmc_cmdq_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_cmdq_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_cmdq_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_cmdq_enable to i32), ptr @__kstrtab_mmc_cmdq_enable, ptr @__kstrtabns_mmc_cmdq_enable }, section "___ksymtab_gpl+mmc_cmdq_enable", align 4
@__kstrtab_mmc_cmdq_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_cmdq_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_cmdq_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_cmdq_disable to i32), ptr @__kstrtab_mmc_cmdq_disable, ptr @__kstrtabns_mmc_cmdq_disable }, section "___ksymtab_gpl+mmc_cmdq_disable", align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"\014%s: Sanitize not supported\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"\013%s: Sanitize failed err=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"\014%s: Sanitize aborted\0A\00", align 1
@__kstrtab_mmc_sanitize = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_sanitize = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_sanitize = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_sanitize to i32), ptr @__kstrtab_mmc_sanitize, ptr @__kstrtabns_mmc_sanitize }, section "___ksymtab_gpl+mmc_sanitize", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.8 = private unnamed_addr constant [42 x i8] c"\014%s: unexpected status %#x after switch\0A\00", align 1
@mmc_send_bus_test.testdata_8bit = internal unnamed_addr constant [8 x i8] c"U\AA\00\00\00\00\00\00", align 1
@mmc_send_bus_test.testdata_4bit = internal unnamed_addr constant [4 x i8] c"Z\00\00\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"\013%s: Invalid bus_width %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"\016%s: HPI enable bit unset\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"\013%s: Get card status fail\0A\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"\014%s: HPI error %d. Command response %#x\0A\00", align 1
@llvm.compiler.used = appending global [12 x ptr] [ptr @__ksymtab___mmc_poll_for_busy, ptr @__ksymtab___mmc_send_status, ptr @__ksymtab_mmc_cmdq_disable, ptr @__ksymtab_mmc_cmdq_enable, ptr @__ksymtab_mmc_get_ext_csd, ptr @__ksymtab_mmc_poll_for_busy, ptr @__ksymtab_mmc_run_bkops, ptr @__ksymtab_mmc_sanitize, ptr @__ksymtab_mmc_send_abort_tuning, ptr @__ksymtab_mmc_send_status, ptr @__ksymtab_mmc_send_tuning, ptr @__ksymtab_mmc_switch], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__mmc_send_status(ptr nocapture noundef readonly %0, ptr noundef writeonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.mmc_command, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #13
  %5 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %5, i8 0, i32 44, i1 false)
  store i32 13, ptr %4, align 4
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds %struct.mmc_host, ptr %6, i32 0, i32 16
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = shl i32 %13, 16
  %15 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 1
  store i32 %14, ptr %15, align 4
  br label %16

16:                                               ; preds = %11, %3
  %17 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 3
  store i32 405, ptr %17, align 4
  %18 = call i32 @mmc_wait_for_cmd(ptr noundef %6, ptr noundef nonnull %4, i32 noundef %2) #13
  %19 = icmp ne i32 %18, 0
  %20 = icmp eq ptr %1, null
  %21 = or i1 %20, %19
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  store i32 %24, ptr %1, align 4
  br label %25

25:                                               ; preds = %22, %16
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #13
  ret i32 %18
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_wait_for_cmd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_send_status(ptr nocapture noundef readonly %0, ptr noundef writeonly %1) #0 {
  %3 = alloca %struct.mmc_command, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #13
  %4 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %4, i8 0, i32 44, i1 false) #13
  store i32 13, ptr %3, align 4
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 16
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = shl i32 %12, 16
  store i32 %13, ptr %4, align 4
  br label %14

14:                                               ; preds = %10, %2
  %15 = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 3
  store i32 405, ptr %15, align 4
  %16 = call i32 @mmc_wait_for_cmd(ptr noundef %5, ptr noundef nonnull %3, i32 noundef 3) #13
  %17 = icmp ne i32 %16, 0
  %18 = icmp eq ptr %1, null
  %19 = or i1 %18, %17
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  store i32 %22, ptr %1, align 4
  br label %23

23:                                               ; preds = %20, %14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #13
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_select_card(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.mmc_command, align 4
  %3 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #13
  %4 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %4, i8 0, i32 40, i1 false) #13
  store i32 7, ptr %2, align 4
  %5 = icmp eq ptr %0, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = shl i32 %8, 16
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i32 [ %9, %6 ], [ 0, %1 ]
  %12 = phi i32 [ 21, %6 ], [ 0, %1 ]
  %13 = getelementptr inbounds %struct.mmc_command, ptr %2, i32 0, i32 1
  store i32 %11, ptr %13, align 4
  %14 = getelementptr inbounds %struct.mmc_command, ptr %2, i32 0, i32 3
  store i32 %12, ptr %14, align 4
  %15 = call i32 @mmc_wait_for_cmd(ptr noundef %3, ptr noundef nonnull %2, i32 noundef 3) #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #13
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_deselect_cards(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.mmc_command, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #13
  %3 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %3, i8 0, i32 40, i1 false) #13
  store i32 7, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mmc_command, ptr %2, i32 0, i32 1
  store i32 0, ptr %4, align 4
  %5 = call i32 @mmc_wait_for_cmd(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 3) #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #13
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_set_dsr(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.mmc_command, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #13
  %3 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %3, i8 0, i32 40, i1 false)
  store i32 4, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 60
  %5 = load i32, ptr %4, align 8
  %6 = shl i32 %5, 16
  %7 = or i32 %6, 65535
  %8 = getelementptr inbounds %struct.mmc_command, ptr %2, i32 0, i32 1
  store i32 %7, ptr %8, align 4
  %9 = call i32 @mmc_wait_for_cmd(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 3) #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #13
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_go_idle(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.mmc_command, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #13
  %3 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %3, i8 0, i32 40, i1 false)
  %4 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void @mmc_set_chip_select(ptr noundef %0, i32 noundef 1) #13
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1250, i32 noundef 2) #13
  br label %9

9:                                                ; preds = %8, %1
  store i32 0, ptr %2, align 4
  %10 = getelementptr inbounds %struct.mmc_command, ptr %2, i32 0, i32 1
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.mmc_command, ptr %2, i32 0, i32 3
  store i32 192, ptr %11, align 4
  %12 = call i32 @mmc_wait_for_cmd(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 0) #13
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1250, i32 noundef 2) #13
  %13 = load i32, ptr %4, align 8
  %14 = and i32 %13, 16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  call void @mmc_set_chip_select(ptr noundef %0, i32 noundef 0) #13
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1250, i32 noundef 2) #13
  br label %17

17:                                               ; preds = %16, %9
  %18 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 29
  %19 = load i16, ptr %18, align 8
  %20 = and i16 %19, -2
  store i16 %20, ptr %18, align 8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #13
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_set_chip_select(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mmc_delay(i32 noundef %0) unnamed_addr #4 {
  %2 = icmp ult i32 %0, 21
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = mul nuw nsw i32 %0, 1000
  %5 = mul nuw nsw i32 %0, 1250
  tail call void @usleep_range_state(i32 noundef %4, i32 noundef %5, i32 noundef 2) #13
  br label %7

6:                                                ; preds = %1
  tail call void @msleep(i32 noundef %0) #13
  br label %7

7:                                                ; preds = %6, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_send_op_cond(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.mmc_command, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #13
  %5 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %5, i8 0, i32 40, i1 false)
  store i32 1, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 16
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 %1, i32 0
  %11 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 1
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 3
  store i32 225, ptr %12, align 4
  %13 = load volatile i32, ptr @jiffies, align 64
  %14 = add i32 %13, 101
  %15 = load volatile i32, ptr @jiffies, align 64
  %16 = call i32 @mmc_wait_for_cmd(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 0) #13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %59

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 2
  %20 = icmp eq i32 %1, 0
  br label %21

21:                                               ; preds = %49, %18
  %22 = phi i32 [ %15, %18 ], [ %53, %49 ]
  %23 = phi i32 [ 1000, %18 ], [ %52, %49 ]
  %24 = load i32, ptr %6, align 8
  %25 = and i32 %24, 16
  %26 = icmp eq i32 %25, 0
  %27 = load i32, ptr %19, align 4
  br i1 %26, label %31, label %28

28:                                               ; preds = %21
  %29 = and i32 %27, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %59, label %36

31:                                               ; preds = %21
  %32 = icmp sgt i32 %27, -1
  br i1 %32, label %33, label %56

33:                                               ; preds = %31
  br i1 %20, label %34, label %36

34:                                               ; preds = %33
  %35 = or i32 %27, 1073741824
  store i32 %35, ptr %11, align 4
  br label %36

36:                                               ; preds = %34, %33, %28
  %37 = sub i32 %14, %22
  %38 = icmp sgt i32 %37, -1
  br i1 %38, label %49, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  br label %46

46:                                               ; preds = %43, %39
  %47 = phi ptr [ %45, %43 ], [ %41, %39 ]
  %48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %47, ptr noundef nonnull @__func__.__mmc_poll_for_busy) #14
  br label %59

49:                                               ; preds = %36
  %50 = shl i32 %23, 1
  call void @usleep_range_state(i32 noundef %23, i32 noundef %50, i32 noundef 2) #13
  %51 = icmp ult i32 %23, 32768
  %52 = select i1 %51, i32 %50, i32 %23
  %53 = load volatile i32, ptr @jiffies, align 64
  %54 = call i32 @mmc_wait_for_cmd(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 0) #13
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %21, label %59

56:                                               ; preds = %31
  %57 = icmp eq ptr %2, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %56
  store i32 %27, ptr %2, align 4
  br label %59

59:                                               ; preds = %58, %56, %49, %46, %28, %3
  %60 = phi i32 [ 0, %58 ], [ 0, %56 ], [ -110, %46 ], [ %16, %3 ], [ 0, %28 ], [ %54, %49 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #13
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__mmc_poll_for_busy(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4) #0 {
  %6 = alloca i8, align 1
  %7 = icmp eq i32 %1, 0
  %8 = select i1 %7, i32 32, i32 %1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #13
  store i8 0, ptr %6, align 1
  %9 = load volatile i32, ptr @jiffies, align 64
  %10 = tail call i32 @__msecs_to_jiffies(i32 noundef %2) #13
  %11 = add i32 %9, 1
  %12 = add i32 %11, %10
  br label %13

13:                                               ; preds = %35, %5
  %14 = phi i32 [ %8, %5 ], [ %38, %35 ]
  %15 = load volatile i32, ptr @jiffies, align 64
  %16 = call i32 %3(ptr noundef %4, ptr noundef nonnull %6) #13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %13
  %19 = sub i32 %12, %15
  %20 = icmp sgt i32 %19, -1
  %21 = load i8, ptr %6, align 1
  %22 = icmp eq i8 %21, 0
  %23 = select i1 %20, i1 true, i1 %22
  br i1 %23, label %34, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  br label %31

31:                                               ; preds = %28, %24
  %32 = phi ptr [ %30, %28 ], [ %26, %24 ]
  %33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %32, ptr noundef nonnull @__func__.__mmc_poll_for_busy) #14
  br label %41

34:                                               ; preds = %18
  br i1 %22, label %41, label %35

35:                                               ; preds = %34
  %36 = shl i32 %14, 1
  call void @usleep_range_state(i32 noundef %14, i32 noundef %36, i32 noundef 2) #13
  %37 = icmp ult i32 %14, 32768
  %38 = select i1 %37, i32 %36, i32 %14
  %39 = load i8, ptr %6, align 1
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %13

41:                                               ; preds = %35, %34, %31, %13
  %42 = phi i32 [ -110, %31 ], [ 0, %34 ], [ 0, %35 ], [ %16, %13 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #13
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_set_relative_addr(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.mmc_command, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #13
  %3 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %3, i8 0, i32 40, i1 false)
  store i32 3, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = shl i32 %5, 16
  %7 = getelementptr inbounds %struct.mmc_command, ptr %2, i32 0, i32 1
  store i32 %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.mmc_command, ptr %2, i32 0, i32 3
  store i32 21, ptr %8, align 4
  %9 = load ptr, ptr %0, align 8
  %10 = call i32 @mmc_wait_for_cmd(ptr noundef %9, ptr noundef nonnull %2, i32 noundef 3) #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #13
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_send_adtc_data(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.mmc_request, align 4
  %8 = alloca %struct.mmc_command, align 4
  %9 = alloca %struct.mmc_data, align 4
  %10 = alloca %struct.scatterlist, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %7) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %7, i8 0, i32 68, i1 false)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #13
  %11 = getelementptr inbounds i8, ptr %8, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %11, i8 0, i32 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %9, i8 0, i32 56, i1 false)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %10) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %10, i8 0, i32 20, i1 false), !annotation !8
  %12 = getelementptr inbounds %struct.mmc_request, ptr %7, i32 0, i32 1
  store ptr %8, ptr %12, align 4
  %13 = getelementptr inbounds %struct.mmc_request, ptr %7, i32 0, i32 2
  store ptr %9, ptr %13, align 4
  store i32 %2, ptr %8, align 4
  %14 = getelementptr inbounds %struct.mmc_command, ptr %8, i32 0, i32 1
  store i32 %3, ptr %14, align 4
  %15 = getelementptr inbounds %struct.mmc_command, ptr %8, i32 0, i32 3
  store i32 181, ptr %15, align 4
  %16 = getelementptr inbounds %struct.mmc_data, ptr %9, i32 0, i32 2
  store i32 %5, ptr %16, align 4
  %17 = getelementptr inbounds %struct.mmc_data, ptr %9, i32 0, i32 3
  store i32 1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.mmc_data, ptr %9, i32 0, i32 6
  store i32 512, ptr %18, align 4
  %19 = getelementptr inbounds %struct.mmc_data, ptr %9, i32 0, i32 12
  store ptr %10, ptr %19, align 4
  %20 = getelementptr inbounds %struct.mmc_data, ptr %9, i32 0, i32 10
  store i32 1, ptr %20, align 4
  call void @sg_init_one(ptr noundef nonnull %10, ptr noundef %4, i32 noundef %5) #13
  %21 = add i32 %2, -9
  %22 = icmp ult i32 %21, 2
  br i1 %22, label %23, label %25

23:                                               ; preds = %6
  store i32 0, ptr %9, align 4
  %24 = getelementptr inbounds %struct.mmc_data, ptr %9, i32 0, i32 1
  store i32 64, ptr %24, align 4
  br label %26

25:                                               ; preds = %6
  call void @mmc_set_data_timeout(ptr noundef nonnull %9, ptr noundef %0) #13
  br label %26

26:                                               ; preds = %25, %23
  call void @mmc_wait_for_req(ptr noundef %1, ptr noundef nonnull %7) #13
  %27 = getelementptr inbounds %struct.mmc_command, ptr %8, i32 0, i32 5
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  %30 = getelementptr inbounds %struct.mmc_data, ptr %9, i32 0, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = select i1 %29, i32 %31, i32 %28
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %7) #13
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_set_data_timeout(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_wait_for_req(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_send_csd(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.mmc_command, align 4
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 16
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = tail call fastcc i32 @mmc_spi_send_cxd(ptr noundef %4, ptr noundef %1, i32 noundef 9)
  br label %22

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = shl i32 %13, 16
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #13
  %15 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %15, i8 0, i32 40, i1 false) #13
  store i32 9, ptr %3, align 4
  %16 = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 1
  store i32 %14, ptr %16, align 4
  %17 = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 3
  store i32 7, ptr %17, align 4
  %18 = call i32 @mmc_wait_for_cmd(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 3) #13
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %1, ptr noundef align 4 dereferenceable(16) %15, i32 16, i1 false) #13
  br label %21

21:                                               ; preds = %20, %11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #13
  br label %22

22:                                               ; preds = %21, %9
  %23 = phi i32 [ %10, %9 ], [ %18, %21 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mmc_spi_send_cxd(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.mmc_request, align 4
  %5 = alloca %struct.mmc_command, align 4
  %6 = alloca %struct.mmc_data, align 4
  %7 = alloca %struct.scatterlist, align 4
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 16) #15
  %10 = icmp eq ptr %9, null
  br i1 %10, label %51, label %11

11:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %4, i8 0, i32 68, i1 false) #13
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #13
  %12 = getelementptr inbounds i8, ptr %5, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %12, i8 0, i32 40, i1 false) #13
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %6, i8 0, i32 56, i1 false) #13
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %7) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %7, i8 0, i32 20, i1 false) #13, !annotation !8
  %13 = getelementptr inbounds %struct.mmc_request, ptr %4, i32 0, i32 1
  store ptr %5, ptr %13, align 4
  %14 = getelementptr inbounds %struct.mmc_request, ptr %4, i32 0, i32 2
  store ptr %6, ptr %14, align 4
  store i32 %2, ptr %5, align 4
  %15 = getelementptr inbounds %struct.mmc_command, ptr %5, i32 0, i32 1
  store i32 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.mmc_command, ptr %5, i32 0, i32 3
  store i32 181, ptr %16, align 4
  %17 = getelementptr inbounds %struct.mmc_data, ptr %6, i32 0, i32 2
  store i32 16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.mmc_data, ptr %6, i32 0, i32 3
  store i32 1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.mmc_data, ptr %6, i32 0, i32 6
  store i32 512, ptr %19, align 4
  %20 = getelementptr inbounds %struct.mmc_data, ptr %6, i32 0, i32 12
  store ptr %7, ptr %20, align 4
  %21 = getelementptr inbounds %struct.mmc_data, ptr %6, i32 0, i32 10
  store i32 1, ptr %21, align 4
  call void @sg_init_one(ptr noundef nonnull %7, ptr noundef nonnull %9, i32 noundef 16) #13
  %22 = add i32 %2, -9
  %23 = icmp ult i32 %22, 2
  br i1 %23, label %24, label %26

24:                                               ; preds = %11
  store i32 0, ptr %6, align 4
  %25 = getelementptr inbounds %struct.mmc_data, ptr %6, i32 0, i32 1
  store i32 64, ptr %25, align 4
  br label %27

26:                                               ; preds = %11
  call void @mmc_set_data_timeout(ptr noundef nonnull %6, ptr noundef null) #13
  br label %27

27:                                               ; preds = %26, %24
  call void @mmc_wait_for_req(ptr noundef %0, ptr noundef nonnull %4) #13
  %28 = getelementptr inbounds %struct.mmc_command, ptr %5, i32 0, i32 5
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  %31 = getelementptr inbounds %struct.mmc_data, ptr %6, i32 0, i32 5
  %32 = load i32, ptr %31, align 4
  %33 = select i1 %30, i32 %32, i32 %29
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %4) #13
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %27
  %36 = load i32, ptr %9, align 8
  %37 = call i32 @llvm.bswap.i32(i32 %36)
  store i32 %37, ptr %1, align 4
  %38 = getelementptr i32, ptr %9, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = call i32 @llvm.bswap.i32(i32 %39)
  %41 = getelementptr i32, ptr %1, i32 1
  store i32 %40, ptr %41, align 4
  %42 = getelementptr i32, ptr %9, i32 2
  %43 = load i32, ptr %42, align 8
  %44 = call i32 @llvm.bswap.i32(i32 %43)
  %45 = getelementptr i32, ptr %1, i32 2
  store i32 %44, ptr %45, align 4
  %46 = getelementptr i32, ptr %9, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = call i32 @llvm.bswap.i32(i32 %47)
  %49 = getelementptr i32, ptr %1, i32 3
  store i32 %48, ptr %49, align 4
  br label %50

50:                                               ; preds = %35, %27
  call void @kfree(ptr noundef nonnull %9) #13
  br label %51

51:                                               ; preds = %50, %3
  %52 = phi i32 [ %33, %50 ], [ -12, %3 ]
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_send_cid(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.mmc_command, align 4
  %4 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call fastcc i32 @mmc_spi_send_cxd(ptr noundef %0, ptr noundef %1, i32 noundef 10)
  br label %18

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #13
  %11 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %11, i8 0, i32 40, i1 false) #13
  store i32 2, ptr %3, align 4
  %12 = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 1
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 3
  store i32 7, ptr %13, align 4
  %14 = call i32 @mmc_wait_for_cmd(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 3) #13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %1, ptr noundef align 4 dereferenceable(16) %11, i32 16, i1 false) #13
  br label %17

17:                                               ; preds = %16, %10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #13
  br label %18

18:                                               ; preds = %17, %8
  %19 = phi i32 [ %9, %8 ], [ %14, %17 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_get_ext_csd(ptr noundef %0, ptr noundef writeonly %1) #0 {
  %3 = alloca %struct.mmc_request, align 4
  %4 = alloca %struct.mmc_command, align 4
  %5 = alloca %struct.mmc_data, align 4
  %6 = alloca %struct.scatterlist, align 4
  %7 = icmp ne ptr %0, null
  %8 = icmp ne ptr %1, null
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %39

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 20, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = icmp ult i8 %12, 4
  br i1 %13, label %39, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 512) #15
  %17 = icmp eq ptr %16, null
  br i1 %17, label %39, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %3, i8 0, i32 68, i1 false) #13
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #13
  %20 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %20, i8 0, i32 40, i1 false) #13
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %5, i8 0, i32 56, i1 false) #13
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %6, i8 0, i32 20, i1 false) #13, !annotation !8
  %21 = getelementptr inbounds %struct.mmc_request, ptr %3, i32 0, i32 1
  store ptr %4, ptr %21, align 4
  %22 = getelementptr inbounds %struct.mmc_request, ptr %3, i32 0, i32 2
  store ptr %5, ptr %22, align 4
  store i32 8, ptr %4, align 4
  %23 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 1
  store i32 0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 3
  store i32 181, ptr %24, align 4
  %25 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 2
  store i32 512, ptr %25, align 4
  %26 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 3
  store i32 1, ptr %26, align 4
  %27 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 6
  store i32 512, ptr %27, align 4
  %28 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 12
  store ptr %6, ptr %28, align 4
  %29 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 10
  store i32 1, ptr %29, align 4
  call void @sg_init_one(ptr noundef nonnull %6, ptr noundef nonnull %16, i32 noundef 512) #13
  call void @mmc_set_data_timeout(ptr noundef nonnull %5, ptr noundef nonnull %0) #13
  call void @mmc_wait_for_req(ptr noundef %19, ptr noundef nonnull %3) #13
  %30 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  %33 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 5
  %34 = load i32, ptr %33, align 4
  %35 = select i1 %32, i32 %34, i32 %31
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %3) #13
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %18
  call void @kfree(ptr noundef nonnull %16) #13
  br label %39

38:                                               ; preds = %18
  store ptr %16, ptr %1, align 4
  br label %39

39:                                               ; preds = %38, %37, %14, %10, %2
  %40 = phi i32 [ -22, %2 ], [ -95, %10 ], [ -12, %14 ], [ 0, %38 ], [ %35, %37 ]
  ret i32 %40
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @mmc_can_ext_csd(ptr noundef readonly %0) local_unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 20, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = icmp ugt i8 %5, 3
  %7 = zext i1 %6 to i32
  br label %8

8:                                                ; preds = %3, %1
  %9 = phi i32 [ 0, %1 ], [ %7, %3 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_spi_read_ocr(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.mmc_command, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #13
  %5 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %5, i8 0, i32 40, i1 false)
  store i32 58, ptr %4, align 4
  %6 = icmp eq i32 %1, 0
  %7 = select i1 %6, i32 0, i32 1073741824
  %8 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 1
  store i32 %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 3
  store i32 640, ptr %9, align 4
  %10 = call i32 @mmc_wait_for_cmd(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 0) #13
  %11 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 2, i32 1
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #13
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_spi_set_crc(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.mmc_command, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #13
  %4 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %4, i8 0, i32 40, i1 false)
  store i32 59, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 3
  store i32 128, ptr %5, align 4
  %6 = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 1
  store i32 %1, ptr %6, align 4
  %7 = call i32 @mmc_wait_for_cmd(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 0) #13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 29
  %11 = trunc i32 %1 to i16
  %12 = load i16, ptr %10, align 8
  %13 = and i16 %11, 1
  %14 = and i16 %12, -2
  %15 = or i16 %14, %13
  store i16 %15, ptr %10, align 8
  br label %16

16:                                               ; preds = %9, %2
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #13
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_switch_status(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.mmc_command, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #13
  %4 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %4, i8 0, i32 44, i1 false) #13
  store i32 13, ptr %3, align 4
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 16
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = shl i32 %12, 16
  store i32 %13, ptr %4, align 4
  br label %14

14:                                               ; preds = %10, %2
  %15 = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 3
  store i32 405, ptr %15, align 4
  %16 = call i32 @mmc_wait_for_cmd(ptr noundef %5, ptr noundef nonnull %3, i32 noundef 3) #13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #13
  %19 = xor i1 %1, true
  %20 = icmp eq i32 %16, -84
  %21 = select i1 %19, i1 %20, i1 false
  %22 = select i1 %21, i32 0, i32 %16
  br label %51

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #13
  %26 = load ptr, ptr %0, align 8
  %27 = getelementptr inbounds %struct.mmc_host, ptr %26, i32 0, i32 16
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %23
  %32 = and i32 %25, 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %50, label %51

34:                                               ; preds = %23
  %35 = and i32 %25, -417792
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.mmc_host, ptr %26, i32 0, i32 1, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.mmc_host, ptr %26, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  br label %44

44:                                               ; preds = %41, %37
  %45 = phi ptr [ %43, %41 ], [ %39, %37 ]
  %46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %45, i32 noundef %25) #14
  br label %47

47:                                               ; preds = %44, %34
  %48 = and i32 %25, 128
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47, %31
  br label %51

51:                                               ; preds = %50, %47, %31, %18
  %52 = phi i32 [ 0, %50 ], [ -74, %31 ], [ -74, %47 ], [ %22, %18 ]
  ret i32 %52
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_poll_for_busy(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2, i32 noundef %3) #0 {
  %5 = alloca %struct.mmc_command, align 4
  %6 = load ptr, ptr %0, align 8
  %7 = load volatile i32, ptr @jiffies, align 64
  %8 = tail call i32 @__msecs_to_jiffies(i32 noundef %1) #13
  %9 = add i32 %7, 1
  %10 = add i32 %9, %8
  %11 = icmp eq i32 %3, 4
  %12 = getelementptr inbounds i8, ptr %5, i32 4
  %13 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 3
  %14 = getelementptr inbounds %struct.mmc_command, ptr %5, i32 0, i32 3
  %15 = getelementptr inbounds %struct.mmc_command, ptr %5, i32 0, i32 2
  br label %16

16:                                               ; preds = %94, %4
  %17 = phi i32 [ 32, %4 ], [ %97, %94 ]
  %18 = load volatile i32, ptr @jiffies, align 64
  %19 = load ptr, ptr %0, align 8
  br i1 %11, label %29, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.mmc_host, ptr %19, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.mmc_host_ops, ptr %22, i32 0, i32 11
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = call i32 %24(ptr noundef %19) #13
  %28 = icmp ne i32 %27, 0
  br label %74

29:                                               ; preds = %20, %16
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %12, i8 0, i32 44, i1 false) #13
  store i32 13, ptr %5, align 4
  %30 = getelementptr inbounds %struct.mmc_host, ptr %19, i32 0, i32 16
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, 16
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, ptr %13, align 4
  %36 = shl i32 %35, 16
  store i32 %36, ptr %12, align 4
  br label %37

37:                                               ; preds = %34, %29
  store i32 405, ptr %14, align 4
  %38 = call i32 @mmc_wait_for_cmd(ptr noundef %19, ptr noundef nonnull %5, i32 noundef 3) #13
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #13
  %41 = icmp eq i32 %38, -84
  %42 = select i1 %2, i1 %41, i1 false
  br i1 %42, label %80, label %98

43:                                               ; preds = %37
  %44 = load i32, ptr %15, align 4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #13
  switch i32 %3, label %98 [
    i32 0, label %45
    i32 1, label %68
    i32 2, label %71
    i32 3, label %71
    i32 4, label %71
  ]

45:                                               ; preds = %43
  %46 = load i32, ptr %30, align 8
  %47 = and i32 %46, 16
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = and i32 %44, 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %71, label %98

52:                                               ; preds = %45
  %53 = and i32 %44, -417792
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %65, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.mmc_host, ptr %19, i32 0, i32 1, i32 3
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.mmc_host, ptr %19, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  br label %62

62:                                               ; preds = %59, %55
  %63 = phi ptr [ %61, %59 ], [ %57, %55 ]
  %64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %63, i32 noundef %44) #14
  br label %65

65:                                               ; preds = %62, %52
  %66 = and i32 %44, 128
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %71, label %98

68:                                               ; preds = %43
  %69 = and i32 %44, -417792
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %98

71:                                               ; preds = %68, %65, %49, %43, %43, %43
  %72 = and i32 %44, 7936
  %73 = icmp ne i32 %72, 2304
  br label %74

74:                                               ; preds = %71, %26
  %75 = phi i1 [ %73, %71 ], [ %28, %26 ]
  %76 = sub i32 %10, %18
  %77 = icmp sgt i32 %76, -1
  %78 = xor i1 %75, true
  %79 = select i1 %77, i1 true, i1 %78
  br i1 %79, label %93, label %83

80:                                               ; preds = %40
  %81 = sub i32 %10, %18
  %82 = icmp sgt i32 %81, -1
  br i1 %82, label %94, label %83

83:                                               ; preds = %80, %74
  %84 = getelementptr inbounds %struct.mmc_host, ptr %6, i32 0, i32 1, i32 3
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.mmc_host, ptr %6, i32 0, i32 1
  %89 = load ptr, ptr %88, align 4
  br label %90

90:                                               ; preds = %87, %83
  %91 = phi ptr [ %89, %87 ], [ %85, %83 ]
  %92 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %91, ptr noundef nonnull @__func__.__mmc_poll_for_busy) #14
  br label %98

93:                                               ; preds = %74
  br i1 %75, label %94, label %98

94:                                               ; preds = %93, %80
  %95 = shl i32 %17, 1
  call void @usleep_range_state(i32 noundef %17, i32 noundef %95, i32 noundef 2) #13
  %96 = icmp ult i32 %17, 32768
  %97 = select i1 %96, i32 %95, i32 %17
  br label %16

98:                                               ; preds = %93, %90, %68, %65, %49, %43, %40
  %99 = phi i32 [ -110, %90 ], [ %38, %40 ], [ -74, %65 ], [ -74, %49 ], [ -5, %68 ], [ -22, %43 ], [ 0, %93 ]
  ret i32 %99
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @mmc_prepare_busy_cmd(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #7 {
  %4 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 4194304
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 26
  %10 = load i32, ptr %9, align 4
  %11 = icmp ne i32 %10, 0
  %12 = icmp ult i32 %10, %2
  %13 = and i1 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 3
  store i32 149, ptr %15, align 4
  br label %19

16:                                               ; preds = %8, %3
  %17 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 3
  store i32 1181, ptr %17, align 4
  %18 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 6
  store i32 %2, ptr %18, align 4
  br label %19

19:                                               ; preds = %16, %14
  %20 = phi i1 [ true, %16 ], [ false, %14 ]
  ret i1 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__mmc_switch(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i32 noundef %4, i8 noundef zeroext %5, i1 noundef zeroext %6, i1 noundef zeroext %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = alloca %struct.mmc_command, align 4
  %11 = alloca %struct.mmc_command, align 4
  %12 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %11) #13
  %13 = getelementptr inbounds i8, ptr %11, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %13, i8 0, i32 40, i1 false)
  %14 = getelementptr inbounds %struct.mmc_host, ptr %12, i32 0, i32 28, i32 7
  %15 = load i8, ptr %14, align 4
  tail call void @mmc_retune_hold(ptr noundef %12) #13
  %16 = icmp eq i32 %4, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.mmc_host, ptr %12, i32 0, i32 1, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.mmc_host, ptr %12, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  br label %24

24:                                               ; preds = %21, %17
  %25 = phi ptr [ %23, %21 ], [ %19, %17 ]
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %25) #14
  %27 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 14
  %28 = load i32, ptr %27, align 4
  br label %29

29:                                               ; preds = %24, %9
  %30 = phi i32 [ %4, %9 ], [ %28, %24 ]
  store i32 6, ptr %11, align 4
  %31 = zext i8 %2 to i32
  %32 = shl nuw nsw i32 %31, 16
  %33 = zext i8 %3 to i32
  %34 = shl nuw nsw i32 %33, 8
  %35 = or i32 %34, %32
  %36 = zext i8 %1 to i32
  %37 = or i32 %35, %36
  %38 = or i32 %37, 50331648
  %39 = getelementptr inbounds %struct.mmc_command, ptr %11, i32 0, i32 1
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.mmc_host, ptr %12, i32 0, i32 16
  %41 = load i32, ptr %40, align 8
  %42 = and i32 %41, 4194304
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %29
  %45 = getelementptr inbounds %struct.mmc_host, ptr %12, i32 0, i32 26
  %46 = load i32, ptr %45, align 4
  %47 = icmp ne i32 %46, 0
  %48 = icmp ult i32 %46, %30
  %49 = and i1 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.mmc_command, ptr %11, i32 0, i32 3
  store i32 149, ptr %51, align 4
  br label %55

52:                                               ; preds = %44, %29
  %53 = getelementptr inbounds %struct.mmc_command, ptr %11, i32 0, i32 3
  store i32 1181, ptr %53, align 4
  %54 = getelementptr inbounds %struct.mmc_command, ptr %11, i32 0, i32 6
  store i32 %30, ptr %54, align 4
  br label %55

55:                                               ; preds = %52, %50
  %56 = phi i1 [ false, %52 ], [ true, %50 ]
  %57 = call i32 @mmc_wait_for_cmd(ptr noundef %12, ptr noundef nonnull %11, i32 noundef %8) #13
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %130

59:                                               ; preds = %55
  %60 = load i32, ptr %40, align 8
  %61 = and i32 %60, 512
  %62 = icmp eq i32 %61, 0
  %63 = or i1 %56, %62
  %64 = and i32 %60, 16
  %65 = icmp eq i32 %64, 0
  %66 = select i1 %63, i1 %65, i1 false
  br i1 %66, label %67, label %78

67:                                               ; preds = %59
  br i1 %6, label %75, label %68

68:                                               ; preds = %67
  %69 = getelementptr inbounds %struct.mmc_host, ptr %12, i32 0, i32 3
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.mmc_host_ops, ptr %70, i32 0, i32 11
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  call fastcc void @mmc_delay(i32 noundef %30)
  br label %78

75:                                               ; preds = %68, %67
  %76 = call i32 @mmc_poll_for_busy(ptr noundef %0, i32 noundef %30, i1 noundef zeroext %7, i32 noundef 0)
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %130

78:                                               ; preds = %75, %74, %59
  %79 = icmp eq i8 %5, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %78
  %81 = zext i8 %5 to i32
  call void @mmc_set_timing(ptr noundef %12, i32 noundef %81) #13
  br label %82

82:                                               ; preds = %80, %78
  br i1 %6, label %83, label %130

83:                                               ; preds = %82
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %10) #13
  %84 = getelementptr inbounds i8, ptr %10, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %84, i8 0, i32 44, i1 false) #13
  store i32 13, ptr %10, align 4
  %85 = load ptr, ptr %0, align 8
  %86 = getelementptr inbounds %struct.mmc_host, ptr %85, i32 0, i32 16
  %87 = load i32, ptr %86, align 8
  %88 = and i32 %87, 16
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %83
  %91 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 3
  %92 = load i32, ptr %91, align 4
  %93 = shl i32 %92, 16
  store i32 %93, ptr %84, align 4
  br label %94

94:                                               ; preds = %90, %83
  %95 = getelementptr inbounds %struct.mmc_command, ptr %10, i32 0, i32 3
  store i32 405, ptr %95, align 4
  %96 = call i32 @mmc_wait_for_cmd(ptr noundef %85, ptr noundef nonnull %10, i32 noundef 3) #13
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %94
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %10) #13
  br label %126

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.mmc_command, ptr %10, i32 0, i32 2
  %101 = load i32, ptr %100, align 4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %10) #13
  %102 = load ptr, ptr %0, align 8
  %103 = getelementptr inbounds %struct.mmc_host, ptr %102, i32 0, i32 16
  %104 = load i32, ptr %103, align 8
  %105 = and i32 %104, 16
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %99
  %108 = and i32 %101, 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %130, label %126

110:                                              ; preds = %99
  %111 = and i32 %101, -417792
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %123, label %113

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.mmc_host, ptr %102, i32 0, i32 1, i32 3
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %120

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.mmc_host, ptr %102, i32 0, i32 1
  %119 = load ptr, ptr %118, align 4
  br label %120

120:                                              ; preds = %117, %113
  %121 = phi ptr [ %119, %117 ], [ %115, %113 ]
  %122 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %121, i32 noundef %101) #14
  br label %123

123:                                              ; preds = %120, %110
  %124 = and i32 %101, 128
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %123, %107, %98
  %127 = phi i32 [ -74, %107 ], [ -74, %123 ], [ %96, %98 ]
  br i1 %79, label %130, label %128

128:                                              ; preds = %126
  %129 = zext i8 %15 to i32
  call void @mmc_set_timing(ptr noundef %12, i32 noundef %129) #13
  br label %130

130:                                              ; preds = %128, %126, %123, %107, %82, %75, %55
  %131 = phi i32 [ %57, %55 ], [ %127, %128 ], [ %127, %126 ], [ 0, %82 ], [ %76, %75 ], [ 0, %107 ], [ 0, %123 ]
  call void @mmc_retune_release(ptr noundef %12) #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %11) #13
  ret i32 %131
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_retune_hold(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_set_timing(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_retune_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_switch(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i32 noundef %4) #0 {
  %6 = tail call i32 @__mmc_switch(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i32 noundef %4, i8 noundef zeroext 0, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef 3)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_send_tuning(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) #0 {
  %4 = alloca %struct.mmc_request, align 4
  %5 = alloca %struct.mmc_command, align 4
  %6 = alloca %struct.mmc_data, align 4
  %7 = alloca %struct.scatterlist, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %4, i8 0, i32 68, i1 false)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #13
  %8 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %8, i8 0, i32 44, i1 false)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #13
  %9 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %9, i8 0, i32 52, i1 false)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %7) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %7, i8 0, i32 20, i1 false), !annotation !8
  %10 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 28, i32 6
  %11 = load i8, ptr %10, align 1
  switch i8 %11, label %43 [
    i8 3, label %13
    i8 2, label %12
  ]

12:                                               ; preds = %3
  br label %13

13:                                               ; preds = %12, %3
  %14 = phi ptr [ @tuning_blk_pattern_4bit, %12 ], [ @tuning_blk_pattern_8bit, %3 ]
  %15 = phi i32 [ 64, %12 ], [ 128, %3 ]
  %16 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %15, i32 noundef 3520) #16
  %17 = icmp eq ptr %16, null
  br i1 %17, label %43, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.mmc_request, ptr %4, i32 0, i32 1
  store ptr %5, ptr %19, align 4
  %20 = getelementptr inbounds %struct.mmc_request, ptr %4, i32 0, i32 2
  store ptr %6, ptr %20, align 4
  store i32 %1, ptr %5, align 4
  %21 = getelementptr inbounds %struct.mmc_command, ptr %5, i32 0, i32 3
  store i32 53, ptr %21, align 4
  %22 = getelementptr inbounds %struct.mmc_data, ptr %6, i32 0, i32 2
  store i32 %15, ptr %22, align 4
  %23 = getelementptr inbounds %struct.mmc_data, ptr %6, i32 0, i32 3
  store i32 1, ptr %23, align 4
  %24 = getelementptr inbounds %struct.mmc_data, ptr %6, i32 0, i32 6
  store i32 512, ptr %24, align 4
  store i32 150000000, ptr %6, align 4
  %25 = getelementptr inbounds %struct.mmc_data, ptr %6, i32 0, i32 12
  store ptr %7, ptr %25, align 4
  %26 = getelementptr inbounds %struct.mmc_data, ptr %6, i32 0, i32 10
  store i32 1, ptr %26, align 4
  call void @sg_init_one(ptr noundef nonnull %7, ptr noundef nonnull %16, i32 noundef %15) #13
  call void @mmc_wait_for_req(ptr noundef %0, ptr noundef nonnull %4) #13
  %27 = icmp eq ptr %2, null
  %28 = getelementptr inbounds %struct.mmc_command, ptr %5, i32 0, i32 5
  %29 = load i32, ptr %28, align 4
  br i1 %27, label %31, label %30

30:                                               ; preds = %18
  store i32 %29, ptr %2, align 4
  br label %31

31:                                               ; preds = %30, %18
  %32 = icmp eq i32 %29, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.mmc_data, ptr %6, i32 0, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = call i32 @bcmp(ptr noundef nonnull %16, ptr noundef nonnull %14, i32 %15)
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i32 0, i32 -5
  br label %41

41:                                               ; preds = %37, %33, %31
  %42 = phi i32 [ %29, %31 ], [ %35, %33 ], [ %40, %37 ]
  call void @kfree(ptr noundef nonnull %16) #13
  br label %43

43:                                               ; preds = %41, %13, %3
  %44 = phi i32 [ %42, %41 ], [ -22, %3 ], [ -12, %13 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %4) #13
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_send_abort_tuning(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.mmc_command, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #13
  %4 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %4, i8 0, i32 44, i1 false)
  %5 = icmp eq i32 %1, 21
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  store i32 12, ptr %3, align 4
  %7 = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 3
  store i32 149, ptr %7, align 4
  %8 = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 6
  store i32 150, ptr %8, align 4
  %9 = call i32 @mmc_wait_for_cmd(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 0) #13
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i32 [ %9, %6 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #13
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_bus_test(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  switch i8 %1, label %4 [
    i8 3, label %5
    i8 2, label %3
    i8 0, label %11
  ]

3:                                                ; preds = %2
  br label %5

4:                                                ; preds = %2
  br label %11

5:                                                ; preds = %3, %2
  %6 = phi i8 [ 4, %3 ], [ 8, %2 ]
  %7 = load ptr, ptr %0, align 8
  %8 = tail call fastcc i32 @mmc_send_bus_test(ptr noundef %0, ptr noundef %7, i8 noundef zeroext 19, i8 noundef zeroext %6)
  %9 = load ptr, ptr %0, align 8
  %10 = tail call fastcc i32 @mmc_send_bus_test(ptr noundef %0, ptr noundef %9, i8 noundef zeroext 14, i8 noundef zeroext %6)
  br label %11

11:                                               ; preds = %5, %4, %2
  %12 = phi i32 [ %10, %5 ], [ -22, %4 ], [ 0, %2 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mmc_send_bus_test(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca %struct.mmc_request, align 4
  %6 = alloca %struct.mmc_command, align 4
  %7 = alloca %struct.mmc_data, align 4
  %8 = alloca %struct.scatterlist, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %5, i8 0, i32 68, i1 false)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #13
  %9 = getelementptr inbounds i8, ptr %6, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %9, i8 0, i32 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %7, i8 0, i32 56, i1 false)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %8) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %8, i8 0, i32 20, i1 false), !annotation !8
  %10 = zext i8 %3 to i32
  %11 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %10, i32 noundef 3264) #16
  %12 = icmp eq ptr %11, null
  br i1 %12, label %67, label %13

13:                                               ; preds = %4
  switch i8 %3, label %15 [
    i8 8, label %25
    i8 4, label %14
  ]

14:                                               ; preds = %13
  br label %25

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 1, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  br label %22

22:                                               ; preds = %19, %15
  %23 = phi ptr [ %21, %19 ], [ %17, %15 ]
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %23, i32 noundef %10) #14
  tail call void @kfree(ptr noundef nonnull %11) #13
  br label %67

25:                                               ; preds = %14, %13
  %26 = phi ptr [ @mmc_send_bus_test.testdata_4bit, %14 ], [ @mmc_send_bus_test.testdata_8bit, %13 ]
  %27 = zext i8 %2 to i32
  %28 = icmp eq i8 %2, 19
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %11, ptr nonnull align 1 %26, i32 %10, i1 false)
  br label %30

30:                                               ; preds = %29, %25
  %31 = getelementptr inbounds %struct.mmc_request, ptr %5, i32 0, i32 1
  store ptr %6, ptr %31, align 4
  %32 = getelementptr inbounds %struct.mmc_request, ptr %5, i32 0, i32 2
  store ptr %7, ptr %32, align 4
  store i32 %27, ptr %6, align 4
  %33 = getelementptr inbounds %struct.mmc_command, ptr %6, i32 0, i32 1
  store i32 0, ptr %33, align 4
  %34 = getelementptr inbounds %struct.mmc_command, ptr %6, i32 0, i32 3
  store i32 181, ptr %34, align 4
  %35 = getelementptr inbounds %struct.mmc_data, ptr %7, i32 0, i32 2
  store i32 %10, ptr %35, align 4
  %36 = getelementptr inbounds %struct.mmc_data, ptr %7, i32 0, i32 3
  store i32 1, ptr %36, align 4
  %37 = icmp eq i8 %2, 14
  %38 = getelementptr inbounds %struct.mmc_data, ptr %7, i32 0, i32 6
  br i1 %37, label %39, label %43

39:                                               ; preds = %30
  store i32 512, ptr %38, align 4
  %40 = getelementptr inbounds %struct.mmc_data, ptr %7, i32 0, i32 12
  store ptr %8, ptr %40, align 4
  %41 = getelementptr inbounds %struct.mmc_data, ptr %7, i32 0, i32 10
  store i32 1, ptr %41, align 4
  call void @mmc_set_data_timeout(ptr noundef nonnull %7, ptr noundef %0) #13
  call void @sg_init_one(ptr noundef nonnull %8, ptr noundef nonnull %11, i32 noundef %10) #13
  call void @mmc_wait_for_req(ptr noundef %1, ptr noundef nonnull %5) #13
  %42 = lshr i32 %10, 2
  br label %49

43:                                               ; preds = %30
  store i32 256, ptr %38, align 4
  %44 = getelementptr inbounds %struct.mmc_data, ptr %7, i32 0, i32 12
  store ptr %8, ptr %44, align 4
  %45 = getelementptr inbounds %struct.mmc_data, ptr %7, i32 0, i32 10
  store i32 1, ptr %45, align 4
  call void @mmc_set_data_timeout(ptr noundef nonnull %7, ptr noundef %0) #13
  call void @sg_init_one(ptr noundef nonnull %8, ptr noundef nonnull %11, i32 noundef %10) #13
  call void @mmc_wait_for_req(ptr noundef %1, ptr noundef nonnull %5) #13
  br label %57

46:                                               ; preds = %49
  %47 = add nuw nsw i32 %50, 1
  %48 = icmp eq i32 %47, %42
  br i1 %48, label %57, label %49

49:                                               ; preds = %46, %39
  %50 = phi i32 [ %47, %46 ], [ 0, %39 ]
  %51 = getelementptr i8, ptr %26, i32 %50
  %52 = load i8, ptr %51, align 1
  %53 = getelementptr i8, ptr %11, i32 %50
  %54 = load i8, ptr %53, align 1
  %55 = xor i8 %54, %52
  %56 = icmp eq i8 %55, -1
  br i1 %56, label %46, label %57

57:                                               ; preds = %49, %46, %43
  %58 = phi i32 [ 0, %43 ], [ 0, %46 ], [ -5, %49 ]
  call void @kfree(ptr noundef nonnull %11) #13
  %59 = getelementptr inbounds %struct.mmc_command, ptr %6, i32 0, i32 5
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.mmc_data, ptr %7, i32 0, i32 5
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 0
  %66 = select i1 %65, i32 %58, i32 %64
  br label %67

67:                                               ; preds = %62, %57, %22, %4
  %68 = phi i32 [ -22, %22 ], [ -12, %4 ], [ %60, %57 ], [ %66, %62 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %5) #13
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmc_run_bkops(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 33
  %4 = load i8, ptr %3, align 1, !range !9
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %60, label %6

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #13
  store ptr null, ptr %2, align 4, !annotation !8
  %7 = call i32 @mmc_get_ext_csd(ptr noundef %0, ptr noundef nonnull %2) #13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  %10 = load ptr, ptr %0, align 8
  %11 = getelementptr inbounds %struct.mmc_host, ptr %10, i32 0, i32 1, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.mmc_host, ptr %10, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %9
  %18 = phi ptr [ %16, %14 ], [ %12, %9 ]
  %19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %18, i32 noundef %7) #14
  br label %60

20:                                               ; preds = %6
  %21 = load ptr, ptr %2, align 4
  %22 = getelementptr i8, ptr %21, i32 246
  %23 = load i8, ptr %22, align 1
  %24 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 71
  store i8 %23, ptr %24, align 1
  %25 = getelementptr i8, ptr %21, i32 54
  %26 = load i8, ptr %25, align 1
  %27 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 44
  store i8 %26, ptr %27, align 8
  call void @kfree(ptr noundef %21) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  %28 = load i8, ptr %24, align 1
  %29 = icmp ult i8 %28, 2
  br i1 %29, label %60, label %30

30:                                               ; preds = %20
  %31 = load ptr, ptr %0, align 8
  call void @mmc_retune_hold(ptr noundef %31) #13
  %32 = call i32 @__mmc_switch(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext -92, i8 noundef zeroext 1, i32 noundef 120000, i8 noundef zeroext 0, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef 3) #13
  switch i32 %32, label %47 [
    i32 -110, label %33
    i32 0, label %58
  ]

33:                                               ; preds = %30
  %34 = call fastcc i32 @mmc_interrupt_hpi(ptr noundef %0)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = load ptr, ptr %0, align 8
  %38 = getelementptr inbounds %struct.mmc_host, ptr %37, i32 0, i32 1, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.mmc_host, ptr %37, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  br label %44

44:                                               ; preds = %41, %36
  %45 = phi ptr [ %43, %41 ], [ %39, %36 ]
  %46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %45) #14
  br label %58

47:                                               ; preds = %33, %30
  %48 = load ptr, ptr %0, align 8
  %49 = getelementptr inbounds %struct.mmc_host, ptr %48, i32 0, i32 1, i32 3
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.mmc_host, ptr %48, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  br label %55

55:                                               ; preds = %52, %47
  %56 = phi ptr [ %54, %52 ], [ %50, %47 ]
  %57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %56, i32 noundef %32) #14
  br label %58

58:                                               ; preds = %55, %44, %30
  %59 = load ptr, ptr %0, align 8
  call void @mmc_retune_release(ptr noundef %59) #13
  br label %60

60:                                               ; preds = %58, %20, %17, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mmc_interrupt_hpi(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.mmc_command, align 4
  %3 = alloca %struct.mmc_command, align 4
  %4 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 29
  %5 = load i8, ptr %4, align 8, !range !9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr inbounds %struct.mmc_host, ptr %8, i32 0, i32 1, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.mmc_host, ptr %8, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  br label %15

15:                                               ; preds = %12, %7
  %16 = phi ptr [ %14, %12 ], [ %10, %7 ]
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %16) #14
  br label %104

18:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #13
  %19 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %19, i8 0, i32 44, i1 false) #13
  store i32 13, ptr %3, align 4
  %20 = load ptr, ptr %0, align 8
  %21 = getelementptr inbounds %struct.mmc_host, ptr %20, i32 0, i32 16
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 16
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = shl i32 %27, 16
  store i32 %28, ptr %19, align 4
  br label %29

29:                                               ; preds = %25, %18
  %30 = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 3
  store i32 405, ptr %30, align 4
  %31 = call i32 @mmc_wait_for_cmd(ptr noundef %20, ptr noundef nonnull %3, i32 noundef 3) #13
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %29
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #13
  %34 = load ptr, ptr %0, align 8
  %35 = getelementptr inbounds %struct.mmc_host, ptr %34, i32 0, i32 1, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.mmc_host, ptr %34, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  br label %41

41:                                               ; preds = %38, %33
  %42 = phi ptr [ %40, %38 ], [ %36, %33 ]
  %43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %42) #14
  br label %104

44:                                               ; preds = %29
  %45 = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 2
  %46 = load i32, ptr %45, align 4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #13
  %47 = lshr i32 %46, 9
  %48 = and i32 %47, 15
  switch i32 %48, label %49 [
    i32 0, label %104
    i32 1, label %104
    i32 3, label %104
    i32 4, label %104
    i32 7, label %50
  ]

49:                                               ; preds = %44
  br label %104

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 52
  %52 = load i8, ptr %51, align 8
  %53 = zext i8 %52 to i32
  %54 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #13
  %55 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %55, i8 0, i32 40, i1 false) #13
  %56 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 31
  %57 = load i32, ptr %56, align 4
  store i32 %57, ptr %2, align 4
  %58 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 3
  %59 = load i32, ptr %58, align 4
  %60 = shl i32 %59, 16
  %61 = or i32 %60, 1
  %62 = getelementptr inbounds %struct.mmc_command, ptr %2, i32 0, i32 1
  store i32 %61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.mmc_command, ptr %2, i32 0, i32 3
  store i32 21, ptr %63, align 4
  %64 = icmp eq i32 %57, 12
  br i1 %64, label %65, label %79

65:                                               ; preds = %50
  %66 = getelementptr inbounds %struct.mmc_host, ptr %54, i32 0, i32 16
  %67 = load i32, ptr %66, align 8
  %68 = and i32 %67, 4194304
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.mmc_host, ptr %54, i32 0, i32 26
  %72 = load i32, ptr %71, align 4
  %73 = icmp ne i32 %72, 0
  %74 = icmp ult i32 %72, %53
  %75 = and i1 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  store i32 149, ptr %63, align 4
  br label %79

77:                                               ; preds = %70, %65
  store i32 1181, ptr %63, align 4
  %78 = getelementptr inbounds %struct.mmc_command, ptr %2, i32 0, i32 6
  store i32 %53, ptr %78, align 4
  br label %79

79:                                               ; preds = %77, %76, %50
  %80 = phi i1 [ true, %50 ], [ false, %77 ], [ true, %76 ]
  %81 = call i32 @mmc_wait_for_cmd(ptr noundef %54, ptr noundef nonnull %2, i32 noundef 0) #13
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %94, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.mmc_host, ptr %54, i32 0, i32 1, i32 3
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.mmc_host, ptr %54, i32 0, i32 1
  %89 = load ptr, ptr %88, align 4
  br label %90

90:                                               ; preds = %87, %83
  %91 = phi ptr [ %89, %87 ], [ %85, %83 ]
  %92 = load i32, ptr %55, align 4
  %93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %91, i32 noundef %81, i32 noundef %92) #14
  br label %102

94:                                               ; preds = %79
  %95 = getelementptr inbounds %struct.mmc_host, ptr %54, i32 0, i32 16
  %96 = load i32, ptr %95, align 8
  %97 = and i32 %96, 512
  %98 = icmp eq i32 %97, 0
  %99 = or i1 %80, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %94
  %101 = call i32 @mmc_poll_for_busy(ptr noundef %0, i32 noundef %53, i1 noundef zeroext false, i32 noundef 2) #13
  br label %102

102:                                              ; preds = %100, %94, %90
  %103 = phi i32 [ %81, %90 ], [ %101, %100 ], [ 0, %94 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #13
  br label %104

104:                                              ; preds = %102, %49, %44, %44, %44, %44, %41, %15
  %105 = phi i32 [ 1, %15 ], [ %31, %41 ], [ -22, %49 ], [ %103, %102 ], [ 0, %44 ], [ 0, %44 ], [ 0, %44 ], [ 0, %44 ]
  ret i32 %105
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_cmdq_enable(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 41
  %3 = load i8, ptr %2, align 1, !range !9
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 14
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @__mmc_switch(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext 15, i8 noundef zeroext 1, i32 noundef %7, i8 noundef zeroext 0, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef 3) #13
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 40
  store i8 1, ptr %11, align 2
  br label %12

12:                                               ; preds = %10, %5, %1
  %13 = phi i32 [ -95, %1 ], [ 0, %10 ], [ %8, %5 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_cmdq_disable(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 41
  %3 = load i8, ptr %2, align 1, !range !9
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 14
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @__mmc_switch(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext 15, i8 noundef zeroext 0, i32 noundef %7, i8 noundef zeroext 0, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef 3) #13
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 40
  store i8 0, ptr %11, align 2
  br label %12

12:                                               ; preds = %10, %5, %1
  %13 = phi i32 [ -95, %1 ], [ 0, %10 ], [ %8, %5 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_sanitize(ptr noundef %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = tail call i32 @mmc_can_sanitize(ptr noundef %0) #13
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 1, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  br label %13

13:                                               ; preds = %10, %6
  %14 = phi ptr [ %12, %10 ], [ %8, %6 ]
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %14) #14
  br label %44

16:                                               ; preds = %2
  %17 = icmp eq i32 %1, 0
  %18 = select i1 %17, i32 240000, i32 %1
  tail call void @mmc_retune_hold(ptr noundef %3) #13
  %19 = tail call i32 @__mmc_switch(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext -91, i8 noundef zeroext 1, i32 noundef %18, i8 noundef zeroext 0, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef 0)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %43, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 1
  %23 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 1, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load ptr, ptr %22, align 4
  br label %28

28:                                               ; preds = %26, %21
  %29 = phi ptr [ %27, %26 ], [ %24, %21 ]
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %29, i32 noundef %19) #14
  %31 = icmp eq i32 %19, -110
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = tail call fastcc i32 @mmc_interrupt_hpi(ptr noundef %0)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  %36 = load ptr, ptr %23, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load ptr, ptr %22, align 4
  br label %40

40:                                               ; preds = %38, %35
  %41 = phi ptr [ %39, %38 ], [ %36, %35 ]
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %41) #14
  br label %43

43:                                               ; preds = %40, %32, %28, %16
  tail call void @mmc_retune_release(ptr noundef %3) #13
  br label %44

44:                                               ; preds = %43, %13
  %45 = phi i32 [ %19, %43 ], [ -95, %13 ]
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_can_sanitize(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }

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
