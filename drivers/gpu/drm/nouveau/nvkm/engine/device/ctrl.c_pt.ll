; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/device/ctrl.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/device/ctrl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_device_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_control = type { %struct.nvkm_object, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.121, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.121 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }
%struct.nvkm_clk = type { ptr, %struct.nvkm_subdev, ptr, %struct.nvkm_pstate, %struct.list_head, i32, %struct.work_struct, %struct.wait_queue_head, %struct.atomic_t, %struct.nvkm_notify, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, ptr, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.nvkm_pstate = type { %struct.list_head, %struct.list_head, %struct.nvkm_cstate, i8, i8, i32, i8 }
%struct.nvkm_cstate = type { %struct.list_head, i8, [29 x i32], i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.nvkm_notify = type { ptr, %struct.list_head, i32, i32, ptr, i32, i32, i32, %struct.work_struct, ptr }
%struct.nvif_control_pstate_info_v0 = type { i8, i8, i8, i8, i8, i8, [2 x i8] }
%struct.nvif_control_pstate_attr_v0 = type { i8, i8, i8, [5 x i8], i32, i32, [32 x i8], [16 x i8] }
%struct.nvkm_domain = type { i32, i8, i8, ptr, i32 }
%struct.nvif_control_pstate_user_v0 = type { i8, i8, i8, [5 x i8] }

@nvkm_control_oclass = dso_local local_unnamed_addr constant %struct.nvkm_device_oclass { ptr @nvkm_control_new, %struct.nvkm_sclass { i32 -1, i32 -1, i32 -1, ptr null, ptr null } }, align 4
@nvkm_control = internal constant %struct.nvkm_object_func { ptr null, ptr null, ptr null, ptr @nvkm_control_mthd, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [61 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: control pstate info size %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: control pstate info vers %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: control pstate attr size %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [79 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: control pstate attr vers %d state %d index %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [61 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: control pstate user size %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [81 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: control pstate user vers %d ustate %d pwrsrc %d\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_control_new(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2, i32 noundef %3, ptr nocapture noundef writeonly %4) #0 {
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 80) #6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  store ptr %7, ptr %4, align 4
  %10 = getelementptr inbounds %struct.nvkm_control, ptr %7, i32 0, i32 1
  store ptr %0, ptr %10, align 8
  tail call void @nvkm_object_ctor(ptr noundef nonnull @nvkm_control, ptr noundef %1, ptr noundef nonnull %7) #7
  br label %11

11:                                               ; preds = %9, %5
  %12 = phi i32 [ 0, %9 ], [ -12, %5 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_object_ctor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_control_mthd(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  switch i32 %1, label %274 [
    i32 0, label %5
    i32 1, label %71
    i32 2, label %211
  ]

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.nvkm_control, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 43
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nvkm_client, ptr %11, i32 0, i32 3
  %13 = load i32, ptr %12, align 8
  %14 = icmp ugt i32 %13, 4
  br i1 %14, label %15, label %22

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.nvkm_client, ptr %11, i32 0, i32 1
  %17 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %18 = load i32, ptr %17, align 8
  %19 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %3) #8
  br label %22

22:                                               ; preds = %15, %5
  %23 = icmp ugt i32 %3, 7
  br i1 %23, label %24, label %274

24:                                               ; preds = %22
  %25 = load i8, ptr %2, align 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %274

27:                                               ; preds = %24
  %28 = icmp eq i32 %3, 8
  br i1 %28, label %29, label %274

29:                                               ; preds = %27
  %30 = load ptr, ptr %10, align 4
  %31 = getelementptr inbounds %struct.nvkm_client, ptr %30, i32 0, i32 3
  %32 = load i32, ptr %31, align 8
  %33 = icmp ugt i32 %32, 4
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.nvkm_client, ptr %30, i32 0, i32 1
  %36 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %37 = load i32, ptr %36, align 8
  %38 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %39 = load i32, ptr %38, align 4
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %35, i32 noundef %37, i32 noundef %39, i32 noundef 0) #8
  br label %41

41:                                               ; preds = %34, %29
  %42 = icmp eq ptr %9, null
  br i1 %42, label %63, label %43

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.nvkm_clk, ptr %9, i32 0, i32 5
  %45 = load i32, ptr %44, align 4
  %46 = trunc i32 %45 to i8
  %47 = getelementptr inbounds %struct.nvif_control_pstate_info_v0, ptr %2, i32 0, i32 1
  store i8 %46, ptr %47, align 1
  %48 = getelementptr inbounds %struct.nvkm_clk, ptr %9, i32 0, i32 12
  %49 = load i32, ptr %48, align 4
  %50 = trunc i32 %49 to i8
  %51 = getelementptr inbounds %struct.nvif_control_pstate_info_v0, ptr %2, i32 0, i32 2
  store i8 %50, ptr %51, align 1
  %52 = getelementptr inbounds %struct.nvkm_clk, ptr %9, i32 0, i32 13
  %53 = load i32, ptr %52, align 4
  %54 = trunc i32 %53 to i8
  %55 = getelementptr inbounds %struct.nvif_control_pstate_info_v0, ptr %2, i32 0, i32 3
  store i8 %54, ptr %55, align 1
  %56 = getelementptr inbounds %struct.nvkm_clk, ptr %9, i32 0, i32 10
  %57 = load i32, ptr %56, align 4
  %58 = trunc i32 %57 to i8
  %59 = getelementptr inbounds %struct.nvif_control_pstate_info_v0, ptr %2, i32 0, i32 4
  store i8 %58, ptr %59, align 1
  %60 = getelementptr inbounds %struct.nvkm_clk, ptr %9, i32 0, i32 11
  %61 = load i32, ptr %60, align 4
  %62 = trunc i32 %61 to i8
  br label %68

63:                                               ; preds = %41
  %64 = getelementptr inbounds %struct.nvif_control_pstate_info_v0, ptr %2, i32 0, i32 1
  store i8 0, ptr %64, align 1
  %65 = getelementptr inbounds %struct.nvif_control_pstate_info_v0, ptr %2, i32 0, i32 2
  store i8 -1, ptr %65, align 1
  %66 = getelementptr inbounds %struct.nvif_control_pstate_info_v0, ptr %2, i32 0, i32 3
  store i8 -1, ptr %66, align 1
  %67 = getelementptr inbounds %struct.nvif_control_pstate_info_v0, ptr %2, i32 0, i32 4
  store i8 -19, ptr %67, align 1
  br label %68

68:                                               ; preds = %63, %43
  %69 = phi i8 [ %62, %43 ], [ -1, %63 ]
  %70 = getelementptr inbounds %struct.nvif_control_pstate_info_v0, ptr %2, i32 0, i32 5
  store i8 %69, ptr %70, align 1
  br label %274

71:                                               ; preds = %4
  %72 = getelementptr inbounds %struct.nvkm_control, ptr %0, i32 0, i32 1
  %73 = load ptr, ptr %72, align 8
  %74 = getelementptr inbounds %struct.nvkm_device, ptr %73, i32 0, i32 43
  %75 = load ptr, ptr %74, align 8
  %76 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.nvkm_client, ptr %77, i32 0, i32 3
  %79 = load i32, ptr %78, align 8
  %80 = icmp ugt i32 %79, 4
  br i1 %80, label %81, label %88

81:                                               ; preds = %71
  %82 = getelementptr inbounds %struct.nvkm_client, ptr %77, i32 0, i32 1
  %83 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %84 = load i32, ptr %83, align 8
  %85 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %86 = load i32, ptr %85, align 4
  %87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %82, i32 noundef %84, i32 noundef %86, i32 noundef %3) #8
  br label %88

88:                                               ; preds = %81, %71
  %89 = icmp ugt i32 %3, 63
  br i1 %89, label %90, label %274

90:                                               ; preds = %88
  %91 = load i8, ptr %2, align 4
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %93, label %274

93:                                               ; preds = %90
  %94 = icmp eq i32 %3, 64
  br i1 %94, label %95, label %274

95:                                               ; preds = %93
  %96 = load ptr, ptr %76, align 4
  %97 = getelementptr inbounds %struct.nvkm_client, ptr %96, i32 0, i32 3
  %98 = load i32, ptr %97, align 8
  %99 = icmp ugt i32 %98, 4
  br i1 %99, label %100, label %113

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.nvkm_client, ptr %96, i32 0, i32 1
  %102 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %103 = load i32, ptr %102, align 8
  %104 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %105 = load i32, ptr %104, align 4
  %106 = getelementptr inbounds %struct.nvif_control_pstate_attr_v0, ptr %2, i32 0, i32 1
  %107 = load i8, ptr %106, align 1
  %108 = sext i8 %107 to i32
  %109 = getelementptr inbounds %struct.nvif_control_pstate_attr_v0, ptr %2, i32 0, i32 2
  %110 = load i8, ptr %109, align 2
  %111 = zext i8 %110 to i32
  %112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %101, i32 noundef %103, i32 noundef %105, i32 noundef 0, i32 noundef %108, i32 noundef %111) #8
  br label %113

113:                                              ; preds = %100, %95
  %114 = icmp eq ptr %75, null
  br i1 %114, label %274, label %115

115:                                              ; preds = %113
  %116 = getelementptr inbounds %struct.nvif_control_pstate_attr_v0, ptr %2, i32 0, i32 1
  %117 = load i8, ptr %116, align 1
  %118 = icmp slt i8 %117, -1
  br i1 %118, label %274, label %119

119:                                              ; preds = %115
  %120 = sext i8 %117 to i32
  %121 = getelementptr inbounds %struct.nvkm_clk, ptr %75, i32 0, i32 5
  %122 = load i32, ptr %121, align 4
  %123 = icmp sgt i32 %122, %120
  br i1 %123, label %124, label %274

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.nvkm_clk, ptr %75, i32 0, i32 2
  %126 = load ptr, ptr %125, align 4
  %127 = load i32, ptr %126, align 4
  %128 = icmp eq i32 %127, 29
  br i1 %128, label %274, label %129

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct.nvif_control_pstate_attr_v0, ptr %2, i32 0, i32 2
  br label %131

131:                                              ; preds = %143, %129
  %132 = phi i32 [ %127, %129 ], [ %146, %143 ]
  %133 = phi ptr [ %126, %129 ], [ %145, %143 ]
  %134 = phi i32 [ -1, %129 ], [ %144, %143 ]
  %135 = getelementptr inbounds %struct.nvkm_domain, ptr %133, i32 0, i32 3
  %136 = load ptr, ptr %135, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %143, label %138

138:                                              ; preds = %131
  %139 = add i32 %134, 1
  %140 = load i8, ptr %130, align 2
  %141 = zext i8 %140 to i32
  %142 = icmp eq i32 %139, %141
  br i1 %142, label %148, label %143

143:                                              ; preds = %138, %131
  %144 = phi i32 [ %139, %138 ], [ %134, %131 ]
  %145 = getelementptr %struct.nvkm_domain, ptr %133, i32 1
  %146 = load i32, ptr %145, align 4
  %147 = icmp eq i32 %146, 29
  br i1 %147, label %274, label %131

148:                                              ; preds = %138
  %149 = getelementptr inbounds %struct.nvkm_domain, ptr %133, i32 0, i32 3
  %150 = icmp eq i8 %117, -1
  br i1 %150, label %182, label %151

151:                                              ; preds = %148
  %152 = getelementptr inbounds %struct.nvkm_clk, ptr %75, i32 0, i32 4
  br label %153

153:                                              ; preds = %153, %151
  %154 = phi i32 [ 0, %151 ], [ %160, %153 ]
  %155 = phi ptr [ %152, %151 ], [ %156, %153 ]
  %156 = load ptr, ptr %155, align 4
  %157 = icmp eq ptr %156, %152
  %158 = icmp eq i32 %154, %120
  %159 = select i1 %157, i1 true, i1 %158
  %160 = add i32 %154, 1
  br i1 %159, label %161, label %153

161:                                              ; preds = %153
  %162 = getelementptr %struct.nvkm_pstate, ptr %156, i32 0, i32 2, i32 2, i32 %132
  %163 = load i32, ptr %162, align 4
  %164 = getelementptr inbounds %struct.nvkm_pstate, ptr %156, i32 0, i32 1
  %165 = load ptr, ptr %164, align 4
  %166 = icmp eq ptr %165, %164
  br i1 %166, label %177, label %167

167:                                              ; preds = %167, %161
  %168 = phi ptr [ %175, %167 ], [ %165, %161 ]
  %169 = phi i32 [ %173, %167 ], [ %163, %161 ]
  %170 = phi i32 [ %174, %167 ], [ %163, %161 ]
  %171 = getelementptr %struct.nvkm_cstate, ptr %168, i32 0, i32 2, i32 %132
  %172 = load i32, ptr %171, align 4
  %173 = tail call i32 @llvm.umin.i32(i32 %169, i32 %172) #7
  %174 = tail call i32 @llvm.umax.i32(i32 %170, i32 %172) #7
  %175 = load ptr, ptr %168, align 4
  %176 = icmp eq ptr %175, %164
  br i1 %176, label %177, label %167

177:                                              ; preds = %167, %161
  %178 = phi i32 [ %163, %161 ], [ %174, %167 ]
  %179 = phi i32 [ %163, %161 ], [ %173, %167 ]
  %180 = getelementptr inbounds %struct.nvkm_pstate, ptr %156, i32 0, i32 3
  %181 = load i8, ptr %180, align 4
  store i8 %181, ptr %116, align 1
  br label %185

182:                                              ; preds = %148
  %183 = tail call i32 @nvkm_clk_read(ptr noundef nonnull %75, i32 noundef %132) #7
  %184 = tail call i32 @llvm.smax.i32(i32 %183, i32 0) #7
  br label %185

185:                                              ; preds = %182, %177
  %186 = phi i32 [ %178, %177 ], [ %184, %182 ]
  %187 = phi i32 [ %179, %177 ], [ %184, %182 ]
  %188 = getelementptr inbounds %struct.nvif_control_pstate_attr_v0, ptr %2, i32 0, i32 6
  %189 = load ptr, ptr %149, align 4
  %190 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %188, i32 noundef 32, ptr noundef nonnull @.str.4, ptr noundef %189) #7
  %191 = getelementptr inbounds %struct.nvif_control_pstate_attr_v0, ptr %2, i32 0, i32 7
  store i32 8013901, ptr %191, align 1
  %192 = getelementptr inbounds %struct.nvkm_domain, ptr %133, i32 0, i32 4
  %193 = load i32, ptr %192, align 4
  %194 = udiv i32 %187, %193
  %195 = getelementptr inbounds %struct.nvif_control_pstate_attr_v0, ptr %2, i32 0, i32 4
  store i32 %194, ptr %195, align 4
  %196 = load i32, ptr %192, align 4
  %197 = udiv i32 %186, %196
  %198 = getelementptr inbounds %struct.nvif_control_pstate_attr_v0, ptr %2, i32 0, i32 5
  store i32 %197, ptr %198, align 4
  store i8 0, ptr %130, align 2
  br label %199

199:                                              ; preds = %204, %185
  %200 = phi ptr [ %133, %185 ], [ %201, %204 ]
  %201 = getelementptr %struct.nvkm_domain, ptr %200, i32 1
  %202 = load i32, ptr %201, align 4
  %203 = icmp eq i32 %202, 29
  br i1 %203, label %274, label %204

204:                                              ; preds = %199
  %205 = getelementptr %struct.nvkm_domain, ptr %200, i32 1, i32 3
  %206 = load ptr, ptr %205, align 4
  %207 = icmp eq ptr %206, null
  br i1 %207, label %199, label %208

208:                                              ; preds = %204
  %209 = trunc i32 %139 to i8
  %210 = add i8 %209, 1
  store i8 %210, ptr %130, align 2
  br label %274

211:                                              ; preds = %4
  %212 = getelementptr inbounds %struct.nvkm_control, ptr %0, i32 0, i32 1
  %213 = load ptr, ptr %212, align 8
  %214 = getelementptr inbounds %struct.nvkm_device, ptr %213, i32 0, i32 43
  %215 = load ptr, ptr %214, align 8
  %216 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 1
  %217 = load ptr, ptr %216, align 4
  %218 = getelementptr inbounds %struct.nvkm_client, ptr %217, i32 0, i32 3
  %219 = load i32, ptr %218, align 8
  %220 = icmp ugt i32 %219, 4
  br i1 %220, label %221, label %228

221:                                              ; preds = %211
  %222 = getelementptr inbounds %struct.nvkm_client, ptr %217, i32 0, i32 1
  %223 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %224 = load i32, ptr %223, align 8
  %225 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %226 = load i32, ptr %225, align 4
  %227 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %222, i32 noundef %224, i32 noundef %226, i32 noundef %3) #8
  br label %228

228:                                              ; preds = %221, %211
  %229 = icmp ugt i32 %3, 7
  br i1 %229, label %230, label %274

230:                                              ; preds = %228
  %231 = load i8, ptr %2, align 1
  %232 = icmp eq i8 %231, 0
  br i1 %232, label %233, label %274

233:                                              ; preds = %230
  %234 = icmp eq i32 %3, 8
  br i1 %234, label %235, label %274

235:                                              ; preds = %233
  %236 = load ptr, ptr %216, align 4
  %237 = getelementptr inbounds %struct.nvkm_client, ptr %236, i32 0, i32 3
  %238 = load i32, ptr %237, align 8
  %239 = icmp ugt i32 %238, 4
  br i1 %239, label %240, label %253

240:                                              ; preds = %235
  %241 = getelementptr inbounds %struct.nvkm_client, ptr %236, i32 0, i32 1
  %242 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %243 = load i32, ptr %242, align 8
  %244 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %245 = load i32, ptr %244, align 4
  %246 = getelementptr inbounds %struct.nvif_control_pstate_user_v0, ptr %2, i32 0, i32 1
  %247 = load i8, ptr %246, align 1
  %248 = sext i8 %247 to i32
  %249 = getelementptr inbounds %struct.nvif_control_pstate_user_v0, ptr %2, i32 0, i32 2
  %250 = load i8, ptr %249, align 1
  %251 = sext i8 %250 to i32
  %252 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %241, i32 noundef %243, i32 noundef %245, i32 noundef 0, i32 noundef %248, i32 noundef %251) #8
  br label %253

253:                                              ; preds = %240, %235
  %254 = icmp eq ptr %215, null
  br i1 %254, label %274, label %255

255:                                              ; preds = %253
  %256 = getelementptr inbounds %struct.nvif_control_pstate_user_v0, ptr %2, i32 0, i32 2
  %257 = load i8, ptr %256, align 1
  %258 = icmp sgt i8 %257, -1
  br i1 %258, label %259, label %265

259:                                              ; preds = %255
  %260 = zext i8 %257 to i32
  %261 = getelementptr inbounds %struct.nvif_control_pstate_user_v0, ptr %2, i32 0, i32 1
  %262 = load i8, ptr %261, align 1
  %263 = sext i8 %262 to i32
  %264 = tail call i32 @nvkm_clk_ustate(ptr noundef nonnull %215, i32 noundef %263, i32 noundef %260) #7
  br label %274

265:                                              ; preds = %255
  %266 = getelementptr inbounds %struct.nvif_control_pstate_user_v0, ptr %2, i32 0, i32 1
  %267 = load i8, ptr %266, align 1
  %268 = sext i8 %267 to i32
  %269 = tail call i32 @nvkm_clk_ustate(ptr noundef nonnull %215, i32 noundef %268, i32 noundef 0) #7
  %270 = load i8, ptr %266, align 1
  %271 = sext i8 %270 to i32
  %272 = tail call i32 @nvkm_clk_ustate(ptr noundef nonnull %215, i32 noundef %271, i32 noundef 1) #7
  %273 = or i32 %272, %269
  br label %274

274:                                              ; preds = %265, %259, %253, %233, %230, %228, %208, %199, %143, %124, %119, %115, %113, %93, %90, %88, %68, %27, %24, %22, %4
  %275 = phi i32 [ -22, %4 ], [ -38, %22 ], [ -38, %24 ], [ -7, %27 ], [ 0, %68 ], [ -19, %113 ], [ -22, %115 ], [ -22, %119 ], [ 0, %208 ], [ -38, %88 ], [ -38, %90 ], [ -7, %93 ], [ -22, %124 ], [ -19, %253 ], [ %264, %259 ], [ %273, %265 ], [ -38, %228 ], [ -38, %230 ], [ -7, %233 ], [ 0, %199 ], [ -22, %143 ]
  ret i32 %275
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_clk_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_clk_ustate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind allocsize(2) }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
