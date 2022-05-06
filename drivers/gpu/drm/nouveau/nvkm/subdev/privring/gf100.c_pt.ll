; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/privring/gf100.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/privring/gf100.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_subdev_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
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
%struct.nvkm_timer = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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

@.str = private unnamed_addr constant [53 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/privring/gf100.c\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%s %s: timeout\0A\00", align 1
@gf100_privring = internal constant %struct.nvkm_subdev_func { ptr null, ptr null, ptr null, ptr null, ptr @gf100_privring_init, ptr null, ptr @gf100_privring_intr }, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"%s: HUB%d: %06x %08x (%08x)\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"%s: ROP%d: %06x %08x (%08x)\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"%s: GPC%d: %06x %08x (%08x)\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf100_privring_intr(ptr noundef %0) #0 {
  %2 = alloca %struct.nvkm_timer_wait, align 8
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 1186904
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %9 = load ptr, ptr %5, align 4
  %10 = getelementptr i8, ptr %9, i32 1186908
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr i8, ptr %12, i32 1186928
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %15 = load ptr, ptr %5, align 4
  %16 = getelementptr i8, ptr %15, i32 1186932
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %18 = load ptr, ptr %5, align 4
  %19 = getelementptr i8, ptr %18, i32 1186936
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %21 = and i32 %8, 65280
  %22 = icmp ne i32 %21, 0
  %23 = icmp ne i32 %14, 0
  %24 = select i1 %22, i1 %23, i1 false
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %27 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  br label %36

28:                                               ; preds = %67, %1
  %29 = phi i32 [ %8, %1 ], [ %68, %67 ]
  %30 = icmp ugt i32 %29, 65535
  %31 = icmp ne i32 %17, 0
  %32 = select i1 %30, i1 %31, i1 false
  br i1 %32, label %33, label %74

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %35 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  br label %81

36:                                               ; preds = %67, %25
  %37 = phi i32 [ %8, %25 ], [ %68, %67 ]
  %38 = phi i32 [ 0, %25 ], [ %69, %67 ]
  %39 = shl i32 256, %38
  %40 = and i32 %37, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %67, label %42

42:                                               ; preds = %36
  %43 = load ptr, ptr %3, align 4
  %44 = getelementptr inbounds %struct.nvkm_device, ptr %43, i32 0, i32 11
  %45 = load ptr, ptr %44, align 4
  %46 = shl i32 %38, 10
  %47 = add i32 %46, 1188128
  %48 = getelementptr i8, ptr %45, i32 %47
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %50 = load ptr, ptr %44, align 4
  %51 = add i32 %46, 1188132
  %52 = getelementptr i8, ptr %50, i32 %51
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %54 = load ptr, ptr %44, align 4
  %55 = add i32 %46, 1188136
  %56 = getelementptr i8, ptr %54, i32 %55
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %58 = load i32, ptr %26, align 4
  %59 = icmp ugt i32 %58, 3
  br i1 %59, label %60, label %64

60:                                               ; preds = %42
  %61 = load ptr, ptr %3, align 4
  %62 = getelementptr inbounds %struct.nvkm_device, ptr %61, i32 0, i32 2
  %63 = load ptr, ptr %62, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %63, ptr noundef nonnull @.str.2, ptr noundef %27, i32 noundef %38, i32 noundef %49, i32 noundef %53, i32 noundef %57) #6
  br label %64

64:                                               ; preds = %60, %42
  %65 = xor i32 %39, -1
  %66 = and i32 %37, %65
  br label %67

67:                                               ; preds = %64, %36
  %68 = phi i32 [ %66, %64 ], [ %37, %36 ]
  %69 = add nuw i32 %38, 1
  %70 = and i32 %68, 65280
  %71 = icmp ne i32 %70, 0
  %72 = icmp ult i32 %69, %14
  %73 = select i1 %71, i1 %72, i1 false
  br i1 %73, label %36, label %28

74:                                               ; preds = %112, %28
  %75 = icmp ne i32 %11, 0
  %76 = icmp ne i32 %20, 0
  %77 = select i1 %75, i1 %76, i1 false
  br i1 %77, label %78, label %155

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %80 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  br label %118

81:                                               ; preds = %112, %33
  %82 = phi i32 [ %29, %33 ], [ %113, %112 ]
  %83 = phi i32 [ 0, %33 ], [ %114, %112 ]
  %84 = shl i32 65536, %83
  %85 = and i32 %82, %84
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %112, label %87

87:                                               ; preds = %81
  %88 = load ptr, ptr %3, align 4
  %89 = getelementptr inbounds %struct.nvkm_device, ptr %88, i32 0, i32 11
  %90 = load ptr, ptr %89, align 4
  %91 = shl i32 %83, 10
  %92 = add i32 %91, 1196320
  %93 = getelementptr i8, ptr %90, i32 %92
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %93) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %95 = load ptr, ptr %89, align 4
  %96 = add i32 %91, 1196324
  %97 = getelementptr i8, ptr %95, i32 %96
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %97) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %99 = load ptr, ptr %89, align 4
  %100 = add i32 %91, 1196328
  %101 = getelementptr i8, ptr %99, i32 %100
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %103 = load i32, ptr %34, align 4
  %104 = icmp ugt i32 %103, 3
  br i1 %104, label %105, label %109

105:                                              ; preds = %87
  %106 = load ptr, ptr %3, align 4
  %107 = getelementptr inbounds %struct.nvkm_device, ptr %106, i32 0, i32 2
  %108 = load ptr, ptr %107, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %108, ptr noundef nonnull @.str.3, ptr noundef %35, i32 noundef %83, i32 noundef %94, i32 noundef %98, i32 noundef %102) #6
  br label %109

109:                                              ; preds = %105, %87
  %110 = xor i32 %84, -1
  %111 = and i32 %82, %110
  br label %112

112:                                              ; preds = %109, %81
  %113 = phi i32 [ %111, %109 ], [ %82, %81 ]
  %114 = add nuw i32 %83, 1
  %115 = icmp ugt i32 %113, 65535
  %116 = icmp ult i32 %114, %17
  %117 = select i1 %115, i1 %116, i1 false
  br i1 %117, label %81, label %74

118:                                              ; preds = %149, %78
  %119 = phi i32 [ %11, %78 ], [ %150, %149 ]
  %120 = phi i32 [ 0, %78 ], [ %151, %149 ]
  %121 = shl nuw i32 1, %120
  %122 = and i32 %119, %121
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %149, label %124

124:                                              ; preds = %118
  %125 = load ptr, ptr %3, align 4
  %126 = getelementptr inbounds %struct.nvkm_device, ptr %125, i32 0, i32 11
  %127 = load ptr, ptr %126, align 4
  %128 = shl i32 %120, 10
  %129 = add i32 %128, 1212704
  %130 = getelementptr i8, ptr %127, i32 %129
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %130) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %132 = load ptr, ptr %126, align 4
  %133 = add i32 %128, 1212708
  %134 = getelementptr i8, ptr %132, i32 %133
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %134) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %136 = load ptr, ptr %126, align 4
  %137 = add i32 %128, 1212712
  %138 = getelementptr i8, ptr %136, i32 %137
  %139 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %138) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %140 = load i32, ptr %79, align 4
  %141 = icmp ugt i32 %140, 3
  br i1 %141, label %142, label %146

142:                                              ; preds = %124
  %143 = load ptr, ptr %3, align 4
  %144 = getelementptr inbounds %struct.nvkm_device, ptr %143, i32 0, i32 2
  %145 = load ptr, ptr %144, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %145, ptr noundef nonnull @.str.4, ptr noundef %80, i32 noundef %120, i32 noundef %131, i32 noundef %135, i32 noundef %139) #6
  br label %146

146:                                              ; preds = %142, %124
  %147 = xor i32 %121, -1
  %148 = and i32 %119, %147
  br label %149

149:                                              ; preds = %146, %118
  %150 = phi i32 [ %148, %146 ], [ %119, %118 ]
  %151 = add nuw i32 %120, 1
  %152 = icmp ne i32 %150, 0
  %153 = icmp ult i32 %151, %20
  %154 = select i1 %152, i1 %153, i1 false
  br i1 %154, label %118, label %155

155:                                              ; preds = %149, %74
  %156 = load ptr, ptr %5, align 4
  %157 = getelementptr i8, ptr %156, i32 1186892
  %158 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %157) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %159 = and i32 %158, -64
  %160 = or i32 %159, 2
  %161 = load ptr, ptr %5, align 4
  %162 = getelementptr i8, ptr %161, i32 1186892
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %162, i32 %160) #5, !srcloc !11
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i32 40, i1 false), !annotation !12
  call void @nvkm_timer_wait_init(ptr noundef %4, i64 noundef 2000000000, ptr noundef nonnull %2) #5
  br label %163

163:                                              ; preds = %169, %155
  %164 = load ptr, ptr %5, align 4
  %165 = getelementptr i8, ptr %164, i32 1186892
  %166 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %165) #5, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %167 = and i32 %166, 63
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %191, label %169

169:                                              ; preds = %163
  %170 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %2) #5
  %171 = icmp sgt i64 %170, -1
  br i1 %171, label %163, label %172

172:                                              ; preds = %169
  %173 = load ptr, ptr %2, align 8
  %174 = getelementptr inbounds %struct.nvkm_timer, ptr %173, i32 0, i32 1, i32 1
  %175 = load ptr, ptr %174, align 4
  %176 = getelementptr inbounds %struct.nvkm_device, ptr %175, i32 0, i32 2
  %177 = load ptr, ptr %176, align 8
  %178 = call ptr @dev_driver_string(ptr noundef %177) #5
  %179 = load ptr, ptr %2, align 8
  %180 = getelementptr inbounds %struct.nvkm_timer, ptr %179, i32 0, i32 1, i32 1
  %181 = load ptr, ptr %180, align 4
  %182 = getelementptr inbounds %struct.nvkm_device, ptr %181, i32 0, i32 2
  %183 = load ptr, ptr %182, align 8
  %184 = getelementptr inbounds %struct.device, ptr %183, i32 0, i32 3
  %185 = load ptr, ptr %184, align 4
  %186 = icmp eq ptr %185, null
  br i1 %186, label %187, label %189

187:                                              ; preds = %172
  %188 = load ptr, ptr %183, align 4
  br label %189

189:                                              ; preds = %187, %172
  %190 = phi ptr [ %188, %187 ], [ %185, %172 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 96, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %178, ptr noundef %190) #5
  br label %191

191:                                              ; preds = %189, %163
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gf100_privring_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @nvkm_subdev_new_(ptr noundef nonnull @gf100_privring, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #5
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_subdev_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gf100_privring_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 1188624
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %8 = and i32 %7, -262144
  %9 = or i32 %8, 2048
  %10 = load ptr, ptr %4, align 4
  %11 = getelementptr i8, ptr %10, i32 1188624
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #5, !srcloc !11
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr i8, ptr %12, i32 1188652
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 1048676) #5, !srcloc !11
  %14 = load ptr, ptr %4, align 4
  %15 = getelementptr i8, ptr %14, i32 1188656
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 1048676) #5, !srcloc !11
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr i8, ptr %16, i32 1188660
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 1048676) #5, !srcloc !11
  %18 = load ptr, ptr %4, align 4
  %19 = getelementptr i8, ptr %18, i32 1188680
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %21 = and i32 %20, -262144
  %22 = or i32 %21, 256
  %23 = load ptr, ptr %4, align 4
  %24 = getelementptr i8, ptr %23, i32 1188680
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #5, !srcloc !11
  ret i32 0
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{i64 3940720}
!9 = !{i64 2151480173}
!10 = !{i64 2151481395}
!11 = !{i64 3940302}
!12 = !{!"auto-init"}
