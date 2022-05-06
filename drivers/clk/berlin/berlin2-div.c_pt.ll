; ModuleID = '/llk/IR/drivers/clk/berlin/berlin2-div.c_pt.bc'
source_filename = "../drivers/clk/berlin/berlin2-div.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.berlin2_div = type { %struct.clk_hw, ptr, %struct.berlin2_div_map, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.berlin2_div_map = type { i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8 }

@berlin2_div_mux_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @berlin2_div_set_parent, ptr @berlin2_div_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@berlin2_div_rate_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @berlin2_div_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@berlin2_div_gate_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @berlin2_div_enable, ptr @berlin2_div_disable, ptr @berlin2_div_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@clk_div = internal unnamed_addr constant [8 x i8] c"\01\02\04\06\08\0C\01\01", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local ptr @berlin2_div_register(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7) local_unnamed_addr #0 section ".init.text" {
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 40) #5
  %11 = icmp eq ptr %10, null
  br i1 %11, label %24, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.berlin2_div, ptr %10, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(18) %13, ptr noundef align 2 dereferenceable(18) %0, i32 18, i1 false)
  %14 = getelementptr inbounds %struct.berlin2_div, ptr %10, i32 0, i32 1
  store ptr %1, ptr %14, align 4
  %15 = getelementptr inbounds %struct.berlin2_div, ptr %10, i32 0, i32 3
  store ptr %7, ptr %15, align 4
  %16 = zext i8 %3 to i32
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, ptr null, ptr @berlin2_div_gate_ops
  %20 = and i32 %16, 2
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, ptr null, ptr @berlin2_div_mux_ops
  %23 = tail call ptr @clk_hw_register_composite(ptr noundef null, ptr noundef %2, ptr noundef %4, i32 noundef %5, ptr noundef nonnull %10, ptr noundef %22, ptr noundef nonnull %10, ptr noundef nonnull @berlin2_div_rate_ops, ptr noundef nonnull %10, ptr noundef %19, i32 noundef %6) #6
  br label %24

24:                                               ; preds = %12, %8
  %25 = phi ptr [ %23, %12 ], [ inttoptr (i32 -12 to ptr), %8 ]
  ret ptr %25
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_register_composite(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @berlin2_div_set_parent(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #3 {
  %3 = getelementptr inbounds %struct.berlin2_div, ptr %0, i32 0, i32 2
  %4 = getelementptr inbounds %struct.berlin2_div, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @_raw_spin_lock(ptr noundef nonnull %5) #6
  br label %8

8:                                                ; preds = %7, %2
  %9 = getelementptr inbounds %struct.berlin2_div, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.berlin2_div, ptr %0, i32 0, i32 2, i32 1
  %12 = load i16, ptr %11, align 2
  %13 = zext i16 %12 to i32
  %14 = getelementptr i8, ptr %10, i32 %13
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #6, !srcloc !8
  %16 = icmp eq i8 %1, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.berlin2_div, ptr %0, i32 0, i32 2, i32 7
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = shl nuw i32 1, %20
  %22 = xor i32 %21, -1
  %23 = and i32 %15, %22
  %24 = load ptr, ptr %9, align 4
  %25 = load i16, ptr %11, align 2
  %26 = zext i16 %25 to i32
  %27 = getelementptr i8, ptr %24, i32 %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %23) #6, !srcloc !9
  br label %57

28:                                               ; preds = %8
  %29 = zext i8 %1 to i32
  %30 = getelementptr inbounds %struct.berlin2_div, ptr %0, i32 0, i32 2, i32 7
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = shl nuw i32 1, %32
  %34 = or i32 %33, %15
  %35 = load ptr, ptr %9, align 4
  %36 = load i16, ptr %11, align 2
  %37 = zext i16 %36 to i32
  %38 = getelementptr i8, ptr %35, i32 %37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %34) #6, !srcloc !9
  %39 = load ptr, ptr %9, align 4
  %40 = load i16, ptr %3, align 2
  %41 = zext i16 %40 to i32
  %42 = getelementptr i8, ptr %39, i32 %41
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #6, !srcloc !8
  %44 = getelementptr inbounds %struct.berlin2_div, ptr %0, i32 0, i32 2, i32 6
  %45 = load i8, ptr %44, align 2
  %46 = zext i8 %45 to i32
  %47 = shl i32 7, %46
  %48 = xor i32 %47, -1
  %49 = and i32 %43, %48
  %50 = add nsw i32 %29, -1
  %51 = shl i32 %50, %46
  %52 = or i32 %49, %51
  %53 = load ptr, ptr %9, align 4
  %54 = load i16, ptr %3, align 2
  %55 = zext i16 %54 to i32
  %56 = getelementptr i8, ptr %53, i32 %55
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %52) #6, !srcloc !9
  br label %57

57:                                               ; preds = %28, %17
  %58 = load ptr, ptr %4, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !10
  %61 = load i16, ptr %58, align 4
  %62 = add i16 %61, 1
  store i16 %62, ptr %58, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !13
  br label %63

63:                                               ; preds = %60, %57
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @berlin2_div_get_parent(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.berlin2_div, ptr %0, i32 0, i32 2
  %3 = getelementptr inbounds %struct.berlin2_div, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @_raw_spin_lock(ptr noundef nonnull %4) #6
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %struct.berlin2_div, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.berlin2_div, ptr %0, i32 0, i32 2, i32 1
  %11 = load i16, ptr %10, align 2
  %12 = zext i16 %11 to i32
  %13 = getelementptr i8, ptr %9, i32 %12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #6, !srcloc !8
  %15 = getelementptr inbounds %struct.berlin2_div, ptr %0, i32 0, i32 2, i32 7
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = shl nuw i32 1, %17
  %19 = and i32 %18, %14
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %7
  %22 = load ptr, ptr %8, align 4
  %23 = load i16, ptr %2, align 2
  %24 = zext i16 %23 to i32
  %25 = getelementptr i8, ptr %22, i32 %24
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #6, !srcloc !8
  %27 = getelementptr inbounds %struct.berlin2_div, ptr %0, i32 0, i32 2, i32 6
  %28 = load i8, ptr %27, align 2
  %29 = zext i8 %28 to i32
  %30 = lshr i32 %26, %29
  %31 = trunc i32 %30 to i8
  %32 = and i8 %31, 7
  %33 = add nuw nsw i8 %32, 1
  br label %34

34:                                               ; preds = %21, %7
  %35 = phi i8 [ %33, %21 ], [ 0, %7 ]
  %36 = load ptr, ptr %3, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !10
  %39 = load i16, ptr %36, align 4
  %40 = add i16 %39, 1
  store i16 %40, ptr %36, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !13
  br label %41

41:                                               ; preds = %38, %34
  ret i8 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @berlin2_div_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.berlin2_div, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @_raw_spin_lock(ptr noundef nonnull %4) #6
  br label %7

7:                                                ; preds = %6, %2
  %8 = getelementptr inbounds %struct.berlin2_div, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.berlin2_div, ptr %0, i32 0, i32 2, i32 3
  %11 = load i16, ptr %10, align 2
  %12 = zext i16 %11 to i32
  %13 = getelementptr i8, ptr %9, i32 %12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #6, !srcloc !8
  %15 = getelementptr inbounds %struct.berlin2_div, ptr %0, i32 0, i32 2, i32 9
  %16 = load i8, ptr %15, align 1
  %17 = load ptr, ptr %8, align 4
  %18 = getelementptr inbounds %struct.berlin2_div, ptr %0, i32 0, i32 2, i32 4
  %19 = load i16, ptr %18, align 2
  %20 = zext i16 %19 to i32
  %21 = getelementptr i8, ptr %17, i32 %20
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #6, !srcloc !8
  %23 = getelementptr inbounds %struct.berlin2_div, ptr %0, i32 0, i32 2, i32 10
  %24 = load i8, ptr %23, align 2
  %25 = zext i8 %24 to i32
  %26 = shl nuw i32 1, %25
  %27 = and i32 %26, %22
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %7
  %30 = zext i8 %16 to i32
  %31 = shl nuw i32 1, %30
  %32 = and i32 %31, %14
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %49, label %34

34:                                               ; preds = %29
  %35 = load ptr, ptr %8, align 4
  %36 = getelementptr inbounds %struct.berlin2_div, ptr %0, i32 0, i32 2, i32 2
  %37 = load i16, ptr %36, align 2
  %38 = zext i16 %37 to i32
  %39 = getelementptr i8, ptr %35, i32 %38
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #6, !srcloc !8
  %41 = getelementptr inbounds %struct.berlin2_div, ptr %0, i32 0, i32 2, i32 8
  %42 = load i8, ptr %41, align 2
  %43 = zext i8 %42 to i32
  %44 = lshr i32 %40, %43
  %45 = and i32 %44, 7
  %46 = getelementptr [8 x i8], ptr @clk_div, i32 0, i32 %45
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  br label %49

49:                                               ; preds = %34, %29, %7
  %50 = phi i32 [ %48, %34 ], [ 3, %7 ], [ 1, %29 ]
  %51 = load ptr, ptr %3, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %49
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !10
  %54 = load i16, ptr %51, align 4
  %55 = add i16 %54, 1
  store i16 %55, ptr %51, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !13
  br label %56

56:                                               ; preds = %53, %49
  %57 = udiv i32 %1, %50
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @berlin2_div_enable(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.berlin2_div, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_raw_spin_lock(ptr noundef nonnull %3) #6
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.berlin2_div, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.berlin2_div, ptr %0, i32 0, i32 2, i32 5
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  %12 = getelementptr i8, ptr %8, i32 %11
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #6, !srcloc !8
  %14 = getelementptr inbounds %struct.berlin2_div, ptr %0, i32 0, i32 2, i32 11
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = shl nuw i32 1, %16
  %18 = or i32 %17, %13
  %19 = load ptr, ptr %7, align 4
  %20 = load i16, ptr %9, align 2
  %21 = zext i16 %20 to i32
  %22 = getelementptr i8, ptr %19, i32 %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %18) #6, !srcloc !9
  %23 = load ptr, ptr %2, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !10
  %26 = load i16, ptr %23, align 4
  %27 = add i16 %26, 1
  store i16 %27, ptr %23, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !13
  br label %28

28:                                               ; preds = %25, %6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @berlin2_div_disable(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.berlin2_div, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_raw_spin_lock(ptr noundef nonnull %3) #6
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.berlin2_div, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.berlin2_div, ptr %0, i32 0, i32 2, i32 5
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  %12 = getelementptr i8, ptr %8, i32 %11
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #6, !srcloc !8
  %14 = getelementptr inbounds %struct.berlin2_div, ptr %0, i32 0, i32 2, i32 11
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = shl nuw i32 1, %16
  %18 = xor i32 %17, -1
  %19 = and i32 %13, %18
  %20 = load ptr, ptr %7, align 4
  %21 = load i16, ptr %9, align 2
  %22 = zext i16 %21 to i32
  %23 = getelementptr i8, ptr %20, i32 %22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %19) #6, !srcloc !9
  %24 = load ptr, ptr %2, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !10
  %27 = load i16, ptr %24, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr %24, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !13
  br label %29

29:                                               ; preds = %26, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @berlin2_div_is_enabled(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.berlin2_div, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_raw_spin_lock(ptr noundef nonnull %3) #6
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.berlin2_div, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.berlin2_div, ptr %0, i32 0, i32 2, i32 5
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  %12 = getelementptr i8, ptr %8, i32 %11
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #6, !srcloc !8
  %14 = getelementptr inbounds %struct.berlin2_div, ptr %0, i32 0, i32 2, i32 11
  %15 = load i8, ptr %14, align 1
  %16 = load ptr, ptr %2, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !10
  %19 = load i16, ptr %16, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %16, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !13
  br label %21

21:                                               ; preds = %18, %6
  %22 = zext i8 %15 to i32
  %23 = lshr i32 %13, %22
  %24 = and i32 %23, 1
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind allocsize(2) }
attributes #6 = { nounwind }

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
!8 = !{i64 2847511}
!9 = !{i64 2847093}
!10 = !{i64 2149092060}
!11 = !{i64 2149087884}
!12 = !{i64 2149087959, i64 2149087986, i64 2149088033, i64 2149088055, i64 2149088083, i64 2149088103}
!13 = !{i64 2149115063}
