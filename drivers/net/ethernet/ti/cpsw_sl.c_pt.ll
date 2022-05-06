; ModuleID = '/llk/IR/drivers/net/ethernet/ti/cpsw_sl.c_pt.bc'
source_filename = "../drivers/net/ethernet/ti/cpsw_sl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpsw_sl_dev_id = type { ptr, ptr, i32, i32, i32 }
%struct.cpsw_sl = type { ptr, ptr, ptr, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"cpsw_sl: not sup r reg: %04X\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"cpsw_sl: not sup w reg: %04X\0A\00", align 1
@cpsw_sl_id_match = internal unnamed_addr constant [7 x %struct.cpsw_sl_dev_id] [%struct.cpsw_sl_dev_id { ptr @.str.5, ptr @cpsw_sl_reg_map_cpsw, i32 31952127, i32 0, i32 -2147483648 }, %struct.cpsw_sl_dev_id { ptr @.str.6, ptr @cpsw_sl_reg_map_66ak2hk, i32 29854971, i32 0, i32 -2147483648 }, %struct.cpsw_sl_dev_id { ptr @.str.7, ptr @cpsw_sl_reg_map_66ak2x_xgbe, i32 29867515, i32 0, i32 -2147483648 }, %struct.cpsw_sl_dev_id { ptr @.str.8, ptr @cpsw_sl_reg_map_66ak2elg_am65, i32 33529087, i32 816, i32 -2147483648 }, %struct.cpsw_sl_dev_id { ptr @.str.9, ptr @cpsw_sl_reg_map_66ak2elg_am65, i32 31430911, i32 816, i32 0 }, %struct.cpsw_sl_dev_id { ptr @.str.10, ptr @cpsw_sl_reg_map_66ak2elg_am65, i32 67091967, i32 816, i32 -268435456 }, %struct.cpsw_sl_dev_id zeroinitializer], align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"cpsw_sl: dev_id %s not found.\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.3 = private unnamed_addr constant [31 x i8] c"cpsw_sl failed to soft-reset.\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"cpsw_sl: unsupported func 0x%08X\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"cpsw\00", align 1
@cpsw_sl_reg_map_cpsw = internal constant [11 x i16] [i16 0, i16 4, i16 8, i16 12, i16 16, i16 20, i16 24, i16 28, i16 32, i16 36, i16 40], align 2
@.str.6 = private unnamed_addr constant [8 x i8] c"66ak2hk\00", align 1
@cpsw_sl_reg_map_66ak2hk = internal constant [11 x i16] [i16 0, i16 4, i16 8, i16 12, i16 16, i16 -1, i16 24, i16 28, i16 32, i16 36, i16 -1], align 2
@.str.7 = private unnamed_addr constant [12 x i8] c"66ak2x_xgbe\00", align 1
@cpsw_sl_reg_map_66ak2x_xgbe = internal constant [11 x i16] [i16 0, i16 4, i16 8, i16 12, i16 16, i16 -1, i16 24, i16 28, i16 32, i16 -1, i16 40], align 2
@.str.8 = private unnamed_addr constant [8 x i8] c"66ak2el\00", align 1
@cpsw_sl_reg_map_66ak2elg_am65 = internal constant [11 x i16] [i16 -1, i16 0, i16 4, i16 8, i16 -1, i16 12, i16 16, i16 64, i16 112, i16 -1, i16 116], align 2
@.str.9 = private unnamed_addr constant [7 x i8] c"66ak2g\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"am65\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpsw_sl_reg_read(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.cpsw_sl, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i16, ptr %4, i32 %1
  %6 = load i16, ptr %5, align 2
  %7 = icmp eq i16 %6, -1
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str, i32 noundef 65535) #4
  br label %16

10:                                               ; preds = %2
  %11 = zext i16 %6 to i32
  %12 = getelementptr inbounds %struct.cpsw_sl, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 %11
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  br label %16

16:                                               ; preds = %10, %8
  %17 = phi i32 [ 0, %8 ], [ %15, %10 ]
  ret i32 %17
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpsw_sl_reg_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.cpsw_sl, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i16, ptr %5, i32 %1
  %7 = load i16, ptr %6, align 2
  %8 = icmp eq i16 %7, -1
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.1, i32 noundef 65535) #4
  br label %19

11:                                               ; preds = %3
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %12 = getelementptr inbounds %struct.cpsw_sl, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %4, align 4
  %15 = getelementptr i16, ptr %14, i32 %1
  %16 = load i16, ptr %15, align 2
  %17 = zext i16 %16 to i32
  %18 = getelementptr i8, ptr %13, i32 %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %2) #5, !srcloc !11
  br label %19

19:                                               ; preds = %11, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @cpsw_sl_get(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 20, i32 noundef 3520) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %42, label %6

6:                                                ; preds = %3
  store ptr %1, ptr %4, align 4
  %7 = getelementptr inbounds %struct.cpsw_sl, ptr %4, i32 0, i32 1
  store ptr %2, ptr %7, align 4
  %8 = icmp eq ptr %0, null
  br i1 %8, label %27, label %9

9:                                                ; preds = %6
  %10 = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef nonnull dereferenceable(5) @.str.5) #5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %28, label %12

12:                                               ; preds = %9
  %13 = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef nonnull dereferenceable(8) @.str.6) #5
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %12
  %16 = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef nonnull dereferenceable(12) @.str.7) #5
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %15
  %19 = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef nonnull dereferenceable(8) @.str.8) #5
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %18
  %22 = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef nonnull dereferenceable(7) @.str.9) #5
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef nonnull dereferenceable(5) @.str.10) #5
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24, %6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef %0) #4
  br label %42

28:                                               ; preds = %24, %21, %18, %15, %12, %9
  %29 = phi ptr [ getelementptr inbounds ([7 x %struct.cpsw_sl_dev_id], ptr @cpsw_sl_id_match, i32 0, i32 4), %21 ], [ getelementptr inbounds ([7 x %struct.cpsw_sl_dev_id], ptr @cpsw_sl_id_match, i32 0, i32 3), %18 ], [ getelementptr inbounds ([7 x %struct.cpsw_sl_dev_id], ptr @cpsw_sl_id_match, i32 0, i32 2), %15 ], [ getelementptr inbounds ([7 x %struct.cpsw_sl_dev_id], ptr @cpsw_sl_id_match, i32 0, i32 1), %12 ], [ @cpsw_sl_id_match, %9 ], [ getelementptr inbounds ([7 x %struct.cpsw_sl_dev_id], ptr @cpsw_sl_id_match, i32 0, i32 5), %24 ]
  %30 = getelementptr inbounds %struct.cpsw_sl_dev_id, ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.cpsw_sl, ptr %4, i32 0, i32 2
  store ptr %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.cpsw_sl_dev_id, ptr %29, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.cpsw_sl, ptr %4, i32 0, i32 3
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.cpsw_sl_dev_id, ptr %29, i32 0, i32 4
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.cpsw_sl, ptr %4, i32 0, i32 4
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.cpsw_sl_dev_id, ptr %29, i32 0, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr i8, ptr %2, i32 %40
  store ptr %41, ptr %7, align 4
  br label %42

42:                                               ; preds = %28, %27, %3
  %43 = phi ptr [ %4, %28 ], [ inttoptr (i32 -22 to ptr), %27 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpsw_sl_reset(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load volatile i32, ptr @jiffies, align 64
  %4 = tail call i32 @__msecs_to_jiffies(i32 noundef %1) #5
  %5 = getelementptr inbounds %struct.cpsw_sl, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i16, ptr %6, i32 3
  %8 = load i16, ptr %7, align 2
  %9 = icmp eq i16 %8, -1
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.1, i32 noundef 65535) #4
  br label %20

12:                                               ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %13 = getelementptr inbounds %struct.cpsw_sl, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %5, align 4
  %16 = getelementptr i16, ptr %15, i32 3
  %17 = load i16, ptr %16, align 2
  %18 = zext i16 %17 to i32
  %19 = getelementptr i8, ptr %14, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 1) #5, !srcloc !11
  br label %20

20:                                               ; preds = %12, %10
  %21 = getelementptr inbounds %struct.cpsw_sl, ptr %0, i32 0, i32 1
  %22 = add i32 %4, %3
  br label %23

23:                                               ; preds = %37, %20
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #5
  %24 = load ptr, ptr %5, align 4
  %25 = getelementptr i16, ptr %24, i32 3
  %26 = load i16, ptr %25, align 2
  %27 = icmp eq i16 %26, -1
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str, i32 noundef 65535) #4
  br label %41

30:                                               ; preds = %23
  %31 = zext i16 %26 to i32
  %32 = load ptr, ptr %21, align 4
  %33 = getelementptr i8, ptr %32, i32 %31
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %30
  %38 = load volatile i32, ptr @jiffies, align 64
  %39 = sub i32 %38, %22
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %23, label %41

41:                                               ; preds = %37, %30, %28
  %42 = load ptr, ptr %5, align 4
  %43 = getelementptr i16, ptr %42, i32 3
  %44 = load i16, ptr %43, align 2
  %45 = icmp eq i16 %44, -1
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str, i32 noundef 65535) #4
  br label %57

48:                                               ; preds = %41
  %49 = zext i16 %44 to i32
  %50 = load ptr, ptr %21, align 4
  %51 = getelementptr i8, ptr %50, i32 %49
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %53 = and i32 %52, 1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %48
  %56 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.3) #4
  br label %57

57:                                               ; preds = %55, %48, %46
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpsw_sl_ctl_set(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.cpsw_sl, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = xor i32 %4, -1
  %6 = and i32 %5, %1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.4, i32 noundef %6) #4
  br label %41

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.cpsw_sl, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i16, ptr %12, i32 1
  %14 = load i16, ptr %13, align 2
  %15 = icmp eq i16 %14, -1
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str, i32 noundef 65535) #4
  br label %24

18:                                               ; preds = %10
  %19 = zext i16 %14 to i32
  %20 = getelementptr inbounds %struct.cpsw_sl, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 %19
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  br label %24

24:                                               ; preds = %18, %16
  %25 = phi i32 [ 0, %16 ], [ %23, %18 ]
  %26 = load ptr, ptr %11, align 4
  %27 = getelementptr i16, ptr %26, i32 1
  %28 = load i16, ptr %27, align 2
  %29 = icmp eq i16 %28, -1
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.1, i32 noundef 65535) #4
  br label %41

32:                                               ; preds = %24
  %33 = or i32 %25, %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %34 = getelementptr inbounds %struct.cpsw_sl, ptr %0, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = load ptr, ptr %11, align 4
  %37 = getelementptr i16, ptr %36, i32 1
  %38 = load i16, ptr %37, align 2
  %39 = zext i16 %38 to i32
  %40 = getelementptr i8, ptr %35, i32 %39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %33) #5, !srcloc !11
  br label %41

41:                                               ; preds = %32, %30, %8
  %42 = phi i32 [ -22, %8 ], [ 0, %30 ], [ 0, %32 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpsw_sl_ctl_clr(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.cpsw_sl, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = xor i32 %4, -1
  %6 = and i32 %5, %1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.4, i32 noundef %6) #4
  br label %42

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.cpsw_sl, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i16, ptr %12, i32 1
  %14 = load i16, ptr %13, align 2
  %15 = icmp eq i16 %14, -1
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str, i32 noundef 65535) #4
  br label %24

18:                                               ; preds = %10
  %19 = zext i16 %14 to i32
  %20 = getelementptr inbounds %struct.cpsw_sl, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 %19
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  br label %24

24:                                               ; preds = %18, %16
  %25 = phi i32 [ 0, %16 ], [ %23, %18 ]
  %26 = load ptr, ptr %11, align 4
  %27 = getelementptr i16, ptr %26, i32 1
  %28 = load i16, ptr %27, align 2
  %29 = icmp eq i16 %28, -1
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.1, i32 noundef 65535) #4
  br label %42

32:                                               ; preds = %24
  %33 = xor i32 %1, -1
  %34 = and i32 %25, %33
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %35 = getelementptr inbounds %struct.cpsw_sl, ptr %0, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = load ptr, ptr %11, align 4
  %38 = getelementptr i16, ptr %37, i32 1
  %39 = load i16, ptr %38, align 2
  %40 = zext i16 %39 to i32
  %41 = getelementptr i8, ptr %36, i32 %40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %34) #5, !srcloc !11
  br label %42

42:                                               ; preds = %32, %30, %8
  %43 = phi i32 [ -22, %8 ], [ 0, %30 ], [ 0, %32 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpsw_sl_ctl_reset(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cpsw_sl, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i16, ptr %3, i32 1
  %5 = load i16, ptr %4, align 2
  %6 = icmp eq i16 %5, -1
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.1, i32 noundef 65535) #4
  br label %17

9:                                                ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %10 = getelementptr inbounds %struct.cpsw_sl, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr i16, ptr %12, i32 1
  %14 = load i16, ptr %13, align 2
  %15 = zext i16 %14 to i32
  %16 = getelementptr i8, ptr %11, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 0) #5, !srcloc !11
  br label %17

17:                                               ; preds = %9, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpsw_sl_wait_for_idle(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load volatile i32, ptr @jiffies, align 64
  %4 = tail call i32 @__msecs_to_jiffies(i32 noundef %1) #5
  %5 = getelementptr inbounds %struct.cpsw_sl, ptr %0, i32 0, i32 2
  %6 = getelementptr inbounds %struct.cpsw_sl, ptr %0, i32 0, i32 1
  %7 = getelementptr inbounds %struct.cpsw_sl, ptr %0, i32 0, i32 4
  %8 = add i32 %4, %3
  br label %9

9:                                                ; preds = %26, %2
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #5
  %10 = load ptr, ptr %5, align 4
  %11 = getelementptr i16, ptr %10, i32 2
  %12 = load i16, ptr %11, align 2
  %13 = icmp eq i16 %12, -1
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str, i32 noundef 65535) #4
  br label %21

16:                                               ; preds = %9
  %17 = zext i16 %12 to i32
  %18 = load ptr, ptr %6, align 4
  %19 = getelementptr i8, ptr %18, i32 %17
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  br label %21

21:                                               ; preds = %16, %14
  %22 = phi i32 [ 0, %14 ], [ %20, %16 ]
  %23 = load i32, ptr %7, align 4
  %24 = and i32 %23, %22
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load volatile i32, ptr @jiffies, align 64
  %28 = sub i32 %27, %8
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %9, label %30

30:                                               ; preds = %26, %21
  %31 = load ptr, ptr %5, align 4
  %32 = getelementptr i16, ptr %31, i32 2
  %33 = load i16, ptr %32, align 2
  %34 = icmp eq i16 %33, -1
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str, i32 noundef 65535) #4
  br label %42

37:                                               ; preds = %30
  %38 = zext i16 %33 to i32
  %39 = load ptr, ptr %6, align 4
  %40 = getelementptr i8, ptr %39, i32 %38
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  br label %42

42:                                               ; preds = %37, %35
  %43 = phi i32 [ 0, %35 ], [ %41, %37 ]
  %44 = load i32, ptr %7, align 4
  %45 = and i32 %44, %43
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.3) #4
  br label %49

49:                                               ; preds = %47, %42
  %50 = phi i32 [ -110, %47 ], [ 0, %42 ]
  ret i32 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind }
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
!8 = !{i64 2390284}
!9 = !{i64 2151186037}
!10 = !{i64 2151188143}
!11 = !{i64 2389866}
