; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/auxg94.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/auxg94.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.nvkm_i2c_aux_func = type { i8, ptr, ptr }
%struct.nvkm_i2c_aux = type { ptr, ptr, i32, %struct.mutex, %struct.list_head, %struct.i2c_adapter, i8, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.nvkm_i2c_pad = type { ptr, ptr, i32, i32, %struct.mutex, %struct.list_head }
%struct.nvkm_i2c = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.list_head, %struct.list_head, %struct.nvkm_event }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.g94_i2c_aux = type { %struct.nvkm_i2c_aux, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.119, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.119 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_i2c_func = type { ptr, ptr, i32, ptr, ptr, ptr }

@.str = private unnamed_addr constant [27 x i8] c"%s: aux %04x: %d: %08x %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"%s: aux %04x: sink not detected\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"%s: aux %04x: wr %08x\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"%s: aux %04x: timeout %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"%s: aux %04x: %02d %08x %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"%s: aux %04x: rd %08x\0A\00", align 1
@g94_i2c_aux = internal constant %struct.nvkm_i2c_aux_func { i8 0, ptr @g94_i2c_aux_xfer, ptr null }, align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"%s: aux %04x: begin idle timeout %08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"%s: aux %04x: magic wait %08x\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @g94_i2c_aux_xfer(ptr nocapture noundef readonly %0, i1 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5) #0 {
  %7 = alloca [4 x i32], align 4
  %8 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nvkm_i2c, ptr %11, i32 0, i32 1, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.g94_i2c_aux, ptr %0, i32 0, i32 1
  %15 = load i32, ptr %14, align 8
  %16 = mul i32 %15, 80
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %7, i8 0, i32 16, i1 false)
  %17 = getelementptr inbounds %struct.nvkm_i2c, ptr %11, i32 0, i32 1, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = icmp ugt i32 %18, 4
  br i1 %19, label %20, label %34

20:                                               ; preds = %6
  %21 = getelementptr inbounds %struct.nvkm_device, ptr %13, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.nvkm_i2c, ptr %11, i32 0, i32 1, i32 4
  %24 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %0, i32 0, i32 2
  %25 = load i32, ptr %24, align 8
  %26 = zext i8 %2 to i32
  %27 = load i8, ptr %5, align 1
  %28 = zext i8 %27 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %22, ptr noundef nonnull @.str, ptr noundef %23, i32 noundef %25, i32 noundef %26, i32 noundef %3, i32 noundef %28) #7
  %29 = load ptr, ptr %8, align 4
  %30 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.nvkm_i2c, ptr %31, i32 0, i32 1, i32 1
  %33 = load ptr, ptr %32, align 4
  br label %34

34:                                               ; preds = %20, %6
  %35 = phi ptr [ %33, %20 ], [ %13, %6 ]
  %36 = getelementptr inbounds %struct.nvkm_device, ptr %35, i32 0, i32 11
  br label %37

37:                                               ; preds = %62, %34
  %38 = phi i32 [ 1000, %34 ], [ %63, %62 ]
  %39 = load ptr, ptr %36, align 4
  %40 = load i32, ptr %14, align 8
  %41 = mul i32 %40, 80
  %42 = add i32 %41, 58596
  %43 = getelementptr i8, ptr %39, i32 %42
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748) #8
  %46 = icmp eq i32 %38, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %37
  %48 = load ptr, ptr %8, align 4
  %49 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %48, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.nvkm_i2c, ptr %50, i32 0, i32 1, i32 5
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %436, label %54

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.nvkm_i2c, ptr %50, i32 0, i32 1, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.nvkm_device, ptr %56, i32 0, i32 2
  %58 = load ptr, ptr %57, align 8
  %59 = getelementptr inbounds %struct.nvkm_i2c, ptr %50, i32 0, i32 1, i32 4
  %60 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %0, i32 0, i32 2
  %61 = load i32, ptr %60, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.6, ptr noundef %59, i32 noundef %61, i32 noundef %44) #7
  br label %436

62:                                               ; preds = %37
  %63 = add nsw i32 %38, -1
  %64 = and i32 %44, 50397184
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %37

66:                                               ; preds = %62
  %67 = load i32, ptr %14, align 8
  %68 = mul i32 %67, 80
  %69 = add i32 %68, 58596
  %70 = load ptr, ptr %36, align 4
  %71 = getelementptr i8, ptr %70, i32 %69
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %73 = and i32 %72, -3145729
  %74 = or i32 %73, 1048576
  %75 = load ptr, ptr %36, align 4
  %76 = getelementptr i8, ptr %75, i32 %69
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %74) #8, !srcloc !11
  br label %77

77:                                               ; preds = %119, %66
  %78 = phi i32 [ 1000, %66 ], [ %120, %119 ]
  %79 = load ptr, ptr %36, align 4
  %80 = load i32, ptr %14, align 8
  %81 = mul i32 %80, 80
  %82 = add i32 %81, 58596
  %83 = getelementptr i8, ptr %79, i32 %82
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %85 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %85(i32 noundef 214748) #8
  %86 = icmp eq i32 %78, 0
  br i1 %86, label %87, label %119

87:                                               ; preds = %77
  %88 = load ptr, ptr %8, align 4
  %89 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %88, i32 0, i32 1
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.nvkm_i2c, ptr %90, i32 0, i32 1, i32 5
  %92 = load i32, ptr %91, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %105, label %94

94:                                               ; preds = %87
  %95 = getelementptr inbounds %struct.nvkm_i2c, ptr %90, i32 0, i32 1, i32 1
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.nvkm_device, ptr %96, i32 0, i32 2
  %98 = load ptr, ptr %97, align 8
  %99 = getelementptr inbounds %struct.nvkm_i2c, ptr %90, i32 0, i32 1, i32 4
  %100 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %0, i32 0, i32 2
  %101 = load i32, ptr %100, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %98, ptr noundef nonnull @.str.7, ptr noundef %99, i32 noundef %101, i32 noundef %84) #7
  %102 = load ptr, ptr %8, align 4
  %103 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %102, i32 0, i32 1
  %104 = load ptr, ptr %103, align 4
  br label %105

105:                                              ; preds = %94, %87
  %106 = phi ptr [ %104, %94 ], [ %90, %87 ]
  %107 = getelementptr inbounds %struct.nvkm_i2c, ptr %106, i32 0, i32 1, i32 1
  %108 = load ptr, ptr %107, align 4
  %109 = load i32, ptr %14, align 8
  %110 = mul i32 %109, 80
  %111 = add i32 %110, 58596
  %112 = getelementptr inbounds %struct.nvkm_device, ptr %108, i32 0, i32 11
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr i8, ptr %113, i32 %111
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %114) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %116 = and i32 %115, -3211265
  %117 = load ptr, ptr %112, align 4
  %118 = getelementptr i8, ptr %117, i32 %111
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 %116) #8, !srcloc !11
  br label %436

119:                                              ; preds = %77
  %120 = add nsw i32 %78, -1
  %121 = and i32 %84, 50331648
  %122 = icmp eq i32 %121, 16777216
  br i1 %122, label %123, label %77

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.nvkm_device, ptr %13, i32 0, i32 11
  %125 = load ptr, ptr %124, align 4
  %126 = add i32 %16, 58600
  %127 = getelementptr i8, ptr %125, i32 %126
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %127) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %129 = and i32 %128, 268435456
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %146

131:                                              ; preds = %123
  %132 = load ptr, ptr %8, align 4
  %133 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %132, i32 0, i32 1
  %134 = load ptr, ptr %133, align 4
  %135 = getelementptr inbounds %struct.nvkm_i2c, ptr %134, i32 0, i32 1, i32 5
  %136 = load i32, ptr %135, align 4
  %137 = icmp ugt i32 %136, 4
  br i1 %137, label %138, label %436

138:                                              ; preds = %131
  %139 = getelementptr inbounds %struct.nvkm_i2c, ptr %134, i32 0, i32 1, i32 1
  %140 = load ptr, ptr %139, align 4
  %141 = getelementptr inbounds %struct.nvkm_device, ptr %140, i32 0, i32 2
  %142 = load ptr, ptr %141, align 8
  %143 = getelementptr inbounds %struct.nvkm_i2c, ptr %134, i32 0, i32 1, i32 4
  %144 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %0, i32 0, i32 2
  %145 = load i32, ptr %144, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %142, ptr noundef nonnull @.str.1, ptr noundef %143, i32 noundef %145) #7
  br label %436

146:                                              ; preds = %123
  %147 = load ptr, ptr %11, align 4
  %148 = getelementptr inbounds %struct.nvkm_i2c_func, ptr %147, i32 0, i32 5
  %149 = load ptr, ptr %148, align 4
  %150 = icmp eq ptr %149, null
  br i1 %150, label %153, label %151

151:                                              ; preds = %146
  %152 = load i32, ptr %14, align 8
  tail call void %149(ptr noundef %11, i32 noundef %152, i1 noundef zeroext false) #8
  br label %153

153:                                              ; preds = %151, %146
  %154 = zext i8 %2 to i32
  %155 = and i32 %154, 1
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %251

157:                                              ; preds = %153
  %158 = load i8, ptr %5, align 1
  %159 = zext i8 %158 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %7, ptr align 1 %4, i32 %159, i1 false)
  %160 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %0, i32 0, i32 2
  %161 = add i32 %16, 58560
  %162 = load ptr, ptr %8, align 4
  %163 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %162, i32 0, i32 1
  %164 = load ptr, ptr %163, align 4
  %165 = getelementptr inbounds %struct.nvkm_i2c, ptr %164, i32 0, i32 1, i32 5
  %166 = load i32, ptr %165, align 4
  %167 = icmp ugt i32 %166, 4
  br i1 %167, label %170, label %168

168:                                              ; preds = %157
  %169 = load i32, ptr %7, align 4
  br label %178

170:                                              ; preds = %157
  %171 = getelementptr inbounds %struct.nvkm_i2c, ptr %164, i32 0, i32 1, i32 1
  %172 = load ptr, ptr %171, align 4
  %173 = getelementptr inbounds %struct.nvkm_device, ptr %172, i32 0, i32 2
  %174 = load ptr, ptr %173, align 8
  %175 = getelementptr inbounds %struct.nvkm_i2c, ptr %164, i32 0, i32 1, i32 4
  %176 = load i32, ptr %160, align 8
  %177 = load i32, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %174, ptr noundef nonnull @.str.2, ptr noundef %175, i32 noundef %176, i32 noundef %177) #7
  br label %178

178:                                              ; preds = %170, %168
  %179 = phi i32 [ %169, %168 ], [ %177, %170 ]
  %180 = load ptr, ptr %124, align 4
  %181 = getelementptr i8, ptr %180, i32 %161
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %181, i32 %179) #8, !srcloc !11
  %182 = load ptr, ptr %8, align 4
  %183 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %182, i32 0, i32 1
  %184 = load ptr, ptr %183, align 4
  %185 = getelementptr inbounds %struct.nvkm_i2c, ptr %184, i32 0, i32 1, i32 5
  %186 = load i32, ptr %185, align 4
  %187 = icmp ugt i32 %186, 4
  br i1 %187, label %191, label %188

188:                                              ; preds = %178
  %189 = getelementptr inbounds i8, ptr %7, i32 4
  %190 = load i32, ptr %189, align 4
  br label %200

191:                                              ; preds = %178
  %192 = getelementptr inbounds %struct.nvkm_i2c, ptr %184, i32 0, i32 1, i32 1
  %193 = load ptr, ptr %192, align 4
  %194 = getelementptr inbounds %struct.nvkm_device, ptr %193, i32 0, i32 2
  %195 = load ptr, ptr %194, align 8
  %196 = getelementptr inbounds %struct.nvkm_i2c, ptr %184, i32 0, i32 1, i32 4
  %197 = load i32, ptr %160, align 8
  %198 = getelementptr inbounds i8, ptr %7, i32 4
  %199 = load i32, ptr %198, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %195, ptr noundef nonnull @.str.2, ptr noundef %196, i32 noundef %197, i32 noundef %199) #7
  br label %200

200:                                              ; preds = %191, %188
  %201 = phi i32 [ %190, %188 ], [ %199, %191 ]
  %202 = load ptr, ptr %124, align 4
  %203 = add i32 %16, 58564
  %204 = getelementptr i8, ptr %202, i32 %203
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %204, i32 %201) #8, !srcloc !11
  %205 = load ptr, ptr %8, align 4
  %206 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %205, i32 0, i32 1
  %207 = load ptr, ptr %206, align 4
  %208 = getelementptr inbounds %struct.nvkm_i2c, ptr %207, i32 0, i32 1, i32 5
  %209 = load i32, ptr %208, align 4
  %210 = icmp ugt i32 %209, 4
  br i1 %210, label %214, label %211

211:                                              ; preds = %200
  %212 = getelementptr inbounds i8, ptr %7, i32 8
  %213 = load i32, ptr %212, align 4
  br label %223

214:                                              ; preds = %200
  %215 = getelementptr inbounds %struct.nvkm_i2c, ptr %207, i32 0, i32 1, i32 1
  %216 = load ptr, ptr %215, align 4
  %217 = getelementptr inbounds %struct.nvkm_device, ptr %216, i32 0, i32 2
  %218 = load ptr, ptr %217, align 8
  %219 = getelementptr inbounds %struct.nvkm_i2c, ptr %207, i32 0, i32 1, i32 4
  %220 = load i32, ptr %160, align 8
  %221 = getelementptr inbounds i8, ptr %7, i32 8
  %222 = load i32, ptr %221, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %218, ptr noundef nonnull @.str.2, ptr noundef %219, i32 noundef %220, i32 noundef %222) #7
  br label %223

223:                                              ; preds = %214, %211
  %224 = phi i32 [ %213, %211 ], [ %222, %214 ]
  %225 = load ptr, ptr %124, align 4
  %226 = add i32 %16, 58568
  %227 = getelementptr i8, ptr %225, i32 %226
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %227, i32 %224) #8, !srcloc !11
  %228 = load ptr, ptr %8, align 4
  %229 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %228, i32 0, i32 1
  %230 = load ptr, ptr %229, align 4
  %231 = getelementptr inbounds %struct.nvkm_i2c, ptr %230, i32 0, i32 1, i32 5
  %232 = load i32, ptr %231, align 4
  %233 = icmp ugt i32 %232, 4
  br i1 %233, label %237, label %234

234:                                              ; preds = %223
  %235 = getelementptr inbounds i8, ptr %7, i32 12
  %236 = load i32, ptr %235, align 4
  br label %246

237:                                              ; preds = %223
  %238 = getelementptr inbounds %struct.nvkm_i2c, ptr %230, i32 0, i32 1, i32 1
  %239 = load ptr, ptr %238, align 4
  %240 = getelementptr inbounds %struct.nvkm_device, ptr %239, i32 0, i32 2
  %241 = load ptr, ptr %240, align 8
  %242 = getelementptr inbounds %struct.nvkm_i2c, ptr %230, i32 0, i32 1, i32 4
  %243 = load i32, ptr %160, align 8
  %244 = getelementptr inbounds i8, ptr %7, i32 12
  %245 = load i32, ptr %244, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %241, ptr noundef nonnull @.str.2, ptr noundef %242, i32 noundef %243, i32 noundef %245) #7
  br label %246

246:                                              ; preds = %237, %234
  %247 = phi i32 [ %236, %234 ], [ %245, %237 ]
  %248 = load ptr, ptr %124, align 4
  %249 = add i32 %16, 58572
  %250 = getelementptr i8, ptr %248, i32 %249
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %250, i32 %247) #8, !srcloc !11
  br label %251

251:                                              ; preds = %246, %153
  %252 = load ptr, ptr %124, align 4
  %253 = add i32 %16, 58596
  %254 = getelementptr i8, ptr %252, i32 %253
  %255 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %254) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %256 = and i32 %255, -127488
  %257 = shl nuw nsw i32 %154, 12
  %258 = or i32 %256, %257
  %259 = load i8, ptr %5, align 1
  %260 = icmp eq i8 %259, 0
  %261 = zext i8 %259 to i32
  %262 = add nsw i32 %261, -1
  %263 = select i1 %260, i32 256, i32 %262
  %264 = or i32 %258, %263
  %265 = load ptr, ptr %124, align 4
  %266 = add i32 %16, 58592
  %267 = getelementptr i8, ptr %265, i32 %266
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %267, i32 %3) #8, !srcloc !11
  %268 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %0, i32 0, i32 2
  br label %269

269:                                              ; preds = %340, %251
  %270 = phi i32 [ %264, %251 ], [ %289, %340 ]
  %271 = phi i32 [ %128, %251 ], [ %313, %340 ]
  %272 = phi i32 [ 0, %251 ], [ %343, %340 ]
  %273 = or i32 %270, -2147483648
  %274 = load ptr, ptr %124, align 4
  %275 = getelementptr i8, ptr %274, i32 %253
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %275, i32 %273) #8, !srcloc !11
  %276 = load ptr, ptr %124, align 4
  %277 = getelementptr i8, ptr %276, i32 %253
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %277, i32 %270) #8, !srcloc !11
  %278 = icmp eq i32 %272, 0
  br i1 %278, label %281, label %279

279:                                              ; preds = %269
  %280 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %280(i32 noundef 85899200) #8
  br label %281

281:                                              ; preds = %279, %269
  %282 = or i32 %270, 65536
  %283 = load ptr, ptr %124, align 4
  %284 = getelementptr i8, ptr %283, i32 %253
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %284, i32 %282) #8, !srcloc !11
  br label %285

285:                                              ; preds = %306, %281
  %286 = phi i32 [ 2000, %281 ], [ %307, %306 ]
  %287 = load ptr, ptr %124, align 4
  %288 = getelementptr i8, ptr %287, i32 %253
  %289 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %288) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %290 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %290(i32 noundef 214748) #8
  %291 = icmp eq i32 %286, 0
  br i1 %291, label %292, label %306

292:                                              ; preds = %285
  %293 = load ptr, ptr %8, align 4
  %294 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %293, i32 0, i32 1
  %295 = load ptr, ptr %294, align 4
  %296 = getelementptr inbounds %struct.nvkm_i2c, ptr %295, i32 0, i32 1, i32 5
  %297 = load i32, ptr %296, align 4
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %427, label %299

299:                                              ; preds = %292
  %300 = getelementptr inbounds %struct.nvkm_i2c, ptr %295, i32 0, i32 1, i32 1
  %301 = load ptr, ptr %300, align 4
  %302 = getelementptr inbounds %struct.nvkm_device, ptr %301, i32 0, i32 2
  %303 = load ptr, ptr %302, align 8
  %304 = getelementptr inbounds %struct.nvkm_i2c, ptr %295, i32 0, i32 1, i32 4
  %305 = load i32, ptr %268, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %303, ptr noundef nonnull @.str.3, ptr noundef %304, i32 noundef %305, i32 noundef %289) #7
  br label %427

306:                                              ; preds = %285
  %307 = add nsw i32 %286, -1
  %308 = and i32 %289, 65536
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %310, label %285

310:                                              ; preds = %306
  %311 = load ptr, ptr %124, align 4
  %312 = getelementptr i8, ptr %311, i32 %126
  %313 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %312) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %314 = load ptr, ptr %124, align 4
  %315 = getelementptr i8, ptr %314, i32 %126
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %315, i32 %313) #8, !srcloc !11
  %316 = and i32 %313, 983040
  %317 = icmp eq i32 %316, 524288
  %318 = icmp eq i32 %316, 131072
  %319 = or i1 %317, %318
  %320 = zext i1 %319 to i32
  %321 = and i32 %313, 256
  %322 = icmp eq i32 %321, 0
  %323 = select i1 %322, i32 %320, i32 -110
  %324 = and i32 %313, 3584
  %325 = icmp eq i32 %324, 0
  %326 = select i1 %325, i32 %323, i32 -5
  %327 = load ptr, ptr %8, align 4
  %328 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %327, i32 0, i32 1
  %329 = load ptr, ptr %328, align 4
  %330 = getelementptr inbounds %struct.nvkm_i2c, ptr %329, i32 0, i32 1, i32 5
  %331 = load i32, ptr %330, align 4
  %332 = icmp ugt i32 %331, 4
  br i1 %332, label %333, label %340

333:                                              ; preds = %310
  %334 = getelementptr inbounds %struct.nvkm_i2c, ptr %329, i32 0, i32 1, i32 1
  %335 = load ptr, ptr %334, align 4
  %336 = getelementptr inbounds %struct.nvkm_device, ptr %335, i32 0, i32 2
  %337 = load ptr, ptr %336, align 8
  %338 = getelementptr inbounds %struct.nvkm_i2c, ptr %329, i32 0, i32 1, i32 4
  %339 = load i32, ptr %268, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %337, ptr noundef nonnull @.str.4, ptr noundef %338, i32 noundef %339, i32 noundef %272, i32 noundef %289, i32 noundef %313) #7
  br label %340

340:                                              ; preds = %333, %310
  %341 = icmp ne i32 %326, 0
  %342 = and i1 %341, %1
  %343 = add nuw nsw i32 %272, 1
  %344 = icmp ult i32 %272, 32
  %345 = select i1 %342, i1 %344, i1 false
  br i1 %345, label %269, label %346

346:                                              ; preds = %340
  br i1 %156, label %427, label %347

347:                                              ; preds = %346
  %348 = add i32 %16, 58576
  %349 = load ptr, ptr %124, align 4
  %350 = getelementptr i8, ptr %349, i32 %348
  %351 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %350) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  store i32 %351, ptr %7, align 4
  %352 = load ptr, ptr %8, align 4
  %353 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %352, i32 0, i32 1
  %354 = load ptr, ptr %353, align 4
  %355 = getelementptr inbounds %struct.nvkm_i2c, ptr %354, i32 0, i32 1, i32 5
  %356 = load i32, ptr %355, align 4
  %357 = icmp ugt i32 %356, 4
  br i1 %357, label %358, label %365

358:                                              ; preds = %347
  %359 = getelementptr inbounds %struct.nvkm_i2c, ptr %354, i32 0, i32 1, i32 1
  %360 = load ptr, ptr %359, align 4
  %361 = getelementptr inbounds %struct.nvkm_device, ptr %360, i32 0, i32 2
  %362 = load ptr, ptr %361, align 8
  %363 = getelementptr inbounds %struct.nvkm_i2c, ptr %354, i32 0, i32 1, i32 4
  %364 = load i32, ptr %268, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %362, ptr noundef nonnull @.str.5, ptr noundef %363, i32 noundef %364, i32 noundef %351) #7
  br label %365

365:                                              ; preds = %358, %347
  %366 = load ptr, ptr %124, align 4
  %367 = add i32 %16, 58580
  %368 = getelementptr i8, ptr %366, i32 %367
  %369 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %368) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %370 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 %369, ptr %370, align 4
  %371 = load ptr, ptr %8, align 4
  %372 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %371, i32 0, i32 1
  %373 = load ptr, ptr %372, align 4
  %374 = getelementptr inbounds %struct.nvkm_i2c, ptr %373, i32 0, i32 1, i32 5
  %375 = load i32, ptr %374, align 4
  %376 = icmp ugt i32 %375, 4
  br i1 %376, label %377, label %384

377:                                              ; preds = %365
  %378 = getelementptr inbounds %struct.nvkm_i2c, ptr %373, i32 0, i32 1, i32 1
  %379 = load ptr, ptr %378, align 4
  %380 = getelementptr inbounds %struct.nvkm_device, ptr %379, i32 0, i32 2
  %381 = load ptr, ptr %380, align 8
  %382 = getelementptr inbounds %struct.nvkm_i2c, ptr %373, i32 0, i32 1, i32 4
  %383 = load i32, ptr %268, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %381, ptr noundef nonnull @.str.5, ptr noundef %382, i32 noundef %383, i32 noundef %369) #7
  br label %384

384:                                              ; preds = %377, %365
  %385 = load ptr, ptr %124, align 4
  %386 = add i32 %16, 58584
  %387 = getelementptr i8, ptr %385, i32 %386
  %388 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %387) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %389 = getelementptr inbounds i8, ptr %7, i32 8
  store i32 %388, ptr %389, align 4
  %390 = load ptr, ptr %8, align 4
  %391 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %390, i32 0, i32 1
  %392 = load ptr, ptr %391, align 4
  %393 = getelementptr inbounds %struct.nvkm_i2c, ptr %392, i32 0, i32 1, i32 5
  %394 = load i32, ptr %393, align 4
  %395 = icmp ugt i32 %394, 4
  br i1 %395, label %396, label %403

396:                                              ; preds = %384
  %397 = getelementptr inbounds %struct.nvkm_i2c, ptr %392, i32 0, i32 1, i32 1
  %398 = load ptr, ptr %397, align 4
  %399 = getelementptr inbounds %struct.nvkm_device, ptr %398, i32 0, i32 2
  %400 = load ptr, ptr %399, align 8
  %401 = getelementptr inbounds %struct.nvkm_i2c, ptr %392, i32 0, i32 1, i32 4
  %402 = load i32, ptr %268, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %400, ptr noundef nonnull @.str.5, ptr noundef %401, i32 noundef %402, i32 noundef %388) #7
  br label %403

403:                                              ; preds = %396, %384
  %404 = load ptr, ptr %124, align 4
  %405 = add i32 %16, 58588
  %406 = getelementptr i8, ptr %404, i32 %405
  %407 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %406) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %408 = getelementptr inbounds i8, ptr %7, i32 12
  store i32 %407, ptr %408, align 4
  %409 = load ptr, ptr %8, align 4
  %410 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %409, i32 0, i32 1
  %411 = load ptr, ptr %410, align 4
  %412 = getelementptr inbounds %struct.nvkm_i2c, ptr %411, i32 0, i32 1, i32 5
  %413 = load i32, ptr %412, align 4
  %414 = icmp ugt i32 %413, 4
  br i1 %414, label %415, label %422

415:                                              ; preds = %403
  %416 = getelementptr inbounds %struct.nvkm_i2c, ptr %411, i32 0, i32 1, i32 1
  %417 = load ptr, ptr %416, align 4
  %418 = getelementptr inbounds %struct.nvkm_device, ptr %417, i32 0, i32 2
  %419 = load ptr, ptr %418, align 8
  %420 = getelementptr inbounds %struct.nvkm_i2c, ptr %411, i32 0, i32 1, i32 4
  %421 = load i32, ptr %268, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %419, ptr noundef nonnull @.str.5, ptr noundef %420, i32 noundef %421, i32 noundef %407) #7
  br label %422

422:                                              ; preds = %415, %403
  %423 = load i8, ptr %5, align 1
  %424 = zext i8 %423 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %4, ptr nonnull align 4 %7, i32 %424, i1 false)
  %425 = trunc i32 %313 to i8
  %426 = and i8 %425, 31
  store i8 %426, ptr %5, align 1
  br label %427

427:                                              ; preds = %422, %346, %299, %292
  %428 = phi i32 [ %313, %422 ], [ %313, %346 ], [ %271, %299 ], [ %271, %292 ]
  %429 = phi i32 [ %326, %422 ], [ %326, %346 ], [ -5, %299 ], [ -5, %292 ]
  %430 = load ptr, ptr %11, align 4
  %431 = getelementptr inbounds %struct.nvkm_i2c_func, ptr %430, i32 0, i32 5
  %432 = load ptr, ptr %431, align 4
  %433 = icmp eq ptr %432, null
  br i1 %433, label %436, label %434

434:                                              ; preds = %427
  %435 = load i32, ptr %14, align 8
  tail call void %432(ptr noundef %11, i32 noundef %435, i1 noundef zeroext false) #8
  br label %436

436:                                              ; preds = %434, %427, %138, %131, %105, %54, %47
  %437 = phi i32 [ %128, %138 ], [ %128, %131 ], [ %428, %427 ], [ %428, %434 ], [ 0, %105 ], [ 0, %54 ], [ 0, %47 ]
  %438 = phi i32 [ -6, %138 ], [ -6, %131 ], [ %429, %427 ], [ %429, %434 ], [ -16, %105 ], [ -16, %54 ], [ -16, %47 ]
  %439 = load ptr, ptr %8, align 4
  %440 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %439, i32 0, i32 1
  %441 = load ptr, ptr %440, align 4
  %442 = getelementptr inbounds %struct.nvkm_i2c, ptr %441, i32 0, i32 1, i32 1
  %443 = load ptr, ptr %442, align 4
  %444 = load i32, ptr %14, align 8
  %445 = mul i32 %444, 80
  %446 = add i32 %445, 58596
  %447 = getelementptr inbounds %struct.nvkm_device, ptr %443, i32 0, i32 11
  %448 = load ptr, ptr %447, align 4
  %449 = getelementptr i8, ptr %448, i32 %446
  %450 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %449) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %451 = and i32 %450, -3211265
  %452 = load ptr, ptr %447, align 4
  %453 = getelementptr i8, ptr %452, i32 %446
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %453, i32 %451) #8, !srcloc !11
  %454 = icmp slt i32 %438, 0
  %455 = lshr i32 %437, 16
  %456 = and i32 %455, 15
  %457 = select i1 %454, i32 %438, i32 %456
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7)
  ret i32 %457
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @g94_i2c_aux_new_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 712) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  store ptr %7, ptr %4, align 4
  %10 = tail call i32 @nvkm_i2c_aux_ctor(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %7) #8
  %11 = zext i8 %3 to i32
  %12 = getelementptr inbounds %struct.g94_i2c_aux, ptr %7, i32 0, i32 1
  store i32 %11, ptr %12, align 8
  %13 = shl nuw i32 1, %11
  %14 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %7, i32 0, i32 7
  store i32 %13, ptr %14, align 4
  br label %15

15:                                               ; preds = %9, %5
  %16 = phi i32 [ 0, %9 ], [ -12, %5 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_i2c_aux_ctor(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @g94_i2c_aux_new(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 712) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  store ptr %6, ptr %3, align 4
  %9 = tail call i32 @nvkm_i2c_aux_ctor(ptr noundef nonnull @g94_i2c_aux, ptr noundef %0, i32 noundef %1, ptr noundef nonnull %6) #8
  %10 = zext i8 %2 to i32
  %11 = getelementptr inbounds %struct.g94_i2c_aux, ptr %6, i32 0, i32 1
  store i32 %10, ptr %11, align 8
  %12 = shl nuw i32 1, %10
  %13 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %6, i32 0, i32 7
  store i32 %12, ptr %13, align 4
  br label %14

14:                                               ; preds = %8, %4
  %15 = phi i32 [ 0, %8 ], [ -12, %4 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind }
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
!8 = !{i64 3952603}
!9 = !{i64 2151492056}
!10 = !{i64 2151493278}
!11 = !{i64 3952185}
