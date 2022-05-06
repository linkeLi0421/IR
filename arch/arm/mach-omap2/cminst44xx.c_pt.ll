; ModuleID = '/llk/IR/arch/arm/mach-omap2/cminst44xx.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/cminst44xx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clkdm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cm_ll_data = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.omap_domain_base = type { i32, ptr, i16 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.clockdomain = type { ptr, %union.anon, i16, i8, i8, i8, i8, i16, i16, ptr, ptr, i32, i32, %struct.list_head, i32 }
%union.anon = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.clkdm_dep = type { ptr, ptr, i16, i16 }

@omap4_clkdm_operations = dso_local local_unnamed_addr global %struct.clkdm_ops { ptr @omap4_clkdm_add_wkup_sleep_dep, ptr @omap4_clkdm_del_wkup_sleep_dep, ptr @omap4_clkdm_read_wkup_sleep_dep, ptr @omap4_clkdm_clear_all_wkup_sleep_deps, ptr @omap4_clkdm_add_wkup_sleep_dep, ptr @omap4_clkdm_del_wkup_sleep_dep, ptr @omap4_clkdm_read_wkup_sleep_dep, ptr @omap4_clkdm_clear_all_wkup_sleep_deps, ptr @omap4_clkdm_sleep, ptr @omap4_clkdm_wakeup, ptr @omap4_clkdm_allow_idle, ptr @omap4_clkdm_deny_idle, ptr @omap4_clkdm_clk_enable, ptr @omap4_clkdm_clk_disable, ptr @omap4_clkdm_save_context, ptr @omap4_clkdm_restore_context }, align 4
@am43xx_clkdm_operations = dso_local local_unnamed_addr global %struct.clkdm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap4_clkdm_sleep, ptr @omap4_clkdm_wakeup, ptr @omap4_clkdm_allow_idle, ptr @omap4_clkdm_deny_idle, ptr @omap4_clkdm_clk_enable, ptr @omap4_clkdm_clk_disable, ptr null, ptr null }, align 4
@omap4xxx_cm_ll_data = internal constant %struct.cm_ll_data { ptr null, ptr @omap4_cminst_wait_module_ready, ptr @omap4_cminst_wait_module_idle, ptr @omap4_cminst_module_enable, ptr @omap4_cminst_module_disable, ptr @omap4_cminst_xlate_clkctrl }, align 4
@__exitcall_omap4_cm_exit = internal global ptr @omap4_cm_exit, section ".exitcall.exit", align 4
@_cm_bases = internal unnamed_addr global [6 x %struct.omap_domain_base] zeroinitializer, align 4
@prm_base = external dso_local local_unnamed_addr global %struct.omap_domain_base, align 4
@cm_base = external dso_local local_unnamed_addr global %struct.omap_domain_base, align 4
@cm2_base = external dso_local local_unnamed_addr global %struct.omap_domain_base, align 4
@prcm_mpu_base = external dso_local local_unnamed_addr global %struct.omap_domain_base, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__exitcall_omap4_cm_exit, ptr @omap4_cm_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap4_clkdm_add_wkup_sleep_dep(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.clockdomain, ptr %1, i32 0, i32 5
  %4 = load i8, ptr %3, align 4
  %5 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 6
  %6 = load i8, ptr %5, align 1
  %7 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 7
  %8 = load i16, ptr %7, align 2
  %9 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 8
  %10 = load i16, ptr %9, align 4
  %11 = add i16 %10, 4
  %12 = add i8 %6, -6
  %13 = icmp ult i8 %12, -5
  br i1 %13, label %19, label %14, !prof !8

14:                                               ; preds = %2
  %15 = zext i8 %6 to i32
  %16 = getelementptr [6 x %struct.omap_domain_base], ptr @_cm_bases, i32 0, i32 %15, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20, !prof !9

19:                                               ; preds = %14, %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 117, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

20:                                               ; preds = %14
  %21 = zext i16 %8 to i32
  %22 = getelementptr i8, ptr %17, i32 %21
  %23 = zext i16 %11 to i32
  %24 = getelementptr i8, ptr %22, i32 %23
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #5, !srcloc !11
  %26 = load ptr, ptr %16, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %29, !prof !9

28:                                               ; preds = %20
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #5, !srcloc !12
  unreachable

29:                                               ; preds = %20
  %30 = zext i8 %4 to i32
  %31 = shl nuw i32 1, %30
  %32 = or i32 %25, %31
  %33 = getelementptr i8, ptr %26, i32 %21
  %34 = getelementptr i8, ptr %33, i32 %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #5, !srcloc !13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap4_clkdm_del_wkup_sleep_dep(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.clockdomain, ptr %1, i32 0, i32 5
  %4 = load i8, ptr %3, align 4
  %5 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 6
  %6 = load i8, ptr %5, align 1
  %7 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 7
  %8 = load i16, ptr %7, align 2
  %9 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 8
  %10 = load i16, ptr %9, align 4
  %11 = add i16 %10, 4
  %12 = add i8 %6, -6
  %13 = icmp ult i8 %12, -5
  br i1 %13, label %19, label %14, !prof !8

14:                                               ; preds = %2
  %15 = zext i8 %6 to i32
  %16 = getelementptr [6 x %struct.omap_domain_base], ptr @_cm_bases, i32 0, i32 %15, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20, !prof !9

19:                                               ; preds = %14, %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 117, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

20:                                               ; preds = %14
  %21 = zext i16 %8 to i32
  %22 = getelementptr i8, ptr %17, i32 %21
  %23 = zext i16 %11 to i32
  %24 = getelementptr i8, ptr %22, i32 %23
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #5, !srcloc !11
  %26 = load ptr, ptr %16, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %29, !prof !9

28:                                               ; preds = %20
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #5, !srcloc !12
  unreachable

29:                                               ; preds = %20
  %30 = zext i8 %4 to i32
  %31 = shl nuw i32 1, %30
  %32 = xor i32 %31, -1
  %33 = and i32 %25, %32
  %34 = getelementptr i8, ptr %26, i32 %21
  %35 = getelementptr i8, ptr %34, i32 %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #5, !srcloc !13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap4_clkdm_read_wkup_sleep_dep(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 6
  %4 = load i8, ptr %3, align 1
  %5 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 7
  %6 = load i16, ptr %5, align 2
  %7 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 8
  %8 = load i16, ptr %7, align 4
  %9 = getelementptr inbounds %struct.clockdomain, ptr %1, i32 0, i32 5
  %10 = load i8, ptr %9, align 4
  %11 = add i8 %4, -6
  %12 = icmp ult i8 %11, -5
  br i1 %12, label %18, label %13, !prof !8

13:                                               ; preds = %2
  %14 = zext i8 %4 to i32
  %15 = getelementptr [6 x %struct.omap_domain_base], ptr @_cm_bases, i32 0, i32 %14, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19, !prof !9

18:                                               ; preds = %13, %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 117, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

19:                                               ; preds = %13
  %20 = zext i8 %10 to i32
  %21 = shl nuw i32 1, %20
  %22 = add i16 %8, 4
  %23 = zext i16 %6 to i32
  %24 = getelementptr i8, ptr %16, i32 %23
  %25 = zext i16 %22 to i32
  %26 = getelementptr i8, ptr %24, i32 %25
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #5, !srcloc !11
  %28 = and i32 %27, %21
  %29 = lshr i32 %28, %20
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap4_clkdm_clear_all_wkup_sleep_deps(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 6
  %3 = load i8, ptr %2, align 1
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %62, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %32, label %9

9:                                                ; preds = %25, %5
  %10 = phi i32 [ %26, %25 ], [ 0, %5 ]
  %11 = phi ptr [ %27, %25 ], [ %7, %5 ]
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %29, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.clkdm_dep, ptr %11, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.clockdomain, ptr %16, i32 0, i32 5
  %20 = load i8, ptr %19, align 4
  %21 = zext i8 %20 to i32
  %22 = shl nuw i32 1, %21
  %23 = or i32 %22, %10
  %24 = getelementptr inbounds %struct.clkdm_dep, ptr %11, i32 0, i32 2
  store i16 0, ptr %24, align 4
  br label %25

25:                                               ; preds = %18, %14
  %26 = phi i32 [ %23, %18 ], [ %10, %14 ]
  %27 = getelementptr %struct.clkdm_dep, ptr %11, i32 1
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %9

29:                                               ; preds = %25, %9
  %30 = phi i32 [ %10, %9 ], [ %26, %25 ]
  %31 = load i8, ptr %2, align 1
  br label %32

32:                                               ; preds = %29, %5
  %33 = phi i8 [ %3, %5 ], [ %31, %29 ]
  %34 = phi i32 [ 0, %5 ], [ %30, %29 ]
  %35 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 7
  %36 = load i16, ptr %35, align 2
  %37 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 8
  %38 = load i16, ptr %37, align 4
  %39 = add i16 %38, 4
  %40 = add i8 %33, -6
  %41 = icmp ult i8 %40, -5
  br i1 %41, label %47, label %42, !prof !8

42:                                               ; preds = %32
  %43 = zext i8 %33 to i32
  %44 = getelementptr [6 x %struct.omap_domain_base], ptr @_cm_bases, i32 0, i32 %43, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %48, !prof !9

47:                                               ; preds = %42, %32
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 117, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

48:                                               ; preds = %42
  %49 = zext i16 %36 to i32
  %50 = getelementptr i8, ptr %45, i32 %49
  %51 = zext i16 %39 to i32
  %52 = getelementptr i8, ptr %50, i32 %51
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #5, !srcloc !11
  %54 = load ptr, ptr %44, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %57, !prof !9

56:                                               ; preds = %48
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #5, !srcloc !12
  unreachable

57:                                               ; preds = %48
  %58 = xor i32 %34, -1
  %59 = and i32 %53, %58
  %60 = getelementptr i8, ptr %54, i32 %49
  %61 = getelementptr i8, ptr %60, i32 %51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %59) #5, !srcloc !13
  br label %62

62:                                               ; preds = %57, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap4_clkdm_sleep(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 3
  %3 = load i8, ptr %2, align 2
  %4 = zext i8 %3 to i32
  %5 = and i32 %4, 12
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %35, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 6
  %9 = load i8, ptr %8, align 1
  %10 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 7
  %11 = load i16, ptr %10, align 2
  %12 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 8
  %13 = load i16, ptr %12, align 4
  %14 = add i8 %9, -6
  %15 = icmp ult i8 %14, -5
  br i1 %15, label %21, label %16, !prof !8

16:                                               ; preds = %7
  %17 = zext i8 %9 to i32
  %18 = getelementptr [6 x %struct.omap_domain_base], ptr @_cm_bases, i32 0, i32 %17, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22, !prof !9

21:                                               ; preds = %16, %7
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 117, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

22:                                               ; preds = %16
  %23 = zext i16 %11 to i32
  %24 = getelementptr i8, ptr %19, i32 %23
  %25 = zext i16 %13 to i32
  %26 = getelementptr i8, ptr %24, i32 %25
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #5, !srcloc !11
  %28 = load ptr, ptr %18, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31, !prof !9

30:                                               ; preds = %22
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #5, !srcloc !12
  unreachable

31:                                               ; preds = %22
  %32 = or i32 %27, 3
  %33 = getelementptr i8, ptr %28, i32 %23
  %34 = getelementptr i8, ptr %33, i32 %25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #5, !srcloc !13
  br label %67

35:                                               ; preds = %1
  %36 = and i32 %4, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %67, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 6
  %40 = load i8, ptr %39, align 1
  %41 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 7
  %42 = load i16, ptr %41, align 2
  %43 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 8
  %44 = load i16, ptr %43, align 4
  %45 = add i8 %40, -6
  %46 = icmp ult i8 %45, -5
  br i1 %46, label %52, label %47, !prof !8

47:                                               ; preds = %38
  %48 = zext i8 %40 to i32
  %49 = getelementptr [6 x %struct.omap_domain_base], ptr @_cm_bases, i32 0, i32 %48, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %53, !prof !9

52:                                               ; preds = %47, %38
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 117, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

53:                                               ; preds = %47
  %54 = zext i16 %42 to i32
  %55 = getelementptr i8, ptr %50, i32 %54
  %56 = zext i16 %44 to i32
  %57 = getelementptr i8, ptr %55, i32 %56
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #5, !srcloc !11
  %59 = load ptr, ptr %49, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %62, !prof !9

61:                                               ; preds = %53
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #5, !srcloc !12
  unreachable

62:                                               ; preds = %53
  %63 = and i32 %58, -4
  %64 = or i32 %63, 1
  %65 = getelementptr i8, ptr %59, i32 %54
  %66 = getelementptr i8, ptr %65, i32 %56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %64) #5, !srcloc !13
  br label %67

67:                                               ; preds = %62, %35, %31
  %68 = phi i32 [ -22, %35 ], [ 0, %62 ], [ 0, %31 ]
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap4_clkdm_wakeup(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 6
  %3 = load i8, ptr %2, align 1
  %4 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 7
  %5 = load i16, ptr %4, align 2
  %6 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 8
  %7 = load i16, ptr %6, align 4
  %8 = add i8 %3, -6
  %9 = icmp ult i8 %8, -5
  br i1 %9, label %15, label %10, !prof !8

10:                                               ; preds = %1
  %11 = zext i8 %3 to i32
  %12 = getelementptr [6 x %struct.omap_domain_base], ptr @_cm_bases, i32 0, i32 %11, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16, !prof !9

15:                                               ; preds = %10, %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 117, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

16:                                               ; preds = %10
  %17 = zext i16 %5 to i32
  %18 = getelementptr i8, ptr %13, i32 %17
  %19 = zext i16 %7 to i32
  %20 = getelementptr i8, ptr %18, i32 %19
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #5, !srcloc !11
  %22 = load ptr, ptr %12, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25, !prof !9

24:                                               ; preds = %16
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #5, !srcloc !12
  unreachable

25:                                               ; preds = %16
  %26 = and i32 %21, -4
  %27 = or i32 %26, 2
  %28 = getelementptr i8, ptr %22, i32 %17
  %29 = getelementptr i8, ptr %28, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #5, !srcloc !13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap4_clkdm_allow_idle(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 6
  %3 = load i8, ptr %2, align 1
  %4 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 7
  %5 = load i16, ptr %4, align 2
  %6 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 8
  %7 = load i16, ptr %6, align 4
  %8 = add i8 %3, -6
  %9 = icmp ult i8 %8, -5
  br i1 %9, label %15, label %10, !prof !8

10:                                               ; preds = %1
  %11 = zext i8 %3 to i32
  %12 = getelementptr [6 x %struct.omap_domain_base], ptr @_cm_bases, i32 0, i32 %11, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16, !prof !9

15:                                               ; preds = %10, %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 117, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

16:                                               ; preds = %10
  %17 = zext i16 %5 to i32
  %18 = getelementptr i8, ptr %13, i32 %17
  %19 = zext i16 %7 to i32
  %20 = getelementptr i8, ptr %18, i32 %19
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #5, !srcloc !11
  %22 = load ptr, ptr %12, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25, !prof !9

24:                                               ; preds = %16
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #5, !srcloc !12
  unreachable

25:                                               ; preds = %16
  %26 = or i32 %21, 3
  %27 = getelementptr i8, ptr %22, i32 %17
  %28 = getelementptr i8, ptr %27, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #5, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap4_clkdm_deny_idle(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 3
  %3 = load i8, ptr %2, align 2
  %4 = and i8 %3, 2
  %5 = icmp eq i8 %4, 0
  %6 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 6
  %7 = load i8, ptr %6, align 1
  %8 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 7
  %9 = load i16, ptr %8, align 2
  %10 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 8
  %11 = load i16, ptr %10, align 4
  %12 = add i8 %7, -6
  %13 = icmp ult i8 %12, -5
  br i1 %5, label %35, label %14

14:                                               ; preds = %1
  br i1 %13, label %20, label %15, !prof !8

15:                                               ; preds = %14
  %16 = zext i8 %7 to i32
  %17 = getelementptr [6 x %struct.omap_domain_base], ptr @_cm_bases, i32 0, i32 %16, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21, !prof !9

20:                                               ; preds = %15, %14
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 117, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

21:                                               ; preds = %15
  %22 = zext i16 %9 to i32
  %23 = getelementptr i8, ptr %18, i32 %22
  %24 = zext i16 %11 to i32
  %25 = getelementptr i8, ptr %23, i32 %24
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #5, !srcloc !11
  %27 = load ptr, ptr %17, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %30, !prof !9

29:                                               ; preds = %21
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #5, !srcloc !12
  unreachable

30:                                               ; preds = %21
  %31 = and i32 %26, -4
  %32 = or i32 %31, 2
  %33 = getelementptr i8, ptr %27, i32 %22
  %34 = getelementptr i8, ptr %33, i32 %24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #5, !srcloc !13
  br label %55

35:                                               ; preds = %1
  br i1 %13, label %41, label %36, !prof !8

36:                                               ; preds = %35
  %37 = zext i8 %7 to i32
  %38 = getelementptr [6 x %struct.omap_domain_base], ptr @_cm_bases, i32 0, i32 %37, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %42, !prof !9

41:                                               ; preds = %36, %35
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 117, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

42:                                               ; preds = %36
  %43 = zext i16 %9 to i32
  %44 = getelementptr i8, ptr %39, i32 %43
  %45 = zext i16 %11 to i32
  %46 = getelementptr i8, ptr %44, i32 %45
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #5, !srcloc !11
  %48 = load ptr, ptr %38, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %51, !prof !9

50:                                               ; preds = %42
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #5, !srcloc !12
  unreachable

51:                                               ; preds = %42
  %52 = and i32 %47, -4
  %53 = getelementptr i8, ptr %48, i32 %43
  %54 = getelementptr i8, ptr %53, i32 %45
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %52) #5, !srcloc !13
  br label %55

55:                                               ; preds = %51, %30
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap4_clkdm_clk_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 3
  %3 = load i8, ptr %2, align 2
  %4 = and i8 %3, 2
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %35, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 6
  %8 = load i8, ptr %7, align 1
  %9 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 7
  %10 = load i16, ptr %9, align 2
  %11 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 8
  %12 = load i16, ptr %11, align 4
  %13 = add i8 %8, -6
  %14 = icmp ult i8 %13, -5
  br i1 %14, label %20, label %15, !prof !8

15:                                               ; preds = %6
  %16 = zext i8 %8 to i32
  %17 = getelementptr [6 x %struct.omap_domain_base], ptr @_cm_bases, i32 0, i32 %16, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21, !prof !9

20:                                               ; preds = %15, %6
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 117, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

21:                                               ; preds = %15
  %22 = zext i16 %10 to i32
  %23 = getelementptr i8, ptr %18, i32 %22
  %24 = zext i16 %12 to i32
  %25 = getelementptr i8, ptr %23, i32 %24
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #5, !srcloc !11
  %27 = load ptr, ptr %17, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %30, !prof !9

29:                                               ; preds = %21
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #5, !srcloc !12
  unreachable

30:                                               ; preds = %21
  %31 = and i32 %26, -4
  %32 = or i32 %31, 2
  %33 = getelementptr i8, ptr %27, i32 %22
  %34 = getelementptr i8, ptr %33, i32 %24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #5, !srcloc !13
  br label %35

35:                                               ; preds = %30, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap4_clkdm_clk_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 6
  %3 = load i8, ptr %2, align 1
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %113, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 3
  %7 = load i8, ptr %6, align 2
  %8 = and i8 %7, 65
  %9 = icmp eq i8 %8, 64
  %10 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 7
  %11 = load i16, ptr %10, align 2
  %12 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 8
  %13 = load i16, ptr %12, align 4
  %14 = add i8 %3, -6
  %15 = icmp ult i8 %14, -5
  br i1 %9, label %16, label %36

16:                                               ; preds = %5
  br i1 %15, label %22, label %17, !prof !8

17:                                               ; preds = %16
  %18 = zext i8 %3 to i32
  %19 = getelementptr [6 x %struct.omap_domain_base], ptr @_cm_bases, i32 0, i32 %18, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23, !prof !9

22:                                               ; preds = %17, %16
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 117, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

23:                                               ; preds = %17
  %24 = zext i16 %11 to i32
  %25 = getelementptr i8, ptr %20, i32 %24
  %26 = zext i16 %13 to i32
  %27 = getelementptr i8, ptr %25, i32 %26
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #5, !srcloc !11
  %29 = load ptr, ptr %19, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %32, !prof !9

31:                                               ; preds = %23
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #5, !srcloc !12
  unreachable

32:                                               ; preds = %23
  %33 = or i32 %28, 3
  %34 = getelementptr i8, ptr %29, i32 %24
  %35 = getelementptr i8, ptr %34, i32 %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #5, !srcloc !13
  br label %113

36:                                               ; preds = %5
  br i1 %15, label %42, label %37, !prof !8

37:                                               ; preds = %36
  %38 = zext i8 %3 to i32
  %39 = getelementptr [6 x %struct.omap_domain_base], ptr @_cm_bases, i32 0, i32 %38, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %43, !prof !9

42:                                               ; preds = %37, %36
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 117, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

43:                                               ; preds = %37
  %44 = zext i16 %11 to i32
  %45 = getelementptr i8, ptr %40, i32 %44
  %46 = zext i16 %13 to i32
  %47 = getelementptr i8, ptr %45, i32 %46
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #5, !srcloc !11
  %49 = and i32 %48, 3
  %50 = icmp eq i32 %49, 3
  br i1 %50, label %113, label %51

51:                                               ; preds = %43
  %52 = load i8, ptr %6, align 2
  %53 = and i8 %52, 1
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %113, label %55

55:                                               ; preds = %51
  %56 = zext i8 %52 to i32
  %57 = and i32 %56, 12
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %84, label %59

59:                                               ; preds = %55
  %60 = load i8, ptr %2, align 1
  %61 = load i16, ptr %10, align 2
  %62 = load i16, ptr %12, align 4
  %63 = add i8 %60, -6
  %64 = icmp ult i8 %63, -5
  br i1 %64, label %70, label %65, !prof !8

65:                                               ; preds = %59
  %66 = zext i8 %60 to i32
  %67 = getelementptr [6 x %struct.omap_domain_base], ptr @_cm_bases, i32 0, i32 %66, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %71, !prof !9

70:                                               ; preds = %65, %59
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 117, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

71:                                               ; preds = %65
  %72 = zext i16 %61 to i32
  %73 = getelementptr i8, ptr %68, i32 %72
  %74 = zext i16 %62 to i32
  %75 = getelementptr i8, ptr %73, i32 %74
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #5, !srcloc !11
  %77 = load ptr, ptr %67, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %80, !prof !9

79:                                               ; preds = %71
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #5, !srcloc !12
  unreachable

80:                                               ; preds = %71
  %81 = or i32 %76, 3
  %82 = getelementptr i8, ptr %77, i32 %72
  %83 = getelementptr i8, ptr %82, i32 %74
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %81) #5, !srcloc !13
  br label %113

84:                                               ; preds = %55
  %85 = and i32 %56, 1
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %113, label %87

87:                                               ; preds = %84
  %88 = load i8, ptr %2, align 1
  %89 = load i16, ptr %10, align 2
  %90 = load i16, ptr %12, align 4
  %91 = add i8 %88, -6
  %92 = icmp ult i8 %91, -5
  br i1 %92, label %98, label %93, !prof !8

93:                                               ; preds = %87
  %94 = zext i8 %88 to i32
  %95 = getelementptr [6 x %struct.omap_domain_base], ptr @_cm_bases, i32 0, i32 %94, i32 1
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %99, !prof !9

98:                                               ; preds = %93, %87
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 117, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

99:                                               ; preds = %93
  %100 = zext i16 %89 to i32
  %101 = getelementptr i8, ptr %96, i32 %100
  %102 = zext i16 %90 to i32
  %103 = getelementptr i8, ptr %101, i32 %102
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %103) #5, !srcloc !11
  %105 = load ptr, ptr %95, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %108, !prof !9

107:                                              ; preds = %99
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #5, !srcloc !12
  unreachable

108:                                              ; preds = %99
  %109 = and i32 %104, -4
  %110 = or i32 %109, 1
  %111 = getelementptr i8, ptr %105, i32 %100
  %112 = getelementptr i8, ptr %111, i32 %102
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %112, i32 %110) #5, !srcloc !13
  br label %113

113:                                              ; preds = %108, %84, %80, %51, %43, %32, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap4_clkdm_save_context(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 6
  %3 = load i8, ptr %2, align 1
  %4 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 7
  %5 = load i16, ptr %4, align 2
  %6 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 8
  %7 = load i16, ptr %6, align 4
  %8 = add i8 %3, -6
  %9 = icmp ult i8 %8, -5
  br i1 %9, label %15, label %10, !prof !8

10:                                               ; preds = %1
  %11 = zext i8 %3 to i32
  %12 = getelementptr [6 x %struct.omap_domain_base], ptr @_cm_bases, i32 0, i32 %11, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16, !prof !9

15:                                               ; preds = %10, %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 117, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

16:                                               ; preds = %10
  %17 = zext i16 %5 to i32
  %18 = getelementptr i8, ptr %13, i32 %17
  %19 = zext i16 %7 to i32
  %20 = getelementptr i8, ptr %18, i32 %19
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #5, !srcloc !11
  %22 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 14
  %23 = and i32 %21, 3
  store i32 %23, ptr %22, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap4_clkdm_restore_context(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 14
  %3 = load i32, ptr %2, align 4
  switch i32 %3, label %181 [
    i32 0, label %4
    i32 1, label %58
    i32 2, label %124
    i32 3, label %153
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 3
  %6 = load i8, ptr %5, align 2
  %7 = and i8 %6, 2
  %8 = icmp eq i8 %7, 0
  %9 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 6
  %10 = load i8, ptr %9, align 1
  %11 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 7
  %12 = load i16, ptr %11, align 2
  %13 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 8
  %14 = load i16, ptr %13, align 4
  %15 = add i8 %10, -6
  %16 = icmp ult i8 %15, -5
  br i1 %8, label %38, label %17

17:                                               ; preds = %4
  br i1 %16, label %23, label %18, !prof !8

18:                                               ; preds = %17
  %19 = zext i8 %10 to i32
  %20 = getelementptr [6 x %struct.omap_domain_base], ptr @_cm_bases, i32 0, i32 %19, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24, !prof !9

23:                                               ; preds = %18, %17
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 117, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

24:                                               ; preds = %18
  %25 = zext i16 %12 to i32
  %26 = getelementptr i8, ptr %21, i32 %25
  %27 = zext i16 %14 to i32
  %28 = getelementptr i8, ptr %26, i32 %27
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #5, !srcloc !11
  %30 = load ptr, ptr %20, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %33, !prof !9

32:                                               ; preds = %24
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #5, !srcloc !12
  unreachable

33:                                               ; preds = %24
  %34 = and i32 %29, -4
  %35 = or i32 %34, 2
  %36 = getelementptr i8, ptr %30, i32 %25
  %37 = getelementptr i8, ptr %36, i32 %27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #5, !srcloc !13
  br label %181

38:                                               ; preds = %4
  br i1 %16, label %44, label %39, !prof !8

39:                                               ; preds = %38
  %40 = zext i8 %10 to i32
  %41 = getelementptr [6 x %struct.omap_domain_base], ptr @_cm_bases, i32 0, i32 %40, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %45, !prof !9

44:                                               ; preds = %39, %38
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 117, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

45:                                               ; preds = %39
  %46 = zext i16 %12 to i32
  %47 = getelementptr i8, ptr %42, i32 %46
  %48 = zext i16 %14 to i32
  %49 = getelementptr i8, ptr %47, i32 %48
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #5, !srcloc !11
  %51 = load ptr, ptr %41, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %54, !prof !9

53:                                               ; preds = %45
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #5, !srcloc !12
  unreachable

54:                                               ; preds = %45
  %55 = and i32 %50, -4
  %56 = getelementptr i8, ptr %51, i32 %46
  %57 = getelementptr i8, ptr %56, i32 %48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %55) #5, !srcloc !13
  br label %181

58:                                               ; preds = %1
  %59 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 3
  %60 = load i8, ptr %59, align 2
  %61 = zext i8 %60 to i32
  %62 = and i32 %61, 12
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %92, label %64

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 6
  %66 = load i8, ptr %65, align 1
  %67 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 7
  %68 = load i16, ptr %67, align 2
  %69 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 8
  %70 = load i16, ptr %69, align 4
  %71 = add i8 %66, -6
  %72 = icmp ult i8 %71, -5
  br i1 %72, label %78, label %73, !prof !8

73:                                               ; preds = %64
  %74 = zext i8 %66 to i32
  %75 = getelementptr [6 x %struct.omap_domain_base], ptr @_cm_bases, i32 0, i32 %74, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %79, !prof !9

78:                                               ; preds = %73, %64
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 117, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

79:                                               ; preds = %73
  %80 = zext i16 %68 to i32
  %81 = getelementptr i8, ptr %76, i32 %80
  %82 = zext i16 %70 to i32
  %83 = getelementptr i8, ptr %81, i32 %82
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #5, !srcloc !11
  %85 = load ptr, ptr %75, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %88, !prof !9

87:                                               ; preds = %79
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #5, !srcloc !12
  unreachable

88:                                               ; preds = %79
  %89 = or i32 %84, 3
  %90 = getelementptr i8, ptr %85, i32 %80
  %91 = getelementptr i8, ptr %90, i32 %82
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %89) #5, !srcloc !13
  br label %181

92:                                               ; preds = %58
  %93 = and i32 %61, 1
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %181, label %95

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 6
  %97 = load i8, ptr %96, align 1
  %98 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 7
  %99 = load i16, ptr %98, align 2
  %100 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 8
  %101 = load i16, ptr %100, align 4
  %102 = add i8 %97, -6
  %103 = icmp ult i8 %102, -5
  br i1 %103, label %109, label %104, !prof !8

104:                                              ; preds = %95
  %105 = zext i8 %97 to i32
  %106 = getelementptr [6 x %struct.omap_domain_base], ptr @_cm_bases, i32 0, i32 %105, i32 1
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %110, !prof !9

109:                                              ; preds = %104, %95
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 117, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

110:                                              ; preds = %104
  %111 = zext i16 %99 to i32
  %112 = getelementptr i8, ptr %107, i32 %111
  %113 = zext i16 %101 to i32
  %114 = getelementptr i8, ptr %112, i32 %113
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %114) #5, !srcloc !11
  %116 = load ptr, ptr %106, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %119, !prof !9

118:                                              ; preds = %110
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #5, !srcloc !12
  unreachable

119:                                              ; preds = %110
  %120 = and i32 %115, -4
  %121 = or i32 %120, 1
  %122 = getelementptr i8, ptr %116, i32 %111
  %123 = getelementptr i8, ptr %122, i32 %113
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %123, i32 %121) #5, !srcloc !13
  br label %181

124:                                              ; preds = %1
  %125 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 6
  %126 = load i8, ptr %125, align 1
  %127 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 7
  %128 = load i16, ptr %127, align 2
  %129 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 8
  %130 = load i16, ptr %129, align 4
  %131 = add i8 %126, -6
  %132 = icmp ult i8 %131, -5
  br i1 %132, label %138, label %133, !prof !8

133:                                              ; preds = %124
  %134 = zext i8 %126 to i32
  %135 = getelementptr [6 x %struct.omap_domain_base], ptr @_cm_bases, i32 0, i32 %134, i32 1
  %136 = load ptr, ptr %135, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %139, !prof !9

138:                                              ; preds = %133, %124
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 117, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

139:                                              ; preds = %133
  %140 = zext i16 %128 to i32
  %141 = getelementptr i8, ptr %136, i32 %140
  %142 = zext i16 %130 to i32
  %143 = getelementptr i8, ptr %141, i32 %142
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %143) #5, !srcloc !11
  %145 = load ptr, ptr %135, align 4
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %148, !prof !9

147:                                              ; preds = %139
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #5, !srcloc !12
  unreachable

148:                                              ; preds = %139
  %149 = and i32 %144, -4
  %150 = or i32 %149, 2
  %151 = getelementptr i8, ptr %145, i32 %140
  %152 = getelementptr i8, ptr %151, i32 %142
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %152, i32 %150) #5, !srcloc !13
  br label %181

153:                                              ; preds = %1
  %154 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 6
  %155 = load i8, ptr %154, align 1
  %156 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 7
  %157 = load i16, ptr %156, align 2
  %158 = getelementptr inbounds %struct.clockdomain, ptr %0, i32 0, i32 8
  %159 = load i16, ptr %158, align 4
  %160 = add i8 %155, -6
  %161 = icmp ult i8 %160, -5
  br i1 %161, label %167, label %162, !prof !8

162:                                              ; preds = %153
  %163 = zext i8 %155 to i32
  %164 = getelementptr [6 x %struct.omap_domain_base], ptr @_cm_bases, i32 0, i32 %163, i32 1
  %165 = load ptr, ptr %164, align 4
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %168, !prof !9

167:                                              ; preds = %162, %153
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 117, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

168:                                              ; preds = %162
  %169 = zext i16 %157 to i32
  %170 = getelementptr i8, ptr %165, i32 %169
  %171 = zext i16 %159 to i32
  %172 = getelementptr i8, ptr %170, i32 %171
  %173 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %172) #5, !srcloc !11
  %174 = load ptr, ptr %164, align 4
  %175 = icmp eq ptr %174, null
  br i1 %175, label %176, label %177, !prof !9

176:                                              ; preds = %168
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #5, !srcloc !12
  unreachable

177:                                              ; preds = %168
  %178 = or i32 %173, 3
  %179 = getelementptr i8, ptr %174, i32 %169
  %180 = getelementptr i8, ptr %179, i32 %171
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %180, i32 %178) #5, !srcloc !13
  br label %181

181:                                              ; preds = %177, %148, %119, %92, %88, %54, %33, %1
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @omap4_cm_init(ptr nocapture noundef readnone %0) local_unnamed_addr #1 section ".init.text" {
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) getelementptr inbounds ([6 x %struct.omap_domain_base], ptr @_cm_bases, i32 0, i32 1), ptr noundef nonnull align 4 dereferenceable(12) @prm_base, i32 12, i1 false) #5
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) getelementptr inbounds ([6 x %struct.omap_domain_base], ptr @_cm_bases, i32 0, i32 2), ptr noundef nonnull align 4 dereferenceable(12) @cm_base, i32 12, i1 false) #5
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) getelementptr inbounds ([6 x %struct.omap_domain_base], ptr @_cm_bases, i32 0, i32 3), ptr noundef nonnull align 4 dereferenceable(12) @cm2_base, i32 12, i1 false) #5
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) getelementptr inbounds ([6 x %struct.omap_domain_base], ptr @_cm_bases, i32 0, i32 5), ptr noundef nonnull align 4 dereferenceable(12) @prcm_mpu_base, i32 12, i1 false) #5
  %2 = tail call i32 @cm_register(ptr noundef nonnull @omap4xxx_cm_ll_data) #5
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cm_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @omap4_cm_exit() #1 section ".exit.text" {
  %1 = tail call i32 @cm_unregister(ptr noundef nonnull @omap4xxx_cm_ll_data) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cm_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap4_cminst_wait_module_ready(i8 noundef zeroext %0, i16 noundef signext %1, i16 noundef zeroext %2, i8 noundef zeroext %3) #0 {
  %5 = add i8 %0, -6
  %6 = icmp ult i8 %5, -5
  %7 = zext i8 %0 to i32
  %8 = getelementptr [6 x %struct.omap_domain_base], ptr @_cm_bases, i32 0, i32 %7, i32 1
  %9 = zext i16 %1 to i32
  %10 = zext i16 %2 to i32
  br i1 %6, label %15, label %11, !prof !8

11:                                               ; preds = %22, %4
  %12 = phi i32 [ %24, %22 ], [ 0, %4 ]
  %13 = load ptr, ptr %8, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16, !prof !9

15:                                               ; preds = %11, %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 117, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

16:                                               ; preds = %11
  %17 = getelementptr i8, ptr %13, i32 %9
  %18 = getelementptr i8, ptr %17, i32 %10
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #5, !srcloc !11
  %20 = and i32 %19, 65536
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748) #5
  %24 = add nuw nsw i32 %12, 1
  %25 = icmp eq i32 %24, 2000
  br i1 %25, label %26, label %11

26:                                               ; preds = %22, %16
  %27 = phi i32 [ 0, %16 ], [ -16, %22 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap4_cminst_wait_module_idle(i8 noundef zeroext %0, i16 noundef signext %1, i16 noundef zeroext %2, i8 noundef zeroext %3) #0 {
  %5 = add i8 %0, -6
  %6 = icmp ult i8 %5, -5
  %7 = zext i8 %0 to i32
  %8 = getelementptr [6 x %struct.omap_domain_base], ptr @_cm_bases, i32 0, i32 %7, i32 1
  %9 = zext i16 %1 to i32
  %10 = zext i16 %2 to i32
  br i1 %6, label %15, label %11, !prof !8

11:                                               ; preds = %22, %4
  %12 = phi i32 [ %24, %22 ], [ 0, %4 ]
  %13 = load ptr, ptr %8, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16, !prof !9

15:                                               ; preds = %11, %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 117, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

16:                                               ; preds = %11
  %17 = getelementptr i8, ptr %13, i32 %9
  %18 = getelementptr i8, ptr %17, i32 %10
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #5, !srcloc !11
  %20 = and i32 %19, 196608
  %21 = icmp eq i32 %20, 196608
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748) #5
  %24 = add nuw nsw i32 %12, 1
  %25 = icmp eq i32 %24, 5000
  br i1 %25, label %26, label %11

26:                                               ; preds = %22, %16
  %27 = phi i32 [ 0, %16 ], [ -16, %22 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap4_cminst_module_enable(i8 noundef zeroext %0, i8 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3) #0 {
  %5 = add i8 %1, -6
  %6 = icmp ult i8 %5, -5
  br i1 %6, label %12, label %7, !prof !8

7:                                                ; preds = %4
  %8 = zext i8 %1 to i32
  %9 = getelementptr [6 x %struct.omap_domain_base], ptr @_cm_bases, i32 0, i32 %8, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13, !prof !9

12:                                               ; preds = %7, %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 117, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

13:                                               ; preds = %7
  %14 = zext i16 %2 to i32
  %15 = getelementptr i8, ptr %10, i32 %14
  %16 = zext i16 %3 to i32
  %17 = getelementptr i8, ptr %15, i32 %16
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #5, !srcloc !11
  %19 = load ptr, ptr %9, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22, !prof !9

21:                                               ; preds = %13
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #5, !srcloc !12
  unreachable

22:                                               ; preds = %13
  %23 = and i32 %18, -4
  %24 = zext i8 %0 to i32
  %25 = or i32 %23, %24
  %26 = getelementptr i8, ptr %19, i32 %14
  %27 = getelementptr i8, ptr %26, i32 %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #5, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap4_cminst_module_disable(i8 noundef zeroext %0, i16 noundef zeroext %1, i16 noundef zeroext %2) #0 {
  %4 = add i8 %0, -6
  %5 = icmp ult i8 %4, -5
  br i1 %5, label %11, label %6, !prof !8

6:                                                ; preds = %3
  %7 = zext i8 %0 to i32
  %8 = getelementptr [6 x %struct.omap_domain_base], ptr @_cm_bases, i32 0, i32 %7, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12, !prof !9

11:                                               ; preds = %6, %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 117, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

12:                                               ; preds = %6
  %13 = zext i16 %1 to i32
  %14 = getelementptr i8, ptr %9, i32 %13
  %15 = zext i16 %2 to i32
  %16 = getelementptr i8, ptr %14, i32 %15
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #5, !srcloc !11
  %18 = load ptr, ptr %8, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21, !prof !9

20:                                               ; preds = %12
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/cminst44xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #5, !srcloc !12
  unreachable

21:                                               ; preds = %12
  %22 = and i32 %17, -4
  %23 = getelementptr i8, ptr %18, i32 %13
  %24 = getelementptr i8, ptr %23, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #5, !srcloc !13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @omap4_cminst_xlate_clkctrl(i8 noundef zeroext %0, i16 noundef zeroext %1, i16 noundef zeroext %2) #4 {
  %4 = zext i8 %0 to i32
  %5 = getelementptr [6 x %struct.omap_domain_base], ptr @_cm_bases, i32 0, i32 %4
  %6 = load i32, ptr %5, align 4
  %7 = zext i16 %1 to i32
  %8 = zext i16 %2 to i32
  %9 = add nuw nsw i32 %8, %7
  %10 = add i32 %9, %6
  ret i32 %10
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }

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
!8 = !{!"branch_weights", i32 4001, i32 4000000}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2151167253, i64 2151167750, i64 2151167290, i64 2151167346, i64 2151167380, i64 2151167404, i64 2151167445, i64 2151167466, i64 2151167494, i64 2151167528}
!11 = !{i64 962415}
!12 = !{i64 2151168636, i64 2151169133, i64 2151168673, i64 2151168729, i64 2151168763, i64 2151168787, i64 2151168828, i64 2151168849, i64 2151168877, i64 2151168911}
!13 = !{i64 961997}
