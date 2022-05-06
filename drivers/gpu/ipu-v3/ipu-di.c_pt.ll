; ModuleID = '/llk/IR/drivers/gpu/ipu-v3/ipu-di.c_pt.bc'
source_filename = "../drivers/gpu/ipu-v3/ipu-di.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_di_adjust_videomode:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_di_adjust_videomode\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_di_adjust_videomode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_di_init_sync_panel:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_di_init_sync_panel\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_di_init_sync_panel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_di_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_di_enable\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_di_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_di_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_di_disable\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_di_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_di_get_num:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_di_get_num\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_di_get_num:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_di_get:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_di_get\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_di_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_di_put:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_di_put\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_di_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.videomode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ipu_di = type { ptr, i32, i32, ptr, ptr, ptr, i8, ptr }
%struct.di_sync_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ipu_di_signal_cfg = type { i8, %struct.videomode, i32, i32, i32, i8, i8 }
%struct.ipu_soc = type { ptr, ptr, i32, %struct.spinlock, %struct.mutex, %struct.list_head, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, [2 x ptr], [2 x ptr], ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }

@.str = private unnamed_addr constant [75 x i8] c"hactive %d is not aligned to 8 and front porch is too small to compensate\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to adjust videomode\0A\00", align 1
@__kstrtab_ipu_di_adjust_videomode = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_di_adjust_videomode = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_di_adjust_videomode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_di_adjust_videomode to i32), ptr @__kstrtab_ipu_di_adjust_videomode, ptr @__kstrtabns_ipu_di_adjust_videomode }, section "___ksymtab_gpl+ipu_di_adjust_videomode", align 4
@di_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @di_mutex, i64 12), ptr getelementptr (i8, ptr @di_mutex, i64 12) } }, align 4
@__kstrtab_ipu_di_init_sync_panel = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_di_init_sync_panel = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_di_init_sync_panel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_di_init_sync_panel to i32), ptr @__kstrtab_ipu_di_init_sync_panel, ptr @__kstrtabns_ipu_di_init_sync_panel }, section "___ksymtab_gpl+ipu_di_init_sync_panel", align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"drivers/gpu/ipu-v3/ipu-di.c\00", align 1
@__kstrtab_ipu_di_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_di_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_di_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_di_enable to i32), ptr @__kstrtab_ipu_di_enable, ptr @__kstrtabns_ipu_di_enable }, section "___ksymtab_gpl+ipu_di_enable", align 4
@__kstrtab_ipu_di_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_di_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_di_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_di_disable to i32), ptr @__kstrtab_ipu_di_disable, ptr @__kstrtabns_ipu_di_disable }, section "___ksymtab_gpl+ipu_di_disable", align 4
@__kstrtab_ipu_di_get_num = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_di_get_num = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_di_get_num = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_di_get_num to i32), ptr @__kstrtab_ipu_di_get_num, ptr @__kstrtabns_ipu_di_get_num }, section "___ksymtab_gpl+ipu_di_get_num", align 4
@ipu_di_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @ipu_di_lock, i64 12), ptr getelementptr (i8, ptr @ipu_di_lock, i64 12) } }, align 4
@__kstrtab_ipu_di_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_di_get = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_di_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_di_get to i32), ptr @__kstrtab_ipu_di_get, ptr @__kstrtabns_ipu_di_get }, section "___ksymtab_gpl+ipu_di_get", align 4
@__kstrtab_ipu_di_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_di_put = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_di_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_di_put to i32), ptr @__kstrtab_ipu_di_put, ptr @__kstrtabns_ipu_di_put }, section "___ksymtab_gpl+ipu_di_put", align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"di1\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"di0\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"DI%d counters out of range.\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_ipu_di_adjust_videomode, ptr @__ksymtab_ipu_di_disable, ptr @__ksymtab_ipu_di_enable, ptr @__ksymtab_ipu_di_get, ptr @__ksymtab_ipu_di_get_num, ptr @__ksymtab_ipu_di_init_sync_panel, ptr @__ksymtab_ipu_di_put], section "llvm.metadata"
@switch.table.ipu_di_init_sync_panel.6 = private unnamed_addr constant [8 x i32] [i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipu_di_adjust_videomode(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.videomode, ptr %1, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 7
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.videomode, ptr %1, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %4, 7
  %11 = and i32 %10, -8
  %12 = sub i32 %11, %4
  %13 = icmp ult i32 %9, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.ipu_di, ptr %0, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str, i32 noundef %4) #8
  br label %39

18:                                               ; preds = %7, %2
  %19 = getelementptr inbounds %struct.videomode, ptr %1, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = icmp ugt i32 %20, 1
  br i1 %21, label %39, label %22

22:                                               ; preds = %18
  %23 = sub nuw nsw i32 2, %20
  %24 = getelementptr inbounds %struct.videomode, ptr %1, i32 0, i32 7
  %25 = load i32, ptr %24, align 4
  %26 = icmp ult i32 %25, %23
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  store i32 2, ptr %19, align 4
  %28 = sub i32 %25, %23
  store i32 %28, ptr %24, align 4
  br label %39

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.videomode, ptr %1, i32 0, i32 8
  %31 = load i32, ptr %30, align 4
  %32 = icmp ugt i32 %31, %23
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  store i32 2, ptr %19, align 4
  %34 = sub i32 %31, %23
  store i32 %34, ptr %30, align 4
  br label %39

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.ipu_di, ptr %0, i32 0, i32 7
  %37 = load ptr, ptr %36, align 4
  %38 = load ptr, ptr %37, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %38, ptr noundef nonnull @.str.1) #8
  br label %39

39:                                               ; preds = %35, %33, %27, %18, %14
  %40 = phi i32 [ -22, %35 ], [ -22, %14 ], [ 0, %18 ], [ 0, %33 ], [ 0, %27 ]
  ret i32 %40
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipu_di_init_sync_panel(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = alloca [7 x %struct.di_sync_config], align 4
  %4 = alloca [9 x %struct.di_sync_config], align 4
  %5 = alloca [7 x %struct.di_sync_config], align 4
  tail call void @mutex_lock(ptr noundef nonnull @di_mutex) #9
  %6 = getelementptr inbounds %struct.ipu_di_signal_cfg, ptr %1, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %27, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ipu_di, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = and i32 %7, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %60

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.ipu_di_signal_cfg, ptr %1, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 @clk_set_rate(ptr noundef %12, i32 noundef %17) #9
  %19 = tail call i32 @clk_get_rate(ptr noundef %12) #9
  %20 = load i32, ptr %16, align 4
  %21 = lshr i32 %20, 1
  %22 = add i32 %21, %19
  %23 = udiv i32 %22, %20
  %24 = tail call i32 @llvm.umax.i32(i32 %23, i32 1) #9
  %25 = tail call i32 @llvm.umin.i32(i32 %24, i32 255) #9
  %26 = shl nuw nsw i32 %25, 4
  br label %60

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.ipu_di, ptr %0, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 @clk_get_rate(ptr noundef %29) #9
  %31 = getelementptr inbounds %struct.ipu_di_signal_cfg, ptr %1, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = lshr i32 %32, 1
  %34 = add i32 %33, %30
  %35 = udiv i32 %34, %32
  %36 = tail call i32 @llvm.umax.i32(i32 %35, i32 1) #9
  %37 = tail call i32 @llvm.umin.i32(i32 %36, i32 255) #9
  %38 = udiv i32 %30, %37
  %39 = udiv i32 %32, 1000
  %40 = udiv i32 %38, %39
  %41 = add i32 %40, -990
  %42 = icmp ult i32 %41, 20
  br i1 %42, label %43, label %45

43:                                               ; preds = %27
  %44 = load ptr, ptr %28, align 4
  br label %56

45:                                               ; preds = %27
  %46 = getelementptr inbounds %struct.ipu_di, ptr %0, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = tail call i32 @clk_set_rate(ptr noundef %47, i32 noundef %32) #9
  %49 = tail call i32 @clk_get_rate(ptr noundef %47) #9
  %50 = load i32, ptr %31, align 4
  %51 = lshr i32 %50, 1
  %52 = add i32 %51, %49
  %53 = udiv i32 %52, %50
  %54 = tail call i32 @llvm.umax.i32(i32 %53, i32 1) #9
  %55 = tail call i32 @llvm.umin.i32(i32 %54, i32 255) #9
  br label %56

56:                                               ; preds = %45, %43
  %57 = phi i32 [ %37, %43 ], [ %55, %45 ]
  %58 = phi ptr [ %44, %43 ], [ %47, %45 ]
  %59 = shl nuw nsw i32 %57, 4
  br label %60

60:                                               ; preds = %56, %15, %10
  %61 = phi i32 [ %26, %15 ], [ %59, %56 ], [ 16, %10 ]
  %62 = phi ptr [ %12, %15 ], [ %58, %56 ], [ %12, %10 ]
  %63 = getelementptr inbounds %struct.ipu_di, ptr %0, i32 0, i32 5
  store ptr %62, ptr %63, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %64 = load ptr, ptr %0, align 4
  %65 = getelementptr i8, ptr %64, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %61) #9, !srcloc !9
  %66 = shl nuw nsw i32 %61, 12
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %67 = load ptr, ptr %0, align 4
  %68 = getelementptr i8, ptr %67, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %66) #9, !srcloc !9
  %69 = load ptr, ptr %0, align 4
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %71 = and i32 %70, -1048577
  %72 = getelementptr inbounds %struct.ipu_di, ptr %0, i32 0, i32 3
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %62, %73
  %75 = select i1 %74, i32 1048576, i32 0
  %76 = or i32 %75, %71
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %77 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %76) #9, !srcloc !9
  %78 = load ptr, ptr %0, align 4
  %79 = getelementptr i8, ptr %78, i32 4
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %81 = lshr i32 %80, 4
  %82 = and i32 %81, 255
  %83 = shl nuw nsw i32 %82, 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %84 = load ptr, ptr %0, align 4
  %85 = getelementptr i8, ptr %84, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 %83) #9, !srcloc !9
  %86 = add nsw i32 %82, -1
  %87 = shl i32 %86, 24
  %88 = shl nsw i32 %86, 16
  %89 = or i32 %88, %87
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %90 = load ptr, ptr %0, align 4
  %91 = getelementptr i8, ptr %90, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %89) #9, !srcloc !9
  %92 = shl nuw nsw i32 %82, 17
  %93 = load ptr, ptr %0, align 4
  %94 = getelementptr i8, ptr %93, i32 88
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %94) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %96 = or i32 %95, 768
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %97 = load ptr, ptr %0, align 4
  %98 = getelementptr i8, ptr %97, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 %96) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %99 = load ptr, ptr %0, align 4
  %100 = getelementptr i8, ptr %99, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 %92) #9, !srcloc !9
  %101 = load ptr, ptr %0, align 4
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %103 = and i32 %102, 1048576
  %104 = or i32 %103, 2097152
  %105 = getelementptr inbounds %struct.ipu_di_signal_cfg, ptr %1, i32 0, i32 1, i32 9
  %106 = load i32, ptr %105, align 4
  %107 = and i32 %106, 256
  %108 = icmp eq i32 %107, 0
  %109 = getelementptr inbounds %struct.ipu_di_signal_cfg, ptr %1, i32 0, i32 1, i32 1
  %110 = load i32, ptr %109, align 4
  %111 = getelementptr inbounds %struct.ipu_di_signal_cfg, ptr %1, i32 0, i32 1, i32 4
  %112 = load i32, ptr %111, align 4
  %113 = getelementptr inbounds %struct.ipu_di_signal_cfg, ptr %1, i32 0, i32 1, i32 3
  %114 = load i32, ptr %113, align 4
  %115 = getelementptr inbounds %struct.ipu_di_signal_cfg, ptr %1, i32 0, i32 1, i32 2
  %116 = load i32, ptr %115, align 4
  br i1 %108, label %189, label %117

117:                                              ; preds = %60
  %118 = add i32 %114, %112
  %119 = add i32 %118, %110
  %120 = add i32 %119, %116
  %121 = getelementptr inbounds %struct.ipu_di_signal_cfg, ptr %1, i32 0, i32 1, i32 5
  %122 = load i32, ptr %121, align 4
  %123 = getelementptr inbounds %struct.ipu_di_signal_cfg, ptr %1, i32 0, i32 1, i32 8
  %124 = load i32, ptr %123, align 4
  %125 = getelementptr inbounds %struct.ipu_di_signal_cfg, ptr %1, i32 0, i32 1, i32 7
  %126 = load i32, ptr %125, align 4
  %127 = getelementptr inbounds %struct.ipu_di_signal_cfg, ptr %1, i32 0, i32 1, i32 6
  %128 = load i32, ptr %127, align 4
  %129 = add i32 %126, %124
  %130 = add i32 %129, %122
  %131 = add i32 %130, %128
  call void @llvm.lifetime.start.p0(i64 308, ptr nonnull %5) #9
  %132 = shl i32 %131, 1
  %133 = add i32 %132, -1
  %134 = getelementptr inbounds i8, ptr %5, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(36) %134, i8 0, i64 36, i1 false) #9
  store i32 %133, ptr %5, align 4
  %135 = getelementptr inbounds %struct.di_sync_config, ptr %5, i32 0, i32 1
  store i32 3, ptr %135, align 4
  %136 = getelementptr inbounds %struct.di_sync_config, ptr %5, i32 1
  %137 = add i32 %120, -1
  store i32 %137, ptr %136, align 4
  %138 = getelementptr inbounds %struct.di_sync_config, ptr %5, i32 1, i32 1
  store i32 1, ptr %138, align 4
  %139 = getelementptr inbounds %struct.di_sync_config, ptr %5, i32 1, i32 2
  %140 = getelementptr inbounds %struct.di_sync_config, ptr %5, i32 1, i32 6
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %139, i8 0, i64 16, i1 false) #9
  store i32 1, ptr %140, align 4
  %141 = getelementptr inbounds %struct.di_sync_config, ptr %5, i32 1, i32 7
  store i32 0, ptr %141, align 4
  %142 = getelementptr inbounds %struct.di_sync_config, ptr %5, i32 1, i32 8
  store i32 1, ptr %142, align 4
  %143 = getelementptr inbounds %struct.di_sync_config, ptr %5, i32 1, i32 9
  store i32 0, ptr %143, align 4
  %144 = getelementptr inbounds %struct.di_sync_config, ptr %5, i32 1, i32 10
  %145 = shl i32 %112, 1
  store i32 %145, ptr %144, align 4
  %146 = getelementptr inbounds %struct.di_sync_config, ptr %5, i32 2
  %147 = add i32 %131, -1
  store i32 %147, ptr %146, align 4
  %148 = getelementptr inbounds %struct.di_sync_config, ptr %5, i32 2, i32 1
  store i32 4, ptr %148, align 4
  %149 = getelementptr inbounds %struct.di_sync_config, ptr %5, i32 2, i32 2
  store i32 0, ptr %149, align 4
  %150 = getelementptr inbounds %struct.di_sync_config, ptr %5, i32 2, i32 3
  store i32 0, ptr %150, align 4
  %151 = getelementptr inbounds %struct.di_sync_config, ptr %5, i32 2, i32 4
  store i32 0, ptr %151, align 4
  %152 = getelementptr inbounds %struct.di_sync_config, ptr %5, i32 2, i32 5
  store i32 2, ptr %152, align 4
  %153 = getelementptr inbounds %struct.di_sync_config, ptr %5, i32 2, i32 6
  store i32 1, ptr %153, align 4
  %154 = getelementptr inbounds %struct.di_sync_config, ptr %5, i32 2, i32 7
  store i32 0, ptr %154, align 4
  %155 = getelementptr inbounds %struct.di_sync_config, ptr %5, i32 2, i32 8
  store i32 4, ptr %155, align 4
  %156 = getelementptr inbounds %struct.di_sync_config, ptr %5, i32 2, i32 9
  store i32 0, ptr %156, align 4
  %157 = getelementptr inbounds %struct.di_sync_config, ptr %5, i32 2, i32 10
  %158 = shl i32 %124, 1
  store i32 %158, ptr %157, align 4
  %159 = getelementptr inbounds %struct.di_sync_config, ptr %5, i32 3
  %160 = lshr i32 %131, 1
  store i32 %160, ptr %159, align 4
  %161 = getelementptr inbounds %struct.di_sync_config, ptr %5, i32 3, i32 1
  store i32 3, ptr %161, align 4
  %162 = getelementptr inbounds %struct.di_sync_config, ptr %5, i32 3, i32 2
  %163 = lshr i32 %120, 1
  store i32 %163, ptr %162, align 4
  %164 = getelementptr inbounds %struct.di_sync_config, ptr %5, i32 3, i32 3
  store i32 1, ptr %164, align 4
  %165 = getelementptr inbounds %struct.di_sync_config, ptr %5, i32 3, i32 4
  store i32 2, ptr %165, align 4
  %166 = getelementptr inbounds %struct.di_sync_config, ptr %5, i32 3, i32 5
  store i32 2, ptr %166, align 4
  %167 = getelementptr inbounds %struct.di_sync_config, ptr %5, i32 3, i32 6
  %168 = getelementptr inbounds %struct.di_sync_config, ptr %5, i32 4, i32 1
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(24) %167, i8 0, i64 24, i1 false) #9
  store i32 3, ptr %168, align 4
  %169 = getelementptr inbounds %struct.di_sync_config, ptr %5, i32 4, i32 2
  %170 = lshr i32 %129, 1
  store i32 %170, ptr %169, align 4
  %171 = getelementptr inbounds %struct.di_sync_config, ptr %5, i32 4, i32 3
  store i32 3, ptr %171, align 4
  %172 = getelementptr inbounds %struct.di_sync_config, ptr %5, i32 4, i32 4
  %173 = lshr i32 %122, 1
  store i32 %173, ptr %172, align 4
  %174 = getelementptr inbounds %struct.di_sync_config, ptr %5, i32 4, i32 5
  store i32 5, ptr %174, align 4
  %175 = getelementptr inbounds %struct.di_sync_config, ptr %5, i32 4, i32 6
  %176 = getelementptr inbounds %struct.di_sync_config, ptr %5, i32 5, i32 1
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(24) %175, i8 0, i64 24, i1 false) #9
  store i32 1, ptr %176, align 4
  %177 = getelementptr inbounds %struct.di_sync_config, ptr %5, i32 5, i32 2
  store i32 %118, ptr %177, align 4
  %178 = getelementptr inbounds %struct.di_sync_config, ptr %5, i32 5, i32 3
  store i32 1, ptr %178, align 4
  %179 = getelementptr inbounds %struct.di_sync_config, ptr %5, i32 5, i32 4
  store i32 %110, ptr %179, align 4
  %180 = getelementptr inbounds %struct.di_sync_config, ptr %5, i32 5, i32 5
  store i32 6, ptr %180, align 4
  %181 = getelementptr inbounds %struct.di_sync_config, ptr %5, i32 5, i32 6
  %182 = getelementptr inbounds %struct.di_sync_config, ptr %5, i32 6
  %183 = add nsw i32 %163, -1
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(64) %181, i8 0, i64 64, i1 false) #9
  store i32 %183, ptr %182, align 4
  %184 = getelementptr inbounds %struct.di_sync_config, ptr %5, i32 6, i32 1
  store i32 1, ptr %184, align 4
  call fastcc void @ipu_di_sync_config(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 7) #9
  %185 = add nsw i32 %160, -1
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %186 = load ptr, ptr %0, align 4
  %187 = getelementptr i8, ptr %186, i32 368
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %187, i32 %185) #9, !srcloc !9
  call void @llvm.lifetime.end.p0(i64 308, ptr nonnull %5) #9
  %188 = or i32 %103, 270532608
  br label %333

189:                                              ; preds = %60
  %190 = getelementptr inbounds %struct.ipu_di_signal_cfg, ptr %1, i32 0, i32 1, i32 5
  %191 = load i32, ptr %190, align 4
  %192 = getelementptr inbounds %struct.ipu_di_signal_cfg, ptr %1, i32 0, i32 1, i32 8
  %193 = load i32, ptr %192, align 4
  %194 = getelementptr inbounds %struct.ipu_di_signal_cfg, ptr %1, i32 0, i32 1, i32 7
  %195 = load i32, ptr %194, align 4
  %196 = getelementptr inbounds %struct.ipu_di_signal_cfg, ptr %1, i32 0, i32 1, i32 6
  %197 = load i32, ptr %196, align 4
  call void @llvm.lifetime.start.p0(i64 308, ptr nonnull %3) #9
  %198 = add i32 %114, %112
  %199 = add i32 %110, -1
  %200 = add i32 %199, %198
  %201 = add i32 %200, %116
  %202 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(36) %202, i8 0, i64 36, i1 false) #9
  store i32 %201, ptr %3, align 4
  %203 = getelementptr inbounds %struct.di_sync_config, ptr %3, i32 0, i32 1
  store i32 1, ptr %203, align 4
  %204 = getelementptr inbounds %struct.di_sync_config, ptr %3, i32 1
  store i32 %201, ptr %204, align 4
  %205 = getelementptr inbounds %struct.di_sync_config, ptr %3, i32 1, i32 1
  store i32 1, ptr %205, align 4
  %206 = getelementptr inbounds %struct.di_sync_config, ptr %3, i32 1, i32 2
  %207 = getelementptr inbounds %struct.ipu_di_signal_cfg, ptr %1, i32 0, i32 3
  %208 = load i32, ptr %207, align 4
  %209 = mul i32 %208, %82
  store i32 %209, ptr %206, align 4
  %210 = getelementptr inbounds %struct.di_sync_config, ptr %3, i32 1, i32 3
  store i32 1, ptr %210, align 4
  %211 = getelementptr inbounds %struct.di_sync_config, ptr %3, i32 1, i32 4
  store i32 0, ptr %211, align 4
  %212 = getelementptr inbounds %struct.di_sync_config, ptr %3, i32 1, i32 5
  store i32 0, ptr %212, align 4
  %213 = getelementptr inbounds %struct.di_sync_config, ptr %3, i32 1, i32 6
  store i32 1, ptr %213, align 4
  %214 = getelementptr inbounds %struct.di_sync_config, ptr %3, i32 1, i32 7
  store i32 0, ptr %214, align 4
  %215 = getelementptr inbounds %struct.di_sync_config, ptr %3, i32 1, i32 8
  store i32 1, ptr %215, align 4
  %216 = getelementptr inbounds %struct.di_sync_config, ptr %3, i32 1, i32 9
  store i32 0, ptr %216, align 4
  %217 = getelementptr inbounds %struct.di_sync_config, ptr %3, i32 1, i32 10
  %218 = shl i32 %112, 1
  store i32 %218, ptr %217, align 4
  %219 = getelementptr inbounds %struct.di_sync_config, ptr %3, i32 2
  %220 = add i32 %195, %193
  %221 = add i32 %191, -1
  %222 = add i32 %221, %220
  %223 = add i32 %222, %197
  store i32 %223, ptr %219, align 4
  %224 = getelementptr inbounds %struct.di_sync_config, ptr %3, i32 2, i32 1
  store i32 2, ptr %224, align 4
  %225 = getelementptr inbounds %struct.di_sync_config, ptr %3, i32 2, i32 2
  %226 = getelementptr inbounds %struct.di_sync_config, ptr %3, i32 2, i32 6
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %225, i8 0, i64 16, i1 false) #9
  store i32 1, ptr %226, align 4
  %227 = getelementptr inbounds %struct.di_sync_config, ptr %3, i32 2, i32 7
  store i32 0, ptr %227, align 4
  %228 = getelementptr inbounds %struct.di_sync_config, ptr %3, i32 2, i32 8
  store i32 2, ptr %228, align 4
  %229 = getelementptr inbounds %struct.di_sync_config, ptr %3, i32 2, i32 9
  store i32 0, ptr %229, align 4
  %230 = getelementptr inbounds %struct.di_sync_config, ptr %3, i32 2, i32 10
  %231 = shl i32 %193, 1
  store i32 %231, ptr %230, align 4
  %232 = getelementptr inbounds %struct.di_sync_config, ptr %3, i32 3
  store i32 0, ptr %232, align 4
  %233 = getelementptr inbounds %struct.di_sync_config, ptr %3, i32 3, i32 1
  store i32 3, ptr %233, align 4
  %234 = getelementptr inbounds %struct.di_sync_config, ptr %3, i32 3, i32 2
  store i32 %220, ptr %234, align 4
  %235 = getelementptr inbounds %struct.di_sync_config, ptr %3, i32 3, i32 3
  store i32 3, ptr %235, align 4
  %236 = getelementptr inbounds %struct.di_sync_config, ptr %3, i32 3, i32 4
  store i32 %191, ptr %236, align 4
  %237 = getelementptr inbounds %struct.di_sync_config, ptr %3, i32 3, i32 5
  store i32 4, ptr %237, align 4
  %238 = getelementptr inbounds %struct.di_sync_config, ptr %3, i32 3, i32 6
  %239 = getelementptr inbounds %struct.di_sync_config, ptr %3, i32 4, i32 1
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(24) %238, i8 0, i64 24, i1 false) #9
  store i32 1, ptr %239, align 4
  %240 = getelementptr inbounds %struct.di_sync_config, ptr %3, i32 4, i32 2
  store i32 %198, ptr %240, align 4
  %241 = getelementptr inbounds %struct.di_sync_config, ptr %3, i32 4, i32 3
  store i32 1, ptr %241, align 4
  %242 = getelementptr inbounds %struct.di_sync_config, ptr %3, i32 4, i32 4
  store i32 %110, ptr %242, align 4
  %243 = getelementptr inbounds %struct.di_sync_config, ptr %3, i32 4, i32 5
  store i32 5, ptr %243, align 4
  %244 = getelementptr inbounds %struct.di_sync_config, ptr %3, i32 4, i32 6
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(108) %244, i8 0, i64 108, i1 false) #9
  call void @llvm.lifetime.start.p0(i64 396, ptr nonnull %4) #9
  %245 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(36) %245, i8 0, i64 36, i1 false) #9
  store i32 %201, ptr %4, align 4
  %246 = getelementptr inbounds %struct.di_sync_config, ptr %4, i32 0, i32 1
  store i32 1, ptr %246, align 4
  %247 = getelementptr inbounds %struct.di_sync_config, ptr %4, i32 1
  %248 = getelementptr inbounds %struct.di_sync_config, ptr %4, i32 1, i32 2
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(44) %248, i8 0, i64 36, i1 false) #9
  store i32 %223, ptr %247, align 4
  %249 = getelementptr inbounds %struct.di_sync_config, ptr %4, i32 1, i32 1
  store i32 2, ptr %249, align 4
  %250 = getelementptr inbounds %struct.di_sync_config, ptr %4, i32 2
  store i32 0, ptr %250, align 4
  %251 = getelementptr inbounds %struct.di_sync_config, ptr %4, i32 2, i32 1
  store i32 2, ptr %251, align 4
  %252 = getelementptr inbounds %struct.di_sync_config, ptr %4, i32 2, i32 2
  store i32 %220, ptr %252, align 4
  %253 = getelementptr inbounds %struct.di_sync_config, ptr %4, i32 2, i32 3
  store i32 2, ptr %253, align 4
  %254 = getelementptr inbounds %struct.di_sync_config, ptr %4, i32 2, i32 4
  store i32 %191, ptr %254, align 4
  %255 = getelementptr inbounds %struct.di_sync_config, ptr %4, i32 2, i32 5
  store i32 3, ptr %255, align 4
  %256 = getelementptr inbounds %struct.di_sync_config, ptr %4, i32 2, i32 6
  %257 = getelementptr inbounds %struct.di_sync_config, ptr %4, i32 3
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(20) %256, i8 0, i64 20, i1 false) #9
  store i32 %201, ptr %257, align 4
  %258 = getelementptr inbounds %struct.di_sync_config, ptr %4, i32 3, i32 1
  store i32 1, ptr %258, align 4
  %259 = getelementptr inbounds %struct.di_sync_config, ptr %4, i32 3, i32 2
  %260 = add i32 %209, 18
  store i32 %260, ptr %259, align 4
  %261 = getelementptr inbounds %struct.di_sync_config, ptr %4, i32 3, i32 3
  store i32 1, ptr %261, align 4
  %262 = getelementptr inbounds %struct.di_sync_config, ptr %4, i32 3, i32 4
  store i32 0, ptr %262, align 4
  %263 = getelementptr inbounds %struct.di_sync_config, ptr %4, i32 3, i32 5
  store i32 0, ptr %263, align 4
  %264 = getelementptr inbounds %struct.di_sync_config, ptr %4, i32 3, i32 6
  store i32 1, ptr %264, align 4
  %265 = getelementptr inbounds %struct.di_sync_config, ptr %4, i32 3, i32 7
  store i32 0, ptr %265, align 4
  %266 = getelementptr inbounds %struct.di_sync_config, ptr %4, i32 3, i32 8
  store i32 1, ptr %266, align 4
  %267 = getelementptr inbounds %struct.di_sync_config, ptr %4, i32 3, i32 9
  store i32 0, ptr %267, align 4
  %268 = getelementptr inbounds %struct.di_sync_config, ptr %4, i32 3, i32 10
  store i32 %218, ptr %268, align 4
  %269 = getelementptr inbounds %struct.di_sync_config, ptr %4, i32 4
  store i32 0, ptr %269, align 4
  %270 = getelementptr inbounds %struct.di_sync_config, ptr %4, i32 4, i32 1
  store i32 1, ptr %270, align 4
  %271 = getelementptr inbounds %struct.di_sync_config, ptr %4, i32 4, i32 2
  store i32 %198, ptr %271, align 4
  %272 = getelementptr inbounds %struct.di_sync_config, ptr %4, i32 4, i32 3
  store i32 1, ptr %272, align 4
  %273 = getelementptr inbounds %struct.di_sync_config, ptr %4, i32 4, i32 4
  store i32 %110, ptr %273, align 4
  %274 = getelementptr inbounds %struct.di_sync_config, ptr %4, i32 4, i32 5
  store i32 4, ptr %274, align 4
  %275 = getelementptr inbounds %struct.di_sync_config, ptr %4, i32 4, i32 6
  %276 = getelementptr inbounds %struct.di_sync_config, ptr %4, i32 5
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(20) %275, i8 0, i64 20, i1 false) #9
  store i32 %223, ptr %276, align 4
  %277 = getelementptr inbounds %struct.di_sync_config, ptr %4, i32 5, i32 1
  store i32 2, ptr %277, align 4
  %278 = getelementptr inbounds %struct.di_sync_config, ptr %4, i32 5, i32 2
  store i32 1, ptr %278, align 4
  %279 = getelementptr inbounds %struct.di_sync_config, ptr %4, i32 5, i32 3
  store i32 2, ptr %279, align 4
  %280 = getelementptr inbounds %struct.di_sync_config, ptr %4, i32 5, i32 4
  store i32 0, ptr %280, align 4
  %281 = getelementptr inbounds %struct.di_sync_config, ptr %4, i32 5, i32 5
  store i32 0, ptr %281, align 4
  %282 = getelementptr inbounds %struct.di_sync_config, ptr %4, i32 5, i32 6
  store i32 1, ptr %282, align 4
  %283 = getelementptr inbounds %struct.di_sync_config, ptr %4, i32 5, i32 7
  store i32 0, ptr %283, align 4
  %284 = getelementptr inbounds %struct.di_sync_config, ptr %4, i32 5, i32 8
  store i32 2, ptr %284, align 4
  %285 = getelementptr inbounds %struct.di_sync_config, ptr %4, i32 5, i32 9
  store i32 0, ptr %285, align 4
  %286 = getelementptr inbounds %struct.di_sync_config, ptr %4, i32 5, i32 10
  store i32 %231, ptr %286, align 4
  %287 = getelementptr inbounds %struct.di_sync_config, ptr %4, i32 6
  store i32 %201, ptr %287, align 4
  %288 = getelementptr inbounds %struct.di_sync_config, ptr %4, i32 6, i32 1
  store i32 1, ptr %288, align 4
  %289 = getelementptr inbounds %struct.di_sync_config, ptr %4, i32 6, i32 2
  store i32 %260, ptr %289, align 4
  %290 = getelementptr inbounds %struct.di_sync_config, ptr %4, i32 6, i32 3
  store i32 1, ptr %290, align 4
  %291 = getelementptr inbounds %struct.di_sync_config, ptr %4, i32 6, i32 4
  store i32 0, ptr %291, align 4
  %292 = getelementptr inbounds %struct.di_sync_config, ptr %4, i32 6, i32 5
  store i32 0, ptr %292, align 4
  %293 = getelementptr inbounds %struct.di_sync_config, ptr %4, i32 6, i32 6
  store i32 1, ptr %293, align 4
  %294 = getelementptr inbounds %struct.di_sync_config, ptr %4, i32 6, i32 7
  store i32 0, ptr %294, align 4
  %295 = getelementptr inbounds %struct.di_sync_config, ptr %4, i32 6, i32 8
  store i32 1, ptr %295, align 4
  %296 = getelementptr inbounds %struct.di_sync_config, ptr %4, i32 6, i32 9
  store i32 0, ptr %296, align 4
  %297 = getelementptr inbounds %struct.di_sync_config, ptr %4, i32 6, i32 10
  store i32 %218, ptr %297, align 4
  %298 = getelementptr inbounds %struct.di_sync_config, ptr %4, i32 7
  store i32 %223, ptr %298, align 4
  %299 = getelementptr inbounds %struct.di_sync_config, ptr %4, i32 7, i32 1
  store i32 2, ptr %299, align 4
  %300 = getelementptr inbounds %struct.di_sync_config, ptr %4, i32 7, i32 2
  store i32 1, ptr %300, align 4
  %301 = getelementptr inbounds %struct.di_sync_config, ptr %4, i32 7, i32 3
  store i32 2, ptr %301, align 4
  %302 = getelementptr inbounds %struct.di_sync_config, ptr %4, i32 7, i32 4
  store i32 0, ptr %302, align 4
  %303 = getelementptr inbounds %struct.di_sync_config, ptr %4, i32 7, i32 5
  store i32 0, ptr %303, align 4
  %304 = getelementptr inbounds %struct.di_sync_config, ptr %4, i32 7, i32 6
  store i32 1, ptr %304, align 4
  %305 = getelementptr inbounds %struct.di_sync_config, ptr %4, i32 7, i32 7
  store i32 0, ptr %305, align 4
  %306 = getelementptr inbounds %struct.di_sync_config, ptr %4, i32 7, i32 8
  store i32 2, ptr %306, align 4
  %307 = getelementptr inbounds %struct.di_sync_config, ptr %4, i32 7, i32 9
  store i32 0, ptr %307, align 4
  %308 = getelementptr inbounds %struct.di_sync_config, ptr %4, i32 7, i32 10
  store i32 %231, ptr %308, align 4
  %309 = getelementptr inbounds %struct.di_sync_config, ptr %4, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(44) %309, i8 0, i64 44, i1 false) #9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %310 = load ptr, ptr %0, align 4
  %311 = getelementptr i8, ptr %310, i32 368
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %311, i32 %223) #9, !srcloc !9
  %312 = getelementptr inbounds %struct.ipu_di_signal_cfg, ptr %1, i32 0, i32 5
  %313 = load i8, ptr %312, align 4
  %314 = icmp eq i8 %313, 2
  br i1 %314, label %315, label %320

315:                                              ; preds = %189
  %316 = getelementptr inbounds %struct.ipu_di_signal_cfg, ptr %1, i32 0, i32 6
  %317 = load i8, ptr %316, align 1
  %318 = icmp eq i8 %317, 3
  br i1 %318, label %319, label %320

319:                                              ; preds = %315
  call fastcc void @ipu_di_sync_config(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 7) #9
  br label %321

320:                                              ; preds = %315, %189
  call fastcc void @ipu_di_sync_config(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 9) #9
  br label %321

321:                                              ; preds = %320, %319
  call void @llvm.lifetime.end.p0(i64 396, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 308, ptr nonnull %3) #9
  %322 = getelementptr inbounds %struct.ipu_di, ptr %0, i32 0, i32 1
  %323 = load i32, ptr %322, align 4
  %324 = icmp eq i32 %323, 1
  br i1 %324, label %325, label %333

325:                                              ; preds = %321
  %326 = load i8, ptr %312, align 4
  %327 = icmp eq i8 %326, 2
  br i1 %327, label %328, label %332

328:                                              ; preds = %325
  %329 = getelementptr inbounds %struct.ipu_di_signal_cfg, ptr %1, i32 0, i32 6
  %330 = load i8, ptr %329, align 1
  %331 = icmp eq i8 %330, 3
  br i1 %331, label %333, label %332

332:                                              ; preds = %328, %325
  br label %333

333:                                              ; preds = %332, %328, %321, %117
  %334 = phi i32 [ %188, %117 ], [ %104, %328 ], [ %104, %332 ], [ %104, %321 ]
  %335 = phi i32 [ 16386, %117 ], [ 16386, %328 ], [ 40962, %332 ], [ 16386, %321 ]
  %336 = load i32, ptr %105, align 4
  %337 = and i32 %336, 2
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %351, label %339

339:                                              ; preds = %333
  %340 = getelementptr inbounds %struct.ipu_di_signal_cfg, ptr %1, i32 0, i32 5
  %341 = load i8, ptr %340, align 4
  %342 = add i8 %341, -1
  %343 = icmp ult i8 %342, 8
  br i1 %343, label %344, label %348

344:                                              ; preds = %339
  %345 = sext i8 %342 to i32
  %346 = getelementptr inbounds [8 x i32], ptr @switch.table.ipu_di_init_sync_panel.6, i32 0, i32 %345
  %347 = load i32, ptr %346, align 4
  br label %348

348:                                              ; preds = %344, %339
  %349 = phi i32 [ %347, %344 ], [ 0, %339 ]
  %350 = or i32 %349, %334
  br label %351

351:                                              ; preds = %348, %333
  %352 = phi i32 [ %350, %348 ], [ %334, %333 ]
  %353 = and i32 %336, 8
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %367, label %355

355:                                              ; preds = %351
  %356 = getelementptr inbounds %struct.ipu_di_signal_cfg, ptr %1, i32 0, i32 6
  %357 = load i8, ptr %356, align 1
  %358 = add i8 %357, -1
  %359 = icmp ult i8 %358, 8
  br i1 %359, label %360, label %364

360:                                              ; preds = %355
  %361 = sext i8 %358 to i32
  %362 = getelementptr inbounds [8 x i32], ptr @switch.table.ipu_di_init_sync_panel.6, i32 0, i32 %361
  %363 = load i32, ptr %362, align 4
  br label %364

364:                                              ; preds = %360, %355
  %365 = phi i32 [ %363, %360 ], [ 0, %355 ]
  %366 = or i32 %365, %352
  br label %367

367:                                              ; preds = %364, %351
  %368 = phi i32 [ %366, %364 ], [ %352, %351 ]
  %369 = load i8, ptr %1, align 4
  %370 = and i8 %369, 2
  %371 = zext i8 %370 to i32
  %372 = shl nuw nsw i32 %371, 16
  %373 = or i32 %372, %368
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %374 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %374, i32 %373) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %375 = load ptr, ptr %0, align 4
  %376 = getelementptr i8, ptr %375, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %376, i32 %335) #9, !srcloc !9
  %377 = load ptr, ptr %0, align 4
  %378 = getelementptr i8, ptr %377, i32 356
  %379 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %378) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %380 = and i32 %379, -145
  %381 = load i8, ptr %1, align 4
  %382 = shl i8 %381, 2
  %383 = and i8 %382, 16
  %384 = zext i8 %383 to i32
  %385 = shl i8 %381, 7
  %386 = zext i8 %385 to i32
  %387 = or i32 %380, %386
  %388 = or i32 %387, %384
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %389 = load ptr, ptr %0, align 4
  %390 = getelementptr i8, ptr %389, i32 356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %390, i32 %388) #9, !srcloc !9
  tail call void @mutex_unlock(ptr noundef nonnull @di_mutex) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipu_di_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.ipu_di, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %7, !prof !12

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 644, i32 noundef 9, ptr noundef null) #9
  %6 = load ptr, ptr %2, align 4
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi ptr [ %6, %5 ], [ %3, %1 ]
  %9 = tail call i32 @clk_prepare(ptr noundef %8) #9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %7
  %12 = tail call i32 @clk_enable(ptr noundef %8) #9
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call void @clk_unprepare(ptr noundef %8) #9
  br label %21

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ipu_di, ptr %0, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.ipu_di, ptr %0, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 @ipu_module_enable(ptr noundef %17, i32 noundef %19) #9
  br label %21

21:                                               ; preds = %15, %14, %7
  %22 = phi i32 [ 0, %15 ], [ %12, %14 ], [ %9, %7 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_module_enable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipu_di_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.ipu_di, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %6, !prof !12

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 658, i32 noundef 9, ptr noundef null) #9
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.ipu_di, ptr %0, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ipu_di, ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @ipu_module_disable(ptr noundef %8, i32 noundef %10) #9
  %12 = load ptr, ptr %2, align 4
  tail call void @clk_disable(ptr noundef %12) #9
  tail call void @clk_unprepare(ptr noundef %12) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_module_disable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @ipu_di_get_num(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.ipu_di, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ipu_di_get(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = icmp sgt i32 %1, 1
  br i1 %3, label %13, label %4

4:                                                ; preds = %2
  %5 = getelementptr %struct.ipu_soc, ptr %0, i32 0, i32 18, i32 %1
  %6 = load ptr, ptr %5, align 4
  tail call void @mutex_lock(ptr noundef nonnull @ipu_di_lock) #9
  %7 = getelementptr inbounds %struct.ipu_di, ptr %6, i32 0, i32 6
  %8 = load i8, ptr %7, align 4, !range !13
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  store i8 1, ptr %7, align 4
  br label %11

11:                                               ; preds = %10, %4
  %12 = phi ptr [ %6, %10 ], [ inttoptr (i32 -16 to ptr), %4 ]
  tail call void @mutex_unlock(ptr noundef nonnull @ipu_di_lock) #9
  br label %13

13:                                               ; preds = %11, %2
  %14 = phi ptr [ %12, %11 ], [ inttoptr (i32 -22 to ptr), %2 ]
  ret ptr %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipu_di_put(ptr nocapture noundef writeonly %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @ipu_di_lock) #9
  %2 = getelementptr inbounds %struct.ipu_di, ptr %0, i32 0, i32 6
  store i8 0, ptr %2, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @ipu_di_lock) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipu_di_init(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = icmp sgt i32 %2, 1
  br i1 %7, label %31, label %8

8:                                                ; preds = %6
  %9 = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 32, i32 noundef 3520) #9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %31, label %11

11:                                               ; preds = %8
  %12 = getelementptr %struct.ipu_soc, ptr %0, i32 0, i32 18, i32 %2
  store ptr %9, ptr %12, align 4
  %13 = icmp eq i32 %2, 0
  %14 = select i1 %13, ptr @.str.4, ptr @.str.3
  %15 = tail call ptr @devm_clk_get(ptr noundef %1, ptr noundef nonnull %14) #9
  %16 = getelementptr inbounds %struct.ipu_di, ptr %9, i32 0, i32 3
  store ptr %15, ptr %16, align 4
  %17 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = ptrtoint ptr %15 to i32
  br label %31

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.ipu_di, ptr %9, i32 0, i32 2
  store i32 %4, ptr %21, align 4
  %22 = getelementptr inbounds %struct.ipu_di, ptr %9, i32 0, i32 1
  store i32 %2, ptr %22, align 4
  %23 = getelementptr inbounds %struct.ipu_di, ptr %9, i32 0, i32 4
  store ptr %5, ptr %23, align 4
  %24 = tail call ptr @devm_ioremap(ptr noundef %1, i32 noundef %3, i32 noundef 4096) #9
  store ptr %24, ptr %9, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %20
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %27 = load ptr, ptr %9, align 4
  %28 = getelementptr i8, ptr %27, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 16) #9, !srcloc !9
  %29 = getelementptr inbounds %struct.ipu_di, ptr %9, i32 0, i32 6
  store i8 0, ptr %29, align 4
  %30 = getelementptr inbounds %struct.ipu_di, ptr %9, i32 0, i32 7
  store ptr %0, ptr %30, align 4
  br label %31

31:                                               ; preds = %26, %20, %18, %8, %6
  %32 = phi i32 [ %19, %18 ], [ 0, %26 ], [ -19, %6 ], [ -12, %8 ], [ -12, %20 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @ipu_di_exit(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ipu_di_sync_config(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %92

5:                                                ; preds = %32, %3
  %6 = phi i32 [ %90, %32 ], [ 0, %3 ]
  %7 = getelementptr %struct.di_sync_config, ptr %1, i32 %6
  %8 = load i32, ptr %7, align 4
  %9 = icmp sgt i32 %8, 4095
  br i1 %9, label %26, label %10

10:                                               ; preds = %5
  %11 = getelementptr %struct.di_sync_config, ptr %1, i32 %6, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = icmp sgt i32 %12, 4095
  br i1 %13, label %26, label %14

14:                                               ; preds = %10
  %15 = getelementptr %struct.di_sync_config, ptr %1, i32 %6, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = icmp sgt i32 %16, 4095
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = getelementptr %struct.di_sync_config, ptr %1, i32 %6, i32 9
  %20 = load i32, ptr %19, align 4
  %21 = icmp sgt i32 %20, 1023
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = getelementptr %struct.di_sync_config, ptr %1, i32 %6, i32 10
  %24 = load i32, ptr %23, align 4
  %25 = icmp sgt i32 %24, 1023
  br i1 %25, label %26, label %32

26:                                               ; preds = %22, %18, %14, %10, %5
  %27 = getelementptr inbounds %struct.ipu_di, ptr %0, i32 0, i32 7
  %28 = load ptr, ptr %27, align 4
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.ipu_di, ptr %0, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.5, i32 noundef %31) #8
  br label %92

32:                                               ; preds = %22
  %33 = shl i32 %8, 19
  %34 = getelementptr %struct.di_sync_config, ptr %1, i32 %6, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = shl i32 %35, 16
  %37 = shl i32 %12, 3
  %38 = getelementptr %struct.di_sync_config, ptr %1, i32 %6, i32 3
  %39 = load i32, ptr %38, align 4
  %40 = or i32 %37, %33
  %41 = or i32 %40, %36
  %42 = or i32 %41, %39
  %43 = shl i32 %6, 2
  %44 = add i32 %43, 12
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %45 = load ptr, ptr %0, align 4
  %46 = getelementptr i8, ptr %45, i32 %44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %42) #9, !srcloc !9
  %47 = getelementptr %struct.di_sync_config, ptr %1, i32 %6, i32 6
  %48 = load i32, ptr %47, align 4
  %49 = shl i32 %48, 29
  %50 = getelementptr %struct.di_sync_config, ptr %1, i32 %6, i32 5
  %51 = load i32, ptr %50, align 4
  %52 = shl i32 %51, 25
  %53 = or i32 %52, %49
  %54 = getelementptr %struct.di_sync_config, ptr %1, i32 %6, i32 8
  %55 = load i32, ptr %54, align 4
  %56 = shl i32 %55, 12
  %57 = or i32 %53, %56
  %58 = getelementptr %struct.di_sync_config, ptr %1, i32 %6, i32 7
  %59 = load i32, ptr %58, align 4
  %60 = shl i32 %59, 9
  %61 = or i32 %57, %60
  %62 = load i32, ptr %23, align 4
  %63 = shl i32 %62, 16
  %64 = or i32 %61, %63
  %65 = load i32, ptr %19, align 4
  %66 = or i32 %64, %65
  %67 = load i32, ptr %15, align 4
  %68 = icmp eq i32 %67, 0
  %69 = or i32 %66, 268435456
  %70 = select i1 %68, i32 %69, i32 %66
  %71 = add i32 %43, 48
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %72 = load ptr, ptr %0, align 4
  %73 = getelementptr i8, ptr %72, i32 %71
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %70) #9, !srcloc !9
  %74 = shl nuw i32 %6, 1
  %75 = add i32 %74, 328
  %76 = and i32 %75, -4
  %77 = load ptr, ptr %0, align 4
  %78 = getelementptr i8, ptr %77, i32 %76
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %80 = shl i32 %6, 4
  %81 = and i32 %80, 16
  %82 = shl nuw i32 65535, %81
  %83 = xor i32 %82, -1
  %84 = and i32 %79, %83
  %85 = load i32, ptr %15, align 4
  %86 = shl i32 %85, %81
  %87 = or i32 %86, %84
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %88 = load ptr, ptr %0, align 4
  %89 = getelementptr i8, ptr %88, i32 %76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 %87) #9, !srcloc !9
  %90 = add nuw nsw i32 %6, 1
  %91 = icmp eq i32 %90, %2
  br i1 %91, label %92, label %5

92:                                               ; preds = %32, %26, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind }

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
!8 = !{i64 2154762440}
!9 = !{i64 2892330}
!10 = !{i64 2892748}
!11 = !{i64 2154762084}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i8 0, i8 2}
