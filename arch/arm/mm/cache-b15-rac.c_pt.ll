; ModuleID = '/llk/IR/arch/arm/mm/cache-b15-rac.c_pt.bc'
source_filename = "../arch/arm/mm/cache-b15-rac.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }

@b15_rac_flags = internal global i32 0, align 4
@rac_lock = internal global %struct.spinlock zeroinitializer, align 4
@__initcall__kmod_cache_b15_rac__219_374_b15_rac_init3 = internal global ptr @b15_rac_init, section ".initcall3.init", align 4
@b15_rac_base = internal unnamed_addr global ptr null, align 4
@rac_flush_offset = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"brcm,brcmstb-cpu-biu-ctrl\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"arch/arm/mm/cache-b15-rac.c\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"RAC only supports 4 CPUs\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"\013failed to remap BIU control base\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"brcm,brahma-b15\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"brcm,brahma-b53\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"\013Unsupported CPU\0A\00", align 1
@b15_rac_reboot_nb = internal global %struct.notifier_block { ptr @b15_rac_reboot_notifier, ptr null, i32 0 }, align 4
@.str.7 = private unnamed_addr constant [38 x i8] c"\013failed to register reboot notifier\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"arm/cache-b15-rac:dead\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"arm/cache-b15-rac:dying\00", align 1
@b15_rac_syscore_ops = internal global %struct.syscore_ops { %struct.list_head zeroinitializer, ptr @b15_rac_suspend, ptr @b15_rac_resume, ptr null }, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.10 = private unnamed_addr constant [42 x i8] c"Read-ahead cache not previously disabled\0A\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"\016%pOF: Broadcom Brahma-B15 readahead cache\0A\00", align 1
@rac_config0_reg = internal unnamed_addr global i32 0, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_cache_b15_rac__219_374_b15_rac_init3], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @b15_flush_kern_cache_all() local_unnamed_addr #0 {
  %1 = load volatile i32, ptr @b15_rac_flags, align 4
  %2 = and i32 %1, 2
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  tail call void @v7_flush_kern_cache_all() #5
  br label %32

5:                                                ; preds = %0
  tail call void @_raw_spin_lock(ptr noundef nonnull @rac_lock) #5
  %6 = load volatile i32, ptr @b15_rac_flags, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void @v7_flush_kern_cache_all() #5
  br label %29

10:                                               ; preds = %5
  %11 = load ptr, ptr @b15_rac_base, align 4
  %12 = getelementptr i8, ptr %11, i32 120
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #5, !srcloc !8
  %14 = load ptr, ptr @b15_rac_base, align 4
  %15 = getelementptr i8, ptr %14, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 0) #5, !srcloc !9
  tail call void asm sideeffect "dmb ", "~{memory}"() #5, !srcloc !10
  %16 = load ptr, ptr @b15_rac_base, align 4
  %17 = load i32, ptr @rac_flush_offset, align 4
  %18 = getelementptr i8, ptr %16, i32 %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 1) #5, !srcloc !9
  br label %19

19:                                               ; preds = %19, %10
  tail call void asm sideeffect "dmb ", "~{memory}"() #5, !srcloc !11
  %20 = load ptr, ptr @b15_rac_base, align 4
  %21 = load i32, ptr @rac_flush_offset, align 4
  %22 = getelementptr i8, ptr %20, i32 %21
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #5, !srcloc !8
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %19

26:                                               ; preds = %19
  tail call void @v7_flush_kern_cache_all() #5
  %27 = load ptr, ptr @b15_rac_base, align 4
  %28 = getelementptr i8, ptr %27, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %13) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  br label %29

29:                                               ; preds = %26, %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !13
  %30 = load i16, ptr @rac_lock, align 4
  %31 = add i16 %30, 1
  store i16 %31, ptr @rac_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !16
  br label %32

32:                                               ; preds = %29, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v7_flush_kern_cache_all() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @b15_rac_init() #2 section ".init.text" {
  %1 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str) #5
  %2 = icmp eq ptr %1, null
  br i1 %2, label %69, label %3

3:                                                ; preds = %0
  %4 = load i32, ptr @__cpu_possible_mask, align 4
  %5 = and i32 %4, 65535
  %6 = tail call i32 @__sw_hweight32(i32 noundef %5) #5
  %7 = icmp ugt i32 %6, 4
  br i1 %7, label %8, label %9, !prof !17

8:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 299, i32 noundef 9, ptr noundef nonnull @.str.2) #5
  br label %67

9:                                                ; preds = %3
  %10 = tail call ptr @of_iomap(ptr noundef nonnull %1, i32 noundef 0) #5
  store ptr %10, ptr @b15_rac_base, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #6
  br label %67

14:                                               ; preds = %9
  %15 = tail call ptr @of_get_cpu_node(i32 noundef 0, ptr noundef null) #5
  %16 = icmp eq ptr %15, null
  br i1 %16, label %67, label %17

17:                                               ; preds = %14
  %18 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %15, ptr noundef nonnull @.str.4) #5
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %15, ptr noundef nonnull @.str.5) #5
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #6
  tail call void @of_node_put(ptr noundef nonnull %15) #5
  br label %67

25:                                               ; preds = %20, %17
  %26 = phi i32 [ 128, %17 ], [ 132, %20 ]
  store i32 %26, ptr @rac_flush_offset, align 4
  tail call void @of_node_put(ptr noundef nonnull %15) #5
  %27 = tail call i32 @register_reboot_notifier(ptr noundef nonnull @b15_rac_reboot_nb) #5
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #6
  %31 = load ptr, ptr @b15_rac_base, align 4
  tail call void @iounmap(ptr noundef %31) #5
  br label %67

32:                                               ; preds = %25
  %33 = tail call i32 @__cpuhp_setup_state(i32 noundef 38, ptr noundef nonnull @.str.8, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull @b15_rac_dead_cpu, i1 noundef zeroext false) #5
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %63

35:                                               ; preds = %32
  %36 = tail call i32 @__cpuhp_setup_state(i32 noundef 148, ptr noundef nonnull @.str.9, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull @b15_rac_dying_cpu, i1 noundef zeroext false) #5
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %62

38:                                               ; preds = %35
  tail call void @register_syscore_ops(ptr noundef nonnull @b15_rac_syscore_ops) #5
  tail call void @_raw_spin_lock(ptr noundef nonnull @rac_lock) #5
  %39 = load ptr, ptr @b15_rac_base, align 4
  %40 = getelementptr i8, ptr %39, i32 120
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #5, !srcloc !8
  %42 = load i32, ptr @nr_cpu_ids, align 4
  %43 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #7
  %44 = icmp ult i32 %43, %42
  br i1 %44, label %45, label %53

45:                                               ; preds = %45, %38
  %46 = phi i32 [ %51, %45 ], [ %43, %38 ]
  %47 = phi i32 [ %50, %45 ], [ 0, %38 ]
  %48 = shl i32 %46, 3
  %49 = shl i32 16, %48
  %50 = or i32 %49, %47
  %51 = tail call i32 @cpumask_next(i32 noundef %46, ptr noundef nonnull @__cpu_possible_mask) #7
  %52 = icmp ult i32 %51, %42
  br i1 %52, label %45, label %53

53:                                               ; preds = %45, %38
  %54 = phi i32 [ 0, %38 ], [ %50, %45 ]
  %55 = and i32 %54, %41
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %58, label %57, !prof !18

57:                                               ; preds = %53
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 355, i32 noundef 9, ptr noundef nonnull @.str.10) #5
  br label %58

58:                                               ; preds = %57, %53
  tail call fastcc void @b15_rac_enable()
  tail call void @_set_bit(i32 noundef 0, ptr noundef nonnull @b15_rac_flags) #5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !13
  %59 = load i16, ptr @rac_lock, align 4
  %60 = add i16 %59, 1
  store i16 %60, ptr @rac_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !16
  %61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull %1) #6
  br label %67

62:                                               ; preds = %35
  tail call void @__cpuhp_remove_state(i32 noundef 148, i1 noundef zeroext false) #5
  br label %63

63:                                               ; preds = %62, %32
  %64 = phi i32 [ %33, %32 ], [ %36, %62 ]
  %65 = tail call i32 @unregister_reboot_notifier(ptr noundef nonnull @b15_rac_reboot_nb) #5
  %66 = load ptr, ptr @b15_rac_base, align 4
  tail call void @iounmap(ptr noundef %66) #5
  br label %67

67:                                               ; preds = %63, %58, %29, %23, %14, %12, %8
  %68 = phi i32 [ %27, %29 ], [ %64, %63 ], [ 0, %58 ], [ -22, %23 ], [ -12, %12 ], [ 0, %8 ], [ -19, %14 ]
  tail call void @of_node_put(ptr noundef nonnull %1) #5
  br label %69

69:                                               ; preds = %67, %0
  %70 = phi i32 [ %68, %67 ], [ -19, %0 ]
  ret i32 %70
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_cpu_node(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_reboot_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @b15_rac_dead_cpu(i32 noundef %0) #0 {
  %2 = load volatile i32, ptr @b15_rac_flags, align 4
  %3 = and i32 %2, 2
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  tail call void @_raw_spin_lock(ptr noundef nonnull @rac_lock) #5
  %6 = load i32, ptr @rac_config0_reg, align 4
  %7 = load ptr, ptr @b15_rac_base, align 4
  %8 = getelementptr i8, ptr %7, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  %9 = load i32, ptr @b15_rac_flags, align 4
  %10 = or i32 %9, 1
  store i32 %10, ptr @b15_rac_flags, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !13
  %11 = load i16, ptr @rac_lock, align 4
  %12 = add i16 %11, 1
  store i16 %12, ptr @rac_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !16
  br label %13

13:                                               ; preds = %5, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @b15_rac_dying_cpu(i32 noundef %0) #0 {
  %2 = load volatile i32, ptr @b15_rac_flags, align 4
  %3 = and i32 %2, 2
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %26

5:                                                ; preds = %1
  tail call void @_raw_spin_lock(ptr noundef nonnull @rac_lock) #5
  %6 = load i32, ptr @b15_rac_flags, align 4
  %7 = and i32 %6, -2
  store i32 %7, ptr @b15_rac_flags, align 4
  %8 = load ptr, ptr @b15_rac_base, align 4
  %9 = getelementptr i8, ptr %8, i32 120
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !8
  %11 = load ptr, ptr @b15_rac_base, align 4
  %12 = getelementptr i8, ptr %11, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 0) #5, !srcloc !9
  tail call void asm sideeffect "dmb ", "~{memory}"() #5, !srcloc !10
  %13 = load ptr, ptr @b15_rac_base, align 4
  %14 = load i32, ptr @rac_flush_offset, align 4
  %15 = getelementptr i8, ptr %13, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 1) #5, !srcloc !9
  br label %16

16:                                               ; preds = %16, %5
  tail call void asm sideeffect "dmb ", "~{memory}"() #5, !srcloc !11
  %17 = load ptr, ptr @b15_rac_base, align 4
  %18 = load i32, ptr @rac_flush_offset, align 4
  %19 = getelementptr i8, ptr %17, i32 %18
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #5, !srcloc !8
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %16

23:                                               ; preds = %16
  store i32 %10, ptr @rac_config0_reg, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !13
  %24 = load i16, ptr @rac_lock, align 4
  %25 = add i16 %24, 1
  store i16 %25, ptr @rac_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !16
  br label %26

26:                                               ; preds = %23, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_syscore_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @b15_rac_enable() unnamed_addr #0 {
  %1 = load i32, ptr @nr_cpu_ids, align 4
  %2 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #7
  %3 = icmp ult i32 %2, %1
  br i1 %3, label %4, label %12

4:                                                ; preds = %4, %0
  %5 = phi i32 [ %10, %4 ], [ %2, %0 ]
  %6 = phi i32 [ %9, %4 ], [ 0, %0 ]
  %7 = shl i32 %5, 3
  %8 = shl i32 221, %7
  %9 = or i32 %8, %6
  %10 = tail call i32 @cpumask_next(i32 noundef %5, ptr noundef nonnull @__cpu_possible_mask) #7
  %11 = icmp ult i32 %10, %1
  br i1 %11, label %4, label %12

12:                                               ; preds = %4, %0
  %13 = phi i32 [ 0, %0 ], [ %9, %4 ]
  %14 = load ptr, ptr @b15_rac_base, align 4
  %15 = getelementptr i8, ptr %14, i32 120
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #5, !srcloc !8
  %17 = load ptr, ptr @b15_rac_base, align 4
  %18 = getelementptr i8, ptr %17, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 0) #5, !srcloc !9
  tail call void asm sideeffect "dmb ", "~{memory}"() #5, !srcloc !10
  %19 = load ptr, ptr @b15_rac_base, align 4
  %20 = load i32, ptr @rac_flush_offset, align 4
  %21 = getelementptr i8, ptr %19, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 1) #5, !srcloc !9
  br label %22

22:                                               ; preds = %22, %12
  tail call void asm sideeffect "dmb ", "~{memory}"() #5, !srcloc !11
  %23 = load ptr, ptr @b15_rac_base, align 4
  %24 = load i32, ptr @rac_flush_offset, align 4
  %25 = getelementptr i8, ptr %23, i32 %24
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #5, !srcloc !8
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %22

29:                                               ; preds = %22
  %30 = load ptr, ptr @b15_rac_base, align 4
  %31 = getelementptr i8, ptr %30, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %13) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_reboot_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @b15_rac_reboot_notifier(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = icmp eq i32 %1, 1
  br i1 %4, label %5, label %24

5:                                                ; preds = %3
  tail call void @_raw_spin_lock(ptr noundef nonnull @rac_lock) #5
  %6 = load ptr, ptr @b15_rac_base, align 4
  %7 = getelementptr i8, ptr %6, i32 120
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !8
  %9 = load ptr, ptr @b15_rac_base, align 4
  %10 = getelementptr i8, ptr %9, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 0) #5, !srcloc !9
  tail call void asm sideeffect "dmb ", "~{memory}"() #5, !srcloc !10
  %11 = load ptr, ptr @b15_rac_base, align 4
  %12 = load i32, ptr @rac_flush_offset, align 4
  %13 = getelementptr i8, ptr %11, i32 %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 1) #5, !srcloc !9
  br label %14

14:                                               ; preds = %14, %5
  tail call void asm sideeffect "dmb ", "~{memory}"() #5, !srcloc !11
  %15 = load ptr, ptr @b15_rac_base, align 4
  %16 = load i32, ptr @rac_flush_offset, align 4
  %17 = getelementptr i8, ptr %15, i32 %16
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #5, !srcloc !8
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %14

21:                                               ; preds = %14
  tail call void @_clear_bit(i32 noundef 0, ptr noundef nonnull @b15_rac_flags) #5
  tail call void @_set_bit(i32 noundef 1, ptr noundef nonnull @b15_rac_flags) #5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !13
  %22 = load i16, ptr @rac_lock, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr @rac_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !16
  br label %24

24:                                               ; preds = %21, %3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @b15_rac_suspend() #0 {
  %1 = load ptr, ptr @b15_rac_base, align 4
  %2 = getelementptr i8, ptr %1, i32 120
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #5, !srcloc !8
  %4 = load ptr, ptr @b15_rac_base, align 4
  %5 = getelementptr i8, ptr %4, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #5, !srcloc !9
  tail call void asm sideeffect "dmb ", "~{memory}"() #5, !srcloc !10
  %6 = load ptr, ptr @b15_rac_base, align 4
  %7 = load i32, ptr @rac_flush_offset, align 4
  %8 = getelementptr i8, ptr %6, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 1) #5, !srcloc !9
  br label %9

9:                                                ; preds = %9, %0
  tail call void asm sideeffect "dmb ", "~{memory}"() #5, !srcloc !11
  %10 = load ptr, ptr @b15_rac_base, align 4
  %11 = load i32, ptr @rac_flush_offset, align 4
  %12 = getelementptr i8, ptr %10, i32 %11
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #5, !srcloc !8
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %9

16:                                               ; preds = %9
  store i32 %3, ptr @rac_config0_reg, align 4
  tail call void @_set_bit(i32 noundef 1, ptr noundef nonnull @b15_rac_flags) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @b15_rac_resume() #0 {
  %1 = load i32, ptr @rac_config0_reg, align 4
  %2 = load ptr, ptr @b15_rac_base, align 4
  %3 = getelementptr i8, ptr %2, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %1) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  tail call void @_clear_bit(i32 noundef 1, ptr noundef nonnull @b15_rac_flags) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cpuhp_remove_state(i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }
attributes #7 = { nounwind readonly willreturn }

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
!8 = !{i64 1408201}
!9 = !{i64 1407783}
!10 = !{i64 2152664879}
!11 = !{i64 2152665126}
!12 = !{i64 2152665561}
!13 = !{i64 2148829571}
!14 = !{i64 2148825395}
!15 = !{i64 2148825470, i64 2148825497, i64 2148825544, i64 2148825566, i64 2148825594, i64 2148825614}
!16 = !{i64 2148852574}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{!"branch_weights", i32 2000, i32 1}
