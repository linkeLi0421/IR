; ModuleID = '/llk/IR/drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sdio_device_id = type { i8, i16, i16, i32 }
%struct.sdio_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.brcmf_sdio_dev = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spinlock, i8, i32, i16, i32, i32, %struct.sg_table, [320 x i8], [320 x i8], i8, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.sg_table = type { ptr, i32, i32 }
%struct.brcmf_mp_device = type { i8, i32, i32, i8, i8, i8, ptr, ptr, %union.anon.119 }
%union.anon.119 = type { %struct.brcmfmac_sdio_pd }
%struct.brcmfmac_sdio_pd = type { i32, i32, i8, i32, i32, i8, i16, i16, ptr }
%struct.sdio_func = type { ptr, %struct.device, ptr, i32, i8, i16, i16, i32, i32, i32, i32, ptr, i8, i8, i32, ptr, ptr }
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
%struct.brcmf_bus = type { %union.anon.92, i32, ptr, ptr, i32, %struct.brcmf_bus_stats, i32, i32, i32, i8, i8, ptr, ptr }
%union.anon.92 = type { ptr }
%struct.brcmf_bus_stats = type { %struct.atomic_t, %struct.atomic_t }
%struct.brcmf_core = type { i16, i16, i32 }
%struct.sk_buff = type { %union.anon.40, %union.anon.43, %union.anon.44, [48 x i8], %union.anon.45, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.47, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, ptr, %union.anon.42 }
%union.anon.42 = type { ptr }
%union.anon.43 = type { ptr }
%union.anon.44 = type { i64 }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { i32, ptr }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.49, i32, i32, i32, i16, i16, %union.anon.51, %union.anon.52, %union.anon.53, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.49 = type { i32 }
%union.anon.51 = type { i32 }
%union.anon.52 = type { i32 }
%union.anon.53 = type { i16 }
%struct.sk_buff_head = type { %union.anon.120, i32, %struct.spinlock }
%union.anon.120 = type { %struct.anon.121 }
%struct.anon.121 = type { ptr, ptr }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32 }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.page = type { i32, %union.anon.1, %union.anon.90, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.90 = type { %struct.atomic_t }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, [37 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mmc_supply = type { ptr, ptr }
%struct.brcmf_sdiod_freezer = type { %struct.atomic_t, %struct.atomic_t, i32, %struct.wait_queue_head, %struct.completion }
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
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@.str = private unnamed_addr constant [15 x i8] c"brcmf_oob_intr\00", align 1
@__func__.brcmf_sdiod_intr_register = private unnamed_addr constant [26 x i8] c"brcmf_sdiod_intr_register\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"request_irq failed %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"enable_irq_wake failed %d\0A\00", align 1
@__func__.brcmf_sdiod_recv_buf = private unnamed_addr constant [21 x i8] c"brcmf_sdiod_recv_buf\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"brcmu_pkt_buf_get_skb failed: len %d\0A\00", align 1
@__func__.brcmf_sdiod_send_buf = private unnamed_addr constant [21 x i8] c"brcmf_sdiod_send_buf\00", align 1
@__func__.brcmf_sdiod_ramrw = private unnamed_addr constant [18 x i8] c"brcmf_sdiod_ramrw\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"dev_alloc_skb failed: len %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"membytes transfer failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c\00", align 1
@__func__.brcmf_sdiod_sgtable_alloc = private unnamed_addr constant [26 x i8] c"brcmf_sdiod_sgtable_alloc\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"allocation failed: disable scatter-gather\00", align 1
@__func__.brcmf_sdiod_probe = private unnamed_addr constant [18 x i8] c"brcmf_sdiod_probe\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"Failed to set F1 blocksize\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Failed to set F2 blocksize\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"Failed to enable F1: err=%d\0A\00", align 1
@brcmf_sdmmc_ids = internal constant [22 x %struct.sdio_device_id] [%struct.sdio_device_id { i8 -1, i16 720, i16 -22393, i32 0 }, %struct.sdio_device_id { i8 -1, i16 720, i16 17188, i32 0 }, %struct.sdio_device_id { i8 -1, i16 720, i16 17193, i32 0 }, %struct.sdio_device_id { i8 -1, i16 720, i16 17200, i32 0 }, %struct.sdio_device_id { i8 -1, i16 720, i16 17204, i32 0 }, %struct.sdio_device_id { i8 -1, i16 720, i16 -22196, i32 0 }, %struct.sdio_device_id { i8 -1, i16 720, i16 -22195, i32 0 }, %struct.sdio_device_id { i8 -1, i16 720, i16 -22174, i32 0 }, %struct.sdio_device_id { i8 -1, i16 720, i16 -22108, i32 0 }, %struct.sdio_device_id { i8 -1, i16 720, i16 17205, i32 0 }, %struct.sdio_device_id { i8 -1, i16 720, i16 17209, i32 0 }, %struct.sdio_device_id { i8 -1, i16 720, i16 -22106, i32 0 }, %struct.sdio_device_id { i8 -1, i16 720, i16 17221, i32 0 }, %struct.sdio_device_id { i8 -1, i16 720, i16 -22081, i32 0 }, %struct.sdio_device_id { i8 -1, i16 720, i16 17236, i32 0 }, %struct.sdio_device_id { i8 -1, i16 720, i16 17238, i32 0 }, %struct.sdio_device_id { i8 -1, i16 720, i16 17241, i32 0 }, %struct.sdio_device_id { i8 -1, i16 720, i16 17267, i32 0 }, %struct.sdio_device_id { i8 -1, i16 720, i16 -22524, i32 0 }, %struct.sdio_device_id { i8 -1, i16 720, i16 -21784, i32 0 }, %struct.sdio_device_id { i8 -1, i16 720, i16 17237, i32 0 }, %struct.sdio_device_id zeroinitializer], align 4
@brcmf_sdmmc_driver = internal global %struct.sdio_driver { ptr @.str.17, ptr @brcmf_sdmmc_ids, ptr @brcmf_ops_sdio_probe, ptr @brcmf_ops_sdio_remove, %struct.device_driver { ptr null, ptr null, ptr @__this_module, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @brcmf_sdio_pm_ops, ptr @brcmf_dev_coredump, ptr null } }, align 4
@.str.11 = private unnamed_addr constant [34 x i8] c"invalid sdio function number: %d\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__func__.mmc_submit_one = private unnamed_addr constant [15 x i8] c"mmc_submit_one\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"CMD53 sg block %s failed %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@brcmf_sdiod_freezer_attach.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"&sdiodev->freezer->thread_freeze\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"brcmfmac\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@brcmf_sdio_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @brcmf_ops_sdio_suspend, ptr @brcmf_ops_sdio_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__func__.brcmf_ops_sdio_probe = private unnamed_addr constant [21 x i8] c"brcmf_ops_sdio_probe\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"F2 error, probe failed %d...\0A\00", align 1
@__func__.brcmf_ops_sdio_suspend = private unnamed_addr constant [23 x i8] c"brcmf_ops_sdio_suspend\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"Failed to set pm_flags %x\0A\00", align 1
@__func__.brcmf_ops_sdio_resume = private unnamed_addr constant [22 x i8] c"brcmf_ops_sdio_resume\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"Failed to probe device on resume\0A\00", align 1

@__mod_sdio__brcmf_sdmmc_ids_device_table = dso_local alias [22 x %struct.sdio_device_id], ptr @brcmf_sdmmc_ids

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_sdiod_intr_register(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  %7 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.brcmf_mp_device, ptr %8, i32 0, i32 8, i32 0, i32 2
  %10 = load i8, ptr %9, align 4, !range !8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %134, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 11
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 10
  store i8 1, ptr %14, align 2
  %15 = getelementptr inbounds %struct.brcmf_mp_device, ptr %8, i32 0, i32 8, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.brcmf_mp_device, ptr %8, i32 0, i32 8, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = load ptr, ptr %0, align 4
  %20 = getelementptr inbounds %struct.sdio_func, ptr %19, i32 0, i32 1
  %21 = tail call i32 @request_threaded_irq(i32 noundef %16, ptr noundef nonnull @brcmf_sdiod_oob_irqhandler, ptr noundef null, i32 noundef %18, ptr noundef nonnull @.str, ptr noundef %20) #10
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %12
  %24 = tail call i32 @net_ratelimit() #10
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %143, label %26

26:                                               ; preds = %23
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdiod_intr_register, ptr noundef nonnull @.str.1, i32 noundef %21) #10
  br label %143

27:                                               ; preds = %12
  %28 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 8
  store i8 1, ptr %28, align 4
  %29 = load i32, ptr %15, align 4
  %30 = tail call i32 @irq_set_irq_wake(i32 noundef %29, i32 noundef 1) #10
  store i32 %30, ptr %6, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = tail call i32 @net_ratelimit() #10
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %143, label %35

35:                                               ; preds = %32
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdiod_intr_register, ptr noundef nonnull @.str.2, i32 noundef %30) #10
  br label %143

36:                                               ; preds = %27
  %37 = load i32, ptr %15, align 4
  %38 = tail call i32 @irq_set_irq_wake(i32 noundef %37, i32 noundef 0) #10
  %39 = load ptr, ptr %0, align 4
  tail call void @sdio_claim_host(ptr noundef %39) #10
  %40 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 6
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.brcmf_bus, ptr %41, i32 0, i32 7
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 43362
  br i1 %44, label %45, label %123

45:                                               ; preds = %36
  %46 = load ptr, ptr %0, align 4
  %47 = getelementptr inbounds %struct.sdio_func, ptr %46, i32 0, i32 6
  %48 = load i16, ptr %47, align 4
  %49 = tail call i32 @brcmf_chip_enum_base(i16 noundef zeroext %48) #10
  %50 = add i32 %49, 108
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  %51 = and i32 %50, -32768
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4
  %52 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 2
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %78, label %55

55:                                               ; preds = %45
  %56 = lshr exact i32 %51, 8
  %57 = load ptr, ptr %0, align 4
  %58 = trunc i32 %56 to i8
  call void @sdio_writeb(ptr noundef %57, i8 noundef zeroext %58, i32 noundef 65546, ptr noundef nonnull %4) #10
  %59 = load i32, ptr %4, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %55
  %62 = lshr i32 %50, 16
  %63 = load ptr, ptr %0, align 4
  %64 = trunc i32 %62 to i8
  call void @sdio_writeb(ptr noundef %63, i8 noundef zeroext %64, i32 noundef 65547, ptr noundef nonnull %4) #10
  %65 = load i32, ptr %4, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %61
  %68 = lshr i32 %50, 24
  %69 = load ptr, ptr %0, align 4
  %70 = trunc i32 %68 to i8
  call void @sdio_writeb(ptr noundef %69, i8 noundef zeroext %70, i32 noundef 65548, ptr noundef nonnull %4) #10
  %71 = load i32, ptr %4, align 4
  %72 = icmp eq i32 %71, 0
  br label %73

73:                                               ; preds = %67, %61, %55
  %74 = phi i32 [ %59, %55 ], [ %65, %61 ], [ %71, %67 ]
  %75 = phi i1 [ %60, %55 ], [ %66, %61 ], [ %72, %67 ]
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i32 %51, ptr %52, align 4
  br label %78

77:                                               ; preds = %73
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  br label %85

78:                                               ; preds = %76, %45
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %5, align 4
  %79 = and i32 %50, 32767
  %80 = or i32 %79, 32768
  %81 = load ptr, ptr %0, align 4
  %82 = call i32 @sdio_readl(ptr noundef %81, i32 noundef %80, ptr noundef nonnull %5) #10
  %83 = or i32 %82, 2
  %84 = load i32, ptr %5, align 4
  br label %85

85:                                               ; preds = %78, %77
  %86 = phi i32 [ %74, %77 ], [ %84, %78 ]
  %87 = phi i32 [ 2, %77 ], [ %83, %78 ]
  store i32 %86, ptr %6, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 0, ptr %2, align 4
  %88 = load i32, ptr %52, align 4
  %89 = icmp eq i32 %51, %88
  br i1 %89, label %113, label %90

90:                                               ; preds = %85
  %91 = lshr exact i32 %51, 8
  %92 = load ptr, ptr %0, align 4
  %93 = trunc i32 %91 to i8
  call void @sdio_writeb(ptr noundef %92, i8 noundef zeroext %93, i32 noundef 65546, ptr noundef nonnull %2) #10
  %94 = load i32, ptr %2, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %90
  %97 = lshr i32 %50, 16
  %98 = load ptr, ptr %0, align 4
  %99 = trunc i32 %97 to i8
  call void @sdio_writeb(ptr noundef %98, i8 noundef zeroext %99, i32 noundef 65547, ptr noundef nonnull %2) #10
  %100 = load i32, ptr %2, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %96
  %103 = lshr i32 %50, 24
  %104 = load ptr, ptr %0, align 4
  %105 = trunc i32 %103 to i8
  call void @sdio_writeb(ptr noundef %104, i8 noundef zeroext %105, i32 noundef 65548, ptr noundef nonnull %2) #10
  %106 = load i32, ptr %2, align 4
  %107 = icmp eq i32 %106, 0
  br label %108

108:                                              ; preds = %102, %96, %90
  %109 = phi i32 [ %94, %90 ], [ %100, %96 ], [ %106, %102 ]
  %110 = phi i1 [ %95, %90 ], [ %101, %96 ], [ %107, %102 ]
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  store i32 %51, ptr %52, align 4
  br label %113

112:                                              ; preds = %108
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  br label %118

113:                                              ; preds = %111, %85
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  store i32 0, ptr %3, align 4
  %114 = and i32 %50, 32767
  %115 = or i32 %114, 32768
  %116 = load ptr, ptr %0, align 4
  call void @sdio_writel(ptr noundef %116, i32 noundef %87, i32 noundef %115, ptr noundef nonnull %3) #10
  %117 = load i32, ptr %3, align 4
  br label %118

118:                                              ; preds = %113, %112
  %119 = phi i32 [ %109, %112 ], [ %117, %113 ]
  store i32 %119, ptr %6, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  %120 = load ptr, ptr %0, align 4
  call void @sdio_writeb(ptr noundef %120, i8 noundef zeroext 15, i32 noundef 65541, ptr noundef nonnull %6) #10
  %121 = load ptr, ptr %0, align 4
  call void @sdio_writeb(ptr noundef %121, i8 noundef zeroext 0, i32 noundef 65542, ptr noundef nonnull %6) #10
  %122 = load ptr, ptr %0, align 4
  call void @sdio_writeb(ptr noundef %122, i8 noundef zeroext 2, i32 noundef 65543, ptr noundef nonnull %6) #10
  br label %123

123:                                              ; preds = %118, %36
  %124 = load ptr, ptr %0, align 4
  %125 = call zeroext i8 @sdio_f0_readb(ptr noundef %124, i32 noundef 4, ptr noundef nonnull %6) #10
  %126 = or i8 %125, 7
  %127 = load ptr, ptr %0, align 4
  call void @sdio_f0_writeb(ptr noundef %127, i8 noundef zeroext %126, i32 noundef 4, ptr noundef nonnull %6) #10
  %128 = load i32, ptr %17, align 4
  %129 = and i32 %128, 4
  %130 = icmp eq i32 %129, 0
  %131 = select i1 %130, i8 3, i8 7
  %132 = load ptr, ptr %0, align 4
  call void @sdio_f0_writeb(ptr noundef %132, i8 noundef zeroext %131, i32 noundef 242, ptr noundef nonnull %6) #10
  %133 = load ptr, ptr %0, align 4
  call void @sdio_release_host(ptr noundef %133) #10
  br label %143

134:                                              ; preds = %1
  %135 = load ptr, ptr %0, align 4
  tail call void @sdio_claim_host(ptr noundef %135) #10
  %136 = load ptr, ptr %0, align 4
  %137 = tail call i32 @sdio_claim_irq(ptr noundef %136, ptr noundef nonnull @brcmf_sdiod_ib_irqhandler) #10
  %138 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 1
  %139 = load ptr, ptr %138, align 4
  %140 = tail call i32 @sdio_claim_irq(ptr noundef %139, ptr noundef nonnull @brcmf_sdiod_dummy_irqhandler) #10
  %141 = load ptr, ptr %0, align 4
  tail call void @sdio_release_host(ptr noundef %141) #10
  %142 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 9
  store i8 1, ptr %142, align 1
  br label %143

143:                                              ; preds = %134, %123, %35, %32, %26, %23
  %144 = phi i32 [ 0, %134 ], [ 0, %123 ], [ %21, %26 ], [ %21, %23 ], [ %30, %35 ], [ %30, %32 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  ret i32 %144
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_sdiod_oob_irqhandler(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %5, i32 0, i32 10
  %7 = load i8, ptr %6, align 2, !range !8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  tail call void @disable_irq_nosync(i32 noundef %0) #10
  store i8 0, ptr %6, align 2
  br label %10

10:                                               ; preds = %9, %2
  %11 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %5, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  tail call void @brcmf_sdio_isr(ptr noundef %12, i1 noundef zeroext true) #10
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brcmf_err(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_claim_host(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_chip_enum_base(i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_sdiod_readl(ptr nocapture noundef %0, i32 noundef %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  %6 = and i32 %1, -32768
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4
  %7 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %33, label %10

10:                                               ; preds = %3
  %11 = lshr exact i32 %6, 8
  %12 = load ptr, ptr %0, align 4
  %13 = trunc i32 %11 to i8
  call void @sdio_writeb(ptr noundef %12, i8 noundef zeroext %13, i32 noundef 65546, ptr noundef nonnull %4) #10
  %14 = load i32, ptr %4, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %10
  %17 = lshr i32 %1, 16
  %18 = load ptr, ptr %0, align 4
  %19 = trunc i32 %17 to i8
  call void @sdio_writeb(ptr noundef %18, i8 noundef zeroext %19, i32 noundef 65547, ptr noundef nonnull %4) #10
  %20 = load i32, ptr %4, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = lshr i32 %1, 24
  %24 = load ptr, ptr %0, align 4
  %25 = trunc i32 %23 to i8
  call void @sdio_writeb(ptr noundef %24, i8 noundef zeroext %25, i32 noundef 65548, ptr noundef nonnull %4) #10
  %26 = load i32, ptr %4, align 4
  %27 = icmp eq i32 %26, 0
  br label %28

28:                                               ; preds = %22, %16, %10
  %29 = phi i32 [ %14, %10 ], [ %20, %16 ], [ %26, %22 ]
  %30 = phi i1 [ %15, %10 ], [ %21, %16 ], [ %27, %22 ]
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 %6, ptr %7, align 4
  br label %33

32:                                               ; preds = %28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  store i32 %29, ptr %5, align 4
  br label %38

33:                                               ; preds = %31, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %5, align 4
  %34 = and i32 %1, 32767
  %35 = or i32 %34, 32768
  %36 = load ptr, ptr %0, align 4
  %37 = call i32 @sdio_readl(ptr noundef %36, i32 noundef %35, ptr noundef nonnull %5) #10
  br label %38

38:                                               ; preds = %33, %32
  %39 = phi i32 [ 0, %32 ], [ %37, %33 ]
  %40 = icmp eq ptr %2, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = load i32, ptr %5, align 4
  store i32 %42, ptr %2, align 4
  br label %43

43:                                               ; preds = %41, %38
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brcmf_sdiod_writel(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  %7 = and i32 %1, -32768
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4
  %8 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %7, %9
  br i1 %10, label %34, label %11

11:                                               ; preds = %4
  %12 = lshr exact i32 %7, 8
  %13 = load ptr, ptr %0, align 4
  %14 = trunc i32 %12 to i8
  call void @sdio_writeb(ptr noundef %13, i8 noundef zeroext %14, i32 noundef 65546, ptr noundef nonnull %5) #10
  %15 = load i32, ptr %5, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %11
  %18 = lshr i32 %1, 16
  %19 = load ptr, ptr %0, align 4
  %20 = trunc i32 %18 to i8
  call void @sdio_writeb(ptr noundef %19, i8 noundef zeroext %20, i32 noundef 65547, ptr noundef nonnull %5) #10
  %21 = load i32, ptr %5, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = lshr i32 %1, 24
  %25 = load ptr, ptr %0, align 4
  %26 = trunc i32 %24 to i8
  call void @sdio_writeb(ptr noundef %25, i8 noundef zeroext %26, i32 noundef 65548, ptr noundef nonnull %5) #10
  %27 = load i32, ptr %5, align 4
  %28 = icmp eq i32 %27, 0
  br label %29

29:                                               ; preds = %23, %17, %11
  %30 = phi i32 [ %15, %11 ], [ %21, %17 ], [ %27, %23 ]
  %31 = phi i1 [ %16, %11 ], [ %22, %17 ], [ %28, %23 ]
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 %7, ptr %8, align 4
  br label %34

33:                                               ; preds = %29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  store i32 %30, ptr %6, align 4
  br label %38

34:                                               ; preds = %32, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %6, align 4
  %35 = and i32 %1, 32767
  %36 = or i32 %35, 32768
  %37 = load ptr, ptr %0, align 4
  call void @sdio_writel(ptr noundef %37, i32 noundef %2, i32 noundef %36, ptr noundef nonnull %6) #10
  br label %38

38:                                               ; preds = %34, %33
  %39 = icmp eq ptr %3, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %38
  %41 = load i32, ptr %6, align 4
  store i32 %41, ptr %3, align 4
  br label %42

42:                                               ; preds = %40, %38
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_writeb(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @sdio_f0_readb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_f0_writeb(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_release_host(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_claim_irq(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcmf_sdiod_ib_irqhandler(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.sdio_func, ptr %0, i32 0, i32 1, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  tail call void @brcmf_sdio_isr(ptr noundef %6, i1 noundef zeroext false) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @brcmf_sdiod_dummy_irqhandler(ptr nocapture noundef %0) #4 {
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brcmf_sdiod_intr_unregister(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 8
  %3 = load i8, ptr %2, align 4, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %0, align 4
  tail call void @sdio_claim_host(ptr noundef %8) #10
  %9 = load ptr, ptr %0, align 4
  tail call void @sdio_f0_writeb(ptr noundef %9, i8 noundef zeroext 0, i32 noundef 242, ptr noundef null) #10
  %10 = load ptr, ptr %0, align 4
  tail call void @sdio_f0_writeb(ptr noundef %10, i8 noundef zeroext 0, i32 noundef 4, ptr noundef null) #10
  %11 = load ptr, ptr %0, align 4
  tail call void @sdio_release_host(ptr noundef %11) #10
  store i8 0, ptr %2, align 4
  %12 = getelementptr inbounds %struct.brcmf_mp_device, ptr %7, i32 0, i32 8, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr inbounds %struct.sdio_func, ptr %14, i32 0, i32 1
  %16 = tail call ptr @free_irq(i32 noundef %13, ptr noundef %15) #10
  %17 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 10
  store i8 0, ptr %17, align 2
  store i8 0, ptr %2, align 4
  br label %18

18:                                               ; preds = %5, %1
  %19 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 9
  %20 = load i8, ptr %19, align 1, !range !8
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %0, align 4
  tail call void @sdio_claim_host(ptr noundef %23) #10
  %24 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @sdio_release_irq(ptr noundef %25) #10
  %27 = load ptr, ptr %0, align 4
  %28 = tail call i32 @sdio_release_irq(ptr noundef %27) #10
  %29 = load ptr, ptr %0, align 4
  tail call void @sdio_release_host(ptr noundef %29) #10
  store i8 0, ptr %19, align 1
  br label %30

30:                                               ; preds = %22, %18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_release_irq(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brcmf_sdiod_change_state(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 21
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 2
  %6 = icmp eq i32 %4, %1
  %7 = or i1 %5, %6
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  switch i32 %4, label %15 [
    i32 1, label %11
    i32 0, label %9
  ]

9:                                                ; preds = %8
  %10 = icmp eq i32 %1, 1
  br i1 %10, label %11, label %15

11:                                               ; preds = %9, %8
  %12 = phi i32 [ 0, %8 ], [ 1, %9 ]
  %13 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  tail call void @brcmf_bus_change_state(ptr noundef %14, i32 noundef %12) #10
  br label %15

15:                                               ; preds = %11, %9, %8
  store i32 %1, ptr %3, align 4
  br label %16

16:                                               ; preds = %15, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_bus_change_state(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_readl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_writel(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_sdiod_recv_buf(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = tail call ptr @brcmu_pkt_buf_get_skb(i32 noundef %2) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = tail call i32 @net_ratelimit() #10
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %55, label %10

10:                                               ; preds = %7
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdiod_recv_buf, ptr noundef nonnull @.str.3, i32 noundef %2) #10
  br label %55

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.brcmf_core, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, -32768
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4
  %17 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %43, label %20

20:                                               ; preds = %11
  %21 = lshr exact i32 %16, 8
  %22 = load ptr, ptr %0, align 4
  %23 = trunc i32 %21 to i8
  call void @sdio_writeb(ptr noundef %22, i8 noundef zeroext %23, i32 noundef 65546, ptr noundef nonnull %4) #10
  %24 = load i32, ptr %4, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %20
  %27 = lshr i32 %15, 16
  %28 = load ptr, ptr %0, align 4
  %29 = trunc i32 %27 to i8
  call void @sdio_writeb(ptr noundef %28, i8 noundef zeroext %29, i32 noundef 65547, ptr noundef nonnull %4) #10
  %30 = load i32, ptr %4, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = lshr i32 %15, 24
  %34 = load ptr, ptr %0, align 4
  %35 = trunc i32 %33 to i8
  call void @sdio_writeb(ptr noundef %34, i8 noundef zeroext %35, i32 noundef 65548, ptr noundef nonnull %4) #10
  %36 = load i32, ptr %4, align 4
  %37 = icmp eq i32 %36, 0
  br label %38

38:                                               ; preds = %32, %26, %20
  %39 = phi i32 [ %24, %20 ], [ %30, %26 ], [ %36, %32 ]
  %40 = phi i1 [ %25, %20 ], [ %31, %26 ], [ %37, %32 ]
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 %16, ptr %17, align 4
  br label %43

42:                                               ; preds = %38
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  br label %53

43:                                               ; preds = %41, %11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  %44 = and i32 %15, 32767
  %45 = or i32 %44, 32768
  %46 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = call fastcc i32 @brcmf_sdiod_skbuff_read(ptr noundef %0, ptr noundef %47, i32 noundef %45, ptr noundef nonnull %5) #10
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 17
  %52 = load ptr, ptr %51, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1, ptr align 1 %52, i32 %2, i1 false)
  br label %53

53:                                               ; preds = %50, %43, %42
  %54 = phi i32 [ %39, %42 ], [ 0, %50 ], [ %48, %43 ]
  call void @brcmu_pkt_buf_free_skb(ptr noundef nonnull %5) #10
  br label %55

55:                                               ; preds = %53, %10, %7
  %56 = phi i32 [ %54, %53 ], [ -5, %10 ], [ -5, %7 ]
  ret i32 %56
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmu_pkt_buf_get_skb(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_sdiod_recv_pkt(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.brcmf_core, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, -32768
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 0, ptr %3, align 4
  %9 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %35, label %12

12:                                               ; preds = %2
  %13 = lshr exact i32 %8, 8
  %14 = load ptr, ptr %0, align 4
  %15 = trunc i32 %13 to i8
  call void @sdio_writeb(ptr noundef %14, i8 noundef zeroext %15, i32 noundef 65546, ptr noundef nonnull %3) #10
  %16 = load i32, ptr %3, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %12
  %19 = lshr i32 %7, 16
  %20 = load ptr, ptr %0, align 4
  %21 = trunc i32 %19 to i8
  call void @sdio_writeb(ptr noundef %20, i8 noundef zeroext %21, i32 noundef 65547, ptr noundef nonnull %3) #10
  %22 = load i32, ptr %3, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = lshr i32 %7, 24
  %26 = load ptr, ptr %0, align 4
  %27 = trunc i32 %25 to i8
  call void @sdio_writeb(ptr noundef %26, i8 noundef zeroext %27, i32 noundef 65548, ptr noundef nonnull %3) #10
  %28 = load i32, ptr %3, align 4
  %29 = icmp eq i32 %28, 0
  br label %30

30:                                               ; preds = %24, %18, %12
  %31 = phi i32 [ %16, %12 ], [ %22, %18 ], [ %28, %24 ]
  %32 = phi i1 [ %17, %12 ], [ %23, %18 ], [ %29, %24 ]
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 %8, ptr %9, align 4
  br label %35

34:                                               ; preds = %30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  br label %41

35:                                               ; preds = %33, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  %36 = and i32 %7, 32767
  %37 = or i32 %36, 32768
  %38 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = call fastcc i32 @brcmf_sdiod_skbuff_read(ptr noundef %0, ptr noundef %39, i32 noundef %37, ptr noundef %1)
  br label %41

41:                                               ; preds = %35, %34
  %42 = phi i32 [ %31, %34 ], [ %40, %35 ]
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmu_pkt_buf_free_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @brcmf_sdiod_skbuff_read(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 5
  %6 = load i32, ptr %5, align 8
  %7 = add i32 %6, 3
  %8 = and i32 %7, -4
  %9 = getelementptr inbounds %struct.sdio_func, ptr %1, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  switch i32 %10, label %19 [
    i32 1, label %11
    i32 2, label %15
  ]

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 17
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @sdio_memcpy_fromio(ptr noundef %1, ptr noundef %13, i32 noundef %2, i32 noundef %8) #10
  br label %20

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 17
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @sdio_readsb(ptr noundef %1, ptr noundef %17, i32 noundef %2, i32 noundef %8) #10
  br label %20

19:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 305, i32 noundef 9, ptr noundef nonnull @.str.11, i32 noundef %10) #10
  br label %23

20:                                               ; preds = %15, %11
  %21 = phi i32 [ %18, %15 ], [ %14, %11 ]
  %22 = icmp eq i32 %21, -123
  br i1 %22, label %23, label %30

23:                                               ; preds = %20, %19
  %24 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 21
  %25 = load i32, ptr %24, align 4
  switch i32 %25, label %29 [
    i32 2, label %30
    i32 1, label %26
  ]

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 6
  %28 = load ptr, ptr %27, align 4
  tail call void @brcmf_bus_change_state(ptr noundef %28, i32 noundef 0) #10
  br label %29

29:                                               ; preds = %26, %23
  store i32 2, ptr %24, align 4
  br label %30

30:                                               ; preds = %29, %23, %20
  %31 = phi i32 [ %21, %20 ], [ -123, %23 ], [ -123, %29 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_sdiod_recv_chain(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.brcmf_core, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, -32768
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4
  %10 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %36, label %13

13:                                               ; preds = %3
  %14 = lshr exact i32 %9, 8
  %15 = load ptr, ptr %0, align 4
  %16 = trunc i32 %14 to i8
  call void @sdio_writeb(ptr noundef %15, i8 noundef zeroext %16, i32 noundef 65546, ptr noundef nonnull %4) #10
  %17 = load i32, ptr %4, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %13
  %20 = lshr i32 %8, 16
  %21 = load ptr, ptr %0, align 4
  %22 = trunc i32 %20 to i8
  call void @sdio_writeb(ptr noundef %21, i8 noundef zeroext %22, i32 noundef 65547, ptr noundef nonnull %4) #10
  %23 = load i32, ptr %4, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = lshr i32 %8, 24
  %27 = load ptr, ptr %0, align 4
  %28 = trunc i32 %26 to i8
  call void @sdio_writeb(ptr noundef %27, i8 noundef zeroext %28, i32 noundef 65548, ptr noundef nonnull %4) #10
  %29 = load i32, ptr %4, align 4
  %30 = icmp eq i32 %29, 0
  br label %31

31:                                               ; preds = %25, %19, %13
  %32 = phi i32 [ %17, %13 ], [ %23, %19 ], [ %29, %25 ]
  %33 = phi i1 [ %18, %13 ], [ %24, %19 ], [ %30, %25 ]
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 %9, ptr %10, align 4
  br label %36

35:                                               ; preds = %31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  br label %79

36:                                               ; preds = %34, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  %37 = and i32 %8, 32767
  %38 = or i32 %37, 32768
  %39 = getelementptr inbounds %struct.sk_buff_head, ptr %1, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = load ptr, ptr %1, align 4
  %46 = call fastcc i32 @brcmf_sdiod_skbuff_read(ptr noundef %0, ptr noundef %44, i32 noundef %38, ptr noundef %45)
  br label %79

47:                                               ; preds = %36
  %48 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 12
  %49 = load i8, ptr %48, align 4, !range !8
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %75

51:                                               ; preds = %47
  %52 = call ptr @brcmu_pkt_buf_get_skb(i32 noundef %2) #10
  %53 = icmp eq ptr %52, null
  br i1 %53, label %82, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = call fastcc i32 @brcmf_sdiod_skbuff_read(ptr noundef %0, ptr noundef %56, i32 noundef %38, ptr noundef nonnull %52)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %79

59:                                               ; preds = %54
  %60 = load ptr, ptr %1, align 4
  %61 = icmp eq ptr %60, %1
  br i1 %61, label %79, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.sk_buff, ptr %52, i32 0, i32 17
  br label %64

64:                                               ; preds = %64, %62
  %65 = phi ptr [ %60, %62 ], [ %73, %64 ]
  %66 = getelementptr inbounds %struct.sk_buff, ptr %65, i32 0, i32 17
  %67 = load ptr, ptr %66, align 4
  %68 = load ptr, ptr %63, align 4
  %69 = getelementptr inbounds %struct.sk_buff, ptr %65, i32 0, i32 5
  %70 = load i32, ptr %69, align 8
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %67, ptr align 1 %68, i32 %70, i1 false)
  %71 = load i32, ptr %69, align 8
  %72 = call ptr @skb_pull(ptr noundef nonnull %52, i32 noundef %71) #10
  %73 = load ptr, ptr %65, align 4
  %74 = icmp eq ptr %73, %1
  br i1 %74, label %79, label %64

75:                                               ; preds = %47
  %76 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = call fastcc i32 @brcmf_sdiod_sglist_rw(ptr noundef %0, ptr noundef %77, i1 noundef zeroext false, i32 noundef %38, ptr noundef %1)
  br label %79

79:                                               ; preds = %75, %64, %59, %54, %42, %35
  %80 = phi ptr [ null, %35 ], [ null, %42 ], [ null, %75 ], [ %52, %54 ], [ %52, %59 ], [ %52, %64 ]
  %81 = phi i32 [ %32, %35 ], [ %46, %42 ], [ %78, %75 ], [ %57, %54 ], [ 0, %59 ], [ 0, %64 ]
  call void @brcmu_pkt_buf_free_skb(ptr noundef %80) #10
  br label %82

82:                                               ; preds = %79, %51
  %83 = phi i32 [ %81, %79 ], [ -12, %51 ]
  ret i32 %83
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @brcmf_sdiod_sglist_rw(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2, i32 noundef %3, ptr noundef readonly %4) unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff_head, align 4
  %8 = alloca %struct.mmc_request, align 4
  %9 = alloca %struct.mmc_command, align 4
  %10 = alloca %struct.mmc_data, align 4
  store i32 %3, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #10
  %11 = getelementptr inbounds i8, ptr %7, i32 12
  store i32 0, ptr %11, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %8) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %8, i8 0, i32 68, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %9) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %9, i8 0, i32 48, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %10, i8 0, i32 56, i1 false), !annotation !9
  %12 = getelementptr inbounds %struct.sk_buff_head, ptr %4, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %244, label %15

15:                                               ; preds = %5
  store ptr %7, ptr %7, align 4
  %16 = getelementptr inbounds %struct.anon.121, ptr %7, i32 0, i32 1
  store ptr %7, ptr %16, align 4
  %17 = getelementptr inbounds %struct.sk_buff_head, ptr %7, i32 0, i32 1
  store i32 0, ptr %17, align 4
  br i1 %2, label %65, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 7
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.brcmf_mp_device, ptr %20, i32 0, i32 8, i32 0, i32 5
  %22 = load i8, ptr %21, align 4, !range !8
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %65, label %24

24:                                               ; preds = %18
  %25 = load ptr, ptr %4, align 4
  %26 = icmp eq ptr %25, %4
  br i1 %26, label %37, label %27

27:                                               ; preds = %27, %24
  %28 = phi ptr [ %33, %27 ], [ %25, %24 ]
  %29 = phi i32 [ %32, %27 ], [ 0, %24 ]
  %30 = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 5
  %31 = load i32, ptr %30, align 8
  %32 = add i32 %31, %29
  %33 = load ptr, ptr %28, align 4
  %34 = icmp eq ptr %33, %4
  br i1 %34, label %35, label %27

35:                                               ; preds = %27
  %36 = add i32 %32, -1
  br label %37

37:                                               ; preds = %35, %24
  %38 = phi i32 [ -1, %24 ], [ %36, %35 ]
  %39 = getelementptr inbounds %struct.sdio_func, ptr %1, i32 0, i32 8
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %38, %40
  %42 = sub i32 0, %40
  %43 = and i32 %41, %42
  %44 = icmp ugt i32 %43, 4096
  br i1 %44, label %45, label %56

45:                                               ; preds = %49, %37
  %46 = phi i32 [ %54, %49 ], [ %43, %37 ]
  %47 = call ptr @brcmu_pkt_buf_get_skb(i32 noundef 4096) #10
  %48 = icmp eq ptr %47, null
  br i1 %48, label %222, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr %16, align 4
  store volatile ptr %7, ptr %47, align 8
  %51 = getelementptr inbounds %struct.anon.41, ptr %47, i32 0, i32 1
  store volatile ptr %50, ptr %51, align 4
  store volatile ptr %47, ptr %16, align 4
  store volatile ptr %47, ptr %50, align 4
  %52 = load i32, ptr %17, align 4
  %53 = add i32 %52, 1
  store volatile i32 %53, ptr %17, align 4
  %54 = add i32 %46, -4096
  %55 = icmp ugt i32 %54, 4096
  br i1 %55, label %45, label %56

56:                                               ; preds = %49, %37
  %57 = phi i32 [ %43, %37 ], [ %54, %49 ]
  %58 = call ptr @brcmu_pkt_buf_get_skb(i32 noundef %57) #10
  %59 = icmp eq ptr %58, null
  br i1 %59, label %222, label %60

60:                                               ; preds = %56
  %61 = load ptr, ptr %16, align 4
  store volatile ptr %7, ptr %58, align 8
  %62 = getelementptr inbounds %struct.anon.41, ptr %58, i32 0, i32 1
  store volatile ptr %61, ptr %62, align 4
  store volatile ptr %58, ptr %16, align 4
  store volatile ptr %58, ptr %61, align 4
  %63 = load i32, ptr %17, align 4
  %64 = add i32 %63, 1
  store volatile i32 %64, ptr %17, align 4
  br label %65

65:                                               ; preds = %60, %18, %15
  %66 = phi i32 [ %64, %60 ], [ %13, %18 ], [ %13, %15 ]
  %67 = phi i32 [ 0, %60 ], [ 0, %18 ], [ -2147483648, %15 ]
  %68 = phi i32 [ 512, %60 ], [ 512, %18 ], [ 256, %15 ]
  %69 = phi ptr [ %7, %60 ], [ %4, %18 ], [ %4, %15 ]
  %70 = getelementptr inbounds %struct.sdio_func, ptr %1, i32 0, i32 8
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 13
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 14
  %75 = load i16, ptr %74, align 4
  %76 = zext i16 %75 to i32
  %77 = and i32 %66, 65535
  %78 = call i32 @llvm.umin.i32(i32 %77, i32 %76)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %8, i8 0, i32 68, i1 false)
  %79 = getelementptr inbounds i8, ptr %9, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %79, i8 0, i32 40, i1 false)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %10, i8 0, i32 56, i1 false)
  %80 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 17
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.mmc_data, ptr %10, i32 0, i32 12
  store ptr %81, ptr %82, align 4
  %83 = getelementptr inbounds %struct.mmc_data, ptr %10, i32 0, i32 2
  store i32 %71, ptr %83, align 4
  %84 = getelementptr inbounds %struct.mmc_data, ptr %10, i32 0, i32 6
  store i32 %68, ptr %84, align 4
  store i32 53, ptr %9, align 4
  %85 = getelementptr inbounds %struct.mmc_command, ptr %9, i32 0, i32 1
  %86 = getelementptr inbounds %struct.sdio_func, ptr %1, i32 0, i32 3
  %87 = load i32, ptr %86, align 4
  %88 = shl i32 %87, 28
  %89 = and i32 %88, 1879048192
  %90 = icmp eq i32 %87, 1
  %91 = select i1 %90, i32 67108864, i32 0
  %92 = or i32 %67, %89
  %93 = or i32 %92, %91
  %94 = or i32 %93, 134217728
  store i32 %94, ptr %85, align 4
  %95 = getelementptr inbounds %struct.mmc_command, ptr %9, i32 0, i32 3
  store i32 437, ptr %95, align 4
  %96 = getelementptr inbounds %struct.mmc_request, ptr %8, i32 0, i32 1
  store ptr %9, ptr %96, align 4
  %97 = getelementptr inbounds %struct.mmc_request, ptr %8, i32 0, i32 2
  store ptr %10, ptr %97, align 4
  %98 = load ptr, ptr %69, align 4
  %99 = icmp eq ptr %98, %69
  br i1 %99, label %171, label %100

100:                                              ; preds = %65
  %101 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 15
  %102 = zext i1 %2 to i32
  br label %109

103:                                              ; preds = %160, %109
  %104 = phi i32 [ %113, %109 ], [ %161, %160 ]
  %105 = phi ptr [ %112, %109 ], [ %162, %160 ]
  %106 = phi i32 [ %111, %109 ], [ %163, %160 ]
  %107 = load ptr, ptr %110, align 4
  %108 = icmp eq ptr %107, %69
  br i1 %108, label %166, label %109

109:                                              ; preds = %103, %100
  %110 = phi ptr [ %98, %100 ], [ %107, %103 ]
  %111 = phi i32 [ 0, %100 ], [ %106, %103 ]
  %112 = phi ptr [ %81, %100 ], [ %105, %103 ]
  %113 = phi i32 [ 0, %100 ], [ %104, %103 ]
  %114 = getelementptr inbounds %struct.sk_buff, ptr %110, i32 0, i32 5
  %115 = load i32, ptr %114, align 8
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %103, label %117

117:                                              ; preds = %109
  %118 = getelementptr inbounds %struct.sk_buff, ptr %110, i32 0, i32 17
  br label %119

119:                                              ; preds = %160, %117
  %120 = phi i32 [ %115, %117 ], [ %164, %160 ]
  %121 = phi i32 [ %111, %117 ], [ %163, %160 ]
  %122 = phi ptr [ %112, %117 ], [ %162, %160 ]
  %123 = phi i32 [ 0, %117 ], [ %151, %160 ]
  %124 = phi i32 [ %113, %117 ], [ %161, %160 ]
  %125 = load ptr, ptr %118, align 4
  %126 = getelementptr i8, ptr %125, i32 %123
  %127 = load ptr, ptr @mem_map, align 4
  %128 = ptrtoint ptr %126 to i32
  %129 = add i32 %128, 1073741824
  %130 = lshr i32 %129, 12
  %131 = getelementptr %struct.page, ptr %127, i32 %130
  %132 = ptrtoint ptr %131 to i32
  %133 = and i32 %132, 3
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %136, label %135, !prof !10

135:                                              ; preds = %119
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !11
  unreachable

136:                                              ; preds = %119
  %137 = sub i32 %73, %121
  %138 = sub i32 %120, %123
  %139 = load i32, ptr %101, align 4
  %140 = call i32 @llvm.umin.i32(i32 %138, i32 %139)
  %141 = call i32 @llvm.umin.i32(i32 %140, i32 %137)
  %142 = and i32 %128, 4095
  %143 = load i32, ptr %122, align 4
  %144 = and i32 %143, 3
  %145 = or i32 %144, %132
  store i32 %145, ptr %122, align 4
  %146 = getelementptr inbounds %struct.scatterlist, ptr %122, i32 0, i32 1
  store i32 %142, ptr %146, align 4
  %147 = getelementptr inbounds %struct.scatterlist, ptr %122, i32 0, i32 2
  store i32 %141, ptr %147, align 4
  %148 = add i32 %124, 1
  %149 = call ptr @sg_next(ptr noundef %122) #10
  %150 = add i32 %141, %121
  %151 = add i32 %141, %123
  %152 = icmp ult i32 %150, %73
  %153 = icmp ult i32 %148, %78
  %154 = select i1 %152, i1 %153, i1 false
  br i1 %154, label %160, label %155

155:                                              ; preds = %136
  %156 = call fastcc i32 @mmc_submit_one(ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef %148, i32 noundef %150, i32 noundef %71, ptr noundef nonnull %6, ptr noundef %0, ptr noundef %1, i32 noundef %102)
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %171

158:                                              ; preds = %155
  %159 = load ptr, ptr %80, align 4
  br label %160

160:                                              ; preds = %158, %136
  %161 = phi i32 [ 0, %158 ], [ %148, %136 ]
  %162 = phi ptr [ %159, %158 ], [ %149, %136 ]
  %163 = phi i32 [ 0, %158 ], [ %150, %136 ]
  %164 = load i32, ptr %114, align 8
  %165 = icmp ugt i32 %164, %151
  br i1 %165, label %119, label %103

166:                                              ; preds = %103
  %167 = icmp eq i32 %104, 0
  br i1 %167, label %171, label %168

168:                                              ; preds = %166
  %169 = zext i1 %2 to i32
  %170 = call fastcc i32 @mmc_submit_one(ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef %104, i32 noundef %106, i32 noundef %71, ptr noundef nonnull %6, ptr noundef %0, ptr noundef %1, i32 noundef %169)
  br label %171

171:                                              ; preds = %168, %166, %155, %65
  %172 = phi i32 [ %170, %168 ], [ 0, %166 ], [ 0, %65 ], [ %156, %155 ]
  br i1 %2, label %222, label %173

173:                                              ; preds = %171
  %174 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 7
  %175 = load ptr, ptr %174, align 4
  %176 = getelementptr inbounds %struct.brcmf_mp_device, ptr %175, i32 0, i32 8, i32 0, i32 5
  %177 = load i8, ptr %176, align 4, !range !8
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %222, label %179

179:                                              ; preds = %173
  %180 = load ptr, ptr %4, align 4
  %181 = icmp eq ptr %180, %4
  br i1 %181, label %222, label %182

182:                                              ; preds = %179
  %183 = load ptr, ptr %7, align 4
  br label %187

184:                                              ; preds = %216
  %185 = load ptr, ptr %188, align 4
  %186 = icmp eq ptr %185, %4
  br i1 %186, label %222, label %187

187:                                              ; preds = %184, %182
  %188 = phi ptr [ %185, %184 ], [ %180, %182 ]
  %189 = phi ptr [ %218, %184 ], [ %183, %182 ]
  %190 = phi i32 [ %217, %184 ], [ 0, %182 ]
  %191 = getelementptr inbounds %struct.sk_buff, ptr %188, i32 0, i32 5
  %192 = getelementptr inbounds %struct.sk_buff, ptr %188, i32 0, i32 17
  %193 = load i32, ptr %191, align 8
  br label %194

194:                                              ; preds = %216, %187
  %195 = phi i32 [ %220, %216 ], [ %193, %187 ]
  %196 = phi i32 [ %217, %216 ], [ %190, %187 ]
  %197 = phi i32 [ %219, %216 ], [ 0, %187 ]
  %198 = phi ptr [ %218, %216 ], [ %189, %187 ]
  %199 = sub i32 %195, %197
  %200 = getelementptr inbounds %struct.sk_buff, ptr %198, i32 0, i32 5
  %201 = load i32, ptr %200, align 8
  %202 = sub i32 %201, %196
  %203 = call i32 @llvm.umin.i32(i32 %199, i32 %202)
  %204 = getelementptr inbounds %struct.sk_buff, ptr %198, i32 0, i32 17
  %205 = load ptr, ptr %204, align 4
  %206 = getelementptr i8, ptr %205, i32 %196
  %207 = load ptr, ptr %192, align 4
  %208 = getelementptr i8, ptr %207, i32 %197
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %208, ptr align 1 %206, i32 %203, i1 false)
  %209 = add i32 %203, %196
  %210 = load i32, ptr %200, align 8
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %212, label %216

212:                                              ; preds = %194
  %213 = load ptr, ptr %198, align 8
  %214 = icmp eq ptr %213, %7
  %215 = select i1 %214, ptr null, ptr %213
  br label %216

216:                                              ; preds = %212, %194
  %217 = phi i32 [ 0, %212 ], [ %209, %194 ]
  %218 = phi ptr [ %215, %212 ], [ %198, %194 ]
  %219 = add i32 %203, %197
  %220 = load i32, ptr %191, align 8
  %221 = icmp eq i32 %219, %220
  br i1 %221, label %184, label %194

222:                                              ; preds = %184, %179, %173, %171, %56, %45
  %223 = phi i32 [ %172, %171 ], [ %172, %173 ], [ -12, %56 ], [ %172, %179 ], [ %172, %184 ], [ -12, %45 ]
  %224 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 17
  %225 = load ptr, ptr %224, align 4
  %226 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 17, i32 2
  %227 = load i32, ptr %226, align 4
  call void @sg_init_table(ptr noundef %225, i32 noundef %227) #10
  %228 = load ptr, ptr %7, align 4
  %229 = icmp eq ptr %228, %7
  %230 = icmp eq ptr %228, null
  %231 = or i1 %229, %230
  br i1 %231, label %244, label %232

232:                                              ; preds = %232, %222
  %233 = phi ptr [ %240, %232 ], [ %228, %222 ]
  %234 = load i32, ptr %17, align 4
  %235 = add i32 %234, -1
  store volatile i32 %235, ptr %17, align 4
  %236 = load ptr, ptr %233, align 8
  %237 = getelementptr inbounds %struct.anon.41, ptr %233, i32 0, i32 1
  %238 = load ptr, ptr %237, align 4
  store ptr null, ptr %237, align 4
  store ptr null, ptr %233, align 8
  %239 = getelementptr inbounds %struct.anon.41, ptr %236, i32 0, i32 1
  store volatile ptr %238, ptr %239, align 4
  store volatile ptr %236, ptr %238, align 8
  call void @brcmu_pkt_buf_free_skb(ptr noundef nonnull %233) #10
  %240 = load ptr, ptr %7, align 4
  %241 = icmp eq ptr %240, %7
  %242 = icmp eq ptr %240, null
  %243 = or i1 %241, %242
  br i1 %243, label %244, label %232

244:                                              ; preds = %232, %222, %5
  %245 = phi i32 [ -22, %5 ], [ %223, %222 ], [ %223, %232 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #10
  ret i32 %245
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_sdiod_send_buf(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.brcmf_core, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = tail call ptr @brcmu_pkt_buf_get_skb(i32 noundef %2) #10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = tail call i32 @net_ratelimit() #10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %66, label %14

14:                                               ; preds = %11
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdiod_send_buf, ptr noundef nonnull @.str.3, i32 noundef %2) #10
  br label %66

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 17
  %17 = load ptr, ptr %16, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %17, ptr align 1 %1, i32 %2, i1 false)
  %18 = and i32 %8, -32768
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4
  %19 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %45, label %22

22:                                               ; preds = %15
  %23 = lshr exact i32 %18, 8
  %24 = load ptr, ptr %0, align 4
  %25 = trunc i32 %23 to i8
  call void @sdio_writeb(ptr noundef %24, i8 noundef zeroext %25, i32 noundef 65546, ptr noundef nonnull %4) #10
  %26 = load i32, ptr %4, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %22
  %29 = lshr i32 %8, 16
  %30 = load ptr, ptr %0, align 4
  %31 = trunc i32 %29 to i8
  call void @sdio_writeb(ptr noundef %30, i8 noundef zeroext %31, i32 noundef 65547, ptr noundef nonnull %4) #10
  %32 = load i32, ptr %4, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = lshr i32 %8, 24
  %36 = load ptr, ptr %0, align 4
  %37 = trunc i32 %35 to i8
  call void @sdio_writeb(ptr noundef %36, i8 noundef zeroext %37, i32 noundef 65548, ptr noundef nonnull %4) #10
  %38 = load i32, ptr %4, align 4
  %39 = icmp eq i32 %38, 0
  br label %40

40:                                               ; preds = %34, %28, %22
  %41 = phi i32 [ %26, %22 ], [ %32, %28 ], [ %38, %34 ]
  %42 = phi i1 [ %27, %22 ], [ %33, %28 ], [ %39, %34 ]
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 %18, ptr %19, align 4
  br label %45

44:                                               ; preds = %40
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  br label %64

45:                                               ; preds = %43, %15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  %46 = and i32 %8, 32767
  %47 = or i32 %46, 32768
  %48 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 5
  %51 = load i32, ptr %50, align 8
  %52 = add i32 %51, 3
  %53 = and i32 %52, -4
  %54 = load ptr, ptr %16, align 4
  %55 = call i32 @sdio_memcpy_toio(ptr noundef %49, i32 noundef %47, ptr noundef %54, i32 noundef %53) #10
  %56 = icmp eq i32 %55, -123
  br i1 %56, label %57, label %64

57:                                               ; preds = %45
  %58 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 21
  %59 = load i32, ptr %58, align 4
  switch i32 %59, label %63 [
    i32 2, label %64
    i32 1, label %60
  ]

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 6
  %62 = load ptr, ptr %61, align 4
  call void @brcmf_bus_change_state(ptr noundef %62, i32 noundef 0) #10
  br label %63

63:                                               ; preds = %60, %57
  store i32 2, ptr %58, align 4
  br label %64

64:                                               ; preds = %63, %57, %45, %44
  %65 = phi i32 [ %41, %44 ], [ %55, %45 ], [ -123, %57 ], [ -123, %63 ]
  call void @brcmu_pkt_buf_free_skb(ptr noundef nonnull %9) #10
  br label %66

66:                                               ; preds = %64, %14, %11
  %67 = phi i32 [ %65, %64 ], [ -5, %14 ], [ -5, %11 ]
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_sdiod_send_pkt(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.brcmf_core, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, -32768
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 0, ptr %3, align 4
  %9 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %35, label %12

12:                                               ; preds = %2
  %13 = lshr exact i32 %8, 8
  %14 = load ptr, ptr %0, align 4
  %15 = trunc i32 %13 to i8
  call void @sdio_writeb(ptr noundef %14, i8 noundef zeroext %15, i32 noundef 65546, ptr noundef nonnull %3) #10
  %16 = load i32, ptr %3, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %12
  %19 = lshr i32 %7, 16
  %20 = load ptr, ptr %0, align 4
  %21 = trunc i32 %19 to i8
  call void @sdio_writeb(ptr noundef %20, i8 noundef zeroext %21, i32 noundef 65547, ptr noundef nonnull %3) #10
  %22 = load i32, ptr %3, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = lshr i32 %7, 24
  %26 = load ptr, ptr %0, align 4
  %27 = trunc i32 %25 to i8
  call void @sdio_writeb(ptr noundef %26, i8 noundef zeroext %27, i32 noundef 65548, ptr noundef nonnull %3) #10
  %28 = load i32, ptr %3, align 4
  %29 = icmp eq i32 %28, 0
  br label %30

30:                                               ; preds = %24, %18, %12
  %31 = phi i32 [ %16, %12 ], [ %22, %18 ], [ %28, %24 ]
  %32 = phi i1 [ %17, %12 ], [ %23, %18 ], [ %29, %24 ]
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 %8, ptr %9, align 4
  br label %35

34:                                               ; preds = %30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  br label %71

35:                                               ; preds = %33, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  %36 = and i32 %7, 32767
  %37 = or i32 %36, 32768
  %38 = getelementptr inbounds %struct.sk_buff_head, ptr %1, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %45, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 12
  %43 = load i8, ptr %42, align 4, !range !8
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %67

45:                                               ; preds = %41, %35
  %46 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 1
  br label %47

47:                                               ; preds = %51, %45
  %48 = phi ptr [ %1, %45 ], [ %49, %51 ]
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, %1
  br i1 %50, label %71, label %51

51:                                               ; preds = %47
  %52 = load ptr, ptr %46, align 4
  %53 = getelementptr inbounds %struct.sk_buff, ptr %49, i32 0, i32 5
  %54 = load i32, ptr %53, align 8
  %55 = add i32 %54, 3
  %56 = and i32 %55, -4
  %57 = getelementptr inbounds %struct.sk_buff, ptr %49, i32 0, i32 17
  %58 = load ptr, ptr %57, align 4
  %59 = call i32 @sdio_memcpy_toio(ptr noundef %52, i32 noundef %37, ptr noundef %58, i32 noundef %56) #10
  switch i32 %59, label %71 [
    i32 -123, label %60
    i32 0, label %47
  ]

60:                                               ; preds = %51
  %61 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 21
  %62 = load i32, ptr %61, align 4
  switch i32 %62, label %66 [
    i32 2, label %71
    i32 1, label %63
  ]

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 6
  %65 = load ptr, ptr %64, align 4
  call void @brcmf_bus_change_state(ptr noundef %65, i32 noundef 0) #10
  br label %66

66:                                               ; preds = %63, %60
  store i32 2, ptr %61, align 4
  br label %71

67:                                               ; preds = %41
  %68 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = call fastcc i32 @brcmf_sdiod_sglist_rw(ptr noundef %0, ptr noundef %69, i1 noundef zeroext true, i32 noundef %37, ptr noundef %1)
  br label %71

71:                                               ; preds = %67, %66, %60, %51, %47, %34
  %72 = phi i32 [ %31, %34 ], [ %70, %67 ], [ -123, %60 ], [ -123, %66 ], [ %59, %51 ], [ 0, %47 ]
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_sdiod_ramrw(ptr nocapture noundef %0, i1 noundef zeroext %1, i32 noundef %2, ptr nocapture noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = tail call i32 @llvm.umin.i32(i32 %4, i32 32768)
  %8 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %7, i32 noundef 2592) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = tail call i32 @net_ratelimit() #10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %98, label %13

13:                                               ; preds = %10
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdiod_ramrw, ptr noundef nonnull @.str.4, i32 noundef %7) #10
  br label %98

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 13, i32 0, i32 5
  store i32 0, ptr %15, align 8
  %16 = load ptr, ptr %0, align 4
  tail call void @sdio_claim_host(ptr noundef %16) #10
  %17 = icmp eq i32 %4, 0
  br i1 %17, label %95, label %18

18:                                               ; preds = %14
  %19 = and i32 %2, 32767
  %20 = add i32 %19, %4
  %21 = icmp ult i32 %20, 32768
  %22 = sub nuw nsw i32 32768, %19
  %23 = select i1 %21, i32 %4, i32 %22
  %24 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 2
  %25 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 17
  %26 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 5
  %27 = or i32 %19, 32768
  br label %28

28:                                               ; preds = %91, %18
  %29 = phi i32 [ %2, %18 ], [ %93, %91 ]
  %30 = phi ptr [ %3, %18 ], [ %92, %91 ]
  %31 = phi i32 [ %4, %18 ], [ %89, %91 ]
  %32 = phi i32 [ %27, %18 ], [ 32768, %91 ]
  %33 = phi i32 [ %23, %18 ], [ %94, %91 ]
  %34 = and i32 %29, -32768
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 0, ptr %6, align 4
  %35 = load i32, ptr %24, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %60, label %37

37:                                               ; preds = %28
  %38 = lshr exact i32 %34, 8
  %39 = load ptr, ptr %0, align 4
  %40 = trunc i32 %38 to i8
  call void @sdio_writeb(ptr noundef %39, i8 noundef zeroext %40, i32 noundef 65546, ptr noundef nonnull %6) #10
  %41 = load i32, ptr %6, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %37
  %44 = lshr i32 %29, 16
  %45 = load ptr, ptr %0, align 4
  %46 = trunc i32 %44 to i8
  call void @sdio_writeb(ptr noundef %45, i8 noundef zeroext %46, i32 noundef 65547, ptr noundef nonnull %6) #10
  %47 = load i32, ptr %6, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = lshr i32 %29, 24
  %51 = load ptr, ptr %0, align 4
  %52 = trunc i32 %50 to i8
  call void @sdio_writeb(ptr noundef %51, i8 noundef zeroext %52, i32 noundef 65548, ptr noundef nonnull %6) #10
  %53 = load i32, ptr %6, align 4
  %54 = icmp eq i32 %53, 0
  br label %55

55:                                               ; preds = %49, %43, %37
  %56 = phi i32 [ %41, %37 ], [ %47, %43 ], [ %53, %49 ]
  %57 = phi i1 [ %42, %37 ], [ %48, %43 ], [ %54, %49 ]
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 %34, ptr %24, align 4
  br label %60

59:                                               ; preds = %55
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  br label %95

60:                                               ; preds = %58, %28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  %61 = call ptr @skb_put(ptr noundef nonnull %8, i32 noundef %33) #10
  br i1 %1, label %62, label %77

62:                                               ; preds = %60
  %63 = load ptr, ptr %25, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %63, ptr align 1 %30, i32 %33, i1 false)
  %64 = load ptr, ptr %0, align 4
  %65 = load i32, ptr %26, align 8
  %66 = add i32 %65, 3
  %67 = and i32 %66, -4
  %68 = load ptr, ptr %25, align 4
  %69 = call i32 @sdio_memcpy_toio(ptr noundef %64, i32 noundef %32, ptr noundef %68, i32 noundef %67) #10
  switch i32 %69, label %81 [
    i32 -123, label %70
    i32 0, label %88
  ]

70:                                               ; preds = %62
  %71 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 21
  %72 = load i32, ptr %71, align 4
  switch i32 %72, label %76 [
    i32 2, label %81
    i32 1, label %73
  ]

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 6
  %75 = load ptr, ptr %74, align 4
  call void @brcmf_bus_change_state(ptr noundef %75, i32 noundef 0) #10
  br label %76

76:                                               ; preds = %73, %70
  store i32 2, ptr %71, align 4
  br label %81

77:                                               ; preds = %60
  %78 = load ptr, ptr %0, align 4
  %79 = call fastcc i32 @brcmf_sdiod_skbuff_read(ptr noundef %0, ptr noundef %78, i32 noundef %32, ptr noundef nonnull %8)
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %77, %76, %70, %62
  %82 = phi i32 [ -123, %70 ], [ -123, %76 ], [ %69, %62 ], [ %79, %77 ]
  %83 = call i32 @net_ratelimit() #10
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %95, label %85

85:                                               ; preds = %81
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdiod_ramrw, ptr noundef nonnull @.str.5) #10
  br label %95

86:                                               ; preds = %77
  %87 = load ptr, ptr %25, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %30, ptr align 1 %87, i32 %33, i1 false)
  br label %88

88:                                               ; preds = %86, %62
  call void @skb_trim(ptr noundef nonnull %8, i32 noundef 0) #10
  %89 = sub i32 %31, %33
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %88
  %92 = getelementptr i8, ptr %30, i32 %33
  %93 = add i32 %29, %33
  %94 = call i32 @llvm.umin.i32(i32 %89, i32 32768)
  br label %28

95:                                               ; preds = %88, %85, %81, %59, %14
  %96 = phi i32 [ %56, %59 ], [ %82, %85 ], [ %82, %81 ], [ 0, %14 ], [ 0, %88 ]
  call void @consume_skb(ptr noundef nonnull %8) #10
  %97 = load ptr, ptr %0, align 4
  call void @sdio_release_host(ptr noundef %97) #10
  br label %98

98:                                               ; preds = %95, %13, %10
  %99 = phi i32 [ %96, %95 ], [ -5, %13 ], [ -5, %10 ]
  ret i32 %99
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_sdiod_abort(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.sdio_func, ptr %1, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = trunc i32 %5 to i8
  tail call void @sdio_f0_writeb(ptr noundef %3, i8 noundef zeroext %6, i32 noundef 6, ptr noundef null) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brcmf_sdiod_sgtable_alloc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 21
  %7 = load i16, ptr %6, align 4
  %8 = icmp ugt i16 %7, 1
  %9 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 12
  %10 = zext i1 %8 to i8
  store i8 %10, ptr %9, align 4
  %11 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 25
  %12 = load i32, ptr %11, align 8
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 511)
  %14 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 23
  %15 = load i32, ptr %14, align 16
  %16 = getelementptr inbounds %struct.sdio_func, ptr %3, i32 0, i32 8
  %17 = load i32, ptr %16, align 4
  %18 = mul i32 %17, %13
  %19 = tail call i32 @llvm.umin.i32(i32 %15, i32 %18)
  %20 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 13
  store i32 %19, ptr %20, align 4
  %21 = load i16, ptr %6, align 4
  %22 = tail call i16 @llvm.umin.i16(i16 %21, i16 204)
  %23 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 14
  store i16 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 20
  %25 = load i32, ptr %24, align 8
  %26 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  br i1 %8, label %27, label %53

27:                                               ; preds = %1
  %28 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 7
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.brcmf_mp_device, ptr %29, i32 0, i32 8
  %31 = load i32, ptr %30, align 4
  %32 = tail call i32 @llvm.umax.i32(i32 %31, i32 32)
  %33 = lshr i32 %32, 4
  %34 = add i32 %32, 1
  %35 = add i32 %34, %33
  %36 = zext i16 %22 to i32
  %37 = icmp ugt i32 %35, %36
  br i1 %37, label %38, label %39, !prof !12

38:                                               ; preds = %27
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 775, i32 noundef 9, ptr noundef null) #10
  br label %39

39:                                               ; preds = %38, %27
  %40 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 17
  %41 = tail call i32 @sg_alloc_table(ptr noundef %40, i32 noundef %35, i32 noundef 3264) #10
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = tail call i32 @net_ratelimit() #10
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdiod_sgtable_alloc, ptr noundef nonnull @.str.7) #10
  br label %47

47:                                               ; preds = %46, %43
  store i8 0, ptr %9, align 4
  br label %48

48:                                               ; preds = %47, %39
  %49 = load ptr, ptr %28, align 4
  %50 = getelementptr inbounds %struct.brcmf_mp_device, ptr %49, i32 0, i32 8
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 16
  store i32 %51, ptr %52, align 4
  br label %53

53:                                               ; preds = %48, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @brcmf_sdiod_freezing(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 4
  %4 = load volatile i32, ptr %3, align 4
  %5 = icmp ne i32 %4, 0
  ret i1 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brcmf_sdiod_try_freeze(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 4
  %4 = load volatile i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.brcmf_sdiod_freezer, ptr %3, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  store i32 %9, ptr %7, align 4
  %10 = load ptr, ptr %2, align 4
  %11 = getelementptr inbounds %struct.brcmf_sdiod_freezer, ptr %10, i32 0, i32 3
  tail call void @__wake_up(ptr noundef %11, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr inbounds %struct.brcmf_sdiod_freezer, ptr %12, i32 0, i32 4
  tail call void @wait_for_completion(ptr noundef %13) #10
  br label %14

14:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brcmf_sdiod_freezer_count(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.brcmf_sdiod_freezer, ptr %3, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #10, !srcloc !13
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #10, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brcmf_sdiod_freezer_uncount(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.brcmf_sdiod_freezer, ptr %3, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #10, !srcloc !13
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #10, !srcloc !15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_sdiod_remove(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 21
  store i32 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @brcmf_sdio_remove(ptr noundef nonnull %4) #10
  store ptr null, ptr %3, align 4
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 22
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %7
  %12 = load volatile i32, ptr %9, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14, !prof !10

14:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 803, i32 noundef 9, ptr noundef null) #10
  %15 = load ptr, ptr %8, align 4
  br label %16

16:                                               ; preds = %14, %11
  %17 = phi ptr [ %15, %14 ], [ %9, %11 ]
  tail call void @kfree(ptr noundef %17) #10
  br label %18

18:                                               ; preds = %16, %7
  %19 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  tail call void @sdio_claim_host(ptr noundef %20) #10
  %21 = load ptr, ptr %19, align 4
  %22 = tail call i32 @sdio_disable_func(ptr noundef %21) #10
  %23 = load ptr, ptr %19, align 4
  tail call void @sdio_release_host(ptr noundef %23) #10
  %24 = load ptr, ptr %0, align 4
  tail call void @sdio_claim_host(ptr noundef %24) #10
  %25 = load ptr, ptr %0, align 4
  %26 = tail call i32 @sdio_disable_func(ptr noundef %25) #10
  %27 = load ptr, ptr %0, align 4
  tail call void @sdio_release_host(ptr noundef %27) #10
  %28 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 17
  tail call void @sg_free_table(ptr noundef %28) #10
  %29 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 2
  store i32 0, ptr %29, align 4
  %30 = load ptr, ptr %0, align 4
  %31 = load ptr, ptr %30, align 8
  %32 = load ptr, ptr %31, align 8
  %33 = load ptr, ptr %32, align 64
  tail call void @pm_runtime_allow(ptr noundef %33) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_sdio_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_disable_func(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_allow(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_sdiod_probe(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  tail call void @sdio_claim_host(ptr noundef %2) #10
  %3 = load ptr, ptr %0, align 4
  %4 = tail call i32 @sdio_set_block_size(ptr noundef %3, i32 noundef 64) #10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @net_ratelimit() #10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdiod_probe, ptr noundef nonnull @.str.8) #10
  br label %10

10:                                               ; preds = %9, %6
  %11 = load ptr, ptr %0, align 4
  tail call void @sdio_release_host(ptr noundef %11) #10
  br label %63

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.sdio_func, ptr %14, i32 0, i32 6
  %16 = load i16, ptr %15, align 4
  switch i16 %16, label %20 [
    i16 17267, label %17
    i16 17241, label %18
    i16 17236, label %18
    i16 17238, label %18
    i16 17193, label %19
  ]

17:                                               ; preds = %12
  br label %20

18:                                               ; preds = %12, %12, %12
  br label %20

19:                                               ; preds = %12
  br label %20

20:                                               ; preds = %19, %18, %17, %12
  %21 = phi i32 [ 512, %12 ], [ 128, %19 ], [ 256, %18 ], [ 256, %17 ]
  %22 = tail call i32 @sdio_set_block_size(ptr noundef %14, i32 noundef %21) #10
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %20
  %25 = tail call i32 @net_ratelimit() #10
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdiod_probe, ptr noundef nonnull @.str.9) #10
  br label %28

28:                                               ; preds = %27, %24
  %29 = load ptr, ptr %0, align 4
  tail call void @sdio_release_host(ptr noundef %29) #10
  br label %63

30:                                               ; preds = %20
  %31 = load ptr, ptr %13, align 4
  %32 = getelementptr inbounds %struct.sdio_func, ptr %31, i32 0, i32 9
  store i32 3000, ptr %32, align 8
  %33 = load ptr, ptr %0, align 4
  %34 = tail call i32 @sdio_enable_func(ptr noundef %33) #10
  %35 = load ptr, ptr %0, align 4
  tail call void @sdio_release_host(ptr noundef %35) #10
  %36 = icmp eq i32 %34, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %30
  %38 = tail call i32 @net_ratelimit() #10
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %63, label %40

40:                                               ; preds = %37
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_sdiod_probe, ptr noundef nonnull @.str.10, i32 noundef %34) #10
  br label %63

41:                                               ; preds = %30
  %42 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %43 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %42, i32 noundef 3520, i32 noundef 40) #11
  %44 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 22
  store ptr %43, ptr %44, align 4
  %45 = icmp eq ptr %43, null
  br i1 %45, label %63, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.brcmf_sdiod_freezer, ptr %43, i32 0, i32 1
  store volatile i32 0, ptr %47, align 4
  store volatile i32 0, ptr %43, align 8
  %48 = getelementptr inbounds %struct.brcmf_sdiod_freezer, ptr %43, i32 0, i32 3
  tail call void @__init_waitqueue_head(ptr noundef %48, ptr noundef nonnull @.str.15, ptr noundef nonnull @brcmf_sdiod_freezer_attach.__key) #10
  %49 = load ptr, ptr %44, align 4
  %50 = getelementptr inbounds %struct.brcmf_sdiod_freezer, ptr %49, i32 0, i32 4
  store i32 0, ptr %50, align 4
  %51 = getelementptr inbounds %struct.brcmf_sdiod_freezer, ptr %49, i32 0, i32 4, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %51, ptr noundef nonnull @.str.16, ptr noundef nonnull @init_completion.__key) #10
  %52 = tail call ptr @brcmf_sdio_probe(ptr noundef %0) #10
  %53 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %0, i32 0, i32 4
  store ptr %52, ptr %53, align 4
  %54 = icmp eq ptr %52, null
  br i1 %54, label %63, label %55

55:                                               ; preds = %46
  %56 = load ptr, ptr %13, align 4
  %57 = load ptr, ptr %56, align 8
  %58 = load ptr, ptr %57, align 8
  %59 = load ptr, ptr %58, align 64
  tail call void @pm_runtime_forbid(ptr noundef %59) #10
  %60 = getelementptr inbounds %struct.mmc_host, ptr %58, i32 0, i32 16
  %61 = load i32, ptr %60, align 8
  %62 = or i32 %61, 256
  store i32 %62, ptr %60, align 8
  br label %66

63:                                               ; preds = %46, %41, %40, %37, %28, %10
  %64 = phi i32 [ -12, %41 ], [ -19, %46 ], [ %34, %37 ], [ %34, %40 ], [ %22, %28 ], [ %4, %10 ]
  %65 = tail call i32 @brcmf_sdiod_remove(ptr noundef %0)
  br label %66

66:                                               ; preds = %63, %55
  %67 = phi i32 [ %64, %63 ], [ 0, %55 ]
  ret i32 %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_set_block_size(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_enable_func(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmf_sdio_probe(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @brcmf_sdio_wowl_config(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) local_unnamed_addr #6 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %6, i32 0, i32 20
  store i8 %3, ptr %7, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_sdio_register() local_unnamed_addr #0 {
  %1 = tail call i32 @sdio_register_driver(ptr noundef nonnull @brcmf_sdmmc_driver) #10
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_register_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brcmf_sdio_exit() local_unnamed_addr #0 {
  tail call void @sdio_unregister_driver(ptr noundef nonnull @brcmf_sdmmc_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_unregister_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_sdio_isr(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_memcpy_fromio(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_readsb(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mmc_submit_one(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef %6, ptr nocapture noundef %7, ptr nocapture noundef readonly %8, i32 noundef %9) unnamed_addr #0 {
  %11 = getelementptr inbounds %struct.mmc_data, ptr %0, i32 0, i32 10
  store i32 %3, ptr %11, align 4
  %12 = sdiv i32 %4, %5
  %13 = getelementptr inbounds %struct.mmc_data, ptr %0, i32 0, i32 3
  store i32 %12, ptr %13, align 4
  %14 = load i32, ptr %6, align 4
  %15 = shl i32 %14, 9
  %16 = and i32 %15, 67108352
  %17 = getelementptr inbounds %struct.mmc_command, ptr %2, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = or i32 %16, %18
  store i32 %19, ptr %17, align 4
  %20 = load i32, ptr %13, align 4
  %21 = and i32 %20, 511
  %22 = or i32 %21, %19
  store i32 %22, ptr %17, align 4
  %23 = getelementptr inbounds %struct.sdio_func, ptr %8, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %29

26:                                               ; preds = %10
  %27 = load i32, ptr %6, align 4
  %28 = add i32 %27, %4
  store i32 %28, ptr %6, align 4
  br label %29

29:                                               ; preds = %26, %10
  %30 = load ptr, ptr %8, align 8
  tail call void @mmc_set_data_timeout(ptr noundef %0, ptr noundef %30) #10
  %31 = load ptr, ptr %8, align 8
  %32 = load ptr, ptr %31, align 8
  tail call void @mmc_wait_for_req(ptr noundef %32, ptr noundef %1) #10
  %33 = getelementptr inbounds %struct.mmc_command, ptr %2, i32 0, i32 5
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.mmc_data, ptr %0, i32 0, i32 5
  %38 = load i32, ptr %37, align 4
  br label %39

39:                                               ; preds = %36, %29
  %40 = phi i32 [ %38, %36 ], [ %34, %29 ]
  switch i32 %40, label %48 [
    i32 -123, label %41
    i32 0, label %54
  ]

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %7, i32 0, i32 21
  %43 = load i32, ptr %42, align 4
  switch i32 %43, label %47 [
    i32 2, label %54
    i32 1, label %44
  ]

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %7, i32 0, i32 6
  %46 = load ptr, ptr %45, align 4
  tail call void @brcmf_bus_change_state(ptr noundef %46, i32 noundef 0) #10
  br label %47

47:                                               ; preds = %44, %41
  store i32 2, ptr %42, align 4
  br label %54

48:                                               ; preds = %39
  %49 = tail call i32 @net_ratelimit() #10
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = icmp eq i32 %9, 0
  %53 = select i1 %52, ptr @.str.14, ptr @.str.13
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.mmc_submit_one, ptr noundef nonnull @.str.12, ptr noundef nonnull %53, i32 noundef %40) #10
  br label %54

54:                                               ; preds = %51, %48, %47, %41, %39
  %55 = phi i32 [ %40, %39 ], [ -5, %51 ], [ -5, %48 ], [ -123, %41 ], [ -123, %47 ]
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_set_data_timeout(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_wait_for_req(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_memcpy_toio(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_forbid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_ops_sdio_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.mmc_card, ptr %3, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = or i32 %5, 1
  store i32 %6, ptr %4, align 8
  %7 = getelementptr inbounds %struct.sdio_func, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  switch i32 %8, label %9 [
    i32 1, label %46
    i32 2, label %10
  ]

9:                                                ; preds = %2
  br label %46

10:                                               ; preds = %2
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 52) #11
  %13 = icmp eq ptr %12, null
  br i1 %13, label %46, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 724) #11
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  tail call void @kfree(ptr noundef nonnull %12) #10
  br label %46

19:                                               ; preds = %14
  %20 = load ptr, ptr %0, align 8
  %21 = getelementptr inbounds %struct.mmc_card, ptr %20, i32 0, i32 31
  %22 = load ptr, ptr %21, align 8
  store ptr %22, ptr %16, align 8
  %23 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %16, i32 0, i32 1
  store ptr %0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %16, i32 0, i32 6
  store ptr %12, ptr %24, align 8
  store ptr %16, ptr %12, align 8
  %25 = getelementptr inbounds %struct.brcmf_bus, ptr %12, i32 0, i32 1
  store i32 0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.sdio_func, ptr %0, i32 0, i32 1, i32 8
  store ptr %12, ptr %26, align 8
  %27 = getelementptr inbounds %struct.sdio_func, ptr %22, i32 0, i32 1, i32 8
  store ptr %12, ptr %27, align 8
  %28 = load ptr, ptr %16, align 8
  %29 = getelementptr inbounds %struct.sdio_func, ptr %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %16, i32 0, i32 5
  store ptr %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %16, i32 0, i32 21
  %32 = load i32, ptr %31, align 4
  switch i32 %32, label %35 [
    i32 2, label %36
    i32 0, label %36
    i32 1, label %33
  ]

33:                                               ; preds = %19
  %34 = load ptr, ptr %24, align 8
  tail call void @brcmf_bus_change_state(ptr noundef %34, i32 noundef 0) #10
  br label %35

35:                                               ; preds = %33, %19
  store i32 0, ptr %31, align 4
  br label %36

36:                                               ; preds = %35, %19, %19
  %37 = tail call i32 @brcmf_sdiod_probe(ptr noundef nonnull %16)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %36
  %40 = tail call i32 @net_ratelimit() #10
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_ops_sdio_probe, ptr noundef nonnull @.str.18, i32 noundef %37) #10
  br label %43

43:                                               ; preds = %42, %39
  store ptr null, ptr %26, align 8
  %44 = load ptr, ptr %16, align 8
  %45 = getelementptr inbounds %struct.sdio_func, ptr %44, i32 0, i32 1, i32 8
  store ptr null, ptr %45, align 8
  tail call void @kfree(ptr noundef nonnull %16) #10
  tail call void @kfree(ptr noundef nonnull %12) #10
  br label %46

46:                                               ; preds = %43, %36, %18, %10, %9, %2
  %47 = phi i32 [ -19, %9 ], [ %37, %43 ], [ -12, %18 ], [ 0, %2 ], [ -12, %10 ], [ 0, %36 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcmf_ops_sdio_remove(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.sdio_func, ptr %0, i32 0, i32 1, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 4
  tail call void @brcmf_sdiod_intr_unregister(ptr noundef %6)
  %7 = getelementptr inbounds %struct.sdio_func, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %17

10:                                               ; preds = %5
  %11 = tail call i32 @brcmf_sdiod_remove(ptr noundef %6)
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr inbounds %struct.sdio_func, ptr %12, i32 0, i32 1, i32 8
  store ptr null, ptr %13, align 8
  %14 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %6, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.sdio_func, ptr %15, i32 0, i32 1, i32 8
  store ptr null, ptr %16, align 8
  tail call void @kfree(ptr noundef nonnull %3) #10
  tail call void @kfree(ptr noundef %6) #10
  br label %17

17:                                               ; preds = %10, %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_dev_coredump(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_ops_sdio_suspend(ptr noundef %0) #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = getelementptr i8, ptr %0, i32 476
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %80

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 -8
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @sdio_get_host_pm_caps(ptr noundef %7) #10
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %78, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %10, i32 0, i32 22
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.brcmf_sdiod_freezer, ptr %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.brcmf_sdiod_freezer, ptr %16, i32 0, i32 2
  store i32 0, ptr %18, align 4
  %19 = load ptr, ptr %15, align 4
  %20 = getelementptr inbounds %struct.brcmf_sdiod_freezer, ptr %19, i32 0, i32 4
  store i32 0, ptr %20, align 4
  %21 = load ptr, ptr %15, align 4
  store volatile i32 1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %10, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  tail call void @brcmf_sdio_trigger_dpc(ptr noundef %23) #10
  %24 = load volatile i32, ptr %17, align 4
  %25 = load ptr, ptr %15, align 4
  %26 = getelementptr inbounds %struct.brcmf_sdiod_freezer, ptr %25, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %24, %27
  br i1 %28, label %50, label %29

29:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false) #10, !annotation !9
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #10
  %30 = load ptr, ptr %15, align 4
  %31 = getelementptr inbounds %struct.brcmf_sdiod_freezer, ptr %30, i32 0, i32 3
  %32 = call i32 @prepare_to_wait_event(ptr noundef %31, ptr noundef nonnull %2, i32 noundef 2) #10
  %33 = load volatile i32, ptr %17, align 4
  %34 = load ptr, ptr %15, align 4
  %35 = getelementptr inbounds %struct.brcmf_sdiod_freezer, ptr %34, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %33, %36
  br i1 %37, label %47, label %38

38:                                               ; preds = %38, %29
  call void @schedule() #10
  %39 = load ptr, ptr %15, align 4
  %40 = getelementptr inbounds %struct.brcmf_sdiod_freezer, ptr %39, i32 0, i32 3
  %41 = call i32 @prepare_to_wait_event(ptr noundef %40, ptr noundef nonnull %2, i32 noundef 2) #10
  %42 = load volatile i32, ptr %17, align 4
  %43 = load ptr, ptr %15, align 4
  %44 = getelementptr inbounds %struct.brcmf_sdiod_freezer, ptr %43, i32 0, i32 2
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %42, %45
  br i1 %46, label %47, label %38

47:                                               ; preds = %38, %29
  %48 = phi ptr [ %34, %29 ], [ %43, %38 ]
  %49 = getelementptr inbounds %struct.brcmf_sdiod_freezer, ptr %48, i32 0, i32 3
  call void @finish_wait(ptr noundef %49, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #10
  br label %50

50:                                               ; preds = %47, %14
  %51 = load ptr, ptr %10, align 4
  call void @sdio_claim_host(ptr noundef %51) #10
  %52 = load ptr, ptr %22, align 4
  %53 = call i32 @brcmf_sdio_sleep(ptr noundef %52, i1 noundef zeroext true) #10
  %54 = load ptr, ptr %10, align 4
  call void @sdio_release_host(ptr noundef %54) #10
  %55 = load ptr, ptr %22, align 4
  call void @brcmf_sdio_wd_timer(ptr noundef %55, i1 noundef zeroext false) #10
  %56 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %10, i32 0, i32 20
  %57 = load i8, ptr %56, align 4, !range !8
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %50
  %60 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %10, i32 0, i32 7
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.brcmf_mp_device, ptr %61, i32 0, i32 8, i32 0, i32 2
  %63 = load i8, ptr %62, align 4, !range !8
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.brcmf_mp_device, ptr %61, i32 0, i32 8, i32 0, i32 3
  %67 = load i32, ptr %66, align 4
  %68 = call i32 @irq_set_irq_wake(i32 noundef %67, i32 noundef 1) #10
  br label %69

69:                                               ; preds = %65, %59, %50
  %70 = phi i32 [ 1, %65 ], [ 1, %50 ], [ 3, %59 ]
  %71 = load ptr, ptr %10, align 4
  %72 = call i32 @sdio_set_host_pm_flags(ptr noundef %71, i32 noundef %70) #10
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %69
  %75 = call i32 @net_ratelimit() #10
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_ops_sdio_suspend, ptr noundef nonnull @.str.19, i32 noundef %70) #10
  br label %80

78:                                               ; preds = %6
  tail call void @brcmf_sdiod_intr_unregister(ptr noundef %10)
  %79 = tail call i32 @brcmf_sdiod_remove(ptr noundef %10)
  br label %80

80:                                               ; preds = %78, %77, %74, %69, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_ops_sdio_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 -8
  %6 = tail call i32 @sdio_get_host_pm_caps(ptr noundef %5) #10
  %7 = getelementptr i8, ptr %0, i32 476
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %44

10:                                               ; preds = %1
  %11 = and i32 %6, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  %14 = tail call i32 @brcmf_sdiod_probe(ptr noundef %4)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %44, label %16

16:                                               ; preds = %13
  %17 = tail call i32 @net_ratelimit() #10
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %44, label %19

19:                                               ; preds = %16
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_ops_sdio_resume, ptr noundef nonnull @.str.21) #10
  br label %44

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %4, i32 0, i32 20
  %22 = load i8, ptr %21, align 4, !range !8
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %4, i32 0, i32 7
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.brcmf_mp_device, ptr %26, i32 0, i32 8, i32 0, i32 2
  %28 = load i8, ptr %27, align 4, !range !8
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.brcmf_mp_device, ptr %26, i32 0, i32 8, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = tail call i32 @irq_set_irq_wake(i32 noundef %32, i32 noundef 0) #10
  br label %34

34:                                               ; preds = %30, %24, %20
  %35 = load ptr, ptr %4, align 4
  tail call void @sdio_claim_host(ptr noundef %35) #10
  %36 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %4, i32 0, i32 4
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 @brcmf_sdio_sleep(ptr noundef %37, i1 noundef zeroext false) #10
  %39 = load ptr, ptr %4, align 4
  tail call void @sdio_release_host(ptr noundef %39) #10
  %40 = getelementptr inbounds %struct.brcmf_sdio_dev, ptr %4, i32 0, i32 22
  %41 = load ptr, ptr %40, align 4
  store volatile i32 0, ptr %41, align 4
  %42 = load ptr, ptr %40, align 4
  %43 = getelementptr inbounds %struct.brcmf_sdiod_freezer, ptr %42, i32 0, i32 4
  tail call void @complete_all(ptr noundef %43) #10
  br label %44

44:                                               ; preds = %34, %19, %16, %13, %1
  %45 = phi i32 [ 0, %1 ], [ 0, %34 ], [ %14, %19 ], [ %14, %16 ], [ 0, %13 ]
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_get_host_pm_caps(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_sdio_wd_timer(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_set_host_pm_flags(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_sdio_trigger_dpc(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_sdio_sleep(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
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
!8 = !{i8 0, i8 2}
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2153462000, i64 2153462492, i64 2153462037, i64 2153462093, i64 2153462127, i64 2153462151, i64 2153462192, i64 2153462213, i64 2153462241, i64 2153462275}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i64 713347, i64 2148203318, i64 2148203344, i64 2148203391, i64 2148203413, i64 2148203441, i64 2148203461}
!14 = !{i64 2148214733, i64 2148214759, i64 2148214788, i64 2148214822, i64 2148214853, i64 2148214876}
!15 = !{i64 2148217090, i64 2148217116, i64 2148217145, i64 2148217179, i64 2148217210, i64 2148217233}
