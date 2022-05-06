; ModuleID = '/llk/IR/drivers/ptp/ptp_dte.c_pt.bc'
source_filename = "../drivers/ptp/ptp_dte.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.ptp_dte = type { ptr, ptr, %struct.ptp_clock_info, ptr, i32, i32, %struct.spinlock, [4 x i32] }
%struct.timespec64 = type { i64, i32 }

@__initcall__kmod_ptp_dte__263_343_ptp_dte_driver_init6 = internal global ptr @ptp_dte_driver_init, section ".initcall6.init", align 4
@ptp_dte_driver = internal global %struct.platform_driver { ptr @ptp_dte_probe, ptr @ptp_dte_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ptp_dte_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ptp_dte_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_ptp_dte_driver_exit = internal global ptr @ptp_dte_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author264 = internal constant [24 x i8] c"ptp_dte.author=Broadcom\00", section ".modinfo", align 1
@__UNIQUE_ID_description265 = internal constant [50 x i8] c"ptp_dte.description=Broadcom DTE PTP Clock driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file266 = internal constant [33 x i8] c"ptp_dte.file=drivers/ptp/ptp_dte\00", section ".modinfo", align 1
@__UNIQUE_ID_license267 = internal constant [23 x i8] c"ptp_dte.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [8 x i8] c"ptp-dte\00", align 1
@ptp_dte_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,ptp-dte\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@ptp_dte_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @ptp_dte_suspend, ptr @ptp_dte_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@ptp_dte_caps = internal unnamed_addr constant %struct.ptp_clock_info { ptr null, [32 x i8] c"DTE PTP timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 50000000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr @ptp_dte_adjfreq, ptr null, ptr @ptp_dte_adjtime, ptr @ptp_dte_gettime, ptr null, ptr null, ptr @ptp_dte_settime, ptr @ptp_dte_enable, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"%s: Failed to register ptp clock\0A\00", align 1
@__func__.ptp_dte_probe = private unnamed_addr constant [14 x i8] c"ptp_dte_probe\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"ptp clk probe done\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"ppb adj too big\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author264, ptr @__UNIQUE_ID_description265, ptr @__UNIQUE_ID_file266, ptr @__UNIQUE_ID_license267, ptr @__exitcall_ptp_dte_driver_exit, ptr @__initcall__kmod_ptp_dte__263_343_ptp_dte_driver_init6, ptr @ptp_dte_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ptp_dte_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ptp_dte_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @ptp_dte_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @ptp_dte_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ptp_dte_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 148, i32 noundef 3520) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #7
  store ptr %6, ptr %3, align 4
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = ptrtoint ptr %6 to i32
  br label %22

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.ptp_dte, ptr %3, i32 0, i32 6
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.ptp_dte, ptr %3, i32 0, i32 3
  store ptr %2, ptr %12, align 4
  %13 = getelementptr inbounds %struct.ptp_dte, ptr %3, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(108) %13, ptr noundef nonnull align 4 dereferenceable(108) @ptp_dte_caps, i32 108, i1 false)
  %14 = tail call ptr @ptp_clock_register(ptr noundef %13, ptr noundef %2) #7
  %15 = getelementptr inbounds %struct.ptp_dte, ptr %3, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  %16 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ptp_dte_probe) #8
  %18 = load ptr, ptr %15, align 4
  %19 = ptrtoint ptr %18 to i32
  br label %22

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %21, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.2) #8
  br label %22

22:                                               ; preds = %20, %17, %8, %1
  %23 = phi i32 [ %9, %8 ], [ %19, %17 ], [ 0, %20 ], [ -12, %1 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ptp_dte_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ptp_dte, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @ptp_clock_unregister(ptr noundef %5) #7
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  %7 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr i8, ptr %10, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 0) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr i8, ptr %12, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 0) #7, !srcloc !9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ptp_clock_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ptp_dte_adjfreq(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = icmp slt i32 %1, 0
  %5 = sub i32 0, %1
  %6 = select i1 %4, i32 %5, i32 %1
  %7 = getelementptr inbounds %struct.ptp_clock_info, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = icmp sgt i32 %6, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = getelementptr i8, ptr %0, i32 108
  %12 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.3) #8
  br label %34

13:                                               ; preds = %2
  br i1 %4, label %14, label %21

14:                                               ; preds = %13
  %15 = sext i32 %5 to i64
  %16 = shl nsw i64 %15, 28
  %17 = or i64 %16, 62500000
  %18 = tail call i64 @div64_u64(i64 noundef %17, i64 noundef 125000000) #7
  %19 = trunc i64 %18 to i32
  %20 = sub i32 -2147483648, %19
  br label %28

21:                                               ; preds = %13
  %22 = zext i32 %1 to i64
  %23 = shl nuw nsw i64 %22, 28
  %24 = or i64 %23, 62500000
  %25 = tail call i64 @div64_u64(i64 noundef %24, i64 noundef 125000000) #7
  %26 = trunc i64 %25 to i32
  %27 = xor i32 %26, -2147483648
  br label %28

28:                                               ; preds = %21, %14
  %29 = phi i32 [ %20, %14 ], [ %27, %21 ]
  %30 = getelementptr i8, ptr %0, i32 120
  %31 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %30) #7
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %32 = load ptr, ptr %3, align 4
  %33 = getelementptr i8, ptr %32, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %29) #7, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %30, i32 noundef %31) #7
  br label %34

34:                                               ; preds = %28, %10
  %35 = phi i32 [ -22, %10 ], [ 0, %28 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ptp_dte_adjtime(ptr noundef %0, i64 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = getelementptr i8, ptr %0, i32 120
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #7
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr i8, ptr %6, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %9 = and i32 %8, 255
  %10 = getelementptr i8, ptr %6, i32 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  %12 = zext i32 %9 to i64
  %13 = shl nuw nsw i64 %12, 36
  %14 = zext i32 %11 to i64
  %15 = shl nuw nsw i64 %14, 4
  %16 = or i64 %15, %13
  %17 = icmp slt i64 %1, 0
  %18 = sub i64 0, %1
  %19 = icmp slt i64 %16, %18
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %35

21:                                               ; preds = %2
  %22 = getelementptr i8, ptr %0, i32 116
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %62, label %25

25:                                               ; preds = %21
  %26 = add nsw i64 %1, 17592186044415
  %27 = add i64 %26, %16
  %28 = add i32 %23, -1
  store i32 %28, ptr %22, align 4
  %29 = lshr i64 %27, 4
  %30 = trunc i64 %29 to i32
  %31 = lshr i64 %27, 28
  %32 = trunc i64 %31 to i32
  %33 = lshr i64 %27, 32
  %34 = trunc i64 %33 to i32
  br label %55

35:                                               ; preds = %2
  %36 = add i64 %16, %1
  %37 = icmp sgt i64 %36, 17592186044415
  %38 = lshr i64 %36, 4
  %39 = trunc i64 %38 to i32
  %40 = lshr i64 %36, 28
  %41 = trunc i64 %40 to i32
  %42 = lshr i64 %36, 32
  %43 = trunc i64 %42 to i32
  br i1 %37, label %44, label %55

44:                                               ; preds = %35
  %45 = getelementptr i8, ptr %0, i32 116
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, 1
  store i32 %47, ptr %45, align 4
  %48 = add nsw i64 %36, -17592186044415
  %49 = lshr i64 %48, 4
  %50 = trunc i64 %49 to i32
  %51 = lshr i64 %48, 28
  %52 = trunc i64 %51 to i32
  %53 = lshr i64 %48, 32
  %54 = trunc i64 %53 to i32
  br label %55

55:                                               ; preds = %44, %35, %25
  %56 = phi i32 [ %30, %25 ], [ %50, %44 ], [ %39, %35 ]
  %57 = phi i32 [ %32, %25 ], [ %52, %44 ], [ %41, %35 ]
  %58 = phi i32 [ %34, %25 ], [ %54, %44 ], [ %43, %35 ]
  %59 = icmp eq i32 %56, -1
  %60 = add i32 %56, 1
  %61 = select i1 %59, i32 -1, i32 %60
  br label %62

62:                                               ; preds = %55, %21
  %63 = phi i32 [ %58, %55 ], [ 0, %21 ]
  %64 = phi i32 [ %57, %55 ], [ 0, %21 ]
  %65 = phi i32 [ %61, %55 ], [ 1, %21 ]
  %66 = load ptr, ptr %3, align 4
  %67 = and i32 %64, 65280
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 0) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !15
  tail call void @arm_heavy_mb() #7
  %68 = getelementptr i8, ptr %66, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %65) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  %69 = getelementptr i8, ptr %66, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %67) #7, !srcloc !9
  %70 = and i32 %63, 4095
  %71 = getelementptr i8, ptr %0, i32 112
  store i32 %70, ptr %71, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ptp_dte_gettime(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca %struct.timespec64, align 8
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = getelementptr i8, ptr %0, i32 120
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr i8, ptr %7, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %10 = and i32 %9, 255
  %11 = getelementptr i8, ptr %7, i32 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  %13 = zext i32 %10 to i64
  %14 = shl nuw nsw i64 %13, 36
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 4
  %17 = or i64 %16, %14
  %18 = lshr i64 %17, 32
  %19 = trunc i64 %18 to i32
  %20 = and i32 %19, 4095
  %21 = getelementptr i8, ptr %0, i32 112
  %22 = load i32, ptr %21, align 4
  %23 = icmp ult i32 %20, %22
  %24 = getelementptr i8, ptr %0, i32 116
  %25 = load i32, ptr %24, align 4
  br i1 %23, label %26, label %28

26:                                               ; preds = %2
  %27 = add i32 %25, 1
  store i32 %27, ptr %24, align 4
  br label %28

28:                                               ; preds = %26, %2
  %29 = phi i32 [ %27, %26 ], [ %25, %2 ]
  store i32 %20, ptr %21, align 4
  %30 = zext i32 %29 to i64
  %31 = shl i64 %30, 44
  %32 = or i64 %31, %17
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %3, i64 noundef %32) #7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ptp_dte_settime(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = getelementptr i8, ptr %0, i32 120
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #7
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !17
  tail call void @arm_heavy_mb() #7
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr i8, ptr %6, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #7, !srcloc !9
  %8 = load ptr, ptr %3, align 4
  %9 = load i64, ptr %1, align 8
  %10 = icmp sgt i64 %9, 9223372035
  br i1 %10, label %26, label %11

11:                                               ; preds = %2
  %12 = icmp slt i64 %9, -9223372035
  br i1 %12, label %28, label %13

13:                                               ; preds = %11
  %14 = mul nsw i64 %9, 1000000000
  %15 = getelementptr inbounds %struct.timespec64, ptr %1, i32 0, i32 1
  %16 = load i32, ptr %15, align 8
  %17 = sext i32 %16 to i64
  %18 = add i64 %14, %17
  %19 = lshr i64 %18, 4
  %20 = trunc i64 %19 to i32
  %21 = lshr i64 %18, 28
  %22 = trunc i64 %21 to i32
  %23 = and i32 %22, 65280
  %24 = icmp eq i32 %20, -1
  %25 = add i32 %20, 1
  br i1 %24, label %26, label %28

26:                                               ; preds = %13, %2
  %27 = phi i32 [ %23, %13 ], [ 65280, %2 ]
  br label %28

28:                                               ; preds = %26, %13, %11
  %29 = phi i32 [ %27, %26 ], [ %23, %13 ], [ 0, %11 ]
  %30 = phi i32 [ -1, %26 ], [ %25, %13 ], [ 1, %11 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 0) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !15
  tail call void @arm_heavy_mb() #7
  %31 = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %30) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  %32 = getelementptr i8, ptr %8, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %29) #7, !srcloc !9
  %33 = getelementptr i8, ptr %0, i32 112
  store i32 0, ptr %33, align 4
  %34 = getelementptr i8, ptr %0, i32 116
  store i32 0, ptr %34, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !18
  tail call void @arm_heavy_mb() #7
  %35 = load ptr, ptr %3, align 4
  %36 = getelementptr i8, ptr %35, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 -2147483648) #7, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #7
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @ptp_dte_enable(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2) #6 {
  ret i32 -95
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ptp_dte_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !19
  %6 = getelementptr %struct.ptp_dte, ptr %3, i32 0, i32 7, i32 0
  store i32 %5, ptr %6, align 4
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr i8, ptr %7, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !19
  %10 = getelementptr %struct.ptp_dte, ptr %3, i32 0, i32 7, i32 1
  store i32 %9, ptr %10, align 4
  %11 = load ptr, ptr %3, align 4
  %12 = getelementptr i8, ptr %11, i32 8
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !19
  %14 = getelementptr %struct.ptp_dte, ptr %3, i32 0, i32 7, i32 2
  store i32 %13, ptr %14, align 4
  %15 = load ptr, ptr %3, align 4
  %16 = getelementptr i8, ptr %15, i32 12
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !19
  %18 = getelementptr %struct.ptp_dte, ptr %3, i32 0, i32 7, i32 3
  store i32 %17, ptr %18, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !20
  tail call void @arm_heavy_mb() #7
  %19 = load ptr, ptr %3, align 4
  %20 = getelementptr i8, ptr %19, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 0) #7, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ptp_dte_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  %4 = getelementptr %struct.ptp_dte, ptr %3, i32 0, i32 7, i32 0
  %5 = load i32, ptr %4, align 4
  %6 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %5) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  %7 = getelementptr %struct.ptp_dte, ptr %3, i32 0, i32 7, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = load ptr, ptr %3, align 4
  %10 = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !22
  tail call void @arm_heavy_mb() #7
  %11 = getelementptr %struct.ptp_dte, ptr %3, i32 0, i32 7, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = shl i32 %12, 8
  %14 = and i32 %13, 65280
  %15 = load ptr, ptr %3, align 4
  %16 = getelementptr i8, ptr %15, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  %17 = getelementptr %struct.ptp_dte, ptr %3, i32 0, i32 7, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = load ptr, ptr %3, align 4
  %20 = getelementptr i8, ptr %19, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #7, !srcloc !9
  ret i32 0
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 2153445319}
!9 = !{i64 367300}
!10 = !{i64 2153438108}
!11 = !{i64 367718}
!12 = !{i64 2153416982}
!13 = !{i64 2153417308}
!14 = !{i64 2153415907}
!15 = !{i64 2153416217}
!16 = !{i64 2153416533}
!17 = !{i64 2153442878}
!18 = !{i64 2153443217}
!19 = !{i64 2153445844}
!20 = !{i64 2153446035}
!21 = !{i64 2153446389}
!22 = !{i64 2153446812}
