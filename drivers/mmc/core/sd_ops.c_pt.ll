; ModuleID = '/llk/IR/drivers/mmc/core/sd_ops.c_pt.bc'
source_filename = "../drivers/mmc/core/sd_ops.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_app_cmd:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_app_cmd\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_app_cmd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.mmc_card = type { ptr, %struct.device, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i8, [4 x i32], [4 x i32], [2 x i32], [16 x i32], %struct.mmc_cid, %struct.mmc_csd, %struct.mmc_ext_csd, %struct.sd_scr, %struct.sd_ssr, %struct.sd_switch_caps, %struct.sd_ext_reg, %struct.sd_ext_reg, i32, %struct.atomic_t, %struct.sdio_cccr, %struct.sdio_cis, [7 x ptr], ptr, i8, i8, i32, ptr, ptr, i32, i32, i32, ptr, [7 x %struct.mmc_part], i32, ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mmc_cid = type { i32, [8 x i8], i8, i32, i16, i16, i8, i8, i8 }
%struct.mmc_csd = type { i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.mmc_ext_csd = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i8, i8, i32, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, i8, i32 }
%struct.sd_scr = type { i8, i8, i8, i8, i8, i8 }
%struct.sd_ssr = type { i32, i32, i32 }
%struct.sd_switch_caps = type { i32, i32, i32, i32, i32 }
%struct.sd_ext_reg = type { i8, i8, i16, i8, i8, i8 }
%struct.atomic_t = type { i32 }
%struct.sdio_cccr = type { i32, i32, i8 }
%struct.sdio_cis = type { i16, i16, i16, i32 }
%struct.mmc_part = type { i64, i32, [20 x i8], i8, i32 }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, [37 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mmc_supply = type { ptr, ptr }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32 }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"drivers/mmc/core/sd_ops.c\00", align 1
@__kstrtab_mmc_app_cmd = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_app_cmd = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_app_cmd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_app_cmd to i32), ptr @__kstrtab_mmc_app_cmd, ptr @__kstrtabns_mmc_app_cmd }, section "___ksymtab_gpl+mmc_app_cmd", align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"\013%s: card never left busy state\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_mmc_app_cmd], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_app_cmd(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = alloca %struct.mmc_command, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %3, i8 0, i32 48, i1 false)
  %4 = icmp eq ptr %1, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %1, align 8
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %9, label %8, !prof !8

8:                                                ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 27, i32 noundef 9, ptr noundef null) #7
  br label %31

9:                                                ; preds = %5
  store i32 55, ptr %3, align 4
  %10 = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = shl i32 %11, 16
  %13 = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 1
  store i32 %12, ptr %13, align 4
  br label %15

14:                                               ; preds = %2
  store i32 55, ptr %3, align 4
  br label %15

15:                                               ; preds = %14, %9
  %16 = phi i32 [ 245, %14 ], [ 149, %9 ]
  %17 = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 3
  store i32 %16, ptr %17, align 4
  %18 = call i32 @mmc_wait_for_cmd(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 0) #7
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 16
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25, %20
  br label %31

31:                                               ; preds = %30, %25, %15, %8
  %32 = phi i32 [ -22, %8 ], [ 0, %30 ], [ %18, %15 ], [ -95, %25 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #7
  ret i32 %32
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_wait_for_cmd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_app_set_bus_width(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.mmc_command, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #7
  %4 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %4, i8 0, i32 44, i1 false)
  store i32 6, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 3
  store i32 21, ptr %5, align 4
  switch i32 %1, label %11 [
    i32 0, label %8
    i32 2, label %6
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 1
  store i32 2, ptr %7, align 4
  br label %8

8:                                                ; preds = %6, %2
  %9 = load ptr, ptr %0, align 8
  %10 = call fastcc i32 @mmc_wait_for_app_cmd(ptr noundef %9, ptr noundef %0, ptr noundef nonnull %3)
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi i32 [ %10, %8 ], [ -22, %2 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #7
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mmc_wait_for_app_cmd(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.mmc_command, align 4
  %5 = alloca %struct.mmc_request, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %5) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %5, i8 0, i32 68, i1 false)
  %6 = getelementptr inbounds %struct.mmc_command, ptr %2, i32 0, i32 2
  %7 = icmp eq ptr %1, null
  %8 = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 3
  %9 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 1
  %10 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 3
  %11 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %12 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 2
  %13 = getelementptr inbounds %struct.mmc_command, ptr %2, i32 0, i32 4
  %14 = getelementptr inbounds %struct.mmc_request, ptr %5, i32 0, i32 1
  %15 = getelementptr inbounds %struct.mmc_command, ptr %2, i32 0, i32 7
  %16 = getelementptr inbounds %struct.mmc_command, ptr %2, i32 0, i32 5
  br label %17

17:                                               ; preds = %59, %3
  %18 = phi i32 [ 0, %3 ], [ %61, %59 ]
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %4, i8 0, i32 48, i1 false) #7
  br i1 %7, label %26, label %19

19:                                               ; preds = %17
  %20 = load ptr, ptr %1, align 8
  %21 = icmp eq ptr %20, %0
  br i1 %21, label %23, label %22, !prof !8

22:                                               ; preds = %19
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 27, i32 noundef 9, ptr noundef null) #7
  br label %39

23:                                               ; preds = %19
  store i32 55, ptr %4, align 4
  %24 = load i32, ptr %8, align 4
  %25 = shl i32 %24, 16
  store i32 %25, ptr %9, align 4
  br label %27

26:                                               ; preds = %17
  store i32 55, ptr %4, align 4
  br label %27

27:                                               ; preds = %26, %23
  %28 = phi i32 [ 245, %26 ], [ 149, %23 ]
  store i32 %28, ptr %10, align 4
  %29 = call i32 @mmc_wait_for_cmd(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 0) #7
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load i32, ptr %11, align 8
  %33 = and i32 %32, 16
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %31
  %36 = load i32, ptr %12, align 4
  %37 = and i32 %36, 32
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %35, %27, %22
  %40 = phi i32 [ -95, %35 ], [ %29, %27 ], [ -22, %22 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #7
  %41 = load i32, ptr %11, align 8
  %42 = and i32 %41, 16
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %59, label %44

44:                                               ; preds = %39
  %45 = load i32, ptr %6, align 4
  %46 = and i32 %45, 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %59, label %63

48:                                               ; preds = %35, %31
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %5, i8 0, i32 68, i1 false)
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %6, i8 0, i32 16, i1 false)
  store i32 0, ptr %13, align 4
  store ptr %2, ptr %14, align 4
  store ptr null, ptr %15, align 4
  call void @mmc_wait_for_req(ptr noundef %0, ptr noundef nonnull %5) #7
  %49 = load i32, ptr %16, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %63, label %51

51:                                               ; preds = %48
  %52 = load i32, ptr %11, align 8
  %53 = and i32 %52, 16
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i32, ptr %6, align 4
  %57 = and i32 %56, 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55, %51, %44, %39
  %60 = phi i32 [ %40, %44 ], [ %40, %39 ], [ %49, %55 ], [ %49, %51 ]
  %61 = add nuw nsw i32 %18, 1
  %62 = icmp eq i32 %61, 4
  br i1 %62, label %63, label %17

63:                                               ; preds = %59, %55, %48, %44
  %64 = phi i32 [ %40, %44 ], [ %49, %55 ], [ 0, %48 ], [ %60, %59 ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %5) #7
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_send_app_op_cond(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.mmc_command, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #7
  %5 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %5, i8 0, i32 40, i1 false)
  store i32 41, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 16
  %9 = icmp eq i32 %8, 0
  %10 = and i32 %1, 1073741824
  %11 = select i1 %9, i32 %1, i32 %10
  %12 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 1
  store i32 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 3
  store i32 225, ptr %13, align 4
  %14 = icmp eq i32 %1, 0
  %15 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 2
  br label %16

16:                                               ; preds = %31, %3
  %17 = phi i32 [ 100, %3 ], [ %32, %31 ]
  %18 = call fastcc i32 @mmc_wait_for_app_cmd(ptr noundef %0, ptr noundef null, ptr noundef nonnull %4)
  %19 = icmp ne i32 %18, 0
  %20 = or i1 %14, %19
  br i1 %20, label %44, label %21

21:                                               ; preds = %16
  %22 = load i32, ptr %6, align 8
  %23 = and i32 %22, 16
  %24 = icmp eq i32 %23, 0
  %25 = load i32, ptr %15, align 4
  br i1 %24, label %29, label %26

26:                                               ; preds = %21
  %27 = and i32 %25, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %44, label %31

29:                                               ; preds = %21
  %30 = icmp sgt i32 %25, -1
  br i1 %30, label %31, label %44

31:                                               ; preds = %29, %26
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 12500, i32 noundef 2) #7
  %32 = add nsw i32 %17, -1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %16

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  br label %41

41:                                               ; preds = %38, %34
  %42 = phi ptr [ %40, %38 ], [ %36, %34 ]
  %43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %42) #8
  br label %44

44:                                               ; preds = %41, %29, %26, %16
  %45 = phi i32 [ -110, %41 ], [ %18, %16 ], [ 0, %26 ], [ 0, %29 ]
  %46 = icmp eq ptr %2, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %44
  %48 = load i32, ptr %6, align 8
  %49 = and i32 %48, 16
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, ptr %15, align 4
  store i32 %52, ptr %2, align 4
  br label %53

53:                                               ; preds = %51, %47, %44
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #7
  ret i32 %45
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_send_if_cond(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.mmc_command, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #7
  %4 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %4, i8 0, i32 40, i1 false) #7
  store i32 8, ptr %3, align 4
  %5 = and i32 %1, 16744448
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i32 170, i32 426
  %8 = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 1
  store i32 %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 3
  store i32 757, ptr %9, align 4
  %10 = call i32 @mmc_wait_for_cmd(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 0) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 16
  %16 = icmp eq i32 %15, 0
  %17 = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 2, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = load i32, ptr %4, align 4
  %20 = select i1 %16, i32 %19, i32 %18
  %21 = and i32 %20, 255
  %22 = icmp eq i32 %21, 170
  %23 = select i1 %22, i32 0, i32 -5
  br label %24

24:                                               ; preds = %12, %2
  %25 = phi i32 [ %10, %2 ], [ %23, %12 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #7
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_send_if_cond_pcie(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.mmc_command, align 4
  %4 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 17
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 128
  %7 = icmp eq i32 %6, 0
  %8 = and i32 %5, 256
  %9 = icmp eq i32 %8, 0
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #7
  %10 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %10, i8 0, i32 40, i1 false) #7
  store i32 8, ptr %3, align 4
  %11 = and i32 %1, 16744448
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %9, i32 4096, i32 12288
  %14 = select i1 %7, i32 0, i32 %13
  %15 = select i1 %12, i32 170, i32 426
  %16 = or i32 %15, %14
  %17 = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 1
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 3
  store i32 757, ptr %18, align 4
  %19 = call i32 @mmc_wait_for_cmd(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 0) #7
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 16
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 2, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = load i32, ptr %10, align 4
  %29 = select i1 %25, i32 %28, i32 %27
  %30 = and i32 %29, 255
  %31 = icmp eq i32 %30, 170
  br i1 %31, label %33, label %32

32:                                               ; preds = %21, %2
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #7
  br label %48

33:                                               ; preds = %21
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #7
  %34 = and i32 %28, 12288
  %35 = xor i1 %7, true
  %36 = icmp ne i32 %34, 0
  %37 = select i1 %35, i1 %36, i1 false
  br i1 %37, label %38, label %48

38:                                               ; preds = %33
  %39 = icmp eq i32 %34, 12288
  %40 = select i1 %39, i8 12, i8 11
  %41 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 28, i32 7
  store i8 %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.mmc_host_ops, ptr %43, i32 0, i32 23
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 28
  %47 = call i32 %45(ptr noundef %0, ptr noundef %46) #7
  br label %48

48:                                               ; preds = %38, %33, %32
  %49 = phi i32 [ %47, %38 ], [ 0, %33 ], [ 0, %32 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_send_relative_addr(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.mmc_command, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #7
  %4 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %4, i8 0, i32 40, i1 false)
  store i32 3, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 1
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 3
  store i32 117, ptr %6, align 4
  %7 = call i32 @mmc_wait_for_cmd(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 3) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = lshr i32 %11, 16
  store i32 %12, ptr %1, align 4
  br label %13

13:                                               ; preds = %9, %2
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #7
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_app_send_scr(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.mmc_command, align 4
  %3 = alloca %struct.mmc_request, align 4
  %4 = alloca %struct.mmc_command, align 4
  %5 = alloca %struct.mmc_data, align 4
  %6 = alloca %struct.scatterlist, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %3, i8 0, i32 68, i1 false)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #7
  %7 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %7, i8 0, i32 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %5, i8 0, i32 56, i1 false)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %6, i8 0, i32 20, i1 false), !annotation !9
  %8 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %2, i8 0, i32 48, i1 false) #7
  %9 = icmp eq ptr %0, null
  store i32 55, ptr %2, align 4
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = shl i32 %12, 16
  %14 = getelementptr inbounds %struct.mmc_command, ptr %2, i32 0, i32 1
  store i32 %13, ptr %14, align 4
  br label %15

15:                                               ; preds = %10, %1
  %16 = phi i32 [ 149, %10 ], [ 245, %1 ]
  %17 = getelementptr inbounds %struct.mmc_command, ptr %2, i32 0, i32 3
  store i32 %16, ptr %17, align 4
  %18 = call i32 @mmc_wait_for_cmd(ptr noundef %8, ptr noundef nonnull %2, i32 noundef 0) #7
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.mmc_host, ptr %8, i32 0, i32 16
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 16
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.mmc_command, ptr %2, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25, %15
  %31 = phi i32 [ -95, %25 ], [ %18, %15 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #7
  br label %60

32:                                               ; preds = %25, %20
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #7
  %33 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %34 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 3264, i32 noundef 8) #9
  %35 = icmp eq ptr %34, null
  br i1 %35, label %60, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.mmc_request, ptr %3, i32 0, i32 1
  store ptr %4, ptr %37, align 4
  %38 = getelementptr inbounds %struct.mmc_request, ptr %3, i32 0, i32 2
  store ptr %5, ptr %38, align 4
  store i32 51, ptr %4, align 4
  %39 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 1
  store i32 0, ptr %39, align 4
  %40 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 3
  store i32 181, ptr %40, align 4
  %41 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 2
  store i32 8, ptr %41, align 4
  %42 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 3
  store i32 1, ptr %42, align 4
  %43 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 6
  store i32 512, ptr %43, align 4
  %44 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 12
  store ptr %6, ptr %44, align 4
  %45 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 10
  store i32 1, ptr %45, align 4
  call void @sg_init_one(ptr noundef nonnull %6, ptr noundef nonnull %34, i32 noundef 8) #7
  call void @mmc_set_data_timeout(ptr noundef nonnull %5, ptr noundef %0) #7
  %46 = load ptr, ptr %0, align 8
  call void @mmc_wait_for_req(ptr noundef %46, ptr noundef nonnull %3) #7
  %47 = load i32, ptr %34, align 8
  %48 = call i32 @llvm.bswap.i32(i32 %47)
  %49 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 17
  store i32 %48, ptr %49, align 4
  %50 = getelementptr i32, ptr %34, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = call i32 @llvm.bswap.i32(i32 %51)
  %53 = getelementptr %struct.mmc_card, ptr %0, i32 0, i32 17, i32 1
  store i32 %52, ptr %53, align 4
  call void @kfree(ptr noundef nonnull %34) #7
  %54 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 5
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %36
  %58 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 5
  %59 = load i32, ptr %58, align 4
  br label %60

60:                                               ; preds = %57, %36, %32, %30
  %61 = phi i32 [ -12, %32 ], [ %55, %36 ], [ %59, %57 ], [ %31, %30 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %3) #7
  ret i32 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_set_data_timeout(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_wait_for_req(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_sd_switch(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = icmp eq i32 %1, 0
  %7 = and i8 %3, 15
  %8 = select i1 %6, i32 16777215, i32 -2130706433
  %9 = shl i32 %2, 2
  %10 = shl i32 15, %9
  %11 = xor i32 %10, -1
  %12 = and i32 %8, %11
  %13 = zext i8 %7 to i32
  %14 = shl i32 %13, %9
  %15 = or i32 %14, %12
  %16 = load ptr, ptr %0, align 8
  %17 = tail call i32 @mmc_send_adtc_data(ptr noundef %0, ptr noundef %16, i32 noundef 6, i32 noundef %15, ptr noundef %4, i32 noundef 64) #7
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_send_adtc_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_app_sd_status(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.mmc_command, align 4
  %4 = alloca %struct.mmc_request, align 4
  %5 = alloca %struct.mmc_command, align 4
  %6 = alloca %struct.mmc_data, align 4
  %7 = alloca %struct.scatterlist, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %4, i8 0, i32 68, i1 false)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #7
  %8 = getelementptr inbounds i8, ptr %5, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %8, i8 0, i32 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %6, i8 0, i32 56, i1 false)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %7) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %7, i8 0, i32 20, i1 false), !annotation !9
  %9 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %3, i8 0, i32 48, i1 false) #7
  %10 = icmp eq ptr %0, null
  store i32 55, ptr %3, align 4
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = shl i32 %13, 16
  %15 = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 1
  store i32 %14, ptr %15, align 4
  br label %16

16:                                               ; preds = %11, %2
  %17 = phi i32 [ 149, %11 ], [ 245, %2 ]
  %18 = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 3
  store i32 %17, ptr %18, align 4
  %19 = call i32 @mmc_wait_for_cmd(ptr noundef %9, ptr noundef nonnull %3, i32 noundef 0) #7
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.mmc_host, ptr %9, i32 0, i32 16
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 16
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26, %16
  %32 = phi i32 [ -95, %26 ], [ %19, %16 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #7
  br label %50

33:                                               ; preds = %26, %21
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #7
  %34 = getelementptr inbounds %struct.mmc_request, ptr %4, i32 0, i32 1
  store ptr %5, ptr %34, align 4
  %35 = getelementptr inbounds %struct.mmc_request, ptr %4, i32 0, i32 2
  store ptr %6, ptr %35, align 4
  store i32 13, ptr %5, align 4
  %36 = getelementptr inbounds %struct.mmc_command, ptr %5, i32 0, i32 1
  store i32 0, ptr %36, align 4
  %37 = getelementptr inbounds %struct.mmc_command, ptr %5, i32 0, i32 3
  store i32 437, ptr %37, align 4
  %38 = getelementptr inbounds %struct.mmc_data, ptr %6, i32 0, i32 2
  store i32 64, ptr %38, align 4
  %39 = getelementptr inbounds %struct.mmc_data, ptr %6, i32 0, i32 3
  store i32 1, ptr %39, align 4
  %40 = getelementptr inbounds %struct.mmc_data, ptr %6, i32 0, i32 6
  store i32 512, ptr %40, align 4
  %41 = getelementptr inbounds %struct.mmc_data, ptr %6, i32 0, i32 12
  store ptr %7, ptr %41, align 4
  %42 = getelementptr inbounds %struct.mmc_data, ptr %6, i32 0, i32 10
  store i32 1, ptr %42, align 4
  call void @sg_init_one(ptr noundef nonnull %7, ptr noundef %1, i32 noundef 64) #7
  call void @mmc_set_data_timeout(ptr noundef nonnull %6, ptr noundef %0) #7
  %43 = load ptr, ptr %0, align 8
  call void @mmc_wait_for_req(ptr noundef %43, ptr noundef nonnull %4) #7
  %44 = getelementptr inbounds %struct.mmc_command, ptr %5, i32 0, i32 5
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %33
  %48 = getelementptr inbounds %struct.mmc_data, ptr %6, i32 0, i32 5
  %49 = load i32, ptr %48, align 4
  br label %50

50:                                               ; preds = %47, %33, %31
  %51 = phi i32 [ %45, %33 ], [ %49, %47 ], [ %32, %31 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %4) #7
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{!"auto-init"}
