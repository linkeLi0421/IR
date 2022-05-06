; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramgf100.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramgf100.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_ram_func = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvbios_ramcfg = type <{ i32, i32, i32, i32, %union.anon.143, i32, i32, i32, i32, i32, i32, %union.anon.147, i32, i32, [11 x i32], %union.anon.151 }>
%union.anon.143 = type { %struct.anon.146 }
%struct.anon.146 = type { i64 }
%union.anon.147 = type { %struct.anon.150 }
%struct.anon.150 = type { i32, i32, i8 }
%union.anon.151 = type <{ %struct.anon.153, [12 x i8] }>
%struct.anon.153 = type { i48 }
%struct.anon.160 = type { i32, i8 }
%struct.gf100_ram = type { %struct.nvkm_ram, %struct.gf100_ramfuc, %struct.nvbios_pll, %struct.nvbios_pll }
%struct.nvkm_ram = type { ptr, ptr, i32, i64, %struct.nvkm_mm, i64, %struct.mutex, i32, i32, i32, i32, [16 x i32], i32, ptr, %struct.nvkm_ram_data, %struct.nvkm_ram_data, %struct.nvkm_ram_data }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_ram_data = type { %struct.list_head, %struct.nvbios_ramcfg, i32 }
%struct.gf100_ramfuc = type { %struct.ramfuc, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg, %struct.ramfuc_reg }
%struct.ramfuc = type { ptr, ptr, i32 }
%struct.ramfuc_reg = type { i32, i8, i32, i32, i32, i32 }
%struct.nvbios_pll = type { i32, i32, i32, i8, i8, i8, i8, %struct.anon.111, %struct.anon.111 }
%struct.anon.111 = type { i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.nvkm_fb = type { ptr, %struct.nvkm_subdev, %struct.nvkm_blob, ptr, %struct.anon.87, %struct.anon.88, i8, ptr, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.87 = type { %struct.mutex, %struct.nvkm_mm }
%struct.anon.88 = type { [16 x %struct.nvkm_fb_tile], i32 }
%struct.nvkm_fb_tile = type { ptr, i32, i32, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.142, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.142 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }

@.str = private unnamed_addr constant [34 x i8] c"%s: invalid/missing rammap entry\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"%s: invalid ramcfg strap\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"%s: invalid/missing ramcfg entry\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"%s: invalid/missing timing entry\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"%s: unable to calc refpll\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"NvMemExec\00", align 1
@gf100_ram_init.train0 = internal unnamed_addr constant [12 x i8] c"\00\FFU\AA3\CC\00\FF\FF\00\FF\00", align 1
@gf100_ram_init.train1 = internal unnamed_addr constant [12 x i32] [i32 0, i32 -1, i32 1431655765, i32 -1431655766, i32 858993459, i32 -858993460, i32 -252645136, i32 252645135, i32 16711935, i32 -16711936, i32 65535, i32 -65536], align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"%s: %d FBP(s)\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"%s: FBP %d: %4d MiB, %d LTC(s)\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"%s: FBP %d: disabled\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"%s: Lower: %4lld MiB @ %010llx\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"%s: Upper: %4lld MiB @ %010llx\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"%s: Total: %4lld MiB\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"%s: mclk refpll data not found\0A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"%s: mclk pll data not found\0A\00", align 1
@gf100_ram = internal constant %struct.nvkm_ram_func { i64 8589934592, ptr @gf100_ram_probe_fbp, ptr @gf100_ram_probe_fbp_amount, ptr @gf100_ram_probe_fbpa_amount, ptr null, ptr @gf100_ram_init, ptr @gf100_ram_calc, ptr @gf100_ram_prog, ptr @gf100_ram_tidy }, align 8
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gf100_ram_calc(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.nvbios_ramcfg, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca %struct.anon.160, align 8
  %8 = alloca %struct.anon.160, align 8
  %9 = alloca %struct.anon.160, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1
  %14 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nvkm_fb, ptr %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.nvkm_fb, ptr %15, i32 0, i32 1, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nvkm_device, ptr %18, i32 0, i32 43
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.nvkm_device, ptr %18, i32 0, i32 21
  %22 = load ptr, ptr %21, align 8
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(132) %3, i8 0, i32 132, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #10
  store i8 0, ptr %5, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #10
  store i8 0, ptr %6, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10
  store i64 0, ptr %7, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #10
  store i64 0, ptr %8, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #10
  store i64 0, ptr %9, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #10
  store i32 0, ptr %10, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #10
  store i32 0, ptr %11, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #10
  store i32 0, ptr %12, align 4, !annotation !8
  %23 = udiv i32 %1, 1000
  %24 = trunc i32 %23 to i16
  %25 = getelementptr inbounds %struct.anon.160, ptr %7, i32 0, i32 1
  %26 = getelementptr inbounds %struct.anon.160, ptr %8, i32 0, i32 1
  %27 = call i32 @nvbios_rammapEm(ptr noundef %22, i16 noundef zeroext %24, ptr noundef nonnull %4, ptr noundef %25, ptr noundef nonnull %5, ptr noundef %26, ptr noundef nonnull %3) #10
  store i32 %27, ptr %7, align 8
  %28 = icmp eq i32 %27, 0
  %29 = load i8, ptr %4, align 1
  %30 = icmp ne i8 %29, 16
  %31 = select i1 %28, i1 true, i1 %30
  %32 = load i8, ptr %25, align 4
  %33 = icmp ult i8 %32, 14
  %34 = select i1 %31, i1 true, i1 %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %2
  %36 = getelementptr inbounds %struct.nvkm_fb, ptr %15, i32 0, i32 1, i32 5
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %624, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %17, align 4
  %41 = getelementptr inbounds %struct.nvkm_device, ptr %40, i32 0, i32 2
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %struct.nvkm_fb, ptr %15, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str, ptr noundef %43) #11
  br label %624

44:                                               ; preds = %2
  %45 = call zeroext i8 @nvbios_ramcfg_index(ptr noundef %16) #10
  %46 = load i8, ptr %5, align 1
  %47 = icmp ult i8 %45, %46
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.nvkm_fb, ptr %15, i32 0, i32 1, i32 5
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %624, label %52

52:                                               ; preds = %48
  %53 = load ptr, ptr %17, align 4
  %54 = getelementptr inbounds %struct.nvkm_device, ptr %53, i32 0, i32 2
  %55 = load ptr, ptr %54, align 8
  %56 = getelementptr inbounds %struct.nvkm_fb, ptr %15, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.1, ptr noundef %56) #11
  br label %624

57:                                               ; preds = %44
  %58 = zext i8 %45 to i32
  %59 = load i32, ptr %7, align 8
  %60 = load i8, ptr %25, align 4
  %61 = zext i8 %60 to i32
  %62 = add i32 %59, %61
  %63 = load i8, ptr %26, align 4
  %64 = zext i8 %63 to i32
  %65 = mul nuw nsw i32 %64, %58
  %66 = add i32 %62, %65
  store i32 %66, ptr %8, align 8
  %67 = icmp eq i32 %66, 0
  %68 = load i8, ptr %4, align 1
  %69 = icmp ne i8 %68, 16
  %70 = select i1 %67, i1 true, i1 %69
  %71 = icmp ult i8 %63, 14
  %72 = select i1 %70, i1 true, i1 %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %57
  %74 = getelementptr inbounds %struct.nvkm_fb, ptr %15, i32 0, i32 1, i32 5
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %624, label %77

77:                                               ; preds = %73
  %78 = load ptr, ptr %17, align 4
  %79 = getelementptr inbounds %struct.nvkm_device, ptr %78, i32 0, i32 2
  %80 = load ptr, ptr %79, align 8
  %81 = getelementptr inbounds %struct.nvkm_fb, ptr %15, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull @.str.2, ptr noundef %81) #11
  br label %624

82:                                               ; preds = %57
  %83 = add i32 %66, 1
  %84 = call zeroext i8 @nvbios_rd08(ptr noundef %22, i32 noundef %83) #10
  %85 = icmp eq i8 %84, -1
  br i1 %85, label %106, label %86

86:                                               ; preds = %82
  %87 = zext i8 %84 to i32
  %88 = getelementptr inbounds %struct.anon.160, ptr %9, i32 0, i32 1
  %89 = call i32 @nvbios_timingEe(ptr noundef %22, i32 noundef %87, ptr noundef nonnull %4, ptr noundef %88, ptr noundef nonnull %5, ptr noundef nonnull %6) #10
  store i32 %89, ptr %9, align 8
  %90 = icmp eq i32 %89, 0
  %91 = load i8, ptr %4, align 1
  %92 = icmp ne i8 %91, 16
  %93 = select i1 %90, i1 true, i1 %92
  %94 = load i8, ptr %88, align 4
  %95 = icmp ult i8 %94, 25
  %96 = select i1 %93, i1 true, i1 %95
  br i1 %96, label %97, label %107

97:                                               ; preds = %86
  %98 = getelementptr inbounds %struct.nvkm_fb, ptr %15, i32 0, i32 1, i32 5
  %99 = load i32, ptr %98, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %624, label %101

101:                                              ; preds = %97
  %102 = load ptr, ptr %17, align 4
  %103 = getelementptr inbounds %struct.nvkm_device, ptr %102, i32 0, i32 2
  %104 = load ptr, ptr %103, align 8
  %105 = getelementptr inbounds %struct.nvkm_fb, ptr %15, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %104, ptr noundef nonnull @.str.3, ptr noundef %105) #11
  br label %624

106:                                              ; preds = %82
  store i32 0, ptr %9, align 8
  br label %107

107:                                              ; preds = %106, %86
  %108 = load ptr, ptr %14, align 4
  %109 = getelementptr inbounds %struct.nvkm_fb, ptr %108, i32 0, i32 1, i32 1
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.nvkm_device, ptr %110, i32 0, i32 39
  %112 = load ptr, ptr %111, align 8
  %113 = call i32 @nvkm_memx_init(ptr noundef %112, ptr noundef %13) #10
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %624

115:                                              ; preds = %107
  %116 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 0, i32 2
  %117 = load i32, ptr %116, align 4
  %118 = add i32 %117, 1
  store i32 %118, ptr %116, align 4
  %119 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  store ptr %108, ptr %119, align 4
  %120 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 46
  %121 = load i32, ptr %120, align 4
  %122 = icmp eq i32 %121, %118
  br i1 %122, label %123, label %126

123:                                              ; preds = %115
  %124 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 46, i32 5
  %125 = load i32, ptr %124, align 4
  br label %136

126:                                              ; preds = %115
  %127 = load ptr, ptr %109, align 4
  %128 = getelementptr inbounds %struct.nvkm_device, ptr %127, i32 0, i32 11
  %129 = load ptr, ptr %128, align 4
  %130 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 46, i32 2
  %131 = load i32, ptr %130, align 4
  %132 = getelementptr i8, ptr %129, i32 %131
  %133 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %132) #10, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  %134 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 46, i32 5
  store i32 %133, ptr %134, align 4
  %135 = load i32, ptr %116, align 4
  br label %136

136:                                              ; preds = %126, %123
  %137 = phi i32 [ %118, %123 ], [ %135, %126 ]
  %138 = phi i32 [ %125, %123 ], [ %133, %126 ]
  %139 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 42
  %140 = load i32, ptr %139, align 4
  %141 = icmp eq i32 %140, %137
  br i1 %141, label %142, label %145

142:                                              ; preds = %136
  %143 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 42, i32 5
  %144 = load i32, ptr %143, align 4
  br label %156

145:                                              ; preds = %136
  %146 = load ptr, ptr %119, align 4
  %147 = getelementptr inbounds %struct.nvkm_fb, ptr %146, i32 0, i32 1, i32 1
  %148 = load ptr, ptr %147, align 4
  %149 = getelementptr inbounds %struct.nvkm_device, ptr %148, i32 0, i32 11
  %150 = load ptr, ptr %149, align 4
  %151 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 42, i32 2
  %152 = load i32, ptr %151, align 4
  %153 = getelementptr i8, ptr %150, i32 %152
  %154 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %153) #10, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  %155 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 42, i32 5
  store i32 %154, ptr %155, align 4
  br label %156

156:                                              ; preds = %145, %142
  %157 = phi i32 [ %144, %142 ], [ %154, %145 ]
  %158 = and i32 %157, 256
  %159 = icmp eq i32 %158, 0
  %160 = select i1 %159, i32 9, i32 10
  %161 = call i32 @nvkm_clk_read(ptr noundef %20, i32 noundef %160) #10
  %162 = shl i32 %161, 1
  %163 = udiv i32 %162, %1
  %164 = call i32 @llvm.umin.i32(i32 %163, i32 65)
  %165 = call i32 @llvm.umax.i32(i32 %164, i32 2)
  %166 = sdiv i32 %162, %165
  %167 = icmp ne i32 %166, %1
  %168 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 44
  %169 = load i32, ptr %168, align 4
  %170 = load i32, ptr %116, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %175

172:                                              ; preds = %156
  %173 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 44, i32 5
  %174 = load i32, ptr %173, align 4
  br label %186

175:                                              ; preds = %156
  %176 = load ptr, ptr %119, align 4
  %177 = getelementptr inbounds %struct.nvkm_fb, ptr %176, i32 0, i32 1, i32 1
  %178 = load ptr, ptr %177, align 4
  %179 = getelementptr inbounds %struct.nvkm_device, ptr %178, i32 0, i32 11
  %180 = load ptr, ptr %179, align 4
  %181 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 44, i32 2
  %182 = load i32, ptr %181, align 4
  %183 = getelementptr i8, ptr %180, i32 %182
  %184 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %183) #10, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  %185 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 44, i32 5
  store i32 %184, ptr %185, align 4
  br label %186

186:                                              ; preds = %175, %172
  %187 = phi i32 [ %174, %172 ], [ %184, %175 ]
  %188 = and i32 %187, -3
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %190, label %194

190:                                              ; preds = %186
  %191 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 44, i32 1
  %192 = load i8, ptr %191, align 4, !range !11
  %193 = icmp eq i8 %192, 0
  br i1 %193, label %220, label %194

194:                                              ; preds = %190, %186
  %195 = load i32, ptr %116, align 4
  store i32 %195, ptr %168, align 4
  %196 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 44, i32 5
  store i32 %188, ptr %196, align 4
  %197 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 44, i32 4
  %198 = load i32, ptr %197, align 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %218, label %200

200:                                              ; preds = %194
  %201 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 44, i32 2
  %202 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 44, i32 3
  br label %203

203:                                              ; preds = %213, %200
  %204 = phi i32 [ 0, %200 ], [ %215, %213 ]
  %205 = phi i32 [ %198, %200 ], [ %216, %213 ]
  %206 = and i32 %205, 1
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %213, label %208

208:                                              ; preds = %203
  %209 = load ptr, ptr %13, align 4
  %210 = load i32, ptr %201, align 4
  %211 = add i32 %210, %204
  %212 = load i32, ptr %196, align 4
  call void @nvkm_memx_wr32(ptr noundef %209, i32 noundef %211, i32 noundef %212) #10
  br label %213

213:                                              ; preds = %208, %203
  %214 = load i32, ptr %202, align 4
  %215 = add i32 %214, %204
  %216 = lshr i32 %205, 1
  %217 = icmp ult i32 %205, 2
  br i1 %217, label %218, label %203

218:                                              ; preds = %213, %194
  %219 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 44, i32 1
  store i8 0, ptr %219, align 4
  br label %220

220:                                              ; preds = %218, %190
  %221 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 5
  %222 = load i32, ptr %221, align 4
  %223 = load i32, ptr %116, align 4
  %224 = icmp eq i32 %222, %223
  br i1 %224, label %225, label %228

225:                                              ; preds = %220
  %226 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 5, i32 5
  %227 = load i32, ptr %226, align 4
  br label %239

228:                                              ; preds = %220
  %229 = load ptr, ptr %119, align 4
  %230 = getelementptr inbounds %struct.nvkm_fb, ptr %229, i32 0, i32 1, i32 1
  %231 = load ptr, ptr %230, align 4
  %232 = getelementptr inbounds %struct.nvkm_device, ptr %231, i32 0, i32 11
  %233 = load ptr, ptr %232, align 4
  %234 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 5, i32 2
  %235 = load i32, ptr %234, align 4
  %236 = getelementptr i8, ptr %233, i32 %235
  %237 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %236) #10, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  %238 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 5, i32 5
  store i32 %237, ptr %238, align 4
  br label %239

239:                                              ; preds = %228, %225
  %240 = phi i32 [ %227, %225 ], [ %237, %228 ]
  %241 = and i32 %240, 2
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %245, label %243

243:                                              ; preds = %239
  %244 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 5, i32 1
  store i8 1, ptr %244, align 4
  call fastcc void @ramfuc_mask(ptr noundef %13, ptr noundef %221, i32 noundef 2, i32 noundef 2)
  call fastcc void @ramfuc_mask(ptr noundef %13, ptr noundef %221, i32 noundef 2, i32 noundef 0)
  br label %245

245:                                              ; preds = %243, %239
  br i1 %167, label %246, label %249

246:                                              ; preds = %245
  %247 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 1
  %248 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 1, i32 1
  store i8 1, ptr %248, align 4
  call fastcc void @ramfuc_mask(ptr noundef %13, ptr noundef %247, i32 noundef 2, i32 noundef 2)
  call fastcc void @ramfuc_mask(ptr noundef %13, ptr noundef %247, i32 noundef 2, i32 noundef 0)
  br label %249

249:                                              ; preds = %246, %245
  %250 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 7
  %251 = load i32, ptr %116, align 4
  store i32 %251, ptr %250, align 4
  %252 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 7, i32 5
  store i32 1, ptr %252, align 4
  %253 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 7, i32 4
  %254 = load i32, ptr %253, align 4
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %274, label %256

256:                                              ; preds = %249
  %257 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 7, i32 2
  %258 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 7, i32 3
  br label %259

259:                                              ; preds = %269, %256
  %260 = phi i32 [ 0, %256 ], [ %271, %269 ]
  %261 = phi i32 [ %254, %256 ], [ %272, %269 ]
  %262 = and i32 %261, 1
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %269, label %264

264:                                              ; preds = %259
  %265 = load ptr, ptr %13, align 4
  %266 = load i32, ptr %257, align 4
  %267 = add i32 %266, %260
  %268 = load i32, ptr %252, align 4
  call void @nvkm_memx_wr32(ptr noundef %265, i32 noundef %267, i32 noundef %268) #10
  br label %269

269:                                              ; preds = %264, %259
  %270 = load i32, ptr %258, align 4
  %271 = add i32 %270, %260
  %272 = lshr i32 %261, 1
  %273 = icmp ult i32 %261, 2
  br i1 %273, label %274, label %259

274:                                              ; preds = %269, %249
  %275 = and i32 %138, 2
  %276 = icmp eq i32 %275, 0
  %277 = select i1 %167, i1 %276, i1 false
  br i1 %277, label %278, label %334

278:                                              ; preds = %274
  %279 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 2
  %280 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 3, i32 2
  %281 = load i32, ptr %280, align 4
  %282 = call i32 @gt215_pll_calc(ptr noundef %16, ptr noundef %279, i32 noundef %281, ptr noundef nonnull %10, ptr noundef null, ptr noundef nonnull %11, ptr noundef nonnull %12) #10
  %283 = icmp slt i32 %282, 1
  br i1 %283, label %284, label %296

284:                                              ; preds = %278
  %285 = getelementptr inbounds %struct.nvkm_fb, ptr %15, i32 0, i32 1, i32 5
  %286 = load i32, ptr %285, align 4
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %293, label %288

288:                                              ; preds = %284
  %289 = load ptr, ptr %17, align 4
  %290 = getelementptr inbounds %struct.nvkm_device, ptr %289, i32 0, i32 2
  %291 = load ptr, ptr %290, align 8
  %292 = getelementptr inbounds %struct.nvkm_fb, ptr %15, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %291, ptr noundef nonnull @.str.4, ptr noundef %292) #11
  br label %293

293:                                              ; preds = %288, %284
  %294 = icmp eq i32 %282, 0
  %295 = select i1 %294, i32 -34, i32 %282
  br label %624

296:                                              ; preds = %278
  %297 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 3
  %298 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 1
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %298, i32 noundef 536936448)
  %299 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 3
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %299, i32 noundef 3)
  %300 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 4
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %300, i32 noundef -2128609274)
  %301 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 2
  %302 = load i32, ptr %12, align 4
  %303 = shl i32 %302, 16
  %304 = load i32, ptr %10, align 4
  %305 = shl i32 %304, 8
  %306 = or i32 %305, %303
  %307 = load i32, ptr %11, align 4
  %308 = or i32 %306, %307
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %301, i32 noundef %308)
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %298, i32 noundef 536936449)
  %309 = load ptr, ptr %13, align 4
  call void @nvkm_memx_wait(ptr noundef %309, i32 noundef 1274768, i32 noundef 131072, i32 noundef 131072, i32 noundef 64000) #10
  %310 = call i32 @gt215_pll_calc(ptr noundef %16, ptr noundef %297, i32 noundef %1, ptr noundef nonnull %10, ptr noundef null, ptr noundef nonnull %11, ptr noundef nonnull %12) #10
  %311 = icmp slt i32 %310, 1
  br i1 %311, label %312, label %324

312:                                              ; preds = %296
  %313 = getelementptr inbounds %struct.nvkm_fb, ptr %15, i32 0, i32 1, i32 5
  %314 = load i32, ptr %313, align 4
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %321, label %316

316:                                              ; preds = %312
  %317 = load ptr, ptr %17, align 4
  %318 = getelementptr inbounds %struct.nvkm_device, ptr %317, i32 0, i32 2
  %319 = load ptr, ptr %318, align 8
  %320 = getelementptr inbounds %struct.nvkm_fb, ptr %15, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %319, ptr noundef nonnull @.str.4, ptr noundef %320) #11
  br label %321

321:                                              ; preds = %316, %312
  %322 = icmp eq i32 %310, 0
  %323 = select i1 %322, i32 -34, i32 %310
  br label %624

324:                                              ; preds = %296
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %298, i32 noundef 536936453)
  %325 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 6
  %326 = load i32, ptr %12, align 4
  %327 = shl i32 %326, 16
  %328 = load i32, ptr %10, align 4
  %329 = shl i32 %328, 8
  %330 = or i32 %329, %327
  %331 = load i32, ptr %11, align 4
  %332 = or i32 %330, %331
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %325, i32 noundef %332)
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %221, i32 noundef 402718977)
  %333 = load ptr, ptr %13, align 4
  call void @nvkm_memx_wait(ptr noundef %333, i32 noundef 1274768, i32 noundef 2, i32 noundef 2, i32 noundef 64000) #10
  br label %336

334:                                              ; preds = %274
  br i1 %167, label %336, label %335

335:                                              ; preds = %334
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %139, i32 noundef 3)
  br label %336

336:                                              ; preds = %335, %334, %324
  br i1 %276, label %337, label %347

337:                                              ; preds = %336
  %338 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 40
  %339 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 40, i32 1
  store i8 1, ptr %339, align 4
  call fastcc void @ramfuc_mask(ptr noundef %13, ptr noundef %338, i32 noundef 65535, i32 noundef 0)
  %340 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 41
  %341 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 41, i32 1
  store i8 1, ptr %341, align 4
  call fastcc void @ramfuc_mask(ptr noundef %13, ptr noundef %340, i32 noundef 65535, i32 noundef 0)
  %342 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 34
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %342, i32 noundef 537198336)
  %343 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 35
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %343, i32 noundef 4177984)
  %344 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 36
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %344, i32 noundef 536944641)
  %345 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 37
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %345, i32 noundef 72192)
  %346 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 50
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %346, i32 noundef 0)
  br label %352

347:                                              ; preds = %336
  %348 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 34
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %348, i32 noundef 536936448)
  %349 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 35
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %349, i32 noundef 0)
  %350 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 36
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %350, i32 noundef 536944641)
  %351 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 37
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %351, i32 noundef 68096)
  br label %352

352:                                              ; preds = %347, %337
  %353 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 21
  %354 = load i32, ptr %116, align 4
  store i32 %354, ptr %353, align 4
  %355 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 21, i32 5
  store i32 524306, ptr %355, align 4
  %356 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 21, i32 4
  %357 = load i32, ptr %356, align 4
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %379, label %359

359:                                              ; preds = %352
  %360 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 21, i32 2
  %361 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 21, i32 3
  br label %362

362:                                              ; preds = %372, %359
  %363 = phi i32 [ 0, %359 ], [ %374, %372 ]
  %364 = phi i32 [ %357, %359 ], [ %375, %372 ]
  %365 = and i32 %364, 1
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %372, label %367

367:                                              ; preds = %362
  %368 = load ptr, ptr %13, align 4
  %369 = load i32, ptr %360, align 4
  %370 = add i32 %369, %363
  %371 = load i32, ptr %355, align 4
  call void @nvkm_memx_wr32(ptr noundef %368, i32 noundef %370, i32 noundef %371) #10
  br label %372

372:                                              ; preds = %367, %362
  %373 = load i32, ptr %361, align 4
  %374 = add i32 %373, %363
  %375 = lshr i32 %364, 1
  %376 = icmp ult i32 %364, 2
  br i1 %376, label %377, label %362

377:                                              ; preds = %372
  %378 = load i32, ptr %116, align 4
  br label %379

379:                                              ; preds = %377, %352
  %380 = phi i32 [ %378, %377 ], [ %354, %352 ]
  %381 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 49
  store i32 %380, ptr %381, align 4
  %382 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 49, i32 5
  store i32 13056, ptr %382, align 4
  %383 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 49, i32 4
  %384 = load i32, ptr %383, align 4
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %406, label %386

386:                                              ; preds = %379
  %387 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 49, i32 2
  %388 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 49, i32 3
  br label %389

389:                                              ; preds = %399, %386
  %390 = phi i32 [ 0, %386 ], [ %401, %399 ]
  %391 = phi i32 [ %384, %386 ], [ %402, %399 ]
  %392 = and i32 %391, 1
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %399, label %394

394:                                              ; preds = %389
  %395 = load ptr, ptr %13, align 4
  %396 = load i32, ptr %387, align 4
  %397 = add i32 %396, %390
  %398 = load i32, ptr %382, align 4
  call void @nvkm_memx_wr32(ptr noundef %395, i32 noundef %397, i32 noundef %398) #10
  br label %399

399:                                              ; preds = %394, %389
  %400 = load i32, ptr %388, align 4
  %401 = add i32 %400, %390
  %402 = lshr i32 %391, 1
  %403 = icmp ult i32 %391, 2
  br i1 %403, label %404, label %389

404:                                              ; preds = %399
  %405 = load i32, ptr %116, align 4
  br label %406

406:                                              ; preds = %404, %379
  %407 = phi i32 [ %405, %404 ], [ %380, %379 ]
  %408 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 24
  %409 = load i32, ptr %408, align 4
  %410 = icmp eq i32 %409, %407
  br i1 %410, label %411, label %414

411:                                              ; preds = %406
  %412 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 24, i32 5
  %413 = load i32, ptr %412, align 4
  br label %425

414:                                              ; preds = %406
  %415 = load ptr, ptr %119, align 4
  %416 = getelementptr inbounds %struct.nvkm_fb, ptr %415, i32 0, i32 1, i32 1
  %417 = load ptr, ptr %416, align 4
  %418 = getelementptr inbounds %struct.nvkm_device, ptr %417, i32 0, i32 11
  %419 = load ptr, ptr %418, align 4
  %420 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 24, i32 2
  %421 = load i32, ptr %420, align 4
  %422 = getelementptr i8, ptr %419, i32 %421
  %423 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %422) #10, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  %424 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 24, i32 5
  store i32 %423, ptr %424, align 4
  br label %425

425:                                              ; preds = %414, %411
  %426 = phi i32 [ %413, %411 ], [ %423, %414 ]
  %427 = and i32 %426, -2049
  %428 = icmp eq i32 %426, %427
  br i1 %428, label %429, label %433

429:                                              ; preds = %425
  %430 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 24, i32 1
  %431 = load i8, ptr %430, align 4, !range !11
  %432 = icmp eq i8 %431, 0
  br i1 %432, label %459, label %433

433:                                              ; preds = %429, %425
  %434 = load i32, ptr %116, align 4
  store i32 %434, ptr %408, align 4
  %435 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 24, i32 5
  store i32 %427, ptr %435, align 4
  %436 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 24, i32 4
  %437 = load i32, ptr %436, align 4
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %457, label %439

439:                                              ; preds = %433
  %440 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 24, i32 2
  %441 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 24, i32 3
  br label %442

442:                                              ; preds = %452, %439
  %443 = phi i32 [ 0, %439 ], [ %454, %452 ]
  %444 = phi i32 [ %437, %439 ], [ %455, %452 ]
  %445 = and i32 %444, 1
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %452, label %447

447:                                              ; preds = %442
  %448 = load ptr, ptr %13, align 4
  %449 = load i32, ptr %440, align 4
  %450 = add i32 %449, %443
  %451 = load i32, ptr %435, align 4
  call void @nvkm_memx_wr32(ptr noundef %448, i32 noundef %450, i32 noundef %451) #10
  br label %452

452:                                              ; preds = %447, %442
  %453 = load i32, ptr %441, align 4
  %454 = add i32 %453, %443
  %455 = lshr i32 %444, 1
  %456 = icmp ult i32 %444, 2
  br i1 %456, label %457, label %442

457:                                              ; preds = %452, %433
  %458 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 24, i32 1
  store i8 0, ptr %458, align 4
  br label %459

459:                                              ; preds = %457, %429
  %460 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 25
  %461 = load i32, ptr %116, align 4
  store i32 %461, ptr %460, align 4
  %462 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 25, i32 5
  store i32 0, ptr %462, align 4
  %463 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 25, i32 4
  %464 = load i32, ptr %463, align 4
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %484, label %466

466:                                              ; preds = %459
  %467 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 25, i32 2
  %468 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 25, i32 3
  br label %469

469:                                              ; preds = %479, %466
  %470 = phi i32 [ 0, %466 ], [ %481, %479 ]
  %471 = phi i32 [ %464, %466 ], [ %482, %479 ]
  %472 = and i32 %471, 1
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %479, label %474

474:                                              ; preds = %469
  %475 = load ptr, ptr %13, align 4
  %476 = load i32, ptr %467, align 4
  %477 = add i32 %476, %470
  %478 = load i32, ptr %462, align 4
  call void @nvkm_memx_wr32(ptr noundef %475, i32 noundef %477, i32 noundef %478) #10
  br label %479

479:                                              ; preds = %474, %469
  %480 = load i32, ptr %468, align 4
  %481 = add i32 %480, %470
  %482 = lshr i32 %471, 1
  %483 = icmp ult i32 %471, 2
  br i1 %483, label %484, label %469

484:                                              ; preds = %479, %459
  %485 = load ptr, ptr %13, align 4
  call void @nvkm_memx_nsec(ptr noundef %485, i32 noundef 1000) #10
  br i1 %167, label %487, label %486

486:                                              ; preds = %484
  call fastcc void @gf100_ram_train(ptr noundef %13, i32 noundef 790529)
  br label %487

487:                                              ; preds = %486, %484
  %488 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 26
  %489 = load i32, ptr %116, align 4
  store i32 %489, ptr %488, align 4
  %490 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 26, i32 5
  store i32 1, ptr %490, align 4
  %491 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 26, i32 4
  %492 = load i32, ptr %491, align 4
  %493 = icmp eq i32 %492, 0
  br i1 %493, label %512, label %494

494:                                              ; preds = %487
  %495 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 26, i32 2
  %496 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 26, i32 3
  br label %497

497:                                              ; preds = %507, %494
  %498 = phi i32 [ 0, %494 ], [ %509, %507 ]
  %499 = phi i32 [ %492, %494 ], [ %510, %507 ]
  %500 = and i32 %499, 1
  %501 = icmp eq i32 %500, 0
  br i1 %501, label %507, label %502

502:                                              ; preds = %497
  %503 = load ptr, ptr %13, align 4
  %504 = load i32, ptr %495, align 4
  %505 = add i32 %504, %498
  %506 = load i32, ptr %490, align 4
  call void @nvkm_memx_wr32(ptr noundef %503, i32 noundef %505, i32 noundef %506) #10
  br label %507

507:                                              ; preds = %502, %497
  %508 = load i32, ptr %496, align 4
  %509 = add i32 %508, %498
  %510 = lshr i32 %499, 1
  %511 = icmp ult i32 %499, 2
  br i1 %511, label %512, label %497

512:                                              ; preds = %507, %487
  %513 = load ptr, ptr %13, align 4
  call void @nvkm_memx_nsec(ptr noundef %513, i32 noundef 1000) #10
  %514 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 23
  %515 = load i32, ptr %116, align 4
  store i32 %515, ptr %514, align 4
  %516 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 23, i32 5
  store i32 97, ptr %516, align 4
  %517 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 23, i32 4
  %518 = load i32, ptr %517, align 4
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %520, label %521

520:                                              ; preds = %512
  store i32 -1073741697, ptr %516, align 4
  br label %560

521:                                              ; preds = %512
  %522 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 23, i32 2
  %523 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 23, i32 3
  br label %524

524:                                              ; preds = %534, %521
  %525 = phi i32 [ 0, %521 ], [ %536, %534 ]
  %526 = phi i32 [ %518, %521 ], [ %537, %534 ]
  %527 = and i32 %526, 1
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %534, label %529

529:                                              ; preds = %524
  %530 = load ptr, ptr %13, align 4
  %531 = load i32, ptr %522, align 4
  %532 = add i32 %531, %525
  %533 = load i32, ptr %516, align 4
  call void @nvkm_memx_wr32(ptr noundef %530, i32 noundef %532, i32 noundef %533) #10
  br label %534

534:                                              ; preds = %529, %524
  %535 = load i32, ptr %523, align 4
  %536 = add i32 %535, %525
  %537 = lshr i32 %526, 1
  %538 = icmp ult i32 %526, 2
  br i1 %538, label %539, label %524

539:                                              ; preds = %534
  %540 = load i32, ptr %517, align 4
  %541 = load i32, ptr %116, align 4
  store i32 %541, ptr %514, align 4
  store i32 -1073741697, ptr %516, align 4
  %542 = icmp eq i32 %540, 0
  br i1 %542, label %560, label %543

543:                                              ; preds = %555, %539
  %544 = phi i32 [ %556, %555 ], [ %535, %539 ]
  %545 = phi i32 [ %557, %555 ], [ 0, %539 ]
  %546 = phi i32 [ %558, %555 ], [ %540, %539 ]
  %547 = and i32 %546, 1
  %548 = icmp eq i32 %547, 0
  br i1 %548, label %555, label %549

549:                                              ; preds = %543
  %550 = load ptr, ptr %13, align 4
  %551 = load i32, ptr %522, align 4
  %552 = add i32 %551, %545
  %553 = load i32, ptr %516, align 4
  call void @nvkm_memx_wr32(ptr noundef %550, i32 noundef %552, i32 noundef %553) #10
  %554 = load i32, ptr %523, align 4
  br label %555

555:                                              ; preds = %549, %543
  %556 = phi i32 [ %554, %549 ], [ %544, %543 ]
  %557 = add i32 %556, %545
  %558 = lshr i32 %546, 1
  %559 = icmp ult i32 %546, 2
  br i1 %559, label %560, label %543

560:                                              ; preds = %555, %539, %520
  %561 = load ptr, ptr %13, align 4
  call void @nvkm_memx_nsec(ptr noundef %561, i32 noundef 1000) #10
  br i1 %276, label %562, label %564

562:                                              ; preds = %560
  %563 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 32
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %563, i32 noundef 32724)
  br label %566

564:                                              ; preds = %560
  %565 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 45
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %565, i32 noundef 132100)
  br label %566

566:                                              ; preds = %564, %562
  br i1 %167, label %592, label %567

567:                                              ; preds = %566
  %568 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 31
  call fastcc void @ramfuc_mask(ptr noundef %13, ptr noundef %568, i32 noundef 524288, i32 noundef 0)
  call fastcc void @ramfuc_mask(ptr noundef %13, ptr noundef %408, i32 noundef 32768, i32 noundef 32768)
  %569 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 33
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %569, i32 noundef 1095761936)
  call fastcc void @ramfuc_mask(ptr noundef %13, ptr noundef %569, i32 noundef 16777216, i32 noundef 0)
  call fastcc void @ramfuc_mask(ptr noundef %13, ptr noundef %250, i32 noundef 256, i32 noundef 256)
  %570 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 22
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %570, i32 noundef -16777072)
  %571 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 45
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %571, i32 noundef 134927)
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %120, i32 noundef 3)
  %572 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 43
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %572, i32 noundef -2128603626)
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %250, i32 noundef 1)
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %569, i32 noundef 3145751)
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %120, i32 noundef 1)
  %573 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 32
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %573, i32 noundef 32375)
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %221, i32 noundef 402849793)
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %514, i32 noundef 1073741950)
  %574 = load ptr, ptr %13, align 4
  call void @nvkm_memx_nsec(ptr noundef %574, i32 noundef 2000) #10
  %575 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 27
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %575, i32 noundef 1)
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %460, i32 noundef -2147483648)
  %576 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 15
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %576, i32 noundef 3146272)
  %577 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 14
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %577, i32 noundef 285)
  %578 = load ptr, ptr %13, align 4
  call void @nvkm_memx_nsec(ptr noundef %578, i32 noundef 1000) #10
  %579 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 9
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %579, i32 noundef 33948933)
  %580 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 10
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %580, i32 noundef 874545800)
  %581 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 11
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %581, i32 noundef 1141179409)
  %582 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 12
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %582, i32 noundef 4428)
  %583 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 13
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %583, i32 noundef 1122041961)
  %584 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 29
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %584, i32 noundef 1074024311)
  %585 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 28
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %585, i32 noundef 1074024311)
  %586 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 17
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %586, i32 noundef 6291465)
  %587 = load ptr, ptr %13, align 4
  call void @nvkm_memx_nsec(ptr noundef %587, i32 noundef 1000) #10
  %588 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 18
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %588, i32 noundef 7340040)
  %589 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 48
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %589, i32 noundef 421789696)
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %569, i32 noundef 3145751)
  call fastcc void @gf100_ram_train(ptr noundef %13, i32 noundef -2147348479)
  call fastcc void @gf100_ram_train(ptr noundef %13, i32 noundef -2146955263)
  %590 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 16
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %590, i32 noundef 5242884)
  %591 = load ptr, ptr %13, align 4
  call void @nvkm_memx_nsec(ptr noundef %591, i32 noundef 1000) #10
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %569, i32 noundef 19922967)
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %569, i32 noundef 3145751)
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %353, i32 noundef 524328)
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %381, i32 noundef 13104)
  call fastcc void @ramfuc_mask(ptr noundef %13, ptr noundef %408, i32 noundef 2048, i32 noundef 2048)
  call fastcc void @ramfuc_mask(ptr noundef %13, ptr noundef %221, i32 noundef 1, i32 noundef 0)
  br label %624

592:                                              ; preds = %566
  %593 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 30
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %593, i32 noundef 6144)
  %594 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 50
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %594, i32 noundef 0)
  %595 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 45
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %595, i32 noundef 132100)
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %120, i32 noundef 3)
  %596 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 33
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %596, i32 noundef 1081081872)
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %596, i32 noundef 1078984720)
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %594, i32 noundef 0)
  %597 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 47
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %597, i32 noundef 0)
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %250, i32 noundef 257)
  %598 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 43
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %598, i32 noundef -1994385898)
  %599 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 22
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %599, i32 noundef -16777072)
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %595, i32 noundef 197636)
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %120, i32 noundef 2)
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %250, i32 noundef 1)
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %597, i32 noundef 8192)
  %600 = load ptr, ptr %13, align 4
  call void @nvkm_memx_nsec(ptr noundef %600, i32 noundef 2000) #10
  %601 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 31
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %601, i32 noundef 2057961552)
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %596, i32 noundef 5242896)
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %408, i32 noundef 13504512)
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %514, i32 noundef 1073741950)
  %602 = load ptr, ptr %13, align 4
  call void @nvkm_memx_nsec(ptr noundef %602, i32 noundef 2000) #10
  %603 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 27
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %603, i32 noundef 1)
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %460, i32 noundef -2147483648)
  %604 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 15
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %604, i32 noundef 3146240)
  %605 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 14
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %605, i32 noundef 2125)
  %606 = load ptr, ptr %13, align 4
  call void @nvkm_memx_nsec(ptr noundef %606, i32 noundef 1000) #10
  %607 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 9
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %607, i32 noundef 187971621)
  %608 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 10
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %608, i32 noundef 881001102)
  %609 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 11
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %609, i32 noundef 1141638656)
  %610 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 12
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %610, i32 noundef 8524)
  %611 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 13
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %611, i32 noundef 1122107497)
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %408, i32 noundef 13500416)
  %612 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 29
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %612, i32 noundef 1610894967)
  %613 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 28
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %613, i32 noundef 1610894967)
  %614 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 16
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %614, i32 noundef 5242880)
  %615 = load ptr, ptr %13, align 4
  call void @nvkm_memx_nsec(ptr noundef %615, i32 noundef 1000) #10
  %616 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 17
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %616, i32 noundef 6292008)
  %617 = load ptr, ptr %13, align 4
  call void @nvkm_memx_nsec(ptr noundef %617, i32 noundef 1000) #10
  %618 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 18
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %618, i32 noundef 7340032)
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %594, i32 noundef 0)
  %619 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 48
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %619, i32 noundef 161742848)
  call fastcc void @gf100_ram_train(ptr noundef %13, i32 noundef -2146562040)
  %620 = load ptr, ptr %13, align 4
  call void @nvkm_memx_nsec(ptr noundef %620, i32 noundef 1000) #10
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %593, i32 noundef 6148)
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %594, i32 noundef 0)
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %353, i32 noundef 524328)
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %381, i32 noundef 13104)
  %621 = load ptr, ptr %13, align 4
  call void @nvkm_memx_nsec(ptr noundef %621, i32 noundef 100000) #10
  %622 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 38
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %622, i32 noundef 87113537)
  %623 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 39
  call fastcc void @ramfuc_wr32(ptr noundef %13, ptr noundef %623, i32 noundef 12112)
  call fastcc void @gf100_ram_train(ptr noundef %13, i32 noundef 17567745)
  call fastcc void @ramfuc_mask(ptr noundef %13, ptr noundef %408, i32 noundef 2048, i32 noundef 2048)
  br label %624

624:                                              ; preds = %592, %567, %321, %293, %107, %101, %97, %77, %73, %52, %48, %39, %35
  %625 = phi i32 [ %295, %293 ], [ %323, %321 ], [ -22, %39 ], [ -22, %35 ], [ -22, %52 ], [ -22, %48 ], [ -22, %77 ], [ -22, %73 ], [ -22, %101 ], [ -22, %97 ], [ 0, %592 ], [ 0, %567 ], [ %113, %107 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %3) #10
  ret i32 %625
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_rammapEm(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_ramcfg_index(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_rd08(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_timingEe(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_clk_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ramfuc_mask(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #5 {
  %5 = load i32, ptr %1, align 4
  %6 = getelementptr inbounds %struct.ramfuc, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.ramfuc_reg, ptr %1, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  br label %24

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.ramfuc, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nvkm_fb, ptr %14, i32 0, i32 1, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.nvkm_device, ptr %16, i32 0, i32 11
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ramfuc_reg, ptr %1, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr i8, ptr %18, i32 %20
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  %23 = getelementptr inbounds %struct.ramfuc_reg, ptr %1, i32 0, i32 5
  store i32 %22, ptr %23, align 4
  br label %24

24:                                               ; preds = %12, %9
  %25 = phi i32 [ %11, %9 ], [ %22, %12 ]
  %26 = xor i32 %2, -1
  %27 = and i32 %25, %26
  %28 = or i32 %27, %3
  %29 = icmp eq i32 %25, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.ramfuc_reg, ptr %1, i32 0, i32 1
  %32 = load i8, ptr %31, align 4, !range !11
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %60, label %34

34:                                               ; preds = %30, %24
  %35 = load i32, ptr %6, align 4
  store i32 %35, ptr %1, align 4
  %36 = getelementptr inbounds %struct.ramfuc_reg, ptr %1, i32 0, i32 5
  store i32 %28, ptr %36, align 4
  %37 = getelementptr inbounds %struct.ramfuc_reg, ptr %1, i32 0, i32 4
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %58, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.ramfuc_reg, ptr %1, i32 0, i32 2
  %42 = getelementptr inbounds %struct.ramfuc_reg, ptr %1, i32 0, i32 3
  br label %43

43:                                               ; preds = %53, %40
  %44 = phi i32 [ 0, %40 ], [ %55, %53 ]
  %45 = phi i32 [ %38, %40 ], [ %56, %53 ]
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load ptr, ptr %0, align 4
  %50 = load i32, ptr %41, align 4
  %51 = add i32 %50, %44
  %52 = load i32, ptr %36, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %49, i32 noundef %51, i32 noundef %52) #10
  br label %53

53:                                               ; preds = %48, %43
  %54 = load i32, ptr %42, align 4
  %55 = add i32 %54, %44
  %56 = lshr i32 %45, 1
  %57 = icmp ult i32 %45, 2
  br i1 %57, label %58, label %43

58:                                               ; preds = %53, %34
  %59 = getelementptr inbounds %struct.ramfuc_reg, ptr %1, i32 0, i32 1
  store i8 0, ptr %59, align 4
  br label %60

60:                                               ; preds = %58, %30
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ramfuc_wr32(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.ramfuc, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  store i32 %5, ptr %1, align 4
  %6 = getelementptr inbounds %struct.ramfuc_reg, ptr %1, i32 0, i32 5
  store i32 %2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.ramfuc_reg, ptr %1, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %28, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.ramfuc_reg, ptr %1, i32 0, i32 2
  %12 = getelementptr inbounds %struct.ramfuc_reg, ptr %1, i32 0, i32 3
  br label %13

13:                                               ; preds = %23, %10
  %14 = phi i32 [ 0, %10 ], [ %25, %23 ]
  %15 = phi i32 [ %8, %10 ], [ %26, %23 ]
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load ptr, ptr %0, align 4
  %20 = load i32, ptr %11, align 4
  %21 = add i32 %20, %14
  %22 = load i32, ptr %6, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %19, i32 noundef %21, i32 noundef %22) #10
  br label %23

23:                                               ; preds = %18, %13
  %24 = load i32, ptr %12, align 4
  %25 = add i32 %24, %14
  %26 = lshr i32 %15, 1
  %27 = icmp ult i32 %15, 2
  br i1 %27, label %28, label %13

28:                                               ; preds = %23, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gt215_pll_calc(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gf100_ram_train(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 -596
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_fb, ptr %4, i32 0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 140344
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr i8, ptr %11, i32 140628
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  %14 = getelementptr inbounds %struct.gf100_ramfuc, ptr %0, i32 0, i32 19
  %15 = getelementptr inbounds %struct.ramfuc, ptr %0, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  store i32 %16, ptr %14, align 4
  %17 = getelementptr inbounds %struct.gf100_ramfuc, ptr %0, i32 0, i32 19, i32 5
  store i32 %1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.gf100_ramfuc, ptr %0, i32 0, i32 19, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %41, label %21

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.gf100_ramfuc, ptr %0, i32 0, i32 19, i32 2
  %23 = getelementptr inbounds %struct.gf100_ramfuc, ptr %0, i32 0, i32 19, i32 3
  br label %24

24:                                               ; preds = %34, %21
  %25 = phi i32 [ 0, %21 ], [ %36, %34 ]
  %26 = phi i32 [ %19, %21 ], [ %37, %34 ]
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load ptr, ptr %0, align 4
  %31 = load i32, ptr %22, align 4
  %32 = add i32 %31, %25
  %33 = load i32, ptr %17, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %30, i32 noundef %32, i32 noundef %33) #10
  br label %34

34:                                               ; preds = %29, %24
  %35 = load i32, ptr %23, align 4
  %36 = add i32 %35, %25
  %37 = lshr i32 %26, 1
  %38 = icmp ult i32 %26, 2
  br i1 %38, label %39, label %24

39:                                               ; preds = %34
  %40 = load i32, ptr %15, align 4
  br label %41

41:                                               ; preds = %39, %2
  %42 = phi i32 [ %40, %39 ], [ %16, %2 ]
  %43 = getelementptr inbounds %struct.gf100_ramfuc, ptr %0, i32 0, i32 20
  store i32 %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.gf100_ramfuc, ptr %0, i32 0, i32 20, i32 5
  store i32 %1, ptr %44, align 4
  %45 = getelementptr inbounds %struct.gf100_ramfuc, ptr %0, i32 0, i32 20, i32 4
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %66, label %48

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.gf100_ramfuc, ptr %0, i32 0, i32 20, i32 2
  %50 = getelementptr inbounds %struct.gf100_ramfuc, ptr %0, i32 0, i32 20, i32 3
  br label %51

51:                                               ; preds = %61, %48
  %52 = phi i32 [ 0, %48 ], [ %63, %61 ]
  %53 = phi i32 [ %46, %48 ], [ %64, %61 ]
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = load ptr, ptr %0, align 4
  %58 = load i32, ptr %49, align 4
  %59 = add i32 %58, %52
  %60 = load i32, ptr %44, align 4
  tail call void @nvkm_memx_wr32(ptr noundef %57, i32 noundef %59, i32 noundef %60) #10
  br label %61

61:                                               ; preds = %56, %51
  %62 = load i32, ptr %50, align 4
  %63 = add i32 %62, %52
  %64 = lshr i32 %53, 1
  %65 = icmp ult i32 %53, 2
  br i1 %65, label %66, label %51

66:                                               ; preds = %61, %41
  %67 = icmp slt i32 %1, 0
  %68 = icmp ne i32 %10, 0
  %69 = select i1 %67, i1 %68, i1 false
  br i1 %69, label %70, label %82

70:                                               ; preds = %78, %66
  %71 = phi i32 [ %79, %78 ], [ 1116532, %66 ]
  %72 = phi i32 [ %80, %78 ], [ 0, %66 ]
  %73 = shl nuw i32 1, %72
  %74 = and i32 %73, %13
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load ptr, ptr %0, align 4
  tail call void @nvkm_memx_wait(ptr noundef %77, i32 noundef %71, i32 noundef 15, i32 noundef 0, i32 noundef 500000) #10
  br label %78

78:                                               ; preds = %76, %70
  %79 = add i32 %71, 4096
  %80 = add nuw i32 %72, 1
  %81 = icmp ult i32 %80, %10
  br i1 %81, label %70, label %82

82:                                               ; preds = %78, %66
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gf100_ram_prog(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_fb, ptr %3, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = tail call zeroext i1 @nvkm_boolopt(ptr noundef %7, ptr noundef nonnull @.str.5, i1 noundef zeroext true) #10
  %9 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1
  %14 = tail call i32 @nvkm_memx_fini(ptr noundef %13, i1 noundef zeroext %8) #10
  store ptr null, ptr %9, align 4
  br label %15

15:                                               ; preds = %12, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvkm_boolopt(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf100_ram_tidy(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.gf100_ram, ptr %0, i32 0, i32 1
  %7 = tail call i32 @nvkm_memx_fini(ptr noundef %6, i1 noundef zeroext false) #10
  store ptr null, ptr %2, align 4
  br label %8

8:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gf100_ram_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 10
  br i1 %4, label %5, label %43

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nvkm_ram, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_fb, ptr %7, i32 0, i32 1, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 11
  br label %11

11:                                               ; preds = %11, %5
  %12 = phi i32 [ 0, %5 ], [ %41, %11 ]
  %13 = shl i32 %12, 8
  %14 = load ptr, ptr %10, align 4
  %15 = getelementptr i8, ptr %14, i32 1112424
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !12
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #10, !srcloc !13
  %16 = load ptr, ptr %10, align 4
  %17 = getelementptr i8, ptr %16, i32 1112428
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !12
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %13) #10, !srcloc !13
  %18 = urem i32 %12, 12
  %19 = getelementptr [12 x i8], ptr @gf100_ram_init.train0, i32 0, i32 %18
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = or i32 %21, 256
  %23 = load ptr, ptr %10, align 4
  %24 = getelementptr i8, ptr %23, i32 1112352
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !12
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #10, !srcloc !13
  %25 = load ptr, ptr %10, align 4
  %26 = getelementptr i8, ptr %25, i32 1112356
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !12
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %22) #10, !srcloc !13
  %27 = getelementptr [12 x i32], ptr @gf100_ram_init.train1, i32 0, i32 %18
  %28 = load i32, ptr %27, align 4
  %29 = load ptr, ptr %10, align 4
  %30 = getelementptr i8, ptr %29, i32 1112344
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !12
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #10, !srcloc !13
  %31 = load ptr, ptr %10, align 4
  %32 = getelementptr i8, ptr %31, i32 1112348
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !12
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %28) #10, !srcloc !13
  %33 = load ptr, ptr %10, align 4
  %34 = getelementptr i8, ptr %33, i32 1112352
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !12
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %21) #10, !srcloc !13
  %35 = load ptr, ptr %10, align 4
  %36 = getelementptr i8, ptr %35, i32 1112356
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !12
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %21) #10, !srcloc !13
  %37 = load ptr, ptr %10, align 4
  %38 = getelementptr i8, ptr %37, i32 1112344
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !12
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %28) #10, !srcloc !13
  %39 = load ptr, ptr %10, align 4
  %40 = getelementptr i8, ptr %39, i32 1112348
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !12
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %28) #10, !srcloc !13
  %41 = add nuw nsw i32 %12, 1
  %42 = icmp eq i32 %41, 48
  br i1 %42, label %43, label %11

43:                                               ; preds = %11, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gf100_ram_probe_fbpa_amount(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = shl i32 %1, 12
  %6 = add i32 %5, 1114636
  %7 = getelementptr i8, ptr %4, i32 %6
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gf100_ram_probe_fbp_amount(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) #0 {
  %6 = shl nuw i32 1, %3
  %7 = and i32 %6, %1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  store i32 1, ptr %4, align 4
  %10 = getelementptr inbounds %struct.nvkm_ram_func, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 8
  %12 = tail call i32 %11(ptr noundef %2, i32 noundef %3) #10
  br label %13

13:                                               ; preds = %9, %5
  %14 = phi i32 [ %12, %9 ], [ 0, %5 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gf100_ram_probe_fbp(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 140628
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  %9 = getelementptr inbounds %struct.nvkm_ram_func, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef %0, i32 noundef %8, ptr noundef %1, i32 noundef %2, ptr noundef %3) #10
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gf100_ram_ctor(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 21
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i32 @nvkm_fb_bios_memtype(ptr noundef %8) #10
  %10 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 140344
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !8
  %14 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = icmp ugt i32 %15, 3
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load ptr, ptr %5, align 4
  %19 = getelementptr inbounds %struct.nvkm_device, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %20, ptr noundef nonnull @.str.6, ptr noundef %21, i32 noundef %13) #11
  br label %22

22:                                               ; preds = %17, %3
  %23 = icmp eq i32 %13, 0
  br i1 %23, label %64, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.nvkm_ram_func, ptr %0, i32 0, i32 1
  %26 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 4
  br label %27

27:                                               ; preds = %58, %24
  %28 = phi i32 [ 0, %24 ], [ %61, %58 ]
  %29 = phi i32 [ 0, %24 ], [ %62, %58 ]
  %30 = phi i64 [ -1, %24 ], [ %60, %58 ]
  %31 = phi i64 [ 0, %24 ], [ %59, %58 ]
  %32 = load ptr, ptr %25, align 8
  %33 = call i32 %32(ptr noundef %0, ptr noundef %6, i32 noundef %29, ptr noundef nonnull %4) #10
  %34 = icmp eq i32 %33, 0
  %35 = load i32, ptr %14, align 4
  %36 = icmp ugt i32 %35, 3
  br i1 %34, label %53, label %37

37:                                               ; preds = %27
  br i1 %36, label %38, label %43

38:                                               ; preds = %37
  %39 = load ptr, ptr %5, align 4
  %40 = getelementptr inbounds %struct.nvkm_device, ptr %39, i32 0, i32 2
  %41 = load ptr, ptr %40, align 8
  %42 = load i32, ptr %4, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %41, ptr noundef nonnull @.str.7, ptr noundef %26, i32 noundef %29, i32 noundef %33, i32 noundef %42) #11
  br label %43

43:                                               ; preds = %38, %37
  %44 = load i32, ptr %4, align 4
  %45 = udiv i32 %33, %44
  %46 = zext i32 %45 to i64
  %47 = shl nuw nsw i64 %46, 20
  %48 = call i64 @llvm.umin.i64(i64 %30, i64 %47)
  %49 = zext i32 %33 to i64
  %50 = shl nuw nsw i64 %49, 20
  %51 = add i64 %50, %31
  %52 = add i32 %44, %28
  br label %58

53:                                               ; preds = %27
  br i1 %36, label %54, label %58

54:                                               ; preds = %53
  %55 = load ptr, ptr %5, align 4
  %56 = getelementptr inbounds %struct.nvkm_device, ptr %55, i32 0, i32 2
  %57 = load ptr, ptr %56, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %57, ptr noundef nonnull @.str.8, ptr noundef %26, i32 noundef %29) #11
  br label %58

58:                                               ; preds = %54, %53, %43
  %59 = phi i64 [ %51, %43 ], [ %31, %54 ], [ %31, %53 ]
  %60 = phi i64 [ %48, %43 ], [ %30, %54 ], [ %30, %53 ]
  %61 = phi i32 [ %52, %43 ], [ %28, %54 ], [ %28, %53 ]
  %62 = add nuw i32 %29, 1
  %63 = icmp eq i32 %62, %13
  br i1 %63, label %64, label %27

64:                                               ; preds = %58, %22
  %65 = phi i64 [ 0, %22 ], [ %59, %58 ]
  %66 = phi i64 [ -1, %22 ], [ %60, %58 ]
  %67 = phi i32 [ 0, %22 ], [ %61, %58 ]
  %68 = sext i32 %67 to i64
  %69 = mul i64 %66, %68
  %70 = load i64, ptr %0, align 8
  %71 = add i64 %70, %66
  %72 = sub i64 %65, %69
  %73 = load i32, ptr %14, align 4
  %74 = icmp ugt i32 %73, 3
  br i1 %74, label %75, label %95

75:                                               ; preds = %64
  %76 = load ptr, ptr %5, align 4
  %77 = getelementptr inbounds %struct.nvkm_device, ptr %76, i32 0, i32 2
  %78 = load ptr, ptr %77, align 8
  %79 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 4
  %80 = lshr i64 %69, 20
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %78, ptr noundef nonnull @.str.9, ptr noundef %79, i64 noundef %80, i64 noundef 0) #11
  %81 = load i32, ptr %14, align 4
  %82 = icmp ugt i32 %81, 3
  br i1 %82, label %83, label %95

83:                                               ; preds = %75
  %84 = load ptr, ptr %5, align 4
  %85 = getelementptr inbounds %struct.nvkm_device, ptr %84, i32 0, i32 2
  %86 = load ptr, ptr %85, align 8
  %87 = lshr i64 %72, 20
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %86, ptr noundef nonnull @.str.10, ptr noundef %79, i64 noundef %87, i64 noundef %71) #11
  %88 = load i32, ptr %14, align 4
  %89 = icmp ugt i32 %88, 3
  br i1 %89, label %90, label %95

90:                                               ; preds = %83
  %91 = load ptr, ptr %5, align 4
  %92 = getelementptr inbounds %struct.nvkm_device, ptr %91, i32 0, i32 2
  %93 = load ptr, ptr %92, align 8
  %94 = lshr i64 %65, 20
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %93, ptr noundef nonnull @.str.11, ptr noundef %79, i64 noundef %94) #11
  br label %95

95:                                               ; preds = %90, %83, %75, %64
  %96 = call i32 @nvkm_ram_ctor(ptr noundef %0, ptr noundef %1, i32 noundef %9, i64 noundef %65, ptr noundef %2) #10
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %123

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.nvkm_ram, ptr %2, i32 0, i32 4
  %100 = call i32 @nvkm_mm_fini(ptr noundef %99) #10
  %101 = icmp eq i64 %65, %69
  br i1 %101, label %116, label %102

102:                                              ; preds = %98
  %103 = add i64 %69, 17592185782272
  %104 = lshr i64 %103, 12
  %105 = trunc i64 %104 to i32
  %106 = call i32 @nvkm_mm_init(ptr noundef %99, i8 noundef zeroext 1, i32 noundef 64, i32 noundef %105, i32 noundef 1) #10
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %123

108:                                              ; preds = %102
  %109 = lshr i64 %71, 12
  %110 = trunc i64 %109 to i32
  %111 = add i64 %72, 17592184995840
  %112 = lshr i64 %111, 12
  %113 = trunc i64 %112 to i32
  %114 = call i32 @nvkm_mm_init(ptr noundef %99, i8 noundef zeroext 3, i32 noundef %110, i32 noundef %113, i32 noundef 1) #10
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %122, label %123

116:                                              ; preds = %98
  %117 = add i64 %65, 17592184733696
  %118 = lshr i64 %117, 12
  %119 = trunc i64 %118 to i32
  %120 = call i32 @nvkm_mm_init(ptr noundef %99, i8 noundef zeroext 1, i32 noundef 64, i32 noundef %119, i32 noundef 1) #10
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %116, %108
  br label %123

123:                                              ; preds = %122, %116, %108, %102, %95
  %124 = phi i32 [ 0, %122 ], [ %96, %95 ], [ %106, %102 ], [ %114, %108 ], [ %120, %116 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret i32 %124
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_fb_bios_memtype(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_ram_ctor(ptr noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mm_fini(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mm_init(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gf100_ram_new_(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ramfuc_reg, align 4
  %5 = alloca %struct.ramfuc_reg, align 4
  %6 = alloca %struct.ramfuc_reg, align 4
  %7 = alloca %struct.ramfuc_reg, align 4
  %8 = alloca %struct.ramfuc_reg, align 4
  %9 = alloca %struct.ramfuc_reg, align 4
  %10 = alloca %struct.ramfuc_reg, align 4
  %11 = alloca %struct.ramfuc_reg, align 4
  %12 = alloca %struct.ramfuc_reg, align 4
  %13 = alloca %struct.ramfuc_reg, align 4
  %14 = alloca %struct.ramfuc_reg, align 4
  %15 = alloca %struct.ramfuc_reg, align 4
  %16 = alloca %struct.ramfuc_reg, align 4
  %17 = alloca %struct.ramfuc_reg, align 4
  %18 = alloca %struct.ramfuc_reg, align 4
  %19 = alloca %struct.ramfuc_reg, align 4
  %20 = alloca %struct.ramfuc_reg, align 4
  %21 = alloca %struct.ramfuc_reg, align 4
  %22 = alloca %struct.ramfuc_reg, align 4
  %23 = alloca %struct.ramfuc_reg, align 4
  %24 = alloca %struct.ramfuc_reg, align 4
  %25 = alloca %struct.ramfuc_reg, align 4
  %26 = alloca %struct.ramfuc_reg, align 4
  %27 = alloca %struct.ramfuc_reg, align 4
  %28 = alloca %struct.ramfuc_reg, align 4
  %29 = alloca %struct.ramfuc_reg, align 4
  %30 = alloca %struct.ramfuc_reg, align 4
  %31 = alloca %struct.ramfuc_reg, align 4
  %32 = alloca %struct.ramfuc_reg, align 4
  %33 = alloca %struct.ramfuc_reg, align 4
  %34 = alloca %struct.ramfuc_reg, align 4
  %35 = alloca %struct.ramfuc_reg, align 4
  %36 = alloca %struct.ramfuc_reg, align 4
  %37 = alloca %struct.ramfuc_reg, align 4
  %38 = alloca %struct.ramfuc_reg, align 4
  %39 = alloca %struct.ramfuc_reg, align 4
  %40 = alloca %struct.ramfuc_reg, align 4
  %41 = alloca %struct.ramfuc_reg, align 4
  %42 = alloca %struct.ramfuc_reg, align 4
  %43 = alloca %struct.ramfuc_reg, align 4
  %44 = alloca %struct.ramfuc_reg, align 4
  %45 = alloca %struct.ramfuc_reg, align 4
  %46 = alloca %struct.ramfuc_reg, align 4
  %47 = alloca %struct.ramfuc_reg, align 4
  %48 = alloca %struct.ramfuc_reg, align 4
  %49 = alloca %struct.ramfuc_reg, align 4
  %50 = alloca %struct.ramfuc_reg, align 4
  %51 = alloca %struct.ramfuc_reg, align 4
  %52 = alloca %struct.ramfuc_reg, align 4
  %53 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.nvkm_device, ptr %54, i32 0, i32 21
  %56 = load ptr, ptr %55, align 8
  %57 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %58 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %57, i32 noundef 3520, i32 noundef 1928) #12
  %59 = icmp eq ptr %58, null
  br i1 %59, label %139, label %60

60:                                               ; preds = %3
  store ptr %58, ptr %2, align 4
  %61 = tail call i32 @gf100_ram_ctor(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %58)
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %139

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.gf100_ram, ptr %58, i32 0, i32 2
  %65 = tail call i32 @nvbios_pll_parse(ptr noundef %56, i32 noundef 12, ptr noundef %64) #10
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %76, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 5
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %139, label %71

71:                                               ; preds = %67
  %72 = load ptr, ptr %53, align 4
  %73 = getelementptr inbounds %struct.nvkm_device, ptr %72, i32 0, i32 2
  %74 = load ptr, ptr %73, align 8
  %75 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.12, ptr noundef %75) #11
  br label %139

76:                                               ; preds = %63
  %77 = getelementptr inbounds %struct.gf100_ram, ptr %58, i32 0, i32 3
  %78 = tail call i32 @nvbios_pll_parse(ptr noundef %56, i32 noundef 4, ptr noundef %77) #10
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %89, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 5
  %82 = load i32, ptr %81, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %139, label %84

84:                                               ; preds = %80
  %85 = load ptr, ptr %53, align 4
  %86 = getelementptr inbounds %struct.nvkm_device, ptr %85, i32 0, i32 2
  %87 = load ptr, ptr %86, align 8
  %88 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %87, ptr noundef nonnull @.str.13, ptr noundef %88) #11
  br label %139

89:                                               ; preds = %76
  %90 = getelementptr inbounds %struct.gf100_ram, ptr %58, i32 0, i32 1, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %4, i32 noundef 1113632)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %90, ptr noundef nonnull align 4 dereferenceable(24) %4, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  %91 = getelementptr inbounds %struct.gf100_ram, ptr %58, i32 0, i32 1, i32 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %5, i32 noundef 1113636)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %91, ptr noundef nonnull align 4 dereferenceable(24) %5, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  %92 = getelementptr inbounds %struct.gf100_ram, ptr %58, i32 0, i32 1, i32 3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #10
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %6, i32 noundef 1274656)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %92, ptr noundef nonnull align 4 dereferenceable(24) %6, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #10
  %93 = getelementptr inbounds %struct.gf100_ram, ptr %58, i32 0, i32 1, i32 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #10
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %7, i32 noundef 1274672)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %93, ptr noundef nonnull align 4 dereferenceable(24) %7, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #10
  %94 = getelementptr inbounds %struct.gf100_ram, ptr %58, i32 0, i32 1, i32 5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #10
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %8, i32 noundef 1253376)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %94, ptr noundef nonnull align 4 dereferenceable(24) %8, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #10
  %95 = getelementptr inbounds %struct.gf100_ram, ptr %58, i32 0, i32 1, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #10
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %9, i32 noundef 1253380)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %95, ptr noundef nonnull align 4 dereferenceable(24) %9, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #10
  %96 = getelementptr inbounds %struct.gf100_ram, ptr %58, i32 0, i32 1, i32 7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #10
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %10, i32 noundef 1253632)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %96, ptr noundef nonnull align 4 dereferenceable(24) %10, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #10
  %97 = getelementptr inbounds %struct.gf100_ram, ptr %58, i32 0, i32 1, i32 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #10
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %11, i32 noundef 1274768)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %97, ptr noundef nonnull align 4 dereferenceable(24) %11, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #10
  %98 = getelementptr inbounds %struct.gf100_ram, ptr %58, i32 0, i32 1, i32 9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #10
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %12, i32 noundef 1110672)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %98, ptr noundef nonnull align 4 dereferenceable(24) %12, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #10
  %99 = getelementptr inbounds %struct.gf100_ram, ptr %58, i32 0, i32 1, i32 10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #10
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %13, i32 noundef 1110676)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %99, ptr noundef nonnull align 4 dereferenceable(24) %13, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #10
  %100 = getelementptr inbounds %struct.gf100_ram, ptr %58, i32 0, i32 1, i32 11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #10
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %14, i32 noundef 1110680)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %100, ptr noundef nonnull align 4 dereferenceable(24) %14, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #10
  %101 = getelementptr inbounds %struct.gf100_ram, ptr %58, i32 0, i32 1, i32 12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #10
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %15, i32 noundef 1110684)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %101, ptr noundef nonnull align 4 dereferenceable(24) %15, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #10
  %102 = getelementptr inbounds %struct.gf100_ram, ptr %58, i32 0, i32 1, i32 13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %16) #10
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %16, i32 noundef 1110688)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %102, ptr noundef nonnull align 4 dereferenceable(24) %16, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #10
  %103 = getelementptr inbounds %struct.gf100_ram, ptr %58, i32 0, i32 1, i32 14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #10
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %17, i32 noundef 1110784)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %103, ptr noundef nonnull align 4 dereferenceable(24) %17, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #10
  %104 = getelementptr inbounds %struct.gf100_ram, ptr %58, i32 0, i32 1, i32 15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %18) #10
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %18, i32 noundef 1110840)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %104, ptr noundef nonnull align 4 dereferenceable(24) %18, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %18) #10
  %105 = getelementptr inbounds %struct.gf100_ram, ptr %58, i32 0, i32 1, i32 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %19) #10
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %19, i32 noundef 1110848)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %105, ptr noundef nonnull align 4 dereferenceable(24) %19, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %19) #10
  %106 = getelementptr inbounds %struct.gf100_ram, ptr %58, i32 0, i32 1, i32 17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %20) #10
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %20, i32 noundef 1110852)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %106, ptr noundef nonnull align 4 dereferenceable(24) %20, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %20) #10
  %107 = getelementptr inbounds %struct.gf100_ram, ptr %58, i32 0, i32 1, i32 18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %21) #10
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %21, i32 noundef 1110856)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %107, ptr noundef nonnull align 4 dereferenceable(24) %21, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %21) #10
  %108 = getelementptr inbounds %struct.gf100_ram, ptr %58, i32 0, i32 1, i32 19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %22) #10
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %22, i32 noundef 1112336)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %108, ptr noundef nonnull align 4 dereferenceable(24) %22, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %22) #10
  %109 = getelementptr inbounds %struct.gf100_ram, ptr %58, i32 0, i32 1, i32 20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %23) #10
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %23, i32 noundef 1112340)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %109, ptr noundef nonnull align 4 dereferenceable(24) %23, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %23) #10
  %110 = getelementptr inbounds %struct.gf100_ram, ptr %58, i32 0, i32 1, i32 21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %24) #10
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %24, i32 noundef 1051404)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %110, ptr noundef nonnull align 4 dereferenceable(24) %24, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %24) #10
  %111 = getelementptr inbounds %struct.gf100_ram, ptr %58, i32 0, i32 1, i32 22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %25) #10
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %25, i32 noundef 1110096)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %111, ptr noundef nonnull align 4 dereferenceable(24) %25, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %25) #10
  %112 = getelementptr inbounds %struct.gf100_ram, ptr %58, i32 0, i32 1, i32 23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %26) #10
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %26, i32 noundef 1110160)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %112, ptr noundef nonnull align 4 dereferenceable(24) %26, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %26) #10
  %113 = getelementptr inbounds %struct.gf100_ram, ptr %58, i32 0, i32 1, i32 24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %27) #10
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %27, i32 noundef 1110528)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %113, ptr noundef nonnull align 4 dereferenceable(24) %27, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %27) #10
  %114 = getelementptr inbounds %struct.gf100_ram, ptr %58, i32 0, i32 1, i32 25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %28) #10
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %28, i32 noundef 1110544)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %114, ptr noundef nonnull align 4 dereferenceable(24) %28, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %28) #10
  %115 = getelementptr inbounds %struct.gf100_ram, ptr %58, i32 0, i32 1, i32 26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %29) #10
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %29, i32 noundef 1110800)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %115, ptr noundef nonnull align 4 dereferenceable(24) %29, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %29) #10
  %116 = getelementptr inbounds %struct.gf100_ram, ptr %58, i32 0, i32 1, i32 27
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %30) #10
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %30, i32 noundef 1110804)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %116, ptr noundef nonnull align 4 dereferenceable(24) %30, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %30) #10
  %117 = getelementptr inbounds %struct.gf100_ram, ptr %58, i32 0, i32 1, i32 28
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %31) #10
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %31, i32 noundef 1111568)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %117, ptr noundef nonnull align 4 dereferenceable(24) %31, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %31) #10
  %118 = getelementptr inbounds %struct.gf100_ram, ptr %58, i32 0, i32 1, i32 29
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %32) #10
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %32, i32 noundef 1111572)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %118, ptr noundef nonnull align 4 dereferenceable(24) %32, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %32) #10
  %119 = getelementptr inbounds %struct.gf100_ram, ptr %58, i32 0, i32 1, i32 30
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %33) #10
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %33, i32 noundef 1112064)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %119, ptr noundef nonnull align 4 dereferenceable(24) %33, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %33) #10
  %120 = getelementptr inbounds %struct.gf100_ram, ptr %58, i32 0, i32 1, i32 31
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %34) #10
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %34, i32 noundef 1112072)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %120, ptr noundef nonnull align 4 dereferenceable(24) %34, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %34) #10
  %121 = getelementptr inbounds %struct.gf100_ram, ptr %58, i32 0, i32 1, i32 32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %35) #10
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %35, i32 noundef 1112100)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %121, ptr noundef nonnull align 4 dereferenceable(24) %35, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %35) #10
  %122 = getelementptr inbounds %struct.gf100_ram, ptr %58, i32 0, i32 1, i32 33
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %36) #10
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %36, i32 noundef 1112112)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %122, ptr noundef nonnull align 4 dereferenceable(24) %36, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %36) #10
  %123 = getelementptr inbounds %struct.gf100_ram, ptr %58, i32 0, i32 1, i32 34
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %37) #10
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %37, i32 noundef 1112456)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %123, ptr noundef nonnull align 4 dereferenceable(24) %37, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %37) #10
  %124 = getelementptr inbounds %struct.gf100_ram, ptr %58, i32 0, i32 1, i32 35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %38) #10
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %38, i32 noundef 1112460)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %124, ptr noundef nonnull align 4 dereferenceable(24) %38, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %38) #10
  %125 = getelementptr inbounds %struct.gf100_ram, ptr %58, i32 0, i32 1, i32 36
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %39) #10
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %39, i32 noundef 1112464)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %125, ptr noundef nonnull align 4 dereferenceable(24) %39, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %39) #10
  %126 = getelementptr inbounds %struct.gf100_ram, ptr %58, i32 0, i32 1, i32 37
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %40) #10
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %40, i32 noundef 1112472)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %126, ptr noundef nonnull align 4 dereferenceable(24) %40, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %40) #10
  %127 = getelementptr inbounds %struct.gf100_ram, ptr %58, i32 0, i32 1, i32 38
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %41) #10
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %41, i32 noundef 1112496)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %127, ptr noundef nonnull align 4 dereferenceable(24) %41, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %41) #10
  %128 = getelementptr inbounds %struct.gf100_ram, ptr %58, i32 0, i32 1, i32 39
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %42) #10
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %42, i32 noundef 1112500)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %128, ptr noundef nonnull align 4 dereferenceable(24) %42, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %42) #10
  %129 = getelementptr inbounds %struct.gf100_ram, ptr %58, i32 0, i32 1, i32 40
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %43) #10
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %43, i32 noundef 1112836)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %129, ptr noundef nonnull align 4 dereferenceable(24) %43, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %43) #10
  %130 = getelementptr inbounds %struct.gf100_ram, ptr %58, i32 0, i32 1, i32 41
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %44) #10
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %44, i32 noundef 1112840)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %130, ptr noundef nonnull align 4 dereferenceable(24) %44, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %44) #10
  %131 = getelementptr inbounds %struct.gf100_ram, ptr %58, i32 0, i32 1, i32 43
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %45) #10
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %45, i32 noundef 1274640)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %131, ptr noundef nonnull align 4 dereferenceable(24) %45, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %45) #10
  %132 = getelementptr inbounds %struct.gf100_ram, ptr %58, i32 0, i32 1, i32 44
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %46) #10
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %46, i32 noundef 1274720)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %132, ptr noundef nonnull align 4 dereferenceable(24) %46, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %46) #10
  %133 = getelementptr inbounds %struct.gf100_ram, ptr %58, i32 0, i32 1, i32 45
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %47) #10
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %47, i32 noundef 1274860)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %133, ptr noundef nonnull align 4 dereferenceable(24) %47, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %47) #10
  %134 = getelementptr inbounds %struct.gf100_ram, ptr %58, i32 0, i32 1, i32 46
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %48) #10
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %48, i32 noundef 1274864)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %134, ptr noundef nonnull align 4 dereferenceable(24) %48, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %48) #10
  %135 = getelementptr inbounds %struct.gf100_ram, ptr %58, i32 0, i32 1, i32 47
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %49) #10
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %49, i32 noundef 1274872)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %135, ptr noundef nonnull align 4 dereferenceable(24) %49, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %49) #10
  %136 = getelementptr inbounds %struct.gf100_ram, ptr %58, i32 0, i32 1, i32 48
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %50) #10
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %50, i32 noundef 6406464)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %136, ptr noundef nonnull align 4 dereferenceable(24) %50, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %50) #10
  %137 = getelementptr inbounds %struct.gf100_ram, ptr %58, i32 0, i32 1, i32 49
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %51) #10
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %51, i32 noundef 6361600)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %137, ptr noundef nonnull align 4 dereferenceable(24) %51, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %51) #10
  %138 = getelementptr inbounds %struct.gf100_ram, ptr %58, i32 0, i32 1, i32 50
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %52) #10
  call fastcc void @ramfuc_reg(ptr nonnull sret(%struct.ramfuc_reg) align 4 %52, i32 noundef 1300724)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %138, ptr noundef nonnull align 4 dereferenceable(24) %52, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %52) #10
  br label %139

139:                                              ; preds = %89, %84, %80, %71, %67, %60, %3
  %140 = phi i32 [ 0, %89 ], [ -12, %3 ], [ %61, %60 ], [ %65, %71 ], [ %65, %67 ], [ %78, %84 ], [ %78, %80 ]
  ret i32 %140
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_pll_parse(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal fastcc void @ramfuc_reg(ptr noalias nocapture writeonly sret(%struct.ramfuc_reg) align 4 %0, i32 noundef %1) unnamed_addr #6 {
  store i32 0, ptr %0, align 4
  %3 = getelementptr inbounds %struct.ramfuc_reg, ptr %0, i32 0, i32 1
  store i8 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.ramfuc_reg, ptr %0, i32 0, i32 2
  store i32 %1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.ramfuc_reg, ptr %0, i32 0, i32 3
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.ramfuc_reg, ptr %0, i32 0, i32 4
  store i32 1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.ramfuc_reg, ptr %0, i32 0, i32 5
  store i32 -559038737, ptr %7, align 4
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gf100_ram_new(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = tail call i32 @gf100_ram_new_(ptr noundef nonnull @gf100_ram, ptr noundef %0, ptr noundef %1)
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_memx_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memx_wr32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memx_wait(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memx_nsec(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_memx_fini(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

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
!9 = !{i64 3968429}
!10 = !{i64 2151507882}
!11 = !{i8 0, i8 2}
!12 = !{i64 2151509104}
!13 = !{i64 3968011}
