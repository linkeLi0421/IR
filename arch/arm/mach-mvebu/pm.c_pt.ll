; ModuleID = '/llk/IR/arch/arm/mach-mvebu/pm.c_pt.bc'
source_filename = "../arch/arm/mach-mvebu/pm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.platform_suspend_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.outer_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@__initcall__kmod_pm__247_234_mvebu_pm_init7 = internal global ptr @mvebu_pm_init, section ".initcall7.init", align 4
@.str = private unnamed_addr constant [35 x i8] c"marvell,armada-xp-sdram-controller\00", align 1
@iomem_resource = external dso_local global %struct.resource, align 4
@sdram_ctrl = internal unnamed_addr global ptr null, align 4
@mvebu_board_pm_enter = internal unnamed_addr global ptr null, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"marvell,armadaxp\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"marvell,armada370\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"marvell,armada380\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"marvell,armada390\00", align 1
@mvebu_pm_ops = internal constant %struct.platform_suspend_ops { ptr @mvebu_pm_valid, ptr null, ptr null, ptr null, ptr @mvebu_pm_enter, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@processor = external dso_local local_unnamed_addr global %struct.processor, align 4
@.str.5 = private unnamed_addr constant [80 x i8] c"\014Entering suspend to RAM. Only special wake-up sources will resume the system\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"internal-regs\00", align 1
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@outer_cache = external dso_local local_unnamed_addr global %struct.outer_cache_fns, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_pm__247_234_mvebu_pm_init7], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mvebu_pm_init() #0 section ".init.text" {
  %1 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.1) #7
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %12

3:                                                ; preds = %0
  %4 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.2) #7
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %3
  %7 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.3) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.4) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9, %6, %3, %0
  tail call void @suspend_set_ops(ptr noundef nonnull @mvebu_pm_ops) #7
  br label %13

13:                                               ; preds = %12, %9
  %14 = phi i32 [ 0, %12 ], [ -19, %9 ]
  ret i32 %14
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @mvebu_pm_suspend_init(ptr noundef %0) local_unnamed_addr #0 section ".init.text" {
  %2 = alloca %struct.resource, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !8
  %3 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %33, label %5

5:                                                ; preds = %1
  %6 = call i32 @of_address_to_resource(ptr noundef nonnull %3, i32 noundef 0, ptr noundef nonnull %2) #7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  call void @of_node_put(ptr noundef nonnull %3) #7
  br label %33

9:                                                ; preds = %5
  %10 = load i32, ptr %2, align 4
  %11 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = sub i32 1, %10
  %14 = add i32 %13, %12
  %15 = getelementptr inbounds %struct.device_node, ptr %3, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %10, i32 noundef %14, ptr noundef %16, i32 noundef 0) #7
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %9
  call void @of_node_put(ptr noundef nonnull %3) #7
  br label %33

20:                                               ; preds = %9
  %21 = load i32, ptr %2, align 4
  %22 = load i32, ptr %11, align 4
  %23 = sub i32 1, %21
  %24 = add i32 %23, %22
  %25 = call ptr @ioremap(i32 noundef %21, i32 noundef %24) #7
  store ptr %25, ptr @sdram_ctrl, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load i32, ptr %2, align 4
  %29 = load i32, ptr %11, align 4
  %30 = sub i32 1, %28
  %31 = add i32 %30, %29
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %28, i32 noundef %31) #7
  call void @of_node_put(ptr noundef nonnull %3) #7
  br label %33

32:                                               ; preds = %20
  call void @of_node_put(ptr noundef nonnull %3) #7
  store ptr %0, ptr @mvebu_board_pm_enter, align 4
  br label %33

33:                                               ; preds = %32, %27, %19, %8, %1
  %34 = phi i32 [ -19, %8 ], [ 0, %32 ], [ -12, %27 ], [ -16, %19 ], [ -19, %1 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #7
  ret i32 %34
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @suspend_set_ops(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @mvebu_pm_valid(i32 noundef %0) #4 {
  %2 = icmp eq i32 %0, 2
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 3
  %5 = load ptr, ptr @mvebu_board_pm_enter, align 4
  %6 = icmp ne ptr %5, null
  %7 = select i1 %4, i1 %6, i1 false
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %3, %1
  %10 = phi i32 [ 1, %1 ], [ %8, %3 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvebu_pm_enter(i32 noundef %0) #5 {
  %2 = alloca [2 x i32], align 8
  switch i32 %0, label %36 [
    i32 2, label %3
    i32 3, label %6
  ]

3:                                                ; preds = %1
  %4 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 6), align 4
  %5 = tail call i32 %4() #7
  br label %36

6:                                                ; preds = %1
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #8
  %8 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 12288, i32 -2130706432, i32 8454144) #9, !srcloc !9
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.1) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %36, label %12

12:                                               ; preds = %6
  %13 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @armada_370_xp_cpu_resume to i32), i32 -2130706432, i32 8454144) #9, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %14 = getelementptr i32, ptr %9, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 -559042558) #7, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %15 = getelementptr i32, ptr %9, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %13) #7, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %16 = getelementptr i32, ptr %9, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 -805175120) #7, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !15
  tail call void @arm_heavy_mb() #7
  %17 = getelementptr i32, ptr %9, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 0) #7, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 -805175168) #7, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !17
  tail call void @arm_heavy_mb() #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #7
  store i64 496, ptr %2, align 8, !annotation !8
  %18 = tail call ptr @of_find_node_by_name(ptr noundef null, ptr noundef nonnull @.str.6) #7
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21, !prof !18

20:                                               ; preds = %12
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-mvebu/pm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 96, 0\0A.popsection", ""() #7, !srcloc !19
  unreachable

21:                                               ; preds = %12
  %22 = getelementptr i32, ptr %9, i32 5
  %23 = call i64 @of_translate_address(ptr noundef nonnull %18, ptr noundef nonnull %2) #7
  %24 = trunc i64 %23 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  %25 = getelementptr i32, ptr %9, i32 6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %24) #7, !srcloc !12
  %26 = call i32 @mvebu_mbus_save_cpu_target(ptr noundef %25) #7
  %27 = getelementptr i32, ptr %25, i32 %26
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !20
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 -1) #7, !srcloc !12
  %28 = call i32 @cpu_pm_enter() #7
  %29 = call i32 @cpu_suspend(i32 noundef 0, ptr noundef nonnull @mvebu_pm_powerdown) #7
  %30 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 6), align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %21
  call void %30() #7
  br label %33

33:                                               ; preds = %32, %21
  call void @mvebu_v7_pmsu_idle_exit() #7
  %34 = call i32 @set_cpu_coherent() #7
  %35 = call i32 @cpu_pm_exit() #7
  br label %36

36:                                               ; preds = %33, %6, %3, %1
  %37 = phi i32 [ 0, %3 ], [ -22, %1 ], [ 0, %33 ], [ -19, %6 ]
  ret i32 %37
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_enter() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_suspend(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvebu_pm_powerdown(i32 noundef %0) #5 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %2() #7
  %3 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 3), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void %3() #7
  br label %6

6:                                                ; preds = %5, %1
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !21
  %7 = load ptr, ptr @sdram_ctrl, align 4
  %8 = getelementptr i8, ptr %7, i32 780
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #7, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !23
  %10 = and i32 %9, -256
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !24
  tail call void @arm_heavy_mb() #7
  %11 = load ptr, ptr @sdram_ctrl, align 4
  %12 = getelementptr i8, ptr %11, i32 780
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #7, !srcloc !12
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 1503236) #7
  %14 = load ptr, ptr @sdram_ctrl, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #7, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !25
  %16 = and i32 %15, -16777217
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !26
  tail call void @arm_heavy_mb() #7
  %17 = load ptr, ptr @sdram_ctrl, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %16) #7, !srcloc !12
  %18 = load ptr, ptr @sdram_ctrl, align 4
  %19 = getelementptr i8, ptr %18, i32 24
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #7, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !27
  %21 = and i32 %20, -32
  %22 = or i32 %21, 7
  %23 = load ptr, ptr @mvebu_board_pm_enter, align 4
  %24 = load ptr, ptr @sdram_ctrl, align 4
  %25 = getelementptr i8, ptr %24, i32 24
  tail call void %23(ptr noundef %25, i32 noundef %22) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mvebu_v7_pmsu_idle_exit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_cpu_coherent() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_exit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @armada_370_xp_cpu_resume() #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvebu_mbus_save_cpu_target(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_by_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @of_translate_address(ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readnone }

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
!8 = !{!"auto-init"}
!9 = !{i64 2148786899, i64 2148786922, i64 2148786954, i64 2148786986, i64 2148787024, i64 2148787054}
!10 = !{i64 2148786113, i64 2148786136, i64 2148786168, i64 2148786200, i64 2148786238, i64 2148786268}
!11 = !{i64 2153608225}
!12 = !{i64 3699892}
!13 = !{i64 2153608549}
!14 = !{i64 2153608883}
!15 = !{i64 2153609201}
!16 = !{i64 2153609523}
!17 = !{i64 2153609863}
!18 = !{!"branch_weights", i32 1, i32 2000}
!19 = !{i64 2153606490, i64 2153606978, i64 2153606527, i64 2153606583, i64 2153606617, i64 2153606641, i64 2153606682, i64 2153606703, i64 2153606731, i64 2153606765}
!20 = !{i64 2153610227}
!21 = !{i64 2153603892}
!22 = !{i64 3700310}
!23 = !{i64 2153604235}
!24 = !{i64 2153604432}
!25 = !{i64 2153605433}
!26 = !{i64 2153605705}
!27 = !{i64 2153606172}
