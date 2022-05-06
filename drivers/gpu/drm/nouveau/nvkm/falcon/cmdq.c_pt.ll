; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/falcon/cmdq.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/falcon/cmdq.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.nvfw_falcon_msg = type { i8, i8, i8, i8 }
%struct.nvkm_falcon_cmdq = type { ptr, ptr, %struct.mutex, %struct.completion, i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
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
%struct.nvkm_falcon_qmgr_seq = type { i16, i32, i8, ptr, ptr, %struct.completion, i32 }
%struct.nvkm_falcon_func = type { %struct.anon, %struct.anon.0, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.1, %struct.anon.1, [0 x %struct.nvkm_sclass] }
%struct.anon = type { ptr, i32 }
%struct.anon.0 = type { ptr, i32 }
%struct.anon.1 = type { i32, i32, i32 }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [45 x i8] c"%s: %s: %s: timeout waiting for queue ready\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"%s: %s: timeout waiting for queue ready\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"%s: %s: %s: timeout waiting for reply\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"%s: %s: timeout waiting for reply\0A\00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"%s: %s: %s: initialised @ index %d offset 0x%08x size 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"%s: %s: initialised @ index %d offset 0x%08x size 0x%08x\0A\00", align 1
@nvkm_falcon_cmdq_new.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"&cmdq->mutex\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.7 = private unnamed_addr constant [45 x i8] c"%s: %s: %s: timeout waiting for queue space\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"%s: %s: timeout waiting for queue space\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"%s: %s: %s: queue full\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"%s: %s: queue full\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_falcon_cmdq_send(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.nvfw_falcon_msg, align 4
  %7 = getelementptr inbounds %struct.nvkm_falcon_cmdq, ptr %0, i32 0, i32 3
  %8 = tail call i32 @wait_for_completion_timeout(ptr noundef %7, i32 noundef 100) #6
  %9 = icmp eq i32 %8, 0
  %10 = load ptr, ptr %0, align 4
  br i1 %9, label %11, label %38

11:                                               ; preds = %5
  %12 = load ptr, ptr %10, align 4
  %13 = getelementptr inbounds %struct.nvkm_falcon, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nvkm_subdev, ptr %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.nvkm_falcon, ptr %12, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %15, %17
  %19 = getelementptr inbounds %struct.nvkm_subdev, ptr %14, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %18, label %30, label %22

22:                                               ; preds = %11
  br i1 %21, label %258, label %23

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.nvkm_subdev, ptr %14, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.nvkm_device, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.nvkm_falcon_cmdq, ptr %0, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str, ptr noundef %15, ptr noundef %17, ptr noundef %29) #7
  br label %258

30:                                               ; preds = %11
  br i1 %21, label %258, label %31

31:                                               ; preds = %30
  %32 = getelementptr inbounds %struct.nvkm_subdev, ptr %14, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.nvkm_device, ptr %33, i32 0, i32 2
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.nvkm_falcon_cmdq, ptr %0, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.1, ptr noundef %15, ptr noundef %37) #7
  br label %258

38:                                               ; preds = %5
  %39 = tail call ptr @nvkm_falcon_qmgr_seq_acquire(ptr noundef %10) #6
  %40 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = ptrtoint ptr %39 to i32
  br label %258

43:                                               ; preds = %38
  %44 = load i16, ptr %39, align 4
  %45 = trunc i16 %44 to i8
  %46 = getelementptr inbounds %struct.nvfw_falcon_msg, ptr %1, i32 0, i32 3
  store i8 %45, ptr %46, align 1
  %47 = getelementptr inbounds %struct.nvfw_falcon_msg, ptr %1, i32 0, i32 2
  store i8 3, ptr %47, align 1
  %48 = getelementptr inbounds %struct.nvkm_falcon_qmgr_seq, ptr %39, i32 0, i32 1
  store i32 2, ptr %48, align 4
  %49 = icmp eq i32 %4, 0
  %50 = getelementptr inbounds %struct.nvkm_falcon_qmgr_seq, ptr %39, i32 0, i32 2
  %51 = zext i1 %49 to i8
  store i8 %51, ptr %50, align 4
  %52 = getelementptr inbounds %struct.nvkm_falcon_qmgr_seq, ptr %39, i32 0, i32 3
  store ptr %2, ptr %52, align 4
  %53 = getelementptr inbounds %struct.nvkm_falcon_qmgr_seq, ptr %39, i32 0, i32 4
  store ptr %3, ptr %53, align 4
  %54 = load volatile i32, ptr @jiffies, align 64
  %55 = sub i32 -200, %54
  %56 = getelementptr inbounds %struct.nvfw_falcon_msg, ptr %1, i32 0, i32 1
  %57 = getelementptr inbounds %struct.nvkm_falcon_cmdq, ptr %0, i32 0, i32 2
  %58 = getelementptr inbounds %struct.nvkm_falcon_cmdq, ptr %0, i32 0, i32 4
  %59 = getelementptr inbounds %struct.nvkm_falcon_cmdq, ptr %0, i32 0, i32 5
  %60 = getelementptr inbounds %struct.nvkm_falcon_cmdq, ptr %0, i32 0, i32 6
  %61 = getelementptr inbounds %struct.nvkm_falcon_cmdq, ptr %0, i32 0, i32 7
  %62 = getelementptr inbounds %struct.nvkm_falcon_cmdq, ptr %0, i32 0, i32 8
  %63 = getelementptr inbounds %struct.nvkm_falcon_cmdq, ptr %0, i32 0, i32 1
  br label %64

64:                                               ; preds = %169, %43
  %65 = phi i32 [ -11, %43 ], [ %170, %169 ]
  switch i32 %65, label %171 [
    i32 -11, label %66
    i32 0, label %199
  ]

66:                                               ; preds = %64
  %67 = load volatile i32, ptr @jiffies, align 64
  %68 = add i32 %55, %67
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %171

70:                                               ; preds = %66
  %71 = load i8, ptr %56, align 1
  %72 = zext i8 %71 to i32
  %73 = load ptr, ptr %0, align 4
  %74 = load ptr, ptr %73, align 4
  call void @mutex_lock(ptr noundef %57) #6
  %75 = load ptr, ptr %0, align 4
  %76 = load ptr, ptr %75, align 4
  %77 = load i32, ptr %58, align 4
  %78 = getelementptr inbounds %struct.nvkm_falcon, ptr %76, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.nvkm_subdev, ptr %79, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.nvkm_device, ptr %81, i32 0, i32 11
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.nvkm_falcon, ptr %76, i32 0, i32 3
  %85 = load i32, ptr %84, align 4
  %86 = add i32 %85, %77
  %87 = getelementptr i8, ptr %83, i32 %86
  %88 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %89 = load ptr, ptr %0, align 4
  %90 = load ptr, ptr %89, align 4
  %91 = load i32, ptr %59, align 4
  %92 = getelementptr inbounds %struct.nvkm_falcon, ptr %90, i32 0, i32 1
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.nvkm_subdev, ptr %93, i32 0, i32 1
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.nvkm_device, ptr %95, i32 0, i32 11
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.nvkm_falcon, ptr %90, i32 0, i32 3
  %99 = load i32, ptr %98, align 4
  %100 = add i32 %99, %91
  %101 = getelementptr i8, ptr %97, i32 %100
  %102 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %103 = add nuw nsw i32 %72, 3
  %104 = and i32 %103, 508
  %105 = icmp ult i32 %88, %102
  br i1 %105, label %115, label %106

106:                                              ; preds = %70
  %107 = load i32, ptr %60, align 4
  %108 = load i32, ptr %61, align 4
  %109 = sub i32 -4, %88
  %110 = add i32 %109, %107
  %111 = add i32 %110, %108
  %112 = icmp ugt i32 %104, %111
  %113 = zext i1 %112 to i8
  %114 = select i1 %112, i32 %107, i32 %88
  br label %115

115:                                              ; preds = %106, %70
  %116 = phi i8 [ 0, %70 ], [ %113, %106 ]
  %117 = phi i32 [ %88, %70 ], [ %114, %106 ]
  %118 = phi i32 [ 0, %70 ], [ %111, %106 ]
  %119 = icmp ugt i32 %102, %117
  %120 = xor i32 %117, -1
  %121 = add i32 %102, %120
  %122 = select i1 %119, i32 %121, i32 %118
  %123 = icmp ugt i32 %104, %122
  br i1 %123, label %124, label %151

124:                                              ; preds = %115
  %125 = load ptr, ptr %0, align 4
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr inbounds %struct.nvkm_falcon, ptr %126, i32 0, i32 1
  %128 = load ptr, ptr %127, align 4
  %129 = getelementptr inbounds %struct.nvkm_subdev, ptr %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.nvkm_falcon, ptr %126, i32 0, i32 2
  %131 = load ptr, ptr %130, align 4
  %132 = icmp eq ptr %129, %131
  %133 = getelementptr inbounds %struct.nvkm_subdev, ptr %128, i32 0, i32 5
  %134 = load i32, ptr %133, align 4
  %135 = icmp ugt i32 %134, 3
  br i1 %132, label %143, label %136

136:                                              ; preds = %124
  br i1 %135, label %137, label %150

137:                                              ; preds = %136
  %138 = getelementptr inbounds %struct.nvkm_subdev, ptr %128, i32 0, i32 1
  %139 = load ptr, ptr %138, align 4
  %140 = getelementptr inbounds %struct.nvkm_device, ptr %139, i32 0, i32 2
  %141 = load ptr, ptr %140, align 8
  %142 = load ptr, ptr %63, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %141, ptr noundef nonnull @.str.9, ptr noundef %129, ptr noundef %131, ptr noundef %142) #7
  br label %150

143:                                              ; preds = %124
  br i1 %135, label %144, label %150

144:                                              ; preds = %143
  %145 = getelementptr inbounds %struct.nvkm_subdev, ptr %128, i32 0, i32 1
  %146 = load ptr, ptr %145, align 4
  %147 = getelementptr inbounds %struct.nvkm_device, ptr %146, i32 0, i32 2
  %148 = load ptr, ptr %147, align 8
  %149 = load ptr, ptr %63, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %148, ptr noundef nonnull @.str.10, ptr noundef %129, ptr noundef %149) #7
  br label %150

150:                                              ; preds = %144, %143, %137, %136
  call void @mutex_unlock(ptr noundef %57) #6
  br label %169

151:                                              ; preds = %115
  %152 = load i32, ptr %58, align 4
  %153 = getelementptr inbounds %struct.nvkm_falcon, ptr %74, i32 0, i32 1
  %154 = load ptr, ptr %153, align 4
  %155 = getelementptr inbounds %struct.nvkm_subdev, ptr %154, i32 0, i32 1
  %156 = load ptr, ptr %155, align 4
  %157 = getelementptr inbounds %struct.nvkm_device, ptr %156, i32 0, i32 11
  %158 = load ptr, ptr %157, align 4
  %159 = getelementptr inbounds %struct.nvkm_falcon, ptr %74, i32 0, i32 3
  %160 = load i32, ptr %159, align 4
  %161 = add i32 %160, %152
  %162 = getelementptr i8, ptr %158, i32 %161
  %163 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %162) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  store i32 %163, ptr %62, align 4
  %164 = icmp eq i8 %116, 0
  br i1 %164, label %169, label %165

165:                                              ; preds = %151
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store i32 1024, ptr %6, align 4, !annotation !10
  %166 = load ptr, ptr %0, align 4
  %167 = load ptr, ptr %166, align 4
  call void @nvkm_falcon_load_dmem(ptr noundef %167, ptr noundef nonnull %6, i32 noundef %163, i32 noundef 4, i8 noundef zeroext 0) #6
  %168 = load i32, ptr %60, align 4
  store i32 %168, ptr %62, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  br label %169

169:                                              ; preds = %165, %151, %150
  %170 = phi i32 [ -11, %150 ], [ 0, %165 ], [ 0, %151 ]
  br label %64

171:                                              ; preds = %66, %64
  %172 = load ptr, ptr %0, align 4
  %173 = load ptr, ptr %172, align 4
  %174 = getelementptr inbounds %struct.nvkm_falcon, ptr %173, i32 0, i32 1
  %175 = load ptr, ptr %174, align 4
  %176 = getelementptr inbounds %struct.nvkm_subdev, ptr %175, i32 0, i32 4
  %177 = getelementptr inbounds %struct.nvkm_falcon, ptr %173, i32 0, i32 2
  %178 = load ptr, ptr %177, align 4
  %179 = icmp eq ptr %176, %178
  %180 = getelementptr inbounds %struct.nvkm_subdev, ptr %175, i32 0, i32 5
  %181 = load i32, ptr %180, align 4
  %182 = icmp eq i32 %181, 0
  br i1 %179, label %190, label %183

183:                                              ; preds = %171
  br i1 %182, label %197, label %184

184:                                              ; preds = %183
  %185 = getelementptr inbounds %struct.nvkm_subdev, ptr %175, i32 0, i32 1
  %186 = load ptr, ptr %185, align 4
  %187 = getelementptr inbounds %struct.nvkm_device, ptr %186, i32 0, i32 2
  %188 = load ptr, ptr %187, align 8
  %189 = load ptr, ptr %63, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %188, ptr noundef nonnull @.str.7, ptr noundef %176, ptr noundef %178, ptr noundef %189) #7
  br label %197

190:                                              ; preds = %171
  br i1 %182, label %197, label %191

191:                                              ; preds = %190
  %192 = getelementptr inbounds %struct.nvkm_subdev, ptr %175, i32 0, i32 1
  %193 = load ptr, ptr %192, align 4
  %194 = getelementptr inbounds %struct.nvkm_device, ptr %193, i32 0, i32 2
  %195 = load ptr, ptr %194, align 8
  %196 = load ptr, ptr %63, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %195, ptr noundef nonnull @.str.8, ptr noundef %176, ptr noundef %196) #7
  br label %197

197:                                              ; preds = %191, %190, %184, %183
  store i32 1, ptr %48, align 4
  %198 = load ptr, ptr %0, align 4
  call void @nvkm_falcon_qmgr_seq_release(ptr noundef %198, ptr noundef %39) #6
  br label %258

199:                                              ; preds = %64
  %200 = load i8, ptr %56, align 1
  %201 = zext i8 %200 to i32
  %202 = load ptr, ptr %0, align 4
  %203 = load ptr, ptr %202, align 4
  %204 = load i32, ptr %62, align 4
  call void @nvkm_falcon_load_dmem(ptr noundef %203, ptr noundef %1, i32 noundef %204, i32 noundef %201, i8 noundef zeroext 0) #6
  %205 = add nuw nsw i32 %201, 3
  %206 = and i32 %205, 508
  %207 = load i32, ptr %62, align 4
  %208 = add i32 %207, %206
  store i32 %208, ptr %62, align 4
  %209 = load ptr, ptr %0, align 4
  %210 = load ptr, ptr %209, align 4
  %211 = load i32, ptr %58, align 4
  %212 = getelementptr inbounds %struct.nvkm_falcon, ptr %210, i32 0, i32 1
  %213 = load ptr, ptr %212, align 4
  %214 = getelementptr inbounds %struct.nvkm_subdev, ptr %213, i32 0, i32 1
  %215 = load ptr, ptr %214, align 4
  %216 = getelementptr inbounds %struct.nvkm_device, ptr %215, i32 0, i32 11
  %217 = load ptr, ptr %216, align 4
  %218 = getelementptr inbounds %struct.nvkm_falcon, ptr %210, i32 0, i32 3
  %219 = load i32, ptr %218, align 4
  %220 = add i32 %219, %211
  %221 = getelementptr i8, ptr %217, i32 %220
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %221, i32 %208) #6, !srcloc !12
  call void @mutex_unlock(ptr noundef %57) #6
  %222 = load i8, ptr %50, align 4, !range !13
  %223 = icmp eq i8 %222, 0
  br i1 %223, label %224, label %258

224:                                              ; preds = %199
  %225 = getelementptr inbounds %struct.nvkm_falcon_qmgr_seq, ptr %39, i32 0, i32 5
  %226 = call i32 @wait_for_completion_timeout(ptr noundef %225, i32 noundef %4) #6
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %254

228:                                              ; preds = %224
  %229 = load ptr, ptr %0, align 4
  %230 = load ptr, ptr %229, align 4
  %231 = getelementptr inbounds %struct.nvkm_falcon, ptr %230, i32 0, i32 1
  %232 = load ptr, ptr %231, align 4
  %233 = getelementptr inbounds %struct.nvkm_subdev, ptr %232, i32 0, i32 4
  %234 = getelementptr inbounds %struct.nvkm_falcon, ptr %230, i32 0, i32 2
  %235 = load ptr, ptr %234, align 4
  %236 = icmp eq ptr %233, %235
  %237 = getelementptr inbounds %struct.nvkm_subdev, ptr %232, i32 0, i32 5
  %238 = load i32, ptr %237, align 4
  %239 = icmp eq i32 %238, 0
  br i1 %236, label %247, label %240

240:                                              ; preds = %228
  br i1 %239, label %258, label %241

241:                                              ; preds = %240
  %242 = getelementptr inbounds %struct.nvkm_subdev, ptr %232, i32 0, i32 1
  %243 = load ptr, ptr %242, align 4
  %244 = getelementptr inbounds %struct.nvkm_device, ptr %243, i32 0, i32 2
  %245 = load ptr, ptr %244, align 8
  %246 = load ptr, ptr %63, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %245, ptr noundef nonnull @.str.2, ptr noundef %233, ptr noundef %235, ptr noundef %246) #7
  br label %258

247:                                              ; preds = %228
  br i1 %239, label %258, label %248

248:                                              ; preds = %247
  %249 = getelementptr inbounds %struct.nvkm_subdev, ptr %232, i32 0, i32 1
  %250 = load ptr, ptr %249, align 4
  %251 = getelementptr inbounds %struct.nvkm_device, ptr %250, i32 0, i32 2
  %252 = load ptr, ptr %251, align 8
  %253 = load ptr, ptr %63, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %252, ptr noundef nonnull @.str.3, ptr noundef %233, ptr noundef %253) #7
  br label %258

254:                                              ; preds = %224
  %255 = getelementptr inbounds %struct.nvkm_falcon_qmgr_seq, ptr %39, i32 0, i32 6
  %256 = load i32, ptr %255, align 4
  %257 = load ptr, ptr %0, align 4
  call void @nvkm_falcon_qmgr_seq_release(ptr noundef %257, ptr noundef %39) #6
  br label %258

258:                                              ; preds = %254, %248, %247, %241, %240, %199, %197, %41, %31, %30, %23, %22
  %259 = phi i32 [ %42, %41 ], [ %65, %197 ], [ -110, %30 ], [ -110, %31 ], [ -110, %22 ], [ -110, %23 ], [ -110, %247 ], [ -110, %248 ], [ -110, %240 ], [ -110, %241 ], [ 0, %199 ], [ %256, %254 ]
  ret i32 %259
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_falcon_qmgr_seq_acquire(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_qmgr_seq_release(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @nvkm_falcon_cmdq_fini(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.nvkm_falcon_cmdq, ptr %0, i32 0, i32 3
  store i32 0, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_falcon_cmdq_init(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr %0, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_falcon_func, ptr %7, i32 0, i32 18
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_falcon_func, ptr %7, i32 0, i32 18, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = mul i32 %11, %1
  %13 = add i32 %12, %9
  %14 = getelementptr inbounds %struct.nvkm_falcon_cmdq, ptr %0, i32 0, i32 4
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.nvkm_falcon_func, ptr %7, i32 0, i32 18, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = load i32, ptr %10, align 4
  %18 = mul i32 %17, %1
  %19 = add i32 %18, %16
  %20 = getelementptr inbounds %struct.nvkm_falcon_cmdq, ptr %0, i32 0, i32 5
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.nvkm_falcon_cmdq, ptr %0, i32 0, i32 6
  store i32 %2, ptr %21, align 4
  %22 = getelementptr inbounds %struct.nvkm_falcon_cmdq, ptr %0, i32 0, i32 7
  store i32 %3, ptr %22, align 4
  %23 = getelementptr inbounds %struct.nvkm_falcon_cmdq, ptr %0, i32 0, i32 3
  tail call void @complete_all(ptr noundef %23) #6
  %24 = load ptr, ptr %0, align 4
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.nvkm_falcon, ptr %25, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.nvkm_subdev, ptr %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.nvkm_falcon, ptr %25, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %28, %30
  %32 = getelementptr inbounds %struct.nvkm_subdev, ptr %27, i32 0, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = icmp ugt i32 %33, 3
  br i1 %31, label %45, label %35

35:                                               ; preds = %4
  br i1 %34, label %36, label %55

36:                                               ; preds = %35
  %37 = getelementptr inbounds %struct.nvkm_subdev, ptr %27, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.nvkm_device, ptr %38, i32 0, i32 2
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.nvkm_falcon_cmdq, ptr %0, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = load i32, ptr %21, align 4
  %44 = load i32, ptr %22, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %40, ptr noundef nonnull @.str.4, ptr noundef %28, ptr noundef %30, ptr noundef %42, i32 noundef %1, i32 noundef %43, i32 noundef %44) #7
  br label %55

45:                                               ; preds = %4
  br i1 %34, label %46, label %55

46:                                               ; preds = %45
  %47 = getelementptr inbounds %struct.nvkm_subdev, ptr %27, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.nvkm_device, ptr %48, i32 0, i32 2
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr inbounds %struct.nvkm_falcon_cmdq, ptr %0, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = load i32, ptr %21, align 4
  %54 = load i32, ptr %22, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %50, ptr noundef nonnull @.str.5, ptr noundef %28, ptr noundef %52, i32 noundef %1, i32 noundef %53, i32 noundef %54) #7
  br label %55

55:                                               ; preds = %46, %45, %36, %35
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_falcon_cmdq_del(ptr nocapture noundef %0) local_unnamed_addr #0 {
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
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_falcon_cmdq_new(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 64) #8
  store ptr %5, ptr %2, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  store ptr %0, ptr %5, align 8
  %8 = getelementptr inbounds %struct.nvkm_falcon_cmdq, ptr %5, i32 0, i32 1
  store ptr %1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.nvkm_falcon_cmdq, ptr %5, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %9, ptr noundef nonnull @.str.6, ptr noundef nonnull @nvkm_falcon_cmdq_new.__key) #6
  %10 = getelementptr inbounds %struct.nvkm_falcon_cmdq, ptr %5, i32 0, i32 3
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.nvkm_falcon_cmdq, ptr %5, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %11, ptr noundef nonnull @.str.11, ptr noundef nonnull @init_completion.__key) #6
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi i32 [ 0, %7 ], [ -12, %3 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_load_dmem(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 3952258}
!9 = !{i64 2151491711}
!10 = !{!"auto-init"}
!11 = !{i64 2151492933}
!12 = !{i64 3951840}
!13 = !{i8 0, i8 2}
