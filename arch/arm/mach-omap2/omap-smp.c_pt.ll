; ModuleID = '/llk/IR/arch/arm/mach-omap2/omap-smp.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/omap-smp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.smp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.omap_smp_config = type { i32, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }

@cfg.0 = internal unnamed_addr global i32 0, align 4
@cfg.1 = internal unnamed_addr global ptr null, align 4
@cfg.2 = internal unnamed_addr global ptr null, align 4
@cfg.3 = internal unnamed_addr global ptr null, align 4
@cfg.4 = internal unnamed_addr global ptr null, align 4
@omap4_smp_ops = dso_local local_unnamed_addr constant %struct.smp_operations { ptr @omap4_smp_init_cpus, ptr @omap4_smp_prepare_cpus, ptr @omap4_secondary_init, ptr @omap4_boot_secondary, ptr @omap4_cpu_kill, ptr @omap4_cpu_die, ptr null, ptr null }, section ".init.rodata", align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [53 x i8] c"\014SMP: %u cores greater than maximum (%u), clipping\0A\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@omap443x_cfg = internal unnamed_addr constant %struct.omap_smp_config { i32 1210333196, ptr null, ptr null, ptr null, ptr @omap4_secondary_startup }, section ".init.rodata", align 4
@omap446x_cfg = internal unnamed_addr constant %struct.omap_smp_config { i32 1210333196, ptr null, ptr null, ptr null, ptr @omap4460_secondary_startup }, section ".init.rodata", align 4
@omap5_cfg = internal unnamed_addr constant %struct.omap_smp_config { i32 1210333200, ptr null, ptr null, ptr null, ptr @omap5_secondary_startup }, section ".init.rodata", align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"\013%s Unknown SMP SoC?\0A\00", align 1
@__func__.omap4_smp_prepare_cpus = private unnamed_addr constant [23 x i8] c"omap4_smp_prepare_cpus\00", align 1
@__boot_cpu_mode = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"\014smp: CPU1 not parked?\0A\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"\016smp: CPU1 parked within kernel, needs reset (0x%lx 0x%lx)\0A\00", align 1
@__bss_start = external dso_local global [0 x i8], align 1
@omap4_boot_secondary.cpu1_clkdm = internal unnamed_addr global ptr null, align 4
@omap4_boot_secondary.booted = internal unnamed_addr global i1 false, align 1
@omap4_boot_secondary.cpu1_pwrdm = internal unnamed_addr global ptr null, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"mpu1_clkdm\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"cpu1_pwrdm\00", align 1
@pm44xx_errata = external dso_local local_unnamed_addr global i16, align 2
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @omap4_get_scu_base() local_unnamed_addr #0 {
  %1 = load ptr, ptr @cfg.2, align 4
  ret ptr %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @omap4_smp_init_cpus() #1 section ".init.text" {
  %1 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #5, !srcloc !8
  %2 = and i32 %1, -15728656
  switch i32 %2, label %12 [
    i32 1091551376, label %3
    i32 1091551472, label %11
  ]

3:                                                ; preds = %0
  %4 = tail call i32 asm "mrc p15, 4, $0, c15, c0, 0", "=r"() #5, !srcloc !9
  %5 = add i32 %4, -1308622848
  %6 = inttoptr i32 %5 to ptr
  store ptr %6, ptr @cfg.2, align 4
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %8, label %9, !prof !10

8:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/omap-smp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 271, 0\0A.popsection", ""() #6, !srcloc !11
  unreachable

9:                                                ; preds = %3
  %10 = tail call i32 @scu_get_core_count(ptr noundef nonnull %6) #6
  br label %12

11:                                               ; preds = %0
  br label %12

12:                                               ; preds = %11, %9, %0
  %13 = phi i32 [ %10, %9 ], [ 2, %11 ], [ 1, %0 ]
  %14 = load i32, ptr @nr_cpu_ids, align 4
  %15 = icmp ugt i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %13, i32 noundef %14) #7
  %18 = load i32, ptr @nr_cpu_ids, align 4
  br label %19

19:                                               ; preds = %16, %12
  %20 = phi i32 [ %18, %16 ], [ %13, %12 ]
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %22, %19
  %23 = phi i32 [ %24, %22 ], [ 0, %19 ]
  tail call void @_set_bit(i32 noundef %23, ptr noundef nonnull @__cpu_possible_mask) #6
  %24 = add nuw i32 %23, 1
  %25 = icmp eq i32 %24, %20
  br i1 %25, label %26, label %22

26:                                               ; preds = %22, %19
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @omap4_smp_prepare_cpus(i32 noundef %0) #1 section ".init.text" {
  %2 = tail call i32 @omap_rev() #6
  %3 = and i32 %2, -1048576
  %4 = icmp eq i32 %3, 1143996416
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @omap_rev() #6
  %7 = and i32 %6, -1048576
  %8 = icmp eq i32 %7, 1147142144
  br i1 %8, label %23, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @omap_rev() #6
  %11 = and i32 %10, -1048576
  %12 = icmp eq i32 %11, 122683392
  br i1 %12, label %23, label %13

13:                                               ; preds = %9
  %14 = tail call i32 @omap_rev() #6
  %15 = and i32 %14, 255
  %16 = icmp eq i32 %15, 84
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = tail call i32 @omap_rev() #6
  %19 = and i32 %18, -1048576
  %20 = icmp eq i32 %19, 123731968
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.omap4_smp_prepare_cpus) #7
  br label %63

23:                                               ; preds = %17, %13, %9, %5, %1
  %24 = phi ptr [ @omap446x_cfg, %5 ], [ @omap443x_cfg, %1 ], [ @omap5_cfg, %17 ], [ @omap5_cfg, %13 ], [ @omap5_cfg, %9 ]
  %25 = load i32, ptr %24, align 4
  store i32 %25, ptr @cfg.0, align 4
  %26 = getelementptr inbounds %struct.omap_smp_config, ptr %24, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  store ptr %27, ptr @cfg.4, align 4
  %28 = tail call ptr @omap_get_wakeupgen_base() #6
  store ptr %28, ptr @cfg.3, align 4
  %29 = tail call i32 @omap_rev() #6
  %30 = and i32 %29, -1048576
  %31 = icmp eq i32 %30, 122683392
  br i1 %31, label %40, label %32

32:                                               ; preds = %23
  %33 = tail call i32 @omap_rev() #6
  %34 = and i32 %33, 255
  %35 = icmp eq i32 %34, 84
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = tail call i32 @omap_rev() #6
  %38 = and i32 %37, -1048576
  %39 = icmp eq i32 %38, 123731968
  br i1 %39, label %40, label %45

40:                                               ; preds = %36, %32, %23
  %41 = load i32, ptr @__boot_cpu_mode, align 4
  %42 = and i32 %41, 31
  %43 = icmp eq i32 %42, 26
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store ptr @omap5_secondary_hyp_startup, ptr @cfg.4, align 4
  br label %45

45:                                               ; preds = %44, %40, %36
  %46 = load i32, ptr @cfg.0, align 4
  %47 = tail call ptr @ioremap(i32 noundef %46, i32 noundef 4) #6
  store ptr %47, ptr @cfg.1, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %63, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr @cfg.2, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  tail call void @scu_enable(ptr noundef nonnull %50) #6
  br label %53

53:                                               ; preds = %52, %49
  tail call fastcc void @omap4_smp_maybe_reset_cpu1() #8
  %54 = tail call i32 @omap_secure_apis_support() #6
  %55 = icmp eq i32 %54, 0
  %56 = load ptr, ptr @cfg.4, align 4
  %57 = ptrtoint ptr %56 to i32
  %58 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %57, i32 -2130706432, i32 8454144) #5
  br i1 %55, label %60, label %59

59:                                               ; preds = %53
  tail call void @omap_auxcoreboot_addr(i32 noundef %58) #6
  br label %63

60:                                               ; preds = %53
  %61 = load ptr, ptr @cfg.3, align 4
  %62 = getelementptr i8, ptr %61, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %58) #6, !srcloc !12
  br label %63

63:                                               ; preds = %60, %59, %45, %21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap4_secondary_init(i32 noundef %0) #2 {
  %2 = tail call i32 @omap_rev() #6
  %3 = and i32 %2, -1048576
  %4 = icmp eq i32 %3, 1143996416
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = tail call i32 @omap_type() #6
  %7 = icmp eq i32 %6, 3
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = tail call i32 @omap_secure_dispatcher(i32 noundef 37, i32 noundef 4, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %10

10:                                               ; preds = %8, %5, %1
  %11 = tail call i32 @omap_rev() #6
  %12 = and i32 %11, 255
  %13 = icmp eq i32 %12, 84
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = tail call i32 @omap_rev() #6
  %16 = and i32 %15, -16777216
  %17 = icmp eq i32 %16, 117440512
  br i1 %17, label %18, label %24

18:                                               ; preds = %14, %10
  tail call void @set_cntfreq() #6
  %19 = tail call i32 asm sideeffect "mrc p15, 0, $0, c1, c0, 1", "=r"() #6, !srcloc !13
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = or i32 %19, 1
  tail call void @omap_smc1(i32 noundef 263, i32 noundef %23) #6
  br label %24

24:                                               ; preds = %22, %18, %14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap4_boot_secondary(i32 noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = tail call i32 @omap_secure_apis_support() #6
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @omap_modify_auxcoreboot0(i32 noundef 512, i32 noundef -513) #6
  br label %10

7:                                                ; preds = %2
  %8 = load ptr, ptr @cfg.3, align 4
  %9 = getelementptr i8, ptr %8, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 32) #6, !srcloc !12
  br label %10

10:                                               ; preds = %7, %5
  %11 = load ptr, ptr @omap4_boot_secondary.cpu1_clkdm, align 4
  %12 = icmp ne ptr %11, null
  %13 = load ptr, ptr @omap4_boot_secondary.cpu1_pwrdm, align 4
  %14 = icmp ne ptr %13, null
  %15 = select i1 %12, i1 true, i1 %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %10
  %17 = tail call ptr @clkdm_lookup(ptr noundef nonnull @.str.4) #6
  store ptr %17, ptr @omap4_boot_secondary.cpu1_clkdm, align 4
  %18 = tail call ptr @pwrdm_lookup(ptr noundef nonnull @.str.5) #6
  store ptr %18, ptr @omap4_boot_secondary.cpu1_pwrdm, align 4
  %19 = load ptr, ptr @omap4_boot_secondary.cpu1_clkdm, align 4
  br label %20

20:                                               ; preds = %16, %10
  %21 = phi ptr [ %19, %16 ], [ %11, %10 ]
  %22 = phi ptr [ %18, %16 ], [ %13, %10 ]
  %23 = load i1, ptr @omap4_boot_secondary.booted, align 1
  %24 = icmp ne ptr %22, null
  %25 = select i1 %23, i1 %24, i1 false
  %26 = icmp ne ptr %21, null
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %28, label %48

28:                                               ; preds = %20
  %29 = load i16, ptr @pm44xx_errata, align 2
  %30 = and i16 %29, 1
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #6, !srcloc !14
  tail call void @gic_dist_disable() #6
  %33 = load ptr, ptr @omap4_boot_secondary.cpu1_clkdm, align 4
  br label %34

34:                                               ; preds = %32, %28
  %35 = phi ptr [ %33, %32 ], [ %21, %28 ]
  tail call void @clkdm_deny_idle_nolock(ptr noundef %35) #6
  %36 = load ptr, ptr @omap4_boot_secondary.cpu1_pwrdm, align 4
  %37 = tail call i32 @pwrdm_set_next_pwrst(ptr noundef %36, i8 noundef zeroext 3) #6
  %38 = load ptr, ptr @omap4_boot_secondary.cpu1_clkdm, align 4
  tail call void @clkdm_allow_idle_nolock(ptr noundef %38) #6
  %39 = load i16, ptr @pm44xx_errata, align 2
  %40 = and i16 %39, 1
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %34
  %43 = tail call zeroext i1 @gic_dist_disabled() #6
  br i1 %43, label %44, label %47

44:                                               ; preds = %44, %42
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748) #6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !15
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !16
  %46 = tail call zeroext i1 @gic_dist_disabled() #6
  br i1 %46, label %44, label %47

47:                                               ; preds = %44, %42
  tail call void @gic_timer_retrigger() #6
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #6, !srcloc !17
  br label %49

48:                                               ; preds = %20
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !19
  store i1 true, ptr @omap4_boot_secondary.booted, align 1
  br label %49

49:                                               ; preds = %48, %47, %34
  %50 = and i32 %0, 31
  %51 = add nuw nsw i32 %50, 1
  %52 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %51
  %53 = lshr i32 %0, 5
  %54 = sub nsw i32 0, %53
  %55 = getelementptr i32, ptr %52, i32 %54
  tail call void @arch_send_wakeup_ipi_mask(ptr noundef %55) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4_cpu_kill(i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4_cpu_die(i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scu_get_core_count(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @omap_get_wakeupgen_base() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap5_secondary_hyp_startup() #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @scu_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @omap4_smp_maybe_reset_cpu1() unnamed_addr #1 section ".init.text" {
  %1 = tail call i32 @omap_secure_apis_support() #6
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @omap_read_auxcoreboot0() #6
  %5 = and i32 %4, 512
  br label %11

6:                                                ; preds = %0
  %7 = load ptr, ptr @cfg.3, align 4
  %8 = getelementptr i8, ptr %7, i32 2048
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #6, !srcloc !20
  %10 = and i32 %9, 32
  br label %11

11:                                               ; preds = %6, %3
  %12 = phi i32 [ %5, %3 ], [ %10, %6 ]
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #7
  br label %55

16:                                               ; preds = %11
  %17 = load ptr, ptr @cfg.3, align 4
  %18 = getelementptr i8, ptr %17, i32 2052
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #6, !srcloc !20
  %20 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 -1073741824, i32 -2130706432, i32 8454144) #5, !srcloc !21
  %21 = icmp ugt i32 %20, %19
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @__bss_start to i32), i32 -2130706432, i32 8454144) #5, !srcloc !21
  %24 = icmp ult i32 %23, %19
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %16
  br label %26

26:                                               ; preds = %25, %22
  %27 = phi i1 [ false, %25 ], [ true, %22 ]
  %28 = tail call i32 @omap_rev() #6
  %29 = and i32 %28, 255
  %30 = icmp eq i32 %29, 68
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = tail call i32 @omap_rev() #6
  %33 = and i32 %32, 255
  %34 = icmp eq i32 %33, 84
  br i1 %34, label %35, label %42

35:                                               ; preds = %31, %26
  %36 = tail call i32 @omap4_get_cpu1_ns_pa_addr() #6
  %37 = icmp ugt i32 %20, %36
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @__bss_start to i32), i32 -2130706432, i32 8454144) #5, !srcloc !21
  %40 = icmp ult i32 %39, %36
  br i1 %40, label %41, label %42

41:                                               ; preds = %38, %35
  br label %42

42:                                               ; preds = %41, %38, %31
  %43 = phi i1 [ %27, %31 ], [ %27, %41 ], [ true, %38 ]
  %44 = phi i32 [ 0, %31 ], [ %36, %41 ], [ %36, %38 ]
  %45 = xor i1 %43, true
  %46 = load ptr, ptr @cfg.1, align 4
  %47 = icmp eq ptr %46, null
  %48 = select i1 %45, i1 true, i1 %47
  br i1 %48, label %55, label %49

49:                                               ; preds = %42
  %50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %19, i32 noundef %44) #7
  %51 = load ptr, ptr @cfg.1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 1) #6, !srcloc !12
  %52 = load ptr, ptr @cfg.1, align 4
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #6, !srcloc !20
  %54 = load ptr, ptr @cfg.1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 0) #6, !srcloc !12
  br label %55

55:                                               ; preds = %49, %42, %14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_secure_apis_support() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_auxcoreboot_addr(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4_secondary_startup() #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4460_secondary_startup() #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap5_secondary_startup() #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_read_auxcoreboot0() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4_get_cpu1_ns_pa_addr() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_type() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_secure_dispatcher(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_cntfreq() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_smc1(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_modify_auxcoreboot0(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clkdm_lookup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pwrdm_lookup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gic_dist_disable() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clkdm_deny_idle_nolock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_set_next_pwrst(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clkdm_allow_idle_nolock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @gic_dist_disabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gic_timer_retrigger() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_send_wakeup_ipi_mask(ptr noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { cold }

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
!8 = !{i64 2151332767}
!9 = !{i64 3839179}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2154387982, i64 2154388477, i64 2154388019, i64 2154388075, i64 2154388109, i64 2154388133, i64 2154388174, i64 2154388195, i64 2154388223, i64 2154388257}
!12 = !{i64 3616207}
!13 = !{i64 3371}
!14 = !{i64 624474}
!15 = !{i64 2154387196}
!16 = !{i64 2154387038}
!17 = !{i64 624284}
!18 = !{i64 2149215573}
!19 = !{i64 2149215648, i64 2149215675, i64 2149215722, i64 2149215744, i64 2149215772, i64 2149215792}
!20 = !{i64 3616625}
!21 = !{i64 2148778287, i64 2148778310, i64 2148778342, i64 2148778374, i64 2148778412, i64 2148778442}
