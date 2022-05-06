; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/fault/gv100.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/fault/gv100.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_fault_func = type { ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.127 }
%struct.anon = type { i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.anon.127 = type { %struct.nvkm_sclass, i32 }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_fault = type { ptr, %struct.nvkm_subdev, [2 x ptr], i32, %struct.nvkm_event, %struct.nvkm_notify, %struct.nvkm_device_oclass }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.nvkm_notify = type { ptr, %struct.list_head, i32, i32, ptr, i32, i32, i32, %struct.work_struct, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.nvkm_device_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_fault_data = type { i64, i64, i64, i8, i8, i8, i8, i8, i8, i8 }
%struct.nvkm_fault_buffer = type { %struct.nvkm_object, ptr, i32, i32, i32, i32, ptr, i64 }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.121, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.121 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }

@gv100_fault = internal constant %struct.nvkm_fault_func { ptr @gv100_fault_oneinit, ptr @gv100_fault_init, ptr @gv100_fault_fini, ptr @gv100_fault_intr, %struct.anon { i32 2, i32 32, ptr @gv100_fault_buffer_info, ptr @gp100_fault_buffer_pin, ptr @gv100_fault_buffer_init, ptr @gv100_fault_buffer_fini, ptr @gv100_fault_buffer_intr }, %struct.anon.127 { %struct.nvkm_sclass { i32 0, i32 0, i32 50025, ptr null, ptr null }, i32 1 } }, align 4
@.str = private unnamed_addr constant [15 x i8] c"%s: intr %08x\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gv100_fault_oneinit(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_fault, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_fault, ptr %0, i32 0, i32 4
  %5 = getelementptr inbounds %struct.nvkm_fault, ptr %0, i32 0, i32 5
  %6 = tail call i32 @nvkm_notify_init(ptr noundef %3, ptr noundef %4, ptr noundef nonnull @gv100_fault_ntfy_nrpfb, i1 noundef zeroext true, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef %5) #5
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_notify_init(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gv100_fault_ntfy_nrpfb(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.nvkm_fault_data, align 8
  %3 = getelementptr i8, ptr %0, i32 -44
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvkm_fault, ptr %6, i32 0, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %4, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %4, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr i8, ptr %12, i32 %14
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %17 = load ptr, ptr %11, align 4
  %18 = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %4, i32 0, i32 5
  %19 = load i32, ptr %18, align 8
  %20 = getelementptr i8, ptr %17, i32 %19
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %22 = icmp eq i32 %21, %16
  br i1 %22, label %128, label %23

23:                                               ; preds = %1
  %24 = load ptr, ptr %10, align 4
  %25 = getelementptr inbounds %struct.nvkm_memory_func, ptr %24, i32 0, i32 7
  %26 = load ptr, ptr %25, align 4
  %27 = tail call ptr %26(ptr noundef %10) #5
  %28 = getelementptr inbounds %struct.nvkm_memory, ptr %10, i32 0, i32 1
  %29 = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %4, i32 0, i32 3
  %30 = getelementptr inbounds %struct.nvkm_fault_data, ptr %2, i32 0, i32 1
  %31 = getelementptr inbounds %struct.nvkm_fault_data, ptr %2, i32 0, i32 2
  %32 = getelementptr inbounds %struct.nvkm_fault_data, ptr %2, i32 0, i32 3
  %33 = getelementptr inbounds %struct.nvkm_fault_data, ptr %2, i32 0, i32 4
  %34 = getelementptr inbounds %struct.nvkm_fault_data, ptr %2, i32 0, i32 5
  %35 = getelementptr inbounds %struct.nvkm_fault_data, ptr %2, i32 0, i32 6
  %36 = getelementptr inbounds %struct.nvkm_fault_data, ptr %2, i32 0, i32 7
  %37 = getelementptr inbounds %struct.nvkm_fault_data, ptr %2, i32 0, i32 8
  %38 = getelementptr inbounds %struct.nvkm_fault_data, ptr %2, i32 0, i32 9
  %39 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 52
  br label %40

40:                                               ; preds = %40, %23
  %41 = phi i32 [ %16, %23 ], [ %89, %40 ]
  %42 = load ptr, ptr %5, align 8
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.nvkm_fault_func, ptr %43, i32 0, i32 4, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = mul i32 %45, %41
  %47 = load ptr, ptr %28, align 4
  %48 = load ptr, ptr %47, align 4
  %49 = zext i32 %46 to i64
  %50 = call i32 %48(ptr noundef %10, i64 noundef %49) #5
  %51 = load ptr, ptr %28, align 4
  %52 = load ptr, ptr %51, align 4
  %53 = add i32 %46, 4
  %54 = zext i32 %53 to i64
  %55 = call i32 %52(ptr noundef %10, i64 noundef %54) #5
  %56 = load ptr, ptr %28, align 4
  %57 = load ptr, ptr %56, align 4
  %58 = add i32 %46, 8
  %59 = zext i32 %58 to i64
  %60 = call i32 %57(ptr noundef %10, i64 noundef %59) #5
  %61 = load ptr, ptr %28, align 4
  %62 = load ptr, ptr %61, align 4
  %63 = add i32 %46, 12
  %64 = zext i32 %63 to i64
  %65 = call i32 %62(ptr noundef %10, i64 noundef %64) #5
  %66 = load ptr, ptr %28, align 4
  %67 = load ptr, ptr %66, align 4
  %68 = add i32 %46, 16
  %69 = zext i32 %68 to i64
  %70 = call i32 %67(ptr noundef %10, i64 noundef %69) #5
  %71 = load ptr, ptr %28, align 4
  %72 = load ptr, ptr %71, align 4
  %73 = add i32 %46, 20
  %74 = zext i32 %73 to i64
  %75 = call i32 %72(ptr noundef %10, i64 noundef %74) #5
  %76 = load ptr, ptr %28, align 4
  %77 = load ptr, ptr %76, align 4
  %78 = add i32 %46, 24
  %79 = zext i32 %78 to i64
  %80 = call i32 %77(ptr noundef %10, i64 noundef %79) #5
  %81 = load ptr, ptr %28, align 4
  %82 = load ptr, ptr %81, align 4
  %83 = add i32 %46, 28
  %84 = zext i32 %83 to i64
  %85 = call i32 %82(ptr noundef %10, i64 noundef %84) #5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i32 32, i1 false) #5, !annotation !10
  %86 = add i32 %41, 1
  %87 = load i32, ptr %29, align 8
  %88 = icmp eq i32 %86, %87
  %89 = select i1 %88, i32 0, i32 %86
  %90 = load ptr, ptr %11, align 4
  %91 = load i32, ptr %13, align 4
  %92 = getelementptr i8, ptr %90, i32 %91
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  call void @arm_heavy_mb() #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %89) #5, !srcloc !12
  %93 = zext i32 %65 to i64
  %94 = shl nuw i64 %93, 32
  %95 = zext i32 %60 to i64
  %96 = or i64 %94, %95
  store i64 %96, ptr %2, align 8
  %97 = zext i32 %55 to i64
  %98 = shl nuw i64 %97, 32
  %99 = zext i32 %50 to i64
  %100 = or i64 %98, %99
  store i64 %100, ptr %30, align 8
  %101 = zext i32 %75 to i64
  %102 = shl nuw i64 %101, 32
  %103 = zext i32 %70 to i64
  %104 = or i64 %102, %103
  store i64 %104, ptr %31, align 8
  %105 = trunc i32 %80 to i8
  store i8 %105, ptr %32, align 8
  %106 = lshr i32 %85, 31
  %107 = trunc i32 %106 to i8
  store i8 %107, ptr %33, align 1
  %108 = lshr i32 %85, 24
  %109 = trunc i32 %108 to i8
  %110 = and i8 %109, 31
  store i8 %110, ptr %34, align 2
  %111 = lshr i32 %85, 20
  %112 = trunc i32 %111 to i8
  %113 = and i8 %112, 1
  store i8 %113, ptr %35, align 1
  %114 = lshr i32 %85, 16
  %115 = trunc i32 %114 to i8
  %116 = and i8 %115, 15
  store i8 %116, ptr %36, align 4
  %117 = lshr i32 %85, 8
  %118 = trunc i32 %117 to i8
  %119 = and i8 %118, 127
  store i8 %119, ptr %37, align 1
  %120 = trunc i32 %85 to i8
  %121 = and i8 %120, 31
  store i8 %121, ptr %38, align 2
  %122 = load ptr, ptr %39, align 8
  call void @nvkm_fifo_fault(ptr noundef %122, ptr noundef nonnull %2) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #5
  %123 = icmp eq i32 %89, %21
  br i1 %123, label %124, label %40

124:                                              ; preds = %40
  %125 = load ptr, ptr %10, align 4
  %126 = getelementptr inbounds %struct.nvkm_memory_func, ptr %125, i32 0, i32 8
  %127 = load ptr, ptr %126, align 4
  call void %127(ptr noundef %10) #5
  br label %128

128:                                              ; preds = %124, %1
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gv100_fault_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @nvkm_fault_new_(ptr noundef nonnull @gv100_fault, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #5
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_fault_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fifo_fault(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gv100_fault_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_fault, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 1051180
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %8 = or i32 %7, -2147483648
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 1051180
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #5, !srcloc !12
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr inbounds %struct.nvkm_fault_func, ptr %11, i32 0, i32 4, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nvkm_fault, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  tail call void %13(ptr noundef %15) #5
  %16 = getelementptr inbounds %struct.nvkm_fault, ptr %0, i32 0, i32 5
  tail call void @nvkm_notify_get(ptr noundef %16) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gv100_fault_fini(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_fault, ptr %0, i32 0, i32 5
  tail call void @nvkm_notify_put(ptr noundef %2) #5
  %3 = getelementptr inbounds %struct.nvkm_fault, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.nvkm_fault_func, ptr %7, i32 0, i32 4, i32 5
  %9 = load ptr, ptr %8, align 4
  tail call void %9(ptr noundef nonnull %4) #5
  br label %10

10:                                               ; preds = %6, %1
  %11 = getelementptr inbounds %struct.nvkm_fault, ptr %0, i32 0, i32 1, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nvkm_device, ptr %12, i32 0, i32 11
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 1051188
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %17 = or i32 %16, -2147483648
  %18 = load ptr, ptr %13, align 4
  %19 = getelementptr i8, ptr %18, i32 1051188
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #5, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gv100_fault_intr(ptr noundef %0) #0 {
  %2 = alloca %struct.nvkm_fault_data, align 8
  %3 = getelementptr inbounds %struct.nvkm_fault, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 1051168
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %68, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #5
  %12 = getelementptr inbounds i8, ptr %2, i32 24
  store i64 0, ptr %12, align 8, !annotation !10
  %13 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 11
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 1052236
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %17 = load ptr, ptr %13, align 4
  %18 = getelementptr i8, ptr %17, i32 1052240
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %20 = load ptr, ptr %13, align 4
  %21 = getelementptr i8, ptr %20, i32 1052244
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %23 = load ptr, ptr %13, align 4
  %24 = getelementptr i8, ptr %23, i32 1052248
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %26 = load ptr, ptr %13, align 4
  %27 = getelementptr i8, ptr %26, i32 1052252
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %29 = zext i32 %19 to i64
  %30 = shl nuw i64 %29, 32
  %31 = zext i32 %16 to i64
  %32 = or i64 %30, %31
  store i64 %32, ptr %2, align 8
  %33 = zext i32 %25 to i64
  %34 = shl nuw i64 %33, 32
  %35 = and i32 %22, -4096
  %36 = zext i32 %35 to i64
  %37 = or i64 %34, %36
  %38 = getelementptr inbounds %struct.nvkm_fault_data, ptr %2, i32 0, i32 1
  store i64 %37, ptr %38, align 8
  %39 = getelementptr inbounds %struct.nvkm_fault_data, ptr %2, i32 0, i32 2
  store i64 0, ptr %39, align 8
  %40 = trunc i32 %22 to i8
  store i8 %40, ptr %12, align 8
  %41 = lshr i32 %28, 31
  %42 = trunc i32 %41 to i8
  %43 = getelementptr inbounds %struct.nvkm_fault_data, ptr %2, i32 0, i32 4
  store i8 %42, ptr %43, align 1
  %44 = lshr i32 %28, 24
  %45 = trunc i32 %44 to i8
  %46 = and i8 %45, 31
  %47 = getelementptr inbounds %struct.nvkm_fault_data, ptr %2, i32 0, i32 5
  store i8 %46, ptr %47, align 2
  %48 = lshr i32 %28, 20
  %49 = trunc i32 %48 to i8
  %50 = and i8 %49, 1
  %51 = getelementptr inbounds %struct.nvkm_fault_data, ptr %2, i32 0, i32 6
  store i8 %50, ptr %51, align 1
  %52 = lshr i32 %28, 16
  %53 = trunc i32 %52 to i8
  %54 = and i8 %53, 15
  %55 = getelementptr inbounds %struct.nvkm_fault_data, ptr %2, i32 0, i32 7
  store i8 %54, ptr %55, align 4
  %56 = lshr i32 %28, 8
  %57 = trunc i32 %56 to i8
  %58 = and i8 %57, 127
  %59 = getelementptr inbounds %struct.nvkm_fault_data, ptr %2, i32 0, i32 8
  store i8 %58, ptr %59, align 1
  %60 = trunc i32 %28 to i8
  %61 = and i8 %60, 31
  %62 = getelementptr inbounds %struct.nvkm_fault_data, ptr %2, i32 0, i32 9
  store i8 %61, ptr %62, align 2
  %63 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 52
  %64 = load ptr, ptr %63, align 8
  call void @nvkm_fifo_fault(ptr noundef %64, ptr noundef nonnull %2) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #5
  %65 = load ptr, ptr %5, align 4
  %66 = getelementptr i8, ptr %65, i32 1052256
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  call void @arm_heavy_mb() #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 -2147483648) #5, !srcloc !12
  %67 = and i32 %8, 2147483647
  br label %68

68:                                               ; preds = %10, %1
  %69 = phi i32 [ %67, %10 ], [ %8, %1 ]
  %70 = and i32 %69, 536870912
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.nvkm_fault, ptr %0, i32 0, i32 2
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.nvkm_fault, ptr %0, i32 0, i32 4
  call void @nvkm_event_send(ptr noundef %77, i32 noundef 1, i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  %78 = and i32 %69, -536870913
  br label %79

79:                                               ; preds = %76, %72, %68
  %80 = phi i32 [ %78, %76 ], [ %69, %72 ], [ %69, %68 ]
  %81 = and i32 %80, 134217728
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %79
  %84 = getelementptr %struct.nvkm_fault, ptr %0, i32 0, i32 2, i32 1
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %93, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.nvkm_fault, ptr %0, i32 0, i32 4
  call void @nvkm_event_send(ptr noundef %88, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef 0) #5
  %89 = and i32 %80, -134217729
  br label %90

90:                                               ; preds = %87, %79
  %91 = phi i32 [ %89, %87 ], [ %80, %79 ]
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %103, label %93

93:                                               ; preds = %90, %83
  %94 = phi i32 [ %91, %90 ], [ %80, %83 ]
  %95 = getelementptr inbounds %struct.nvkm_fault, ptr %0, i32 0, i32 1, i32 5
  %96 = load i32, ptr %95, align 4
  %97 = icmp ugt i32 %96, 3
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load ptr, ptr %3, align 4
  %100 = getelementptr inbounds %struct.nvkm_device, ptr %99, i32 0, i32 2
  %101 = load ptr, ptr %100, align 8
  %102 = getelementptr inbounds %struct.nvkm_fault, ptr %0, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %101, ptr noundef nonnull @.str, ptr noundef %102, i32 noundef %94) #6
  br label %103

103:                                              ; preds = %98, %93, %90
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gv100_fault_buffer_info(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nvkm_fault, ptr %3, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = mul i32 %7, 20
  %9 = add i32 %8, 1052212
  %10 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 %9
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %14 = or i32 %13, 1073741824
  %15 = load ptr, ptr %10, align 4
  %16 = getelementptr i8, ptr %15, i32 %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #5, !srcloc !12
  %17 = load ptr, ptr %10, align 4
  %18 = getelementptr i8, ptr %17, i32 %9
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %20 = and i32 %19, 1048575
  %21 = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %0, i32 0, i32 3
  store i32 %20, ptr %21, align 8
  %22 = add i32 %8, 1052204
  %23 = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %0, i32 0, i32 4
  store i32 %22, ptr %23, align 4
  %24 = add i32 %8, 1052208
  %25 = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %0, i32 0, i32 5
  store i32 %24, ptr %25, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @gp100_fault_buffer_pin(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gv100_fault_buffer_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nvkm_fault, ptr %3, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = mul i32 %7, 20
  %9 = add i32 %8, 1052212
  %10 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 %9
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %14 = and i32 %13, 1073741823
  %15 = or i32 %14, 1073741824
  %16 = load ptr, ptr %10, align 4
  %17 = getelementptr i8, ptr %16, i32 %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #5, !srcloc !12
  %18 = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %0, i32 0, i32 7
  %19 = load i64, ptr %18, align 8
  %20 = lshr i64 %19, 32
  %21 = trunc i64 %20 to i32
  %22 = load ptr, ptr %10, align 4
  %23 = add i32 %8, 1052200
  %24 = getelementptr i8, ptr %22, i32 %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %21) #5, !srcloc !12
  %25 = load i64, ptr %18, align 8
  %26 = trunc i64 %25 to i32
  %27 = load ptr, ptr %10, align 4
  %28 = add i32 %8, 1052196
  %29 = getelementptr i8, ptr %27, i32 %28
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %26) #5, !srcloc !12
  %30 = load ptr, ptr %10, align 4
  %31 = getelementptr i8, ptr %30, i32 %9
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %33 = or i32 %32, -2147483648
  %34 = load ptr, ptr %10, align 4
  %35 = getelementptr i8, ptr %34, i32 %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #5, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gv100_fault_buffer_fini(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nvkm_fault, ptr %3, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = mul i32 %7, 20
  %9 = add i32 %8, 1052212
  %10 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 %9
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %14 = and i32 %13, 2147483647
  %15 = load ptr, ptr %10, align 4
  %16 = getelementptr i8, ptr %15, i32 %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #5, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gv100_fault_buffer_intr(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nvkm_fault, ptr %4, i32 0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 536870912, i32 134217728
  %11 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  br i1 %1, label %13, label %19

13:                                               ; preds = %2
  %14 = getelementptr i8, ptr %12, i32 1051180
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %16 = or i32 %15, %10
  %17 = load ptr, ptr %11, align 4
  %18 = getelementptr i8, ptr %17, i32 1051180
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #5, !srcloc !12
  br label %25

19:                                               ; preds = %2
  %20 = getelementptr i8, ptr %12, i32 1051188
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %22 = or i32 %21, %10
  %23 = load ptr, ptr %11, align 4
  %24 = getelementptr i8, ptr %23, i32 1051188
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #5, !srcloc !12
  br label %25

25:                                               ; preds = %19, %13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_notify_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_notify_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_event_send(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{i64 3945593}
!9 = !{i64 2151485046}
!10 = !{!"auto-init"}
!11 = !{i64 2151486268}
!12 = !{i64 3945175}
