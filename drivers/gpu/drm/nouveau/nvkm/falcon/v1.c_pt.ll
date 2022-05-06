; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/falcon/v1.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/falcon/v1.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_falcon_func = type { %struct.anon, %struct.anon.0, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.1, %struct.anon.1, [0 x %struct.nvkm_sclass] }
%struct.anon = type { ptr, i32 }
%struct.anon.0 = type { ptr, i32 }
%struct.anon.1 = type { i32, i32, i32 }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_falcon = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.mutex, i8, ptr, i8, i8, i8, ptr, i8, %struct.anon.123, %struct.anon.124, %struct.nvkm_engine }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.anon.123 = type { i32, ptr, i32, i8 }
%struct.anon.124 = type { i32, ptr, i32, i8 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.127 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.127 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.122, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.122 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nvkm_timer = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@.str = private unnamed_addr constant [41 x i8] c"drivers/gpu/drm/nouveau/nvkm/falcon/v1.c\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%s %s: timeout\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"%s: Falcon mem scrubbing timeout\0A\00", align 1
@nvkm_falcon_v1 = internal constant %struct.nvkm_falcon_func { %struct.anon zeroinitializer, %struct.anon.0 zeroinitializer, ptr null, ptr null, i32 0, i32 0, ptr @nvkm_falcon_v1_load_imem, ptr @nvkm_falcon_v1_load_dmem, ptr @nvkm_falcon_v1_read_dmem, i32 0, ptr @nvkm_falcon_v1_bind_context, ptr @nvkm_falcon_v1_wait_for_halt, ptr @nvkm_falcon_v1_clear_interrupt, ptr @nvkm_falcon_v1_set_start_addr, ptr @nvkm_falcon_v1_start, ptr @nvkm_falcon_v1_enable, ptr @nvkm_falcon_v1_disable, ptr null, %struct.anon.1 zeroinitializer, %struct.anon.1 zeroinitializer, [0 x %struct.nvkm_sclass] zeroinitializer }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@switch.table.nvkm_falcon_v1_bind_context = private unnamed_addr constant [3 x i32] [i32 1073741824, i32 1610612736, i32 1879048192], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_falcon_v1_load_imem(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i16 noundef zeroext %4, i8 noundef zeroext %5, i1 noundef zeroext %6) #0 {
  %8 = trunc i32 %3 to i8
  %9 = and i8 %8, 3
  %10 = zext i8 %9 to i32
  %11 = sub i32 %3, %10
  %12 = select i1 %6, i32 268435456, i32 0
  %13 = or i32 %12, %2
  %14 = or i32 %13, 16777216
  %15 = zext i8 %5 to i32
  %16 = shl nuw nsw i32 %15, 4
  %17 = add nuw nsw i32 %16, 384
  %18 = getelementptr inbounds %struct.nvkm_falcon, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nvkm_subdev, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.nvkm_device, ptr %21, i32 0, i32 11
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.nvkm_falcon, ptr %0, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %17, %25
  %27 = getelementptr i8, ptr %23, i32 %26
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %14) #7, !srcloc !9
  %28 = icmp ult i32 %11, 4
  br i1 %28, label %63, label %29

29:                                               ; preds = %7
  %30 = lshr i32 %11, 2
  %31 = add nuw nsw i32 %16, 392
  %32 = add nuw nsw i32 %16, 388
  br label %33

33:                                               ; preds = %49, %29
  %34 = phi i32 [ 0, %29 ], [ %61, %49 ]
  %35 = phi i16 [ %4, %29 ], [ %50, %49 ]
  %36 = and i32 %34, 63
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %33
  %39 = add i16 %35, 1
  %40 = zext i16 %35 to i32
  %41 = load ptr, ptr %18, align 4
  %42 = getelementptr inbounds %struct.nvkm_subdev, ptr %41, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.nvkm_device, ptr %43, i32 0, i32 11
  %45 = load ptr, ptr %44, align 4
  %46 = load i32, ptr %24, align 4
  %47 = add i32 %31, %46
  %48 = getelementptr i8, ptr %45, i32 %47
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %40) #7, !srcloc !9
  br label %49

49:                                               ; preds = %38, %33
  %50 = phi i16 [ %39, %38 ], [ %35, %33 ]
  %51 = getelementptr i32, ptr %1, i32 %34
  %52 = load i32, ptr %51, align 4
  %53 = load ptr, ptr %18, align 4
  %54 = getelementptr inbounds %struct.nvkm_subdev, ptr %53, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.nvkm_device, ptr %55, i32 0, i32 11
  %57 = load ptr, ptr %56, align 4
  %58 = load i32, ptr %24, align 4
  %59 = add i32 %32, %58
  %60 = getelementptr i8, ptr %57, i32 %59
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %52) #7, !srcloc !9
  %61 = add nuw nsw i32 %34, 1
  %62 = icmp eq i32 %61, %30
  br i1 %62, label %63, label %33

63:                                               ; preds = %49, %7
  %64 = phi i16 [ %4, %7 ], [ %50, %49 ]
  %65 = phi i32 [ 0, %7 ], [ %30, %49 ]
  %66 = icmp eq i8 %9, 0
  br i1 %66, label %98, label %67

67:                                               ; preds = %63
  %68 = getelementptr i32, ptr %1, i32 %65
  %69 = load i32, ptr %68, align 4
  %70 = and i32 %65, 63
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %67
  %73 = add nuw nsw i32 %16, 392
  %74 = zext i16 %64 to i32
  %75 = load ptr, ptr %18, align 4
  %76 = getelementptr inbounds %struct.nvkm_subdev, ptr %75, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.nvkm_device, ptr %77, i32 0, i32 11
  %79 = load ptr, ptr %78, align 4
  %80 = load i32, ptr %24, align 4
  %81 = add i32 %73, %80
  %82 = getelementptr i8, ptr %79, i32 %81
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 %74) #7, !srcloc !9
  br label %83

83:                                               ; preds = %72, %67
  %84 = add nuw nsw i32 %16, 388
  %85 = shl nuw nsw i32 %10, 3
  %86 = shl nsw i32 -1, %85
  %87 = xor i32 %86, -1
  %88 = and i32 %69, %87
  %89 = load ptr, ptr %18, align 4
  %90 = getelementptr inbounds %struct.nvkm_subdev, ptr %89, i32 0, i32 1
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.nvkm_device, ptr %91, i32 0, i32 11
  %93 = load ptr, ptr %92, align 4
  %94 = load i32, ptr %24, align 4
  %95 = add i32 %84, %94
  %96 = getelementptr i8, ptr %93, i32 %95
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 %88) #7, !srcloc !9
  %97 = add nuw nsw i32 %65, 1
  br label %98

98:                                               ; preds = %83, %63
  %99 = phi i32 [ %97, %83 ], [ %65, %63 ]
  %100 = and i32 %99, 63
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %117, label %102

102:                                              ; preds = %98
  %103 = add nuw nsw i32 %16, 388
  br label %104

104:                                              ; preds = %104, %102
  %105 = phi i32 [ %99, %102 ], [ %114, %104 ]
  %106 = load ptr, ptr %18, align 4
  %107 = getelementptr inbounds %struct.nvkm_subdev, ptr %106, i32 0, i32 1
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr inbounds %struct.nvkm_device, ptr %108, i32 0, i32 11
  %110 = load ptr, ptr %109, align 4
  %111 = load i32, ptr %24, align 4
  %112 = add i32 %103, %111
  %113 = getelementptr i8, ptr %110, i32 %112
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %113, i32 0) #7, !srcloc !9
  %114 = add nuw nsw i32 %105, 1
  %115 = and i32 %114, 63
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %104

117:                                              ; preds = %104, %98
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_falcon_v1_load_dmem(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4) #0 {
  %6 = load ptr, ptr %0, align 4
  %7 = trunc i32 %3 to i8
  %8 = and i8 %7, 3
  %9 = getelementptr inbounds %struct.nvkm_falcon_func, ptr %6, i32 0, i32 9
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, -1
  %12 = icmp ult i32 %11, %2
  br i1 %12, label %13, label %68

13:                                               ; preds = %5
  %14 = sub i32 %2, %10
  %15 = zext i8 %8 to i32
  %16 = sub i32 %3, %15
  %17 = zext i8 %4 to i32
  %18 = shl nuw nsw i32 %17, 3
  %19 = add nuw nsw i32 %18, 2752
  %20 = or i32 %14, 16777216
  %21 = getelementptr inbounds %struct.nvkm_falcon, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.nvkm_subdev, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nvkm_device, ptr %24, i32 0, i32 11
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.nvkm_falcon, ptr %0, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %19, %28
  %30 = getelementptr i8, ptr %26, i32 %29
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %20) #7, !srcloc !9
  %31 = icmp ult i32 %16, 4
  br i1 %31, label %49, label %32

32:                                               ; preds = %13
  %33 = lshr i32 %16, 2
  %34 = add nuw nsw i32 %18, 2756
  br label %35

35:                                               ; preds = %35, %32
  %36 = phi i32 [ 0, %32 ], [ %47, %35 ]
  %37 = getelementptr i32, ptr %1, i32 %36
  %38 = load i32, ptr %37, align 4
  %39 = load ptr, ptr %21, align 4
  %40 = getelementptr inbounds %struct.nvkm_subdev, ptr %39, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.nvkm_device, ptr %41, i32 0, i32 11
  %43 = load ptr, ptr %42, align 4
  %44 = load i32, ptr %27, align 4
  %45 = add i32 %34, %44
  %46 = getelementptr i8, ptr %43, i32 %45
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %38) #7, !srcloc !9
  %47 = add nuw nsw i32 %36, 1
  %48 = icmp eq i32 %47, %33
  br i1 %48, label %49, label %35

49:                                               ; preds = %35, %13
  %50 = phi i32 [ 0, %13 ], [ %33, %35 ]
  %51 = icmp eq i8 %8, 0
  br i1 %51, label %122, label %52

52:                                               ; preds = %49
  %53 = getelementptr i32, ptr %1, i32 %50
  %54 = load i32, ptr %53, align 4
  %55 = add nuw nsw i32 %18, 2756
  %56 = shl nuw nsw i32 %15, 3
  %57 = shl nsw i32 -1, %56
  %58 = xor i32 %57, -1
  %59 = and i32 %54, %58
  %60 = load ptr, ptr %21, align 4
  %61 = getelementptr inbounds %struct.nvkm_subdev, ptr %60, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.nvkm_device, ptr %62, i32 0, i32 11
  %64 = load ptr, ptr %63, align 4
  %65 = load i32, ptr %27, align 4
  %66 = add i32 %55, %65
  %67 = getelementptr i8, ptr %64, i32 %66
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %59) #7, !srcloc !9
  br label %122

68:                                               ; preds = %5
  %69 = zext i8 %8 to i32
  %70 = sub i32 %3, %69
  %71 = zext i8 %4 to i32
  %72 = shl nuw nsw i32 %71, 3
  %73 = add nuw nsw i32 %72, 448
  %74 = or i32 %2, 16777216
  %75 = getelementptr inbounds %struct.nvkm_falcon, ptr %0, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.nvkm_subdev, ptr %76, i32 0, i32 1
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.nvkm_device, ptr %78, i32 0, i32 11
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.nvkm_falcon, ptr %0, i32 0, i32 3
  %82 = load i32, ptr %81, align 4
  %83 = add i32 %73, %82
  %84 = getelementptr i8, ptr %80, i32 %83
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %74) #7, !srcloc !9
  %85 = icmp ult i32 %70, 4
  br i1 %85, label %103, label %86

86:                                               ; preds = %68
  %87 = lshr i32 %70, 2
  %88 = add nuw nsw i32 %72, 452
  br label %89

89:                                               ; preds = %89, %86
  %90 = phi i32 [ 0, %86 ], [ %101, %89 ]
  %91 = getelementptr i32, ptr %1, i32 %90
  %92 = load i32, ptr %91, align 4
  %93 = load ptr, ptr %75, align 4
  %94 = getelementptr inbounds %struct.nvkm_subdev, ptr %93, i32 0, i32 1
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.nvkm_device, ptr %95, i32 0, i32 11
  %97 = load ptr, ptr %96, align 4
  %98 = load i32, ptr %81, align 4
  %99 = add i32 %88, %98
  %100 = getelementptr i8, ptr %97, i32 %99
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 %92) #7, !srcloc !9
  %101 = add nuw nsw i32 %90, 1
  %102 = icmp eq i32 %101, %87
  br i1 %102, label %103, label %89

103:                                              ; preds = %89, %68
  %104 = phi i32 [ 0, %68 ], [ %87, %89 ]
  %105 = icmp eq i8 %8, 0
  br i1 %105, label %122, label %106

106:                                              ; preds = %103
  %107 = getelementptr i32, ptr %1, i32 %104
  %108 = load i32, ptr %107, align 4
  %109 = add nuw nsw i32 %72, 452
  %110 = shl nuw nsw i32 %69, 3
  %111 = shl nsw i32 -1, %110
  %112 = xor i32 %111, -1
  %113 = and i32 %108, %112
  %114 = load ptr, ptr %75, align 4
  %115 = getelementptr inbounds %struct.nvkm_subdev, ptr %114, i32 0, i32 1
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr inbounds %struct.nvkm_device, ptr %116, i32 0, i32 11
  %118 = load ptr, ptr %117, align 4
  %119 = load i32, ptr %81, align 4
  %120 = add i32 %109, %119
  %121 = getelementptr i8, ptr %118, i32 %120
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 %113) #7, !srcloc !9
  br label %122

122:                                              ; preds = %106, %103, %52, %49
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_falcon_v1_read_dmem(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3, ptr nocapture noundef writeonly %4) #0 {
  %6 = load ptr, ptr %0, align 4
  %7 = trunc i32 %2 to i8
  %8 = and i8 %7, 3
  %9 = getelementptr inbounds %struct.nvkm_falcon_func, ptr %6, i32 0, i32 9
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, -1
  %12 = icmp ult i32 %11, %1
  br i1 %12, label %13, label %71

13:                                               ; preds = %5
  %14 = sub i32 %1, %10
  %15 = zext i8 %8 to i32
  %16 = sub i32 %2, %15
  %17 = zext i8 %3 to i32
  %18 = shl nuw nsw i32 %17, 3
  %19 = add nuw nsw i32 %18, 2752
  %20 = or i32 %14, 33554432
  %21 = getelementptr inbounds %struct.nvkm_falcon, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.nvkm_subdev, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nvkm_device, ptr %24, i32 0, i32 11
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.nvkm_falcon, ptr %0, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %19, %28
  %30 = getelementptr i8, ptr %26, i32 %29
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %20) #7, !srcloc !9
  %31 = icmp ult i32 %16, 4
  br i1 %31, label %49, label %32

32:                                               ; preds = %13
  %33 = lshr i32 %16, 2
  %34 = add nuw nsw i32 %18, 2756
  br label %35

35:                                               ; preds = %35, %32
  %36 = phi i32 [ 0, %32 ], [ %47, %35 ]
  %37 = load ptr, ptr %21, align 4
  %38 = getelementptr inbounds %struct.nvkm_subdev, ptr %37, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.nvkm_device, ptr %39, i32 0, i32 11
  %41 = load ptr, ptr %40, align 4
  %42 = load i32, ptr %27, align 4
  %43 = add i32 %34, %42
  %44 = getelementptr i8, ptr %41, i32 %43
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %46 = getelementptr i32, ptr %4, i32 %36
  store i32 %45, ptr %46, align 4
  %47 = add nuw nsw i32 %36, 1
  %48 = icmp eq i32 %47, %33
  br i1 %48, label %49, label %35

49:                                               ; preds = %35, %13
  %50 = icmp eq i8 %8, 0
  br i1 %50, label %128, label %51

51:                                               ; preds = %49
  %52 = add nuw nsw i32 %18, 2756
  %53 = load ptr, ptr %21, align 4
  %54 = getelementptr inbounds %struct.nvkm_subdev, ptr %53, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.nvkm_device, ptr %55, i32 0, i32 11
  %57 = load ptr, ptr %56, align 4
  %58 = load i32, ptr %27, align 4
  %59 = add i32 %52, %58
  %60 = getelementptr i8, ptr %57, i32 %59
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %62 = icmp ugt i32 %15, %2
  br i1 %62, label %128, label %63

63:                                               ; preds = %63, %51
  %64 = phi i32 [ %68, %63 ], [ %61, %51 ]
  %65 = phi i32 [ %69, %63 ], [ %16, %51 ]
  %66 = trunc i32 %64 to i8
  %67 = getelementptr i8, ptr %4, i32 %65
  store i8 %66, ptr %67, align 1
  %68 = lshr i32 %64, 8
  %69 = add nuw i32 %65, 1
  %70 = icmp ult i32 %69, %2
  br i1 %70, label %63, label %128

71:                                               ; preds = %5
  %72 = zext i8 %8 to i32
  %73 = sub i32 %2, %72
  %74 = zext i8 %3 to i32
  %75 = shl nuw nsw i32 %74, 3
  %76 = add nuw nsw i32 %75, 448
  %77 = or i32 %1, 33554432
  %78 = getelementptr inbounds %struct.nvkm_falcon, ptr %0, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.nvkm_subdev, ptr %79, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.nvkm_device, ptr %81, i32 0, i32 11
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.nvkm_falcon, ptr %0, i32 0, i32 3
  %85 = load i32, ptr %84, align 4
  %86 = add i32 %76, %85
  %87 = getelementptr i8, ptr %83, i32 %86
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %77) #7, !srcloc !9
  %88 = icmp ult i32 %73, 4
  br i1 %88, label %106, label %89

89:                                               ; preds = %71
  %90 = lshr i32 %73, 2
  %91 = add nuw nsw i32 %75, 452
  br label %92

92:                                               ; preds = %92, %89
  %93 = phi i32 [ 0, %89 ], [ %104, %92 ]
  %94 = load ptr, ptr %78, align 4
  %95 = getelementptr inbounds %struct.nvkm_subdev, ptr %94, i32 0, i32 1
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.nvkm_device, ptr %96, i32 0, i32 11
  %98 = load ptr, ptr %97, align 4
  %99 = load i32, ptr %84, align 4
  %100 = add i32 %91, %99
  %101 = getelementptr i8, ptr %98, i32 %100
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %103 = getelementptr i32, ptr %4, i32 %93
  store i32 %102, ptr %103, align 4
  %104 = add nuw nsw i32 %93, 1
  %105 = icmp eq i32 %104, %90
  br i1 %105, label %106, label %92

106:                                              ; preds = %92, %71
  %107 = icmp eq i8 %8, 0
  br i1 %107, label %128, label %108

108:                                              ; preds = %106
  %109 = add nuw nsw i32 %75, 452
  %110 = load ptr, ptr %78, align 4
  %111 = getelementptr inbounds %struct.nvkm_subdev, ptr %110, i32 0, i32 1
  %112 = load ptr, ptr %111, align 4
  %113 = getelementptr inbounds %struct.nvkm_device, ptr %112, i32 0, i32 11
  %114 = load ptr, ptr %113, align 4
  %115 = load i32, ptr %84, align 4
  %116 = add i32 %109, %115
  %117 = getelementptr i8, ptr %114, i32 %116
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %117) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %119 = icmp ugt i32 %72, %2
  br i1 %119, label %128, label %120

120:                                              ; preds = %120, %108
  %121 = phi i32 [ %125, %120 ], [ %118, %108 ]
  %122 = phi i32 [ %126, %120 ], [ %73, %108 ]
  %123 = trunc i32 %121 to i8
  %124 = getelementptr i8, ptr %4, i32 %122
  store i8 %123, ptr %124, align 1
  %125 = lshr i32 %121, 8
  %126 = add nuw i32 %122, 1
  %127 = icmp ult i32 %126, %2
  br i1 %127, label %120, label %128

128:                                              ; preds = %120, %108, %106, %63, %51, %49
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_falcon_v1_bind_context(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %15

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.nvkm_falcon, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_subdev, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nvkm_falcon, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, 268
  %14 = getelementptr i8, ptr %10, i32 %13
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 0) #7, !srcloc !9
  br label %135

15:                                               ; preds = %2
  %16 = load ptr, ptr %0, align 4
  %17 = getelementptr inbounds %struct.nvkm_falcon_func, ptr %16, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nvkm_falcon, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nvkm_subdev, ptr %20, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.nvkm_device, ptr %22, i32 0, i32 11
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nvkm_falcon, ptr %0, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, 268
  %28 = getelementptr i8, ptr %24, i32 %27
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 1) #7, !srcloc !9
  %29 = load ptr, ptr %19, align 4
  %30 = getelementptr inbounds %struct.nvkm_subdev, ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.nvkm_device, ptr %31, i32 0, i32 11
  %33 = load ptr, ptr %32, align 4
  %34 = load i32, ptr %25, align 4
  %35 = add i32 %34, %18
  %36 = getelementptr i8, ptr %33, i32 %35
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 4) #7, !srcloc !9
  %37 = add i32 %18, 4
  %38 = load ptr, ptr %19, align 4
  %39 = getelementptr inbounds %struct.nvkm_subdev, ptr %38, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.nvkm_device, ptr %40, i32 0, i32 11
  %42 = load ptr, ptr %41, align 4
  %43 = load i32, ptr %25, align 4
  %44 = add i32 %37, %43
  %45 = getelementptr i8, ptr %42, i32 %44
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 0) #7, !srcloc !9
  %46 = add i32 %18, 8
  %47 = load ptr, ptr %19, align 4
  %48 = getelementptr inbounds %struct.nvkm_subdev, ptr %47, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.nvkm_device, ptr %49, i32 0, i32 11
  %51 = load ptr, ptr %50, align 4
  %52 = load i32, ptr %25, align 4
  %53 = add i32 %46, %52
  %54 = getelementptr i8, ptr %51, i32 %53
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 4) #7, !srcloc !9
  %55 = add i32 %18, 12
  %56 = load ptr, ptr %19, align 4
  %57 = getelementptr inbounds %struct.nvkm_subdev, ptr %56, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.nvkm_device, ptr %58, i32 0, i32 11
  %60 = load ptr, ptr %59, align 4
  %61 = load i32, ptr %25, align 4
  %62 = add i32 %55, %61
  %63 = getelementptr i8, ptr %60, i32 %62
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 5) #7, !srcloc !9
  %64 = add i32 %18, 16
  %65 = load ptr, ptr %19, align 4
  %66 = getelementptr inbounds %struct.nvkm_subdev, ptr %65, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.nvkm_device, ptr %67, i32 0, i32 11
  %69 = load ptr, ptr %68, align 4
  %70 = load i32, ptr %25, align 4
  %71 = add i32 %64, %70
  %72 = getelementptr i8, ptr %69, i32 %71
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 6) #7, !srcloc !9
  %73 = load ptr, ptr %1, align 4
  %74 = getelementptr inbounds %struct.nvkm_memory_func, ptr %73, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = tail call i32 %75(ptr noundef nonnull %1) #7
  %77 = add i32 %76, -1
  %78 = icmp ult i32 %77, 3
  br i1 %78, label %80, label %79

79:                                               ; preds = %15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 210, i32 noundef 9, ptr noundef null) #7
  br label %135

80:                                               ; preds = %15
  %81 = getelementptr inbounds [3 x i32], ptr @switch.table.nvkm_falcon_v1_bind_context, i32 0, i32 %77
  %82 = load i32, ptr %81, align 4
  %83 = load ptr, ptr %19, align 4
  %84 = getelementptr inbounds %struct.nvkm_subdev, ptr %83, i32 0, i32 1
  %85 = load ptr, ptr %84, align 4
  %86 = load i32, ptr %25, align 4
  %87 = add i32 %86, 72
  %88 = getelementptr inbounds %struct.nvkm_device, ptr %85, i32 0, i32 11
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr i8, ptr %89, i32 %87
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %90) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %92 = or i32 %91, 1
  %93 = load ptr, ptr %88, align 4
  %94 = getelementptr i8, ptr %93, i32 %87
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 %92) #7, !srcloc !9
  %95 = load ptr, ptr %1, align 4
  %96 = getelementptr inbounds %struct.nvkm_memory_func, ptr %95, i32 0, i32 4
  %97 = load ptr, ptr %96, align 4
  %98 = tail call i64 %97(ptr noundef nonnull %1) #7
  %99 = lshr i64 %98, 12
  %100 = trunc i64 %99 to i32
  %101 = and i32 %100, 268435455
  %102 = or i32 %82, %101
  %103 = load ptr, ptr %19, align 4
  %104 = getelementptr inbounds %struct.nvkm_subdev, ptr %103, i32 0, i32 1
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.nvkm_device, ptr %105, i32 0, i32 11
  %107 = load ptr, ptr %106, align 4
  %108 = load i32, ptr %25, align 4
  %109 = add i32 %108, 84
  %110 = getelementptr i8, ptr %107, i32 %109
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 %102) #7, !srcloc !9
  %111 = load ptr, ptr %19, align 4
  %112 = getelementptr inbounds %struct.nvkm_subdev, ptr %111, i32 0, i32 1
  %113 = load ptr, ptr %112, align 4
  %114 = load i32, ptr %25, align 4
  %115 = add i32 %114, 144
  %116 = getelementptr inbounds %struct.nvkm_device, ptr %113, i32 0, i32 11
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr i8, ptr %117, i32 %115
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %118) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %120 = or i32 %119, 65536
  %121 = load ptr, ptr %116, align 4
  %122 = getelementptr i8, ptr %121, i32 %115
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %122, i32 %120) #7, !srcloc !9
  %123 = load ptr, ptr %19, align 4
  %124 = getelementptr inbounds %struct.nvkm_subdev, ptr %123, i32 0, i32 1
  %125 = load ptr, ptr %124, align 4
  %126 = load i32, ptr %25, align 4
  %127 = add i32 %126, 164
  %128 = getelementptr inbounds %struct.nvkm_device, ptr %125, i32 0, i32 11
  %129 = load ptr, ptr %128, align 4
  %130 = getelementptr i8, ptr %129, i32 %127
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %130) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %132 = or i32 %131, 8
  %133 = load ptr, ptr %128, align 4
  %134 = getelementptr i8, ptr %133, i32 %127
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %134, i32 %132) #7, !srcloc !9
  br label %135

135:                                              ; preds = %80, %79, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_falcon_v1_set_start_addr(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_falcon, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_subdev, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_falcon, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, 260
  %12 = getelementptr i8, ptr %8, i32 %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %1) #7, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_falcon_v1_start(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_falcon, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_subdev, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_falcon, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, 256
  %11 = getelementptr i8, ptr %7, i32 %10
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %13 = and i32 %12, 64
  %14 = icmp eq i32 %13, 0
  %15 = load ptr, ptr %2, align 4
  %16 = getelementptr inbounds %struct.nvkm_subdev, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 11
  %19 = load ptr, ptr %18, align 4
  %20 = load i32, ptr %8, align 4
  br i1 %14, label %24, label %21

21:                                               ; preds = %1
  %22 = add i32 %20, 304
  %23 = getelementptr i8, ptr %19, i32 %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 2) #7, !srcloc !9
  br label %27

24:                                               ; preds = %1
  %25 = add i32 %20, 256
  %26 = getelementptr i8, ptr %19, i32 %25
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 2) #7, !srcloc !9
  br label %27

27:                                               ; preds = %24, %21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_falcon_v1_wait_for_halt(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca %struct.nvkm_timer_wait, align 8
  %4 = getelementptr inbounds %struct.nvkm_falcon, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_subdev, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i32 40, i1 false), !annotation !12
  %8 = mul i32 %1, 1000000
  %9 = zext i32 %8 to i64
  call void @nvkm_timer_wait_init(ptr noundef %7, i64 noundef %9, ptr noundef nonnull %3) #7
  %10 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 11
  %11 = getelementptr inbounds %struct.nvkm_falcon, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %10, align 4
  %13 = load i32, ptr %11, align 4
  %14 = add i32 %13, 256
  %15 = getelementptr i8, ptr %12, i32 %14
  %16 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #7, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %17 = and i32 %16, 16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %27, label %52

19:                                               ; preds = %27
  %20 = load ptr, ptr %10, align 4
  %21 = load i32, ptr %11, align 4
  %22 = add i32 %21, 256
  %23 = getelementptr i8, ptr %20, i32 %22
  %24 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #7, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %25 = and i32 %24, 16
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %50

27:                                               ; preds = %19, %2
  %28 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %3) #7
  %29 = icmp sgt i64 %28, -1
  br i1 %29, label %19, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr %3, align 8
  %32 = getelementptr inbounds %struct.nvkm_timer, ptr %31, i32 0, i32 1, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.nvkm_device, ptr %33, i32 0, i32 2
  %35 = load ptr, ptr %34, align 8
  %36 = call ptr @dev_driver_string(ptr noundef %35) #7
  %37 = load ptr, ptr %3, align 8
  %38 = getelementptr inbounds %struct.nvkm_timer, ptr %37, i32 0, i32 1, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.nvkm_device, ptr %39, i32 0, i32 2
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.device, ptr %41, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %30
  %46 = load ptr, ptr %41, align 4
  br label %47

47:                                               ; preds = %45, %30
  %48 = phi ptr [ %46, %45 ], [ %43, %30 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 247, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %36, ptr noundef %48) #7
  %49 = trunc i64 %28 to i32
  br label %52

50:                                               ; preds = %19
  %51 = trunc i64 %28 to i32
  br label %52

52:                                               ; preds = %50, %47, %2
  %53 = phi i32 [ %49, %47 ], [ 0, %2 ], [ %51, %50 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #7
  %54 = call i32 @llvm.smin.i32(i32 %53, i32 0)
  ret i32 %54
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_falcon_v1_clear_interrupt(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca %struct.nvkm_timer_wait, align 8
  %4 = getelementptr inbounds %struct.nvkm_falcon, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_subdev, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_falcon, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, 4
  %11 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 %10
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %15 = or i32 %14, %1
  %16 = load ptr, ptr %11, align 4
  %17 = getelementptr i8, ptr %16, i32 %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #7, !srcloc !9
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i32 40, i1 false), !annotation !12
  call void @nvkm_timer_wait_init(ptr noundef %7, i64 noundef 10000000, ptr noundef nonnull %3) #7
  %18 = load ptr, ptr %11, align 4
  %19 = load i32, ptr %8, align 4
  %20 = add i32 %19, 8
  %21 = getelementptr i8, ptr %18, i32 %20
  %22 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #7, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %23 = and i32 %22, %1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %58, label %33

25:                                               ; preds = %33
  %26 = load ptr, ptr %11, align 4
  %27 = load i32, ptr %8, align 4
  %28 = add i32 %27, 8
  %29 = getelementptr i8, ptr %26, i32 %28
  %30 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #7, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %31 = and i32 %30, %1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %56, label %33

33:                                               ; preds = %25, %2
  %34 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %3) #7
  %35 = icmp sgt i64 %34, -1
  br i1 %35, label %25, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr %3, align 8
  %38 = getelementptr inbounds %struct.nvkm_timer, ptr %37, i32 0, i32 1, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.nvkm_device, ptr %39, i32 0, i32 2
  %41 = load ptr, ptr %40, align 8
  %42 = call ptr @dev_driver_string(ptr noundef %41) #7
  %43 = load ptr, ptr %3, align 8
  %44 = getelementptr inbounds %struct.nvkm_timer, ptr %43, i32 0, i32 1, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.nvkm_device, ptr %45, i32 0, i32 2
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.device, ptr %47, i32 0, i32 3
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %36
  %52 = load ptr, ptr %47, align 4
  br label %53

53:                                               ; preds = %51, %36
  %54 = phi ptr [ %52, %51 ], [ %49, %36 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 263, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %42, ptr noundef %54) #7
  %55 = trunc i64 %34 to i32
  br label %58

56:                                               ; preds = %25
  %57 = trunc i64 %34 to i32
  br label %58

58:                                               ; preds = %56, %53, %2
  %59 = phi i32 [ %55, %53 ], [ 0, %2 ], [ %57, %56 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #7
  %60 = call i32 @llvm.smin.i32(i32 %59, i32 0)
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_falcon_v1_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.nvkm_timer_wait, align 8
  %3 = getelementptr inbounds %struct.nvkm_falcon, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_subdev, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i32 40, i1 false), !annotation !12
  call void @nvkm_timer_wait_init(ptr noundef %6, i64 noundef 10000000, ptr noundef nonnull %2) #7
  %7 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.nvkm_falcon, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %7, align 4
  %10 = load i32, ptr %8, align 4
  %11 = add i32 %10, 268
  %12 = getelementptr i8, ptr %9, i32 %11
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #7, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %14 = and i32 %13, 6
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #7
  br label %62

17:                                               ; preds = %25
  %18 = load ptr, ptr %7, align 4
  %19 = load i32, ptr %8, align 4
  %20 = add i32 %19, 268
  %21 = getelementptr i8, ptr %18, i32 %20
  %22 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #7, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %23 = and i32 %22, 6
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %47, label %25

25:                                               ; preds = %17, %1
  %26 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %2) #7
  %27 = icmp sgt i64 %26, -1
  br i1 %27, label %17, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %2, align 8
  %30 = getelementptr inbounds %struct.nvkm_timer, ptr %29, i32 0, i32 1, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.nvkm_device, ptr %31, i32 0, i32 2
  %33 = load ptr, ptr %32, align 8
  %34 = call ptr @dev_driver_string(ptr noundef %33) #7
  %35 = load ptr, ptr %2, align 8
  %36 = getelementptr inbounds %struct.nvkm_timer, ptr %35, i32 0, i32 1, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.nvkm_device, ptr %37, i32 0, i32 2
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %struct.device, ptr %39, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %28
  %44 = load ptr, ptr %39, align 4
  br label %45

45:                                               ; preds = %43, %28
  %46 = phi ptr [ %44, %43 ], [ %41, %28 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 289, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %34, ptr noundef %46) #7
  br label %47

47:                                               ; preds = %45, %17
  %48 = trunc i64 %26 to i32
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #7
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.nvkm_falcon, ptr %0, i32 0, i32 7
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.nvkm_subdev, ptr %52, i32 0, i32 5
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %74, label %56

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.nvkm_subdev, ptr %52, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.nvkm_device, ptr %58, i32 0, i32 2
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr inbounds %struct.nvkm_subdev, ptr %52, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.2, ptr noundef %61) #8
  br label %74

62:                                               ; preds = %47, %16
  %63 = call fastcc i32 @falcon_v1_wait_idle(ptr noundef %0)
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %62
  %66 = load ptr, ptr %3, align 4
  %67 = getelementptr inbounds %struct.nvkm_subdev, ptr %66, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.nvkm_device, ptr %68, i32 0, i32 11
  %70 = load ptr, ptr %69, align 4
  %71 = load i32, ptr %8, align 4
  %72 = add i32 %71, 16
  %73 = getelementptr i8, ptr %70, i32 %72
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 255) #7, !srcloc !9
  br label %74

74:                                               ; preds = %65, %62, %56, %50
  %75 = phi i32 [ 0, %65 ], [ %48, %56 ], [ %48, %50 ], [ %63, %62 ]
  ret i32 %75
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @falcon_v1_wait_idle(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca %struct.nvkm_timer_wait, align 8
  %3 = getelementptr inbounds %struct.nvkm_falcon, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_subdev, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i32 40, i1 false), !annotation !12
  call void @nvkm_timer_wait_init(ptr noundef %6, i64 noundef 10000000, ptr noundef nonnull %2) #7
  %7 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.nvkm_falcon, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %7, align 4
  %10 = load i32, ptr %8, align 4
  %11 = add i32 %10, 76
  %12 = getelementptr i8, ptr %9, i32 %11
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #7, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %49, label %24

16:                                               ; preds = %24
  %17 = load ptr, ptr %7, align 4
  %18 = load i32, ptr %8, align 4
  %19 = add i32 %18, 76
  %20 = getelementptr i8, ptr %17, i32 %19
  %21 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #7, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %47, label %24

24:                                               ; preds = %16, %1
  %25 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %2) #7
  %26 = icmp sgt i64 %25, -1
  br i1 %26, label %16, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %2, align 8
  %29 = getelementptr inbounds %struct.nvkm_timer, ptr %28, i32 0, i32 1, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.nvkm_device, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 8
  %33 = call ptr @dev_driver_string(ptr noundef %32) #7
  %34 = load ptr, ptr %2, align 8
  %35 = getelementptr inbounds %struct.nvkm_timer, ptr %34, i32 0, i32 1, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.nvkm_device, ptr %36, i32 0, i32 2
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.device, ptr %38, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %27
  %43 = load ptr, ptr %38, align 4
  br label %44

44:                                               ; preds = %42, %27
  %45 = phi ptr [ %43, %42 ], [ %40, %27 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 276, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %33, ptr noundef %45) #7
  %46 = trunc i64 %25 to i32
  br label %49

47:                                               ; preds = %16
  %48 = trunc i64 %25 to i32
  br label %49

49:                                               ; preds = %47, %44, %1
  %50 = phi i32 [ %46, %44 ], [ 0, %1 ], [ %48, %47 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #7
  %51 = call i32 @llvm.smin.i32(i32 %50, i32 0)
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_falcon_v1_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_falcon, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_subdev, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_falcon, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, 20
  %11 = getelementptr i8, ptr %7, i32 %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 255) #7, !srcloc !9
  %12 = tail call fastcc i32 @falcon_v1_wait_idle(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_falcon_v1_new(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 196) #9
  store ptr %6, ptr %3, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call i32 @nvkm_falcon_ctor(ptr noundef nonnull @nvkm_falcon_v1, ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %6) #7
  br label %10

10:                                               ; preds = %8, %4
  %11 = phi i32 [ 0, %8 ], [ -12, %4 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_ctor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

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
!8 = !{i64 2151494014}
!9 = !{i64 3952921}
!10 = !{i64 3953339}
!11 = !{i64 2151492792}
!12 = !{!"auto-init"}
