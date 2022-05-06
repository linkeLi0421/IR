; ModuleID = '/llk/IR/lib/flex_proportions.c_pt.bc'
source_filename = "../lib/flex_proportions.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.fprop_global = type { %struct.percpu_counter, i32, %struct.seqcount }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.seqcount = type { i32 }
%struct.fprop_local_single = type { i32, i32, %struct.raw_spinlock }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }

@fprop_global_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@fprop_local_init_percpu.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@percpu_counter_batch = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fprop_global_init(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.fprop_global, ptr %0, i32 0, i32 1
  store i32 0, ptr %3, align 8
  %4 = tail call i32 @__percpu_counter_init(ptr noundef %0, i64 noundef 1, i32 noundef %1, ptr noundef nonnull @fprop_global_init.__key) #6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.fprop_global, ptr %0, i32 0, i32 2
  store i32 0, ptr %7, align 4
  br label %8

8:                                                ; preds = %6, %2
  ret i32 %4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__percpu_counter_init(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fprop_global_destroy(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @percpu_counter_destroy(ptr noundef %0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @fprop_new_period(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !8
  %4 = tail call i64 @__percpu_counter_sum(ptr noundef %0) #6
  %5 = icmp slt i64 %4, 2
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %3) #6, !srcloc !9
  br label %25

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.fprop_global, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, 1
  store i32 %10, ptr %8, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #6, !srcloc !10
  %11 = icmp slt i32 %1, 64
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = zext i32 %1 to i64
  %14 = lshr i64 %4, %13
  %15 = sub nsw i64 %4, %14
  br label %16

16:                                               ; preds = %12, %7
  %17 = phi i64 [ %15, %12 ], [ %4, %7 ]
  %18 = sub nsw i64 0, %17
  %19 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %0, i64 noundef %18, i32 noundef %19) #6
  %20 = getelementptr inbounds %struct.fprop_global, ptr %0, i32 0, i32 1
  %21 = load i32, ptr %20, align 8
  %22 = add i32 %21, %1
  store i32 %22, ptr %20, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #6, !srcloc !11
  %23 = load i32, ptr %8, align 4
  %24 = add i32 %23, 1
  store i32 %24, ptr %8, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %3) #6, !srcloc !9
  br label %25

25:                                               ; preds = %16, %6
  %26 = xor i1 %5, true
  ret i1 %26
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @fprop_local_init_single(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store i32 0, ptr %0, align 4
  %2 = getelementptr inbounds %struct.fprop_local_single, ptr %0, i32 0, i32 1
  store i32 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.fprop_local_single, ptr %0, i32 0, i32 2
  store i32 0, ptr %3, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @fprop_local_destroy_single(ptr nocapture noundef %0) local_unnamed_addr #4 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__fprop_inc_single(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.fprop_global, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.fprop_local_single, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, %4
  br i1 %7, label %22, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.fprop_local_single, ptr %1, i32 0, i32 2
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #6
  %11 = load i32, ptr %5, align 4
  %12 = icmp ugt i32 %4, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %8
  %14 = sub i32 %4, %11
  %15 = icmp ult i32 %14, 32
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, ptr %1, align 4
  %18 = lshr i32 %17, %14
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi i32 [ %18, %16 ], [ 0, %13 ]
  store i32 %20, ptr %1, align 4
  store i32 %4, ptr %5, align 4
  br label %21

21:                                               ; preds = %19, %8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #6
  br label %22

22:                                               ; preds = %21, %2
  %23 = load i32, ptr %1, align 4
  %24 = add i32 %23, 1
  store i32 %24, ptr %1, align 4
  %25 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %0, i64 noundef 1, i32 noundef %25) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fprop_fraction_single(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.fprop_global, ptr %0, i32 0, i32 2
  %6 = getelementptr inbounds %struct.fprop_global, ptr %0, i32 0, i32 1
  %7 = getelementptr inbounds %struct.fprop_local_single, ptr %1, i32 0, i32 1
  %8 = getelementptr inbounds %struct.fprop_local_single, ptr %1, i32 0, i32 2
  %9 = getelementptr inbounds %struct.percpu_counter, ptr %0, i32 0, i32 1
  br label %10

10:                                               ; preds = %36, %4
  %11 = load volatile i32, ptr %5, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %14, %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !12
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !13
  %15 = load volatile i32, ptr %5, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %14

18:                                               ; preds = %14, %10
  %19 = phi i32 [ %11, %10 ], [ %15, %14 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !14
  %20 = load i32, ptr %6, align 8
  %21 = load i32, ptr %7, align 4
  %22 = icmp eq i32 %21, %20
  br i1 %22, label %36, label %23

23:                                               ; preds = %18
  %24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #6
  %25 = load i32, ptr %7, align 4
  %26 = icmp ugt i32 %20, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = sub i32 %20, %25
  %29 = icmp ult i32 %28, 32
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, ptr %1, align 4
  %32 = lshr i32 %31, %28
  br label %33

33:                                               ; preds = %30, %27
  %34 = phi i32 [ %32, %30 ], [ 0, %27 ]
  store i32 %34, ptr %1, align 4
  store i32 %20, ptr %7, align 4
  br label %35

35:                                               ; preds = %33, %23
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %24) #6
  br label %36

36:                                               ; preds = %35, %18
  %37 = load i32, ptr %1, align 4
  %38 = load volatile i64, ptr %9, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !15
  %39 = load volatile i32, ptr %5, align 4
  %40 = icmp eq i32 %39, %19
  br i1 %40, label %41, label %10

41:                                               ; preds = %36
  %42 = tail call i64 @llvm.smax.i64(i64 %38, i64 0) #6
  %43 = zext i32 %37 to i64
  %44 = icmp ugt i64 %42, %43
  %45 = trunc i64 %42 to i32
  %46 = icmp eq i32 %37, 0
  %47 = select i1 %46, i32 1, i32 %37
  %48 = select i1 %44, i32 %45, i32 %47
  store i32 %48, ptr %3, align 4
  store i32 %37, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fprop_local_init_percpu(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @__percpu_counter_init(ptr noundef %0, i64 noundef 0, i32 noundef %1, ptr noundef nonnull @fprop_local_init_percpu.__key) #6
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.fprop_local_percpu, ptr %0, i32 0, i32 1
  store i32 0, ptr %6, align 8
  %7 = getelementptr inbounds %struct.fprop_local_percpu, ptr %0, i32 0, i32 2
  store i32 0, ptr %7, align 4
  br label %8

8:                                                ; preds = %5, %2
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fprop_local_destroy_percpu(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @percpu_counter_destroy(ptr noundef %0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__fprop_add_percpu(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @fprop_reflect_period_percpu(ptr noundef %0, ptr noundef %1)
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %5 = icmp eq i32 %4, 0
  %6 = tail call i32 @llvm.ctlz.i32(i32 %4, i1 false) #6, !range !16
  %7 = sext i32 %2 to i64
  %8 = mul nsw i32 %6, -8
  %9 = add nsw i32 %8, 256
  %10 = select i1 %5, i32 0, i32 %9
  tail call void @percpu_counter_add_batch(ptr noundef %1, i64 noundef %7, i32 noundef %10) #6
  %11 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %0, i64 noundef %7, i32 noundef %11) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fprop_reflect_period_percpu(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.fprop_global, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.fprop_local_percpu, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, %4
  br i1 %7, label %48, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.fprop_local_percpu, ptr %1, i32 0, i32 2
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #6
  %11 = load i32, ptr %5, align 8
  %12 = icmp ugt i32 %4, %11
  br i1 %12, label %13, label %47

13:                                               ; preds = %8
  %14 = sub i32 %4, %11
  %15 = icmp ult i32 %14, 32
  br i1 %15, label %16, label %45

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.percpu_counter, ptr %1, i32 0, i32 1
  %18 = load i64, ptr %17, align 8
  %19 = load i32, ptr @nr_cpu_ids, align 4
  %20 = icmp eq i32 %19, 0
  %21 = tail call i32 @llvm.ctlz.i32(i32 %19, i1 false) #6, !range !16
  %22 = mul nsw i32 %21, -8
  %23 = add nsw i32 %22, 256
  %24 = select i1 %20, i32 0, i32 %23
  %25 = mul i32 %24, %19
  %26 = zext i32 %25 to i64
  %27 = icmp slt i64 %18, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %16
  %29 = tail call i64 @__percpu_counter_sum(ptr noundef %1) #6
  %30 = load i32, ptr %5, align 8
  %31 = load i32, ptr @nr_cpu_ids, align 4
  %32 = sub i32 %4, %30
  br label %33

33:                                               ; preds = %28, %16
  %34 = phi i32 [ %32, %28 ], [ %14, %16 ]
  %35 = phi i32 [ %31, %28 ], [ %19, %16 ]
  %36 = phi i64 [ %29, %28 ], [ %18, %16 ]
  %37 = zext i32 %34 to i64
  %38 = ashr i64 %36, %37
  %39 = sub i64 %38, %36
  %40 = icmp eq i32 %35, 0
  %41 = tail call i32 @llvm.ctlz.i32(i32 %35, i1 false) #6, !range !16
  %42 = mul nsw i32 %41, -8
  %43 = add nsw i32 %42, 256
  %44 = select i1 %40, i32 0, i32 %43
  tail call void @percpu_counter_add_batch(ptr noundef %1, i64 noundef %39, i32 noundef %44) #6
  br label %46

45:                                               ; preds = %13
  tail call void @percpu_counter_set(ptr noundef %1, i64 noundef 0) #6
  br label %46

46:                                               ; preds = %45, %33
  store i32 %4, ptr %5, align 8
  br label %47

47:                                               ; preds = %46, %8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #6
  br label %48

48:                                               ; preds = %47, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fprop_fraction_percpu(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.fprop_global, ptr %0, i32 0, i32 2
  %6 = getelementptr inbounds %struct.percpu_counter, ptr %1, i32 0, i32 1
  %7 = getelementptr inbounds %struct.percpu_counter, ptr %0, i32 0, i32 1
  br label %8

8:                                                ; preds = %16, %4
  %9 = load volatile i32, ptr %5, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %12, %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !17
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !18
  %13 = load volatile i32, ptr %5, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %12

16:                                               ; preds = %12, %8
  %17 = phi i32 [ %9, %8 ], [ %13, %12 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !19
  tail call fastcc void @fprop_reflect_period_percpu(ptr noundef %0, ptr noundef %1)
  %18 = load volatile i64, ptr %6, align 8
  %19 = load volatile i64, ptr %7, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !15
  %20 = load volatile i32, ptr %5, align 4
  %21 = icmp eq i32 %20, %17
  br i1 %21, label %22, label %8

22:                                               ; preds = %16
  %23 = tail call i64 @llvm.smax.i64(i64 %19, i64 0) #6
  %24 = tail call i64 @llvm.smax.i64(i64 %18, i64 0) #6
  %25 = icmp ugt i64 %23, %24
  %26 = trunc i64 %23 to i32
  %27 = icmp slt i64 %18, 1
  %28 = trunc i64 %24 to i32
  %29 = select i1 %27, i32 1, i32 %28
  %30 = select i1 %25, i32 %26, i32 %29
  store i32 %30, ptr %3, align 4
  store i32 %28, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__fprop_add_percpu_max(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = icmp ult i32 %2, 1024
  br i1 %7, label %8, label %37, !prof !20

8:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store i32 0, ptr %6, align 4, !annotation !21
  call void @fprop_fraction_percpu(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %9 = load i32, ptr %6, align 4
  %10 = zext i32 %9 to i64
  %11 = zext i32 %2 to i64
  %12 = mul nuw nsw i64 %10, %11
  %13 = load i32, ptr %5, align 4
  %14 = zext i32 %13 to i64
  %15 = mul nsw i64 %14, -1024
  %16 = add nsw i64 %15, %12
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %36, label %18

18:                                               ; preds = %8
  %19 = sub nuw nsw i32 1024, %2
  %20 = mul i32 %19, %3
  %21 = zext i32 %20 to i64
  %22 = icmp ult i64 %16, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = sub nuw nsw i64 1023, %11
  %25 = add nuw nsw i64 %24, %16
  %26 = icmp ult i64 %25, 4294967296
  br i1 %26, label %27, label %30, !prof !22

27:                                               ; preds = %23
  %28 = trunc i64 %25 to i32
  %29 = udiv i32 %28, %19
  br label %34

30:                                               ; preds = %23
  %31 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %19, i64 %25) #7, !srcloc !23
  %32 = extractvalue { i64, i64 } %31, 1
  %33 = trunc i64 %32 to i32
  br label %34

34:                                               ; preds = %30, %27, %18
  %35 = phi i32 [ %3, %18 ], [ %29, %27 ], [ %33, %30 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  br label %37

36:                                               ; preds = %8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  br label %47

37:                                               ; preds = %34, %4
  %38 = phi i32 [ %3, %4 ], [ %35, %34 ]
  tail call fastcc void @fprop_reflect_period_percpu(ptr noundef %0, ptr noundef %1) #6
  %39 = load i32, ptr @nr_cpu_ids, align 4
  %40 = icmp eq i32 %39, 0
  %41 = tail call i32 @llvm.ctlz.i32(i32 %39, i1 false) #6, !range !16
  %42 = sext i32 %38 to i64
  %43 = mul nsw i32 %41, -8
  %44 = add nsw i32 %43, 256
  %45 = select i1 %40, i32 0, i32 %44
  tail call void @percpu_counter_add_batch(ptr noundef %1, i64 noundef %42, i32 noundef %45) #6
  %46 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %0, i64 noundef %42, i32 noundef %46) #6
  br label %47

47:                                               ; preds = %37, %36
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__percpu_counter_sum(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_set(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
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
!8 = !{i64 571020, i64 571081}
!9 = !{i64 574037}
!10 = !{i64 2149161929}
!11 = !{i64 2149162230}
!12 = !{i64 2149959608}
!13 = !{i64 2149959450}
!14 = !{i64 2149959752}
!15 = !{i64 2149161630}
!16 = !{i32 0, i32 33}
!17 = !{i64 2149964868}
!18 = !{i64 2149964710}
!19 = !{i64 2149965012}
!20 = !{!"branch_weights", i32 1, i32 2000}
!21 = !{!"auto-init"}
!22 = !{!"branch_weights", i32 2000, i32 1}
!23 = !{i64 2148016125, i64 2148016405, i64 2148016739, i64 2148017073}
