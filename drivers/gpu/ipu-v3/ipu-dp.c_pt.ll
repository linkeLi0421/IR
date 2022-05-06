; ModuleID = '/llk/IR/drivers/gpu/ipu-v3/ipu-dp.c_pt.bc'
source_filename = "../drivers/gpu/ipu-v3/ipu-dp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_dp_set_global_alpha:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_dp_set_global_alpha\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_dp_set_global_alpha:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_dp_set_window_pos:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_dp_set_window_pos\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_dp_set_window_pos:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_dp_setup_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_dp_setup_channel\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_dp_setup_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_dp_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_dp_enable\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_dp_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_dp_enable_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_dp_enable_channel\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_dp_enable_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_dp_disable_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_dp_disable_channel\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_dp_disable_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_dp_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_dp_disable\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_dp_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_dp_get:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_dp_get\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_dp_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_dp_put:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_dp_put\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_dp_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.ipu_dp = type { i32, i8, i8, i32 }
%struct.ipu_flow = type { %struct.ipu_dp, %struct.ipu_dp, i32, ptr, ptr }
%struct.ipu_dp_priv = type { ptr, ptr, ptr, [3 x %struct.ipu_flow], %struct.mutex, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.ipu_soc = type { ptr, ptr, i32, %struct.spinlock, %struct.mutex, %struct.list_head, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, [2 x ptr], [2 x ptr], ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }

@__kstrtab_ipu_dp_set_global_alpha = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_dp_set_global_alpha = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_dp_set_global_alpha = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_dp_set_global_alpha to i32), ptr @__kstrtab_ipu_dp_set_global_alpha, ptr @__kstrtabns_ipu_dp_set_global_alpha }, section "___ksymtab_gpl+ipu_dp_set_global_alpha", align 4
@__kstrtab_ipu_dp_set_window_pos = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_dp_set_window_pos = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_dp_set_window_pos = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_dp_set_window_pos to i32), ptr @__kstrtab_ipu_dp_set_window_pos, ptr @__kstrtabns_ipu_dp_set_window_pos }, section "___ksymtab_gpl+ipu_dp_set_window_pos", align 4
@__kstrtab_ipu_dp_setup_channel = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_dp_setup_channel = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_dp_setup_channel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_dp_setup_channel to i32), ptr @__kstrtab_ipu_dp_setup_channel, ptr @__kstrtabns_ipu_dp_setup_channel }, section "___ksymtab_gpl+ipu_dp_setup_channel", align 4
@__kstrtab_ipu_dp_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_dp_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_dp_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_dp_enable to i32), ptr @__kstrtab_ipu_dp_enable, ptr @__kstrtabns_ipu_dp_enable }, section "___ksymtab_gpl+ipu_dp_enable", align 4
@__kstrtab_ipu_dp_enable_channel = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_dp_enable_channel = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_dp_enable_channel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_dp_enable_channel to i32), ptr @__kstrtab_ipu_dp_enable_channel, ptr @__kstrtabns_ipu_dp_enable_channel }, section "___ksymtab_gpl+ipu_dp_enable_channel", align 4
@__kstrtab_ipu_dp_disable_channel = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_dp_disable_channel = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_dp_disable_channel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_dp_disable_channel to i32), ptr @__kstrtab_ipu_dp_disable_channel, ptr @__kstrtabns_ipu_dp_disable_channel }, section "___ksymtab_gpl+ipu_dp_disable_channel", align 4
@__kstrtab_ipu_dp_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_dp_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_dp_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_dp_disable to i32), ptr @__kstrtab_ipu_dp_disable, ptr @__kstrtabns_ipu_dp_disable }, section "___ksymtab_gpl+ipu_dp_disable", align 4
@__kstrtab_ipu_dp_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_dp_get = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_dp_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_dp_get to i32), ptr @__kstrtab_ipu_dp_get, ptr @__kstrtabns_ipu_dp_get }, section "___ksymtab_gpl+ipu_dp_get", align 4
@__kstrtab_ipu_dp_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_dp_put = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_dp_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_dp_put to i32), ptr @__kstrtab_ipu_dp_put, ptr @__kstrtabns_ipu_dp_put }, section "___ksymtab_gpl+ipu_dp_put", align 4
@ipu_dp_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [13 x i8] c"&priv->mutex\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab_ipu_dp_disable, ptr @__ksymtab_ipu_dp_disable_channel, ptr @__ksymtab_ipu_dp_enable, ptr @__ksymtab_ipu_dp_enable_channel, ptr @__ksymtab_ipu_dp_get, ptr @__ksymtab_ipu_dp_put, ptr @__ksymtab_ipu_dp_set_global_alpha, ptr @__ksymtab_ipu_dp_set_window_pos, ptr @__ksymtab_ipu_dp_setup_channel], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipu_dp_set_global_alpha(ptr nocapture noundef readonly %0, i1 noundef zeroext %1, i8 noundef zeroext %2, i1 noundef zeroext %3) #0 {
  %5 = getelementptr inbounds %struct.ipu_dp, ptr %0, i32 0, i32 2
  %6 = load i8, ptr %5, align 1, !range !8
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %7, i32 -12, i32 0
  %9 = getelementptr i8, ptr %0, i32 %8
  %10 = getelementptr inbounds %struct.ipu_flow, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ipu_dp_priv, ptr %11, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %12) #5
  %13 = getelementptr inbounds %struct.ipu_flow, ptr %9, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %16 = and i32 %15, -3
  %17 = select i1 %3, i32 0, i32 2
  %18 = or i32 %16, %17
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  %19 = load ptr, ptr %13, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %18) #5, !srcloc !12
  %20 = load ptr, ptr %13, align 4
  br i1 %1, label %21, label %34

21:                                               ; preds = %4
  %22 = getelementptr i8, ptr %20, i32 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !13
  %24 = and i32 %23, 16777215
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %25 = zext i8 %2 to i32
  %26 = shl nuw i32 %25, 24
  %27 = or i32 %24, %26
  %28 = load ptr, ptr %13, align 4
  %29 = getelementptr i8, ptr %28, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #5, !srcloc !12
  %30 = load ptr, ptr %13, align 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !16
  tail call void @arm_heavy_mb() #5
  %32 = or i32 %31, 4
  %33 = load ptr, ptr %13, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %32) #5, !srcloc !12
  br label %38

34:                                               ; preds = %4
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !18
  tail call void @arm_heavy_mb() #5
  %36 = and i32 %35, -5
  %37 = load ptr, ptr %13, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %36) #5, !srcloc !12
  br label %38

38:                                               ; preds = %34, %21
  %39 = load ptr, ptr %11, align 4
  tail call void @ipu_srm_dp_update(ptr noundef %39, i1 noundef zeroext true) #5
  tail call void @mutex_unlock(ptr noundef %12) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_srm_dp_update(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipu_dp_set_window_pos(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i16 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.ipu_dp, ptr %0, i32 0, i32 2
  %5 = load i8, ptr %4, align 1, !range !8
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %6, i32 -12, i32 0
  %8 = getelementptr i8, ptr %0, i32 %7
  %9 = getelementptr inbounds %struct.ipu_flow, ptr %8, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !19
  tail call void @arm_heavy_mb() #5
  %11 = zext i16 %1 to i32
  %12 = shl nuw i32 %11, 16
  %13 = zext i16 %2 to i32
  %14 = or i32 %12, %13
  %15 = getelementptr inbounds %struct.ipu_flow, ptr %8, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %14) #5, !srcloc !12
  %18 = load ptr, ptr %10, align 4
  tail call void @ipu_srm_dp_update(ptr noundef %18, i1 noundef zeroext true) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipu_dp_setup_channel(ptr noundef %0, i32 noundef %1, i32 %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.ipu_dp, ptr %0, i32 0, i32 2
  %7 = load i8, ptr %6, align 1, !range !8
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %8, i32 -12, i32 0
  %10 = getelementptr i8, ptr %0, i32 %9
  %11 = getelementptr inbounds %struct.ipu_flow, ptr %10, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ipu_dp_priv, ptr %12, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %13) #5
  %14 = getelementptr inbounds %struct.ipu_dp, ptr %0, i32 0, i32 3
  store i32 %3, ptr %14, align 4
  %15 = load i8, ptr %6, align 1, !range !8
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.ipu_flow, ptr %10, i32 0, i32 2
  store i32 %4, ptr %18, align 4
  br label %19

19:                                               ; preds = %17, %5
  %20 = getelementptr inbounds %struct.ipu_dp, ptr %10, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.ipu_flow, ptr %10, i32 0, i32 1, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.ipu_flow, ptr %10, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  tail call fastcc void @ipu_dp_csc_init(ptr noundef %10, i32 noundef %1, i32 noundef %21, i32 noundef %27, i32 noundef 256)
  br label %37

28:                                               ; preds = %19
  %29 = icmp eq i32 %21, 2
  %30 = getelementptr inbounds %struct.ipu_flow, ptr %10, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  br i1 %29, label %34, label %32

32:                                               ; preds = %28
  %33 = icmp eq i32 %21, %31
  br i1 %33, label %34, label %36

34:                                               ; preds = %32, %28
  %35 = phi i32 [ %21, %32 ], [ %31, %28 ]
  tail call fastcc void @ipu_dp_csc_init(ptr noundef %10, i32 noundef %1, i32 noundef %23, i32 noundef %35, i32 noundef 512)
  br label %37

36:                                               ; preds = %32
  tail call fastcc void @ipu_dp_csc_init(ptr noundef %10, i32 noundef %1, i32 noundef %21, i32 noundef %31, i32 noundef 768)
  br label %37

37:                                               ; preds = %36, %34, %25
  %38 = load ptr, ptr %12, align 4
  tail call void @ipu_srm_dp_update(ptr noundef %38, i1 noundef zeroext true) #5
  tail call void @mutex_unlock(ptr noundef %13) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ipu_dp_csc_init(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.ipu_flow, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !20
  %9 = and i32 %8, -769
  %10 = icmp eq i32 %2, %3
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !21
  tail call void @arm_heavy_mb() #5
  %12 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %9) #5, !srcloc !12
  br label %57

13:                                               ; preds = %5
  %14 = icmp eq i32 %2, 0
  %15 = icmp eq i32 %3, 1
  %16 = and i1 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %13
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %18 = load ptr, ptr %6, align 4
  %19 = getelementptr i8, ptr %18, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 19726489) #5, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !23
  tail call void @arm_heavy_mb() #5
  %20 = load ptr, ptr %6, align 4
  %21 = getelementptr i8, ptr %20, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 61407290) #5, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %22 = load ptr, ptr %6, align 4
  %23 = getelementptr i8, ptr %22, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 16778070) #5, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !25
  tail call void @arm_heavy_mb() #5
  %24 = load ptr, ptr %6, align 4
  %25 = getelementptr i8, ptr %24, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 53018880) #5, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %26 = load ptr, ptr %6, align 4
  %27 = getelementptr i8, ptr %26, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 -2147482666) #5, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %28 = load ptr, ptr %6, align 4
  %29 = getelementptr i8, ptr %28, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 -2113895936) #5, !srcloc !12
  br label %54

30:                                               ; preds = %13
  %31 = icmp eq i32 %1, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  %32 = load ptr, ptr %6, align 4
  %33 = getelementptr i8, ptr %32, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 149) #5
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  %34 = load ptr, ptr %6, align 4
  %35 = getelementptr i8, ptr %34, i32 72
  br i1 %31, label %36, label %45

36:                                               ; preds = %30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 9765093) #5, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !28
  tail call void @arm_heavy_mb() #5
  %37 = load ptr, ptr %6, align 4
  %38 = getelementptr i8, ptr %37, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 62653413) #5, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !29
  tail call void @arm_heavy_mb() #5
  %39 = load ptr, ptr %6, align 4
  %40 = getelementptr i8, ptr %39, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 17694869) #5, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %41 = load ptr, ptr %6, align 4
  %42 = getelementptr i8, ptr %41, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 2114977792) #5, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  %43 = load ptr, ptr %6, align 4
  %44 = getelementptr i8, ptr %43, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 2109620378) #5, !srcloc !12
  br label %54

45:                                               ; preds = %30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 9765068) #5, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  %46 = load ptr, ptr %6, align 4
  %47 = getelementptr i8, ptr %46, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 60294094) #5, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !33
  tail call void @arm_heavy_mb() #5
  %48 = load ptr, ptr %6, align 4
  %49 = getelementptr i8, ptr %48, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 16711829) #5, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !34
  tail call void @arm_heavy_mb() #5
  %50 = load ptr, ptr %6, align 4
  %51 = getelementptr i8, ptr %50, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 2118254592) #5, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !35
  tail call void @arm_heavy_mb() #5
  %52 = load ptr, ptr %6, align 4
  %53 = getelementptr i8, ptr %52, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 2111193354) #5, !srcloc !12
  br label %54

54:                                               ; preds = %45, %36, %17
  %55 = or i32 %9, %4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !36
  tail call void @arm_heavy_mb() #5
  %56 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %55) #5, !srcloc !12
  br label %57

57:                                               ; preds = %54, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipu_dp_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.ipu_soc, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ipu_dp_priv, ptr %3, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %4) #5
  %5 = getelementptr inbounds %struct.ipu_dp_priv, ptr %3, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 4
  %10 = tail call i32 @ipu_module_enable(ptr noundef %9, i32 noundef 32) #5
  %11 = load i32, ptr %5, align 4
  br label %12

12:                                               ; preds = %8, %1
  %13 = phi i32 [ %11, %8 ], [ %6, %1 ]
  %14 = add i32 %13, 1
  store i32 %14, ptr %5, align 4
  tail call void @mutex_unlock(ptr noundef %4) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_module_enable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipu_dp_enable_channel(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.ipu_dp, ptr %0, i32 0, i32 2
  %3 = load i8, ptr %2, align 1, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ipu_flow, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ipu_dp_priv, ptr %7, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %8) #5
  %9 = getelementptr inbounds %struct.ipu_flow, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !37
  %12 = or i32 %11, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %13 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %12) #5, !srcloc !12
  %14 = load ptr, ptr %7, align 4
  tail call void @ipu_srm_dp_update(ptr noundef %14, i1 noundef zeroext true) #5
  tail call void @mutex_unlock(ptr noundef %8) #5
  br label %15

15:                                               ; preds = %5, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipu_dp_disable_channel(ptr nocapture noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.ipu_dp, ptr %0, i32 0, i32 2
  %4 = load i8, ptr %3, align 1, !range !8
  %5 = icmp eq i8 %4, 0
  %6 = select i1 %5, i32 -12, i32 0
  %7 = getelementptr i8, ptr %0, i32 %6
  %8 = getelementptr inbounds %struct.ipu_flow, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ipu_dp, ptr %0, i32 0, i32 3
  store i32 2, ptr %10, align 4
  br i1 %5, label %27, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.ipu_dp_priv, ptr %9, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %12) #5
  %13 = getelementptr inbounds %struct.ipu_flow, ptr %7, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !39
  %16 = and i32 %15, 768
  %17 = and i32 %15, -769
  switch i32 %16, label %20 [
    i32 512, label %18
    i32 256, label %18
  ]

18:                                               ; preds = %11, %11
  %19 = or i32 %17, 512
  br label %20

20:                                               ; preds = %18, %11
  %21 = phi i32 [ %19, %18 ], [ %17, %11 ]
  %22 = and i32 %21, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !40
  tail call void @arm_heavy_mb() #5
  %23 = load ptr, ptr %13, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %22) #5, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !41
  tail call void @arm_heavy_mb() #5
  %24 = load ptr, ptr %13, align 4
  %25 = getelementptr i8, ptr %24, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 0) #5, !srcloc !12
  %26 = load ptr, ptr %9, align 4
  tail call void @ipu_srm_dp_update(ptr noundef %26, i1 noundef zeroext %1) #5
  tail call void @mutex_unlock(ptr noundef %12) #5
  br label %27

27:                                               ; preds = %20, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipu_dp_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.ipu_soc, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ipu_dp_priv, ptr %3, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %4) #5
  %5 = getelementptr inbounds %struct.ipu_dp_priv, ptr %3, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, -1
  store i32 %7, ptr %5, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load ptr, ptr %3, align 4
  %11 = tail call i32 @ipu_module_disable(ptr noundef %10, i32 noundef 32) #5
  %12 = load i32, ptr %5, align 4
  br label %13

13:                                               ; preds = %9, %1
  %14 = phi i32 [ %12, %9 ], [ %7, %1 ]
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 0, ptr %5, align 4
  br label %17

17:                                               ; preds = %16, %13
  tail call void @mutex_unlock(ptr noundef %4) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_module_disable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local ptr @ipu_dp_get(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = icmp ugt i32 %1, 5
  br i1 %3, label %17, label %4

4:                                                ; preds = %2
  %5 = lshr i32 %1, 1
  %6 = getelementptr inbounds %struct.ipu_soc, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = and i32 %1, 1
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr %struct.ipu_dp_priv, ptr %7, i32 0, i32 3, i32 %5
  %11 = getelementptr %struct.ipu_dp_priv, ptr %7, i32 0, i32 3, i32 %5, i32 1
  %12 = select i1 %9, ptr %11, ptr %10
  %13 = getelementptr inbounds %struct.ipu_dp, ptr %12, i32 0, i32 1
  %14 = load i8, ptr %13, align 4, !range !8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i8 1, ptr %13, align 4
  br label %17

17:                                               ; preds = %16, %4, %2
  %18 = phi ptr [ %12, %16 ], [ inttoptr (i32 -22 to ptr), %2 ], [ inttoptr (i32 -16 to ptr), %4 ]
  ret ptr %18
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ipu_dp_put(ptr nocapture noundef writeonly %0) #3 {
  %2 = getelementptr inbounds %struct.ipu_dp, ptr %0, i32 0, i32 1
  store i8 0, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipu_dp_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 144, i32 noundef 3520) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %32, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ipu_dp_priv, ptr %4, i32 0, i32 1
  store ptr %1, ptr %7, align 4
  store ptr %0, ptr %4, align 4
  %8 = getelementptr inbounds %struct.ipu_soc, ptr %0, i32 0, i32 16
  store ptr %4, ptr %8, align 4
  %9 = tail call ptr @devm_ioremap(ptr noundef %1, i32 noundef %2, i32 noundef 4096) #5
  %10 = getelementptr inbounds %struct.ipu_dp_priv, ptr %4, i32 0, i32 2
  store ptr %9, ptr %10, align 4
  %11 = icmp eq ptr %9, null
  br i1 %11, label %32, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.ipu_dp_priv, ptr %4, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %13, ptr noundef nonnull @.str, ptr noundef nonnull @ipu_dp_init.__key) #5
  %14 = getelementptr %struct.ipu_dp_priv, ptr %4, i32 0, i32 3, i32 0, i32 1, i32 3
  store i32 2, ptr %14, align 4
  %15 = getelementptr %struct.ipu_dp_priv, ptr %4, i32 0, i32 3, i32 0, i32 0, i32 3
  store i32 2, ptr %15, align 4
  %16 = getelementptr %struct.ipu_dp_priv, ptr %4, i32 0, i32 3, i32 0, i32 0, i32 2
  store i8 1, ptr %16, align 1
  %17 = load ptr, ptr %10, align 4
  %18 = getelementptr %struct.ipu_dp_priv, ptr %4, i32 0, i32 3, i32 0, i32 3
  store ptr %17, ptr %18, align 4
  %19 = getelementptr %struct.ipu_dp_priv, ptr %4, i32 0, i32 3, i32 0, i32 4
  store ptr %4, ptr %19, align 4
  %20 = getelementptr %struct.ipu_dp_priv, ptr %4, i32 0, i32 3, i32 1, i32 1, i32 3
  store i32 2, ptr %20, align 4
  %21 = getelementptr %struct.ipu_dp_priv, ptr %4, i32 0, i32 3, i32 1, i32 0, i32 3
  store i32 2, ptr %21, align 4
  %22 = getelementptr %struct.ipu_dp_priv, ptr %4, i32 0, i32 3, i32 1, i32 0, i32 2
  store i8 1, ptr %22, align 1
  %23 = getelementptr i8, ptr %17, i32 96
  %24 = getelementptr %struct.ipu_dp_priv, ptr %4, i32 0, i32 3, i32 1, i32 3
  store ptr %23, ptr %24, align 4
  %25 = getelementptr %struct.ipu_dp_priv, ptr %4, i32 0, i32 3, i32 1, i32 4
  store ptr %4, ptr %25, align 4
  %26 = getelementptr %struct.ipu_dp_priv, ptr %4, i32 0, i32 3, i32 2, i32 1, i32 3
  store i32 2, ptr %26, align 4
  %27 = getelementptr %struct.ipu_dp_priv, ptr %4, i32 0, i32 3, i32 2, i32 0, i32 3
  store i32 2, ptr %27, align 4
  %28 = getelementptr %struct.ipu_dp_priv, ptr %4, i32 0, i32 3, i32 2, i32 0, i32 2
  store i8 1, ptr %28, align 1
  %29 = getelementptr i8, ptr %17, i32 188
  %30 = getelementptr %struct.ipu_dp_priv, ptr %4, i32 0, i32 3, i32 2, i32 3
  store ptr %29, ptr %30, align 4
  %31 = getelementptr %struct.ipu_dp_priv, ptr %4, i32 0, i32 3, i32 2, i32 4
  store ptr %4, ptr %31, align 4
  br label %32

32:                                               ; preds = %12, %6, %3
  %33 = phi i32 [ -12, %3 ], [ -12, %6 ], [ 0, %12 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @ipu_dp_exit(ptr nocapture noundef %0) local_unnamed_addr #4 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i8 0, i8 2}
!9 = !{i64 953762}
!10 = !{i64 2154753287}
!11 = !{i64 2154753493}
!12 = !{i64 953344}
!13 = !{i64 2154753968}
!14 = !{i64 2154754184}
!15 = !{i64 2154754694}
!16 = !{i64 2154754902}
!17 = !{i64 2154755387}
!18 = !{i64 2154755597}
!19 = !{i64 2154757364}
!20 = !{i64 2154759223}
!21 = !{i64 2154759420}
!22 = !{i64 2154759760}
!23 = !{i64 2154760139}
!24 = !{i64 2154760518}
!25 = !{i64 2154760897}
!26 = !{i64 2154761289}
!27 = !{i64 2154761718}
!28 = !{i64 2154762903}
!29 = !{i64 2154763282}
!30 = !{i64 2154763674}
!31 = !{i64 2154764104}
!32 = !{i64 2154765291}
!33 = !{i64 2154765670}
!34 = !{i64 2154766062}
!35 = !{i64 2154766492}
!36 = !{i64 2154766897}
!37 = !{i64 2154769903}
!38 = !{i64 2154770100}
!39 = !{i64 2154771920}
!40 = !{i64 2154772162}
!41 = !{i64 2154772482}
