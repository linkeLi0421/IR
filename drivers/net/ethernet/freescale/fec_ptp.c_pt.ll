; ModuleID = '/llk/IR/drivers/net/ethernet/freescale/fec_ptp.c_pt.bc'
source_filename = "../drivers/net/ethernet/freescale/fec_ptp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ifreq = type { %union.anon.19, %union.anon.20 }
%union.anon.19 = type { [16 x i8] }
%union.anon.20 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.23 }
%union.anon.23 = type { i32 }
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
%struct.spinlock = type { %union.anon.22 }
%union.anon.22 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.timespec64 = type { i64, i32 }
%struct.ptp_clock_event = type { i32, i32, %union.anon.116 }
%union.anon.116 = type { %struct.pps_event_time }
%struct.pps_event_time = type { %struct.timespec64 }

@.str = private unnamed_addr constant [8 x i8] c"fec ptp\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"clk_ptp clock rate is zero\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"pps\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"request for pps irq failed(%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"ptp_clock_register failed\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fec_ptp_start_cyclecounter(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr i8, ptr %0, i32 2008
  %4 = load i32, ptr %3, align 8
  %5 = udiv i32 1000000000, %4
  %6 = getelementptr i8, ptr %0, i32 1928
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #10
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !8
  tail call void @arm_heavy_mb() #10
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr i8, ptr %8, i32 1044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %5) #10, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !10
  tail call void @arm_heavy_mb() #10
  %10 = load ptr, ptr %2, align 8
  %11 = getelementptr i8, ptr %10, i32 1036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 -2147483648) #10, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %12 = load ptr, ptr %2, align 8
  %13 = getelementptr i8, ptr %12, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 49) #10, !srcloc !9
  %14 = getelementptr i8, ptr %0, i32 1936
  store i64 0, ptr %14, align 8
  store ptr @fec_ptp_read, ptr %14, align 8
  %15 = getelementptr i8, ptr %0, i32 1944
  store i64 2147483647, ptr %15, align 8
  %16 = getelementptr i8, ptr %0, i32 1956
  store i32 31, ptr %16, align 4
  %17 = getelementptr i8, ptr %0, i32 1952
  store i32 -2147483648, ptr %17, align 8
  %18 = getelementptr i8, ptr %0, i32 1960
  tail call void @timecounter_init(ptr noundef %18, ptr noundef %14, i64 noundef 0) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @fec_ptp_read(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -528
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1024
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #10, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !13
  %6 = or i32 %5, 2048
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !14
  tail call void @arm_heavy_mb() #10
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr i8, ptr %7, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #10, !srcloc !9
  %9 = getelementptr i8, ptr %0, i32 -364
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 1024
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #10
  br label %15

15:                                               ; preds = %13, %1
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr i8, ptr %16, i32 1028
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #10, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !15
  %19 = zext i32 %18 to i64
  ret i64 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @timecounter_init(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @fec_ptp_disable_hwts(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  %2 = getelementptr i8, ptr %0, i32 2016
  store i32 0, ptr %2, align 8
  %3 = getelementptr i8, ptr %0, i32 2012
  store i32 0, ptr %3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fec_ptp_set(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.hwtstamp_config, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i32 12, i1 false), !annotation !16
  %4 = getelementptr inbounds %struct.ifreq, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %5, i32 12, i32 -1090519040) #11, !srcloc !17
  %7 = extractvalue { i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %17, !prof !18

9:                                                ; preds = %2
  %10 = tail call ptr @llvm.thread.pointer() #10
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #12, !srcloc !19
  %13 = and i32 %12, -13
  %14 = or i32 %13, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #10, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !21
  %15 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %5, i32 noundef 12) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #10, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !21
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17, !prof !18

17:                                               ; preds = %9, %2
  %18 = phi i32 [ %15, %9 ], [ 12, %2 ]
  %19 = sub i32 12, %18
  %20 = getelementptr i8, ptr %3, i32 %19
  call void @llvm.memset.p0.i32(ptr align 1 %20, i8 0, i32 %18, i1 false) #10
  br label %45

21:                                               ; preds = %9
  %22 = getelementptr inbounds %struct.hwtstamp_config, ptr %3, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp ult i32 %23, 2
  br i1 %24, label %25, label %45

25:                                               ; preds = %21
  %26 = getelementptr i8, ptr %0, i32 2016
  store i32 %23, ptr %26, align 8
  %27 = getelementptr inbounds %struct.hwtstamp_config, ptr %3, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  store i32 1, ptr %27, align 4
  br label %31

31:                                               ; preds = %30, %25
  %32 = phi i32 [ 1, %30 ], [ 0, %25 ]
  %33 = getelementptr i8, ptr %0, i32 2012
  store i32 %32, ptr %33, align 4
  %34 = load ptr, ptr %4, align 4
  %35 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %34, i32 12, i32 -1090519040) #11, !srcloc !22
  %36 = extractvalue { i32, i32 } %35, 0
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %31
  %39 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #12, !srcloc !19
  %40 = and i32 %39, -13
  %41 = or i32 %40, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %41) #10, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !21
  %42 = call i32 @arm_copy_to_user(ptr noundef %34, ptr noundef nonnull %3, i32 noundef 12) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %39) #10, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !21
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, i32 0, i32 -14
  br label %45

45:                                               ; preds = %38, %31, %21, %17
  %46 = phi i32 [ -34, %21 ], [ -14, %17 ], [ -14, %31 ], [ %44, %38 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fec_ptp_get(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.hwtstamp_config, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %4 = getelementptr i8, ptr %0, i32 2016
  store i32 0, ptr %3, align 4
  %5 = load i32, ptr %4, align 8
  %6 = icmp ne i32 %5, 0
  %7 = zext i1 %6 to i32
  %8 = getelementptr inbounds %struct.hwtstamp_config, ptr %3, i32 0, i32 1
  store i32 %7, ptr %8, align 4
  %9 = getelementptr i8, ptr %0, i32 2012
  %10 = load i32, ptr %9, align 4
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = getelementptr inbounds %struct.hwtstamp_config, ptr %3, i32 0, i32 2
  store i32 %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.ifreq, ptr %1, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %15, i32 12, i32 -1090519040) #11, !srcloc !22
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = tail call ptr @llvm.thread.pointer() #10
  %21 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %22 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %21) #12, !srcloc !19
  %23 = and i32 %22, -13
  %24 = or i32 %23, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #10, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !21
  %25 = call i32 @arm_copy_to_user(ptr noundef %15, ptr noundef nonnull %3, i32 noundef 12) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #10, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !21
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i32 0, i32 -14
  br label %28

28:                                               ; preds = %19, %2
  %29 = phi i32 [ -14, %2 ], [ %27, %19 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fec_ptp_init(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 1408
  %6 = getelementptr i8, ptr %4, i32 1816
  store ptr null, ptr %6, align 8
  %7 = getelementptr i8, ptr %4, i32 1820
  %8 = tail call i32 @strlcpy(ptr noundef %7, ptr noundef nonnull @.str, i32 noundef 32) #10
  %9 = getelementptr i8, ptr %4, i32 1852
  store i32 250000000, ptr %9, align 4
  %10 = getelementptr i8, ptr %4, i32 1856
  %11 = getelementptr i8, ptr %4, i32 1872
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  store i32 1, ptr %11, align 8
  %12 = getelementptr i8, ptr %4, i32 1884
  store ptr @fec_ptp_adjfreq, ptr %12, align 4
  %13 = getelementptr i8, ptr %4, i32 1892
  store ptr @fec_ptp_adjtime, ptr %13, align 4
  %14 = getelementptr i8, ptr %4, i32 1896
  store ptr @fec_ptp_gettime, ptr %14, align 8
  %15 = getelementptr i8, ptr %4, i32 1908
  store ptr @fec_ptp_settime, ptr %15, align 4
  %16 = getelementptr i8, ptr %4, i32 1912
  store ptr @fec_ptp_enable, ptr %16, align 8
  %17 = getelementptr i8, ptr %4, i32 1432
  %18 = load ptr, ptr %17, align 8
  %19 = tail call i32 @clk_get_rate(ptr noundef %18) #10
  %20 = getelementptr i8, ptr %4, i32 2008
  store i32 %19, ptr %20, align 8
  %21 = icmp eq i32 %19, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  store i32 1000000000, ptr %20, align 8
  %23 = getelementptr i8, ptr %4, i32 1504
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.platform_device, ptr %24, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.1) #13
  %26 = load i32, ptr %20, align 8
  br label %27

27:                                               ; preds = %22, %2
  %28 = phi i32 [ %26, %22 ], [ %19, %2 ]
  %29 = udiv i32 1000000000, %28
  %30 = getelementptr i8, ptr %4, i32 2152
  store i32 %29, ptr %30, align 8
  %31 = getelementptr i8, ptr %4, i32 1928
  store i32 0, ptr %31, align 8
  %32 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %31) #10
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !8
  tail call void @arm_heavy_mb() #10
  %33 = load ptr, ptr %5, align 8
  %34 = getelementptr i8, ptr %33, i32 1044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %29) #10, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !10
  tail call void @arm_heavy_mb() #10
  %35 = load ptr, ptr %5, align 8
  %36 = getelementptr i8, ptr %35, i32 1036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 -2147483648) #10, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %37 = load ptr, ptr %5, align 8
  %38 = getelementptr i8, ptr %37, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 49) #10, !srcloc !9
  %39 = getelementptr i8, ptr %4, i32 1936
  store i64 0, ptr %39, align 8
  store ptr @fec_ptp_read, ptr %39, align 8
  %40 = getelementptr i8, ptr %4, i32 1944
  store i64 2147483647, ptr %40, align 8
  %41 = getelementptr i8, ptr %4, i32 1956
  store i32 31, ptr %41, align 4
  %42 = getelementptr i8, ptr %4, i32 1952
  store i32 -2147483648, ptr %42, align 8
  %43 = getelementptr i8, ptr %4, i32 1960
  tail call void @timecounter_init(ptr noundef %43, ptr noundef %39, i64 noundef 0) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %31, i32 noundef %32) #10
  %44 = getelementptr i8, ptr %4, i32 2020
  store i32 -32, ptr %44, align 4
  %45 = getelementptr i8, ptr %4, i32 2024
  store volatile ptr %45, ptr %45, align 4
  %46 = getelementptr i8, ptr %4, i32 2028
  store ptr %45, ptr %46, align 4
  %47 = getelementptr i8, ptr %4, i32 2032
  store ptr @fec_time_keep, ptr %47, align 4
  %48 = getelementptr i8, ptr %4, i32 2036
  tail call void @init_timer_key(ptr noundef %48, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #10
  %49 = tail call i32 @platform_get_irq_byname_optional(ptr noundef %0, ptr noundef nonnull @.str.2) #10
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %27
  %52 = tail call i32 @platform_get_irq_optional(ptr noundef %0, i32 noundef %1) #10
  %53 = icmp sgt i32 %52, -1
  br i1 %53, label %54, label %61

54:                                               ; preds = %51, %27
  %55 = phi i32 [ %52, %51 ], [ %49, %27 ]
  %56 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %57 = load ptr, ptr %0, align 8
  %58 = tail call i32 @devm_request_threaded_irq(ptr noundef %56, i32 noundef %55, ptr noundef nonnull @fec_pps_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %57, ptr noundef %4) #10
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %56, ptr noundef nonnull @.str.3, i32 noundef %58) #13
  br label %61

61:                                               ; preds = %60, %54, %51
  %62 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %63 = tail call ptr @ptp_clock_register(ptr noundef %6, ptr noundef %62) #10
  %64 = getelementptr i8, ptr %4, i32 1812
  store ptr %63, ptr %64, align 4
  %65 = icmp ugt ptr %63, inttoptr (i32 -4096 to ptr)
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store ptr null, ptr %64, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.4) #13
  br label %67

67:                                               ; preds = %66, %61
  %68 = load ptr, ptr @system_wq, align 4
  %69 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %68, ptr noundef %44, i32 noundef 100) #10
  ret void
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fec_ptp_adjfreq(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -408
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %55, label %5

5:                                                ; preds = %2
  %6 = icmp slt i32 %1, 0
  %7 = tail call i32 @llvm.abs.i32(i32 %1, i1 false)
  %8 = sext i32 %7 to i64
  %9 = getelementptr i8, ptr %0, i32 336
  %10 = load i32, ptr %9, align 8
  %11 = zext i32 %10 to i64
  %12 = mul nsw i64 %11, %8
  %13 = icmp eq i32 %10, 0
  br i1 %13, label %32, label %14

14:                                               ; preds = %28, %5
  %15 = phi i32 [ %30, %28 ], [ 1, %5 ]
  %16 = phi i64 [ %29, %28 ], [ 1000000000, %5 ]
  %17 = icmp ult i64 %16, %12
  br i1 %17, label %28, label %18

18:                                               ; preds = %14
  %19 = trunc i64 %12 to i32
  %20 = icmp ult i64 %16, 4294967296
  br i1 %20, label %21, label %24, !prof !18

21:                                               ; preds = %18
  %22 = trunc i64 %16 to i32
  %23 = udiv i32 %22, %19
  br label %32

24:                                               ; preds = %18
  %25 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %19, i64 %16) #11, !srcloc !23
  %26 = extractvalue { i64, i64 } %25, 1
  %27 = trunc i64 %26 to i32
  br label %32

28:                                               ; preds = %14
  %29 = add i64 %16, 1000000000
  %30 = add i32 %15, 1
  %31 = icmp ugt i32 %30, %10
  br i1 %31, label %32, label %14

32:                                               ; preds = %28, %24, %21, %5
  %33 = phi i32 [ %15, %21 ], [ %15, %24 ], [ 0, %5 ], [ %10, %28 ]
  %34 = phi i32 [ %23, %21 ], [ %27, %24 ], [ 1, %5 ], [ 1, %28 ]
  %35 = sub i32 0, %33
  %36 = select i1 %6, i32 %35, i32 %33
  %37 = add i32 %36, %10
  %38 = getelementptr i8, ptr %0, i32 112
  %39 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %38) #10
  %40 = load ptr, ptr %3, align 8
  %41 = getelementptr i8, ptr %40, i32 1044
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #10, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !24
  %43 = and i32 %42, 127
  %44 = shl i32 %37, 8
  %45 = or i32 %43, %44
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !25
  tail call void @arm_heavy_mb() #10
  %46 = load ptr, ptr %3, align 8
  %47 = getelementptr i8, ptr %46, i32 1044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %45) #10, !srcloc !9
  %48 = icmp ugt i32 %34, 1
  %49 = sext i1 %48 to i32
  %50 = add i32 %34, %49
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !26
  tail call void @arm_heavy_mb() #10
  %51 = load ptr, ptr %3, align 8
  %52 = getelementptr i8, ptr %51, i32 1040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %50) #10, !srcloc !9
  %53 = getelementptr i8, ptr %0, i32 144
  %54 = tail call i64 @timecounter_read(ptr noundef %53) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %38, i32 noundef %39) #10
  br label %55

55:                                               ; preds = %32, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fec_ptp_adjtime(ptr noundef %0, i64 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 112
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #10
  %5 = getelementptr i8, ptr %0, i32 160
  %6 = load i64, ptr %5, align 8
  %7 = add i64 %6, %1
  store i64 %7, ptr %5, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fec_ptp_gettime(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca %struct.timespec64, align 8
  %4 = getelementptr i8, ptr %0, i32 -372
  tail call void @mutex_lock(ptr noundef %4) #10
  %5 = getelementptr i8, ptr %0, i32 -376
  %6 = load i8, ptr %5, align 8, !range !27
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void @mutex_unlock(ptr noundef %4) #10
  br label %14

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %0, i32 112
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #10
  %12 = getelementptr i8, ptr %0, i32 144
  %13 = tail call i64 @timecounter_read(ptr noundef %12) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #10
  tail call void @mutex_unlock(ptr noundef %4) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %3, i64 noundef %13) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  br label %14

14:                                               ; preds = %9, %8
  %15 = phi i32 [ 0, %9 ], [ -22, %8 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fec_ptp_settime(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -372
  tail call void @mutex_lock(ptr noundef %3) #10
  %4 = getelementptr i8, ptr %0, i32 -376
  %5 = load i8, ptr %4, align 8, !range !27
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %31, label %7

7:                                                ; preds = %2
  %8 = getelementptr i8, ptr %0, i32 -408
  %9 = load i64, ptr %1, align 8
  %10 = icmp sgt i64 %9, 9223372035
  br i1 %10, label %19, label %11

11:                                               ; preds = %7
  %12 = icmp slt i64 %9, -9223372035
  br i1 %12, label %19, label %13

13:                                               ; preds = %11
  %14 = mul nsw i64 %9, 1000000000
  %15 = getelementptr inbounds %struct.timespec64, ptr %1, i32 0, i32 1
  %16 = load i32, ptr %15, align 8
  %17 = sext i32 %16 to i64
  %18 = add i64 %14, %17
  br label %19

19:                                               ; preds = %13, %11, %7
  %20 = phi i64 [ %18, %13 ], [ 9223372036854775807, %7 ], [ -9223372036854775808, %11 ]
  %21 = getelementptr i8, ptr %0, i32 120
  %22 = getelementptr i8, ptr %0, i32 128
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, %20
  %25 = trunc i64 %24 to i32
  %26 = getelementptr i8, ptr %0, i32 112
  %27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %26) #10
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !28
  tail call void @arm_heavy_mb() #10
  %28 = load ptr, ptr %8, align 8
  %29 = getelementptr i8, ptr %28, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %25) #10, !srcloc !9
  %30 = getelementptr i8, ptr %0, i32 144
  tail call void @timecounter_init(ptr noundef %30, ptr noundef %21, i64 noundef %20) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %27) #10
  br label %31

31:                                               ; preds = %19, %2
  %32 = phi i32 [ 0, %19 ], [ -22, %2 ]
  tail call void @mutex_unlock(ptr noundef %3) #10
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fec_ptp_enable(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.timespec64, align 8
  %5 = load i32, ptr %1, align 8
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %112

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 -408
  %9 = getelementptr i8, ptr %0, i32 348
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, %2
  br i1 %11, label %112, label %12

12:                                               ; preds = %7
  %13 = getelementptr i8, ptr %0, i32 340
  store i32 0, ptr %13, align 4
  %14 = getelementptr i8, ptr %0, i32 344
  store i32 1000000000, ptr %14, align 8
  %15 = getelementptr i8, ptr %0, i32 112
  %16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %15) #10
  %17 = icmp eq i32 %2, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #10
  tail call void @arm_heavy_mb() #10
  %18 = load ptr, ptr %8, align 8
  %19 = load i32, ptr %13, align 4
  %20 = shl i32 %19, 3
  %21 = add i32 %20, 1544
  %22 = getelementptr i8, ptr %18, i32 %21
  br i1 %17, label %110, label %23

23:                                               ; preds = %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 128) #10, !srcloc !9
  %24 = load ptr, ptr %8, align 8
  %25 = load i32, ptr %13, align 4
  %26 = shl i32 %25, 3
  %27 = add i32 %26, 1544
  %28 = getelementptr i8, ptr %24, i32 %27
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #10, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !29
  br label %30

30:                                               ; preds = %30, %23
  %31 = phi i32 [ %29, %23 ], [ %43, %30 ]
  %32 = and i32 %31, -61
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !30
  tail call void @arm_heavy_mb() #10
  %33 = load ptr, ptr %8, align 8
  %34 = load i32, ptr %13, align 4
  %35 = shl i32 %34, 3
  %36 = add i32 %35, 1544
  %37 = getelementptr i8, ptr %33, i32 %36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %32) #10, !srcloc !9
  %38 = load ptr, ptr %8, align 8
  %39 = load i32, ptr %13, align 4
  %40 = shl i32 %39, 3
  %41 = add i32 %40, 1544
  %42 = getelementptr i8, ptr %38, i32 %41
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #10, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !31
  %44 = and i32 %43, 60
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %30

46:                                               ; preds = %30
  %47 = getelementptr i8, ptr %0, i32 144
  %48 = tail call i64 @timecounter_read(ptr noundef %47) #10
  %49 = load ptr, ptr %8, align 8
  %50 = getelementptr i8, ptr %49, i32 1024
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #10, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !32
  %52 = or i32 %51, 2048
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !33
  tail call void @arm_heavy_mb() #10
  %53 = load ptr, ptr %8, align 8
  %54 = getelementptr i8, ptr %53, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %52) #10, !srcloc !9
  %55 = load ptr, ptr %8, align 8
  %56 = getelementptr i8, ptr %55, i32 1028
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #10, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !34
  %58 = zext i32 %57 to i64
  %59 = tail call i64 @timecounter_cyc2time(ptr noundef %47, i64 noundef %58) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %4, i64 noundef %59) #10
  %60 = getelementptr inbounds i8, ptr %4, i32 8
  %61 = load i32, ptr %60, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  %62 = add i32 %57, 2000000000
  %63 = sub i32 %62, %61
  %64 = getelementptr i8, ptr %0, i32 128
  %65 = load i64, ptr %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = and i32 %63, %66
  call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !35
  call void @arm_heavy_mb() #10
  %68 = load ptr, ptr %8, align 8
  %69 = load i32, ptr %13, align 4
  %70 = shl i32 %69, 3
  %71 = add i32 %70, 1548
  %72 = getelementptr i8, ptr %68, i32 %71
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %67) #10, !srcloc !9
  %73 = load i32, ptr %14, align 8
  %74 = add i32 %73, %67
  %75 = load i64, ptr %64, align 8
  %76 = trunc i64 %75 to i32
  %77 = and i32 %74, %76
  %78 = getelementptr i8, ptr %0, i32 352
  store i32 %77, ptr %78, align 8
  %79 = load ptr, ptr %8, align 8
  %80 = getelementptr i8, ptr %79, i32 1024
  %81 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %80) #10, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !36
  %82 = or i32 %81, 128
  call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !37
  call void @arm_heavy_mb() #10
  %83 = load ptr, ptr %8, align 8
  %84 = getelementptr i8, ptr %83, i32 1024
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %82) #10, !srcloc !9
  %85 = load ptr, ptr %8, align 8
  %86 = load i32, ptr %13, align 4
  %87 = shl i32 %86, 3
  %88 = add i32 %87, 1544
  %89 = getelementptr i8, ptr %85, i32 %88
  %90 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #10, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !38
  %91 = and i32 %90, -254
  %92 = or i32 %91, 252
  call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !39
  call void @arm_heavy_mb() #10
  %93 = load ptr, ptr %8, align 8
  %94 = load i32, ptr %13, align 4
  %95 = shl i32 %94, 3
  %96 = add i32 %95, 1544
  %97 = getelementptr i8, ptr %93, i32 %96
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 %92) #10, !srcloc !9
  call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !40
  call void @arm_heavy_mb() #10
  %98 = load i32, ptr %78, align 8
  %99 = load ptr, ptr %8, align 8
  %100 = load i32, ptr %13, align 4
  %101 = shl i32 %100, 3
  %102 = add i32 %101, 1548
  %103 = getelementptr i8, ptr %99, i32 %102
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 %98) #10, !srcloc !9
  %104 = load i32, ptr %78, align 8
  %105 = load i32, ptr %14, align 8
  %106 = add i32 %105, %104
  %107 = load i64, ptr %64, align 8
  %108 = trunc i64 %107 to i32
  %109 = and i32 %106, %108
  store i32 %109, ptr %78, align 8
  br label %111

110:                                              ; preds = %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 0) #10, !srcloc !9
  br label %111

111:                                              ; preds = %110, %46
  store i32 %2, ptr %9, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %16) #10
  br label %112

112:                                              ; preds = %111, %7, %3
  %113 = phi i32 [ -95, %3 ], [ 0, %7 ], [ 0, %111 ]
  ret i32 %113
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fec_time_keep(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -576
  tail call void @mutex_lock(ptr noundef %2) #10
  %3 = getelementptr i8, ptr %0, i32 -580
  %4 = load i8, ptr %3, align 8, !range !27
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 -92
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #10
  %9 = getelementptr i8, ptr %0, i32 -60
  %10 = tail call i64 @timecounter_read(ptr noundef %9) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #10
  br label %11

11:                                               ; preds = %6, %1
  tail call void @mutex_unlock(ptr noundef %2) #10
  %12 = load ptr, ptr @system_wq, align 4
  %13 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %12, ptr noundef %0, i32 noundef 100) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname_optional(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fec_pps_interrupt(i32 noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca %struct.ptp_clock_event, align 8
  %4 = getelementptr i8, ptr %1, i32 1408
  %5 = getelementptr i8, ptr %1, i32 2156
  %6 = load i32, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !16
  %7 = load ptr, ptr %4, align 8
  %8 = shl i32 %6, 3
  %9 = and i32 %8, 2040
  %10 = add nuw nsw i32 %9, 1544
  %11 = getelementptr i8, ptr %7, i32 %10
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #10, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !41
  %13 = and i32 %12, 128
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %40, label %15

15:                                               ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !42
  tail call void @arm_heavy_mb() #10
  %16 = getelementptr i8, ptr %1, i32 2168
  %17 = load i32, ptr %16, align 8
  %18 = load ptr, ptr %4, align 8
  %19 = add nuw nsw i32 %9, 1548
  %20 = getelementptr i8, ptr %18, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %17) #10, !srcloc !9
  br label %21

21:                                               ; preds = %21, %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !43
  tail call void @arm_heavy_mb() #10
  %22 = load ptr, ptr %4, align 8
  %23 = getelementptr i8, ptr %22, i32 %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %12) #10, !srcloc !9
  %24 = load ptr, ptr %4, align 8
  %25 = getelementptr i8, ptr %24, i32 %10
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #10, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !44
  %27 = and i32 %26, 128
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %21

29:                                               ; preds = %21
  %30 = load i32, ptr %16, align 8
  %31 = getelementptr i8, ptr %1, i32 2160
  %32 = load i32, ptr %31, align 8
  %33 = add i32 %32, %30
  %34 = getelementptr i8, ptr %1, i32 1944
  %35 = load i64, ptr %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = and i32 %33, %36
  store i32 %37, ptr %16, align 8
  store i32 2, ptr %3, align 8
  %38 = getelementptr i8, ptr %1, i32 1812
  %39 = load ptr, ptr %38, align 4
  call void @ptp_clock_event(ptr noundef %39, ptr noundef nonnull %3) #10
  br label %40

40:                                               ; preds = %29, %2
  %41 = phi i32 [ 1, %29 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #10
  ret i32 %41
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ptp_clock_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fec_ptp_stop(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 2020
  %5 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %4) #10
  %6 = getelementptr i8, ptr %3, i32 1812
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = tail call i32 @ptp_clock_unregister(ptr noundef nonnull %7) #10
  br label %11

11:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @timecounter_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @timecounter_cyc2time(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ptp_clock_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind readonly }
attributes #13 = { cold nounwind }

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
!8 = !{i64 2155855820}
!9 = !{i64 4906708}
!10 = !{i64 2155856164}
!11 = !{i64 2155856536}
!12 = !{i64 4907126}
!13 = !{i64 2155854035}
!14 = !{i64 2155854240}
!15 = !{i64 2155855259}
!16 = !{!"auto-init"}
!17 = !{i64 2150985108, i64 2150985133}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{i64 3481220}
!20 = !{i64 3481417}
!21 = !{i64 2150966696}
!22 = !{i64 2150985686, i64 2150985711}
!23 = !{i64 2147906126, i64 2147906406, i64 2147906740, i64 2147907074}
!24 = !{i64 2155859460}
!25 = !{i64 2155859663}
!26 = !{i64 2155859989}
!27 = !{i8 0, i8 2}
!28 = !{i64 2155865129}
!29 = !{i64 2155847816}
!30 = !{i64 2155848075}
!31 = !{i64 2155848682}
!32 = !{i64 2155849030}
!33 = !{i64 2155849235}
!34 = !{i64 2155849708}
!35 = !{i64 2155849980}
!36 = !{i64 2155850473}
!37 = !{i64 2155850674}
!38 = !{i64 2155851253}
!39 = !{i64 2155851525}
!40 = !{i64 2155851943}
!41 = !{i64 2155868624}
!42 = !{i64 2155868879}
!43 = !{i64 2155869284}
!44 = !{i64 2155869846}
