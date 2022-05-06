; ModuleID = '/llk/IR/arch/arm/vdso/vgettimeofday.c_pt.bc'
source_filename = "../arch/arm/vdso/vgettimeofday.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vdso_data = type { i32, i32, i64, i64, i32, i32, %union.anon, i32, i32, i32, i32, %struct.arch_vdso_data }
%union.anon = type { [12 x %struct.vdso_timestamp] }
%struct.vdso_timestamp = type { i64, i64 }
%struct.arch_vdso_data = type {}
%struct.old_timespec32 = type { i32, i32 }
%struct.__kernel_timespec = type { i64, i64 }
%struct.__kernel_old_timeval = type { i32, i32 }
%struct.timezone = type { i32, i32 }

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @__vdso_clock_gettime(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = tail call ptr @__get_datapage() #4
  %5 = icmp ugt i32 %0, 15
  br i1 %5, label %91, label %6, !prof !9

6:                                                ; preds = %2
  %7 = shl nuw nsw i32 1, %0
  %8 = and i32 %7, 2179
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %35, !prof !9

10:                                               ; preds = %6
  %11 = and i32 %7, 96
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %31, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.vdso_data, ptr %4, i32 0, i32 6
  %15 = getelementptr [12 x %struct.vdso_timestamp], ptr %14, i32 0, i32 %0
  %16 = getelementptr [12 x %struct.vdso_timestamp], ptr %14, i32 0, i32 %0, i32 1
  br label %17

17:                                               ; preds = %25, %13
  %18 = load volatile i32, ptr %4, align 8
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %21, %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !10
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !11
  %22 = load volatile i32, ptr %4, align 8
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %21

25:                                               ; preds = %21, %17
  %26 = phi i32 [ %18, %17 ], [ %22, %21 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !12
  %27 = load i64, ptr %15, align 8
  %28 = load i64, ptr %16, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !13
  %29 = load volatile i32, ptr %4, align 8
  %30 = icmp eq i32 %29, %26
  br i1 %30, label %93, label %17, !prof !14

31:                                               ; preds = %10
  %32 = icmp eq i32 %0, 4
  br i1 %32, label %33, label %91

33:                                               ; preds = %31
  %34 = getelementptr %struct.vdso_data, ptr %4, i32 1
  br label %35

35:                                               ; preds = %33, %6
  %36 = phi ptr [ %34, %33 ], [ %4, %6 ]
  %37 = getelementptr inbounds %struct.vdso_data, ptr %36, i32 0, i32 6
  %38 = getelementptr [12 x %struct.vdso_timestamp], ptr %37, i32 0, i32 %0
  %39 = getelementptr inbounds %struct.vdso_data, ptr %36, i32 0, i32 1
  %40 = getelementptr [12 x %struct.vdso_timestamp], ptr %37, i32 0, i32 %0, i32 1
  %41 = getelementptr inbounds %struct.vdso_data, ptr %36, i32 0, i32 2
  %42 = getelementptr inbounds %struct.vdso_data, ptr %36, i32 0, i32 3
  %43 = getelementptr inbounds %struct.vdso_data, ptr %36, i32 0, i32 4
  %44 = getelementptr inbounds %struct.vdso_data, ptr %36, i32 0, i32 5
  br label %45

45:                                               ; preds = %57, %35
  %46 = load volatile i32, ptr %36, align 8
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %53, label %49, !prof !14

49:                                               ; preds = %49, %45
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !15
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !16
  %50 = load volatile i32, ptr %36, align 8
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %49, !prof !14

53:                                               ; preds = %49, %45
  %54 = phi i32 [ %46, %45 ], [ %50, %49 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !17
  %55 = load i32, ptr %39, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %91, label %57, !prof !9

57:                                               ; preds = %53
  tail call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !18
  %58 = tail call i64 asm sideeffect "mrrc p15, 1, ${0:Q}, ${0:R}, c14", "=r"() #5, !srcloc !19
  %59 = load i64, ptr %40, align 8
  %60 = load i64, ptr %41, align 8
  %61 = load i64, ptr %42, align 8
  %62 = load i32, ptr %43, align 8
  %63 = load i32, ptr %44, align 4
  %64 = load i64, ptr %38, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !13
  %65 = load volatile i32, ptr %36, align 8
  %66 = icmp eq i32 %65, %54
  br i1 %66, label %67, label %45, !prof !14

67:                                               ; preds = %57
  %68 = sub i64 %58, %60
  %69 = and i64 %68, %61
  %70 = zext i32 %62 to i64
  %71 = mul i64 %69, %70
  %72 = add i64 %71, %59
  %73 = zext i32 %63 to i64
  %74 = lshr i64 %72, %73
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #5
  store i64 %74, ptr %3, align 8
  %75 = icmp ugt i64 %74, 999999999
  %76 = trunc i64 %74 to i32
  br i1 %75, label %77, label %86

77:                                               ; preds = %77, %67
  %78 = phi i32 [ %82, %77 ], [ 0, %67 ]
  %79 = phi i64 [ %81, %77 ], [ %74, %67 ]
  call void asm "", "=*rm,0"(ptr nonnull elementtype(i64) %3, i64 %79) #5, !srcloc !20
  %80 = load i64, ptr %3, align 8
  %81 = add i64 %80, -1000000000
  store i64 %81, ptr %3, align 8
  %82 = add i32 %78, 1
  %83 = icmp ugt i64 %81, 999999999
  br i1 %83, label %77, label %84

84:                                               ; preds = %77
  %85 = trunc i64 %81 to i32
  br label %86

86:                                               ; preds = %84, %67
  %87 = phi i32 [ %76, %67 ], [ %85, %84 ]
  %88 = phi i32 [ 0, %67 ], [ %82, %84 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #5
  %89 = trunc i64 %64 to i32
  %90 = add i32 %88, %89
  br label %96

91:                                               ; preds = %53, %31, %2
  %92 = tail call i32 asm sideeffect "\09swi #0\0A", "={r0},{r0},{r1},{r7},~{memory}"(i32 %0, ptr %1, i32 263) #5, !srcloc !21
  br label %100

93:                                               ; preds = %25
  %94 = trunc i64 %28 to i32
  %95 = trunc i64 %27 to i32
  br label %96

96:                                               ; preds = %93, %86
  %97 = phi i32 [ %90, %86 ], [ %95, %93 ]
  %98 = phi i32 [ %87, %86 ], [ %94, %93 ]
  store i32 %97, ptr %1, align 4
  %99 = getelementptr inbounds %struct.old_timespec32, ptr %1, i32 0, i32 1
  store i32 %98, ptr %99, align 4
  br label %100

100:                                              ; preds = %96, %91
  %101 = phi i32 [ %92, %91 ], [ 0, %96 ]
  ret i32 %101
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @__vdso_clock_gettime64(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = tail call ptr @__get_datapage() #4
  %5 = icmp ugt i32 %0, 15
  br i1 %5, label %90, label %6, !prof !9

6:                                                ; preds = %2
  %7 = shl nuw nsw i32 1, %0
  %8 = and i32 %7, 2179
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %36, !prof !9

10:                                               ; preds = %6
  %11 = and i32 %7, 96
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %32, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.vdso_data, ptr %4, i32 0, i32 6
  %15 = getelementptr [12 x %struct.vdso_timestamp], ptr %14, i32 0, i32 %0
  %16 = getelementptr [12 x %struct.vdso_timestamp], ptr %14, i32 0, i32 %0, i32 1
  %17 = getelementptr inbounds %struct.__kernel_timespec, ptr %1, i32 0, i32 1
  br label %18

18:                                               ; preds = %26, %13
  %19 = load volatile i32, ptr %4, align 8
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %22, %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !10
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !11
  %23 = load volatile i32, ptr %4, align 8
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %22

26:                                               ; preds = %22, %18
  %27 = phi i32 [ %19, %18 ], [ %23, %22 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !12
  %28 = load i64, ptr %15, align 8
  store i64 %28, ptr %1, align 8
  %29 = load i64, ptr %16, align 8
  store i64 %29, ptr %17, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !13
  %30 = load volatile i32, ptr %4, align 8
  %31 = icmp eq i32 %30, %27
  br i1 %31, label %92, label %18, !prof !14

32:                                               ; preds = %10
  %33 = icmp eq i32 %0, 4
  br i1 %33, label %34, label %90

34:                                               ; preds = %32
  %35 = getelementptr %struct.vdso_data, ptr %4, i32 1
  br label %36

36:                                               ; preds = %34, %6
  %37 = phi ptr [ %35, %34 ], [ %4, %6 ]
  %38 = getelementptr inbounds %struct.vdso_data, ptr %37, i32 0, i32 6
  %39 = getelementptr [12 x %struct.vdso_timestamp], ptr %38, i32 0, i32 %0
  %40 = getelementptr inbounds %struct.vdso_data, ptr %37, i32 0, i32 1
  %41 = getelementptr [12 x %struct.vdso_timestamp], ptr %38, i32 0, i32 %0, i32 1
  %42 = getelementptr inbounds %struct.vdso_data, ptr %37, i32 0, i32 2
  %43 = getelementptr inbounds %struct.vdso_data, ptr %37, i32 0, i32 3
  %44 = getelementptr inbounds %struct.vdso_data, ptr %37, i32 0, i32 4
  %45 = getelementptr inbounds %struct.vdso_data, ptr %37, i32 0, i32 5
  br label %46

46:                                               ; preds = %58, %36
  %47 = load volatile i32, ptr %37, align 8
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %54, label %50, !prof !14

50:                                               ; preds = %50, %46
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !15
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !16
  %51 = load volatile i32, ptr %37, align 8
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %50, !prof !14

54:                                               ; preds = %50, %46
  %55 = phi i32 [ %47, %46 ], [ %51, %50 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !17
  %56 = load i32, ptr %40, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %90, label %58, !prof !9

58:                                               ; preds = %54
  tail call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !18
  %59 = tail call i64 asm sideeffect "mrrc p15, 1, ${0:Q}, ${0:R}, c14", "=r"() #5, !srcloc !19
  %60 = load i64, ptr %41, align 8
  %61 = load i64, ptr %42, align 8
  %62 = load i64, ptr %43, align 8
  %63 = load i32, ptr %44, align 8
  %64 = load i32, ptr %45, align 4
  %65 = load i64, ptr %39, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !13
  %66 = load volatile i32, ptr %37, align 8
  %67 = icmp eq i32 %66, %55
  br i1 %67, label %68, label %46, !prof !14

68:                                               ; preds = %58
  %69 = sub i64 %59, %61
  %70 = and i64 %69, %62
  %71 = zext i32 %63 to i64
  %72 = mul i64 %70, %71
  %73 = add i64 %72, %60
  %74 = zext i32 %64 to i64
  %75 = lshr i64 %73, %74
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #5
  store i64 %75, ptr %3, align 8
  %76 = icmp ugt i64 %75, 999999999
  br i1 %76, label %77, label %84

77:                                               ; preds = %77, %68
  %78 = phi i32 [ %82, %77 ], [ 0, %68 ]
  %79 = phi i64 [ %81, %77 ], [ %75, %68 ]
  call void asm "", "=*rm,0"(ptr nonnull elementtype(i64) %3, i64 %79) #5, !srcloc !20
  %80 = load i64, ptr %3, align 8
  %81 = add i64 %80, -1000000000
  store i64 %81, ptr %3, align 8
  %82 = add i32 %78, 1
  %83 = icmp ugt i64 %81, 999999999
  br i1 %83, label %77, label %84

84:                                               ; preds = %77, %68
  %85 = phi i64 [ %75, %68 ], [ %81, %77 ]
  %86 = phi i32 [ 0, %68 ], [ %82, %77 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #5
  %87 = zext i32 %86 to i64
  %88 = add i64 %65, %87
  store i64 %88, ptr %1, align 8
  %89 = getelementptr inbounds %struct.__kernel_timespec, ptr %1, i32 0, i32 1
  store i64 %85, ptr %89, align 8
  br label %92

90:                                               ; preds = %54, %32, %2
  %91 = tail call i32 asm sideeffect "\09swi #0\0A", "={r0},{r0},{r1},{r7},~{memory}"(i32 %0, ptr %1, i32 403) #5, !srcloc !22
  br label %92

92:                                               ; preds = %90, %84, %26
  %93 = phi i32 [ %91, %90 ], [ 0, %84 ], [ 0, %26 ]
  ret i32 %93
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @__vdso_gettimeofday(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = tail call ptr @__get_datapage() #4
  %5 = icmp eq ptr %0, null
  br i1 %5, label %64, label %6, !prof !9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.vdso_data, ptr %4, i32 0, i32 6
  %8 = getelementptr inbounds %struct.vdso_data, ptr %4, i32 0, i32 1
  %9 = getelementptr %struct.vdso_data, ptr %4, i32 0, i32 6, i32 0, i32 0, i32 1
  %10 = getelementptr inbounds %struct.vdso_data, ptr %4, i32 0, i32 2
  %11 = getelementptr inbounds %struct.vdso_data, ptr %4, i32 0, i32 3
  %12 = getelementptr inbounds %struct.vdso_data, ptr %4, i32 0, i32 4
  %13 = getelementptr inbounds %struct.vdso_data, ptr %4, i32 0, i32 5
  br label %14

14:                                               ; preds = %26, %6
  %15 = load volatile i32, ptr %4, align 8
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18, !prof !14

18:                                               ; preds = %18, %14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !15
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !16
  %19 = load volatile i32, ptr %4, align 8
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %18, !prof !14

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %15, %14 ], [ %19, %18 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !17
  %24 = load i32, ptr %8, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %62, label %26, !prof !9

26:                                               ; preds = %22
  tail call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !18
  %27 = tail call i64 asm sideeffect "mrrc p15, 1, ${0:Q}, ${0:R}, c14", "=r"() #5, !srcloc !19
  %28 = load i64, ptr %9, align 8
  %29 = load i64, ptr %10, align 8
  %30 = load i64, ptr %11, align 8
  %31 = load i32, ptr %12, align 8
  %32 = load i32, ptr %13, align 4
  %33 = load i64, ptr %7, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !13
  %34 = load volatile i32, ptr %4, align 8
  %35 = icmp eq i32 %34, %23
  br i1 %35, label %36, label %14, !prof !14

36:                                               ; preds = %26
  %37 = sub i64 %27, %29
  %38 = and i64 %37, %30
  %39 = zext i32 %31 to i64
  %40 = mul i64 %38, %39
  %41 = add i64 %40, %28
  %42 = zext i32 %32 to i64
  %43 = lshr i64 %41, %42
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #5
  store i64 %43, ptr %3, align 8
  %44 = icmp ugt i64 %43, 999999999
  %45 = trunc i64 %43 to i32
  br i1 %44, label %46, label %55

46:                                               ; preds = %46, %36
  %47 = phi i32 [ %51, %46 ], [ 0, %36 ]
  %48 = phi i64 [ %50, %46 ], [ %43, %36 ]
  call void asm "", "=*rm,0"(ptr nonnull elementtype(i64) %3, i64 %48) #5, !srcloc !20
  %49 = load i64, ptr %3, align 8
  %50 = add i64 %49, -1000000000
  store i64 %50, ptr %3, align 8
  %51 = add i32 %47, 1
  %52 = icmp ugt i64 %50, 999999999
  br i1 %52, label %46, label %53

53:                                               ; preds = %46
  %54 = trunc i64 %50 to i32
  br label %55

55:                                               ; preds = %53, %36
  %56 = phi i32 [ %45, %36 ], [ %54, %53 ]
  %57 = phi i32 [ 0, %36 ], [ %51, %53 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #5
  %58 = trunc i64 %33 to i32
  %59 = add i32 %57, %58
  store i32 %59, ptr %0, align 4
  %60 = udiv i32 %56, 1000
  %61 = getelementptr inbounds %struct.__kernel_old_timeval, ptr %0, i32 0, i32 1
  store i32 %60, ptr %61, align 4
  br label %64

62:                                               ; preds = %22
  %63 = tail call i32 asm sideeffect "\09swi #0\0A", "={r0},{r0},{r1},{r7},~{memory}"(ptr nonnull %0, ptr %1, i32 78) #5, !srcloc !23
  br label %72

64:                                               ; preds = %55, %2
  %65 = icmp eq ptr %1, null
  br i1 %65, label %72, label %66, !prof !14

66:                                               ; preds = %64
  %67 = getelementptr inbounds %struct.vdso_data, ptr %4, i32 0, i32 7
  %68 = load i32, ptr %67, align 8
  store i32 %68, ptr %1, align 4
  %69 = getelementptr inbounds %struct.vdso_data, ptr %4, i32 0, i32 8
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr inbounds %struct.timezone, ptr %1, i32 0, i32 1
  store i32 %70, ptr %71, align 4
  br label %72

72:                                               ; preds = %66, %64, %62
  %73 = phi i32 [ %63, %62 ], [ 0, %66 ], [ 0, %64 ]
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @__vdso_clock_getres(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @__get_datapage() #4
  %4 = icmp ugt i32 %0, 15
  br i1 %4, label %15, label %5, !prof !9

5:                                                ; preds = %2
  %6 = shl nuw nsw i32 1, %0
  %7 = and i32 %6, 2195
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.vdso_data, ptr %3, i32 0, i32 9
  %11 = load volatile i32, ptr %10, align 8
  br label %17

12:                                               ; preds = %5
  %13 = and i32 %6, 96
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12, %2
  %16 = tail call i32 asm sideeffect "       swi #0\0A", "={r0},{r0},{r1},{r7},~{memory}"(i32 %0, ptr %1, i32 264) #5, !srcloc !24
  br label %22

17:                                               ; preds = %12, %9
  %18 = phi i32 [ %11, %9 ], [ 10000000, %12 ]
  %19 = icmp eq ptr %1, null
  br i1 %19, label %22, label %20, !prof !9

20:                                               ; preds = %17
  store i32 0, ptr %1, align 4
  %21 = getelementptr inbounds %struct.old_timespec32, ptr %1, i32 0, i32 1
  store i32 %18, ptr %21, align 4
  br label %22

22:                                               ; preds = %20, %17, %15
  %23 = phi i32 [ %16, %15 ], [ 0, %20 ], [ 0, %17 ]
  ret i32 %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone willreturn uwtable(sync)
define void @__aeabi_unwind_cpp_pr0() local_unnamed_addr #1 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone willreturn uwtable(sync)
define void @__aeabi_unwind_cpp_pr1() local_unnamed_addr #1 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone willreturn uwtable(sync)
define void @__aeabi_unwind_cpp_pr2() local_unnamed_addr #1 {
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare ptr @__get_datapage() local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2147810232}
!11 = !{i64 2147810074}
!12 = !{i64 2147810371}
!13 = !{i64 2147788078}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2147805845}
!16 = !{i64 2147805687}
!17 = !{i64 2147805984}
!18 = !{i64 2147781610}
!19 = !{i64 2147781964}
!20 = !{i64 250457}
!21 = !{i64 253586}
!22 = !{i64 253185}
!23 = !{i64 252781}
!24 = !{i64 254399}
