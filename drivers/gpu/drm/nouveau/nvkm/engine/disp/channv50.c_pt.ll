; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/disp/channv50.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/channv50.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_event_func = type { ptr, ptr, ptr, ptr }
%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_oproxy_func = type { [2 x ptr], [2 x ptr], [2 x ptr] }
%struct.nv50_disp_chan = type { ptr, ptr, ptr, %struct.anon.132, i32, %struct.nvkm_object, ptr, i64, i32 }
%struct.anon.132 = type { i32, i32 }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nv50_disp = type { ptr, %struct.nvkm_disp, ptr, %struct.work_struct, i32, %struct.nvkm_event, %struct.anon.129, %struct.anon.129, %struct.anon.129, %struct.anon.130, %struct.anon.131, ptr, ptr, [81 x ptr] }
%struct.nvkm_disp = type { ptr, %struct.nvkm_engine, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.nvkm_event, %struct.nvkm_event, %struct.anon.127 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.124 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.anon.124 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.127 = type { %struct.spinlock, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.129 = type { i32, i32 }
%struct.anon.130 = type { i32, i32, i32 }
%struct.anon.131 = type { i32, i32, [3 x i8] }
%struct.nv50_disp_chan_mthd = type { ptr, i32, i32, [0 x %struct.anon.125] }
%struct.anon.125 = type { ptr, i32, ptr }
%struct.nv50_disp_mthd_list = type { i32, i32, [0 x %struct.anon.126] }
%struct.anon.126 = type { i32, i32, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.122, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.122 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvif_notify_uevent_rep = type {}
%struct.nvkm_notify = type { ptr, %struct.list_head, i32, i32, ptr, i32, i32, i32, %struct.work_struct, ptr }
%struct.nv50_disp_chan_func = type { ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_device_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_engine_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.123, ptr, [0 x %struct.nvkm_sclass] }
%struct.anon = type { ptr }
%struct.anon.123 = type { ptr, ptr }
%struct.nv50_disp_chan_object = type { %struct.nvkm_oproxy, ptr, i32 }
%struct.nvkm_oproxy = type { ptr, %struct.nvkm_object, ptr }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s %d\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c" - %s %d\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"%s: %s%s:\0A\00", align 1
@nv50_disp_chan_uevent = dso_local local_unnamed_addr constant %struct.nvkm_event_func { ptr @nv50_disp_chan_uevent_ctor, ptr null, ptr @nv50_disp_chan_uevent_init, ptr @nv50_disp_chan_uevent_fini }, align 4
@nv50_disp_chan = internal constant %struct.nvkm_object_func { ptr @nv50_disp_chan_dtor, ptr @nv50_disp_chan_init, ptr @nv50_disp_chan_fini, ptr null, ptr @nv50_disp_chan_ntfy, ptr @nv50_disp_chan_map, ptr null, ptr null, ptr null, ptr @nv50_disp_chan_rd32, ptr null, ptr null, ptr @nv50_disp_chan_wr32, ptr null, ptr @nv50_disp_chan_child_get }, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"-> %08x\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%13c\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"%s: \09%04x: %08x %s%s%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c" // \00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@nv50_disp_chan_child_func_ = internal constant %struct.nvkm_oproxy_func { [2 x ptr] [ptr @nv50_disp_chan_child_del_, ptr null], [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv50_disp_chan_mthd(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [16 x i8], align 1
  %4 = alloca [16 x i8], align 1
  %5 = alloca [16 x i8], align 1
  %6 = getelementptr inbounds %struct.nv50_disp_chan, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.nv50_disp_chan, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nv50_disp, ptr %7, i32 0, i32 1, i32 1, i32 1, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i32 %11, %1
  %13 = icmp eq ptr %9, null
  %14 = select i1 %12, i1 true, i1 %13
  br i1 %14, label %131, label %15

15:                                               ; preds = %2
  %16 = getelementptr %struct.nv50_disp_chan_mthd, ptr %9, i32 0, i32 3, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %131, label %19

19:                                               ; preds = %15
  %20 = getelementptr %struct.nv50_disp_chan_mthd, ptr %9, i32 0, i32 3, i32 0
  %21 = getelementptr inbounds %struct.nv50_disp_chan, ptr %0, i32 0, i32 4
  %22 = getelementptr inbounds %struct.nv50_disp_chan_mthd, ptr %9, i32 0, i32 1
  %23 = getelementptr inbounds %struct.nv50_disp_chan, ptr %0, i32 0, i32 3, i32 1
  %24 = icmp slt i32 %1, 6
  %25 = getelementptr inbounds %struct.nv50_disp, ptr %7, i32 0, i32 1, i32 1, i32 1, i32 1
  %26 = getelementptr inbounds %struct.nv50_disp, ptr %7, i32 0, i32 1, i32 1, i32 1, i32 4
  %27 = getelementptr inbounds %struct.nv50_disp_chan_mthd, ptr %9, i32 0, i32 2
  br label %28

28:                                               ; preds = %125, %19
  %29 = phi ptr [ %17, %19 ], [ %129, %125 ]
  %30 = phi ptr [ %20, %19 ], [ %127, %125 ]
  %31 = phi i32 [ 0, %19 ], [ %126, %125 ]
  %32 = getelementptr %struct.nv50_disp_chan_mthd, ptr %9, i32 0, i32 3, i32 %31, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %125

35:                                               ; preds = %28
  %36 = load i32, ptr %22, align 4
  %37 = load i32, ptr %21, align 4
  %38 = mul i32 %36, %37
  %39 = getelementptr %struct.nv50_disp_mthd_list, ptr %29, i32 0, i32 2, i32 0
  %40 = getelementptr inbounds %struct.nv50_disp_mthd_list, ptr %29, i32 0, i32 1
  br label %41

41:                                               ; preds = %119, %35
  %42 = phi i32 [ %38, %35 ], [ %122, %119 ]
  %43 = phi i32 [ 0, %35 ], [ %120, %119 ]
  %44 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !8
  %45 = load i32, ptr %22, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %41
  %48 = load ptr, ptr %9, align 4
  %49 = load i32, ptr %23, align 4
  %50 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 16, ptr noundef nonnull @.str.1, ptr noundef %48, i32 noundef %49)
  br label %51

51:                                               ; preds = %47, %41
  %52 = phi ptr [ %4, %47 ], [ %44, %41 ]
  %53 = load i32, ptr %32, align 4
  %54 = icmp sgt i32 %53, 1
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load ptr, ptr %30, align 4
  %57 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 16, ptr noundef nonnull @.str.2, ptr noundef %56, i32 noundef %43)
  br label %58

58:                                               ; preds = %55, %51
  %59 = phi ptr [ %5, %55 ], [ @.str, %51 ]
  br i1 %24, label %60, label %67

60:                                               ; preds = %58
  %61 = load i32, ptr %10, align 4
  %62 = icmp ult i32 %61, %1
  br i1 %62, label %67, label %63

63:                                               ; preds = %60
  %64 = load ptr, ptr %25, align 4
  %65 = getelementptr inbounds %struct.nvkm_device, ptr %64, i32 0, i32 2
  %66 = load ptr, ptr %65, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %66, ptr noundef nonnull @.str.3, ptr noundef %26, ptr noundef %52, ptr noundef nonnull %59) #10
  br label %67

67:                                               ; preds = %63, %60, %58
  %68 = load i32, ptr %39, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %119, label %70

70:                                               ; preds = %67
  %71 = load i32, ptr %27, align 4
  %72 = load ptr, ptr %25, align 4
  %73 = getelementptr inbounds %struct.nvkm_device, ptr %72, i32 0, i32 11
  %74 = add i32 %71, %42
  br label %75

75:                                               ; preds = %114, %70
  %76 = phi ptr [ %39, %70 ], [ %116, %114 ]
  %77 = phi i32 [ 0, %70 ], [ %115, %114 ]
  %78 = getelementptr %struct.nv50_disp_mthd_list, ptr %29, i32 0, i32 2, i32 %77, i32 1
  %79 = load i32, ptr %78, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %114, label %81

81:                                               ; preds = %75
  %82 = load ptr, ptr %73, align 4
  %83 = add i32 %79, %42
  %84 = getelementptr i8, ptr %82, i32 %83
  %85 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %84) #9, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %86 = load ptr, ptr %73, align 4
  %87 = load i32, ptr %78, align 4
  %88 = add i32 %74, %87
  %89 = getelementptr i8, ptr %86, i32 %88
  %90 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #9, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %91 = load i32, ptr %76, align 4
  %92 = load i32, ptr %29, align 4
  %93 = mul i32 %92, %43
  %94 = add i32 %93, %91
  %95 = getelementptr %struct.nv50_disp_mthd_list, ptr %29, i32 0, i32 2, i32 %77, i32 2
  %96 = load ptr, ptr %95, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %3, i8 0, i32 16, i1 false) #9, !annotation !8
  %97 = icmp eq i32 %90, %85
  br i1 %97, label %100, label %98

98:                                               ; preds = %81
  %99 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 16, ptr noundef nonnull @.str.4, i32 noundef %85) #9
  br label %102

100:                                              ; preds = %81
  %101 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 16, ptr noundef nonnull @.str.5, i32 noundef 32) #9
  br label %102

102:                                              ; preds = %100, %98
  br i1 %24, label %103, label %113

103:                                              ; preds = %102
  %104 = load i32, ptr %10, align 4
  %105 = icmp ult i32 %104, %1
  br i1 %105, label %113, label %106

106:                                              ; preds = %103
  %107 = load ptr, ptr %25, align 4
  %108 = getelementptr inbounds %struct.nvkm_device, ptr %107, i32 0, i32 2
  %109 = load ptr, ptr %108, align 8
  %110 = icmp eq ptr %96, null
  %111 = select i1 %110, ptr @.str, ptr @.str.7
  %112 = select i1 %110, ptr @.str, ptr %96
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %109, ptr noundef nonnull @.str.6, ptr noundef %26, i32 noundef %94, i32 noundef %90, ptr noundef nonnull %3, ptr noundef nonnull %111, ptr noundef %112) #10
  br label %113

113:                                              ; preds = %106, %103, %102
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  br label %114

114:                                              ; preds = %113, %75
  %115 = add i32 %77, 1
  %116 = getelementptr %struct.nv50_disp_mthd_list, ptr %29, i32 0, i32 2, i32 %115
  %117 = load i32, ptr %116, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %75

119:                                              ; preds = %114, %67
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  %120 = add nuw nsw i32 %43, 1
  %121 = load i32, ptr %40, align 4
  %122 = add i32 %121, %42
  %123 = load i32, ptr %32, align 4
  %124 = icmp slt i32 %120, %123
  br i1 %124, label %41, label %125

125:                                              ; preds = %119, %28
  %126 = add i32 %31, 1
  %127 = getelementptr %struct.nv50_disp_chan_mthd, ptr %9, i32 0, i32 3, i32 %126
  %128 = getelementptr %struct.nv50_disp_chan_mthd, ptr %9, i32 0, i32 3, i32 %126, i32 2
  %129 = load ptr, ptr %128, align 4
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %28

131:                                              ; preds = %125, %15, %2
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv50_disp_chan_uevent_send(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.nvif_notify_uevent_rep, align 1
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %3) #9
  %4 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 5
  call void @nvkm_event_send(ptr noundef %4, i32 noundef 1, i32 noundef %1, ptr noundef nonnull %3, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_event_send(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @nv50_disp_chan_uevent_ctor(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #6 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.nvkm_notify, ptr %3, i32 0, i32 7
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.nvkm_notify, ptr %3, i32 0, i32 5
  store i32 1, ptr %8, align 4
  %9 = getelementptr i8, ptr %0, i32 -8
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nvkm_notify, ptr %3, i32 0, i32 6
  store i32 %10, ptr %11, align 4
  br label %12

12:                                               ; preds = %6, %4
  %13 = phi i32 [ 0, %6 ], [ -38, %4 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv50_disp_chan_uevent_init(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -208
  %5 = load ptr, ptr %4, align 4
  %6 = shl nuw i32 1, %2
  %7 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 6357024
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %6) #9, !srcloc !12
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr i8, ptr %10, i32 6357032
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %13 = or i32 %12, %6
  %14 = load ptr, ptr %7, align 4
  %15 = getelementptr i8, ptr %14, i32 6357032
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #9, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv50_disp_chan_uevent_fini(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -208
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 6357032
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %10 = shl nuw i32 1, %2
  %11 = xor i32 %10, -1
  %12 = and i32 %9, %11
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr i8, ptr %13, i32 6357032
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #9, !srcloc !12
  %15 = load ptr, ptr %6, align 4
  %16 = getelementptr i8, ptr %15, i32 6357024
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %10) #9, !srcloc !12
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i64 @nv50_disp_chan_user(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #6 {
  store i64 4096, ptr %1, align 8
  %3 = getelementptr inbounds %struct.nv50_disp_chan, ptr %0, i32 0, i32 3, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = shl i32 %4, 12
  %6 = add i32 %5, 6553600
  %7 = sext i32 %6 to i64
  ret i64 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv50_disp_chan_intr(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nv50_disp_chan, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nv50_disp, ptr %4, i32 0, i32 1, i32 1, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nv50_disp_chan, ptr %0, i32 0, i32 3, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = shl i32 65536, %8
  %10 = select i1 %1, i32 %9, i32 0
  %11 = shl i32 65537, %8
  %12 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 6357032
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %16 = xor i32 %11, -1
  %17 = and i32 %15, %16
  %18 = or i32 %17, %10
  %19 = load ptr, ptr %12, align 4
  %20 = getelementptr i8, ptr %19, i32 6357032
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #9, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_disp_chan_new_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr nocapture noundef writeonly %7) local_unnamed_addr #0 {
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 120) #11
  %11 = icmp eq ptr %10, null
  br i1 %11, label %24, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.nv50_disp_chan, ptr %10, i32 0, i32 5
  store ptr %13, ptr %7, align 4
  tail call void @nvkm_object_ctor(ptr noundef nonnull @nv50_disp_chan, ptr noundef %6, ptr noundef %13) #9
  store ptr %0, ptr %10, align 8
  %14 = getelementptr inbounds %struct.nv50_disp_chan, ptr %10, i32 0, i32 1
  store ptr %1, ptr %14, align 4
  %15 = getelementptr inbounds %struct.nv50_disp_chan, ptr %10, i32 0, i32 2
  store ptr %2, ptr %15, align 8
  %16 = getelementptr inbounds %struct.nv50_disp_chan, ptr %10, i32 0, i32 3
  store i32 %3, ptr %16, align 4
  %17 = getelementptr inbounds %struct.nv50_disp_chan, ptr %10, i32 0, i32 3, i32 1
  store i32 %4, ptr %17, align 8
  %18 = getelementptr inbounds %struct.nv50_disp_chan, ptr %10, i32 0, i32 4
  store i32 %5, ptr %18, align 4
  %19 = getelementptr %struct.nv50_disp, ptr %2, i32 0, i32 13, i32 %4
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %12
  store i32 -1, ptr %17, align 8
  br label %24

23:                                               ; preds = %12
  store ptr %10, ptr %19, align 4
  br label %24

24:                                               ; preds = %23, %22, %8
  %25 = phi i32 [ -16, %22 ], [ 0, %23 ], [ -12, %8 ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_object_ctor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nv50_disp_chan_dtor(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = load i32, ptr %2, align 4
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 -16
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr %struct.nv50_disp, ptr %7, i32 0, i32 13, i32 %3
  store ptr null, ptr %8, align 4
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr i8, ptr %0, i32 -24
  %11 = getelementptr i8, ptr %0, i32 72
  tail call void @nvkm_memory_unref(ptr noundef %11) #9
  ret ptr %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_disp_chan_init(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -24
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nv50_disp_chan_func, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  tail call void %5(ptr noundef %2, i1 noundef zeroext true) #9
  %6 = load ptr, ptr %2, align 8
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %2) #9
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_disp_chan_fini(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -24
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nv50_disp_chan_func, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  tail call void %6(ptr noundef %3) #9
  %7 = load ptr, ptr %3, align 8
  %8 = getelementptr inbounds %struct.nv50_disp_chan_func, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  tail call void %9(ptr noundef %3, i1 noundef zeroext false) #9
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @nv50_disp_chan_ntfy(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = getelementptr i8, ptr %0, i32 -16
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.nv50_disp, ptr %7, i32 0, i32 5
  store ptr %8, ptr %2, align 4
  br label %9

9:                                                ; preds = %5, %3
  %10 = phi i32 [ 0, %5 ], [ -22, %3 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_disp_chan_map(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr noundef %5) #0 {
  %7 = getelementptr i8, ptr %0, i32 -24
  %8 = getelementptr i8, ptr %0, i32 -16
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.nv50_disp, ptr %9, i32 0, i32 1, i32 1, i32 1, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.nvkm_device_func, ptr %12, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 %14(ptr noundef %11, i32 noundef 0) #9
  %16 = zext i32 %15 to i64
  store i32 0, ptr %3, align 4
  %17 = load ptr, ptr %7, align 8
  %18 = getelementptr inbounds %struct.nv50_disp_chan_func, ptr %17, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i64 %19(ptr noundef %7, ptr noundef %5) #9
  %21 = add i64 %20, %16
  store i64 %21, ptr %4, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_disp_chan_rd32(ptr noundef %0, i64 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca i64, align 8
  %5 = getelementptr i8, ptr %0, i32 -24
  %6 = getelementptr i8, ptr %0, i32 -16
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.nv50_disp, ptr %7, i32 0, i32 1, i32 1, i32 1, i32 1
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  store i64 0, ptr %4, align 8, !annotation !8
  %10 = load ptr, ptr %5, align 8
  %11 = getelementptr inbounds %struct.nv50_disp_chan_func, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = call i64 %12(ptr noundef %5, ptr noundef nonnull %4) #9
  %14 = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 11
  %15 = load ptr, ptr %14, align 4
  %16 = add i64 %13, %1
  %17 = trunc i64 %16 to i32
  %18 = getelementptr i8, ptr %15, i32 %17
  %19 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #9, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  store i32 %19, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_disp_chan_wr32(ptr noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = getelementptr i8, ptr %0, i32 -24
  %6 = getelementptr i8, ptr %0, i32 -16
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.nv50_disp, ptr %7, i32 0, i32 1, i32 1, i32 1, i32 1
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  store i64 0, ptr %4, align 8, !annotation !8
  %10 = load ptr, ptr %5, align 8
  %11 = getelementptr inbounds %struct.nv50_disp_chan_func, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = call i64 %12(ptr noundef %5, ptr noundef nonnull %4) #9
  %14 = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 11
  %15 = load ptr, ptr %14, align 4
  %16 = add i64 %13, %1
  %17 = trunc i64 %16 to i32
  %18 = getelementptr i8, ptr %15, i32 %17
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %2) #9, !srcloc !12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_disp_chan_child_get(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = getelementptr i8, ptr %0, i32 -24
  %6 = getelementptr i8, ptr %0, i32 -16
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.nv50_disp, ptr %7, i32 0, i32 1, i32 1, i32 1, i32 1
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store ptr null, ptr %4, align 4
  %10 = load ptr, ptr %5, align 8
  %11 = getelementptr inbounds %struct.nv50_disp_chan_func, ptr %10, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.nvkm_oclass, ptr %2, i32 0, i32 10
  store ptr null, ptr %15, align 8
  br label %31

16:                                               ; preds = %3
  %17 = tail call ptr @nvkm_device_engine(ptr noundef %9, i32 noundef 31, i32 noundef 0) #9
  %18 = getelementptr inbounds %struct.nvkm_oclass, ptr %2, i32 0, i32 10
  store ptr %17, ptr %18, align 8
  %19 = icmp eq ptr %17, null
  br i1 %19, label %31, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %17, align 4
  %22 = getelementptr inbounds %struct.nvkm_engine_func, ptr %21, i32 0, i32 9
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  %26 = call i32 %23(ptr noundef %2, i32 noundef %1, ptr noundef nonnull %4) #9
  %27 = load ptr, ptr %4, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  store ptr @nv50_disp_chan_child_new, ptr %2, align 8
  %30 = getelementptr inbounds %struct.nvkm_oclass, ptr %2, i32 0, i32 2
  store ptr %27, ptr %30, align 8
  br label %31

31:                                               ; preds = %29, %25, %20, %16, %14
  %32 = phi i32 [ 0, %29 ], [ -22, %25 ], [ -22, %20 ], [ -22, %16 ], [ -22, %14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_unref(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_device_engine(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_disp_chan_child_new(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = getelementptr inbounds %struct.nvkm_oclass, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 -24
  %8 = getelementptr i8, ptr %6, i32 -16
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.nv50_disp, ptr %9, i32 0, i32 1, i32 1, i32 1, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nvkm_oclass, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 96) #11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %34, label %17

17:                                               ; preds = %4
  tail call void @nvkm_oproxy_ctor(ptr noundef nonnull @nv50_disp_chan_child_func_, ptr noundef %0, ptr noundef nonnull %15) #9
  %18 = getelementptr inbounds %struct.nv50_disp_chan_object, ptr %15, i32 0, i32 1
  store ptr %9, ptr %18, align 8
  %19 = getelementptr inbounds %struct.nvkm_oproxy, ptr %15, i32 0, i32 1
  store ptr %19, ptr %3, align 4
  %20 = load ptr, ptr %13, align 4
  %21 = getelementptr inbounds %struct.nvkm_oproxy, ptr %15, i32 0, i32 2
  %22 = tail call i32 %20(ptr noundef %11, ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %21) #9
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %17
  %25 = load ptr, ptr %7, align 8
  %26 = getelementptr inbounds %struct.nv50_disp_chan_func, ptr %25, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %21, align 8
  %29 = getelementptr inbounds %struct.nvkm_oclass, ptr %0, i32 0, i32 4
  %30 = load i32, ptr %29, align 8
  %31 = tail call i32 %27(ptr noundef %7, ptr noundef %28, i32 noundef %30) #9
  %32 = getelementptr inbounds %struct.nv50_disp_chan_object, ptr %15, i32 0, i32 2
  store i32 %31, ptr %32, align 4
  %33 = tail call i32 @llvm.smin.i32(i32 %31, i32 0)
  br label %34

34:                                               ; preds = %24, %17, %4
  %35 = phi i32 [ -12, %4 ], [ %22, %17 ], [ %33, %24 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_oproxy_ctor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv50_disp_chan_child_del_(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nv50_disp_chan_object, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nv50_disp, ptr %3, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nv50_disp_chan_object, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  tail call void @nvkm_ramht_remove(ptr noundef %5, i32 noundef %7) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_ramht_remove(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

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
!9 = !{i64 3949551}
!10 = !{i64 2151489004}
!11 = !{i64 2151490226}
!12 = !{i64 3949133}
