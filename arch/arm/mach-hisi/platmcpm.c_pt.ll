; ModuleID = '/llk/IR/arch/arm/mach-hisi/platmcpm.c_pt.bc'
source_filename = "../arch/arm/mach-hisi/platmcpm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.smp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.outer_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@__initcall__kmod_platmcpm__219_346_hip04_smp_initearly = internal global ptr @hip04_smp_init, section ".initcallearly.init", align 4
@.str = private unnamed_addr constant [28 x i8] c"hisilicon,hip04-bootwrapper\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"boot-method\00", align 1
@hip04_boot_method = internal global [4 x i32] zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"hisilicon,sysctrl\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"hisilicon,hip04-fabric\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"\013failed to map relocation space\0A\00", align 1
@sysctrl = internal unnamed_addr global ptr null, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"\013failed to get sysctrl base\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"\013failed to get fabric base phys\0A\00", align 1
@fabric_phys_addr = internal global i32 0, align 4
@fabric = internal unnamed_addr global ptr null, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"\013failed to get fabric base\0A\00", align 1
@hip04_smp_ops = internal constant %struct.smp_operations { ptr null, ptr null, ptr null, ptr @hip04_boot_secondary, ptr @hip04_cpu_kill, ptr @hip04_cpu_die, ptr null, ptr null }, section ".init.rodata", align 4
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@outer_cache = external dso_local local_unnamed_addr global %struct.outer_cache_fns, align 4
@.str.8 = private unnamed_addr constant [33 x i8] c"\013%s: boot CPU is out of bound!\0A\00", align 1
@__func__.hip04_cpu_table_init = private unnamed_addr constant [21 x i8] c"hip04_cpu_table_init\00", align 1
@hip04_cpu_table = internal unnamed_addr global [4 x [4 x i32]] zeroinitializer, align 4
@__cpu_logical_map = external dso_local local_unnamed_addr global [0 x i32], align 4
@boot_lock = internal global %struct.spinlock zeroinitializer, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@.str.9 = private unnamed_addr constant [41 x i8] c"\013Cluster %d CPU%d boots multiple times\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_platmcpm__219_346_hip04_smp_initearly], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @hip04_smp_init() #0 section ".init.text" {
  %1 = alloca %struct.resource, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %1) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %1, i8 0, i32 32, i1 false), !annotation !8
  %2 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %62, label %4

4:                                                ; preds = %0
  %5 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @hip04_boot_method, i32 noundef 4, i32 noundef 0) #8
  %6 = tail call i32 @llvm.smin.i32(i32 %5, i32 0) #8
  %7 = icmp sgt i32 %5, -1
  br i1 %7, label %8, label %62

8:                                                ; preds = %4
  %9 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.2) #8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %62, label %11

11:                                               ; preds = %8
  %12 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.3) #8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %62, label %14

14:                                               ; preds = %11
  %15 = load i32, ptr @hip04_boot_method, align 4
  %16 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @hip04_boot_method, i32 0, i32 1), align 4
  %17 = tail call i32 @memblock_reserve(i32 noundef %15, i32 noundef %16) #8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %62

19:                                               ; preds = %14
  %20 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @hip04_boot_method, i32 0, i32 2), align 4
  %21 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @hip04_boot_method, i32 0, i32 3), align 4
  %22 = tail call ptr @ioremap(i32 noundef %20, i32 noundef %21) #8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #9
  br label %57

26:                                               ; preds = %19
  %27 = tail call ptr @of_iomap(ptr noundef nonnull %9, i32 noundef 0) #8
  store ptr %27, ptr @sysctrl, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #9
  br label %55

31:                                               ; preds = %26
  %32 = call i32 @of_address_to_resource(ptr noundef nonnull %12, i32 noundef 0, ptr noundef nonnull %1) #8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #9
  br label %52

36:                                               ; preds = %31
  %37 = load i32, ptr %1, align 4
  store i32 %37, ptr @fabric_phys_addr, align 4
  call fastcc void @__sync_cache_range_w()
  %38 = call ptr @of_iomap(ptr noundef nonnull %12, i32 noundef 0) #8
  store ptr %38, ptr @fabric, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #9
  br label %52

42:                                               ; preds = %36
  %43 = call fastcc zeroext i1 @hip04_cpu_table_init() #10
  br i1 %43, label %46, label %44

44:                                               ; preds = %42
  %45 = load ptr, ptr @fabric, align 4
  call void @iounmap(ptr noundef %45) #8
  br label %52

46:                                               ; preds = %42
  %47 = load i32, ptr @hip04_boot_method, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %22, i32 %47) #8, !srcloc !9
  %48 = getelementptr i8, ptr %22, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 -1515870811) #8, !srcloc !9
  %49 = call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @secondary_startup to i32), i32 -2130706432, i32 8454144) #11, !srcloc !10
  %50 = getelementptr i8, ptr %22, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %49) #8, !srcloc !9
  %51 = getelementptr i8, ptr %22, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 0) #8, !srcloc !9
  call void @iounmap(ptr noundef nonnull %22) #8
  call void @smp_set_ops(ptr noundef nonnull @hip04_smp_ops) #8
  br label %62

52:                                               ; preds = %44, %40, %34
  %53 = phi i32 [ %32, %34 ], [ -22, %44 ], [ -12, %40 ]
  %54 = load ptr, ptr @sysctrl, align 4
  call void @iounmap(ptr noundef %54) #8
  br label %55

55:                                               ; preds = %52, %29
  %56 = phi i32 [ %53, %52 ], [ -12, %29 ]
  call void @iounmap(ptr noundef nonnull %22) #8
  br label %57

57:                                               ; preds = %55, %24
  %58 = phi i32 [ %56, %55 ], [ -12, %24 ]
  %59 = load i32, ptr @hip04_boot_method, align 4
  %60 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @hip04_boot_method, i32 0, i32 1), align 4
  %61 = call i32 @memblock_phys_free(i32 noundef %59, i32 noundef %60) #8
  br label %62

62:                                               ; preds = %57, %46, %14, %11, %8, %4, %0
  %63 = phi i32 [ 0, %46 ], [ %6, %4 ], [ %17, %14 ], [ %58, %57 ], [ -19, %11 ], [ -19, %8 ], [ -19, %0 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %1) #8
  ret i32 %63
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_reserve(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__sync_cache_range_w() unnamed_addr #5 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %1(ptr noundef nonnull @fabric_phys_addr, i32 noundef 4) #8
  %2 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @fabric_phys_addr to i32), i32 -2130706432, i32 8454144) #11, !srcloc !10
  %3 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr getelementptr inbounds (i32, ptr @fabric_phys_addr, i32 1) to i32), i32 -2130706432, i32 8454144) #11, !srcloc !10
  %4 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  tail call void %4(i32 noundef %2, i32 noundef %3) #8
  br label %7

7:                                                ; preds = %6, %0
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc zeroext i1 @hip04_cpu_table_init() unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 5", "=r,~{cc}"() #11, !srcloc !11
  %2 = and i32 %1, 255
  %3 = lshr i32 %1, 8
  %4 = and i32 %3, 255
  %5 = icmp ugt i32 %4, 3
  %6 = icmp ugt i32 %2, 3
  %7 = select i1 %5, i1 true, i1 %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.hip04_cpu_table_init) #9
  br label %28

10:                                               ; preds = %0
  %11 = load ptr, ptr @fabric, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-hisi/platmcpm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 86, 0\0A.popsection", ""() #8, !srcloc !12
  unreachable

14:                                               ; preds = %10
  %15 = getelementptr i8, ptr %11, i32 12
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #8, !srcloc !13
  %17 = shl nuw nsw i32 1, %4
  %18 = or i32 %16, %17
  %19 = load ptr, ptr @fabric, align 4
  %20 = getelementptr i8, ptr %19, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #8, !srcloc !9
  br label %21

21:                                               ; preds = %21, %14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !15
  %22 = load ptr, ptr @fabric, align 4
  %23 = getelementptr i8, ptr %22, i32 12
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #8, !srcloc !13
  %25 = icmp eq i32 %18, %24
  br i1 %25, label %26, label %21

26:                                               ; preds = %21
  %27 = getelementptr [4 x [4 x i32]], ptr @hip04_cpu_table, i32 0, i32 %4, i32 %2
  store i32 1, ptr %27, align 4
  br label %28

28:                                               ; preds = %26, %8
  %29 = xor i1 %7, true
  ret i1 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @secondary_startup() #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @smp_set_ops(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_phys_free(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hip04_boot_secondary(i32 noundef %0, ptr nocapture noundef readnone %1) #6 {
  %3 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %0
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 255
  %6 = lshr i32 %4, 8
  %7 = and i32 %6, 255
  %8 = load ptr, ptr @sysctrl, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %80, label %10

10:                                               ; preds = %2
  %11 = icmp ugt i32 %7, 3
  %12 = icmp ugt i32 %5, 3
  %13 = select i1 %11, i1 true, i1 %12
  br i1 %13, label %80, label %14

14:                                               ; preds = %10
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @boot_lock) #8
  %15 = getelementptr [4 x [4 x i32]], ptr @hip04_cpu_table, i32 0, i32 %7, i32 %5
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %75

18:                                               ; preds = %14
  %19 = load ptr, ptr @sysctrl, align 4
  %20 = shl nuw nsw i32 %7, 3
  %21 = add nuw nsw i32 %20, 1316
  %22 = getelementptr i8, ptr %19, i32 %21
  %23 = add nuw nsw i32 %20, 5408
  %24 = getelementptr i8, ptr %19, i32 %23
  %25 = getelementptr [4 x [4 x i32]], ptr @hip04_cpu_table, i32 0, i32 %7, i32 0
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %61

28:                                               ; preds = %18
  %29 = getelementptr [4 x [4 x i32]], ptr @hip04_cpu_table, i32 0, i32 %7, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %61

32:                                               ; preds = %28
  %33 = getelementptr [4 x [4 x i32]], ptr @hip04_cpu_table, i32 0, i32 %7, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %61

36:                                               ; preds = %32
  %37 = getelementptr [4 x [4 x i32]], ptr @hip04_cpu_table, i32 0, i32 %7, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %61

40:                                               ; preds = %36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 8192) #8, !srcloc !9
  br label %41

41:                                               ; preds = %41, %40
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !16
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !17
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #8, !srcloc !13
  %43 = and i32 %42, 8192
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %41

45:                                               ; preds = %41
  %46 = load ptr, ptr @fabric, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-hisi/platmcpm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 86, 0\0A.popsection", ""() #8, !srcloc !12
  unreachable

49:                                               ; preds = %45
  %50 = getelementptr i8, ptr %46, i32 12
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #8, !srcloc !13
  %52 = shl nuw i32 1, %7
  %53 = or i32 %51, %52
  %54 = load ptr, ptr @fabric, align 4
  %55 = getelementptr i8, ptr %54, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %53) #8, !srcloc !9
  br label %56

56:                                               ; preds = %56, %49
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !15
  %57 = load ptr, ptr @fabric, align 4
  %58 = getelementptr i8, ptr %57, i32 12
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #8, !srcloc !13
  %60 = icmp eq i32 %53, %59
  br i1 %60, label %61, label %56

61:                                               ; preds = %56, %36, %32, %28, %18
  %62 = shl i32 529, %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %62) #8, !srcloc !9
  br label %63

63:                                               ; preds = %63, %61
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !18
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !19
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #8, !srcloc !13
  %65 = icmp eq i32 %62, %64
  br i1 %65, label %63, label %66

66:                                               ; preds = %63
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %67(i32 noundef 4294960) #8
  %68 = and i32 %0, 31
  %69 = add nuw nsw i32 %68, 1
  %70 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %69
  %71 = lshr i32 %0, 5
  %72 = sub nsw i32 0, %71
  %73 = getelementptr i32, ptr %70, i32 %72
  tail call void @arch_send_wakeup_ipi_mask(ptr noundef %73) #8
  %74 = load i32, ptr %15, align 4
  br label %75

75:                                               ; preds = %66, %14
  %76 = phi i32 [ %16, %14 ], [ %74, %66 ]
  %77 = add i32 %76, 1
  store i32 %77, ptr %15, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !20
  %78 = load i16, ptr @boot_lock, align 4
  %79 = add i16 %78, 1
  store i16 %79, ptr @boot_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !22
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !23
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !24
  br label %80

80:                                               ; preds = %75, %10, %2
  %81 = phi i32 [ 0, %75 ], [ -19, %2 ], [ -22, %10 ]
  ret i32 %81
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hip04_cpu_kill(i32 noundef %0) #6 {
  %2 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 255
  %5 = lshr i32 %3, 8
  %6 = and i32 %5, 255
  %7 = icmp ugt i32 %6, 3
  %8 = icmp ugt i32 %4, 3
  %9 = select i1 %7, i1 true, i1 %8, !prof !25
  br i1 %9, label %10, label %11, !prof !25

10:                                               ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-hisi/platmcpm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 200, 0\0A.popsection", ""() #8, !srcloc !26
  unreachable

11:                                               ; preds = %1
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @boot_lock) #8
  %12 = getelementptr [4 x [4 x i32]], ptr @hip04_cpu_table, i32 0, i32 %6, i32 %4
  %13 = shl nuw nsw i32 %6, 3
  %14 = add nuw nsw i32 %13, 5408
  %15 = shl nuw nsw i32 65536, %4
  br label %16

16:                                               ; preds = %26, %11
  %17 = phi i32 [ 0, %11 ], [ %29, %26 ]
  %18 = load i32, ptr %12, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %83

20:                                               ; preds = %16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !27
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !28
  %21 = load ptr, ptr @sysctrl, align 4
  %22 = getelementptr i8, ptr %21, i32 %14
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #8, !srcloc !13
  %24 = and i32 %23, %15
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !20
  %27 = load i16, ptr @boot_lock, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr @boot_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !22
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !23
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !24
  tail call void @msleep(i32 noundef 10) #8
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @boot_lock) #8
  %29 = add nuw nsw i32 %17, 1
  %30 = icmp eq i32 %29, 100
  br i1 %30, label %83, label %16

31:                                               ; preds = %20
  %32 = shl nuw i32 1, %4
  %33 = shl i32 529, %4
  %34 = load ptr, ptr @sysctrl, align 4
  %35 = add nuw nsw i32 %13, 1312
  %36 = getelementptr i8, ptr %34, i32 %35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %33) #8, !srcloc !9
  br label %40

37:                                               ; preds = %40
  %38 = add nuw nsw i32 %41, 1
  %39 = icmp eq i32 %38, 100
  br i1 %39, label %83, label %40

40:                                               ; preds = %37, %31
  %41 = phi i32 [ 0, %31 ], [ %38, %37 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !29
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !30
  %42 = load ptr, ptr @sysctrl, align 4
  %43 = getelementptr i8, ptr %42, i32 %14
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #8, !srcloc !13
  %45 = and i32 %44, %32
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %37, label %47

47:                                               ; preds = %40
  %48 = getelementptr [4 x [4 x i32]], ptr @hip04_cpu_table, i32 0, i32 %6, i32 0
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %80

51:                                               ; preds = %47
  %52 = getelementptr [4 x [4 x i32]], ptr @hip04_cpu_table, i32 0, i32 %6, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %80

55:                                               ; preds = %51
  %56 = getelementptr [4 x [4 x i32]], ptr @hip04_cpu_table, i32 0, i32 %6, i32 2
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %80

59:                                               ; preds = %55
  %60 = getelementptr [4 x [4 x i32]], ptr @hip04_cpu_table, i32 0, i32 %6, i32 3
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %80

63:                                               ; preds = %59
  %64 = load ptr, ptr @fabric, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-hisi/platmcpm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 86, 0\0A.popsection", ""() #8, !srcloc !12
  unreachable

67:                                               ; preds = %63
  %68 = getelementptr i8, ptr %64, i32 12
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #8, !srcloc !13
  %70 = shl nuw i32 1, %6
  %71 = xor i32 %70, -1
  %72 = and i32 %69, %71
  %73 = load ptr, ptr @fabric, align 4
  %74 = getelementptr i8, ptr %73, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %72) #8, !srcloc !9
  br label %75

75:                                               ; preds = %75, %67
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !15
  %76 = load ptr, ptr @fabric, align 4
  %77 = getelementptr i8, ptr %76, i32 12
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #8, !srcloc !13
  %79 = icmp eq i32 %72, %78
  br i1 %79, label %80, label %75

80:                                               ; preds = %75, %59, %55, %51, %47
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !20
  %81 = load i16, ptr @boot_lock, align 4
  %82 = add i16 %81, 1
  store i16 %82, ptr @boot_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !22
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !23
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !24
  br label %86

83:                                               ; preds = %37, %26, %16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !20
  %84 = load i16, ptr @boot_lock, align 4
  %85 = add i16 %84, 1
  store i16 %85, ptr @boot_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !22
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !23
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !24
  br label %86

86:                                               ; preds = %83, %80
  %87 = phi i32 [ 0, %83 ], [ 1, %80 ]
  ret i32 %87
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hip04_cpu_die(i32 noundef %0) #6 {
  %2 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 255
  %5 = lshr i32 %3, 8
  %6 = and i32 %5, 255
  tail call void @_raw_spin_lock(ptr noundef nonnull @boot_lock) #8
  %7 = getelementptr [4 x [4 x i32]], ptr @hip04_cpu_table, i32 0, i32 %6, i32 %4
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, -1
  store i32 %9, ptr %7, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !20
  %12 = load i16, ptr @boot_lock, align 4
  %13 = add i16 %12, 1
  store i16 %13, ptr @boot_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !31
  ret void

14:                                               ; preds = %1
  %15 = icmp sgt i32 %9, 1
  br i1 %15, label %16, label %18

16:                                               ; preds = %14
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %6, i32 noundef %4) #9
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-hisi/platmcpm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 170, 0\0A.popsection", ""() #8, !srcloc !32
  unreachable

18:                                               ; preds = %14
  %19 = getelementptr [4 x [4 x i32]], ptr @hip04_cpu_table, i32 0, i32 %6, i32 0
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %18
  %23 = getelementptr [4 x [4 x i32]], ptr @hip04_cpu_table, i32 0, i32 %6, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %22
  %27 = getelementptr [4 x [4 x i32]], ptr @hip04_cpu_table, i32 0, i32 %6, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %26
  %31 = getelementptr [4 x [4 x i32]], ptr @hip04_cpu_table, i32 0, i32 %6, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !20
  %34 = load i16, ptr @boot_lock, align 4
  %35 = add i16 %34, 1
  store i16 %35, ptr @boot_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !31
  br i1 %33, label %36, label %46

36:                                               ; preds = %30
  tail call void asm sideeffect "mcr\09p15, 1, $0, c15, c0, 3 \0A\09isb\09\0A\09dsb\09", "r"(i32 1024) #8, !srcloc !33
  tail call void asm sideeffect ".arch\09armv7-a \0A\09stmfd\09sp!, {fp, ip} \0A\09mrc\09p15, 0, r0, c1, c0, 0\09@ get SCTLR \0A\09bic\09r0, r0, #(1 << 2) \0A\09mcr\09p15, 0, r0, c1, c0, 0\09@ set SCTLR \0A\09isb\09\0A\09bl\09v7_flush_dcache_all \0A\09mrc\09p15, 0, r0, c1, c0, 1\09@ get ACTLR \0A\09bic\09r0, r0, #(1 << 6)\09@ disable local coherency \0A\09mcr\09p15, 0, r0, c1, c0, 1\09@ set ACTLR \0A\09isb\09\0A\09dsb\09\0A\09ldmfd\09sp!, {fp, ip}", "~{r0},~{r1},~{r2},~{r3},~{r4},~{r5},~{r6},~{r7},~{r9},~{r10},~{lr},~{memory}"() #8, !srcloc !34
  br label %47

37:                                               ; preds = %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !20
  %38 = load i16, ptr @boot_lock, align 4
  %39 = add i16 %38, 1
  store i16 %39, ptr @boot_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !31
  br label %46

40:                                               ; preds = %22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !20
  %41 = load i16, ptr @boot_lock, align 4
  %42 = add i16 %41, 1
  store i16 %42, ptr @boot_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !31
  br label %46

43:                                               ; preds = %26
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !20
  %44 = load i16, ptr @boot_lock, align 4
  %45 = add i16 %44, 1
  store i16 %45, ptr @boot_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !31
  br label %46

46:                                               ; preds = %43, %40, %37, %30
  tail call void asm sideeffect ".arch\09armv7-a \0A\09stmfd\09sp!, {fp, ip} \0A\09mrc\09p15, 0, r0, c1, c0, 0\09@ get SCTLR \0A\09bic\09r0, r0, #(1 << 2) \0A\09mcr\09p15, 0, r0, c1, c0, 0\09@ set SCTLR \0A\09isb\09\0A\09bl\09v7_flush_dcache_louis \0A\09mrc\09p15, 0, r0, c1, c0, 1\09@ get ACTLR \0A\09bic\09r0, r0, #(1 << 6)\09@ disable local coherency \0A\09mcr\09p15, 0, r0, c1, c0, 1\09@ set ACTLR \0A\09isb\09\0A\09dsb\09\0A\09ldmfd\09sp!, {fp, ip}", "~{r0},~{r1},~{r2},~{r3},~{r4},~{r5},~{r6},~{r7},~{r9},~{r10},~{lr},~{memory}"() #8, !srcloc !35
  br label %47

47:                                               ; preds = %46, %36
  br label %48

48:                                               ; preds = %48, %47
  tail call void asm sideeffect "wfi", "~{memory}"() #8, !srcloc !36
  br label %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_send_wakeup_ipi_mask(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { cold }
attributes #11 = { nounwind readnone }

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
!9 = !{i64 2390043}
!10 = !{i64 2148746033, i64 2148746056, i64 2148746088, i64 2148746120, i64 2148746158, i64 2148746188}
!11 = !{i64 2152310977}
!12 = !{i64 2152725460, i64 2152725953, i64 2152725497, i64 2152725553, i64 2152725587, i64 2152725611, i64 2152725652, i64 2152725673, i64 2152725701, i64 2152725735}
!13 = !{i64 2390461}
!14 = !{i64 2152726749}
!15 = !{i64 2152726591}
!16 = !{i64 2152727619}
!17 = !{i64 2152727461}
!18 = !{i64 2152728233}
!19 = !{i64 2152728075}
!20 = !{i64 2149174101}
!21 = !{i64 2149169925}
!22 = !{i64 2149170000, i64 2149170027, i64 2149170074, i64 2149170096, i64 2149170124, i64 2149170144}
!23 = !{i64 468714}
!24 = !{i64 2149198245}
!25 = !{!"branch_weights", i32 1, i32 2000}
!26 = !{i64 2152732628, i64 2152733122, i64 2152732665, i64 2152732721, i64 2152732755, i64 2152732779, i64 2152732820, i64 2152732841, i64 2152732869, i64 2152732903}
!27 = !{i64 2152733601}
!28 = !{i64 2152733443}
!29 = !{i64 2152734362}
!30 = !{i64 2152734204}
!31 = !{i64 2149197104}
!32 = !{i64 2152729963, i64 2152730457, i64 2152730000, i64 2152730056, i64 2152730090, i64 2152730114, i64 2152730155, i64 2152730176, i64 2152730204, i64 2152730238}
!33 = !{i64 4507, i64 4537, i64 4550}
!34 = !{i64 2152730733, i64 2152730750, i64 2152730780, i64 2152730828, i64 2152730871, i64 2152730919, i64 2152730933, i64 2152730983, i64 2152731031, i64 2152731089, i64 2152731137, i64 2152731151, i64 2152731165}
!35 = !{i64 2152731380, i64 2152731397, i64 2152731427, i64 2152731475, i64 2152731518, i64 2152731566, i64 2152731580, i64 2152731630, i64 2152731678, i64 2152731736, i64 2152731784, i64 2152731798, i64 2152731812}
!36 = !{i64 2152732038}
