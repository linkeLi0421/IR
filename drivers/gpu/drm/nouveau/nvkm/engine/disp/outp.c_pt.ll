; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/disp/outp.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/outp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_outp_func = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_disp = type { ptr, %struct.nvkm_engine, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.nvkm_event, %struct.nvkm_event, %struct.anon.124 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.123 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.anon.123 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.124 = type { %struct.spinlock, ptr }
%struct.nvkm_outp = type { ptr, ptr, i32, %struct.dcb_output, ptr, %struct.list_head, ptr, i8, i8, ptr }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.137, i8 }
%union.anon.137 = type { %struct.anon.141 }
%struct.anon.141 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.121, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.121 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.anon.131 = type { ptr, ptr }
%struct.nvkm_ior = type { ptr, ptr, i32, i32, [8 x i8], %struct.list_head, i8, %struct.nvkm_ior_state, %struct.nvkm_ior_state, %struct.anon.135, %struct.anon.136 }
%struct.nvkm_ior_state = type { ptr, i32, i24 }
%struct.anon.135 = type { i8, i8, i8, i8 }
%struct.anon.136 = type { i8 }
%struct.nvkm_ior_func = type { %struct.anon.131, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.132, %struct.anon.133, %struct.anon.134 }
%struct.anon.132 = type { ptr, ptr }
%struct.anon.133 = type { [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.134 = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [37 x i8] c"%s: outp %02x:%04x:%04x: release %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"%s: outp %02x:%04x:%04x: acquire %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"%s: outp %02x:%04x:%04x: release %02x &= %02x %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"%s: outp %02x:%04x:%04x: acquire %02x |= %02x %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/disp/outp.c\00", align 1
@.str.5 = private unnamed_addr constant [87 x i8] c"%s: outp %02x:%04x:%04x: type %02x loc %d or %d link %d con %x edid %x bus %d head %x\0A\00", align 1
@nvkm_outp = internal constant %struct.nvkm_outp_func zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"%s: outp %02x:%04x:%04x: no route\0A\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"%s: outp %02x:%04x:%04x: no heads (%x %d %d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"%s: outp %02x:%04x:%04x: on %s link %x\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@switch.table.nvkm_outp_init = private unnamed_addr constant [7 x i32] [i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1], align 4
@switch.table.nvkm_outp_init.9 = private unnamed_addr constant [7 x i32] [i32 0, i32 1, i32 2, i32 3, i32 0, i32 0, i32 4], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_outp_route(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvkm_disp, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %94, label %8

5:                                                ; preds = %46
  %6 = load ptr, ptr %2, align 4
  %7 = icmp eq ptr %6, %2
  br i1 %7, label %94, label %49

8:                                                ; preds = %46, %1
  %9 = phi ptr [ %47, %46 ], [ %3, %1 ]
  %10 = getelementptr i8, ptr %9, i32 -24
  %11 = getelementptr i8, ptr %9, i32 12
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %46, label %14

14:                                               ; preds = %8
  %15 = getelementptr i8, ptr %9, i32 24
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %12, %16
  br i1 %17, label %46, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.nvkm_outp, ptr %12, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nvkm_disp, ptr %20, i32 0, i32 1, i32 1, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = icmp ugt i32 %22, 3
  br i1 %23, label %24, label %39

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.nvkm_disp, ptr %20, i32 0, i32 1, i32 1, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.nvkm_device, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.nvkm_disp, ptr %20, i32 0, i32 1, i32 1, i32 4
  %30 = getelementptr inbounds %struct.nvkm_outp, ptr %12, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.nvkm_outp, ptr %12, i32 0, i32 3, i32 1
  %33 = load i16, ptr %32, align 4
  %34 = zext i16 %33 to i32
  %35 = getelementptr inbounds %struct.nvkm_outp, ptr %12, i32 0, i32 3, i32 2
  %36 = load i16, ptr %35, align 2
  %37 = zext i16 %36 to i32
  %38 = getelementptr i8, ptr %9, i32 -8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %28, ptr noundef nonnull @.str, ptr noundef %29, i32 noundef %31, i32 noundef %34, i32 noundef %37, ptr noundef %38) #8
  br label %39

39:                                               ; preds = %24, %18
  %40 = load ptr, ptr %10, align 4
  %41 = getelementptr inbounds %struct.anon.131, ptr %40, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  tail call void %42(ptr noundef nonnull %12, ptr noundef null) #9
  br label %45

45:                                               ; preds = %44, %39
  store ptr null, ptr %11, align 4
  br label %46

46:                                               ; preds = %45, %14, %8
  %47 = load ptr, ptr %9, align 4
  %48 = icmp eq ptr %47, %2
  br i1 %48, label %5, label %8

49:                                               ; preds = %91, %5
  %50 = phi ptr [ %92, %91 ], [ %6, %5 ]
  %51 = getelementptr i8, ptr %50, i32 -24
  %52 = getelementptr i8, ptr %50, i32 24
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %91, label %55

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.nvkm_outp, ptr %53, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.nvkm_disp, ptr %57, i32 0, i32 1, i32 1, i32 5
  %59 = load i32, ptr %58, align 4
  %60 = icmp ugt i32 %59, 3
  br i1 %60, label %61, label %77

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.nvkm_disp, ptr %57, i32 0, i32 1, i32 1, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.nvkm_device, ptr %63, i32 0, i32 2
  %65 = load ptr, ptr %64, align 8
  %66 = getelementptr inbounds %struct.nvkm_disp, ptr %57, i32 0, i32 1, i32 1, i32 4
  %67 = getelementptr inbounds %struct.nvkm_outp, ptr %53, i32 0, i32 2
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr inbounds %struct.nvkm_outp, ptr %53, i32 0, i32 3, i32 1
  %70 = load i16, ptr %69, align 4
  %71 = zext i16 %70 to i32
  %72 = getelementptr inbounds %struct.nvkm_outp, ptr %53, i32 0, i32 3, i32 2
  %73 = load i16, ptr %72, align 2
  %74 = zext i16 %73 to i32
  %75 = getelementptr i8, ptr %50, i32 -8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %65, ptr noundef nonnull @.str.1, ptr noundef %66, i32 noundef %68, i32 noundef %71, i32 noundef %74, ptr noundef %75) #8
  %76 = load ptr, ptr %52, align 4
  br label %77

77:                                               ; preds = %61, %55
  %78 = phi ptr [ %76, %61 ], [ %53, %55 ]
  %79 = getelementptr i8, ptr %50, i32 12
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %78, %80
  br i1 %81, label %91, label %82

82:                                               ; preds = %77
  %83 = load ptr, ptr %51, align 4
  %84 = getelementptr inbounds %struct.anon.131, ptr %83, i32 0, i32 1
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %82
  tail call void %85(ptr noundef nonnull %53, ptr noundef %51) #9
  %88 = load ptr, ptr %52, align 4
  br label %89

89:                                               ; preds = %87, %82
  %90 = phi ptr [ %88, %87 ], [ %78, %82 ]
  store ptr %90, ptr %79, align 4
  br label %91

91:                                               ; preds = %89, %77, %49
  %92 = load ptr, ptr %50, align 4
  %93 = icmp eq ptr %92, %2
  br i1 %93, label %94, label %49

94:                                               ; preds = %91, %5, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_outp_release(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_disp, ptr %6, i32 0, i32 1, i32 1, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, 4
  br i1 %9, label %10, label %30

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.nvkm_disp, ptr %6, i32 0, i32 1, i32 1, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nvkm_device, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.nvkm_disp, ptr %6, i32 0, i32 1, i32 1, i32 4
  %16 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3, i32 1
  %19 = load i16, ptr %18, align 4
  %20 = zext i16 %19 to i32
  %21 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3, i32 2
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i32
  %24 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 8
  %25 = load i8, ptr %24, align 1
  %26 = and i8 %25, 3
  %27 = zext i8 %26 to i32
  %28 = zext i8 %1 to i32
  %29 = xor i32 %28, -1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str.2, ptr noundef %15, i32 noundef %17, i32 noundef %20, i32 noundef %23, i32 noundef %27, i32 noundef %29, ptr noundef %4) #8
  br label %30

30:                                               ; preds = %10, %2
  %31 = icmp eq ptr %4, null
  br i1 %31, label %53, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 8
  %34 = load i8, ptr %33, align 1
  %35 = and i8 %1, 3
  %36 = xor i8 %35, 3
  %37 = and i8 %36, %34
  %38 = and i8 %34, -4
  %39 = or i8 %37, %38
  store i8 %39, ptr %33, align 1
  %40 = icmp eq i8 %37, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %32
  %42 = load ptr, ptr %0, align 4
  %43 = getelementptr inbounds %struct.nvkm_outp_func, ptr %42, i32 0, i32 4
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = load ptr, ptr %3, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  tail call void %44(ptr noundef %0) #9
  br label %50

50:                                               ; preds = %49, %46, %41
  %51 = load ptr, ptr %3, align 4
  %52 = getelementptr inbounds %struct.nvkm_ior, ptr %51, i32 0, i32 8
  store ptr null, ptr %52, align 4
  store ptr null, ptr %3, align 4
  br label %53

53:                                               ; preds = %50, %32, %30
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_outp_acquire(ptr noundef %0, i8 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_disp, ptr %7, i32 0, i32 1, i32 1, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = icmp ugt i32 %9, 4
  br i1 %10, label %11, label %30

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.nvkm_disp, ptr %7, i32 0, i32 1, i32 1, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nvkm_device, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.nvkm_disp, ptr %7, i32 0, i32 1, i32 1, i32 4
  %17 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3, i32 1
  %20 = load i16, ptr %19, align 4
  %21 = zext i16 %20 to i32
  %22 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3, i32 2
  %23 = load i16, ptr %22, align 2
  %24 = zext i16 %23 to i32
  %25 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 8
  %26 = load i8, ptr %25, align 1
  %27 = and i8 %26, 3
  %28 = zext i8 %27 to i32
  %29 = zext i8 %1 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %15, ptr noundef nonnull @.str.3, ptr noundef %16, i32 noundef %18, i32 noundef %21, i32 noundef %24, i32 noundef %28, i32 noundef %29, ptr noundef %5) #8
  br label %30

30:                                               ; preds = %11, %3
  %31 = icmp eq ptr %5, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 8
  %34 = load i8, ptr %33, align 1
  %35 = and i8 %1, 3
  %36 = or i8 %34, %35
  store i8 %36, ptr %33, align 1
  br label %316

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3, i32 8
  %39 = load i8, ptr %38, align 4
  switch i8 %39, label %47 [
    i8 0, label %40
    i8 1, label %44
  ]

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3, i32 3
  %42 = load i32, ptr %41, align 4
  %43 = icmp ult i32 %42, 7
  br i1 %43, label %48, label %47

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3, i32 3
  %46 = load i32, ptr %45, align 4
  switch i32 %46, label %47 [
    i32 2, label %56
    i32 6, label %56
  ]

47:                                               ; preds = %48, %44, %40, %37
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 85, i32 noundef 9, ptr noundef null) #9
  br label %316

48:                                               ; preds = %40
  %49 = trunc i32 %42 to i8
  %50 = lshr i8 79, %49
  %51 = and i8 %50, 1
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %47, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds [7 x i32], ptr @switch.table.nvkm_outp_init, i32 0, i32 %42
  %55 = load i32, ptr %54, align 4
  br label %56

56:                                               ; preds = %53, %44, %44
  %57 = phi i32 [ 2, %44 ], [ 2, %44 ], [ %55, %53 ]
  %58 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 7
  %59 = load i8, ptr %58, align 4, !range !8
  %60 = icmp eq i8 %59, 0
  %61 = load ptr, ptr %6, align 4
  br i1 %60, label %87, label %62

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3, i32 9
  %64 = load i8, ptr %63, align 1
  %65 = tail call i8 @llvm.cttz.i8(i8 %64, i1 true), !range !9
  %66 = zext i8 %65 to i32
  %67 = icmp eq i8 %64, 0
  %68 = select i1 %67, i32 -1, i32 %66
  %69 = tail call ptr @nvkm_ior_find(ptr noundef %61, i32 noundef 1, i32 noundef %68) #9
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %72, !prof !10

71:                                               ; preds = %62
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 163, i32 noundef 9, ptr noundef null) #9
  br label %316

72:                                               ; preds = %62
  store ptr %69, ptr %4, align 4
  %73 = getelementptr inbounds %struct.nvkm_ior, ptr %69, i32 0, i32 8
  store ptr %0, ptr %73, align 4
  %74 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3, i32 13
  %75 = load i32, ptr %74, align 4
  %76 = load ptr, ptr %4, align 4
  %77 = getelementptr inbounds %struct.nvkm_ior, ptr %76, i32 0, i32 8, i32 2
  %78 = load i32, ptr %77, align 4
  %79 = shl i32 %75, 7
  %80 = and i32 %79, 384
  %81 = and i32 %78, -385
  %82 = or i32 %81, %80
  store i32 %82, ptr %77, align 4
  %83 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 8
  %84 = load i8, ptr %83, align 1
  %85 = and i8 %1, 3
  %86 = or i8 %84, %85
  store i8 %86, ptr %83, align 1
  br label %316

87:                                               ; preds = %56
  %88 = getelementptr inbounds %struct.nvkm_disp, ptr %61, i32 0, i32 3
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, %88
  br i1 %90, label %131, label %91

91:                                               ; preds = %127, %87
  %92 = phi ptr [ %128, %127 ], [ %89, %87 ]
  %93 = getelementptr i8, ptr %92, i32 8
  %94 = load i8, ptr %93, align 4, !range !8
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %127

96:                                               ; preds = %91
  %97 = getelementptr i8, ptr %92, i32 24
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %127

100:                                              ; preds = %96
  %101 = getelementptr i8, ptr %92, i32 12
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, %0
  br i1 %103, label %104, label %127

104:                                              ; preds = %100
  %105 = getelementptr i8, ptr %92, i32 24
  %106 = getelementptr i8, ptr %92, i32 -24
  br i1 %2, label %107, label %113

107:                                              ; preds = %104
  %108 = load ptr, ptr %106, align 4
  %109 = getelementptr inbounds %struct.nvkm_ior_func, ptr %108, i32 0, i32 9
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %113, !prof !10

112:                                              ; preds = %107
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 184, i32 noundef 9, ptr noundef null) #9
  br label %113

113:                                              ; preds = %112, %107, %104
  store ptr %106, ptr %4, align 4
  store ptr %0, ptr %105, align 4
  %114 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3, i32 13
  %115 = load i32, ptr %114, align 4
  %116 = load ptr, ptr %4, align 4
  %117 = getelementptr inbounds %struct.nvkm_ior, ptr %116, i32 0, i32 8, i32 2
  %118 = load i32, ptr %117, align 4
  %119 = shl i32 %115, 7
  %120 = and i32 %119, 384
  %121 = and i32 %118, -385
  %122 = or i32 %121, %120
  store i32 %122, ptr %117, align 4
  %123 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 8
  %124 = load i8, ptr %123, align 1
  %125 = and i8 %1, 3
  %126 = or i8 %124, %125
  store i8 %126, ptr %123, align 1
  br label %316

127:                                              ; preds = %100, %96, %91
  %128 = load ptr, ptr %92, align 4
  %129 = icmp eq ptr %128, %88
  br i1 %129, label %130, label %91

130:                                              ; preds = %127
  br i1 %2, label %224, label %132

131:                                              ; preds = %87
  br i1 %2, label %314, label %222

132:                                              ; preds = %130
  br i1 %90, label %222, label %133

133:                                              ; preds = %132
  %134 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3, i32 9
  br label %135

135:                                              ; preds = %169, %133
  %136 = phi ptr [ %89, %133 ], [ %170, %169 ]
  %137 = getelementptr i8, ptr %136, i32 -24
  %138 = getelementptr i8, ptr %136, i32 8
  %139 = load i8, ptr %138, align 4, !range !8
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %141, label %169

141:                                              ; preds = %135
  %142 = load ptr, ptr %137, align 4
  %143 = getelementptr inbounds %struct.nvkm_ior_func, ptr %142, i32 0, i32 9
  %144 = load ptr, ptr %143, align 4
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %169

146:                                              ; preds = %141
  %147 = getelementptr i8, ptr %136, i32 24
  %148 = load ptr, ptr %147, align 4
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %169

150:                                              ; preds = %146
  %151 = getelementptr i8, ptr %136, i32 -16
  %152 = load i32, ptr %151, align 4
  %153 = icmp eq i32 %152, %57
  br i1 %153, label %154, label %169

154:                                              ; preds = %150
  %155 = getelementptr i8, ptr %136, i32 12
  %156 = load ptr, ptr %155, align 4
  %157 = icmp eq ptr %156, null
  br i1 %157, label %158, label %169

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.anon.131, ptr %142, i32 0, i32 1
  %160 = load ptr, ptr %159, align 4
  %161 = icmp eq ptr %160, null
  br i1 %161, label %162, label %205

162:                                              ; preds = %158
  %163 = getelementptr i8, ptr %136, i32 -12
  %164 = load i32, ptr %163, align 4
  %165 = load i8, ptr %134, align 1
  %166 = zext i8 %165 to i32
  %167 = tail call i32 @llvm.cttz.i32(i32 %166, i1 false) #9, !range !11
  %168 = icmp eq i32 %164, %167
  br i1 %168, label %205, label %169

169:                                              ; preds = %162, %154, %150, %146, %141, %135
  %170 = load ptr, ptr %136, align 4
  %171 = icmp eq ptr %170, %88
  br i1 %171, label %172, label %135

172:                                              ; preds = %202, %169
  %173 = phi ptr [ %203, %202 ], [ %89, %169 ]
  %174 = getelementptr i8, ptr %173, i32 -24
  %175 = getelementptr i8, ptr %173, i32 8
  %176 = load i8, ptr %175, align 4, !range !8
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %178, label %202

178:                                              ; preds = %172
  %179 = load ptr, ptr %174, align 4
  %180 = getelementptr inbounds %struct.nvkm_ior_func, ptr %179, i32 0, i32 9
  %181 = load ptr, ptr %180, align 4
  %182 = icmp eq ptr %181, null
  br i1 %182, label %183, label %202

183:                                              ; preds = %178
  %184 = getelementptr i8, ptr %173, i32 24
  %185 = load ptr, ptr %184, align 4
  %186 = icmp eq ptr %185, null
  br i1 %186, label %187, label %202

187:                                              ; preds = %183
  %188 = getelementptr i8, ptr %173, i32 -16
  %189 = load i32, ptr %188, align 4
  %190 = icmp eq i32 %189, %57
  br i1 %190, label %191, label %202

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.anon.131, ptr %179, i32 0, i32 1
  %193 = load ptr, ptr %192, align 4
  %194 = icmp eq ptr %193, null
  br i1 %194, label %195, label %205

195:                                              ; preds = %191
  %196 = getelementptr i8, ptr %173, i32 -12
  %197 = load i32, ptr %196, align 4
  %198 = load i8, ptr %134, align 1
  %199 = zext i8 %198 to i32
  %200 = tail call i32 @llvm.cttz.i32(i32 %199, i1 false) #9, !range !11
  %201 = icmp eq i32 %197, %200
  br i1 %201, label %205, label %202

202:                                              ; preds = %195, %187, %183, %178, %172
  %203 = load ptr, ptr %173, align 4
  %204 = icmp eq ptr %203, %88
  br i1 %204, label %222, label %172

205:                                              ; preds = %195, %191, %162, %158
  %206 = phi ptr [ %174, %195 ], [ %174, %191 ], [ %137, %162 ], [ %137, %158 ]
  %207 = phi ptr [ %173, %195 ], [ %173, %191 ], [ %136, %162 ], [ %136, %158 ]
  store ptr %206, ptr %4, align 4
  %208 = getelementptr i8, ptr %207, i32 24
  store ptr %0, ptr %208, align 4
  %209 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3, i32 13
  %210 = load i32, ptr %209, align 4
  %211 = load ptr, ptr %4, align 4
  %212 = getelementptr inbounds %struct.nvkm_ior, ptr %211, i32 0, i32 8, i32 2
  %213 = load i32, ptr %212, align 4
  %214 = shl i32 %210, 7
  %215 = and i32 %214, 384
  %216 = and i32 %213, -385
  %217 = or i32 %216, %215
  store i32 %217, ptr %212, align 4
  %218 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 8
  %219 = load i8, ptr %218, align 1
  %220 = and i8 %1, 3
  %221 = or i8 %219, %220
  store i8 %221, ptr %218, align 1
  br label %316

222:                                              ; preds = %202, %132, %131
  %223 = tail call fastcc i32 @nvkm_outp_acquire_hda(ptr noundef %0, i32 noundef %57, i8 noundef zeroext %1, i1 noundef zeroext true)
  br label %316

224:                                              ; preds = %130
  br i1 %90, label %314, label %225

225:                                              ; preds = %224
  %226 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3, i32 9
  br label %227

227:                                              ; preds = %261, %225
  %228 = phi ptr [ %89, %225 ], [ %262, %261 ]
  %229 = getelementptr i8, ptr %228, i32 -24
  %230 = getelementptr i8, ptr %228, i32 8
  %231 = load i8, ptr %230, align 4, !range !8
  %232 = icmp eq i8 %231, 0
  br i1 %232, label %233, label %261

233:                                              ; preds = %227
  %234 = load ptr, ptr %229, align 4
  %235 = getelementptr inbounds %struct.nvkm_ior_func, ptr %234, i32 0, i32 9
  %236 = load ptr, ptr %235, align 4
  %237 = icmp eq ptr %236, null
  br i1 %237, label %261, label %238

238:                                              ; preds = %233
  %239 = getelementptr i8, ptr %228, i32 24
  %240 = load ptr, ptr %239, align 4
  %241 = icmp eq ptr %240, null
  br i1 %241, label %242, label %261

242:                                              ; preds = %238
  %243 = getelementptr i8, ptr %228, i32 -16
  %244 = load i32, ptr %243, align 4
  %245 = icmp eq i32 %244, %57
  br i1 %245, label %246, label %261

246:                                              ; preds = %242
  %247 = getelementptr i8, ptr %228, i32 12
  %248 = load ptr, ptr %247, align 4
  %249 = icmp eq ptr %248, null
  br i1 %249, label %250, label %261

250:                                              ; preds = %246
  %251 = getelementptr inbounds %struct.anon.131, ptr %234, i32 0, i32 1
  %252 = load ptr, ptr %251, align 4
  %253 = icmp eq ptr %252, null
  br i1 %253, label %254, label %297

254:                                              ; preds = %250
  %255 = getelementptr i8, ptr %228, i32 -12
  %256 = load i32, ptr %255, align 4
  %257 = load i8, ptr %226, align 1
  %258 = zext i8 %257 to i32
  %259 = tail call i32 @llvm.cttz.i32(i32 %258, i1 false) #9, !range !11
  %260 = icmp eq i32 %256, %259
  br i1 %260, label %297, label %261

261:                                              ; preds = %254, %246, %242, %238, %233, %227
  %262 = load ptr, ptr %228, align 4
  %263 = icmp eq ptr %262, %88
  br i1 %263, label %264, label %227

264:                                              ; preds = %294, %261
  %265 = phi ptr [ %295, %294 ], [ %89, %261 ]
  %266 = getelementptr i8, ptr %265, i32 -24
  %267 = getelementptr i8, ptr %265, i32 8
  %268 = load i8, ptr %267, align 4, !range !8
  %269 = icmp eq i8 %268, 0
  br i1 %269, label %270, label %294

270:                                              ; preds = %264
  %271 = load ptr, ptr %266, align 4
  %272 = getelementptr inbounds %struct.nvkm_ior_func, ptr %271, i32 0, i32 9
  %273 = load ptr, ptr %272, align 4
  %274 = icmp eq ptr %273, null
  br i1 %274, label %294, label %275

275:                                              ; preds = %270
  %276 = getelementptr i8, ptr %265, i32 24
  %277 = load ptr, ptr %276, align 4
  %278 = icmp eq ptr %277, null
  br i1 %278, label %279, label %294

279:                                              ; preds = %275
  %280 = getelementptr i8, ptr %265, i32 -16
  %281 = load i32, ptr %280, align 4
  %282 = icmp eq i32 %281, %57
  br i1 %282, label %283, label %294

283:                                              ; preds = %279
  %284 = getelementptr inbounds %struct.anon.131, ptr %271, i32 0, i32 1
  %285 = load ptr, ptr %284, align 4
  %286 = icmp eq ptr %285, null
  br i1 %286, label %287, label %297

287:                                              ; preds = %283
  %288 = getelementptr i8, ptr %265, i32 -12
  %289 = load i32, ptr %288, align 4
  %290 = load i8, ptr %226, align 1
  %291 = zext i8 %290 to i32
  %292 = tail call i32 @llvm.cttz.i32(i32 %291, i1 false) #9, !range !11
  %293 = icmp eq i32 %289, %292
  br i1 %293, label %297, label %294

294:                                              ; preds = %287, %279, %275, %270, %264
  %295 = load ptr, ptr %265, align 4
  %296 = icmp eq ptr %295, %88
  br i1 %296, label %314, label %264

297:                                              ; preds = %287, %283, %254, %250
  %298 = phi ptr [ %266, %287 ], [ %266, %283 ], [ %229, %254 ], [ %229, %250 ]
  %299 = phi ptr [ %265, %287 ], [ %265, %283 ], [ %228, %254 ], [ %228, %250 ]
  store ptr %298, ptr %4, align 4
  %300 = getelementptr i8, ptr %299, i32 24
  store ptr %0, ptr %300, align 4
  %301 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3, i32 13
  %302 = load i32, ptr %301, align 4
  %303 = load ptr, ptr %4, align 4
  %304 = getelementptr inbounds %struct.nvkm_ior, ptr %303, i32 0, i32 8, i32 2
  %305 = load i32, ptr %304, align 4
  %306 = shl i32 %302, 7
  %307 = and i32 %306, 384
  %308 = and i32 %305, -385
  %309 = or i32 %308, %307
  store i32 %309, ptr %304, align 4
  %310 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 8
  %311 = load i8, ptr %310, align 1
  %312 = and i8 %1, 3
  %313 = or i8 %311, %312
  store i8 %313, ptr %310, align 1
  br label %316

314:                                              ; preds = %294, %224, %131
  %315 = tail call fastcc i32 @nvkm_outp_acquire_hda(ptr noundef %0, i32 noundef %57, i8 noundef zeroext %1, i1 noundef zeroext false)
  br label %316

316:                                              ; preds = %314, %297, %222, %205, %113, %72, %71, %47, %32
  %317 = phi i32 [ 0, %32 ], [ -28, %71 ], [ 0, %72 ], [ 0, %113 ], [ %315, %314 ], [ %223, %222 ], [ -38, %47 ], [ 0, %205 ], [ 0, %297 ]
  ret i32 %317
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_ior_find(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nvkm_outp_acquire_hda(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #5 {
  %5 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_disp, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %108, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3, i32 9
  br label %15

12:                                               ; preds = %52
  br i1 %9, label %108, label %13

13:                                               ; preds = %12
  %14 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3, i32 9
  br label %55

15:                                               ; preds = %52, %10
  %16 = phi ptr [ %8, %10 ], [ %53, %52 ]
  %17 = getelementptr i8, ptr %16, i32 -24
  %18 = getelementptr i8, ptr %16, i32 8
  %19 = load i8, ptr %18, align 4, !range !8
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %52

21:                                               ; preds = %15
  %22 = load ptr, ptr %17, align 4
  %23 = getelementptr inbounds %struct.nvkm_ior_func, ptr %22, i32 0, i32 9
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  %26 = xor i1 %25, %3
  br i1 %26, label %27, label %52

27:                                               ; preds = %21
  %28 = getelementptr i8, ptr %16, i32 24
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %52

31:                                               ; preds = %27
  %32 = getelementptr i8, ptr %16, i32 -16
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, %1
  br i1 %34, label %35, label %52

35:                                               ; preds = %31
  %36 = getelementptr i8, ptr %16, i32 12
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %52

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.anon.131, ptr %22, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = getelementptr i8, ptr %16, i32 -12
  %45 = load i32, ptr %44, align 4
  %46 = load i8, ptr %11, align 1
  %47 = zext i8 %46 to i32
  %48 = tail call i32 @llvm.cttz.i32(i32 %47, i1 false) #9, !range !11
  %49 = icmp eq i32 %45, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %43, %39
  %51 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 9
  store ptr %17, ptr %51, align 4
  br label %91

52:                                               ; preds = %43, %35, %31, %27, %21, %15
  %53 = load ptr, ptr %16, align 4
  %54 = icmp eq ptr %53, %7
  br i1 %54, label %12, label %15

55:                                               ; preds = %88, %13
  %56 = phi ptr [ %8, %13 ], [ %89, %88 ]
  %57 = getelementptr i8, ptr %56, i32 -24
  %58 = getelementptr i8, ptr %56, i32 8
  %59 = load i8, ptr %58, align 4, !range !8
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %88

61:                                               ; preds = %55
  %62 = load ptr, ptr %57, align 4
  %63 = getelementptr inbounds %struct.nvkm_ior_func, ptr %62, i32 0, i32 9
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  %66 = xor i1 %65, %3
  br i1 %66, label %67, label %88

67:                                               ; preds = %61
  %68 = getelementptr i8, ptr %56, i32 24
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %88

71:                                               ; preds = %67
  %72 = getelementptr i8, ptr %56, i32 -16
  %73 = load i32, ptr %72, align 4
  %74 = icmp eq i32 %73, %1
  br i1 %74, label %75, label %88

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.anon.131, ptr %62, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %86

79:                                               ; preds = %75
  %80 = getelementptr i8, ptr %56, i32 -12
  %81 = load i32, ptr %80, align 4
  %82 = load i8, ptr %14, align 1
  %83 = zext i8 %82 to i32
  %84 = tail call i32 @llvm.cttz.i32(i32 %83, i1 false) #9, !range !11
  %85 = icmp eq i32 %81, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %79, %75
  %87 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 9
  store ptr %57, ptr %87, align 4
  br label %91

88:                                               ; preds = %79, %71, %67, %61, %55
  %89 = load ptr, ptr %56, align 4
  %90 = icmp eq ptr %89, %7
  br i1 %90, label %108, label %55

91:                                               ; preds = %86, %50
  %92 = phi ptr [ %16, %50 ], [ %56, %86 ]
  %93 = phi ptr [ %51, %50 ], [ %87, %86 ]
  %94 = getelementptr i8, ptr %92, i32 24
  store ptr %0, ptr %94, align 4
  %95 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3, i32 13
  %96 = load i32, ptr %95, align 4
  %97 = load ptr, ptr %93, align 4
  %98 = getelementptr inbounds %struct.nvkm_ior, ptr %97, i32 0, i32 8, i32 2
  %99 = load i32, ptr %98, align 4
  %100 = shl i32 %96, 7
  %101 = and i32 %100, 384
  %102 = and i32 %99, -385
  %103 = or i32 %102, %101
  store i32 %103, ptr %98, align 4
  %104 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 8
  %105 = load i8, ptr %104, align 1
  %106 = and i8 %2, 3
  %107 = or i8 %105, %106
  store i8 %107, ptr %104, align 1
  br label %108

108:                                              ; preds = %91, %88, %12, %4
  %109 = phi i32 [ -28, %12 ], [ -28, %4 ], [ 0, %91 ], [ -28, %88 ]
  ret i32 %109
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_outp_fini(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_outp_func, ptr %2, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void %4(ptr noundef %0) #9
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_outp_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !12
  %5 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3, i32 8
  %6 = load i8, ptr %5, align 4
  switch i8 %6, label %14 [
    i8 0, label %7
    i8 1, label %11
  ]

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = icmp ult i32 %9, 7
  br i1 %10, label %15, label %14

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3, i32 3
  %13 = load i32, ptr %12, align 4
  switch i32 %13, label %14 [
    i32 2, label %25
    i32 6, label %25
  ]

14:                                               ; preds = %15, %11, %7, %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 85, i32 noundef 9, ptr noundef null) #9
  br label %143

15:                                               ; preds = %7
  %16 = trunc i32 %9 to i8
  %17 = lshr i8 79, %16
  %18 = and i8 %17, 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %14, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds [7 x i32], ptr @switch.table.nvkm_outp_init, i32 0, i32 %9
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds [7 x i32], ptr @switch.table.nvkm_outp_init.9, i32 0, i32 %9
  %24 = load i32, ptr %23, align 4
  br label %25

25:                                               ; preds = %20, %11, %11
  %26 = phi i32 [ 2, %11 ], [ 2, %11 ], [ %22, %20 ]
  %27 = phi i32 [ 2, %11 ], [ 2, %11 ], [ %24, %20 ]
  %28 = tail call ptr @nvkm_ior_find(ptr noundef %4, i32 noundef %26, i32 noundef -1) #9
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 233, i32 noundef 9, ptr noundef null) #9
  br label %143

31:                                               ; preds = %25
  %32 = load ptr, ptr %28, align 4
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %57, label %35

35:                                               ; preds = %31
  %36 = call i32 %33(ptr noundef %0, ptr noundef nonnull %2) #9
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %72

38:                                               ; preds = %35
  %39 = load ptr, ptr %3, align 4
  %40 = getelementptr inbounds %struct.nvkm_disp, ptr %39, i32 0, i32 1, i32 1, i32 5
  %41 = load i32, ptr %40, align 4
  %42 = icmp ugt i32 %41, 3
  br i1 %42, label %43, label %143

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.nvkm_disp, ptr %39, i32 0, i32 1, i32 1, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.nvkm_device, ptr %45, i32 0, i32 2
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.nvkm_disp, ptr %39, i32 0, i32 1, i32 1, i32 4
  %49 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3, i32 1
  %52 = load i16, ptr %51, align 4
  %53 = zext i16 %52 to i32
  %54 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3, i32 2
  %55 = load i16, ptr %54, align 2
  %56 = zext i16 %55 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %47, ptr noundef nonnull @.str.6, ptr noundef %48, i32 noundef %50, i32 noundef %53, i32 noundef %56) #8
  br label %143

57:                                               ; preds = %31
  %58 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3, i32 9
  %59 = load i8, ptr %58, align 1
  %60 = tail call i8 @llvm.cttz.i8(i8 %59, i1 true) #9, !range !9
  %61 = zext i8 %60 to i32
  %62 = icmp eq i8 %59, 0
  %63 = select i1 %62, i32 -1, i32 %61
  %64 = getelementptr inbounds %struct.nvkm_ior, ptr %28, i32 0, i32 2
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %70

67:                                               ; preds = %57
  %68 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3, i32 13
  %69 = load i32, ptr %68, align 4
  br label %70

70:                                               ; preds = %67, %57
  %71 = phi i32 [ %69, %67 ], [ 0, %57 ]
  store i32 %71, ptr %2, align 4
  br label %72

72:                                               ; preds = %70, %35
  %73 = phi i32 [ %36, %35 ], [ %63, %70 ]
  %74 = call ptr @nvkm_ior_find(ptr noundef %4, i32 noundef %26, i32 noundef %73) #9
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 252, i32 noundef 9, ptr noundef null) #9
  br label %143

77:                                               ; preds = %72
  %78 = load ptr, ptr %74, align 4
  %79 = getelementptr inbounds %struct.nvkm_ior_func, ptr %78, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.nvkm_ior, ptr %74, i32 0, i32 7
  call void %80(ptr noundef nonnull %74, ptr noundef %81) #9
  %82 = getelementptr inbounds %struct.nvkm_ior, ptr %74, i32 0, i32 7, i32 2
  %83 = load i32, ptr %82, align 4
  %84 = and i32 %83, 130560
  %85 = icmp ne i32 %84, 0
  %86 = lshr i32 %83, 4
  %87 = and i32 %86, 7
  %88 = icmp eq i32 %87, %27
  %89 = select i1 %85, i1 %88, i1 false
  %90 = load ptr, ptr %3, align 4
  %91 = getelementptr inbounds %struct.nvkm_disp, ptr %90, i32 0, i32 1, i32 1, i32 5
  %92 = load i32, ptr %91, align 4
  %93 = icmp ugt i32 %92, 3
  br i1 %89, label %124, label %94

94:                                               ; preds = %77
  br i1 %93, label %95, label %111

95:                                               ; preds = %94
  %96 = getelementptr inbounds %struct.nvkm_disp, ptr %90, i32 0, i32 1, i32 1, i32 1
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.nvkm_device, ptr %97, i32 0, i32 2
  %99 = load ptr, ptr %98, align 8
  %100 = getelementptr inbounds %struct.nvkm_disp, ptr %90, i32 0, i32 1, i32 1, i32 4
  %101 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 2
  %102 = load i32, ptr %101, align 4
  %103 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3, i32 1
  %104 = load i16, ptr %103, align 4
  %105 = zext i16 %104 to i32
  %106 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3, i32 2
  %107 = load i16, ptr %106, align 2
  %108 = zext i16 %107 to i32
  %109 = lshr i32 %83, 9
  %110 = and i32 %109, 255
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %99, ptr noundef nonnull @.str.7, ptr noundef %100, i32 noundef %102, i32 noundef %105, i32 noundef %108, i32 noundef %110, i32 noundef %87, i32 noundef %27) #8
  br label %111

111:                                              ; preds = %95, %94
  %112 = load ptr, ptr %74, align 4
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %143, label %115

115:                                              ; preds = %111
  %116 = load i32, ptr %82, align 4
  %117 = and i32 %116, 130560
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %143

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3, i32 3
  %121 = load i32, ptr %120, align 4
  %122 = icmp eq i32 %121, 6
  br i1 %122, label %123, label %143

123:                                              ; preds = %119
  call void @nvkm_dp_disable(ptr noundef %0, ptr noundef nonnull %74) #9
  br label %143

124:                                              ; preds = %77
  br i1 %93, label %125, label %142

125:                                              ; preds = %124
  %126 = getelementptr inbounds %struct.nvkm_disp, ptr %90, i32 0, i32 1, i32 1, i32 1
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr inbounds %struct.nvkm_device, ptr %127, i32 0, i32 2
  %129 = load ptr, ptr %128, align 8
  %130 = getelementptr inbounds %struct.nvkm_disp, ptr %90, i32 0, i32 1, i32 1, i32 4
  %131 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 2
  %132 = load i32, ptr %131, align 4
  %133 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3, i32 1
  %134 = load i16, ptr %133, align 4
  %135 = zext i16 %134 to i32
  %136 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3, i32 2
  %137 = load i16, ptr %136, align 2
  %138 = zext i16 %137 to i32
  %139 = getelementptr inbounds %struct.nvkm_ior, ptr %74, i32 0, i32 4
  %140 = lshr i32 %83, 7
  %141 = and i32 %140, 3
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %129, ptr noundef nonnull @.str.8, ptr noundef %130, i32 noundef %132, i32 noundef %135, i32 noundef %138, ptr noundef %139, i32 noundef %141) #8
  br label %142

142:                                              ; preds = %125, %124
  store ptr %0, ptr %81, align 4
  br label %143

143:                                              ; preds = %142, %123, %119, %115, %111, %76, %43, %38, %30, %14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  %144 = load ptr, ptr %0, align 4
  %145 = getelementptr inbounds %struct.nvkm_outp_func, ptr %144, i32 0, i32 1
  %146 = load ptr, ptr %145, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %149, label %148

148:                                              ; preds = %143
  call void %146(ptr noundef %0) #9
  br label %149

149:                                              ; preds = %148, %143
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_outp_del(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8, !prof !10

7:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 288, i32 noundef 9, ptr noundef null) #9
  br label %15

8:                                                ; preds = %4
  %9 = load ptr, ptr %5, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = tail call ptr %9(ptr noundef nonnull %2) #9
  store ptr %12, ptr %0, align 4
  br label %13

13:                                               ; preds = %11, %8
  %14 = phi ptr [ %12, %11 ], [ %2, %8 ]
  tail call void @kfree(ptr noundef %14) #9
  store ptr null, ptr %0, align 4
  br label %15

15:                                               ; preds = %13, %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_outp_ctor(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.nvkm_disp, ptr %1, i32 0, i32 1, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 26
  %9 = load ptr, ptr %8, align 4
  store ptr %0, ptr %4, align 4
  %10 = getelementptr inbounds %struct.nvkm_outp, ptr %4, i32 0, i32 1
  store ptr %1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.nvkm_outp, ptr %4, i32 0, i32 2
  store i32 %2, ptr %11, align 4
  %12 = getelementptr inbounds %struct.nvkm_outp, ptr %4, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(40) %12, ptr noundef align 4 dereferenceable(40) %3, i32 40, i1 false)
  %13 = getelementptr inbounds %struct.dcb_output, ptr %3, i32 0, i32 4
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i32
  %16 = tail call ptr @nvkm_i2c_bus_find(ptr noundef %9, i32 noundef %15) #9
  %17 = getelementptr inbounds %struct.nvkm_outp, ptr %4, i32 0, i32 4
  store ptr %16, ptr %17, align 4
  %18 = load ptr, ptr %10, align 4
  %19 = getelementptr inbounds %struct.nvkm_disp, ptr %18, i32 0, i32 1, i32 1, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = icmp ugt i32 %20, 3
  br i1 %21, label %22, label %61

22:                                               ; preds = %5
  %23 = getelementptr inbounds %struct.nvkm_disp, ptr %18, i32 0, i32 1, i32 1, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nvkm_device, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.nvkm_disp, ptr %18, i32 0, i32 1, i32 1, i32 4
  %28 = load i32, ptr %11, align 4
  %29 = getelementptr inbounds %struct.nvkm_outp, ptr %4, i32 0, i32 3, i32 1
  %30 = load i16, ptr %29, align 4
  %31 = zext i16 %30 to i32
  %32 = getelementptr inbounds %struct.nvkm_outp, ptr %4, i32 0, i32 3, i32 2
  %33 = load i16, ptr %32, align 2
  %34 = zext i16 %33 to i32
  %35 = getelementptr inbounds %struct.nvkm_outp, ptr %4, i32 0, i32 3, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.nvkm_outp, ptr %4, i32 0, i32 3, i32 8
  %38 = load i8, ptr %37, align 4
  %39 = zext i8 %38 to i32
  %40 = getelementptr inbounds %struct.nvkm_outp, ptr %4, i32 0, i32 3, i32 9
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp sgt i32 %36, 1
  br i1 %43, label %44, label %47

44:                                               ; preds = %22
  %45 = getelementptr inbounds %struct.nvkm_outp, ptr %4, i32 0, i32 3, i32 13
  %46 = load i32, ptr %45, align 4
  br label %47

47:                                               ; preds = %44, %22
  %48 = phi i32 [ %46, %44 ], [ 0, %22 ]
  %49 = getelementptr inbounds %struct.nvkm_outp, ptr %4, i32 0, i32 3, i32 6
  %50 = load i8, ptr %49, align 2
  %51 = zext i8 %50 to i32
  %52 = getelementptr inbounds %struct.nvkm_outp, ptr %4, i32 0, i32 3, i32 4
  %53 = load i8, ptr %52, align 4
  %54 = zext i8 %53 to i32
  %55 = getelementptr inbounds %struct.nvkm_outp, ptr %4, i32 0, i32 3, i32 7
  %56 = load i8, ptr %55, align 1
  %57 = zext i8 %56 to i32
  %58 = getelementptr inbounds %struct.nvkm_outp, ptr %4, i32 0, i32 3, i32 5
  %59 = load i8, ptr %58, align 1
  %60 = zext i8 %59 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %26, ptr noundef nonnull @.str.5, ptr noundef %27, i32 noundef %28, i32 noundef %31, i32 noundef %34, i32 noundef %36, i32 noundef %39, i32 noundef %42, i32 noundef %48, i32 noundef %51, i32 noundef %54, i32 noundef %57, i32 noundef %60) #8
  br label %61

61:                                               ; preds = %47, %5
  %62 = getelementptr inbounds %struct.nvkm_outp, ptr %4, i32 0, i32 3, i32 8
  %63 = load i8, ptr %62, align 4
  switch i8 %63, label %71 [
    i8 0, label %64
    i8 1, label %68
  ]

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.nvkm_outp, ptr %4, i32 0, i32 3, i32 3
  %66 = load i32, ptr %65, align 4
  %67 = icmp ult i32 %66, 7
  br i1 %67, label %72, label %71

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.nvkm_outp, ptr %4, i32 0, i32 3, i32 3
  %70 = load i32, ptr %69, align 4
  switch i32 %70, label %71 [
    i32 2, label %77
    i32 6, label %77
  ]

71:                                               ; preds = %72, %68, %64, %61
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 85, i32 noundef 9, ptr noundef null) #9
  br label %77

72:                                               ; preds = %64
  %73 = trunc i32 %66 to i8
  %74 = lshr i8 79, %73
  %75 = and i8 %74, 1
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %71, label %77

77:                                               ; preds = %72, %71, %68, %68
  %78 = phi i32 [ -19, %71 ], [ 0, %68 ], [ 0, %68 ], [ 0, %72 ]
  ret i32 %78
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_i2c_bus_find(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_outp_new(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 76) #10
  store ptr %6, ptr %3, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call i32 @nvkm_outp_ctor(ptr noundef nonnull @nvkm_outp, ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %6)
  br label %10

10:                                               ; preds = %8, %4
  %11 = phi i32 [ %9, %8 ], [ -12, %4 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_dp_disable(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.cttz.i8(i8, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inlinehint nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(2) }

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
!9 = !{i8 0, i8 9}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i32 0, i32 33}
!12 = !{!"auto-init"}
