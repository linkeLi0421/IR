; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/falcon/msgq.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/falcon/msgq.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.nvkm_falcon_msgq = type { ptr, ptr, %struct.mutex, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.nvfw_falcon_msg = type { i8, i8, i8, i8 }
%struct.nvkm_falcon = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.mutex, i8, ptr, i8, i8, i8, ptr, i8, %struct.anon.123, %struct.anon.124, %struct.nvkm_engine }
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
%struct.nvkm_falcon_qmgr = type { ptr, %struct.anon.128 }
%struct.anon.128 = type { %struct.mutex, [16 x %struct.nvkm_falcon_qmgr_seq], [1 x i32] }
%struct.nvkm_falcon_qmgr_seq = type { i16, i32, i8, ptr, ptr, %struct.completion, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.nvkm_falcon_func = type { %struct.anon, %struct.anon.0, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.1, %struct.anon.1, [0 x %struct.nvkm_sclass] }
%struct.anon = type { ptr, i32 }
%struct.anon.0 = type { ptr, i32 }
%struct.anon.1 = type { i32, i32, i32 }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [47 x i8] c"%s: %s: unexpected init message size %d vs %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"%s: unexpected init message size %d vs %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"%s: %s: %s: initialised @ index %d offset 0x%08x size 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"%s: %s: initialised @ index %d offset 0x%08x size 0x%08x\0A\00", align 1
@nvkm_falcon_msgq_new.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"&msgq->mutex\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"%s: %s: %s: failed to read message header\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"%s: %s: failed to read message header\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"%s: %s: %s: message too big, %d bytes\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"%s: %s: message too big, %d bytes\0A\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"%s: %s: %s: failed to read message data\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"%s: %s: failed to read message data\0A\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"%s: %s: %s: message for unknown sequence %08x\0A\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"%s: %s: message for unknown sequence %08x\0A\00", align 1
@.str.13 = private unnamed_addr constant [55 x i8] c"%s: %s: %s: requested %d bytes, but only %d available\0A\00", align 1
@.str.14 = private unnamed_addr constant [51 x i8] c"%s: %s: requested %d bytes, but only %d available\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_falcon_msgq_recv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [128 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %2, i8 0, i32 128, i1 false), !annotation !8
  %3 = getelementptr inbounds %struct.nvkm_falcon_msgq, ptr %0, i32 0, i32 2
  %4 = getelementptr inbounds %struct.nvkm_falcon_msgq, ptr %0, i32 0, i32 4
  %5 = getelementptr inbounds %struct.nvkm_falcon_msgq, ptr %0, i32 0, i32 6
  %6 = getelementptr inbounds %struct.nvkm_falcon_msgq, ptr %0, i32 0, i32 3
  %7 = getelementptr inbounds %struct.nvkm_falcon_msgq, ptr %0, i32 0, i32 1
  %8 = getelementptr inbounds %struct.nvfw_falcon_msg, ptr %2, i32 0, i32 1
  %9 = getelementptr inbounds %struct.nvfw_falcon_msg, ptr %2, i32 1
  %10 = getelementptr inbounds %struct.nvfw_falcon_msg, ptr %2, i32 0, i32 3
  br label %11

11:                                               ; preds = %187, %1
  call void @mutex_lock(ptr noundef %3) #6
  %12 = load ptr, ptr %0, align 4
  %13 = load ptr, ptr %12, align 4
  %14 = load i32, ptr %4, align 4
  %15 = getelementptr inbounds %struct.nvkm_falcon, ptr %13, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.nvkm_subdev, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nvkm_device, ptr %18, i32 0, i32 11
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nvkm_falcon, ptr %13, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, %14
  %24 = getelementptr i8, ptr %20, i32 %23
  %25 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #6, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  store i32 %25, ptr %5, align 4
  %26 = load ptr, ptr %0, align 4
  %27 = load ptr, ptr %26, align 4
  %28 = load i32, ptr %6, align 4
  %29 = getelementptr inbounds %struct.nvkm_falcon, ptr %27, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.nvkm_subdev, ptr %30, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.nvkm_device, ptr %32, i32 0, i32 11
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.nvkm_falcon, ptr %27, i32 0, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, %28
  %38 = getelementptr i8, ptr %34, i32 %37
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #6, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %40 = load ptr, ptr %0, align 4
  %41 = load ptr, ptr %40, align 4
  %42 = load i32, ptr %4, align 4
  %43 = getelementptr inbounds %struct.nvkm_falcon, ptr %41, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.nvkm_subdev, ptr %44, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.nvkm_device, ptr %46, i32 0, i32 11
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.nvkm_falcon, ptr %41, i32 0, i32 3
  %50 = load i32, ptr %49, align 4
  %51 = add i32 %50, %42
  %52 = getelementptr i8, ptr %48, i32 %51
  %53 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #6, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %54 = icmp eq i32 %39, %53
  br i1 %54, label %151, label %55

55:                                               ; preds = %11
  %56 = call fastcc i32 @nvkm_falcon_msgq_pop(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 4) #6
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %84, label %58

58:                                               ; preds = %55
  %59 = load ptr, ptr %0, align 4
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.nvkm_falcon, ptr %60, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.nvkm_subdev, ptr %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.nvkm_falcon, ptr %60, i32 0, i32 2
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %63, %65
  %67 = getelementptr inbounds %struct.nvkm_subdev, ptr %62, i32 0, i32 5
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %66, label %77, label %70

70:                                               ; preds = %58
  br i1 %69, label %147, label %71

71:                                               ; preds = %70
  %72 = getelementptr inbounds %struct.nvkm_subdev, ptr %62, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.nvkm_device, ptr %73, i32 0, i32 2
  %75 = load ptr, ptr %74, align 8
  %76 = load ptr, ptr %7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.5, ptr noundef %63, ptr noundef %65, ptr noundef %76) #7
  br label %147

77:                                               ; preds = %58
  br i1 %69, label %147, label %78

78:                                               ; preds = %77
  %79 = getelementptr inbounds %struct.nvkm_subdev, ptr %62, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.nvkm_device, ptr %80, i32 0, i32 2
  %82 = load ptr, ptr %81, align 8
  %83 = load ptr, ptr %7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %82, ptr noundef nonnull @.str.6, ptr noundef %63, ptr noundef %83) #7
  br label %147

84:                                               ; preds = %55
  %85 = load i8, ptr %8, align 1
  %86 = zext i8 %85 to i32
  %87 = icmp ugt i8 %85, -128
  br i1 %87, label %88, label %115

88:                                               ; preds = %84
  %89 = zext i8 %85 to i32
  %90 = load ptr, ptr %0, align 4
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.nvkm_falcon, ptr %91, i32 0, i32 1
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.nvkm_subdev, ptr %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.nvkm_falcon, ptr %91, i32 0, i32 2
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %94, %96
  %98 = getelementptr inbounds %struct.nvkm_subdev, ptr %93, i32 0, i32 5
  %99 = load i32, ptr %98, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %97, label %108, label %101

101:                                              ; preds = %88
  br i1 %100, label %150, label %102

102:                                              ; preds = %101
  %103 = getelementptr inbounds %struct.nvkm_subdev, ptr %93, i32 0, i32 1
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.nvkm_device, ptr %104, i32 0, i32 2
  %106 = load ptr, ptr %105, align 8
  %107 = load ptr, ptr %7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %106, ptr noundef nonnull @.str.7, ptr noundef %94, ptr noundef %96, ptr noundef %107, i32 noundef %89) #7
  br label %150

108:                                              ; preds = %88
  br i1 %100, label %150, label %109

109:                                              ; preds = %108
  %110 = getelementptr inbounds %struct.nvkm_subdev, ptr %93, i32 0, i32 1
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr inbounds %struct.nvkm_device, ptr %111, i32 0, i32 2
  %113 = load ptr, ptr %112, align 8
  %114 = load ptr, ptr %7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %113, ptr noundef nonnull @.str.8, ptr noundef %94, ptr noundef %114, i32 noundef %89) #7
  br label %150

115:                                              ; preds = %84
  %116 = icmp ugt i8 %85, 4
  br i1 %116, label %117, label %151

117:                                              ; preds = %115
  %118 = add nsw i32 %86, -4
  %119 = call fastcc i32 @nvkm_falcon_msgq_pop(ptr noundef %0, ptr noundef %9, i32 noundef %118) #6
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %151, label %121

121:                                              ; preds = %117
  %122 = load ptr, ptr %0, align 4
  %123 = load ptr, ptr %122, align 4
  %124 = getelementptr inbounds %struct.nvkm_falcon, ptr %123, i32 0, i32 1
  %125 = load ptr, ptr %124, align 4
  %126 = getelementptr inbounds %struct.nvkm_subdev, ptr %125, i32 0, i32 4
  %127 = getelementptr inbounds %struct.nvkm_falcon, ptr %123, i32 0, i32 2
  %128 = load ptr, ptr %127, align 4
  %129 = icmp eq ptr %126, %128
  %130 = getelementptr inbounds %struct.nvkm_subdev, ptr %125, i32 0, i32 5
  %131 = load i32, ptr %130, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %129, label %140, label %133

133:                                              ; preds = %121
  br i1 %132, label %147, label %134

134:                                              ; preds = %133
  %135 = getelementptr inbounds %struct.nvkm_subdev, ptr %125, i32 0, i32 1
  %136 = load ptr, ptr %135, align 4
  %137 = getelementptr inbounds %struct.nvkm_device, ptr %136, i32 0, i32 2
  %138 = load ptr, ptr %137, align 8
  %139 = load ptr, ptr %7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %138, ptr noundef nonnull @.str.9, ptr noundef %126, ptr noundef %128, ptr noundef %139) #7
  br label %147

140:                                              ; preds = %121
  br i1 %132, label %147, label %141

141:                                              ; preds = %140
  %142 = getelementptr inbounds %struct.nvkm_subdev, ptr %125, i32 0, i32 1
  %143 = load ptr, ptr %142, align 4
  %144 = getelementptr inbounds %struct.nvkm_device, ptr %143, i32 0, i32 2
  %145 = load ptr, ptr %144, align 8
  %146 = load ptr, ptr %7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %145, ptr noundef nonnull @.str.10, ptr noundef %126, ptr noundef %146) #7
  br label %147

147:                                              ; preds = %141, %140, %134, %133, %78, %77, %71, %70
  %148 = phi i32 [ %56, %71 ], [ %56, %70 ], [ %56, %78 ], [ %56, %77 ], [ %119, %140 ], [ %119, %141 ], [ %119, %133 ], [ %119, %134 ]
  %149 = icmp sgt i32 %148, -1
  br i1 %149, label %151, label %150

150:                                              ; preds = %147, %109, %108, %102, %101
  call void @mutex_unlock(ptr noundef %3) #6
  br label %224

151:                                              ; preds = %147, %117, %115, %11
  %152 = load ptr, ptr %0, align 4
  %153 = load ptr, ptr %152, align 4
  %154 = load i32, ptr %4, align 4
  %155 = load i32, ptr %5, align 4
  %156 = getelementptr inbounds %struct.nvkm_falcon, ptr %153, i32 0, i32 1
  %157 = load ptr, ptr %156, align 4
  %158 = getelementptr inbounds %struct.nvkm_subdev, ptr %157, i32 0, i32 1
  %159 = load ptr, ptr %158, align 4
  %160 = getelementptr inbounds %struct.nvkm_device, ptr %159, i32 0, i32 11
  %161 = load ptr, ptr %160, align 4
  %162 = getelementptr inbounds %struct.nvkm_falcon, ptr %153, i32 0, i32 3
  %163 = load i32, ptr %162, align 4
  %164 = add i32 %163, %154
  %165 = getelementptr i8, ptr %161, i32 %164
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %165, i32 %155) #6, !srcloc !12
  call void @mutex_unlock(ptr noundef %3) #6
  br i1 %54, label %224, label %166

166:                                              ; preds = %151
  %167 = load ptr, ptr %0, align 4
  %168 = load i8, ptr %10, align 1
  %169 = zext i8 %168 to i32
  %170 = getelementptr %struct.nvkm_falcon_qmgr, ptr %167, i32 0, i32 1, i32 1, i32 %169
  %171 = getelementptr %struct.nvkm_falcon_qmgr, ptr %167, i32 0, i32 1, i32 1, i32 %169, i32 1
  %172 = load i32, ptr %171, align 4
  %173 = and i32 %172, -2
  %174 = icmp eq i32 %173, 2
  br i1 %174, label %205, label %175

175:                                              ; preds = %166
  %176 = load ptr, ptr %167, align 4
  %177 = getelementptr inbounds %struct.nvkm_falcon, ptr %176, i32 0, i32 1
  %178 = load ptr, ptr %177, align 4
  %179 = getelementptr inbounds %struct.nvkm_subdev, ptr %178, i32 0, i32 4
  %180 = getelementptr inbounds %struct.nvkm_falcon, ptr %176, i32 0, i32 2
  %181 = load ptr, ptr %180, align 4
  %182 = icmp eq ptr %179, %181
  %183 = getelementptr inbounds %struct.nvkm_subdev, ptr %178, i32 0, i32 5
  %184 = load i32, ptr %183, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %182, label %196, label %186

186:                                              ; preds = %175
  br i1 %185, label %187, label %188

187:                                              ; preds = %222, %220, %197, %196, %188, %186
  br label %11

188:                                              ; preds = %186
  %189 = getelementptr inbounds %struct.nvkm_subdev, ptr %178, i32 0, i32 1
  %190 = load ptr, ptr %189, align 4
  %191 = getelementptr inbounds %struct.nvkm_device, ptr %190, i32 0, i32 2
  %192 = load ptr, ptr %191, align 8
  %193 = load ptr, ptr %7, align 4
  %194 = load i16, ptr %170, align 4
  %195 = zext i16 %194 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %192, ptr noundef nonnull @.str.11, ptr noundef %179, ptr noundef %181, ptr noundef %193, i32 noundef %195) #7
  br label %187

196:                                              ; preds = %175
  br i1 %185, label %187, label %197

197:                                              ; preds = %196
  %198 = getelementptr inbounds %struct.nvkm_subdev, ptr %178, i32 0, i32 1
  %199 = load ptr, ptr %198, align 4
  %200 = getelementptr inbounds %struct.nvkm_device, ptr %199, i32 0, i32 2
  %201 = load ptr, ptr %200, align 8
  %202 = load ptr, ptr %7, align 4
  %203 = load i16, ptr %170, align 4
  %204 = zext i16 %203 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %201, ptr noundef nonnull @.str.12, ptr noundef %179, ptr noundef %202, i32 noundef %204) #7
  br label %187

205:                                              ; preds = %166
  %206 = icmp eq i32 %172, 2
  br i1 %206, label %207, label %216

207:                                              ; preds = %205
  %208 = getelementptr %struct.nvkm_falcon_qmgr, ptr %167, i32 0, i32 1, i32 1, i32 %169, i32 3
  %209 = load ptr, ptr %208, align 4
  %210 = icmp eq ptr %209, null
  br i1 %210, label %216, label %211

211:                                              ; preds = %207
  %212 = getelementptr %struct.nvkm_falcon_qmgr, ptr %167, i32 0, i32 1, i32 1, i32 %169, i32 4
  %213 = load ptr, ptr %212, align 4
  %214 = call i32 %209(ptr noundef %213, ptr noundef nonnull %2) #6
  %215 = getelementptr %struct.nvkm_falcon_qmgr, ptr %167, i32 0, i32 1, i32 1, i32 %169, i32 6
  store i32 %214, ptr %215, align 4
  br label %216

216:                                              ; preds = %211, %207, %205
  %217 = getelementptr %struct.nvkm_falcon_qmgr, ptr %167, i32 0, i32 1, i32 1, i32 %169, i32 2
  %218 = load i8, ptr %217, align 4, !range !13
  %219 = icmp eq i8 %218, 0
  br i1 %219, label %222, label %220

220:                                              ; preds = %216
  %221 = load ptr, ptr %0, align 4
  call void @nvkm_falcon_qmgr_seq_release(ptr noundef %221, ptr noundef %170) #6
  br label %187

222:                                              ; preds = %216
  %223 = getelementptr %struct.nvkm_falcon_qmgr, ptr %167, i32 0, i32 1, i32 1, i32 %169, i32 5
  call void @complete_all(ptr noundef %223) #6
  br label %187

224:                                              ; preds = %151, %150
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_falcon_msgq_recv_initmsg(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_falcon_func, ptr %6, i32 0, i32 19
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_falcon_msgq, ptr %0, i32 0, i32 3
  store i32 %8, ptr %9, align 4
  %10 = load ptr, ptr %5, align 4
  %11 = getelementptr inbounds %struct.nvkm_falcon_func, ptr %10, i32 0, i32 19, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nvkm_falcon_msgq, ptr %0, i32 0, i32 4
  store i32 %12, ptr %13, align 4
  %14 = load ptr, ptr %5, align 4
  %15 = getelementptr inbounds %struct.nvkm_falcon_func, ptr %14, i32 0, i32 19, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.nvkm_falcon, ptr %5, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nvkm_subdev, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nvkm_device, ptr %20, i32 0, i32 11
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.nvkm_falcon, ptr %5, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, %16
  %26 = getelementptr i8, ptr %22, i32 %25
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %28 = getelementptr inbounds %struct.nvkm_falcon_msgq, ptr %0, i32 0, i32 5
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.nvkm_falcon_msgq, ptr %0, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %29) #6
  %30 = load ptr, ptr %0, align 4
  %31 = load ptr, ptr %30, align 4
  %32 = load i32, ptr %13, align 4
  %33 = getelementptr inbounds %struct.nvkm_falcon, ptr %31, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.nvkm_subdev, ptr %34, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.nvkm_device, ptr %36, i32 0, i32 11
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.nvkm_falcon, ptr %31, i32 0, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, %32
  %42 = getelementptr i8, ptr %38, i32 %41
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %44 = getelementptr inbounds %struct.nvkm_falcon_msgq, ptr %0, i32 0, i32 6
  store i32 %43, ptr %44, align 4
  %45 = tail call fastcc i32 @nvkm_falcon_msgq_pop(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %88

47:                                               ; preds = %3
  %48 = getelementptr inbounds %struct.nvfw_falcon_msg, ptr %1, i32 0, i32 1
  %49 = load i8, ptr %48, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp eq i32 %50, %2
  br i1 %51, label %73, label %52

52:                                               ; preds = %47
  %53 = load ptr, ptr %17, align 4
  %54 = getelementptr inbounds %struct.nvkm_subdev, ptr %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.nvkm_falcon, ptr %5, i32 0, i32 2
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %54, %56
  %58 = getelementptr inbounds %struct.nvkm_subdev, ptr %53, i32 0, i32 5
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %57, label %67, label %61

61:                                               ; preds = %52
  br i1 %60, label %88, label %62

62:                                               ; preds = %61
  %63 = getelementptr inbounds %struct.nvkm_subdev, ptr %53, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.nvkm_device, ptr %64, i32 0, i32 2
  %66 = load ptr, ptr %65, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str, ptr noundef %54, ptr noundef %56, i32 noundef %50, i32 noundef %2) #7
  br label %88

67:                                               ; preds = %52
  br i1 %60, label %88, label %68

68:                                               ; preds = %67
  %69 = getelementptr inbounds %struct.nvkm_subdev, ptr %53, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.nvkm_device, ptr %70, i32 0, i32 2
  %72 = load ptr, ptr %71, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.1, ptr noundef %54, i32 noundef %50, i32 noundef %2) #7
  br label %88

73:                                               ; preds = %47
  %74 = load ptr, ptr %0, align 4
  %75 = load ptr, ptr %74, align 4
  %76 = load i32, ptr %13, align 4
  %77 = load i32, ptr %44, align 4
  %78 = getelementptr inbounds %struct.nvkm_falcon, ptr %75, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.nvkm_subdev, ptr %79, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.nvkm_device, ptr %81, i32 0, i32 11
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.nvkm_falcon, ptr %75, i32 0, i32 3
  %85 = load i32, ptr %84, align 4
  %86 = add i32 %85, %76
  %87 = getelementptr i8, ptr %83, i32 %86
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %77) #6, !srcloc !12
  br label %88

88:                                               ; preds = %73, %68, %67, %62, %61, %3
  %89 = phi i32 [ 0, %73 ], [ -22, %62 ], [ -22, %61 ], [ -22, %68 ], [ -22, %67 ], [ %45, %3 ]
  tail call void @mutex_unlock(ptr noundef %29) #6
  ret i32 %89
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nvkm_falcon_msgq_pop(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_falcon_msgq, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_falcon, ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_subdev, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nvkm_falcon, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, %7
  %17 = getelementptr i8, ptr %13, i32 %16
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %19 = getelementptr inbounds %struct.nvkm_falcon_msgq, ptr %0, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = icmp ult i32 %18, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.nvkm_falcon_msgq, ptr %0, i32 0, i32 5
  %24 = load i32, ptr %23, align 4
  store i32 %24, ptr %19, align 4
  br label %25

25:                                               ; preds = %22, %3
  %26 = phi i32 [ %24, %22 ], [ %20, %3 ]
  %27 = sub i32 %18, %26
  %28 = icmp ult i32 %27, %2
  br i1 %28, label %29, label %57

29:                                               ; preds = %25
  %30 = load ptr, ptr %0, align 4
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.nvkm_falcon, ptr %31, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.nvkm_subdev, ptr %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.nvkm_falcon, ptr %31, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %34, %36
  %38 = getelementptr inbounds %struct.nvkm_subdev, ptr %33, i32 0, i32 5
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %37, label %49, label %41

41:                                               ; preds = %29
  br i1 %40, label %62, label %42

42:                                               ; preds = %41
  %43 = getelementptr inbounds %struct.nvkm_subdev, ptr %33, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.nvkm_device, ptr %44, i32 0, i32 2
  %46 = load ptr, ptr %45, align 8
  %47 = getelementptr inbounds %struct.nvkm_falcon_msgq, ptr %0, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.13, ptr noundef %34, ptr noundef %36, ptr noundef %48, i32 noundef %2, i32 noundef %27) #7
  br label %62

49:                                               ; preds = %29
  br i1 %40, label %62, label %50

50:                                               ; preds = %49
  %51 = getelementptr inbounds %struct.nvkm_subdev, ptr %33, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.nvkm_device, ptr %52, i32 0, i32 2
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr inbounds %struct.nvkm_falcon_msgq, ptr %0, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.14, ptr noundef %34, ptr noundef %56, i32 noundef %2, i32 noundef %27) #7
  br label %62

57:                                               ; preds = %25
  tail call void @nvkm_falcon_read_dmem(ptr noundef %5, i32 noundef %26, i32 noundef %2, i8 noundef zeroext 0, ptr noundef %1) #6
  %58 = add i32 %2, 3
  %59 = and i32 %58, -4
  %60 = load i32, ptr %19, align 4
  %61 = add i32 %60, %59
  store i32 %61, ptr %19, align 4
  br label %62

62:                                               ; preds = %57, %50, %49, %42, %41
  %63 = phi i32 [ 0, %57 ], [ -22, %49 ], [ -22, %50 ], [ -22, %41 ], [ -22, %42 ]
  ret i32 %63
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_falcon_msgq_init(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr %0, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_falcon_func, ptr %7, i32 0, i32 19
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_falcon_func, ptr %7, i32 0, i32 19, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = mul i32 %11, %1
  %13 = add i32 %12, %9
  %14 = getelementptr inbounds %struct.nvkm_falcon_msgq, ptr %0, i32 0, i32 3
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.nvkm_falcon_func, ptr %7, i32 0, i32 19, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = load i32, ptr %10, align 4
  %18 = mul i32 %17, %1
  %19 = add i32 %18, %16
  %20 = getelementptr inbounds %struct.nvkm_falcon_msgq, ptr %0, i32 0, i32 4
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.nvkm_falcon_msgq, ptr %0, i32 0, i32 5
  store i32 %2, ptr %21, align 4
  %22 = load ptr, ptr %5, align 4
  %23 = getelementptr inbounds %struct.nvkm_falcon, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nvkm_subdev, ptr %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.nvkm_falcon, ptr %22, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %25, %27
  %29 = getelementptr inbounds %struct.nvkm_subdev, ptr %24, i32 0, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = icmp ugt i32 %30, 3
  br i1 %28, label %40, label %32

32:                                               ; preds = %4
  br i1 %31, label %33, label %48

33:                                               ; preds = %32
  %34 = getelementptr inbounds %struct.nvkm_subdev, ptr %24, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.nvkm_device, ptr %35, i32 0, i32 2
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.nvkm_falcon_msgq, ptr %0, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %37, ptr noundef nonnull @.str.2, ptr noundef %25, ptr noundef %27, ptr noundef %39, i32 noundef %1, i32 noundef %2, i32 noundef %3) #7
  br label %48

40:                                               ; preds = %4
  br i1 %31, label %41, label %48

41:                                               ; preds = %40
  %42 = getelementptr inbounds %struct.nvkm_subdev, ptr %24, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.nvkm_device, ptr %43, i32 0, i32 2
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.nvkm_falcon_msgq, ptr %0, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %45, ptr noundef nonnull @.str.3, ptr noundef %25, ptr noundef %47, i32 noundef %1, i32 noundef %2, i32 noundef %3) #7
  br label %48

48:                                               ; preds = %41, %40, %33, %32
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_falcon_msgq_del(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @kfree(ptr noundef nonnull %2) #6
  store ptr null, ptr %0, align 4
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_falcon_msgq_new(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 44) #8
  store ptr %5, ptr %2, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  store ptr %0, ptr %5, align 8
  %8 = getelementptr inbounds %struct.nvkm_falcon_msgq, ptr %5, i32 0, i32 1
  store ptr %1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.nvkm_falcon_msgq, ptr %5, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %9, ptr noundef nonnull @.str.4, ptr noundef nonnull @nvkm_falcon_msgq_new.__key) #6
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi i32 [ 0, %7 ], [ -12, %3 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_qmgr_seq_release(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_read_dmem(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind allocsize(2) }

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
!9 = !{i64 3952205}
!10 = !{i64 2151491658}
!11 = !{i64 2151492880}
!12 = !{i64 3951787}
!13 = !{i8 0, i8 2}
