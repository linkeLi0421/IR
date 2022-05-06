; ModuleID = '/llk/IR/arch/arm/mach-bcm/platsmp.c_pt.bc'
source_filename = "../arch/arm/mach-bcm/platsmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.smp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_cpu_method = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }

@.str = private unnamed_addr constant [25 x i8] c"brcm,bcm11351-cpu-method\00", align 1
@kona_smp_ops = internal constant %struct.smp_operations { ptr null, ptr @bcm_smp_prepare_cpus, ptr null, ptr @kona_boot_secondary, ptr null, ptr null, ptr null, ptr null }, section ".init.rodata", align 4
@__cpu_method_of_table_bcm_smp_bcm281xx = internal constant %struct.of_cpu_method { ptr @.str, ptr @kona_smp_ops }, section "__cpu_method_of_table", align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"brcm,bcm23550\00", align 1
@bcm23550_smp_ops = internal constant %struct.smp_operations { ptr null, ptr null, ptr null, ptr @bcm23550_boot_secondary, ptr null, ptr null, ptr null, ptr null }, section ".init.rodata", align 4
@__cpu_method_of_table_bcm_smp_bcm23550 = internal constant %struct.of_cpu_method { ptr @.str.1, ptr @bcm23550_smp_ops }, section "__cpu_method_of_table", align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"brcm,bcm-nsp-smp\00", align 1
@nsp_smp_ops = internal constant %struct.smp_operations { ptr null, ptr @bcm_smp_prepare_cpus, ptr null, ptr @nsp_boot_secondary, ptr null, ptr null, ptr null, ptr null }, section ".init.rodata", align 4
@__cpu_method_of_table_bcm_smp_nsp = internal constant %struct.of_cpu_method { ptr @.str.2, ptr @nsp_smp_ops }, section "__cpu_method_of_table", align 4
@bcm2836_smp_ops = dso_local constant %struct.smp_operations { ptr null, ptr null, ptr null, ptr @bcm2836_boot_secondary, ptr null, ptr null, ptr null, ptr null }, section ".init.rodata", align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"brcm,bcm2836-smp\00", align 1
@__cpu_method_of_table_bcm_smp_bcm2836 = internal constant %struct.of_cpu_method { ptr @.str.3, ptr @bcm2836_smp_ops }, section "__cpu_method_of_table", align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"\014failed to enable A9 SCU - disabling SMP\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"\013no configuration base address register!\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"\013hardware reports only one core\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"\013failed to remap config base (%lu/%u) for SCU\0A\00", align 1
@__cpu_logical_map = external dso_local local_unnamed_addr global [0 x i32], align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"\013bad cpu id (%u > %u)\0A\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"\013unable to map boot register for cpu %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"\013timeout waiting for cpu %u to start\0A\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"\013Failed to find device tree node for CPU%u\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"secondary-boot-reg\00", align 1
@.str.13 = private unnamed_addr constant [60 x i8] c"\013required secondary boot register not specified for CPU%u\0A\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"brcm,bcm23550-cdc\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"\013unable to find cdc node\0A\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"\013unable to remap cdc base register\0A\00", align 1
@.str.17 = private unnamed_addr constant [47 x i8] c"\013unable to write startup addr to SKU ROM LUT\0A\00", align 1
@.str.18 = private unnamed_addr constant [53 x i8] c"\014unable to ioremap SKU-ROM LUT register for cpu %u\0A\00", align 1
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@.str.19 = private unnamed_addr constant [21 x i8] c"brcm,bcm2836-l1-intc\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"\013unable to find intc node\0A\00", align 1
@.str.21 = private unnamed_addr constant [38 x i8] c"\013unable to remap intc base register\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__cpu_method_of_table_bcm_smp_bcm23550, ptr @__cpu_method_of_table_bcm_smp_bcm281xx, ptr @__cpu_method_of_table_bcm_smp_bcm2836, ptr @__cpu_method_of_table_bcm_smp_nsp], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2836_boot_secondary(i32 noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.19) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #6
  br label %17

7:                                                ; preds = %2
  %8 = tail call ptr @of_iomap(ptr noundef nonnull %3, i32 noundef 0) #5
  tail call void @of_node_put(ptr noundef nonnull %3) #5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #6
  br label %17

12:                                               ; preds = %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  %13 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @secondary_startup to i32), i32 -2130706432, i32 8454144) #7, !srcloc !9
  %14 = getelementptr i8, ptr %8, i32 140
  %15 = shl i32 %0, 4
  %16 = getelementptr i8, ptr %14, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %13) #5, !srcloc !10
  tail call void asm sideeffect "dsb sy", "~{memory}"() #5, !srcloc !11
  tail call void asm sideeffect "sev", "~{memory}"() #5, !srcloc !12
  tail call void @iounmap(ptr noundef nonnull %8) #5
  br label %17

17:                                               ; preds = %12, %10, %5
  %18 = phi i32 [ 0, %12 ], [ -12, %10 ], [ -19, %5 ]
  ret i32 %18
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @bcm_smp_prepare_cpus(i32 noundef %0) #1 section ".init.text" {
  %2 = alloca %struct.cpumask, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 1, ptr %2, align 4
  %3 = tail call fastcc i32 @scu_a9_enable() #8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #6
  call void @init_cpu_present(ptr noundef nonnull %2) #5
  br label %7

7:                                                ; preds = %5, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kona_boot_secondary(i32 noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4
  %4 = tail call ptr @of_get_cpu_node(i32 noundef %0, ptr noundef null) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %4, ptr noundef nonnull @.str.12, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #5
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %0) #6
  br label %11

11:                                               ; preds = %9, %6
  call void @of_node_put(ptr noundef nonnull %4) #5
  %12 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  %13 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %0
  %14 = load i32, ptr %13, align 4
  %15 = icmp ult i32 %14, 4
  br i1 %15, label %24, label %21

16:                                               ; preds = %2
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  %18 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %0
  %19 = load i32, ptr %18, align 4
  %20 = icmp ult i32 %19, 4
  br i1 %20, label %49, label %21

21:                                               ; preds = %16, %11
  %22 = phi i32 [ %19, %16 ], [ %14, %11 ]
  %23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %22, i32 noundef 3) #6
  br label %49

24:                                               ; preds = %11
  %25 = icmp eq i32 %12, 0
  br i1 %25, label %49, label %26

26:                                               ; preds = %24
  %27 = call ptr @ioremap(i32 noundef %12, i32 noundef 4) #5
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %14) #6
  br label %49

31:                                               ; preds = %26
  %32 = call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @secondary_startup to i32), i32 -2130706432, i32 8454144) #7, !srcloc !9
  %33 = and i32 %32, 3
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35, !prof !13

35:                                               ; preds = %31
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-bcm/platsmp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 189, 0\0A.popsection", ""() #5, !srcloc !14
  unreachable

36:                                               ; preds = %31
  %37 = or i32 %32, %14
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %27, i32 %37) #5, !srcloc !10
  call void asm sideeffect "sev", "~{memory}"() #5, !srcloc !15
  %38 = call i64 @sched_clock() #5
  br label %39

39:                                               ; preds = %42, %36
  %40 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %27) #5, !srcloc !16
  %41 = icmp eq i32 %40, %37
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = call i64 @sched_clock() #5
  %44 = sub i64 %43, %38
  %45 = icmp ugt i64 %44, 1000000
  br i1 %45, label %47, label %39

46:                                               ; preds = %39
  call void @iounmap(ptr noundef nonnull %27) #5
  br label %49

47:                                               ; preds = %42
  call void @iounmap(ptr noundef nonnull %27) #5
  %48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %14) #6
  br label %49

49:                                               ; preds = %47, %46, %29, %24, %21, %16
  %50 = phi i32 [ -22, %21 ], [ -6, %47 ], [ 0, %46 ], [ -12, %29 ], [ -22, %24 ], [ -22, %16 ]
  ret i32 %50
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @scu_a9_enable() unnamed_addr #1 section ".init.text" {
  %1 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #7, !srcloc !17
  %2 = and i32 %1, -16711696
  %3 = icmp eq i32 %2, 1090568336
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #6
  br label %17

6:                                                ; preds = %0
  %7 = tail call i32 asm "mrc p15, 4, $0, c15, c0, 0", "=r"() #7, !srcloc !18
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #6
  br label %17

11:                                               ; preds = %6
  %12 = tail call ptr @ioremap(i32 noundef %7, i32 noundef 88) #5
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %7, i32 noundef 88) #6
  br label %17

16:                                               ; preds = %11
  tail call void @scu_enable(ptr noundef nonnull %12) #5
  tail call void @iounmap(ptr noundef nonnull %12) #5
  br label %17

17:                                               ; preds = %16, %14, %9, %4
  %18 = phi i32 [ 0, %16 ], [ -12, %14 ], [ -2, %9 ], [ -6, %4 ]
  ret i32 %18
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_cpu_present(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @scu_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @secondary_startup() #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_cpu_node(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm23550_boot_secondary(i32 noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.14) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #6
  br label %19

7:                                                ; preds = %2
  %8 = tail call ptr @of_iomap(ptr noundef nonnull %3, i32 noundef 0) #5
  tail call void @of_node_put(ptr noundef nonnull %3) #5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #6
  br label %19

12:                                               ; preds = %7
  %13 = tail call i32 @kona_boot_secondary(i32 noundef %0, ptr noundef %1)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = shl i32 %0, 2
  %17 = getelementptr i8, ptr %8, i32 %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 6) #5, !srcloc !10
  br label %18

18:                                               ; preds = %15, %12
  tail call void @iounmap(ptr noundef nonnull %8) #5
  br label %19

19:                                               ; preds = %18, %10, %5
  %20 = phi i32 [ %13, %18 ], [ -12, %10 ], [ -19, %5 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nsp_boot_secondary(i32 noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4
  %4 = tail call ptr @of_get_cpu_node(i32 noundef %0, ptr noundef null) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  br label %21

8:                                                ; preds = %2
  %9 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %4, ptr noundef nonnull @.str.12, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #5
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %0) #6
  br label %13

13:                                               ; preds = %11, %8
  call void @of_node_put(ptr noundef nonnull %4) #5
  %14 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  %17 = call ptr @ioremap(i32 noundef %14, i32 noundef 4) #5
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %0) #6
  br label %21

21:                                               ; preds = %19, %13, %6
  %22 = phi i32 [ -22, %6 ], [ -22, %13 ], [ -12, %19 ]
  %23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #6
  br label %32

24:                                               ; preds = %16
  %25 = call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @secondary_startup to i32), i32 -2130706432, i32 8454144) #7, !srcloc !9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %17, i32 %25) #5, !srcloc !10
  call void asm sideeffect "dmb ishst", "~{memory}"() #5, !srcloc !19
  call void @iounmap(ptr noundef nonnull %17) #5
  %26 = and i32 %0, 31
  %27 = add nuw nsw i32 %26, 1
  %28 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %27
  %29 = lshr i32 %0, 5
  %30 = sub nsw i32 0, %29
  %31 = getelementptr i32, ptr %28, i32 %30
  call void @arch_send_wakeup_ipi_mask(ptr noundef %31) #5
  br label %32

32:                                               ; preds = %24, %21
  %33 = phi i32 [ 0, %24 ], [ %22, %21 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_send_wakeup_ipi_mask(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }
attributes #7 = { nounwind readnone }
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
!8 = !{i64 2152708246}
!9 = !{i64 2148870950, i64 2148870973, i64 2148871005, i64 2148871037, i64 2148871075, i64 2148871105}
!10 = !{i64 2390160}
!11 = !{i64 2152708500}
!12 = !{i64 2152708558}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2152702790, i64 2152703282, i64 2152702827, i64 2152702883, i64 2152702917, i64 2152702941, i64 2152702982, i64 2152703003, i64 2152703031, i64 2152703065}
!15 = !{i64 2152704790}
!16 = !{i64 2390578}
!17 = !{i64 2152683595}
!18 = !{i64 5209417}
!19 = !{i64 2152700018}
