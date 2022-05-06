; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/volt/base.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/volt/base.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_subdev_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_volt_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_volt = type { ptr, %struct.nvkm_subdev, i8, i8, [256 x %struct.anon.120], i32, i32, i8, i8, i8, i32 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.anon.120 = type { i32, i8 }
%struct.nvbios_vmap_entry = type { i8, i8, i32, i32, [6 x i32] }
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
%struct.nvbios_volt_entry = type { i32, i8 }
%struct.nvbios_volt = type { i32, i32, i32, i32, i8, i8, i16, i32, i32 }
%struct.nvbios_vmap = type { i8, i8, i8 }

@nvkm_volt = internal constant %struct.nvkm_subdev_func { ptr @nvkm_volt_dtor, ptr null, ptr @nvkm_volt_oneinit, ptr null, ptr @nvkm_volt_init, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s: min: %iuv max: %iuv\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"%s: VID %02x: %duv\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"%s: couldn't set %iuv\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"%s: set req %duv to %duv: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"%s: speedo %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"%s: current voltage unknown\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"%s: current voltage: %duv\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"%s: found ranged based VIDs\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"%s: found entry based VIDs\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_volt_get(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_volt_func, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 %4(ptr noundef %0) #8
  br label %30

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.nvkm_volt_func, ptr %2, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef %0) #8
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %13, label %30

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.nvkm_volt, ptr %0, i32 0, i32 3
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp eq i8 %15, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %27, %13
  %19 = phi i32 [ %28, %27 ], [ 0, %13 ]
  %20 = getelementptr %struct.nvkm_volt, ptr %0, i32 0, i32 4, i32 %19, i32 1
  %21 = load i8, ptr %20, align 4
  %22 = zext i8 %21 to i32
  %23 = icmp eq i32 %11, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = getelementptr %struct.nvkm_volt, ptr %0, i32 0, i32 4, i32 %19
  %26 = load i32, ptr %25, align 4
  br label %30

27:                                               ; preds = %18
  %28 = add nuw nsw i32 %19, 1
  %29 = icmp eq i32 %28, %16
  br i1 %29, label %30, label %18

30:                                               ; preds = %27, %24, %13, %8, %6
  %31 = phi i32 [ %7, %6 ], [ %26, %24 ], [ %11, %8 ], [ -22, %13 ], [ -22, %27 ]
  ret i32 %31
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_volt_map_min(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.nvbios_vmap_entry, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = getelementptr inbounds %struct.nvkm_volt, ptr %0, i32 0, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 21
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %3, i8 0, i32 36, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #8
  store i8 0, ptr %4, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #8
  store i8 0, ptr %5, align 1, !annotation !8
  %10 = zext i8 %1 to i32
  %11 = call i32 @nvbios_vmap_entry_parse(ptr noundef %9, i32 noundef %10, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %3) #8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.nvbios_vmap_entry, ptr %3, i32 0, i32 1
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, -1
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.nvbios_vmap_entry, ptr %3, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  br label %31

20:                                               ; preds = %13
  %21 = call i32 @nvkm_volt_map_min(ptr noundef %0, i8 noundef zeroext %15)
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.nvbios_vmap_entry, ptr %3, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, %21
  br label %31

27:                                               ; preds = %2
  %28 = icmp eq i8 %1, 0
  %29 = mul nuw nsw i32 %10, 10000
  %30 = select i1 %28, i32 -19, i32 %29
  br label %31

31:                                               ; preds = %27, %23, %20, %17
  %32 = phi i32 [ %30, %27 ], [ %21, %20 ], [ %19, %17 ], [ %26, %23 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #8
  ret i32 %32
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_vmap_entry_parse(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_volt_map(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.nvbios_vmap_entry, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = getelementptr inbounds %struct.nvkm_volt, ptr %0, i32 0, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 21
  %10 = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %4, i8 0, i32 36, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #8
  store i8 0, ptr %5, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #8
  store i8 0, ptr %6, align 1, !annotation !8
  %11 = zext i8 %1 to i32
  %12 = call i32 @nvbios_vmap_entry_parse(ptr noundef %10, i32 noundef %11, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %4) #8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %125, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.nvkm_volt, ptr %0, i32 0, i32 10
  %16 = load i32, ptr %15, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %129, label %18

18:                                               ; preds = %14
  %19 = load i8, ptr %5, align 1
  %20 = icmp eq i8 %19, 16
  br i1 %20, label %26, label %21

21:                                               ; preds = %18
  %22 = icmp eq i8 %19, 32
  %23 = load i8, ptr %4, align 4
  %24 = icmp eq i8 %23, 0
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %26, label %48

26:                                               ; preds = %21, %18
  %27 = getelementptr inbounds %struct.nvbios_vmap_entry, ptr %4, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = sext i32 %28 to i64
  %30 = call i64 @div64_s64(i64 noundef %29, i64 noundef 10) #8
  %31 = getelementptr inbounds %struct.nvbios_vmap_entry, ptr %4, i32 0, i32 4, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = sext i32 %32 to i64
  %34 = load i32, ptr %15, align 4
  %35 = sext i32 %34 to i64
  %36 = mul nsw i64 %35, %33
  %37 = call i64 @div64_s64(i64 noundef %36, i64 noundef 10) #8
  %38 = add i64 %37, %30
  %39 = getelementptr inbounds %struct.nvbios_vmap_entry, ptr %4, i32 0, i32 4, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = sext i32 %40 to i64
  %42 = load i32, ptr %15, align 4
  %43 = sext i32 %42 to i64
  %44 = mul nsw i64 %43, %41
  %45 = mul i64 %44, %43
  %46 = call i64 @div64_s64(i64 noundef %45, i64 noundef 100000) #8
  %47 = add i64 %38, %46
  br label %105

48:                                               ; preds = %21
  br i1 %22, label %49, label %129

49:                                               ; preds = %48
  switch i8 %23, label %101 [
    i8 1, label %50
    i8 3, label %93
  ]

50:                                               ; preds = %49
  %51 = getelementptr inbounds %struct.nvbios_vmap_entry, ptr %4, i32 0, i32 4
  %52 = load i32, ptr %51, align 4
  %53 = sext i32 %52 to i64
  %54 = mul nsw i64 %53, 15625
  %55 = ashr i64 %54, 18
  %56 = getelementptr inbounds %struct.nvbios_vmap_entry, ptr %4, i32 0, i32 4, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = sext i32 %57 to i64
  %59 = zext i32 %16 to i64
  %60 = mul nuw nsw i64 %59, 15625
  %61 = mul i64 %60, %58
  %62 = ashr i64 %61, 18
  %63 = add nsw i64 %62, %55
  %64 = getelementptr inbounds %struct.nvbios_vmap_entry, ptr %4, i32 0, i32 4, i32 2
  %65 = load i32, ptr %64, align 4
  %66 = sext i32 %65 to i64
  %67 = zext i8 %2 to i64
  %68 = mul nuw nsw i64 %67, 15625
  %69 = mul nsw i64 %68, %66
  %70 = ashr i64 %69, 10
  %71 = add nsw i64 %63, %70
  %72 = getelementptr inbounds %struct.nvbios_vmap_entry, ptr %4, i32 0, i32 4, i32 3
  %73 = load i32, ptr %72, align 4
  %74 = sext i32 %73 to i64
  %75 = mul nuw nsw i64 %68, %59
  %76 = mul i64 %75, %74
  %77 = ashr i64 %76, 18
  %78 = add nsw i64 %71, %77
  %79 = getelementptr inbounds %struct.nvbios_vmap_entry, ptr %4, i32 0, i32 4, i32 4
  %80 = load i32, ptr %79, align 4
  %81 = sext i32 %80 to i64
  %82 = mul i64 %60, %59
  %83 = mul i64 %82, %81
  %84 = ashr i64 %83, 30
  %85 = add nsw i64 %78, %84
  %86 = getelementptr inbounds %struct.nvbios_vmap_entry, ptr %4, i32 0, i32 4, i32 5
  %87 = load i32, ptr %86, align 4
  %88 = sext i32 %87 to i64
  %89 = mul nuw nsw i64 %68, %67
  %90 = mul nsw i64 %89, %88
  %91 = ashr i64 %90, 18
  %92 = add nsw i64 %85, %91
  br label %105

93:                                               ; preds = %49
  %94 = getelementptr inbounds %struct.nvbios_vmap_entry, ptr %4, i32 0, i32 2
  %95 = load i32, ptr %94, align 4
  %96 = getelementptr inbounds %struct.nvbios_vmap_entry, ptr %4, i32 0, i32 3
  %97 = load i32, ptr %96, align 4
  %98 = add i32 %97, %95
  %99 = lshr i32 %98, 1
  %100 = zext i32 %99 to i64
  br label %105

101:                                              ; preds = %49
  %102 = getelementptr inbounds %struct.nvbios_vmap_entry, ptr %4, i32 0, i32 2
  %103 = load i32, ptr %102, align 4
  %104 = zext i32 %103 to i64
  br label %105

105:                                              ; preds = %101, %93, %50, %26
  %106 = phi i64 [ %47, %26 ], [ %104, %101 ], [ %100, %93 ], [ %92, %50 ]
  %107 = getelementptr inbounds %struct.nvbios_vmap_entry, ptr %4, i32 0, i32 2
  %108 = load i32, ptr %107, align 4
  %109 = zext i32 %108 to i64
  %110 = call i64 @llvm.smax.i64(i64 %106, i64 %109)
  %111 = getelementptr inbounds %struct.nvbios_vmap_entry, ptr %4, i32 0, i32 3
  %112 = load i32, ptr %111, align 4
  %113 = zext i32 %112 to i64
  %114 = call i64 @llvm.umin.i64(i64 %110, i64 %113)
  %115 = getelementptr inbounds %struct.nvbios_vmap_entry, ptr %4, i32 0, i32 1
  %116 = load i8, ptr %115, align 1
  %117 = icmp eq i8 %116, -1
  %118 = trunc i64 %114 to i32
  br i1 %117, label %123, label %119

119:                                              ; preds = %105
  %120 = call i32 @nvkm_volt_map(ptr noundef %0, i8 noundef zeroext %116, i8 noundef zeroext %2)
  %121 = icmp slt i32 %120, 0
  %122 = add i32 %120, %118
  br i1 %121, label %129, label %123

123:                                              ; preds = %119, %105
  %124 = phi i32 [ %122, %119 ], [ %118, %105 ]
  br label %129

125:                                              ; preds = %3
  %126 = icmp eq i8 %1, 0
  %127 = mul nuw nsw i32 %11, 10000
  %128 = select i1 %126, i32 -19, i32 %127
  br label %129

129:                                              ; preds = %125, %123, %119, %48, %14
  %130 = phi i32 [ %128, %125 ], [ %124, %123 ], [ %120, %119 ], [ %16, %14 ], [ -19, %48 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #8
  ret i32 %130
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_s64(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_volt_set_id(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.nvkm_volt_func, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = tail call i32 %8(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %4) #8
  br label %123

12:                                               ; preds = %5
  %13 = tail call i32 @nvkm_volt_map(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %3)
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %15, label %123

15:                                               ; preds = %12
  %16 = load ptr, ptr %0, align 4
  %17 = getelementptr inbounds %struct.nvkm_volt_func, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = tail call i32 %18(ptr noundef %0) #8
  br label %44

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.nvkm_volt_func, ptr %16, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 %24(ptr noundef %0) #8
  %26 = icmp sgt i32 %25, -1
  br i1 %26, label %27, label %57

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.nvkm_volt, ptr %0, i32 0, i32 3
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp eq i8 %29, 0
  br i1 %31, label %57, label %32

32:                                               ; preds = %41, %27
  %33 = phi i32 [ %42, %41 ], [ 0, %27 ]
  %34 = getelementptr %struct.nvkm_volt, ptr %0, i32 0, i32 4, i32 %33, i32 1
  %35 = load i8, ptr %34, align 4
  %36 = zext i8 %35 to i32
  %37 = icmp eq i32 %25, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = getelementptr %struct.nvkm_volt, ptr %0, i32 0, i32 4, i32 %33
  %40 = load i32, ptr %39, align 4
  br label %44

41:                                               ; preds = %32
  %42 = add nuw nsw i32 %33, 1
  %43 = icmp eq i32 %42, %30
  br i1 %43, label %57, label %32

44:                                               ; preds = %38, %20
  %45 = phi i32 [ %21, %20 ], [ %40, %38 ]
  %46 = icmp eq i32 %4, 0
  %47 = icmp slt i32 %45, 0
  %48 = select i1 %46, i1 true, i1 %47
  br i1 %48, label %57, label %49

49:                                               ; preds = %44
  %50 = icmp slt i32 %4, 0
  %51 = icmp slt i32 %13, %45
  %52 = select i1 %50, i1 %51, i1 false
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = icmp sgt i32 %4, 0
  %55 = icmp sgt i32 %13, %45
  %56 = select i1 %54, i1 %55, i1 false
  br i1 %56, label %57, label %123

57:                                               ; preds = %53, %49, %44, %41, %27, %22
  %58 = tail call i32 @nvkm_volt_map(ptr noundef %0, i8 noundef zeroext %2, i8 noundef zeroext %3)
  %59 = tail call i32 @llvm.smax.i32(i32 %58, i32 %13)
  %60 = icmp slt i32 %58, 0
  %61 = select i1 %60, i32 %13, i32 %59
  %62 = load ptr, ptr %0, align 4
  %63 = getelementptr inbounds %struct.nvkm_volt_func, ptr %62, i32 0, i32 2
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %57
  %67 = tail call i32 %64(ptr noundef %0, i32 noundef %61) #8
  br label %123

68:                                               ; preds = %57
  %69 = getelementptr inbounds %struct.nvkm_volt, ptr %0, i32 0, i32 3
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %70 to i32
  %72 = icmp eq i8 %70, 0
  br i1 %72, label %96, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.nvkm_volt, ptr %0, i32 0, i32 5
  %75 = load i32, ptr %74, align 4
  br label %76

76:                                               ; preds = %90, %73
  %77 = phi i32 [ %87, %90 ], [ -1, %73 ]
  %78 = phi i32 [ %91, %90 ], [ %75, %73 ]
  %79 = phi i32 [ %92, %90 ], [ 0, %73 ]
  %80 = getelementptr %struct.nvkm_volt, ptr %0, i32 0, i32 4, i32 %79
  %81 = load i32, ptr %80, align 4
  %82 = sub i32 %81, %61
  %83 = icmp slt i32 %82, 0
  %84 = icmp sgt i32 %82, %78
  %85 = select i1 %83, i1 true, i1 %84
  %86 = icmp eq i32 %81, %61
  %87 = select i1 %85, i32 %77, i32 %79
  %88 = xor i1 %85, true
  %89 = select i1 %88, i1 %86, i1 false
  br i1 %89, label %94, label %90

90:                                               ; preds = %76
  %91 = select i1 %85, i32 %78, i32 %82
  %92 = add nuw nsw i32 %79, 1
  %93 = icmp eq i32 %92, %71
  br i1 %93, label %94, label %76

94:                                               ; preds = %90, %76
  %95 = icmp eq i32 %87, -1
  br i1 %95, label %96, label %106

96:                                               ; preds = %94, %68
  %97 = getelementptr inbounds %struct.nvkm_volt, ptr %0, i32 0, i32 1, i32 5
  %98 = load i32, ptr %97, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %123, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.nvkm_volt, ptr %0, i32 0, i32 1, i32 1
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.nvkm_device, ptr %102, i32 0, i32 2
  %104 = load ptr, ptr %103, align 8
  %105 = getelementptr inbounds %struct.nvkm_volt, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %104, ptr noundef nonnull @.str.2, ptr noundef %105, i32 noundef %61) #9
  br label %123

106:                                              ; preds = %94
  %107 = getelementptr inbounds %struct.nvkm_volt_func, ptr %62, i32 0, i32 4
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr %struct.nvkm_volt, ptr %0, i32 0, i32 4, i32 %87, i32 1
  %110 = load i8, ptr %109, align 4
  %111 = tail call i32 %108(ptr noundef %0, i8 noundef zeroext %110) #8
  %112 = getelementptr inbounds %struct.nvkm_volt, ptr %0, i32 0, i32 1, i32 5
  %113 = load i32, ptr %112, align 4
  %114 = icmp ugt i32 %113, 3
  br i1 %114, label %115, label %123

115:                                              ; preds = %106
  %116 = getelementptr %struct.nvkm_volt, ptr %0, i32 0, i32 4, i32 %87
  %117 = getelementptr inbounds %struct.nvkm_volt, ptr %0, i32 0, i32 1, i32 1
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.nvkm_device, ptr %118, i32 0, i32 2
  %120 = load ptr, ptr %119, align 8
  %121 = getelementptr inbounds %struct.nvkm_volt, ptr %0, i32 0, i32 1, i32 4
  %122 = load i32, ptr %116, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %120, ptr noundef nonnull @.str.3, ptr noundef %121, i32 noundef %61, i32 noundef %122, i32 noundef %111) #9
  br label %123

123:                                              ; preds = %115, %106, %100, %96, %66, %53, %12, %10
  %124 = phi i32 [ %11, %10 ], [ %13, %12 ], [ 0, %53 ], [ %67, %66 ], [ -22, %100 ], [ -22, %96 ], [ %111, %115 ], [ %111, %106 ]
  ret i32 %124
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_volt_ctor(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.nvbios_volt_entry, align 8
  %7 = alloca %struct.nvbios_volt, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca %struct.nvbios_vmap, align 1
  %17 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 21
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.nvkm_volt, ptr %4, i32 0, i32 1
  tail call void @nvkm_subdev_ctor(ptr noundef nonnull @nvkm_volt, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %19) #8
  store ptr %0, ptr %4, align 4
  %20 = icmp eq ptr %18, null
  br i1 %20, label %168, label %21

21:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #8
  store i8 0, ptr %12, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #8
  store i8 0, ptr %13, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %14) #8
  store i8 0, ptr %14, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15) #8
  store i8 0, ptr %15, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %16) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %16, i8 0, i32 3, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  store i64 0, ptr %6, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %7) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %7, i8 0, i32 28, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #8
  store i8 0, ptr %8, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #8
  store i8 0, ptr %9, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #8
  store i8 0, ptr %10, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #8
  store i8 0, ptr %11, align 1, !annotation !8
  %22 = call i32 @nvbios_volt_parse(ptr noundef nonnull %18, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %7) #8
  %23 = icmp ne i32 %22, 0
  %24 = getelementptr inbounds %struct.nvbios_volt, ptr %7, i32 0, i32 5
  %25 = load i8, ptr %24, align 1
  %26 = icmp ne i8 %25, 0
  %27 = select i1 %23, i1 %26, i1 false
  %28 = getelementptr inbounds %struct.nvbios_volt, ptr %7, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  %31 = xor i1 %27, true
  %32 = select i1 %31, i1 true, i1 %30
  %33 = getelementptr inbounds %struct.nvbios_volt, ptr %7, i32 0, i32 6
  %34 = load i16, ptr %33, align 2
  %35 = icmp eq i16 %34, 0
  %36 = select i1 %32, i1 true, i1 %35
  %37 = getelementptr inbounds %struct.nvbios_volt, ptr %7, i32 0, i32 4
  %38 = load i8, ptr %37, align 4
  %39 = icmp eq i8 %38, 0
  %40 = select i1 %36, i1 true, i1 %39
  br i1 %40, label %86, label %41

41:                                               ; preds = %21
  %42 = getelementptr inbounds %struct.nvkm_subdev, ptr %18, i32 0, i32 5
  %43 = load i32, ptr %42, align 4
  %44 = icmp ugt i32 %43, 3
  br i1 %44, label %45, label %54

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.nvkm_subdev, ptr %18, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.nvkm_device, ptr %47, i32 0, i32 2
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds %struct.nvkm_subdev, ptr %18, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %49, ptr noundef nonnull @.str.7, ptr noundef %50) #9
  %51 = load i8, ptr %24, align 1
  %52 = load i16, ptr %33, align 2
  %53 = load i32, ptr %28, align 4
  br label %54

54:                                               ; preds = %45, %41
  %55 = phi i32 [ %53, %45 ], [ %29, %41 ]
  %56 = phi i16 [ %52, %45 ], [ %34, %41 ]
  %57 = phi i8 [ %51, %45 ], [ %25, %41 ]
  %58 = getelementptr inbounds %struct.nvbios_volt, ptr %7, i32 0, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr inbounds %struct.nvkm_volt, ptr %4, i32 0, i32 6
  store i32 %59, ptr %60, align 4
  %61 = getelementptr inbounds %struct.nvbios_volt, ptr %7, i32 0, i32 2
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds %struct.nvkm_volt, ptr %4, i32 0, i32 5
  store i32 %62, ptr %63, align 4
  %64 = zext i8 %57 to i32
  %65 = sext i16 %56 to i32
  %66 = getelementptr inbounds %struct.nvkm_volt, ptr %4, i32 0, i32 3
  br label %67

67:                                               ; preds = %80, %54
  %68 = phi i32 [ 0, %54 ], [ %82, %80 ]
  %69 = phi i32 [ %55, %54 ], [ %81, %80 ]
  %70 = icmp ult i32 %69, %59
  %71 = icmp ugt i32 %69, %62
  %72 = select i1 %70, i1 true, i1 %71
  br i1 %72, label %80, label %73

73:                                               ; preds = %67
  %74 = load i8, ptr %66, align 1
  %75 = zext i8 %74 to i32
  %76 = getelementptr %struct.nvkm_volt, ptr %4, i32 0, i32 4, i32 %75
  store i32 %69, ptr %76, align 4
  %77 = trunc i32 %68 to i8
  %78 = getelementptr %struct.nvkm_volt, ptr %4, i32 0, i32 4, i32 %75, i32 1
  store i8 %77, ptr %78, align 4
  %79 = add i8 %74, 1
  store i8 %79, ptr %66, align 1
  br label %80

80:                                               ; preds = %73, %67
  %81 = add i32 %69, %65
  %82 = add nuw nsw i32 %68, 1
  %83 = icmp eq i32 %68, %64
  br i1 %83, label %84, label %67

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.nvkm_volt, ptr %4, i32 0, i32 2
  store i8 %57, ptr %85, align 4
  br label %140

86:                                               ; preds = %21
  %87 = select i1 %27, i1 %39, i1 false
  br i1 %87, label %88, label %130

88:                                               ; preds = %86
  %89 = getelementptr inbounds %struct.nvkm_subdev, ptr %18, i32 0, i32 5
  %90 = load i32, ptr %89, align 4
  %91 = icmp ugt i32 %90, 3
  br i1 %91, label %92, label %98

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.nvkm_subdev, ptr %18, i32 0, i32 1
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.nvkm_device, ptr %94, i32 0, i32 2
  %96 = load ptr, ptr %95, align 8
  %97 = getelementptr inbounds %struct.nvkm_subdev, ptr %18, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %96, ptr noundef nonnull @.str.8, ptr noundef %97) #9
  br label %98

98:                                               ; preds = %92, %88
  %99 = getelementptr inbounds %struct.nvkm_volt, ptr %4, i32 0, i32 6
  store i32 -1, ptr %99, align 4
  %100 = getelementptr inbounds %struct.nvkm_volt, ptr %4, i32 0, i32 5
  store i32 0, ptr %100, align 4
  %101 = load i8, ptr %10, align 1
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %127, label %103

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.nvkm_volt, ptr %4, i32 0, i32 3
  %105 = getelementptr inbounds %struct.nvbios_volt_entry, ptr %6, i32 0, i32 1
  br label %106

106:                                              ; preds = %122, %103
  %107 = phi i32 [ 0, %103 ], [ %123, %122 ]
  %108 = call i32 @nvbios_volt_entry_parse(ptr noundef nonnull %18, i32 noundef %107, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %6) #8
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %122, label %110

110:                                              ; preds = %106
  %111 = load i32, ptr %6, align 8
  %112 = load i8, ptr %104, align 1
  %113 = zext i8 %112 to i32
  %114 = getelementptr %struct.nvkm_volt, ptr %4, i32 0, i32 4, i32 %113
  store i32 %111, ptr %114, align 4
  %115 = load i8, ptr %105, align 4
  %116 = getelementptr %struct.nvkm_volt, ptr %4, i32 0, i32 4, i32 %113, i32 1
  store i8 %115, ptr %116, align 4
  %117 = add i8 %112, 1
  store i8 %117, ptr %104, align 1
  %118 = load i32, ptr %99, align 4
  %119 = call i32 @llvm.umin.i32(i32 %118, i32 %111) #8
  store i32 %119, ptr %99, align 4
  %120 = load i32, ptr %100, align 4
  %121 = call i32 @llvm.umax.i32(i32 %120, i32 %111) #8
  store i32 %121, ptr %100, align 4
  br label %122

122:                                              ; preds = %110, %106
  %123 = add nuw nsw i32 %107, 1
  %124 = load i8, ptr %10, align 1
  %125 = zext i8 %124 to i32
  %126 = icmp ult i32 %123, %125
  br i1 %126, label %106, label %127

127:                                              ; preds = %122, %98
  %128 = load i8, ptr %24, align 1
  %129 = getelementptr inbounds %struct.nvkm_volt, ptr %4, i32 0, i32 2
  store i8 %128, ptr %129, align 4
  br label %140

130:                                              ; preds = %86
  %131 = load i32, ptr %7, align 4
  %132 = icmp eq i32 %131, 1
  %133 = select i1 %23, i1 %132, i1 false
  br i1 %133, label %134, label %140

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.nvkm_volt, ptr %4, i32 0, i32 6
  store i32 %29, ptr %135, align 4
  %136 = getelementptr inbounds %struct.nvbios_volt, ptr %7, i32 0, i32 8
  %137 = load i32, ptr %136, align 4
  %138 = add i32 %137, %29
  %139 = getelementptr inbounds %struct.nvkm_volt, ptr %4, i32 0, i32 5
  store i32 %138, ptr %139, align 4
  br label %140

140:                                              ; preds = %134, %130, %127, %84
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  %141 = getelementptr inbounds %struct.nvkm_volt, ptr %4, i32 0, i32 1, i32 5
  %142 = load i32, ptr %141, align 4
  %143 = icmp ugt i32 %142, 3
  br i1 %143, label %144, label %154

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.nvkm_volt, ptr %4, i32 0, i32 1, i32 1
  %146 = load ptr, ptr %145, align 4
  %147 = getelementptr inbounds %struct.nvkm_device, ptr %146, i32 0, i32 2
  %148 = load ptr, ptr %147, align 8
  %149 = getelementptr inbounds %struct.nvkm_volt, ptr %4, i32 0, i32 1, i32 4
  %150 = getelementptr inbounds %struct.nvkm_volt, ptr %4, i32 0, i32 6
  %151 = load i32, ptr %150, align 4
  %152 = getelementptr inbounds %struct.nvkm_volt, ptr %4, i32 0, i32 5
  %153 = load i32, ptr %152, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %148, ptr noundef nonnull @.str, ptr noundef %149, i32 noundef %151, i32 noundef %153) #9
  br label %154

154:                                              ; preds = %144, %140
  %155 = call i32 @nvbios_vmap_parse(ptr noundef nonnull %18, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %16) #8
  %156 = icmp eq i32 %155, 0
  %157 = load i8, ptr %16, align 1
  %158 = getelementptr inbounds %struct.nvbios_vmap, ptr %16, i32 0, i32 1
  %159 = load i8, ptr %158, align 1
  %160 = getelementptr inbounds %struct.nvbios_vmap, ptr %16, i32 0, i32 2
  %161 = load i8, ptr %160, align 1
  %162 = select i1 %156, i8 -1, i8 %157
  %163 = select i1 %156, i8 -1, i8 %159
  %164 = select i1 %156, i8 -1, i8 %161
  %165 = getelementptr inbounds %struct.nvkm_volt, ptr %4, i32 0, i32 7
  store i8 %162, ptr %165, align 4
  %166 = getelementptr inbounds %struct.nvkm_volt, ptr %4, i32 0, i32 8
  store i8 %163, ptr %166, align 1
  %167 = getelementptr inbounds %struct.nvkm_volt, ptr %4, i32 0, i32 9
  store i8 %164, ptr %167, align 2
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %16) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #8
  br label %168

168:                                              ; preds = %154, %5
  %169 = getelementptr inbounds %struct.nvkm_volt, ptr %4, i32 0, i32 3
  %170 = load i8, ptr %169, align 1
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %196, label %172

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.nvkm_volt, ptr %4, i32 0, i32 1, i32 5
  %174 = getelementptr inbounds %struct.nvkm_volt, ptr %4, i32 0, i32 1, i32 1
  %175 = getelementptr inbounds %struct.nvkm_volt, ptr %4, i32 0, i32 1, i32 4
  br label %176

176:                                              ; preds = %191, %172
  %177 = phi i8 [ %170, %172 ], [ %192, %191 ]
  %178 = phi i32 [ 0, %172 ], [ %193, %191 ]
  %179 = load i32, ptr %173, align 4
  %180 = icmp ugt i32 %179, 3
  br i1 %180, label %181, label %191

181:                                              ; preds = %176
  %182 = load ptr, ptr %174, align 4
  %183 = getelementptr inbounds %struct.nvkm_device, ptr %182, i32 0, i32 2
  %184 = load ptr, ptr %183, align 8
  %185 = getelementptr %struct.nvkm_volt, ptr %4, i32 0, i32 4, i32 %178
  %186 = getelementptr %struct.nvkm_volt, ptr %4, i32 0, i32 4, i32 %178, i32 1
  %187 = load i8, ptr %186, align 4
  %188 = zext i8 %187 to i32
  %189 = load i32, ptr %185, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %184, ptr noundef nonnull @.str.1, ptr noundef %175, i32 noundef %188, i32 noundef %189) #9
  %190 = load i8, ptr %169, align 1
  br label %191

191:                                              ; preds = %181, %176
  %192 = phi i8 [ %190, %181 ], [ %177, %176 ]
  %193 = add nuw nsw i32 %178, 1
  %194 = zext i8 %192 to i32
  %195 = icmp ult i32 %193, %194
  br i1 %195, label %176, label %196

196:                                              ; preds = %191, %168
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_subdev_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_vmap_parse(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_volt_new_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 2124) #10
  store ptr %7, ptr %4, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @nvkm_volt_ctor(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %7)
  br label %10

10:                                               ; preds = %9, %5
  %11 = phi i32 [ 0, %9 ], [ -12, %5 ]
  ret i32 %11
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal ptr @nvkm_volt_dtor(ptr noundef readnone %0) #5 {
  %2 = getelementptr i8, ptr %0, i32 -4
  ret ptr %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_volt_oneinit(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_volt_func, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 2116
  store i32 -22, ptr %8, align 4
  br label %23

9:                                                ; preds = %1
  %10 = tail call i32 %5(ptr noundef %2) #8
  %11 = getelementptr i8, ptr %0, i32 2116
  store i32 %10, ptr %11, align 4
  %12 = icmp sgt i32 %10, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = icmp ugt i32 %15, 3
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nvkm_device, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str.4, ptr noundef %22, i32 noundef %10) #9
  br label %23

23:                                               ; preds = %17, %13, %9, %7
  %24 = load ptr, ptr %2, align 4
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = tail call i32 %25(ptr noundef %2) #8
  br label %29

29:                                               ; preds = %27, %23
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_volt_init(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_volt_func, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 %5(ptr noundef %2) #8
  br label %31

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.nvkm_volt_func, ptr %3, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %2) #8
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %14, label %34

14:                                               ; preds = %9
  %15 = getelementptr i8, ptr %0, i32 53
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp eq i8 %16, 0
  br i1 %18, label %37, label %19

19:                                               ; preds = %28, %14
  %20 = phi i32 [ %29, %28 ], [ 0, %14 ]
  %21 = getelementptr %struct.nvkm_volt, ptr %2, i32 0, i32 4, i32 %20, i32 1
  %22 = load i8, ptr %21, align 4
  %23 = zext i8 %22 to i32
  %24 = icmp eq i32 %12, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = getelementptr %struct.nvkm_volt, ptr %2, i32 0, i32 4, i32 %20
  %27 = load i32, ptr %26, align 4
  br label %31

28:                                               ; preds = %19
  %29 = add nuw nsw i32 %20, 1
  %30 = icmp eq i32 %29, %17
  br i1 %30, label %37, label %19

31:                                               ; preds = %25, %7
  %32 = phi i32 [ %8, %7 ], [ %27, %25 ]
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %31, %9
  %35 = phi i32 [ %32, %31 ], [ %12, %9 ]
  %36 = icmp eq i32 %35, -19
  br i1 %36, label %57, label %37

37:                                               ; preds = %34, %28, %14
  %38 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %39 = load i32, ptr %38, align 4
  %40 = icmp ugt i32 %39, 3
  br i1 %40, label %41, label %57

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.nvkm_device, ptr %43, i32 0, i32 2
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %45, ptr noundef nonnull @.str.5, ptr noundef %46) #9
  br label %57

47:                                               ; preds = %31
  %48 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %49 = load i32, ptr %48, align 4
  %50 = icmp ugt i32 %49, 3
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.nvkm_device, ptr %53, i32 0, i32 2
  %55 = load ptr, ptr %54, align 8
  %56 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %55, ptr noundef nonnull @.str.6, ptr noundef %56, i32 noundef %32) #9
  br label %57

57:                                               ; preds = %51, %47, %41, %37, %34
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_volt_parse(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_volt_entry_parse(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
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
!8 = !{!"auto-init"}
