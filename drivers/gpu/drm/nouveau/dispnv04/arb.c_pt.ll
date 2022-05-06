; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/dispnv04/arb.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv04/arb.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.68, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.76, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.68 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.76 = type { i32, ptr }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.83, %struct.anon.84, %struct.anon.86, ptr, %struct.anon.87, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.88, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.100 }
%struct.nvif_parent = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.anon.83 = type { ptr, i32, i32, i8 }
%struct.anon.84 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.85] }
%struct.anon.85 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.anon.86 = type { i64, i64 }
%struct.anon.87 = type { i32, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.79 }
%struct.anon.79 = type { ptr, i64 }
%struct.anon.88 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.95, %struct.anon.96, %struct.anon.97, %struct.anon.98 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.89, i8 }
%union.anon.89 = type { %struct.anon.93 }
%struct.anon.93 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.95 = type { i32 }
%struct.anon.96 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.97 = type { i16, i16 }
%struct.anon.98 = type { i16, i16, i16, %struct.anon.99, i16 }
%struct.anon.99 = type { i8, i8, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.100 = type { ptr, %struct.mutex, i8 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nouveau_calc_arb(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 2, i32 3, i32 1, i32 4
  %10 = load i8, ptr %9, align 1
  %11 = icmp ult i8 %10, 3
  br i1 %11, label %12, label %190

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 2, i32 3
  %14 = tail call i32 @nouveau_hw_get_clock(ptr noundef %0, i32 noundef 4) #4
  %15 = tail call i32 @nouveau_hw_get_clock(ptr noundef %0, i32 noundef 1) #4
  %16 = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 2, i32 3, i32 0, i32 6
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19, !prof !8

19:                                               ; preds = %12
  %20 = getelementptr i8, ptr %17, i32 1049092
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  br label %24

22:                                               ; preds = %12
  %23 = tail call i32 @nvif_object_rd(ptr noundef %13, i32 noundef 4, i64 noundef 1049092) #4
  br label %24

24:                                               ; preds = %22, %19
  %25 = phi i32 [ %21, %19 ], [ %23, %22 ]
  %26 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %7, align 4
  %29 = getelementptr i8, ptr %27, i32 -102
  %30 = load i16, ptr %29, align 2
  %31 = and i16 %30, 4080
  %32 = getelementptr inbounds %struct.nouveau_drm, ptr %28, i32 0, i32 2, i32 3, i32 1, i32 4
  %33 = load i8, ptr %32, align 1
  %34 = icmp ult i8 %33, 2
  %35 = icmp eq i16 %31, 256
  %36 = select i1 %34, i1 true, i1 %35
  %37 = icmp eq i16 %31, 336
  %38 = select i1 %36, i1 true, i1 %37
  %39 = icmp eq i16 %31, 416
  %40 = select i1 %38, i1 true, i1 %39
  %41 = icmp eq i16 %31, 512
  %42 = select i1 %40, i1 true, i1 %41
  switch i16 %30, label %52 [
    i16 416, label %43
    i16 496, label %43
  ]

43:                                               ; preds = %24, %24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #4
  store i32 0, ptr %6, align 4, !annotation !11
  %44 = getelementptr i8, ptr %27, i32 -128
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.pci_bus, ptr %45, i32 0, i32 16
  %47 = load i32, ptr %46, align 8
  %48 = tail call ptr @pci_get_domain_bus_and_slot(i32 noundef %47, i32 noundef 0, i32 noundef 1) #4
  %49 = call i32 @pci_read_config_dword(ptr noundef %48, i32 noundef 124, ptr noundef nonnull %6) #4
  %50 = load i32, ptr %6, align 4
  %51 = lshr i32 %50, 12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #4
  br label %80

52:                                               ; preds = %24
  %53 = load ptr, ptr %16, align 8
  %54 = icmp eq ptr %53, null
  br i1 %54, label %58, label %55, !prof !8

55:                                               ; preds = %52
  %56 = getelementptr i8, ptr %53, i32 1049088
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  br label %60

58:                                               ; preds = %52
  %59 = tail call i32 @nvif_object_rd(ptr noundef %13, i32 noundef 4, i64 noundef 1049088) #4
  br label %60

60:                                               ; preds = %58, %55
  %61 = phi i32 [ %57, %55 ], [ %59, %58 ]
  %62 = load ptr, ptr %16, align 8
  %63 = icmp eq ptr %62, null
  br i1 %63, label %67, label %64, !prof !8

64:                                               ; preds = %60
  %65 = getelementptr i8, ptr %62, i32 1052672
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  br label %69

67:                                               ; preds = %60
  %68 = tail call i32 @nvif_object_rd(ptr noundef %13, i32 noundef 4, i64 noundef 1052672) #4
  br label %69

69:                                               ; preds = %67, %64
  %70 = phi i32 [ %66, %64 ], [ %68, %67 ]
  %71 = and i32 %70, 16
  %72 = icmp eq i32 %71, 0
  %73 = select i1 %72, i32 64, i32 128
  %74 = and i32 %25, 15
  %75 = lshr i32 %25, 4
  %76 = and i32 %75, 15
  %77 = lshr i32 %25, 31
  %78 = add nuw nsw i32 %76, %77
  %79 = add nuw nsw i32 %74, 13
  br label %80

80:                                               ; preds = %69, %43
  %81 = phi i32 [ %78, %69 ], [ 10, %43 ]
  %82 = phi i32 [ %79, %69 ], [ 16, %43 ]
  %83 = phi i32 [ %61, %69 ], [ %51, %43 ]
  %84 = phi i32 [ %73, %69 ], [ 64, %43 ]
  %85 = load i8, ptr %9, align 1
  %86 = icmp eq i8 %85, 1
  br i1 %86, label %87, label %121

87:                                               ; preds = %80
  %88 = sdiv i32 10000000, %15
  %89 = sdiv i32 10000000, %1
  %90 = mul i32 %2, %1
  %91 = sdiv i32 %90, 8
  %92 = mul nuw nsw i32 %81, 3000000
  %93 = sdiv i32 %92, %14
  %94 = add nsw i32 %89, %88
  %95 = add nsw i32 %94, %93
  br label %96

96:                                               ; preds = %96, %87
  %97 = phi i32 [ 3, %87 ], [ %116, %96 ]
  %98 = add i32 %97, %82
  %99 = mul i32 %98, 1000000
  %100 = sdiv i32 %99, %14
  %101 = add i32 %95, %100
  %102 = mul i32 %101, %91
  %103 = sdiv i32 %102, 1000000
  %104 = add nsw i32 %103, -383
  %105 = mul i32 %104, %1
  %106 = sdiv i32 %105, %14
  %107 = mul i32 %106, %2
  %108 = sdiv i32 %107, 8
  %109 = icmp slt i32 %108, %104
  %110 = icmp sgt i32 %102, 383999999
  %111 = select i1 %109, i1 %110, i1 false
  %112 = icmp sgt i32 %102, 518999999
  %113 = select i1 %111, i1 true, i1 %112
  %114 = icmp ne i32 %97, 0
  %115 = sext i1 %113 to i32
  %116 = add i32 %97, %115
  %117 = select i1 %113, i1 %114, i1 false
  br i1 %117, label %96, label %118

118:                                              ; preds = %96
  %119 = call i32 @llvm.smax.i32(i32 %103, i32 383) #4
  %120 = add nuw nsw i32 %119, 1
  br label %181

121:                                              ; preds = %80
  %122 = and i32 %83, 1
  %123 = mul i32 %84, %14
  %124 = sdiv i32 %123, 8
  %125 = mul i32 %2, %1
  %126 = sdiv i32 %125, 8
  %127 = select i1 %42, i32 1024, i32 1536
  %128 = icmp eq i32 %122, 0
  %129 = select i1 %128, i32 2, i32 1
  %130 = mul nuw nsw i32 %129, %84
  %131 = lshr exact i32 %130, 5
  %132 = add nuw nsw i32 %131, 18
  %133 = mul nuw nsw i32 %132, 1000000
  %134 = sdiv i32 %133, %14
  %135 = sdiv i32 9000000, %15
  %136 = add nsw i32 %135, %134
  %137 = sdiv i32 4000000, %1
  %138 = add nsw i32 %136, %137
  %139 = shl nuw nsw i32 %81, 2
  %140 = icmp eq i32 %2, 32
  %141 = select i1 %140, i32 8, i32 4
  %142 = add nuw nsw i32 %139, %141
  %143 = add nuw nsw i32 %142, %132
  %144 = mul nuw nsw i32 %143, 1000000
  %145 = sdiv i32 %144, %14
  %146 = add nsw i32 %138, 80
  %147 = add nsw i32 %146, %145
  %148 = select i1 %42, i32 0, i32 %147
  %149 = add nsw i32 %148, %145
  %150 = or i32 %127, 1
  %151 = mul i32 %149, %126
  %152 = sdiv i32 %151, -1000000
  %153 = add nsw i32 %150, %152
  %154 = sdiv i32 %123, 8000
  %155 = mul i32 %153, %154
  %156 = sub nsw i32 %124, %126
  %157 = sdiv i32 %156, 1000
  %158 = sdiv i32 %155, %157
  %159 = mul i32 %124, 80
  %160 = sdiv i32 %159, 1000000
  %161 = call i32 @llvm.smin.i32(i32 %158, i32 %160) #4
  %162 = call i32 @llvm.smin.i32(i32 %161, i32 1024) #4
  %163 = call i32 @llvm.ctlz.i32(i32 %162, i1 false) #4, !range !12
  %164 = lshr i32 -2147483648, %163
  %165 = add nsw i32 %149, %138
  %166 = mul i32 %165, %126
  %167 = sdiv i32 %166, 1000000
  %168 = add nsw i32 %167, 1
  %169 = mul i32 %138, %126
  %170 = sdiv i32 %169, 1000000
  %171 = mul i32 %164, %126
  %172 = sdiv i32 %171, %124
  %173 = xor i32 %167, -1
  %174 = add nsw i32 %170, %127
  %175 = add nsw i32 %174, %173
  %176 = sub i32 %175, %164
  %177 = add i32 %176, %172
  %178 = mul i32 %177, 10
  %179 = sdiv i32 %178, 100
  %180 = add nsw i32 %168, %179
  br label %181

181:                                              ; preds = %121, %118
  %182 = phi i32 [ 128, %118 ], [ %164, %121 ]
  %183 = phi i32 [ %120, %118 ], [ %180, %121 ]
  %184 = icmp ult i32 %182, 16
  %185 = ashr i32 %182, 4
  %186 = call i32 @llvm.ctlz.i32(i32 %185, i1 false) #4, !range !12
  %187 = sub nsw i32 31, %186
  %188 = select i1 %184, i32 -1, i32 %187
  store i32 %188, ptr %3, align 4
  %189 = ashr i32 %183, 3
  br label %198

190:                                              ; preds = %5
  %191 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %192 = load ptr, ptr %191, align 4
  %193 = getelementptr i8, ptr %192, i32 -102
  %194 = load i16, ptr %193, align 2
  %195 = and i16 %194, -16
  switch i16 %195, label %197 [
    i16 576, label %196
    i16 976, label %196
  ]

196:                                              ; preds = %190, %190
  store i32 128, ptr %3, align 4
  br label %198

197:                                              ; preds = %190
  store i32 4, ptr %3, align 4
  br label %198

198:                                              ; preds = %197, %196, %181
  %199 = phi i32 [ 1152, %196 ], [ 192, %197 ], [ %189, %181 ]
  store i32 %199, ptr %4, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_hw_get_clock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_rd(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_domain_bus_and_slot(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

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
!9 = !{i64 3950121}
!10 = !{i64 2151489574}
!11 = !{!"auto-init"}
!12 = !{i32 0, i32 33}
