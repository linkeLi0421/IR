; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/xtensa.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/xtensa.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_engine_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.128, %struct.anon.129, ptr, [0 x %struct.nvkm_sclass] }
%struct.anon.128 = type { ptr }
%struct.anon.129 = type { ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_xtensa = type { ptr, i32, %struct.nvkm_engine, ptr }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.120 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.anon.120 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.119, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.119 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.nvkm_memory_ptrs = type { ptr, ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.nvkm_xtensa_func = type { i32, i32, [0 x %struct.nvkm_sclass] }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }

@nvkm_xtensa = internal constant %struct.nvkm_engine_func { ptr @nvkm_xtensa_dtor, ptr null, ptr null, ptr null, ptr @nvkm_xtensa_init, ptr @nvkm_xtensa_fini, ptr @nvkm_xtensa_intr, ptr null, ptr null, %struct.anon.128 zeroinitializer, %struct.anon.129 { ptr null, ptr @nvkm_xtensa_oclass_get }, ptr @nvkm_xtensa_cclass, [0 x %struct.nvkm_sclass] zeroinitializer }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@nvkm_xtensa_cclass = internal constant %struct.nvkm_object_func { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nvkm_xtensa_cclass_bind, ptr null }, align 4
@.str = private unnamed_addr constant [21 x i8] c"nouveau/nv84_xuc%03x\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"%s: unable to load firmware %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"%s: firmware %s too large\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"%s: Watchdog interrupt, engine hung.\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"%s: Enabling FIFO_CTRL\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_xtensa_new_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i32 noundef %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #0 {
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 100) #10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  store ptr %0, ptr %9, align 8
  %12 = getelementptr inbounds %struct.nvkm_xtensa, ptr %9, i32 0, i32 1
  store i32 %5, ptr %12, align 4
  %13 = getelementptr inbounds %struct.nvkm_xtensa, ptr %9, i32 0, i32 2
  store ptr %13, ptr %6, align 4
  %14 = tail call i32 @nvkm_engine_ctor(ptr noundef nonnull @nvkm_xtensa, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, ptr noundef %13) #11
  br label %15

15:                                               ; preds = %11, %7
  %16 = phi i32 [ %14, %11 ], [ -12, %7 ]
  ret i32 %16
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_engine_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal ptr @nvkm_xtensa_dtor(ptr noundef readnone %0) #4 {
  %2 = getelementptr i8, ptr %0, i32 -8
  ret ptr %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_xtensa_init(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = alloca [32 x i8], align 1
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %0, i32 -4
  %8 = load i32, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store ptr null, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %3, i8 0, i32 32, i1 false), !annotation !8
  %9 = getelementptr i8, ptr %0, i32 88
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %84

12:                                               ; preds = %1
  %13 = lshr i32 %8, 12
  %14 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 32, ptr noundef nonnull @.str, i32 noundef %13)
  %15 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = call i32 @request_firmware(ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %16) #11
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = icmp ugt i32 %21, 1
  br i1 %22, label %23, label %139

23:                                               ; preds = %19
  %24 = load ptr, ptr %5, align 4
  %25 = getelementptr inbounds %struct.nvkm_device, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %26, ptr noundef nonnull @.str.1, ptr noundef %27, ptr noundef nonnull %3) #12
  br label %139

28:                                               ; preds = %12
  %29 = load ptr, ptr %2, align 4
  %30 = load i32, ptr %29, align 4
  %31 = icmp ugt i32 %30, 262144
  br i1 %31, label %32, label %44

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 5
  %34 = load i32, ptr %33, align 4
  %35 = icmp ugt i32 %34, 1
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load ptr, ptr %5, align 4
  %38 = getelementptr inbounds %struct.nvkm_device, ptr %37, i32 0, i32 2
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %39, ptr noundef nonnull @.str.2, ptr noundef %40, ptr noundef nonnull %3) #12
  %41 = load ptr, ptr %2, align 4
  br label %42

42:                                               ; preds = %36, %32
  %43 = phi ptr [ %41, %36 ], [ %29, %32 ]
  call void @release_firmware(ptr noundef %43) #11
  br label %139

44:                                               ; preds = %28
  %45 = call i32 @nvkm_memory_new(ptr noundef %6, i32 noundef 0, i64 noundef 262144, i32 noundef 4096, i1 noundef zeroext false, ptr noundef %9) #11
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr %2, align 4
  call void @release_firmware(ptr noundef %48) #11
  br label %139

49:                                               ; preds = %44
  %50 = load ptr, ptr %9, align 4
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.nvkm_memory_func, ptr %51, i32 0, i32 7
  %53 = load ptr, ptr %52, align 4
  %54 = call ptr %53(ptr noundef %50) #11
  %55 = load ptr, ptr %2, align 4
  %56 = load i32, ptr %55, align 4
  %57 = icmp ult i32 %56, 4
  br i1 %57, label %77, label %58

58:                                               ; preds = %58, %49
  %59 = phi ptr [ %73, %58 ], [ %55, %49 ]
  %60 = phi i32 [ %72, %58 ], [ 0, %49 ]
  %61 = load ptr, ptr %9, align 4
  %62 = getelementptr inbounds %struct.nvkm_memory, ptr %61, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %63, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = shl i32 %60, 2
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.firmware, ptr %59, i32 0, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr i32, ptr %69, i32 %60
  %71 = load i32, ptr %70, align 4
  call void %65(ptr noundef %61, i64 noundef %67, i32 noundef %71) #11
  %72 = add nuw nsw i32 %60, 1
  %73 = load ptr, ptr %2, align 4
  %74 = load i32, ptr %73, align 4
  %75 = lshr i32 %74, 2
  %76 = icmp ult i32 %72, %75
  br i1 %76, label %58, label %77

77:                                               ; preds = %58, %49
  %78 = load ptr, ptr %9, align 4
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.nvkm_memory_func, ptr %79, i32 0, i32 8
  %81 = load ptr, ptr %80, align 4
  call void %81(ptr noundef %78) #11
  %82 = load ptr, ptr %2, align 4
  call void @release_firmware(ptr noundef %82) #11
  %83 = load ptr, ptr %9, align 4
  br label %84

84:                                               ; preds = %77, %1
  %85 = phi ptr [ %83, %77 ], [ %10, %1 ]
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.nvkm_memory_func, ptr %86, i32 0, i32 4
  %88 = load ptr, ptr %87, align 4
  %89 = call i64 %88(ptr noundef %85) #11
  %90 = load ptr, ptr %9, align 4
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.nvkm_memory_func, ptr %91, i32 0, i32 5
  %93 = load ptr, ptr %92, align 4
  %94 = call i64 %93(ptr noundef %90) #11
  %95 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %96 = load ptr, ptr %95, align 4
  %97 = add i32 %8, 3344
  %98 = getelementptr i8, ptr %96, i32 %97
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 536870911) #11, !srcloc !10
  %99 = load ptr, ptr %95, align 4
  %100 = add i32 %8, 3336
  %101 = getelementptr i8, ptr %99, i32 %100
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 268435455) #11, !srcloc !10
  %102 = load ptr, ptr %4, align 4
  %103 = getelementptr inbounds %struct.nvkm_xtensa_func, ptr %102, i32 0, i32 1
  %104 = load i32, ptr %103, align 4
  %105 = load ptr, ptr %95, align 4
  %106 = add i32 %8, 3368
  %107 = getelementptr i8, ptr %105, i32 %106
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 %104) #11, !srcloc !10
  %108 = load ptr, ptr %95, align 4
  %109 = add i32 %8, 3104
  %110 = getelementptr i8, ptr %108, i32 %109
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 63) #11, !srcloc !10
  %111 = load ptr, ptr %95, align 4
  %112 = add i32 %8, 3460
  %113 = getelementptr i8, ptr %111, i32 %112
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %113, i32 63) #11, !srcloc !10
  %114 = lshr i64 %89, 8
  %115 = trunc i64 %114 to i32
  %116 = load ptr, ptr %95, align 4
  %117 = add i32 %8, 3264
  %118 = getelementptr i8, ptr %116, i32 %117
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 %115) #11, !srcloc !10
  %119 = load ptr, ptr %95, align 4
  %120 = add i32 %8, 3268
  %121 = getelementptr i8, ptr %119, i32 %120
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 28) #11, !srcloc !10
  %122 = lshr i64 %94, 8
  %123 = trunc i64 %122 to i32
  %124 = load ptr, ptr %95, align 4
  %125 = add i32 %8, 3272
  %126 = getelementptr i8, ptr %124, i32 %125
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %126, i32 %123) #11, !srcloc !10
  %127 = load ptr, ptr %95, align 4
  %128 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %127) #11, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %129 = load ptr, ptr %95, align 4
  %130 = add i32 %8, 3552
  %131 = getelementptr i8, ptr %129, i32 %130
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 %128) #11, !srcloc !10
  %132 = load ptr, ptr %95, align 4
  %133 = add i32 %8, 3304
  %134 = getelementptr i8, ptr %132, i32 %133
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %134, i32 15) #11, !srcloc !10
  %135 = load ptr, ptr %95, align 4
  %136 = getelementptr i8, ptr %135, i32 %109
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %136, i32 63) #11, !srcloc !10
  %137 = load ptr, ptr %95, align 4
  %138 = getelementptr i8, ptr %137, i32 %112
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %138, i32 63) #11, !srcloc !10
  br label %139

139:                                              ; preds = %84, %47, %42, %23, %19
  %140 = phi i32 [ 0, %84 ], [ -22, %42 ], [ %45, %47 ], [ %17, %23 ], [ %17, %19 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret i32 %140
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_xtensa_fini(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 -4
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = add i32 %6, 3460
  %10 = getelementptr i8, ptr %8, i32 %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 0) #11, !srcloc !10
  %11 = load ptr, ptr %7, align 4
  %12 = add i32 %6, 3476
  %13 = getelementptr i8, ptr %11, i32 %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 0) #11, !srcloc !10
  br i1 %1, label %16, label %14

14:                                               ; preds = %2
  %15 = getelementptr i8, ptr %0, i32 88
  tail call void @nvkm_memory_unref(ptr noundef %15) #11
  br label %16

16:                                               ; preds = %14, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nvkm_xtensa_intr(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 -4
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = add i32 %6, 3332
  %10 = getelementptr i8, ptr %8, i32 %9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #11, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %12 = load ptr, ptr %7, align 4
  %13 = add i32 %6, 3104
  %14 = getelementptr i8, ptr %12, i32 %13
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #11, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %16 = load ptr, ptr %7, align 4
  %17 = add i32 %6, 3112
  %18 = getelementptr i8, ptr %16, i32 %17
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #11, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %20 = load ptr, ptr %7, align 4
  %21 = add i32 %6, 3340
  %22 = getelementptr i8, ptr %20, i32 %21
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #11, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %24 = and i32 %15, 16
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 5
  %28 = load i32, ptr %27, align 4
  %29 = icmp ugt i32 %28, 1
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load ptr, ptr %3, align 4
  %32 = getelementptr inbounds %struct.nvkm_device, ptr %31, i32 0, i32 2
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %33, ptr noundef nonnull @.str.3, ptr noundef %34) #12
  br label %35

35:                                               ; preds = %30, %26, %1
  %36 = load ptr, ptr %7, align 4
  %37 = getelementptr i8, ptr %36, i32 %13
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %15) #11, !srcloc !10
  %38 = load ptr, ptr %7, align 4
  %39 = getelementptr i8, ptr %38, i32 %13
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #11, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %41 = icmp ne i32 %11, 65537
  %42 = icmp ne i32 %23, 512
  %43 = select i1 %41, i1 true, i1 %42
  %44 = icmp eq i32 %19, 0
  %45 = select i1 %43, i1 true, i1 %44
  %46 = icmp ne i32 %40, 0
  %47 = select i1 %45, i1 true, i1 %46
  br i1 %47, label %68, label %48

48:                                               ; preds = %35
  %49 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 5
  %50 = load i32, ptr %49, align 4
  %51 = icmp ugt i32 %50, 3
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load ptr, ptr %3, align 4
  %54 = getelementptr inbounds %struct.nvkm_device, ptr %53, i32 0, i32 2
  %55 = load ptr, ptr %54, align 8
  %56 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %55, ptr noundef nonnull @.str.4, ptr noundef %56) #12
  br label %57

57:                                               ; preds = %52, %48
  %58 = load i32, ptr %5, align 4
  %59 = add i32 %58, 3476
  %60 = load ptr, ptr %7, align 4
  %61 = getelementptr i8, ptr %60, i32 %59
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #11, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %63 = load ptr, ptr %2, align 4
  %64 = load i32, ptr %63, align 4
  %65 = or i32 %64, %62
  %66 = load ptr, ptr %7, align 4
  %67 = getelementptr i8, ptr %66, i32 %59
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !9
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %65) #11, !srcloc !10
  br label %68

68:                                               ; preds = %57, %35
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_xtensa_oclass_get(ptr nocapture noundef %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.nvkm_oclass, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 -8
  %6 = load ptr, ptr %5, align 4
  br label %7

7:                                                ; preds = %12, %2
  %8 = phi i32 [ 0, %2 ], [ %13, %12 ]
  %9 = getelementptr %struct.nvkm_xtensa_func, ptr %6, i32 0, i32 2, i32 %8, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %7
  %13 = add i32 %8, 1
  %14 = icmp eq i32 %8, %1
  br i1 %14, label %15, label %7

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.nvkm_oclass, ptr %0, i32 0, i32 1
  %17 = getelementptr %struct.nvkm_xtensa_func, ptr %6, i32 0, i32 2, i32 %1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(20) %16, ptr noundef align 4 dereferenceable(20) %17, i32 20, i1 false)
  br label %18

18:                                               ; preds = %15, %7
  %19 = phi i32 [ %1, %15 ], [ %8, %7 ]
  ret i32 %19
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_memory_new(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_xtensa_cclass_bind(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvkm_engine, ptr %6, i32 0, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @nvkm_gpuobj_new(ptr noundef %8, i32 noundef 65536, i32 noundef %2, i1 noundef zeroext true, ptr noundef %1, ptr noundef %3) #11
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpuobj_new(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }

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
!9 = !{i64 2151484503}
!10 = !{i64 3943410}
!11 = !{i64 3943828}
!12 = !{i64 2151483281}
