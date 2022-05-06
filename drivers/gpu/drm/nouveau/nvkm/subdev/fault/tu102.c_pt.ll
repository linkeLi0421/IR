; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/fault/tu102.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/fault/tu102.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_fault_func = type { ptr, ptr, ptr, ptr, %struct.anon.126, %struct.anon.127 }
%struct.anon.126 = type { i32, i32, ptr, ptr, ptr, ptr, ptr }
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
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.125, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.125 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_fault_buffer = type { %struct.nvkm_object, ptr, i32, i32, i32, i32, ptr, i64 }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }

@tu102_fault = internal constant %struct.nvkm_fault_func { ptr @gv100_fault_oneinit, ptr @tu102_fault_init, ptr @tu102_fault_fini, ptr @tu102_fault_intr, %struct.anon.126 { i32 2, i32 32, ptr @tu102_fault_buffer_info, ptr @gp100_fault_buffer_pin, ptr @tu102_fault_buffer_init, ptr @tu102_fault_buffer_fini, ptr @tu102_fault_buffer_intr }, %struct.anon.127 { %struct.nvkm_sclass { i32 0, i32 0, i32 50025, ptr null, ptr null }, i32 1 } }, align 4
@.str = private unnamed_addr constant [15 x i8] c"%s: intr %08x\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tu102_fault_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @nvkm_fault_new_(ptr noundef nonnull @tu102_fault, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #4
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_fault_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gv100_fault_oneinit(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tu102_fault_init(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_fault_func, ptr %2, i32 0, i32 4, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_fault, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  tail call void %4(ptr noundef %6) #4
  %7 = getelementptr inbounds %struct.nvkm_fault, ptr %0, i32 0, i32 5
  tail call void @nvkm_notify_get(ptr noundef %7) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tu102_fault_fini(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_fault, ptr %0, i32 0, i32 5
  tail call void @nvkm_notify_put(ptr noundef %2) #4
  %3 = getelementptr inbounds %struct.nvkm_fault, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.nvkm_fault_func, ptr %7, i32 0, i32 4, i32 5
  %9 = load ptr, ptr %8, align 4
  tail call void %9(ptr noundef nonnull %4) #4
  br label %10

10:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tu102_fault_intr(ptr noundef %0) #0 {
  %2 = alloca %struct.nvkm_fault_data, align 8
  %3 = getelementptr inbounds %struct.nvkm_fault, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 12071060
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %68, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #4
  %12 = getelementptr inbounds i8, ptr %2, i32 24
  store i64 0, ptr %12, align 8, !annotation !10
  %13 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 11
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 12071040
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %17 = load ptr, ptr %13, align 4
  %18 = getelementptr i8, ptr %17, i32 12071044
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %20 = load ptr, ptr %13, align 4
  %21 = getelementptr i8, ptr %20, i32 12071048
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %23 = load ptr, ptr %13, align 4
  %24 = getelementptr i8, ptr %23, i32 12071052
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %26 = load ptr, ptr %13, align 4
  %27 = getelementptr i8, ptr %26, i32 12071056
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
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
  call void @nvkm_fifo_fault(ptr noundef %64, ptr noundef nonnull %2) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #4
  %65 = load ptr, ptr %5, align 4
  %66 = getelementptr i8, ptr %65, i32 12071060
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 -2147483648) #4, !srcloc !12
  %67 = and i32 %8, 2147483647
  br label %68

68:                                               ; preds = %10, %1
  %69 = phi i32 [ %67, %10 ], [ %8, %1 ]
  %70 = and i32 %69, 512
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %81, label %72

72:                                               ; preds = %68
  %73 = load ptr, ptr %5, align 4
  %74 = getelementptr i8, ptr %73, i32 12062736
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 16) #4, !srcloc !12
  %75 = getelementptr inbounds %struct.nvkm_fault, ptr %0, i32 0, i32 2
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.nvkm_fault, ptr %0, i32 0, i32 4
  call void @nvkm_event_send(ptr noundef %79, i32 noundef 1, i32 noundef 0, ptr noundef null, i32 noundef 0) #4
  %80 = and i32 %69, -513
  br label %81

81:                                               ; preds = %78, %72, %68
  %82 = phi i32 [ %80, %78 ], [ %69, %72 ], [ %69, %68 ]
  %83 = and i32 %82, 256
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %94, label %85

85:                                               ; preds = %81
  %86 = load ptr, ptr %5, align 4
  %87 = getelementptr i8, ptr %86, i32 12062728
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 1) #4, !srcloc !12
  %88 = getelementptr %struct.nvkm_fault, ptr %0, i32 0, i32 2, i32 1
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %97, label %91

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.nvkm_fault, ptr %0, i32 0, i32 4
  call void @nvkm_event_send(ptr noundef %92, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef 0) #4
  %93 = and i32 %82, -257
  br label %94

94:                                               ; preds = %91, %81
  %95 = phi i32 [ %93, %91 ], [ %82, %81 ]
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %107, label %97

97:                                               ; preds = %94, %85
  %98 = phi i32 [ %95, %94 ], [ %82, %85 ]
  %99 = getelementptr inbounds %struct.nvkm_fault, ptr %0, i32 0, i32 1, i32 5
  %100 = load i32, ptr %99, align 4
  %101 = icmp ugt i32 %100, 3
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load ptr, ptr %3, align 4
  %104 = getelementptr inbounds %struct.nvkm_device, ptr %103, i32 0, i32 2
  %105 = load ptr, ptr %104, align 8
  %106 = getelementptr inbounds %struct.nvkm_fault, ptr %0, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %105, ptr noundef nonnull @.str, ptr noundef %106, i32 noundef %98) #5
  br label %107

107:                                              ; preds = %102, %97, %94
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tu102_fault_buffer_info(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nvkm_fault, ptr %3, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = shl i32 %7, 5
  %9 = add i32 %8, 12070928
  %10 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 %9
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %14 = or i32 %13, 1073741824
  %15 = load ptr, ptr %10, align 4
  %16 = getelementptr i8, ptr %15, i32 %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #4, !srcloc !12
  %17 = load ptr, ptr %10, align 4
  %18 = getelementptr i8, ptr %17, i32 %9
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %20 = and i32 %19, 1048575
  %21 = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %0, i32 0, i32 3
  store i32 %20, ptr %21, align 8
  %22 = add i32 %8, 12070920
  %23 = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %0, i32 0, i32 4
  store i32 %22, ptr %23, align 4
  %24 = add i32 %8, 12070924
  %25 = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %0, i32 0, i32 5
  store i32 %24, ptr %25, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @gp100_fault_buffer_pin(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tu102_fault_buffer_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nvkm_fault, ptr %3, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = shl i32 %7, 5
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 12063240
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 1) #4, !srcloc !12
  %12 = load ptr, ptr %9, align 4
  %13 = getelementptr i8, ptr %12, i32 12063248
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 16) #4, !srcloc !12
  %14 = add i32 %8, 12070928
  %15 = load ptr, ptr %9, align 4
  %16 = getelementptr i8, ptr %15, i32 %14
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %18 = and i32 %17, 1073741823
  %19 = or i32 %18, 1073741824
  %20 = load ptr, ptr %9, align 4
  %21 = getelementptr i8, ptr %20, i32 %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #4, !srcloc !12
  %22 = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %0, i32 0, i32 7
  %23 = load i64, ptr %22, align 8
  %24 = lshr i64 %23, 32
  %25 = trunc i64 %24 to i32
  %26 = load ptr, ptr %9, align 4
  %27 = add i32 %8, 12070916
  %28 = getelementptr i8, ptr %26, i32 %27
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %25) #4, !srcloc !12
  %29 = load i64, ptr %22, align 8
  %30 = trunc i64 %29 to i32
  %31 = load ptr, ptr %9, align 4
  %32 = add i32 %8, 12070912
  %33 = getelementptr i8, ptr %31, i32 %32
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %30) #4, !srcloc !12
  %34 = load ptr, ptr %9, align 4
  %35 = getelementptr i8, ptr %34, i32 %14
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %37 = or i32 %36, -2147483648
  %38 = load ptr, ptr %9, align 4
  %39 = getelementptr i8, ptr %38, i32 %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #4, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tu102_fault_buffer_fini(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nvkm_fault, ptr %3, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = shl i32 %7, 5
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 12063752
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 1) #4, !srcloc !12
  %12 = load ptr, ptr %9, align 4
  %13 = getelementptr i8, ptr %12, i32 12063760
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 16) #4, !srcloc !12
  %14 = add i32 %8, 12070928
  %15 = load ptr, ptr %9, align 4
  %16 = getelementptr i8, ptr %15, i32 %14
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %18 = and i32 %17, 2147483647
  %19 = load ptr, ptr %9, align 4
  %20 = getelementptr i8, ptr %19, i32 %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #4, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tu102_fault_buffer_intr(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nvkm_fault, ptr %4, i32 0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  tail call void @nvkm_mc_intr_mask(ptr noundef %6, i32 noundef 17, i32 noundef 0, i1 noundef zeroext %1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_notify_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_notify_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_event_send(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fifo_fault(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_mc_intr_mask(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
!8 = !{i64 3943982}
!9 = !{i64 2151483435}
!10 = !{!"auto-init"}
!11 = !{i64 2151484657}
!12 = !{i64 3943564}
