; ModuleID = '/llk/IR/drivers/soc/bcm/brcmstb/biuctrl.c_pt.bc'
source_filename = "../drivers/soc/bcm/brcmstb/biuctrl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }

@__initcall__kmod_biuctrl__102_358_brcmstb_biuctrl_initearly = internal global ptr @brcmstb_biuctrl_init, section ".initcallearly.init", align 4
@.str = private unnamed_addr constant [26 x i8] c"brcm,brcmstb-cpu-biu-ctrl\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"\013brcmstb: biuctrl: MCP: Unable to disable write pairing!\0A\00", align 1
@brcmstb_cpu_credit_syscore_ops = internal global %struct.syscore_ops { %struct.list_head zeroinitializer, ptr @brcmstb_cpu_credit_reg_suspend, ptr @brcmstb_cpu_credit_reg_resume, ptr null }, align 4
@cpubiuctrl_base = internal unnamed_addr global ptr null, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"\013brcmstb: biuctrl: failed to remap BIU control base\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"brcm,write-pairing\00", align 1
@mcp_wr_pairing_en = internal unnamed_addr global i8 0, align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"\013brcmstb: biuctrl: failed to obtain CPU device node\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"brcm,brahma-b15\00", align 1
@b15_cpubiuctrl_regs = internal constant [5 x i32] [i32 388, i32 -1, i32 -1, i32 -1, i32 -1], align 4
@cpubiuctrl_regs = internal unnamed_addr global ptr null, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"brcm,brahma-b53\00", align 1
@b53_cpubiuctrl_regs = internal constant [5 x i32] [i32 176, i32 180, i32 556, i32 120, i32 124], align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"arm,cortex-a72\00", align 1
@a72_cpubiuctrl_regs = internal constant [5 x i32] [i32 24, i32 28, i32 32, i32 8, i32 12], align 4
@.str.8 = private unnamed_addr constant [37 x i8] c"\013brcmstb: biuctrl: unsupported CPU\0A\00", align 1
@b53_cpubiuctrl_no_wb_regs = internal constant [5 x i32] [i32 176, i32 180, i32 -1, i32 120, i32 124], align 4
@.str.9 = private unnamed_addr constant [49 x i8] c"\016brcmstb: biuctrl: MCP: Enabling write pairing\0A\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"\016brcmstb: biuctrl: MCP: Disabling write pairing\0A\00", align 1
@.str.11 = private unnamed_addr constant [57 x i8] c"\016brcmstb: biuctrl: MCP: Write pairing already disabled\0A\00", align 1
@a72_b53_mach_compat = internal unnamed_addr constant [11 x i32] [i32 29201, i32 467219, i32 467222, i32 29206, i32 467300, i32 467301, i32 29269, i32 29280, i32 29288, i32 29297, i32 29304], align 4
@cpubiuctrl_reg_save.0 = internal unnamed_addr global i32 0, align 4
@cpubiuctrl_reg_save.1 = internal unnamed_addr global i32 0, align 4
@cpubiuctrl_reg_save.2 = internal unnamed_addr global i32 0, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_biuctrl__102_358_brcmstb_biuctrl_initearly], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @brcmstb_biuctrl_init() #0 section ".init.text" {
  %1 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str) #4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %0
  %4 = tail call fastcc i32 @setup_hifcpubiuctrl_regs(ptr noundef nonnull %1) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @mcp_write_pairing_set() #5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #6
  br label %12

11:                                               ; preds = %6
  tail call fastcc void @mcp_a72_b53_set() #5
  tail call void @register_syscore_ops(ptr noundef nonnull @brcmstb_cpu_credit_syscore_ops) #4
  br label %12

12:                                               ; preds = %11, %9, %3, %0
  %13 = phi i32 [ %7, %9 ], [ 0, %11 ], [ 0, %0 ], [ %4, %3 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @setup_hifcpubiuctrl_regs(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #4
  store ptr %2, ptr @cpubiuctrl_base, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #6
  br label %39

6:                                                ; preds = %1
  %7 = tail call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef null) #4
  %8 = icmp ne ptr %7, null
  %9 = zext i1 %8 to i8
  store i8 %9, ptr @mcp_wr_pairing_en, align 1
  %10 = tail call ptr @of_get_cpu_node(i32 noundef 0, ptr noundef null) #4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %6
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #6
  br label %39

14:                                               ; preds = %6
  %15 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %10, ptr noundef nonnull @.str.5) #4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  store ptr @b15_cpubiuctrl_regs, ptr @cpubiuctrl_regs, align 4
  br label %28

18:                                               ; preds = %14
  %19 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %10, ptr noundef nonnull @.str.6) #4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  store ptr @b53_cpubiuctrl_regs, ptr @cpubiuctrl_regs, align 4
  br label %28

22:                                               ; preds = %18
  %23 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %10, ptr noundef nonnull @.str.7) #4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  store ptr @a72_cpubiuctrl_regs, ptr @cpubiuctrl_regs, align 4
  br label %28

26:                                               ; preds = %22
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #6
  br label %28

28:                                               ; preds = %26, %25, %21, %17
  %29 = phi i32 [ 0, %17 ], [ 0, %21 ], [ 0, %25 ], [ -22, %26 ]
  tail call void @of_node_put(ptr noundef nonnull %10) #4
  %30 = tail call i32 @brcmstb_get_family_id() #4
  %31 = icmp ult i32 %30, 268435456
  %32 = select i1 %31, i32 8, i32 16
  %33 = lshr i32 %30, %32
  %34 = icmp eq i32 %33, 29280
  %35 = and i32 %30, 255
  %36 = icmp eq i32 %35, 0
  %37 = and i1 %36, %34
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  store ptr @b53_cpubiuctrl_no_wb_regs, ptr @cpubiuctrl_regs, align 4
  br label %39

39:                                               ; preds = %38, %28, %12, %4
  %40 = phi i32 [ %29, %38 ], [ %29, %28 ], [ -19, %12 ], [ -12, %4 ]
  tail call void @of_node_put(ptr noundef %0) #4
  ret i32 %40
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @mcp_write_pairing_set() unnamed_addr #0 section ".init.text" {
  %1 = load ptr, ptr @cpubiuctrl_base, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %37, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @cpubiuctrl_regs, align 4
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %1, i32 %5
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #4, !srcloc !8
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi i32 [ %9, %7 ], [ -1, %3 ]
  %12 = load i8, ptr @mcp_wr_pairing_en, align 1, !range !9
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %10
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #6
  %16 = load ptr, ptr @cpubiuctrl_regs, align 4
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %37, label %19

19:                                               ; preds = %14
  %20 = or i32 %11, 1879048192
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %21 = load ptr, ptr @cpubiuctrl_base, align 4
  %22 = getelementptr i8, ptr %21, i32 %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #4, !srcloc !11
  br label %37

23:                                               ; preds = %10
  %24 = and i32 %11, 1879048192
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %23
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #6
  %28 = load ptr, ptr @cpubiuctrl_regs, align 4
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %37, label %31

31:                                               ; preds = %26
  %32 = and i32 %11, -1879048193
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %33 = load ptr, ptr @cpubiuctrl_base, align 4
  %34 = getelementptr i8, ptr %33, i32 %29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #4, !srcloc !11
  br label %37

35:                                               ; preds = %23
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #6
  br label %37

37:                                               ; preds = %35, %31, %26, %19, %14, %0
  %38 = phi i32 [ -1, %0 ], [ 0, %35 ], [ 0, %14 ], [ 0, %19 ], [ 0, %26 ], [ 0, %31 ]
  ret i32 %38
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @mcp_a72_b53_set() unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @brcmstb_get_family_id() #4
  %2 = icmp ult i32 %1, 268435456
  %3 = select i1 %2, i32 8, i32 16
  %4 = lshr i32 %1, %3
  br label %5

5:                                                ; preds = %10, %0
  %6 = phi i32 [ 0, %0 ], [ %11, %10 ]
  %7 = getelementptr [11 x i32], ptr @a72_b53_mach_compat, i32 0, i32 %6
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %4, %8
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = add nuw nsw i32 %6, 1
  %12 = icmp eq i32 %11, 11
  br i1 %12, label %66, label %5

13:                                               ; preds = %5
  %14 = load ptr, ptr @cpubiuctrl_regs, align 4
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %30, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr @cpubiuctrl_base, align 4
  %19 = getelementptr i8, ptr %18, i32 %15
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #4, !srcloc !8
  %21 = load ptr, ptr @cpubiuctrl_regs, align 4
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %30, label %24

24:                                               ; preds = %17
  %25 = and i32 %20, -16777216
  %26 = or i32 %25, 8947848
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %27 = load ptr, ptr @cpubiuctrl_base, align 4
  %28 = getelementptr i8, ptr %27, i32 %22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #4, !srcloc !11
  %29 = load ptr, ptr @cpubiuctrl_regs, align 4
  br label %30

30:                                               ; preds = %24, %17, %13
  %31 = phi ptr [ %21, %17 ], [ %29, %24 ], [ %14, %13 ]
  %32 = getelementptr i32, ptr %31, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %48, label %35

35:                                               ; preds = %30
  %36 = load ptr, ptr @cpubiuctrl_base, align 4
  %37 = getelementptr i8, ptr %36, i32 %33
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #4, !srcloc !8
  %39 = load ptr, ptr @cpubiuctrl_regs, align 4
  %40 = getelementptr i32, ptr %39, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %48, label %43

43:                                               ; preds = %35
  %44 = or i32 %38, 16777215
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %45 = load ptr, ptr @cpubiuctrl_base, align 4
  %46 = getelementptr i8, ptr %45, i32 %41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %44) #4, !srcloc !11
  %47 = load ptr, ptr @cpubiuctrl_regs, align 4
  br label %48

48:                                               ; preds = %43, %35, %30
  %49 = phi ptr [ %39, %35 ], [ %47, %43 ], [ %31, %30 ]
  %50 = getelementptr i32, ptr %49, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %66, label %53

53:                                               ; preds = %48
  %54 = load ptr, ptr @cpubiuctrl_base, align 4
  %55 = getelementptr i8, ptr %54, i32 %51
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #4, !srcloc !8
  %57 = load ptr, ptr @cpubiuctrl_regs, align 4
  %58 = getelementptr i32, ptr %57, i32 2
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %66, label %61

61:                                               ; preds = %53
  %62 = and i32 %56, -512
  %63 = or i32 %62, 376
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %64 = load ptr, ptr @cpubiuctrl_base, align 4
  %65 = getelementptr i8, ptr %64, i32 %59
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %63) #4, !srcloc !11
  br label %66

66:                                               ; preds = %61, %53, %48, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_syscore_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_cpu_node(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmstb_get_family_id() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmstb_cpu_credit_reg_suspend() #3 {
  %1 = load ptr, ptr @cpubiuctrl_base, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %34, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @cpubiuctrl_regs, align 4
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %1, i32 %5
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #4, !srcloc !8
  %10 = load ptr, ptr @cpubiuctrl_regs, align 4
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi ptr [ %10, %7 ], [ %4, %3 ]
  %13 = phi i32 [ %9, %7 ], [ -1, %3 ]
  store i32 %13, ptr @cpubiuctrl_reg_save.0, align 4
  %14 = getelementptr i32, ptr %12, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %22, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr @cpubiuctrl_base, align 4
  %19 = getelementptr i8, ptr %18, i32 %15
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #4, !srcloc !8
  %21 = load ptr, ptr @cpubiuctrl_regs, align 4
  br label %22

22:                                               ; preds = %17, %11
  %23 = phi ptr [ %21, %17 ], [ %12, %11 ]
  %24 = phi i32 [ %20, %17 ], [ -1, %11 ]
  store i32 %24, ptr @cpubiuctrl_reg_save.1, align 4
  %25 = getelementptr i32, ptr %23, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %32, label %28

28:                                               ; preds = %22
  %29 = load ptr, ptr @cpubiuctrl_base, align 4
  %30 = getelementptr i8, ptr %29, i32 %26
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #4, !srcloc !8
  br label %32

32:                                               ; preds = %28, %22
  %33 = phi i32 [ %31, %28 ], [ -1, %22 ]
  store i32 %33, ptr @cpubiuctrl_reg_save.2, align 4
  br label %34

34:                                               ; preds = %32, %0
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcmstb_cpu_credit_reg_resume() #3 {
  %1 = load ptr, ptr @cpubiuctrl_base, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %31, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @cpubiuctrl_regs, align 4
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = load i32, ptr @cpubiuctrl_reg_save.0, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %9 = load ptr, ptr @cpubiuctrl_base, align 4
  %10 = getelementptr i8, ptr %9, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #4, !srcloc !11
  %11 = load ptr, ptr @cpubiuctrl_regs, align 4
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi ptr [ %4, %3 ], [ %11, %7 ]
  %14 = getelementptr i32, ptr %13, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = load i32, ptr @cpubiuctrl_reg_save.1, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %19 = load ptr, ptr @cpubiuctrl_base, align 4
  %20 = getelementptr i8, ptr %19, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #4, !srcloc !11
  %21 = load ptr, ptr @cpubiuctrl_regs, align 4
  br label %22

22:                                               ; preds = %17, %12
  %23 = phi ptr [ %21, %17 ], [ %13, %12 ]
  %24 = getelementptr i32, ptr %23, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = load i32, ptr @cpubiuctrl_reg_save.2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %29 = load ptr, ptr @cpubiuctrl_base, align 4
  %30 = getelementptr i8, ptr %29, i32 %25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #4, !srcloc !11
  br label %31

31:                                               ; preds = %27, %22, %0
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { cold }
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
!8 = !{i64 953623}
!9 = !{i8 0, i8 2}
!10 = !{i64 2150375930}
!11 = !{i64 953205}
