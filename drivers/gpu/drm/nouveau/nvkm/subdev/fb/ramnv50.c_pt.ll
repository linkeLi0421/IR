; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramnv50.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramnv50.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_ram_func = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_fb = type { ptr, %struct.nvkm_subdev, %struct.nvkm_blob, ptr, %struct.anon.96, %struct.anon.97, i8, ptr, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.96 = type { %struct.mutex, %struct.nvkm_mm }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.anon.97 = type { [16 x %struct.nvkm_fb_tile], i32 }
%struct.nvkm_fb_tile = type { ptr, i32, i32, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.137, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.137 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_ram = type { ptr, ptr, i32, i64, %struct.nvkm_mm, i64, %struct.mutex, i32, i32, i32, i32, [16 x i32], i32, ptr, %struct.nvkm_ram_data, %struct.nvkm_ram_data, %struct.nvkm_ram_data }
%struct.nvkm_ram_data = type { %struct.list_head, %struct.nvbios_ramcfg, i32 }
%struct.nvbios_ramcfg = type <{ i32, i32, i32, i32, %union.anon.85, i32, i32, i32, i32, i32, i32, %union.anon.89, i32, i32, [11 x i32], %union.anon.93 }>
%union.anon.85 = type { %struct.anon.88 }
%struct.anon.88 = type { i64 }
%union.anon.89 = type { %struct.anon.92 }
%struct.anon.92 = type { i32, i32, i8 }
%union.anon.93 = type <{ %struct.anon.95, [12 x i8] }>
%struct.anon.95 = type { i48 }
%struct.nv50_ram = type { %struct.nvkm_ram, %struct.nv50_ramseq }
%struct.nv50_ramseq = type { %struct.hwsq, %struct.hwsq_reg, %struct.hwsq_reg, %struct.hwsq_reg, %struct.hwsq_reg, %struct.hwsq_reg, %struct.hwsq_reg, %struct.hwsq_reg, %struct.hwsq_reg, %struct.hwsq_reg, %struct.hwsq_reg, %struct.hwsq_reg, %struct.hwsq_reg, %struct.hwsq_reg, %struct.hwsq_reg, %struct.hwsq_reg, %struct.hwsq_reg, %struct.hwsq_reg, %struct.hwsq_reg, %struct.hwsq_reg, %struct.hwsq_reg, %struct.hwsq_reg, [9 x %struct.hwsq_reg], [4 x %struct.hwsq_reg], [4 x %struct.hwsq_reg] }
%struct.hwsq = type { ptr, ptr, i32 }
%struct.hwsq_reg = type { i32, i8, i32, i32, i32, i32 }
%struct.nvbios_perfE = type { i8, i8, i8, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.nvbios_pll = type { i32, i32, i32, i8, i8, i8, i8, %struct.anon.144, %struct.anon.144 }
%struct.anon.144 = type { i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.dcb_gpio_func = type { i8, i8, [2 x i8], i8 }

@nv50_ram_func = internal constant %struct.nvkm_ram_func { i64 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nv50_ram_calc, ptr @nv50_ram_prog, ptr @nv50_ram_tidy }, align 8
@.str = private unnamed_addr constant [32 x i8] c"%s: memcfg %08x %08x %08x %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"%s: memory controller reports %d MiB VRAM\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"%s: rblock %d bytes\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"%s: invalid/missing perftab entry\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"%s: invalid ramcfg strap\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"%s: invalid/missing rammap entry \00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"%s: invalid/missing timing entry %02x %04x %02x %02x\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"%s: Could not calculate MR\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"%s:  220: %08x %08x %08x %08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"%s:  230: %08x %08x %08x %08x\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"%s:  240: %08x\0A\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"NvMemExec\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_ram_ctor(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 21
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 1049100
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %12 = zext i32 %11 to i64
  %13 = load ptr, ptr %8, align 4
  %14 = getelementptr i8, ptr %13, i32 1050388
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %16 = and i32 %15, 7
  switch i32 %16, label %25 [
    i32 0, label %17
    i32 1, label %18
    i32 2, label %22
    i32 3, label %23
    i32 4, label %24
  ]

17:                                               ; preds = %3
  br label %25

18:                                               ; preds = %3
  %19 = tail call i32 @nvkm_fb_bios_memtype(ptr noundef %7) #8
  %20 = icmp eq i32 %19, 6
  %21 = select i1 %20, i32 6, i32 5
  br label %25

22:                                               ; preds = %3
  br label %25

23:                                               ; preds = %3
  br label %25

24:                                               ; preds = %3
  br label %25

25:                                               ; preds = %24, %23, %22, %18, %17, %3
  %26 = phi i32 [ 0, %3 ], [ 10, %24 ], [ 9, %23 ], [ 8, %22 ], [ 4, %17 ], [ %21, %18 ]
  %27 = shl nuw i64 %12, 32
  %28 = and i64 %27, 1095216660480
  %29 = and i64 %12, 4294967040
  %30 = or i64 %28, %29
  %31 = tail call i32 @nvkm_ram_ctor(ptr noundef %0, ptr noundef %1, i32 noundef %26, i64 noundef %30, ptr noundef %2) #8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %140

33:                                               ; preds = %25
  %34 = load ptr, ptr %8, align 4
  %35 = getelementptr i8, ptr %34, i32 5440
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %37 = lshr i32 %36, 16
  %38 = and i32 %37, 255
  %39 = getelementptr inbounds %struct.nvkm_ram, ptr %2, i32 0, i32 9
  store i32 %38, ptr %39, align 4
  %40 = tail call i32 @__sw_hweight8(i32 noundef %38) #8
  %41 = getelementptr inbounds %struct.nvkm_ram, ptr %2, i32 0, i32 8
  store i32 %40, ptr %41, align 8
  %42 = load ptr, ptr %8, align 4
  %43 = getelementptr i8, ptr %42, i32 1049088
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %45 = and i32 %44, 4
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %46, i32 1, i32 2
  %48 = getelementptr inbounds %struct.nvkm_ram, ptr %2, i32 0, i32 7
  store i32 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.nvkm_ram, ptr %2, i32 0, i32 4
  %50 = tail call i32 @nvkm_mm_fini(ptr noundef %49) #8
  %51 = add nuw nsw i64 %30, 17592184733696
  %52 = lshr i64 %51, 12
  %53 = trunc i64 %52 to i32
  %54 = getelementptr inbounds %struct.nvkm_ram, ptr %2, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.nvkm_fb, ptr %55, i32 0, i32 1, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.nvkm_device, ptr %57, i32 0, i32 11
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr i8, ptr %59, i32 1049088
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %62 = load ptr, ptr %58, align 4
  %63 = getelementptr i8, ptr %62, i32 1049092
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %65 = load ptr, ptr %58, align 4
  %66 = getelementptr i8, ptr %65, i32 1049168
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %68 = getelementptr inbounds %struct.nvkm_fb, ptr %55, i32 0, i32 1, i32 5
  %69 = load i32, ptr %68, align 4
  %70 = icmp ugt i32 %69, 3
  br i1 %70, label %71, label %79

71:                                               ; preds = %33
  %72 = load ptr, ptr %56, align 4
  %73 = getelementptr inbounds %struct.nvkm_device, ptr %72, i32 0, i32 2
  %74 = load ptr, ptr %73, align 8
  %75 = getelementptr inbounds %struct.nvkm_fb, ptr %55, i32 0, i32 1, i32 4
  %76 = load ptr, ptr %58, align 4
  %77 = getelementptr i8, ptr %76, i32 5440
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %74, ptr noundef nonnull @.str, ptr noundef %75, i32 noundef %61, i32 noundef %64, i32 noundef %67, i32 noundef %78) #9
  br label %79

79:                                               ; preds = %71, %33
  %80 = lshr i32 %64, 12
  %81 = and i32 %80, 15
  %82 = lshr i32 %64, 16
  %83 = and i32 %82, 15
  %84 = add nuw nsw i32 %83, 8
  %85 = lshr i32 %64, 24
  %86 = and i32 %85, 3
  %87 = shl nuw nsw i32 4, %86
  %88 = load i32, ptr %41, align 8
  %89 = mul i32 %88, %87
  %90 = shl i32 %89, %81
  %91 = shl i32 %90, 3
  %92 = sext i32 %91 to i64
  %93 = zext i32 %84 to i64
  %94 = shl nsw i64 %92, %93
  %95 = and i32 %61, 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %104, label %97

97:                                               ; preds = %79
  %98 = lshr i32 %64, 20
  %99 = and i32 %98, 15
  %100 = add nuw nsw i32 %99, 8
  %101 = zext i32 %100 to i64
  %102 = shl nsw i64 %92, %101
  %103 = add i64 %94, %102
  br label %104

104:                                              ; preds = %97, %79
  %105 = phi i64 [ %103, %97 ], [ %94, %79 ]
  %106 = getelementptr inbounds %struct.nvkm_ram, ptr %2, i32 0, i32 3
  %107 = load i64, ptr %106, align 8
  %108 = icmp eq i64 %105, %107
  br i1 %108, label %124, label %109

109:                                              ; preds = %104
  %110 = load i32, ptr %68, align 4
  %111 = icmp ugt i32 %110, 1
  br i1 %111, label %117, label %112

112:                                              ; preds = %109
  %113 = and i32 %67, 1
  %114 = icmp eq i32 %113, 0
  %115 = mul i32 %90, 24
  %116 = select i1 %114, i32 %91, i32 %115
  br label %136

117:                                              ; preds = %109
  %118 = load ptr, ptr %56, align 4
  %119 = getelementptr inbounds %struct.nvkm_device, ptr %118, i32 0, i32 2
  %120 = load ptr, ptr %119, align 8
  %121 = getelementptr inbounds %struct.nvkm_fb, ptr %55, i32 0, i32 1, i32 4
  %122 = lshr i64 %107, 20
  %123 = trunc i64 %122 to i32
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %120, ptr noundef nonnull @.str.1, ptr noundef %121, i32 noundef %123) #9
  br label %124

124:                                              ; preds = %117, %104
  %125 = load i32, ptr %68, align 4
  %126 = and i32 %67, 1
  %127 = icmp eq i32 %126, 0
  %128 = mul i32 %90, 24
  %129 = select i1 %127, i32 %91, i32 %128
  %130 = icmp ugt i32 %125, 3
  br i1 %130, label %131, label %136

131:                                              ; preds = %124
  %132 = load ptr, ptr %56, align 4
  %133 = getelementptr inbounds %struct.nvkm_device, ptr %132, i32 0, i32 2
  %134 = load ptr, ptr %133, align 8
  %135 = getelementptr inbounds %struct.nvkm_fb, ptr %55, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %134, ptr noundef nonnull @.str.2, ptr noundef %135, i32 noundef %129) #9
  br label %136

136:                                              ; preds = %131, %124, %112
  %137 = phi i32 [ %116, %112 ], [ %129, %131 ], [ %129, %124 ]
  %138 = lshr i32 %137, 12
  %139 = tail call i32 @nvkm_mm_init(ptr noundef %49, i8 noundef zeroext 1, i32 noundef 64, i32 noundef %53, i32 noundef %138) #8
  br label %140

140:                                              ; preds = %136, %25
  %141 = phi i32 [ %139, %136 ], [ %31, %25 ]
  ret i32 %141
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_fb_bios_memtype(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_ram_ctor(ptr noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mm_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mm_init(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_ram_new(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 1528) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %245, label %6

6:                                                ; preds = %2
  store ptr %4, ptr %1, align 4
  %7 = tail call i32 @nv50_ram_ctor(ptr noundef nonnull @nv50_ram_func, ptr noundef %0, ptr noundef nonnull %4)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %245

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 1
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 1, i32 1
  store i8 0, ptr %11, align 8
  %12 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 1, i32 2
  store i32 9476, ptr %12, align 4
  %13 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 1, i32 3
  store i32 0, ptr %13, align 8
  %14 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 1, i32 4
  store i32 1, ptr %14, align 4
  %15 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 1, i32 5
  store i32 -559038737, ptr %15, align 8
  %16 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 4
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 4, i32 1
  store i8 0, ptr %17, align 8
  %18 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 4, i32 2
  store i32 49216, ptr %18, align 4
  %19 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 4, i32 3
  store i32 0, ptr %19, align 8
  %20 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 4, i32 4
  store i32 1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 4, i32 5
  store i32 -559038737, ptr %21, align 8
  %22 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 2
  store i32 0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 2, i32 1
  store i8 0, ptr %23, align 8
  %24 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 2, i32 2
  store i32 16392, ptr %24, align 4
  %25 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 2, i32 3
  store i32 0, ptr %25, align 8
  %26 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 2, i32 4
  store i32 1, ptr %26, align 4
  %27 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 2, i32 5
  store i32 -559038737, ptr %27, align 8
  %28 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 3
  store i32 0, ptr %28, align 4
  %29 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 3, i32 1
  store i8 0, ptr %29, align 8
  %30 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 3, i32 2
  store i32 16396, ptr %30, align 4
  %31 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 3, i32 3
  store i32 0, ptr %31, align 8
  %32 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 3, i32 4
  store i32 1, ptr %32, align 4
  %33 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 3, i32 5
  store i32 -559038737, ptr %33, align 8
  %34 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 5
  store i32 0, ptr %34, align 4
  %35 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 5, i32 1
  store i8 0, ptr %35, align 8
  %36 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 5, i32 2
  store i32 1049088, ptr %36, align 4
  %37 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 5, i32 3
  store i32 0, ptr %37, align 8
  %38 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 5, i32 4
  store i32 1, ptr %38, align 4
  %39 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 5, i32 5
  store i32 -559038737, ptr %39, align 8
  %40 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 6
  store i32 0, ptr %40, align 4
  %41 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 6, i32 1
  store i8 0, ptr %41, align 8
  %42 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 6, i32 2
  store i32 1049104, ptr %42, align 4
  %43 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 6, i32 3
  store i32 0, ptr %43, align 8
  %44 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 6, i32 4
  store i32 1, ptr %44, align 4
  %45 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 6, i32 5
  store i32 -559038737, ptr %45, align 8
  %46 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 7
  store i32 0, ptr %46, align 4
  %47 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 7, i32 1
  store i8 0, ptr %47, align 8
  %48 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 7, i32 2
  store i32 1049116, ptr %48, align 4
  %49 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 7, i32 3
  store i32 0, ptr %49, align 8
  %50 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 7, i32 4
  store i32 1, ptr %50, align 4
  %51 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 7, i32 5
  store i32 -559038737, ptr %51, align 8
  %52 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 8
  store i32 0, ptr %52, align 4
  %53 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 8, i32 1
  store i8 0, ptr %53, align 8
  %54 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 8, i32 2
  store i32 1049296, ptr %54, align 4
  %55 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 8, i32 3
  store i32 0, ptr %55, align 8
  %56 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 8, i32 4
  store i32 1, ptr %56, align 4
  %57 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 8, i32 5
  store i32 -559038737, ptr %57, align 8
  %58 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 9
  store i32 0, ptr %58, align 4
  %59 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 9, i32 1
  store i8 0, ptr %59, align 8
  %60 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 9, i32 2
  store i32 1049300, ptr %60, align 4
  %61 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 9, i32 3
  store i32 0, ptr %61, align 8
  %62 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 9, i32 4
  store i32 1, ptr %62, align 4
  %63 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 9, i32 5
  store i32 -559038737, ptr %63, align 8
  %64 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 10
  store i32 0, ptr %64, align 4
  %65 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 10, i32 1
  store i8 0, ptr %65, align 8
  %66 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 10, i32 2
  store i32 1049308, ptr %66, align 4
  %67 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 10, i32 3
  store i32 0, ptr %67, align 8
  %68 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 10, i32 4
  store i32 1, ptr %68, align 4
  %69 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 10, i32 5
  store i32 -559038737, ptr %69, align 8
  %70 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 11
  store i32 0, ptr %70, align 4
  %71 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 11, i32 1
  store i8 0, ptr %71, align 8
  %72 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 11, i32 2
  store i32 1049916, ptr %72, align 4
  %73 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 11, i32 3
  store i32 0, ptr %73, align 8
  %74 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 11, i32 4
  store i32 1, ptr %74, align 4
  %75 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 11, i32 5
  store i32 -559038737, ptr %75, align 8
  %76 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 12
  store i32 0, ptr %76, align 4
  %77 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 12, i32 1
  store i8 0, ptr %77, align 8
  %78 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 12, i32 2
  store i32 1050016, ptr %78, align 4
  %79 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 12, i32 3
  store i32 0, ptr %79, align 8
  %80 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 12, i32 4
  store i32 1, ptr %80, align 4
  %81 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 12, i32 5
  store i32 -559038737, ptr %81, align 8
  %82 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 13
  store i32 0, ptr %82, align 4
  %83 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 13, i32 1
  store i8 0, ptr %83, align 8
  %84 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 13, i32 2
  store i32 1050020, ptr %84, align 4
  %85 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 13, i32 3
  store i32 0, ptr %85, align 8
  %86 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 13, i32 4
  store i32 1, ptr %86, align 4
  %87 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 13, i32 5
  store i32 -559038737, ptr %87, align 8
  %88 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 14
  store i32 0, ptr %88, align 4
  %89 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 14, i32 1
  store i8 0, ptr %89, align 8
  %90 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 14, i32 2
  store i32 1050384, ptr %90, align 4
  %91 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 14, i32 3
  store i32 0, ptr %91, align 8
  %92 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 14, i32 4
  store i32 1, ptr %92, align 4
  %93 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 14, i32 5
  store i32 -559038737, ptr %93, align 8
  %94 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 15
  store i32 0, ptr %94, align 4
  %95 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 15, i32 1
  store i8 0, ptr %95, align 8
  %96 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 15, i32 2
  store i32 1050388, ptr %96, align 4
  %97 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 15, i32 3
  store i32 0, ptr %97, align 8
  %98 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 15, i32 4
  store i32 1, ptr %98, align 4
  %99 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 15, i32 5
  store i32 -559038737, ptr %99, align 8
  %100 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 16
  store i32 0, ptr %100, align 4
  %101 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 16, i32 1
  store i8 0, ptr %101, align 8
  %102 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 16, i32 2
  store i32 1050392, ptr %102, align 4
  %103 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 16, i32 3
  store i32 0, ptr %103, align 8
  %104 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 16, i32 4
  store i32 1, ptr %104, align 4
  %105 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 16, i32 5
  store i32 -559038737, ptr %105, align 8
  %106 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 17
  store i32 0, ptr %106, align 4
  %107 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 17, i32 1
  store i8 0, ptr %107, align 8
  %108 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 17, i32 2
  store i32 1050396, ptr %108, align 4
  %109 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 17, i32 3
  store i32 0, ptr %109, align 8
  %110 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 17, i32 4
  store i32 1, ptr %110, align 4
  %111 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 17, i32 5
  store i32 -559038737, ptr %111, align 8
  %112 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 18
  %113 = getelementptr inbounds %struct.nvkm_ram, ptr %4, i32 0, i32 9
  %114 = load i32, ptr %113, align 4
  store i32 0, ptr %112, align 4
  %115 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 18, i32 1
  store i8 0, ptr %115, align 8
  %116 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 18, i32 2
  store i32 1052064, ptr %116, align 4
  %117 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 18, i32 3
  store i32 4, ptr %117, align 8
  %118 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 18, i32 4
  store i32 %114, ptr %118, align 4
  %119 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 18, i32 5
  store i32 -559038737, ptr %119, align 8
  %120 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 19
  store i32 0, ptr %120, align 4
  %121 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 19, i32 1
  store i8 0, ptr %121, align 8
  %122 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 19, i32 2
  store i32 1052192, ptr %122, align 4
  %123 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 19, i32 3
  store i32 0, ptr %123, align 8
  %124 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 19, i32 4
  store i32 1, ptr %124, align 4
  %125 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 19, i32 5
  store i32 -559038737, ptr %125, align 8
  %126 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 20
  store i32 0, ptr %126, align 4
  %127 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 20, i32 1
  store i8 0, ptr %127, align 8
  %128 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 20, i32 2
  store i32 1052196, ptr %128, align 4
  %129 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 20, i32 3
  store i32 0, ptr %129, align 8
  %130 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 20, i32 4
  store i32 1, ptr %130, align 4
  %131 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 20, i32 5
  store i32 -559038737, ptr %131, align 8
  %132 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 21
  store i32 0, ptr %132, align 4
  %133 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 21, i32 1
  store i8 0, ptr %133, align 8
  %134 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 21, i32 2
  store i32 6361600, ptr %134, align 4
  %135 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 21, i32 3
  store i32 0, ptr %135, align 8
  %136 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 21, i32 4
  store i32 1, ptr %136, align 4
  %137 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 21, i32 5
  store i32 -559038737, ptr %137, align 8
  %138 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 22, i32 0
  store i32 0, ptr %138, align 4
  %139 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 22, i32 0, i32 1
  store i8 0, ptr %139, align 8
  %140 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 22, i32 0, i32 2
  store i32 1049120, ptr %140, align 4
  %141 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 22, i32 0, i32 3
  store i32 0, ptr %141, align 8
  %142 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 22, i32 0, i32 4
  store i32 1, ptr %142, align 4
  %143 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 22, i32 0, i32 5
  store i32 -559038737, ptr %143, align 8
  %144 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 22, i32 1
  store i32 0, ptr %144, align 4
  %145 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 22, i32 1, i32 1
  store i8 0, ptr %145, align 8
  %146 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 22, i32 1, i32 2
  store i32 1049124, ptr %146, align 4
  %147 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 22, i32 1, i32 3
  store i32 0, ptr %147, align 8
  %148 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 22, i32 1, i32 4
  store i32 1, ptr %148, align 4
  %149 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 22, i32 1, i32 5
  store i32 -559038737, ptr %149, align 8
  %150 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 22, i32 2
  store i32 0, ptr %150, align 4
  %151 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 22, i32 2, i32 1
  store i8 0, ptr %151, align 8
  %152 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 22, i32 2, i32 2
  store i32 1049128, ptr %152, align 4
  %153 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 22, i32 2, i32 3
  store i32 0, ptr %153, align 8
  %154 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 22, i32 2, i32 4
  store i32 1, ptr %154, align 4
  %155 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 22, i32 2, i32 5
  store i32 -559038737, ptr %155, align 8
  %156 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 22, i32 3
  store i32 0, ptr %156, align 4
  %157 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 22, i32 3, i32 1
  store i8 0, ptr %157, align 8
  %158 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 22, i32 3, i32 2
  store i32 1049132, ptr %158, align 4
  %159 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 22, i32 3, i32 3
  store i32 0, ptr %159, align 8
  %160 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 22, i32 3, i32 4
  store i32 1, ptr %160, align 4
  %161 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 22, i32 3, i32 5
  store i32 -559038737, ptr %161, align 8
  %162 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 22, i32 4
  store i32 0, ptr %162, align 4
  %163 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 22, i32 4, i32 1
  store i8 0, ptr %163, align 8
  %164 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 22, i32 4, i32 2
  store i32 1049136, ptr %164, align 4
  %165 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 22, i32 4, i32 3
  store i32 0, ptr %165, align 8
  %166 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 22, i32 4, i32 4
  store i32 1, ptr %166, align 4
  %167 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 22, i32 4, i32 5
  store i32 -559038737, ptr %167, align 8
  %168 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 22, i32 5
  store i32 0, ptr %168, align 4
  %169 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 22, i32 5, i32 1
  store i8 0, ptr %169, align 8
  %170 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 22, i32 5, i32 2
  store i32 1049140, ptr %170, align 4
  %171 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 22, i32 5, i32 3
  store i32 0, ptr %171, align 8
  %172 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 22, i32 5, i32 4
  store i32 1, ptr %172, align 4
  %173 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 22, i32 5, i32 5
  store i32 -559038737, ptr %173, align 8
  %174 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 22, i32 6
  store i32 0, ptr %174, align 4
  %175 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 22, i32 6, i32 1
  store i8 0, ptr %175, align 8
  %176 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 22, i32 6, i32 2
  store i32 1049144, ptr %176, align 4
  %177 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 22, i32 6, i32 3
  store i32 0, ptr %177, align 8
  %178 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 22, i32 6, i32 4
  store i32 1, ptr %178, align 4
  %179 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 22, i32 6, i32 5
  store i32 -559038737, ptr %179, align 8
  %180 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 22, i32 7
  store i32 0, ptr %180, align 4
  %181 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 22, i32 7, i32 1
  store i8 0, ptr %181, align 8
  %182 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 22, i32 7, i32 2
  store i32 1049148, ptr %182, align 4
  %183 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 22, i32 7, i32 3
  store i32 0, ptr %183, align 8
  %184 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 22, i32 7, i32 4
  store i32 1, ptr %184, align 4
  %185 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 22, i32 7, i32 5
  store i32 -559038737, ptr %185, align 8
  %186 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 22, i32 8
  store i32 0, ptr %186, align 4
  %187 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 22, i32 8, i32 1
  store i8 0, ptr %187, align 8
  %188 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 22, i32 8, i32 2
  store i32 1049152, ptr %188, align 4
  %189 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 22, i32 8, i32 3
  store i32 0, ptr %189, align 8
  %190 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 22, i32 8, i32 4
  store i32 1, ptr %190, align 4
  %191 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 22, i32 8, i32 5
  store i32 -559038737, ptr %191, align 8
  %192 = getelementptr inbounds %struct.nvkm_ram, ptr %4, i32 0, i32 7
  %193 = load i32, ptr %192, align 4
  %194 = icmp sgt i32 %193, 1
  %195 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 23
  store i32 0, ptr %195, align 4
  %196 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 23, i32 0, i32 1
  store i8 0, ptr %196, align 8
  %197 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 23, i32 0, i32 2
  store i32 1049280, ptr %197, align 4
  %198 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 23, i32 0, i32 3
  %199 = select i1 %194, i32 8, i32 0
  %200 = select i1 %194, i32 3, i32 1
  store i32 %199, ptr %198, align 8
  %201 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 23, i32 0, i32 4
  store i32 %200, ptr %201, align 4
  %202 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 23, i32 0, i32 5
  store i32 -559038737, ptr %202, align 8
  %203 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 23, i32 1
  store i32 0, ptr %203, align 4
  %204 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 23, i32 1, i32 1
  store i8 0, ptr %204, align 8
  %205 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 23, i32 1, i32 2
  store i32 1049284, ptr %205, align 4
  %206 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 23, i32 1, i32 3
  store i32 %199, ptr %206, align 8
  %207 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 23, i32 1, i32 4
  store i32 %200, ptr %207, align 4
  %208 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 23, i32 1, i32 5
  store i32 -559038737, ptr %208, align 8
  %209 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 23, i32 2
  store i32 0, ptr %209, align 4
  %210 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 23, i32 2, i32 1
  store i8 0, ptr %210, align 8
  %211 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 23, i32 2, i32 2
  store i32 1049312, ptr %211, align 4
  %212 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 23, i32 2, i32 3
  store i32 %199, ptr %212, align 8
  %213 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 23, i32 2, i32 4
  store i32 %200, ptr %213, align 4
  %214 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 23, i32 2, i32 5
  store i32 -559038737, ptr %214, align 8
  %215 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 23, i32 3
  store i32 0, ptr %215, align 4
  %216 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 23, i32 3, i32 1
  store i8 0, ptr %216, align 8
  %217 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 23, i32 3, i32 2
  store i32 1049316, ptr %217, align 4
  %218 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 23, i32 3, i32 3
  store i32 %199, ptr %218, align 8
  %219 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 23, i32 3, i32 4
  store i32 %200, ptr %219, align 4
  %220 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 23, i32 3, i32 5
  store i32 -559038737, ptr %220, align 8
  %221 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 24
  store i32 0, ptr %221, align 4
  %222 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 24, i32 0, i32 1
  store i8 0, ptr %222, align 8
  %223 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 24, i32 0, i32 2
  store i32 57604, ptr %223, align 4
  %224 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 24, i32 0, i32 3
  store i32 0, ptr %224, align 8
  %225 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 24, i32 0, i32 4
  store i32 1, ptr %225, align 4
  %226 = getelementptr inbounds %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 24, i32 0, i32 5
  store i32 -559038737, ptr %226, align 8
  %227 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 24, i32 1
  store i32 0, ptr %227, align 4
  %228 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 24, i32 1, i32 1
  store i8 0, ptr %228, align 8
  %229 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 24, i32 1, i32 2
  store i32 57608, ptr %229, align 4
  %230 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 24, i32 1, i32 3
  store i32 0, ptr %230, align 8
  %231 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 24, i32 1, i32 4
  store i32 1, ptr %231, align 4
  %232 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 24, i32 1, i32 5
  store i32 -559038737, ptr %232, align 8
  %233 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 24, i32 2
  store i32 0, ptr %233, align 4
  %234 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 24, i32 2, i32 1
  store i8 0, ptr %234, align 8
  %235 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 24, i32 2, i32 2
  store i32 57632, ptr %235, align 4
  %236 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 24, i32 2, i32 3
  store i32 0, ptr %236, align 8
  %237 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 24, i32 2, i32 4
  store i32 1, ptr %237, align 4
  %238 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 24, i32 2, i32 5
  store i32 -559038737, ptr %238, align 8
  %239 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 24, i32 3
  store i32 0, ptr %239, align 4
  %240 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 24, i32 3, i32 1
  store i8 0, ptr %240, align 8
  %241 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 24, i32 3, i32 2
  store i32 57636, ptr %241, align 4
  %242 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 24, i32 3, i32 3
  store i32 0, ptr %242, align 8
  %243 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 24, i32 3, i32 4
  store i32 1, ptr %243, align 4
  %244 = getelementptr %struct.nv50_ram, ptr %4, i32 0, i32 1, i32 24, i32 3, i32 5
  store i32 -559038737, ptr %244, align 8
  br label %245

245:                                              ; preds = %9, %6, %2
  %246 = phi i32 [ 0, %9 ], [ -12, %2 ], [ %7, %6 ]
  ret i32 %246
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_ram_calc(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.nvbios_perfE, align 4
  %4 = alloca %struct.nvbios_pll, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = getelementptr inbounds %struct.nv50_ram, ptr %0, i32 0, i32 1
  %16 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.nvkm_fb, ptr %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.nvkm_fb, ptr %17, i32 0, i32 1, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nvkm_device, ptr %20, i32 0, i32 21
  %22 = load ptr, ptr %21, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i32 32, i1 false), !annotation !10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %4, i8 0, i32 56, i1 false), !annotation !10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #8
  store i8 0, ptr %5, align 1, !annotation !10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #8
  store i8 0, ptr %6, align 1, !annotation !10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #8
  store i8 0, ptr %7, align 1, !annotation !10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #8
  store i8 0, ptr %8, align 1, !annotation !10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #8
  store i8 0, ptr %9, align 1, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #8
  store i32 0, ptr %10, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #8
  store i32 0, ptr %11, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #8
  store i32 0, ptr %12, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #8
  store i32 0, ptr %13, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #8
  store i32 0, ptr %14, align 4, !annotation !10
  %23 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 16
  %24 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 16, i32 2
  store i32 %1, ptr %24, align 4
  %25 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 13
  store ptr %23, ptr %25, align 8
  %26 = getelementptr inbounds %struct.nvbios_perfE, ptr %3, i32 0, i32 5
  br label %27

27:                                               ; preds = %48, %2
  %28 = phi i32 [ 0, %2 ], [ %49, %48 ]
  %29 = call i32 @nvbios_perfEp(ptr noundef %22, i32 noundef %28, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef nonnull %3) #8
  %30 = icmp eq i32 %29, 0
  %31 = load i8, ptr %5, align 1
  %32 = icmp ult i8 %31, 37
  %33 = select i1 %30, i1 true, i1 %32
  %34 = icmp ugt i8 %31, 63
  %35 = select i1 %33, i1 true, i1 %34
  %36 = load i8, ptr %9, align 1
  %37 = icmp ult i8 %36, 2
  %38 = select i1 %35, i1 true, i1 %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %27
  %40 = getelementptr inbounds %struct.nvkm_fb, ptr %17, i32 0, i32 1, i32 5
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %788, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr %19, align 4
  %45 = getelementptr inbounds %struct.nvkm_device, ptr %44, i32 0, i32 2
  %46 = load ptr, ptr %45, align 8
  %47 = getelementptr inbounds %struct.nvkm_fb, ptr %17, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.3, ptr noundef %47) #9
  br label %788

48:                                               ; preds = %27
  %49 = add i32 %28, 1
  %50 = load i32, ptr %26, align 4
  %51 = icmp ult i32 %50, %1
  br i1 %51, label %27, label %52

52:                                               ; preds = %48
  %53 = load i8, ptr %6, align 1
  %54 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 16, i32 1
  %55 = call i32 @nvbios_rammapEp_from_perf(ptr noundef %22, i32 noundef %29, i8 noundef zeroext %53, ptr noundef %54) #8
  %56 = call zeroext i8 @nvbios_ramcfg_index(ptr noundef %18) #8
  %57 = zext i8 %56 to i32
  %58 = load i8, ptr %7, align 1
  %59 = icmp ult i8 %56, %58
  br i1 %59, label %69, label %60

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.nvkm_fb, ptr %17, i32 0, i32 1, i32 5
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %788, label %64

64:                                               ; preds = %60
  %65 = load ptr, ptr %19, align 4
  %66 = getelementptr inbounds %struct.nvkm_device, ptr %65, i32 0, i32 2
  %67 = load ptr, ptr %66, align 8
  %68 = getelementptr inbounds %struct.nvkm_fb, ptr %17, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.4, ptr noundef %68) #9
  br label %788

69:                                               ; preds = %52
  %70 = load i8, ptr %6, align 1
  %71 = zext i8 %70 to i32
  %72 = add i32 %29, %71
  %73 = load i8, ptr %9, align 1
  %74 = call i32 @nvbios_rammapSp_from_perf(ptr noundef %22, i32 noundef %72, i8 noundef zeroext %73, i32 noundef %57, ptr noundef %54) #8
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.nvkm_fb, ptr %17, i32 0, i32 1, i32 5
  %78 = load i32, ptr %77, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %788, label %80

80:                                               ; preds = %76
  %81 = load ptr, ptr %19, align 4
  %82 = getelementptr inbounds %struct.nvkm_device, ptr %81, i32 0, i32 2
  %83 = load ptr, ptr %82, align 8
  %84 = getelementptr inbounds %struct.nvkm_fb, ptr %17, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.5, ptr noundef %84) #9
  br label %788

85:                                               ; preds = %69
  %86 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 16, i32 1, i32 7
  %87 = load i32, ptr %86, align 4
  %88 = icmp eq i32 %87, 255
  br i1 %88, label %322, label %89

89:                                               ; preds = %85
  %90 = call i32 @nvbios_timingEp(ptr noundef %22, i32 noundef %87, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef %54) #8
  %91 = icmp eq i32 %90, 0
  %92 = load i8, ptr %5, align 1
  %93 = zext i8 %92 to i32
  %94 = icmp ne i8 %92, 16
  %95 = select i1 %91, i1 true, i1 %94
  %96 = load i8, ptr %6, align 1
  %97 = zext i8 %96 to i32
  %98 = icmp ult i8 %96, 18
  %99 = select i1 %95, i1 true, i1 %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %89
  %101 = getelementptr inbounds %struct.nvkm_fb, ptr %17, i32 0, i32 1, i32 5
  %102 = load i32, ptr %101, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %788, label %104

104:                                              ; preds = %100
  %105 = load ptr, ptr %19, align 4
  %106 = getelementptr inbounds %struct.nvkm_device, ptr %105, i32 0, i32 2
  %107 = load ptr, ptr %106, align 8
  %108 = getelementptr inbounds %struct.nvkm_fb, ptr %17, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %107, ptr noundef nonnull @.str.6, ptr noundef %108, i32 noundef %57, i32 noundef %90, i32 noundef %93, i32 noundef %97) #9
  br label %788

109:                                              ; preds = %89
  %110 = load ptr, ptr %16, align 4
  %111 = getelementptr inbounds %struct.nvkm_fb, ptr %110, i32 0, i32 1, i32 1
  %112 = load ptr, ptr %111, align 4
  %113 = getelementptr inbounds %struct.nvkm_device, ptr %112, i32 0, i32 11
  %114 = load ptr, ptr %113, align 4
  %115 = getelementptr i8, ptr %114, i32 1049128
  %116 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %115) #8, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %117 = load ptr, ptr %113, align 4
  %118 = getelementptr i8, ptr %117, i32 1049136
  %119 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %118) #8, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %120 = load ptr, ptr %113, align 4
  %121 = getelementptr i8, ptr %120, i32 1049148
  %122 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %121) #8, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %123 = load ptr, ptr %113, align 4
  %124 = getelementptr i8, ptr %123, i32 1049152
  %125 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %124) #8, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %126 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 16, i32 1, i32 15
  %127 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 16, i32 1, i32 15, i32 1, i32 4
  %128 = load i64, ptr %127, align 4
  %129 = and i64 %128, 16711680
  %130 = icmp eq i64 %129, 0
  %131 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 2
  %132 = load i32, ptr %131, align 8
  %133 = select i1 %130, i32 %132, i32 0
  %134 = trunc i64 %128 to i32
  %135 = trunc i64 %128 to i32
  switch i32 %133, label %152 [
    i32 5, label %136
    i32 8, label %140
  ]

136:                                              ; preds = %109
  %137 = load i96, ptr %126, align 4
  %138 = trunc i96 %137 to i32
  %139 = add i32 %138, 16711680
  br label %144

140:                                              ; preds = %109
  %141 = lshr i32 %116, 8
  %142 = and i32 %141, 16711680
  %143 = add nuw nsw i32 %142, 65536
  br label %144

144:                                              ; preds = %140, %136
  %145 = phi i32 [ %139, %136 ], [ %143, %140 ]
  %146 = and i32 %145, 16711680
  %147 = zext i32 %146 to i64
  %148 = and i64 %128, -16711681
  %149 = or i64 %148, %147
  store i64 %149, ptr %127, align 4
  %150 = trunc i64 %149 to i32
  %151 = trunc i64 %149 to i32
  br label %152

152:                                              ; preds = %144, %109
  %153 = phi i32 [ %135, %109 ], [ %151, %144 ]
  %154 = phi i32 [ %134, %109 ], [ %150, %144 ]
  %155 = getelementptr inbounds %struct.nvkm_device, ptr %112, i32 0, i32 16
  %156 = load i32, ptr %155, align 4
  %157 = icmp eq i32 %156, 160
  br i1 %157, label %158, label %193

158:                                              ; preds = %152
  %159 = load ptr, ptr %25, align 8
  %160 = getelementptr inbounds %struct.nvkm_ram_data, ptr %159, i32 0, i32 1, i32 4
  %161 = load i8, ptr %160, align 4
  %162 = lshr i8 %161, 1
  %163 = and i8 %162, 1
  %164 = zext i8 %163 to i32
  %165 = add nuw nsw i32 %164, 25
  %166 = load i96, ptr %126, align 4
  %167 = trunc i96 %166 to i32
  %168 = lshr i32 %167, 16
  %169 = and i32 %168, 255
  %170 = lshr i32 %154, 16
  %171 = and i32 %170, 255
  %172 = sub nsw i32 45, %171
  %173 = add nsw i32 %172, %164
  %174 = add nsw i32 %173, %169
  %175 = shl nsw i32 %174, 16
  %176 = shl nuw nsw i32 %171, 8
  %177 = or i32 %175, %176
  %178 = sub nsw i32 47, %171
  %179 = add nsw i32 %178, %169
  %180 = or i32 %177, %179
  %181 = lshr i96 %166, 8
  %182 = trunc i96 %181 to i32
  %183 = lshr i96 %166, 24
  %184 = trunc i96 %183 to i32
  %185 = lshr i96 %166, 48
  %186 = trunc i96 %185 to i32
  %187 = lshr i96 %166, 56
  %188 = trunc i96 %187 to i32
  %189 = lshr i96 %166, 64
  %190 = trunc i96 %189 to i32
  %191 = lshr i96 %166, 80
  %192 = trunc i96 %191 to i32
  br label %224

193:                                              ; preds = %152
  %194 = load i96, ptr %126, align 4
  %195 = trunc i96 %194 to i32
  %196 = lshr i32 %195, 16
  %197 = and i32 %196, 255
  %198 = lshr i32 %154, 16
  %199 = and i32 %198, 255
  %200 = sub nsw i32 43, %199
  %201 = add nsw i32 %200, %197
  %202 = shl nsw i32 %201, 16
  %203 = shl i32 %198, 24
  %204 = add i32 %203, -33554432
  %205 = ashr exact i32 %204, 24
  %206 = call i32 @llvm.smax.i32(i32 %205, i32 1) #8
  %207 = shl nuw nsw i32 %206, 8
  %208 = sub nsw i32 46, %199
  %209 = add nsw i32 %208, %197
  %210 = or i32 %209, %207
  %211 = or i32 %210, %202
  %212 = lshr i96 %194, 8
  %213 = trunc i96 %212 to i32
  %214 = lshr i96 %194, 24
  %215 = trunc i96 %214 to i32
  %216 = lshr i96 %194, 48
  %217 = trunc i96 %216 to i32
  %218 = lshr i96 %194, 56
  %219 = trunc i96 %218 to i32
  %220 = lshr i96 %194, 64
  %221 = trunc i96 %220 to i32
  %222 = lshr i96 %194, 80
  %223 = trunc i96 %222 to i32
  br label %224

224:                                              ; preds = %193, %158
  %225 = phi i32 [ %213, %193 ], [ %182, %158 ]
  %226 = phi i32 [ %215, %193 ], [ %184, %158 ]
  %227 = phi i32 [ %217, %193 ], [ %186, %158 ]
  %228 = phi i32 [ %219, %193 ], [ %188, %158 ]
  %229 = phi i32 [ %221, %193 ], [ %190, %158 ]
  %230 = phi i32 [ %223, %193 ], [ %192, %158 ]
  %231 = phi i32 [ %197, %193 ], [ %169, %158 ]
  %232 = phi i32 [ %196, %193 ], [ %168, %158 ]
  %233 = phi i32 [ %195, %193 ], [ %167, %158 ]
  %234 = phi i32 [ %211, %193 ], [ %180, %158 ]
  %235 = phi i32 [ 22, %193 ], [ %165, %158 ]
  %236 = and i32 %226, -256
  %237 = lshr i32 %233, 24
  %238 = or i32 %236, %237
  %239 = add i32 %233, 1
  %240 = lshr i32 %153, 16
  %241 = and i32 %240, 255
  %242 = add i32 %239, %240
  %243 = shl i32 %242, 24
  %244 = lshr i32 %153, 8
  %245 = and i32 %244, 255
  %246 = call i32 @llvm.umax.i32(i32 %245, i32 1) #8
  %247 = shl nuw nsw i32 %246, 16
  %248 = or i32 %247, %243
  %249 = lshr i32 %233, 8
  %250 = and i32 %249, 255
  %251 = add nuw nsw i32 %250, 1
  %252 = add nuw nsw i32 %251, %241
  %253 = shl nuw nsw i32 %252, 8
  %254 = add nuw nsw i32 %231, 3
  %255 = sub nsw i32 %254, %241
  %256 = or i32 %253, %255
  %257 = or i32 %256, %248
  %258 = shl i32 %153, 8
  %259 = add i32 %258, -16777216
  %260 = and i32 %259, -16777216
  %261 = and i32 %228, 255
  %262 = and i32 %228, 16777215
  %263 = or i32 %262, %260
  %264 = add nuw nsw i32 %235, 254
  %265 = add nuw nsw i32 %264, %232
  %266 = shl i32 %265, 24
  %267 = shl nuw nsw i32 %235, 16
  %268 = or i32 %266, %267
  %269 = add nsw i32 %231, -1
  %270 = shl nsw i32 %269, 8
  %271 = or i32 %268, %269
  %272 = or i32 %271, %270
  %273 = and i32 %119, -65536
  %274 = and i32 %230, 255
  %275 = shl nuw nsw i32 %274, 8
  %276 = or i32 %275, %273
  %277 = or i32 %276, %274
  %278 = and i32 %225, -16777216
  %279 = and i32 %229, 255
  %280 = call i32 @llvm.umax.i32(i32 %261, i32 %279) #8
  %281 = shl nuw nsw i32 %280, 16
  %282 = or i32 %281, %278
  %283 = and i32 %227, 255
  %284 = or i32 %282, %283
  %285 = and i32 %122, -16711681
  %286 = and i32 %233, 16711680
  %287 = add nsw i32 %286, -65536
  %288 = or i32 %287, %285
  %289 = and i32 %125, -256
  switch i32 %132, label %299 [
    i32 5, label %291
    i32 8, label %290
  ]

290:                                              ; preds = %224
  br label %291

291:                                              ; preds = %290, %224
  %292 = phi i32 [ 512, %290 ], [ 768, %224 ]
  %293 = phi i32 [ -2, %290 ], [ -4, %224 ]
  %294 = and i32 %249, 65280
  %295 = add nuw nsw i32 %292, %294
  %296 = or i32 %295, %284
  %297 = add nsw i32 %293, %231
  %298 = or i32 %297, %289
  br label %299

299:                                              ; preds = %291, %224
  %300 = phi i32 [ %284, %224 ], [ %296, %291 ]
  %301 = phi i32 [ %289, %224 ], [ %298, %291 ]
  %302 = getelementptr inbounds %struct.nvkm_fb, ptr %110, i32 0, i32 1, i32 5
  %303 = load i32, ptr %302, align 4
  %304 = icmp ugt i32 %303, 3
  br i1 %304, label %305, label %394

305:                                              ; preds = %299
  %306 = load ptr, ptr %111, align 4
  %307 = getelementptr inbounds %struct.nvkm_device, ptr %306, i32 0, i32 2
  %308 = load ptr, ptr %307, align 8
  %309 = getelementptr inbounds %struct.nvkm_fb, ptr %110, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %308, ptr noundef nonnull @.str.8, ptr noundef %309, i32 noundef %238, i32 noundef %257, i32 noundef %263, i32 noundef %272) #9
  %310 = load i32, ptr %302, align 4
  %311 = icmp ugt i32 %310, 3
  br i1 %311, label %312, label %394

312:                                              ; preds = %305
  %313 = load ptr, ptr %111, align 4
  %314 = getelementptr inbounds %struct.nvkm_device, ptr %313, i32 0, i32 2
  %315 = load ptr, ptr %314, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %315, ptr noundef nonnull @.str.9, ptr noundef %309, i32 noundef %277, i32 noundef %300, i32 noundef %234, i32 noundef %288) #9
  %316 = load i32, ptr %302, align 4
  %317 = icmp ugt i32 %316, 3
  br i1 %317, label %318, label %394

318:                                              ; preds = %312
  %319 = load ptr, ptr %111, align 4
  %320 = getelementptr inbounds %struct.nvkm_device, ptr %319, i32 0, i32 2
  %321 = load ptr, ptr %320, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %321, ptr noundef nonnull @.str.10, ptr noundef %309, i32 noundef %301) #9
  br label %394

322:                                              ; preds = %85
  %323 = load ptr, ptr %16, align 4
  %324 = getelementptr inbounds %struct.nvkm_fb, ptr %323, i32 0, i32 1, i32 1
  %325 = load ptr, ptr %324, align 4
  %326 = getelementptr inbounds %struct.nvkm_device, ptr %325, i32 0, i32 11
  %327 = load ptr, ptr %326, align 4
  %328 = getelementptr i8, ptr %327, i32 1049120
  %329 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %328) #8, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %330 = load ptr, ptr %326, align 4
  %331 = getelementptr i8, ptr %330, i32 1049124
  %332 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %331) #8, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %333 = load ptr, ptr %326, align 4
  %334 = getelementptr i8, ptr %333, i32 1049128
  %335 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %334) #8, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %336 = load ptr, ptr %326, align 4
  %337 = getelementptr i8, ptr %336, i32 1049132
  %338 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %337) #8, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %339 = load ptr, ptr %326, align 4
  %340 = getelementptr i8, ptr %339, i32 1049136
  %341 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %340) #8, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %342 = load ptr, ptr %326, align 4
  %343 = getelementptr i8, ptr %342, i32 1049140
  %344 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %343) #8, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %345 = load ptr, ptr %326, align 4
  %346 = getelementptr i8, ptr %345, i32 1049144
  %347 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %346) #8, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %348 = load ptr, ptr %326, align 4
  %349 = getelementptr i8, ptr %348, i32 1049148
  %350 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %349) #8, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %351 = load ptr, ptr %326, align 4
  %352 = getelementptr i8, ptr %351, i32 1049152
  %353 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %352) #8, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %354 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 16, i32 1, i32 12
  store i32 16, ptr %354, align 4
  %355 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 16, i32 1, i32 15
  %356 = load i96, ptr %355, align 4
  %357 = shl i32 %338, 16
  %358 = add i32 %357, 65536
  %359 = and i32 %358, 16711680
  %360 = zext i32 %359 to i96
  %361 = and i96 %356, -16711681
  %362 = or i96 %361, %360
  store i96 %362, ptr %355, align 4
  %363 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 2
  %364 = load i32, ptr %363, align 8
  switch i32 %364, label %394 [
    i32 5, label %365
    i32 8, label %373
  ]

365:                                              ; preds = %322
  %366 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 16, i32 1, i32 15, i32 1, i32 4
  %367 = load i64, ptr %366, align 4
  %368 = and i32 %357, 16711680
  %369 = zext i32 %368 to i64
  %370 = and i64 %367, -16711681
  %371 = or i64 %370, %369
  store i64 %371, ptr %366, align 4
  %372 = trunc i64 %371 to i32
  br label %384

373:                                              ; preds = %322
  %374 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 16, i32 1, i32 15, i32 1, i32 4
  %375 = load i64, ptr %374, align 4
  %376 = lshr i32 %335, 8
  %377 = and i32 %376, 16711680
  %378 = add nuw nsw i32 %377, 65536
  %379 = and i32 %378, 16711680
  %380 = zext i32 %379 to i64
  %381 = and i64 %375, -16711681
  %382 = or i64 %381, %380
  store i64 %382, ptr %374, align 4
  %383 = trunc i64 %382 to i32
  br label %384

384:                                              ; preds = %373, %365
  %385 = phi i32 [ %383, %373 ], [ %372, %365 ]
  %386 = lshr i32 %332, 24
  %387 = lshr i32 %385, 16
  %388 = xor i32 %387, -1
  %389 = add nsw i32 %386, %388
  %390 = and i32 %389, 255
  %391 = zext i32 %390 to i96
  %392 = and i96 %362, -256
  %393 = or i96 %392, %391
  store i96 %393, ptr %355, align 4
  br label %394

394:                                              ; preds = %384, %322, %318, %312, %305, %299
  %395 = phi i32 [ %238, %299 ], [ %238, %305 ], [ %238, %312 ], [ %238, %318 ], [ %329, %322 ], [ %329, %384 ]
  %396 = phi i32 [ %257, %299 ], [ %257, %305 ], [ %257, %312 ], [ %257, %318 ], [ %332, %322 ], [ %332, %384 ]
  %397 = phi i32 [ %263, %299 ], [ %263, %305 ], [ %263, %312 ], [ %263, %318 ], [ %335, %322 ], [ %335, %384 ]
  %398 = phi i32 [ %272, %299 ], [ %272, %305 ], [ %272, %312 ], [ %272, %318 ], [ %338, %322 ], [ %338, %384 ]
  %399 = phi i32 [ %277, %299 ], [ %277, %305 ], [ %277, %312 ], [ %277, %318 ], [ %341, %322 ], [ %341, %384 ]
  %400 = phi i32 [ %300, %299 ], [ %300, %305 ], [ %300, %312 ], [ %300, %318 ], [ %344, %322 ], [ %344, %384 ]
  %401 = phi i32 [ %234, %299 ], [ %234, %305 ], [ %234, %312 ], [ %234, %318 ], [ %347, %322 ], [ %347, %384 ]
  %402 = phi i32 [ %288, %299 ], [ %288, %305 ], [ %288, %312 ], [ %288, %318 ], [ %350, %322 ], [ %350, %384 ]
  %403 = phi i32 [ %301, %299 ], [ %301, %305 ], [ %301, %312 ], [ %301, %318 ], [ %353, %322 ], [ %353, %384 ]
  %404 = getelementptr inbounds %struct.nv50_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %405 = call i32 @nvkm_hwsq_init(ptr noundef %18, ptr noundef %404) #8
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %407, label %788

407:                                              ; preds = %394
  %408 = getelementptr inbounds %struct.nv50_ram, ptr %0, i32 0, i32 1, i32 0, i32 2
  %409 = load i32, ptr %408, align 4
  %410 = add i32 %409, 1
  store i32 %410, ptr %408, align 4
  store ptr %18, ptr %15, align 4
  %411 = getelementptr inbounds %struct.nv50_ram, ptr %0, i32 0, i32 1, i32 23
  %412 = load i32, ptr %411, align 4
  %413 = icmp eq i32 %412, %410
  br i1 %413, label %414, label %417

414:                                              ; preds = %407
  %415 = getelementptr inbounds %struct.nv50_ram, ptr %0, i32 0, i32 1, i32 23, i32 0, i32 5
  %416 = load i32, ptr %415, align 4
  br label %428

417:                                              ; preds = %407
  %418 = getelementptr inbounds %struct.nvkm_fb, ptr %17, i32 0, i32 1, i32 1
  %419 = load ptr, ptr %418, align 4
  %420 = getelementptr inbounds %struct.nvkm_device, ptr %419, i32 0, i32 11
  %421 = load ptr, ptr %420, align 4
  %422 = getelementptr inbounds %struct.nv50_ram, ptr %0, i32 0, i32 1, i32 23, i32 0, i32 2
  %423 = load i32, ptr %422, align 4
  %424 = getelementptr i8, ptr %421, i32 %423
  %425 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %424) #8, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %426 = getelementptr inbounds %struct.nv50_ram, ptr %0, i32 0, i32 1, i32 23, i32 0, i32 5
  store i32 %425, ptr %426, align 4
  %427 = load i32, ptr %408, align 4
  br label %428

428:                                              ; preds = %417, %414
  %429 = phi i32 [ %410, %414 ], [ %427, %417 ]
  %430 = phi i32 [ %416, %414 ], [ %425, %417 ]
  %431 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 11
  store i32 %430, ptr %431, align 4
  %432 = getelementptr %struct.nv50_ram, ptr %0, i32 0, i32 1, i32 23, i32 1
  %433 = load i32, ptr %432, align 4
  %434 = icmp eq i32 %433, %429
  br i1 %434, label %435, label %438

435:                                              ; preds = %428
  %436 = getelementptr %struct.nv50_ram, ptr %0, i32 0, i32 1, i32 23, i32 1, i32 5
  %437 = load i32, ptr %436, align 4
  br label %450

438:                                              ; preds = %428
  %439 = load ptr, ptr %15, align 4
  %440 = getelementptr inbounds %struct.nvkm_subdev, ptr %439, i32 0, i32 1
  %441 = load ptr, ptr %440, align 4
  %442 = getelementptr inbounds %struct.nvkm_device, ptr %441, i32 0, i32 11
  %443 = load ptr, ptr %442, align 4
  %444 = getelementptr %struct.nv50_ram, ptr %0, i32 0, i32 1, i32 23, i32 1, i32 2
  %445 = load i32, ptr %444, align 4
  %446 = getelementptr i8, ptr %443, i32 %445
  %447 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %446) #8, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %448 = getelementptr %struct.nv50_ram, ptr %0, i32 0, i32 1, i32 23, i32 1, i32 5
  store i32 %447, ptr %448, align 4
  %449 = load i32, ptr %408, align 4
  br label %450

450:                                              ; preds = %438, %435
  %451 = phi i32 [ %429, %435 ], [ %449, %438 ]
  %452 = phi i32 [ %437, %435 ], [ %447, %438 ]
  %453 = getelementptr %struct.nvkm_ram, ptr %0, i32 0, i32 11, i32 1
  store i32 %452, ptr %453, align 4
  %454 = getelementptr %struct.nv50_ram, ptr %0, i32 0, i32 1, i32 23, i32 2
  %455 = load i32, ptr %454, align 4
  %456 = icmp eq i32 %455, %451
  br i1 %456, label %457, label %460

457:                                              ; preds = %450
  %458 = getelementptr %struct.nv50_ram, ptr %0, i32 0, i32 1, i32 23, i32 2, i32 5
  %459 = load i32, ptr %458, align 4
  br label %471

460:                                              ; preds = %450
  %461 = load ptr, ptr %15, align 4
  %462 = getelementptr inbounds %struct.nvkm_subdev, ptr %461, i32 0, i32 1
  %463 = load ptr, ptr %462, align 4
  %464 = getelementptr inbounds %struct.nvkm_device, ptr %463, i32 0, i32 11
  %465 = load ptr, ptr %464, align 4
  %466 = getelementptr %struct.nv50_ram, ptr %0, i32 0, i32 1, i32 23, i32 2, i32 2
  %467 = load i32, ptr %466, align 4
  %468 = getelementptr i8, ptr %465, i32 %467
  %469 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %468) #8, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %470 = getelementptr %struct.nv50_ram, ptr %0, i32 0, i32 1, i32 23, i32 2, i32 5
  store i32 %469, ptr %470, align 4
  br label %471

471:                                              ; preds = %460, %457
  %472 = phi i32 [ %459, %457 ], [ %469, %460 ]
  %473 = getelementptr %struct.nvkm_ram, ptr %0, i32 0, i32 11, i32 2
  store i32 %472, ptr %473, align 4
  %474 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 2
  %475 = load i32, ptr %474, align 8
  %476 = icmp eq i32 %475, 8
  br i1 %476, label %477, label %480

477:                                              ; preds = %471
  %478 = call i32 @nvkm_gddr3_calc(ptr noundef %0) #8
  %479 = icmp eq i32 %478, 0
  br i1 %479, label %490, label %480

480:                                              ; preds = %477, %471
  %481 = phi i32 [ %478, %477 ], [ -38, %471 ]
  %482 = getelementptr inbounds %struct.nvkm_fb, ptr %17, i32 0, i32 1, i32 5
  %483 = load i32, ptr %482, align 4
  %484 = icmp eq i32 %483, 0
  br i1 %484, label %788, label %485

485:                                              ; preds = %480
  %486 = load ptr, ptr %19, align 4
  %487 = getelementptr inbounds %struct.nvkm_device, ptr %486, i32 0, i32 2
  %488 = load ptr, ptr %487, align 8
  %489 = getelementptr inbounds %struct.nvkm_fb, ptr %17, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %488, ptr noundef nonnull @.str.7, ptr noundef %489) #9
  br label %788

490:                                              ; preds = %477
  %491 = load ptr, ptr %19, align 4
  %492 = getelementptr inbounds %struct.nvkm_device, ptr %491, i32 0, i32 16
  %493 = load i32, ptr %492, align 4
  %494 = icmp ult i32 %493, 151
  br i1 %494, label %495, label %502

495:                                              ; preds = %490
  %496 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 16, i32 1, i32 11
  %497 = load i32, ptr %496, align 4
  %498 = and i32 %497, 2
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %500, label %502

500:                                              ; preds = %495
  %501 = getelementptr inbounds %struct.nv50_ram, ptr %0, i32 0, i32 1, i32 14
  call fastcc void @hwsq_mask(ptr noundef %15, ptr noundef %501, i32 noundef 512, i32 noundef 0)
  br label %502

502:                                              ; preds = %500, %495, %490
  %503 = getelementptr inbounds %struct.nv50_ram, ptr %0, i32 0, i32 1, i32 5
  call fastcc void @hwsq_mask(ptr noundef %15, ptr noundef %503, i32 noundef 2048, i32 noundef 0)
  %504 = load ptr, ptr %404, align 4
  call void @nvkm_hwsq_wait_vblank(ptr noundef %504) #8
  %505 = getelementptr inbounds %struct.nv50_ram, ptr %0, i32 0, i32 1, i32 21
  call fastcc void @hwsq_wr32(ptr noundef %15, ptr noundef %505, i32 noundef 13056)
  %506 = getelementptr inbounds %struct.nv50_ram, ptr %0, i32 0, i32 1, i32 1
  call fastcc void @hwsq_wr32(ptr noundef %15, ptr noundef %506, i32 noundef 1)
  %507 = load ptr, ptr %404, align 4
  call void @nvkm_hwsq_nsec(ptr noundef %507, i32 noundef 8000) #8
  %508 = load ptr, ptr %404, align 4
  call void @nvkm_hwsq_setf(ptr noundef %508, i8 noundef zeroext 16, i32 noundef 0) #8
  %509 = load ptr, ptr %404, align 4
  call void @nvkm_hwsq_wait(ptr noundef %509, i8 noundef zeroext 0, i8 noundef zeroext 1) #8
  %510 = load ptr, ptr %404, align 4
  call void @nvkm_hwsq_nsec(ptr noundef %510, i32 noundef 2000) #8
  %511 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 16, i32 1, i32 15
  %512 = load i96, ptr %511, align 4
  %513 = and i96 %512, 2166395068749415481073467392
  %514 = icmp eq i96 %513, 0
  br i1 %514, label %516, label %515

515:                                              ; preds = %502
  call fastcc void @nv50_ram_gpio(ptr noundef %15, i8 noundef zeroext 46, i32 noundef 1)
  br label %516

516:                                              ; preds = %515, %502
  %517 = getelementptr inbounds %struct.nv50_ram, ptr %0, i32 0, i32 1, i32 9
  call fastcc void @hwsq_wr32(ptr noundef %15, ptr noundef %517, i32 noundef 1)
  %518 = getelementptr inbounds %struct.nv50_ram, ptr %0, i32 0, i32 1, i32 8
  call fastcc void @hwsq_wr32(ptr noundef %15, ptr noundef %518, i32 noundef 1)
  call fastcc void @hwsq_wr32(ptr noundef %15, ptr noundef %518, i32 noundef 1)
  %519 = getelementptr inbounds %struct.nv50_ram, ptr %0, i32 0, i32 1, i32 6
  call fastcc void @hwsq_wr32(ptr noundef %15, ptr noundef %519, i32 noundef 0)
  %520 = getelementptr inbounds %struct.nv50_ram, ptr %0, i32 0, i32 1, i32 10
  call fastcc void @hwsq_wr32(ptr noundef %15, ptr noundef %520, i32 noundef 1)
  %521 = call i32 @nvbios_pll_parse(ptr noundef %22, i32 noundef 16392, ptr noundef nonnull %4) #8
  %522 = getelementptr inbounds %struct.nvbios_pll, ptr %4, i32 0, i32 8, i32 1
  store i32 0, ptr %522, align 4
  %523 = icmp sgt i32 %521, -1
  br i1 %523, label %524, label %788

524:                                              ; preds = %516
  %525 = call i32 @nv04_pll_calc(ptr noundef %18, ptr noundef nonnull %4, i32 noundef %1, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14) #8
  %526 = icmp slt i32 %525, 1
  br i1 %526, label %788, label %527

527:                                              ; preds = %524
  %528 = icmp ult i32 %1, 750001
  %529 = select i1 %528, i32 -1879048192, i32 -2147483648
  %530 = getelementptr inbounds %struct.nvbios_pll, ptr %4, i32 0, i32 5
  %531 = load i8, ptr %530, align 2
  %532 = zext i8 %531 to i32
  %533 = shl nuw nsw i32 %532, 19
  %534 = load i32, ptr %14, align 4
  %535 = shl i32 %534, 22
  %536 = shl i32 %534, 16
  %537 = or i32 %535, %529
  %538 = or i32 %537, %533
  %539 = or i32 %538, %536
  %540 = getelementptr inbounds %struct.nv50_ram, ptr %0, i32 0, i32 1, i32 4
  call fastcc void @hwsq_mask(ptr noundef %15, ptr noundef %540, i32 noundef -1073692672, i32 noundef 49152)
  %541 = getelementptr inbounds %struct.nv50_ram, ptr %0, i32 0, i32 1, i32 2
  %542 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 16, i32 1, i32 4
  %543 = load i8, ptr %542, align 4
  %544 = lshr i8 %543, 1
  %545 = and i8 %544, 1
  %546 = zext i8 %545 to i32
  %547 = shl nuw nsw i32 %546, 14
  %548 = or i32 %547, 512
  call fastcc void @hwsq_mask(ptr noundef %15, ptr noundef %541, i32 noundef 16896, i32 noundef %548)
  %549 = getelementptr inbounds %struct.nv50_ram, ptr %0, i32 0, i32 1, i32 3
  %550 = load i32, ptr %10, align 4
  %551 = shl i32 %550, 8
  %552 = load i32, ptr %11, align 4
  %553 = or i32 %551, %552
  call fastcc void @hwsq_mask(ptr noundef %15, ptr noundef %549, i32 noundef 65535, i32 noundef %553)
  call fastcc void @hwsq_mask(ptr noundef %15, ptr noundef %541, i32 noundef -1845559296, i32 noundef %539)
  %554 = load ptr, ptr %19, align 4
  %555 = getelementptr inbounds %struct.nvkm_device, ptr %554, i32 0, i32 16
  %556 = load i32, ptr %555, align 4
  %557 = icmp ugt i32 %556, 145
  br i1 %557, label %558, label %561

558:                                              ; preds = %527
  %559 = select i1 %528, i32 16, i32 0
  %560 = getelementptr inbounds %struct.nv50_ram, ptr %0, i32 0, i32 1, i32 18
  call fastcc void @hwsq_wr32(ptr noundef %15, ptr noundef %560, i32 noundef %559)
  br label %561

561:                                              ; preds = %558, %527
  %562 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 16, i32 1, i32 10
  %563 = load i32, ptr %562, align 4
  %564 = icmp eq i32 %563, 0
  %565 = zext i1 %564 to i32
  call fastcc void @nv50_ram_gpio(ptr noundef %15, i8 noundef zeroext 24, i32 noundef %565)
  %566 = load ptr, ptr %404, align 4
  call void @nvkm_hwsq_nsec(ptr noundef %566, i32 noundef 64000) #8
  %567 = load ptr, ptr %404, align 4
  call void @nvkm_hwsq_nsec(ptr noundef %567, i32 noundef 32000) #8
  call fastcc void @hwsq_mask(ptr noundef %15, ptr noundef %541, i32 noundef 8704, i32 noundef 8192)
  call fastcc void @hwsq_wr32(ptr noundef %15, ptr noundef %520, i32 noundef 0)
  call fastcc void @hwsq_wr32(ptr noundef %15, ptr noundef %517, i32 noundef 1)
  call fastcc void @hwsq_wr32(ptr noundef %15, ptr noundef %519, i32 noundef -2147483648)
  %568 = load ptr, ptr %404, align 4
  call void @nvkm_hwsq_nsec(ptr noundef %568, i32 noundef 12000) #8
  %569 = load i32, ptr %474, align 8
  switch i32 %569, label %577 [
    i32 5, label %570
    i32 8, label %572
  ]

570:                                              ; preds = %561
  %571 = getelementptr inbounds %struct.nv50_ram, ptr %0, i32 0, i32 1, i32 23, i32 0, i32 1
  store i8 1, ptr %571, align 4
  call fastcc void @hwsq_mask(ptr noundef %15, ptr noundef %411, i32 noundef 0, i32 noundef 0)
  br label %577

572:                                              ; preds = %561
  %573 = getelementptr %struct.nv50_ram, ptr %0, i32 0, i32 1, i32 23, i32 1, i32 1
  store i8 1, ptr %573, align 4
  %574 = load i32, ptr %453, align 4
  call fastcc void @hwsq_wr32(ptr noundef %15, ptr noundef %432, i32 noundef %574)
  %575 = getelementptr inbounds %struct.nv50_ram, ptr %0, i32 0, i32 1, i32 23, i32 0, i32 1
  store i8 1, ptr %575, align 4
  %576 = load i32, ptr %431, align 4
  call fastcc void @hwsq_wr32(ptr noundef %15, ptr noundef %411, i32 noundef %576)
  br label %577

577:                                              ; preds = %572, %570, %561
  %578 = getelementptr inbounds %struct.nv50_ram, ptr %0, i32 0, i32 1, i32 22
  %579 = getelementptr %struct.nv50_ram, ptr %0, i32 0, i32 1, i32 22, i32 3
  call fastcc void @hwsq_mask(ptr noundef %15, ptr noundef %579, i32 noundef -1, i32 noundef %398)
  %580 = getelementptr %struct.nv50_ram, ptr %0, i32 0, i32 1, i32 22, i32 1
  call fastcc void @hwsq_mask(ptr noundef %15, ptr noundef %580, i32 noundef -1, i32 noundef %396)
  %581 = getelementptr %struct.nv50_ram, ptr %0, i32 0, i32 1, i32 22, i32 6
  call fastcc void @hwsq_mask(ptr noundef %15, ptr noundef %581, i32 noundef -1, i32 noundef %401)
  %582 = getelementptr %struct.nv50_ram, ptr %0, i32 0, i32 1, i32 22, i32 7
  call fastcc void @hwsq_mask(ptr noundef %15, ptr noundef %582, i32 noundef -1, i32 noundef %402)
  %583 = getelementptr %struct.nv50_ram, ptr %0, i32 0, i32 1, i32 22, i32 8
  call fastcc void @hwsq_mask(ptr noundef %15, ptr noundef %583, i32 noundef -1, i32 noundef %403)
  call fastcc void @hwsq_mask(ptr noundef %15, ptr noundef %578, i32 noundef -1, i32 noundef %395)
  %584 = getelementptr %struct.nv50_ram, ptr %0, i32 0, i32 1, i32 22, i32 2
  call fastcc void @hwsq_mask(ptr noundef %15, ptr noundef %584, i32 noundef -1, i32 noundef %397)
  %585 = getelementptr %struct.nv50_ram, ptr %0, i32 0, i32 1, i32 22, i32 4
  call fastcc void @hwsq_mask(ptr noundef %15, ptr noundef %585, i32 noundef -1, i32 noundef %399)
  %586 = getelementptr %struct.nv50_ram, ptr %0, i32 0, i32 1, i32 22, i32 5
  call fastcc void @hwsq_mask(ptr noundef %15, ptr noundef %586, i32 noundef -1, i32 noundef %400)
  %587 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 16, i32 1, i32 11
  %588 = load i32, ptr %587, align 4
  %589 = and i32 %588, 2
  %590 = icmp eq i32 %589, 0
  br i1 %590, label %591, label %594

591:                                              ; preds = %577
  %592 = getelementptr inbounds %struct.nv50_ram, ptr %0, i32 0, i32 1, i32 7
  call fastcc void @hwsq_mask(ptr noundef %15, ptr noundef %592, i32 noundef 65536, i32 noundef 0)
  %593 = load i32, ptr %587, align 4
  br label %594

594:                                              ; preds = %591, %577
  %595 = phi i32 [ %593, %591 ], [ %588, %577 ]
  %596 = shl i32 %595, 8
  %597 = and i32 %596, 4096
  %598 = xor i32 %597, 4096
  call fastcc void @hwsq_mask(ptr noundef %15, ptr noundef %503, i32 noundef 4096, i32 noundef %598)
  %599 = getelementptr inbounds %struct.nv50_ram, ptr %0, i32 0, i32 1, i32 14
  %600 = load i32, ptr %599, align 4
  %601 = load i32, ptr %408, align 4
  %602 = icmp eq i32 %600, %601
  br i1 %602, label %603, label %606

603:                                              ; preds = %594
  %604 = getelementptr inbounds %struct.nv50_ram, ptr %0, i32 0, i32 1, i32 14, i32 5
  %605 = load i32, ptr %604, align 4
  br label %618

606:                                              ; preds = %594
  %607 = load ptr, ptr %15, align 4
  %608 = getelementptr inbounds %struct.nvkm_subdev, ptr %607, i32 0, i32 1
  %609 = load ptr, ptr %608, align 4
  %610 = getelementptr inbounds %struct.nvkm_device, ptr %609, i32 0, i32 11
  %611 = load ptr, ptr %610, align 4
  %612 = getelementptr inbounds %struct.nv50_ram, ptr %0, i32 0, i32 1, i32 14, i32 2
  %613 = load i32, ptr %612, align 4
  %614 = getelementptr i8, ptr %611, i32 %613
  %615 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %614) #8, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %616 = getelementptr inbounds %struct.nv50_ram, ptr %0, i32 0, i32 1, i32 14, i32 5
  store i32 %615, ptr %616, align 4
  %617 = load i32, ptr %408, align 4
  br label %618

618:                                              ; preds = %606, %603
  %619 = phi i32 [ %600, %603 ], [ %617, %606 ]
  %620 = phi i32 [ %605, %603 ], [ %615, %606 ]
  %621 = getelementptr inbounds %struct.nv50_ram, ptr %0, i32 0, i32 1, i32 15
  %622 = load i32, ptr %621, align 4
  %623 = icmp eq i32 %622, %619
  br i1 %623, label %624, label %627

624:                                              ; preds = %618
  %625 = getelementptr inbounds %struct.nv50_ram, ptr %0, i32 0, i32 1, i32 15, i32 5
  %626 = load i32, ptr %625, align 4
  br label %639

627:                                              ; preds = %618
  %628 = load ptr, ptr %15, align 4
  %629 = getelementptr inbounds %struct.nvkm_subdev, ptr %628, i32 0, i32 1
  %630 = load ptr, ptr %629, align 4
  %631 = getelementptr inbounds %struct.nvkm_device, ptr %630, i32 0, i32 11
  %632 = load ptr, ptr %631, align 4
  %633 = getelementptr inbounds %struct.nv50_ram, ptr %0, i32 0, i32 1, i32 15, i32 2
  %634 = load i32, ptr %633, align 4
  %635 = getelementptr i8, ptr %632, i32 %634
  %636 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %635) #8, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %637 = getelementptr inbounds %struct.nv50_ram, ptr %0, i32 0, i32 1, i32 15, i32 5
  store i32 %636, ptr %637, align 4
  %638 = load i32, ptr %408, align 4
  br label %639

639:                                              ; preds = %627, %624
  %640 = phi i32 [ %619, %624 ], [ %638, %627 ]
  %641 = phi i32 [ %626, %624 ], [ %636, %627 ]
  %642 = and i32 %641, 268435423
  %643 = getelementptr inbounds %struct.nv50_ram, ptr %0, i32 0, i32 1, i32 16
  %644 = load i32, ptr %643, align 4
  %645 = icmp eq i32 %644, %640
  br i1 %645, label %646, label %649

646:                                              ; preds = %639
  %647 = getelementptr inbounds %struct.nv50_ram, ptr %0, i32 0, i32 1, i32 16, i32 5
  %648 = load i32, ptr %647, align 4
  br label %661

649:                                              ; preds = %639
  %650 = load ptr, ptr %15, align 4
  %651 = getelementptr inbounds %struct.nvkm_subdev, ptr %650, i32 0, i32 1
  %652 = load ptr, ptr %651, align 4
  %653 = getelementptr inbounds %struct.nvkm_device, ptr %652, i32 0, i32 11
  %654 = load ptr, ptr %653, align 4
  %655 = getelementptr inbounds %struct.nv50_ram, ptr %0, i32 0, i32 1, i32 16, i32 2
  %656 = load i32, ptr %655, align 4
  %657 = getelementptr i8, ptr %654, i32 %656
  %658 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %657) #8, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %659 = getelementptr inbounds %struct.nv50_ram, ptr %0, i32 0, i32 1, i32 16, i32 5
  store i32 %658, ptr %659, align 4
  %660 = load i32, ptr %408, align 4
  br label %661

661:                                              ; preds = %649, %646
  %662 = phi i32 [ %640, %646 ], [ %660, %649 ]
  %663 = phi i32 [ %648, %646 ], [ %658, %649 ]
  %664 = and i32 %663, -257
  %665 = getelementptr inbounds %struct.nv50_ram, ptr %0, i32 0, i32 1, i32 17
  %666 = load i32, ptr %665, align 4
  %667 = icmp eq i32 %666, %662
  br i1 %667, label %668, label %671

668:                                              ; preds = %661
  %669 = getelementptr inbounds %struct.nv50_ram, ptr %0, i32 0, i32 1, i32 17, i32 5
  %670 = load i32, ptr %669, align 4
  br label %682

671:                                              ; preds = %661
  %672 = load ptr, ptr %15, align 4
  %673 = getelementptr inbounds %struct.nvkm_subdev, ptr %672, i32 0, i32 1
  %674 = load ptr, ptr %673, align 4
  %675 = getelementptr inbounds %struct.nvkm_device, ptr %674, i32 0, i32 11
  %676 = load ptr, ptr %675, align 4
  %677 = getelementptr inbounds %struct.nv50_ram, ptr %0, i32 0, i32 1, i32 17, i32 2
  %678 = load i32, ptr %677, align 4
  %679 = getelementptr i8, ptr %676, i32 %678
  %680 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %679) #8, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %681 = getelementptr inbounds %struct.nv50_ram, ptr %0, i32 0, i32 1, i32 17, i32 5
  store i32 %680, ptr %681, align 4
  br label %682

682:                                              ; preds = %671, %668
  %683 = phi i32 [ %670, %668 ], [ %680, %671 ]
  %684 = and i32 %683, -257
  %685 = load ptr, ptr %19, align 4
  %686 = getelementptr inbounds %struct.nvkm_device, ptr %685, i32 0, i32 16
  %687 = load i32, ptr %686, align 4
  %688 = icmp ult i32 %687, 151
  br i1 %688, label %689, label %705

689:                                              ; preds = %682
  %690 = and i32 %620, -367
  %691 = and i32 %641, 268435167
  %692 = load i32, ptr %587, align 4
  %693 = and i32 %692, 4
  %694 = icmp eq i32 %693, 0
  %695 = or i32 %690, 96
  %696 = select i1 %694, i32 %695, i32 %690
  %697 = load i32, ptr %562, align 4
  %698 = icmp eq i32 %697, 0
  %699 = or i32 %691, 256
  %700 = select i1 %698, i32 %699, i32 %691
  %701 = and i32 %692, 32
  %702 = icmp eq i32 %701, 0
  %703 = or i32 %696, 14
  %704 = select i1 %702, i32 %696, i32 %703
  br label %713

705:                                              ; preds = %682
  %706 = and i32 %620, -258
  %707 = load i32, ptr %587, align 4
  %708 = lshr i32 %707, 2
  %709 = and i32 %708, 1
  %710 = or i32 %709, %706
  %711 = xor i32 %710, 1
  %712 = and i32 %707, 32
  br label %713

713:                                              ; preds = %705, %689
  %714 = phi i32 [ %701, %689 ], [ %712, %705 ]
  %715 = phi i32 [ %692, %689 ], [ %707, %705 ]
  %716 = phi i32 [ %704, %689 ], [ %711, %705 ]
  %717 = phi i32 [ %700, %689 ], [ %642, %705 ]
  %718 = shl i32 %715, 8
  %719 = and i32 %718, 256
  %720 = or i32 %719, %684
  %721 = shl i32 %715, 7
  %722 = and i32 %721, 256
  %723 = or i32 %722, %716
  %724 = shl i32 %715, 3
  %725 = and i32 %724, 32
  %726 = xor i32 %725, 32
  %727 = or i32 %726, %717
  %728 = icmp eq i32 %714, 0
  %729 = or i32 %727, 1879048192
  %730 = select i1 %728, i32 %727, i32 %729
  %731 = shl i32 %715, 2
  %732 = and i32 %731, 256
  %733 = or i32 %732, %664
  call fastcc void @hwsq_mask(ptr noundef %15, ptr noundef %621, i32 noundef -1, i32 noundef %730)
  call fastcc void @hwsq_mask(ptr noundef %15, ptr noundef %665, i32 noundef -1, i32 noundef %720)
  call fastcc void @hwsq_mask(ptr noundef %15, ptr noundef %643, i32 noundef -1, i32 noundef %733)
  call fastcc void @hwsq_mask(ptr noundef %15, ptr noundef %599, i32 noundef -1, i32 noundef %723)
  %734 = load i8, ptr %542, align 4
  %735 = and i8 %734, 1
  %736 = icmp eq i8 %735, 0
  br i1 %736, label %746, label %737

737:                                              ; preds = %713
  %738 = getelementptr inbounds %struct.nv50_ram, ptr %0, i32 0, i32 1, i32 12
  %739 = load i32, ptr %587, align 4
  %740 = lshr i32 %739, 7
  %741 = and i32 %740, 16777215
  call fastcc void @hwsq_wr32(ptr noundef %15, ptr noundef %738, i32 noundef %741)
  %742 = getelementptr inbounds %struct.nv50_ram, ptr %0, i32 0, i32 1, i32 13
  %743 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 16, i32 1, i32 11, i32 0, i32 1
  %744 = load i32, ptr %743, align 4
  %745 = and i32 %744, 65535
  call fastcc void @hwsq_wr32(ptr noundef %15, ptr noundef %742, i32 noundef %745)
  br label %746

746:                                              ; preds = %737, %713
  %747 = phi i32 [ 0, %737 ], [ 4096, %713 ]
  %748 = getelementptr inbounds %struct.nv50_ram, ptr %0, i32 0, i32 1, i32 11
  call fastcc void @hwsq_mask(ptr noundef %15, ptr noundef %748, i32 noundef 4096, i32 noundef %747)
  %749 = load i32, ptr %453, align 4
  call fastcc void @hwsq_mask(ptr noundef %15, ptr noundef %432, i32 noundef -1, i32 noundef %749)
  %750 = load i96, ptr %511, align 4
  %751 = and i96 %750, 2166395068749415481073467392
  %752 = icmp eq i96 %751, 0
  br i1 %752, label %753, label %754

753:                                              ; preds = %746
  call fastcc void @nv50_ram_gpio(ptr noundef %15, i8 noundef zeroext 46, i32 noundef 0)
  br label %754

754:                                              ; preds = %753, %746
  %755 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 16, i32 1, i32 8
  %756 = load i32, ptr %755, align 4
  %757 = icmp eq i32 %756, 0
  br i1 %757, label %758, label %759

758:                                              ; preds = %754
  call fastcc void @nvkm_sddr2_dll_reset(ptr noundef %15)
  br label %759

759:                                              ; preds = %758, %754
  %760 = load ptr, ptr %404, align 4
  call void @nvkm_hwsq_setf(ptr noundef %760, i8 noundef zeroext 16, i32 noundef 1) #8
  %761 = load ptr, ptr %404, align 4
  call void @nvkm_hwsq_wait(ptr noundef %761, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  call fastcc void @hwsq_wr32(ptr noundef %15, ptr noundef %505, i32 noundef 13104)
  call fastcc void @hwsq_wr32(ptr noundef %15, ptr noundef %506, i32 noundef 0)
  %762 = load i8, ptr %542, align 4
  %763 = and i8 %762, 4
  %764 = icmp eq i8 %763, 0
  br i1 %764, label %767, label %765

765:                                              ; preds = %759
  call fastcc void @hwsq_mask(ptr noundef %15, ptr noundef %503, i32 noundef 2048, i32 noundef 2048)
  %766 = load i8, ptr %542, align 4
  br label %767

767:                                              ; preds = %765, %759
  %768 = phi i8 [ %766, %765 ], [ %762, %759 ]
  %769 = and i8 %768, 2
  %770 = icmp eq i8 %769, 0
  br i1 %770, label %771, label %772

771:                                              ; preds = %767
  call fastcc void @hwsq_mask(ptr noundef %15, ptr noundef %541, i32 noundef 16384, i32 noundef 0)
  br label %772

772:                                              ; preds = %771, %767
  %773 = load i32, ptr %587, align 4
  %774 = and i32 %773, 2
  %775 = icmp eq i32 %774, 0
  br i1 %775, label %778, label %776

776:                                              ; preds = %772
  %777 = getelementptr inbounds %struct.nv50_ram, ptr %0, i32 0, i32 1, i32 7
  call fastcc void @hwsq_mask(ptr noundef %15, ptr noundef %777, i32 noundef 65536, i32 noundef 65536)
  br label %778

778:                                              ; preds = %776, %772
  %779 = load ptr, ptr %19, align 4
  %780 = getelementptr inbounds %struct.nvkm_device, ptr %779, i32 0, i32 16
  %781 = load i32, ptr %780, align 4
  %782 = icmp ult i32 %781, 151
  br i1 %782, label %783, label %788

783:                                              ; preds = %778
  %784 = load i32, ptr %587, align 4
  %785 = and i32 %784, 2
  %786 = icmp eq i32 %785, 0
  br i1 %786, label %788, label %787

787:                                              ; preds = %783
  call fastcc void @hwsq_mask(ptr noundef %15, ptr noundef %599, i32 noundef 512, i32 noundef 512)
  br label %788

788:                                              ; preds = %787, %783, %778, %524, %516, %485, %480, %394, %104, %100, %80, %76, %64, %60, %43, %39
  %789 = phi i32 [ -22, %43 ], [ -22, %39 ], [ -22, %64 ], [ -22, %60 ], [ -22, %80 ], [ -22, %76 ], [ -22, %104 ], [ -22, %100 ], [ %481, %485 ], [ %481, %480 ], [ 0, %787 ], [ 0, %783 ], [ 0, %778 ], [ %405, %394 ], [ %521, %516 ], [ -22, %524 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #8
  ret i32 %789
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_ram_prog(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_fb, ptr %3, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nv50_ram, ptr %0, i32 0, i32 1
  %7 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = tail call zeroext i1 @nvkm_boolopt(ptr noundef %8, ptr noundef nonnull @.str.11, i1 noundef zeroext true) #8
  %10 = load ptr, ptr %6, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.nv50_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %14 = tail call i32 @nvkm_hwsq_fini(ptr noundef %13, i1 noundef zeroext %9) #8
  store ptr null, ptr %6, align 4
  br label %15

15:                                               ; preds = %12, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv50_ram_tidy(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nv50_ram, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nv50_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %7 = tail call i32 @nvkm_hwsq_fini(ptr noundef %6, i1 noundef zeroext false) #8
  store ptr null, ptr %2, align 4
  br label %8

8:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_perfEp(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_rammapEp_from_perf(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_ramcfg_index(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_rammapSp_from_perf(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_timingEp(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gddr3_calc(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @hwsq_mask(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #6 {
  %5 = load i32, ptr %1, align 4
  %6 = getelementptr inbounds %struct.hwsq, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.hwsq_reg, ptr %1, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  br label %23

12:                                               ; preds = %4
  %13 = load ptr, ptr %0, align 4
  %14 = getelementptr inbounds %struct.nvkm_subdev, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 11
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.hwsq_reg, ptr %1, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr i8, ptr %17, i32 %19
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %22 = getelementptr inbounds %struct.hwsq_reg, ptr %1, i32 0, i32 5
  store i32 %21, ptr %22, align 4
  br label %23

23:                                               ; preds = %12, %9
  %24 = phi i32 [ %11, %9 ], [ %21, %12 ]
  %25 = xor i32 %2, -1
  %26 = and i32 %24, %25
  %27 = or i32 %26, %3
  %28 = icmp eq i32 %24, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.hwsq_reg, ptr %1, i32 0, i32 1
  %31 = load i8, ptr %30, align 4, !range !11
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %58, label %33

33:                                               ; preds = %29, %23
  %34 = load i32, ptr %6, align 4
  store i32 %34, ptr %1, align 4
  %35 = getelementptr inbounds %struct.hwsq_reg, ptr %1, i32 0, i32 5
  store i32 %27, ptr %35, align 4
  %36 = getelementptr inbounds %struct.hwsq_reg, ptr %1, i32 0, i32 4
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %58, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.hwsq, ptr %0, i32 0, i32 1
  %41 = getelementptr inbounds %struct.hwsq_reg, ptr %1, i32 0, i32 2
  %42 = getelementptr inbounds %struct.hwsq_reg, ptr %1, i32 0, i32 3
  br label %43

43:                                               ; preds = %53, %39
  %44 = phi i32 [ 0, %39 ], [ %55, %53 ]
  %45 = phi i32 [ %37, %39 ], [ %56, %53 ]
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load ptr, ptr %40, align 4
  %50 = load i32, ptr %41, align 4
  %51 = add i32 %50, %44
  %52 = load i32, ptr %35, align 4
  tail call void @nvkm_hwsq_wr32(ptr noundef %49, i32 noundef %51, i32 noundef %52) #8
  br label %53

53:                                               ; preds = %48, %43
  %54 = load i32, ptr %42, align 4
  %55 = add i32 %54, %44
  %56 = lshr i32 %45, 1
  %57 = icmp ult i32 %45, 2
  br i1 %57, label %58, label %43

58:                                               ; preds = %53, %33, %29
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @hwsq_wr32(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.hwsq, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  store i32 %5, ptr %1, align 4
  %6 = getelementptr inbounds %struct.hwsq_reg, ptr %1, i32 0, i32 5
  store i32 %2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.hwsq_reg, ptr %1, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %29, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.hwsq, ptr %0, i32 0, i32 1
  %12 = getelementptr inbounds %struct.hwsq_reg, ptr %1, i32 0, i32 2
  %13 = getelementptr inbounds %struct.hwsq_reg, ptr %1, i32 0, i32 3
  br label %14

14:                                               ; preds = %24, %10
  %15 = phi i32 [ 0, %10 ], [ %26, %24 ]
  %16 = phi i32 [ %8, %10 ], [ %27, %24 ]
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load ptr, ptr %11, align 4
  %21 = load i32, ptr %12, align 4
  %22 = add i32 %21, %15
  %23 = load i32, ptr %6, align 4
  tail call void @nvkm_hwsq_wr32(ptr noundef %20, i32 noundef %22, i32 noundef %23) #8
  br label %24

24:                                               ; preds = %19, %14
  %25 = load i32, ptr %13, align 4
  %26 = add i32 %25, %15
  %27 = lshr i32 %16, 1
  %28 = icmp ult i32 %16, 2
  br i1 %28, label %29, label %14

29:                                               ; preds = %24, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nv50_ram_gpio(ptr nocapture noundef %0, i8 noundef zeroext %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.dcb_gpio_func, align 1
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.nvkm_subdev, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 25
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %4, i8 0, i32 5, i1 false), !annotation !10
  %10 = tail call i32 @nvkm_gpio_get(ptr noundef %9, i32 noundef 0, i8 noundef zeroext %1, i8 noundef zeroext -1) #8
  %11 = icmp eq i32 %10, %2
  br i1 %11, label %113, label %12

12:                                               ; preds = %3
  %13 = call i32 @nvkm_gpio_find(ptr noundef %9, i32 noundef 0, i8 noundef zeroext %1, i8 noundef zeroext -1, ptr noundef nonnull %4) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %113

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.dcb_gpio_func, ptr %4, i32 0, i32 1
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = lshr i32 %18, 3
  %20 = shl nuw nsw i32 %18, 2
  %21 = and i32 %20, 28
  %22 = getelementptr %struct.nv50_ramseq, ptr %0, i32 0, i32 24, i32 %19
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.hwsq, ptr %0, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %15
  %28 = getelementptr %struct.nv50_ramseq, ptr %0, i32 0, i32 24, i32 %19, i32 5
  %29 = load i32, ptr %28, align 4
  br label %43

30:                                               ; preds = %15
  %31 = load ptr, ptr %0, align 4
  %32 = getelementptr inbounds %struct.nvkm_subdev, ptr %31, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.nvkm_device, ptr %33, i32 0, i32 11
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr %struct.nv50_ramseq, ptr %0, i32 0, i32 24, i32 %19, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr i8, ptr %35, i32 %37
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #8, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %40 = getelementptr %struct.nv50_ramseq, ptr %0, i32 0, i32 24, i32 %19, i32 5
  store i32 %39, ptr %40, align 4
  %41 = load i32, ptr %22, align 4
  %42 = load i32, ptr %24, align 4
  br label %43

43:                                               ; preds = %30, %27
  %44 = phi i32 [ %23, %27 ], [ %42, %30 ]
  %45 = phi i32 [ %23, %27 ], [ %41, %30 ]
  %46 = phi i32 [ %29, %27 ], [ %39, %30 ]
  %47 = shl nuw i32 8, %21
  %48 = and i32 %46, %47
  %49 = icmp eq i32 %48, 0
  %50 = icmp eq i32 %2, 0
  %51 = zext i1 %50 to i32
  %52 = select i1 %49, i32 %2, i32 %51
  %53 = getelementptr inbounds %struct.dcb_gpio_func, ptr %4, i32 0, i32 2, i32 1
  %54 = load i8, ptr %53, align 1
  %55 = and i8 %54, 1
  %56 = icmp eq i8 %55, 0
  %57 = icmp eq i32 %52, 0
  %58 = zext i1 %57 to i32
  %59 = select i1 %56, i32 %58, i32 %52
  %60 = shl nuw nsw i32 3, %21
  %61 = or i32 %59, 2
  %62 = shl i32 %61, %21
  %63 = icmp eq i32 %45, %44
  br i1 %63, label %75, label %64

64:                                               ; preds = %43
  %65 = load ptr, ptr %0, align 4
  %66 = getelementptr inbounds %struct.nvkm_subdev, ptr %65, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.nvkm_device, ptr %67, i32 0, i32 11
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr %struct.nv50_ramseq, ptr %0, i32 0, i32 24, i32 %19, i32 2
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr i8, ptr %69, i32 %71
  %73 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #8, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %74 = getelementptr %struct.nv50_ramseq, ptr %0, i32 0, i32 24, i32 %19, i32 5
  store i32 %73, ptr %74, align 4
  br label %75

75:                                               ; preds = %64, %43
  %76 = phi i32 [ %73, %64 ], [ %46, %43 ]
  %77 = xor i32 %60, -1
  %78 = and i32 %76, %77
  %79 = or i32 %78, %62
  %80 = icmp eq i32 %76, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = getelementptr %struct.nv50_ramseq, ptr %0, i32 0, i32 24, i32 %19, i32 1
  %83 = load i8, ptr %82, align 4, !range !11
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %110, label %85

85:                                               ; preds = %81, %75
  %86 = load i32, ptr %24, align 4
  store i32 %86, ptr %22, align 4
  %87 = getelementptr %struct.nv50_ramseq, ptr %0, i32 0, i32 24, i32 %19, i32 5
  store i32 %79, ptr %87, align 4
  %88 = getelementptr %struct.nv50_ramseq, ptr %0, i32 0, i32 24, i32 %19, i32 4
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %110, label %91

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.hwsq, ptr %0, i32 0, i32 1
  %93 = getelementptr %struct.nv50_ramseq, ptr %0, i32 0, i32 24, i32 %19, i32 2
  %94 = getelementptr %struct.nv50_ramseq, ptr %0, i32 0, i32 24, i32 %19, i32 3
  br label %95

95:                                               ; preds = %105, %91
  %96 = phi i32 [ 0, %91 ], [ %107, %105 ]
  %97 = phi i32 [ %89, %91 ], [ %108, %105 ]
  %98 = and i32 %97, 1
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %95
  %101 = load ptr, ptr %92, align 4
  %102 = load i32, ptr %93, align 4
  %103 = add i32 %102, %96
  %104 = load i32, ptr %87, align 4
  call void @nvkm_hwsq_wr32(ptr noundef %101, i32 noundef %103, i32 noundef %104) #8
  br label %105

105:                                              ; preds = %100, %95
  %106 = load i32, ptr %94, align 4
  %107 = add i32 %106, %96
  %108 = lshr i32 %97, 1
  %109 = icmp ult i32 %97, 2
  br i1 %109, label %110, label %95

110:                                              ; preds = %105, %85, %81
  %111 = getelementptr inbounds %struct.hwsq, ptr %0, i32 0, i32 1
  %112 = load ptr, ptr %111, align 4
  call void @nvkm_hwsq_nsec(ptr noundef %112, i32 noundef 20000) #8
  br label %113

113:                                              ; preds = %110, %12, %3
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %4) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_pll_parse(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_pll_calc(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nvkm_sddr2_dll_reset(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nv50_ramseq, ptr %0, i32 0, i32 23
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.hwsq, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %3, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.nv50_ramseq, ptr %0, i32 0, i32 23, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  br label %21

10:                                               ; preds = %1
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr inbounds %struct.nvkm_subdev, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nvkm_device, ptr %13, i32 0, i32 11
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nv50_ramseq, ptr %0, i32 0, i32 23, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr i8, ptr %15, i32 %17
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %20 = getelementptr inbounds %struct.nv50_ramseq, ptr %0, i32 0, i32 23, i32 0, i32 5
  store i32 %19, ptr %20, align 4
  br label %21

21:                                               ; preds = %10, %7
  %22 = phi i32 [ %9, %7 ], [ %19, %10 ]
  %23 = or i32 %22, 256
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.nv50_ramseq, ptr %0, i32 0, i32 23, i32 0, i32 1
  %27 = load i8, ptr %26, align 4, !range !11
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %54, label %29

29:                                               ; preds = %25, %21
  %30 = load i32, ptr %4, align 4
  store i32 %30, ptr %2, align 4
  %31 = getelementptr inbounds %struct.nv50_ramseq, ptr %0, i32 0, i32 23, i32 0, i32 5
  store i32 %23, ptr %31, align 4
  %32 = getelementptr inbounds %struct.nv50_ramseq, ptr %0, i32 0, i32 23, i32 0, i32 4
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %54, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.hwsq, ptr %0, i32 0, i32 1
  %37 = getelementptr inbounds %struct.nv50_ramseq, ptr %0, i32 0, i32 23, i32 0, i32 2
  %38 = getelementptr inbounds %struct.nv50_ramseq, ptr %0, i32 0, i32 23, i32 0, i32 3
  br label %39

39:                                               ; preds = %49, %35
  %40 = phi i32 [ 0, %35 ], [ %51, %49 ]
  %41 = phi i32 [ %33, %35 ], [ %52, %49 ]
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = load ptr, ptr %36, align 4
  %46 = load i32, ptr %37, align 4
  %47 = add i32 %46, %40
  %48 = load i32, ptr %31, align 4
  tail call void @nvkm_hwsq_wr32(ptr noundef %45, i32 noundef %47, i32 noundef %48) #8
  br label %49

49:                                               ; preds = %44, %39
  %50 = load i32, ptr %38, align 4
  %51 = add i32 %50, %40
  %52 = lshr i32 %41, 1
  %53 = icmp ult i32 %41, 2
  br i1 %53, label %54, label %39

54:                                               ; preds = %49, %29, %25
  %55 = load i32, ptr %2, align 4
  %56 = load i32, ptr %4, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.nv50_ramseq, ptr %0, i32 0, i32 23, i32 0, i32 5
  %60 = load i32, ptr %59, align 4
  br label %72

61:                                               ; preds = %54
  %62 = load ptr, ptr %0, align 4
  %63 = getelementptr inbounds %struct.nvkm_subdev, ptr %62, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.nvkm_device, ptr %64, i32 0, i32 11
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.nv50_ramseq, ptr %0, i32 0, i32 23, i32 0, i32 2
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr i8, ptr %66, i32 %68
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %71 = getelementptr inbounds %struct.nv50_ramseq, ptr %0, i32 0, i32 23, i32 0, i32 5
  store i32 %70, ptr %71, align 4
  br label %72

72:                                               ; preds = %61, %58
  %73 = phi i32 [ %60, %58 ], [ %70, %61 ]
  %74 = and i32 %73, -257
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.nv50_ramseq, ptr %0, i32 0, i32 23, i32 0, i32 1
  %78 = load i8, ptr %77, align 4, !range !11
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %105, label %80

80:                                               ; preds = %76, %72
  %81 = load i32, ptr %4, align 4
  store i32 %81, ptr %2, align 4
  %82 = getelementptr inbounds %struct.nv50_ramseq, ptr %0, i32 0, i32 23, i32 0, i32 5
  store i32 %74, ptr %82, align 4
  %83 = getelementptr inbounds %struct.nv50_ramseq, ptr %0, i32 0, i32 23, i32 0, i32 4
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %105, label %86

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.hwsq, ptr %0, i32 0, i32 1
  %88 = getelementptr inbounds %struct.nv50_ramseq, ptr %0, i32 0, i32 23, i32 0, i32 2
  %89 = getelementptr inbounds %struct.nv50_ramseq, ptr %0, i32 0, i32 23, i32 0, i32 3
  br label %90

90:                                               ; preds = %100, %86
  %91 = phi i32 [ 0, %86 ], [ %102, %100 ]
  %92 = phi i32 [ %84, %86 ], [ %103, %100 ]
  %93 = and i32 %92, 1
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %90
  %96 = load ptr, ptr %87, align 4
  %97 = load i32, ptr %88, align 4
  %98 = add i32 %97, %91
  %99 = load i32, ptr %82, align 4
  tail call void @nvkm_hwsq_wr32(ptr noundef %96, i32 noundef %98, i32 noundef %99) #8
  br label %100

100:                                              ; preds = %95, %90
  %101 = load i32, ptr %89, align 4
  %102 = add i32 %101, %91
  %103 = lshr i32 %92, 1
  %104 = icmp ult i32 %92, 2
  br i1 %104, label %105, label %90

105:                                              ; preds = %100, %80, %76
  %106 = getelementptr inbounds %struct.hwsq, ptr %0, i32 0, i32 1
  %107 = load ptr, ptr %106, align 4
  tail call void @nvkm_hwsq_nsec(ptr noundef %107, i32 noundef 24000) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_hwsq_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_hwsq_wait_vblank(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_hwsq_wr32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_hwsq_nsec(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_hwsq_setf(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_hwsq_wait(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpio_get(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpio_find(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvkm_boolopt(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_hwsq_fini(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

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
!8 = !{i64 3966832}
!9 = !{i64 2151506285}
!10 = !{!"auto-init"}
!11 = !{i8 0, i8 2}
