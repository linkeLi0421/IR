; ModuleID = '/llk/IR/arch/arm/mach-exynos/firmware.c_pt.bc'
source_filename = "../arch/arm/mach-exynos/firmware.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.firmware_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.outer_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.l2x0_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"samsung,secure-firmware\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"\013%s: No address specified.\0A\00", align 1
@__func__.exynos_secure_firmware_available = private unnamed_addr constant [33 x i8] c"exynos_secure_firmware_available\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"\016Running under secure firmware.\0A\00", align 1
@exynos_firmware_ops = internal constant %struct.firmware_ops { ptr null, ptr @exynos_do_idle, ptr @exynos_set_cpu_boot_addr, ptr @exynos_get_cpu_boot_addr, ptr @exynos_cpu_boot, ptr null, ptr @exynos_suspend, ptr @exynos_resume }, align 4
@outer_cache = external dso_local local_unnamed_addr global %struct.outer_cache_fns, align 4
@sysram_ns_base_addr = external dso_local local_unnamed_addr global ptr, align 4
@firmware_ops = external dso_local local_unnamed_addr global ptr, align 4
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@cp15_save_power = external dso_local local_unnamed_addr global i32, align 4
@cp15_save_diag = external dso_local local_unnamed_addr global i32, align 4
@exynos_cpu_id = external dso_local local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"\016Failed to suspend the system\0A\00", align 1
@exynos_l2_write_sec.l2cache_enabled = internal unnamed_addr global i1 false, align 4
@exynos_l2_write_sec.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"arch/arm/mach-exynos/firmware.c\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"%s: ignoring write to reg 0x%x\0A\00", align 1
@__func__.exynos_l2_write_sec = private unnamed_addr constant [20 x i8] c"exynos_l2_write_sec\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local zeroext i1 @exynos_secure_firmware_available() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str) #4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %0
  %4 = tail call ptr @__of_get_address(ptr noundef nonnull %1, i32 noundef 0, i32 noundef -1, ptr noundef null, ptr noundef null) #4
  tail call void @of_node_put(ptr noundef nonnull %1) #4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.exynos_secure_firmware_available) #5
  br label %8

8:                                                ; preds = %6, %3, %0
  %9 = phi i1 [ false, %6 ], [ false, %0 ], [ true, %3 ]
  ret i1 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @exynos_firmware_init() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call zeroext i1 @exynos_secure_firmware_available() #6
  br i1 %1, label %2, label %8

2:                                                ; preds = %0
  %3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #5
  store ptr @exynos_firmware_ops, ptr @firmware_ops, align 4
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #7, !srcloc !8
  %5 = and i32 %4, -16711696
  %6 = icmp eq i32 %5, 1090568336
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  store ptr @exynos_l2_write_sec, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7), align 4
  store ptr @exynos_l2_configure, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 8), align 4
  br label %8

8:                                                ; preds = %7, %2, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos_l2_write_sec(i32 noundef %0, i32 noundef %1) #3 {
  switch i32 %1, label %13 [
    i32 256, label %3
    i32 3904, label %12
  ]

3:                                                ; preds = %2
  %4 = and i32 %0, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = load i1, ptr @exynos_l2_write_sec.l2cache_enabled, align 4
  br i1 %7, label %11, label %8

8:                                                ; preds = %6
  tail call void @exynos_smc(i32 noundef -24, i32 noundef 0, i32 noundef 0, i32 noundef 0) #4
  br label %9

9:                                                ; preds = %8, %3
  %10 = xor i1 %5, true
  store i1 %10, ptr @exynos_l2_write_sec.l2cache_enabled, align 4
  br label %11

11:                                               ; preds = %9, %6
  tail call void @exynos_smc(i32 noundef -21, i32 noundef %0, i32 noundef 0, i32 noundef 0) #4
  br label %16

12:                                               ; preds = %2
  tail call void @exynos_smc(i32 noundef -25, i32 noundef %0, i32 noundef 0, i32 noundef 0) #4
  br label %16

13:                                               ; preds = %2
  %14 = load i1, ptr @exynos_l2_write_sec.__already_done, align 1
  br i1 %14, label %16, label %15, !prof !9

15:                                               ; preds = %13
  store i1 true, ptr @exynos_l2_write_sec.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 177, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.exynos_l2_write_sec, i32 noundef %1) #4
  br label %16

16:                                               ; preds = %15, %13, %12, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos_l2_configure(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.l2x0_regs, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.l2x0_regs, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.l2x0_regs, ptr %0, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  tail call void @exynos_smc(i32 noundef -22, i32 noundef %3, i32 noundef %5, i32 noundef %7) #4
  %8 = getelementptr inbounds %struct.l2x0_regs, ptr %0, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.l2x0_regs, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  tail call void @exynos_smc(i32 noundef -23, i32 noundef %9, i32 noundef %11, i32 noundef 0) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exynos_set_boot_flag(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = load ptr, ptr @sysram_ns_base_addr, align 4
  %4 = getelementptr i8, ptr %3, i32 40
  %5 = shl i32 %0, 2
  %6 = getelementptr i8, ptr %4, i32 %5
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #4, !srcloc !10
  %8 = and i32 %1, 31
  %9 = icmp eq i32 %8, 0
  %10 = and i32 %7, -32
  %11 = select i1 %9, i32 %7, i32 %10
  %12 = or i32 %11, %1
  %13 = load ptr, ptr @sysram_ns_base_addr, align 4
  %14 = getelementptr i8, ptr %13, i32 40
  %15 = getelementptr i8, ptr %14, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %12) #4, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exynos_clear_boot_flag(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = load ptr, ptr @sysram_ns_base_addr, align 4
  %4 = getelementptr i8, ptr %3, i32 40
  %5 = shl i32 %0, 2
  %6 = getelementptr i8, ptr %4, i32 %5
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #4, !srcloc !10
  %8 = xor i32 %1, -1
  %9 = and i32 %7, %8
  %10 = load ptr, ptr @sysram_ns_base_addr, align 4
  %11 = getelementptr i8, ptr %10, i32 40
  %12 = getelementptr i8, ptr %11, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %9) #4, !srcloc !11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_get_address(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_do_idle(i32 noundef %0) #3 {
  switch i32 %0, label %23 [
    i32 1, label %2
    i32 0, label %22
  ]

2:                                                ; preds = %1
  %3 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #7, !srcloc !8
  %4 = and i32 %3, -16711696
  %5 = icmp eq i32 %4, 1090568336
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = tail call { i32, i32 } asm "mrc p15, 0, $0, c15, c0, 0\0Amrc p15, 0, $1, c15, c0, 1\0A", "=r,=r,~{cc}"() #7, !srcloc !12
  %8 = extractvalue { i32, i32 } %7, 0
  %9 = extractvalue { i32, i32 } %7, 1
  store i32 %8, ptr @cp15_save_power, align 4
  store i32 %9, ptr @cp15_save_diag, align 4
  br label %10

10:                                               ; preds = %6, %2
  %11 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @exynos_cpu_resume_ns to i32), i32 -2130706432, i32 8454144) #7, !srcloc !13
  %12 = load ptr, ptr @sysram_ns_base_addr, align 4
  %13 = getelementptr i8, ptr %12, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #4, !srcloc !11
  %14 = load ptr, ptr @sysram_ns_base_addr, align 4
  %15 = getelementptr i8, ptr %14, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 -54915824) #4, !srcloc !11
  %16 = load i32, ptr @exynos_cpu_id, align 4
  %17 = and i32 %16, -4096
  %18 = icmp eq i32 %17, -481878016
  br i1 %18, label %19, label %21

19:                                               ; preds = %10
  %20 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %20() #4
  tail call void @exynos_smc(i32 noundef -6, i32 noundef 0, i32 noundef 1, i32 noundef 0) #4
  tail call void @exynos_smc(i32 noundef -7, i32 noundef 1, i32 noundef 1, i32 noundef 0) #4
  br label %23

21:                                               ; preds = %10
  tail call void @exynos_smc(i32 noundef -5, i32 noundef 0, i32 noundef 0, i32 noundef 0) #4
  br label %23

22:                                               ; preds = %1
  tail call void @exynos_smc(i32 noundef -3, i32 noundef 0, i32 noundef 0, i32 noundef 0) #4
  br label %23

23:                                               ; preds = %22, %21, %19, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_set_cpu_boot_addr(i32 noundef %0, i32 noundef %1) #3 {
  %3 = load ptr, ptr @sysram_ns_base_addr, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %2
  %6 = getelementptr i8, ptr %3, i32 28
  %7 = load i32, ptr @exynos_cpu_id, align 4
  %8 = and i32 %7, -131072
  %9 = icmp eq i32 %8, -465567744
  %10 = shl i32 %0, 2
  %11 = select i1 %9, i32 %10, i32 0
  %12 = getelementptr i8, ptr %6, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %1) #4, !srcloc !11
  br label %13

13:                                               ; preds = %5, %2
  %14 = phi i32 [ 0, %5 ], [ -19, %2 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_get_cpu_boot_addr(i32 noundef %0, ptr nocapture noundef writeonly %1) #3 {
  %3 = load ptr, ptr @sysram_ns_base_addr, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = getelementptr i8, ptr %3, i32 28
  %7 = load i32, ptr @exynos_cpu_id, align 4
  %8 = and i32 %7, -131072
  %9 = icmp eq i32 %8, -465567744
  %10 = shl i32 %0, 2
  %11 = select i1 %9, i32 %10, i32 0
  %12 = getelementptr i8, ptr %6, i32 %11
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #4, !srcloc !10
  store i32 %13, ptr %1, align 4
  br label %14

14:                                               ; preds = %5, %2
  %15 = phi i32 [ 0, %5 ], [ -19, %2 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_cpu_boot(i32 noundef %0) #3 {
  %2 = load i32, ptr @exynos_cpu_id, align 4
  %3 = and i32 %2, -4096
  %4 = icmp eq i32 %3, -481878016
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @exynos_smc(i32 noundef -4, i32 noundef %0, i32 noundef 0, i32 noundef 0) #4
  br label %6

6:                                                ; preds = %5, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_suspend() #3 {
  %1 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #7, !srcloc !8
  %2 = and i32 %1, -16711696
  %3 = icmp eq i32 %2, 1090568336
  br i1 %3, label %4, label %8

4:                                                ; preds = %0
  %5 = tail call { i32, i32 } asm "mrc p15, 0, $0, c15, c0, 0\0Amrc p15, 0, $1, c15, c0, 1\0A", "=r,=r,~{cc}"() #7, !srcloc !12
  %6 = extractvalue { i32, i32 } %5, 0
  %7 = extractvalue { i32, i32 } %5, 1
  store i32 %6, ptr @cp15_save_power, align 4
  store i32 %7, ptr @cp15_save_diag, align 4
  br label %8

8:                                                ; preds = %4, %0
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  %9 = load ptr, ptr @sysram_ns_base_addr, align 4
  %10 = getelementptr i8, ptr %9, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 2989) #4, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %11 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @exynos_cpu_resume_ns to i32), i32 -2130706432, i32 8454144) #7, !srcloc !13
  %12 = load ptr, ptr @sysram_ns_base_addr, align 4
  %13 = getelementptr i8, ptr %12, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #4, !srcloc !11
  %14 = tail call i32 @cpu_suspend(i32 noundef 0, ptr noundef nonnull @exynos_cpu_suspend) #4
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_resume() #3 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !16
  tail call void @arm_heavy_mb() #4
  %1 = load ptr, ptr @sysram_ns_base_addr, align 4
  %2 = getelementptr i8, ptr %1, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 0) #4, !srcloc !11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_cpu_resume_ns() #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_smc(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_suspend(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_cpu_suspend(i32 noundef %0) #3 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %2() #4
  %3 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 3), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void %3() #4
  br label %6

6:                                                ; preds = %5, %1
  tail call void @exynos_smc(i32 noundef -3, i32 noundef 0, i32 noundef 0, i32 noundef 0) #4
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #5
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  %8 = load ptr, ptr @sysram_ns_base_addr, align 4
  %9 = getelementptr i8, ptr %8, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #4, !srcloc !11
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }
attributes #6 = { cold }
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
!8 = !{i64 2152302233}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 949752}
!11 = !{i64 949334}
!12 = !{i64 624, i64 662}
!13 = !{i64 2148475715, i64 2148475738, i64 2148475770, i64 2148475802, i64 2148475840, i64 2148475870}
!14 = !{i64 2152328393}
!15 = !{i64 2152329637}
!16 = !{i64 2152330387}
!17 = !{i64 2152328034}
