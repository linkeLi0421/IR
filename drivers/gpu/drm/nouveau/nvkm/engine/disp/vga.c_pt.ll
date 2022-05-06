; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/disp/vga.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/vga.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.119, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.119 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i8 @nvkm_rdport(ptr nocapture noundef readonly %0, i32 noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 15
  %5 = load i32, ptr %4, align 8
  %6 = icmp ugt i32 %5, 79
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = zext i16 %2 to i32
  %11 = add nuw nsw i32 %10, 6295552
  %12 = getelementptr i8, ptr %9, i32 %11
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %12) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  br label %34

14:                                               ; preds = %3
  %15 = zext i16 %2 to i32
  switch i16 %2, label %34 [
    i16 986, label %16
    i16 981, label %16
    i16 980, label %16
    i16 962, label %16
    i16 961, label %16
    i16 960, label %16
    i16 975, label %24
    i16 974, label %24
    i16 972, label %24
    i16 965, label %24
    i16 964, label %24
  ]

16:                                               ; preds = %14, %14, %14, %14, %14, %14
  %17 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %18 = load ptr, ptr %17, align 4
  %19 = shl i32 %1, 13
  %20 = add i32 %19, 6295552
  %21 = add i32 %20, %15
  %22 = getelementptr i8, ptr %18, i32 %21
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %22) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  br label %34

24:                                               ; preds = %14, %14, %14, %14, %14
  %25 = icmp ult i32 %5, 64
  %26 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %27 = load ptr, ptr %26, align 4
  %28 = shl i32 %1, 13
  %29 = add i32 %28, 786432
  %30 = select i1 %25, i32 786432, i32 %29
  %31 = add i32 %30, %15
  %32 = getelementptr i8, ptr %27, i32 %31
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %32) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  br label %34

34:                                               ; preds = %24, %16, %14, %7
  %35 = phi i8 [ %13, %7 ], [ %23, %16 ], [ %33, %24 ], [ 0, %14 ]
  ret i8 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_wrport(ptr nocapture noundef readonly %0, i32 noundef %1, i16 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 15
  %6 = load i32, ptr %5, align 8
  %7 = icmp ugt i32 %6, 79
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = zext i16 %2 to i32
  %12 = add nuw nsw i32 %11, 6295552
  %13 = getelementptr i8, ptr %10, i32 %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %13, i8 %3) #2, !srcloc !11
  br label %32

14:                                               ; preds = %4
  %15 = zext i16 %2 to i32
  switch i16 %2, label %32 [
    i16 986, label %16
    i16 981, label %16
    i16 980, label %16
    i16 962, label %16
    i16 961, label %16
    i16 960, label %16
    i16 975, label %23
    i16 974, label %23
    i16 972, label %23
    i16 965, label %23
    i16 964, label %23
  ]

16:                                               ; preds = %14, %14, %14, %14, %14, %14
  %17 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %18 = load ptr, ptr %17, align 4
  %19 = shl i32 %1, 13
  %20 = add i32 %19, 6295552
  %21 = add i32 %20, %15
  %22 = getelementptr i8, ptr %18, i32 %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %22, i8 %3) #2, !srcloc !11
  br label %32

23:                                               ; preds = %14, %14, %14, %14, %14
  %24 = icmp ult i32 %6, 64
  %25 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %26 = load ptr, ptr %25, align 4
  %27 = shl i32 %1, 13
  %28 = add i32 %27, 786432
  %29 = select i1 %24, i32 786432, i32 %28
  %30 = add i32 %29, %15
  %31 = getelementptr i8, ptr %26, i32 %30
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %31, i8 %3) #2, !srcloc !11
  br label %32

32:                                               ; preds = %23, %16, %14, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i8 @nvkm_rdvgas(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 15
  %5 = load i32, ptr %4, align 8
  %6 = icmp ugt i32 %5, 79
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 6296516
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %10, i8 %2) #2, !srcloc !11
  br label %19

11:                                               ; preds = %3
  %12 = icmp ult i32 %5, 64
  %13 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %14 = load ptr, ptr %13, align 4
  %15 = shl i32 %1, 13
  %16 = add i32 %15, 787396
  %17 = select i1 %12, i32 787396, i32 %16
  %18 = getelementptr i8, ptr %14, i32 %17
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %18, i8 %2) #2, !srcloc !11
  br label %19

19:                                               ; preds = %11, %7
  %20 = load i32, ptr %4, align 8
  %21 = icmp ugt i32 %20, 79
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 6296517
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %25) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  br label %36

27:                                               ; preds = %19
  %28 = icmp ult i32 %20, 64
  %29 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %30 = load ptr, ptr %29, align 4
  %31 = shl i32 %1, 13
  %32 = add i32 %31, 787397
  %33 = select i1 %28, i32 787397, i32 %32
  %34 = getelementptr i8, ptr %30, i32 %33
  %35 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %34) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  br label %36

36:                                               ; preds = %27, %22
  %37 = phi i8 [ %26, %22 ], [ %35, %27 ]
  ret i8 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_wrvgas(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 15
  %6 = load i32, ptr %5, align 8
  %7 = icmp ugt i32 %6, 79
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 6296516
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %11, i8 %2) #2, !srcloc !11
  br label %20

12:                                               ; preds = %4
  %13 = icmp ult i32 %6, 64
  %14 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %15 = load ptr, ptr %14, align 4
  %16 = shl i32 %1, 13
  %17 = add i32 %16, 787396
  %18 = select i1 %13, i32 787396, i32 %17
  %19 = getelementptr i8, ptr %15, i32 %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %19, i8 %2) #2, !srcloc !11
  br label %20

20:                                               ; preds = %12, %8
  %21 = load i32, ptr %5, align 8
  %22 = icmp ugt i32 %21, 79
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %25, i32 6296517
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %26, i8 %3) #2, !srcloc !11
  br label %35

27:                                               ; preds = %20
  %28 = icmp ult i32 %21, 64
  %29 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %30 = load ptr, ptr %29, align 4
  %31 = shl i32 %1, 13
  %32 = add i32 %31, 787397
  %33 = select i1 %28, i32 787397, i32 %32
  %34 = getelementptr i8, ptr %30, i32 %33
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %34, i8 %3) #2, !srcloc !11
  br label %35

35:                                               ; preds = %27, %23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i8 @nvkm_rdvgag(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 15
  %5 = load i32, ptr %4, align 8
  %6 = icmp ugt i32 %5, 79
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 6296526
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %10, i8 %2) #2, !srcloc !11
  br label %19

11:                                               ; preds = %3
  %12 = icmp ult i32 %5, 64
  %13 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %14 = load ptr, ptr %13, align 4
  %15 = shl i32 %1, 13
  %16 = add i32 %15, 787406
  %17 = select i1 %12, i32 787406, i32 %16
  %18 = getelementptr i8, ptr %14, i32 %17
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %18, i8 %2) #2, !srcloc !11
  br label %19

19:                                               ; preds = %11, %7
  %20 = load i32, ptr %4, align 8
  %21 = icmp ugt i32 %20, 79
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 6296527
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %25) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  br label %36

27:                                               ; preds = %19
  %28 = icmp ult i32 %20, 64
  %29 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %30 = load ptr, ptr %29, align 4
  %31 = shl i32 %1, 13
  %32 = add i32 %31, 787407
  %33 = select i1 %28, i32 787407, i32 %32
  %34 = getelementptr i8, ptr %30, i32 %33
  %35 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %34) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  br label %36

36:                                               ; preds = %27, %22
  %37 = phi i8 [ %26, %22 ], [ %35, %27 ]
  ret i8 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_wrvgag(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 15
  %6 = load i32, ptr %5, align 8
  %7 = icmp ugt i32 %6, 79
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 6296526
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %11, i8 %2) #2, !srcloc !11
  br label %20

12:                                               ; preds = %4
  %13 = icmp ult i32 %6, 64
  %14 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %15 = load ptr, ptr %14, align 4
  %16 = shl i32 %1, 13
  %17 = add i32 %16, 787406
  %18 = select i1 %13, i32 787406, i32 %17
  %19 = getelementptr i8, ptr %15, i32 %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %19, i8 %2) #2, !srcloc !11
  br label %20

20:                                               ; preds = %12, %8
  %21 = load i32, ptr %5, align 8
  %22 = icmp ugt i32 %21, 79
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %25, i32 6296527
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %26, i8 %3) #2, !srcloc !11
  br label %35

27:                                               ; preds = %20
  %28 = icmp ult i32 %21, 64
  %29 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %30 = load ptr, ptr %29, align 4
  %31 = shl i32 %1, 13
  %32 = add i32 %31, 787407
  %33 = select i1 %28, i32 787407, i32 %32
  %34 = getelementptr i8, ptr %30, i32 %33
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %34, i8 %3) #2, !srcloc !11
  br label %35

35:                                               ; preds = %27, %23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i8 @nvkm_rdvgac(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 15
  %5 = load i32, ptr %4, align 8
  %6 = icmp ugt i32 %5, 79
  %7 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  br i1 %6, label %9, label %11

9:                                                ; preds = %3
  %10 = getelementptr i8, ptr %8, i32 6296532
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %10, i8 %2) #2, !srcloc !11
  br label %15

11:                                               ; preds = %3
  %12 = shl i32 %1, 13
  %13 = add i32 %12, 6296532
  %14 = getelementptr i8, ptr %8, i32 %13
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %14, i8 %2) #2, !srcloc !11
  br label %15

15:                                               ; preds = %11, %9
  %16 = load i32, ptr %4, align 8
  %17 = icmp ugt i32 %16, 79
  %18 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %19 = load ptr, ptr %18, align 4
  br i1 %17, label %20, label %23

20:                                               ; preds = %15
  %21 = getelementptr i8, ptr %19, i32 6296533
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %21) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  br label %28

23:                                               ; preds = %15
  %24 = shl i32 %1, 13
  %25 = add i32 %24, 6296533
  %26 = getelementptr i8, ptr %19, i32 %25
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %26) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  br label %28

28:                                               ; preds = %23, %20
  %29 = phi i8 [ %22, %20 ], [ %27, %23 ]
  ret i8 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_wrvgac(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 15
  %6 = load i32, ptr %5, align 8
  %7 = icmp ugt i32 %6, 79
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  br i1 %7, label %10, label %12

10:                                               ; preds = %4
  %11 = getelementptr i8, ptr %9, i32 6296532
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %11, i8 %2) #2, !srcloc !11
  br label %16

12:                                               ; preds = %4
  %13 = shl i32 %1, 13
  %14 = add i32 %13, 6296532
  %15 = getelementptr i8, ptr %9, i32 %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %15, i8 %2) #2, !srcloc !11
  br label %16

16:                                               ; preds = %12, %10
  %17 = load i32, ptr %5, align 8
  %18 = icmp ugt i32 %17, 79
  %19 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %20 = load ptr, ptr %19, align 4
  br i1 %18, label %21, label %23

21:                                               ; preds = %16
  %22 = getelementptr i8, ptr %20, i32 6296533
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %22, i8 %3) #2, !srcloc !11
  br label %27

23:                                               ; preds = %16
  %24 = shl i32 %1, 13
  %25 = add i32 %24, 6296533
  %26 = getelementptr i8, ptr %20, i32 %25
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %26, i8 %3) #2, !srcloc !11
  br label %27

27:                                               ; preds = %23, %21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i8 @nvkm_rdvgai(ptr nocapture noundef readonly %0, i32 noundef %1, i16 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  switch i16 %2, label %95 [
    i16 964, label %5
    i16 974, label %38
    i16 980, label %71
  ]

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 15
  %7 = load i32, ptr %6, align 8
  %8 = icmp ugt i32 %7, 79
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 6296516
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %12, i8 %3) #2, !srcloc !11
  br label %21

13:                                               ; preds = %5
  %14 = icmp ult i32 %7, 64
  %15 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %16 = load ptr, ptr %15, align 4
  %17 = shl i32 %1, 13
  %18 = add i32 %17, 787396
  %19 = select i1 %14, i32 787396, i32 %18
  %20 = getelementptr i8, ptr %16, i32 %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %20, i8 %3) #2, !srcloc !11
  br label %21

21:                                               ; preds = %13, %9
  %22 = load i32, ptr %6, align 8
  %23 = icmp ugt i32 %22, 79
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i8, ptr %26, i32 6296517
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %27) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  br label %95

29:                                               ; preds = %21
  %30 = icmp ult i32 %22, 64
  %31 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %32 = load ptr, ptr %31, align 4
  %33 = shl i32 %1, 13
  %34 = add i32 %33, 787397
  %35 = select i1 %30, i32 787397, i32 %34
  %36 = getelementptr i8, ptr %32, i32 %35
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %36) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  br label %95

38:                                               ; preds = %4
  %39 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 15
  %40 = load i32, ptr %39, align 8
  %41 = icmp ugt i32 %40, 79
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr i8, ptr %44, i32 6296526
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %45, i8 %3) #2, !srcloc !11
  br label %54

46:                                               ; preds = %38
  %47 = icmp ult i32 %40, 64
  %48 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %49 = load ptr, ptr %48, align 4
  %50 = shl i32 %1, 13
  %51 = add i32 %50, 787406
  %52 = select i1 %47, i32 787406, i32 %51
  %53 = getelementptr i8, ptr %49, i32 %52
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %53, i8 %3) #2, !srcloc !11
  br label %54

54:                                               ; preds = %46, %42
  %55 = load i32, ptr %39, align 8
  %56 = icmp ugt i32 %55, 79
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr i8, ptr %59, i32 6296527
  %61 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %60) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  br label %95

62:                                               ; preds = %54
  %63 = icmp ult i32 %55, 64
  %64 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %65 = load ptr, ptr %64, align 4
  %66 = shl i32 %1, 13
  %67 = add i32 %66, 787407
  %68 = select i1 %63, i32 787407, i32 %67
  %69 = getelementptr i8, ptr %65, i32 %68
  %70 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %69) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  br label %95

71:                                               ; preds = %4
  %72 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 15
  %73 = load i32, ptr %72, align 8
  %74 = icmp ugt i32 %73, 79
  %75 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %76 = load ptr, ptr %75, align 4
  br i1 %74, label %77, label %79

77:                                               ; preds = %71
  %78 = getelementptr i8, ptr %76, i32 6296532
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %78, i8 %3) #2, !srcloc !11
  br label %83

79:                                               ; preds = %71
  %80 = shl i32 %1, 13
  %81 = add i32 %80, 6296532
  %82 = getelementptr i8, ptr %76, i32 %81
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %82, i8 %3) #2, !srcloc !11
  br label %83

83:                                               ; preds = %79, %77
  %84 = load i32, ptr %72, align 8
  %85 = icmp ugt i32 %84, 79
  %86 = load ptr, ptr %75, align 4
  br i1 %85, label %87, label %90

87:                                               ; preds = %83
  %88 = getelementptr i8, ptr %86, i32 6296533
  %89 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %88) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  br label %95

90:                                               ; preds = %83
  %91 = shl i32 %1, 13
  %92 = add i32 %91, 6296533
  %93 = getelementptr i8, ptr %86, i32 %92
  %94 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %93) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  br label %95

95:                                               ; preds = %90, %87, %62, %57, %29, %24, %4
  %96 = phi i8 [ 0, %4 ], [ %28, %24 ], [ %37, %29 ], [ %61, %57 ], [ %70, %62 ], [ %89, %87 ], [ %94, %90 ]
  ret i8 %96
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_wrvgai(ptr nocapture noundef readonly %0, i32 noundef %1, i16 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  switch i16 %2, label %30 [
    i16 964, label %6
    i16 974, label %7
    i16 980, label %8
  ]

6:                                                ; preds = %5
  tail call void @nvkm_wrvgas(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %3, i8 noundef zeroext %4)
  br label %30

7:                                                ; preds = %5
  tail call void @nvkm_wrvgag(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %3, i8 noundef zeroext %4)
  br label %30

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 15
  %10 = load i32, ptr %9, align 8
  %11 = icmp ugt i32 %10, 79
  %12 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  br i1 %11, label %14, label %16

14:                                               ; preds = %8
  %15 = getelementptr i8, ptr %13, i32 6296532
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %15, i8 %3) #2, !srcloc !11
  br label %20

16:                                               ; preds = %8
  %17 = shl i32 %1, 13
  %18 = add i32 %17, 6296532
  %19 = getelementptr i8, ptr %13, i32 %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %19, i8 %3) #2, !srcloc !11
  br label %20

20:                                               ; preds = %16, %14
  %21 = load i32, ptr %9, align 8
  %22 = icmp ugt i32 %21, 79
  %23 = load ptr, ptr %12, align 4
  br i1 %22, label %24, label %26

24:                                               ; preds = %20
  %25 = getelementptr i8, ptr %23, i32 6296533
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %25, i8 %4) #2, !srcloc !11
  br label %30

26:                                               ; preds = %20
  %27 = shl i32 %1, 13
  %28 = add i32 %27, 6296533
  %29 = getelementptr i8, ptr %23, i32 %28
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %29, i8 %4) #2, !srcloc !11
  br label %30

30:                                               ; preds = %26, %24, %7, %6, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @nvkm_lockvgac(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 15
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 6296532
  tail call void asm sideeffect "dsb st", "~{memory}"() #2
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %6, i8 31) #2
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr i8, ptr %7, i32 6296533
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %8) #2
  tail call void asm sideeffect "dsb ", "~{memory}"() #2
  %10 = select i1 %1, i8 -103, i8 87
  %11 = load i32, ptr %3, align 8
  %12 = icmp ult i32 %11, 80
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr i8, ptr %13, i32 6296532
  tail call void asm sideeffect "dsb st", "~{memory}"() #2
  tail call void @arm_heavy_mb() #2
  br i1 %12, label %15, label %18

15:                                               ; preds = %2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %14, i8 31) #2, !srcloc !11
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr i8, ptr %16, i32 6296533
  tail call void asm sideeffect "dsb st", "~{memory}"() #2
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %17, i8 %10) #2
  br label %21

18:                                               ; preds = %2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %14, i8 63) #2, !srcloc !11
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr i8, ptr %19, i32 6296533
  tail call void asm sideeffect "dsb st", "~{memory}"() #2
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %20, i8 %10) #2
  br label %21

21:                                               ; preds = %18, %15
  %22 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 16
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 17
  br i1 %24, label %25, label %47

25:                                               ; preds = %21
  %26 = load ptr, ptr %4, align 4
  %27 = getelementptr i8, ptr %26, i32 4228
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #2, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !13
  %29 = and i32 %28, 268435456
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %25
  %32 = load i32, ptr %3, align 8
  %33 = icmp ugt i32 %32, 79
  %34 = load ptr, ptr %4, align 4
  br i1 %33, label %35, label %37

35:                                               ; preds = %31
  %36 = getelementptr i8, ptr %34, i32 6296532
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %36, i8 31) #2, !srcloc !11
  br label %39

37:                                               ; preds = %31
  %38 = getelementptr i8, ptr %34, i32 6304724
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %38, i8 31) #2, !srcloc !11
  br label %39

39:                                               ; preds = %37, %35
  %40 = load i32, ptr %3, align 8
  %41 = icmp ugt i32 %40, 79
  %42 = load ptr, ptr %4, align 4
  br i1 %41, label %43, label %45

43:                                               ; preds = %39
  %44 = getelementptr i8, ptr %42, i32 6296533
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %44, i8 %10) #2, !srcloc !11
  br label %47

45:                                               ; preds = %39
  %46 = getelementptr i8, ptr %42, i32 6304725
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %46, i8 %10) #2, !srcloc !11
  br label %47

47:                                               ; preds = %45, %43, %25, %21
  %48 = icmp eq i8 %9, 0
  ret i1 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i8 @nvkm_rdvgaowner(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 15
  %3 = load i32, ptr %2, align 8
  %4 = icmp ult i32 %3, 80
  br i1 %4, label %5, label %82

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 16
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 17
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  br i1 %8, label %11, label %77

11:                                               ; preds = %5
  %12 = getelementptr i8, ptr %10, i32 4228
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #2, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !13
  %14 = and i32 %13, 268435456
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %82

16:                                               ; preds = %11
  %17 = load ptr, ptr %9, align 4
  %18 = getelementptr i8, ptr %17, i32 6296532
  tail call void asm sideeffect "dsb st", "~{memory}"() #2
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %18, i8 40) #2
  %19 = load ptr, ptr %9, align 4
  %20 = getelementptr i8, ptr %19, i32 6296533
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %20) #2
  tail call void asm sideeffect "dsb ", "~{memory}"() #2
  %22 = load ptr, ptr %9, align 4
  %23 = getelementptr i8, ptr %22, i32 6296532
  tail call void asm sideeffect "dsb st", "~{memory}"() #2
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %23, i8 51) #2
  %24 = load ptr, ptr %9, align 4
  %25 = getelementptr i8, ptr %24, i32 6296533
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %25) #2
  tail call void asm sideeffect "dsb ", "~{memory}"() #2
  %27 = and i8 %26, 1
  %28 = load i32, ptr %2, align 8
  %29 = icmp ugt i32 %28, 79
  %30 = load ptr, ptr %9, align 4
  br i1 %29, label %31, label %33

31:                                               ; preds = %16
  %32 = getelementptr i8, ptr %30, i32 6296532
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %32, i8 40) #2, !srcloc !11
  br label %35

33:                                               ; preds = %16
  %34 = getelementptr i8, ptr %30, i32 6304724
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %34, i8 40) #2, !srcloc !11
  br label %35

35:                                               ; preds = %33, %31
  %36 = load i32, ptr %2, align 8
  %37 = icmp ugt i32 %36, 79
  %38 = load ptr, ptr %9, align 4
  br i1 %37, label %39, label %42

39:                                               ; preds = %35
  %40 = getelementptr i8, ptr %38, i32 6296533
  %41 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %40) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  br label %45

42:                                               ; preds = %35
  %43 = getelementptr i8, ptr %38, i32 6304725
  %44 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %43) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  br label %45

45:                                               ; preds = %42, %39
  %46 = phi i8 [ %41, %39 ], [ %44, %42 ]
  %47 = load i32, ptr %2, align 8
  %48 = icmp ugt i32 %47, 79
  %49 = load ptr, ptr %9, align 4
  br i1 %48, label %50, label %52

50:                                               ; preds = %45
  %51 = getelementptr i8, ptr %49, i32 6296532
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %51, i8 51) #2, !srcloc !11
  br label %54

52:                                               ; preds = %45
  %53 = getelementptr i8, ptr %49, i32 6304724
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %53, i8 51) #2, !srcloc !11
  br label %54

54:                                               ; preds = %52, %50
  %55 = load i32, ptr %2, align 8
  %56 = icmp ugt i32 %55, 79
  %57 = load ptr, ptr %9, align 4
  br i1 %56, label %58, label %61

58:                                               ; preds = %54
  %59 = getelementptr i8, ptr %57, i32 6296533
  %60 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %59) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  br label %64

61:                                               ; preds = %54
  %62 = getelementptr i8, ptr %57, i32 6304725
  %63 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %62) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  br label %64

64:                                               ; preds = %61, %58
  %65 = phi i8 [ %60, %58 ], [ %63, %61 ]
  %66 = icmp sgt i8 %21, -1
  %67 = icmp ne i8 %27, 0
  %68 = select i1 %66, i1 true, i1 %67
  br i1 %68, label %69, label %82

69:                                               ; preds = %64
  %70 = and i8 %65, 1
  %71 = icmp sgt i8 %46, -1
  %72 = icmp ne i8 %70, 0
  %73 = select i1 %71, i1 true, i1 %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %69
  %75 = select i1 %71, i8 0, i8 3
  %76 = select i1 %66, i8 %75, i8 0
  br label %82

77:                                               ; preds = %5
  %78 = getelementptr i8, ptr %10, i32 6296532
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %78, i8 68) #2, !srcloc !11
  %79 = load ptr, ptr %9, align 4
  %80 = getelementptr i8, ptr %79, i32 6296533
  %81 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %80) #2
  tail call void asm sideeffect "dsb ", "~{memory}"() #2
  br label %82

82:                                               ; preds = %77, %74, %69, %64, %11, %1
  %83 = phi i8 [ 0, %64 ], [ 3, %69 ], [ 4, %11 ], [ 0, %1 ], [ %76, %74 ], [ %81, %77 ]
  ret i8 %83
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_wrvgaowner(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 15
  %4 = load i32, ptr %3, align 8
  %5 = icmp ult i32 %4, 80
  br i1 %5, label %6, label %53

6:                                                ; preds = %2
  %7 = icmp eq i8 %1, 1
  %8 = select i1 %7, i8 3, i8 %1
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 16
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 17
  br i1 %11, label %12, label %36

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 6296532
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %15, i8 31) #2, !srcloc !11
  %16 = load ptr, ptr %13, align 4
  %17 = getelementptr i8, ptr %16, i32 6296533
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %17) #2
  tail call void asm sideeffect "dsb ", "~{memory}"() #2
  %19 = load i32, ptr %3, align 8
  %20 = icmp ugt i32 %19, 79
  %21 = load ptr, ptr %13, align 4
  br i1 %20, label %22, label %24

22:                                               ; preds = %12
  %23 = getelementptr i8, ptr %21, i32 6296532
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %23, i8 31) #2, !srcloc !11
  br label %26

24:                                               ; preds = %12
  %25 = getelementptr i8, ptr %21, i32 6304724
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %25, i8 31) #2, !srcloc !11
  br label %26

26:                                               ; preds = %24, %22
  %27 = load i32, ptr %3, align 8
  %28 = icmp ugt i32 %27, 79
  %29 = load ptr, ptr %13, align 4
  br i1 %28, label %30, label %33

30:                                               ; preds = %26
  %31 = getelementptr i8, ptr %29, i32 6296533
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %31) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  br label %36

33:                                               ; preds = %26
  %34 = getelementptr i8, ptr %29, i32 6304725
  %35 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %34) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  br label %36

36:                                               ; preds = %33, %30, %6
  %37 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr i8, ptr %38, i32 6296532
  tail call void asm sideeffect "dsb st", "~{memory}"() #2
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %39, i8 68) #2
  %40 = load ptr, ptr %37, align 4
  %41 = getelementptr i8, ptr %40, i32 6296533
  tail call void asm sideeffect "dsb st", "~{memory}"() #2
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %41, i8 %8) #2
  %42 = load i32, ptr %9, align 4
  %43 = icmp eq i32 %42, 17
  br i1 %43, label %44, label %53

44:                                               ; preds = %36
  %45 = load ptr, ptr %37, align 4
  %46 = getelementptr i8, ptr %45, i32 6296532
  tail call void asm sideeffect "dsb st", "~{memory}"() #2
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %46, i8 46) #2
  %47 = load ptr, ptr %37, align 4
  %48 = getelementptr i8, ptr %47, i32 6296533
  tail call void asm sideeffect "dsb st", "~{memory}"() #2
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %48, i8 %8) #2
  %49 = load ptr, ptr %37, align 4
  %50 = getelementptr i8, ptr %49, i32 6296532
  tail call void asm sideeffect "dsb st", "~{memory}"() #2
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %50, i8 46) #2
  %51 = load ptr, ptr %37, align 4
  %52 = getelementptr i8, ptr %51, i32 6296533
  tail call void asm sideeffect "dsb st", "~{memory}"() #2
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %52, i8 %8) #2
  br label %53

53:                                               ; preds = %44, %36, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }

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
!8 = !{i64 3943097}
!9 = !{i64 2151481824}
!10 = !{i64 2151483122}
!11 = !{i64 3942702}
!12 = !{i64 3943317}
!13 = !{i64 2151482770}
