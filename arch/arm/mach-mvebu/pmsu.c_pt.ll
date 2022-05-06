; ModuleID = '/llk/IR/arch/arm/mach-mvebu/pmsu.c_pt.bc'
source_filename = "../arch/arm/mach-mvebu/pmsu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.cpu_tlb_fns = type { ptr, ptr, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
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
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@pmsu_mp_base = internal unnamed_addr global ptr null, align 4
@mvebu_boot_wa_end = external dso_local global [0 x i8], align 1
@mvebu_boot_wa_start = external dso_local global [0 x i8], align 1
@.str = private unnamed_addr constant [63 x i8] c"\013mvebu-pmsu: Unable to map SRAM to setup the boot address WA\0A\00", align 1
@processor = external dso_local local_unnamed_addr global %struct.processor, align 4
@__cpu_logical_map = external dso_local local_unnamed_addr global [0 x i32], align 4
@__initcall__kmod_pmsu__220_534_mvebu_v7_cpu_pm_init3 = internal global ptr @mvebu_v7_cpu_pm_init, section ".initcall3.init", align 4
@__initcall__kmod_pmsu__221_535_mvebu_v7_pmsu_initearly = internal global ptr @mvebu_v7_pmsu_init, section ".initcallearly.init", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@cpu_tlb = external dso_local local_unnamed_addr global %struct.cpu_tlb_fns, align 4
@of_pmsu_table = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-370-pmsu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-370-xp-pmsu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-380-pmsu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"marvell,armada380\00", align 1
@.str.2 = private unnamed_addr constant [80 x i8] c"\014mvebu-pmsu: CPU hotplug support is currently broken on Armada 38x: disabling\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"marvell,armadaxp\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"marvell,armada370\00", align 1
@mvebu_v7_cpuidle_device = internal global %struct.platform_device zeroinitializer, align 8
@mvebu_v7_cpu_pm_notifier = internal global %struct.notifier_block { ptr @mvebu_v7_cpu_pm_notify, ptr null, i32 0 }, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"marvell,coherency-fabric\00", align 1
@mvebu_cpu_resume = internal unnamed_addr global ptr null, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"cpuidle-armada-xp\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"broken-idle\00", align 1
@.str.8 = private unnamed_addr constant [55 x i8] c"\014mvebu-pmsu: CPU idle is currently broken: disabling\0A\00", align 1
@pmsu_mp_phys_base = internal unnamed_addr global i32 0, align 4
@.str.9 = private unnamed_addr constant [19 x i8] c"cpuidle-armada-370\00", align 1
@.str.10 = private unnamed_addr constant [69 x i8] c"\014mvebu-pmsu: CPU idle is currently broken on Armada 38x: disabling\0A\00", align 1
@.str.11 = private unnamed_addr constant [58 x i8] c"\016mvebu-pmsu: Initializing Power Management Service Unit\0A\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"\013mvebu-pmsu: unable to get resource\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"marvell,armada-370-xp-pmsu\00", align 1
@.str.14 = private unnamed_addr constant [56 x i8] c"\014mvebu-pmsu: [Firmware Warn]: deprecated pmsu binding\0A\00", align 1
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.15 = private unnamed_addr constant [40 x i8] c"\013mvebu-pmsu: unable to request region\0A\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"\013mvebu-pmsu: unable to map registers\0A\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__initcall__kmod_pmsu__220_534_mvebu_v7_cpu_pm_init3, ptr @__initcall__kmod_pmsu__221_535_mvebu_v7_pmsu_initearly], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mvebu_pmsu_set_cpu_boot_addr(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %3 = ptrtoint ptr %1 to i32
  %4 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %3, i32 -2130706432, i32 8454144) #9, !srcloc !9
  %5 = load ptr, ptr @pmsu_mp_base, align 4
  %6 = shl i32 %0, 8
  %7 = add i32 %6, 292
  %8 = getelementptr i8, ptr %5, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %4) #8, !srcloc !10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mvebu_setup_boot_addr_wa(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @mvebu_mbus_del_window(i32 noundef -1048576, i32 noundef 1048576) #8
  %5 = tail call i32 @mvebu_mbus_add_window_by_id(i32 noundef %0, i32 noundef %1, i32 noundef -65536, i32 noundef 65536) #8
  %6 = tail call ptr @ioremap(i32 noundef -65536, i32 noundef 65536) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  br label %13

10:                                               ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %6, ptr nonnull align 1 @mvebu_boot_wa_start, i32 sub (i32 ptrtoint (ptr @mvebu_boot_wa_end to i32), i32 ptrtoint (ptr @mvebu_boot_wa_start to i32)), i1 false)
  %11 = getelementptr i8, ptr %6, i32 sub (i32 ptrtoint (ptr @mvebu_boot_wa_end to i32), i32 ptrtoint (ptr @mvebu_boot_wa_start to i32))
  %12 = getelementptr i8, ptr %11, i32 -4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %2) #8, !srcloc !10
  tail call void @iounmap(ptr noundef nonnull %6) #8
  br label %13

13:                                               ; preds = %10, %8
  %14 = phi i32 [ 0, %10 ], [ -12, %8 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvebu_mbus_del_window(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvebu_mbus_add_window_by_id(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @armada_370_xp_pmsu_idle_enter(i32 noundef %0) #0 {
  %2 = icmp eq i32 %0, 0
  %3 = select i1 %2, i32 2, i32 3
  %4 = tail call fastcc i32 @mvebu_v7_pmsu_idle_prepare(i32 noundef %3)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  tail call void asm sideeffect ".arch\09armv7-a \0A\09stmfd\09sp!, {fp, ip} \0A\09mrc\09p15, 0, r0, c1, c0, 0\09@ get SCTLR \0A\09bic\09r0, r0, #(1 << 2) \0A\09mcr\09p15, 0, r0, c1, c0, 0\09@ set SCTLR \0A\09isb\09\0A\09bl\09v7_flush_dcache_all \0A\09mrc\09p15, 0, r0, c1, c0, 1\09@ get ACTLR \0A\09bic\09r0, r0, #(1 << 6)\09@ disable local coherency \0A\09mcr\09p15, 0, r0, c1, c0, 1\09@ set ACTLR \0A\09isb\09\0A\09dsb\09\0A\09ldmfd\09sp!, {fp, ip}", "~{r0},~{r1},~{r2},~{r3},~{r4},~{r5},~{r6},~{r7},~{r9},~{r10},~{lr},~{memory}"() #8, !srcloc !11
  tail call void @ll_disable_coherency() #8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  tail call void asm sideeffect "wfi", "~{memory}"() #8, !srcloc !13
  %7 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "dsb nshst", "~{memory}"() #8, !srcloc !14
  %8 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 0", "r,r,Ir,~{cc}"(i32 0, i32 %8, i32 4608) #8, !srcloc !15
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 0", "r,r,Ir,~{cc}"(i32 0, i32 %7, i32 2097152) #8, !srcloc !16
  tail call void asm sideeffect "dsb nsh", "~{memory}"() #8, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !18
  tail call void @ll_enable_coherency() #8
  tail call void asm sideeffect "mrc\09p15, 0, r0, c1, c0, 0 \0A\09tst\09r0, $0 \0A\09orreq\09r0, r0, #(1 << 2) \0A\09mcreq\09p15, 0, r0, c1, c0, 0 \0A\09isb\09", "Ir,~{r0}"(i32 4) #8, !srcloc !19
  br label %9

9:                                                ; preds = %6, %1
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mvebu_v7_pmsu_idle_prepare(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @pmsu_mp_base, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %37, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #8
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %7
  %9 = load i32, ptr %8, align 4
  %10 = shl i32 %9, 8
  %11 = add i32 %10, 268
  %12 = getelementptr i8, ptr %2, i32 %11
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #8, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !21
  %14 = or i32 %13, 53673984
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !22
  tail call void @arm_heavy_mb() #8
  %15 = load ptr, ptr @pmsu_mp_base, align 4
  %16 = getelementptr i8, ptr %15, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #8, !srcloc !10
  %17 = load ptr, ptr @pmsu_mp_base, align 4
  %18 = add i32 %10, 260
  %19 = getelementptr i8, ptr %17, i32 %18
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #8, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !23
  %21 = shl i32 %0, 20
  %22 = and i32 %21, 1048576
  %23 = or i32 %22, %20
  %24 = or i32 %23, 65536
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !24
  tail call void @arm_heavy_mb() #8
  %25 = load ptr, ptr @pmsu_mp_base, align 4
  %26 = getelementptr i8, ptr %25, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #8, !srcloc !10
  %27 = and i32 %0, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %4
  %30 = load ptr, ptr @pmsu_mp_base, align 4
  %31 = add i32 %10, 264
  %32 = getelementptr i8, ptr %30, i32 %31
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #8, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !25
  %34 = or i32 %33, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !26
  tail call void @arm_heavy_mb() #8
  %35 = load ptr, ptr @pmsu_mp_base, align 4
  %36 = getelementptr i8, ptr %35, i32 %31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #8, !srcloc !10
  br label %37

37:                                               ; preds = %29, %4, %1
  %38 = phi i32 [ -22, %1 ], [ 0, %29 ], [ 0, %4 ]
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ll_disable_coherency() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ll_enable_coherency() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @armada_38x_do_cpu_suspend(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp ne i32 %0, 0
  %3 = zext i1 %2 to i32
  %4 = tail call fastcc i32 @mvebu_v7_pmsu_idle_prepare(i32 noundef %3)
  tail call void asm sideeffect ".arch\09armv7-a \0A\09stmfd\09sp!, {fp, ip} \0A\09mrc\09p15, 0, r0, c1, c0, 0\09@ get SCTLR \0A\09bic\09r0, r0, #(1 << 2) \0A\09mcr\09p15, 0, r0, c1, c0, 0\09@ set SCTLR \0A\09isb\09\0A\09bl\09v7_flush_dcache_louis \0A\09mrc\09p15, 0, r0, c1, c0, 1\09@ get ACTLR \0A\09bic\09r0, r0, #(1 << 6)\09@ disable local coherency \0A\09mcr\09p15, 0, r0, c1, c0, 1\09@ set ACTLR \0A\09isb\09\0A\09dsb\09\0A\09ldmfd\09sp!, {fp, ip}", "~{r0},~{r1},~{r2},~{r3},~{r4},~{r5},~{r6},~{r7},~{r9},~{r10},~{lr},~{memory}"() #8, !srcloc !27
  %5 = tail call ptr @mvebu_get_scu_base() #8
  %6 = tail call i32 @scu_power_mode(ptr noundef %5, i32 noundef 3) #8
  %7 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 6), align 4
  %8 = tail call i32 %7() #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scu_power_mode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mvebu_get_scu_base() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mvebu_v7_pmsu_idle_exit() local_unnamed_addr #0 {
  %1 = load ptr, ptr @pmsu_mp_base, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %23, label %3

3:                                                ; preds = %0
  %4 = tail call ptr @llvm.thread.pointer() #8
  %5 = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %6
  %8 = load i32, ptr %7, align 4
  %9 = shl i32 %8, 8
  %10 = add i32 %9, 260
  %11 = getelementptr i8, ptr %1, i32 %10
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #8, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !28
  %13 = and i32 %12, -1048577
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !29
  tail call void @arm_heavy_mb() #8
  %14 = load ptr, ptr @pmsu_mp_base, align 4
  %15 = getelementptr i8, ptr %14, i32 %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #8, !srcloc !10
  %16 = load ptr, ptr @pmsu_mp_base, align 4
  %17 = add i32 %9, 268
  %18 = getelementptr i8, ptr %16, i32 %17
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #8, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !30
  %20 = and i32 %19, -53673985
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !31
  tail call void @arm_heavy_mb() #8
  %21 = load ptr, ptr @pmsu_mp_base, align 4
  %22 = getelementptr i8, ptr %21, i32 %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #8, !srcloc !10
  br label %23

23:                                               ; preds = %3, %0
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mvebu_v7_cpu_pm_init() #5 section ".init.text" {
  %1 = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @of_pmsu_table, ptr noundef null) #8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %42, label %3

3:                                                ; preds = %0
  tail call void @of_node_put(ptr noundef nonnull %1) #8
  %4 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.1) #8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  tail call void @cpu_hotplug_disable() #8
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #10
  br label %8

8:                                                ; preds = %6, %3
  %9 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.3) #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = tail call fastcc i32 @armada_xp_cpuidle_init() #11
  br label %23

13:                                               ; preds = %8
  %14 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.4) #8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = tail call fastcc i32 @armada_370_cpuidle_init() #11
  br label %23

18:                                               ; preds = %13
  %19 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.1) #8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %42, label %21

21:                                               ; preds = %18
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #10
  br label %26

23:                                               ; preds = %16, %11
  %24 = phi i32 [ %12, %11 ], [ %17, %16 ]
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %23, %21
  %27 = load ptr, ptr @pmsu_mp_base, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = getelementptr i8, ptr %27, i32 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #8, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !32
  %32 = or i32 %31, 1048576
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !33
  tail call void @arm_heavy_mb() #8
  %33 = load ptr, ptr @pmsu_mp_base, align 4
  %34 = getelementptr i8, ptr %33, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #8, !srcloc !10
  br label %35

35:                                               ; preds = %29, %26
  %36 = load ptr, ptr @mvebu_v7_cpuidle_device, align 8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = tail call i32 @platform_device_register(ptr noundef nonnull @mvebu_v7_cpuidle_device) #8
  br label %40

40:                                               ; preds = %38, %35
  %41 = tail call i32 @cpu_pm_register_notifier(ptr noundef nonnull @mvebu_v7_cpu_pm_notifier) #8
  br label %42

42:                                               ; preds = %40, %23, %18, %0
  %43 = phi i32 [ 0, %40 ], [ 0, %0 ], [ 0, %18 ], [ %24, %23 ]
  ret i32 %43
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mvebu_v7_pmsu_init() #5 section ".init.text" {
  %1 = alloca %struct.resource, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %1) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %1, i8 0, i32 32, i1 false), !annotation !34
  %2 = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @of_pmsu_table, ptr noundef null) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %50, label %4

4:                                                ; preds = %0
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #10
  %6 = call i32 @of_address_to_resource(ptr noundef nonnull %2, i32 noundef 0, ptr noundef nonnull %1) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #10
  br label %48

10:                                               ; preds = %4
  %11 = call i32 @of_device_is_compatible(ptr noundef nonnull %2, ptr noundef nonnull @.str.13) #8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load i32, ptr %1, align 4
  %15 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  br label %23

17:                                               ; preds = %10
  %18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #10
  %19 = load i32, ptr %1, align 4
  %20 = add i32 %19, -256
  store i32 %20, ptr %1, align 4
  %21 = add i32 %19, 3839
  %22 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 1
  store i32 %21, ptr %22, align 4
  br label %23

23:                                               ; preds = %17, %13
  %24 = phi i32 [ %16, %13 ], [ %21, %17 ]
  %25 = phi i32 [ %14, %13 ], [ %20, %17 ]
  %26 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 1
  %27 = sub i32 1, %25
  %28 = add i32 %27, %24
  %29 = getelementptr inbounds %struct.device_node, ptr %2, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %25, i32 noundef %28, ptr noundef %30, i32 noundef 0) #8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #10
  br label %48

35:                                               ; preds = %23
  %36 = load i32, ptr %1, align 4
  store i32 %36, ptr @pmsu_mp_phys_base, align 4
  %37 = load i32, ptr %26, align 4
  %38 = sub i32 1, %36
  %39 = add i32 %38, %37
  %40 = call ptr @ioremap(i32 noundef %36, i32 noundef %39) #8
  store ptr %40, ptr @pmsu_mp_base, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #10
  %44 = load i32, ptr %1, align 4
  %45 = load i32, ptr %26, align 4
  %46 = sub i32 1, %44
  %47 = add i32 %46, %45
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %44, i32 noundef %47) #8
  br label %48

48:                                               ; preds = %42, %35, %33, %8
  %49 = phi i32 [ -2, %8 ], [ 0, %35 ], [ -12, %42 ], [ -16, %33 ]
  call void @of_node_put(ptr noundef nonnull %2) #8
  br label %50

50:                                               ; preds = %48, %0
  %51 = phi i32 [ %49, %48 ], [ 0, %0 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %1) #8
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mvebu_pmsu_dfs_request(i32 noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = load ptr, ptr @pmsu_mp_base, align 4
  %5 = shl i32 %3, 8
  %6 = add i32 %5, 288
  %7 = getelementptr i8, ptr %4, i32 %6
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #8, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !35
  %9 = and i32 %8, -3
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !36
  tail call void @arm_heavy_mb() #8
  %10 = load ptr, ptr @pmsu_mp_base, align 4
  %11 = getelementptr i8, ptr %10, i32 %6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #8, !srcloc !10
  %12 = load ptr, ptr @pmsu_mp_base, align 4
  %13 = getelementptr i8, ptr %12, i32 %6
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #8, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !37
  %15 = or i32 %14, 131072
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !38
  tail call void @arm_heavy_mb() #8
  %16 = load ptr, ptr @pmsu_mp_base, align 4
  %17 = getelementptr i8, ptr %16, i32 %6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #8, !srcloc !10
  %18 = tail call i32 @smp_call_function_single(i32 noundef %0, ptr noundef nonnull @mvebu_pmsu_dfs_request_local, ptr noundef null, i32 noundef 0) #8
  %19 = load volatile i32, ptr @jiffies, align 64
  %20 = add i32 %19, 100
  %21 = load volatile i32, ptr @jiffies, align 64
  %22 = sub i32 %21, %20
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %30, %1
  %25 = load ptr, ptr @pmsu_mp_base, align 4
  %26 = getelementptr i8, ptr %25, i32 %6
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #8, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !39
  %28 = and i32 %27, 2
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 2147480) #8
  %32 = load volatile i32, ptr @jiffies, align 64
  %33 = sub i32 %32, %20
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %24, label %35

35:                                               ; preds = %30, %24, %1
  %36 = load volatile i32, ptr @jiffies, align 64
  %37 = sub i32 %20, %36
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr @pmsu_mp_base, align 4
  %41 = getelementptr i8, ptr %40, i32 %6
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #8, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !40
  %43 = and i32 %42, -131073
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !41
  tail call void @arm_heavy_mb() #8
  %44 = load ptr, ptr @pmsu_mp_base, align 4
  %45 = getelementptr i8, ptr %44, i32 %6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #8, !srcloc !10
  br label %46

46:                                               ; preds = %39, %35
  %47 = phi i32 [ 0, %39 ], [ -62, %35 ]
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smp_call_function_single(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mvebu_pmsu_dfs_request_local(ptr nocapture noundef readnone %0) #0 {
  %2 = tail call ptr @llvm.thread.pointer() #8
  %3 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !42
  %6 = load ptr, ptr @pmsu_mp_base, align 4
  %7 = shl i32 %4, 8
  %8 = add i32 %7, 268
  %9 = getelementptr i8, ptr %6, i32 %8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !43
  %11 = or i32 %10, 50397184
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !44
  tail call void @arm_heavy_mb() #8
  %12 = load ptr, ptr @pmsu_mp_base, align 4
  %13 = getelementptr i8, ptr %12, i32 %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #8, !srcloc !10
  %14 = load ptr, ptr @pmsu_mp_base, align 4
  %15 = add i32 %7, 260
  %16 = getelementptr i8, ptr %14, i32 %15
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #8, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !45
  %18 = or i32 %17, 262144
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !46
  tail call void @arm_heavy_mb() #8
  %19 = load ptr, ptr @pmsu_mp_base, align 4
  %20 = getelementptr i8, ptr %19, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #8, !srcloc !10
  tail call void asm sideeffect "wfi", "~{memory}"() #8, !srcloc !47
  %21 = load ptr, ptr @pmsu_mp_base, align 4
  %22 = getelementptr i8, ptr %21, i32 %8
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #8, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !48
  %24 = and i32 %23, -65537
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !49
  tail call void @arm_heavy_mb() #8
  %25 = load ptr, ptr @pmsu_mp_base, align 4
  %26 = getelementptr i8, ptr %25, i32 %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #8, !srcloc !10
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %5) #8, !srcloc !50
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_hotplug_disable() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @armada_xp_cpuidle_init() unnamed_addr #5 section ".init.text" {
  %1 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.5) #8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %0
  %4 = tail call fastcc i32 @broken_idle(ptr noundef nonnull %1)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  store ptr @armada_370_xp_cpu_resume, ptr @mvebu_cpu_resume, align 4
  store ptr @armada_370_xp_cpu_suspend, ptr getelementptr inbounds (%struct.platform_device, ptr @mvebu_v7_cpuidle_device, i32 0, i32 3, i32 7), align 4
  store ptr @.str.6, ptr @mvebu_v7_cpuidle_device, align 8
  br label %7

7:                                                ; preds = %6, %3
  tail call void @of_node_put(ptr noundef nonnull %1) #8
  br label %8

8:                                                ; preds = %7, %0
  %9 = phi i32 [ 0, %7 ], [ -19, %0 ]
  ret i32 %9
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @armada_370_cpuidle_init() unnamed_addr #5 section ".init.text" {
  %1 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.5) #8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %0
  %4 = tail call fastcc i32 @broken_idle(ptr noundef nonnull %1)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = load i32, ptr @pmsu_mp_phys_base, align 4
  %8 = add i32 %7, 292
  %9 = tail call i32 @mvebu_setup_boot_addr_wa(i32 noundef 9, i32 noundef 1, i32 noundef %8)
  store ptr @armada_370_xp_cpu_resume, ptr @mvebu_cpu_resume, align 4
  store ptr @armada_370_xp_cpu_suspend, ptr getelementptr inbounds (%struct.platform_device, ptr @mvebu_v7_cpuidle_device, i32 0, i32 3, i32 7), align 4
  store ptr @.str.9, ptr @mvebu_v7_cpuidle_device, align 8
  br label %10

10:                                               ; preds = %6, %3
  tail call void @of_node_put(ptr noundef nonnull %1) #8
  br label %11

11:                                               ; preds = %10, %0
  %12 = phi i32 [ 0, %10 ], [ -19, %0 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_register_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @broken_idle(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef null) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #10
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi i32 [ 1, %4 ], [ 0, %1 ]
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @armada_370_xp_cpu_resume() #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @armada_370_xp_cpu_suspend(i32 noundef %0) #0 {
  %2 = tail call i32 @cpu_suspend(i32 noundef %0, ptr noundef nonnull @armada_370_xp_pmsu_idle_enter) #8
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_suspend(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvebu_v7_cpu_pm_notify(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  switch i32 %1, label %40 [
    i32 0, label %4
    i32 2, label %17
  ]

4:                                                ; preds = %3
  %5 = tail call ptr @llvm.thread.pointer() #8
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %7
  %9 = load i32, ptr %8, align 4
  %10 = load ptr, ptr @mvebu_cpu_resume, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %11, i32 -2130706432, i32 8454144) #9, !srcloc !9
  %13 = load ptr, ptr @pmsu_mp_base, align 4
  %14 = shl i32 %9, 8
  %15 = add i32 %14, 292
  %16 = getelementptr i8, ptr %13, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %12) #8, !srcloc !10
  br label %40

17:                                               ; preds = %3
  %18 = load ptr, ptr @pmsu_mp_base, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %40, label %20

20:                                               ; preds = %17
  %21 = tail call ptr @llvm.thread.pointer() #8
  %22 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %23 = load i32, ptr %22, align 8
  %24 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %23
  %25 = load i32, ptr %24, align 4
  %26 = shl i32 %25, 8
  %27 = add i32 %26, 260
  %28 = getelementptr i8, ptr %18, i32 %27
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #8, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !28
  %30 = and i32 %29, -1048577
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !29
  tail call void @arm_heavy_mb() #8
  %31 = load ptr, ptr @pmsu_mp_base, align 4
  %32 = getelementptr i8, ptr %31, i32 %27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #8, !srcloc !10
  %33 = load ptr, ptr @pmsu_mp_base, align 4
  %34 = add i32 %26, 268
  %35 = getelementptr i8, ptr %33, i32 %34
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #8, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !30
  %37 = and i32 %36, -53673985
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !31
  tail call void @arm_heavy_mb() #8
  %38 = load ptr, ptr @pmsu_mp_base, align 4
  %39 = getelementptr i8, ptr %38, i32 %34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #8, !srcloc !10
  br label %40

40:                                               ; preds = %20, %17, %4, %3
  ret i32 1
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone }
attributes #10 = { cold nounwind }
attributes #11 = { cold }

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
!8 = !{i64 2152811406}
!9 = !{i64 2148824269, i64 2148824292, i64 2148824324, i64 2148824356, i64 2148824394, i64 2148824424}
!10 = !{i64 2493757}
!11 = !{i64 2152820028, i64 2152820045, i64 2152820075, i64 2152820123, i64 2152820166, i64 2152820214, i64 2152820228, i64 2152820278, i64 2152820326, i64 2152820384, i64 2152820432, i64 2152820446, i64 2152820460}
!12 = !{i64 2152820680}
!13 = !{i64 2152820736}
!14 = !{i64 2151782912}
!15 = !{i64 2151776479, i64 2151776492}
!16 = !{i64 2151783184, i64 2151783197}
!17 = !{i64 2151785945}
!18 = !{i64 2151786004}
!19 = !{i64 8381, i64 8410, i64 8429, i64 8461, i64 8497}
!20 = !{i64 2494175}
!21 = !{i64 2152817158}
!22 = !{i64 2152817903}
!23 = !{i64 2152818497}
!24 = !{i64 2152818906}
!25 = !{i64 2152819500}
!26 = !{i64 2152819823}
!27 = !{i64 2152821418, i64 2152821435, i64 2152821465, i64 2152821513, i64 2152821556, i64 2152821604, i64 2152821618, i64 2152821668, i64 2152821716, i64 2152821774, i64 2152821822, i64 2152821836, i64 2152821850}
!28 = !{i64 2152822709}
!29 = !{i64 2152823034}
!30 = !{i64 2152823628}
!31 = !{i64 2152824373}
!32 = !{i64 2152815957}
!33 = !{i64 2152816231}
!34 = !{!"auto-init"}
!35 = !{i64 2152839075}
!36 = !{i64 2152839396}
!37 = !{i64 2152839985}
!38 = !{i64 2152840308}
!39 = !{i64 2152841301}
!40 = !{i64 2152842710}
!41 = !{i64 2152843033}
!42 = !{i64 350647, i64 350708}
!43 = !{i64 2152835788}
!44 = !{i64 2152836275}
!45 = !{i64 2152836854}
!46 = !{i64 2152837173}
!47 = !{i64 2152837380}
!48 = !{i64 2152837796}
!49 = !{i64 2152838115}
!50 = !{i64 353664}
