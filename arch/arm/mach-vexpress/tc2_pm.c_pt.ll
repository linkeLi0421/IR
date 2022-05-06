; ModuleID = '/llk/IR/arch/arm/mach-vexpress/tc2_pm.c_pt.bc'
source_filename = "../arch/arm/mach-vexpress/tc2_pm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mcpm_platform_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_tc2_pm__214_263_tc2_pm_initearly = internal global ptr @tc2_pm_init, section ".initcallearly.init", align 4
@.str = private unnamed_addr constant [29 x i8] c"arm,vexpress-scc,v2p-ca15_a7\00", align 1
@scc = internal unnamed_addr global ptr null, align 4
@tc2_nr_cpus = internal unnamed_addr global [2 x i32] zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"\013%s: boot CPU is out of bound!\0A\00", align 1
@__func__.tc2_pm_init = private unnamed_addr constant [12 x i8] c"tc2_pm_init\00", align 1
@tc2_pm_power_ops = internal constant %struct.mcpm_platform_ops { ptr @tc2_pm_cpu_powerup, ptr @tc2_pm_cluster_powerup, ptr @tc2_pm_cpu_suspend_prepare, ptr @tc2_pm_cpu_powerdown_prepare, ptr @tc2_pm_cluster_powerdown_prepare, ptr @tc2_pm_cpu_cache_disable, ptr @tc2_pm_cluster_cache_disable, ptr @tc2_pm_cpu_is_up, ptr @tc2_pm_cluster_is_up, ptr @tc2_pm_wait_for_powerdown }, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"\016TC2 power management initialized\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_tc2_pm__214_263_tc2_pm_initearly], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tc2_pm_init() #0 section ".init.text" {
  %1 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str) #5
  %2 = tail call ptr @of_iomap(ptr noundef %1, i32 noundef 0) #5
  store ptr %2, ptr @scc, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %54, label %4

4:                                                ; preds = %0
  %5 = getelementptr i8, ptr %2, i32 1024
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !8
  %7 = and i32 %6, 15
  %8 = load ptr, ptr @scc, align 4
  %9 = getelementptr i8, ptr %8, i32 1280
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !8
  %11 = and i32 %10, 15
  %12 = icmp ugt i32 %7, 1
  %13 = icmp ugt i32 %11, 1
  %14 = select i1 %12, i1 true, i1 %13
  br i1 %14, label %54, label %15

15:                                               ; preds = %4
  %16 = load ptr, ptr @scc, align 4
  %17 = getelementptr i8, ptr %16, i32 1792
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #5, !srcloc !8
  %19 = lshr i32 %18, 16
  %20 = and i32 %19, 15
  %21 = getelementptr [2 x i32], ptr @tc2_nr_cpus, i32 0, i32 %7
  store i32 %20, ptr %21, align 4
  %22 = lshr i32 %18, 20
  %23 = and i32 %22, 15
  %24 = getelementptr [2 x i32], ptr @tc2_nr_cpus, i32 0, i32 %11
  store i32 %23, ptr %24, align 4
  %25 = tail call i32 @irq_of_parse_and_map(ptr noundef %1, i32 noundef 0) #5
  %26 = load ptr, ptr @scc, align 4
  %27 = getelementptr i8, ptr %26, i32 2816
  %28 = tail call i32 @ve_spc_init(ptr noundef %27, i32 noundef %7, i32 noundef %25) #6
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %54

30:                                               ; preds = %15
  %31 = tail call zeroext i1 @cci_probed() #5
  br i1 %31, label %32, label %54

32:                                               ; preds = %30
  %33 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 5", "=r,~{cc}"() #7, !srcloc !9
  %34 = lshr i32 %33, 8
  %35 = and i32 %34, 255
  %36 = icmp ugt i32 %35, 1
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = and i32 %33, 255
  %39 = getelementptr [2 x i32], ptr @tc2_nr_cpus, i32 0, i32 %35
  %40 = load i32, ptr %39, align 4
  %41 = icmp ult i32 %38, %40
  br i1 %41, label %44, label %42

42:                                               ; preds = %37, %32
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tc2_pm_init) #6
  br label %54

44:                                               ; preds = %37
  %45 = tail call i32 @mcpm_platform_register(ptr noundef nonnull @tc2_pm_power_ops) #6
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = tail call i32 @mcpm_sync_init(ptr noundef nonnull @tc2_pm_power_up_setup) #6
  %49 = tail call i32 @mcpm_loopback(ptr noundef nonnull @tc2_pm_cluster_cache_disable) #6
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %52, label %51, !prof !10

51:                                               ; preds = %47
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-vexpress/tc2_pm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 257, 0\0A.popsection", ""() #5, !srcloc !11
  unreachable

52:                                               ; preds = %47
  %53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #6
  br label %54

54:                                               ; preds = %52, %44, %42, %30, %15, %4, %0
  %55 = phi i32 [ -22, %42 ], [ -19, %0 ], [ -22, %4 ], [ %28, %15 ], [ -19, %30 ], [ 0, %52 ], [ %45, %44 ]
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @ve_spc_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cci_probed() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @mcpm_platform_register(ptr noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @mcpm_sync_init(ptr noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: naked noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tc2_pm_power_up_setup(i32 noundef %0) #3 {
  tail call void asm sideeffect " \0A\09cmp\09r0, #1 \0A\09bxne\09lr \0A\09b\09cci_enable_port_for_self ", ""() #5, !srcloc !12
  unreachable
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @mcpm_loopback(ptr noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tc2_pm_cluster_cache_disable() #4 {
  %1 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #7, !srcloc !13
  %2 = and i32 %1, -16711696
  %3 = icmp eq i32 %2, 1090568432
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  tail call void asm sideeffect "mcr\09p15, 1, $0, c15, c0, 3 \0A\09isb\09\0A\09dsb\09", "r"(i32 1024) #5, !srcloc !14
  br label %5

5:                                                ; preds = %4, %0
  tail call void asm sideeffect ".arch\09armv7-a \0A\09stmfd\09sp!, {fp, ip} \0A\09mrc\09p15, 0, r0, c1, c0, 0\09@ get SCTLR \0A\09bic\09r0, r0, #(1 << 2) \0A\09mcr\09p15, 0, r0, c1, c0, 0\09@ set SCTLR \0A\09isb\09\0A\09bl\09v7_flush_dcache_all \0A\09mrc\09p15, 0, r0, c1, c0, 1\09@ get ACTLR \0A\09bic\09r0, r0, #(1 << 6)\09@ disable local coherency \0A\09mcr\09p15, 0, r0, c1, c0, 1\09@ set ACTLR \0A\09isb\09\0A\09dsb\09\0A\09ldmfd\09sp!, {fp, ip}", "~{r0},~{r1},~{r2},~{r3},~{r4},~{r5},~{r6},~{r7},~{r9},~{r10},~{lr},~{memory}"() #5, !srcloc !15
  %6 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 5", "=r,~{cc}"() #7, !srcloc !9
  %7 = zext i32 %6 to i64
  %8 = tail call i32 @cci_disable_port_by_cpu(i64 noundef %7) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tc2_pm_cpu_powerup(i32 noundef %0, i32 noundef %1) #4 {
  %3 = icmp ugt i32 %1, 1
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr [2 x i32], ptr @tc2_nr_cpus, i32 0, i32 %1
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @mcpm_entry_point to i32), i32 -2130706432, i32 8454144) #7, !srcloc !16
  tail call void @ve_spc_set_resume_addr(i32 noundef %1, i32 noundef %0, i32 noundef %9) #5
  tail call void @ve_spc_cpu_wakeup_irq(i32 noundef %1, i32 noundef %0, i1 noundef zeroext true) #5
  br label %10

10:                                               ; preds = %8, %4, %2
  %11 = phi i32 [ 0, %8 ], [ -22, %4 ], [ -22, %2 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tc2_pm_cluster_powerup(i32 noundef %0) #4 {
  %2 = icmp ugt i32 %0, 1
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @ve_spc_powerdown(i32 noundef %0, i1 noundef zeroext false) #5
  br label %4

4:                                                ; preds = %3, %1
  %5 = phi i32 [ 0, %3 ], [ -22, %1 ]
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tc2_pm_cpu_suspend_prepare(i32 noundef %0, i32 noundef %1) #4 {
  %3 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @mcpm_entry_point to i32), i32 -2130706432, i32 8454144) #7, !srcloc !16
  tail call void @ve_spc_set_resume_addr(i32 noundef %1, i32 noundef %0, i32 noundef %3) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tc2_pm_cpu_powerdown_prepare(i32 noundef %0, i32 noundef %1) #4 {
  %3 = icmp ugt i32 %1, 1
  %4 = icmp ugt i32 %0, 2
  %5 = or i1 %4, %3
  br i1 %5, label %6, label %7, !prof !17

6:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-vexpress/tc2_pm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 71, 0\0A.popsection", ""() #5, !srcloc !18
  unreachable

7:                                                ; preds = %2
  tail call void @ve_spc_cpu_wakeup_irq(i32 noundef %1, i32 noundef %0, i1 noundef zeroext true) #5
  %8 = tail call i32 @gic_cpu_if_down(i32 noundef 0) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tc2_pm_cluster_powerdown_prepare(i32 noundef %0) #4 {
  %2 = icmp ugt i32 %0, 1
  br i1 %2, label %3, label %4, !prof !17

3:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-vexpress/tc2_pm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 86, 0\0A.popsection", ""() #5, !srcloc !19
  unreachable

4:                                                ; preds = %1
  tail call void @ve_spc_powerdown(i32 noundef %0, i1 noundef zeroext true) #5
  tail call void @ve_spc_global_wakeup_irq(i1 noundef zeroext true) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tc2_pm_cpu_cache_disable() #4 {
  tail call void asm sideeffect ".arch\09armv7-a \0A\09stmfd\09sp!, {fp, ip} \0A\09mrc\09p15, 0, r0, c1, c0, 0\09@ get SCTLR \0A\09bic\09r0, r0, #(1 << 2) \0A\09mcr\09p15, 0, r0, c1, c0, 0\09@ set SCTLR \0A\09isb\09\0A\09bl\09v7_flush_dcache_louis \0A\09mrc\09p15, 0, r0, c1, c0, 1\09@ get ACTLR \0A\09bic\09r0, r0, #(1 << 6)\09@ disable local coherency \0A\09mcr\09p15, 0, r0, c1, c0, 1\09@ set ACTLR \0A\09isb\09\0A\09dsb\09\0A\09ldmfd\09sp!, {fp, ip}", "~{r0},~{r1},~{r2},~{r3},~{r4},~{r5},~{r6},~{r7},~{r9},~{r10},~{lr},~{memory}"() #5, !srcloc !20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tc2_pm_cpu_is_up(i32 noundef %0, i32 noundef %1) #4 {
  %3 = icmp ugt i32 %1, 1
  %4 = icmp ugt i32 %0, 2
  %5 = or i1 %4, %3
  br i1 %5, label %6, label %7, !prof !17

6:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-vexpress/tc2_pm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 165, 0\0A.popsection", ""() #5, !srcloc !21
  unreachable

7:                                                ; preds = %2
  tail call void @ve_spc_cpu_wakeup_irq(i32 noundef %1, i32 noundef %0, i1 noundef zeroext false) #5
  tail call void @ve_spc_set_resume_addr(i32 noundef %1, i32 noundef %0, i32 noundef 0) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tc2_pm_cluster_is_up(i32 noundef %0) #4 {
  %2 = icmp ugt i32 %0, 1
  br i1 %2, label %3, label %4, !prof !17

3:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-vexpress/tc2_pm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 173, 0\0A.popsection", ""() #5, !srcloc !22
  unreachable

4:                                                ; preds = %1
  tail call void @ve_spc_powerdown(i32 noundef %0, i1 noundef zeroext false) #5
  tail call void @ve_spc_global_wakeup_irq(i1 noundef zeroext false) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tc2_pm_wait_for_powerdown(i32 noundef %0, i32 noundef %1) #4 {
  %3 = icmp ugt i32 %1, 1
  %4 = icmp ugt i32 %0, 2
  %5 = or i1 %4, %3
  br i1 %5, label %11, label %6, !prof !17

6:                                                ; preds = %2
  %7 = icmp eq i32 %1, 0
  %8 = select i1 %7, i32 2, i32 16
  %9 = add nuw nsw i32 %8, %0
  %10 = shl nuw nsw i32 1, %9
  br label %12

11:                                               ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-vexpress/tc2_pm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 131, 0\0A.popsection", ""() #5, !srcloc !23
  unreachable

12:                                               ; preds = %22, %6
  %13 = phi i32 [ 0, %6 ], [ %23, %22 ]
  %14 = load ptr, ptr @scc, align 4
  %15 = getelementptr i8, ptr %14, i32 24
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #5, !srcloc !8
  %17 = and i32 %16, %10
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %12
  %20 = tail call i32 @ve_spc_cpu_in_wfi(i32 noundef %0, i32 noundef %1) #5
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  tail call void @msleep(i32 noundef 10) #5
  %23 = add nuw nsw i32 %13, 1
  %24 = icmp eq i32 %23, 100
  br i1 %24, label %25, label %12

25:                                               ; preds = %22, %19, %12
  %26 = phi i32 [ 0, %19 ], [ 0, %12 ], [ -110, %22 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ve_spc_set_resume_addr(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mcpm_entry_point() #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ve_spc_cpu_wakeup_irq(i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ve_spc_powerdown(i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gic_cpu_if_down(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ve_spc_global_wakeup_irq(i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ve_spc_cpu_in_wfi(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cci_disable_port_by_cpu(i64 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { naked noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }
attributes #7 = { nounwind readnone }

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
!8 = !{i64 2389217}
!9 = !{i64 2152497820}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2152526534, i64 2152527030, i64 2152526571, i64 2152526627, i64 2152526661, i64 2152526685, i64 2152526726, i64 2152526747, i64 2152526775, i64 2152526809}
!12 = !{i64 5425, i64 5432, i64 5449, i64 5463}
!13 = !{i64 2152495206}
!14 = !{i64 2743, i64 2773, i64 2786}
!15 = !{i64 2152512328, i64 2152512345, i64 2152512375, i64 2152512423, i64 2152512466, i64 2152512514, i64 2152512528, i64 2152512578, i64 2152512626, i64 2152512684, i64 2152512732, i64 2152512746, i64 2152512760}
!16 = !{i64 2148731395, i64 2148731418, i64 2148731450, i64 2148731482, i64 2148731520, i64 2148731550}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{i64 2152509295, i64 2152509790, i64 2152509332, i64 2152509388, i64 2152509422, i64 2152509446, i64 2152509487, i64 2152509508, i64 2152509536, i64 2152509570}
!19 = !{i64 2152510893, i64 2152511388, i64 2152510930, i64 2152510986, i64 2152511020, i64 2152511044, i64 2152511085, i64 2152511106, i64 2152511134, i64 2152511168}
!20 = !{i64 2152511664, i64 2152511681, i64 2152511711, i64 2152511759, i64 2152511802, i64 2152511850, i64 2152511864, i64 2152511914, i64 2152511962, i64 2152512020, i64 2152512068, i64 2152512082, i64 2152512096}
!21 = !{i64 2152517575, i64 2152518071, i64 2152517612, i64 2152517668, i64 2152517702, i64 2152517726, i64 2152517767, i64 2152517788, i64 2152517816, i64 2152517850}
!22 = !{i64 2152523237, i64 2152523733, i64 2152523274, i64 2152523330, i64 2152523364, i64 2152523388, i64 2152523429, i64 2152523450, i64 2152523478, i64 2152523512}
!23 = !{i64 2152514131, i64 2152514627, i64 2152514168, i64 2152514224, i64 2152514258, i64 2152514282, i64 2152514323, i64 2152514344, i64 2152514372, i64 2152514406}
