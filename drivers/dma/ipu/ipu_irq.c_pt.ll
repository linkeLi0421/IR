; ModuleID = '/llk/IR/drivers/dma/ipu/ipu_irq.c_pt.bc'
source_filename = "../drivers/dma/ipu/ipu_irq.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.ipu_irq_map = type { i32, i32, ptr, ptr }
%struct.ipu_irq_bank = type { i32, i32, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.ipu = type { ptr, ptr, i32, i32, i32, i32, %struct.spinlock, ptr, ptr, %struct.idmac, [32 x %struct.idmac_channel], %struct.tasklet_struct }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.idmac = type { %struct.dma_device }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.idmac_channel = type { %struct.dma_chan, i32, %union.ipu_channel_param, i32, i32, ptr, i32, ptr, [2 x ptr], %struct.list_head, %struct.list_head, %struct.spinlock, %struct.mutex, i8, i32, i32, [16 x i8] }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%union.ipu_channel_param = type { %struct.idmac_video_param }
%struct.idmac_video_param = type { i16, i16, i32, i16, i16, i32, i16, i8, i8, i8, i32, i16, i16 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.64, i32 }
%union.anon.64 = type { ptr }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [1 x i32] }

@bank_lock = internal global %struct.raw_spinlock zeroinitializer, align 4
@map_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @map_lock, i64 12), ptr getelementptr (i8, ptr @map_lock, i64 12) } }, align 4
@.str = private unnamed_addr constant [43 x i8] c"\013IPU: Source %u already mapped to IRQ %u\0A\00", align 1
@irq_map = internal global [4 x %struct.ipu_irq_map] zeroinitializer, align 4
@irq_bank = internal global [5 x %struct.ipu_irq_bank] [%struct.ipu_irq_bank { i32 40, i32 60, ptr null }, %struct.ipu_irq_bank { i32 44, i32 64, ptr null }, %struct.ipu_irq_bank { i32 48, i32 68, ptr null }, %struct.ipu_irq_bank { i32 52, i32 72, ptr null }, %struct.ipu_irq_bank { i32 56, i32 76, ptr null }], align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"\013IPU: couldn't map source %u: %d\0A\00", align 1
@ipu_irq_chip = internal global %struct.irq_chip { ptr null, ptr @.str.2, ptr null, ptr null, ptr null, ptr null, ptr @ipu_irq_ack, ptr @ipu_irq_mask, ptr null, ptr @ipu_irq_unmask, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"ipu_irq\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"\013IPU: %s(%u) - unmapped!\0A\00", align 1
@__func__.ipu_irq_ack = private unnamed_addr constant [12 x i8] c"ipu_irq_ack\00", align 1
@__func__.ipu_irq_mask = private unnamed_addr constant [13 x i8] c"ipu_irq_mask\00", align 1
@__func__.ipu_irq_unmask = private unnamed_addr constant [15 x i8] c"ipu_irq_unmask\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"\013IPU: Interrupt on unmapped source %u bank %d\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @ipu_irq_status(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @irq_get_irq_data(i32 noundef %0) #5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.irq_data, ptr %2, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  br label %7

7:                                                ; preds = %4, %1
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @bank_lock) #5
  %10 = getelementptr inbounds %struct.ipu_irq_map, ptr %8, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %27, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.ipu_irq_bank, ptr %11, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ipu_irq_bank, ptr %11, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = load ptr, ptr %15, align 4
  %19 = getelementptr i8, ptr %18, i32 %17
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #5, !srcloc !8
  %21 = getelementptr inbounds %struct.ipu_irq_map, ptr %8, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 31
  %24 = shl nuw i32 1, %23
  %25 = and i32 %24, %20
  %26 = icmp ne i32 %25, 0
  br label %27

27:                                               ; preds = %13, %7
  %28 = phi i1 [ false, %7 ], [ %26, %13 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @bank_lock, i32 noundef %9) #5
  ret i1 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipu_irq_map(i32 noundef %0) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @map_lock) #5
  %2 = load i32, ptr getelementptr inbounds ([4 x %struct.ipu_irq_map], ptr @irq_map, i32 0, i32 0, i32 1), align 4
  %3 = icmp eq i32 %2, %0
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr getelementptr inbounds ([4 x %struct.ipu_irq_map], ptr @irq_map, i32 0, i32 1, i32 1), align 4
  %6 = icmp eq i32 %5, %0
  br i1 %6, label %13, label %7

7:                                                ; preds = %4
  %8 = load i32, ptr getelementptr inbounds ([4 x %struct.ipu_irq_map], ptr @irq_map, i32 0, i32 2, i32 1), align 4
  %9 = icmp eq i32 %8, %0
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = load i32, ptr getelementptr inbounds ([4 x %struct.ipu_irq_map], ptr @irq_map, i32 0, i32 3, i32 1), align 4
  %12 = icmp eq i32 %11, %0
  br i1 %12, label %13, label %17

13:                                               ; preds = %10, %7, %4, %1
  %14 = phi i32 [ 0, %1 ], [ 1, %4 ], [ 2, %7 ], [ 3, %10 ]
  %15 = getelementptr %struct.ipu_irq_map, ptr @irq_map, i32 %14
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %13, %10
  %18 = icmp slt i32 %2, 0
  br i1 %18, label %33, label %22

19:                                               ; preds = %13
  %20 = load i32, ptr %15, align 4
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %0, i32 noundef %20) #6
  br label %31

22:                                               ; preds = %17
  %23 = load i32, ptr getelementptr inbounds ([4 x %struct.ipu_irq_map], ptr @irq_map, i32 0, i32 1, i32 1), align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %22
  %26 = load i32, ptr getelementptr inbounds ([4 x %struct.ipu_irq_map], ptr @irq_map, i32 0, i32 2, i32 1), align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  %29 = load i32, ptr getelementptr inbounds ([4 x %struct.ipu_irq_map], ptr @irq_map, i32 0, i32 3, i32 1), align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %28, %19
  %32 = phi i32 [ -16, %19 ], [ -12, %28 ]
  tail call void @mutex_unlock(ptr noundef nonnull @map_lock) #5
  br label %43

33:                                               ; preds = %28, %25, %22, %17
  %34 = phi i32 [ 0, %17 ], [ 1, %22 ], [ 2, %25 ], [ 3, %28 ]
  %35 = phi ptr [ getelementptr inbounds ([4 x %struct.ipu_irq_map], ptr @irq_map, i32 0, i32 0, i32 1), %17 ], [ getelementptr inbounds ([4 x %struct.ipu_irq_map], ptr @irq_map, i32 0, i32 1, i32 1), %22 ], [ getelementptr inbounds ([4 x %struct.ipu_irq_map], ptr @irq_map, i32 0, i32 2, i32 1), %25 ], [ getelementptr inbounds ([4 x %struct.ipu_irq_map], ptr @irq_map, i32 0, i32 3, i32 1), %28 ]
  %36 = getelementptr [4 x %struct.ipu_irq_map], ptr @irq_map, i32 0, i32 %34
  %37 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @bank_lock) #5
  store i32 %0, ptr %35, align 4
  %38 = lshr i32 %0, 5
  %39 = getelementptr %struct.ipu_irq_bank, ptr @irq_bank, i32 %38
  %40 = getelementptr [4 x %struct.ipu_irq_map], ptr @irq_map, i32 0, i32 %34, i32 2
  store ptr %39, ptr %40, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @bank_lock, i32 noundef %37) #5
  %41 = load i32, ptr %36, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @map_lock) #5
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %33, %31
  %44 = phi i32 [ %32, %31 ], [ %41, %33 ]
  %45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %0, i32 noundef %44) #6
  br label %46

46:                                               ; preds = %43, %33
  %47 = phi i32 [ %44, %43 ], [ %41, %33 ]
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipu_irq_unmap(i32 noundef %0) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @map_lock) #5
  %2 = load i32, ptr getelementptr inbounds ([4 x %struct.ipu_irq_map], ptr @irq_map, i32 0, i32 0, i32 1), align 4
  %3 = icmp eq i32 %2, %0
  br i1 %3, label %4, label %9

4:                                                ; preds = %15, %12, %9, %1
  %5 = phi i32 [ 0, %1 ], [ 1, %9 ], [ 2, %12 ], [ 3, %15 ]
  %6 = phi ptr [ getelementptr inbounds ([4 x %struct.ipu_irq_map], ptr @irq_map, i32 0, i32 0, i32 1), %1 ], [ getelementptr inbounds ([4 x %struct.ipu_irq_map], ptr @irq_map, i32 0, i32 1, i32 1), %9 ], [ getelementptr inbounds ([4 x %struct.ipu_irq_map], ptr @irq_map, i32 0, i32 2, i32 1), %12 ], [ getelementptr inbounds ([4 x %struct.ipu_irq_map], ptr @irq_map, i32 0, i32 3, i32 1), %15 ]
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @bank_lock) #5
  store i32 -22, ptr %6, align 4
  %8 = getelementptr [4 x %struct.ipu_irq_map], ptr @irq_map, i32 0, i32 %5, i32 2
  store ptr null, ptr %8, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @bank_lock, i32 noundef %7) #5
  br label %18

9:                                                ; preds = %1
  %10 = load i32, ptr getelementptr inbounds ([4 x %struct.ipu_irq_map], ptr @irq_map, i32 0, i32 1, i32 1), align 4
  %11 = icmp eq i32 %10, %0
  br i1 %11, label %4, label %12

12:                                               ; preds = %9
  %13 = load i32, ptr getelementptr inbounds ([4 x %struct.ipu_irq_map], ptr @irq_map, i32 0, i32 2, i32 1), align 4
  %14 = icmp eq i32 %13, %0
  br i1 %14, label %4, label %15

15:                                               ; preds = %12
  %16 = load i32, ptr getelementptr inbounds ([4 x %struct.ipu_irq_map], ptr @irq_map, i32 0, i32 3, i32 1), align 4
  %17 = icmp eq i32 %16, %0
  br i1 %17, label %4, label %18

18:                                               ; preds = %15, %4
  %19 = phi i32 [ 0, %4 ], [ -22, %15 ]
  tail call void @mutex_unlock(ptr noundef nonnull @map_lock) #5
  ret i32 %19
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @ipu_irq_attach_irq(ptr noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #3 section ".init.text" {
  %3 = tail call i32 @__irq_alloc_descs(i32 noundef -1, i32 noundef 0, i32 noundef 4, i32 noundef 0, ptr noundef null, ptr noundef null) #5
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %30, label %5

5:                                                ; preds = %5, %2
  %6 = phi i32 [ %8, %5 ], [ 0, %2 ]
  %7 = getelementptr [5 x %struct.ipu_irq_bank], ptr @irq_bank, i32 0, i32 %6, i32 2
  store ptr %0, ptr %7, align 4
  %8 = add nuw nsw i32 %6, 1
  %9 = icmp eq i32 %8, 5
  br i1 %9, label %10, label %5

10:                                               ; preds = %19, %5
  %11 = phi i32 [ %22, %19 ], [ 0, %5 ]
  %12 = add i32 %11, %3
  %13 = tail call i32 @irq_set_chip(i32 noundef %12, ptr noundef nonnull @ipu_irq_chip) #5
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %30, label %15

15:                                               ; preds = %10
  %16 = getelementptr %struct.ipu_irq_map, ptr @irq_map, i32 %11
  %17 = tail call i32 @irq_set_chip_data(i32 noundef %12, ptr noundef %16) #5
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %15
  %20 = getelementptr [4 x %struct.ipu_irq_map], ptr @irq_map, i32 0, i32 %11, i32 3
  store ptr %0, ptr %20, align 4
  store i32 %12, ptr %16, align 4
  %21 = getelementptr [4 x %struct.ipu_irq_map], ptr @irq_map, i32 0, i32 %11, i32 1
  store i32 -22, ptr %21, align 4
  tail call void @__irq_set_handler(i32 noundef %12, ptr noundef nonnull @handle_level_irq, i32 noundef 0, ptr noundef null) #5
  tail call void @irq_modify_status(i32 noundef %12, i32 noundef 3072, i32 noundef 0) #5
  %22 = add nuw nsw i32 %11, 1
  %23 = icmp eq i32 %22, 4
  br i1 %23, label %24, label %10

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.ipu, ptr %0, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  tail call void @irq_set_chained_handler_and_data(i32 noundef %26, ptr noundef nonnull @ipu_irq_handler, ptr noundef %0) #5
  %27 = getelementptr inbounds %struct.ipu, ptr %0, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  tail call void @irq_set_chained_handler_and_data(i32 noundef %28, ptr noundef nonnull @ipu_irq_handler, ptr noundef %0) #5
  %29 = getelementptr inbounds %struct.ipu, ptr %0, i32 0, i32 4
  store i32 %3, ptr %29, align 4
  br label %30

30:                                               ; preds = %24, %15, %10, %2
  %31 = phi i32 [ 0, %24 ], [ %3, %2 ], [ %13, %10 ], [ %17, %15 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_alloc_descs(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ipu_irq_handler(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_common_data, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  br label %4

4:                                                ; preds = %55, %1
  %5 = phi i32 [ 0, %1 ], [ %56, %55 ]
  %6 = getelementptr %struct.ipu_irq_bank, ptr @irq_bank, i32 %5
  tail call void @_raw_spin_lock(ptr noundef nonnull @bank_lock) #5
  %7 = getelementptr %struct.ipu_irq_bank, ptr @irq_bank, i32 %5, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = load ptr, ptr %3, align 4
  %10 = getelementptr i8, ptr %9, i32 %8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #5, !srcloc !8
  %12 = load i32, ptr %6, align 4
  %13 = load ptr, ptr %3, align 4
  %14 = getelementptr i8, ptr %13, i32 %12
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #5, !srcloc !8
  %16 = and i32 %15, %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !9
  %17 = load i16, ptr @bank_lock, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr @bank_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !12
  %19 = icmp eq i32 %16, 0
  br i1 %19, label %55, label %20

20:                                               ; preds = %4
  %21 = shl i32 %5, 5
  br label %22

22:                                               ; preds = %53, %20
  %23 = phi i32 [ %16, %20 ], [ %27, %53 ]
  %24 = tail call i32 @llvm.cttz.i32(i32 %23, i1 true), !range !13
  %25 = shl nuw i32 1, %24
  %26 = xor i32 %25, -1
  %27 = and i32 %23, %26
  tail call void @_raw_spin_lock(ptr noundef nonnull @bank_lock) #5
  %28 = or i32 %24, %21
  %29 = load i32, ptr getelementptr inbounds ([4 x %struct.ipu_irq_map], ptr @irq_map, i32 0, i32 0, i32 1), align 4
  %30 = icmp eq i32 %29, %28
  br i1 %30, label %40, label %31

31:                                               ; preds = %22
  %32 = load i32, ptr getelementptr inbounds ([4 x %struct.ipu_irq_map], ptr @irq_map, i32 0, i32 1, i32 1), align 4
  %33 = icmp eq i32 %32, %28
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = load i32, ptr getelementptr inbounds ([4 x %struct.ipu_irq_map], ptr @irq_map, i32 0, i32 2, i32 1), align 4
  %36 = icmp eq i32 %35, %28
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, ptr getelementptr inbounds ([4 x %struct.ipu_irq_map], ptr @irq_map, i32 0, i32 3, i32 1), align 4
  %39 = icmp eq i32 %38, %28
  br i1 %39, label %40, label %44

40:                                               ; preds = %37, %34, %31, %22
  %41 = phi i32 [ 0, %22 ], [ 1, %31 ], [ 2, %34 ], [ 3, %37 ]
  %42 = getelementptr %struct.ipu_irq_map, ptr @irq_map, i32 %41
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %40, %37
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !9
  %45 = load i16, ptr @bank_lock, align 4
  %46 = add i16 %45, 1
  store i16 %46, ptr @bank_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !12
  %47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %24, i32 noundef %5) #6
  br label %53

48:                                               ; preds = %40
  %49 = load i32, ptr %42, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !9
  %50 = load i16, ptr @bank_lock, align 4
  %51 = add i16 %50, 1
  store i16 %51, ptr @bank_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !12
  %52 = tail call i32 @generic_handle_irq(i32 noundef %49) #5
  br label %53

53:                                               ; preds = %48, %44
  %54 = icmp eq i32 %27, 0
  br i1 %54, label %55, label %22

55:                                               ; preds = %53, %4
  %56 = add nuw nsw i32 %5, 1
  %57 = icmp eq i32 %56, 5
  br i1 %57, label %58, label %4

58:                                               ; preds = %55
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipu_irq_detach_irq(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ipu, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ipu, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  tail call void @irq_set_chained_handler_and_data(i32 noundef %6, ptr noundef null, ptr noundef null) #5
  %7 = getelementptr inbounds %struct.ipu, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  tail call void @irq_set_chained_handler_and_data(i32 noundef %8, ptr noundef null, ptr noundef null) #5
  %9 = icmp ult i32 %4, -4
  br i1 %9, label %10, label %22

10:                                               ; preds = %2
  tail call void @irq_modify_status(i32 noundef %4, i32 noundef 0, i32 noundef 2048) #5
  %11 = tail call i32 @irq_set_chip(i32 noundef %4, ptr noundef null) #5
  %12 = tail call i32 @irq_set_chip_data(i32 noundef %4, ptr noundef null) #5
  %13 = add nuw i32 %4, 1
  tail call void @irq_modify_status(i32 noundef %13, i32 noundef 0, i32 noundef 2048) #5
  %14 = tail call i32 @irq_set_chip(i32 noundef %13, ptr noundef null) #5
  %15 = tail call i32 @irq_set_chip_data(i32 noundef %13, ptr noundef null) #5
  %16 = add nuw i32 %4, 2
  tail call void @irq_modify_status(i32 noundef %16, i32 noundef 0, i32 noundef 2048) #5
  %17 = tail call i32 @irq_set_chip(i32 noundef %16, ptr noundef null) #5
  %18 = tail call i32 @irq_set_chip_data(i32 noundef %16, ptr noundef null) #5
  %19 = add nuw i32 %4, 3
  tail call void @irq_modify_status(i32 noundef %19, i32 noundef 0, i32 noundef 2048) #5
  %20 = tail call i32 @irq_set_chip(i32 noundef %19, ptr noundef null) #5
  %21 = tail call i32 @irq_set_chip_data(i32 noundef %19, ptr noundef null) #5
  br label %22

22:                                               ; preds = %10, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ipu_irq_ack(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @bank_lock) #5
  %5 = getelementptr inbounds %struct.ipu_irq_map, ptr %3, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @bank_lock, i32 noundef %4) #5
  %9 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.ipu_irq_ack, i32 noundef %10) #6
  br label %23

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.ipu_irq_bank, ptr %6, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ipu_irq_map, ptr %3, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 31
  %18 = shl nuw i32 1, %17
  %19 = getelementptr inbounds %struct.ipu_irq_bank, ptr %6, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = load ptr, ptr %14, align 4
  %22 = getelementptr i8, ptr %21, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %18) #5, !srcloc !14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @bank_lock, i32 noundef %4) #5
  br label %23

23:                                               ; preds = %12, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ipu_irq_mask(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @bank_lock) #5
  %5 = getelementptr inbounds %struct.ipu_irq_map, ptr %3, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @bank_lock, i32 noundef %4) #5
  %9 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.ipu_irq_mask, i32 noundef %10) #6
  br label %29

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.ipu_irq_bank, ptr %6, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = load i32, ptr %6, align 4
  %16 = load ptr, ptr %14, align 4
  %17 = getelementptr i8, ptr %16, i32 %15
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #5, !srcloc !8
  %19 = getelementptr inbounds %struct.ipu_irq_map, ptr %3, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 31
  %22 = shl nuw i32 1, %21
  %23 = xor i32 %22, -1
  %24 = and i32 %18, %23
  %25 = load ptr, ptr %13, align 4
  %26 = load i32, ptr %6, align 4
  %27 = load ptr, ptr %25, align 4
  %28 = getelementptr i8, ptr %27, i32 %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %24) #5, !srcloc !14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @bank_lock, i32 noundef %4) #5
  br label %29

29:                                               ; preds = %12, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ipu_irq_unmask(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @bank_lock) #5
  %5 = getelementptr inbounds %struct.ipu_irq_map, ptr %3, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @bank_lock, i32 noundef %4) #5
  %9 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.ipu_irq_unmask, i32 noundef %10) #6
  br label %28

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.ipu_irq_bank, ptr %6, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = load i32, ptr %6, align 4
  %16 = load ptr, ptr %14, align 4
  %17 = getelementptr i8, ptr %16, i32 %15
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #5, !srcloc !8
  %19 = getelementptr inbounds %struct.ipu_irq_map, ptr %3, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 31
  %22 = shl nuw i32 1, %21
  %23 = or i32 %22, %18
  %24 = load ptr, ptr %13, align 4
  %25 = load i32, ptr %6, align 4
  %26 = load ptr, ptr %24, align 4
  %27 = getelementptr i8, ptr %26, i32 %25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %23) #5, !srcloc !14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @bank_lock, i32 noundef %4) #5
  br label %28

28:                                               ; preds = %12, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__irq_set_handler(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_irq(i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
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
!8 = !{i64 3029486}
!9 = !{i64 2148828096}
!10 = !{i64 2148823920}
!11 = !{i64 2148823995, i64 2148824022, i64 2148824069, i64 2148824091, i64 2148824119, i64 2148824139}
!12 = !{i64 2148851099}
!13 = !{i32 0, i32 33}
!14 = !{i64 3029068}
