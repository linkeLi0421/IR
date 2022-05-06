; ModuleID = '/llk/IR/arch/arm/mach-sunxi/platsmp.c_pt.bc'
source_filename = "../arch/arm/mach-sunxi/platsmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.smp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_cpu_method = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }

@.str = private unnamed_addr constant [20 x i8] c"allwinner,sun6i-a31\00", align 1
@sun6i_smp_ops = internal constant %struct.smp_operations { ptr null, ptr @sun6i_smp_prepare_cpus, ptr null, ptr @sun6i_smp_boot_secondary, ptr null, ptr null, ptr null, ptr null }, section ".init.rodata", align 4
@__cpu_method_of_table_sun6i_a31_smp = internal constant %struct.of_cpu_method { ptr @.str, ptr @sun6i_smp_ops }, section "__cpu_method_of_table", align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"allwinner,sun8i-a23\00", align 1
@sun8i_smp_ops = internal constant %struct.smp_operations { ptr null, ptr @sun8i_smp_prepare_cpus, ptr null, ptr @sun8i_smp_boot_secondary, ptr null, ptr null, ptr null, ptr null }, section ".init.rodata", align 4
@__cpu_method_of_table_sun8i_a23_smp = internal constant %struct.of_cpu_method { ptr @.str.1, ptr @sun8i_smp_ops }, section "__cpu_method_of_table", align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"allwinner,sun6i-a31-prcm\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"\013Missing A31 PRCM node in the device tree\0A\00", align 1
@prcm_membase = internal unnamed_addr global ptr null, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"\013Couldn't map A31 PRCM registers\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"allwinner,sun6i-a31-cpuconfig\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"\013Missing A31 CPU config node in the device tree\0A\00", align 1
@cpucfg_membase = internal unnamed_addr global ptr null, align 4
@.str.7 = private unnamed_addr constant [41 x i8] c"\013Couldn't map A31 CPU config registers\0A\00", align 1
@cpu_lock = internal global %struct.spinlock zeroinitializer, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"allwinner,sun8i-a23-prcm\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"\013Missing A23 PRCM node in the device tree\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"\013Couldn't map A23 PRCM registers\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"allwinner,sun8i-a23-cpuconfig\00", align 1
@.str.12 = private unnamed_addr constant [50 x i8] c"\013Missing A23 CPU config node in the device tree\0A\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"\013Couldn't map A23 CPU config registers\0A\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__cpu_method_of_table_sun6i_a31_smp, ptr @__cpu_method_of_table_sun8i_a23_smp], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun6i_smp_prepare_cpus(i32 noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.2) #4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @of_iomap(ptr noundef nonnull %2, i32 noundef 0) #4
  store ptr %5, ptr @prcm_membase, align 4
  tail call void @of_node_put(ptr noundef nonnull %2) #4
  %6 = load ptr, ptr @prcm_membase, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.5) #4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = tail call ptr @of_iomap(ptr noundef nonnull %9, i32 noundef 0) #4
  store ptr %12, ptr @cpucfg_membase, align 4
  tail call void @of_node_put(ptr noundef nonnull %9) #4
  %13 = load ptr, ptr @cpucfg_membase, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %11, %8, %4, %1
  %16 = phi ptr [ @.str.3, %1 ], [ @.str.4, %4 ], [ @.str.6, %8 ], [ @.str.7, %11 ]
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %16) #5
  br label %18

18:                                               ; preds = %15, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun6i_smp_boot_secondary(i32 noundef %0, ptr nocapture noundef readnone %1) #1 {
  %3 = load ptr, ptr @prcm_membase, align 4
  %4 = icmp ne ptr %3, null
  %5 = load ptr, ptr @cpucfg_membase, align 4
  %6 = icmp ne ptr %5, null
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %77

8:                                                ; preds = %2
  tail call void @_raw_spin_lock(ptr noundef nonnull @cpu_lock) #4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  %9 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @secondary_startup to i32), i32 -2130706432, i32 8454144) #6, !srcloc !9
  %10 = load ptr, ptr @cpucfg_membase, align 4
  %11 = getelementptr i8, ptr %10, i32 420
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #4, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %12 = load ptr, ptr @cpucfg_membase, align 4
  %13 = shl i32 %0, 6
  %14 = add i32 %13, 64
  %15 = getelementptr i8, ptr %12, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 0) #4, !srcloc !10
  %16 = load ptr, ptr @cpucfg_membase, align 4
  %17 = getelementptr i8, ptr %16, i32 388
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #4, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  %19 = shl nuw i32 1, %0
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  %22 = load ptr, ptr @cpucfg_membase, align 4
  %23 = getelementptr i8, ptr %22, i32 388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #4, !srcloc !10
  %24 = load ptr, ptr @cpucfg_membase, align 4
  %25 = getelementptr i8, ptr %24, i32 484
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #4, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !16
  tail call void @arm_heavy_mb() #4
  %27 = and i32 %26, %20
  %28 = load ptr, ptr @cpucfg_membase, align 4
  %29 = getelementptr i8, ptr %28, i32 484
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #4, !srcloc !10
  %30 = shl i32 %0, 2
  %31 = add i32 %30, 320
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  %32 = load ptr, ptr @prcm_membase, align 4
  %33 = getelementptr i8, ptr %32, i32 %31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 255) #4, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  %34 = load ptr, ptr @prcm_membase, align 4
  %35 = getelementptr i8, ptr %34, i32 %31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 127) #4, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  %36 = load ptr, ptr @prcm_membase, align 4
  %37 = getelementptr i8, ptr %36, i32 %31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 63) #4, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  %38 = load ptr, ptr @prcm_membase, align 4
  %39 = getelementptr i8, ptr %38, i32 %31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 31) #4, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  %40 = load ptr, ptr @prcm_membase, align 4
  %41 = getelementptr i8, ptr %40, i32 %31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 15) #4, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  %42 = load ptr, ptr @prcm_membase, align 4
  %43 = getelementptr i8, ptr %42, i32 %31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 7) #4, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  %44 = load ptr, ptr @prcm_membase, align 4
  %45 = getelementptr i8, ptr %44, i32 %31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 3) #4, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  %46 = load ptr, ptr @prcm_membase, align 4
  %47 = getelementptr i8, ptr %46, i32 %31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 1) #4, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  %48 = load ptr, ptr @prcm_membase, align 4
  %49 = getelementptr i8, ptr %48, i32 %31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 0) #4, !srcloc !10
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 214748000) #4
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 214748000) #4
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 214748000) #4
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748000) #4
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 214748000) #4
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 214748000) #4
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 214748000) #4
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 214748000) #4
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 214748000) #4
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 214748000) #4
  %60 = load ptr, ptr @prcm_membase, align 4
  %61 = getelementptr i8, ptr %60, i32 256
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #4, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  %63 = and i32 %62, %20
  %64 = load ptr, ptr @prcm_membase, align 4
  %65 = getelementptr i8, ptr %64, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %63) #4, !srcloc !10
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %66(i32 noundef 214748000) #4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  %67 = load ptr, ptr @cpucfg_membase, align 4
  %68 = getelementptr i8, ptr %67, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 3) #4, !srcloc !10
  %69 = load ptr, ptr @cpucfg_membase, align 4
  %70 = getelementptr i8, ptr %69, i32 484
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #4, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !21
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !22
  tail call void @arm_heavy_mb() #4
  %72 = or i32 %71, %19
  %73 = load ptr, ptr @cpucfg_membase, align 4
  %74 = getelementptr i8, ptr %73, i32 484
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %72) #4, !srcloc !10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !23
  %75 = load i16, ptr @cpu_lock, align 4
  %76 = add i16 %75, 1
  store i16 %76, ptr @cpu_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !24
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !25
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !26
  br label %77

77:                                               ; preds = %8, %2
  %78 = phi i32 [ 0, %8 ], [ -14, %2 ]
  ret i32 %78
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @secondary_startup() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun8i_smp_prepare_cpus(i32 noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.8) #4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @of_iomap(ptr noundef nonnull %2, i32 noundef 0) #4
  store ptr %5, ptr @prcm_membase, align 4
  tail call void @of_node_put(ptr noundef nonnull %2) #4
  %6 = load ptr, ptr @prcm_membase, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.11) #4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = tail call ptr @of_iomap(ptr noundef nonnull %9, i32 noundef 0) #4
  store ptr %12, ptr @cpucfg_membase, align 4
  tail call void @of_node_put(ptr noundef nonnull %9) #4
  %13 = load ptr, ptr @cpucfg_membase, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %11, %8, %4, %1
  %16 = phi ptr [ @.str.9, %1 ], [ @.str.10, %4 ], [ @.str.12, %8 ], [ @.str.13, %11 ]
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %16) #5
  br label %18

18:                                               ; preds = %15, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun8i_smp_boot_secondary(i32 noundef %0, ptr nocapture noundef readnone %1) #1 {
  %3 = load ptr, ptr @prcm_membase, align 4
  %4 = icmp ne ptr %3, null
  %5 = load ptr, ptr @cpucfg_membase, align 4
  %6 = icmp ne ptr %5, null
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %35

8:                                                ; preds = %2
  tail call void @_raw_spin_lock(ptr noundef nonnull @cpu_lock) #4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  %9 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @secondary_startup to i32), i32 -2130706432, i32 8454144) #6, !srcloc !9
  %10 = load ptr, ptr @cpucfg_membase, align 4
  %11 = getelementptr i8, ptr %10, i32 420
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #4, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !28
  tail call void @arm_heavy_mb() #4
  %12 = load ptr, ptr @cpucfg_membase, align 4
  %13 = shl i32 %0, 6
  %14 = add i32 %13, 64
  %15 = getelementptr i8, ptr %12, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 0) #4, !srcloc !10
  %16 = load ptr, ptr @cpucfg_membase, align 4
  %17 = getelementptr i8, ptr %16, i32 388
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #4, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !29
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !30
  tail call void @arm_heavy_mb() #4
  %19 = shl nuw i32 1, %0
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  %22 = load ptr, ptr @cpucfg_membase, align 4
  %23 = getelementptr i8, ptr %22, i32 388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #4, !srcloc !10
  %24 = load ptr, ptr @prcm_membase, align 4
  %25 = getelementptr i8, ptr %24, i32 256
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #4, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !31
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !32
  tail call void @arm_heavy_mb() #4
  %27 = and i32 %26, %20
  %28 = load ptr, ptr @prcm_membase, align 4
  %29 = getelementptr i8, ptr %28, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #4, !srcloc !10
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !33
  tail call void @arm_heavy_mb() #4
  %31 = load ptr, ptr @cpucfg_membase, align 4
  %32 = getelementptr i8, ptr %31, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 3) #4, !srcloc !10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !23
  %33 = load i16, ptr @cpu_lock, align 4
  %34 = add i16 %33, 1
  store i16 %34, ptr @cpu_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !24
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !25
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !26
  br label %35

35:                                               ; preds = %8, %2
  %36 = phi i32 [ 0, %8 ], [ -14, %2 ]
  ret i32 %36
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }
attributes #6 = { nounwind readnone }

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
!8 = !{i64 2151302330}
!9 = !{i64 2148729113, i64 2148729136, i64 2148729168, i64 2148729200, i64 2148729238, i64 2148729268}
!10 = !{i64 2386517}
!11 = !{i64 2151303100}
!12 = !{i64 2386935}
!13 = !{i64 2151303602}
!14 = !{i64 2151303909}
!15 = !{i64 2151304466}
!16 = !{i64 2151304773}
!17 = !{i64 2151305213}
!18 = !{i64 2151307022}
!19 = !{i64 2151307327}
!20 = !{i64 2151309045}
!21 = !{i64 2151309547}
!22 = !{i64 2151309852}
!23 = !{i64 2149170575}
!24 = !{i64 2149166399}
!25 = !{i64 2149166474, i64 2149166501, i64 2149166548, i64 2149166570, i64 2149166598, i64 2149166618}
!26 = !{i64 2149193578}
!27 = !{i64 2151313713}
!28 = !{i64 2151314483}
!29 = !{i64 2151314985}
!30 = !{i64 2151315292}
!31 = !{i64 2151315843}
!32 = !{i64 2151316148}
!33 = !{i64 2151317866}
