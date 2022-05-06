; ModuleID = '/llk/IR/drivers/gpu/ipu-v3/ipu-ic.c_pt.bc'
source_filename = "../drivers/gpu/ipu-v3/ipu-ic.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_ic_task_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_ic_task_enable\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_ic_task_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_ic_task_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_ic_task_disable\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_ic_task_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_ic_task_graphics_init:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_ic_task_graphics_init\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_ic_task_graphics_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_ic_task_init:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_ic_task_init\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_ic_task_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_ic_task_idma_init:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_ic_task_idma_init\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_ic_task_idma_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_ic_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_ic_enable\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_ic_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_ic_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_ic_disable\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_ic_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_ic_get:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_ic_get\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_ic_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_ic_put:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_ic_put\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_ic_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_ic_dump:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_ic_dump\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_ic_dump:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ic_task_regoffs = type { i32, [2 x i32] }
%struct.ic_task_bitfields = type { i32, i32, i32, i32, i32, i32 }
%struct.ipu_ic = type { i32, ptr, ptr, %struct.ipu_ic_colorspace, %struct.ipu_ic_colorspace, %struct.ipu_ic_colorspace, i8, i8, i8, ptr }
%struct.ipu_ic_colorspace = type { i32, i32, i32 }
%struct.ipu_ic_priv = type { ptr, ptr, %struct.spinlock, ptr, i32, i32, [3 x %struct.ipu_ic] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.ipu_ic_csc = type { %struct.ipu_ic_colorspace, %struct.ipu_ic_colorspace, %struct.ipu_ic_csc_params }
%struct.ipu_ic_csc_params = type { [3 x [3 x i16]], [3 x i16], i8 }
%struct.ipu_soc = type { ptr, ptr, i32, %struct.spinlock, %struct.mutex, %struct.list_head, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, [2 x ptr], [2 x ptr], ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }

@__kstrtab_ipu_ic_task_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_ic_task_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_ic_task_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_ic_task_enable to i32), ptr @__kstrtab_ipu_ic_task_enable, ptr @__kstrtabns_ipu_ic_task_enable }, section "___ksymtab_gpl+ipu_ic_task_enable", align 4
@__kstrtab_ipu_ic_task_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_ic_task_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_ic_task_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_ic_task_disable to i32), ptr @__kstrtab_ipu_ic_task_disable, ptr @__kstrtabns_ipu_ic_task_disable }, section "___ksymtab_gpl+ipu_ic_task_disable", align 4
@__kstrtab_ipu_ic_task_graphics_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_ic_task_graphics_init = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_ic_task_graphics_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_ic_task_graphics_init to i32), ptr @__kstrtab_ipu_ic_task_graphics_init, ptr @__kstrtabns_ipu_ic_task_graphics_init }, section "___ksymtab_gpl+ipu_ic_task_graphics_init", align 4
@__kstrtab_ipu_ic_task_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_ic_task_init = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_ic_task_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_ic_task_init to i32), ptr @__kstrtab_ipu_ic_task_init, ptr @__kstrtabns_ipu_ic_task_init }, section "___ksymtab_gpl+ipu_ic_task_init", align 4
@.str = private unnamed_addr constant [29 x i8] c"Illegal burst length for IC\0A\00", align 1
@__kstrtab_ipu_ic_task_idma_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_ic_task_idma_init = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_ic_task_idma_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_ic_task_idma_init to i32), ptr @__kstrtab_ipu_ic_task_idma_init, ptr @__kstrtabns_ipu_ic_task_idma_init }, section "___ksymtab_gpl+ipu_ic_task_idma_init", align 4
@__kstrtab_ipu_ic_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_ic_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_ic_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_ic_enable to i32), ptr @__kstrtab_ipu_ic_enable, ptr @__kstrtabns_ipu_ic_enable }, section "___ksymtab_gpl+ipu_ic_enable", align 4
@__kstrtab_ipu_ic_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_ic_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_ic_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_ic_disable to i32), ptr @__kstrtab_ipu_ic_disable, ptr @__kstrtabns_ipu_ic_disable }, section "___ksymtab_gpl+ipu_ic_disable", align 4
@__kstrtab_ipu_ic_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_ic_get = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_ic_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_ic_get to i32), ptr @__kstrtab_ipu_ic_get, ptr @__kstrtabns_ipu_ic_get }, section "___ksymtab_gpl+ipu_ic_get", align 4
@__kstrtab_ipu_ic_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_ic_put = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_ic_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_ic_put to i32), ptr @__kstrtab_ipu_ic_put, ptr @__kstrtabns_ipu_ic_put }, section "___ksymtab_gpl+ipu_ic_put", align 4
@ic_task_reg = internal constant [3 x %struct.ic_task_regoffs] [%struct.ic_task_regoffs { i32 4, [2 x i32] [i32 8200, i32 0] }, %struct.ic_task_regoffs { i32 8, [2 x i32] [i32 16424, i32 16448] }, %struct.ic_task_regoffs { i32 12, [2 x i32] [i32 24672, i32 24696] }], align 4
@ic_task_bit = internal constant [3 x %struct.ic_task_bitfields] [%struct.ic_task_bitfields { i32 1, i32 4, i32 0, i32 2, i32 0, i32 0 }, %struct.ic_task_bitfields { i32 256, i32 4096, i32 2048, i32 512, i32 1024, i32 0 }, %struct.ic_task_bitfields { i32 65536, i32 1048576, i32 524288, i32 131072, i32 262144, i32 8 }], align 4
@__kstrtab_ipu_ic_dump = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_ic_dump = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_ic_dump = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_ic_dump to i32), ptr @__kstrtab_ipu_ic_dump, ptr @__kstrtabns_ipu_ic_dump }, section "___ksymtab_gpl+ipu_ic_dump", align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Unsupported resize (in_size > 4096)\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Unsupported resize (out_size > 1024)\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Unsupported downsize\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Warning! Overflow on resize coeff.\0A\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__ksymtab_ipu_ic_disable, ptr @__ksymtab_ipu_ic_dump, ptr @__ksymtab_ipu_ic_enable, ptr @__ksymtab_ipu_ic_get, ptr @__ksymtab_ipu_ic_put, ptr @__ksymtab_ipu_ic_task_disable, ptr @__ksymtab_ipu_ic_task_enable, ptr @__ksymtab_ipu_ic_task_graphics_init, ptr @__ksymtab_ipu_ic_task_idma_init, ptr @__ksymtab_ipu_ic_task_init], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipu_ic_task_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.ipu_ic, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ipu_ic_priv, ptr %3, i32 0, i32 2
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #7
  %6 = load ptr, ptr %2, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %9 = getelementptr inbounds %struct.ipu_ic, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %10, align 4
  %12 = or i32 %11, %8
  %13 = getelementptr inbounds %struct.ipu_ic, ptr %0, i32 0, i32 7
  %14 = load i8, ptr %13, align 1, !range !10
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.ic_task_bitfields, ptr %10, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = or i32 %18, %12
  br label %20

20:                                               ; preds = %16, %1
  %21 = phi i32 [ %19, %16 ], [ %12, %1 ]
  %22 = getelementptr inbounds %struct.ipu_ic, ptr %0, i32 0, i32 3, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.ipu_ic, ptr %0, i32 0, i32 5, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.ic_task_bitfields, ptr %10, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = or i32 %29, %21
  br label %31

31:                                               ; preds = %27, %20
  %32 = phi i32 [ %30, %27 ], [ %21, %20 ]
  %33 = getelementptr inbounds %struct.ipu_ic, ptr %0, i32 0, i32 6
  %34 = load i8, ptr %33, align 4, !range !10
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %50, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.ic_task_bitfields, ptr %10, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = or i32 %38, %32
  %40 = getelementptr inbounds %struct.ic_task_bitfields, ptr %10, i32 0, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = or i32 %39, %41
  %43 = getelementptr inbounds %struct.ipu_ic, ptr %0, i32 0, i32 4, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, %25
  br i1 %45, label %50, label %46

46:                                               ; preds = %36
  %47 = getelementptr inbounds %struct.ic_task_bitfields, ptr %10, i32 0, i32 4
  %48 = load i32, ptr %47, align 4
  %49 = or i32 %48, %42
  br label %50

50:                                               ; preds = %46, %36, %31
  %51 = phi i32 [ %49, %46 ], [ %42, %36 ], [ %32, %31 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %52 = load ptr, ptr %2, align 4
  %53 = load ptr, ptr %52, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %51) #7, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipu_ic_task_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.ipu_ic, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ipu_ic_priv, ptr %3, i32 0, i32 2
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #7
  %6 = load ptr, ptr %2, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %9 = getelementptr inbounds %struct.ipu_ic, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ic_task_bitfields, ptr %10, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = or i32 %13, %11
  %15 = getelementptr inbounds %struct.ic_task_bitfields, ptr %10, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = or i32 %14, %16
  %18 = getelementptr inbounds %struct.ic_task_bitfields, ptr %10, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = or i32 %17, %19
  %21 = getelementptr inbounds %struct.ic_task_bitfields, ptr %10, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = or i32 %20, %22
  %24 = xor i32 %23, -1
  %25 = and i32 %8, %24
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %26 = load ptr, ptr %2, align 4
  %27 = load ptr, ptr %26, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #7, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipu_ic_task_graphics_init(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2, i32 noundef %3, i1 noundef zeroext %4, i32 noundef %5) #0 {
  %7 = alloca %struct.ipu_ic_csc, align 4
  %8 = alloca %struct.ipu_ic_csc, align 4
  %9 = getelementptr inbounds %struct.ipu_ic, ptr %0, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %7) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(52) %7, i8 0, i32 52, i1 false), !annotation !13
  %11 = load i32, ptr %0, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %72, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.ipu_ic_priv, ptr %10, i32 0, i32 2
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #7
  %16 = load ptr, ptr %9, align 4
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %19 = getelementptr inbounds %struct.ipu_ic, ptr %0, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.ic_task_bitfields, ptr %20, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, %18
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %8) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i32 52, i1 false), !annotation !13
  %26 = call i32 @ipu_ic_calc_csc(ptr noundef nonnull %8, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 1, i32 noundef 1, i32 noundef 0) #7
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  call fastcc void @init_csc(ptr noundef %0, ptr noundef nonnull %8, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %8) #7
  br label %30

29:                                               ; preds = %25
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %8) #7
  br label %70

30:                                               ; preds = %28, %13
  %31 = getelementptr inbounds %struct.ipu_ic, ptr %0, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %31, ptr noundef align 4 dereferenceable(12) %1, i32 12, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef align 4 dereferenceable(12) %1, i32 12, i1 false)
  %32 = getelementptr inbounds %struct.ipu_ic_csc, ptr %7, i32 0, i32 1
  %33 = getelementptr inbounds %struct.ipu_ic, ptr %0, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %32, ptr noundef align 4 dereferenceable(12) %33, i32 12, i1 false)
  %34 = call i32 @__ipu_ic_calc_csc(ptr noundef nonnull %7) #7
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %70

36:                                               ; preds = %30
  call fastcc void @init_csc(ptr noundef %0, ptr noundef nonnull %7, i32 noundef 1)
  br i1 %2, label %37, label %54

37:                                               ; preds = %36
  %38 = or i32 %18, 268435456
  %39 = load ptr, ptr %9, align 4
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr i8, ptr %40, i32 16
  %42 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #7, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %43 = load ptr, ptr %19, align 4
  %44 = getelementptr inbounds %struct.ic_task_bitfields, ptr %43, i32 0, i32 5
  %45 = load i32, ptr %44, align 4
  %46 = shl i32 255, %45
  %47 = xor i32 %46, -1
  %48 = and i32 %42, %47
  %49 = shl i32 %3, %45
  %50 = or i32 %48, %49
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  call void @arm_heavy_mb() #7
  %51 = load ptr, ptr %9, align 4
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr i8, ptr %52, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %50) #7, !srcloc !12
  br label %56

54:                                               ; preds = %36
  %55 = and i32 %18, -268435457
  br label %56

56:                                               ; preds = %54, %37
  %57 = phi i32 [ %38, %37 ], [ %55, %54 ]
  br i1 %4, label %58, label %63

58:                                               ; preds = %56
  %59 = or i32 %57, 536870912
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  call void @arm_heavy_mb() #7
  %60 = load ptr, ptr %9, align 4
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr i8, ptr %61, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %5) #7, !srcloc !12
  br label %65

63:                                               ; preds = %56
  %64 = and i32 %57, -536870913
  br label %65

65:                                               ; preds = %63, %58
  %66 = phi i32 [ %59, %58 ], [ %64, %63 ]
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  call void @arm_heavy_mb() #7
  %67 = load ptr, ptr %9, align 4
  %68 = load ptr, ptr %67, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %66) #7, !srcloc !12
  %69 = getelementptr inbounds %struct.ipu_ic, ptr %0, i32 0, i32 6
  store i8 1, ptr %69, align 4
  br label %70

70:                                               ; preds = %65, %30, %29
  %71 = phi i32 [ %34, %30 ], [ 0, %65 ], [ %26, %29 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %15) #7
  br label %72

72:                                               ; preds = %70, %6
  %73 = phi i32 [ %71, %70 ], [ -22, %6 ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %7) #7
  ret i32 %73
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_ic_calc_csc(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @init_csc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ipu_ic, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ipu_ic_priv, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ipu_ic, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.ic_task_regoffs, ptr %9, i32 0, i32 1, i32 %2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr i8, ptr %7, i32 %11
  %13 = getelementptr inbounds %struct.ipu_ic_csc, ptr %1, i32 0, i32 2
  %14 = getelementptr inbounds %struct.ipu_ic_csc, ptr %1, i32 0, i32 2, i32 1
  %15 = load i16, ptr %14, align 2
  %16 = zext i16 %15 to i32
  %17 = shl i32 %16, 27
  %18 = load i16, ptr %13, align 2
  %19 = and i16 %18, 511
  %20 = zext i16 %19 to i32
  %21 = shl nuw nsw i32 %20, 18
  %22 = or i32 %21, %17
  %23 = getelementptr %struct.ipu_ic_csc, ptr %1, i32 0, i32 2, i32 0, i32 1
  %24 = getelementptr %struct.ipu_ic_csc, ptr %1, i32 0, i32 2, i32 0, i32 1, i32 1
  %25 = load i16, ptr %24, align 2
  %26 = and i16 %25, 511
  %27 = zext i16 %26 to i32
  %28 = shl nuw nsw i32 %27, 9
  %29 = or i32 %22, %28
  %30 = getelementptr %struct.ipu_ic_csc, ptr %1, i32 0, i32 2, i32 0, i32 2
  %31 = getelementptr %struct.ipu_ic_csc, ptr %1, i32 0, i32 2, i32 0, i32 2, i32 2
  %32 = load i16, ptr %31, align 2
  %33 = and i16 %32, 511
  %34 = zext i16 %33 to i32
  %35 = or i32 %29, %34
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %36 = getelementptr i32, ptr %12, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %35) #7, !srcloc !12
  %37 = load i16, ptr %14, align 2
  %38 = lshr i16 %37, 5
  %39 = and i16 %38, 255
  %40 = zext i16 %39 to i32
  %41 = getelementptr inbounds %struct.ipu_ic_csc, ptr %1, i32 0, i32 2, i32 2
  %42 = load i8, ptr %41, align 4
  %43 = and i8 %42, 3
  %44 = zext i8 %43 to i32
  %45 = shl nuw nsw i32 %44, 8
  %46 = or i32 %45, %40
  %47 = lshr i8 %42, 2
  %48 = and i8 %47, 1
  %49 = zext i8 %48 to i32
  %50 = shl nuw nsw i32 %49, 10
  %51 = or i32 %46, %50
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !15
  tail call void @arm_heavy_mb() #7
  %52 = getelementptr i32, ptr %36, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %51) #7, !srcloc !12
  %53 = getelementptr %struct.ipu_ic_csc, ptr %1, i32 0, i32 2, i32 1, i32 1
  %54 = load i16, ptr %53, align 2
  %55 = zext i16 %54 to i32
  %56 = shl i32 %55, 27
  %57 = getelementptr %struct.ipu_ic_csc, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 1
  %58 = load i16, ptr %57, align 2
  %59 = and i16 %58, 511
  %60 = zext i16 %59 to i32
  %61 = shl nuw nsw i32 %60, 18
  %62 = or i32 %61, %56
  %63 = load i16, ptr %23, align 2
  %64 = and i16 %63, 511
  %65 = zext i16 %64 to i32
  %66 = shl nuw nsw i32 %65, 9
  %67 = or i32 %62, %66
  %68 = load i16, ptr %30, align 2
  %69 = and i16 %68, 511
  %70 = zext i16 %69 to i32
  %71 = or i32 %67, %70
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  %72 = getelementptr i32, ptr %52, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %71) #7, !srcloc !12
  %73 = load i16, ptr %53, align 2
  %74 = lshr i16 %73, 5
  %75 = and i16 %74, 255
  %76 = zext i16 %75 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !17
  tail call void @arm_heavy_mb() #7
  %77 = getelementptr i32, ptr %72, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %76) #7, !srcloc !12
  %78 = getelementptr %struct.ipu_ic_csc, ptr %1, i32 0, i32 2, i32 1, i32 2
  %79 = load i16, ptr %78, align 2
  %80 = zext i16 %79 to i32
  %81 = shl i32 %80, 27
  %82 = getelementptr %struct.ipu_ic_csc, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 2
  %83 = load i16, ptr %82, align 2
  %84 = and i16 %83, 511
  %85 = zext i16 %84 to i32
  %86 = shl nuw nsw i32 %85, 18
  %87 = or i32 %86, %81
  %88 = getelementptr %struct.ipu_ic_csc, ptr %1, i32 0, i32 2, i32 0, i32 1, i32 2
  %89 = load i16, ptr %88, align 2
  %90 = and i16 %89, 511
  %91 = zext i16 %90 to i32
  %92 = shl nuw nsw i32 %91, 9
  %93 = or i32 %87, %92
  %94 = getelementptr %struct.ipu_ic_csc, ptr %1, i32 0, i32 2, i32 0, i32 2, i32 1
  %95 = load i16, ptr %94, align 2
  %96 = and i16 %95, 511
  %97 = zext i16 %96 to i32
  %98 = or i32 %93, %97
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !18
  tail call void @arm_heavy_mb() #7
  %99 = getelementptr i32, ptr %77, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %98) #7, !srcloc !12
  %100 = load i16, ptr %78, align 2
  %101 = lshr i16 %100, 5
  %102 = and i16 %101, 255
  %103 = zext i16 %102 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 %103) #7, !srcloc !12
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipu_ic_calc_csc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipu_ic_task_init_rsc(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.ipu_ic, ptr %0, i32 0, i32 9
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #7
  store i32 0, ptr %8, align 4, !annotation !13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #7
  store i32 0, ptr %9, align 4, !annotation !13
  %12 = icmp eq i32 %6, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %7
  %14 = call fastcc i32 @calc_resize_coeffs(ptr noundef %0, i32 noundef %3, i32 noundef %5, ptr noundef nonnull %9, ptr noundef nonnull %8)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %43

16:                                               ; preds = %13
  %17 = load i32, ptr %8, align 4
  %18 = load i32, ptr %9, align 4
  %19 = call fastcc i32 @calc_resize_coeffs(ptr noundef %0, i32 noundef %2, i32 noundef %4, ptr noundef nonnull %9, ptr noundef nonnull %8)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %43

21:                                               ; preds = %16
  %22 = shl i32 %17, 30
  %23 = shl i32 %18, 16
  %24 = load i32, ptr %8, align 4
  %25 = shl i32 %24, 14
  %26 = load i32, ptr %9, align 4
  %27 = or i32 %23, %22
  %28 = or i32 %27, %26
  %29 = or i32 %28, %25
  br label %30

30:                                               ; preds = %21, %7
  %31 = phi i32 [ %6, %7 ], [ %29, %21 ]
  %32 = getelementptr inbounds %struct.ipu_ic_priv, ptr %11, i32 0, i32 2
  %33 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %32) #7
  %34 = getelementptr inbounds %struct.ipu_ic, ptr %0, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = load i32, ptr %35, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %37 = load ptr, ptr %10, align 4
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr i8, ptr %38, i32 %36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %31) #7, !srcloc !12
  %40 = getelementptr inbounds %struct.ipu_ic, ptr %0, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %40, ptr noundef align 4 dereferenceable(12) %1, i32 12, i1 false)
  %41 = getelementptr inbounds %struct.ipu_ic, ptr %0, i32 0, i32 5
  %42 = getelementptr inbounds %struct.ipu_ic_csc, ptr %1, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %41, ptr noundef align 4 dereferenceable(12) %42, i32 12, i1 false)
  tail call fastcc void @init_csc(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %32, i32 noundef %33) #7
  br label %43

43:                                               ; preds = %30, %16, %13
  %44 = phi i32 [ 0, %30 ], [ %14, %13 ], [ %19, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @calc_resize_coeffs(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.ipu_ic, ptr %0, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ipu_ic_priv, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp ugt i32 %1, 4096
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.1) #8
  br label %45

13:                                               ; preds = %5
  %14 = icmp ugt i32 %2, 1024
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  %16 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.2) #8
  br label %45

17:                                               ; preds = %13
  %18 = shl nuw nsw i32 %2, 2
  %19 = icmp ult i32 %18, %1
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = shl nuw nsw i32 %2, 1
  br label %24

22:                                               ; preds = %17
  %23 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.3) #8
  br label %45

24:                                               ; preds = %34, %20
  %25 = phi i32 [ %35, %34 ], [ %1, %20 ]
  %26 = phi i32 [ %36, %34 ], [ 0, %20 ]
  %27 = icmp ugt i32 %25, 1024
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = icmp uge i32 %25, %21
  %30 = icmp ult i32 %26, 2
  %31 = select i1 %29, i1 %30, i1 false
  br i1 %31, label %34, label %37

32:                                               ; preds = %24
  %33 = icmp ult i32 %26, 2
  br i1 %33, label %34, label %37

34:                                               ; preds = %32, %28
  %35 = lshr i32 %25, 1
  %36 = add nuw nsw i32 %26, 1
  br label %24

37:                                               ; preds = %32, %28
  store i32 %26, ptr %4, align 4
  %38 = shl i32 %25, 13
  %39 = add i32 %38, -8192
  %40 = add i32 %2, -1
  %41 = udiv i32 %39, %40
  store i32 %41, ptr %3, align 4
  %42 = icmp ugt i32 %41, 16383
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.4) #8
  store i32 16383, ptr %3, align 4
  br label %45

45:                                               ; preds = %43, %37, %22, %15, %11
  %46 = phi i32 [ -22, %11 ], [ -22, %15 ], [ -22, %22 ], [ 0, %43 ], [ 0, %37 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipu_ic_task_init(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = tail call i32 @ipu_ic_task_init_rsc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef 0)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipu_ic_task_idma_init(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.ipu_ic, ptr %0, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = and i32 %5, 255
  %10 = tail call i32 asm "rbit $0, $1", "=r,r"(i32 %9) #9, !srcloc !20
  %11 = lshr i32 %10, 29
  switch i32 %4, label %12 [
    i32 16, label %16
    i32 8, label %16
  ]

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.ipu_ic_priv, ptr %8, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str) #8
  br label %132

16:                                               ; preds = %6, %6
  %17 = add i32 %2, -1
  %18 = add i32 %3, -1
  %19 = and i32 %11, 2
  %20 = getelementptr inbounds %struct.ipu_ic_priv, ptr %8, i32 0, i32 2
  %21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %20) #7
  %22 = load ptr, ptr %7, align 4
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 24
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %26 = load ptr, ptr %7, align 4
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 28
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %30 = load ptr, ptr %7, align 4
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i8, ptr %31, i32 32
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %34 = load i32, ptr %1, align 4
  switch i32 %34, label %131 [
    i32 22, label %35
    i32 11, label %48
    i32 47, label %54
    i32 12, label %58
    i32 20, label %64
    i32 45, label %75
    i32 21, label %79
    i32 46, label %92
    i32 14, label %96
    i32 15, label %102
    i32 5, label %108
  ]

35:                                               ; preds = %16
  %36 = icmp eq i32 %4, 16
  %37 = and i32 %25, -4194309
  %38 = select i1 %36, i32 4, i32 0
  %39 = or i32 %38, %37
  %40 = shl nuw nsw i32 %19, 21
  %41 = or i32 %39, %40
  %42 = and i32 %29, -1072693249
  %43 = shl i32 %18, 20
  %44 = or i32 %42, %43
  %45 = and i32 %33, -1072693249
  %46 = shl i32 %17, 20
  %47 = or i32 %45, %46
  br label %114

48:                                               ; preds = %16
  %49 = icmp eq i32 %4, 16
  br i1 %49, label %50, label %52

50:                                               ; preds = %48
  %51 = or i32 %25, 32
  br label %114

52:                                               ; preds = %48
  %53 = and i32 %25, -33
  br label %114

54:                                               ; preds = %16
  %55 = and i32 %25, -917505
  %56 = shl nuw nsw i32 %11, 17
  %57 = or i32 %55, %56
  br label %114

58:                                               ; preds = %16
  %59 = icmp eq i32 %4, 16
  br i1 %59, label %60, label %62

60:                                               ; preds = %58
  %61 = or i32 %25, 64
  br label %114

62:                                               ; preds = %58
  %63 = and i32 %25, -65
  br label %114

64:                                               ; preds = %16
  %65 = icmp eq i32 %4, 16
  %66 = and i32 %25, -1048578
  %67 = zext i1 %65 to i32
  %68 = or i32 %66, %67
  %69 = shl nuw nsw i32 %19, 19
  %70 = or i32 %68, %69
  %71 = and i32 %29, -1024
  %72 = or i32 %71, %18
  %73 = and i32 %33, -1024
  %74 = or i32 %73, %17
  br label %114

75:                                               ; preds = %16
  %76 = and i32 %25, -14337
  %77 = shl nuw nsw i32 %11, 11
  %78 = or i32 %76, %77
  br label %114

79:                                               ; preds = %16
  %80 = icmp eq i32 %4, 16
  %81 = and i32 %25, -2097155
  %82 = select i1 %80, i32 2, i32 0
  %83 = or i32 %82, %81
  %84 = shl nuw nsw i32 %19, 20
  %85 = or i32 %83, %84
  %86 = and i32 %29, -1047553
  %87 = shl i32 %18, 10
  %88 = or i32 %86, %87
  %89 = and i32 %33, -1047553
  %90 = shl i32 %17, 10
  %91 = or i32 %89, %90
  br label %114

92:                                               ; preds = %16
  %93 = and i32 %25, -114689
  %94 = shl nuw nsw i32 %11, 14
  %95 = or i32 %93, %94
  br label %114

96:                                               ; preds = %16
  %97 = icmp eq i32 %4, 16
  br i1 %97, label %98, label %100

98:                                               ; preds = %96
  %99 = or i32 %25, 8
  br label %114

100:                                              ; preds = %96
  %101 = and i32 %25, -9
  br label %114

102:                                              ; preds = %16
  %103 = icmp eq i32 %4, 16
  br i1 %103, label %104, label %106

104:                                              ; preds = %102
  %105 = or i32 %25, 16
  br label %114

106:                                              ; preds = %102
  %107 = and i32 %25, -17
  br label %114

108:                                              ; preds = %16
  %109 = icmp eq i32 %4, 16
  br i1 %109, label %110, label %112

110:                                              ; preds = %108
  %111 = or i32 %25, 128
  br label %114

112:                                              ; preds = %108
  %113 = and i32 %25, -129
  br label %114

114:                                              ; preds = %112, %110, %106, %104, %100, %98, %92, %79, %75, %64, %62, %60, %54, %52, %50, %35
  %115 = phi i32 [ %111, %110 ], [ %113, %112 ], [ %105, %104 ], [ %107, %106 ], [ %99, %98 ], [ %101, %100 ], [ %95, %92 ], [ %85, %79 ], [ %78, %75 ], [ %70, %64 ], [ %61, %60 ], [ %63, %62 ], [ %57, %54 ], [ %51, %50 ], [ %53, %52 ], [ %41, %35 ]
  %116 = phi i32 [ %29, %110 ], [ %29, %112 ], [ %29, %104 ], [ %29, %106 ], [ %29, %98 ], [ %29, %100 ], [ %29, %92 ], [ %88, %79 ], [ %29, %75 ], [ %72, %64 ], [ %29, %60 ], [ %29, %62 ], [ %29, %54 ], [ %29, %50 ], [ %29, %52 ], [ %44, %35 ]
  %117 = phi i32 [ %33, %110 ], [ %33, %112 ], [ %33, %104 ], [ %33, %106 ], [ %33, %98 ], [ %33, %100 ], [ %33, %92 ], [ %91, %79 ], [ %33, %75 ], [ %74, %64 ], [ %33, %60 ], [ %33, %62 ], [ %33, %54 ], [ %33, %50 ], [ %33, %52 ], [ %47, %35 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %118 = load ptr, ptr %7, align 4
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr i8, ptr %119, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 %115) #7, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %121 = load ptr, ptr %7, align 4
  %122 = load ptr, ptr %121, align 4
  %123 = getelementptr i8, ptr %122, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %123, i32 %116) #7, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %124 = load ptr, ptr %7, align 4
  %125 = load ptr, ptr %124, align 4
  %126 = getelementptr i8, ptr %125, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %126, i32 %117) #7, !srcloc !12
  %127 = and i32 %5, 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %114
  %130 = getelementptr inbounds %struct.ipu_ic, ptr %0, i32 0, i32 7
  store i8 1, ptr %130, align 1
  br label %131

131:                                              ; preds = %129, %114, %16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %21) #7
  br label %132

132:                                              ; preds = %131, %12
  %133 = phi i32 [ -22, %12 ], [ 0, %131 ]
  ret i32 %133
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipu_ic_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.ipu_ic, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ipu_ic_priv, ptr %3, i32 0, i32 2
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #7
  %6 = getelementptr inbounds %struct.ipu_ic_priv, ptr %3, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ipu_ic_priv, ptr %3, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @ipu_module_enable(ptr noundef %11, i32 noundef 4) #7
  %13 = load i32, ptr %6, align 4
  br label %14

14:                                               ; preds = %9, %1
  %15 = phi i32 [ %13, %9 ], [ %7, %1 ]
  %16 = add i32 %15, 1
  store i32 %16, ptr %6, align 4
  %17 = getelementptr inbounds %struct.ipu_ic, ptr %0, i32 0, i32 7
  %18 = load i8, ptr %17, align 1, !range !10
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %14
  %21 = load ptr, ptr %2, align 4
  %22 = getelementptr inbounds %struct.ipu_ic_priv, ptr %21, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.ipu_ic_priv, ptr %21, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 @ipu_module_enable(ptr noundef %27, i32 noundef 8) #7
  %29 = load i32, ptr %22, align 4
  br label %30

30:                                               ; preds = %25, %20
  %31 = phi i32 [ %29, %25 ], [ %23, %20 ]
  %32 = add i32 %31, 1
  store i32 %32, ptr %22, align 4
  br label %33

33:                                               ; preds = %30, %14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_module_enable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipu_ic_disable(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ipu_ic, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ipu_ic_priv, ptr %3, i32 0, i32 2
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #7
  %6 = getelementptr inbounds %struct.ipu_ic_priv, ptr %3, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, -1
  store i32 %8, ptr %6, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ipu_ic_priv, ptr %3, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @ipu_module_disable(ptr noundef %12, i32 noundef 4) #7
  %14 = load i32, ptr %6, align 4
  br label %15

15:                                               ; preds = %10, %1
  %16 = phi i32 [ %14, %10 ], [ %8, %1 ]
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 0, ptr %6, align 4
  br label %19

19:                                               ; preds = %18, %15
  %20 = getelementptr inbounds %struct.ipu_ic, ptr %0, i32 0, i32 7
  %21 = load i8, ptr %20, align 1, !range !10
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %2, align 4
  %25 = getelementptr inbounds %struct.ipu_ic_priv, ptr %24, i32 0, i32 5
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %23
  %29 = add i32 %26, -1
  store i32 %29, ptr %25, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.ipu_ic_priv, ptr %24, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 @ipu_module_disable(ptr noundef %33, i32 noundef 8) #7
  br label %35

35:                                               ; preds = %31, %28, %23, %19
  %36 = getelementptr inbounds %struct.ipu_ic, ptr %0, i32 0, i32 6
  store i8 0, ptr %36, align 4
  store i8 0, ptr %20, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_module_disable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ipu_ic_get(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = icmp ugt i32 %1, 2
  br i1 %3, label %16, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ipu_soc, ptr %0, i32 0, i32 20
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ipu_ic_priv, ptr %6, i32 0, i32 2
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #7
  %9 = getelementptr %struct.ipu_ic_priv, ptr %6, i32 0, i32 6, i32 %1, i32 8
  %10 = load i8, ptr %9, align 2, !range !10
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = getelementptr %struct.ipu_ic_priv, ptr %6, i32 0, i32 6, i32 %1
  store i8 1, ptr %9, align 2
  br label %14

14:                                               ; preds = %12, %4
  %15 = phi ptr [ %13, %12 ], [ inttoptr (i32 -16 to ptr), %4 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #7
  br label %16

16:                                               ; preds = %14, %2
  %17 = phi ptr [ %15, %14 ], [ inttoptr (i32 -22 to ptr), %2 ]
  ret ptr %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipu_ic_put(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ipu_ic, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ipu_ic_priv, ptr %3, i32 0, i32 2
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #7
  %6 = getelementptr inbounds %struct.ipu_ic, ptr %0, i32 0, i32 8
  store i8 0, ptr %6, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipu_ic_init(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 192, i32 noundef 3520) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.ipu_soc, ptr %0, i32 0, i32 20
  store ptr %5, ptr %8, align 4
  %9 = getelementptr inbounds %struct.ipu_ic_priv, ptr %5, i32 0, i32 2
  store i32 0, ptr %9, align 4
  %10 = tail call ptr @devm_ioremap(ptr noundef %1, i32 noundef %2, i32 noundef 4096) #7
  store ptr %10, ptr %5, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %30, label %12

12:                                               ; preds = %7
  %13 = tail call ptr @devm_ioremap(ptr noundef %1, i32 noundef %3, i32 noundef 65536) #7
  %14 = getelementptr inbounds %struct.ipu_ic_priv, ptr %5, i32 0, i32 1
  store ptr %13, ptr %14, align 4
  %15 = icmp eq ptr %13, null
  br i1 %15, label %30, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.ipu_ic_priv, ptr %5, i32 0, i32 3
  store ptr %0, ptr %17, align 4
  %18 = getelementptr %struct.ipu_ic_priv, ptr %5, i32 0, i32 6, i32 0
  store i32 0, ptr %18, align 4
  %19 = getelementptr %struct.ipu_ic_priv, ptr %5, i32 0, i32 6, i32 0, i32 9
  store ptr %5, ptr %19, align 4
  %20 = getelementptr %struct.ipu_ic_priv, ptr %5, i32 0, i32 6, i32 0, i32 1
  store ptr @ic_task_reg, ptr %20, align 4
  %21 = getelementptr %struct.ipu_ic_priv, ptr %5, i32 0, i32 6, i32 0, i32 2
  store ptr @ic_task_bit, ptr %21, align 4
  %22 = getelementptr %struct.ipu_ic_priv, ptr %5, i32 0, i32 6, i32 1
  store i32 1, ptr %22, align 4
  %23 = getelementptr %struct.ipu_ic_priv, ptr %5, i32 0, i32 6, i32 1, i32 9
  store ptr %5, ptr %23, align 4
  %24 = getelementptr %struct.ipu_ic_priv, ptr %5, i32 0, i32 6, i32 1, i32 1
  store ptr getelementptr inbounds ([3 x %struct.ic_task_regoffs], ptr @ic_task_reg, i32 0, i32 1), ptr %24, align 4
  %25 = getelementptr %struct.ipu_ic_priv, ptr %5, i32 0, i32 6, i32 1, i32 2
  store ptr getelementptr inbounds ([3 x %struct.ic_task_bitfields], ptr @ic_task_bit, i32 0, i32 1), ptr %25, align 4
  %26 = getelementptr %struct.ipu_ic_priv, ptr %5, i32 0, i32 6, i32 2
  store i32 2, ptr %26, align 4
  %27 = getelementptr %struct.ipu_ic_priv, ptr %5, i32 0, i32 6, i32 2, i32 9
  store ptr %5, ptr %27, align 4
  %28 = getelementptr %struct.ipu_ic_priv, ptr %5, i32 0, i32 6, i32 2, i32 1
  store ptr getelementptr inbounds ([3 x %struct.ic_task_regoffs], ptr @ic_task_reg, i32 0, i32 2), ptr %28, align 4
  %29 = getelementptr %struct.ipu_ic_priv, ptr %5, i32 0, i32 6, i32 2, i32 2
  store ptr getelementptr inbounds ([3 x %struct.ic_task_bitfields], ptr @ic_task_bit, i32 0, i32 2), ptr %29, align 4
  br label %30

30:                                               ; preds = %16, %12, %7, %4
  %31 = phi i32 [ -12, %4 ], [ -12, %7 ], [ -12, %12 ], [ 0, %16 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @ipu_ic_exit(ptr nocapture noundef %0) local_unnamed_addr #6 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @ipu_ic_dump(ptr nocapture noundef %0) #6 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 1420134}
!9 = !{i64 2154765049}
!10 = !{i8 0, i8 2}
!11 = !{i64 2154765411}
!12 = !{i64 1419716}
!13 = !{!"auto-init"}
!14 = !{i64 2154765726}
!15 = !{i64 2154766024}
!16 = !{i64 2154766322}
!17 = !{i64 2154766620}
!18 = !{i64 2154766918}
!19 = !{i64 2154767216}
!20 = !{i64 1410189}
