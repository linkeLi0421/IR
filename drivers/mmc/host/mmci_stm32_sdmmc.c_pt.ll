; ModuleID = '/llk/IR/drivers/mmc/host/mmci_stm32_sdmmc.c_pt.bc'
source_filename = "../drivers/mmc/host/mmci_stm32_sdmmc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mmci_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.mmci_host = type { i32, ptr, ptr, ptr, %struct.mmc_command, ptr, ptr, ptr, i8, ptr, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, %struct.timer_list, i32, i32, %struct.sg_mapping_iter, i32, ptr, i8, ptr, i32 }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
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
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, [37 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mmc_supply = type { ptr, ptr }
%struct.sdmmc_dlyb = type { ptr, i32, i32 }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
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
%struct.variant_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i8, i32, i32, i32, i8, i32, i32, i32, i8, i32, ptr }
%struct.sdmmc_idma = type { i32, ptr }
%struct.sdmmc_lli_desc = type { i32, i32, i32 }

@sdmmc_variant_ops = internal global %struct.mmci_host_ops { ptr @sdmmc_idma_validate_data, ptr @sdmmc_idma_prep_data, ptr @sdmmc_idma_unprep_data, ptr @sdmmc_get_dctrl_cfg, ptr null, ptr @sdmmc_idma_setup, ptr null, ptr @sdmmc_idma_start, ptr @sdmmc_idma_finalize, ptr null, ptr @mmci_sdmmc_set_clkreg, ptr @mmci_sdmmc_set_pwrreg, ptr @sdmmc_busy_complete, ptr @sdmmc_pre_sig_volt_vswitch, ptr @sdmmc_post_sig_volt_switch }, align 4
@.str = private unnamed_addr constant [42 x i8] c"unaligned scatterlist: ofst:%x length:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"unaligned last scatterlist: ofst:%x length:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"dma_map_sg failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Failed to alloc IDMA descriptor\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"delay line cfg timeout unit:%d cfgr:%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"no tuning point found\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sdmmc_variant_init(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 64
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 24
  store ptr @sdmmc_variant_ops, ptr %7, align 4
  %8 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !8
  %11 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 14
  store i32 %10, ptr %11, align 4
  %12 = load ptr, ptr %2, align 4
  %13 = load ptr, ptr %12, align 64
  %14 = tail call ptr @devm_of_iomap(ptr noundef %13, ptr noundef %6, i32 noundef 1, ptr noundef null) #5
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %26, label %16

16:                                               ; preds = %1
  %17 = load ptr, ptr %2, align 4
  %18 = load ptr, ptr %17, align 64
  %19 = tail call noalias ptr @devm_kmalloc(ptr noundef %18, i32 noundef 12, i32 noundef 3520) #5
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  store ptr %14, ptr %19, align 4
  %22 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 26
  store ptr %19, ptr %22, align 4
  %23 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 23
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.mmc_host_ops, ptr %24, i32 0, i32 12
  store ptr @sdmmc_execute_tuning, ptr %25, align 4
  br label %26

26:                                               ; preds = %21, %16, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_of_iomap(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdmmc_execute_tuning(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 4, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %106, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %106, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 7
  br label %11

11:                                               ; preds = %49, %9
  %12 = phi ptr [ %7, %9 ], [ %50, %49 ]
  %13 = phi i32 [ 0, %9 ], [ %47, %49 ]
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 3) #5, !srcloc !9
  %14 = shl i32 %13, 8
  %15 = or i32 %14, 12
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr i8, ptr %16, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #5, !srcloc !9
  %18 = tail call i64 @ktime_get() #5
  %19 = add i64 %18, 1000000
  %20 = load ptr, ptr %4, align 4
  %21 = getelementptr i8, ptr %20, i32 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #5, !srcloc !8
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %24, label %40

24:                                               ; preds = %27, %11
  %25 = tail call i64 @ktime_get() #5
  %26 = icmp sgt i64 %25, %19
  br i1 %26, label %32, label %27

27:                                               ; preds = %24
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #5
  %28 = load ptr, ptr %4, align 4
  %29 = getelementptr i8, ptr %28, i32 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #5, !srcloc !8
  %31 = icmp sgt i32 %30, -1
  br i1 %31, label %24, label %40

32:                                               ; preds = %24
  %33 = load ptr, ptr %4, align 4
  %34 = getelementptr i8, ptr %33, i32 4
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #5, !srcloc !8
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load ptr, ptr %10, align 4
  %39 = load ptr, ptr %38, align 64
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %39, ptr noundef nonnull @.str.4, i32 noundef %13, i32 noundef %35) #6
  br label %46

40:                                               ; preds = %32, %27, %11
  %41 = phi i32 [ %35, %32 ], [ %22, %11 ], [ %30, %27 ]
  %42 = lshr i32 %41, 16
  %43 = and i32 %42, 4095
  %44 = add nsw i32 %43, -1
  %45 = icmp ult i32 %44, 2047
  br i1 %45, label %51, label %46

46:                                               ; preds = %40, %37
  %47 = add nuw nsw i32 %13, 1
  %48 = icmp eq i32 %47, 128
  br i1 %48, label %106, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr %4, align 4
  br label %11

51:                                               ; preds = %40
  %52 = icmp ugt i32 %13, 127
  br i1 %52, label %106, label %53

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.sdmmc_dlyb, ptr %4, i32 0, i32 1
  store i32 %13, ptr %54, align 4
  %55 = tail call i32 @llvm.ctlz.i32(i32 %43, i1 false) #5, !range !10
  %56 = sub nsw i32 31, %55
  %57 = getelementptr inbounds %struct.sdmmc_dlyb, ptr %4, i32 0, i32 2
  store i32 %56, ptr %57, align 4
  %58 = load ptr, ptr %3, align 4
  %59 = getelementptr inbounds %struct.sdmmc_dlyb, ptr %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.sdmmc_dlyb, ptr %58, i32 0, i32 1
  br label %61

61:                                               ; preds = %61, %53
  %62 = phi i32 [ 0, %53 ], [ %85, %61 ]
  %63 = phi i32 [ 0, %53 ], [ %84, %61 ]
  %64 = phi i32 [ 0, %53 ], [ %82, %61 ]
  %65 = phi i32 [ 0, %53 ], [ %81, %61 ]
  %66 = load i32, ptr %60, align 4
  %67 = load ptr, ptr %58, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 3) #5, !srcloc !9
  %68 = shl i32 %66, 8
  %69 = and i32 %68, 32512
  %70 = and i32 %62, 15
  %71 = or i32 %69, %70
  %72 = load ptr, ptr %58, align 4
  %73 = getelementptr i8, ptr %72, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %71) #5, !srcloc !9
  %74 = load ptr, ptr %58, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 1) #5, !srcloc !9
  %75 = load ptr, ptr %10, align 4
  %76 = tail call i32 @mmc_send_tuning(ptr noundef %75, i32 noundef %1, ptr noundef null) #5
  %77 = icmp eq i32 %76, 0
  %78 = add i32 %65, 1
  %79 = icmp sgt i32 %78, %64
  %80 = tail call i32 @llvm.smax.i32(i32 %78, i32 %64) #5
  %81 = select i1 %77, i32 %78, i32 0
  %82 = select i1 %77, i32 %80, i32 %64
  %83 = select i1 %77, i1 %79, i1 false
  %84 = select i1 %83, i32 %62, i32 %63
  %85 = add i32 %62, 1
  %86 = load i32, ptr %59, align 4
  %87 = icmp ugt i32 %85, %86
  br i1 %87, label %88, label %61

88:                                               ; preds = %61
  %89 = icmp eq i32 %82, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %88
  %91 = load ptr, ptr %10, align 4
  %92 = load ptr, ptr %91, align 64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %92, ptr noundef nonnull @.str.5) #6
  br label %106

93:                                               ; preds = %88
  %94 = load ptr, ptr %58, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 0) #5, !srcloc !9
  %95 = sdiv i32 %82, -2
  %96 = add i32 %95, %84
  %97 = load i32, ptr %60, align 4
  %98 = load ptr, ptr %58, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 3) #5, !srcloc !9
  %99 = shl i32 %97, 8
  %100 = and i32 %99, 32512
  %101 = and i32 %96, 15
  %102 = or i32 %100, %101
  %103 = load ptr, ptr %58, align 4
  %104 = getelementptr i8, ptr %103, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 %102) #5, !srcloc !9
  %105 = load ptr, ptr %58, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 1) #5, !srcloc !9
  br label %106

106:                                              ; preds = %93, %90, %51, %46, %6, %2
  %107 = phi i32 [ -22, %6 ], [ -22, %2 ], [ 0, %93 ], [ -22, %90 ], [ -22, %51 ], [ -22, %46 ]
  ret i32 %107
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdmmc_idma_validate_data(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 10
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %32, label %8

8:                                                ; preds = %25, %2
  %9 = phi ptr [ %31, %25 ], [ %4, %2 ]
  %10 = phi i32 [ %26, %25 ], [ 0, %2 ]
  %11 = phi ptr [ %27, %25 ], [ %4, %2 ]
  %12 = getelementptr inbounds %struct.scatterlist, ptr %9, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 3
  %15 = icmp eq i32 %14, 0
  %16 = getelementptr inbounds %struct.scatterlist, ptr %9, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 31
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %15, i1 %19, i1 false
  br i1 %20, label %25, label %21

21:                                               ; preds = %8
  %22 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 6
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %23, align 64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str, i32 noundef %13, i32 noundef %17) #6
  br label %44

25:                                               ; preds = %8
  %26 = add nuw i32 %10, 1
  %27 = tail call ptr @sg_next(ptr noundef %11) #5
  %28 = load i32, ptr %5, align 4
  %29 = add i32 %28, -1
  %30 = icmp ult i32 %26, %29
  %31 = load ptr, ptr %3, align 4
  br i1 %30, label %8, label %32

32:                                               ; preds = %25, %2
  %33 = phi ptr [ %4, %2 ], [ %31, %25 ]
  %34 = getelementptr inbounds %struct.scatterlist, ptr %33, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, 3
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 6
  %40 = load ptr, ptr %39, align 4
  %41 = load ptr, ptr %40, align 64
  %42 = getelementptr inbounds %struct.scatterlist, ptr %33, i32 0, i32 2
  %43 = load i32, ptr %42, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.1, i32 noundef %35, i32 noundef %43) #6
  br label %44

44:                                               ; preds = %38, %32, %21
  %45 = phi i32 [ -22, %21 ], [ -22, %38 ], [ 0, %32 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdmmc_idma_prep_data(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) #0 {
  br i1 %2, label %10, label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 13
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 39
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %28, label %10

10:                                               ; preds = %4, %3
  %11 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %12, align 64
  %14 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 12
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 10
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 256
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 2, i32 1
  %23 = tail call i32 @dma_map_sg_attrs(ptr noundef %13, ptr noundef %15, i32 noundef %17, i32 noundef %22, i32 noundef 0) #5
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %10
  %26 = load ptr, ptr %11, align 4
  %27 = load ptr, ptr %26, align 64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.2) #6
  br label %28

28:                                               ; preds = %25, %10, %4
  %29 = phi i32 [ 0, %4 ], [ -22, %25 ], [ 0, %10 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdmmc_idma_unprep_data(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 64
  %7 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 12
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 10
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 256
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %6, ptr noundef %8, i32 noundef %10, i32 noundef %15, i32 noundef 0) #5
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @sdmmc_get_dctrl_cfg(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 @llvm.cttz.i32(i32 %5, i1 true) #5, !range !10
  %7 = icmp eq i32 %5, 0
  %8 = shl nuw nsw i32 %6, 4
  %9 = select i1 %7, i32 -16, i32 %8
  %10 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.mmc_host, ptr %11, i32 0, i32 37
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %25, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.mmc_card, ptr %13, i32 0, i32 4
  %17 = load i32, ptr %16, align 8
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = or i32 %9, 4
  br label %36

25:                                               ; preds = %19, %15, %1
  %26 = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 8
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  %34 = or i32 %9, 12
  %35 = select i1 %33, i32 %34, i32 %9
  br label %36

36:                                               ; preds = %29, %25, %23
  %37 = phi i32 [ %24, %23 ], [ %9, %25 ], [ %35, %29 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdmmc_idma_setup(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 64
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 8, i32 noundef 3520) #5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %43, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 38
  store ptr %5, ptr %8, align 4
  %9 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 25
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.variant_data, ptr %10, i32 0, i32 27
  %12 = load i8, ptr %11, align 4
  %13 = and i8 %12, 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %7
  %16 = tail call ptr @dmam_alloc_attrs(ptr noundef %4, i32 noundef 4096, ptr noundef nonnull %5, i32 noundef 3264, i32 noundef 0) #5
  %17 = getelementptr inbounds %struct.sdmmc_idma, ptr %5, i32 0, i32 1
  store ptr %16, ptr %17, align 4
  %18 = icmp eq ptr %16, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.3) #6
  br label %43

20:                                               ; preds = %15
  %21 = load ptr, ptr %2, align 4
  %22 = getelementptr inbounds %struct.mmc_host, ptr %21, i32 0, i32 21
  store i16 341, ptr %22, align 4
  %23 = load ptr, ptr %9, align 4
  %24 = getelementptr inbounds %struct.variant_data, ptr %23, i32 0, i32 28
  %25 = load ptr, ptr %2, align 4
  br label %31

26:                                               ; preds = %7
  %27 = load ptr, ptr %2, align 4
  %28 = getelementptr inbounds %struct.mmc_host, ptr %27, i32 0, i32 21
  store i16 1, ptr %28, align 4
  %29 = load ptr, ptr %2, align 4
  %30 = getelementptr inbounds %struct.mmc_host, ptr %29, i32 0, i32 23
  br label %31

31:                                               ; preds = %26, %20
  %32 = phi ptr [ %29, %26 ], [ %25, %20 ]
  %33 = phi ptr [ %30, %26 ], [ %24, %20 ]
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.mmc_host, ptr %32, i32 0, i32 20
  store i32 %34, ptr %35, align 8
  %36 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 20
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %31
  %40 = load ptr, ptr %2, align 4
  %41 = getelementptr inbounds %struct.mmc_host, ptr %40, i32 0, i32 20
  %42 = load i32, ptr %41, align 8
  store i32 %42, ptr %37, align 4
  br label %43

43:                                               ; preds = %39, %31, %19, %1
  %44 = phi i32 [ -12, %19 ], [ -12, %1 ], [ 0, %39 ], [ -5, %31 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdmmc_idma_start(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 38
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sdmmc_idma, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 25
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.variant_data, ptr %10, i32 0, i32 27
  %12 = load i8, ptr %11, align 4
  %13 = and i8 %12, 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.mmc_data, ptr %8, i32 0, i32 10
  %17 = load i32, ptr %16, align 4
  switch i32 %17, label %28 [
    i32 1, label %18
    i32 0, label %49
  ]

18:                                               ; preds = %15, %2
  %19 = getelementptr inbounds %struct.mmc_data, ptr %8, i32 0, i32 12
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.scatterlist, ptr %20, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %22) #5, !srcloc !9
  %26 = load ptr, ptr %23, align 4
  %27 = getelementptr i8, ptr %26, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 1) #5, !srcloc !9
  br label %71

28:                                               ; preds = %15
  %29 = getelementptr inbounds %struct.mmc_data, ptr %8, i32 0, i32 12
  %30 = load ptr, ptr %29, align 4
  br label %31

31:                                               ; preds = %31, %28
  %32 = phi i32 [ %34, %31 ], [ 0, %28 ]
  %33 = phi ptr [ %44, %31 ], [ %30, %28 ]
  %34 = add nuw i32 %32, 1
  %35 = mul i32 %34, 12
  %36 = getelementptr %struct.sdmmc_lli_desc, ptr %6, i32 %32
  %37 = or i32 %35, -536870912
  store i32 %37, ptr %36, align 4
  %38 = getelementptr inbounds %struct.scatterlist, ptr %33, i32 0, i32 3
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr %struct.sdmmc_lli_desc, ptr %6, i32 %32, i32 1
  store i32 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.scatterlist, ptr %33, i32 0, i32 4
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr %struct.sdmmc_lli_desc, ptr %6, i32 %32, i32 2
  store i32 %42, ptr %43, align 4
  %44 = tail call ptr @sg_next(ptr noundef %33) #5
  %45 = load i32, ptr %16, align 4
  %46 = icmp ult i32 %34, %45
  br i1 %46, label %31, label %47

47:                                               ; preds = %31
  %48 = add i32 %45, -1
  br label %49

49:                                               ; preds = %47, %15
  %50 = phi i32 [ %48, %47 ], [ -1, %15 ]
  %51 = getelementptr %struct.sdmmc_lli_desc, ptr %6, i32 %50
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, 2147483647
  store i32 %53, ptr %51, align 4
  tail call void asm sideeffect "dmb oshst", "~{memory}"() #5, !srcloc !11
  %54 = load i32, ptr %4, align 4
  %55 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr i8, ptr %56, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %54) #5, !srcloc !9
  %58 = load i32, ptr %6, align 4
  %59 = load ptr, ptr %55, align 4
  %60 = getelementptr i8, ptr %59, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %58) #5, !srcloc !9
  %61 = getelementptr inbounds %struct.sdmmc_lli_desc, ptr %6, i32 0, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = load ptr, ptr %55, align 4
  %64 = getelementptr i8, ptr %63, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %62) #5, !srcloc !9
  %65 = getelementptr inbounds %struct.sdmmc_lli_desc, ptr %6, i32 0, i32 2
  %66 = load i32, ptr %65, align 4
  %67 = load ptr, ptr %55, align 4
  %68 = getelementptr i8, ptr %67, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %66) #5, !srcloc !9
  %69 = load ptr, ptr %55, align 4
  %70 = getelementptr i8, ptr %69, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 3) #5, !srcloc !9
  br label %71

71:                                               ; preds = %49, %18
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdmmc_idma_finalize(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #5, !srcloc !9
  %6 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 13
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %11, align 64
  %13 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 12
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 10
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 256
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %12, ptr noundef %14, i32 noundef %16, i32 noundef %21, i32 noundef 0) #5
  br label %22

22:                                               ; preds = %9, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mmci_sdmmc_set_clkreg(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 28, i32 7
  %6 = load i8, ptr %5, align 4
  %7 = add i8 %6, -7
  %8 = icmp ult i8 %7, 2
  %9 = select i1 %8, i32 262144, i32 0
  %10 = icmp eq i32 %1, 0
  %11 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 11
  %12 = load i32, ptr %11, align 4
  br i1 %10, label %23, label %13

13:                                               ; preds = %2
  %14 = icmp ugt i32 %12, %1
  %15 = or i1 %8, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %13
  %17 = shl i32 %1, 1
  %18 = add i32 %17, -1
  %19 = add i32 %18, %12
  %20 = udiv i32 %19, %17
  %21 = tail call i32 @llvm.umin.i32(i32 %20, i32 1023)
  %22 = shl nuw nsw i32 %21, 1
  br label %23

23:                                               ; preds = %16, %2
  %24 = phi i32 [ %22, %16 ], [ 2046, %2 ]
  %25 = phi i32 [ %21, %16 ], [ 1023, %2 ]
  %26 = udiv i32 %12, %24
  br label %27

27:                                               ; preds = %23, %13
  %28 = phi i32 [ %12, %13 ], [ %26, %23 ]
  %29 = phi i32 [ 0, %13 ], [ %25, %23 ]
  %30 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 13
  store i32 %28, ptr %30, align 4
  %31 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 28, i32 5
  %32 = load i8, ptr %31, align 2
  %33 = icmp eq i8 %32, 2
  %34 = select i1 %33, i32 %28, i32 0
  %35 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 57
  store i32 %34, ptr %35, align 4
  %36 = load ptr, ptr %3, align 4
  %37 = getelementptr inbounds %struct.mmc_host, ptr %36, i32 0, i32 28, i32 6
  %38 = load i8, ptr %37, align 1
  %39 = icmp eq i8 %38, 2
  %40 = or i32 %29, 16384
  %41 = select i1 %39, i32 %40, i32 %29
  %42 = icmp eq i8 %38, 3
  %43 = or i32 %41, 32768
  %44 = select i1 %42, i32 %43, i32 %41
  %45 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 17
  %46 = load i32, ptr %45, align 4
  %47 = or i32 %46, %9
  %48 = or i32 %47, %44
  %49 = or i32 %48, 131072
  %50 = getelementptr inbounds %struct.mmc_host, ptr %36, i32 0, i32 28, i32 7
  %51 = load i8, ptr %50, align 4
  %52 = icmp ugt i8 %51, 4
  br i1 %52, label %53, label %58

53:                                               ; preds = %27
  %54 = or i32 %48, 655360
  switch i8 %51, label %58 [
    i8 6, label %55
    i8 9, label %55
  ]

55:                                               ; preds = %53, %53
  %56 = and i32 %54, -3145729
  %57 = or i32 %56, 2097152
  br label %58

58:                                               ; preds = %55, %53, %27
  %59 = phi i32 [ %57, %55 ], [ %49, %27 ], [ %54, %53 ]
  tail call void @mmci_write_clkreg(ptr noundef %0, i32 noundef %59) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mmci_sdmmc_set_pwrreg(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 28, i32 5
  %6 = load i8, ptr %5, align 2
  %7 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 26
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 15
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq ptr %8, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr %8, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %13, i32 0) #5, !srcloc !9
  br label %16

16:                                               ; preds = %15, %12, %2
  switch i8 %6, label %42 [
    i8 0, label %17
    i8 2, label %25
  ]

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 9
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 @reset_control_assert(ptr noundef %19) #5
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 429496) #5
  %22 = load ptr, ptr %18, align 4
  %23 = tail call i32 @reset_control_deassert(ptr noundef %22) #5
  %24 = or i32 %10, 2
  br label %40

25:                                               ; preds = %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %26 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 25
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.variant_data, ptr %27, i32 0, i32 25
  %29 = load i32, ptr %28, align 4
  %30 = or i32 %29, 255
  %31 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %32, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %30) #5, !srcloc !9
  %34 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 14
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, 12
  %37 = or i32 %36, %10
  tail call void @mmci_write_pwrreg(ptr noundef %0, i32 noundef %37) #5
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748000) #5
  %39 = or i32 %37, 3
  br label %40

40:                                               ; preds = %25, %17
  %41 = phi i32 [ %39, %25 ], [ %24, %17 ]
  tail call void @mmci_write_pwrreg(ptr noundef %0, i32 noundef %41) #5
  br label %42

42:                                               ; preds = %40, %16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @sdmmc_busy_complete(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 60
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !8
  %8 = getelementptr i8, ptr %5, i32 52
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !8
  %10 = and i32 %9, 2097152
  %11 = and i32 %9, 1048576
  %12 = and i32 %2, %1
  %13 = icmp eq i32 %12, 0
  %14 = icmp eq i32 %10, 0
  %15 = select i1 %13, i1 %14, i1 false
  %16 = icmp ne i32 %11, 0
  %17 = select i1 %15, i1 %16, i1 false
  %18 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 19
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %17, label %21, label %29

21:                                               ; preds = %3
  br i1 %20, label %22, label %43

22:                                               ; preds = %21
  %23 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 25
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.variant_data, ptr %24, i32 0, i32 22
  %26 = load i32, ptr %25, align 4
  %27 = or i32 %26, %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %27) #5, !srcloc !9
  %28 = and i32 %1, 192
  store i32 %28, ptr %18, align 4
  br label %43

29:                                               ; preds = %3
  br i1 %20, label %37, label %30

30:                                               ; preds = %29
  %31 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 25
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.variant_data, ptr %32, i32 0, i32 22
  %34 = load i32, ptr %33, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %7, %35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %36) #5, !srcloc !9
  store i32 0, ptr %18, align 4
  br label %37

37:                                               ; preds = %30, %29
  %38 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 25
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.variant_data, ptr %39, i32 0, i32 22
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr i8, ptr %5, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %41) #5, !srcloc !9
  br label %43

43:                                               ; preds = %37, %22, %21
  %44 = xor i1 %17, true
  ret i1 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdmmc_pre_sig_volt_vswitch(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 33554432) #5, !srcloc !9
  %5 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 14
  %6 = load i32, ptr %5, align 4
  %7 = or i32 %6, 8
  tail call void @mmci_write_pwrreg(ptr noundef %0, i32 noundef %7) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdmmc_post_sig_volt_switch(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 10
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #5
  %5 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 8
  %6 = load i8, ptr %5, align 1
  %7 = icmp eq i8 %6, 1
  br i1 %7, label %8, label %46

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 14
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %46, label %13

13:                                               ; preds = %8
  %14 = or i32 %10, 4
  tail call void @mmci_write_pwrreg(ptr noundef %0, i32 noundef %14) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #5
  %15 = tail call i64 @ktime_get() #5
  %16 = add i64 %15, 10000000
  %17 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 52
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #5, !srcloc !8
  %21 = and i32 %20, 33554432
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %30, %13
  %24 = tail call i64 @ktime_get() #5
  %25 = icmp sgt i64 %24, %16
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load ptr, ptr %17, align 4
  %28 = getelementptr i8, ptr %27, i32 52
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #5, !srcloc !8
  br label %36

30:                                               ; preds = %23
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #5
  %31 = load ptr, ptr %17, align 4
  %32 = getelementptr i8, ptr %31, i32 52
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #5, !srcloc !8
  %34 = and i32 %33, 33554432
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %23, label %36

36:                                               ; preds = %30, %26, %13
  %37 = phi i32 [ %29, %26 ], [ %20, %13 ], [ %33, %30 ]
  %38 = and i32 %37, 33554432
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i32 -110, i32 0
  %41 = load ptr, ptr %17, align 4
  %42 = getelementptr i8, ptr %41, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 100663296) #5, !srcloc !9
  %43 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #5
  %44 = load i32, ptr %9, align 4
  %45 = and i32 %44, -13
  tail call void @mmci_write_pwrreg(ptr noundef %0, i32 noundef %45) #5
  br label %46

46:                                               ; preds = %36, %8, %2
  %47 = phi i32 [ %40, %36 ], [ 0, %8 ], [ 0, %2 ]
  %48 = phi i32 [ %43, %36 ], [ %4, %8 ], [ %4, %2 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %48) #5
  ret i32 %47
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmci_write_clkreg(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmci_write_pwrreg(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_send_tuning(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
!8 = !{i64 5004468}
!9 = !{i64 5004050}
!10 = !{i32 0, i32 33}
!11 = !{i64 2153310895}
!12 = !{i64 2153316523}
