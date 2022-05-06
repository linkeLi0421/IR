; ModuleID = '/llk/IR/drivers/soc/tegra/flowctrl.c_pt.bc'
source_filename = "../drivers/soc/tegra/flowctrl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpumask = type { [1 x i32] }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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

@flowctrl_offset_cpu_csr = internal unnamed_addr constant [4 x i8] c"\08\18 (", align 1
@flowctrl_read_cpu_csr.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@tegra_flowctrl_base = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [29 x i8] c"drivers/soc/tegra/flowctrl.c\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Tegra flowctrl not initialised!\0A\00", align 1
@flowctrl_offset_halt_cpu = internal unnamed_addr constant [4 x i8] c"\00\14\1C$", align 1
@__cpu_possible_mask = external dso_local local_unnamed_addr global %struct.cpumask, align 4
@__initcall__kmod_flowctrl__162_188_tegra_flowctrl_driver_init6 = internal global ptr @tegra_flowctrl_driver_init, section ".initcall6.init", align 4
@__initcall__kmod_flowctrl__163_228_tegra_flowctrl_initearly = internal global ptr @tegra_flowctrl_init, section ".initcallearly.init", align 4
@flowctrl_update.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@tegra_flowctrl_driver = internal global %struct.platform_driver { ptr @tegra_flowctrl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @tegra_flowctrl_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"tegra-flowctrl\00", align 1
@tegra_flowctrl_match = internal constant [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-flowctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-flowctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra114-flowctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-flowctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-flowctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"\013failed to get flowctrl register\0A\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__initcall__kmod_flowctrl__162_188_tegra_flowctrl_driver_init6, ptr @__initcall__kmod_flowctrl__163_228_tegra_flowctrl_initearly], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @flowctrl_read_cpu_csr(i32 noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr [4 x i8], ptr @flowctrl_offset_cpu_csr, i32 0, i32 %0
  %3 = load i8, ptr %2, align 1
  %4 = load ptr, ptr @tegra_flowctrl_base, align 4
  %5 = icmp eq ptr %4, null
  %6 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  %7 = or i1 %5, %6
  %8 = load i1, ptr @flowctrl_read_cpu_csr.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !8

11:                                               ; preds = %1
  store i1 true, ptr @flowctrl_read_cpu_csr.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 56, i32 noundef 9, ptr noundef nonnull @.str.1) #6
  br label %12

12:                                               ; preds = %11, %1
  br i1 %7, label %18, label %13

13:                                               ; preds = %12
  %14 = load ptr, ptr @tegra_flowctrl_base, align 4
  %15 = zext i8 %3 to i32
  %16 = getelementptr i8, ptr %14, i32 %15
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  br label %18

18:                                               ; preds = %13, %12
  %19 = phi i32 [ %17, %13 ], [ 0, %12 ]
  ret i32 %19
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @flowctrl_write_cpu_csr(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr [4 x i8], ptr @flowctrl_offset_cpu_csr, i32 0, i32 %0
  %4 = load i8, ptr %3, align 1
  %5 = load ptr, ptr @tegra_flowctrl_base, align 4
  %6 = icmp eq ptr %5, null
  %7 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %8 = or i1 %6, %7
  %9 = load i1, ptr @flowctrl_update.__already_done, align 1
  %10 = xor i1 %9, true
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %13, !prof !8

12:                                               ; preds = %2
  store i1 true, ptr @flowctrl_update.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 41, i32 noundef 9, ptr noundef nonnull @.str.1) #6
  br label %13

13:                                               ; preds = %12, %2
  br i1 %8, label %21, label %14

14:                                               ; preds = %13
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  %15 = load ptr, ptr @tegra_flowctrl_base, align 4
  %16 = zext i8 %4 to i32
  %17 = getelementptr i8, ptr %15, i32 %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %1) #6, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  %18 = load ptr, ptr @tegra_flowctrl_base, align 4
  %19 = getelementptr i8, ptr %18, i32 %16
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #6, !srcloc !9
  br label %21

21:                                               ; preds = %14, %13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @flowctrl_write_cpu_halt(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr [4 x i8], ptr @flowctrl_offset_halt_cpu, i32 0, i32 %0
  %4 = load i8, ptr %3, align 1
  %5 = load ptr, ptr @tegra_flowctrl_base, align 4
  %6 = icmp eq ptr %5, null
  %7 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %8 = or i1 %6, %7
  %9 = load i1, ptr @flowctrl_update.__already_done, align 1
  %10 = xor i1 %9, true
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %13, !prof !8

12:                                               ; preds = %2
  store i1 true, ptr @flowctrl_update.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 41, i32 noundef 9, ptr noundef nonnull @.str.1) #6
  br label %13

13:                                               ; preds = %12, %2
  br i1 %8, label %21, label %14

14:                                               ; preds = %13
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  %15 = load ptr, ptr @tegra_flowctrl_base, align 4
  %16 = zext i8 %4 to i32
  %17 = getelementptr i8, ptr %15, i32 %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %1) #6, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  %18 = load ptr, ptr @tegra_flowctrl_base, align 4
  %19 = getelementptr i8, ptr %18, i32 %16
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #6, !srcloc !9
  br label %21

21:                                               ; preds = %14, %13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @flowctrl_cpu_suspend_enter(i32 noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr [4 x i8], ptr @flowctrl_offset_cpu_csr, i32 0, i32 %0
  %3 = load i8, ptr %2, align 1
  %4 = load ptr, ptr @tegra_flowctrl_base, align 4
  %5 = icmp eq ptr %4, null
  %6 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  %7 = or i1 %5, %6
  %8 = load i1, ptr @flowctrl_read_cpu_csr.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !8

11:                                               ; preds = %1
  store i1 true, ptr @flowctrl_read_cpu_csr.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 56, i32 noundef 9, ptr noundef nonnull @.str.1) #6
  br label %12

12:                                               ; preds = %11, %1
  br i1 %7, label %18, label %13

13:                                               ; preds = %12
  %14 = load ptr, ptr @tegra_flowctrl_base, align 4
  %15 = zext i8 %3 to i32
  %16 = getelementptr i8, ptr %14, i32 %15
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  br label %18

18:                                               ; preds = %13, %12
  %19 = phi i32 [ %17, %13 ], [ 0, %12 ]
  %20 = tail call zeroext i8 @tegra_get_chip_id() #6
  switch i8 %20, label %35 [
    i8 32, label %21
    i8 48, label %25
    i8 53, label %25
    i8 64, label %25
  ]

21:                                               ; preds = %18
  %22 = and i32 %19, -49
  %23 = shl i32 16, %0
  %24 = or i32 %22, %23
  br label %35

25:                                               ; preds = %18, %18, %18
  %26 = and i32 %19, -4081
  %27 = tail call zeroext i8 @tegra_get_chip_id() #6
  %28 = icmp eq i8 %27, 48
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = shl i32 16, %0
  %31 = or i32 %26, %30
  br label %35

32:                                               ; preds = %25
  %33 = shl i32 256, %0
  %34 = or i32 %26, %33
  br label %35

35:                                               ; preds = %32, %29, %21, %18
  %36 = phi i32 [ %19, %18 ], [ %31, %29 ], [ %34, %32 ], [ %24, %21 ]
  %37 = or i32 %36, 49153
  %38 = load ptr, ptr @tegra_flowctrl_base, align 4
  %39 = icmp eq ptr %38, null
  %40 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  %41 = or i1 %39, %40
  %42 = load i1, ptr @flowctrl_update.__already_done, align 1
  %43 = xor i1 %42, true
  %44 = select i1 %41, i1 %43, i1 false
  br i1 %44, label %45, label %46, !prof !8

45:                                               ; preds = %35
  store i1 true, ptr @flowctrl_update.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 41, i32 noundef 9, ptr noundef nonnull @.str.1) #6
  br label %46

46:                                               ; preds = %45, %35
  br i1 %41, label %54, label %47

47:                                               ; preds = %46
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  %48 = load ptr, ptr @tegra_flowctrl_base, align 4
  %49 = zext i8 %3 to i32
  %50 = getelementptr i8, ptr %48, i32 %49
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %37) #6, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  %51 = load ptr, ptr @tegra_flowctrl_base, align 4
  %52 = getelementptr i8, ptr %51, i32 %49
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #6, !srcloc !9
  br label %54

54:                                               ; preds = %47, %46
  br label %55

55:                                               ; preds = %99, %54
  %56 = phi i32 [ %100, %99 ], [ 0, %54 ]
  %57 = load i32, ptr @__cpu_possible_mask, align 4
  %58 = and i32 %57, 65535
  %59 = tail call i32 @__sw_hweight32(i32 noundef %58) #6
  %60 = icmp ult i32 %56, %59
  br i1 %60, label %61, label %101

61:                                               ; preds = %55
  %62 = icmp eq i32 %56, %0
  br i1 %62, label %99, label %63

63:                                               ; preds = %61
  %64 = getelementptr [4 x i8], ptr @flowctrl_offset_cpu_csr, i32 0, i32 %56
  %65 = load i8, ptr %64, align 1
  %66 = load ptr, ptr @tegra_flowctrl_base, align 4
  %67 = icmp eq ptr %66, null
  %68 = icmp ugt ptr %66, inttoptr (i32 -4096 to ptr)
  %69 = or i1 %67, %68
  %70 = load i1, ptr @flowctrl_read_cpu_csr.__already_done, align 1
  %71 = xor i1 %70, true
  %72 = select i1 %69, i1 %71, i1 false
  br i1 %72, label %73, label %74, !prof !8

73:                                               ; preds = %63
  store i1 true, ptr @flowctrl_read_cpu_csr.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 56, i32 noundef 9, ptr noundef nonnull @.str.1) #6
  br label %74

74:                                               ; preds = %73, %63
  br i1 %69, label %80, label %75

75:                                               ; preds = %74
  %76 = load ptr, ptr @tegra_flowctrl_base, align 4
  %77 = zext i8 %65 to i32
  %78 = getelementptr i8, ptr %76, i32 %77
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  br label %80

80:                                               ; preds = %75, %74
  %81 = phi i32 [ %79, %75 ], [ 0, %74 ]
  %82 = or i32 %81, 49152
  %83 = load ptr, ptr @tegra_flowctrl_base, align 4
  %84 = icmp eq ptr %83, null
  %85 = icmp ugt ptr %83, inttoptr (i32 -4096 to ptr)
  %86 = or i1 %84, %85
  %87 = load i1, ptr @flowctrl_update.__already_done, align 1
  %88 = xor i1 %87, true
  %89 = select i1 %86, i1 %88, i1 false
  br i1 %89, label %90, label %91, !prof !8

90:                                               ; preds = %80
  store i1 true, ptr @flowctrl_update.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 41, i32 noundef 9, ptr noundef nonnull @.str.1) #6
  br label %91

91:                                               ; preds = %90, %80
  br i1 %86, label %99, label %92

92:                                               ; preds = %91
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  %93 = load ptr, ptr @tegra_flowctrl_base, align 4
  %94 = zext i8 %65 to i32
  %95 = getelementptr i8, ptr %93, i32 %94
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %95, i32 %82) #6, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  %96 = load ptr, ptr @tegra_flowctrl_base, align 4
  %97 = getelementptr i8, ptr %96, i32 %94
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %97) #6, !srcloc !9
  br label %99

99:                                               ; preds = %92, %91, %61
  %100 = add nuw i32 %56, 1
  br label %55

101:                                              ; preds = %55
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @tegra_get_chip_id() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @flowctrl_cpu_suspend_exit(i32 noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr [4 x i8], ptr @flowctrl_offset_cpu_csr, i32 0, i32 %0
  %3 = load i8, ptr %2, align 1
  %4 = load ptr, ptr @tegra_flowctrl_base, align 4
  %5 = icmp eq ptr %4, null
  %6 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  %7 = or i1 %5, %6
  %8 = load i1, ptr @flowctrl_read_cpu_csr.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !8

11:                                               ; preds = %1
  store i1 true, ptr @flowctrl_read_cpu_csr.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 56, i32 noundef 9, ptr noundef nonnull @.str.1) #6
  br label %12

12:                                               ; preds = %11, %1
  br i1 %7, label %18, label %13

13:                                               ; preds = %12
  %14 = load ptr, ptr @tegra_flowctrl_base, align 4
  %15 = zext i8 %3 to i32
  %16 = getelementptr i8, ptr %14, i32 %15
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  br label %18

18:                                               ; preds = %13, %12
  %19 = phi i32 [ %17, %13 ], [ 0, %12 ]
  %20 = tail call zeroext i8 @tegra_get_chip_id() #6
  switch i8 %20, label %25 [
    i8 32, label %21
    i8 48, label %23
    i8 53, label %23
    i8 64, label %23
  ]

21:                                               ; preds = %18
  %22 = and i32 %19, -49
  br label %25

23:                                               ; preds = %18, %18, %18
  %24 = and i32 %19, -4081
  br label %25

25:                                               ; preds = %23, %21, %18
  %26 = phi i32 [ %19, %18 ], [ %24, %23 ], [ %22, %21 ]
  %27 = and i32 %26, -49154
  %28 = or i32 %27, 49152
  %29 = load ptr, ptr @tegra_flowctrl_base, align 4
  %30 = icmp eq ptr %29, null
  %31 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  %32 = or i1 %30, %31
  %33 = load i1, ptr @flowctrl_update.__already_done, align 1
  %34 = xor i1 %33, true
  %35 = select i1 %32, i1 %34, i1 false
  br i1 %35, label %36, label %37, !prof !8

36:                                               ; preds = %25
  store i1 true, ptr @flowctrl_update.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 41, i32 noundef 9, ptr noundef nonnull @.str.1) #6
  br label %37

37:                                               ; preds = %36, %25
  br i1 %32, label %45, label %38

38:                                               ; preds = %37
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  %39 = load ptr, ptr @tegra_flowctrl_base, align 4
  %40 = zext i8 %3 to i32
  %41 = getelementptr i8, ptr %39, i32 %40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %28) #6, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  %42 = load ptr, ptr @tegra_flowctrl_base, align 4
  %43 = getelementptr i8, ptr %42, i32 %40
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #6, !srcloc !9
  br label %45

45:                                               ; preds = %38, %37
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tegra_flowctrl_driver_init() #3 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_flowctrl_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tegra_flowctrl_init() #3 section ".init.text" {
  %1 = alloca %struct.resource, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %1) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %1, i8 0, i32 32, i1 false), !annotation !14
  %2 = tail call zeroext i1 @soc_is_tegra() #6
  br i1 %2, label %3, label %26

3:                                                ; preds = %0
  %4 = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @tegra_flowctrl_match, ptr noundef null) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %3
  %7 = call i32 @of_address_to_resource(ptr noundef nonnull %4, i32 noundef 0, ptr noundef nonnull %1) #6
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #7
  br label %26

11:                                               ; preds = %6
  call void @of_node_put(ptr noundef nonnull %4) #6
  %12 = load i32, ptr %1, align 4
  %13 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  br label %18

15:                                               ; preds = %3
  store i32 1610641408, ptr %1, align 4
  %16 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 1
  store i32 1610645503, ptr %16, align 4
  %17 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 3
  store i32 512, ptr %17, align 4
  br label %18

18:                                               ; preds = %15, %11
  %19 = phi i32 [ 1610645503, %15 ], [ %14, %11 ]
  %20 = phi i32 [ 1610641408, %15 ], [ %12, %11 ]
  %21 = sub i32 1, %20
  %22 = add i32 %21, %19
  %23 = call ptr @ioremap(i32 noundef %20, i32 noundef %22) #6
  store ptr %23, ptr @tegra_flowctrl_base, align 4
  %24 = icmp eq ptr %23, null
  %25 = select i1 %24, i32 -6, i32 0
  br label %26

26:                                               ; preds = %18, %9, %0
  %27 = phi i32 [ -6, %9 ], [ 0, %0 ], [ %25, %18 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %1) #6
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_flowctrl_probe(ptr noundef %0) #0 {
  %2 = load ptr, ptr @tegra_flowctrl_base, align 4
  %3 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #6
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call ptr @devm_ioremap_resource(ptr noundef %4, ptr noundef %3) #6
  store ptr %5, ptr @tegra_flowctrl_base, align 4
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = ptrtoint ptr %5 to i32
  br label %10

9:                                                ; preds = %1
  tail call void @iounmap(ptr noundef %2) #6
  br label %10

10:                                               ; preds = %9, %7
  %11 = phi i32 [ %8, %7 ], [ 0, %9 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @soc_is_tegra() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 1053200}
!10 = !{i64 2151300786}
!11 = !{i64 2151298776}
!12 = !{i64 1052782}
!13 = !{i64 2151299039}
!14 = !{!"auto-init"}
