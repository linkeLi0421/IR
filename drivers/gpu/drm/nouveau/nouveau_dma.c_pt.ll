; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nouveau_dma.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nouveau_dma.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.nouveau_channel = type { %struct.anon, ptr, ptr, ptr, i32, i64, i32, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, %struct.anon.99, i8, ptr, %struct.anon.100, i32, i32, i32, %struct.nvif_object, %struct.nvif_notify, %struct.atomic_t }
%struct.anon = type { %struct.nvif_push, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.anon.99 = type { ptr, ptr, %struct.nvif_object, i64 }
%struct.anon.100 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.0 }
%struct.anon.0 = type { ptr, i64 }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.81, %struct.anon.82, %struct.anon.84, ptr, %struct.anon.85, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.86, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.98 }
%struct.nvif_parent = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.anon.81 = type { ptr, i32, i32, i8 }
%struct.anon.82 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.83] }
%struct.anon.83 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.84 = type { i64, i64 }
%struct.anon.85 = type { i32, i64 }
%struct.anon.86 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.93, %struct.anon.94, %struct.anon.95, %struct.anon.96 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.87, i8 }
%union.anon.87 = type { %struct.anon.91 }
%struct.anon.91 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.93 = type { i32 }
%struct.anon.94 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.95 = type { i16, i16 }
%struct.anon.96 = type { i16, i16, i16, %struct.anon.97, i16 }
%struct.anon.97 = type { i8, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.98 = type { ptr, %struct.mutex, i8 }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv50_dma_push(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3, i32 4
  %7 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 13, i32 7
  %8 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 13, i32 6
  %9 = load i32, ptr %8, align 8
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %11, label %12, !prof !8

11:                                               ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nouveau_dma.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 78, 0\0A.popsection", ""() #2, !srcloc !9
  unreachable

12:                                               ; preds = %3
  %13 = load i32, ptr %7, align 4
  %14 = shl i32 %13, 1
  %15 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 13, i32 4
  %16 = load i32, ptr %15, align 8
  %17 = add i32 %14, %16
  %18 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 10
  %19 = load ptr, ptr %18, align 8
  %20 = add i32 %17, 1
  %21 = trunc i64 %1 to i32
  tail call void @nouveau_bo_wr32(ptr noundef %19, i32 noundef %17, i32 noundef %21) #2
  %22 = lshr i64 %1, 32
  %23 = trunc i64 %22 to i32
  %24 = shl i32 %2, 8
  %25 = or i32 %24, %23
  tail call void @nouveau_bo_wr32(ptr noundef %19, i32 noundef %20, i32 noundef %25) #2
  %26 = load i32, ptr %7, align 4
  %27 = add i32 %26, 1
  %28 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 13, i32 5
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %27, %29
  store i32 %30, ptr %7, align 4
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  %31 = tail call i32 @nouveau_bo_rd32(ptr noundef %19, i32 noundef 0) #2
  %32 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 17, i32 6
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %38, label %35, !prof !8

35:                                               ; preds = %12
  %36 = load i32, ptr %7, align 4
  %37 = getelementptr i8, ptr %33, i32 140
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !11
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %36) #2, !srcloc !12
  br label %41

38:                                               ; preds = %12
  %39 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 17
  %40 = load i32, ptr %7, align 4
  tail call void @nvif_object_wr(ptr noundef %39, i32 noundef 4, i64 noundef 140, i32 noundef %40) #2
  br label %41

41:                                               ; preds = %38, %35
  %42 = load ptr, ptr %6, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr %42, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 6
  %49 = load i32, ptr %48, align 8
  tail call void %45(ptr noundef %6, i32 noundef %49) #2
  br label %50

50:                                               ; preds = %47, %44, %41
  %51 = load i32, ptr %8, align 8
  %52 = add i32 %51, -1
  store i32 %52, ptr %8, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_bo_wr32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_rd32(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_wr(ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nouveau_dma_wait(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 13
  %5 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 13, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 13, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp slt i32 %10, %2
  br i1 %11, label %12, label %422

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 17
  %14 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 17, i32 6
  %15 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 15
  %16 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 14
  %17 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 10, i32 3
  %18 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 13, i32 2
  %19 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 10
  %20 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 16
  %21 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 13, i32 3
  br label %255

22:                                               ; preds = %3
  %23 = add i32 %1, 1
  %24 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 13, i32 6
  %25 = load i32, ptr %24, align 8
  %26 = icmp slt i32 %25, %23
  br i1 %26, label %27, label %61

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 17, i32 6
  %29 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 17
  %30 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 13, i32 7
  br label %31

31:                                               ; preds = %58, %27
  %32 = phi i32 [ 0, %27 ], [ %45, %58 ]
  %33 = phi i32 [ 0, %27 ], [ %42, %58 ]
  %34 = load ptr, ptr %28, align 8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %39, label %36, !prof !8

36:                                               ; preds = %31
  %37 = getelementptr i8, ptr %34, i32 136
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #2, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !14
  br label %41

39:                                               ; preds = %31
  %40 = tail call i32 @nvif_object_rd(ptr noundef %29, i32 noundef 4, i64 noundef 136) #2
  br label %41

41:                                               ; preds = %39, %36
  %42 = phi i32 [ %38, %36 ], [ %40, %39 ]
  %43 = icmp eq i32 %42, %33
  %44 = add i32 %32, 1
  %45 = select i1 %43, i32 %44, i32 1
  %46 = and i32 %45, 255
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 214748) #2
  %50 = icmp ugt i32 %45, 100000
  br i1 %50, label %422, label %51

51:                                               ; preds = %48, %41
  %52 = load i32, ptr %30, align 4
  %53 = sub i32 %42, %52
  store i32 %53, ptr %24, align 8
  %54 = icmp slt i32 %53, 1
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, ptr %5, align 4
  %57 = add i32 %56, %53
  store i32 %57, ptr %24, align 8
  br label %58

58:                                               ; preds = %55, %51
  %59 = phi i32 [ %53, %51 ], [ %57, %55 ]
  %60 = icmp slt i32 %59, %23
  br i1 %60, label %31, label %61

61:                                               ; preds = %58, %22
  %62 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 13, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = icmp slt i32 %63, %2
  br i1 %64, label %65, label %422

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 17
  %67 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 17, i32 6
  %68 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 15
  %69 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 14
  %70 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 10, i32 3
  %71 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 13, i32 2
  %72 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 13, i32 3
  %73 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 11
  %74 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 10
  %75 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 16
  br label %76

76:                                               ; preds = %250, %65
  %77 = phi i32 [ 0, %65 ], [ %252, %250 ]
  %78 = phi i64 [ 0, %65 ], [ %251, %250 ]
  %79 = load ptr, ptr %67, align 8
  %80 = icmp eq ptr %79, null
  %81 = load i32, ptr %68, align 4
  br i1 %80, label %85, label %82, !prof !8

82:                                               ; preds = %76
  %83 = getelementptr i8, ptr %79, i32 %81
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #2, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !14
  br label %88

85:                                               ; preds = %76
  %86 = zext i32 %81 to i64
  %87 = tail call i32 @nvif_object_rd(ptr noundef %66, i32 noundef 4, i64 noundef %86) #2
  br label %88

88:                                               ; preds = %85, %82
  %89 = phi i32 [ %84, %82 ], [ %87, %85 ]
  %90 = zext i32 %89 to i64
  %91 = load i32, ptr %69, align 8
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %107, label %93

93:                                               ; preds = %88
  %94 = load ptr, ptr %67, align 8
  %95 = icmp eq ptr %94, null
  br i1 %95, label %99, label %96, !prof !8

96:                                               ; preds = %93
  %97 = getelementptr i8, ptr %94, i32 %91
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %97) #2, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !14
  br label %102

99:                                               ; preds = %93
  %100 = zext i32 %91 to i64
  %101 = tail call i32 @nvif_object_rd(ptr noundef %66, i32 noundef 4, i64 noundef %100) #2
  br label %102

102:                                              ; preds = %99, %96
  %103 = phi i32 [ %98, %96 ], [ %101, %99 ]
  %104 = zext i32 %103 to i64
  %105 = shl nuw i64 %104, 32
  %106 = or i64 %105, %90
  br label %107

107:                                              ; preds = %102, %88
  %108 = phi i64 [ %106, %102 ], [ %90, %88 ]
  %109 = icmp eq i64 %108, %78
  br i1 %109, label %110, label %117

110:                                              ; preds = %107
  %111 = add i32 %77, 1
  %112 = and i32 %111, 255
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %110
  %115 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %115(i32 noundef 214748) #2
  %116 = icmp sgt i32 %111, 100000
  br i1 %116, label %422, label %117

117:                                              ; preds = %114, %110, %107
  %118 = phi i64 [ %78, %114 ], [ %78, %110 ], [ %108, %107 ]
  %119 = phi i32 [ %111, %114 ], [ %111, %110 ], [ 1, %107 ]
  %120 = load i64, ptr %70, align 8
  %121 = icmp ult i64 %108, %120
  br i1 %121, label %250, label %122

122:                                              ; preds = %117
  %123 = load i32, ptr %4, align 8
  %124 = shl i32 %123, 2
  %125 = sext i32 %124 to i64
  %126 = add i64 %120, %125
  %127 = icmp ugt i64 %108, %126
  br i1 %127, label %250, label %128

128:                                              ; preds = %122
  %129 = sub i64 %108, %120
  %130 = lshr i64 %129, 2
  %131 = trunc i64 %130 to i32
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %135, !prof !8

133:                                              ; preds = %128
  %134 = icmp eq i32 %131, -22
  br i1 %134, label %250, label %420

135:                                              ; preds = %128
  %136 = load i32, ptr %71, align 8
  %137 = icmp slt i32 %136, %131
  br i1 %137, label %243, label %138

138:                                              ; preds = %135
  %139 = sub i32 %123, %136
  store i32 %139, ptr %62, align 4
  %140 = icmp slt i32 %139, %2
  br i1 %140, label %141, label %422

141:                                              ; preds = %138
  %142 = load i32, ptr %72, align 4
  %143 = icmp eq i32 %136, %142
  br i1 %143, label %176, label %144

144:                                              ; preds = %141
  store i8 1, ptr %73, align 8
  %145 = load i32, ptr %5, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %153, label %147

147:                                              ; preds = %144
  %148 = shl i32 %142, 2
  %149 = sext i32 %148 to i64
  %150 = add i64 %120, %149
  %151 = sub i32 %136, %142
  %152 = shl i32 %151, 2
  tail call void @nv50_dma_push(ptr noundef %0, i64 noundef %150, i32 noundef %152) #2
  br label %174

153:                                              ; preds = %144
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !15
  tail call void @arm_heavy_mb() #2
  %154 = load ptr, ptr %74, align 8
  %155 = tail call i32 @nouveau_bo_rd32(ptr noundef %154, i32 noundef 0) #2
  %156 = load ptr, ptr %67, align 8
  %157 = icmp eq ptr %156, null
  br i1 %157, label %166, label %158, !prof !8

158:                                              ; preds = %153
  %159 = load i32, ptr %71, align 8
  %160 = shl i32 %159, 2
  %161 = load i64, ptr %70, align 8
  %162 = trunc i64 %161 to i32
  %163 = add i32 %160, %162
  %164 = load i32, ptr %75, align 8
  %165 = getelementptr i8, ptr %156, i32 %164
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !11
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %165, i32 %163) #2, !srcloc !12
  br label %174

166:                                              ; preds = %153
  %167 = load i32, ptr %75, align 8
  %168 = zext i32 %167 to i64
  %169 = load i32, ptr %71, align 8
  %170 = shl i32 %169, 2
  %171 = load i64, ptr %70, align 8
  %172 = trunc i64 %171 to i32
  %173 = add i32 %170, %172
  tail call void @nvif_object_wr(ptr noundef %66, i32 noundef 4, i64 noundef %168, i32 noundef %173) #2
  br label %174

174:                                              ; preds = %166, %158, %147
  %175 = load i32, ptr %71, align 8
  store i32 %175, ptr %72, align 4
  br label %176

176:                                              ; preds = %174, %141
  br label %177

177:                                              ; preds = %237, %176
  %178 = phi i64 [ %219, %237 ], [ %118, %176 ]
  %179 = phi i32 [ %220, %237 ], [ %119, %176 ]
  %180 = load ptr, ptr %67, align 8
  %181 = icmp eq ptr %180, null
  %182 = load i32, ptr %68, align 4
  br i1 %181, label %186, label %183, !prof !8

183:                                              ; preds = %177
  %184 = getelementptr i8, ptr %180, i32 %182
  %185 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %184) #2, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !14
  br label %189

186:                                              ; preds = %177
  %187 = zext i32 %182 to i64
  %188 = tail call i32 @nvif_object_rd(ptr noundef %66, i32 noundef 4, i64 noundef %187) #2
  br label %189

189:                                              ; preds = %186, %183
  %190 = phi i32 [ %185, %183 ], [ %188, %186 ]
  %191 = zext i32 %190 to i64
  %192 = load i32, ptr %69, align 8
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %208, label %194

194:                                              ; preds = %189
  %195 = load ptr, ptr %67, align 8
  %196 = icmp eq ptr %195, null
  br i1 %196, label %200, label %197, !prof !8

197:                                              ; preds = %194
  %198 = getelementptr i8, ptr %195, i32 %192
  %199 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %198) #2, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !14
  br label %203

200:                                              ; preds = %194
  %201 = zext i32 %192 to i64
  %202 = tail call i32 @nvif_object_rd(ptr noundef %66, i32 noundef 4, i64 noundef %201) #2
  br label %203

203:                                              ; preds = %200, %197
  %204 = phi i32 [ %199, %197 ], [ %202, %200 ]
  %205 = zext i32 %204 to i64
  %206 = shl nuw i64 %205, 32
  %207 = or i64 %206, %191
  br label %208

208:                                              ; preds = %203, %189
  %209 = phi i64 [ %207, %203 ], [ %191, %189 ]
  %210 = icmp eq i64 %209, %178
  br i1 %210, label %211, label %218

211:                                              ; preds = %208
  %212 = add i32 %179, 1
  %213 = and i32 %212, 255
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %211
  %216 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %216(i32 noundef 214748) #2
  %217 = icmp sgt i32 %212, 100000
  br i1 %217, label %422, label %218

218:                                              ; preds = %215, %211, %208
  %219 = phi i64 [ %178, %215 ], [ %178, %211 ], [ %209, %208 ]
  %220 = phi i32 [ %212, %215 ], [ %212, %211 ], [ 1, %208 ]
  %221 = load i64, ptr %70, align 8
  %222 = icmp ult i64 %209, %221
  br i1 %222, label %241, label %223

223:                                              ; preds = %218
  %224 = load i32, ptr %4, align 8
  %225 = shl i32 %224, 2
  %226 = sext i32 %225 to i64
  %227 = add i64 %221, %226
  %228 = icmp ugt i64 %209, %227
  br i1 %228, label %241, label %229

229:                                              ; preds = %223
  %230 = sub i64 %209, %221
  %231 = lshr i64 %230, 2
  %232 = trunc i64 %231 to i32
  %233 = icmp slt i32 %232, 0
  br i1 %233, label %234, label %237, !prof !8

234:                                              ; preds = %229
  %235 = trunc i64 %231 to i32
  %236 = icmp eq i32 %235, -22
  br i1 %236, label %241, label %418

237:                                              ; preds = %229
  %238 = icmp eq i32 %232, 0
  br i1 %238, label %177, label %239

239:                                              ; preds = %237
  %240 = trunc i64 %231 to i32
  br label %241

241:                                              ; preds = %239, %234, %223, %218
  %242 = phi i32 [ -22, %234 ], [ %240, %239 ], [ -22, %218 ], [ -22, %223 ]
  store i32 0, ptr %71, align 8
  store i32 0, ptr %72, align 4
  br label %243

243:                                              ; preds = %241, %135
  %244 = phi i32 [ %136, %135 ], [ 0, %241 ]
  %245 = phi i64 [ %118, %135 ], [ %219, %241 ]
  %246 = phi i32 [ %119, %135 ], [ %220, %241 ]
  %247 = phi i32 [ %131, %135 ], [ %242, %241 ]
  %248 = xor i32 %244, -1
  %249 = add i32 %247, %248
  store i32 %249, ptr %62, align 4
  br label %250

250:                                              ; preds = %243, %133, %122, %117
  %251 = phi i64 [ %245, %243 ], [ %118, %133 ], [ %118, %117 ], [ %118, %122 ]
  %252 = phi i32 [ %246, %243 ], [ %119, %133 ], [ %119, %117 ], [ %119, %122 ]
  %253 = load i32, ptr %62, align 4
  %254 = icmp slt i32 %253, %2
  br i1 %254, label %76, label %422

255:                                              ; preds = %413, %12
  %256 = phi i32 [ 0, %12 ], [ %416, %413 ]
  %257 = phi i64 [ 0, %12 ], [ %415, %413 ]
  %258 = load ptr, ptr %14, align 8
  %259 = icmp eq ptr %258, null
  %260 = load i32, ptr %15, align 4
  br i1 %259, label %264, label %261, !prof !8

261:                                              ; preds = %255
  %262 = getelementptr i8, ptr %258, i32 %260
  %263 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %262) #2, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !14
  br label %267

264:                                              ; preds = %255
  %265 = zext i32 %260 to i64
  %266 = tail call i32 @nvif_object_rd(ptr noundef %13, i32 noundef 4, i64 noundef %265) #2
  br label %267

267:                                              ; preds = %264, %261
  %268 = phi i32 [ %263, %261 ], [ %266, %264 ]
  %269 = zext i32 %268 to i64
  %270 = load i32, ptr %16, align 8
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %286, label %272

272:                                              ; preds = %267
  %273 = load ptr, ptr %14, align 8
  %274 = icmp eq ptr %273, null
  br i1 %274, label %278, label %275, !prof !8

275:                                              ; preds = %272
  %276 = getelementptr i8, ptr %273, i32 %270
  %277 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %276) #2, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !14
  br label %281

278:                                              ; preds = %272
  %279 = zext i32 %270 to i64
  %280 = tail call i32 @nvif_object_rd(ptr noundef %13, i32 noundef 4, i64 noundef %279) #2
  br label %281

281:                                              ; preds = %278, %275
  %282 = phi i32 [ %277, %275 ], [ %280, %278 ]
  %283 = zext i32 %282 to i64
  %284 = shl nuw i64 %283, 32
  %285 = or i64 %284, %269
  br label %286

286:                                              ; preds = %281, %267
  %287 = phi i64 [ %285, %281 ], [ %269, %267 ]
  %288 = icmp eq i64 %287, %257
  br i1 %288, label %289, label %296

289:                                              ; preds = %286
  %290 = add i32 %256, 1
  %291 = and i32 %290, 255
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %296

293:                                              ; preds = %289
  %294 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %294(i32 noundef 214748) #2
  %295 = icmp sgt i32 %290, 100000
  br i1 %295, label %422, label %296

296:                                              ; preds = %293, %289, %286
  %297 = phi i64 [ %257, %293 ], [ %257, %289 ], [ %287, %286 ]
  %298 = phi i32 [ %290, %293 ], [ %290, %289 ], [ 1, %286 ]
  %299 = load i64, ptr %17, align 8
  %300 = icmp ult i64 %287, %299
  br i1 %300, label %314, label %301

301:                                              ; preds = %296
  %302 = load i32, ptr %4, align 8
  %303 = shl i32 %302, 2
  %304 = sext i32 %303 to i64
  %305 = add i64 %299, %304
  %306 = icmp ugt i64 %287, %305
  br i1 %306, label %314, label %307

307:                                              ; preds = %301
  %308 = sub i64 %287, %299
  %309 = lshr i64 %308, 2
  %310 = trunc i64 %309 to i32
  %311 = icmp eq i32 %310, -16
  br i1 %311, label %422, label %312, !prof !8

312:                                              ; preds = %307
  %313 = icmp slt i32 %310, 32
  br i1 %313, label %314, label %316, !prof !16

314:                                              ; preds = %312, %301, %296
  %315 = load i32, ptr %9, align 4
  br label %413

316:                                              ; preds = %312
  %317 = load i32, ptr %18, align 8
  %318 = icmp slt i32 %317, %310
  br i1 %318, label %406, label %319

319:                                              ; preds = %316
  %320 = load i32, ptr %4, align 8
  %321 = sub i32 %320, %317
  store i32 %321, ptr %9, align 4
  %322 = icmp slt i32 %321, %2
  br i1 %322, label %323, label %422

323:                                              ; preds = %319
  %324 = trunc i64 %299 to i32
  %325 = or i32 %324, 536870912
  %326 = load ptr, ptr %19, align 8
  %327 = add i32 %317, 1
  store i32 %327, ptr %18, align 8
  tail call void @nouveau_bo_wr32(ptr noundef %326, i32 noundef %317, i32 noundef %325) #2
  br label %328

328:                                              ; preds = %385, %323
  %329 = phi i64 [ %297, %323 ], [ %370, %385 ]
  %330 = phi i32 [ %298, %323 ], [ %371, %385 ]
  %331 = load ptr, ptr %14, align 8
  %332 = icmp eq ptr %331, null
  %333 = load i32, ptr %15, align 4
  br i1 %332, label %337, label %334, !prof !8

334:                                              ; preds = %328
  %335 = getelementptr i8, ptr %331, i32 %333
  %336 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %335) #2, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !14
  br label %340

337:                                              ; preds = %328
  %338 = zext i32 %333 to i64
  %339 = tail call i32 @nvif_object_rd(ptr noundef %13, i32 noundef 4, i64 noundef %338) #2
  br label %340

340:                                              ; preds = %337, %334
  %341 = phi i32 [ %336, %334 ], [ %339, %337 ]
  %342 = zext i32 %341 to i64
  %343 = load i32, ptr %16, align 8
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %359, label %345

345:                                              ; preds = %340
  %346 = load ptr, ptr %14, align 8
  %347 = icmp eq ptr %346, null
  br i1 %347, label %351, label %348, !prof !8

348:                                              ; preds = %345
  %349 = getelementptr i8, ptr %346, i32 %343
  %350 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %349) #2, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !14
  br label %354

351:                                              ; preds = %345
  %352 = zext i32 %343 to i64
  %353 = tail call i32 @nvif_object_rd(ptr noundef %13, i32 noundef 4, i64 noundef %352) #2
  br label %354

354:                                              ; preds = %351, %348
  %355 = phi i32 [ %350, %348 ], [ %353, %351 ]
  %356 = zext i32 %355 to i64
  %357 = shl nuw i64 %356, 32
  %358 = or i64 %357, %342
  br label %359

359:                                              ; preds = %354, %340
  %360 = phi i64 [ %358, %354 ], [ %342, %340 ]
  %361 = icmp eq i64 %360, %329
  br i1 %361, label %362, label %369

362:                                              ; preds = %359
  %363 = add i32 %330, 1
  %364 = and i32 %363, 255
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %366, label %369

366:                                              ; preds = %362
  %367 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %367(i32 noundef 214748) #2
  %368 = icmp sgt i32 %363, 100000
  br i1 %368, label %422, label %369

369:                                              ; preds = %366, %362, %359
  %370 = phi i64 [ %329, %366 ], [ %329, %362 ], [ %360, %359 ]
  %371 = phi i32 [ %363, %366 ], [ %363, %362 ], [ 1, %359 ]
  %372 = load i64, ptr %17, align 8
  %373 = icmp ult i64 %360, %372
  br i1 %373, label %385, label %374

374:                                              ; preds = %369
  %375 = load i32, ptr %4, align 8
  %376 = shl i32 %375, 2
  %377 = sext i32 %376 to i64
  %378 = add i64 %372, %377
  %379 = icmp ugt i64 %360, %378
  br i1 %379, label %385, label %380

380:                                              ; preds = %374
  %381 = sub i64 %360, %372
  %382 = lshr i64 %381, 2
  %383 = trunc i64 %382 to i32
  %384 = icmp eq i32 %383, -16
  br i1 %384, label %422, label %385, !prof !8

385:                                              ; preds = %380, %374, %369
  %386 = phi i32 [ %383, %380 ], [ -22, %374 ], [ -22, %369 ]
  %387 = icmp slt i32 %386, 33
  br i1 %387, label %328, label %388

388:                                              ; preds = %385
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !17
  tail call void @arm_heavy_mb() #2
  %389 = load ptr, ptr %19, align 8
  %390 = tail call i32 @nouveau_bo_rd32(ptr noundef %389, i32 noundef 0) #2
  %391 = load ptr, ptr %14, align 8
  %392 = icmp eq ptr %391, null
  br i1 %392, label %399, label %393, !prof !8

393:                                              ; preds = %388
  %394 = load i64, ptr %17, align 8
  %395 = trunc i64 %394 to i32
  %396 = add i32 %395, 128
  %397 = load i32, ptr %20, align 8
  %398 = getelementptr i8, ptr %391, i32 %397
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !11
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %398, i32 %396) #2, !srcloc !12
  br label %405

399:                                              ; preds = %388
  %400 = load i32, ptr %20, align 8
  %401 = zext i32 %400 to i64
  %402 = load i64, ptr %17, align 8
  %403 = trunc i64 %402 to i32
  %404 = add i32 %403, 128
  tail call void @nvif_object_wr(ptr noundef %13, i32 noundef 4, i64 noundef %401, i32 noundef %404) #2
  br label %405

405:                                              ; preds = %399, %393
  store i32 32, ptr %21, align 4
  store i32 32, ptr %18, align 8
  br label %406

406:                                              ; preds = %405, %316
  %407 = phi i32 [ %317, %316 ], [ 32, %405 ]
  %408 = phi i64 [ %297, %316 ], [ %370, %405 ]
  %409 = phi i32 [ %298, %316 ], [ %371, %405 ]
  %410 = phi i32 [ %310, %316 ], [ %386, %405 ]
  %411 = xor i32 %407, -1
  %412 = add i32 %410, %411
  store i32 %412, ptr %9, align 4
  br label %413

413:                                              ; preds = %406, %314
  %414 = phi i32 [ %315, %314 ], [ %412, %406 ]
  %415 = phi i64 [ %297, %314 ], [ %408, %406 ]
  %416 = phi i32 [ %298, %314 ], [ %409, %406 ]
  %417 = icmp slt i32 %414, %2
  br i1 %417, label %255, label %422

418:                                              ; preds = %234
  %419 = trunc i64 %231 to i32
  br label %422

420:                                              ; preds = %133
  %421 = trunc i64 %130 to i32
  br label %422

422:                                              ; preds = %420, %418, %413, %380, %366, %319, %307, %293, %250, %215, %138, %114, %61, %48, %8
  %423 = phi i32 [ 0, %61 ], [ 0, %8 ], [ %419, %418 ], [ %421, %420 ], [ -16, %380 ], [ -16, %366 ], [ -16, %307 ], [ 0, %319 ], [ 0, %413 ], [ -16, %293 ], [ -16, %215 ], [ 0, %250 ], [ 0, %138 ], [ -16, %114 ], [ -16, %48 ]
  ret i32 %423
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_rd(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2155613118, i64 2155613619, i64 2155613155, i64 2155613211, i64 2155613245, i64 2155613269, i64 2155613310, i64 2155613331, i64 2155613359, i64 2155613393}
!10 = !{i64 2155614025}
!11 = !{i64 2151489461}
!12 = !{i64 3948368}
!13 = !{i64 3948786}
!14 = !{i64 2151488239}
!15 = !{i64 2155609566}
!16 = !{!"branch_weights", i32 2002, i32 2000}
!17 = !{i64 2155616673}
